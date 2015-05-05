object MoveMatForm: TMoveMatForm
  Left = 0
  Top = 0
  ClientHeight = 561
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 738
    Height = 561
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object grd1: TcxGrid
      Left = 10
      Top = 103
      Width = 250
      Height = 200
      TabOrder = 3
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_ksg1
        DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription]
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = clv1NAME
        OptionsBehavior.PullFocusing = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 51
        end
        object clv1KSERVISMATERIAL: TcxGridDBColumn
          DataBinding.FieldName = 'KSERVISMATERIAL'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 278
        end
        object clv1ED: TcxGridDBColumn
          Visible = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 346
      Top = 103
      Width = 250
      Height = 200
      TabOrder = 5
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v2CellClick
        DataController.DataSource = src_ksg2
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = clv2NAME
        OptionsBehavior.PullFocusing = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 70
        end
        object clv2NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 258
        end
        object clv2KSERVISMATERIAL: TcxGridDBColumn
          DataBinding.FieldName = 'KSERVISMATERIAL'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object edt_m1: TcxMaskEdit
      Left = 20
      Top = 41
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object edt_m2: TcxMaskEdit
      Left = 468
      Top = 41
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object btn_ok: TcxButton
      Left = 311
      Top = 41
      Width = 115
      Height = 25
      Caption = #1055#1077#1088#1077#1085#1077#1089#1090#1080' ->'
      TabOrder = 1
      OnClick = btn_okClick
    end
    object mmo: TcxMemo
      Left = 10
      Top = 476
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 4
      Height = 89
      Width = 185
    end
    object mmo2: TcxMemo
      Left = 346
      Top = 476
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 6
      Height = 75
      Width = 300
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp_top: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 69
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object grplc1Group3: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_top
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_m1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1052#1072#1090#1077#1088#1080#1072#1083', '#1089' '#1082#1086#1090#1086#1075#1086' '#1087#1077#1088#1077#1085#1086#1089#1080#1084
      CaptionOptions.Layout = clTop
      Parent = grplc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 250
      Control = edt_m1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_ok: TdxLayoutItem
      AlignHorz = ahCenter
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 115
      Control = btn_ok
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_m2: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = #1052#1072#1090#1077#1088#1080#1072#1083', '#1085#1072' '#1082#1086#1090#1086#1088#1099#1081' '#1087#1077#1088#1077#1085#1086#1089#1080#1084
      CaptionOptions.Layout = clTop
      Parent = grplc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 250
      Control = edt_m2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grplc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1042#1099#1073#1088#1072#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083', '#1089' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1087#1077#1088#1077#1085#1086#1089#1080#1084
      CaptionOptions.Layout = clTop
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_mmo: TdxLayoutItem
      CaptionOptions.Text = #1050#1072#1090#1077#1075#1086#1088#1080#1080
      CaptionOptions.Layout = clTop
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 93
      Control = mmo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grplc1Group4: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1042#1099#1073#1088#1072#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083', '#1085#1072' '#1082#1086#1090#1086#1088#1099#1081' '#1087#1077#1088#1077#1085#1086#1089#1080#1084
      CaptionOptions.Layout = clTop
      Parent = grplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_mmo2: TdxLayoutItem
      CaptionOptions.Text = #1050#1072#1090#1077#1075#1086#1088#1080#1080
      CaptionOptions.Layout = clTop
      Parent = grplc1Group4
      Control = mmo2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 699
    Top = 104
    object laf1: TdxLayoutCxLookAndFeel
    end
  end
  object ds_ksg1: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sm.CODE,'
      '       sm.KSERVISMATERIAL, '
      '       sm.NAME, '
      '       sm.ED, '
      '       sm.PRICE'
      'FROM SERVISMATERIAL sm'
      'order by sm.NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    Left = 64
    Top = 216
  end
  object ds_ksg2: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sm.CODE,'
      '       sm.KSERVISMATERIAL, '
      '       sm.NAME, '
      '       sm.ED, '
      '       sm.PRICE'
      'FROM SERVISMATERIAL sm'
      'order by sm.NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    Left = 488
    Top = 224
  end
  object src_ksg1: TDataSource
    DataSet = ds_ksg1
    Left = 93
    Top = 216
  end
  object src_ksg2: TDataSource
    DataSet = ds_ksg2
    Left = 516
    Top = 224
  end
end
