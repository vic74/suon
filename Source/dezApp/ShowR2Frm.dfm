object ShowR2Form: TShowR2Form
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1087#1088#1086#1089#1088#1086#1095#1077#1085#1085#1099#1093' '#1086#1089#1084#1086#1090#1088#1086#1074
  ClientHeight = 586
  ClientWidth = 704
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
    Top = 29
    Width = 704
    Height = 557
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v1CellDblClick
        DataController.DataSource = src_rep
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          Width = 186
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1HOUSENOM: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'HOUSENOM'
          Width = 37
        end
        object clv1TP_0: TcxGridDBColumn
          Caption = #1054#1073#1097#1077#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1081
          DataBinding.FieldName = 'TP_0'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 117
        end
        object clv1TP_1: TcxGridDBColumn
          Caption = #1069#1083#1077#1082#1090#1088#1080#1082#1072
          DataBinding.FieldName = 'TP_1'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 68
        end
        object clv1TP_2: TcxGridDBColumn
          Caption = #1051#1080#1092#1090#1099
          DataBinding.FieldName = 'TP_2'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 55
        end
        object clv1TP_3: TcxGridDBColumn
          Caption = #1055#1088#1086#1095#1077#1077
          DataBinding.FieldName = 'TP_3'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 55
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 20
      Top = 354
      Width = 250
      Height = 200
      TabOrder = 1
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
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2SRVDOG: TcxGridDBColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2DOGNOM: TcxGridDBColumn
          DataBinding.FieldName = 'DOGNOM'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2KONTRNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'KONTRNAME'
          Width = 154
        end
        object clv2SHOWDATE: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWDATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2STYPE: TcxGridDBColumn
          DataBinding.FieldName = 'STYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2SYEAR: TcxGridDBColumn
          DataBinding.FieldName = 'SYEAR'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2HOUSENOM: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'HOUSENOM'
          Width = 40
        end
        object clv2STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          Width = 122
        end
        object clv2PLANED: TcxGridDBColumn
          DataBinding.FieldName = 'PLANED'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2D1: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
          DataBinding.FieldName = 'D1'
          Width = 80
        end
        object clv2D2: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'D2'
          Width = 101
        end
        object clv2LOCK: TcxGridDBColumn
          DataBinding.FieldName = 'LOCK'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2LOCKDATA: TcxGridDBColumn
          DataBinding.FieldName = 'LOCKDATA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2SHDATE: TcxGridDBColumn
          DataBinding.FieldName = 'SHDATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2ATYPE: TcxGridDBColumn
          DataBinding.FieldName = 'ATYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2ATYPENAME: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'ATYPENAME'
          Width = 160
        end
      end
      object l2: TcxGridLevel
        GridView = v2
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
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
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
    object grp_detail: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = #1055#1086#1076#1088#1086#1073#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 224
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 2
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp_detail
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 648
    Top = 56
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 620
    Top = 56
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
    Left = 538
    Top = 40
    DockControlHeights = (
      0
      0
      29
      0)
    object brm1Bar1: TdxBar
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
      FloatLeft = 745
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 104
          Visible = True
          ItemName = 'itm_type'
        end
        item
          Visible = True
          ItemName = 'itm_d1'
        end
        item
          Visible = True
          ItemName = 'itm_d2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_exec'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_print'
        end
        item
          Visible = True
          ItemName = 'btn_excel'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object itm_kontr: TcxBarEditItem
      Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
      Category = 0
      Hint = #1055#1054
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          FieldName = 'NAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = com_dm.src_KONTRAGENT
    end
    object itm_type: TcxBarEditItem
      Caption = #1058#1080#1087
      Category = 0
      Hint = #1058#1080#1087
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          FieldName = 'NAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_type
      Properties.OnEditValueChanged = itm_typePropertiesEditValueChanged
    end
    object itm_d1: TcxBarEditItem
      Caption = #1055#1077#1088#1080#1086#1076' '#1089
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076' '#1089
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object itm_d2: TcxBarEditItem
      Caption = #1087#1086
      Category = 0
      Hint = #1087#1086
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object btn_exec: TdxBarButton
      Caption = #1047#1072#1087#1088#1086#1089
      Category = 0
      Hint = #1047#1072#1087#1088#1086#1089
      Visible = ivAlways
      Glyph.Data = {
        72010000424D7201000000000000760000002800000014000000150000000100
        040000000000FC000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFF00FFFFFFFFFFFF0000FFFFFF0B0FFFFFFFFFFF
        0000FFFFFFF0B0FFFFFFFFFF0000FFFFFFF0FB0FFFFFFFFF0000FFFFFFFF0FB0
        FFFFFFFF0000FFFFFF000B000FFFFFFF0000FFFFFFF0BF0FFFFFFFFF0000FFFF
        FFFF0BF0FFFFFFFF0000FFFFFFFF0FBF0FFFFFFF0000FFFFF0000F0000FFFFFF
        0000FFFFFF0BFBF0FFFFFFFF0000FFFFFFF0BFBF0FFFFFFF0000FFFFFFF0FBFB
        F0FFFFFF0000FFFFFFFF0000000FFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_execClick
    end
    object btn_print: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
    end
    object btn_excel: TdxBarButton
      Caption = 'Excel'
      Category = 0
      Hint = 'Excel'
      Visible = ivAlways
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFF
        0000FFFFFF000000000000000000000000000000000000000000000000000000
        000000000000808000808000808000808000000000FFFFFF0000FFFFFF000000
        808080808080808080808080808080808080808080808080000000808000FFFF
        00FFFF00FFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFF000000FFFF008080
        00808000808000808000808000000000808000FFFF00FFFF00FFFFFF000000FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF000000FFFF0080800080800080
        8000000000808000FFFF00FFFF00FFFFFF000000808000000000FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00808000000000808000FFFF00
        FFFF00FFFFFF000000000000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000808000FFFF00FFFF00FFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000808000FFFF00FFFF00FFFFFF000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF000000808000FFFF00FF
        FF00FFFFFF000000808000808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFF000000808000FFFF00FFFF00FFFFFF000000FFFF00
        808000808000808080000000FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        000000808000FFFF00FFFF00FFFFFF000000FFFFFF000000FFFF008080008080
        00808080000000FFFFFFFFFFFFFFFFFF0000FFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFF00FFFF00FFFF00FFFF0000
        0000FFFFFFFFFFFF0000FFFFFF000000000000000000000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
    end
  end
  object src_type: TDataSource
    DataSet = m_type
    Left = 229
    Top = 64
  end
  object m_type: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 200
    Top = 64
  end
  object mt_rep: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 200
    Top = 120
  end
  object src_rep: TDataSource
    DataSet = mt_rep
    Left = 232
    Top = 120
  end
  object ds_SHOWHOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '      sp.house, h.nomer HouseNom,'
      '      h.street,st.name StreetName,'
      '      sd.atype'
      'from SHOWHOUSE s'
      'left outer join showhouseplan sp on s.code=sp.showhouse'
      'left outer join house h on sp.house=h.code'
      'left outer join srvdog sd on s.srvdog=sd.code'
      'left outer join kontragent k on sd.kontragent=k.code'
      'left outer join STREET st on h.street=st.code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 200
    Top = 176
  end
  object ds_detail: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '      s.CODE,'
      '      s.SRVDOG,sd.nomer DogNom,'
      '      sd.kontragent,'
      '      k.name KontrName,'
      '      s.SHOWDATE,'
      '      s.STYPE,'
      '      s.SYEAR,'
      '      s.STATE,'
      '      sp.house, h.nomer HouseNom,'
      '      h.street,st.name StreetName,'
      '      1 planed,'
      '      sp.d1,'
      '      sp.d2,sp."LOCK",sp.LOCKDATA,'
      '      sp.showdate shdate,'
      '      sd.atype,'
      '      case'
      '        when sd.atype=0 then '#39#1054#1073#1097#1077#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1081#39
      '        when sd.atype=1 then '#39#1069#1083#1077#1082#1090#1088#1080#1082#1072#39
      '        when sd.atype=2 then '#39#1051#1080#1092#1090#1099#39
      '        when sd.atype=3 then '#39#1055#1088#1086#1095#1077#1077#39
      '        else '#39#39
      '      end AtypeName'
      'from SHOWHOUSE s'
      'left outer join showhouseplan sp on s.code=sp.showhouse'
      'left outer join house h on sp.house=h.code'
      'left outer join srvdog sd on s.srvdog=sd.code'
      'left outer join kontragent k on sd.kontragent=k.code'
      'left outer join STREET st on h.street=st.code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 72
    Top = 408
  end
  object src_detail: TDataSource
    DataSet = ds_detail
    Left = 104
    Top = 408
  end
end
