object HouseLiftRepForm: THouseLiftRepForm
  Left = 0
  Top = 0
  Caption = #1058#1077#1093#1086#1089#1074#1080#1076'. '#1080' '#1101#1082#1089#1087#1077#1088#1090#1080#1079#1072' '#1083#1080#1092#1090#1086#1074
  ClientHeight = 646
  ClientWidth = 738
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
    Width = 738
    Height = 620
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    ExplicitTop = 29
    ExplicitHeight = 617
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 466
      Height = 518
      TabOrder = 0
      object v1: TcxGridDBTableView
        DataController.DataSource = src_HOUSELIFTGR
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv1EXP
          end
          item
            Kind = skSum
            Column = clv1TEXOS
          end
          item
            Kind = skCount
            Column = clv1STNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clvLIFTLIST: TcxGridDBColumn
          Caption = #1050#1086#1076' '#1083#1080#1092#1090#1072
          DataBinding.FieldName = 'LIFTLIST'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
          Width = 77
        end
        object clv1STNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STNAME'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 238
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 62
        end
        object clv1M: TcxGridDBColumn
          DataBinding.FieldName = 'M'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1Y: TcxGridDBColumn
          DataBinding.FieldName = 'Y'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1TEXOS: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086'  '#1090#1077#1093'.'#1086#1089#1084'.'
          DataBinding.FieldName = 'TEX'
          HeaderAlignmentHorz = taCenter
          Width = 63
        end
        object clv1EXP: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1101#1082#1089#1087'.'
          DataBinding.FieldName = 'EXP'
          HeaderAlignmentHorz = taCenter
          Width = 55
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1ENTRANCE: TcxGridDBColumn
          Caption = #1055#1086#1076#1098#1077#1079#1076
          DataBinding.FieldName = 'ENTRANCE'
          Visible = False
          VisibleForCustomization = False
          Width = 55
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
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 112
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object bar1: TdxBarManager
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
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 648
    Top = 112
    DockControlHeights = (
      0
      0
      26
      0)
    object bar: TdxBar
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
      FloatLeft = 741
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'itm_month'
        end
        item
          Visible = True
          ItemName = 'itm_year'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_exec'
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
      WholeRow = True
    end
    object itm_month: TcxBarEditItem
      Caption = #1084#1077#1089#1103#1094
      Category = 0
      Hint = #1084#1077#1089#1103#1094
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
      Properties.ListSource = src_month
    end
    object itm_year: TcxBarEditItem
      Caption = '   '#1075#1086#1076
      Category = 0
      Hint = '   '#1075#1086#1076
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxMaskEditProperties'
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
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
    object btn_fill: TdxBarButton
      Align = iaRight
      Caption = '  '#1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
      Category = 0
      Hint = '  '#1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000100010001000100010001000000000006030B0009040F0109040F010A
        050F010A050F010B050F010B050F0008040A0000000000000000000000000000
        000085AE97CFD2EEDEFFD2F2E0FF183E294A72AC8CDDC4E6D3FFC4E8D4FFC4E9
        D5FFC4EBD6FFC4EDD6FFC4EFD7FF69B68BCF0000000000000000000000000000
        000087AF99CFD5EFE0FFD5F2E2FF183E294A74AD8DDDC7E7D5FFC7E9D6FFC7EB
        D7FFC7ECD8FFC7EED8FFC7EFD9FF6AB68CCF0000000000000000000000000000
        000001130921011B0D2A011E0E2A0008040B02200F3802291446022B1546022D
        1546022F16460231174603331846022713340000000000000000000000000000
        00009BB8A8D0F5FBF8FFF5FCF8FF1C3F2C4B87B69CDEE8F5EEFFE8F6EEFFE8F7
        EEFFE8F7EFFFE8F8EFFFE8F9EFFF7BBB98D00000000000000000000000000000
        0000709680B4AFCDBDDEB0D0BEDE143523405E9A79CAA1CCB5EBA1CEB6EBA1D0
        B6EBA2D2B7EBA2D5B8EBA2D7B9EB57A379BD0000000000000000000000000000
        000040604E7866837394668674940C22162A34644A8B59836BA259856DA25987
        6DA259896FA2598C70A25A8E70A2306E4B820000000000000000000000000000
        0000A2BBADD0FFFFFFFFFFFFFFFF1D402C4B94BCA6DEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF87BEA0D00000000000000000000000000000
        00002946365C42614F7342645173081A10201E4F347734684B8F346B4C8F346E
        4D8F34704F8F3473508F3576518F1D5B38700000000000000000000000000000
        000087AF99CFD5EFE0FFD5F2E2FF183E294A74AD8DDDC7E7D5FFC7E9D6FFC7EB
        D7FFC7ECD8FFC7EED8FFC7EFD9FF6AB68CCF0000000000000000000000000000
        000085AE97CFD2EEDEFFD2F2E0FF183E294A72AC8CDDC4E6D3FFC4E8D4FFC4E9
        D5FFC4EBD6FFC4EDD6FFC4EFD7FF69B68BCF0000000000000000000000000000
        0000000100010001000100010001000000000006030B0009040F0109040F010A
        050F010A050F010B050F010B050F0008040A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
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
      OnClick = btn_excelClick
    end
  end
  object ds_HOUSELIFTGR: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT HL.STREET, s.name StName,'
      '       HL.HOUSE, h.nomer,'
      '       sum(HL.TEXOS) TEX,'
      '       sum(HL.EXP) EXP'
      ''
      'FROM HOUSELIFTGR HL'
      'left outer join house h on h.code=hl.house'
      'left outer join street s on s.code=hl.street'
      'where hl.m=:m and hl.y=:y'
      'group by HL.STREET, s.name,HL.HOUSE, h.nomer')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 352
    Top = 232
  end
  object src_HOUSELIFTGR: TDataSource
    DataSet = ds_HOUSELIFTGR
    Left = 381
    Top = 232
  end
  object m_month: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 168
    Top = 96
  end
  object src_month: TDataSource
    DataSet = m_month
    Left = 198
    Top = 96
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = itm_month
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = itm_year
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 496
    Top = 88
  end
  object dlgSave: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' Excel|*.xls'
    Left = 496
    Top = 136
  end
end
