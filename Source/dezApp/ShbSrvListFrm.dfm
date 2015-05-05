object ShbSrvListForm: TShbSrvListForm
  Left = 0
  Top = 0
  Caption = #1059#1089#1083#1091#1075#1080' '#1076#1083#1103' '#1096#1072#1073#1083#1086#1085#1072
  ClientHeight = 680
  ClientWidth = 833
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
    Width = 833
    Height = 680
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object srvName: TcxTextEdit
      Left = 20
      Top = 59
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object srvNum: TcxSpinEdit
      Left = 75
      Top = 86
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object doc1: TdxBarDockControl
      Left = 20
      Top = 113
      Width = 136
      Height = 26
      Align = dalTop
      BarManager = brm1
    end
    object grd1: TcxGrid
      Left = 291
      Top = 41
      Width = 250
      Height = 200
      TabOrder = 3
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_SHBSRVLIST
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 48
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 250
        end
        object clv1POZ: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'POZ'
          Width = 45
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
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = ' '
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 253
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_srvName: TdxLayoutItem
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = srvName
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_srvNum: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #8470' '#1091#1089#1083#1091#1075#1080
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 150
      Control = srvNum
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_doc1: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grlc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = ' '
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
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
  object brm1: TdxBarManager
    AllowReset = False
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
    ImageOptions.Images = cmDb.iml1
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 344
    Top = 104
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
      FloatLeft = 867
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Add'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_edit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_del'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_Add: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_AddClick
    end
    object btn_edit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_editClick
    end
    object btn_del: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_delClick
    end
  end
  object ds_SHBSRVLIST: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME, POZ'
      'from SHBSRVLIST')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 440
    Top = 136
  end
  object src_SHBSRVLIST: TDataSource
    DataSet = ds_SHBSRVLIST
    Left = 472
    Top = 136
  end
end
