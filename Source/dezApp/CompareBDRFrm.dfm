object CompareBDRForm: TCompareBDRForm
  Left = 0
  Top = 0
  Caption = #1057#1088#1072#1074#1085#1077#1085#1080#1077' '#1041#1044#1056' ('#1078#1080#1083#1092#1086#1085#1076' '#1087#1083#1072#1085' '#1080' '#1092#1072#1082#1090')'
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
      Top = 74
      Width = 250
      Height = 200
      TabOrder = 4
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_m1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
          Width = 44
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'NAME'
          Width = 225
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 48
        end
        object clv1PLAN: TcxGridDBColumn
          Caption = #1055#1083#1072#1085
          DataBinding.FieldName = 'PLAN'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = False
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = '0'
          Width = 45
        end
        object clv1FACT: TcxGridDBColumn
          Caption = #1060#1072#1082#1090
          DataBinding.FieldName = 'FACT'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 40
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object cbb_month: TcxComboBox
      Left = 49
      Top = 32
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
    object msk_Y: TcxMaskEdit
      Left = 197
      Top = 32
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cbb_srv: TcxLookupComboBox
      Left = 361
      Top = 32
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
      Properties.ListSource = src__HOUSESRV
      Style.HotTrack = False
      TabOrder = 2
      Width = 145
    end
    object btn_exec: TcxButton
      Left = 581
      Top = 32
      Width = 75
      Height = 25
      Margins.Left = 10
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 3
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
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 72
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object itm_month: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Offsets.Left = 5
      Parent = grp_top
      Control = cbb_month
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Y: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Offsets.Left = 5
      Parent = grp_top
      Control = msk_Y
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_srv: TdxLayoutItem
      CaptionOptions.Text = #1059#1089#1083#1091#1075#1072
      Offsets.Left = 5
      Parent = grp_top
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 246
      Control = cbb_srv
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Offsets.Left = 10
      Parent = grp_top
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 111
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 672
    Top = 272
    object lcl1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_month
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_srv
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = msk_Y
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 644
    Top = 272
  end
  object ds_HOUSESRV: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NAME'
      'FROM HOUSESRV')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 584
    Top = 168
  end
  object src__HOUSESRV: TDataSource
    DataSet = ds_HOUSESRV
    Left = 616
    Top = 168
  end
  object m1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 288
    Top = 368
  end
  object src_m1: TDataSource
    DataSet = m1
    Left = 320
    Top = 368
  end
end
