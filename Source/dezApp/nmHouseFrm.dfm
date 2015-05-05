object nmHouseForm: TnmHouseForm
  Left = 0
  Top = 0
  Caption = #1056#1072#1089#1093#1086#1076' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
  ClientHeight = 667
  ClientWidth = 912
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
    Width = 912
    Height = 667
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 258
      Top = 70
      Width = 644
      Height = 602
      TabOrder = 8
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_m1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv1SUMMA
          end
          item
            Kind = skSum
            Column = clv1QUANTITY
          end
          item
            Kind = skCount
            Column = clv1SNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object clv1DU: TcxGridDBColumn
          DataBinding.FieldName = 'DU'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DUNAME: TcxGridDBColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'DUNAME'
          Options.CellMerging = True
          Width = 125
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.CellMerging = True
          Width = 164
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.CellMerging = True
          Width = 44
        end
        object clv1SERVISMATERIAL: TcxGridDBColumn
          DataBinding.FieldName = 'SERVISMATERIAL'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1052#1072#1090#1077#1088#1080#1072#1083
          DataBinding.FieldName = 'NAME'
          Width = 164
        end
        object clv1ED: TcxGridDBColumn
          Caption = #1045#1076'.'#1080#1079#1084'.'
          DataBinding.FieldName = 'ED'
          Width = 49
        end
        object clv1QUANTITY: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'QUANTITY'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 46
        end
        object clv1PRICE: TcxGridDBColumn
          Caption = #1062#1077#1085#1072' '#1079#1072' '#1077#1076'.'
          DataBinding.FieldName = 'PRICE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 71
        end
        object clv1SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 74
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object dt1: TcxDateEdit
      Left = 73
      Top = 32
      Style.HotTrack = False
      TabOrder = 0
      Width = 153
    end
    object dt2: TcxDateEdit
      Left = 73
      Top = 54
      Style.HotTrack = False
      TabOrder = 1
      Width = 153
    end
    object grd2: TcxGrid
      Left = 11
      Top = 187
      Width = 215
      Height = 476
      TabOrder = 5
      LockedStateImageOptions.Effect = lsieLight
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_m2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object clv2FLAG: TcxGridDBColumn
          DataBinding.FieldName = 'FLAG'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv2FLAGPropertiesEditValueChanged
          Width = 30
          IsCaptionAssigned = True
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 142
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 40
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object btn_GetHouse: TcxButton
      Left = 11
      Top = 143
      Width = 215
      Height = 25
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1076#1086#1084#1086#1074
      TabOrder = 4
      OnClick = btn_GetHouseClick
    end
    object btn_Exec: TcxButton
      Left = 11
      Top = 628
      Width = 215
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 6
      OnClick = btn_ExecClick
    end
    object cbb_Kontr: TcxLookupComboBox
      Left = 11
      Top = 94
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_kontr
      Style.HotTrack = False
      TabOrder = 2
      Width = 215
    end
    object cbb_type: TcxComboBox
      Left = 73
      Top = 121
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1087#1086' '#1076#1086#1084#1091
        #1086#1073#1097#1080#1081)
      Properties.OnEditValueChanged = cbb_typePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 3
      Text = #1087#1086' '#1076#1086#1084#1091
      Width = 153
    end
    object doc1: TdxBarDockControl
      Left = 258
      Top = 14
      Width = 644
      Height = 29
      Align = dalTop
      BarManager = brm1
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
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grplc1Group1: TdxLayoutGroup
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 107
      SizeOptions.Width = 239
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object itm_dt1: TdxLayoutItem
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089
      Parent = grplc1Group1
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_dt2: TdxLayoutItem
      CaptionOptions.Text = #1087#1086
      Parent = grplc1Group1
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_kontr: TdxLayoutItem
      CaptionOptions.Text = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      CaptionOptions.Layout = clTop
      Offsets.Bottom = 5
      Parent = grplc1Group1
      Control = cbb_Kontr
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_type: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087' '#1086#1090#1095#1077#1090#1072
      Parent = grplc1Group1
      Control = cbb_type
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_GetHouse: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = btn_GetHouse
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1076#1086#1084#1086#1074
      CaptionOptions.Layout = clTop
      Parent = grplc1Group1
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itm_Exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = btn_Exec
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grplc1Group5: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object grplc1Group4: TdxLayoutGroup
      Parent = grplc1Group5
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 52
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_doc1: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 311
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Parent = grplc1Group5
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 32
      ButtonOptions.DefaultWidth = 32
      Index = 1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group3
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 672
    Top = 72
    object lcl1: TdxLayoutCxLookAndFeel
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = dt1
        Properties.Strings = (
          'Date')
      end
      item
        Component = dt2
        Properties.Strings = (
          'Date')
      end>
    StorageName = 'prop1'
    Left = 644
    Top = 72
  end
  object m1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 616
    Top = 440
  end
  object src_m1: TDataSource
    DataSet = m1
    Left = 645
    Top = 440
  end
  object m2: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 48
    Top = 232
  end
  object src_m2: TDataSource
    DataSet = m2
    Left = 80
    Top = 232
  end
  object ds1: TpFIBDataSet
    SelectSQL.Strings = (
      'select Distinct(ws.house),0 Flag,s.name SNAME,h.nomer'
      'from WORKSPECMATERIAL WS'
      
        '--left outer join SERVISMATERIAL SM on SM.CODE = WS.SERVISMATERI' +
        'AL'
      'Left outer join CLASSMAT C on C.CODE = WS.CLASSMAT'
      'left outer join house h on h.code=ws.house'
      'left outer join street s on s.code=h.street'
      ''
      'where WS.DATA between :D1 and :D2 and'
      '      WS.KONTRAGENT = :KONTR'
      'order by s.name,h.nomer')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 48
    Top = 280
  end
  object src_kontr: TDataSource
    Left = 312
    Top = 96
  end
  object fr1: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    OldStyleProgress = True
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
    Left = 312
    Top = 224
    Datasets = <
      item
        DataSet = fr1.Q1
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
        Database = fr1.fdb1
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
        Top = 18.897650000000000000
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
        Top = 185.196970000000000000
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
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        DataSet = fr1.Q1
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
        Top = 272.126160000000000000
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
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        object Rich2: TfrxRichView
          Align = baBottom
          Top = 71.811070000000000000
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
  object pm1: TPopupMenu
    Left = 456
    Top = 216
    object N1: TMenuItem
      Caption = #1089' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1082#1086#1081' '#1087#1086' '#1044#1059
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1073#1077#1079' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1082#1080' '#1087#1086' '#1044#1059
      OnClick = N2Click
    end
  end
  object brm1: TdxBarManager
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
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 568
    Top = 216
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
      FloatLeft = 753
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'sub1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_showAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_m29'
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
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_preview: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1089' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1082#1086#1081' '#1087#1086' '#1044#1059
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1089' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1082#1086#1081' '#1087#1086' '#1044#1059
      Visible = ivAlways
      PaintStyle = psCaptionGlyph
      OnClick = btn_previewClick
    end
    object sub1: TdxBarSubItem
      Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
      Category = 0
      Visible = ivNever
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000101
        01020101010401010106010101080101010B0101010C0101010D0101010C0101
        010B010101090101010701010104010101020101010100000000010101080101
        01110101011A010101220101012A01010131010101370101013B010101390101
        01340101012D010101260101011D010101140101010C01010103000000000000
        0000010101020101010301010105010101060101010701010107010101070101
        010601010105010101040202021C3D3D3DC71111113A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000002020218454545D78F8F8FE01010102400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000002020216373737D5747474D60A0A0A1D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000202
        02152F2F2FD3595959C806060614000000000000000000000000000000000000
        0000000000000000000001010107080808240505051100000000020202142A2A
        2AD2444444BA0303030C00000000000000000000000000000000000000000000
        0000010101092D2B2B8A858180F0A29D9CFD8F8B8AF8413F3FAB393939D43434
        34AB010101060000000000000000000000000000000000000000000000000000
        00024B4848B0D8D3D3FFE4DFDEFFE3DEDDFFE3DDDCFFDBD6D5FD6F6D6DE30303
        0316000000000000000000000000000000000000000000000000000000000F0F
        0F46D3D0CFFEECE9E8FFEAE5E5FFEAE6E5FFEBE7E7FFEAE6E6FFDAD6D6F72E2E
        2E7A000000000000000000000000000000000000000000000000000000003C3B
        3B82EFECECFFEEEAEAFFF2F0F0FFF3F1F1FFF3F1F1FFF3F1F1FFF3F1F0FF6766
        66AB000000000000000000000000000000000000000000000000000000003534
        3473F0EEEEFDF6F5F5FFF8F7F6FFF8F6F6FFF8F6F6FFF7F6F6FFF5F3F3FF4D4D
        4D84000000000000000000000000000000000000000000000000000000001D1D
        1D39A1A0A0C9F9F8F8FFFBFAFAFFFBFAFAFFFAF9F9FFF7F6F6FFB5B3B3CB3333
        335D000000000000000000000000000000000000000000000000000000000101
        01013F3F3F739F9F9FBFF8F8F7FCFAF9F9FFF9F8F8FFB6B4B4CB5555558D0909
        090B000000000000000000000000000000000000000000000000000000000000
        000004040404393939595353538B6F6F6FA65C5C5C943F3F3F6A0D0D0D0E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000001010101090909090202020200000000000000000000
        0000000000000000000000000000000000000000000000000000}
      AllowCustomizing = False
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_preview'
        end
        item
          Visible = True
          ItemName = 'btn_nodu'
        end>
      ItemOptions.ShowDescriptions = False
      ItemOptions.ShowShortCuts = True
      ItemOptions.Size = misNormal
    end
    object btn_nodu: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1073#1077#1079' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1082#1080' '#1087#1086' '#1044#1059
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1073#1077#1079' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1082#1080' '#1087#1086' '#1044#1059
      Visible = ivAlways
      OnClick = btn_noduClick
    end
    object btn_print: TdxBarButton
      Align = iaRight
      Caption = #1055#1077#1095#1072#1090#1100' '#1074#1089#1077#1093' '#1072#1076#1088#1077#1089#1086#1074
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1074#1089#1077#1093' '#1072#1076#1088#1077#1089#1086#1074
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000010101010101
        01020101010401010107010101090101010B0101010C0101010C0101010C0101
        010C0101010B0101010A01010107010101050101010301010101010101060101
        010B0303031314110F32231E1A4D231E1955221D195C221D1960221D1961221D
        195F221D1859221D1952221D194A0404041B0202020F01010108010101050101
        010B0101011439302776C2B5A9FFCDC3BAFFCCC2BAFFCCC2BAFFCCC2B9FFCBC2
        B9FFCBC1B9FFCBC1B8FF988574EF020202230101010F01010107000000002525
        252CBDBDBDD0B8B5B2F8A29A92FFB5B5B5FFB5B5B5FFB6B6B6FFB6B6B6FFB6B6
        B6FFB6B6B6FFB6B6B6FF95897EFDCECECEE85454545F00000000010101019393
        93A9E9E9E9FF959595FF5B5B5AFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
        5EFF5E5E5EFF5E5E5EFF5C5B5BFFDADADAFFDADADAF500000001000000009393
        93B0DDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
        DDFFDDDDDDFFDDDDDDFF76BC95FFB6CCC0FFD6D6D6FC00000002000000007777
        7798D0CECDFFC5B6ACFFC4B5AAFFC4B5AAFFC4B5AAFFC4B5AAFFC4B5AAFFC4B5
        AAFFC4B5AAFFC4B5AAFFB7AC9EFFC6BCB4FFB7B7B7E600000000000000001919
        1926AB9E97EF936342FF966746FF966746FF966746FF966746FF966746FF9667
        46FF966746FF966746FF966746FFA18069FF4848486500000000000000000000
        00001B1B1B2A766A62B7978F89F9D2D1D1FFD2D1D1FFD2D1D1FFD2D1D1FFD2D1
        D1FFD2D1D1FFBFBDBCFE807268D5383736550000000000000000000000000000
        000000000000000000003333333EF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
        F2FFF2F2F2FFC2C2C2D400000000000000000000000000000000000000000000
        000000000000000000003434343DF1F1F1FFF0F0F0FFF1F1F1FFF2F2F2FFF5F5
        F5FFF6F6F6FFC5C5C5D500000000000000000000000000000000000000000000
        000000000000000000003131313CF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
        F0FFF0F0F0FFBEBEBED300000000000000000000000000000000000000000000
        000000000000000000001C1C1C24868686968686869686868696868686968686
        8696868686966B6B6B7D00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_printClick
    end
    object btn_showAll: TdxBarButton
      Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
      Category = 0
      Hint = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000101
        01020101010401010106010101080101010B0101010C0101010D0101010C0101
        010B010101090101010701010104010101020101010100000000010101080101
        01110101011A010101220101012A01010131010101370101013B010101390101
        01340101012D010101260101011D010101140101010C01010103000000000000
        0000010101020101010301010105010101060101010701010107010101070101
        010601010105010101040202021C3D3D3DC71111113A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000002020218454545D78F8F8FE01010102400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000002020216373737D5747474D60A0A0A1D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000202
        02152F2F2FD3595959C806060614000000000000000000000000000000000000
        0000000000000000000001010107080808240505051100000000020202142A2A
        2AD2444444BA0303030C00000000000000000000000000000000000000000000
        0000010101092D2B2B8A858180F0A29D9CFD8F8B8AF8413F3FAB393939D43434
        34AB010101060000000000000000000000000000000000000000000000000000
        00024B4848B0D8D3D3FFE4DFDEFFE3DEDDFFE3DDDCFFDBD6D5FD6F6D6DE30303
        0316000000000000000000000000000000000000000000000000000000000F0F
        0F46D3D0CFFEECE9E8FFEAE5E5FFEAE6E5FFEBE7E7FFEAE6E6FFDAD6D6F72E2E
        2E7A000000000000000000000000000000000000000000000000000000003C3B
        3B82EFECECFFEEEAEAFFF2F0F0FFF3F1F1FFF3F1F1FFF3F1F1FFF3F1F0FF6766
        66AB000000000000000000000000000000000000000000000000000000003534
        3473F0EEEEFDF6F5F5FFF8F7F6FFF8F6F6FFF8F6F6FFF7F6F6FFF5F3F3FF4D4D
        4D84000000000000000000000000000000000000000000000000000000001D1D
        1D39A1A0A0C9F9F8F8FFFBFAFAFFFBFAFAFFFAF9F9FFF7F6F6FFB5B3B3CB3333
        335D000000000000000000000000000000000000000000000000000000000101
        01013F3F3F739F9F9FBFF8F8F7FCFAF9F9FFF9F8F8FFB6B4B4CB5555558D0909
        090B000000000000000000000000000000000000000000000000000000000000
        000004040404393939595353538B6F6F6FA65C5C5C943F3F3F6A0D0D0D0E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000001010101090909090202020200000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_showAllClick
    end
    object btn_m29: TdxBarButton
      Align = iaRight
      Caption = #1060#1086#1088#1084#1072' '#1052'29'
      Category = 0
      Hint = #1060#1086#1088#1084#1072' '#1052'29'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000010101010101
        01020101010401010107010101090101010B0101010C0101010C0101010C0101
        010C0101010B0101010A01010107010101050101010301010101010101060101
        010B0303031314110F32231E1A4D231E1955221D195C221D1960221D1961221D
        195F221D1859221D1952221D194A0404041B0202020F01010108010101050101
        010B0101011439302776C2B5A9FFCDC3BAFFCCC2BAFFCCC2BAFFCCC2B9FFCBC2
        B9FFCBC1B9FFCBC1B8FF988574EF020202230101010F01010107000000002525
        252CBDBDBDD0B8B5B2F8A29A92FFB5B5B5FFB5B5B5FFB6B6B6FFB6B6B6FFB6B6
        B6FFB6B6B6FFB6B6B6FF95897EFDCECECEE85454545F00000000010101019393
        93A9E9E9E9FF959595FF5B5B5AFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
        5EFF5E5E5EFF5E5E5EFF5C5B5BFFDADADAFFDADADAF500000001000000009393
        93B0DDDDDDFFDDDDDDFFD4DADEFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
        DDFFDDDDDDFFDDDDDDFF76BC95FFB6CCC0FFD6D6D6FC00000002000000007777
        7798D0CECDFFC5B6ACFF85B6C3FFB7B2AEFFC4B5AAFFC4B5AAFFC4B5AAFFC4B5
        AAFFC4B5AAFFC4B5AAFFB7AC9EFFC6BCB4FFB7B7B7E600000000000000001919
        1926AB9E97EF936342FF5A878CFF4D9396FF966746FF966746FF966746FF9667
        46FF966746FF966746FF966746FFA18069FF4848486500000000000000000000
        00001B1B1B2A766A62B727CEDAFB16CBEEFFBCC5CAFFD2D1D1FFD2D1D1FFD2D1
        D1FFD2D1D1FFBFBDBCFE807268D5383736550000000000000000000000000000
        000000000000000000000986939B3EC7EDFFABD4ECFFF2F2F2FFF2F2F2FFF2F2
        F2FFF2F2F2FFC2C2C2D400000000000000000000000000000000000000000000
        000000000000045363680997ADB61ECAF4FFE5E7E8FFF1F1F1FFF2F2F2FFF5F5
        F5FFF6F6F6FFC5C5C5D500000000000000000000000000000000000000000000
        00000000000004414A4E11EEF0FF14C8F7FFABD4E7FFF0F0F0FFF0F0F0FFF0F0
        F0FFF0F0F0FFBEBEBED300000000000000000000000000000000000000000000
        00000000000001141E1F11E7F2FF4299B9D14E71859986868696868686968686
        8696868686966B6B6B7D00000000000000000000000000000000000000000000
        000000000000000000000EC5E2EB0A84AABA0101010100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000002212E2F098ABBC30101010900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000001060A0A0103040700000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_m29Click
    end
  end
end
