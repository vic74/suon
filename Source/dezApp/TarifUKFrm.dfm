object TarifUKForm: TTarifUKForm
  Left = 0
  Top = 0
  Caption = #1058#1072#1088#1080#1092#1099' '#1059#1050
  ClientHeight = 539
  ClientWidth = 728
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
    Width = 728
    Height = 510
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object grd1: TcxGrid
      Left = 222
      Top = 3
      Width = 250
      Height = 200
      TabOrder = 1
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_HOUSEUK
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STNAME'
          Options.Editing = False
          Width = 309
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 45
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1PROC: TcxGridDBColumn
          Caption = #1058#1072#1088#1080#1092
          DataBinding.FieldName = 'PROC'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ImmediatePost = True
          Properties.ValueType = vtFloat
          Properties.OnEditValueChanged = clv1PROCPropertiesEditValueChanged
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 3
      Top = 3
      Width = 250
      Height = 200
      TabOrder = 0
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_history
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object clv2DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 119
        end
        object clv2PROC: TcxGridDBColumn
          Caption = #1058#1072#1088#1080#1092
          DataBinding.FieldName = 'PROC'
          Width = 70
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object cbb_street: TcxLookupComboBox
      Left = 10000
      Top = 10000
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
      Properties.ListSource = src_street
      Properties.OnChange = cbb_streetPropertiesChange
      Style.HotTrack = False
      TabOrder = 3
      Visible = False
      Width = 145
    end
    object cbb_house: TcxLookupComboBox
      Left = 10000
      Top = 10000
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
          FieldName = 'NOMER'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_house
      Style.HotTrack = False
      TabOrder = 4
      Visible = False
      Width = 145
    end
    object dt1: TcxDateEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 2
      Visible = False
      Width = 121
    end
    object clc_proc: TcxCalcEdit
      Left = 10000
      Top = 10000
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 5
      Visible = False
      Width = 121
    end
    object btn_add: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000001190A30011F0C3C0006020C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000008030F0252209F048132F9048433FF048433FF048433FF036A
        29CC011C0B360000000000000000000000000000000000000000000000000000
        0000011E0B39047B2FEB0C9940FF19A64DFF1BA44DFF19A24BFF1AA24BFF0E9A
        40FF048533FC023E187800000000000000000000000000000000000000000009
        0412047B30EB10A44AFF14AC56FF09A348FF058A37FF058A37FF07983BFF119C
        43FF129F45FF048834FF01270F4B000000000000000000000000000000000246
        1B870A9B41FF0EB760FF06AE53FF11AC53FFE4F5EBFFC7EAD5FF03993AFF0397
        39FF0B993EFF0B9B3EFF03702BD8000000000000000000000000000000000371
        2CDB0BB459FF09BD66FF058A37FF129042FFE4F5EBFFBDE2CBFF058A37FF058A
        37FF05973AFF089B3DFF048433FF0116082A0000000000000000000201030482
        32FC0AC168FF03C166FFDAF2E5FFE4F5EBFFE4F5EBFFE4F5EBFFE4F5EBFFA1DB
        B8FF019838FF069A3CFF048433FF012B1154000000000000000000000000047F
        31F60AC56BFF05C76EFFB7EAD1FFCFEEDEFFE4F5EBFFE4F5EBFFCEEEDDFF87D5
        A8FF029F40FF069D40FF048433FF01270F4B0000000000000000000000000365
        27C310BF6AFF0BD385FF08CF7FFF0DC873FFE4F5EBFFD8F2E4FF00B857FF03B9
        5CFF06B356FF0CA94CFF048433FF0010061E0000000000000000000000000235
        146610A14BFF1AD995FF08D488FF18D48CFFE4F5EBFFBFEDD7FF09C673FF05C0
        68FF11C06CFF14A64EFF035F25B7000000000000000000000000000000000003
        0106036C2ACC23B565FF27DB98FF0ED68DFF05D485FF04D07FFF0BCD7EFF1FCD
        83FF27B767FF058533F70116082A000000000000000000000000000000000000
        0000000E051B036C2ACC1BA552FF37CA84FF37D794FF35D592FF37CA84FF1FA9
        56FF058032EF01240E4500000000000000000000000000000000000000000000
        000000000000000301060238166C036A29CC048433FF048433FF04782EE7024B
        1D90000C05180000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Visible = False
      OnClick = btn_addClick
    end
    object btn_edit: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000000000000000000000000000000000000D0D0D1C2424
        245225252554252525542525255425252554242424530B0B0B16000000000000
        00000000000000000000000000000000000000000000000000002626264FEAEA
        EAFFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE1E1E1FF8A8A8AD61010101A0000
        000000000000000000000000000000000000000000000000000026262650E7E7
        E7FFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFC6C6C6FB929292D61313
        131D00000000000000000000000000000000000000000000000026262651F1F1
        F1FFC3C3C3FFE3E3E3FFEBEBEBFFEBEBEBFFEBEBEBFFDADADAFCBFBFBFFBAFAF
        AFD916161621000000000000000000000000000000000000000026262652FBFB
        FBFFB6B8BCFF9FB1CDFFBFCFE7FFF1F3F6FFF8F8F8FFE2E2E2F9C8C8C8FCECEC
        ECFFBDBDBDDB191919250000000000000000000000000000000026262652FFFF
        FFFFF7F9FCFFB9CBE7FFA1BDE5FF82B9DEFFD5F4F9FFF1F1F1FCBFBFBFFDC2C2
        C2FBBBBBBBFD9F9F9FDC1C1C1C2D00000000000000000000000026262652FFFF
        FFFFFFFFFFFFCDDDEEFF8DC8E9FF0CC0E5FF1BB6DAFFD5F4F9FFFFFFFFFFFBFB
        FCFFE6E6E6FFB8B8B8FC8A8A8AE91616162D000000000000000026262652FFFF
        FFFFFFFFFFFFFAFCFEFF79DEF1FF3DD5F1FF01C0E5FF1BB6DAFFD5F4F9FFFFFF
        FFFFFEFEFEFFF0F0F1FFC4C4C5FF28282850000000000000000026262652FFFF
        FFFFFFFFFFFFFFFFFFFFFCFEFFFF79DEF1FF3DD5F1FF01BFE4FF1BB3D8FFD5F4
        F9FFFFFFFFFFFEFEFEFFF0F0F0FF2828284F000000000000000026262652FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFFFF79DEF1FF41D7F1FF01BFE4FF1AAD
        D5FFD5F4F9FFFFFFFFFFFEFEFEFF2929294E000000000000000026262652FFFF
        FFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFBFEFEFF7CDFF1FF49DFF4FF01C2
        E5FF1DA9D2FFEBF6F9FFFFFFFFFF2A2A2A4E000000000000000026262652FAFA
        FAFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF4F7F7FF7EDDEEFF54E3
        F5FF67C0D6FFC3C5C6FFF1F1F1FF2B2B2B4F000000000000000026262652F3F3
        F3FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEAECEDFF94CA
        D8FFE0E2E2FFCFCECDFFBDBDBDFF2F2F2F51000000000000000026262652ECEC
        ECFFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2
        E1FFD1D1D1FFE3E3E2FFAEAECAFF3333A6CC050511170000000028282855F0F0
        F0FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
        E8FFE7E7E7FFC6C6D8FF6F6FDFFF4A4AD9F40E0E2D37000000000D0D0D1C3131
        3155313131553131315531313155313131553131315531313155313131553131
        3155313131552F2F32553F3F7D90171742490000000000000000}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Visible = False
      OnClick = btn_editClick
    end
    object btn_del: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000031B300004223C0001070C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000001080F00095A9F000F8DF9000F90FF000F90FF000F90FF000C
        73CC00031E360000000000000000000000000000000000000000000000000000
        000000032039011089ED081D9FFF0522A9FF0A2FB7FF0B32B8FF082CB5FF0825
        A7FF051898FD0008487E00000000000000000000000000000000000000000001
        0A12010F87EB0A20A5FF010D9DFF525ABCFF0A16A0FF0936C5FF1F29A9FF1A26
        B4FF020C8FFF041698FF00042A4B000000000000000000000000000000000008
        4C8704179BFF0A2FB8FF7186D2FFFFFFFFFFCFD4EEFF2731ACFFE3E8F8FFDAE1
        F6FF2048C8FF051C9FFF000D7AD800000000000000000000000000000000000D
        7CDB0824ADFF0430BFFF3452C2FFF3F5FBFFFFFFFFFFFDFDFEFFFFFFFFFFCBD3
        F0FF143FC6FF0525ACFF000F90FF0002182A000000000000000000000203000F
        8EFC082BB7FF0938C7FF042FC0FF414AB6FFFCFDFEFFFFFFFFFFF9FAFDFF1620
        A5FF0834C2FF0724A6FF000F90FF00052F54000000000000000000000000000E
        8BF6092AB4FF0639CDFF1F29A9FFE1E3F6FFFFFFFFFFF9FAFEFFFFFFFFFFC1C4
        EBFF0A16A0FF0521A5FF000F90FF00042A4B000000000000000000000000000B
        6EC30921A5FF0F44D4FF5679DCFFFDFDFEFFD2D9F3FF4E69CFFFEBEEF9FFFAFB
        FEFF4668D4FF0925AAFF000F90FF0002111E0000000000000000000000000006
        3A66021294FF2045C5FF154CD8FF4C72DDFF0F42D0FF0035CBFF254DCBFF5071
        D6FF1740C4FF0D23A4FF000B67B7000000000000000000000000000000000000
        0306000C72C9051698FF2B4BC5FF2657D9FF174ED8FF134BD5FF1D4FD3FF2E56
        CCFF162CAAFF01108EF70002182A000000000000000000000000000000000000
        000000020F1B000C72C9021294FF1428A6FF2844BBFF2D4BC0FF223BB4FF091B
        9CFF010F88EE0004274500000000000000000000000000000000000000000000
        0000000000000000030600063D6C000C73CC000F90FF000F90FF000E82E70008
        519000010E180000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Visible = False
      OnClick = btn_delClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object grp_right: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 211
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp_right
      Control = grd2
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
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Width = 499
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grp_2: TdxLayoutGroup
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 219
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = -1
    end
    object itm_dt1: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072
      CaptionOptions.Layout = clTop
      Parent = grp_2
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      CaptionOptions.Layout = clTop
      Parent = grp_2
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_house: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      CaptionOptions.Layout = clTop
      Parent = grp_2
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_proc: TdxLayoutItem
      CaptionOptions.Text = #1058#1072#1088#1080#1092
      CaptionOptions.Layout = clTop
      Parent = grp_2
      Control = clc_proc
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grp_btn: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Offsets.Top = 4
      Parent = grp_2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object itm_btn_add: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_btn
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 60
      Control = btn_add
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_edit: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Offsets.Left = 7
      Parent = grp_btn
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 60
      Control = btn_edit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_btn_del: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Offsets.Left = 6
      Parent = grp_btn
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 60
      Control = btn_del
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 656
    Top = 136
    object laf1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object brm1: TdxBarManager
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
    Left = 624
    Top = 136
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
      FloatLeft = 754
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lb_data'
        end
        item
          Visible = True
          ItemName = 'btn_refresh'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 57
          Visible = True
          ItemName = 'ed_tarif'
        end
        item
          Visible = True
          ItemName = 'btn_set'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_fill'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object lb_data: TcxBarEditItem
      Caption = #1044#1072#1090#1072
      Category = 0
      Hint = #1044#1072#1090#1072
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ImmediatePost = True
    end
    object btn_refresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000003000C014700100163000100370000000D00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00030340089013B826FF1DC436FF1EA835F30C4013AB00010038000000030000
        0000000000000000000000000000000000000000000000000000000000040D4B
        159423C73DFF20C53AFF29CC45FF34D555FF3FE066FF299442E10107015B0000
        0005000000000000000000000000000000000000000000000000195328875EF7
        8FFF4DE478FF4CEA77FF43E26BFF41E069FF49E873FF55F285FF30924AD50000
        000F00000000000000000000000000000000000000000000000049D070EE4CDC
        75FF4CD975FD03210591157023AA34D455FF55F183FF4BCF73EE031605620000
        00330000001600000006000000000000000000000000000000003FCA63EE50E2
        7BFF5BF38BFF227A34D80000002E032D0762199C2CE8041B065F12A323F60994
        15F5076511D4043809A700110170000100340000000300000000238237B041D3
        65FF54EC81FF4CE275FF0D4515BA196D27C50A3E10AD043B078529C744FF10B8
        23FF16BD2BFF1CC233FF20C338FF0B5614BC0000000700000000041C073D2CC5
        48FF4ADD71FF46DC6BFF3ED05EFF37C953FF187925E0021E04683CD65EFF14BB
        29FF1CC133FF22C63BFF24C43EFF011702730000000100000000000000000C5F
        179720B635FF3FD25FFF36C952FF2EBF46FF1CA02CFA0008005145D46BFC1BC1
        33FF21C63BFF27CB44FF2ED04DFF105C1ACA0000002400000000000000000117
        024821AF36FE37C953FF2EBF46FF25B538FF1BA929FF0015017736A452D12DD0
        4CFF35D758FF30D251FF34D657FF39D65CFF041F068A0000000500000000088C
        13DF22B839FF28B73FFF22B034FF1AA928FF12A01AFF023703AA1F622F9A42D8
        67FE0E831CE434D655FF3CDB60FF43E36BFF238839DE00000023000000000004
        000E0323064912591E8725923BC537C155F71B942CE9022703822E9C4AE138C4
        5FFF10551ECC179E2AF24AE773FF4BE975FF42D267FC00080053000000000000
        00000000000000000000000000000003000B00070021218D35DF52E98AFF40D5
        78FF2FC164FF139528FD48E571FF53EF80FF4CDF77FE000A004B000000000000
        000000000000000000000000000000000000010C01220D991AE91DAC39FF2DBE
        60FF1BAB3CFF089415FF41D566FF5EF991FF247837BD0000000A000000000000
        00000000000000000000000000000000000000000000000B012010801DC725BA
        3FFF18A22BFF149920FF56EF85FF26803CC40001001200000000000000000000
        000000000000000000000000000000000000000000000000000000010003062B
        095B248B3ABD38B357DF1D662DA10001000D0000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_refreshClick
    end
    object ed_tarif: TdxBarSpinEdit
      Caption = #1058#1072#1088#1080#1092
      Category = 0
      Hint = #1058#1072#1088#1080#1092
      Visible = ivAlways
      ShowCaption = True
      ValueType = svtFloat
    end
    object btn_set: TdxBarButton
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1090#1072#1088#1080#1092
      Category = 0
      Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1090#1072#1088#1080#1092
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEF
        EFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFF0000
        00FF800000FF800000FF000000FFFFE6E6FFFFE6E6FF000000FF000000FF0000
        00FF000000FF000000FF000000FF800000FF000000FFFFFFFFFFFFFFFFFF0000
        00FF800000FF800000FF000000FFFFE6E6FFFFE6E6FF000000FF000000FF0000
        00FF000000FF000000FF000000FF800000FF000000FFFFFFFFFFFFFFFFFF0000
        00FF800000FF800000FF000000FFFFE6E6FFFFE6E6FF000000FF000000FF0000
        00FF000000FF000000FF000000FF800000FF000000FFFFFFFFFFFFFFFFFF0000
        00FF800000FF800000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF800000FF000000FFFFFFFFFFFFFFFFFF0000
        00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
        00FF800000FF800000FF800000FF800000FF000000FFFFFFFFFFFFFFFFFF0000
        00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
        00FF800000FF800000FF800000FF800000FF000000FFFFFFFFFFFFFFFFFF0000
        00FF800000FF800000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF800000FF800000FF000000FFFFFFFFFFFFFFFFFF0000
        00FF800000FF000000FFFFE6E6FFFFE6E6FFFFE6E6FFFFE6E6FFFFE6E6FFFFE6
        E6FFFFE6E6FFFFE6E6FF000000FF800000FF000000FFFFFFFFFFFFFFFFFF0000
        00FF800000FF000000FFFFE6E6FFFFE6E6FFFFE6E6FFFFE6E6FFFFE6E6FFFFE6
        E6FFFFE6E6FFFFE6E6FF000000FF800000FF000000FFFFFFFFFFFFFFFFFF0000
        00FF800000FF000000FFFFE6E6FFFFE6E6FFFFE6E6FFFFE6E6FFFFE6E6FFFFE6
        E6FFFFE6E6FFFFE6E6FF000000FF800000FF000000FFFFFFFFFFFFFFFFFF0000
        00FF800000FF000000FFFFE6E6FFFFE6E6FFFFE6E6FFFFE6E6FFFFE6E6FFFFE6
        E6FFFFE6E6FFFFE6E6FF000000FF800000FF000000FFFFFFFFFFFFFFFFFF0000
        00FF800000FF000000FFFFE6E6FFFFE6E6FFFFE6E6FFFFE6E6FFFFE6E6FFFFE6
        E6FFFFE6E6FFFFE6E6FF000000FF800000FF000000FFFFFFFFFFFFFFFFFF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      PaintStyle = psCaptionGlyph
      OnClick = btn_setClick
    end
    object btn_fill: TdxBarButton
      Align = iaRight
      Caption = ' '#1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
      Category = 0
      Hint = ' '#1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
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
      OnClick = btn_fillClick
    end
  end
  object ds_HOUSEUK: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSEUK'
      'SET '
      '    DATA = :DATA,'
      '    HOUSE = :HOUSE,'
      '    PROC = :PROC,'
      '    STREET = :STREET'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSEUK'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSEUK('
      '    CODE,'
      '    DATA,'
      '    HOUSE,'
      '    PROC,'
      '    STREET'
      ')'
      'VALUES('
      '    :CODE,'
      '    :DATA,'
      '    :HOUSE,'
      '    :PROC,'
      '    :STREET'
      ')')
    RefreshSQL.Strings = (
      '    SELECT hu.CODE,'
      '           hu.DATA,'
      '           hu.HOUSE, h.nomer,'
      '           hu.PROC, '
      '           hu.STREET, s.name StName'
      '    FROM HOUSEUK hu'
      '    left outer join house h on h.code=hu.house'
      '    left outer join street s on s.code=hu.street'
      '    where(  hu.data<=:data_'
      '     ) and (     HU.CODE = :OLD_CODE'
      '     )'
      '    '
      '    ')
    SelectSQL.Strings = (
      '    SELECT hu.CODE,'
      '           hu.DATA,'
      '           hu.HOUSE, h.nomer,'
      '           hu.PROC, '
      '           hu.STREET, s.name StName'
      '    FROM HOUSEUK hu'
      '    left outer join house h on h.code=hu.house'
      '    left outer join street s on s.code=hu.street'
      '    where hu.data<=:data_'
      '    order by hu.HOUSE,hu.data Desc')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 112
    Top = 112
  end
  object src_HOUSEUK: TDataSource
    DataSet = m_HouseUK
    Left = 141
    Top = 112
  end
  object ds_history: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSEUK'
      'SET '
      '    DATA = :DATA,'
      '    HOUSE = :HOUSE,'
      '    PROC = :PROC,'
      '    STREET = :STREET'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSEUK'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSEUK('
      '    CODE,'
      '    DATA,'
      '    HOUSE,'
      '    PROC,'
      '    STREET'
      ')'
      'VALUES('
      '    :CODE,'
      '    :DATA,'
      '    :HOUSE,'
      '    :PROC,'
      '    :STREET'
      ')')
    RefreshSQL.Strings = (
      'SELECT CODE, '
      '       DATA, '
      '       HOUSE, '
      '       PROC, '
      '       STREET'
      'FROM HOUSEUK'
      'where(  HOUSE=:mas_house'
      '     ) and (     HOUSEUK.CODE = :OLD_CODE'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       DATA, '
      '       HOUSE, '
      '       PROC, '
      '       STREET'
      'FROM HOUSEUK'
      'where HOUSE=:mas_house')
    BeforeDelete = ds_historyBeforeDelete
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_HOUSEUK
    Left = 544
    Top = 56
    dcForceOpen = True
  end
  object src_history: TDataSource
    DataSet = ds_history
    Left = 576
    Top = 56
  end
  object m_HouseUK: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 112
    Top = 168
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = clc_proc
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = ed_tarif
        Properties.Strings = (
          'Value')
      end
      item
        Component = grp_right
        Properties.Strings = (
          'SizeOptions.Width')
      end
      item
        Component = lb_data
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 592
    Top = 136
  end
  object ds_street: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME'
      'FROM'
      '    STREET '
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 439
    Top = 320
  end
  object src_street: TDataSource
    DataSet = ds_street
    Left = 468
    Top = 320
  end
  object ds_house: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NOMER    '
      'FROM'
      '    HOUSE '
      'where STREET=:str')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 439
    Top = 368
  end
  object src_house: TDataSource
    DataSet = ds_house
    Left = 468
    Top = 368
  end
  object stl_indicator: TcxStyleRepository
    Left = 560
    Top = 136
    PixelsPerInch = 96
    object cxstyl_indicator: TcxStyle
    end
  end
end
