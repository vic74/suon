object herForm: TherForm
  Left = 0
  Top = 0
  Caption = 'herForm'
  ClientHeight = 520
  ClientWidth = 722
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
    Width = 722
    Height = 520
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object grd1: TcxGrid
      Left = 20
      Top = 91
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object STREETNAME: TcxGridDBColumn
          DataBinding.FieldName = 'STREETNAME'
          Width = 186
        end
        object NOMER: TcxGridDBColumn
          DataBinding.FieldName = 'NOMER'
        end
        object clSUM: TcxGridDBColumn
          DataBinding.FieldName = 'SUM'
          Width = 129
        end
        object clHOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
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
    object lGrplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lGrplc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object litm_lc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = grd1
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
    Components = <>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object md: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 256
    Top = 208
  end
  object src1: TDataSource
    DataSet = md
    Left = 312
    Top = 208
  end
  object Report1: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40786.772124502300000000
    ReportOptions.LastChange = 40786.854977719900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 368
    Top = 344
    Datasets = <
      item
        DataSet = Report1.Q1
        DataSetName = 'Q1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object fdb1: TfrxFIBDatabase
        LoginPrompt = False
        SQLDialect = 1
        pLeft = 44
        pTop = 80
      end
      object Q1: TfrxFIBQuery
        UserName = 'Q1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        Database = Report1.fdb1
        pLeft = 44
        pTop = 124
        Parameters = <>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 105.826840000000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        object Rich1: TfrxRichView
          Align = baClient
          Width = 718.110700000000000000
          Height = 105.826840000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574323034205461686F6D613B7D7B5C66315C
            666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C6765
            6E657261746F7220526963686564323020362E332E393630307D5C766965776B
            696E64345C756331200D0A5C706172645C71635C66305C667332345C2763655C
            2766325C2766375C2765355C276632205C2765665C276565205C2766315C2765
            665C2765385C2766315C2765305C2765645C2765385C276665205C2765635C27
            65305C2766325C2765355C2766305C2765385C2765305C2765625C2765655C27
            6532205C66315C6C616E6731303333205B7661724B6F6E74725D5C66305C6C61
            6E6731303439202C5C7061720D0A5C2765375C2765305C2766325C2766305C27
            65305C2766375C2765355C2765645C2765645C2766625C276635205C2765645C
            276530205C2766325C2765355C2766355C2765645C2765385C2766375C276535
            5C2766315C2765615C2765655C276535205C2765655C2765315C2766315C2765
            625C2766335C2765365C2765385C2765325C2765305C2765645C2765385C2765
            352E5C7061720D0A5C276631205C66315C6C616E6731303333205B7661724431
            5D205C66305C6C616E67313034395C2765665C276565205C66315C6C616E6731
            303333205B76617244325D5C7061720D0A5C7061720D0A0D0A5C706172645C66
            305C667332305C6C616E67313034395C276532205C2766305C2765305C276537
            5C2766305C2765355C2765375C276535205C2763635C2763615C276334205C27
            65665C276565205C2765305C2765345C2766305C2765355C2766315C2766333A
            20205C625C66315C6C616E6731303333205B766172416464725D5C62305C6630
            5C667331365C6C616E67313034395C7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 140.000000000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Top = 3.779529999999994000
          Width = 41.574803150000000000
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
            #8470' '#1087'/'#1087)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baRight
          Left = 619.842983459999900000
          Top = 3.779529999999994000
          Width = 98.267716540000000000
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
            #1057#1091#1084#1084#1072)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baRight
          Left = 551.811487399999900000
          Top = 3.779529999999994000
          Width = 68.031496060000000000
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
            #1062#1077#1085#1072' '#1079#1072' '#1077#1076'.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baRight
          Left = 491.339046459999900000
          Top = 3.779529999999994000
          Width = 60.472440940000000000
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
            #1050#1086#1083'-'#1074#1086)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baRight
          Left = 434.646125749999900000
          Top = 3.779529999999994000
          Width = 56.692920710000000000
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
            #1045#1076'. '#1080#1079#1084'.')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baWidth
          Left = 41.574803150000000000
          Top = 3.779529999999994000
          Width = 393.071322599999900000
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
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 184.000000000000000000
        Width = 718.110700000000000000
        DataSet = Report1.Q1
        DataSetName = 'Q1'
        RowCount = 0
        object Memo3: TfrxMemoView
          Align = baWidth
          Left = 41.574830000000000000
          Width = 393.071283534173200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."NAME"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baRight
          Left = 434.646113534173200000
          Width = 56.692913385826800000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Q1."ED"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baRight
          Left = 491.339026920000000000
          Width = 60.472416540000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Q1."QUANTITY"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baRight
          Left = 551.811443459999900000
          Width = 68.031476540000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Q1."PRICE"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baRight
          Left = 619.842919999999900000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Q1."SUMMA"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 26.456710000000000000
        Top = 224.000000000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Align = baRight
          Left = 619.842919999999900000
          Top = 7.559055119999982000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Q1."SUMMA">,MasterData1,)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baRight
          Left = 551.811443459999900000
          Top = 7.559059999999988000
          Width = 68.031476540000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baRight
          Left = 491.339026920000000000
          Top = 7.559059999999988000
          Width = 60.472416540000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Q1."QUANTITY">,MasterData1,)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 396.850650000000000000
          Top = 7.559059999999988000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086':')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 90.708720000000000000
        Top = 272.000000000000000000
        Width = 718.110700000000000000
        object Rich2: TfrxRichView
          Align = baBottom
          Top = 71.811069999999970000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574323034205461686F6D613B7D7B5C66315C
            666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C6765
            6E657261746F7220526963686564323020362E332E393630307D5C766965776B
            696E64345C756331200D0A5C706172645C695C66305C667332305C2763385C27
            66315C2765665C2765655C2765625C2765645C2765385C2766325C2765355C27
            65625C2766635C69305C66315C6C616E6731303333203A5C66305C6C616E6731
            30343920205C756C5C625C66315C6C616E6731303333205B7661724D616E6167
            65725D5C6230202F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5C756C6E6F6E655C66305C667331365C6C616E67313034395C7061720D0A7D0D
            0A00}
        end
      end
    end
  end
end
