object POShablonSmetaForm: TPOShablonSmetaForm
  Left = 0
  Top = 0
  Caption = #1064#1072#1073#1083#1086#1085#1099' '#1089#1084#1077#1090' '#1055#1054
  ClientHeight = 650
  ClientWidth = 844
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
    Width = 844
    Height = 650
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object grd1: TcxGrid
      Left = 22
      Top = 47
      Width = 796
      Height = 203
      TabOrder = 0
      LockedStateImageOptions.Effect = lsieDark
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_MAKESMETASHABLON
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object clv1A: TcxGridDBColumn
          DataBinding.FieldName = 'A'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1APropertiesEditValueChanged
          Width = 23
        end
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Options.Editing = False
          Width = 39
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 74
        end
        object clv1SRVDOG: TcxGridDBColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
          Width = 53
        end
        object clv1HOUSESRV: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSESRV'
          Visible = False
        end
        object clv1SRV: TcxGridDBColumn
          DataBinding.FieldName = 'SRV'
          Visible = False
        end
        object clv1FIRM: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'FIRM'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = cmDb.src_FIRM
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 88
        end
        object clv1KONTRAGENTNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'KONTRAGENTNAME'
          Options.Editing = False
          Width = 144
        end
        object clv1HOUSESRVNAME: TcxGridDBColumn
          Caption = #1059#1089#1083#1091#1075#1072' ('#1041#1044#1056'1)'
          DataBinding.FieldName = 'HOUSESRVNAME'
          Options.Editing = False
          Width = 131
        end
        object clv1SRVNAME: TcxGridDBColumn
          Caption = #1059#1089#1083#1091#1075#1072' ('#1087#1088#1086#1095#1077#1077')'
          DataBinding.FieldName = 'SRVNAME'
          Options.Editing = False
          Width = 120
        end
        object clv1SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'SUMMA'
          Options.Editing = False
          Width = 80
        end
        object clv1kCODE: TcxGridDBColumn
          DataBinding.FieldName = 'kCODE'
          Visible = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 22
      Top = 355
      Width = 796
      Height = 269
      TabOrder = 7
      LockedStateImageOptions.Effect = lsieLight
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1076#1086#1078#1076#1080#1090#1077' '#1087#1086#1078#1072#1083#1091#1081#1089#1090#1072'...'
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.OnButtonClick = v2NavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = src_MAKESMETASHABLONSPEC
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv2STREETNAME
          end
          item
            Format = '0,000.00'
            Kind = skSum
            Column = clv2SUMMA
          end
          item
            Format = '0,000.00'
            Kind = skSum
            Column = clv2LIVING_SQ
          end
          item
            Format = '0,000.00'
            Kind = skSum
            Column = clv2commerce_sq
          end
          item
            Format = '0,000.00'
            Kind = skSum
            Column = clv2TOTAL_SQ
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = v2StylesGetContentStyle
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Width = 50
        end
        object clv2MAKESMETASHABLON: TcxGridDBColumn
          Caption = #1064#1072#1073#1083#1086#1085
          DataBinding.FieldName = 'MAKESMETASHABLON'
          Visible = False
        end
        object clv2STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          Options.Editing = False
          Width = 250
        end
        object clv2HOUSE: TcxGridDBColumn
          Caption = #1050#1086#1076' '#1076#1086#1084#1072
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          Width = 57
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 38
        end
        object clv2SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'SUMMA'
          Width = 91
        end
        object clv2LIVING_SQ: TcxGridDBColumn
          Caption = #1046#1080#1083#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'SQ1'
          Width = 106
        end
        object clv2commerce_sq: TcxGridDBColumn
          Caption = #1053#1077' '#1078#1080#1083#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'SQ2'
          Width = 108
        end
        object clv2NG: TcxGridDBColumn
          Caption = #1053#1077' '#1078#1080#1083#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'NG'
          Visible = False
          Options.Editing = False
          Width = 110
        end
        object clv2TOTAL_SQ: TcxGridDBColumn
          Caption = #1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'NG'
          Options.Editing = False
          Width = 106
        end
        object clv2srvdog: TcxGridDBColumn
          Caption = #1050#1086#1076' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'srvdog'
          Visible = False
          Width = 80
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object doc1: TdxBarDockControl
      Left = 22
      Top = 321
      Width = 796
      Height = 28
      Align = dalTop
      BarManager = bm1
    end
    object doc2: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 792
      Height = 28
      Align = dalTop
      BarManager = bm1
      Visible = False
    end
    object grd3: TcxGrid
      Left = 10000
      Top = 10000
      Width = 757
      Height = 272
      TabOrder = 10
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_md1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv3STNAME
          end
          item
            Format = '0,0.00'
            Kind = skSum
            Column = clv3BSUM
          end
          item
            Format = '0,0.00'
            Kind = skSum
            Column = clv3SHSUM
          end
          item
            Format = '0,0.00'
            Kind = skSum
            Column = clv3DSUM
          end
          item
            Format = '0,0.00'
            Kind = skSum
            Column = clv3SSUM
          end
          item
            Format = '0,0.00'
            Kind = skSum
            Column = clv3F3
          end
          item
            Format = '0,0.00'
            Kind = skSum
            Column = clv3SQ1
          end
          item
            Format = '0,0.00'
            Kind = skSum
            Column = clv3SQ2
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv3FLAG: TcxGridDBColumn
          DataBinding.FieldName = 'FLAG'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Width = 23
          IsCaptionAssigned = True
        end
        object clv3CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv3STNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STNAME'
          Options.Editing = False
          Width = 181
        end
        object clv3NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 38
        end
        object clv3F3: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100' '#1041#1044#1056
          DataBinding.FieldName = 'F3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00'
          Options.Editing = False
        end
        object clv3BSUM: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' ('#1041#1044#1056' '#1087#1083#1072#1085')'
          DataBinding.FieldName = 'BSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00'
          Options.Editing = False
          Width = 92
        end
        object clv3SHSUM: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' ('#1096#1072#1073#1083#1086#1085')'
          DataBinding.FieldName = 'SHSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00'
          Options.Editing = False
          Width = 84
        end
        object clv3DSUM: TcxGridDBColumn
          Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
          DataBinding.FieldName = 'DSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00'
          Options.Editing = False
          Width = 102
        end
        object clv3SSUM: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' ('#1089#1082#1086#1088#1088#1077#1082#1090'.)'
          DataBinding.FieldName = 'SSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00'
          Width = 89
        end
        object clv3SQ1: TcxGridDBColumn
          Caption = #1046#1080#1083#1072#1103' '#1087#1083#1086#1097#1072#1076#1100' ('#1096#1072#1073#1083#1086#1085')'
          DataBinding.FieldName = 'SQ1'
          Width = 74
        end
        object clv3SQ2: TcxGridDBColumn
          Caption = #1053#1077' '#1078#1080#1083#1072#1103' '#1087#1083#1086#1097#1072#1076#1100' ('#1096#1072#1073#1083#1086#1085')'
          DataBinding.FieldName = 'SQ2'
          Width = 81
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object doc3: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 29
      Height = 272
      Align = dalLeft
      BarManager = bm1
      Visible = False
    end
    object DiffInfo: TcxCheckListBox
      Left = 10000
      Top = 10000
      Width = 121
      Height = 97
      EditValueFormat = cvfStatesString
      Items = <>
      TabOrder = 5
      Visible = False
    end
    object cxButton1: TcxButton
      Left = 10000
      Top = 10000
      Width = 99
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 1
      Visible = False
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 10000
      Top = 10000
      Width = 106
      Height = 25
      Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 2
      Visible = False
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Left = 10000
      Top = 10000
      Width = 90
      Height = 25
      Caption = #1055#1086#1084#1077#1090#1080#1090#1100' '#1074#1089#1077
      TabOrder = 3
      Visible = False
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 10000
      Top = 10000
      Width = 106
      Height = 25
      Caption = #1057#1085#1103#1090#1100' '#1074#1089#1077' '#1087#1086#1084#1077#1090#1082#1080
      TabOrder = 4
      Visible = False
      OnClick = cxButton4Click
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 256
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object grplc1Group2: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103' '#1096#1072#1073#1083#1086#1085#1072
      Parent = grplc1Group3
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
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
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1064#1072#1073#1083#1086#1085#1099
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      SizeOptions.Width = 100
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group3: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 2
    end
    object grplc1Group4: TdxLayoutGroup
      CaptionOptions.Text = #1057#1088#1072#1074#1085#1077#1085#1080#1077' '#1089' '#1041#1044#1056' '#1087#1083#1072#1085
      Parent = grplc1Group3
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object itmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grplc1Group4
      Control = doc2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_grd3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group5
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item13: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grplc1Group5
      Control = doc3
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group5: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object CompareGroup: TdxLayoutGroup
      CaptionOptions.Text = #1057#1082#1072#1085#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1086#1074
      Parent = grplc1Group1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxCheckListBox1'
      CaptionOptions.Visible = False
      Parent = CompareGroup
      Control = DiffInfo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = CompareGroup
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lc1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lc1Group1
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lc1Item3: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = lc1Group1
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lc1Item4: TdxLayoutItem
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Parent = lc1Group1
      Control = cxButton3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lc1Item5: TdxLayoutItem
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Parent = lc1Group1
      Control = cxButton4
      ControlOptions.ShowBorder = False
      Index = 3
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
        Component = bitm_M
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = bitm_Y
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object ds_MAKESMETASHABLON: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '  s.Code,'
      '  s.SrvDog,'
      '  s.HouseSrv,'
      '  s.Srv,'
      
        '  (select Sum(Summa) from MakeSmetaShablonSpec where MakeSmetaSh' +
        'ablon=s.Code) Summa,'
      '  d.Nomer, k.CODE kCODE,'
      '  k.FullName KontragentName,'
      '  h.Name HouseSrvName,'
      '  a.Name SrvName, s.A'
      '  ,s.FIRM'
      'FROM MAKESMETASHABLON s'
      'left outer join SrvDog d on d.Code=s.SrvDog'
      'left outer join Kontragent k on k.Code=d.Kontragent'
      'left outer join HouseSrv h on h.Code=s.HouseSrv'
      'left outer join Srv a on a.Code=s.Srv')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 112
    Top = 152
  end
  object src_MAKESMETASHABLON: TDataSource
    DataSet = ds_MAKESMETASHABLON
    Left = 140
    Top = 152
  end
  object bm1: TdxBarManager
    AllowReset = False
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
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    SunkenBorder = True
    UseSystemFont = True
    Left = 408
    Top = 416
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
      FloatLeft = 884
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AdDog'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_CreateDoc'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Smeta'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_arhiv'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_LoadSmeta'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bar2: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
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
          ItemName = 'btn_Akt'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Smeta'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = doc2
      DockedDockControl = doc2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 884
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 121
          Visible = True
          ItemName = 'bitm_M'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bitm_Y'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_LoadBdr'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_ChangeTemplate'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bar4: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockControl = doc3
      DockedDockControl = doc3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 884
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_SelectAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_UnSelect'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_AdDog: TdxBarButton
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1076#1072#1085#1085#1099#1084#1080
      Category = 0
      Hint = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1076#1072#1085#1085#1099#1084#1080
      Visible = ivAlways
      OnClick = btn_AdDogClick
    end
    object btn_Akt: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1072#1082#1090#1072
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1072#1082#1090#1072
      Visible = ivAlways
    end
    object btn_Smeta: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1089#1084#1077#1090#1099
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1089#1084#1077#1090#1099
      Visible = ivAlways
      OnClick = btn_SmetaClick
    end
    object btn_CreateDoc: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Visible = ivAlways
      OnClick = btn_CreateDocClick
    end
    object bitm_M: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxComboBoxProperties'
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
      Properties.OnEditValueChanged = bitm_MPropertiesEditValueChanged
    end
    object bitm_Y: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxMaskEditProperties'
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
    end
    object btn_LoadBdr: TdxBarButton
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 18
      PaintStyle = psCaptionGlyph
      OnClick = btn_LoadBdrClick
    end
    object btn_ChangeTemplate: TdxBarButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1096#1072#1073#1083#1086#1085
      Category = 0
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1096#1072#1073#1083#1086#1085
      Visible = ivAlways
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
      OnClick = btn_ChangeTemplateClick
    end
    object btn_SelectAll: TdxBarButton
      Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
      Category = 0
      Hint = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
      Visible = ivAlways
      ImageIndex = 5
      OnClick = btn_SelectAllClick
    end
    object btn_UnSelect: TdxBarButton
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1077
      Category = 0
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1077
      Visible = ivAlways
      ImageIndex = 6
      OnClick = btn_UnSelectClick
    end
    object btn_arhiv: TdxBarButton
      Caption = #1040#1088#1093#1080#1074' '#1096#1072#1073#1083#1086#1085#1086#1074
      Category = 0
      Hint = #1040#1088#1093#1080#1074' '#1096#1072#1073#1083#1086#1085#1086#1074
      Visible = ivAlways
      OnClick = btn_arhivClick
    end
    object btn_LoadSmeta: TdxBarButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1089#1084#1077#1090#1091
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1089#1084#1077#1090#1091
      Visible = ivAlways
      OnClick = btn_LoadSmetaClick
    end
  end
  object ds_MAKESMETASHABLONSPEC: TpFIBDataSet
    SelectSQL.Strings = (
      'select MS.CODE, MS.MAKESMETASHABLON,'
      '       S.name StreetName,'
      '       MS.HOUSE, H.nomer, MS.SQ1, MS.SQ2,'
      '       MS.SUMMA, sh.srvdog, '
      '       (MS.SQ1 + MS.SQ2) NG'
      '       --,Sum(hl.total) NG'
      'from MAKESMETASHABLONSPEC MS'
      'left outer join house h on h.code=ms.house'
      'left outer join street s on s.code=h.street'
      
        'left outer join housenglist hl on hl.house = ms.house and hl.nac' +
        'h>0'
      
        'left outer join srvdoghouse sh on sh.house =ms.house and sh.srvd' +
        'og =:dog')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    Left = 88
    Top = 384
  end
  object src_MAKESMETASHABLONSPEC: TDataSource
    DataSet = ds_MAKESMETASHABLONSPEC
    Left = 116
    Top = 384
  end
  object md1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 344
    Top = 416
  end
  object src_md1: TDataSource
    DataSet = md1
    Left = 376
    Top = 416
  end
  object ds_BDR: TpFIBDataSet
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 272
    Top = 472
  end
  object ppm1: TcxGridPopupMenu
    Grid = grd1
    PopupMenus = <
      item
        GridView = v1
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = pm1
      end>
    Left = 512
    Top = 160
  end
  object pm1: TPopupMenu
    Images = cmDb.iml1
    Left = 544
    Top = 160
    object N1: TMenuItem
      Caption = #1054#1090#1084#1077#1090#1080#1090#1100' '#1074#1089#1077
      ImageIndex = 5
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1057#1085#1103#1090#1100' '#1086#1090#1084#1077#1090#1082#1080
      ImageIndex = 6
      OnClick = N2Click
    end
  end
end
