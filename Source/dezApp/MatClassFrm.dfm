object MatClassForm: TMatClassForm
  Left = 0
  Top = 0
  Caption = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
  ClientHeight = 588
  ClientWidth = 879
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object docs_1: TdxDockSite
    Left = 0
    Top = 0
    Width = 879
    Height = 588
    Align = alClient
    DockingType = 5
    OriginalWidth = 879
    OriginalHeight = 588
    object docs2: TdxLayoutDockSite
      Left = 233
      Top = 0
      Width = 646
      Height = 588
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
      object ldoc_1: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 646
        Height = 588
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object docp_11: TdxDockPanel
        Left = 0
        Top = 0
        Width = 646
        Height = 588
        AllowFloating = False
        AutoHide = False
        Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1099
        CaptionButtons = []
        TabsProperties.NavigatorPosition = npLeftTop
        TabsProperties.Options = [pcoAlwaysShowGoDialogButton, pcoGoDialog, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
        DockingType = 0
        OriginalWidth = 185
        OriginalHeight = 140
        object doc_2: TdxBarDockControl
          Left = 0
          Top = 532
          Width = 638
          Height = 26
          Align = dalBottom
          BarManager = bar_1
        end
        object grd1: TcxGrid
          Left = 0
          Top = 0
          Width = 638
          Height = 532
          Align = alClient
          DragMode = dmAutomatic
          TabOrder = 1
          object v1: TcxGridDBTableView
            DragMode = dmAutomatic
            OnDblClick = v1DblClick
            OnDragOver = v1DragOver
            OnKeyUp = v1KeyUp
            OnStartDrag = v1StartDrag
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            OnCellClick = v1CellClick
            DataController.DataSource = src_CLASSMAT1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.NavigatorHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Selection = cmDb.stl_ReadOnly
            object cl_v1CODE: TcxGridDBColumn
              Caption = #1050#1086#1076
              DataBinding.FieldName = 'CODE'
            end
            object cl_v1OWN: TcxGridDBColumn
              DataBinding.FieldName = 'OWN'
              Visible = False
              VisibleForCustomization = False
            end
            object cl_v1NAME: TcxGridDBColumn
              Caption = #1048#1084#1103
              DataBinding.FieldName = 'NAME'
              Visible = False
              Width = 68
            end
            object cl_v1FULLNAME: TcxGridDBColumn
              Caption = #1053#1072#1080#1084#1085#1086#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'FULLNAME'
              Width = 390
            end
            object cl_v1ISGROUP: TcxGridDBColumn
              DataBinding.FieldName = 'ISGROUP'
              Visible = False
              VisibleForCustomization = False
            end
            object cl_v1ISNAME: TcxGridDBColumn
              DataBinding.FieldName = 'ISNAME'
              Visible = False
              VisibleForCustomization = False
            end
            object clv1ED: TcxGridDBColumn
              Caption = #1045#1076'. '#1080#1079#1084
              DataBinding.FieldName = 'ED'
              Width = 55
            end
          end
          object l1: TcxGridLevel
            GridView = v1
          end
        end
      end
    end
    object docp_1: TdxDockPanel
      Left = 0
      Top = 0
      Width = 233
      Height = 588
      AllowFloating = True
      AutoHide = False
      Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
      CaptionButtons = [cbHide]
      TabsProperties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoNoArrows, pcoRedrawOnResize]
      DockingType = 1
      OriginalWidth = 233
      OriginalHeight = 140
      object lst_1: TcxDBTreeList
        Left = 0
        Top = 0
        Width = 225
        Height = 532
        Align = alClient
        Bands = <
          item
          end>
        DataController.DataSource = src_CLASSMAT
        DataController.ParentField = 'OWN'
        DataController.KeyField = 'CODE'
        Navigator.Buttons.CustomButtons = <>
        OptionsData.Editing = False
        OptionsData.Deleting = False
        OptionsSelection.InvertSelect = False
        OptionsView.CategorizedColumn = cl_FULLNAME
        OptionsView.ColumnAutoWidth = True
        OptionsView.DropNodeIndicator = True
        OptionsView.DynamicFocusedStateImages = True
        OptionsView.Indicator = True
        RootValue = -1
        TabOrder = 0
        OnClick = lst_1Click
        OnDragDrop = lst_1DragDrop
        OnDragOver = lst_1DragOver
        object cl_CODE: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'CODE'
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cl_FULLNAME: TcxDBTreeListColumn
          Caption.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Options.Customizing = False
          Width = 158
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cl_1ED: TcxDBTreeListColumn
          Caption.Text = #1045#1076'. '#1080#1079#1084'.'
          DataBinding.FieldName = 'ED'
          Width = 53
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
      end
      object doc_1: TdxBarDockControl
        Left = 0
        Top = 532
        Width = 225
        Height = 26
        Align = dalBottom
        BarManager = bar_1
      end
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object docm_1: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    DockStyle = dsVS2005
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [doActivateAfterDocking, doDblClickDocking, doTabContainerHasCaption, doTabContainerCanAutoHide, doSideContainerCanClose, doSideContainerCanAutoHide, doTabContainerCanInSideContainer, doRedrawOnResize, doFillDockingSelection, doUseCaptionAreaToClientDocking]
    Left = 328
    Top = 328
    PixelsPerInch = 96
  end
  object bar_1: TdxBarManager
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
    Style = bmsOffice11
    UseSystemFont = True
    Left = 296
    Top = 328
    DockControlHeights = (
      0
      0
      0
      0)
    object br_1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc_1
      DockedDockControl = doc_1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 913
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AddGroup'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_EditGroup'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_DelGroup'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_xls'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object br_2: TdxBar
      AllowQuickCustomizing = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = doc_2
      DockedDockControl = doc_2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 913
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AddMat'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_EditMat'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_DelMat'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_AddGroup: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1075#1088#1091#1087#1087#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1075#1088#1091#1087#1087#1072
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = ppm_1
      ImageIndex = 0
      OnClick = btn_AddGroupClick
    end
    object btn_AddMat: TdxBarButton
      Caption = #1053#1086#1074#1099#1081' '#1084#1072#1090#1077#1088#1080#1072#1083
      Category = 0
      Hint = #1053#1086#1074#1099#1081' '#1084#1072#1090#1077#1088#1080#1072#1083
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_AddMatClick
    end
    object btn_EditGroup: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1075#1088#1091#1087#1087#1091
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1075#1088#1091#1087#1087#1091
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EditGroupClick
    end
    object btn_DelGroup: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_DelGroupClick
    end
    object btn_EditMat: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EditMatClick
    end
    object btn_DelMat: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083
      Visible = ivNever
      ImageIndex = 2
      OnClick = btn_DelMatClick
    end
    object btn_Root: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      Visible = ivAlways
      OnClick = btn_RootClick
    end
    object btn_Owner: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1076#1075#1088#1091#1087#1087#1091
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1076#1075#1088#1091#1087#1087#1091
      Visible = ivAlways
      OnClick = btn_OwnerClick
    end
    object btn_xls: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = btn_xlsClick
    end
  end
  object ds_CLASSMAT: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT cm.CODE, '
      '       cm.OWN, '
      '       cm.NAME, '
      '       cm.FULLNAME, '
      '       cm.ISGROUP, '
      '       cm.ISNAME,'
      '       cm.ED'
      'FROM CLASSMAT cm'
      'where cm.ISGROUP = 1')
    AfterOpen = ds_CLASSMATAfterOpen
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 64
    Top = 144
  end
  object src_CLASSMAT: TDataSource
    DataSet = ds_CLASSMAT
    Left = 93
    Top = 144
  end
  object ds_CLASSMAT1: TpFIBDataSet
    UpdateRecordTypes = [cusUnmodified, cusModified, cusInserted, cusDeleted]
    SelectSQL.Strings = (
      'SELECT cm.CODE,'
      '       cm.OWN, '
      '       cm.NAME, '
      '       cm.FULLNAME, '
      '       cm.ISGROUP, '
      '       cm.ISNAME, cm.ED'
      'FROM CLASSMAT cm'
      'where cm.ISGROUP = 0 and cm.OWN= :mas_code')
    AfterOpen = ds_CLASSMAT1AfterOpen
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_CLASSMAT
    Left = 368
    Top = 136
    dcForceOpen = True
  end
  object src_CLASSMAT1: TDataSource
    DataSet = ds_CLASSMAT1
    Left = 400
    Top = 136
  end
  object ppm_1: TdxBarPopupMenu
    BarManager = bar_1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn_Root'
      end
      item
        Visible = True
        ItemName = 'btn_Owner'
      end>
    UseOwnFont = False
    Left = 112
    Top = 248
  end
  object pm1: TPopupMenu
    Images = cmDb.iml1
    Left = 96
    Top = 288
    object N1: TMenuItem
      Caption = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100
      ImageIndex = 17
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 8
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ImageIndex = 12
    end
  end
end
