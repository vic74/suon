object OPURep2Form: TOPURep2Form
  Left = 0
  Top = 0
  Caption = #1057#1088#1086#1082#1080' '#1072#1082#1090#1086#1074' '#1074#1086#1076#1072' '#1074' '#1082#1086#1084#1084#1077#1088#1095#1077#1089#1082#1091#1102' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1102
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
        DataController.DataSource = src_WORKACT
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1OHNAME: TcxGridDBColumn
          Caption = #1059#1079#1077#1083
          DataBinding.FieldName = 'OHNAME'
          Width = 182
        end
        object clv1OTNAME: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'OTNAME'
          Width = 78
        end
        object clv1ACT_DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1074#1074#1086#1076#1072' '#1091#1079#1083#1072
          DataBinding.FieldName = 'ACT_DATA'
          Width = 96
        end
        object clv1LASTDATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1089#1088#1086#1082#1072' '#1072#1082#1090#1072
          DataBinding.FieldName = 'LASTDATA'
          Width = 91
        end
        object clv1GARANTDATE: TcxGridDBColumn
          Caption = #1041#1083#1080#1078#1072#1081#1096#1072#1103' '#1087#1086#1074#1077#1088#1082#1072' '#1087#1088#1080#1073#1086#1088#1072
          DataBinding.FieldName = 'GARANTDATE'
          Width = 98
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
    Components = <>
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
    Left = 728
    Top = 160
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
          UserDefine = [udWidth]
          UserWidth = 241
          Visible = True
          ItemName = 'bItm_street'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 69
          Visible = True
          ItemName = 'bItm_house'
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
    object bItm_street: TcxBarEditItem
      Caption = #1059#1083#1080#1094#1072
      Category = 0
      Hint = #1059#1083#1080#1094#1072
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_STREET
      Properties.OnEditValueChanged = bItm_streetPropertiesEditValueChanged
    end
    object bItm_house: TcxBarEditItem
      Caption = #1044#1086#1084
      Category = 0
      Hint = #1044#1086#1084
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NOMER'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_HOUSE
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
  object ds_WORKACT: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT OW.CODE,'
      '       OH.NAME OHNAME, OT.NAME OTNAME, OW.ACT_DATA, OW.LASTDATA,'
      '       min(OP.GARANTDATE) GARANTDATE'
      'FROM OPU_WORKACT OW'
      'left outer join OPU_DEVICE OD on OD.CODE = OW.DEVICE'
      'left outer join OPU_HOUSE OH on OH.CODE = OD.OPU_HOUSE'
      'left outer join OPU_TYPE OT on OT.CODE = OD.OPU_TYPE'
      'left outer join OPU_ELEMENT OE on OE.DEVICE = OW.DEVICE'
      'Left outer join OPU_PROVERKA OP on OP.ELEMENT = OE.CODE'
      'where OH.HOUSE = :house'
      'Group by OW.CODE, OH.NAME, OT.NAME , OW.ACT_DATA, OW.LASTDATA')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 232
    Top = 112
  end
  object src_WORKACT: TDataSource
    DataSet = ds_WORKACT
    Left = 260
    Top = 112
  end
end
