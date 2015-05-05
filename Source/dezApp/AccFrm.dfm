object AccForm: TAccForm
  Left = 0
  Top = 0
  Caption = #1051#1080#1094#1077#1074#1099#1077' '#1089#1095#1077#1090#1072
  ClientHeight = 718
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object lcntr1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 953
    Height = 718
    Align = alClient
    TabOrder = 4
    LayoutLookAndFeel = dxlytcxlkndfl1
    ExplicitWidth = 837
    object dt1: TcxDateEdit
      Left = 356
      Top = 366
      EditValue = 40492d
      Properties.OnChange = dt1PropertiesChange
      Style.HotTrack = False
      TabOrder = 7
      Width = 108
    end
    object dt2: TcxDateEdit
      Left = 509
      Top = 366
      EditValue = 40492d
      Properties.OnChange = dt1PropertiesChange
      Style.HotTrack = False
      TabOrder = 8
      Width = 100
    end
    object cbb1: TcxComboBox
      Left = 40
      Top = 41
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #1051#1080#1094#1077#1074#1086#1084#1091' '#1089#1095#1077#1090#1091
        #1042#1083#1072#1076#1077#1083#1100#1094#1091
        #1040#1076#1088#1077#1089#1091)
      Properties.OnChange = cbb1PropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Text = #1051#1080#1094#1077#1074#1086#1084#1091' '#1089#1095#1077#1090#1091
      Width = 138
    end
    object txt1: TcxTextEdit
      Left = 204
      Top = 41
      Style.HotTrack = False
      TabOrder = 1
      Width = 173
    end
    object cbb_street: TcxLookupComboBox
      Left = 419
      Top = 41
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          Caption = #1050#1086#1076
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 100
          FieldName = 'NAME'
        end
        item
          Caption = #1058#1080#1087
          Width = 50
          FieldName = 'STR_TYPE'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = StreetSource
      Properties.OnChange = cbb_streetPropertiesChange
      Style.HotTrack = False
      TabOrder = 2
      Width = 236
    end
    object cbb_house: TcxLookupComboBox
      Left = 685
      Top = 41
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          FieldName = 'NOMER'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = HouseSource
      Properties.OnChange = cbb_housePropertiesChange
      Style.HotTrack = False
      TabOrder = 3
      OnKeyUp = cbb_houseKeyUp
      Width = 62
    end
    object cbb_flat: TcxLookupComboBox
      Left = 774
      Top = 41
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          FieldName = 'FLAT'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = flatSource
      Style.HotTrack = False
      TabOrder = 4
      OnKeyUp = cbb_flatKeyUp
      Width = 48
    end
    object btn_find: TcxButton
      Left = 828
      Top = 41
      Width = 30
      Height = 25
      Hint = #1055#1086#1080#1089#1082' <F3>'
      Caption = 'find'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000E8E8E8FFA4A4
        A4FF787878FF8D8D8DFFCBCBCBFFF4F4F4FFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2A2A2FF7375
        89FFA8878DFF5A5858FF848484FFCBCBCBFFF4F4F4FFFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF85ACC6FF4088
        DFFF7376A8FFAB868BFF5A5757FF848484FFCBCBCBFFF5F5F5FFFEFEFEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBE1FDFF52B8
        FFFF4385D9FF7979A7FFAB868BFF5A5757FF868686FFD0D0D0FFF8F8F8FFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3D6
        FDFF53B9FFFF4385D9FF7979A7FFAB868BFF605C5CFF999999FFD4D4D4FFDCDC
        DCFFD7D7D7FFD6D6D6FFDBDBDBFFEAEAEAFFFAFAFAFFFFFFFFFFFFFFFFFFFFFF
        FFFF89C9FCFF53B8FEFF4483D6FF7979A7FF977D81FF6E6E6EFF878787FF7B7B
        7BFF6D6D6DFF6B6B6BFF7A7A7AFFA4A4A4FFDADADAFFF8F8F8FFFFFFFFFFFFFF
        FFFFFFFFFFFF8BCBFCFF53B8FEFF588CCFFF858589FF8B7575FFBC9885FFCEB0
        96FFE0C7AEFFD1B3A2FF836C6AFF5D5D5DFF959595FFDADADAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFA3D6FDFFBFC5C9FFAB8B88FFF1CFA9FFFFF5C5FFFFFD
        D1FFFFFFDBFFFFFFDCFFF5EFE0FF997F7BFF5E5E5EFFA5A5A5FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFEFFD0BDBDFFEFC9A6FFFFF2C0FFFFF7C4FFFFFF
        D8FFFFFFE8FFFFFFF8FFFFFFFFFFF3EDDAFF745A5AFF7D7D7DFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFEFFD5B3A9FFFFF1C2FFFFE4B1FFFFF9C6FFFFFF
        DBFFFFFFECFFFFFFFBFFFFFFF7FFFFFFDAFFB49B89FF6D6D6DFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFEFFE5BDA3FFFFF5C9FFFFDDAAFFFFF5C2FFFFFF
        D6FFFFFFE5FFFFFFECFFFFFFE7FFFFFFD9FFCCB299FF6D6D6DFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFEFFE5BFA6FFFFF5C9FFFFE6B9FFFFEFBCFFFFFF
        CDFFFFFFD7FFFFFFDBFFFFFFD8FFFFFCD1FFCCAC93FF7D7D7DFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCBCB3FFFFF6CDFFFFF2D7FFFFE3B9FFFFF1
        BFFFFFF5C2FFFFF9C7FFFFF7C4FFFFF6C6FFB89582FFA4A4A4FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7D4D4FFEFDAC2FFFFFFFFFFFFF7EAFFFFEC
        BFFFFFDFACFFFFE3B0FFFFF0BDFFF3D2A8FF987E7EFFD8D8D8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7BAB8FFF1E5DDFFFFFBE8FFFFF8
        CDFFFFEEBCFFFFF3C6FFF5CFA4FFB89188FFD8D8D8FFF8F8F8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAC4C4FFCFB09CFFCEA8
        8EFFE0B89EFFD9B09DFFCDB5B1FFEAEAEAFFFAFAFAFFFFFFFFFF}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btn_findClick
    end
    object grd1: TcxGrid
      Left = 20
      Top = 116
      Width = 838
      Height = 218
      Align = alClient
      TabOrder = 6
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = findSource
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv1TOTAL_SQ
          end
          item
            Kind = skSum
            Column = clv1LIVING_SQ
          end
          item
            Kind = skSum
            Column = clv1LODGER_CNT
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1ACCCODE: TcxGridDBColumn
          Caption = #1051'/'#1057#1095#1077#1090
          DataBinding.FieldName = 'ACCCODE'
          Width = 84
        end
        object clv1MASTER: TcxGridDBColumn
          Caption = #1042#1083#1072#1076#1077#1083#1077#1094
          DataBinding.FieldName = 'MASTER'
          Width = 162
        end
        object clv1ADDR: TcxGridDBColumn
          DataBinding.FieldName = 'ADDR'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1TOTAL_SQ: TcxGridDBColumn
          Caption = #1054#1073#1097'.'#1087#1083
          DataBinding.FieldName = 'TOTAL_SQ'
        end
        object clv1LIVING_SQ: TcxGridDBColumn
          Caption = #1046#1080#1083'.'#1087#1083'.'
          DataBinding.FieldName = 'LIVING_SQ'
          Width = 59
        end
        object clv1LODGER_CNT: TcxGridDBColumn
          Caption = #1046#1080#1083#1100#1094#1099
          DataBinding.FieldName = 'LODGER_CNT'
          Width = 71
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
          Width = 48
          IsCaptionAssigned = True
        end
        object clv1nomer: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'nomer'
          Width = 48
        end
        object clv1flat: TcxGridDBColumn
          Caption = #1082#1074'.'
          DataBinding.FieldName = 'flat'
          Width = 47
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          Width = 151
        end
        object clv1DATE_OPEN: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1086#1090#1082#1088#1099#1090#1080#1103
          DataBinding.FieldName = 'DATE_OPEN'
          Width = 71
        end
        object clv1DATE_CLOSE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1082#1088#1099#1090#1080#1103
          DataBinding.FieldName = 'DATE_CLOSE'
          OnGetDataText = clv1DATE_CLOSEGetDataText
          Width = 72
        end
        object clv1PHONE: TcxGridDBColumn
          Caption = #1058#1077#1083#1077#1092#1086#1085
          DataBinding.FieldName = 'PHONE'
          Width = 68
        end
        object clv1DU: TcxGridDBColumn
          DataBinding.FieldName = 'DU'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DUNAME: TcxGridDBColumn
          Caption = #1044#1086#1084#1086#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'DUNAME'
          Width = 135
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 20
      Top = 393
      Width = 301
      Height = 263
      Align = alClient
      TabOrder = 9
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Filter.Visible = True
        OnCellClick = v2CellClick
        DataController.DataSource = historySource
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object clv2REC_TYPE: TcxGridDBColumn
          Caption = ' '
          DataBinding.FieldName = 'REC_TYPE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.DefaultImageIndex = 0
          Properties.Images = il2
          Properties.Items = <
            item
              Description = #1054#1087#1083#1072#1090#1072
              ImageIndex = 6
              Value = 1
            end
            item
              Description = #1050#1086#1088#1088#1077#1082#1094#1080#1103
              ImageIndex = 7
              Value = 2
            end
            item
              Description = #1055#1077#1088#1077#1088#1072#1089#1095#1077#1090
              ImageIndex = 1
              Value = 3
            end
            item
              Description = #1057#1091#1073#1089#1080#1076#1080#1103
              ImageIndex = 16
              Value = 4
            end
            item
              Description = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077
              ImageIndex = 5
              Value = 0
            end>
          Width = 23
        end
        object clv2DATE_VAL: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATE_VAL'
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopupMultiSelect = False
          Width = 67
        end
        object clv2PRV_NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'PRV_NAME'
          Options.Filtering = False
          Width = 112
        end
        object clv2PSUM: TcxGridDBColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM'
          Width = 89
        end
        object clv2RSUM: TcxGridDBColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM'
          Width = 74
        end
        object clv2OSUM: TcxGridDBColumn
          Caption = #1055#1077#1088#1077#1089#1095#1077#1090#1099
          DataBinding.FieldName = 'OSUM'
        end
        object clv2SALDO: TcxGridDBColumn
          Caption = #1057#1072#1083#1100#1076#1086
          DataBinding.FieldName = 'SALDO'
          Width = 77
        end
        object clv2ACCCODE: TcxGridDBColumn
          DataBinding.FieldName = 'ACCCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2SRV: TcxGridDBColumn
          DataBinding.FieldName = 'SRV'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2PAY_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'PAY_DATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2ACC_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'ACC_DATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2DU: TcxGridDBColumn
          DataBinding.FieldName = 'DU'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 581
      Top = 427
      Width = 352
      Height = 233
      Align = alClient
      TabOrder = 12
      object v3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = mt1Source
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object clv3Flag: TcxGridDBColumn
          DataBinding.FieldName = 'Flag'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.OnEditValueChanged = clv3FlagPropertiesEditValueChanged
          Width = 26
        end
        object clv3Srv: TcxGridDBColumn
          DataBinding.FieldName = 'Srv'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3NAME: TcxGridDBColumn
          DataBinding.FieldName = 'NAME'
          Options.Editing = False
          Width = 160
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object doc1: TdxBarDockControl
      Left = 581
      Top = 393
      Width = 352
      Height = 26
      Align = dalTop
      BarManager = bm1
    end
    object grd4: TcxGrid
      Left = 382
      Top = 393
      Width = 159
      Height = 263
      Align = alClient
      TabOrder = 10
      object v4: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = Source_Detailed
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv4SUMMA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object clv4REC_TYPE: TcxGridDBColumn
          Caption = ' '
          DataBinding.FieldName = 'REC_TYPE'
          Visible = False
          VisibleForCustomization = False
          Width = 22
        end
        object clv4ACCCODE: TcxGridDBColumn
          DataBinding.FieldName = 'ACCCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4SRV: TcxGridDBColumn
          DataBinding.FieldName = 'SRV'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4DATE_VAL: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATE_VAL'
          Width = 60
        end
        object clv4NAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'NAME'
          Width = 108
        end
        object clv4PAY_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'PAY_DATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4ACC_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'ACC_DATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'SUMMA'
          Width = 75
        end
        object clv4HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4DU: TcxGridDBColumn
          DataBinding.FieldName = 'DU'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l4: TcxGridLevel
        GridView = v4
      end
    end
    object grp_root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp_top: TdxLayoutGroup
      CaptionOptions.Text = #1055#1086#1080#1089#1082
      Parent = grp_root
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 65
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object Item_cbb1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1087#1086' '
      Parent = grp_top
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 158
      Control = cbb1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object Item_txt1: TdxLayoutItem
      CaptionOptions.Text = '     '
      Parent = grp_top
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 193
      Control = txt1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object Item_street: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = grp_top
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 272
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object Item_house: TdxLayoutItem
      CaptionOptions.Text = #1076#1086#1084
      Parent = grp_top
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 86
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object Item_flat: TdxLayoutItem
      CaptionOptions.Text = #1082#1074'.'
      Parent = grp_top
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 69
      Control = cbb_flat
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object Item_find: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_top
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 30
      Control = btn_find
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object grp2: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp_root
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 250
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 1
    end
    object Item_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object splt2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp_root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = True
      SizeOptions.Height = 5
      Index = 2
    end
    object grp3: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp_root
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 131
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object grp4: TdxLayoutGroup
      AlignHorz = ahCenter
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 20
      SizeOptions.Width = 266
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object Item_dt1: TdxLayoutItem
      CaptionOptions.Text = #1089' '
      Parent = grp4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 121
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object Item_dt2: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = #1087#1086' '
      Parent = grp4
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grplcntr1Group1: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object Item_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplcntr1Group1
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object splt5: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grplcntr1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object Item_grd4: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplcntr1Group1
      Control = grd4
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object splt4: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      LayoutLookAndFeel = dxlytcxlkndfl1
      Parent = grplcntr1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 3
    end
    object grp5: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplcntr1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 352
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 4
    end
    object Item_doc: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grp5
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 11
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object Item_srv: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp5
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 190
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 1
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
    HelpButtonGlyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EBE5D6B9A1B6845AAC
      7345AB7143B17E53D2B49BF2EAE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFE6D5C6BA885FD7BBA3E9DACAECE0D1ECE0D1E8D8C8D3B59CAF7A4DE2CE
      BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D8CABD8C62E7D5C4E5D2BFC9A685B8
      8E67B68A65C5A180E0CCBAE3D0BEAE7648E3CFBFFFFFFFFFFFFFFFFFFFF7F0EB
      C99D79EAD8C9E3CDBAC0946BBA8C62CFB094CFB094B7895FB28761DAC0AAE4D1
      C0B68358F4ECE5FFFFFFFFFFFFE5CFBCE4CCB9EAD6C5C79971BF9066BF9066F7
      F1ECF6F0EAB7895FB7895FB58963E2CEBBD9BDA6D8BDA7FFFFFFFFFFFFD9B395
      EFE1D3D9B595C7986CC39569C19367BF9066BF9066BB8B63B98A63B88A62CBA7
      86EADCCCC2946EFFFFFFFFFFFFDAB292F2E4D9D1A57AC5996BC4976AC49669FA
      F6F2F3EAE1C2956DBE8F65BE8F64C0956DEFE3D5C19066FFFFFFFFFFFFE1BB9C
      F2E5DAD1A67ECC9D71C79A6CC5986BE2CCB6F8F3EEF6EEE8D9BDA1C29468C59B
      71F0E2D6C79871FFFFFFFFFFFFE9C9AFF3E5D9DFBB9ECFA075CD9E72F5EBE3E4
      CBB4E7D3BFFBF8F6E5D3BFC4986BD6B491EEE0D2D3AB8BFFFFFFFFFFFFF5E4D6
      F4E3D4EFDCCDD5A87ED0A077FBF8F5FCF8F5FCF8F5FBF8F5D1A881CFA47BEAD5
      C3EAD4C2E8D3C1FFFFFFFFFFFFFDF8F5F0D2BAF6E9DDECD8C6D7AC81DCBB9AF6
      ECE3F5ECE2E4C8AED2A77BE6CEBAF1E2D5DEBA9CF9F4EFFFFFFFFFFFFFFFFFFF
      FBF1E8F2D3BBF7EADFEEDED0E3C1A7D8AE89D7AC86DDBB9CEBD6C7F3E6D9E4C0
      A3F5E8DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF2EAF5DAC3F9E9DCF6E8DDF3
      E5DAF3E5DAF5E7DCF5E4D6ECCDB4F7ECE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFAF6FBECE1F8DDC8F6D8C1F4D6BFF4D9C2F8E8DBFCF8F4FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ImageOptions.Images = il1
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 608
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
      Caption = 'srvbr'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 772
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_checkAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_UnCheckAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_SaveSrv'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_OpenSrv'
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
    end
    object btn2: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object btn_checkAll: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_checkAllClick
    end
    object btn_UnCheckAll: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_UnCheckAllClick
    end
    object btn_SaveSrv: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_SaveSrvClick
    end
    object btn_OpenSrv: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 3
      OnClick = btn_OpenSrvClick
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width'
          'WindowState')
      end
      item
        Component = clv1ACCCODE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1ADDR
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1DATE_CLOSE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1DATE_OPEN
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1DU
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1DUNAME
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1flat
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1HOUSE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1LIVING_SQ
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1MASTER
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1nomer
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1PHONE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1STREET
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1STREETNAME
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1TOTAL_SQ
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv4ACC_DATE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv4ACCCODE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv4DATE_VAL
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv4DU
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv4HOUSE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv4NAME
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv4PAY_DATE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv4REC_TYPE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv4SRV
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv4SUMMA
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = dt1
        Properties.Strings = (
          'Date')
      end
      item
        Component = dt2
        Properties.Strings = (
          'Date')
      end
      item
        Component = grp2
        Properties.Strings = (
          'SizeOptions.Height')
      end
      item
        Component = grp3
        Properties.Strings = (
          'SizeOptions.Height')
      end
      item
        Component = grp4
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = grp5
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = Item_grd1
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = Item_grd2
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = Item_grd4
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = v1
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.GroupByBox')
      end
      item
        Component = v2
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.GroupByBox')
      end
      item
        Component = v3
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.GroupByBox')
      end
      item
        Component = v4
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.GroupByBox')
      end>
    StorageName = 'prop1'
    Left = 640
  end
  object LookAndFeelList: TdxLayoutLookAndFeelList
    Left = 560
    Top = 56
    object dxlytcxlkndfl1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
  object ds_street: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME, STR_TYPE '
      'from STREET  '
      'order by Name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 344
  end
  object StreetSource: TDataSource
    DataSet = ds_street
    Left = 376
  end
  object ds_house: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NOMER from HOUSE'
      'WHERE STREET=:Street'
      'order by NOMER')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 416
  end
  object HouseSource: TDataSource
    DataSet = ds_house
    Left = 440
  end
  object ds_flat: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, FLAT from ADDR'
      'WHERE STREET=:Street and HOUSE=:House'
      'order by FLAT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 488
  end
  object flatSource: TDataSource
    DataSet = ds_flat
    Left = 516
  end
  object ds_find: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT ac.ACCCODE,ac.MASTER,'
      '       ac.ADDR,a.total_sq,a.living_sq,a.LODGER_CNT,a.flat,'
      '       ac.HOUSE,h.nomer,ac.STREET,s.name StreetName,'
      '       ac.DATE_OPEN,ac.DATE_CLOSE,ac.PHONE,'
      '       ac.DU, d.name DUName'
      'FROM ACCCODE ac'
      'left outer join street s on ac.street=s.code'
      'left outer join addr a on ac.addr=a.code'
      'left outer join du d on ac.du=d.code'
      'left outer join house h on ac.house=h.code'
      'where'
      ' @@where_clause% 1=1@')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 480
    Top = 128
  end
  object findSource: TDataSource
    DataSet = ds_find
    Left = 508
    Top = 128
  end
  object ds_history: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from GETPERIODSALDO(:d1,:d2,:accode)'
      'where'
      ' @@where_clause% 1=1@')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 40
    Top = 552
  end
  object historySource: TDataSource
    DataSet = mt_history
    Left = 68
    Top = 552
  end
  object il1: TImageList
    Left = 680
    Top = 504
    Bitmap = {
      494C010104001000140010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      00000000000080808000FF000000FF000000FFFFFF0000000000000000000000
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      00000000000080808000FF000000FF000000FFFFFF0000000000000000000000
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000000000000000000080808000808080000000000000000000000000000000
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000808000000000000000000000000000000000000000000000000000008080
      0000FF000000FF000000000000000000000000000000000000000000000000FF
      FF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000FFFFFF000000
      000000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBF
      BF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000008080
      0000000000000000000000000000000000000000000000000000000000000000
      000080800000FF0000000000000000000000000000000000000000FFFF00FFFF
      FF000000000000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FF
      FF00BFBFBF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FF00000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FF0000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FF00000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FF0000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FF000000000000000000000000000000000000007F7F7F000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFF80FF80FFC003FFFF
      BEF7BEF78061FFFFB6E3BEE38061FFFFA2C1BEC184E1C00FB6F7BEF780018007
      BEF7BEF78001800380F780F780018001FFF7FFF78001800180F780F78001800F
      BEF7BEF78001800FB6F7BEF78001801FA2F7BEF78001C0FFB6F7BEF78001C0FF
      BEF7BEF7C003FFFF80FF80FFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object mt1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 712
    Top = 504
  end
  object mt1Source: TDataSource
    DataSet = mt1
    Left = 744
    Top = 504
  end
  object StateIL: TImageList
    Left = 97
    Top = 552
    Bitmap = {
      494C010106001000140010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F10104A1112
      129B474F51FF495154FF1A2E399B42545E9B383A3B5E0707070B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010102121617802B484AFF2139
      3BFF1D3536FF213E42FF336F80FF489EB9FF5FA0C2FF62686CB2020202030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010141433304D4FFF274B4DFF2D55
      56FF386566FF3A7074FF3F8797FF47A4C4FF52BCE6FF538397FF696A6BA70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000253234612E5455FF1F3B3DFF2D59
      5AFF376F71FF3B7A7EFF3A8397FF46A2C7FF5AC9EFFF3E88A1FF6A6B6CCC0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002C47499952AAABFF72F3F4FF54BE
      C9FF59C4CFFF5AC9D2FF5FCFD8FF6BE0E9FF63D9F6FF4495B2FF7A7E80EE3737
      375A2C2C2C460909090E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000408A8B9971FEFEFF70FBFBFF5DD4
      DCFF389BB3FF349AB5FF44B1C6FF61DBE3FF76FFFEFF61C9D1FF2A3536FF2C3C
      40FF427284FF5797B9E61C30393F030303050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000038787D996DF2F4FF70FEFEFF71FF
      FEFF3BA1B2FF2B94B1FF5EDAE3FF73FFFEFF75FFFEFF75FAFAFF315556FF2440
      43FF367486FF4EB0D9FF5DC9E9FF273438520000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014282A3C56C0CDFF6BF5FDFF5DD7
      E0FF3395A9FF238BA9FF5EE0E8FF70FFFEFF71F4F4FF5EBCBDFF213C3EFF1B32
      36FF2D667AFF47A6D0FF5BD3F7FF42636E990000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000708083333656EFF5FD5F1FF54C7
      E0FF47B4CBFF3C9FB3FF59C5C9FF56B7BBFF519899FF37676AFF223F40FF294D
      52FF398297FF51BCDEFF62E1FEFF478594BB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002B45516B47ACD1FF277B9AFF2C92
      B0FF50C2E1FF56C4DBFF59C4D9FF38727FFF172C2FFF254E55FF408E97FF54B6
      BCFF48A9BAFF50C3DEFF60DDFEFF67BAD6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000013212A394291C0EC4DB4EEFF40A5
      D9FF2283A2FF37A3C7FF50BBE8FF44849CFF4FB2CBFF5CD4F2FF5AD0EFFF44A9
      C0FF207B92FF228BAAFF41AFD3FF3E8099B20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000204050625495F6C4377
      95BD306277D13D6578D11020285824404E5849A3D5FF2D8EB6FF227897FF2E91
      BAFF43A9DCFF48A8DDFF3B81A8F610222D550000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000015242E362F5F7886245C789B204A
      649B1F3E4E9B3649539B0B12162B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000007F7F7F0000000000000000008080800080808000808080008080
      800080808000808080008080800080808000000000000000000000FFFF000000
      0000000000008080800080808000000000000000000000000000000000000000
      0000000000000080800000808000008080000080800000808000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      00007F7F7F0000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000080808000808080000000000000000000000000000000
      0000008080000080800000808000008080000080800000808000008080000080
      8000008080000000000000000000000000000000000080808000000000000000
      0000000000008080800000000000FFFFFF0000FFFF0000FFFF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000000000000000000000FFFF000000000000000000000000007F7F
      7F0000FFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF0000000000000000FFFF0080808000808080008080
      800000FFFF000000000080808000808080000000000000000000000000000080
      8000008080000080800000808000008080000080800000000000000000000080
      8000008080000080800000000000000000000000000000000000FFFFFF0000FF
      FF0000FFFF000000000080808000000000000000000000000000808080000000
      00008080800000000000000000000000000000000000000000000000000000FF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0080808000FFFFFF008080
      800000FFFF0000FFFF0000000000808080000000000000000000008080000080
      800000FFFF0000000000008080000080800000FFFF0000808000008080000000
      0000008080000080800000000000000000000000000080808000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FF00
      0000FF000000FF000000FF0000000000000000FFFF0080808000808080008080
      800000FFFF000000000080808000808080000000000000000000008080000080
      80000080800000FFFF00000000000080800000FFFF0000808000008080000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000080808000000000000000000000000000008080000080
      8000008080000080800000FFFF000000000000FFFF0000808000008080000000
      0000008080000080800000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FF000000FF000000FF000000FF000000000000000000000000FFFF000000
      0000000000008080800080808000000000000000000000000000008080000080
      800000808000008080000080800000FFFF000000000000FFFF0000FFFF000080
      8000008080000080800000808000000000000000000000800000008000000000
      0000000000000000000000000000000000000000000000808000008080000080
      80000000000000800000000000000000000000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000808080008080
      8000808080000000000000000000000000000000000000000000008080000080
      80000080800000000000000000000080800000FFFF0000000000008080000080
      8000008080000080800000808000000000000000000000800000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF0000FF
      FF00000000000080000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FF00
      0000FF000000FF000000FF000000FF000000FF000000FFFFFF00000000008080
      8000000000000000000000000000000000000000000000000000008080000080
      800000FFFF000080800000808000000000000080800000FFFF00000000000080
      8000008080000080800000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008080
      800000000000000000000000000000000000000000000000000000FFFF000080
      800000FFFF00008080000080800000000000008080000080800000FFFF000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FF00
      0000FF000000FF000000FF000000FF000000FF000000FFFFFF00000000008080
      8000000000000000000000000000000000000000000000000000000000000080
      800000FFFF000080800000808000000000000080800000808000008080000080
      8000008080000080800000000000000000000000000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000800000000000000000000000000000000000007F7F7F0000FF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000080800000FFFF0000FFFF00008080000080800000808000008080000080
      800000FFFF000000000000000000000000000000000000800000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000800000008000000000000000000000000000007F7F7F0000FFFF000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000FFFF0000000000000000000000000000000000FFFFFF00FF000000FF00
      0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000080800000808000008080000080800000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      00000000000000FFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FFFFFFFFFF7FFF87FC3FFFFFDE790001
      F00FFC1FAE730000E007801FD6E70000E0038007EE2F0000C0038377FC1F0000
      C001FF07F80F0001C001007180080001C0011F0110010007C0013C01F01F000F
      C0017B0DF83F000FC0037BBDE477000FE0033C79CF6B000FF0071FF19E75000F
      F81F0001BE7B000FFFFFFFFFFEFF800F00000000000000000000000000000000
      000000000000}
  end
  object mt_history: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 144
    Top = 552
  end
  object il2: TcxImageList
    FormatVersion = 1
    DesignInfo = 33554656
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000F10104A1112129B474F51FF495154FF1A2E399B42545E9B383A3B5E0707
          070B000000000000000000000000000000000000000000000000010101021216
          17802B484AFF21393BFF1D3536FF213E42FF336F80FF489EB9FF5FA0C2FF6268
          6CB202020203000000000000000000000000000000000000000010141433304D
          4FFF274B4DFF2D5556FF386566FF3A7074FF3F8797FF47A4C4FF52BCE6FF5383
          97FF696A6BA70000000000000000000000000000000000000000253234612E54
          55FF1F3B3DFF2D595AFF376F71FF3B7A7EFF3A8397FF46A2C7FF5AC9EFFF3E88
          A1FF6A6B6CCC00000000000000000000000000000000000000002C47499952AA
          ABFF72F3F4FF54BEC9FF59C4CFFF5AC9D2FF5FCFD8FF6BE0E9FF63D9F6FF4495
          B2FF7A7E80EE3737375A2C2C2C460909090E0000000000000000408A8B9971FE
          FEFF70FBFBFF5DD4DCFF389BB3FF349AB5FF44B1C6FF61DBE3FF76FFFEFF61C9
          D1FF2A3536FF2C3C40FF427284FF5797B9E61C30393F0303030538787D996DF2
          F4FF70FEFEFF71FFFEFF3BA1B2FF2B94B1FF5EDAE3FF73FFFEFF75FFFEFF75FA
          FAFF315556FF244043FF367486FF4EB0D9FF5DC9E9FF2734385214282A3C56C0
          CDFF6BF5FDFF5DD7E0FF3395A9FF238BA9FF5EE0E8FF70FFFEFF71F4F4FF5EBC
          BDFF213C3EFF1B3236FF2D667AFF47A6D0FF5BD3F7FF42636E99070808333365
          6EFF5FD5F1FF54C7E0FF47B4CBFF3C9FB3FF59C5C9FF56B7BBFF519899FF3767
          6AFF223F40FF294D52FF398297FF51BCDEFF62E1FEFF478594BB2B45516B47AC
          D1FF277B9AFF2C92B0FF50C2E1FF56C4DBFF59C4D9FF38727FFF172C2FFF254E
          55FF408E97FF54B6BCFF48A9BAFF50C3DEFF60DDFEFF67BAD6FF13212A394291
          C0EC4DB4EEFF40A5D9FF2283A2FF37A3C7FF50BBE8FF44849CFF4FB2CBFF5CD4
          F2FF5AD0EFFF44A9C0FF207B92FF228BAAFF41AFD3FF3E8099B2000000000204
          050625495F6C437795BD306277D13D6578D11020285824404E5849A3D5FF2D8E
          B6FF227897FF2E91BAFF43A9DCFF48A8DDFF3B81A8F610222D55000000000000
          000000000000000000000000000000000000000000000000000015242E362F5F
          7886245C789B204A649B1F3E4E9B3649539B0B12162B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000E3111B800020006000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000006110638164719F7123B14D900000000000000000000000045964DFF4191
          49FF3D8B44FF398540FF35803BFF26602BC60C1D0D40173819901E5023D82158
          25FF366D3AFF639C67FF477D4BFF113813CF00000000000000004A9D52FF89CA
          90FF86C88DFF83C68AFF80C487FF63AA69FF36793CFF5D9862FF85BE8BFF94CE
          99FF92CC97FF90CB94FF8ECA92FF487E4BFF113612C4000000004EA357FF8ECC
          95FF8BCB92FF87C98FFF84C78BFF71B477FF4D8E54FF9CD2A2FF98CF9EFF98CF
          9DFF96CE9BFF93CC98FF91CC96FF4B824FFF143B16C90000000053A95CFF4FA4
          58FF4B9F54FF4A9B53FF63AD6BFF559C5DFF7CB683FFA0D4A6FF7DB784FF4E8B
          53FF2A672FFF548E5AFF528A56FF19461DD10000000000000000000000000000
          0000000000000408040C26502A85438E4CFFA0D3A7FFA2D4A8FF35793CFC0F22
          114B000000002A6730FD225526DC000000000000000000000000000000000000
          0000000000000407040C26502B8573B37BFFAADAB1FF79B681FF3A8442FC1127
          134B00000000307136FD28662CDC00000000000000000000000057B063FF55AD
          60FF52A95DFF55A75FFF7BBC84FFA7D7AFFFADDCB4FF559C5DFF6CB173FF539E
          5BFF3A8641FF559D5BFF519958FF26622BD1000000000000000059B465FFB9E3
          C0FFB7E2BFFFB6E1BEFFB4E0BCFFB3DFBAFF9ACFA3FF509D59FF8ECD96FF8CCB
          94FF89CA90FF86C88DFF83C68AFF539A59FF255F2AC9000000005AB566FFBAE3
          C2FFB9E3C1FFB8E2C0FFB7E1BEFF91CB99FF65AF6EFF61AD6AFF89C991FF90CF
          99FF8ECC95FF8BCB92FF87C98FFF579F5EFF28612DC4000000005AB566FF5AB5
          66FF5AB566FF58B264FF56AF62FF41854AC6152A17402F603590448C4BD84CA0
          55FF58A660FF73B87BFF5FA867FF317036CF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001123133847974EF73B8042D9000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000038753FB802040206000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020202060202020600000000000000000000
          00009A9A9AFF939393FF8D8D8DFF868686FF808080FF7A7A7AFF747474FF6F6F
          6FFF6A6A6AFF656565FF616161FF626262FF404040B300000000000000000000
          00009E9E9EFB05050508171717280B0B0B131E1E1E390A0A0A141B1B1B390909
          0913171717340A0A0A18131313302323235B484848C400000000000000003838
          3852B1B1B1FF34343452ABABABFF34343459A5A5A5FF303030599A9A9AFF2B2B
          2B59909090FF2929295C848484FF27272760575757DF07070712000000008484
          84B81212121A050505081E1E1E2E0D0D0D151E1E1E330A0A0A111B1B1B320909
          09111717172F0A0A0A161313132B0B0B0B19666666F91C1C1C4800000000B4B4
          B4F1BFBFBFFF39393952BABABAFF3C3C3C5DB0B0B0FF34343457A6A6A6FF2F2F
          2F57999999FF2D2D2D5A8F8F8FFF2A2A2A5DA2A2A2FF313131781C1C1C23CACA
          CAFF1313131A0606060823232332101010181E1E1E2E0909090F1D1D1D300909
          09101717172A090909121515152A0C0C0C19818181FF4F4F4FB578787894E4E4
          E4FFCBCBCBFF3E3E3E52C7C7C7FF8C8C8CC7BCBCBCFF39393957B2B2B2FF3434
          3455A5A5A5FF5656569B9A9A9AFF2E2E2E5BA9A9A9FF686868E37E7E7E98AEAE
          AED6AAAAAAD6ABABABDCC0C0C0FEEDEDEDFFA79F95F80CB851FF33A653FFC1C1
          C1FF968C81F6D3D3D3FF898989F5737373D66D6D6DD65E5E5EC1000000000000
          0000000000000000000082807DA8C0A485FF25BD69FF64C594FF5FBF87FF2D8F
          3DF1B59163FFA68C72FF57545294000000000000000000000000000000000000
          00000000000000000000251D142E3BC081FF70C89FFFACD8BDFF9FD1B0FF55B4
          76FF589D4DFFB08B5EFF1B140E2E000000000000000000000000000000000000
          0000000000000000000045C08EFF7CCBA9FFAFDAC1FF92CDABFF80C49CFF93CA
          A6FF4BAB6AFF0B7921EB00000000000000000000000000000000000000000000
          0000000000000000000047B083F03EAB78F06AC097FFA4D4B8FF9ACDADFF41AA
          6AFF08862FF3017921EC00000000000000000000000000000000000000000000
          0000000000000000000000000000000000003BB179FFA2D4B8FF99CFAFFF1798
          49FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003DAA77FBA0D3B8FF99CEB0FF1C97
          4CFD000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000042AC78FF3BA971FF2CA060FF229A
          54FD000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000E295C78033CA2DF0442BBFE033DA5E30121587A00000000000000000000
          000000000000868686FF818181FF373737700000000000000000000000000D2C
          62802663C6FD2177E6FF0579EAFF0164DDFF044CBBFC0121587A000000004848
          487C909090FFACACACFFC9C9C9FFA6A6A6FF7E7E7EFF797979FF757575FF0F4A
          B1FF639DF4FF187FFFFF0076F8FF0076EEFF0368E1FF033EA5E4000000004B4B
          4B7C00000000404040707B7B7BE03C3C3C700000000000000000000000000442
          BBFEAECDFEFFFFFFFFFFFFFFFFFFFFFFFFFF187FEFFF0442BBFE000000001818
          18275D5D5D99979797FF929292FF8D8D8DFF888888FF848484FF7F7F7FFF134B
          B1FF8DB5F6FF4D92FFFF1177FFFF2186FFFF408AEBFF033BA1DE000000000000
          0000000000000000000000000000000000000000000000000000000000000E29
          5B773770CCF98DB5F7FFB8D6FEFF72A8F5FF2C6AC9FC021D506D000000000000
          000000000000A1A1A1FF9D9D9DFF989898FF939393FF8F8F8FFF8A8A8AFF8585
          85FF526EA1FF1B53B8FF0542BCFF104AB1FF0120577800000000000000000000
          00005353537CCACACAFFDADADAFFB2B2B2FFD7D7D7FFAAAAAAFFD3D3D3FFA3A3
          A3FFD0D0D0FF9B9B9BFFCCCCCCFF787878FE0000000000000000000000000000
          0000B0B0B0FFF4F4F4FFB9B9B9FF23232336B2B2B2FF21212136ABABABFF1E1E
          1E36A4A4A4FF1D1D1D369C9C9CFF7E7E7EFF000000000000000000000000B8B8
          B8FFD2D2D2FFC0C0C0FFDEDEDEFFBABABAFFDBDBDBFFB3B3B3FFD7D7D7FFACAC
          ACFFD4D4D4FFA4A4A4FFD0D0D0FF898989FF0606060C0000000000000000BCBC
          BCFFC6C6C6FF26262636C1C1C1FF25252536BBBBBBFF23232336B3B3B3FF2121
          2136ACACACFF1F1F1F36A5A5A5FF9A9A9AFF1515152800000000C2C2C2FFD8D8
          D8FFE3E3E3FFC7C7C7FFE1E1E1FFC2C2C2FFDFDFDFFFBBBBBBFFDBDBDBFFB4B4
          B4FFD8D8D8FFACACACFFD4D4D4FFABABABFF2424244300000000C4C4C4FFFCFC
          FCFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
          F9FFF3F3F3FF8D8D8DE5F1F1F1FFD8D8D8FF7D7D7DDF3939396AC5C5C5FFC5C5
          C5FFC3C3C3FFC0C0C0FFBDBDBDFFBABABAFFB7B7B7FFB3B3B3FFAFAFAFFFABAB
          ABFFA7A7A7FFA2A2A2FFC5C5C5FFFBFBFBFFE4E4E4FF787878D4000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000A3A3A3FF9E9E9EFF9A9A9AFF3636365C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000002161D210A57
          74870E81AECC119AD2F90E7BAACC0850708702131B2100000000000000000214
          1D21085073870B76ACCC0E8CCFF90A6FA7CC07496D8702111A21094C63705FCB
          EDFF8AE0F6FF88E3F9FF6FDAF4FF47C1E6FF0C719DBC0D79AACC0F90CEF90E88
          C0E24AC3ECFF72DAF5FF71DEF7FF57D3F3FF39B8E5FF063D5C700F7698A98EDD
          F4FF9EE6FCFF85DEFAFF7BDDFAFF6CD3F2FF24A9DFFF61D1F1FF72DEF9FF2CB6
          ECFF7EDAF5FFB5EEFEFFA7EBFEFF8FE3FBFF58CFF1FF09608EA916B7E9FFBFF1
          FDFF74D9F7FF5BD1F6FF44CBF5FF8EE6FCFF12A2DCFF47C7F4FF2EB6F1FF13AF
          EEFFD6F7FFFFBDEFFFFFABEBFFFF9FE7FFFFAEF0FEFF0F98DCFF18BBECFFBDEF
          FCFF99E3FBFF89DFFAFF74D9F9FF63DAF8FF13A8E0FF5BD2F9FF44C9F7FF16B5
          F1FFC2F0FDFFCEF4FFFFC6F4FFFFB8EFFEFF89E0F6FF0E88C3DC19C0EFFFAAEA
          FBFF78DAF8FF61D4F6FF44CDF5FF66DBF8FF14ADE4FF36C1F2FF2BB7F1FF1AB1
          F2FF1BB7F4FF14B3F1FF13AFF0FF12A7E6F80E88BDCE0533484F1BC4F1FFCFF5
          FEFFC3F0FEFFBDEFFEFFA2E7FCFF99E8FCFF15B3E7FF5ED3F9FF48CCF8FF36C2
          F5FF61D3F8FF12A1DCFF000000000000000000000000000000001BC8F4FFDAF7
          FEFFD1F4FFFFC3F1FFFFB7EEFFFFBFF2FEFF17B7EBFF3AC4F3FF2DBBF2FF20B0
          EFFF51C7F4FF12A5DFFF000000000000000000000000000000000F6C838891E1
          FAFFDFF8FFFFD7F7FFFFCCF4FFFFA9E9FAFF2AC2F0FF64D6F9FF4CCFF8FF3BC6
          F6FF68D6F9FF14AAE2FF00000000000000000000000000000000020B0E0E1AB6
          DDE41BC8F3FC1BC8F5FF19C0EDF81AC2F2FF79DCF8FF3CC7F4FF30BFF3FF23B5
          F0FF6CD7F9FF14AFE5FF00000000000000000000000000000000000000000000
          000000000000000000000000000019C3F1FFA2E9FCFF69D9FAFF51D2F9FF3EC9
          F7FF5ACCF5FF15B3E8FF00000000000000000000000000000000000000000000
          00000000000000000000000000001BC6F3FF87E2FAFF40CBF5FF34C4F3FF25BA
          F1FF5CCDF6FF17B7EBFF00000000000000000000000000000000000000000000
          00000000000000000000000000001CC9F4FFBAF0FDFFAAEAFEFFA2E9FEFF79DD
          FBFF7BDFFBFF17BBEDFF00000000000000000000000000000000000000000000
          00000000000000000000000000001CCCF6FFD6F7FFFFBCEFFFFFABEBFFFF9AE6
          FFFFA7EDFDFF18BFF0FF00000000000000000000000000000000000000000000
          00000000000000000000000000001DC5EBF3A2E7FBFFD3F6FFFFC7F4FFFFBBF1
          FFFFA2E9FBFF16A8D1DC00000000000000000000000000000000000000000000
          0000000000000000000000000000041E23241BB9DEE41ECCF4FC1CCCF6FF1BC4
          EEF816A2C5CE083D4C4F00000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000002161D210A57
          74870E81AECC119AD2F90E7BAACC0850708702131B2100000000000000000214
          1D21115E54C7196C3CFC196B37FF196B3CFC105B50C702111A21094C63705FCB
          EDFF8AE0F6FF88E3F9FF6FDAF4FF47C1E6FF0C719DBC0D79AACC0F90CEF91479
          79F1288C53FF64BA8DFF95D2B2FF64BA8DFF288C53FF105648BF0F7698A98EDD
          F4FF9EE6FCFF85DEFAFF7BDDFAFF6CD3F2FF24A9DFFF61D1F1FF72DEF9FF1C6E
          3FFF62BA8BFF60BA87FFFFFFFFFF60B987FF67BC8FFF196B39FC16B7E9FFBFF1
          FDFF74D9F7FF5BD1F6FF44CBF5FF8EE6FCFF12A2DCFF47C7F4FF2EB6F1FF317B
          4CFF9CD4B6FFFFFFFFFFFFFFFFFFFFFFFFFF95D2B2FF196B37FF18BBECFFBDEF
          FCFF99E3FBFF89DFFAFF74D9F9FF63DAF8FF13A8E0FF5BD2F9FF44C9F7FF4388
          62FF90D3B1FF92D6B1FFFFFFFFFF65BC8CFF67BC8FFF196C3CFE19C0EFFFAAEA
          FBFF78DAF8FF61D4F6FF44CDF5FF66DBF8FF14ADE4FF36C1F2FF2BB7F1FF36A0
          ADFF61AB81FF95D4B4FFBAE6D0FF6ABB8FFF2D8F57FF10523FB01BC4F1FFCFF5
          FEFFC3F0FEFFBDEFFEFFA2E7FCFF99E8FCFF15B3E7FF5ED3F9FF48CCF8FF36C2
          F5FF5DB4B5FF549574FF4F8E66FF3D7D54F2163A237C000000001BC8F4FFDAF7
          FEFFD1F4FFFFC3F1FFFFB7EEFFFFBFF2FEFF17B7EBFF3AC4F3FF2DBBF2FF20B0
          EFFF51C7F4FF12A5DFFF000000000000000000000000000000000F6C838891E1
          FAFFDFF8FFFFD7F7FFFFCCF4FFFFA9E9FAFF2AC2F0FF64D6F9FF4CCFF8FF3BC6
          F6FF68D6F9FF14AAE2FF00000000000000000000000000000000020B0E0E1AB6
          DDE41BC8F3FC1BC8F5FF19C0EDF81AC2F2FF79DCF8FF3CC7F4FF30BFF3FF23B5
          F0FF6CD7F9FF14AFE5FF00000000000000000000000000000000000000000000
          000000000000000000000000000019C3F1FFA2E9FCFF69D9FAFF51D2F9FF3EC9
          F7FF5ACCF5FF15B3E8FF00000000000000000000000000000000000000000000
          00000000000000000000000000001BC6F3FF87E2FAFF40CBF5FF34C4F3FF25BA
          F1FF5CCDF6FF17B7EBFF00000000000000000000000000000000000000000000
          00000000000000000000000000001CC9F4FFBAF0FDFFAAEAFEFFA2E9FEFF79DD
          FBFF7BDFFBFF17BBEDFF00000000000000000000000000000000000000000000
          00000000000000000000000000001CCCF6FFD6F7FFFFBCEFFFFFABEBFFFF9AE6
          FFFFA7EDFDFF18BFF0FF00000000000000000000000000000000000000000000
          00000000000000000000000000001DC5EBF3A2E7FBFFD3F6FFFFC7F4FFFFBBF1
          FFFFA2E9FBFF16A8D1DC00000000000000000000000000000000000000000000
          0000000000000000000000000000041E23241BB9DEE41ECCF4FC1CCCF6FF1BC4
          EEF816A2C5CE083D4C4F00000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000002161D210A57
          74870E81AECC119AD2F90E7BAACC0850708702131B2100000000000000000214
          1D21125399BF044BB8F90442BCFF0449B7F9054791C002111A21094C63705FCB
          EDFF8AE0F6FF88E3F9FF6FDAF4FF47C1E6FF0C719DBC0D79AACC0F90CEF91470
          C2F12665CAFF2177E6FF0579EAFF0164DDFF054EBDFF044088B40F7698A98EDD
          F4FF9EE6FCFF85DEFAFF7BDDFAFF6CD3F2FF24A9DFFF61D1F1FF72DEF9FF0851
          BFFF639DF4FF187FFFFF0076F8FF0076EEFF0368E1FF0448B4F616B7E9FFBFF1
          FDFF74D9F7FF5BD1F6FF44CBF5FF8EE6FCFF12A2DCFF47C7F4FF2EB6F1FF0442
          BCFFAECDFEFFFFFFFFFFFFFFFFFFFFFFFFFF187FEFFF0442BCFF18BBECFFBDEF
          FCFF99E3FBFF89DFFAFF74D9F9FF63DAF8FF13A8E0FF5BD2F9FF44C9F7FF0653
          C0FF8DB5F6FF4D92FFFF1177FFFF2186FFFF408AEBFF044CBAFA19C0EFFFAAEA
          FBFF78DAF8FF61D4F6FF44CDF5FF66DBF8FF14ADE4FF36C1F2FF2BB7F1FF1C87
          DDFF3775D2FF8DB5F7FFB8D6FEFF72A8F5FF2D6BCAFE053A799A1BC4F1FFCFF5
          FEFFC3F0FEFFBDEFFEFFA2E7FCFF99E8FCFF15B3E7FF5ED3F9FF48CCF8FF36C2
          F5FF4199E0FF0E57C3FF0442BBFE033DA4E201205778000000001BC8F4FFDAF7
          FEFFD1F4FFFFC3F1FFFFB7EEFFFFBFF2FEFF17B7EBFF3AC4F3FF2DBBF2FF20B0
          EFFF51C7F4FF12A5DFFF000000000000000000000000000000000F6C838891E1
          FAFFDFF8FFFFD7F7FFFFCCF4FFFFA9E9FAFF2AC2F0FF64D6F9FF4CCFF8FF3BC6
          F6FF68D6F9FF14AAE2FF00000000000000000000000000000000020B0E0E1AB6
          DDE41BC8F3FC1BC8F5FF19C0EDF81AC2F2FF79DCF8FF3CC7F4FF30BFF3FF23B5
          F0FF6CD7F9FF14AFE5FF00000000000000000000000000000000000000000000
          000000000000000000000000000019C3F1FFA2E9FCFF69D9FAFF51D2F9FF3EC9
          F7FF5ACCF5FF15B3E8FF00000000000000000000000000000000000000000000
          00000000000000000000000000001BC6F3FF87E2FAFF40CBF5FF34C4F3FF25BA
          F1FF5CCDF6FF17B7EBFF00000000000000000000000000000000000000000000
          00000000000000000000000000001CC9F4FFBAF0FDFFAAEAFEFFA2E9FEFF79DD
          FBFF7BDFFBFF17BBEDFF00000000000000000000000000000000000000000000
          00000000000000000000000000001CCCF6FFD6F7FFFFBCEFFFFFABEBFFFF9AE6
          FFFFA7EDFDFF18BFF0FF00000000000000000000000000000000000000000000
          00000000000000000000000000001DC5EBF3A2E7FBFFD3F6FFFFC7F4FFFFBBF1
          FFFFA2E9FBFF16A8D1DC00000000000000000000000000000000000000000000
          0000000000000000000000000000041E23241BB9DEE41ECCF4FC1CCCF6FF1BC4
          EEF816A2C5CE083D4C4F00000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000103B52F7275E85FB4886BAFB326B8EC1061018220000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002A6381FB94C7F9FF91C9F9FF4185C9FF1B5FA2F30816
          222F000000000000000000000000000000000000000000000000000000006565
          65D37F7E7EF5878686FF4389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF3D83
          BBFF798693FF807F7EF85F5F5FC7000000000000000000000000000000008484
          84FBC1C1C0FEBCBCBCFF7E9CB0FF7AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0
          EDFF4C97D7FFAFBAC3FE828281F6000000000000000000000000000000008C8C
          8BFFFFFFFFFFEBEBEBFFEBEBEBFFA5C8D8FF76B9D6FFC2F6FDFF63DFF7FF5DE2
          F8FF79D3F0FF4A99DCFF838D96FF000000000000000000000000000000009291
          91FFFFFFFFFFB4B4B4FF949494FFE7E7E7FF7EA2B4FF77CBE7FFC7F7FDFF5EDC
          F5FF5AE1F7FF7BD4F1FF4695D8FF0B1D2C340000000000000000000000009595
          95FFFFFFFFFFE8E8E8FFE7E7E7FFE5E5E5FFE3E3E3FFABD3E0FF79D3EEFFC7F7
          FDFF5FDCF5FF5BE2F7FF7AD6F2FF3A8BCBE80D1B273000000000000000009A9A
          99FFFFFFFFFFB1B1B1FF919191FFE2E2E2FFADADADFF8F8F8FFFA8D2DEFF7CD4
          EDFFC4F6FDFF6CDDF6FF6DCAEDFF63A3D7FF568FC2EC0C161E26000000009E9D
          9DFFFFFFFFFFE3E3E3FFE1E1E1FFDCDCDCFFDBDBDBFFD7D7D7FFD3D3D3FF98C9
          D8FF80D5EDFFB2E3F9FF8BC0E7FFAED3F6FFC4E0FCFF639ACCF700000000A0A0
          A0FFFFFFFFFFADADADFF8E8E8EFFD8D8D8FFA5A5A5FF8A8A8AFFCECECEFF7374
          E8FF417ADEFF77BEE7FFB4D2F0FFE5F3FFFFACD2EFFF427FB5E800000000A3A3
          A3FFFCFCFCFFDADADAFFD7D7D7FFD2D2D2FFCECECEFFC9C9C9FFC5C5C5FFC2C2
          C2FFBFBFBFFFBCE5F4FF58A5D8FF85B1DBFF469DD0FF10374D5E00000000A3A3
          A3FFFFFFFFFFB07B56FFC38D67FFC58F68FFC69069FFC8926BFFCA946CFFCA95
          6EFFB07B56FFFFFFFFFFA1A09FFF00000000000000000000000000000000A4A4
          A4FFFFFFFFFFB07B56FFC18B64FFC38D66FFC58F67FFC69069FFC8926BFFCA94
          6CFFB07B56FFFFFFFFFFA0A0A0FF000000000000000000000000000000009F9F
          9FFBFEFEFEFEA7724DFFA7724DFFA7724DFFA7724DFFA7724DFFA7724DFFA772
          4DFFA7724DFFFFFFFFFF9E9E9EFF000000000000000000000000000000007C7C
          7CD1EFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF9F9F9F98A8A8AE6000000000000000000000000000000003E3E
          3E8A8D8D8DE3A8A8A8FFABABABFFACACACFFADADADFFACACACFFABABABFFA8A8
          A8FFA4A4A4FF8F8F8FEB48484892000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000868686FF818181FF373737700000000000000000000000000000
          00002E2E2E70656565FF626262FF000000000000000000000000000000004848
          487C909090FFACACACFFC9C9C9FFA6A6A6FF7E7E7EFF797979FF757575FF7171
          71FF999999FFC5C5C5FF959595FF545454DB0000000000000000000000004B4B
          4B7C00000000404040707B7B7BE03C3C3C700000000000000000000000000000
          000032323270606060E02F2F2F70636363F70000000000000000000000001818
          18275D5D5D99979797FF929292FF8D8D8DFF888888FF848484FF7F7F7FFF7B7B
          7BFF767676FF727272FF00000000656565F40000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003030306737373FF666666EB0000000000000000000000000000
          000000000000A1A1A1FF9D9D9DFF989898FF939393FF8F8F8FFF8A8A8AFF8585
          85FF818181FF7F7F7FFFB1B1B1FF747474FE0000000000000000000000000000
          00005353537CCACACAFFDADADAFFB2B2B2FFD7D7D7FFAAAAAAFFD3D3D3FFA3A3
          A3FFD0D0D0FF9B9B9BFFCCCCCCFF787878FE0000000000000000000000000000
          0000B0B0B0FFF4F4F4FFB9B9B9FF23232336B2B2B2FF21212136ABABABFF1E1E
          1E36A4A4A4FF1D1D1D369C9C9CFF7E7E7EFF000000000000000000000000B8B8
          B8FFD2D2D2FFC0C0C0FFDEDEDEFFBABABAFFDBDBDBFFB3B3B3FFD7D7D7FFACAC
          ACFFD4D4D4FFA4A4A4FFD0D0D0FF898989FF0606060C0000000000000000BCBC
          BCFFC6C6C6FF26262636C1C1C1FF25252536BBBBBBFF23232336B3B3B3FF2121
          2136ACACACFF1F1F1F36A5A5A5FF9A9A9AFF1515152800000000C2C2C2FFD8D8
          D8FFE3E3E3FFC7C7C7FFE1E1E1FFC2C2C2FFDFDFDFFFBBBBBBFFDBDBDBFFB4B4
          B4FFD8D8D8FFACACACFFD4D4D4FFABABABFF2424244300000000C4C4C4FFFCFC
          FCFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
          F9FFF3F3F3FF8D8D8DE5F1F1F1FFD8D8D8FF7D7D7DDF3939396AC5C5C5FFC5C5
          C5FFC3C3C3FFC0C0C0FFBDBDBDFFBABABAFFB7B7B7FFB3B3B3FFAFAFAFFFABAB
          ABFFA7A7A7FFA2A2A2FFC5C5C5FFFBFBFBFFE4E4E4FF787878D4000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000A3A3A3FF9E9E9EFF9A9A9AFF3636365C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D391D88186634F2196B37FF186634F20D391D8800000000000000000000
          000000000000868686FF818181FF373737700000000000000000000000000D37
          1C84288C53FF64BA8DFF95D2B2FF64BA8DFF288C53FF0E3B1E8C000000004848
          487C909090FFACACACFFC9C9C9FFA6A6A6FF7E7E7EFF797979FF757575FF1E6C
          3BFF62BA8BFF60BA87FFFFFFFFFF60B987FF67BC8FFF186835F7000000004B4B
          4B7C00000000404040707B7B7BE03C3C3C70000000000000000000000000317B
          4CFF9CD4B6FFFFFFFFFFFFFFFFFFFFFFFFFF95D2B2FF196B37FF000000001818
          18275D5D5D99979797FF929292FF8D8D8DFF888888FF848484FF7F7F7FFF4687
          5EFF90D3B1FF92D6B1FFFFFFFFFF65BC8CFF67BC8FFF186835F7000000000000
          0000000000000000000000000000000000000000000000000000000000002948
          348061AB81FF95D4B4FFBAE6D0FF6ABB8FFF2D8F57FF0E3B1E8C000000000000
          000000000000A1A1A1FF9D9D9DFF989898FF939393FF8F8F8FFF8A8A8AFF8585
          85FF6E8A78FF5A936FFF4F8E66FF43835AFF163A237C00000000000000000000
          00005353537CCACACAFFDADADAFFB2B2B2FFD7D7D7FFAAAAAAFFD3D3D3FFA3A3
          A3FFD0D0D0FF9B9B9BFFCCCCCCFF787878FE0000000000000000000000000000
          0000B0B0B0FFF4F4F4FFB9B9B9FF23232336B2B2B2FF21212136ABABABFF1E1E
          1E36A4A4A4FF1D1D1D369C9C9CFF7E7E7EFF000000000000000000000000B8B8
          B8FFD2D2D2FFC0C0C0FFDEDEDEFFBABABAFFDBDBDBFFB3B3B3FFD7D7D7FFACAC
          ACFFD4D4D4FFA4A4A4FFD0D0D0FF898989FF0606060C0000000000000000BCBC
          BCFFC6C6C6FF26262636C1C1C1FF25252536BBBBBBFF23232336B3B3B3FF2121
          2136ACACACFF1F1F1F36A5A5A5FF9A9A9AFF1515152800000000C2C2C2FFD8D8
          D8FFE3E3E3FFC7C7C7FFE1E1E1FFC2C2C2FFDFDFDFFFBBBBBBFFDBDBDBFFB4B4
          B4FFD8D8D8FFACACACFFD4D4D4FFABABABFF2424244300000000C4C4C4FFFCFC
          FCFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
          F9FFF3F3F3FF8D8D8DE5F1F1F1FFD8D8D8FF7D7D7DDF3939396AC5C5C5FFC5C5
          C5FFC3C3C3FFC0C0C0FFBDBDBDFFBABABAFFB7B7B7FFB3B3B3FFAFAFAFFFABAB
          ABFFA7A7A7FFA2A2A2FFC5C5C5FFFBFBFBFFE4E4E4FF787878D4000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000A3A3A3FF9E9E9EFF9A9A9AFF3636365C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000E295C78033CA2DF0442BBFE033DA5E30121587A00000000000000000000
          000000000000868686FF818181FF373737700000000000000000000000000D2C
          62802663C6FD2177E6FF0579EAFF0164DDFF044CBBFC0121587A000000004848
          487C909090FFACACACFFC9C9C9FFA6A6A6FF7E7E7EFF797979FF757575FF0F4A
          B1FF639DF4FF187FFFFF0076F8FF0076EEFF0368E1FF033EA5E4000000004B4B
          4B7C00000000404040707B7B7BE03C3C3C700000000000000000000000000442
          BBFEAECDFEFFFFFFFFFFFFFFFFFFFFFFFFFF187FEFFF0442BBFE000000001818
          18275D5D5D99979797FF929292FF8D8D8DFF888888FF848484FF7F7F7FFF134B
          B1FF8DB5F6FF4D92FFFF1177FFFF2186FFFF408AEBFF033BA1DE000000000000
          0000000000000000000000000000000000000000000000000000000000000E29
          5B773770CCF98DB5F7FFB8D6FEFF72A8F5FF2C6AC9FC021D506D000000000000
          000000000000A1A1A1FF9D9D9DFF989898FF939393FF8F8F8FFF8A8A8AFF8585
          85FF526EA1FF1B53B8FF0542BCFF104AB1FF0120577800000000000000000000
          00005353537CCACACAFFDADADAFFB2B2B2FFD7D7D7FFAAAAAAFFD3D3D3FFA3A3
          A3FFD0D0D0FF9B9B9BFFCCCCCCFF787878FE0000000000000000000000000000
          0000B0B0B0FFF4F4F4FFB9B9B9FF23232336B2B2B2FF21212136ABABABFF1E1E
          1E36A4A4A4FF1D1D1D369C9C9CFF7E7E7EFF000000000000000000000000B8B8
          B8FFD2D2D2FFC0C0C0FFDEDEDEFFBABABAFFDBDBDBFFB3B3B3FFD7D7D7FFACAC
          ACFFD4D4D4FFA4A4A4FFD0D0D0FF898989FF0606060C0000000000000000BCBC
          BCFFC6C6C6FF26262636C1C1C1FF25252536BBBBBBFF23232336B3B3B3FF2121
          2136ACACACFF1F1F1F36A5A5A5FF9A9A9AFF1515152800000000C2C2C2FFD8D8
          D8FFE3E3E3FFC7C7C7FFE1E1E1FFC2C2C2FFDFDFDFFFBBBBBBFFDBDBDBFFB4B4
          B4FFD8D8D8FFACACACFFD4D4D4FFABABABFF2424244300000000C4C4C4FFFCFC
          FCFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
          F9FFF3F3F3FF8D8D8DE5F1F1F1FFD8D8D8FF7D7D7DDF3939396AC5C5C5FFC5C5
          C5FFC3C3C3FFC0C0C0FFBDBDBDFFBABABAFFB7B7B7FFB3B3B3FFAFAFAFFFABAB
          ABFFA7A7A7FFA2A2A2FFC5C5C5FFFBFBFBFFE4E4E4FF787878D4000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000A3A3A3FF9E9E9EFF9A9A9AFF3636365C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000103B52F7275E85FB4886BAFB326B8EC1061018220000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000868686FF2C6583FF94C7F9FF91C9F9FF4185C9FF1B5FA2F30816
          222F2E2E2E70656565FF626262FF000000000000000000000000000000004848
          487C909090FFACACACFF4389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF3A80
          B9FF8896A3FFC5C5C5FF959595FF545454DB0000000000000000000000004B4B
          4B7C0000000040404070567488EC7AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0
          EDFF408CCCF35A6670E42F2F2F70636363F70000000000000000000000001818
          18275D5D5D99979797FF929292FF678A9AFF73B7D4FFC2F6FDFF63DFF7FF5DE2
          F8FF79D3F0FF4594D7FF07121B20656565F40000000000000000000000000000
          000000000000000000000000000000000000082D3E5677CBE7FFC7F7FDFF5EDC
          F5FF5AE1F7FF7BD4F1FF4493D7FF5D6E7EEF0000000000000000000000000000
          000000000000A1A1A1FF9D9D9DFF989898FF939393FF7098A5FF79D3EEFFC7F7
          FDFF5FDCF5FF5BE2F7FF7AD6F2FF4596D5FF0D1B273000000000000000000000
          00005353537CCACACAFFDADADAFFB2B2B2FFD7D7D7FFAAAAAAFFA2CBD8FF7CD4
          EDFFC4F6FDFF6CDDF6FF6DCAEDFF63A3D7FF568FC2EC0C161E26000000000000
          0000B0B0B0FFF4F4F4FFB9B9B9FF23232336B2B2B2FF21212136ABABABFF2051
          60797FD4ECFFB2E3F9FF8BC0E7FFAED3F6FFC4E0FCFF639ACCF700000000B8B8
          B8FFD2D2D2FFC0C0C0FFDEDEDEFFBABABAFFDBDBDBFFB3B3B3FFD7D7D7FFACAC
          ACFF95CAD9FF77BEE7FFB4D2F0FFE5F3FFFFACD2EFFF427FB5E800000000BCBC
          BCFFC6C6C6FF26262636C1C1C1FF25252536BBBBBBFF23232336B3B3B3FF2121
          2136ACACACFF254E5D7758A5D8FF85B1DBFF469DD0FF10374D5EC2C2C2FFD8D8
          D8FFE3E3E3FFC7C7C7FFE1E1E1FFC2C2C2FFDFDFDFFFBBBBBBFFDBDBDBFFB4B4
          B4FFD8D8D8FFACACACFFD4D4D4FFABABABFF2424244300000000C4C4C4FFFCFC
          FCFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
          F9FFF3F3F3FF8D8D8DE5F1F1F1FFD8D8D8FF7D7D7DDF3939396AC5C5C5FFC5C5
          C5FFC3C3C3FFC0C0C0FFBDBDBDFFBABABAFFB7B7B7FFB3B3B3FFAFAFAFFFABAB
          ABFFA7A7A7FFA2A2A2FFC5C5C5FFFBFBFBFFE4E4E4FF787878D4000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000A3A3A3FF9E9E9EFF9A9A9AFF3636365C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000002E80B6EC2E82BDF62D80BCF62B7EBBF6297C
          BAF6287BB9F62779B8F62577B7F62475B6F62273B6F61A5A90C3000000000000
          000000000000868686FF818181FF3888B9F0DDECF6FFBDEEF9FFACEAF8FFABEA
          F8FFABEAF8FFABEAF8FFADEAF8FFD4F3FBFFA4C8E4FF19527FAB000000004848
          487C909090FFACACACFFC9C9C9FF7BA1B6FF8EC2E1FF97E8F9FF61DCF6FF5BDB
          F5FF3288C2FF5BDBF5FF6ADEF6FFB1E7F6FF2978B1E90715202A000000004B4B
          4B7C00000000404040707B7B7BE03C3E3F73367EA6CCABDBEFFF74E0F7FF58DA
          F5FF58DAF5FF5DDBF5FF90E6F8FF92C1E1FF1944617E00000000000000001818
          18275D5D5D99979797FF929292FF8D8D8DFF76909DFF7BBDDFFFA2EAF9FF61DC
          F6FF3187C2FF77E1F7FFB6DEF0FF408DBAFD03070A0D00000000000000000000
          00000000000000000000000000000000000001010202316D88A3ACD9ECFF82E3
          F8FF3388C2FFACEDFAFF439ECFFF5A7888F20000000000000000000000000000
          000000000000A1A1A1FF9D9D9DFF989898FF939393FF85959BFF55ACD2FFB4EB
          F8FF8EE6F8FFB5DDEEFF68A9C9FF737576FE0000000000000000000000000000
          00005353537CCACACAFFDADADAFFB2B2B2FFD7D7D7FFAAAAAAFF95C5D7FFA4D7
          EBFFDCF4FBFF56AED3FFB2C6CEFF787878FE0000000000000000000000000000
          0000B0B0B0FFF4F4F4FFB9B9B9FF23232336B2B2B2FF21212136A7ACAEFF50A1
          BFDFABDBEDFF3C7185A49C9C9CFF7E7E7EFF000000000000000000000000B8B8
          B8FFD2D2D2FFC0C0C0FFDEDEDEFFBABABAFFDBDBDBFFB3B3B3FFD7D7D7FF92B2
          BDFF76C2DCFF9EA6A9FFD0D0D0FF898989FF0606060C0000000000000000BCBC
          BCFFC6C6C6FF26262636C1C1C1FF25252536BBBBBBFF23232336B3B3B3FF2121
          2136ACACACFF1F1F1F36A5A5A5FF9A9A9AFF1515152800000000C2C2C2FFD8D8
          D8FFE3E3E3FFC7C7C7FFE1E1E1FFC2C2C2FFDFDFDFFFBBBBBBFFDBDBDBFFB4B4
          B4FFD8D8D8FFACACACFFD4D4D4FFABABABFF2424244300000000C4C4C4FFFCFC
          FCFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
          F9FFF3F3F3FF8D8D8DE5F1F1F1FFD8D8D8FF7D7D7DDF3939396AC5C5C5FFC5C5
          C5FFC3C3C3FFC0C0C0FFBDBDBDFFBABABAFFB7B7B7FFB3B3B3FFAFAFAFFFABAB
          ABFFA7A7A7FFA2A2A2FFC5C5C5FFFBFBFBFFE4E4E4FF787878D4000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000A3A3A3FF9E9E9EFF9A9A9AFF3636365C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000731EEB037B1EFF00020004000000000000000000000000000000000000
          000000000000868686FF818181FF373737700000000000000000000000000000
          0000057C2BF443A15FFF14762CFF000301060000000000000000000000004848
          487C909090FFACACACFFC9C9C9FFA6A6A6FF229751FF1C9149FF168F43FF108B
          3BFF3A9F5EFF80C196FF46A362FF107629F90003010700000000000000004B4B
          4B7C00000000404040707B7B7BE03C3C3C70299B5BFF90CAA9FF8DC8A5FF8AC6
          A1FF88C59EFF6AB685FF82C297FF48A566FF00691CD700040109000000001818
          18275D5D5D99979797FF929292FF8D8D8DFF319F63FF94CDADFF6FBA8EFF6BB8
          89FF66B685FF61B380FF67B582FF83C298FF3CA05CFF007C24F9000000000000
          00000000000000000000000000000000000037A36BFF96CEB0FF94CDADFF91CB
          AAFF90CBA8FF74BC90FF8AC7A1FF46A568FF078534FB00010001000000000000
          000000000000A1A1A1FF9D9D9DFF989898FF3DA56FFF38A36EFF34A168FF309D
          62FF55AF7CFF91CBAAFF4FAB74FF188F46FF0001000100000000000000000000
          00005353537CCACACAFFDADADAFFB2B2B2FFD7D7D7FFAAAAAAFFD3D3D3FFA3A3
          A3FF3DA36CFF5AB381FF289857FF787878FE0000000000000000000000000000
          0000B0B0B0FFF4F4F4FFB9B9B9FF23232336B2B2B2FF21212136ABABABFF1E1E
          1E3640A36FFF319F65FF9C9C9CFF7E7E7EFF000000000000000000000000B8B8
          B8FFD2D2D2FFC0C0C0FFDEDEDEFFBABABAFFDBDBDBFFB3B3B3FFD7D7D7FFACAC
          ACFFD4D4D4FFA4A4A4FFD0D0D0FF898989FF0606060C0000000000000000BCBC
          BCFFC6C6C6FF26262636C1C1C1FF25252536BBBBBBFF23232336B3B3B3FF2121
          2136ACACACFF1F1F1F36A5A5A5FF9A9A9AFF1515152800000000C2C2C2FFD8D8
          D8FFE3E3E3FFC7C7C7FFE1E1E1FFC2C2C2FFDFDFDFFFBBBBBBFFDBDBDBFFB4B4
          B4FFD8D8D8FFACACACFFD4D4D4FFABABABFF2424244300000000C4C4C4FFFCFC
          FCFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
          F9FFF3F3F3FF8D8D8DE5F1F1F1FFD8D8D8FF7D7D7DDF3939396AC5C5C5FFC5C5
          C5FFC3C3C3FFC0C0C0FFBDBDBDFFBABABAFFB7B7B7FFB3B3B3FFAFAFAFFFABAB
          ABFFA7A7A7FFA2A2A2FFC5C5C5FFFBFBFBFFE4E4E4FF787878D4000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000A3A3A3FF9E9E9EFF9A9A9AFF3636365C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000868686FF818181FF373737700000000000000000000000000000
          00002E2E2E70656565FF626262FF000000000000000000000000000000004848
          487C909090FFACACACFFC9C9C9FFA6A6A6FF7E7E7EFF797979FF757575FF7171
          71FF999999FFC5C5C5FF959595FF545454DB0000000000000000000000004B4B
          4B7C00000000404040707B7B7BE03C3C3C700000000000000000000000000000
          000032323270606060E02F2F2F70636363F70000000000000000000000001818
          18275D5D5D99979797FF929292FF8D8D8DFF888888FF848484FF7F7F7FFF7B7B
          7BFF767676FF727272FF00000000656565F40000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003030306737373FF666666EB0000000000000000000000000000
          000000000000A1A1A1FF9D9D9DFF989898FF939393FF8F8F8FFF8A8A8AFF8585
          85FF818181FF7F7F7FFFB1B1B1FF747474FE0000000000000000000000000000
          00005353537CCACACAFFDADADAFFB2B2B2FFD7D7D7FFAAAAAAFFD3D3D3FFA3A3
          A3FFD0D0D0FF9B9B9BFFCCCCCCFF787878FE0000000000000000000000000000
          0000B0B0B0FFF4F4F4FFB9B9B9FF23232336B2B2B2FF21212136ABABABFF1E1E
          1E36A4A4A4FF1D1D1D369C9C9CFF7E7E7EFF000000000000000000000000B8B8
          B8FFD2D2D2FFC0C0C0FFDEDEDEFFBABABAFFDADBDAFF088736FF389551FFACAC
          ACFFD4D4D4FFA4A4A4FFD0D0D0FF898989FF0606060C0000000000000000BCBC
          BCFFC6C6C6FF26262636C1C1C1FF252525361A9047FF46A568FF48A566FF0A62
          20C5ACACACFF1F1F1F36A5A5A5FF9A9A9AFF1515152800000000C2C2C2FFD8D8
          D8FFE3E3E3FFC7C7C7FFE1E1E1FF289857FF4FAB74FF8AC7A1FF82C297FF46A3
          62FF57A16AFFACACACFFD4D4D4FFABABABFF2424244300000000C4C4C4FFFCFC
          FCFFF9F9F9FFF9F9F9FF319F65FF5AB381FF91CBAAFF74BC90FF6AB685FF80C1
          96FF43A15FFF147E2BFCF1F1F1FFD8D8D8FF7D7D7DDF3939396AC5C5C5FFC5C5
          C5FFC3C3C3FFC0C0C0FF42A571FF3CA16AFF55AF7CFF90CBA8FF88C59EFF3A9F
          5EFF0E8635FF0D802BFFC5C5C5FFFBFBFBFFE4E4E4FF787878D4000000000000
          00000000000000000000000000000000000033A167FF94CDADFF8DC8A5FF158F
          43FF0000000000000000A3A3A3FF9E9E9EFF9A9A9AFF3636365C000000000000
          00000000000000000000000000000000000036A06BFB96CEB0FF90CAA9FF1B90
          48FD000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003DA56FFF37A36BFF299B5BFF2196
          50FD000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000868686FF818181FF373737700000000000000000000000000000
          00002E2E2E70656565FF626262FF000000000000000000000000000000004848
          487C909090FFACACACFFC9C9C9FFA6A6A6FF7E7E7EFF797979FF757575FF7171
          71FF999999FFC5C5C5FF959595FF545454DB0000000000000000000000004B4B
          4B7C00000000404040707B7B7BE03C3C3C700000000000000000000000000000
          000032323270606060E02F2F2F70636363F70000000000000000000000001818
          18275D5D5D99979797FF929292FF8D8D8DFF888888FF848484FF7F7F7FFF7B7B
          7BFF767676FF727272FF00000000656565F40000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003030306737373FF666666EB0000000000000000000000000000
          000000000000A1A1A1FF9D9D9DFF989898FF939393FF8F8F8FFF8A8A8AFF8585
          85FF818181FF7F7F7FFFB1B1B1FF747474FE0000000000000000000000000000
          00005353537CCACACAFFDADADAFFB2B2B2FFD7D7D7FFAAAAAAFFD3D3D3FFA3A3
          A3FFD0D0D0FF9B9B9BFFCCCCCCFF787878FE0000000000000000000000000000
          0000B0B0B0FFF4F4F4FFB9B9B9FF23232336B2B2B2FF21212136ABABABFF1E1E
          1E36A4A4A4FF1D1D1D369C9C9CFF7E7E7EFF000000000000000000000000B8B8
          B8FFD2D2D2FFC0C0C0FFDEDEDEFFBABABAFF42AC78FF3BA971FF2CA060FF239B
          56FFD4D4D4FFA4A4A4FFD0D0D0FF898989FF0606060C0000000000000000BCBC
          BCFFC6C6C6FF26262636C1C1C1FF2525253640AD7AFFA0D3B8FF99CEB0FF1C97
          4CFDACACACFF1F1F1F36A5A5A5FF9A9A9AFF1515152800000000C2C2C2FFD8D8
          D8FFE3E3E3FFC7C7C7FFE1E1E1FFC2C2C2FF3BB179FFA2D4B8FF99CFAFFF1798
          49FFD8D8D8FFACACACFFD4D4D4FFABABABFF2424244300000000C4C4C4FFFCFC
          FCFFF9F9F9FFF9F9F9FF55BF91FF4DBA86FF6AC097FFA4D4B8FF9ACDADFF41AA
          6AFF14943EFF0B842CFDF1F1F1FFD8D8D8FF7D7D7DDF3939396AC5C5C5FFC5C5
          C5FFC3C3C3FFC0C0C0FF45C08EFF7CCBA9FFAFDAC1FF92CDABFF80C49CFF93CA
          A6FF4BAB6AFF178731FFC5C5C5FFFBFBFBFFE4E4E4FF787878D4000000000000
          00000000000000000000000000003BC081FF70C89FFFACD8BDFF9FD1B0FF55B4
          76FF08571CA000000000A3A3A3FF9E9E9EFF9A9A9AFF3636365C000000000000
          00000000000000000000000000000000000024BC68FD64C594FF5FBF87FF0B72
          25C0000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000100010CB851FF128431CC0000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00001220133149824CCC192F1A4B000000000000000000000000000000000000
          00000D391D88186634F2196B37FF186634F20D391D8800000000000000000203
          0205457548AF5FA564FD6BAE6FFF4B954FFB112012340A140B22000000000D37
          1C84288C53FF64BA8DFF95D2B2FF64BA8DFF288C53FF0E3B1E8C00000000111B
          12277BB97FFCB7DEBBFF67AC6CFF75B67AFF4E9751FE3C713FB82649287A1A69
          37F762BA8BFF60BA87FFFFFFFFFF60B987FF67BC8FFF186835F700000000476F
          4A9B9CCDA0FF6FB273FF8DC792FFAADCAFFF76B67BFF519B55FF77B77BFF317B
          4CFF9CD4B6FFFFFFFFFFFFFFFFFFFFFFFFFF95D2B2FF196B37FF0C130D197BBB
          80FF77B77CFF91CB97FFABDEB1FF9CD7A2FFAADDB0FF77B77CFF60AC65FF478A
          60FF90D3B1FF92D6B1FFFFFFFFFF65BC8CFF67BC8FFF186835F7507753A07FBD
          84FF97CE9CFFADDFB3FF6FB374FF96D59DFF9DD8A3FFAADDB0FF78B87CFF61A4
          6FFF61AB81FF95D4B4FFBAE6D0FF6ABB8FFF2D8F57FF144824A37BBB80FF8EC8
          93FFAFDFB5FFA1DAA7FF98D79FFF97D69EFF7EC083FF82C187FFABDDB0FF79B9
          7DFF5EA16BFF5E9873FF4F8E66FF46895EFF3F894EFF050A05114563487D7DBB
          82FF8FC894FFB0E0B6FFA2DAA8FF7FC185FFA4D0A7FFDDEEDFFF80B883FFABDE
          B1FF7AB97FFF569F5AFFC4E7C8FF78B87CFF284F2A840000000000000000151D
          15257BB87FFA90C995FFB0E0B6FF85C28AFFF7FCF8FF95C297FFDDEEDFFF82C2
          87FFABDEB1FF7BBA7FFF58A05CFF59A15DFF0102010400000000000000000000
          0000000000007AB67EF691CA96FFB1E0B6FFD9F3DDFFF7FCF8FFA4D0A7FF7EC0
          84FF9FD9A5FFACDEB2FF7BBB80FF559D59FB0000000000000000000000000000
          000000000000000000007AB780F592CB97FFB1E1B6FF85C38AFF80C185FF99D7
          A0FF98D79FFF9FD9A5FFACDFB2FF7DBB81FF559A59F600000000000000000000
          00000000000000000000000000007CB881F593CC98FFB1E1B7FFA3DBA9FF9BD8
          A2FF73B477FFAFDFB4FF87C38CFF65AA69FF0509050E00000000000000000000
          0000000000000000000000000000000000007DB882F594CC99FFB2E2B7FFA3DC
          AAFFB0E0B6FF8CC692FF6EB173FF0609060E0000000000000000000000000000
          000000000000000000000000000000000000000000007EB983F594CD9AFFB3E2
          B7FF93CB98FF77B77CFF060A060E000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000007FBA85F596CD
          9BFF80BE85FF070A070E00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000081BB
          86F5070B070E0000000000000000000000000000000000000000}
      end>
  end
  object ds_detailed: TpFIBDataSet
    SelectSQL.Strings = (
      'select a.REC_TYPE,a.ACCCODE,a.SRV,s.name,a.DATE_VAL,'
      '    a.PAY_DATE,a.ACC_DATE,a.SUMMA,a.HOUSE,a.DU'
      '    from acccodeprv a'
      'left outer join srvlist s on a.srv=s.srv'
      'where'
      '  @@where_clause% 1 = 1 @')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 376
    Top = 480
  end
  object Source_Detailed: TDataSource
    DataSet = ds_detailed
    Left = 408
    Top = 480
  end
end
