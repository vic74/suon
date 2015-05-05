object ShowRep2Form: TShowRep2Form
  Left = 0
  Top = 0
  HelpContext = 20
  Caption = #1057#1087#1080#1089#1086#1082' '#1087#1088#1086#1089#1088#1086#1095#1077#1085#1085#1099#1093' '#1086#1089#1084#1086#1090#1088#1086#1074
  ClientHeight = 623
  ClientWidth = 826
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
    Width = 826
    Height = 594
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_rep
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1KONTRNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object clv1Code: TcxGridDBColumn
          DataBinding.FieldName = 'Code'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SRVDOG: TcxGridDBColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DOGNOM: TcxGridDBColumn
          DataBinding.FieldName = 'DOGNOM'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KONTRNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'KONTRNAME'
          Width = 143
        end
        object clv1SHOWDATE: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWDATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          Width = 130
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1HOUSENOM: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'HOUSENOM'
          Width = 55
        end
        object clv1D1: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
          DataBinding.FieldName = 'D1'
          Width = 78
        end
        object clv1D2: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'D2'
          Width = 113
        end
        object clv1SHDATE: TcxGridDBColumn
          DataBinding.FieldName = 'SHDATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1PROS: TcxGridDBColumn
          DataBinding.FieldName = 'PROS'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1PROV: TcxGridDBColumn
          DataBinding.FieldName = 'PROV'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1PLANED: TcxGridDBColumn
          DataBinding.FieldName = 'PLANED'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1PROVItog: TcxGridDBColumn
          DataBinding.FieldName = 'PROVItog'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1PLANEDItog: TcxGridDBColumn
          DataBinding.FieldName = 'PLANEDItog'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1percent: TcxGridDBColumn
          DataBinding.FieldName = 'percent'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1LOCKDATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1073#1083#1086#1082#1080#1088#1086#1074#1082#1080
          DataBinding.FieldName = 'LOCKDATA'
          Width = 102
        end
        object clv1AType: TcxGridDBColumn
          DataBinding.FieldName = 'Atype'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1AtypeName: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'AtypeName'
          Width = 119
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
  object lkf1: TdxLayoutLookAndFeelList
    Left = 632
    Top = 224
    object laf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 603
    Top = 224
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
    Left = 602
    Top = 176
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
          UserWidth = 136
          Visible = True
          ItemName = 'lb_kontr'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 104
          Visible = True
          ItemName = 'lb_type'
        end
        item
          Visible = True
          ItemName = 'lb_d1'
        end
        item
          Visible = True
          ItemName = 'lb_d2'
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
    object lb_kontr: TcxBarEditItem
      Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
      Category = 0
      Hint = #1055#1054
      Visible = ivAlways
      OnKeyUp = lb_kontrKeyUp
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_Kontr
    end
    object lb_type: TcxBarEditItem
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
      Properties.OnChange = lb_typePropertiesChange
    end
    object lb_d1: TcxBarEditItem
      Caption = #1055#1077#1088#1080#1086#1076' '#1089
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076' '#1089
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object lb_d2: TcxBarEditItem
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
      OnClick = btn_printClick
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
  object m_type: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 104
    Top = 392
  end
  object src_type: TDataSource
    DataSet = m_type
    Left = 133
    Top = 392
  end
  object ds_SHOWHOUSE: TpFIBDataSet
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
    Left = 184
    Top = 392
  end
  object src_SHOWHOUSE: TDataSource
    DataSet = ds_SHOWHOUSE
    Left = 214
    Top = 392
  end
  object src_rep: TDataSource
    DataSet = mt_rep
    Left = 136
    Top = 296
  end
  object mt_rep: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 104
    Top = 296
  end
  object fr: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40722.601608831000000000
    ReportOptions.LastChange = 40724.524283229170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 424
    Top = 248
    Datasets = <
      item
        DataSet = dbds1
        DataSetName = 'ds'
      end>
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
        Height = 291.023810000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Rich1: TfrxRichView
          Align = baClient
          Width = 718.110700000000000000
          Height = 291.023810000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C6673776973735C66707271325C66636861727365743230342043616C6962
            72693B7D7B5C66315C666E696C5C6663686172736574323034205461686F6D61
            3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564323020362E332E
            393630307D5C766965776B696E64345C756331200D0A5C706172645C736C3237
            365C736C6D756C74315C71725C66305C667332325C2763665C2766305C276538
            5C2765625C2765655C2765365C2765355C2765645C2765385C276535205C2762
            3920375C7061720D0A2020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020205C27656120
            5C2763665C2765655C2765625C2765655C2765365C2765355C2765645C276538
            5C27666520205C276565205C2765665C2765655C2766305C2766665C2765345C
            2765615C276535205C2765665C2766305C2765655C2765325C2765355C276534
            5C2765355C2765645C2765385C276666205C7061720D0A5C2765655C2766315C
            2765355C2765645C2765645C2765355C2765335C2765652F5C2765325C276535
            5C2766315C2765355C2765645C2765645C2765355C2765335C276565205C2765
            655C2766315C2765635C2765655C2766325C2766305C2765305C7061720D0A5C
            7061720D0A5C2764335C2764325C2763325C2763355C2764305C2763365C2763
            345C2763305C2764655C7061720D0A5C2763335C2765355C2765645C2765355C
            2766305C2765305C2765625C2766635C2765645C2766625C276539205C276534
            5C2765385C2766305C2765355C2765615C2766325C2765655C2766305C706172
            0D0A5C2763655C2763655C276365205C2761625C2763345C2763355C27633720
            5C2763615C2765305C2765625C2765385C2765645C2765385C2765645C276631
            5C2765615C2765655C2765335C276565205C2766305C2765305C2765395C2765
            655C2765645C2765305C2762625C7061720D0A5F5F5F5F5F5F5F5F5F5F5F5F5F
            5F5F5F5F5F205C2764315C2765635C2765385C2766305C2765645C2765655C27
            6532205C2763612E5C2763382E5C7061720D0A5C2761625F5F5F5C2762625F5F
            5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F20323031315C2765332E5C7061720D
            0A0D0A5C706172645C73613230305C736C3237365C736C6D756C74315C71725C
            7061720D0A0D0A5C706172645C736C3237365C736C6D756C74315C71635C2763
            655C2766325C2766375C2765355C276632205C2763665C276365205C27656520
            5C2765665C2766305C2765655C2765325C2765355C2765345C2765355C276564
            5C2765385C276538205C2765655C2766315C2765355C2765645C2765645C2765
            355C2765335C2765652F5C2765325C2765355C2766315C2765355C2765645C27
            65645C2765355C2765335C276565205C2765655C2766315C2765635C2765655C
            2766325C2766305C276530205C7061720D0A5C2765655C2766325C2766375C27
            65355C2766325C2765645C2766625C276539205C2765665C2765355C2766305C
            2765385C2765655C276534205C276631205B76617244315D205C2765665C2765
            65205B76617244325D5C7061720D0A0D0A5C706172645C66315C667331365C70
            61720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 18.897637795275600000
        Top = 370.393940000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Width = 162.519685040000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 162.519685040000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1083#1080#1094#1072)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 309.921355040000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1086#1084)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 393.071015040000000000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 502.677314250000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1073#1083#1086#1082#1080#1088#1086#1074#1082#1080)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        DataSet = dbds1
        DataSetName = 'ds'
        RowCount = 0
        object Memo1: TfrxMemoView
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds."KONTRNAME"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 162.519790000000000000
          Width = 147.401574803149600000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds."STREETNAME"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 309.921364803149600000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds."HOUSENOM"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 393.071024803149600000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds."D1"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 502.677324013149600000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dbds1
          DataSetName = 'ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ds."D2"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[IIF(<ds."LOCKDATA"> = 0,'#39#39',<ds."LOCKDATA">)]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 136.063080000000000000
        Top = 491.338900000000000000
        Width = 718.110700000000000000
        object Rich2: TfrxRichView
          Align = baBottom
          Top = 60.472480000000000000
          Width = 718.110700000000000000
          Height = 75.590600000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C6673776973735C66707271325C66636861727365743230342043616C6962
            72693B7D7B5C66315C6673776973735C66707271325C66636861727365743230
            34205461686F6D613B7D7B5C66325C666E696C5C666368617273657432303420
            5461686F6D613B7D7D0D0A7B5C2A5C67656E657261746F722052696368656432
            3020362E332E393630307D5C766965776B696E64345C756331200D0A5C706172
            645C736C3237365C736C6D756C74315C66305C667332325C2763345C2765385C
            2766305C2765355C2765615C2766325C2765655C276630205C2763655C276365
            5C2763655C2738352E5C7061720D0A5C2764342E5C2763382E5C2763652E5C70
            61720D0A0D0A5C706172645C2763345C2765305C2766325C276530205C276631
            5C2765345C2765305C2766375C276538205C2765655C2766325C2766375C2765
            355C2766325C276530205C2761625F5F5F5C2762625F5F5F5F5F5F5F5F5F3230
            5F5F5C2765332E5C66315C667331365C7061720D0A5C66325C7061720D0A7D0D
            0A00}
        end
      end
    end
  end
  object dbds1: TfrxDBDataset
    UserName = 'ds'
    CloseDataSource = False
    DataSource = src_rep
    BCDToCurrency = False
    Left = 424
    Top = 288
  end
  object dlgSave: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' Excel|*.xls'
    Left = 424
    Top = 352
  end
  object src_Kontr: TDataSource
    Left = 200
    Top = 112
  end
end
