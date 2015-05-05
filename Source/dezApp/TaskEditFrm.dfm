object TaskEditForm: TTaskEditForm
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1076#1072#1095#1080
  ClientHeight = 704
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lc_1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 820
    Height = 704
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    LayoutLookAndFeel = lcf_1
    RedrawOnResize = False
    object TASKHEAD: TcxTextEdit
      Left = 11
      Top = 29
      Properties.OnEditValueChanged = SetModified
      Style.HotTrack = False
      TabOrder = 0
      Width = 794
    end
    object TASKPRIORITY: TcxComboBox
      Left = 11
      Top = 69
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1053#1080#1079#1082#1080#1081
        #1053#1086#1088#1084#1072#1083#1100#1085#1099#1081
        #1042#1099#1089#1086#1082#1080#1081)
      Properties.OnEditValueChanged = SetModified
      Style.HotTrack = False
      TabOrder = 1
      Text = #1053#1086#1088#1084#1072#1083#1100#1085#1099#1081
      Width = 160
    end
    object TASKBEGIN: TcxDateEdit
      Left = 175
      Top = 69
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = SetModified
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 135
    end
    object TASKEND: TcxDateEdit
      Left = 314
      Top = 69
      Properties.OnEditValueChanged = SetModified
      Style.HotTrack = False
      TabOrder = 3
      Width = 135
    end
    object TASKBODY: TcxRichEdit
      Left = 11
      Top = 153
      Properties.OnEditValueChanged = SetModified
      Style.HotTrack = False
      TabOrder = 6
      Height = 175
      Width = 534
    end
    object TASKUSER: TcxTextEdit
      Left = 588
      Top = 389
      Properties.ReadOnly = True
      TabOrder = 12
      Width = 217
    end
    object TASKSTATUS: TcxMemo
      Left = 588
      Top = 429
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 13
      Height = 39
      Width = 217
    end
    object txt_TASKPRIORITY: TcxTextEdit
      Left = 588
      Top = 487
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 14
      Width = 217
    end
    object doc_1: TdxBarDockControl
      Left = 559
      Top = 293
      Width = 250
      Height = 28
      Align = dalTop
      BarManager = bar1
    end
    object doc2: TdxBarDockControl
      Left = 1
      Top = 675
      Width = 818
      Height = 28
      Align = dalTop
      BarManager = bar1
    end
    object m2: TcxMemo
      Left = 11
      Top = 554
      Style.HotTrack = False
      TabOrder = 10
      Height = 72
      Width = 549
    end
    object doc3: TdxBarDockControl
      Left = 11
      Top = 630
      Width = 549
      Height = 28
      Align = dalTop
      BarManager = bar1
    end
    object rch_1: TcxRichEdit
      Left = 11
      Top = 374
      ParentColor = True
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.Shadow = False
      Style.TransparentBorder = True
      StyleDisabled.Color = clWindow
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 9
      Height = 190
      Width = 549
    end
    object grd1: TcxGrid
      Left = 559
      Top = 153
      Width = 250
      Height = 147
      TabOrder = 7
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_md1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object cl_CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object cl_TASKCODE: TcxGridDBColumn
          DataBinding.FieldName = 'TASKCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object cl_TASKUSER: TcxGridDBColumn
          DataBinding.FieldName = 'TASKUSER'
          Visible = False
          VisibleForCustomization = False
        end
        object cl_DATAFILE: TcxGridDBColumn
          DataBinding.FieldName = 'DATAFILE'
          Visible = False
          VisibleForCustomization = False
        end
        object cl_TASKFILENAME: TcxGridDBColumn
          DataBinding.FieldName = 'TASKFILENAME'
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object TASKCOMPLETE: TcxSpinEdit
      Left = 453
      Top = 69
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = SetModified
      Style.HotTrack = False
      TabOrder = 4
      Width = 88
    end
    object cbb_TASKSTATUS: TcxLookupComboBox
      Left = 545
      Top = 69
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
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_TASKSTATUS
      Properties.OnEditValueChanged = SetModified
      Style.HotTrack = False
      TabOrder = 5
      Width = 145
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemControlAreaAlignment = catAuto
      ShowBorder = False
      Index = -1
    end
    object grp__1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 82
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object grp__1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1054#1087#1080#1089#1072#1085#1080#1077' '#1079#1072#1076#1072#1095#1080
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 230
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 1
    end
    object itm__1Item1: TdxLayoutItem
      CaptionOptions.Text = #1047#1072#1076#1072#1095#1072
      CaptionOptions.Layout = clTop
      Parent = grp__1Group1
      Control = TASKHEAD
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm__1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      CaptionOptions.Layout = clTop
      Parent = grp__1Group6
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 160
      Control = TASKPRIORITY
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm__1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1079#1072#1076#1072#1095#1080
      CaptionOptions.Layout = clTop
      Parent = grp__1Group6
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 135
      Control = TASKBEGIN
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm__1Item13: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1079#1072#1076#1072#1095#1080
      CaptionOptions.Layout = clTop
      Parent = grp__1Group6
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 135
      Control = TASKEND
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grp__1Group4: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1050#1086#1084#1077#1085#1090#1072#1088#1080#1080
      LayoutLookAndFeel = lcf_1
      Parent = grp__1Group7
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 281
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm__1Item14: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1054#1087#1080#1089#1072#1085#1080#1077' '#1079#1072#1076#1072#1095#1080
      CaptionOptions.Layout = clTop
      Parent = grp__1Group5
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 220
      Control = TASKBODY
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grp__1Group5: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp__1Group2
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 212
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object spl_1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp__1Group5
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grp__1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp__1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grp__1Group3: TdxLayoutGroup
      CaptionOptions.Text = '  '
      LayoutLookAndFeel = lcf_1
      Parent = grp__1Group7
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 300
      SizeOptions.Width = 241
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object grp__1Group7: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 328
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object itm__1Item16: TdxLayoutItem
      CaptionOptions.Text = #1055#1086#1089#1090#1072#1085#1086#1074#1097#1080#1082
      CaptionOptions.Layout = clTop
      Parent = grp__1Group3
      Control = TASKUSER
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm__1Item17: TdxLayoutItem
      CaptionOptions.Text = #1057#1090#1072#1090#1091#1089
      CaptionOptions.Layout = clTop
      Parent = grp__1Group3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 54
      Control = TASKSTATUS
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm__1Item18: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      CaptionOptions.Layout = clTop
      Parent = grp__1Group3
      Control = txt_TASKPRIORITY
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm__1Item19: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grp__1Group8
      Control = doc_1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grp__1Group8: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp__1Group5
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 237
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object itm__1Item110: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = doc2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm__1Item112: TdxLayoutItem
      CaptionOptions.Text = 'cxMemo1'
      CaptionOptions.Visible = False
      Parent = grp__1Group4
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 72
      Control = m2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm__1Item113: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grp__1Group4
      Control = doc3
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm__1Item111: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxRichEdit1'
      CaptionOptions.Visible = False
      Parent = grp__1Group4
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      Control = rch_1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm__1Item114: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1092#1072#1081#1083#1086#1074
      CaptionOptions.Layout = clTop
      Parent = grp__1Group8
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 185
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm__1Item15: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1090#1086#1074#1085#1086#1089#1090#1100' (%)'
      CaptionOptions.Layout = clTop
      Parent = grp__1Group6
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 88
      Control = TASKCOMPLETE
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm__1Item115: TdxLayoutItem
      CaptionOptions.Text = #1057#1090#1072#1090#1091#1089
      CaptionOptions.Layout = clTop
      Parent = grp__1Group6
      Control = cbb_TASKSTATUS
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object spl_2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
  end
  object lf_1: TdxLayoutLookAndFeelList
    Left = 432
    Top = 184
    object llf_1: TdxLayoutWebLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 3
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
    object lfo_1: TdxLayoutOfficeLookAndFeel
    end
    object lcf_1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 3
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
      LookAndFeel.NativeStyle = False
    end
  end
  object bar1: TdxBarManager
    AlwaysSaveText = True
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
    PopupMenuLinks = <>
    SunkenBorder = True
    UseSystemFont = True
    Left = 464
    Top = 184
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
      DockControl = doc_1
      DockedDockControl = doc_1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 809
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AddFile'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_DelFile'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object br2: TdxBar
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
      FloatLeft = 809
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Save'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Cancel'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object br3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = doc3
      DockedDockControl = doc3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 809
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AddComment'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_AddFile: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = btn_AddFileClick
    end
    object btn_DelFile: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      PaintStyle = psCaptionGlyph
      OnClick = btn_DelFileClick
    end
    object btn_Save: TdxBarButton
      Align = iaRight
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      Visible = ivAlways
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
      OnClick = btn_SaveClick
    end
    object btn_Cancel: TdxBarButton
      Align = iaRight
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      Category = 0
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 12
      PaintStyle = psCaptionGlyph
      OnClick = btn_CancelClick
    end
    object btn_AddComment: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1086#1084#1077#1085#1090#1072#1088#1080#1081
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1086#1084#1077#1085#1090#1072#1088#1080#1081
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = btn_AddCommentClick
    end
  end
  object ds_TASKCOMMENT: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT t.CODE, '
      '       t.TASKCODE, '
      '       t.DATECOMMENT, '
      '       t.COMMENT, '
      '       t.TASKUSER,'
      
        '       iif(t.TASKUSER = 9,'#39#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1080' '#1057#1059#1054#1053#39', (P.F || '#39' '#39' || P.' +
        'I || '#39' '#39' || P.O)) FIO'
      'FROM TASKCOMMENT t'
      'left outer join worker w on w.code=t.taskuser'
      'left outer join piple p on p.code=w.piple')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 272
    Top = 296
  end
  object ds_TASKFILES: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select CODE, TASKCODE, TASKFILE, TASKUSER, DATAFILE, TASKFILENAM' +
        'E'
      'from TASKFILES')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 248
    Top = 296
  end
  object md1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 608
    Top = 192
    object fld_md1CODE: TIntegerField
      FieldName = 'CODE'
    end
    object fld_md1TASKCODE: TIntegerField
      FieldName = 'TASKCODE'
    end
    object fld_md1TASKUSER: TIntegerField
      FieldName = 'TASKUSER'
    end
    object fld_md1DATAFILE: TDateField
      FieldName = 'DATAFILE'
    end
    object fld_md1TASKFILENAME: TStringField
      FieldName = 'TASKFILENAME'
      Size = 256
    end
  end
  object src_md1: TDataSource
    DataSet = md1
    Left = 640
    Top = 192
  end
  object pm_1: TPopupMenu
    Images = cmDb.iml1
    Left = 704
    Top = 192
    object N1: TMenuItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1081#1083
      OnClick = N1Click
    end
  end
  object gpop_1: TcxGridPopupMenu
    Grid = grd1
    PopupMenus = <
      item
        GridView = v1
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = pm_1
      end>
    Left = 736
    Top = 192
  end
  object ds_TASKSTATUS: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from TASKSTATUS')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 472
    Top = 304
  end
  object src_TASKSTATUS: TDataSource
    DataSet = ds_TASKSTATUS
    Left = 509
    Top = 304
  end
  object prop1: TcxPropertiesStore
    Active = False
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Width')
      end>
    StorageName = 'prop1'
    Left = 376
    Top = 192
  end
  object dlg: TOpenDialog
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 600
    Top = 272
  end
  object sdlg: TSaveDialog
    Left = 640
    Top = 272
  end
end
