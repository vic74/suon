object TOPlanProcForm: TTOPlanProcForm
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1094#1077#1085#1090' '#1088#1072#1089#1093#1086#1076#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' '#1087#1086' '#1058#1054
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
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_TOPLANPROC
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 81
        end
        object clv1TO1: TcxGridDBColumn
          Caption = #1055#1088#1086#1094#1077#1085#1090' '#1087#1086' '#1086#1073#1097#1077#1089#1090#1088#1086#1102
          DataBinding.FieldName = 'TO1'
          Width = 74
        end
        object clv1TO2: TcxGridDBColumn
          Caption = #1055#1088#1086#1094#1077#1085#1090' '#1087#1086' '#1101#1083#1077#1082#1090#1088#1080#1082#1077
          DataBinding.FieldName = 'TO2'
          Width = 75
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object dt1: TcxDateEdit
      Left = 206
      Top = 456
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object btn_save: TcxButton
      Left = 20
      Top = 537
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 4
      OnClick = btn_saveClick
    end
    object btn_edit: TcxButton
      Left = 116
      Top = 537
      Width = 75
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 5
      OnClick = btn_editClick
    end
    object btn_delete: TcxButton
      Left = 212
      Top = 537
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 6
      OnClick = btn_deleteClick
    end
    object TO1: TcxCalcEdit
      Left = 206
      Top = 483
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Properties.QuickClose = True
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object TO2: TcxCalcEdit
      Left = 206
      Top = 510
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Properties.QuickClose = True
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
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
    object grlc1Group1: TdxLayoutGroup
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 133
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object itm_dt1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1044#1072#1090#1072' '#1089' '#1082#1086#1090#1086#1088#1086#1081' '#1076#1077#1081#1089#1090#1074#1091#1077#1090' '#1087#1088#1086#1094#1077#1085#1090
      Parent = grlc1Group1
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1088#1086#1094#1077#1085#1090' '#1087#1086' '#1086#1073#1097#1077#1089#1090#1088#1086#1102
      Parent = grlc1Group1
      Control = TO1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1088#1086#1094#1077#1085#1090' '#1087#1086' '#1101#1083#1077#1082#1090#1088#1080#1082#1077
      Parent = grlc1Group1
      Control = TO2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grlc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object itm_save: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group2
      SizeOptions.Width = 90
      Control = btn_save
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_edit: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 90
      Control = btn_edit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_delete: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group2
      SizeOptions.Width = 90
      Control = btn_delete
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 56
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 652
    Top = 56
  end
  object ds_TOPLANPROC: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       DATA, '
      '       TO1, '
      '       TO2'
      'FROM TOPLANPROC')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 72
    Top = 56
  end
  object src_TOPLANPROC: TDataSource
    DataSet = ds_TOPLANPROC
    Left = 104
    Top = 56
  end
end
