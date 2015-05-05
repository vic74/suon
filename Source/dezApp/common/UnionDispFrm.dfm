object UnionDispForm: TUnionDispForm
  Left = 0
  Top = 0
  Caption = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1089#1074#1103#1079#1080' '#1089' '#1076#1080#1089#1087#1077#1090#1095#1077#1088#1086#1084
  ClientHeight = 606
  ClientWidth = 861
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
  object LControl1: TdxLayoutControl
    Left = 0
    Top = 26
    Width = 861
    Height = 580
    Align = alClient
    TabOrder = 0
    object btn_Union: TcxButton
      Left = 393
      Top = 288
      Width = 75
      Height = 25
      Caption = #1057#1074#1103#1079#1072#1090#1100
      Colors.Default = clSkyBlue
      TabOrder = 3
      OnClick = btn_UnionClick
    end
    object grd1: TcxGrid
      Left = 34
      Top = 60
      Width = 382
      Height = 210
      TabOrder = 0
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_RQ
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.TranslateLike = True
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 446
      Top = 60
      Width = 381
      Height = 210
      TabOrder = 1
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v2CellClick
        DataController.DataSource = src_SUON
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.TranslateLike = True
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 34
      Top = 337
      Width = 382
      Height = 209
      TabOrder = 5
      object v3: TcxGridDBTableView
        OnKeyUp = v3KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v3CellClick
        DataController.DataSource = src_RQ1
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
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object grd4: TcxGrid
      Left = 446
      Top = 337
      Width = 381
      Height = 209
      TabOrder = 6
      object v4: TcxGridDBTableView
        OnKeyUp = v4KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v4CellClick
        DataController.DataSource = src_SUON1
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
      end
      object l4: TcxGridLevel
        GridView = v4
      end
    end
    object txt_SuonHouse: TcxDBTextEdit
      Left = 474
      Top = 288
      DataBinding.DataField = 'FULLNAME'
      DataBinding.DataSource = src_SUON
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 365
    end
    object txt_RqHouse: TcxDBTextEdit
      Left = 22
      Top = 288
      DataBinding.DataField = 'FULLNAME'
      DataBinding.DataSource = src_RQ
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 365
    end
    object grd5: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 7
      Visible = False
      object v5: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v5CellClick
        DataController.DataSource = src_RQ_PO
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
      end
      object l5: TcxGridLevel
        GridView = v5
      end
    end
    object grd6: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 8
      Visible = False
      object v6: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v6CellClick
        DataController.DataSource = src_SUON_PO
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
      end
      object l6: TcxGridLevel
        GridView = v6
      end
    end
    object grd7: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 12
      Visible = False
      object v7: TcxGridDBTableView
        OnKeyUp = v3KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v7CellClick
        DataController.DataSource = src_RQ1_PO
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
      end
      object l7: TcxGridLevel
        GridView = v7
      end
    end
    object grd8: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 13
      Visible = False
      object v8: TcxGridDBTableView
        OnKeyUp = v4KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v8CellClick
        DataController.DataSource = src_SUON1_PO
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
      end
      object l8: TcxGridLevel
        GridView = v8
      end
    end
    object txt_disp_PO: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NAME'
      DataBinding.DataSource = src_RQ_PO
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Visible = False
      Width = 121
    end
    object btn_PO_Union: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = #1057#1074#1103#1079#1072#1090#1100
      Colors.Default = clSkyBlue
      TabOrder = 10
      Visible = False
      OnClick = btn_PO_UnionClick
    end
    object txt_suon_PO: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NAME'
      DataBinding.DataSource = src_SUON_PO
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 121
    end
    object lgrp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lgrpLControl1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = #1044#1086#1084#1072' '#1080#1079' '#1057#1059#1054#1053
      Parent = lgrpLControl1Group5
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lgrpLControl1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group6
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object lgrpLControl1Group3: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group6
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group4: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = #1044#1086#1084#1072' '#1080#1079' '#1076#1080#1089#1087#1077#1090#1095#1077#1088#1072
      Parent = lgrpLControl1Group5
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lgrpLControl1Group5: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrpLControl1Group10
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrpLControl1Group10
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lgrpLControl1Group7: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = #1057#1074#1103#1079#1072#1085#1085#1099#1077' '#1076#1086#1084#1072' '#1080#1079' '#1057#1059#1054#1053
      Parent = lgrpLControl1Group9
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lgrpLControl1Group8: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = #1057#1074#1103#1079#1103#1085#1085#1099#1077' '#1076#1086#1084#1072' '#1080#1079' '#1044#1080#1089#1087#1077#1090#1095#1077#1088#1072
      Parent = lgrpLControl1Group9
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lgrpLControl1Group9: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrpLControl1Group10
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = -1
    end
    object LItemLControl1Item1: TdxLayoutItem
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group6
      Control = btn_Union
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item13: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group4
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item14: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group1
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item15: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group8
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item16: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group7
      Control = grd4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'cxDBTextEdit1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group2
      Control = txt_SuonHouse
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'cxDBTextEdit1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group3
      Control = txt_RqHouse
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group10: TdxLayoutGroup
      CaptionOptions.Text = #1044#1086#1084#1072
      Parent = lgrpLControl1Group11
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lgrpLControl1Group11: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group12: TdxLayoutGroup
      CaptionOptions.Text = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099
      Parent = lgrpLControl1Group11
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lgrpLControl1Group13: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lgrpLControl1Group12
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lgrpLControl1Group14: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = lgrpLControl1Group12
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lgrpLControl1Group15: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = lgrpLControl1Group12
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item17: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1055#1054' '#1080#1079' '#1076#1080#1089#1087#1077#1090#1095#1077#1088#1072
      CaptionOptions.Layout = clTop
      Parent = lgrpLControl1Group15
      Control = grd5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item18: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1055#1054' '#1080#1079' '#1057#1059#1054#1053
      CaptionOptions.Layout = clTop
      Parent = lgrpLControl1Group15
      Control = grd6
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item19: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1089#1074#1103#1079#1072#1085#1085#1099#1077' '#1055#1054' '#1080#1079' '#1076#1080#1089#1087#1077#1090#1095#1077#1088#1072
      CaptionOptions.Layout = clTop
      Parent = lgrpLControl1Group14
      Control = grd7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item110: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1089#1074#1103#1079#1072#1085#1085#1099#1077' '#1055#1054' '#1080#1079' '#1057#1059#1054#1053
      CaptionOptions.Layout = clTop
      Parent = lgrpLControl1Group14
      Control = grd8
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item111: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxDBTextEdit1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group13
      Control = txt_disp_PO
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group13
      Control = btn_PO_Union
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item112: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxDBTextEdit1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group13
      Control = txt_suon_PO
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object BarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = cmDb.iml1
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 616
    Top = 432
    DockControlHeights = (
      0
      0
      26
      0)
    object br1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 887
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Load'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_Load: TdxBarButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 26
      PaintStyle = psCaptionGlyph
      OnClick = btn_LoadClick
    end
  end
  object md_RQ: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 208
    Top = 200
  end
  object md_SUON: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 640
    Top = 200
  end
  object md_RQ1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 228
    Top = 488
  end
  object md_SUON1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 652
    Top = 488
  end
  object src_RQ: TDataSource
    DataSet = md_RQ
    Left = 240
    Top = 200
  end
  object src_SUON: TDataSource
    DataSet = md_SUON
    Left = 672
    Top = 200
  end
  object src_RQ1: TDataSource
    DataSet = md_RQ1
    Left = 256
    Top = 488
  end
  object src_SUON1: TDataSource
    DataSet = md_SUON1
    Left = 680
    Top = 488
  end
  object ds_SUON: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT H.CODE,S.NAME, H.NOMER,S.NAME||'#39', '#39'||H.NOMER FULLNAME'
      'FROM HOUSE H'
      'LEFT OUTER JOIN STREET S ON S.CODE=H.STREET'
      'WHERE H.DISP_ID is NULL AND H.A =1'
      'ORDER BY NAME, NOMER')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 640
    Top = 168
  end
  object ds_SUON1: TpFIBDataSet
    SelectSQL.Strings = (
      
        'SELECT H.CODE,S.NAME, H.NOMER, DISP_ID, S.NAME||'#39', '#39'||H.NOMER FU' +
        'LLNAME'
      'FROM HOUSE H'
      'LEFT OUTER JOIN STREET S ON S.CODE=H.STREET'
      'WHERE H.DISP_ID is not NULL'
      'ORDER BY NAME, NOMER'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 648
    Top = 432
  end
  object src_RQ_PO: TDataSource
    DataSet = md_RQ_PO
    Left = 240
    Top = 248
  end
  object md_RQ_PO: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 212
    Top = 248
  end
  object src_RQ1_PO: TDataSource
    DataSet = md_RQ1_PO
    Left = 256
    Top = 520
  end
  object md_RQ1_PO: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 228
    Top = 520
  end
  object src_SUON_PO: TDataSource
    DataSet = md_SUON_PO
    Left = 672
    Top = 232
  end
  object md_SUON_PO: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 643
    Top = 232
  end
  object src_SUON1_PO: TDataSource
    DataSet = md_SUON1_PO
    Left = 684
    Top = 528
  end
  object md_SUON1_PO: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 656
    Top = 528
  end
  object ds_SUON_PO: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, NAME'
      'FROM KONTRAGENT'
      'WHERE KTYPE=1 AND DISP_ID is NULL'
      'ORDER BY NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 608
    Top = 168
  end
  object ds_SUON1_PO: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, NAME, DISP_ID'
      'FROM KONTRAGENT'
      'WHERE KTYPE=1 AND DISP_ID IS NOT NULL'
      'ORDER BY NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 680
    Top = 432
  end
end
