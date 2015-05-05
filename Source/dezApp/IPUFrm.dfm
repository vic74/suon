object IPUForm: TIPUForm
  Left = 0
  Top = 0
  Caption = #1059#1089#1083#1091#1075#1080' '#1087#1086' '#1048#1055#1059
  ClientHeight = 636
  ClientWidth = 919
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
    Top = 31
    Width = 919
    Height = 605
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    ExplicitTop = 0
    ExplicitHeight = 636
    object grd1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 2
      Visible = False
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_IPUPRICE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.DragScrolling = False
        OptionsData.Inserting = False
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'CNT'
          Options.Editing = False
          Width = 108
        end
        object clv1SUMA: TcxGridDBColumn
          Caption = #1062#1077#1085#1072
          DataBinding.FieldName = 'SUMA'
          Width = 185
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object clc_CNT: TcxCalcEdit
      Left = 10000
      Top = 10000
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 3
      Visible = False
      Width = 121
    end
    object clc_SUMA: TcxCalcEdit
      Left = 10000
      Top = 10000
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Properties.Nullstring = #1074#1074#1077#1076#1080#1090#1077' '#1094#1077#1085#1091
      Properties.QuickClose = True
      Properties.UseNullString = True
      Properties.UseThousandSeparator = True
      Style.HotTrack = False
      TabOrder = 4
      Visible = False
      Width = 121
    end
    object btn_Add: TcxButton
      Left = 10000
      Top = 10000
      Width = 37
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      TabOrder = 5
      Visible = False
      OnClick = btn_AddClick
    end
    object grd2: TcxGrid
      Left = 22
      Top = 56
      Width = 871
      Height = 523
      TabOrder = 1
      LockedStateImageOptions.Effect = lsieDark
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_IPU
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv2SUMA
          end
          item
            Kind = skSum
            Column = clv2CNT
          end
          item
            Kind = skCount
            Column = clv2SNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.PullFocusing = True
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
        Styles.OnGetContentStyle = v2StylesGetContentStyle
        object clv2A: TcxGridDBColumn
          Caption = #1087#1088#1080#1079#1085#1072#1082' '#1072#1082#1090#1080#1074#1085#1086#1089#1090#1080
          DataBinding.FieldName = 'A'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Options.Editing = False
          Options.ShowCaption = False
          Width = 22
        end
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Options.Editing = False
          Width = 38
        end
        object clv2SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 175
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 50
        end
        object clv2FLAT: TcxGridDBColumn
          Caption = #1082#1074'.'
          DataBinding.FieldName = 'FLAT'
          Options.Editing = False
          Width = 41
        end
        object clv2CNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1048#1055#1059
          DataBinding.FieldName = 'CNT'
          Width = 81
        end
        object clv2DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1087#1083#1086#1084#1073#1080#1088#1086#1074#1082#1080
          DataBinding.FieldName = 'DATA'
          Width = 133
        end
        object clv2SUMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1083#1086#1084#1073#1080#1088'., '#1088#1091#1073'.'
          DataBinding.FieldName = 'SUMA'
          Width = 126
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object doc1: TdxBarDockControl
      Left = 22
      Top = 47
      Width = 871
      Height = 3
      Align = dalTop
      BarManager = brm1
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = -1
    end
    object grplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = #1044#1072#1085#1085#1099#1077
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object grplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = #1058#1072#1088#1080#1092#1099
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lItmlc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 300
      SizeOptions.Width = 257
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object grplc1Group4: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 256
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lItmlc1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086
      CaptionOptions.Layout = clTop
      Parent = grplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 79
      Control = clc_CNT
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1062#1077#1085#1072
      CaptionOptions.Layout = clTop
      Parent = grplc1Group4
      Control = clc_SUMA
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lItmlc1Item13: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group4
      Control = btn_Add
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lItmlc1Item14: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lItmlc1Item15: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = doc1
      ControlOptions.AutoColor = True
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
        Component = dtb1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = dtb2
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object ds_IPUPRICE: TpFIBDataSet
    SelectSQL.Strings = (
      'select CNT, SUMA from IPU$PRICE order by cnt')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 584
    Top = 248
  end
  object src_IPUPRICE: TDataSource
    DataSet = ds_IPUPRICE
    Left = 616
    Top = 248
  end
  object ds_IPU: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT ipu.CODE,'
      '       s.CODE SCODE,'
      '       s.NAME SNAME,'
      '       ipu.HOUSE, h.NOMER,'
      '       ipu.FLAT,'
      '       ipu.CNT,'
      '       ipu.DATA,'
      '       ipu.SUMA,'
      '       h.A'
      'FROM IPU'
      'left outer join house h on h.CODE = ipu.HOUSE'
      'left outer join STREET s on s.CODE = h.STREET')
    AfterOpen = ds_IPUAfterOpen
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 456
    Top = 320
  end
  object src_IPU: TDataSource
    DataSet = ds_IPU
    Left = 488
    Top = 320
  end
  object brm1: TdxBarManager
    AlwaysMerge = True
    AlwaysSaveText = True
    AutoAlignBars = True
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
    Style = bmsUseLookAndFeel
    SunkenBorder = True
    UseSystemFont = True
    Left = 584
    Top = 320
    DockControlHeights = (
      0
      0
      31
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
      FloatLeft = 953
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_NEW'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_EDIT'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_DELETE'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_print'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 953
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dtb1'
        end
        item
          Visible = True
          ItemName = 'dtb2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Exec'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_NEW: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_NEWClick
    end
    object btn_EDIT: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EDITClick
    end
    object btn_DELETE: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_DELETEClick
    end
    object btn_print: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      OnClick = btn_printClick
    end
    object dtb1: TcxBarEditItem
      Caption = '   '#1055#1077#1088#1080#1086#1076' c'
      Category = 0
      Hint = '   '#1055#1077#1088#1080#1086#1076' c'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dtb2: TcxBarEditItem
      Caption = #1087#1086
      Category = 0
      Hint = #1087#1086
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object btn_Exec: TdxBarButton
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 26
      PaintStyle = psCaptionGlyph
      OnClick = btn_ExecClick
    end
  end
  object fr1: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41499.532909895800000000
    ReportOptions.LastChange = 41508.741470358790000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 624
    Top = 320
    Datasets = <
      item
        DataSet = frDS1
        DataSetName = 'ds_IPU'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 158.740260000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Rich1: TfrxRichView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 158.740260000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C66636861727365743230347B5C2A5C666E
            616D652054696D6573204E657720526F6D616E3B7D54696D6573204E65772052
            6F6D616E204359523B7D7B5C66315C66726F6D616E5C66707271325C66636861
            72736574302054696D6573204E657720526F6D616E3B7D7B5C66325C666E696C
            5C6663686172736574323034205461686F6D613B7D7D0D0A7B5C2A5C67656E65
            7261746F7220526963686564323020362E332E393630307D5C766965776B696E
            64345C756331200D0A5C706172645C71725C625C66305C667332305C2763665C
            2766305C2765385C2765625C2765655C2765365C2765355C2765645C2765385C
            276535205C27623931305C7061720D0A0D0A5C706172645C62305C667332345C
            7061720D0A0D0A5C706172645C71635C625C2763655C2766325C2766375C2765
            355C276632205C2765665C276565205C2765345C2765655C2765335C2765655C
            2765325C2765655C2766305C276633205C2762395F5F5F205C2765655C276632
            205C2761625F5F5F5C276262205F5F5F5F5F5F5F2032303133205C2765332E5C
            7061720D0A5C2765665C276565205C2765655C2765615C2765305C2765375C27
            65305C2765645C2765385C276665205C2766335C2766315C2765625C2766335C
            2765335C7061720D0A5C7061720D0A5C62305C2764335C2765665C2766305C27
            65305C2765325C2765625C2766665C2766655C2766395C2765305C276666205C
            2765615C2765655C2765635C2765665C2765305C2765645C2765385C2766663A
            205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5C7061720D
            0A5C7061720D0A5C2763655C2766325C2766375C2765355C2766325C2765645C
            2766625C276539205C2765665C2765355C2766305C2765385C2765655C276534
            3A205C66315C6C616E67313033332020635C66305C6C616E673130343920205C
            66315C6C616E6731303333205B64315D205C66305C6C616E67313034395C2765
            665C276565205C66315C6C616E6731303333205B64325D5C66305C6C616E6731
            303439202E205C7061720D0A0D0A5C706172645C66325C667331365C7061720D
            0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 18.897637795275600000
        Top = 238.110390000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 34.015770000000010000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1083#1080#1094#1072)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 442.205010000000000000
          Width = 83.149770350000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1086#1084)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 525.354780350000100000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1074'.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 612.283970350000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083'-'#1074#1086' '#1048#1055#1059)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 740.787990350000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1087#1083#1086#1084#1073#1080#1088#1086#1074#1082#1080)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 891.969190350000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072' '#1087#1083#1086#1084#1073#1080#1088'., '#1088#1091#1073'.')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637795275600000
        Top = 279.685220000000000000
        Width = 1046.929810000000000000
        DataSet = frDS1
        DataSetName = 'ds_IPU'
        RowCount = 0
        object ds_IPUCODE: TfrxMemoView
          Align = baLeft
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frDS1
          DataSetName = 'ds_IPU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
        object ds_IPUSNAME: TfrxMemoView
          Align = baLeft
          Left = 34.015770000000010000
          Width = 408.189098430000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SNAME'
          DataSet = frDS1
          DataSetName = 'ds_IPU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_IPU."SNAME"]')
          ParentFont = False
        end
        object ds_IPUNOMER: TfrxMemoView
          Align = baLeft
          Left = 442.204868430000000000
          Width = 83.149770350000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'NOMER'
          DataSet = frDS1
          DataSetName = 'ds_IPU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_IPU."NOMER"]')
          ParentFont = False
        end
        object ds_IPUFLAT: TfrxMemoView
          Align = baLeft
          Left = 525.354638779999900000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FLAT'
          DataSet = frDS1
          DataSetName = 'ds_IPU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_IPU."FLAT"]')
          ParentFont = False
        end
        object ds_IPUCNT: TfrxMemoView
          Align = baLeft
          Left = 612.283828779999900000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CNT'
          DataSet = frDS1
          DataSetName = 'ds_IPU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_IPU."CNT"]')
          ParentFont = False
        end
        object ds_IPUDATA: TfrxMemoView
          Align = baLeft
          Left = 740.787848779999900000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATA'
          DataSet = frDS1
          DataSetName = 'ds_IPU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_IPU."DATA"]')
          ParentFont = False
        end
        object ds_IPUSUMA: TfrxMemoView
          Align = baLeft
          Left = 891.969048779999900000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SUMA'
          DataSet = frDS1
          DataSetName = 'ds_IPU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_IPU."SUMA"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 1046.929810000000000000
        object Memo8: TfrxMemoView
          Left = 612.283860000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[SUM(<ds_IPU."CNT">)]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 891.969080000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[SUM(<ds_IPU."SUMA">,MasterData1)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 442.205010000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086':')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 291.023810000000000000
        Top = 404.409710000000000000
        Width = 1046.929810000000000000
        object Rich2: TfrxRichView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 291.023810000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C66726F6D616E5C66707271325C66636861727365743230347B5C2A5C666E
            616D652054696D6573204E657720526F6D616E3B7D54696D6573204E65772052
            6F6D616E204359523B7D7B5C66315C666E696C5C666368617273657432303420
            5461686F6D613B7D7D0D0A7B5C2A5C67656E657261746F722052696368656432
            3020362E332E393630307D5C766965776B696E64345C756331200D0A5C706172
            645C625C66305C667332345C2763655C2766325C2766375C2765355C27663220
            5C2765665C2765655C2765345C2765335C2765655C2766325C2765655C276532
            5C2765385C2765623A5C7061720D0A5C62305C7061720D0A5C2763305C276534
            5C2765635C2765385C2765645C2765385C2766315C2766325C2766305C276530
            5C2766325C2765655C276630205C2763655C2763655C276365205C2761625C27
            63345C2763355C27633720315C276262205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F205C2763345C276530
            5C2766325C2765303A205C2761625F5F5F5C276262205F5F5F5F5F5F5F5F5F5F
            2032303133205C2765332E5C7061720D0A5C7061720D0A5C2763345C2765385C
            2766305C2765355C2765615C2766325C2765655C276630205C2763655C276365
            5C276365205C2761625C2763345C2763355C27633720315C276262205F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F205C2763345C2765305C2766325C2765303A205C2761625F5F5F5C276262
            205F5F5F5F5F5F5F5F5F5F2032303133205C2765332E5C7061720D0A5C706172
            0D0A5C625C2764315C2765655C2765335C2765625C2765305C2766315C276565
            5C2765325C2765305C2765645C2765653A5C7061720D0A5C62305C7061720D0A
            5C2763645C2765305C2766375C2765305C2765625C2766635C2765645C276538
            5C276561205C2763315C2763615C276366205C2763655C2763655C276365205C
            2761625C2763345C2763355C276337205C2763615C2765305C2765625C276538
            5C2765645C2765385C2765645C2766315C2765615C2765655C2765335C276565
            205C2766305C2765305C2765395C2765655C2765645C2765305C276262205F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F205C2763345C2765305C2766325C2765303A205C2761625F5F5F5C27
            6262205F5F5F5F5F5F5F5F5F5F2032303133205C2765332E5C7061720D0A5C70
            61720D0A5C2764345C2765385C2765645C2765305C2765645C2766315C276565
            5C2765325C2766625C276539205C2765345C2765385C2766305C2765355C2765
            615C2766325C2765655C276630205C2763655C2763655C276365205C2761625C
            2763345C2763355C276337205C2763615C2765305C2765625C2765385C276564
            5C2765385C2765645C2766315C2765615C2765655C2765335C276565205C2766
            305C2765305C2765395C2765655C2765645C2765305C276262205F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            205C2763345C2765305C2766325C2765303A205C2761625F5F5F5C276262205F
            5F5F5F5F5F5F5F5F5F2032303133205C2765332E5C7061720D0A5C66315C6673
            31365C7061720D0A7D0D0A00}
        end
      end
    end
  end
  object frDS1: TfrxDBDataset
    UserName = 'ds_IPU'
    CloseDataSource = False
    DataSet = ds_IPU
    BCDToCurrency = False
    Left = 656
    Top = 320
  end
end
