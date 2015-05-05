object MoveWorkForm: TMoveWorkForm
  Left = 0
  Top = 0
  ClientHeight = 596
  ClientWidth = 744
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 744
    Height = 596
    Align = alClient
    TabOrder = 0
    object grd1: TcxGrid
      Left = 10
      Top = 118
      Width = 353
      Height = 355
      TabOrder = 3
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_WS1
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
          Width = 62
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 339
        end
        object clv1KSERVISWORK: TcxGridDBColumn
          DataBinding.FieldName = 'KSERVISWORK'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 381
      Top = 118
      Width = 353
      Height = 355
      TabOrder = 5
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v2CellClick
        DataController.DataSource = src_WS2
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
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 62
        end
        object clv2NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 330
        end
        object clv2KSERVISWORK: TcxGridDBColumn
          DataBinding.FieldName = 'KSERVISWORK'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object mmo1: TcxMemo
      Left = 10
      Top = 497
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 4
      Height = 89
      Width = 353
    end
    object mmo2: TcxMemo
      Left = 381
      Top = 497
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 6
      Height = 89
      Width = 353
    end
    object msk1: TcxMaskEdit
      Left = 20
      Top = 41
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 0
      Width = 284
    end
    object msk2: TcxMaskEdit
      Left = 440
      Top = 41
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 2
      Width = 284
    end
    object btn_move: TcxButton
      Left = 322
      Top = 36
      Width = 99
      Height = 25
      Caption = #1055#1077#1088#1077#1085#1077#1089#1090#1080'->'
      TabOrder = 1
      OnClick = btn_moveClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = lcl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 84
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object itm_msk1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1056#1072#1073#1086#1090#1072', '#1089' '#1082#1086#1090#1086#1088#1086#1081' '#1087#1077#1088#1077#1085#1086#1089#1080#1084
      CaptionOptions.Layout = clTop
      Parent = grp2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 284
      Control = msk1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_move: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Offsets.Top = 13
      Parent = grp2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 99
      Control = btn_move
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_msk2: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = #1056#1072#1073#1086#1090#1072', '#1085#1072' '#1082#1086#1090#1086#1088#1091#1102' '#1087#1077#1088#1077#1085#1086#1089#1080#1084
      CaptionOptions.Layout = clTop
      Parent = grp2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 284
      Control = msk2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grplc1Group1: TdxLayoutGroup
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
      CaptionOptions.Text = #1056#1072#1073#1086#1090#1072', '#1089' '#1082#1086#1090#1086#1088#1086#1081' '#1087#1077#1088#1077#1085#1086#1089#1080#1084
      CaptionOptions.Layout = clTop
      Parent = grplc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_mmo1: TdxLayoutItem
      CaptionOptions.Text = #1050#1072#1090#1077#1075#1086#1088#1080#1080
      CaptionOptions.Layout = clTop
      Parent = grplc1Group2
      Control = mmo1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grplc1Group3: TdxLayoutGroup
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
      CaptionOptions.Text = #1056#1072#1073#1086#1090#1072', '#1085#1072' '#1082#1086#1090#1086#1088#1091#1102' '#1087#1077#1088#1077#1085#1086#1089#1080#1084
      CaptionOptions.Layout = clTop
      Parent = grplc1Group3
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_mmo2: TdxLayoutItem
      CaptionOptions.Text = #1050#1072#1090#1077#1075#1086#1088#1080#1080
      CaptionOptions.Layout = clTop
      Parent = grplc1Group3
      Control = mmo2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 696
    Top = 168
  end
  object bar1: TdxBarManager
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
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 664
    Top = 168
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object ds_WS1: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sw.CODE, '
      '       sw.NAME, '
      '       sw.KSERVISWORK, '
      '       sw.CASH, '
      '       sw.ED, '
      '       sw.PRICE'
      'FROM SERVISWORK sw'
      ''
      'order by sw.NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 72
    Top = 264
  end
  object src_WS1: TDataSource
    DataSet = ds_WS1
    Left = 100
    Top = 264
  end
  object ds_WS2: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sw.CODE, '
      '       sw.NAME, '
      '       sw.KSERVISWORK, '
      '       sw.CASH, '
      '       sw.ED, '
      '       sw.PRICE'
      'FROM SERVISWORK sw'
      ''
      'order by sw.NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 400
    Top = 264
  end
  object src_WS2: TDataSource
    DataSet = ds_WS2
    Left = 428
    Top = 264
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 632
    Top = 168
    object lcl1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
end
