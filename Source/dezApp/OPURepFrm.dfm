object OPURepForm: TOPURepForm
  Left = 0
  Top = 0
  Caption = #1054#1073#1097#1080#1081' '#1086#1090#1095#1077#1090' '#1087#1086' '#1078#1080#1083#1092#1086#1085#1076#1091
  ClientHeight = 588
  ClientWidth = 858
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
    Top = 26
    Width = 858
    Height = 562
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    ExplicitTop = 0
    ExplicitHeight = 588
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 838
      Height = 208
      TabOrder = 0
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_md
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv1Column1: TcxGridDBColumn
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 10
      Top = 241
      Width = 838
      Height = 311
      TabOrder = 2
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_detail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2OPU_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'OPU_TYPE'
          Visible = False
          VisibleForCustomization = False
          Width = 113
        end
        object clv2OTNAME: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'OTNAME'
          Width = 140
        end
        object clv2TU_DATA: TcxGridDBColumn
          Caption = #1058#1059
          DataBinding.FieldName = 'TU_DATA'
          Width = 80
        end
        object clv2PROJ_DATE: TcxGridDBColumn
          Caption = #1055#1088#1086#1077#1082#1090
          DataBinding.FieldName = 'PROJ_DATE'
          Width = 95
        end
        object clv2INST_DATE: TcxGridDBColumn
          Caption = #1059#1089#1090#1072#1085#1086#1074#1083#1077#1085
          DataBinding.FieldName = 'INST_DATE'
          Width = 86
        end
        object clv2INST_KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'INST_KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2TU_KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'TU_KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2PROJ_KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'PROJ_KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2LASTDATA: TcxGridDBColumn
          Caption = #1044#1086#1087#1091#1089#1082' '#1076#1086
          DataBinding.FieldName = 'LASTDATA'
          Width = 78
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object doc1: TdxBarDockControl
      Left = 10
      Top = 232
      Width = 838
      Align = dalTop
      BarManager = BarManager1
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
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object lgrplc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object LItemlc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object LItemlc1Item11: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group2
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemlc1Item12: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group2
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 808
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = True
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 784
    Top = 120
  end
  object BarManager1: TdxBarManager
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
    Left = 760
    Top = 120
    DockControlHeights = (
      0
      0
      26
      0)
    object br1: TdxBar
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
      FloatLeft = 884
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Excel'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object br2: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 884
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_print'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object btn1: TdxBarButton
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 26
      PaintStyle = psCaptionGlyph
      OnClick = btn1Click
    end
    object btn_print: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      OnClick = btn_printClick
    end
    object btn_Excel: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074'  Excel'
      Category = 0
      Enabled = False
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074'  Excel'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = btn_ExcelClick
    end
  end
  object ds_HOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT H.CODE HOUSE, S.NAME SNAME, H.NOMER, H.STREET,'
      '       IIF(OH.ISIP=1,1,0) MODEM,'
      '       IIF(OH.CODE IS NULL, 0, OH.CODE) OPU_HOUSE'
      'FROM HOUSE H'
      'LEFT OUTER JOIN STREET S ON S.CODE = H.STREET'
      'LEFT OUTER JOIN OPU_HOUSE OH ON OH.HOUSE = H.CODE'
      'WHERE H.A = 1'
      'ORDER BY H.CODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 512
    Top = 120
  end
  object src_md: TDataSource
    DataSet = md
    Left = 540
    Top = 184
  end
  object md: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 512
    Top = 184
  end
  object Repository1: TcxEditRepository
    Left = 352
    Top = 96
    object RItem1: TcxEditRepositoryCheckBoxItem
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
    end
  end
  object fds_Detail: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT OD.CODE, OD.OPU_TYPE, OT.NAME OTNAME, OD.INST_DATE,'
      '       OD.INST_KONTRAGENT, OD.TU_DATA,'
      '       OD.TU_KONTRAGENT, OD.PROJ_DATE,'
      '       OD.PROJ_KONTRAGENT, MAX(ow.LASTDATA) LASTDATA'
      'FROM OPU_DEVICE OD'
      'left outer join OPU_WORKACT ow on ow.DEVICE = od.CODE'
      'left OUTER join OPU_TYPE ot on ot.CODE = od.OPU_TYPE'
      'where od.OPU_HOUSE =:OHOUSE'
      'GROUP BY OD.CODE, OD.OPU_TYPE,OT.NAME, OD.INST_DATE,'
      '       OD.INST_KONTRAGENT, OD.TU_DATA,'
      '       OD.TU_KONTRAGENT, OD.PROJ_DATE,'
      '       OD.PROJ_KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 528
    Top = 304
  end
  object src_detail: TDataSource
    DataSet = fds_Detail
    Left = 556
    Top = 304
  end
  object fr1: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41259.969286574070000000
    ReportOptions.LastChange = 41259.969286574070000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 272
    Top = 344
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dlgSave1: TSaveDialog
    Left = 200
    Top = 120
  end
end
