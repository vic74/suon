object HouseFirmForm: THouseFirmForm
  Left = 0
  Top = 0
  Caption = #1042#1074#1086#1076' '#1076#1086#1084#1086#1074' '#1074' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1102
  ClientHeight = 588
  ClientWidth = 858
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
    Width = 858
    Height = 588
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object cbb_Firm: TcxLookupComboBox
      Left = 81
      Top = 10
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_FIRM
      Properties.OnEditValueChanged = cbb_FirmPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Width = 286
    end
    object grd1: TcxGrid
      Left = 32
      Top = 140
      Width = 382
      Height = 409
      TabOrder = 2
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v1: TcxGridDBTableView
        OnDblClick = v1DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_HFSTATE1
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1SNAME
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 239
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 82
        end
        object clv1FIRM: TcxGridDBColumn
          DataBinding.FieldName = 'FIRM'
          Visible = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 440
      Top = 140
      Width = 382
      Height = 409
      TabOrder = 3
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v2: TcxGridDBTableView
        OnDblClick = v2DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_HFSTATE0
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv2SNAME
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv2STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
        end
        object clv2SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 276
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 92
        end
        object clv2FIRM: TcxGridDBColumn
          DataBinding.FieldName = 'FIRM'
          Visible = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object doc1: TdxBarDockControl
      Left = 22
      Top = 74
      Width = 810
      Height = 29
      Align = dalTop
      BarManager = barM1
    end
    object dt1: TcxDateEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 4
      Visible = False
      Width = 121
    end
    object btn_Load: TcxButton
      Left = 10000
      Top = 10000
      Width = 116
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      OptionsImage.ImageIndex = 18
      OptionsImage.Images = cmDb.iml1
      TabOrder = 5
      Visible = False
      OnClick = btn_LoadClick
    end
    object grd3: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 6
      Visible = False
      LockedStateImageOptions.Effect = lsieLight
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v3: TcxGridDBTableView
        OnDblClick = v1DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_HOUSEFIRM
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv3STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
        end
        object clv3HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
        end
        object clv3SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 296
        end
        object clv3NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 77
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object lGrplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
    object lGrplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = #1042#1074#1086#1076'/'#1089#1085#1103#1090#1080#1077' '#1076#1086#1084#1086#1074' '#1074' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1102
      Parent = lGrplc1Group1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lGrplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = #1054#1090#1095#1077#1090' '#1087#1086' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' '#1085#1072' '#1076#1072#1090#1091
      Parent = lGrplc1Group1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lGrplc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object lGrplc1Group5: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = lGrplc1Group2
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object litm_Firm: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Parent = lGrplc1Group4
      Control = cbb_Firm
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lGrplc1Group6: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1044#1086#1084#1072' '#1074#1074#1077#1076#1077#1085#1085#1099#1077' '#1074' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
      Parent = lGrplc1Group9
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lGrplc1Group7: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1044#1086#1084#1072' '#1085#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1077#1084#1099#1077
      Parent = lGrplc1Group9
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object litm_GridLinkingFirm: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group6
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group7
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group8
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lGrplc1Group8: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = lGrplc1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lGrplc1Group9: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = lGrplc1Group8
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lGrplc1Group10: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lGrplc1Group3
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lGrplc1Group11: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = lGrplc1Group3
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object litm_lc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1074#1074#1086#1076#1072' '#1074' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
      Parent = lGrplc1Group10
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item13: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group10
      Control = btn_Load
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item14: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group11
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_Firm
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = dt1
        Properties.Strings = (
          'Date')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object ds_HOUSEFIRM: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT SUM(HF.STATE) STATE, HF.HOUSE, S.NAME SNAME, H.NOMER'
      'FROM HOUSEFIRM HF'
      'LEFT OUTER JOIN HOUSE H ON H.CODE = HF.HOUSE'
      'LEFT OUTER JOIN STREET S ON S.CODE = H.STREET'
      'WHERE HF.DATA<=:DATA AND HF.FIRM=:FIRM'
      'GROUP BY S.NAME, H.NOMER,HF.HOUSE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 200
    Top = 248
  end
  object src_HFSTATE1: TDataSource
    DataSet = md_HFSTATE1
    Left = 237
    Top = 424
  end
  object barM1: TdxBarManager
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
    Left = 304
    Top = 344
    DockControlHeights = (
      0
      0
      0
      0)
    object br1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 4
      DockedTop = 0
      FloatLeft = 892
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_RefreshLik'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_RefreshLik: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = btn_RefreshLikClick
    end
  end
  object md_HFSTATE1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 200
    Top = 424
  end
  object md_HFSTATE0: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 504
    Top = 416
  end
  object src_HFSTATE0: TDataSource
    DataSet = md_HFSTATE0
    Left = 536
    Top = 416
  end
  object ds_FreeHouse: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT 0 STATE, H.CODE HOUSE, S.NAME SNAME, H.NOMER'
      'FROM HOUSE H'
      'left outer join street s on s.CODE = h.STREET'
      ''
      'ORDER BY S.NAME, H.NOMER')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 504
    Top = 296
  end
  object src_HOUSEFIRM: TDataSource
    DataSet = ds1
    Left = 272
    Top = 200
  end
  object ds1: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT SUM(HF.STATE) STATE, HF.HOUSE, S.NAME SNAME, H.NOMER'
      'FROM HOUSEFIRM HF'
      'LEFT OUTER JOIN HOUSE H ON H.CODE = HF.HOUSE'
      'LEFT OUTER JOIN STREET S ON S.CODE = H.STREET'
      'WHERE HF.DATA<=:DATA AND HF.FIRM=:FIRM'
      'GROUP BY S.NAME, H.NOMER,HF.HOUSE'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 240
    Top = 200
  end
end
