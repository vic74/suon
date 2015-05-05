object FinPlanSpecForm: TFinPlanSpecForm
  Left = 0
  Top = 0
  Caption = #1041#1044#1056'2 ('#1087#1083#1072#1085'-'#1092#1072#1082#1090')'
  ClientHeight = 652
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 813
    Height = 652
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object doc1: TdxBarDockControl
      Left = 32
      Top = 78
      Width = 527
      Height = 29
      Align = dalTop
      BarManager = BarM
    end
    object doc2: TdxBarDockControl
      Left = 612
      Top = 78
      Width = 165
      Height = 29
      Align = dalTop
      BarManager = BarM
    end
    object grd1: TcxGrid
      Left = 32
      Top = 113
      Width = 527
      Height = 121
      TabOrder = 1
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnEditing = v1Editing
        DataController.DataSource = src_FinPlan
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnDataChanged = v1DataControllerDataChanged
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Appending = True
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clCODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
          Width = 64
        end
        object clv1SRVDOG: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'SRVDOG'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.DropDownSizeable = True
          Properties.FocusPopup = True
          Properties.ImmediatePost = True
          Properties.View = cmDb.v_FinPlanLookUp
          Properties.KeyFieldNames = 'CODE'
          Properties.ListFieldItem = cmDb.cl_NOMER
          Properties.OnEditValueChanged = clv1SRVDOGPropertiesEditValueChanged
          Width = 163
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'NOMER'
          Visible = False
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'NAME'
          Options.Editing = False
          Styles.Content = cmDb.stl_ReadOnly
          Styles.Header = cmDb.stl_ReadOnly
          Width = 169
        end
        object clvFinPlanSrv: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'FINPLANSRV'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_FinPlanSrv
          Width = 78
        end
        object clv1D1: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
          DataBinding.FieldName = 'D1'
          Options.Editing = False
          Styles.Content = cmDb.stl_ReadOnly
          Styles.Header = cmDb.stl_ReadOnly
          Width = 89
        end
        object clv1D2: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
          DataBinding.FieldName = 'D2'
          Options.Editing = False
          Styles.Content = cmDb.stl_ReadOnly
          Styles.Header = cmDb.stl_ReadOnly
          Width = 97
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 612
      Top = 113
      Width = 165
      Height = 121
      TabOrder = 3
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_FINPLANDATE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Appending = True
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv2FINPLAN: TcxGridDBColumn
          DataBinding.FieldName = 'FINPLAN'
          Visible = False
        end
        object clv2DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediateDropDownWhenKeyPressed = True
          Properties.ImmediatePost = True
          Properties.OnEditValueChanged = clv2DATAPropertiesEditValueChanged
          Width = 143
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 22
      Top = 300
      Width = 750
      Height = 181
      TabOrder = 5
      object v3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_FINPLANSPEC
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###.00'
            Kind = skSum
            Column = clv3SUMMA
          end
          item
            Format = '#,###.00'
            Kind = skSum
            Column = clvSUMMA1
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv3CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
        end
        object clv3FINPLANDATE: TcxGridDBColumn
          DataBinding.FieldName = 'FINPLANDATE'
          Visible = False
          VisibleForCustomization = False
          Width = 112
        end
        object clv3FINPLANSTATE: TcxGridDBColumn
          DataBinding.FieldName = 'FINPLANSTATE'
          Visible = False
          VisibleForCustomization = False
          Width = 131
        end
        object clv3FSCODE: TcxGridDBColumn
          DataBinding.FieldName = 'FSCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3NAME: TcxGridDBColumn
          Caption = #1057#1090#1072#1090#1100#1103' '#1088#1072#1089#1093#1086#1076#1072
          DataBinding.FieldName = 'NAME'
          Options.Editing = False
          Width = 405
        end
        object clv3SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          Properties.OnEditValueChanged = clv3SUMMAPropertiesEditValueChanged
          Width = 100
        end
        object clvSUMMA1: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1076#1083#1103' '#1041#1044#1056
          DataBinding.FieldName = 'SUMMA1'
          FooterAlignmentHorz = taRightJustify
          Width = 100
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object doc3: TdxBarDockControl
      Left = 22
      Top = 265
      Width = 750
      Height = 29
      Align = dalTop
      BarManager = BarM
    end
    object grd4: TcxGrid
      Left = 10000
      Top = 10000
      Width = 751
      Height = 140
      TabOrder = 10
      Visible = False
      object v4: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_FinPlanParam
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###.00'
            Kind = skSum
            Column = clv4_PLAN_SUM
          end
          item
            Format = '#,###.00'
            Kind = skSum
            Column = cl44_FACT_SUM
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv4NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
          DataBinding.FieldName = 'NAME'
          Options.Editing = False
          Options.Grouping = False
          Options.Moving = False
          Width = 296
        end
        object clv4_PLAN_SUM: TcxGridDBColumn
          Caption = #1055#1083#1072#1085
          DataBinding.FieldName = 'PLAN_SUM'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          Properties.OnEditValueChanged = clv4_PLAN_SUMPropertiesEditValueChanged
          Width = 107
        end
        object cl44_FACT_SUM: TcxGridDBColumn
          Caption = #1060#1072#1082#1090
          DataBinding.FieldName = 'FACT_SUM'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.OnEditValueChanged = cl44_FACT_SUMPropertiesEditValueChanged
          Width = 109
        end
        object clv4FSCODE: TcxGridDBColumn
          DataBinding.FieldName = 'FSCODE'
          Visible = False
        end
        object clv4CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv4FINPLANPARAM: TcxGridDBColumn
          DataBinding.FieldName = 'FINPLANPARAM'
          Visible = False
        end
        object clv4FINPLANDATE: TcxGridDBColumn
          DataBinding.FieldName = 'FINPLANDATE'
          Visible = False
        end
      end
      object l4: TcxGridLevel
        GridView = v4
      end
    end
    object Doc4: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 660
      Height = 29
      Align = dalTop
      BarManager = BarM
      Visible = False
    end
    object sqGrid: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 7
      Visible = False
      object sqGridView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_SQ
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0,000.00'
            Kind = skSum
            Column = sqGridViewColumn5
          end
          item
            Format = '0,000.00'
            Kind = skSum
            Column = sqGridViewColumn6
          end
          item
            Format = '0,000.00'
            Kind = skSum
            Column = sqGridViewColumn7
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object sqGridViewColumn1: TcxGridDBColumn
          Caption = #1050'.'#1091#1083'.'
          DataBinding.FieldName = 'Street'
          Width = 54
        end
        object sqGridViewColumn2: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'StreetName'
          Width = 104
        end
        object sqGridViewColumn3: TcxGridDBColumn
          Caption = #1050'.'#1076#1086#1084
          DataBinding.FieldName = 'House'
          Width = 54
        end
        object sqGridViewColumn4: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088
          DataBinding.FieldName = 'Nomer'
          Width = 58
        end
        object sqGridViewColumn5: TcxGridDBColumn
          Caption = #1055#1083#1072#1085
          DataBinding.FieldName = 'PlanSQ'
          Width = 71
        end
        object sqGridViewColumn6: TcxGridDBColumn
          Caption = #1060#1072#1082#1090
          DataBinding.FieldName = 'FactSQ'
          Width = 75
        end
        object sqGridViewColumn7: TcxGridDBColumn
          Caption = #1056#1072#1079#1085#1080#1094#1072
          DataBinding.FieldName = 'Razn'
          Width = 76
        end
      end
      object sqGridLevel: TcxGridLevel
        GridView = sqGridView
      end
    end
    object Memo: TcxMemo
      Left = 10
      Top = 542
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 8
      Height = 75
      Width = 778
    end
    object ProgressBar: TcxProgressBar
      Left = 10
      Top = 623
      TabOrder = 9
      Width = 778
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lc1Group6
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 200
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1057#1090#1072#1090#1100#1080' '#1088#1072#1089#1093#1086#1076#1086#1074
      Parent = lc1Group10
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lc1Group3: TdxLayoutGroup
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076#1099
      Parent = lc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 185
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object lc1SplitterItem1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = lc1Group6
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      SizeOptions.Height = 4
      Index = 1
    end
    object lc1SplitterItem2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = lc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object lc1Group4: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1060#1080#1085#1055#1083#1072#1085
      Parent = lc1Group1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lc1Group4
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lc1Item2: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lc1Group3
      Control = doc2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litmlc1Item3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lc1Group4
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lc1Group3
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group5
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litmlc1Item31: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group5
      Control = doc3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lGrplc1Group5: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = lc1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lc1Group5: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object lc1Group6: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1060#1080#1085'. '#1087#1083#1072#1085#1099
      Parent = lc1Group5
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lc1Group7: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1050#1086#1085#1090#1088#1086#1083#1100' '#1087#1083#1086#1097#1072#1076#1077#1081
      Parent = lc1Group5
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lc1Group8: TdxLayoutGroup
      CaptionOptions.Text = #1041#1044#1056' ('#1092#1072#1082#1090')'
      Parent = lc1Group5
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object lc1Group9: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = #1057#1086#1086#1073#1097#1077#1085#1080#1103
      Parent = grp1
      SizeOptions.Height = 100
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object lc1SplitterItem3: TdxLayoutSplitterItem
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      SizeOptions.Height = 4
      Index = 1
    end
    object lc1Group10: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lc1Group6
      SizeOptions.Height = 300
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object lc1Group11: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1041#1044#1056
      CaptionOptions.Visible = False
      Visible = False
      ButtonOptions.Buttons = <>
      Padding.AssignedValues = [lpavBottom]
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = -1
    end
    object lc1Item3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lc1Group11
      Visible = False
      Control = grd4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lc1Group12: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lc1Group7
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object Bar4Item: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lc1Group12
      Control = Doc4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lc1Item4: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lc1Group12
      Control = sqGrid
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lc1Item5: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxMemo1'
      CaptionOptions.Visible = False
      Parent = lc1Group9
      Control = Memo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lc1Item7: TdxLayoutItem
      CaptionOptions.Text = 'cxProgressBar1'
      CaptionOptions.Visible = False
      Parent = lc1Group9
      Control = ProgressBar
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 240
    Top = 160
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 176
    Top = 160
  end
  object BarM: TdxBarManager
    AllowReset = False
    AutoDockColor = False
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
    DockColor = clBtnFace
    ImageOptions.Images = cmDb.iml1
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 208
    Top = 160
    DockControlHeights = (
      0
      0
      0
      0)
    object BarMBar1: TdxBar
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
      FloatLeft = 1070
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Delete'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarMBar2: TdxBar
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
      FloatLeft = 1070
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_DATEADD'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_DATEDELETE'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
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
      FloatLeft = 947
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AddSate'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object br4: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockControl = Doc4
      DockedDockControl = Doc4
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 859
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'sqMonth'
        end
        item
          Visible = True
          ItemName = 'sqYear'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
      OneOnRow = True
      Row = 0
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
    object btn_Edit: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Enabled = False
      Hint = 'New Button'
      Visible = ivAlways
    end
    object btn_Delete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      PaintStyle = psCaptionGlyph
      OnClick = btn_DeleteClick
    end
    object btn_DATEADD: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_DATEADDClick
    end
    object dxBarButton5: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object btn_DATEDELETE: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_DATEDELETEClick
    end
    object btn_AddSate: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1090#1072#1090#1100#1102
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1089#1090#1072#1090#1100#1102
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = btn_AddSateClick
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object sqMonth: TcxBarEditItem
      Caption = #1052#1077#1089#1103#1094' '
      Category = 0
      Hint = #1052#1077#1089#1103#1094' '
      Visible = ivAlways
      ShowCaption = True
      Width = 120
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownRows = 12
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_Month
    end
    object sqYear: TcxBarEditItem
      Caption = #1043#1086#1076' '
      Category = 0
      Hint = #1043#1086#1076' '
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxMaskEditProperties'
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
    end
    object dxBarButton3: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
  end
  object ds_FinPlan: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT F.CODE, F.FINPLANSRV,'
      '       F.SRVDOG, S.NOMER, K.NAME, S.D1, S.D2'
      'FROM FINPLAN F'
      'left outer join SRVDOG S on S.CODE = F.SRVDOG'
      'left outer join KONTRAGENT K ON K.CODE = S.KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 56
    Top = 112
  end
  object src_FinPlan: TDataSource
    DataSet = ds_FinPlan
    Left = 96
    Top = 112
  end
  object ds_FINPLANDATE: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, FINPLAN, DATA'
      'from FINPLANDATE'
      'where FINPLAN = :mas_code'
      'order by DATA')
    BeforePost = ds_FINPLANDATEBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_FinPlan
    Left = 648
    Top = 104
    dcForceOpen = True
  end
  object src_FINPLANDATE: TDataSource
    DataSet = ds_FINPLANDATE
    Left = 680
    Top = 104
  end
  object ds_FINPLANSPEC: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT FS.CODE FSCODE,'
      '       FS.NAME, F.CODE,'
      '       F.FINPLANDATE, F.FINPLANSTATE,'
      '       F.SUMMA, F.SUMMA1'
      'FROM FINPLANSTATE FS'
      
        'left outer join FINPLANSPEC F on F.FINPLANSTATE = FS.CODE and f.' +
        'FINPLANDATE = :mas_code'
      'order by FS.NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_FINPLANDATE
    Left = 72
    Top = 344
    dcForceOpen = True
  end
  object src_FINPLANSPEC: TDataSource
    DataSet = ds_FINPLANSPEC
    Left = 120
    Top = 368
  end
  object ds_FinPlanParam: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT FS.CODE FSCODE,'
      '       FS.NAME,'
      '       F.CODE,'
      '       F.FINPLANDATE, F.FINPLANPARAM,'
      '       F.PLAN_SUM,'
      '       F.FACT_SUM'
      'FROM FINPLANPARAM FS'
      
        'left outer join FINPLANPARAMSPEC F on F.FINPLANPARAM = FS.CODE a' +
        'nd f.FINPLANDATE = :mas_code'
      'order by FS.NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_FINPLANDATE
    Left = 160
    Top = 368
    dcForceOpen = True
  end
  object src_FinPlanParam: TDataSource
    DataSet = ds_FinPlanParam
    Left = 216
    Top = 368
  end
  object tbl_Month: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 256
    Top = 96
  end
  object src_Month: TDataSource
    DataSet = tbl_Month
    Left = 288
    Top = 96
  end
  object tbl_SQ: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 352
    Top = 96
  end
  object src_SQ: TDataSource
    DataSet = tbl_SQ
    Left = 384
    Top = 96
  end
  object ds_FinPlanSrv: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from FinPlanSrv')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 56
    Top = 168
  end
  object src_FinPlanSrv: TDataSource
    DataSet = ds_FinPlanSrv
    Left = 96
    Top = 168
  end
end
