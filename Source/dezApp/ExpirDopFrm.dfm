object ExpirDopForm: TExpirDopForm
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090' '#1086' '#1087#1088#1086#1089#1088#1086#1095#1077#1085#1085#1099#1093' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103#1093
  ClientHeight = 630
  ClientWidth = 898
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
    Top = 28
    Width = 898
    Height = 602
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_EXPIRDOPSOG
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = clv1CNTDAY
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clv1NSUMMA
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clv1PENALTY_SUM
          end
          item
            Kind = skCount
            Position = spFooter
            Column = clv1SNAME
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1SNAME
          end
          item
            Kind = skSum
            Column = clv1CNTDAY
          end
          item
            Kind = skSum
            Column = clv1NSUMMA
          end
          item
            Kind = skSum
            Column = clv1PENALTY_SUM
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.HeaderAutoHeight = True
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.CellMerging = True
          Width = 145
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.CellMerging = True
          Width = 43
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Options.CellMerging = True
          Width = 96
        end
        object clv1NDOPNUM: TcxGridDBColumn
          Caption = #8470' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'NDOPNUM'
          Options.CellMerging = True
          Width = 50
        end
        object clv1D1: TcxGridDBColumn
          Caption = #1053#1072#1095#1072#1083#1086' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'D1'
          Width = 60
        end
        object clv1D2: TcxGridDBColumn
          Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'D2'
          Width = 62
        end
        object clv1CNTDAY: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1089#1088#1086#1095#1077#1085#1085#1099#1093' '#1076#1085#1077#1081
          DataBinding.FieldName = 'CNTDAY'
          Width = 60
        end
        object clv1NSUMMA: TcxGridDBColumn
          Caption = #1057#1084#1077#1090#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
          DataBinding.FieldName = 'NSUMMA'
          Width = 60
        end
        object clv1PENALTY_SUM: TcxGridDBColumn
          Caption = #1056#1072#1079#1084#1077#1088' '#1096#1090#1088#1072#1092#1072
          DataBinding.FieldName = 'PENALTY_SUM'
          Width = 61
        end
        object clv1FSTATENAME: TcxGridDBColumn
          Caption = #1057#1090#1072#1090#1091#1089' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'FSTATENAME'
          Width = 81
        end
        object clv1MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'MNAME'
          Width = 155
        end
        object clv1DOG: TcxGridDBColumn
          DataBinding.FieldName = 'DOG'
          Visible = False
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
        end
        object clv1TRFACT: TcxGridDBColumn
          DataBinding.FieldName = 'TRFACT'
          Visible = False
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
        end
        object clv1MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
        end
        object clv1STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
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
      ShowBorder = False
      Index = -1
    end
    object grplc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cbb1: TcxLookupComboBox
    Left = 8
    Top = 3
    Properties.ClearKey = 46
    Properties.DropDownSizeable = True
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'CODE'
    Properties.ListColumns = <
      item
        FieldName = 'CODE'
      end
      item
        FieldName = 'NAME'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = src_kontr
    Style.HotTrack = False
    TabOrder = 5
    Width = 195
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 792
    Top = 168
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = clv1CNTDAY
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1D1
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1D2
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1FSTATENAME
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1KNAME
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1MNAME
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1NDOPNUM
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1NOMER
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1NSUMMA
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1PENALTY_SUM
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1SNAME
        Properties.Strings = (
          'Width')
      end>
    StorageName = 'prop1'
    Left = 760
    Top = 168
  end
  object bm1: TdxBarManager
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
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    SunkenBorder = True
    UseSystemFont = True
    Left = 728
    Top = 168
    DockControlHeights = (
      0
      0
      28
      0)
    object bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 924
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 98
          Visible = True
          ItemName = 'BarCombo1'
        end
        item
          Visible = True
          ItemName = 'cci1'
        end
        item
          Visible = True
          ItemName = 'btn_clear'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Expand'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Collapse'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Exec'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_print'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_Exec: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = btn_ExecClick
    end
    object cci1: TdxBarControlContainerItem
      Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      Category = 0
      Hint = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      MergeKind = mkMergeByCaption
      Visible = ivAlways
      Control = cbb1
    end
    object btn_print: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = btn_printClick
    end
    object btn_clear: TdxBarButton
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      Category = 0
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 23
      OnClick = btn_clearClick
    end
    object btn_Expand: TdxBarButton
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100
      Category = 0
      Hint = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100
      Visible = ivAlways
      ImageIndex = 25
      OnClick = btn_ExpandClick
    end
    object btn_Collapse: TdxBarButton
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100
      Category = 0
      Hint = #1057#1074#1077#1088#1085#1091#1090#1100
      Visible = ivAlways
      ImageIndex = 24
      OnClick = btn_CollapseClick
    end
    object BarCombo1: TdxBarCombo
      Caption = #1058#1080#1087
      Category = 0
      Hint = #1058#1080#1087
      Visible = ivAlways
      ShowCaption = True
      Text = #1054#1073#1097#1077#1089#1090#1088#1086#1081
      Items.Strings = (
        #1054#1073#1097#1077#1089#1090#1088#1086#1081
        #1051#1080#1092#1090)
      ItemIndex = 0
    end
  end
  object ds_EXPIRDOPSOG: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT NDOPNUM,'
      '       DOG,'
      '       KONTRAGENT,'
      '       KNAME,'
      '       TRFACT,'
      '       NSUMMA,'
      '       HOUSE,'
      '       SNAME,'
      '       NOMER,'
      '       MLIST,'
      '       MNAME,'
      '       D1,'
      '       D2,'
      '       CNTDAY,'
      '       STATE,'
      '       FSTATENAME,'
      '       PENALTY_SUM'
      'FROM EXPIRDOPSOG')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 408
    Top = 176
  end
  object src_EXPIRDOPSOG: TDataSource
    DataSet = ds_EXPIRDOPSOG
    Left = 436
    Top = 176
  end
  object ds_kontr: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, NAME FROM KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 160
    Top = 200
  end
  object src_kontr: TDataSource
    DataSet = ds_kontr
    Left = 189
    Top = 200
  end
  object fr: TfrxReport
    Version = '4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41118.998042604170000000
    ReportOptions.LastChange = 41119.065414872680000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  summa: variant;                                        '
      'procedure Memo17OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  summa:= SUM(<dds."PENALTY_SUM">,MasterData1,0);'
      '  Memo17.Text:= VarToStr(summa);                     '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 424
    Top = 240
    Datasets = <
      item
        DataSet = dds1
        DataSetName = 'dds'
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
        Height = 238.110390000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Rich1: TfrxRichView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 238.110390000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
            666C616E67313034397B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743230347B5C2A5C666E616D6520417269616C3B7D417269616C204359
            523B7D7B5C66315C666E696C5C6663686172736574323034205461686F6D613B
            7D7B5C66325C666E696C5C66636861727365743230347B5C2A5C666E616D6520
            617269616C3B7D417269616C204359523B7D7B5C66335C666E696C5C66636861
            727365743020617269616C3B7D7B5C66345C666E696C5C666368617273657430
            20417269616C3B7D7D0D0A7B5C2A5C67656E657261746F72204D736674656469
            7420352E34312E32312E323531303B7D5C766965776B696E64345C7563315C70
            6172645C71635C625C66305C667334385C2764315C2765625C2766335C276536
            5C2765355C2765315C2765645C2765305C276666205C2765375C2765305C2765
            665C2765385C2766315C2765615C2765305C667332385C7061720D0A5C62305C
            66315C667331365C7061720D0A5C706172645C625C66325C667332305C276361
            5C2765655C2765635C2766333A5C62302020202020202020202020205C276333
            5C2765355C2765645C2765355C2766305C2765305C2765625C2766635C276564
            5C2765655C2765635C276633205C2765345C2765385C2766305C2765355C2765
            615C2766325C2765655C2766305C276633205C2763655C2763655C276365205C
            6C616E67313033335C66335C2761625C6C616E67313034395C66325C2763345C
            2763355C276337205C2763615C2765305C2765625C2765385C2765645C276538
            5C2765645C2766315C2765615C2765655C2765335C276565205C2766305C2765
            305C2765395C2765655C2765645C2765305C6C616E67313033335C66335C2762
            62205C6C616E67313034395C66325C2764315C2765635C2765385C2766305C27
            65645C2765655C2765325C276633205C2763612E5C2763382E5C7061720D0A5C
            7061720D0A5C625C2763615C2765655C2765665C2765385C2766663A5C62305C
            7461625C7061720D0A5C7061720D0A5C625C2763655C2766323A5C62305C7461
            625C6C616E67313033335C66332020202020202020205C6C616E67313034395C
            66325C2763645C2765305C2766375C2765305C2765625C2766635C2765645C27
            65385C2765615C276530205C2764315C276464205C2764385C2765305C276562
            5C2765385C2765635C2765655C2765325C2765655C276539205C2763322E5C27
            63352E5C7061720D0A5C7061720D0A5C625C2763345C2765305C2766325C2765
            303A5C62305C7461625C6C616E67313033335C66332020202020202020205C6C
            616E67313034395C6632205B446174655D5C6C616E67313033335C6633202020
            5C6C616E67313034395C6632205B54696D655D5C7061720D0A5C7061720D0A5C
            625C2764325C2765355C2765635C2765303A5C62305C74616220205C7061720D
            0A5C7061720D0A5C7061720D0A5C66305C276361205C2765345C2765655C2765
            335C2765655C2765325C2765655C2766305C276633205C656E6461736820205C
            2765665C2765655C2765345C2766305C2766665C2765345C276530205C276239
            5C6C616E67313033335C6634205B766172446F674E756D5D5C6C616E67313034
            395C663020205C2765655C276632205C6C616E67313033335C6634205B766172
            446F67446174615D5C6C616E67313034395C66305C2765332E205C2766315C27
            65655C2766315C2766325C2765305C2765325C2765625C2765355C2765645C27
            6662205C2765345C2765655C2765665C2765655C2765625C2765645C2765385C
            2766325C2765355C2765625C2766635C2765645C2766625C276535205C276631
            5C2765655C2765335C2765625C2765305C2766385C2765355C2765645C276538
            5C276666205C2766315C2765625C2765355C2765345C2766335C2766655C2766
            395C2765385C276563205C2765305C2765345C2766305C2765355C2766315C27
            65305C2765633A5C66315C667331365C7061720D0A7D0D0A00}
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 3.779530000000000000
        Top = 279.685220000000000000
        Width = 1046.929810000000000000
      end
      object Header1: TfrxHeader
        Height = 79.370130000000000000
        Top = 343.937230000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 170.078684020000000000
          Height = 79.370078740000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1083#1080#1094#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 170.078684020000000000
          Width = 41.574793390000010000
          Height = 79.370078740000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1086#1084)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 211.653477410000000000
          Width = 166.299320000000000000
          Height = 79.370130000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 377.952797410000000000
          Width = 52.913420000000000000
          Height = 79.370130000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 430.866217410000000000
          Width = 79.370130000000000000
          Height = 79.370130000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1086' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 510.236347410000000000
          Width = 79.370130000000000000
          Height = 79.370130000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 589.606477410000000000
          Width = 45.354360000000000000
          Height = 79.370130000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1089#1088#1086#1095#1077#1085#1085#1099#1093' '#1076#1085#1077#1081)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 634.960837410000100000
          Width = 79.370130000000000000
          Height = 79.370130000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1084#1077#1090#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Left = 714.330967410000100000
          Width = 79.370130000000000000
          Height = 79.370130000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1079#1084#1077#1088' '#1096#1090#1088#1072#1092#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 793.701097410000100000
          Width = 90.708720000000000000
          Height = 79.370130000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1072#1090#1091#1089' '#1088#1072#1073#1086#1090#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Align = baWidth
          Left = 884.409817410000100000
          Width = 162.519992590000000000
          Height = 79.370130000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1080#1076' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 445.984540000000000000
        Width = 1046.929810000000000000
        DataSet = dds1
        DataSetName = 'dds'
        RowCount = 0
        Stretched = True
        object ddsNDOPNUM: TfrxMemoView
          Align = baLeft
          Width = 170.078818270000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'SNAME'
          DataSet = dds1
          DataSetName = 'dds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dds."SNAME"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 170.078818270000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NOMER'
          DataSet = dds1
          DataSetName = 'dds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dds."NOMER"]')
          ParentFont = False
        end
        object ddsKNAME: TfrxMemoView
          Align = baLeft
          Left = 211.653648270000000000
          Width = 166.299183310000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'KNAME'
          DataSet = dds1
          DataSetName = 'dds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dds."KNAME"]')
          ParentFont = False
        end
        object ddsNDOPNUM1: TfrxMemoView
          Align = baLeft
          Left = 377.952831579999900000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NDOPNUM'
          DataSet = dds1
          DataSetName = 'dds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dds."NDOPNUM"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 430.866251579999900000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'D1'
          DataSet = dds1
          DataSetName = 'dds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dds."D1"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 510.236381579999900000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'D2'
          DataSet = dds1
          DataSetName = 'dds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dds."D2"]')
          ParentFont = False
        end
        object ddsCNTDAY: TfrxMemoView
          Align = baLeft
          Left = 589.606511580000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CNTDAY'
          DataSet = dds1
          DataSetName = 'dds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dds."CNTDAY"]')
          ParentFont = False
        end
        object ddsNSUMMA: TfrxMemoView
          Align = baLeft
          Left = 634.960842290000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NSUMMA'
          DataSet = dds1
          DataSetName = 'dds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dds."NSUMMA"]')
          ParentFont = False
        end
        object ddsPENALTY_SUM: TfrxMemoView
          Align = baLeft
          Left = 714.330972290000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'PENALTY_SUM'
          DataSet = dds1
          DataSetName = 'dds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dds."PENALTY_SUM"]')
          ParentFont = False
        end
        object ddsFSTATENAME: TfrxMemoView
          Align = baLeft
          Left = 793.701102290000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'FSTATENAME'
          DataSet = dds1
          DataSetName = 'dds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dds."FSTATENAME"]')
          ParentFont = False
        end
        object ddsMNAME: TfrxMemoView
          Align = baWidth
          Left = 884.409822290000000000
          Width = 162.519987710000100000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'MNAME'
          DataSet = dds1
          DataSetName = 'dds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dds."MNAME"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 143.622140000000000000
        Top = 566.929499999999900000
        Width = 1046.929810000000000000
        object Rich3: TfrxRichView
          Align = baBottom
          Top = 30.236239999999990000
          Width = 1046.929810000000000000
          Height = 113.385900000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
            666C616E67313034397B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743230347B5C2A5C666E616D6520417269616C3B7D417269616C204359
            523B7D7B5C66315C666E696C5C66636861727365743020417269616C3B7D7B5C
            66325C666E696C5C6663686172736574323034205461686F6D613B7D7D0D0A7B
            5C2A5C67656E657261746F72204D7366746564697420352E34312E32312E3235
            31303B7D5C766965776B696E64345C7563315C706172645C66305C667332305C
            2764315C2765655C2765335C2765625C2765305C2766315C2765645C27656520
            5C2765345C2765655C2765335C2765655C2765325C2765655C2766305C276530
            2D5C2765665C2765655C2765345C2766305C2766665C2765345C276530205C27
            62395C6C616E67313033335C6631205B766172446F674E756D5D5C6C616E6731
            3034395C663020205C2765655C276632205C6C616E67313033335C6631205B76
            6172446F67446174615D5C6C616E67313034395C66305C2765332E205C276566
            5C2766335C2765645C2765615C27663220362E312D5C2765375C276530205C27
            65655C2765615C2765655C2765645C2766375C2765305C2765645C2765385C27
            6535205C2766305C2765305C2765315C2765655C276632205C2765665C276565
            5C2766315C2765625C276535205C2766335C2766315C2766325C2765305C2765
            645C2765655C2765325C2765625C2765355C2765645C2765645C2765655C2765
            335C276565205C2766315C2766305C2765655C2765615C276530205C656E6461
            736820205C2766385C2766325C2766305C2765305C276634205C276532205C27
            66305C2765305C2765375C2765635C2765355C2766305C27653520302C352520
            5C2765655C276632205C2766315C2766325C2765655C2765385C2765635C2765
            655C2766315C2766325C276538205C2765375C27653020205C2765615C276530
            5C2765365C2765345C2766625C276539205C2765345C2765355C2765645C2766
            63205C2765665C2766305C2765655C2766315C2766305C2765655C2766375C27
            65615C2765382E205C2763665C2766305C276538205C2765375C2765305C2765
            345C2765355C2766305C2765365C2765615C276535205C2766315C2765345C27
            65305C2766375C276538205C2766305C2765355C2765375C2766335C2765625C
            2766635C2766325C2765305C2766325C276530205C2766305C2765305C276531
            5C2765655C276632205C2766315C2765325C2766625C2766385C276535203330
            205C2765345C2765645C2765355C276539205C2763665C2765655C2765345C27
            66305C2766665C2765345C2766375C2765385C276561205C2765325C2766625C
            2765665C2765625C2765305C2766375C2765385C2765325C2765305C2765355C
            276632205C2766385C2766325C2766305C2765305C276634205C276532205C27
            66305C2765305C2765375C2765635C2765355C2766305C276535203125205C27
            65655C276632205C2766315C2766325C2765655C2765385C2765635C2765655C
            2766315C2766325C276538205C2766305C2765305C2765315C2765655C276632
            205C2765375C276530205C2765615C2765305C2765365C2765345C2766625C27
            6539205C2765345C2765355C2765645C276663205C2765665C2766305C276565
            5C2766315C2766305C2765655C2766375C2765615C2765382E5C7061720D0A5C
            2763645C276530205C2765655C2766315C2765645C2765655C2765325C276530
            5C2765645C2765385C276538205C2765325C2766625C2766385C2765355C2765
            385C2765375C2765625C2765655C2765365C2765355C2765645C2765645C2765
            655C2765335C276565205C2765665C2766305C2765655C2766315C2765385C27
            6563205C2763325C2765305C276631205C2766335C2765345C2765355C276630
            5C2765365C2765305C2766325C276663205C2766315C2766335C2765635C2765
            635C276633205C2766385C2766325C2766305C2765305C2766345C276530205C
            276631205C2765665C2765655C2765345C2766305C2766665C2765345C276564
            5C2765655C276539205C2765655C2766305C2765335C2765305C2765645C2765
            385C2765375C2765305C2766365C2765385C276538205B6464732E224B4E414D
            45225D205C6C616E67313033335C663120205C6C616E67313034395C66305C27
            6532205C2766305C2765305C2765375C2765635C2765355C2766305C27653520
            5C6C616E67313033335C6631205B73756D6D615D5C6C616E67313034395C6630
            20205C2766305C2766335C2765315C2765625C2765355C2765392E5C7061720D
            0A5C7061720D0A5C7061720D0A5C2763645C2765305C2766375C2765305C2765
            625C2766635C2765645C2765385C276561205C2764315C2764643A2020202020
            202020202020202020202020202020202020202020202020202020205C276438
            5C2765305C2765625C2765385C2765635C2765655C2765325C276530205C2763
            322E5C2763352E5C66325C667331365C7061720D0A7D0D0A00}
        end
      end
      object Footer1: TfrxFooter
        Height = 18.897637800000000000
        Top = 487.559370000000000000
        Width = 1046.929810000000000000
        object Memo16: TfrxMemoView
          Align = baLeft
          Top = -0.000012200000014673
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086':')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baWidth
          Left = 714.331170000000000000
          Width = 332.598640000000100000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo17OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[SUM(<dds."PENALTY_SUM">,MasterData1,0)]')
          ParentFont = False
        end
      end
    end
  end
  object dds1: TfrxDBDataset
    UserName = 'dds'
    CloseDataSource = False
    DataSet = ds_EXPIRDOPSOG
    BCDToCurrency = False
    Left = 456
    Top = 240
  end
  object Xexp1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 424
    Top = 280
  end
  object wexp1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 456
    Top = 280
  end
end
