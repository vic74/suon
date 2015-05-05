object EditRepForm: TEditRepForm
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1086#1090#1095#1077#1090#1086#1074
  ClientHeight = 642
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Ribbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 751
    Height = 24
    BarManager = MainForm.bm1
    ColorSchemeName = 'Office2010Blue'
    ShowTabGroups = False
    ShowTabHeaders = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object Ribbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Ribbon1Tab1'
      Groups = <>
      Index = 0
    end
  end
  object lcntr1: TdxLayoutControl
    Left = 0
    Top = 24
    Width = 751
    Height = 618
    Align = alClient
    TabOrder = 1
    TabStop = False
    LayoutLookAndFeel = LCxSkin1
    object grd1: TcxGrid
      Left = 10
      Top = 28
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellClick = v1CellClick
        DataController.DataSource = src1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 132
        end
        object clv1srvName: TcxGridDBColumn
          DataBinding.FieldName = 'srvName'
          Visible = False
          VisibleForCustomization = False
          Width = 136
        end
        object clv1SRV: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1081
          DataBinding.FieldName = 'SRV'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'Srv'
          Properties.ListColumns = <
            item
              MinWidth = 0
              Width = 1
              FieldName = 'Srv'
            end
            item
              Width = 66
              FieldName = 'NAME'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src2
          Width = 146
        end
        object clv1COLUMNS: TcxGridDBColumn
          DataBinding.FieldName = 'COLUMNS'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SCRIPT: TcxGridDBColumn
          DataBinding.FieldName = 'SCRIPT'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object lst1: TcxTreeList
      Left = 10000
      Top = 10000
      Width = 250
      Height = 150
      Bands = <>
      TabOrder = 11
      Visible = False
    end
    object grd3: TcxGrid
      Left = 323
      Top = 281
      Width = 250
      Height = 200
      TabOrder = 4
      object vb_Simpe: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnHorzSizing = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.BandMoving = False
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.GroupByBox = False
        OnColumnHeaderClick = vb_SimpeColumnHeaderClick
        Bands = <
          item
          end>
        OnBandPosChanged = vb_SimpeBandPosChanged
      end
      object l3: TcxGridLevel
        GridView = vb_Simpe
      end
    end
    object tv1: TdxTreeView
      Left = 314
      Top = 64
      Width = 121
      Height = 93
      ShowNodeHint = True
      OnCustomDrawItem = tv1CustomDrawItem
      ReadOnly = True
      DragMode = dmAutomatic
      Indent = 19
      OnEdited = tv1Edited
      OnChange = tv1Change
      ParentColor = False
      SelectedIndex = -1
      TabOrder = 2
      OnClick = tv1Click
      OnMouseDown = tv1MouseDown
      Images = il1
    end
    object doc_tree: TdxBarDockControl
      Left = 313
      Top = 28
      Width = 130
      Height = 29
      Align = dalTop
      BarManager = bm1
    end
    object btn_groop: TcxButtonEdit
      Left = 10000
      Top = 10000
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btn_groopPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 6
      Visible = False
      Width = 121
    end
    object btn_Field: TcxButtonEdit
      Left = 10000
      Top = 10000
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btn_FieldPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 7
      Visible = False
      Width = 121
    end
    object grd4: TcxVerticalGrid
      Left = 524
      Top = 28
      Width = 150
      Height = 200
      TabOrder = 3
      OnEdited = grd4Edited
      Version = 1
      object row_Name: TcxEditorRow
        Properties.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object row_Caption: TcxEditorRow
        Properties.Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object row_Width: TcxEditorRow
        Properties.Caption = #1064#1080#1088#1080#1085#1072
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object row_FieldType: TcxEditorRow
        Properties.Caption = #1058#1080#1087' '#1089#1090#1086#1083#1073#1094#1072
        Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.Items.Strings = (
          'dtGroup'
          'dtString'
          'dtNumeric')
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object row_Shablon: TcxEditorRow
        Properties.Caption = #1060#1086#1088#1084#1072#1090
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
    end
    object mmo1: TMemo
      Left = 10000
      Top = 10000
      Width = 185
      Height = 85
      BorderStyle = bsNone
      Lines.Strings = (
        'mmo1')
      ScrollBars = ssBoth
      TabOrder = 5
      Visible = False
    end
    object grp_root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object grp_tree: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        object Item_grd1: TdxLayoutItem
          AlignVert = avClient
          CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1086#1090#1095#1077#1090#1086#1074
          CaptionOptions.Layout = clTop
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = True
          SizeOptions.Width = 281
          Control = grd1
          ControlOptions.ShowBorder = False
        end
      end
      object splt1: TdxLayoutSplitterItem
        CaptionOptions.Text = 'Splitter'
        LayoutLookAndFeel = LCxSkin2
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = True
        SizeOptions.SizableVert = True
        SizeOptions.Width = 10
      end
      object grp3: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        object grp2: TdxLayoutGroup
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object grp_doc: TdxLayoutGroup
            AlignHorz = ahClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            object Item1_tree: TdxLayoutItem
              CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1087#1086#1083#1077#1081
              CaptionOptions.Layout = clTop
              Control = doc_tree
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object Itmlcntr1Item1: TdxLayoutItem
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'dxTreeView1'
              CaptionOptions.Visible = False
              CaptionOptions.Layout = clTop
              Control = tv1
            end
          end
          object splt2: TdxLayoutSplitterItem
            CaptionOptions.Text = 'Splitter'
            LayoutLookAndFeel = LCxSkin2
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = True
            SizeOptions.SizableVert = True
            SizeOptions.Width = 10
          end
          object Item_grd4: TdxLayoutItem
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1087#1086#1083#1077#1081
            CaptionOptions.Layout = clTop
            Control = grd4
            ControlOptions.ShowBorder = False
          end
        end
        object splt3: TdxLayoutSplitterItem
          CaptionOptions.Text = 'Splitter'
          LayoutLookAndFeel = LCxSkin2
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = False
          SizeOptions.SizableVert = True
          SizeOptions.Height = 10
        end
        object grp4: TdxLayoutGroup
          AlignHorz = ahClient
          CaptionOptions.Text = #1042#1080#1076' '#1086#1090#1095#1077#1090#1072
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = True
          SizeOptions.Height = 128
          ButtonOptions.Buttons = <>
          ButtonOptions.ShowExpandButton = True
          object Item_grd3: TdxLayoutItem
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGrid1'
            CaptionOptions.Visible = False
            Control = grd3
            ControlOptions.ShowBorder = False
          end
        end
        object splt4: TdxLayoutSplitterItem
          CaptionOptions.Text = 'Splitter'
          LayoutLookAndFeel = LCxSkin2
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = False
          SizeOptions.SizableVert = True
          SizeOptions.Height = 10
        end
        object grp5: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'New Group'
          ButtonOptions.Buttons = <>
        end
      end
    end
    object Item_lst1: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1087#1086#1083#1077#1081
      CaptionOptions.Layout = clTop
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 257
      SizeOptions.Width = 237
      Control = lst1
      ControlOptions.ShowBorder = False
    end
    object grp_btn: TdxLayoutGroup
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object Item1_btngroop: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
        CaptionOptions.Layout = clTop
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = True
        SizeOptions.SizableVert = True
        SizeOptions.Width = 150
        Control = btn_groop
        ControlOptions.ShowBorder = False
      end
      object Item_btnField: TdxLayoutItem
        CaptionOptions.Text = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1083#1077
        CaptionOptions.Layout = clTop
        SizeOptions.AssignedValues = [sovSizableHorz]
        SizeOptions.SizableHorz = True
        SizeOptions.Width = 142
        Control = btn_Field
        ControlOptions.ShowBorder = False
      end
    end
    object Itmlcntr1Item11: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Memo1'
      Control = mmo1
    end
  end
  object LSkin1: TdxLayoutLookAndFeelList
    Left = 104
    object LCxSkin1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
    object LCxSkin2: TdxLayoutCxLookAndFeel
      GroupOptions.Color = clSilver
      ItemOptions.CaptionOptions.HotTrack = True
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width'
          'WindowState')
      end
      item
        Component = grp2
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = grp3
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = grp4
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = grp5
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = Item_grd1
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = Item_grd3
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = Item_lst1
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = v1
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.GroupByBox')
      end
      item
        Component = vb_Simpe
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.GroupByBox')
      end>
    StorageName = 'prop1'
    Left = 136
  end
  object db1: TpFIBDatabase
    DBName = '127.0.0.1:D:\base\DEZ.FDB'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'lc_ctype=win1251'
      'password=masterkey')
    SQLDialect = 3
    Timeout = 0
    AliasName = 'DEZ'
    WaitForRestoreConnect = 0
    Left = 288
    Top = 200
  end
  object trn1: TpFIBTransaction
    DefaultDatabase = db1
    TimeoutAction = TARollback
    Left = 320
    Top = 200
  end
  object ds_shablon: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PLANREPORT'
      'SET '
      '    NAME = :NAME,'
      '    SRV = :SRV,'
      '    COLUMNS = :COLUMNS,'
      '    SCRIPT = :SCRIPT'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    PLANREPORT'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO PLANREPORT('
      '    CODE,'
      '    NAME,'
      '    SRV,'
      '    COLUMNS,'
      '    SCRIPT'
      ')'
      'VALUES('
      '    :CODE,'
      '    :NAME,'
      '    :SRV,'
      '    :COLUMNS,'
      '    :SCRIPT'
      ')')
    RefreshSQL.Strings = (
      'select p.CODE, p.NAME, p.SRV,s.name srvName, p.COLUMNS, p.SCRIPT'
      'from PLANREPORT p'
      'left outer join srvlist s on p.srv=s.srv'
      ' WHERE '
      '        P.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'select p.CODE, p.NAME, p.SRV,s.name srvName, p.COLUMNS, p.SCRIPT'
      'from PLANREPORT p'
      'left outer join srvlist s on p.srv=s.srv')
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    AutoCommit = True
    Left = 96
    Top = 144
  end
  object src1: TDataSource
    DataSet = ds_shablon
    OnDataChange = src1DataChange
    Left = 126
    Top = 144
  end
  object ds_srv: TpFIBDataSet
    SelectSQL.Strings = (
      ' select SRV, NAME from SRVLIST')
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    Left = 192
    Top = 120
  end
  object src2: TDataSource
    DataSet = ds_srv
    Left = 168
    Top = 120
  end
  object bm1: TdxBarManager
    AllowReset = False
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
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 184
    Top = 208
    DockControlHeights = (
      0
      0
      0
      0)
    object bar_tree: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'treeView'
      CaptionButtons = <>
      DockControl = doc_tree
      DockedDockControl = doc_tree
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 777
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_add'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_add: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = ppm1
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FFC96602FFC96602FFCA6805FF9B3A0CFFE1CDB3FFE59A4AFFDB89
        31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FFC96602FFC96602FFC96602FF9B3A0CFFE1CDB3FFE59A4AFFDB89
        31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FFC96602FFC96602FFC96602FF9B3A0CFFE1CDB3FFE59A4AFFDB89
        31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF000000002E8422FF2E8422FF00000000000000009B3A0CFF9B3A
        0CFF9B3A0CFF9B3A0CFF9B3A0CFF000000000000000000000000000000000000
        000000000000000000002E8422FF2E8422FF00000000000000009B3A0CFFE1CD
        B3FFE59A4AFFDB8931FF9B3A0CFF000000000000000000000000000000000000
        00002E8422FF2F8828FF308A2CFF308A2CFF2E8725FF2E8422FF9B390BFF9B3A
        0CFF9B3A0CFF9B3A0CFF9B3A0CFF000000000000000000000000000000000000
        00002E8422FF2F8828FF328A2FFF328A2FFF2E8422FF2E8422FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000308A2CFF308A2CFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002E8422FF2E8422FF0000000000000000}
    end
    object btn_AddAfter: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1089#1083#1077' '#1074#1099#1076#1077#1083#1077#1085#1086#1075#1086
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1089#1083#1077' '#1074#1099#1076#1077#1083#1077#1085#1086#1075#1086
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FFC96602FFC96602FFCA6805FF9B3A0CFFE1CDB3FFE59A4AFFDB89
        31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FFC96602FFC96602FFC96602FF9B3A0CFFE1CDB3FFE59A4AFFDB89
        31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FFC96602FFC96602FFC96602FF9B3A0CFFE1CDB3FFE59A4AFFDB89
        31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF000000002E8422FF2E8422FF00000000000000009B3A0CFF9B3A
        0CFF9B3A0CFF9B3A0CFF9B3A0CFF000000000000000000000000000000000000
        000000000000000000002E8422FF2E8422FF00000000000000009B3A0CFFE1CD
        B3FFE59A4AFFDB8931FF9B3A0CFF000000000000000000000000000000000000
        00002E8422FF2F8828FF308A2CFF308A2CFF2E8725FF2E8422FF9B390BFF9B3A
        0CFF9B3A0CFF9B3A0CFF9B3A0CFF000000000000000000000000000000000000
        00002E8422FF2F8828FF328A2FFF328A2FFF2E8422FF2E8422FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000308A2CFF308A2CFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002E8422FF2E8422FF0000000000000000}
    end
    object btn_AddBefore: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1077#1088#1077#1076' '#1074#1099#1076#1077#1083#1077#1085#1099#1084
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1077#1088#1077#1076' '#1074#1099#1076#1077#1083#1077#1085#1099#1084
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FFC96602FFC96602FFCA6805FF9B3A0CFFE1CDB3FFE59A4AFFDB89
        31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FFC96602FFC96602FFC96602FF9B3A0CFFE1CDB3FFE59A4AFFDB89
        31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FFC96602FFC96602FFC96602FF9B3A0CFFE1CDB3FFE59A4AFFDB89
        31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF000000002E8422FF2E8422FF00000000000000009B3A0CFF9B3A
        0CFF9B3A0CFF9B3A0CFF9B3A0CFF000000000000000000000000000000000000
        000000000000000000002E8422FF2E8422FF00000000000000009B3A0CFFE1CD
        B3FFE59A4AFFDB8931FF9B3A0CFF000000000000000000000000000000000000
        00002E8422FF2F8828FF308A2CFF308A2CFF2E8725FF2E8422FF9B390BFF9B3A
        0CFF9B3A0CFF9B3A0CFF9B3A0CFF000000000000000000000000000000000000
        00002E8422FF2F8828FF328A2FFF328A2FFF2E8422FF2E8422FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000308A2CFF308A2CFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002E8422FF2E8422FF0000000000000000}
      OnClick = btn_AddBeforeClick
    end
    object btn_AddChild: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FFC96602FFC96602FFCA6805FF9B3A0CFFE1CDB3FFE59A4AFFDB89
        31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FFC96602FFC96602FFC96602FF9B3A0CFFE1CDB3FFE59A4AFFDB89
        31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FFC96602FFC96602FFC96602FF9B3A0CFFE1CDB3FFE59A4AFFDB89
        31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF000000002E8422FF2E8422FF00000000000000009B3A0CFF9B3A
        0CFF9B3A0CFF9B3A0CFF9B3A0CFF000000000000000000000000000000000000
        000000000000000000002E8422FF2E8422FF00000000000000009B3A0CFFE1CD
        B3FFE59A4AFFDB8931FF9B3A0CFF000000000000000000000000000000000000
        00002E8422FF2F8828FF308A2CFF308A2CFF2E8725FF2E8422FF9B390BFF9B3A
        0CFF9B3A0CFF9B3A0CFF9B3A0CFF000000000000000000000000000000000000
        00002E8422FF2F8828FF328A2FFF328A2FFF2E8422FF2E8422FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000308A2CFF308A2CFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002E8422FF2E8422FF0000000000000000}
      OnClick = btn_AddChildClick
    end
    object btn_AddRoot: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1086#1083#1073#1077#1094
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1086#1083#1073#1077#1094
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FFC96602FFC96602FFCA6805FF9B3A0CFFE1CDB3FFE59A4AFFDB89
        31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FFC96602FFC96602FFC96602FF9B3A0CFFE1CDB3FFE59A4AFFDB89
        31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B3A0CFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FFC96602FFC96602FFC96602FF9B3A0CFFE1CDB3FFE59A4AFFDB89
        31FF9B3A0CFF0000000000000000000000000000000000000000000000000000
        0000C96602FF0000000000000000000000009B390BFF9B3A0CFF9B3A0CFF9B3A
        0CFF9B3A0CFF000000002E8422FF2E8422FF00000000000000009B3A0CFF9B3A
        0CFF9B3A0CFF9B3A0CFF9B3A0CFF000000000000000000000000000000000000
        000000000000000000002E8422FF2E8422FF00000000000000009B3A0CFFE1CD
        B3FFE59A4AFFDB8931FF9B3A0CFF000000000000000000000000000000000000
        00002E8422FF2F8828FF308A2CFF308A2CFF2E8725FF2E8422FF9B390BFF9B3A
        0CFF9B3A0CFF9B3A0CFF9B3A0CFF000000000000000000000000000000000000
        00002E8422FF2F8828FF328A2FFF328A2FFF2E8422FF2E8422FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000308A2CFF308A2CFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002E8422FF2E8422FF0000000000000000}
      OnClick = btn_AddRootClick
    end
    object btn_delete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1091#1079#1077#1083
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1091#1079#1077#1083
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000090C1B231C275F7D3047A3DB334DB4F32E47B3F32843
        9EDB15255A7D050A192300000000000000000000000000000000000000000000
        000000000000171D41533C4DB3E63C52CCFF757AE8FF8F92EEFF8F92EEFF7178
        E4FF334DC1FF2743A5E60D183B53000000000000000000000000000000000000
        0000191D43534655C2F45C65E0FFA1A6F5FF7E86EFFF5B63E9FF595DE7FF7D84
        EEFF9EA0F4FF515DD7FF2947AFF40D183B530000000000000000000000000B0D
        1C224B57BAE5616BE3FFA1ACF5FF545FECFF505CEAFF4D59E9FF4E59E6FF4C56
        E6FF5056E6FF9EA2F4FF5460D6FF2642A5E5050A182200000000000000002B2F
        697E4B56DBFFA2ABF6FF5664F0FF5266EEFF4D59E9FF4D59E9FF4D59E9FF4D59
        E9FF4C58E6FF525AE6FF9FA3F5FF3450C4FF15255B7E00000000000000004F54
        B9DB818CEEFF7E91F7FF5D73F3FF4D59E9FF4D59E9FF4D59E9FF4D59E9FF4D59
        E9FF4D59E9FF4F5BE9FF7B83F0FF757BE2FF2840A0DB00000000000000005C60
        D2F6A1ABF7FF7086F8FF6882F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF4D59E9FF5C66EAFF969CF1FF304DB5F600000000000000006065
        D3F6AFB9F9FF7F93FAFF7085F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF4D59E9FF5E6AEEFF969DF1FF344CB7F60000000000000000585B
        BFDBA5AFF5FF9DABFAFF778CF0FF545FECFF545FECFF545FECFF545FECFF545F
        ECFF545FECFF6377F2FF818EF4FF787FE9FF3247A5DB00000000000000003434
        6F7E7D83EAFFCDD4FCFF8B9DFAFF7E93F7FF758AEEFF6C84F6FF6C84F6FF6C84
        F6FF6C84F6FF6379F3FFA4AFF8FF3E4FD0FF1F2A607E00000000000000000E0E
        1E225F5EC9E5A3A7F3FFD4DBFDFF879AFAFF7F91F0FF7A8EF1FF7F94F8FF7E92
        F9FF768CF8FFA8B6F8FF636EE3FF3E4EB3E5090B1A2200000000000000000000
        000023234A536564D6F4AAADF2FFD8DCFDFFAEBAFAFF91A3FAFF8B9DFAFF9CA9
        FBFFBAC7FCFF707BE9FF4957C3F4171D42530000000000000000000000000000
        00000000000023234A536060C9E68E93EDFFBEC3F8FFCCD3F9FFC4CBF9FFAAB4
        F4FF6670E2FF4B55BDE61A1E4353000000000000000000000000000000000000
        000000000000000000000F0F1F2334346E7D595BBEDB5E5FD2F35C5FD0F35055
        BADB2D31697D0C0D1D2300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btn_deleteClick
    end
  end
  object ppm1: TdxBarPopupMenu
    BarManager = bm1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn_AddChild'
      end
      item
        Visible = True
        ItemName = 'btn_AddRoot'
      end
      item
        Visible = True
        ItemName = 'btn_delete'
      end>
    UseOwnFont = False
    Left = 312
    Top = 120
  end
  object il1: TcxImageList
    FormatVersion = 1
    DesignInfo = 9961840
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003580
          3CFF307935FF2B7130FF266B2AFF000000000000000000000000704B36A9C38E
          68FFC08B66FFBE8864FFBB8561FFB9835FFFB47E5CFFB27C5AFFB17B58FF3D8B
          44FF81C587FF7CC282FF2C7432FFA97151FF704B36A900000000C8926CFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4596
          4DFF88C990FF82C68AFF448D4AFFD1E1D2FFA97251FF00000000CA946EFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFFFDFFFEFEFDFFFEFEFCFF84C58AFF57AB61FF6AB4
          73FF90CE97FF8ACB91FF6AB070FF3B8442FF52773DFF00000000CC976FFFFFFF
          FFFFFFFFFCFFFFFFFDFFFEFEFCFFFEFEFCFFFEFEFBFFF9FBF7FF70BD78FF71BC
          7BFF96D29FFF91CF99FF61AA69FF5A9C60FFA97553FF00000000D19C73FFFFFF
          FFFFFEFEFCFFFEFEFCFFFEFEFCFFFDFDFBFFFDFDFBFFFDFDFAFFFDFDF8FF78C1
          80FF73BE7CFF6EB978FF6CAF71FFFFFFFFFFB07A58FF00000000D49E75FFFFFF
          FFFFFEFEFCFFFDFDFBFFFDFDFCFFFDFDFBFFFDFDF9FFFCFCF8FFFBF9F7FFFBF9
          F5FF7EC485FF7DC083FFFBF5F2FFFFFFFFFFB27C5AFF00000000D5A076FFFFFF
          FFFFFDFDFCFFFDFDFBFFFDFDFAFFFCFCF9FFFCFBF7FFFBF9F5FFFBF8F4FFFBF7
          F3FFFBF5F2FFFAF3EFFFF8F2ECFFFFFFFFFFB57E5CFF00000000D8A279FFFFFF
          FFFFFDFDFAFFFCFCFAFFFCFBF9FFFBFAF6FFFBF8F5FFFBF7F4FFFBF6F1FFF8F4
          EEFFF7F2EBFFF7F0EAFFF6ECE8FFFFFFFFFFB7815EFF00000000D9A379FFFFFF
          FFFFFCFBF9FFFCFBF8FFFBF9F7FFFBF7F4FFFAF7F2FFF9F5F0FFF7F3EDFFF6EF
          EAFFF5EBE7FFF3EAE4FFF2E7DEFFFFFFFFFFBA8560FF00000000DBA47AFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8763FF00000000DCA77BFFDCA7
          7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
          7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFC08B66FF00000000DBAB84FDE8B9
          92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
          92FFE8B992FFE8B992FFE8B992FFE8B992FFBF8F6EFD00000000472F226BD3A9
          87F4DCA77BFFDCA67AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A
          72FFCE9970FFCB966FFFC9946CFFBC9375F4472F226B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000007820F5037B1EFF00100321000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000017E29F543A15FFF006E1CE4001304270000000000000000704B36A9C38E
          68FFC08B66FFBE8864FFBB8561FFB9835FFF229751FF1C9149FF168F43FF108B
          3BFF3A9F5EFF80C196FF46A362FF107C24FF5D5331B700000000C8926CFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF299B5BFF90CAA9FF8DC8A5FF8AC6
          A1FF88C59EFF6AB685FF82C297FF48A566FF0E7C25FF00170530CA946EFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFFFDFFFEFEFDFF319F63FF94CDADFF6FBA8EFF6BB8
          89FF66B685FF61B380FF67B582FF83C298FF3CA05CFF007E25FCCC976FFFFFFF
          FFFFFFFFFCFFFFFFFDFFFEFEFCFFFEFEFCFF37A36BFF96CEB0FF94CDADFF91CB
          AAFF90CBA8FF74BC90FF8AC7A1FF46A568FF088735FF0008030FD19C73FFFFFF
          FFFFFEFEFCFFFEFEFCFFFEFEFCFFFDFDFBFF3DA56FFF39A46EFF35A268FF319E
          62FF55AF7CFF91CBAAFF4FAB74FF199046FFA97B57FF00000000D49E75FFFFFF
          FFFFFEFEFCFFFDFDFBFFFDFDFCFFFDFDFBFFFDFDF9FFFCFCF8FFFBF9F7FFFBF9
          F5FF39A269FF5AB381FF289857FFF7FBF9FFB27C5AFF00000000D5A076FFFFFF
          FFFFFDFDFCFFFDFDFBFFFDFDFAFFFCFCF9FFFCFBF7FFFBF9F5FFFBF8F4FFFBF7
          F3FF3FA670FF319F65FFF1EFE7FFFFFFFFFFB57E5CFF00000000D8A279FFFFFF
          FFFFFDFDFAFFFCFCFAFFFCFBF9FFFBFAF6FFFBF8F5FFFBF7F4FFFBF6F1FFF8F4
          EEFFF7F2EBFFF7F0EAFFF6ECE8FFFFFFFFFFB7815EFF00000000D9A379FFFFFF
          FFFFFCFBF9FFFCFBF8FFFBF9F7FFFBF7F4FFFAF7F2FFF9F5F0FFF7F3EDFFF6EF
          EAFFF5EBE7FFF3EAE4FFF2E7DEFFFFFFFFFFBA8560FF00000000DBA47AFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8763FF00000000DCA77BFFDCA7
          7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
          7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFC08B66FF00000000DBAB84FDE8B9
          92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
          92FFE8B992FFE8B992FFE8B992FFE8B992FFBF8F6EFD00000000472F226BD3A9
          87F4DCA77BFFDCA67AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A
          72FFCE9970FFCB966FFFC9946CFFBC9375F4472F226B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object ppm2: TcxGridPopupMenu
    Grid = grd3
    PopupMenus = <
      item
        HitTypes = []
        Index = 0
      end>
    AlwaysFireOnPopup = True
    Left = 576
    Top = 192
  end
end
