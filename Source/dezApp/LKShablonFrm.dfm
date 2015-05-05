object LKShablonForm: TLKShablonForm
  Left = 0
  Top = 0
  Caption = #1064#1072#1073#1083#1086#1085#1099' '#1075#1088#1072#1092#1080#1082#1086#1074' '#1091#1073#1086#1088#1082#1080' '#1083#1077#1089#1090#1085#1080#1095#1085#1099#1093' '#1082#1083#1077#1090#1086#1082
  ClientHeight = 580
  ClientWidth = 745
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
    Width = 745
    Height = 580
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 11
      Top = 29
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_LKSHB
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 153
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 290
      Top = 29
      Width = 250
      Height = 200
      TabOrder = 3
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v2CellClick
        DataController.DataSource = src_LKSHABLON
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Width = 35
        end
        object clv2DATA: TcxGridDBColumn
          Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1076#1072#1090#1072' '#1091#1073#1086#1088#1082#1080
          DataBinding.FieldName = 'DATA'
          Width = 74
        end
        object clv2LKSHB: TcxGridDBColumn
          DataBinding.FieldName = 'LKSHB'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2LKTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'LKTYPE'
          Visible = False
          VisibleForCustomization = False
          Width = 47
        end
        object clv2LTNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1091#1073#1086#1088#1082#1080
          DataBinding.FieldName = 'LTNAME'
          HeaderAlignmentVert = vaCenter
          Width = 175
        end
        object clv2ALLP: TcxGridDBColumn
          AlternateCaption = #1091#1073#1086#1088#1082#1072' '#1074#1089#1077#1093' '#1087#1086#1076#1098#1077#1079#1076#1086#1074
          Caption = #1091#1073#1086#1088#1082#1072' '#1074#1089#1077#1093' '#1087#1086#1076#1098#1077#1079#1076#1086#1074
          DataBinding.FieldName = 'ALLP'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.FullFocusRect = True
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          BestFitMaxWidth = 30
          HeaderGlyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000C40E0000C40E00001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFF000000000000000F8F7F7F7F7F7F7F0F87F707F7F7F7F70F8F70007F7F7
            F7F0F87F0F007F7F7F70F8F7F7F007F7F7F0F87F707F7F7F7F70F8F70007F7F7
            F7F0F87F0F007F7F7F70F8F7F7F007F7F7F0F87F7F7F7F7F7F70F80000000000
            0000F8FCCCCCCCCCFCF0F888888888888888FFFFFFFFFFFFFFFF}
          HeaderGlyphAlignmentHorz = taCenter
          Options.ShowCaption = False
          Width = 30
        end
        object clv2P1: TcxGridDBColumn
          AlternateCaption = #1053#1072#1095#1080#1085#1072#1103' '#1089' '#1087#1086#1076#1098#1077#1079#1076#1072
          Caption = #1057
          DataBinding.FieldName = 'P1'
          BestFitMaxWidth = 38
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 38
        end
        object clv2P2: TcxGridDBColumn
          AlternateCaption = #1047#1072#1082#1072#1085#1095#1080#1074#1072#1103' '#1087#1086#1076#1098#1077#1079#1076#1086#1084
          Caption = #1055#1054
          DataBinding.FieldName = 'P2'
          BestFitMaxWidth = 38
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 38
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object txt_shname: TcxTextEdit
      Left = 10
      Top = 515
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object doc1: TdxBarDockControl
      Left = 10
      Top = 542
      Width = 100
      Height = 28
      Align = dalTop
      BarManager = brm1
      SunkenBorder = True
      UseOwnSunkenBorder = True
    end
    object dt1: TcxDateEdit
      Left = 398
      Top = 460
      EditValue = 0d
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cbb_LKType: TcxLookupComboBox
      Left = 398
      Top = 487
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
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_LKTYPE
      Style.HotTrack = False
      TabOrder = 6
      Width = 145
    end
    object chk_AllP: TcxCheckBox
      Left = 489
      Top = 460
      Caption = #1091#1073#1086#1088#1082#1072' '#1074#1089#1077#1093' '#1087#1086#1076#1098#1077#1079#1076#1086#1074
      Properties.OnEditValueChanged = chk_AllPPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object spin_P1: TcxSpinEdit
      Left = 398
      Top = 514
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object spin_P2: TcxSpinEdit
      Left = 593
      Top = 514
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 9
      Width = 55
    end
    object doc2: TdxBarDockControl
      Left = 289
      Top = 541
      Width = 334
      Height = 28
      Align = dalTop
      BarManager = brm1
      SunkenBorder = True
      UseOwnSunkenBorder = True
    end
    object btn_spr: TcxButton
      Left = 646
      Top = 487
      Width = 27
      Height = 21
      Caption = 'btn_spr'
      OptionsImage.Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        18000000000074030000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0840000
        840000840000840000840000840000840000840000840000C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0840000FFFFFFC6C6C6FFFFFFC6C6C6
        FFFFFFC6C6C6FFFFFF840000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0840000C6C6C6FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6840000
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0840000FFFFFFC6
        C6C6FFFFFFC6C6C6FFFFFFC6C6C6FFFFFF840000C0C0C0C0C0C0C0C0C000C0C0
        C0C0C0C0C0C0C0FF0000FF0000840000C6C6C6FFFFFFC6C6C6FFFFFFC6C6C6FF
        FFFFC6C6C6840000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0FF0000FFFF
        FF840000C6C6C6840000840000840000840000840000840000840000C0C0C0C0
        C0C0C0C0C000C0C0C0C0C0C0C0C0C0FF0000FFFFFF8400008400008400008400
        00840000840000840000840000840000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0840000840000FF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0840000C6C6C6FF0000C6C6C6FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000C0C0C084000084000084000084000000C0C0C0840000FFFFFFFF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000C0C0C0840000
        840000840000C0C0C000C0C0C0840000C6C6C6FFFFFFC6C6C6FFFFFFC6C6C6FF
        FFFFC6C6C6840000C0C0C0C0C0C0C0C0C084000084000084000084848400C0C0
        C0840000FFFFFFC6C6C6FFFFFFC6C6C6FFFFFFC6C6C6FFFFFF840000C0C0C0C0
        C0C0C0C0C0840000C0C0C0C0C0C084000000C0C0C0840000C6C6C68400008400
        00840000840000840000840000840000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C084
        848484000000C0C0C08400008400008400008400008400008400008400008400
        00840000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0840000C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C000}
      PaintStyle = bpsGlyph
      TabOrder = 7
      OnClick = btn_sprClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object grlc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 266
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object grlc1Group1: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grlc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 219
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1064#1072#1073#1083#1086#1085#1099' '#1075#1088#1072#1092#1080#1082#1086#1074
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = grd1
      Index = 0
    end
    object grlc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grlc1Group4
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 66
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object itm_shname: TdxLayoutItem
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = grlc1Group3
      Control = txt_shname
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_doc1: TdxLayoutItem
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group3
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grlc1Group6: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object grlc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grlc1Group6
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103' '#1096#1072#1073#1083#1086#1085#1086#1074
      CaptionOptions.Layout = clTop
      Parent = grlc1Group2
      Control = grd2
      Index = 0
    end
    object grlc1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Offsets.Top = 10
      Parent = grlc1Group6
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 110
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object grlc1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_dt1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1044#1072#1090#1072
      Parent = grlc1Group7
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 194
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_AllP: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = grlc1Group7
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 154
      Control = chk_AllP
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grlc1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itm_LKType: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1042#1080#1076' '#1091#1073#1086#1088#1082#1080
      Parent = grlc1Group9
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 351
      Control = cbb_LKType
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_spr: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group9
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 27
      Control = btn_spr
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grlc1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object itm_P1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1053#1072#1095#1080#1085#1072#1103' '#1089' '#1087#1086#1076#1098#1077#1079#1076#1072
      Parent = grlc1Group8
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 174
      Control = spin_P1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_P2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1047#1072#1082#1072#1085#1095#1080#1074#1072#1103' '#1087#1086#1076#1098#1077#1079#1076#1086#1084
      Parent = grlc1Group8
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 174
      Control = spin_P2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_doc2: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grlc1Group5
      Control = doc2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 56
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 652
    Top = 56
  end
  object ds_LKSHB: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from LKSHB')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 96
    Top = 176
  end
  object ds_LKSHABLON: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT ls.CODE, '
      '       ls.DATA, '
      '       ls.LKSHB, '
      '       ls.LKTYPE,lt.name LTNAME,'
      '       ls.ALLP, '
      '       ls.P1, '
      '       ls.P2'
      'FROM LKSHABLON ls'
      'left outer join LKTYPE lt on lt.code=ls.lktype'
      'where ls.LKSHB = :mas_CODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_LKSHB
    Left = 320
    Top = 184
    dcForceOpen = True
  end
  object src_LKSHABLON: TDataSource
    DataSet = ds_LKSHABLON
    Left = 352
    Top = 184
  end
  object src_LKSHB: TDataSource
    DataSet = ds_LKSHB
    Left = 123
    Top = 176
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
    ImageOptions.Images = cmDb.iml1
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 656
    Top = 136
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
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 801
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_shAdd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_shEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_shDel'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = doc2
      DockedDockControl = doc2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 801
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_lAdd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_lEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_lDel'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btn_shAdd: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_shAddClick
    end
    object btn_shEdit: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_shEditClick
    end
    object btn_shDel: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_shDelClick
    end
    object btn_lAdd: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_lAddClick
    end
    object btn_lEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_lEditClick
    end
    object btn_lDel: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_lDelClick
    end
  end
  object ds_LKTYPE: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME, SNAME, PTYPE'
      'from LKTYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 352
    Top = 384
  end
  object src_LKTYPE: TDataSource
    DataSet = ds_LKTYPE
    Left = 384
    Top = 384
  end
end
