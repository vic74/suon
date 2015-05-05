object PriceanalysForm: TPriceanalysForm
  Left = 0
  Top = 0
  Caption = #1040#1085#1072#1083#1080#1079' '#1094#1077#1085
  ClientHeight = 618
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 994
    Height = 618
    Align = alClient
    TabOrder = 0
    object docm1: TdxBarDockControl
      Left = 10
      Top = 10
      Width = 974
      Height = 26
      Align = dalTop
      BarManager = bm1
    end
    object grd1: TcxGrid
      Left = 10
      Top = 74
      Width = 273
      Height = 534
      TabOrder = 2
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_K
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FLAG: TcxGridDBColumn
          DataBinding.FieldName = 'FLAG'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.OnEditValueChanged = clv1FLAGPropertiesEditValueChanged
          Options.ShowCaption = False
          Width = 22
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 249
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 301
      Top = 42
      Width = 688
      Height = 566
      TabOrder = 3
      LockedStateImageOptions.Effect = lsieLight
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      LookAndFeel.NativeStyle = True
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_M
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.HeaderAutoHeight = True
        Preview.Visible = True
        Styles.Content = Style1
        Styles.StyleSheet = vStyleSheet2
        object clv2CLASSMAT: TcxGridDBColumn
          DataBinding.FieldName = 'CLASSMAT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2FULLNAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'FULLNAME'
          GroupIndex = 0
          Width = 178
        end
        object clv2KNAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'KNAME'
          Width = 163
        end
        object clv2QUANTITY: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'QUANTITY'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          Width = 83
        end
        object clv2PRICE: TcxGridDBColumn
          Caption = #1062#1077#1085#1072' ('#1089#1088#1077#1076#1085#1103#1103')'
          DataBinding.FieldName = 'PRICE'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
          SortIndex = 0
          SortOrder = soAscending
          Width = 84
        end
        object clv2PROC: TcxGridDBColumn
          Caption = '% '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103
          DataBinding.FieldName = 'PROC'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00%;-,0.00%'
          Width = 82
        end
        object clv2PRICE1: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'PRICE1'
          RepositoryItem = CurrencyItemEditRepository1CurrencyItem1
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object docm2: TdxBarDockControl
      Left = 10
      Top = 42
      Width = 273
      Height = 26
      Align = dalTop
      BarManager = bm1
    end
    object g1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxlytcxlkndfl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object glc1Group1: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = glc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 201
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object glc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = glc1Group4
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object glc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = glc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 273
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object split1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = glc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = g1
      Control = docm1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object glc1Group4: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = g1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itmlc1Item11: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = glc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item12: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = glc1Group2
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item13: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = glc1Group1
      Control = docm2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object bm1: TdxBarManager
    AlwaysSaveText = True
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
    ImageOptions.Images = cmDb.iml1
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 616
    Top = 120
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
      DockControl = docm1
      DockedDockControl = docm1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 940
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'itm_dt1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'itm_dt2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Exec'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Print'
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
      DockControl = docm2
      DockedDockControl = docm2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1013
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_CheckAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Uncheck'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object itm_dt1: TcxBarEditItem
      Caption = #1055#1077#1088#1080#1086#1076' '#1089
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076' '#1089
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ImmediatePost = True
    end
    object itm_dt2: TcxBarEditItem
      Caption = #1087#1086
      Category = 0
      Hint = #1087#1086
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object btn_Exec: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 26
      PaintStyle = psCaptionGlyph
      OnClick = btn_ExecClick
    end
    object btn_CheckAll: TdxBarButton
      Caption = #1054#1090#1084#1077#1090#1080#1090#1100' '#1074#1089#1077
      Category = 0
      Hint = #1054#1090#1084#1077#1090#1080#1090#1100' '#1074#1089#1077
      Visible = ivAlways
      ImageIndex = 5
      OnClick = btn_CheckAllClick
    end
    object btn_Uncheck: TdxBarButton
      Caption = #1057#1085#1103#1090#1100' '#1086#1090#1084#1077#1090#1082#1080
      Category = 0
      Hint = #1057#1085#1103#1090#1100' '#1086#1090#1084#1077#1090#1082#1080
      Visible = ivAlways
      ImageIndex = 6
      OnClick = btn_UncheckClick
    end
    object btn_Print: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = btn_PrintClick
    end
  end
  object ds_kontr: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT -1 FLAG,CODE,'
      '       NAME'
      'FROM KONTRAGENT'
      'where CODE<>1'
      'order by Name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 48
    Top = 168
  end
  object md_K: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 48
    Top = 216
  end
  object src_K: TDataSource
    DataSet = md_K
    Left = 80
    Top = 216
  end
  object ds_M: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select ws.CLASSMAT,c.FULLNAME, k.NAME KNAME, SUM(ws.QUANTITY) QU' +
        'ANTITY,'
      
        '       AVG(ws.PRICE) PRICE, 0 PROC, SUM(ws.PRICE * ws.QUANTITY) ' +
        'PRICE1'
      'from WORKSPECMATERIAL WS'
      ' left outer join CLASSMAT C on C.CODE = WS.CLASSMAT'
      ' left outer join KONTRAGENT k on k.CODE = ws.KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 664
    Top = 120
  end
  object md_M: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 696
    Top = 120
  end
  object src_M: TDataSource
    DataSet = md_M
    Left = 728
    Top = 120
  end
  object dxlytlkndflst1: TdxLayoutLookAndFeelList
    Left = 728
    Top = 184
    object dxlytcxlkndfl1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
  object EditRepository1: TcxEditRepository
    Left = 704
    Top = 272
    object CurrencyItemEditRepository1CurrencyItem1: TcxEditRepositoryCurrencyItem
      Properties.DisplayFormat = ',0.00;-,0.00'
    end
  end
  object ComponentPrinter1: TdxComponentPrinter
    CurrentLink = GridReportLink1
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageSetup, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPreferences, pvoPrint, pvoReportFileOperations, pvoPageMargins]
    Version = 0
    Left = 688
    Top = 368
    object GridReportLink1: TdxGridReportLink
      Active = True
      Component = grd2
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42079.888527106480000000
      ShrinkToPageWidth = True
      OptionsExpanding.ExpandGroupRows = True
      OptionsOnEveryPage.FilterBar = False
      OptionsView.FilterBar = False
      BuiltInReportLink = True
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = clv1NAME
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv2CLASSMAT
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv2FULLNAME
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv2KNAME
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv2PRICE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv2PRICE1
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv2PROC
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv2QUANTITY
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width')
      end>
    StorageName = 'prop1'
    Left = 624
    Top = 192
  end
  object StyleRepository1: TcxStyleRepository
    Left = 616
    Top = 248
    PixelsPerInch = 96
    object Style1: TcxStyle
    end
    object Style2: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object Style3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object Style4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object Style5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object Style6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object Style7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object Style8: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object Style9: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object Style10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object Style11: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object Style12: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object Style13: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object Style14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object Style15: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object vStyleSheet1: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
    object vStyleSheet2: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = Style2
      Styles.Content = Style3
      Styles.ContentEven = Style4
      Styles.ContentOdd = Style5
      Styles.FilterBox = Style6
      Styles.Inactive = Style11
      Styles.IncSearch = Style12
      Styles.Selection = Style15
      Styles.Footer = Style7
      Styles.Group = Style8
      Styles.GroupByBox = Style9
      Styles.Header = Style10
      Styles.Indicator = Style13
      Styles.Preview = Style14
      BuiltIn = True
    end
  end
end
