object ObjForm: TObjForm
  Left = 0
  Top = 0
  Caption = #1054#1073#1098#1077#1082#1090#1085#1099#1081' '#1078#1091#1088#1085#1072#1083
  ClientHeight = 738
  ClientWidth = 1014
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
    Left = 27
    Top = 53
    Width = 987
    Height = 685
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 1014
    ExplicitHeight = 738
    object grd2: TcxGrid
      Left = 10
      Top = 365
      Width = 967
      Height = 310
      TabOrder = 2
      object vb2: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = vb1CellClick
        DataController.DataSource = src_Obj
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Bands = <
          item
            Options.HoldOwnColumnsOnly = True
            Width = 290
          end
          item
            Caption = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1081' '#1082#1086#1085#1090#1088#1086#1083#1100' '#1082#1072#1095#1077#1089#1090#1074#1072' '#1088#1072#1073#1086#1090' '#1055#1054
            Options.HoldOwnColumnsOnly = True
            Width = 291
          end
          item
            Caption = #1055#1088#1080#1077#1084#1082#1072' '#1088#1072#1073#1086#1090#1099' '#1057#1069
            Options.HoldOwnColumnsOnly = True
            Width = 329
          end
          item
            Options.HoldOwnColumnsOnly = True
            Visible = False
            VisibleForCustomization = False
            Width = 117
          end>
        object clvb2CODE: TcxGridDBBandedColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 44
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2TRFACT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TRFACT'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2POFACTDATE: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072' '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090' '#1085#1072' '#1086#1073#1098#1077#1082#1090#1077' '#1055#1054
          DataBinding.FieldName = 'POFACTDATE'
          Width = 112
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2PHASE: TcxGridDBBandedColumn
          Caption = #1069#1090#1072#1087' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'PHASE'
          Width = 89
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2PODATE: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'PODATE'
          Width = 78
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2PORESULT: TcxGridDBBandedColumn
          Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
          DataBinding.FieldName = 'PORESULT'
          Width = 86
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2POPLANDATE: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1085#1080#1088#1091#1077#1084#1072#1103' '#1076#1072#1090#1072' '#1089#1076#1072#1095#1080' '#1088#1072#1073#1086#1090#1099' '#1057#1069
          DataBinding.FieldName = 'POPLANDATE'
          Width = 82
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2OSDATE: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'OSDATE'
          Width = 59
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2OSRESULT: TcxGridDBBandedColumn
          Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
          DataBinding.FieldName = 'OSRESULT'
          Width = 73
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2OSDOC: TcxGridDBBandedColumn
          Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1086#1086#1073#1086#1088#1086#1090
          DataBinding.FieldName = 'OSDOC'
          Visible = False
          VisibleForCustomization = False
          Width = 84
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2FACTCOST: TcxGridDBBandedColumn
          Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1074#1099#1087#1086#1083#1085#1077#1085#1099#1093' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'FACTCOST'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2DOC: TcxGridDBBandedColumn
          Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1086#1086#1073#1086#1088#1086#1090
          DataBinding.FieldName = 'DOC'
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2AKTTYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AKTTYPE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object l2: TcxGridLevel
        GridView = vb2
      end
    end
    object grd3: TcxGrid
      Left = 10
      Top = 10
      Width = 967
      Height = 332
      TabOrder = 0
      object v3: TcxGridDBTableView
        OnKeyUp = v3KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = vb1CellClick
        DataController.DataSource = src_trfact
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv1SUMMA
          end
          item
            Kind = skSum
            Column = clv1NSUMMA
          end
          item
            Kind = skCount
            Column = clv1STATE
          end>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        object clv1TRDOPSTATE: TcxGridDBColumn
          DataBinding.FieldName = 'TRDOPSTATE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = cmDb.iml1
          Properties.Items = <
            item
              Description = #1047#1072#1087#1080#1089#1100' '#1079#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1072
              ImageIndex = 4
              Value = 1
            end>
          Properties.ShowDescriptions = False
          HeaderGlyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFBFBFB
            F4F4F4EAEAEADADADACACACAC0C0C0BABABABCBCBCC3C3C3CECECEDDDDDDEBEB
            EBF3F3F3F8F8F8FDFDFDFFFFFFFEFEFEF9F9F9C2C2C2A1A1A17E7E7E7F7F7F88
            88888A8A8A838383828282A2A2A2C1C1C1F7F7F7FCFCFCFFFFFFFFFFFFFFFFFF
            FFFFFFD0D0D0D6D6D6B7B7B7C1C1C1CFCFCFD1D1D1C3C3C3B6B6B6D5D5D5D1D1
            D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1D8D8D8B8B8B8C1C1C1D0
            D0D0D1D1D1C3C3C3B7B7B7D6D6D6D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFCFCFCFD9D9D9B3B3B3BEBEBED1D1D1D3D3D3C1C1C1B1B1B1D6D6D6D0D0
            D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEDBDBDBB1B1B1BBBBBBCD
            CDCDCFCFCFBDBDBDADADADD8D8D8CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFD1D1D1E4E4E4B9B9B9BFBFBFCFCFCFD1D1D1C1C1C1B5B5B5E2E2E2D1D1
            D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1E6E6E6BDBDBDC1C1C1CF
            CFCFD1D1D1C3C3C3BBBBBBE4E4E4D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFD8D8D8BFC0C0BFBFBFD5D5D5DFDFDFE1E1E1D7D7D7C7C7C7C1C1C1D0D0
            D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B1B2DADADAFFFFFFFF
            FFFFFFFFFFFFFFFFEFEFEFAFB0B1E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFB2B3B3D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFEEEEEEADAEAFE6E6
            E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C2C2C2C2C3FFFFFFFF
            FFFFFFFFFFFFFFFFDADADA9D9E9FF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFDBDBDB999A9AF2F2F2FFFFFFFFFFFFFAFAFAA2A2A3C0C1C1FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8DCDCDCBBBBBBB1
            B2B2B2B2B2BFBFBFD7D7D8F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF7F7F7E3E3E3C2C3C3BFC0C0E1E2E2F5F5F5FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Options.Editing = False
          Options.ShowCaption = False
          Width = 24
          IsCaptionAssigned = True
        end
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object clv1STATE: TcxGridDBColumn
          Caption = #1057#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'STATE'
          Visible = False
          Options.Editing = False
          Width = 144
        end
        object clv3FSTATENAME: TcxGridDBColumn
          Caption = #1057#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'FSTATENAME'
          Width = 190
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 174
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 32
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'DATA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Visible = False
          VisibleForCustomization = False
          Width = 76
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MNAME'
          Options.Editing = False
          Width = 176
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Options.Editing = False
          Width = 164
        end
        object clv1MANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FIO: TcxGridDBColumn
          Caption = #1054#1090#1074'. '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'FIO'
          Options.Editing = False
          Width = 164
        end
        object clv1NCALC: TcxGridDBColumn
          Caption = #8470' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALC'
          Options.Editing = False
          Width = 75
        end
        object clv1NCALCDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALCDATE'
          Options.Editing = False
          Width = 83
        end
        object clv3SMETA: TcxGridDBColumn
          Caption = #1060#1072#1081#1083' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'SMETA'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = cmDb.iml1
          Properties.Items = <
            item
              Description = #1092#1072#1081#1083' '#1089#1084#1077#1090#1099
              ImageIndex = 27
              Value = 1
            end>
          Properties.ShowDescriptions = False
          HeaderImageIndex = 27
          Width = 56
        end
        object clv1NSUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1089#1084#1077#1090#1077
          DataBinding.FieldName = 'NSUMMA'
          Options.Editing = False
          Width = 78
        end
        object clv1NDOP: TcxGridDBColumn
          Caption = #8470' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'NDOP'
          Options.Editing = False
          Width = 75
        end
        object clv1SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1088#1072#1073#1086#1090' '#1092#1072#1082#1090
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          Options.Editing = False
        end
        object clv1PLANCODE: TcxGridDBColumn
          Caption = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1089#1090#1088#1086#1082#1091' '#1087#1083#1072#1085#1072
          DataBinding.FieldName = 'PLANCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1TRDOPSOG: TcxGridDBColumn
          Caption = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1089#1090#1088#1086#1082#1091' '#1076#1086#1087#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'TRDOPSOG'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1TRDOP: TcxGridDBColumn
          DataBinding.FieldName = 'TRDOP'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1D1: TcxGridDBColumn
          Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1076#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'D1'
          Options.Editing = False
          Width = 74
        end
        object clv1D2: TcxGridDBColumn
          Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1076#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'D2'
          Options.Editing = False
          Width = 82
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          DataBinding.FieldName = 'NOTE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ValidateOnEnter = True
          Options.Editing = False
          Width = 194
        end
        object clv1DPLACE: TcxGridDBColumn
          Caption = #1052#1077#1089#1090#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1088#1077#1084#1086#1085#1090#1072
          DataBinding.FieldName = 'DPLACE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ValidateOnEnter = True
          Options.Editing = False
          Width = 161
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object doc1: TdxBarDockControl
      Left = 10
      Top = 333
      Width = 967
      Height = 26
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
    object lgrplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = #1069#1090#1072#1087#1099' '#1088#1072#1073#1086#1090#1099
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
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
      Parent = lgrplc1Group1
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      Parent = grp1
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item2: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = lgrplc1Group1
      Control = doc1
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
        Component = bI_d1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = bI_d2
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object BarManager1: TdxBarManager
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
    Left = 624
    Top = 200
    DockControlHeights = (
      27
      0
      53
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
      FloatLeft = 1028
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 104
          Visible = True
          ItemName = 'cbb_type'
        end
        item
          Visible = True
          ItemName = 'bI_d1'
        end
        item
          Visible = True
          ItemName = 'bI_d2'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 231
          Visible = True
          ItemName = 'bI_PO'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Refresh'
        end
        item
          Visible = True
          ItemName = 'btn_Excel'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'itm_InviteOnly'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'itm_OpenOnly'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object br2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsLeft
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsLeft
      FloatLeft = 1028
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_SaveSmeta'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object br3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1028
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'sbI1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'sbI2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_PrintAkt'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object bdt1: TdxBarDateCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
    end
    object bI_d1: TcxBarEditItem
      Caption = #1055#1077#1088#1080#1086#1076' '#1089
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076' '#1089
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object bI_d2: TcxBarEditItem
      Caption = ' '#1087#1086' '
      Category = 0
      Hint = ' '#1087#1086' '
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object bI_PO: TcxBarEditItem
      Caption = ' '#1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      Category = 0
      Hint = ' '#1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_kontr
    end
    object btn_Refresh: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = btn_RefreshClick
    end
    object btn_SaveSmeta: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083' '#1089#1084#1077#1090#1099
      Category = 0
      Enabled = False
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083' '#1089#1084#1077#1090#1099
      Visible = ivAlways
      ImageIndex = 10
      OnClick = btn_SaveSmetaClick
    end
    object btn_NewRhase: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1101#1090#1072#1087' '#1088#1072#1073#1086#1090#1099
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1101#1090#1072#1087' '#1088#1072#1073#1086#1090#1099
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_NewRhaseClick
    end
    object btn_accept: TdxBarButton
      Caption = #1055#1088#1080#1085#1103#1090#1100' '#1088#1072#1073#1086#1090#1091
      Category = 0
      Hint = #1055#1088#1080#1085#1103#1090#1100' '#1088#1072#1073#1086#1090#1091
      Visible = ivAlways
      ImageIndex = 31
      OnClick = btn_acceptClick
    end
    object sbI1: TdxBarSubItem
      Caption = #1069#1090#1072#1087#1099' '#1088#1072#1073#1086#1090#1099
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_NewRhase'
        end
        item
          Visible = True
          ItemName = 'btn_accept'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_EditPhase'
        end
        item
          Visible = True
          ItemName = 'btn_AcceptEdit'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr1'
        end
        item
          Visible = True
          ItemName = 'btn_DelPhase'
        end
        item
          Visible = True
          ItemName = 'btn_DelAccept'
        end>
    end
    object sbI2: TdxBarSubItem
      Caption = #1040#1082#1090#1099
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Akt1'
        end
        item
          Visible = True
          ItemName = 'btn_Akt2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_EditAkt1'
        end
        item
          Visible = True
          ItemName = 'btn_EditAkt2'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr2'
        end
        item
          Visible = True
          ItemName = 'btn_DelAkt1'
        end
        item
          Visible = True
          ItemName = 'btn_DelAkt2'
        end>
    end
    object btn_Akt1: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1072#1082#1090' '#1087#1088#1086#1074#1077#1088#1082#1080' '#1082#1072#1095#1077#1089#1090#1074#1072
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1072#1082#1090' '#1087#1088#1086#1074#1077#1088#1082#1080' '#1082#1072#1095#1077#1089#1090#1074#1072
      Visible = ivAlways
      ImageIndex = 30
      OnClick = btn_Akt1Click
    end
    object btn_Akt2: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1072#1082#1090' '#1086#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086#1074#1072#1085#1080#1103' '#1089#1082#1088#1099#1090#1099#1093' '#1088#1072#1073#1086#1090
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1072#1082#1090' '#1086#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086#1074#1072#1085#1080#1103' '#1089#1082#1088#1099#1090#1099#1093' '#1088#1072#1073#1086#1090
      Visible = ivAlways
      ImageIndex = 30
      OnClick = btn_Akt2Click
    end
    object btn_PrintAkt: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1072#1082#1090#1072
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1072#1082#1090#1072
      Visible = ivAlways
      ImageIndex = 3
      OnClick = btn_PrintAktClick
    end
    object dxbrsprtr1: TdxBarSeparator
      Category = 0
      Visible = ivAlways
    end
    object btn_EditPhase: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1101#1090#1072#1087' '#1088#1072#1073#1086#1090#1099
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1101#1090#1072#1087' '#1088#1072#1073#1086#1090#1099
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EditPhaseClick
    end
    object btn_AcceptEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1088#1080#1085#1103#1090#1080#1077' '#1088#1072#1073#1086#1090#1099
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1088#1080#1085#1103#1090#1080#1077' '#1088#1072#1073#1086#1090#1099
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_AcceptEditClick
    end
    object btn_DelPhase: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1101#1090#1072#1087' '#1088#1072#1073#1086#1090#1099
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1101#1090#1072#1087' '#1088#1072#1073#1086#1090#1099
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_DelPhaseClick
    end
    object btn_DelAccept: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1080#1085#1103#1090#1080#1077' '#1088#1072#1073#1086#1090#1099
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1080#1085#1103#1090#1080#1077' '#1088#1072#1073#1086#1090#1099
      Visible = ivAlways
      ImageIndex = 12
      OnClick = btn_DelAcceptClick
    end
    object btn_EditAkt1: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1072#1082#1090' '#1087#1088#1086#1074#1077#1088#1082#1080' '#1082#1072#1095#1077#1089#1090#1074#1072
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1072#1082#1090' '#1087#1088#1086#1074#1077#1088#1082#1080' '#1082#1072#1095#1077#1089#1090#1074#1072
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EditAkt1Click
    end
    object btn_EditAkt2: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1072#1082#1090' '#1086#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086#1074#1072#1085#1080#1103' '
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1072#1082#1090' '#1086#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086#1074#1072#1085#1080#1103' '
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EditAkt2Click
    end
    object dxbrsprtr2: TdxBarSeparator
      Category = 0
      Visible = ivAlways
    end
    object btn_DelAkt1: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1072#1082#1090' '#1087#1088#1086#1074#1077#1088#1082#1080' '#1082#1072#1095#1077#1089#1090#1074#1072
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1072#1082#1090' '#1087#1088#1086#1074#1077#1088#1082#1080' '#1082#1072#1095#1077#1089#1090#1074#1072
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_DelAkt1Click
    end
    object btn_DelAkt2: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1072#1082#1090' '#1086#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086#1074#1072#1085#1080#1103
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1072#1082#1090' '#1086#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086#1074#1072#1085#1080#1103
      Visible = ivAlways
      ImageIndex = 12
      OnClick = btn_DelAkt2Click
    end
    object dtb_type: TcxBarEditItem
      Caption = #1058#1080#1087
      Category = 0
      Hint = #1058#1080#1087
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1086#1073#1097#1077#1089#1090#1088#1086#1081
        #1083#1080#1092#1090)
    end
    object cbb_type: TdxBarCombo
      Caption = #1058#1080#1087
      Category = 0
      Hint = #1058#1080#1087
      Visible = ivAlways
      OnChange = cbb_typeChange
      ShowCaption = True
      Text = #1086#1073#1097#1077#1089#1090#1088#1086#1081
      Items.Strings = (
        #1086#1073#1097#1077#1089#1090#1088#1086#1081
        #1083#1080#1092#1090)
      ItemIndex = 0
    end
    object btn_Excel: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = btn_ExcelClick
    end
    object itm_InviteOnly: TcxBarEditItem
      Caption = #1058#1086#1083#1100#1082#1086' '#1087#1088#1080#1075#1083#1072#1096#1077#1085#1080#1103
      Category = 0
      Hint = #1058#1086#1083#1100#1082#1086' '#1087#1088#1080#1075#1083#1072#1096#1077#1085#1080#1103
      Visible = ivAlways
      OnCurChange = itm_InviteOnlyCurChange
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = itm_InviteOnlyPropertiesChange
      Properties.OnEditValueChanged = itm_InviteOnlyPropertiesEditValueChanged
    end
    object itm_OpenOnly: TcxBarEditItem
      Caption = #1058#1086#1083#1100#1082#1086' '#1086#1090#1082#1088#1099#1090#1099#1077
      Category = 0
      Enabled = False
      Hint = #1058#1086#1083#1100#1082#1086' '#1086#1090#1082#1088#1099#1090#1099#1077
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
    end
  end
  object ds_obj: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT TB.CODE,'
      '       TB.TRFACT,'
      '       TB.POFACTDATE,'
      '       TB.PHASE,'
      '       TB.PODATE,'
      '       TB.PORESULT,'
      '       TB.POPLANDATE,'
      '       TB.OSDATE,'
      '       TB.OSRESULT,'
      '       TB.OSDOC,'
      '       CASE'
      
        '         when tt.AKTTYPE = 0 then '#39#1072#1082#1090' '#1086#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086#1074#1072#1085#1080#1103' '#1089#1082#1088#1099#1090 +
        #1099#1093' '#1088#1072#1073#1086#1090#39
      '         when tt.AKTTYPE = 1 then '#39#1072#1082#1090' '#1087#1088#1086#1074#1077#1088#1082#1080' '#1082#1072#1095#1077#1089#1090#1074#1072#39
      '         else '#39#39
      '       end DOC,'
      '       tt.AKTTYPE,'
      '       TB.FACTCOST'
      'FROM TRFACT$OBJ TB'
      'left OUTER join TRFACT$OBJ$TYPE tt on tt.ID = tb.OSDOC'
      'where TB.TRFACT = :mas_code')
    AfterOpen = ds_objAfterOpen
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_trfact
    Left = 400
    Top = 512
    dcForceOpen = True
  end
  object src_Obj: TDataSource
    DataSet = ds_obj
    Left = 428
    Top = 512
  end
  object src_kontr: TDataSource
    Left = 480
    Top = 168
  end
  object dlgSave1: TSaveDialog
    Left = 512
    Top = 112
  end
  object fds_TRFACT: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,'
      '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,'
      
        '  K.NAME KNAME, TF.MANAGER,(P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO' +
        ','
      '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,'
      
        '  TF.PLANCODE,TF.STATE,TF.TRDOPSOG, td.code trdop, td.state TRDO' +
        'PSTATE,'
      '  td.d1, td.d2, TF.SMANAGER, TF.ZD, TF.SD, TF.DPLACE,'
      '  iif(tf.SMETA is NULL, 0,1) SMETA, tf.FNAME,'
      '   tf.STATE FSTATE,'
      '         case'
      '           when tf.STATE = 0 then '#39#1087#1088#1077#1076#1088#1077#1084#1086#1085#1090#1085#1072#1103' '#1074#1089#1090#1088#1077#1095#1072#39
      '           when tf.STATE = 1 then '#39#1076#1077#1092#1077#1082#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100#39
      '           when tf.STATE = 2 then '#39#1089#1084#1077#1090#1072#39
      '           when tf.STATE = 3 then '#39#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1077#39
      '           when tf.STATE = 4 then '#39#1074' '#1088#1072#1073#1086#1090#1077#39
      '           when tf.STATE = 5 then '#39#1079#1072#1074#1077#1088#1096#1077#1085#1086#39
      '           else '#39#39
      '         end FSTATENAME'
      'from TRFACT TF'
      ' left outer join HOUSE H on H.CODE = TF.HOUSE'
      ' left outer join STREET S on S.CODE = H.STREET'
      ' left outer join MLIST M on M.CODE = TF.MLIST'
      ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT'
      ' left outer join WORKER W on W.CODE = TF.MANAGER'
      ' left outer join PIPLE P on P.CODE = W.PIPLE'
      ' left outer join trdopsog ts on ts.code=tf.trdopsog'
      ' left outer join trdop td on td.code=ts.trdop'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 312
    Top = 88
  end
  object src_trfact: TDataSource
    DataSet = fds_TRFACT
    Left = 344
    Top = 88
  end
  object ds_SMETA: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    SMETA,'
      '    FNAME'
      'FROM'
      '    TRFACT'
      'WHERE'
      '    CODE = :COD ')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 256
    Top = 232
  end
  object report: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41360.653085891200000000
    ReportOptions.LastChange = 41576.682052534720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 520
    Top = 504
    Datasets = <>
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
        Height = 75.590600000000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        object Rich1: TfrxRichView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 68.031540000000000000
          Visible = False
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743230347B5C2A5C666E616D652041726961
            6C3B7D417269616C204359523B7D7B5C66315C666E696C5C6663686172736574
            3020417269616C3B7D7B5C66325C666E696C5C66636861727365743230342054
            61686F6D613B7D7D0D0A7B5C2A5C67656E657261746F72205269636865643230
            20362E332E393630307D5C766965776B696E64345C756331200D0A5C70617264
            5C71725C625C66305C667332345C2763665C2766305C2765385C2765625C2765
            655C2765365C2765355C2765645C2765385C2765355C66315C6C616E67313033
            3320205C66305C6C616E67313034395C2762395C66315C6C616E673130333320
            385C7061720D0A5C66305C6C616E67313034395C2765615C66315C6C616E6731
            30333320205C66305C6C616E67313034395C2763665C2765655C2765625C2765
            655C2765365C2765355C2765645C2765385C2766655C66315C6C616E67313033
            3320205C66305C6C616E67313034395C2765655C66315C6C616E673130333320
            205C66305C6C616E67313034395C2765665C2765655C2766305C2766665C2765
            345C2765615C2765355C66315C6C616E673130333320205C66305C6C616E6731
            3034395C2765665C2766305C2765655C2765325C2765355C2765345C2765355C
            2765645C2765385C2766665C66315C6C616E67313033335C7061720D0A5C6630
            5C6C616E67313034395C2766325C2765355C2765615C2766335C2766395C2765
            355C2765335C2765655C66315C6C616E673130333320205C66305C6C616E6731
            3034395C2766305C2765355C2765635C2765655C2765645C2766325C2765305C
            66315C6C616E673130333320205C66305C6C616E67313034395C2763635C2763
            615C2763345C62305C66325C667331365C7061720D0A7D0D0A00}
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 736.000000000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 604.724800000000000000
        Top = 112.000000000000000000
        Width = 718.110700000000000000
        KeepTogether = True
        RowCount = 1
        StartNewPage = True
        Stretched = True
        object Rich2: TfrxRichView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 600.945270000000000000
          ShowHint = False
          StretchMode = smActualHeight
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743230347B5C2A5C666E616D652041726961
            6C3B7D417269616C204359523B7D7B5C66315C666E696C5C6663686172736574
            3020417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            323020362E332E393630307D5C766965776B696E64345C756331200D0A5C7061
            72645C71635C66305C667332305C2763305C2763615C2764325C7061720D0A5C
            2765665C2766305C2765655C2765325C2765355C2766305C2765615C27653820
            5C2765615C2765305C2766375C2765355C2766315C2766325C2765325C276530
            5C66315C6C616E673130333320205C66305C6C616E67313034395C2765655C27
            6632205C756C5C66315C6C616E6731303333205B4F53444154455D5C756C6E6F
            6E655C66305C6C616E67313034395C7061720D0A0D0A5C706172645C625C2763
            615C2765655C2765635C2765385C2766315C2766315C2765385C276666205C27
            6532205C2766315C2765655C2766315C2766325C2765305C2765325C2765353A
            5C62305C7061720D0A5C7061720D0A5C2763665C2766305C2765355C2765345C
            2766315C2766325C2765305C2765325C2765385C2766325C2765355C2765625C
            276666205C2763655C2763655C276365205C66315C6C616E67313033335C2761
            625C66305C6C616E67313034395C2763345C2763355C276337205C2763615C27
            65305C2765625C2765385C2765645C2765385C2765645C2766315C2765615C27
            65655C2765335C276565205C2766305C2765305C2765395C2765655C2765645C
            2765305C66315C6C616E67313033335C2762623A5C7061720D0A5C66305C6C61
            6E67313034395C2763345C2765655C2765625C2765365C2765645C2765655C27
            66315C2766325C2766633A5C756C5C66315C6C616E6731303333205B504F5354
            4F535D5C66305C6C616E673130343920205C756C6E6F6E655C7061720D0A5C27
            64342E5C2763382E5C2763652E5C66315C6C616E673130333320205C756C205B
            46494F4F535D5C756C6E6F6E655C66305C6C616E67313034395C7061720D0A5C
            7061720D0A5C2763665C2766305C2765355C2765345C2766315C2766325C2765
            305C2765325C2765385C2766325C2765355C2765625C276666205C2763665C27
            6365205C66315C6C616E6731303333205B4B4E414D455D5C66305C6C616E6731
            3034395C7061720D0A2020202020202020202020202020202020202020202020
            2020202020205C66315C6C616E6731303333202020202020205C66305C667331
            365C6C616E673130343920285C2765645C2765305C2765385C2765635C276535
            5C2765645C2765655C2765325C2765305C2765645C2765385C276535205C2765
            655C2766305C2765335C2765305C2765645C2765385C2765375C2765305C2766
            365C2765385C276538295C667332305C7061720D0A5C2763345C2765655C2765
            625C2765365C2765645C2765655C2766315C2766325C2766633A5C66315C6C61
            6E673130333320205B504F53545D5C66305C6C616E67313034395C7061720D0A
            5C2764342E5C2763382E5C2763652E5C66315C6C616E673130333320205B4649
            4F5D5C66305C6C616E67313034395C7061720D0A5C7061720D0A5C625C276366
            5C2766305C2765655C2765325C2765355C2765625C276530205C2765665C2766
            305C2765385C2765355C2765635C2765615C276633205C2766305C2765305C27
            65315C2765655C2766322F5C2766645C2766325C2765305C2765665C27653020
            5C2766305C2765305C2765315C2765655C2766325C62305C7061720D0A202020
            2020202020202020202020202020202020202020202020205C667331365C2765
            645C2766335C2765365C2765645C2765655C276535205C2765665C2765655C27
            65345C2766375C2765355C2766305C2765615C2765645C2766335C2766325C27
            66635C7061720D0A5C667332305C7061720D0A5C625C2763665C276565205C27
            65305C2765345C2766305C2765355C2766315C2766333A5C623020205C695C66
            315C6C616E6731303333205B534E414D455D205B4E4F4D45525D5C7061720D0A
            5C7061720D0A5C625C69305C66305C6C616E67313034395C2763345C2765305C
            2766325C276530205C2765645C2765305C2766375C2765305C2765625C276530
            205C2766305C2765305C2765315C2765655C2766325C62305C66315C6C616E67
            31303333203A205C756C205B504F444154455D5C756C6E6F6E655C66305C6C61
            6E67313034395C7061720D0A5C625C2763345C2765305C2766325C276530205C
            2765655C2765615C2765655C2765645C2766375C2765305C2765645C2765385C
            276666205C2766305C2765305C2765315C2765655C2766325C62305C66315C6C
            616E6731303333203A205C756C205B504F504C414E444154455D5C756C6E6F6E
            655C66305C6C616E67313034395C7061720D0A5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F5C7061720D0A5C7061720D0A5C625C2763665C2766305C27
            6538205C2765665C2766305C2765385C2765355C2765635C2765615C27653520
            5C2766305C2765305C2765315C2765655C2766322F5C2766645C2766325C2765
            305C2765665C276530205C2766305C2765305C2765315C2765655C276632205C
            2766335C2766315C2766325C2765305C2765645C2765655C2765325C2765625C
            2765355C2765645C2765653A5C62305C7061720D0A5C66315C6C616E67313033
            33202020202020205C756C205B494E5350454354494F4E5D5C756C6E6F6E655C
            66305C6C616E67313034395C7061720D0A5C7061720D0A5C625C2764305C2765
            355C2766385C2765355C2765645C2765385C276535205C2765615C2765655C27
            65635C2765385C2766315C2766315C2765385C2765383A5C62305C7061720D0A
            5C66315C6C616E6731303333202020202020205C756C205B5245534F4C555449
            4F4E5D5C756C6E6F6E6520205C66305C6C616E67313034395C7061720D0A5C70
            61720D0A5C625C2763665C2765655C2765345C2765665C2765385C2766315C27
            6538205C2765615C2765655C2765635C2765385C2766315C2766315C2765385C
            2765383A5C62305C7061720D0A5C7061720D0A5C2763665C2766305C2765355C
            2765345C2766315C2766325C2765305C2765325C2765385C2766325C2765355C
            2765625C276666205C2763655C2763655C276365205C66315C6C616E67313033
            335C2761625C66305C6C616E67313034395C2763345C2763355C276337205C27
            63615C2765305C2765625C2765385C2765645C2765385C2765645C2766315C27
            65615C2765655C2765335C276565205C2766305C2765305C2765395C2765655C
            2765645C2765305C66315C6C616E67313033335C2762623A5C7061720D0A2020
            20205C66305C6C616E67313034395C2763345C2765655C2765625C2765365C27
            65645C2765655C2766315C2766325C2766633A5C66315C6C616E673130333320
            205C756C5C69205B504F53544F535D5C66305C6C616E673130343920205C756C
            6E6F6E655C69305C7061720D0A5C66315C6C616E673130333320202020205C66
            305C6C616E67313034395C2764342E5C2763382E5C2763652E5C66315C6C616E
            673130333320205C756C5C69205B46494F4F535D5C625C69302020202020205C
            756C6E6F6E655C6230202F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5C66305C6C616E67313034395C7061720D0A5C7061720D0A5C276366
            5C2766305C2765355C2765345C2766315C2766325C2765305C2765325C276538
            5C2766325C2765355C2765625C276666205C2763665C276365205C66315C6C61
            6E6731303333205B4B4E414D455D5C66305C6C616E67313034395C7061720D0A
            202020202020202020202020202020202020202020202020202020205C66315C
            6C616E673130333320202020205C66305C6C616E673130343920205C66315C6C
            616E67313033332020205C66305C667331365C6C616E673130343920285C2765
            645C2765305C2765385C2765635C2765355C2765645C2765655C2765325C2765
            305C2765645C2765385C276535205C2765655C2766305C2765335C2765305C27
            65645C2765385C2765375C2765305C2766365C2765385C276538295C66733230
            5C7061720D0A5C66315C6C616E673130333320202020205C66305C6C616E6731
            3034395C2763345C2765655C2765625C2765365C2765645C2765655C2766315C
            2766325C2766633A5C66315C6C616E673130333320205C69205B504F53545D5C
            69305C66305C6C616E67313034395C7061720D0A5C66315C6C616E6731303333
            20202020205C66305C6C616E67313034395C2764342E5C2763382E5C2763652E
            5C66315C6C616E673130333320205C756C5C69205B46494F5D2020205C756C6E
            6F6E655C625C6930202F5C6230205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5C7061720D0A5C66305C6C616E67313034395C7061720D0A7D
            0D0A00}
        end
      end
    end
  end
  object ds_AKT2: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '  TF.CODE,'
      '  M.NAME MNAME,'
      '  S.NAME SNAME,'
      '  H.NOMER,'
      '  TB.OSDATE,'
      '  TBO.COMMIS,'
      '  (P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO,'
      '  K.NAME KNAME,'
      '  TBO.WORKLIST,'
      '  TF.NCALC,'
      '  TBO.MATLIST,'
      '  TB.POFACTDATE,'
      '  TB.POPLANDATE,'
      '  TBO.QUALITY,'
      '  TBO.RESOLUTION'
      ''
      'FROM TRFACT TF'
      ' LEFT OUTER JOIN HOUSE H ON H.CODE = TF.HOUSE'
      ' LEFT OUTER JOIN STREET S ON S.CODE = H.STREET'
      ' LEFT OUTER JOIN MLIST M ON M.CODE = TF.MLIST'
      ' LEFT OUTER JOIN KONTRAGENT K ON K.CODE = TF.KONTRAGENT'
      ' LEFT OUTER JOIN WORKER W ON W.CODE = TF.MANAGER'
      ' LEFT OUTER JOIN PIPLE P ON P.CODE = W.PIPLE'
      ' LEFT OUTER JOIN TRFACT$OBJ TB ON TB.TRFACT = TF.CODE'
      
        ' LEFT OUTER JOIN TRFACT$OBJ$TYPE TBO ON TBO.TRFACT_OBJECT= TB.CO' +
        'DE'
      ' WHERE TF.CODE = :CODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 160
    Top = 552
  end
  object ds_AKT1: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      ' TF.CODE,'
      ' TBO.POSTOS,'
      ' (P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO,'
      ' K.NAME KNAME,'
      ' TBO.POST,'
      ' TBO.FIO,'
      ' S.NAME SNAME,'
      ' H.NOMER,'
      ' TBO.INSPECTION,'
      ' TBO.RESOLUTION'
      'FROM TRFACT TF'
      ' LEFT OUTER JOIN HOUSE H ON H.CODE = TF.HOUSE'
      ' LEFT OUTER JOIN STREET S ON S.CODE = H.STREET'
      ' LEFT OUTER JOIN MLIST M ON M.CODE = TF.MLIST'
      ' LEFT OUTER JOIN KONTRAGENT K ON K.CODE = TF.KONTRAGENT'
      ' LEFT OUTER JOIN WORKER W ON W.CODE = TF.MANAGER'
      ' LEFT OUTER JOIN PIPLE P ON P.CODE = W.PIPLE'
      ' LEFT OUTER JOIN TRFACT$OBJ TB ON TB.TRFACT = TF.CODE'
      
        ' LEFT OUTER JOIN TRFACT$OBJ$TYPE TBO ON TBO.TRFACT_OBJECT= TB.CO' +
        'DE'
      'WHERE TF.CODE = :CODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 189
    Top = 552
  end
  object ds_TRlFACT: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,'
      '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,'
      
        '  K.NAME KNAME, TF.MANAGER,(P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO' +
        ','
      '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,'
      
        '  TF.PLANCODE,TF.STATE,TF.TRLDOPSOG, td.code trdop, td.state TRD' +
        'OPSTATE,'
      '  td.d1, td.d2, TF.SMANAGER, TF.ZD, TF.SD, TF.DPLACE,'
      '  iif(tf.SMETA is NULL, 0,1) SMETA, tf.FNAME,'
      '   tf.STATE FSTATE,'
      '         case'
      '           when tf.STATE = 0 then '#39#1087#1088#1077#1076#1088#1077#1084#1086#1085#1090#1085#1072#1103' '#1074#1089#1090#1088#1077#1095#1072#39
      '           when tf.STATE = 1 then '#39#1076#1077#1092#1077#1082#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100#39
      '           when tf.STATE = 2 then '#39#1089#1084#1077#1090#1072#39
      '           when tf.STATE = 3 then '#39#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1077#39
      '           when tf.STATE = 4 then '#39#1074' '#1088#1072#1073#1086#1090#1077#39
      '           when tf.STATE = 5 then '#39#1079#1072#1074#1077#1088#1096#1077#1085#1086#39
      '           else '#39#39
      '         end FSTATENAME'
      'from TRLFACT TF'
      ' left outer join HOUSE H on H.CODE = TF.HOUSE'
      ' left outer join STREET S on S.CODE = H.STREET'
      ' left outer join MLIST M on M.CODE = TF.MLIST'
      ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT'
      ' left outer join WORKER W on W.CODE = TF.MANAGER'
      ' left outer join PIPLE P on P.CODE = W.PIPLE'
      ' left outer join trldopsog ts on ts.code=tf.trldopsog'
      ' left outer join trldop td on td.code=ts.trldop'
      ''
      ' where (case'
      '          when tf.STATE = 0 then tf.DATA'
      '          when tf.STATE = 1 then tf.DDATE'
      '          when tf.STATE = 2 then tf.NCALCDATE'
      
        '          when tf.STATE = 3 then iif(td.d2 is null,tf.NCALCDATE,' +
        'td.d2 )'
      
        '          when tf.STATE = 4 then iif(td.d2 is null,tf.NCALCDATE,' +
        'td.d2 )'
      '          when tf.STATE = 5 then tf.ZD'
      '        end) BETWEEN :d1 and :d2')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 315
    Top = 144
  end
  object src_TRlFACT: TDataSource
    DataSet = ds_TRlFACT
    Left = 344
    Top = 144
  end
  object ds_objL: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT TB.CODE,'
      '       TB.TRLFACT TRFACT,'
      '       TB.POFACTDATE,'
      '       TB.PHASE,'
      '       TB.PODATE,'
      '       TB.PORESULT,'
      '       TB.POPLANDATE,'
      '       TB.OSDATE,'
      '       TB.OSRESULT,'
      '       TB.OSDOC,'
      '       CASE'
      
        '         when tt.AKTTYPE = 0 then '#39#1072#1082#1090' '#1086#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086#1074#1072#1085#1080#1103' '#1089#1082#1088#1099#1090 +
        #1099#1093' '#1088#1072#1073#1086#1090#39
      '         when tt.AKTTYPE = 1 then '#39#1072#1082#1090' '#1087#1088#1086#1074#1077#1088#1082#1080' '#1082#1072#1095#1077#1089#1090#1074#1072#39
      '         else '#39#39
      '       end DOC,'
      '       tt.AKTTYPE,'
      '       TB.FACTCOST'
      'FROM TRLFACT$OBJ TB'
      'left OUTER join TRLFACT$OBJ$TYPE tt on tt.ID = tb.OSDOC'
      'where TB.TRLFACT = :mas_code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_TRlFACT
    Left = 400
    Top = 560
  end
  object src_objl: TDataSource
    DataSet = ds_objL
    Left = 428
    Top = 560
  end
  object ds_AKT2Lift: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '  TF.CODE,'
      '  M.NAME MNAME,'
      '  S.NAME SNAME,'
      '  H.NOMER,'
      '  TB.OSDATE,'
      '  TBO.COMMIS,'
      '  (P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO,'
      '  K.NAME KNAME,'
      '  TBO.WORKLIST,'
      '  TF.NCALC,'
      '  TBO.MATLIST,'
      '  TB.POFACTDATE,'
      '  TB.POPLANDATE,'
      '  TBO.QUALITY,'
      '  TBO.RESOLUTION'
      ''
      'FROM TRLFACT TF'
      ' LEFT OUTER JOIN HOUSE H ON H.CODE = TF.HOUSE'
      ' LEFT OUTER JOIN STREET S ON S.CODE = H.STREET'
      ' LEFT OUTER JOIN MLIST M ON M.CODE = TF.MLIST'
      ' LEFT OUTER JOIN KONTRAGENT K ON K.CODE = TF.KONTRAGENT'
      ' LEFT OUTER JOIN WORKER W ON W.CODE = TF.MANAGER'
      ' LEFT OUTER JOIN PIPLE P ON P.CODE = W.PIPLE'
      ' LEFT OUTER JOIN TRLFACT$OBJ TB ON TB.TRLFACT = TF.CODE'
      
        ' LEFT OUTER JOIN TRLFACT$OBJ$TYPE TBO ON TBO.TRLFACT_OBJECT= TB.' +
        'CODE'
      ' WHERE TF.CODE = :CODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 160
    Top = 600
  end
  object ds_AKT1Lift: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      ' TF.CODE,'
      ' TBO.POSTOS,'
      ' (P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO,'
      ' K.NAME KNAME,'
      ' TBO.POST,'
      ' TBO.FIO,'
      ' S.NAME SNAME,'
      ' H.NOMER,'
      ' TBO.INSPECTION,'
      ' TBO.RESOLUTION'
      'FROM TRLFACT TF'
      ' LEFT OUTER JOIN HOUSE H ON H.CODE = TF.HOUSE'
      ' LEFT OUTER JOIN STREET S ON S.CODE = H.STREET'
      ' LEFT OUTER JOIN MLIST M ON M.CODE = TF.MLIST'
      ' LEFT OUTER JOIN KONTRAGENT K ON K.CODE = TF.KONTRAGENT'
      ' LEFT OUTER JOIN WORKER W ON W.CODE = TF.MANAGER'
      ' LEFT OUTER JOIN PIPLE P ON P.CODE = W.PIPLE'
      ' LEFT OUTER JOIN TRLFACT$OBJ TB ON TB.TRLFACT = TF.CODE'
      
        ' LEFT OUTER JOIN TRLFACT$OBJ$TYPE TBO ON TBO.TRLFACT_OBJECT= TB.' +
        'CODE'
      'WHERE TF.CODE = :CODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 189
    Top = 600
  end
  object frxrtfxprt1: TfrxRTFExport
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
    Left = 560
    Top = 504
  end
end
