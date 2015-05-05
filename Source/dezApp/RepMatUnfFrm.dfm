object RepMatUnfForm: TRepMatUnfForm
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1085#1077#1087#1088#1077#1076#1074#1080#1076#1077#1085#1085#1099#1084' '#1088#1072#1073#1086#1090#1072#1084
  ClientHeight = 635
  ClientWidth = 1063
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
    Width = 1063
    Height = 635
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object grid1: TcxDBPivotGrid
      Left = 10
      Top = 37
      Width = 1043
      Height = 588
      DataSource = src_Rep
      Groups = <>
      OptionsView.RowGrandTotalWidth = 250
      TabOrder = 3
      object fldgrid1HOUSE: TcxDBPivotGridField
        AreaIndex = 2
        DataBinding.FieldName = 'HOUSE'
        UniqueName = 'HOUSE'
      end
      object fldgrid1NOMER: TcxDBPivotGridField
        AreaIndex = 3
        IsCaptionAssigned = True
        Caption = #1044#1086#1084
        DataBinding.FieldName = 'NOMER'
        Visible = True
        UniqueName = #1044#1086#1084
      end
      object fldgrid1STREET: TcxDBPivotGridField
        AreaIndex = 4
        DataBinding.FieldName = 'STREET'
        UniqueName = 'STREET'
      end
      object fldgrid1STREETNAME: TcxDBPivotGridField
        AreaIndex = 5
        IsCaptionAssigned = True
        Caption = #1059#1083#1080#1094#1072
        DataBinding.FieldName = 'STREETNAME'
        Visible = True
        UniqueName = #1059#1083#1080#1094#1072
      end
      object fldgrid1MLIST: TcxDBPivotGridField
        AreaIndex = 6
        DataBinding.FieldName = 'MLIST'
        UniqueName = 'MLIST'
      end
      object fldgrid1MLISTNAME: TcxDBPivotGridField
        AreaIndex = 7
        IsCaptionAssigned = True
        Caption = #1052#1072#1090#1077#1088#1080#1072#1083
        DataBinding.FieldName = 'MLISTNAME'
        Visible = True
        UniqueName = #1052#1072#1090#1077#1088#1080#1072#1083
      end
      object fldgrid1KONTRAGENT: TcxDBPivotGridField
        AreaIndex = 8
        DataBinding.FieldName = 'KONTRAGENT'
        UniqueName = 'KONTRAGENT'
      end
      object fldgrid1KONTNAME: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'KONTNAME'
        Visible = True
        UniqueName = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      end
      object fldgrid1FIO: TcxDBPivotGridField
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'FIO'
        Visible = True
        UniqueName = #1052#1077#1085#1077#1076#1078#1077#1088
      end
      object fldgrid1MANAGER: TcxDBPivotGridField
        AreaIndex = 9
        DataBinding.FieldName = 'MANAGER'
        UniqueName = 'MANAGER'
      end
      object fldgrid1NOTE: TcxDBPivotGridField
        AreaIndex = 10
        DataBinding.FieldName = 'NOTE'
        UniqueName = 'NOTE'
      end
      object fldgrid1FIRM: TcxDBPivotGridField
        AreaIndex = 11
        DataBinding.FieldName = 'FIRM'
        UniqueName = 'FIRM'
      end
      object fldgrid1M1: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = #1071#1085#1074#1072#1088#1100
        DataBinding.FieldName = 'M1'
        Visible = True
        Width = 68
        UniqueName = #1071#1085#1074#1072#1088#1100
      end
      object fldgrid1M2: TcxDBPivotGridField
        Area = faData
        AreaIndex = 1
        IsCaptionAssigned = True
        Caption = #1060#1077#1074#1088#1072#1083#1100
        DataBinding.FieldName = 'M2'
        Visible = True
        Width = 68
        UniqueName = #1060#1077#1074#1088#1072#1083#1100
      end
      object fldgrid1M3: TcxDBPivotGridField
        Area = faData
        AreaIndex = 2
        IsCaptionAssigned = True
        Caption = #1052#1072#1088#1090
        DataBinding.FieldName = 'M3'
        Visible = True
        Width = 68
        UniqueName = #1052#1072#1088#1090
      end
      object fldgrid1M4: TcxDBPivotGridField
        Area = faData
        AreaIndex = 3
        IsCaptionAssigned = True
        Caption = #1040#1087#1088#1077#1083#1100
        DataBinding.FieldName = 'M4'
        Visible = True
        Width = 68
        UniqueName = #1040#1087#1088#1077#1083#1100
      end
      object fldgrid1M5: TcxDBPivotGridField
        Area = faData
        AreaIndex = 4
        IsCaptionAssigned = True
        Caption = #1052#1072#1081
        DataBinding.FieldName = 'M5'
        Visible = True
        Width = 68
        UniqueName = #1052#1072#1081
      end
      object fldgrid1M6: TcxDBPivotGridField
        Area = faData
        AreaIndex = 5
        IsCaptionAssigned = True
        Caption = #1048#1102#1085#1100
        DataBinding.FieldName = 'M6'
        Visible = True
        Width = 68
        UniqueName = #1048#1102#1085#1100
      end
      object fldgrid1M7: TcxDBPivotGridField
        Area = faData
        AreaIndex = 6
        IsCaptionAssigned = True
        Caption = #1048#1102#1083#1100
        DataBinding.FieldName = 'M7'
        Visible = True
        Width = 68
        UniqueName = #1048#1102#1083#1100
      end
      object fldgrid1M8: TcxDBPivotGridField
        Area = faData
        AreaIndex = 7
        IsCaptionAssigned = True
        Caption = #1040#1074#1075#1091#1089#1090
        DataBinding.FieldName = 'M8'
        Visible = True
        Width = 68
        UniqueName = #1040#1074#1075#1091#1089#1090
      end
      object fldgrid1M9: TcxDBPivotGridField
        Area = faData
        AreaIndex = 8
        IsCaptionAssigned = True
        Caption = #1057#1077#1085#1090#1103#1073#1088#1100
        DataBinding.FieldName = 'M9'
        Visible = True
        Width = 68
        UniqueName = #1057#1077#1085#1090#1103#1073#1088#1100
      end
      object fldgrid1M10: TcxDBPivotGridField
        Area = faData
        AreaIndex = 9
        IsCaptionAssigned = True
        Caption = #1054#1082#1090#1103#1073#1088#1100
        DataBinding.FieldName = 'M10'
        Visible = True
        Width = 68
        UniqueName = #1054#1082#1090#1103#1073#1088#1100
      end
      object fldgrid1M11: TcxDBPivotGridField
        Area = faData
        AreaIndex = 10
        IsCaptionAssigned = True
        Caption = #1053#1086#1103#1073#1088#1100
        DataBinding.FieldName = 'M11'
        Visible = True
        Width = 68
        UniqueName = #1053#1086#1103#1073#1088#1100
      end
      object fldgrid1M12: TcxDBPivotGridField
        Area = faData
        AreaIndex = 11
        IsCaptionAssigned = True
        Caption = #1044#1077#1082#1072#1073#1088#1100
        DataBinding.FieldName = 'M12'
        Visible = True
        Width = 68
        UniqueName = #1044#1077#1082#1072#1073#1088#1100
      end
      object fldgrid1DUNAME: TcxDBPivotGridField
        AreaIndex = 1
        IsCaptionAssigned = True
        Caption = #1044#1059
        DataBinding.FieldName = 'DUNAME'
        Visible = True
        UniqueName = #1044#1059
      end
      object fldgrid1SRVDOG: TcxDBPivotGridField
        AreaIndex = 12
        DataBinding.FieldName = 'SRVDOG'
        UniqueName = 'SRVDOG'
      end
      object fldgrid1GROOPCODE: TcxDBPivotGridField
        AreaIndex = 13
        DataBinding.FieldName = 'GROOPCODE'
        UniqueName = 'GROOPCODE'
      end
      object fldgrid1GROOPNAME: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 1
        IsCaptionAssigned = True
        Caption = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'GROOPNAME'
        Visible = True
        UniqueName = #1043#1088#1091#1087#1087#1072
      end
    end
    object cbb_Y: TcxComboBox
      Left = 34
      Top = 10
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
      Style.HotTrack = False
      TabOrder = 0
      Text = '2015'
      Width = 121
    end
    object btn_Exec: TcxButton
      Left = 161
      Top = 10
      Width = 123
      Height = 21
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 1
      OnClick = btn_ExecClick
    end
    object btn_exel: TcxButton
      Left = 290
      Top = 10
      Width = 75
      Height = 21
      Caption = 'Excel'
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = cmDb.iml1
      TabOrder = 2
      OnClick = btn_exelClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object litm_lc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBPivotGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = grid1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object litm_lc1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1043#1086#1076
      Parent = lGrplc1Group1
      Control = cbb_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group1
      Control = btn_Exec
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item12: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group1
      Control = btn_exel
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 768
    Top = 32
    object lcf1: TdxLayoutCxLookAndFeel
      LookAndFeel.SkinName = 'VS2010'
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 736
    Top = 32
  end
  object ds_Rep: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select * from REPORT_MAT_UNFORESEEN(:Y, :FSTREET, :FWORKER, :FKO' +
        'NTR)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 552
    Top = 352
  end
  object src_Rep: TDataSource
    DataSet = ds_Rep
    Left = 584
    Top = 352
  end
end
