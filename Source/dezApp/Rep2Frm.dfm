object Rep2Form: TRep2Form
  Left = 0
  Top = 0
  Caption = 
    #1054#1090#1095#1077#1090' '#1086' '#1088#1072#1079#1084#1077#1088#1077' '#1087#1083#1072#1090#1099' '#1079#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1088#1072#1079#1088#1077#1079#1077' '#1078#1080#1083#1086#1075#1086' '#1080' '#1085#1077#1078#1080#1083#1086#1075#1086' ' +
    #1092#1086#1085#1076#1072
  ClientHeight = 564
  ClientWidth = 807
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
    Width = 807
    Height = 564
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object cbb_m1: TcxComboBox
      Left = 61
      Top = 10
      Properties.Items.Strings = (
        ''
        #1103#1085#1074#1072#1088#1100
        #1092#1077#1074#1088#1072#1083#1100
        #1084#1072#1088#1090
        #1072#1087#1088#1077#1083#1100
        #1084#1072#1081
        #1080#1102#1085#1100
        #1080#1102#1083#1100
        #1072#1074#1075#1091#1089#1090
        #1089#1077#1085#1090#1103#1073#1088#1100
        #1086#1082#1090#1103#1073#1088#1100
        #1085#1086#1103#1073#1088#1100
        #1076#1077#1082#1072#1073#1088#1100)
      Style.HotTrack = False
      TabOrder = 0
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object msk_y1: TcxMaskEdit
      Left = 188
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 1
      Text = '2011'
      Width = 49
    end
    object cbb_m2: TcxComboBox
      Left = 269
      Top = 10
      Properties.Items.Strings = (
        ''
        #1103#1085#1074#1072#1088#1100
        #1092#1077#1074#1088#1072#1083#1100
        #1084#1072#1088#1090
        #1072#1087#1088#1077#1083#1100
        #1084#1072#1081
        #1080#1102#1085#1100
        #1080#1102#1083#1100
        #1072#1074#1075#1091#1089#1090
        #1089#1077#1085#1090#1103#1073#1088#1100
        #1086#1082#1090#1103#1073#1088#1100
        #1085#1086#1103#1073#1088#1100
        #1076#1077#1082#1072#1073#1088#1100)
      Style.HotTrack = False
      TabOrder = 2
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object msk_y2: TcxMaskEdit
      Left = 396
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 3
      Text = '2011'
      Width = 49
    end
    object btn_exec: TcxButton
      Left = 451
      Top = 10
      Width = 132
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      OptionsImage.Glyph.Data = {
        72010000424D7201000000000000760000002800000014000000150000000100
        040000000000FC000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFF00FFFFFFFFFFFF0000FFFFFF0B0FFFFFFFFFFF
        0000FFFFFFF0B0FFFFFFFFFF0000FFFFFFF0FB0FFFFFFFFF0000FFFFFFFF0FB0
        FFFFFFFF0000FFFFFF000B000FFFFFFF0000FFFFFFF0BF0FFFFFFFFF0000FFFF
        FFFF0BF0FFFFFFFF0000FFFFFFFF0FBF0FFFFFFF0000FFFFF0000F0000FFFFFF
        0000FFFFFF0BFBF0FFFFFFFF0000FFFFFFF0BFBF0FFFFFFF0000FFFFFFF0FBFB
        F0FFFFFF0000FFFFFFFF0000000FFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000}
      TabOrder = 4
      OnClick = btn_execClick
    end
    object grd1: TcxGrid
      Left = 10
      Top = 41
      Width = 250
      Height = 200
      TabOrder = 7
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_m1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #1048#1090#1086#1075#1086':'
            Column = clvb1NAME
          end
          item
            Format = #1078#1080#1083#1086#1081' '#1092#1086#1085#1076
            Column = clvb1NAME
          end
          item
            Format = #1085#1077#1078#1080#1083#1086#1081' '#1092#1086#1085#1076
            Column = clvb1NAME
          end
          item
            Format = ',0.00;-,0.00'
            Column = clvb1PLAN
          end
          item
            Format = ',0.00;-,0.00'
            Column = clvb1PLAN
          end
          item
            Format = ',0.00;-,0.00'
            Column = clvb1PLAN
          end
          item
            Format = ',0.00;-,0.00'
            Column = clvb1FACT
          end
          item
            Format = ',0.00;-,0.00'
            Column = clvb1RB
          end
          item
            Format = ',0.00;-,0.00'
            Column = clvb1PROC
          end
          item
            Format = ',0.00;-,0.00'
            Column = clvb1FACT
          end
          item
            Format = ',0.00;-,0.00'
            Column = clvb1FACT
          end
          item
            Format = ',0.00;-,0.00'
            Column = clvb1RB
          end
          item
            Format = ',0.00;-,0.00'
            Column = clvb1RB
          end
          item
            Format = ',0.00;-,0.00'
            Column = clvb1PROC
          end
          item
            Format = ',0.00;-,0.00'
            Column = clvb1PROC
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        Styles.OnGetContentStyle = vb1StylesGetContentStyle
        Bands = <
          item
            Width = 299
          end
          item
            Caption = #1057#1091#1084#1084#1072', '#1088#1091#1073'. '#1074' '#1090'.'#1095'. '#1053#1044#1057
            Width = 159
          end
          item
            Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
            Width = 181
          end>
        object clvb1Num: TcxGridDBBandedColumn
          Caption = #8470' '#1087'/'#1087
          DataBinding.FieldName = 'Num'
          Width = 44
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1NAME: TcxGridDBBandedColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1090#1072#1090#1100#1080
          DataBinding.FieldName = 'NAME'
          Width = 255
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1PLAN: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1085
          DataBinding.FieldName = 'PLAN'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1FACT: TcxGridDBBandedColumn
          Caption = #1060#1072#1082#1090
          DataBinding.FieldName = 'FACT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1RB: TcxGridDBBandedColumn
          Caption = #1088#1091#1073'.'
          DataBinding.FieldName = 'RB'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 122
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1PROC: TcxGridDBBandedColumn
          Caption = '%'
          DataBinding.FieldName = 'PROC'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 58
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object l1: TcxGridLevel
        GridView = vb1
      end
    end
    object btn_print: TcxButton
      Left = 589
      Top = 10
      Width = 84
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = cmDb.iml1
      TabOrder = 5
      OnClick = btn_printClick
    end
    object btn_Excel: TcxButton
      Left = 679
      Top = 10
      Width = 34
      Height = 25
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      TabOrder = 6
      OnClick = btn_ExcelClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object gr1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 20
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_m1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089
      Parent = gr1
      Control = cbb_m1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_y1: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = gr1
      Control = msk_y1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_m2: TdxLayoutItem
      CaptionOptions.Text = '  '#1087#1086' '
      Parent = gr1
      Control = cbb_m2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_y2: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = gr1
      Control = msk_y2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = gr1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 132
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object gr2: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = gr2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = gr1
      Control = btn_print
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LItemlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = gr1
      Control = btn_Excel
      ControlOptions.ShowBorder = False
      Index = 6
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 640
    Top = 136
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_m2
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = msk_y1
        Properties.Strings = (
          'Text')
      end
      item
        Component = msk_y2
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 612
    Top = 136
  end
  object m1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 176
    Top = 120
  end
  object src_m1: TDataSource
    DataSet = m1
    Left = 205
    Top = 120
  end
  object frep1: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41162.820915729200000000
    ReportOptions.LastChange = 41165.051456273090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure frxDBDataset1RecIdOnAfterData(Sender: TfrxComponent);'
      'begin'
      '                                 '
      'end;'
      ''
      
        'procedure frxDBDataset1RecIdOnBeforePrint(Sender: TfrxComponent)' +
        ';'
      'begin'
      '  '
      'end;'
      ''
      'procedure Memo1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if Trim(VarToStr(<frxDBDataset1."NUM">)) <> '#39#39' then'
      '   TfrxMemoView(Sender).Color:= clSkyBlue   else'
      '   TfrxMemoView(Sender).Color:= clNone;'
      '  //ShowMessage(<frxDBDataset1."NUM">);  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 392
    Top = 128
    Datasets = <
      item
        DataSet = frds1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
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
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Rich1: TfrxRichView
          Align = baClient
          Width = 718.110700000000000000
          Height = 60.472480000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574323034205461686F6D613B7D7B5C66315C
            666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C6765
            6E657261746F7220526963686564323020362E332E393630307D5C766965776B
            696E64345C756331200D0A5C706172645C71635C66305C667332385C2763655C
            2766325C2766375C2765355C276632205C276565205C2766305C2765305C2765
            375C2765635C2765355C2766305C276535205C2765665C2765625C2765305C27
            66325C276662205C2765375C276530205C2766335C2765665C2766305C276530
            5C2765325C2765625C2765355C2765645C2765385C276535205C276532205C27
            66305C2765305C2765375C2766305C2765355C2765375C276535205C2765365C
            2765385C2765625C2765655C2765335C276565205C276538205C2765645C2765
            355C2765365C2765385C2765625C2765655C2765335C276565205C2766345C27
            65655C2765645C2765345C2765305C7061720D0A5C667332345C2765375C2765
            30205C2765665C2765355C2766305C2765385C2765655C276534205C27663120
            5C66315C6C616E6731303333205B4D315D205B59315D5C66305C6C616E673130
            343920205C2765665C276565205C66315C6C616E6731303333205B4D325D205B
            59325D5C66305C667331365C6C616E67313034395C7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 41.574817800000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Align = baLeft
          Top = 4.102350000000001000
          Width = 49.133890000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 14211288
          DataSet = frds1
          DataSetName = 'frxDBDataset1'
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
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 49.133890000000000000
          Top = 4.102350000000001000
          Width = 287.244280000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 14211288
          DataSet = frds1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1090#1072#1090#1100#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 336.378170000000000000
          Top = 23.000000000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          DataSet = frds1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1083#1072#1085)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 442.205010000000000000
          Top = 23.000000000000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          DataSet = frds1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1072#1082#1090)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 548.031781650000000000
          Top = 23.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          DataSet = frds1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1088#1091#1073'.')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 642.520031650000000000
          Top = 23.000000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          DataSet = frds1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '%')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 336.378170000000000000
          Top = 4.000000000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072', '#1088#1091#1073'. '#1074' '#1090'.'#1095'. '#1053#1044#1057)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 548.031850000000000000
          Top = 3.779527559999991000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        DataSet = frds1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1RecId: TfrxMemoView
          Align = baLeft
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          OnAfterData = 'frxDBDataset1RecIdOnAfterData'
          OnBeforePrint = 'Memo1OnBeforePrint'
          ShowHint = False
          DataSet = frds1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Num"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baLeft
          Left = 49.133890000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo1OnBeforePrint'
          ShowHint = False
          DataSet = frds1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."NAME"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 336.378170000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo1OnBeforePrint'
          ShowHint = False
          DataSet = frds1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
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
            '[frxDBDataset1."PLAN"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 442.205010000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo1OnBeforePrint'
          ShowHint = False
          DataSet = frds1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
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
            '[frxDBDataset1."FACT"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 548.031849999999900000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo1OnBeforePrint'
          ShowHint = False
          DataSet = frds1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
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
            '[frxDBDataset1."RB"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo1OnBeforePrint'
          ShowHint = False
          DataSet = frds1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
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
            '[frxDBDataset1."PROC"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 109.606370000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          Align = baLeft
          Top = 34.897650000000030000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1078#1080#1083#1086#1081' '#1092#1086#1085#1076)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Top = 53.795300000000030000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1085#1077' '#1078#1080#1083#1086#1081' '#1092#1086#1085#1076)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 336.378170000000000000
          Top = 34.897649999999970000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[sumPlanH]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 336.378170000000000000
          Top = 53.795299999999970000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[sumPlanUn]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 442.205010000000000000
          Top = 34.897650000000030000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[sumFactH]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 442.205010000000000000
          Top = 53.795300000000030000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[sumFactUn]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 548.031850000000000000
          Top = 34.897650000000030000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[sumRu]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 548.031850000000000000
          Top = 53.795300000000030000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[sumRuUn]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 642.520100000000000000
          Top = 34.897650000000030000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[sumProc]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 642.520100000000000000
          Top = 53.795300000000030000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[sumProcUn]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Top = 15.999999999999970000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086':')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 336.378170000000000000
          Top = 15.999999999999970000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[sumPlan]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 442.205010000000000000
          Top = 15.999999999999970000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[sumFact]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 548.031850000000000000
          Top = 15.999999999999970000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[sumRuAll]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 642.520100000000000000
          Top = 15.999999999999970000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[sumProcAll]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.677180000000000000
        Top = 415.748300000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object frds1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = m1
    BCDToCurrency = False
    Left = 424
    Top = 128
  end
  object rtfexp1: TfrxRTFExport
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
    Left = 496
    Top = 128
  end
  object dlgSave1: TSaveDialog
    Left = 392
    Top = 192
  end
  object Repository1: TcxEditRepository
    Left = 512
    Top = 232
    object ritm1: TcxEditRepositoryCalcItem
      Properties.DisplayFormat = ',0.00;-,0.00'
    end
  end
end
