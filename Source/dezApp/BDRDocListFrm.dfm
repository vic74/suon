object BDRDocListForm: TBDRDocListForm
  Left = 0
  Top = 0
  Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1041#1044#1056
  ClientHeight = 586
  ClientWidth = 719
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
    Width = 719
    Height = 586
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 1
      Top = 53
      Width = 250
      Height = 200
      TabOrder = 2
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_m1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Bands = <
          item
            FixedKind = fkLeft
            Options.Moving = False
            Width = 112
          end
          item
            Caption = #1041#1044#1056'. '#1055#1083#1072#1085
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 144
          end
          item
            Caption = #1041#1044#1056'. '#1060#1072#1082#1090
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 135
          end
          item
            Caption = #1059#1089#1083#1091#1075#1080' '#1056#1050#1062
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 573
          end
          item
            Caption = #1055#1088#1086#1095#1080#1077' '#1091#1089#1083#1091#1075#1080
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 826
          end>
        object clvb1M: TcxGridDBBandedColumn
          DataBinding.FieldName = 'M'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1MName: TcxGridDBBandedColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'MName'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1BDR1: TcxGridDBBandedColumn
          Caption = #1041#1044#1056'1'
          DataBinding.FieldName = 'BDR1'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1BDR2: TcxGridDBBandedColumn
          Caption = #1041#1044#1056'2'
          DataBinding.FieldName = 'BDR2'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1BDR3: TcxGridDBBandedColumn
          Caption = #1041#1044#1056'3'
          DataBinding.FieldName = 'BDR3'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1FBDR1: TcxGridDBBandedColumn
          Caption = #1041#1044#1056'1'
          DataBinding.FieldName = 'FBDR1'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1FBDR2: TcxGridDBBandedColumn
          Caption = #1041#1044#1056'2'
          DataBinding.FieldName = 'FBDR2'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1FBDR3: TcxGridDBBandedColumn
          Caption = #1041#1044#1056'3'
          DataBinding.FieldName = 'FBDR3'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1RKC1: TcxGridDBBandedColumn
          Caption = #1042#1099#1074#1086#1079' '#1058#1041#1054
          DataBinding.FieldName = 'RKC1'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 43
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1RKC2: TcxGridDBBandedColumn
          Caption = #1059#1073#1086#1088#1082#1072' '#1076#1074#1086#1088#1072
          DataBinding.FieldName = 'RKC2'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 51
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1RKC3: TcxGridDBBandedColumn
          Caption = #1059#1073#1086#1088#1082#1072' '#1087#1086#1076#1098#1077#1079#1076#1072
          DataBinding.FieldName = 'RKC3'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 66
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1RKC4: TcxGridDBBandedColumn
          Caption = #1050#1072#1087#1080#1090#1072#1083#1100#1085#1099#1081' '#1088#1077#1084#1086#1085#1090
          DataBinding.FieldName = 'RKC4'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 81
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1RKC5: TcxGridDBBandedColumn
          Caption = #1043#1072#1079#1086#1074#1086#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'RKC5'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 94
          Position.BandIndex = 3
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1RKC6: TcxGridDBBandedColumn
          Caption = #1054#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077' '#1080' '#1088#1077#1084#1086#1085#1090
          DataBinding.FieldName = 'RKC6'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          VisibleForCustomization = False
          Width = 108
          Position.BandIndex = 3
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1RKC7: TcxGridDBBandedColumn
          Caption = #1051#1080#1092#1090
          DataBinding.FieldName = 'RKC7'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          VisibleForCustomization = False
          Width = 37
          Position.BandIndex = 3
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1RKC8: TcxGridDBBandedColumn
          Caption = #1052#1091#1089#1086#1088#1086#1087#1088#1086#1074#1086#1076
          DataBinding.FieldName = 'RKC8'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 93
          Position.BandIndex = 3
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clvb1F0: TcxGridDBBandedColumn
          Caption = #1058#1056' '#1101#1083#1077#1082#1090#1088#1080#1082#1072
          DataBinding.FieldName = 'F0'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 68
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1F1: TcxGridDBBandedColumn
          Caption = #1058#1056' '#1086#1073#1097#1077#1089#1090#1088#1086#1081
          DataBinding.FieldName = 'F1'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 71
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1F2: TcxGridDBBandedColumn
          Caption = #1058#1056' '#1083#1080#1092#1090
          DataBinding.FieldName = 'F2'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 43
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1F3: TcxGridDBBandedColumn
          Caption = #1054#1044#1057
          DataBinding.FieldName = 'F3'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 36
          Position.BandIndex = 4
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1F4: TcxGridDBBandedColumn
          Caption = #1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'F4'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 80
          Position.BandIndex = 4
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1F6: TcxGridDBBandedColumn
          Caption = #1058#1054' '#1086#1073#1097#1077#1089#1090#1088#1086#1081
          DataBinding.FieldName = 'F6'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 69
          Position.BandIndex = 4
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1F5: TcxGridDBBandedColumn
          Caption = #1058#1054' '#1101#1083#1077#1082#1090#1088#1086#1084#1086#1085#1090#1072#1078
          DataBinding.FieldName = 'F5'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 84
          Position.BandIndex = 4
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1F7: TcxGridDBBandedColumn
          Caption = #1059#1073#1086#1088#1082#1072' '#1082#1072#1073#1080#1085#1099' '#1083#1080#1092#1090#1072
          DataBinding.FieldName = 'F7'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 81
          Position.BandIndex = 4
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clvb1F8: TcxGridDBBandedColumn
          Caption = #1058#1077#1093#1086#1089#1074#1080#1076'. '#1083#1080#1092#1090#1072
          DataBinding.FieldName = 'F8'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 98
          Position.BandIndex = 4
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clvb1F9: TcxGridDBBandedColumn
          Caption = #1069#1082#1089#1087#1077#1088#1090#1080#1079#1072' '#1083#1080#1092#1090#1072
          DataBinding.FieldName = 'F9'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 68
          Position.BandIndex = 4
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object clvb1F10: TcxGridDBBandedColumn
          Caption = #1040#1042#1057
          DataBinding.FieldName = 'F10'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 26
          Position.BandIndex = 4
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object clvb1F11: TcxGridDBBandedColumn
          Caption = #1051#1044#1057#1057
          DataBinding.FieldName = 'F11'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 42
          Position.BandIndex = 4
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object clvb1F12: TcxGridDBBandedColumn
          Caption = #1058#1054' '#1083#1080#1092#1090
          DataBinding.FieldName = 'F12'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 60
          Position.BandIndex = 4
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
      end
      object l1: TcxGridLevel
        GridView = vb1
      end
    end
    object mY: TcxMaskEdit
      Left = 35
      Top = 14
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object btn_exec: TcxButton
      Left = 138
      Top = 14
      Width = 110
      Height = 25
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      TabOrder = 1
      OnClick = btn_execClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp_top: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object itm_mY: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1043#1086#1076
      Parent = grp_top
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 116
      Control = mY
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Offsets.Left = 10
      Parent = grp_top
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 110
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 8
    object lcl1: TdxLayoutCxLookAndFeel
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
      LookAndFeel.NativeStyle = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = mY
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 652
    Top = 8
  end
  object m1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 152
    Top = 224
  end
  object src_m1: TDataSource
    DataSet = m1
    Left = 184
    Top = 224
  end
end
