object OPURep1Form: TOPURep1Form
  Left = 0
  Top = 0
  Caption = #1050#1086#1085#1090#1088#1086#1083#1100' '#1089#1088#1086#1082#1086#1074' '#1087#1086#1074#1077#1088#1082#1080' '#1087#1088#1080#1073#1086#1088#1086#1074
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
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_PROVERKA
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
          Width = 44
        end
        object clv1OHCODE: TcxGridDBColumn
          DataBinding.FieldName = 'OHCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1OHNAME: TcxGridDBColumn
          Caption = #1059#1079#1077#1083
          DataBinding.FieldName = 'OHNAME'
          Width = 143
        end
        object clv1OTNAME: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'OTNAME'
          Width = 52
        end
        object clv1OMCODE: TcxGridDBColumn
          DataBinding.FieldName = 'OMCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1OMNAME: TcxGridDBColumn
          Caption = #1055#1088#1080#1073#1086#1088
          DataBinding.FieldName = 'OMNAME'
          Width = 260
        end
        object clv1OENOMER: TcxGridDBColumn
          Caption = #1057#1077#1088'. '#8470
          DataBinding.FieldName = 'OENOMER'
          Width = 83
        end
        object clv1OUTDATE: TcxGridDBColumn
          DataBinding.FieldName = 'OUTDATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1INDATE: TcxGridDBColumn
          DataBinding.FieldName = 'INDATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1GARANTDATE: TcxGridDBColumn
          Caption = #1043#1086#1076#1077#1085' '#1076#1086
          DataBinding.FieldName = 'GARANTDATE'
          Width = 80
        end
        object clv1ELEMENT: TcxGridDBColumn
          DataBinding.FieldName = 'ELEMENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1OKNAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'OKNAME'
          Width = 188
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
    object LItem1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
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
    Components = <
      item
        Component = bItm1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = bItm2
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 728
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
    Left = 592
    Top = 264
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
          ItemName = 'bItm1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bItm2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Exec'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Export'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bItm1: TcxBarEditItem
      Caption = #1055#1077#1088#1080#1086#1076' '#1089
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076' '#1089
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object bItm2: TcxBarEditItem
      Caption = #1087#1086
      Category = 0
      Hint = #1087#1086
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object btn_Exec: TdxBarButton
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 26
      PaintStyle = psCaptionGlyph
      OnClick = btn_ExecClick
    end
    object btn_Export: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Category = 0
      Enabled = False
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 16
      PaintStyle = psCaptionGlyph
      OnClick = btn_ExportClick
    end
  end
  object fds_PROVERKA: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT OP.CODE, OH.CODE OHCODE, OH.NAME OHNAME,'
      '       OT.NAME OTNAME, OM.CODE OMCODE, OM.NAME OMNAME,'
      '       OE.NOMER OENOMER,'
      '       OP.OUTDATE, '
      '       OP.INDATE, '
      '       OP.KONTRAGENT, OK.NAME OKNAME,'
      '       OP.GARANTDATE, '
      '       OP.ELEMENT'
      'FROM OPU_PROVERKA OP'
      'left outer join OPU_ELEMENT OE on oe.CODE = op.ELEMENT'
      'left outer join OPU_DEVICE OD on OD.CODE = OE.DEVICE'
      'left outer join OPU_HOUSE OH on OH.CODE = OD.OPU_HOUSE'
      'left outer join OPU_TYPE OT on OT.CODE = OD.OPU_TYPE'
      'left outer join OPU_DEVICEMARK OM on OM.CODE = OE.DEVICEMARK'
      'left outer join OPU_KONTRAGENT OK on OK.CODE = OP.KONTRAGENT'
      'where OP.GARANTDATE BETWEEN :D1 and :D2')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 488
    Top = 104
  end
  object src_PROVERKA: TDataSource
    DataSet = fds_PROVERKA
    Left = 520
    Top = 104
  end
  object xls1: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    Dictionary = <>
    _Version = '1.9.0.2'
    Left = 624
    Top = 264
  end
  object dlgSave1: TSaveDialog
    Left = 488
    Top = 160
  end
end
