object MatRepDetailForm: TMatRepDetailForm
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1084#1072#1090#1077#1088#1080#1072#1083#1072#1084' ('#1053#1072#1088#1103#1076#1099')'
  ClientHeight = 618
  ClientWidth = 913
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
    Width = 913
    Height = 618
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object grd1: TcxGrid
      Left = 10
      Top = 42
      Width = 838
      Height = 260
      TabOrder = 1
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_WS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1QUANTITY
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1SUMMA
          end
          item
            Kind = skCount
            Column = clv1KNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1Flag: TcxGridDBColumn
          DataBinding.FieldName = 'FLAG'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.OnEditValueChanged = clv1FlagPropertiesEditValueChanged
          Options.ShowCaption = False
          Width = 20
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'KNAME'
          Options.Editing = False
          Width = 183
        end
        object clv1CLASSMAT: TcxGridDBColumn
          DataBinding.FieldName = 'CLASSMAT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
          DataBinding.FieldName = 'NAME'
          Options.Editing = False
          Width = 188
        end
        object clv1ED: TcxGridDBColumn
          Caption = #1045#1076'. '#1080#1079#1084'.'
          DataBinding.FieldName = 'ED'
          Options.Editing = False
          Width = 49
        end
        object clv1QUANTITY: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'QUANTITY'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Options.Editing = False
          Width = 90
        end
        object clv1SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Options.Editing = False
          Width = 97
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 10
      Top = 334
      Width = 838
      Height = 260
      TabOrder = 2
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_detail
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = clv2QUANTITY
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clv2SUMMA
          end
          item
            Format = #1057#1091#1084#1084#1072' = 0.00'
            Kind = skSum
            Column = clv2SUMMA
          end
          item
            Format = #1050#1086#1083'-'#1074#1086' = 0.00'
            Kind = skSum
            Column = clv2QUANTITY
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv2QUANTITY
          end
          item
            Kind = skCount
            Column = clv2KNAME
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv2SUMMA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv2KNAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'KNAME'
          Width = 143
        end
        object clv2DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 73
        end
        object clv2CLASSMAT: TcxGridDBColumn
          DataBinding.FieldName = 'CLASSMAT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'NAME'
          Width = 156
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 127
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 41
        end
        object clv2QUANTITY: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'QUANTITY'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 56
        end
        object clv2PRICE: TcxGridDBColumn
          Caption = #1062#1077#1085#1072
          DataBinding.FieldName = 'PRICE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 85
        end
        object clv2SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 76
        end
        object clv2NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 221
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object docm1: TdxBarDockControl
      Left = 10
      Top = 10
      Width = 838
      Height = 26
      Align = dalTop
      BarManager = bm1
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object glc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object glc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object glc1Group3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 3
    end
    object split1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = glc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item11: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = glc1Group3
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = glc1Group1
      Control = docm1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = itm_D1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = itm_D2
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object ds_WS: TpFIBDataSet
    SelectSQL.Strings = (
      'select -1 FLAG,WS.CLASSMAT, C.FULLNAME name, C.ED, k.NAME KNAME,'
      '       sum(WS.QUANTITY) QUANTITY,'
      '       sum(WS.QUANTITY * WS.PRICE) SUMMA'
      'from WORKSPECMATERIAL WS'
      ' left outer join CLASSMAT C on C.CODE = WS.CLASSMAT'
      ' left outer join WORKSPECLIST wl on wl.code=ws.workspeclist'
      ' left outer join worklist w on w.code=wl.worklist'
      ' left outer join KONTRAGENT k on k.CODE = ws.KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 448
    Top = 136
    oRefreshAfterPost = False
  end
  object src_WS: TDataSource
    DataSet = md_WS
    Left = 504
    Top = 136
  end
  object bm1: TdxBarManager
    AlwaysSaveText = True
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
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 552
    Top = 208
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
      FloatLeft = 892
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
          ItemName = 'btn_Unchek'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'itm_D1'
        end
        item
          Visible = True
          ItemName = 'itm_D2'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 182
          Visible = True
          ItemName = 'itm_kontr'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Exec'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Analiz'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object itm_D1: TcxBarEditItem
      Caption = #1055#1077#1088#1080#1086#1076' '#1089
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076' '#1089
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ImmediatePost = True
      InternalEditValue = 41202d
    end
    object itm_D2: TcxBarEditItem
      Caption = #1087#1086
      Category = 0
      Hint = #1087#1086
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ImmediatePost = True
      InternalEditValue = 41202d
    end
    object itm_kontr: TcxBarEditItem
      Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      Category = 0
      Hint = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.CaseSensitiveSearch = True
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_kontr
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
    object btn_Analiz: TdxBarButton
      Caption = #1040#1085#1072#1083#1080#1079' '#1094#1077#1085
      Category = 0
      Hint = #1040#1085#1072#1083#1080#1079' '#1094#1077#1085
      Visible = ivAlways
      ImageIndex = 19
      PaintStyle = psCaptionGlyph
      OnClick = btn_AnalizClick
    end
    object btn_CheckAll: TdxBarButton
      Caption = #1054#1090#1084#1077#1090#1080#1090#1100' '#1074#1089#1077
      Category = 0
      Hint = #1054#1090#1084#1077#1090#1080#1090#1100' '#1074#1089#1077
      Visible = ivAlways
      ImageIndex = 5
      OnClick = btn_CheckAllClick
    end
    object btn_Unchek: TdxBarButton
      Caption = #1057#1085#1103#1090#1100' '#1086#1090#1084#1077#1090#1082#1080
      Category = 0
      Hint = #1057#1085#1103#1090#1100' '#1086#1090#1084#1077#1090#1082#1080
      Visible = ivAlways
      ImageIndex = 6
      OnClick = btn_UnchekClick
    end
  end
  object src_kontr: TDataSource
    Left = 477
    Top = 168
  end
  object ds_detail: TpFIBDataSet
    SelectSQL.Strings = (
      'select k.NAME KNAME, wl.DATA, WS.CLASSMAT,sw.NAME, ws.HOUSE,'
      '       s.NAME SNAME, h.NOMER, ws.QUANTITY, ws.PRICE,'
      '       (ws.QUANTITY * ws.PRICE) SUMMA, wl.NOTE'
      'from WORKSPECMATERIAL WS'
      ' left outer join CLASSMAT C on C.CODE = WS.CLASSMAT'
      ' left outer join WORKSPECLIST wl on wl.code=ws.workspeclist'
      ' left outer join worklist w on w.code=wl.worklist'
      ' left outer join SERVISWORK sw on sw.CODE = ws.SERVISWORK'
      ' left outer join house h on h.CODE = ws.HOUSE'
      ' left outer JOIN street s on s.CODE = h.STREET'
      ' left outer join KONTRAGENT k on k.CODE = ws.KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 456
    Top = 352
  end
  object src_detail: TDataSource
    DataSet = ds_detail
    Left = 488
    Top = 352
  end
  object md_WS: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 536
    Top = 136
  end
end
