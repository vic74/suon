object ReportForm: TReportForm
  Left = 0
  Top = 0
  Caption = 'ReportForm'
  ClientHeight = 549
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Ribbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 695
    Height = 24
    BarManager = ShowHouseForm.bm1
    ColorSchemeName = 'Office2010Blue'
    ShowTabGroups = False
    ShowTabHeaders = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object Ribbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Ribbon1Tab1'
      Groups = <>
      Index = 0
    end
  end
  object lcntr1: TdxLayoutControl
    Left = 0
    Top = 53
    Width = 695
    Height = 496
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = LCxSkin1
    ExplicitTop = 50
    ExplicitHeight = 499
    object pgrd1: TcxDBPivotGrid
      Left = 10
      Top = 10
      Width = 300
      Height = 250
      Align = alClient
      DataSource = src_rep
      Groups = <>
      OptionsData.SummaryNullIgnore = True
      OptionsView.ColumnGrandTotalWidth = 139
      OptionsView.RowGrandTotalWidth = 139
      TabOrder = 0
      object flCode: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 1
        IsCaptionAssigned = True
        Caption = #1054#1089#1084#1086#1090#1088
        DataBinding.FieldName = 'CODE'
        Visible = True
      end
      object flSRVDOG: TcxDBPivotGridField
        AreaIndex = 3
        DataBinding.FieldName = 'SRVDOG'
        Visible = True
      end
      object flSHOWDATE: TcxDBPivotGridField
        AreaIndex = 0
        DataBinding.FieldName = 'SHOWDATE'
        Visible = True
      end
      object flSTYPE: TcxDBPivotGridField
        AreaIndex = 1
        DataBinding.FieldName = 'STYPE'
        Visible = True
      end
      object flSYEAR: TcxDBPivotGridField
        AreaIndex = 4
        DataBinding.FieldName = 'SYEAR'
        Visible = True
      end
      object flSTATE: TcxDBPivotGridField
        AreaIndex = 2
        DataBinding.FieldName = 'STATE'
        Visible = True
      end
      object flHOUSENOM: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 2
        IsCaptionAssigned = True
        Caption = #1044#1086#1084
        DataBinding.FieldName = 'HOUSENOM'
        GroupExpanded = False
        Visible = True
        Width = 70
      end
      object flD1: TcxDBPivotGridField
        AreaIndex = 8
        IsCaptionAssigned = True
        Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
        DataBinding.ValueType = 'DateTime'
        DataBinding.FieldName = 'D1'
        Visible = True
        Width = 80
      end
      object flD2: TcxDBPivotGridField
        AreaIndex = 5
        DataBinding.ValueType = 'DateTime'
        DataBinding.FieldName = 'D2'
        Visible = True
      end
      object flshdate: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
        DataBinding.ValueType = 'DateTime'
        DataBinding.FieldName = 'shdate'
        GroupInterval = giDate
        GroupIntervalRange = 5
        TopValueShowOthers = True
        Visible = True
      end
      object flDOGNOM: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 3
        IsCaptionAssigned = True
        Caption = #1054#1089#1084#1086#1090#1088
        DataBinding.FieldName = 'DOGNOM'
      end
      object flKONTRNAME: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
        DataBinding.FieldName = 'KONTRNAME'
        Visible = True
      end
      object flprov: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = #1047#1072#1082#1086#1085#1095#1077#1085#1086
        DataBinding.FieldName = 'PROV'
        Visible = True
        Width = 62
      end
      object flPLANED: TcxDBPivotGridField
        AreaIndex = 7
        IsCaptionAssigned = True
        Caption = #1047#1072#1087#1083#1072#1085#1080#1088#1086#1074#1072#1085#1086
        DataBinding.FieldName = 'PLANED'
        Visible = True
        Width = 84
      end
      object flWeek: TcxDBPivotGridField
        AreaIndex = 6
        IsCaptionAssigned = True
        Caption = 'Week'
        DataBinding.FieldName = 'SHDATE'
        GroupInterval = giDateMonth
        GroupIntervalRange = 1
        Visible = True
      end
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = LCxSkin1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object Itm_pgrd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBPivotGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = pgrd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object LSkin1: TdxLayoutLookAndFeelList
    Left = 640
    object LCxSkin1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
    end
  end
  object bm1: TdxBarManager
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
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 464
    Top = 24
    DockControlHeights = (
      0
      0
      29
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
      FloatLeft = 721
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
          ItemName = 'btn2'
        end
        item
          Visible = True
          ItemName = 'ed_d1'
        end
        item
          Visible = True
          ItemName = 'ed_d2'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btn1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      OnClick = btn1Click
    end
    object btn2: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      OnClick = btn2Click
    end
    object ed_d1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object ed_d2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
  end
  object ds_rep: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '      s.CODE,'
      '      s.SRVDOG,sd.nomer DogNom,'
      '      k.name KontrName,'
      '      s.SHOWDATE,'
      '      s.STYPE,'
      '      s.SYEAR,'
      '      s.STATE,'
      '      sp.house,'
      '      h.nomer HouseNom,'
      '      1 planed,'
      '      sp.d1,'
      '      sp.d2,'
      '      iif(sp.showdate is null, current_date,sp.showdate) shdate,'
      '      iif(sp.showdate is null, 0,1) prov'
      'from SHOWHOUSE s'
      'left outer join showhouseplan sp on s.code=sp.showhouse'
      'left outer join house h on sp.house=h.code'
      'left outer join srvdog sd on s.srvdog=sd.code'
      'left outer join kontragent k on sd.kontragent=k.code')
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    Left = 288
    Top = 248
  end
  object src_rep: TDataSource
    DataSet = ds_rep
    Left = 320
    Top = 248
  end
  object mt_rep: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 288
    Top = 296
  end
end
