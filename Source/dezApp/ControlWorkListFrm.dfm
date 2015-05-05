object ControlWorkListForm: TControlWorkListForm
  Left = 0
  Top = 0
  Caption = #1050#1086#1085#1090#1088#1086#1083#1100' '#1074#1077#1076#1077#1085#1080#1103' '#1085#1072#1088#1103#1076#1086#1074
  ClientHeight = 564
  ClientWidth = 750
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
    Width = 750
    Height = 535
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 752
      Height = 537
      TabOrder = 0
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_m1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1SNAME
          end
          item
            Kind = skSum
            Column = clv1DiffDays
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 213
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 51
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1D1: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1085#1072#1088#1103#1076#1072
          DataBinding.FieldName = 'D1'
          Width = 92
        end
        object clv1D2: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
          DataBinding.FieldName = 'D2'
          Width = 117
        end
        object clv1Days: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1076#1085#1077#1081' '#1089' '#1084#1086#1084#1077#1085#1090#1072' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
          DataBinding.FieldName = 'Days'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 196
        end
        object clv1DiffDays: TcxGridDBColumn
          Caption = #1055#1088#1086#1089#1088#1086#1095#1082#1072' ('#1076#1085#1080')'
          DataBinding.FieldName = 'DiffDays'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
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
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 672
    Top = 88
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = itm_beg
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = itm_end
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = itm_kontr
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 644
    Top = 88
  end
  object brm1: TdxBarManager
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
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 616
    Top = 88
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
      FloatLeft = 753
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'itm_beg'
        end
        item
          Visible = True
          ItemName = 'itm_end'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 182
          Visible = True
          ItemName = 'itm_kontr'
        end
        item
          Visible = True
          ItemName = 'btn_Exec'
        end
        item
          BeginGroup = True
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
    object btn_Exec: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      Glyph.Data = {
        72010000424D7201000000000000760000002800000014000000150000000100
        040000000000FC00000000000000000000001000000000000000000000000000
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
      OnClick = btn_ExecClick
    end
    object itm_beg: TcxBarEditItem
      Caption = #1055#1077#1088#1080#1086#1076' '#1089
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076' '#1089
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ImmediatePost = True
    end
    object itm_end: TcxBarEditItem
      Caption = #1087#1086
      Category = 0
      Hint = #1087#1086
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ImmediatePost = True
    end
    object itm_kontr: TcxBarEditItem
      Caption = #1087#1086#1076#1088#1103#1076#1095#1080#1082
      Category = 0
      Hint = #1087#1086#1076#1088#1103#1076#1095#1080#1082
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 400
      Properties.GridMode = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'KONTRAGENT'
        end
        item
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          MinWidth = 100
          FieldName = 'KONTRNAME'
        end
        item
          Caption = #1044#1086#1075#1086#1074#1086#1088
          MinWidth = 62
          Width = 68
          FieldName = 'NOMER'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'D1'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'D2'
        end>
      Properties.ListFieldIndex = 2
      Properties.ListSource = src_SRVDOG
    end
    object btn_excel: TdxBarButton
      Caption = #1045#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Category = 0
      Hint = #1045#1082#1089#1087#1086#1088#1090' '#1074' Excel'
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
      OnClick = btn_excelClick
    end
  end
  object ds_SRVDOG: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select SD.CODE, SD.KONTRAGENT, K.NAME KONTRNAME, SD.NOMER, SD.D1' +
        ', SD.D2,'
      '       SD.DATA, SD.ATYPE'
      'from SRVDOG SD'
      'left outer join KONTRAGENT K on K.CODE = SD.KONTRAGENT'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 448
    Top = 168
  end
  object src_SRVDOG: TDataSource
    DataSet = ds_SRVDOG
    Left = 476
    Top = 168
  end
  object ds_SRVDOGHOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sd.SRVDOG, '
      '       sd.HOUSE, h.nomer,'
      '       h.street, s.name SNAME'
      'FROM SRVDOGHOUSE sd'
      'left outer join house h on h.code=sd.house'
      'left outer join street s on s.code=h.street')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 80
    Top = 120
  end
  object src_SRVDOGHOUSE: TDataSource
    DataSet = ds_SRVDOGHOUSE
    Left = 109
    Top = 120
  end
  object m1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 152
    Top = 208
  end
  object src_m1: TDataSource
    DataSet = m1
    Left = 180
    Top = 208
  end
  object xl1: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    DataSet = m1
    Dictionary = <>
    _Version = '1.6.0.3'
    Left = 152
    Top = 272
  end
end
