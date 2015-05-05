object LKTYPEForm: TLKTYPEForm
  Left = 0
  Top = 0
  Caption = #1058#1080#1087#1099' '#1091#1073#1086#1088#1082#1080' '#1083#1077#1089#1090#1085#1080#1095#1085#1099#1093' '#1082#1083#1077#1090#1086#1082
  ClientHeight = 649
  ClientWidth = 889
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
    Width = 889
    Height = 649
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    ExplicitWidth = 911
    ExplicitHeight = 671
    object grd1: TcxGrid
      Left = 344
      Top = 11
      Width = 250
      Height = 200
      TabOrder = 4
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        OnCellClick = v1CellClick
        OnCellDblClick = v1CellDblClick
        DataController.DataSource = src_LKType
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
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Width = 46
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'NAME'
          Width = 252
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1082#1088'.'#1085#1072#1080#1084'.'
          DataBinding.FieldName = 'SNAME'
          Width = 60
        end
        object clv1PTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'PTYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1PNAME: TcxGridDBColumn
          Caption = #1055#1077#1088#1080#1086#1076#1080#1095#1085#1086#1089#1090#1100
          DataBinding.FieldName = 'PNAME'
          Width = 239
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object txt_name: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 5
      Visible = False
      Width = 121
    end
    object txt_sname: TcxTextEdit
      Left = 21
      Top = 175
      Hint = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1080#1087#1072' '#1088#1072#1073#1086#1090'. '#1058#1054#1051#1068#1050#1054' '#1053#1040' '#1056#1059#1057#1057#1050#1054#1052'!'
      ParentShowHint = False
      Properties.CharCase = ecUpperCase
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cbb_PNAME: TcxComboBox
      Left = 21
      Top = 222
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        '1 '#1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102
        '2 '#1088#1072#1079#1072' '#1074' '#1085#1077#1076#1077#1083#1102
        '3 '#1088#1072#1079#1072' '#1074' '#1085#1077#1076#1077#1083#1102
        '1 '#1088#1072#1079' '#1074' '#1084#1077#1089#1103#1094
        '1 '#1088#1072#1079' '#1074' '#1076#1074#1072' '#1084#1077#1089#1103#1094#1072
        '1 '#1088#1072#1079' '#1074' '#1090#1088#1080' '#1084#1077#1089#1103#1094#1072
        '1 '#1088#1072#1079' '#1074' '#1087#1086#1083#1075#1086#1076#1072)
      Style.HotTrack = False
      TabOrder = 2
      Text = '1 '#1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102
      Width = 121
    end
    object doc1: TdxBarDockControl
      Left = 21
      Top = 251
      Width = 100
      Height = 3
      Align = dalTop
      BarManager = brm1
    end
    object mmo_name: TcxMemo
      Left = 21
      Top = 60
      Style.HotTrack = False
      TabOrder = 0
      Height = 89
      Width = 185
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grlc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object grlc1Group3: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = ' '
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = False
      SizeOptions.Height = 180
      SizeOptions.Width = 310
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_mm_name: TdxLayoutItem
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = mmo_name
      Index = 0
    end
    object itm_sname: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 295
      Control = txt_sname
      Index = 1
    end
    object itm_PNAME: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1077#1088#1077#1086#1076#1080#1095#1085#1086#1089#1090#1100' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1088#1072#1073#1086#1090
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 295
      Control = cbb_PNAME
      Index = 2
    end
    object itm_doc: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = doc1
      ControlOptions.AutoColor = True
      Index = 3
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group3
      Control = grd1
      Index = 2
    end
    object itm_name: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
      CaptionOptions.Layout = clTop
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 295
      Control = txt_name
      Index = -1
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
  object cxhint1: TcxHintStyleController
    Global = False
    HintStyleClassName = 'TcxHintStyle'
    HintStyle.AnimationDelay = 70
    HintStyle.CallOutPosition = cxbpAuto
    HintStyle.CaptionFont.Charset = DEFAULT_CHARSET
    HintStyle.CaptionFont.Color = clWindowText
    HintStyle.CaptionFont.Height = -11
    HintStyle.CaptionFont.Name = 'Tahoma'
    HintStyle.CaptionFont.Style = []
    HintStyle.Font.Charset = DEFAULT_CHARSET
    HintStyle.Font.Color = clWindowText
    HintStyle.Font.Height = -11
    HintStyle.Font.Name = 'Tahoma'
    HintStyle.Font.Style = []
    HintStyle.IconSize = cxisSmall
    HintStyle.IconType = cxhiInformation
    Left = 736
    Top = 56
  end
  object ds_LKType: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME, SNAME, PTYPE,'
      '       case'
      '        when PTYPE = 0 then '#39'1 '#1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102#39
      '        when PTYPE = 1 then '#39'2 '#1088#1072#1079#1072' '#1074' '#1085#1077#1076#1077#1083#1102#39
      '        when PTYPE = 2 then '#39'3 '#1088#1072#1079#1072' '#1074' '#1085#1077#1076#1077#1083#1102#39
      '        when PTYPE = 3 then '#39'1 '#1088#1072#1079' '#1074' '#1084#1077#1089#1103#1094#39
      '        when PTYPE = 4 then '#39'1 '#1088#1072#1079' '#1074' '#1076#1074#1072' '#1084#1077#1089#1103#1094#1072#39
      '        when PTYPE = 5 then '#39'1 '#1088#1072#1079' '#1074' '#1090#1088#1080' '#1084#1077#1089#1103#1094#1072#39
      '        when PTYPE = 6 then '#39#1088#1072#1079' '#1074' '#1087#1086#1083#1075#1086#1076#1072#39
      '       end PNAME'
      'from LKTYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 656
    Top = 104
  end
  object src_LKType: TDataSource
    DataSet = ds_LKType
    Left = 688
    Top = 104
  end
  object brm1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
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
    Left = 656
    Top = 184
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
      FloatLeft = 945
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
          ItemName = 'btn_Edit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Del'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      Visible = False
      WholeRow = True
    end
    object btn_Add: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = btn_AddClick
    end
    object btn_Edit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
      OnClick = btn_EditClick
    end
    object btn_Del: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 2
      PaintStyle = psCaptionGlyph
      OnClick = btn_DelClick
    end
  end
end
