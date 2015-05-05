object HouseLiftGrForm: THouseLiftGrForm
  Left = 0
  Top = 0
  Caption = #1043#1088#1072#1092#1080#1082#1080' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103' '#1083#1080#1092#1090#1086#1074
  ClientHeight = 553
  ClientWidth = 715
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
    Top = 28
    Width = 715
    Height = 525
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    ExplicitTop = 29
    ExplicitHeight = 524
    object grd1: TcxGrid
      Left = 246
      Top = 3
      Width = 250
      Height = 200
      TabOrder = 6
      object v1: TcxGridDBTableView
        DataController.DataSource = src_m_HOUSELIFTGR
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clvLIFTLIST: TcxGridDBColumn
          Caption = #1050#1086#1076' '#1083#1080#1092#1090#1072
          DataBinding.FieldName = 'LIFTLIST'
          Options.Editing = False
          Width = 77
        end
        object clv1STNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STNAME'
          Options.Editing = False
          Width = 175
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 51
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
          Caption = #1058#1077#1093'.'#1086#1089#1084'.'
          DataBinding.FieldName = 'TEXOS'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1TEXOSPropertiesEditValueChanged
          Width = 59
        end
        object clv1EXP: TcxGridDBColumn
          Caption = #1069#1082#1089#1087'.'
          DataBinding.FieldName = 'EXP'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1EXPPropertiesEditValueChanged
          Width = 42
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
          Width = 55
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 3
      Top = 18
      Width = 250
      Height = 200
      TabOrder = 0
      object v2: TcxGridDBTableView
        DataController.DataSource = src_History
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2LIFTLIST: TcxGridDBColumn
          DataBinding.FieldName = 'LIFTLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2M: TcxGridDBColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'M'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
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
          Properties.ListSource = src_month
          Options.Editing = False
          Width = 93
        end
        object clv2Y: TcxGridDBColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
        end
        object clv2TEXOS: TcxGridDBColumn
          Caption = #1058#1077#1093'.'
          DataBinding.FieldName = 'TEXOS'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Options.Editing = False
          Width = 37
        end
        object clv2EXP: TcxGridDBColumn
          Caption = #1069#1082#1089#1087'.'
          DataBinding.FieldName = 'EXP'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Options.Editing = False
          Width = 35
        end
        object clv2STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2STNAME: TcxGridDBColumn
          DataBinding.FieldName = 'STNAME'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2NOMER: TcxGridDBColumn
          DataBinding.FieldName = 'NOMER'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object msk_Y1: TcxMaskEdit
      Left = 97
      Top = 429
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 3
      Text = '2011'
      Width = 121
    end
    object msk_Y2: TcxMaskEdit
      Left = 97
      Top = 451
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 4
      Text = '2012'
      Width = 121
    end
    object btn_copy: TcxButton
      Left = 13
      Top = 483
      Width = 215
      Height = 25
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1075#1088#1072#1092#1080#1082
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C2B3A5FFA78C7EFFA19C94FFBBB9
        B1FF63615D803634324000000000000000000000000000000000000000000000
        0000000000000000000000000000615F5980F3C09FFFFDE3D4FFF9CEB7FFD0A7
        8CFFAF907EFF9F9288FFA7A39AFFC0BEB5FF6565618036343240000000000000
        0000363432403636344000000000D0A992FFFDF3EDFFFFF1EBFFFFFFFFFFFFFF
        FFFFFFF5EDFFFFE7D2FFF3CEB3FFC8A38AFFAB9682FFADA9A5FF000000003634
        3240BCA494FF9F8E80FFA5A198FFEBB199FFFFFFFFFFFFE4D8FFFFCCB9FFFFCC
        B7FFFFD8C8FFFFF3EFFFFFFFFFFFFFFDFDFFFDD4B7FFB9B3A7FF00000000CCB5
        A7FFFBD0BBFFFFDCCCFFF39E7FFFF7C8B9FFFFEDE5FFFFCCB9FFFFE9E0FFFFFF
        FDFFFFF5F3FFFFD8CAFFFFE7DCFFFFF5EBFFC2A590FF3434324036343240E3AF
        92FFFFFFFDFFFFE3DAFFF59E82FFFBE2D8FFFFF7EDFFFFFBF3FFFFE0D2FFFFCA
        B7FFFFC8B5FFFFD6C6FFFFFFFDFFF3C2A7FFBBB7AFFF0000000061554F80F9D0
        BBFFFFFFFBFFFFD6C4FFEF8865FFFFEFE5FFFFD6C2FFFFC6ADFFFFCAB5FFFFDE
        CEFFFFFBF7FFFFF7F3FFFFFDF9FFC2947DFF65635F8000000000D0A590FFFDED
        E7FFFFE0D2FFFFCCB9FFED8867FFFFF1E5FFFFCCB5FFFFDECAFFFFF5E7FFFFE5
        D6FFFFCAB5FFFFD8C8FFFDEBE2FFAD907EFF3636344000000000D99B82FFFFFB
        F3FFFFF7EFFFFFF7EFFFEB8669FFFFEDD6FFFFE5CAFFFFD0B7FFFFC2A7FFFFC2
        A9FFFFCEB7FFFFEBDEFFFBDACAFFA79688FF0000000000000000E39D84FFFFF5
        EBFFFFCCB5FFFFC8AFFFEB8467FFFFE5CAFFFFDAB7FFFFE0C2FFFFE5CAFFFFEB
        D4FFFFE5D2FFFFE3D0FFF9CAB7FFA99C94FF0000000000000000E7A188FFFFE9
        D4FFFFC8AFFFFFE9D4FFE99073FFEDA188FFF7C6AFFFFFE3CCFFFFE0C4FFFFE0
        C2FFFFE5CAFFFFE7D2FFF3BEA7FFA9A79EFF0000000000000000EB9D86FFFFE5
        CAFFFFE1C8FFFFCEB1FFFFC4A9FFFDB79CFFF19679FFE99678FFEB927CFFF1B5
        A0FFF9D6C6FFFFEBD9FFF1B19CFFA9A59CFF0000000000000000E9A188FFFFD6
        B1FFFFDAB9FFFFE3C6FFFFE5CCFFFFEBD4FFFFE3CEFFFFEFE1FFDAA38EFFB7A9
        9FFFD29F8CFFD4967BFFDE825FFFC4C2B9FF0000000000000000DA755CFFEFA9
        92FFF9CEB9FFFFE5D0FFFFDEC1FFFFDEC2FFFFE3CAFFFFEFDBFFCE947EFFC6BE
        B8FF000000000000000000000000000000000000000000000000000000006359
        5380D29F8CFFD48C75FFE79884FFF5B9A4FFFDDDC6FFFFF1E3FFC6826BFFC6C0
        BAFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000003634324065514B80D29A86FFDC886DFFC67D63FF6363
        5F80000000000000000000000000000000000000000000000000}
      TabOrder = 5
      OnClick = btn_copyClick
    end
    object rb_EXP: TcxRadioButton
      Left = 13
      Top = 411
      Width = 113
      Height = 17
      Caption = #1069#1082#1089#1087'.'
      TabOrder = 2
    end
    object rb_TEXOS: TcxRadioButton
      Left = 13
      Top = 393
      Width = 113
      Height = 17
      Caption = #1058#1077#1093'.'#1086#1089#1084'.'
      Checked = True
      TabOrder = 1
      TabStop = True
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
    object grp_left: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 235
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object itm_grd2: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1048#1089#1090#1086#1088#1080#1103
      CaptionOptions.Layout = clTop
      Parent = grp_left
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = #1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077' '#1075#1088#1072#1092#1080#1082#1072'                         '
      Parent = grp_left
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 106
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 1
    end
    object itm_ldss: TdxLayoutItem
      CaptionOptions.Text = 'cxRadioButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = rb_TEXOS
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_abs: TdxLayoutItem
      CaptionOptions.Text = 'cxRadioButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = rb_EXP
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_Y1: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1089'    '
      Parent = grlc1Group1
      Control = msk_Y1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_Y2: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1085#1072'  '
      Parent = grlc1Group1
      Control = msk_Y2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_copy: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Offsets.Top = 10
      Parent = grlc1Group1
      Control = btn_copy
      ControlOptions.ShowBorder = False
      Index = 4
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
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 112
    object laf1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object ds_HOUSELIFTGR: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSELIFTGR'
      'SET '
      '    LIFTLIST = :LIFTLIST,'
      '    M = :M,'
      '    Y = :Y,'
      '    TEXOS = :TEXOS,'
      '    EXP = :EXP,'
      '    STREET = :STREET,'
      '    HOUSE = :HOUSE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSELIFTGR'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSELIFTGR('
      '    CODE,'
      '    LIFTLIST,'
      '    M,'
      '    Y,'
      '    TEXOS,'
      '    EXP,'
      '    STREET,'
      '    HOUSE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :LIFTLIST,'
      '    :M,'
      '    :Y,'
      '    :TEXOS,'
      '    :EXP,'
      '    :STREET,'
      '    :HOUSE'
      ')')
    RefreshSQL.Strings = (
      'SELECT HL.CODE, '
      '       HL.LIFTLIST, '
      '       HL.M, '
      '       HL.Y, '
      '       HL.TEXOS, '
      '       HL.EXP, '
      '       HL.STREET, s.name StName,'
      '       HL.HOUSE, h.nomer,l.entrance'
      'FROM HOUSELIFTGR HL'
      'left outer join house h on h.code=hl.house'
      'left outer join street s on s.code=hl.street'
      'left outer join liftlist l on l.code=hl.liftlist'
      ''
      ' WHERE '
      '        HL.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT HL.CODE, '
      '       HL.LIFTLIST, '
      '       HL.M, '
      '       HL.Y, '
      '       HL.TEXOS, '
      '       HL.EXP, '
      '       HL.STREET, s.name StName,'
      '       HL.HOUSE, h.nomer,l.entrance'
      'FROM HOUSELIFTGR HL'
      'left outer join house h on h.code=hl.house'
      'left outer join street s on s.code=hl.street'
      'left outer join liftlist l on l.code=hl.liftlist')
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    Left = 280
    Top = 208
  end
  object src_History: TDataSource
    DataSet = ds_history
    Left = 61
    Top = 120
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
    Left = 648
    Top = 112
    DockControlHeights = (
      0
      0
      28
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
      FloatLeft = 741
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lb_month'
        end
        item
          Visible = True
          ItemName = 'lb_year'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_exec'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object lb_month: TcxBarEditItem
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
    object lb_year: TcxBarEditItem
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
      OnClick = btn_fillClick
    end
  end
  object m_month: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 272
    Top = 64
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = lb_month
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = lb_year
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 618
    Top = 112
  end
  object m_HOUSELIFTGR: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 280
    Top = 160
  end
  object src_m_HOUSELIFTGR: TDataSource
    DataSet = m_HOUSELIFTGR
    Left = 310
    Top = 160
  end
  object src_month: TDataSource
    DataSet = m_month
    Left = 302
    Top = 64
  end
  object ds_history: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSELIFTGR'
      'SET '
      '    LIFTLIST = :LIFTLIST,'
      '    M = :M,'
      '    Y = :Y,'
      '    TEXOS = :TEXOS,'
      '    EXP = :EXP,'
      '    STREET = :STREET,'
      '    HOUSE = :HOUSE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSELIFTGR'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSELIFTGR('
      '    CODE,'
      '    LIFTLIST,'
      '    M,'
      '    Y,'
      '    TEXOS,'
      '    EXP,'
      '    STREET,'
      '    HOUSE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :LIFTLIST,'
      '    :M,'
      '    :Y,'
      '    :TEXOS,'
      '    :EXP,'
      '    :STREET,'
      '    :HOUSE'
      ')')
    RefreshSQL.Strings = (
      'SELECT CODE, '
      '       LIFTLIST, '
      '       M, '
      '       Y, '
      '       TEXOS, '
      '       EXP, '
      '       STREET, '
      '       HOUSE'
      'FROM HOUSELIFTGR'
      'where(  LIFTLIST=:mas_LIFTLIST'
      '     ) and (     HOUSELIFTGR.CODE = :OLD_CODE'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       LIFTLIST, '
      '       M, '
      '       Y, '
      '       TEXOS, '
      '       EXP, '
      '       STREET, '
      '       HOUSE'
      'FROM HOUSELIFTGR'
      'where LIFTLIST=:mas_LIFTLIST')
    AfterDelete = ds_historyAfterDelete
    BeforeDelete = ds_historyBeforeDelete
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    DataSource = src_m_HOUSELIFTGR
    Left = 32
    Top = 120
    dcForceOpen = True
  end
end
