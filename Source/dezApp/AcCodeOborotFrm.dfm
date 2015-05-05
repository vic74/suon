object AcCodeOborotForm: TAcCodeOborotForm
  Left = 0
  Top = 0
  Caption = 
    #1057#1074#1086#1076#1085#1072#1103' '#1086#1073#1086#1088#1086#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100' '#1087#1086' '#1091#1095#1077#1090#1091' '#1088#1072#1089#1095#1077#1090#1086#1074' '#1089' '#1082#1074#1072#1088#1090#1080#1088#1086#1089#1098#1077#1084#1097#1080#1082#1072 +
    #1084#1080
  ClientHeight = 592
  ClientWidth = 915
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
    Width = 915
    Height = 592
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object cbb_m1: TcxComboBox
      Left = 61
      Top = 10
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
      Style.HotTrack = False
      TabOrder = 0
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object msk_y1: TcxMaskEdit
      Left = 188
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 1
      Text = '2011'
      Width = 49
    end
    object cbb_m2: TcxComboBox
      Left = 263
      Top = 10
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
      Style.HotTrack = False
      TabOrder = 2
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object msk_y2: TcxMaskEdit
      Left = 390
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 3
      Text = '2011'
      Width = 49
    end
    object btn_exec: TcxButton
      Left = 547
      Top = 37
      Width = 50
      Height = 25
      Hint = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      OptionsImage.Glyph.Data = {
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
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btn_execClick
    end
    object cbb_du: TcxLookupComboBox
      Left = 61
      Top = 37
      Properties.CaseSensitiveSearch = True
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
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_du
      Style.HotTrack = False
      TabOrder = 4
      Width = 145
    end
    object cbb_street: TcxLookupComboBox
      Left = 275
      Top = 37
      Properties.CaseSensitiveSearch = True
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
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_STREET
      Properties.OnEditValueChanged = cbb_streetPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 5
      Width = 145
    end
    object cbb_house: TcxLookupComboBox
      Left = 477
      Top = 37
      Properties.CaseSensitiveSearch = True
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
      Properties.ListSource = src_HOUSE
      Style.HotTrack = False
      TabOrder = 6
      Width = 145
    end
    object grd1: TcxGrid
      Left = 10
      Top = 68
      Width = 250
      Height = 200
      TabOrder = 8
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_m1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1SALDO
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1NACH
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1RECALC
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1NACHITOG
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1INCOM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1SALDO1
          end
          item
            Kind = skCount
            Column = clv1NAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv1SRV: TcxGridDBColumn
          DataBinding.FieldName = 'SRV'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1059#1089#1083#1091#1075#1072
          DataBinding.FieldName = 'NAME'
          Width = 202
        end
        object clv1SALDO: TcxGridDBColumn
          Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1085#1072#1095#1072#1083#1086
          DataBinding.FieldName = 'SALDO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 98
        end
        object clv1NACH: TcxGridDBColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'NACH'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 89
        end
        object clv1RECALC: TcxGridDBColumn
          Caption = #1055#1077#1088#1077#1088#1072#1089#1095#1077#1090#1099
          DataBinding.FieldName = 'RECALC'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 95
        end
        object clv1NACHITOG: TcxGridDBColumn
          Caption = #1048#1090#1086#1075#1086' '#1085#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'NACHITOG'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 101
        end
        object clv1INCOM: TcxGridDBColumn
          Caption = #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'INCOM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 85
        end
        object clv1SALDO1: TcxGridDBColumn
          Caption = #1057#1072#1083#1100#1076#1086' '#1085#1072' '#1082#1086#1085#1077#1094
          DataBinding.FieldName = 'SALDO1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 110
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
    object grlc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grlc1Group4
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 13
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_m1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089
      Parent = grlc1Group1
      Control = cbb_m1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = msk_y1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item2: TdxLayoutItem
      CaptionOptions.Text = #1087#1086' '
      Parent = grlc1Group1
      Control = cbb_m2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item3: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = msk_y2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grlc1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grlc1Group4
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 15
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object it_du: TdxLayoutItem
      CaptionOptions.Text = #1044#1059
      Parent = grlc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 223
      Control = cbb_du
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = grlc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 207
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_house: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      Parent = grlc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 89
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Glyph.Data = {
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
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 50
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grlc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 232
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_du
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_m1
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_m2
        Properties.Strings = (
          'ItemIndex')
      end>
    StorageName = 'prop1'
    Left = 732
    Top = 232
  end
  object ds_du: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from DU'
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 40
    Top = 120
  end
  object src_du: TDataSource
    DataSet = ds_du
    Left = 68
    Top = 120
  end
  object ds_STREET: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from STREET'
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 48
    Top = 176
  end
  object src_STREET: TDataSource
    DataSet = ds_STREET
    Left = 76
    Top = 176
  end
  object ds_HOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE,NOMER,STREET'
      'FROM HOUSE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 56
    Top = 240
  end
  object src_HOUSE: TDataSource
    DataSet = ds_HOUSE
    Left = 84
    Top = 240
  end
  object m1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 496
    Top = 152
  end
  object src_m1: TDataSource
    DataSet = m1
    Left = 524
    Top = 152
  end
end
