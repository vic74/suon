object AnalizMatForm: TAnalizMatForm
  Left = 0
  Top = 0
  Caption = #1040#1085#1072#1083#1080#1079' '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' '#1058#1054' ('#1087#1083#1072#1085'\'#1092#1072#1082#1090')'
  ClientHeight = 755
  ClientWidth = 927
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
    Width = 927
    Height = 755
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object msk_Y1: TcxMaskEdit
      Left = 60
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 0
      Text = '2011'
      Width = 102
    end
    object cbb_m1: TcxComboBox
      Left = 149
      Top = 10
      Properties.DropDownListStyle = lsEditFixedList
      Properties.ImmediatePost = True
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
      TabOrder = 1
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object msk_Y2: TcxMaskEdit
      Left = 296
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 2
      Text = '2011'
      Width = 102
    end
    object cbb_m2: TcxComboBox
      Left = 387
      Top = 10
      Properties.DropDownListStyle = lsEditFixedList
      Properties.ImmediatePost = True
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
      TabOrder = 3
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object cbb_type: TcxComboBox
      Left = 60
      Top = 37
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1086#1073#1097#1077#1089#1090#1088#1086#1081
        #1101#1083#1077#1082#1090#1088#1080#1082#1072
        #1083#1080#1092#1090#1099)
      Style.HotTrack = False
      TabOrder = 4
      Text = #1086#1073#1097#1077#1089#1090#1088#1086#1081
      Width = 121
    end
    object ced_proc: TcxCalcEdit
      Left = 312
      Top = 37
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cbb_kontr: TcxLookupComboBox
      Left = 460
      Top = 37
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
      Properties.ListSource = src_KONTRAGENT
      Style.HotTrack = False
      TabOrder = 6
      Width = 210
    end
    object grd1: TcxGrid
      Left = 10
      Top = 64
      Width = 250
      Height = 200
      TabOrder = 8
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_m1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv1PSUM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1PSUM1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1FSUM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1FSUM1
          end
          item
            Format = ',0.0;-,0.0'
            Kind = skSum
            Column = clv1SUM
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 191
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 54
        end
        object clv1PSUM: TcxGridDBColumn
          Caption = #1055#1083#1072#1085
          DataBinding.FieldName = 'PSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 86
        end
        object clv1PSUM1: TcxGridDBColumn
          Caption = #1055#1083#1072#1085' ('#1084#1072#1090#1077#1088#1080#1072#1083#1099')'
          DataBinding.FieldName = 'PSUM1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 99
        end
        object clv1FSUM: TcxGridDBColumn
          Caption = #1060#1072#1082#1090
          DataBinding.FieldName = 'FSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 84
        end
        object clv1FSUM1: TcxGridDBColumn
          Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
          DataBinding.FieldName = 'FSUM1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 81
        end
        object clv1SUM: TcxGridDBColumn
          Caption = '% '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103
          DataBinding.FieldName = 'SUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.0;-,0.0'
          Width = 100
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object btn_exec: TcxButton
      Left = 676
      Top = 17
      Width = 75
      Height = 25
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
      TabOrder = 7
      OnClick = btn_execClick
    end
    object log: TcxMemo
      Left = 20
      Top = 625
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 9
      Height = 89
      Width = 185
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 48
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grlc1Group4: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object grlc1Group3: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Parent = grlc1Group4
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1087#1077#1088#1080#1086#1076' '#1089
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 133
      Control = msk_Y1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = grlc1Group3
      Control = cbb_m1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item3: TdxLayoutItem
      CaptionOptions.Text = ' '#1087#1086
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 105
      Control = msk_Y2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item4: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = grlc1Group3
      Control = cbb_m2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grlc1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grlc1Group4
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itm_type: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1090#1080#1087
      Parent = grlc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 206
      Control = cbb_type
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_proc: TdxLayoutItem
      CaptionOptions.Text = '% '#1085#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1099
      Parent = grlc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 161
      Control = ced_proc
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item5: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Parent = grlc1Group5
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grlc1Group6: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'New Group'
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 272
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object itm_exec: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group6
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 33
      SizeOptions.Width = 160
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grlc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
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
    object gr_log: TdxLayoutGroup
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 151
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 2
    end
    object itm_log: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxMemo1'
      CaptionOptions.Visible = False
      Parent = gr_log
      Control = log
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 872
    Top = 144
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_m1
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_m2
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = ced_proc
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = msk_Y1
        Properties.Strings = (
          'Text')
      end
      item
        Component = msk_Y2
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 844
    Top = 144
  end
  object src_KONTRAGENT: TDataSource
    Left = 502
    Top = 192
  end
  object m1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 480
    Top = 272
  end
  object src_m1: TDataSource
    DataSet = m1
    Left = 508
    Top = 272
  end
end
