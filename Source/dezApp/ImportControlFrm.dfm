object ImportControlForm: TImportControlForm
  Left = 0
  Top = 0
  Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1076#1072#1085#1085#1099#1093' '#1080#1079' '#1074#1085#1077#1096#1085#1080#1093' '#1089#1080#1089#1090#1077#1084
  ClientHeight = 588
  ClientWidth = 858
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
    Width = 858
    Height = 588
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object ed_Y: TcxMaskEdit
      Left = 34
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '([123][0-9])? [0-9][0-9]'
      Style.HotTrack = False
      TabOrder = 0
      Text = '2013'
      Width = 121
    end
    object cbb_M: TcxComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1087#1086' '#1074#1089#1077#1084
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
      TabOrder = 5
      Text = #1087#1086' '#1074#1089#1077#1084
      Visible = False
      Width = 121
    end
    object btn_LoadData: TcxButton
      Left = 140
      Top = 10
      Width = 96
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      OptionsImage.ImageIndex = 26
      OptionsImage.Images = cmDb.iml1
      TabOrder = 1
      OnClick = btn_LoadDataClick
    end
    object grd1: TcxGrid
      Left = 10
      Top = 41
      Width = 250
      Height = 200
      TabOrder = 2
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_md1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 22
      Top = 365
      Width = 250
      Height = 200
      TabOrder = 3
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v2CellClick
        DataController.DataSource = src_EXPORTLOADSTATE
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.KeyFieldNames = 'CODE'
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = v2StylesGetContentStyle
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv2M: TcxGridDBColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'M'
          RepositoryItem = rItem3
          Visible = False
          Width = 74
        end
        object clv2LOADDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1075#1088#1091#1079#1082#1080
          DataBinding.FieldName = 'LOADDATE'
          Width = 129
        end
        object clv2LOADTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'LOADTYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2EDTNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1079#1072#1075#1088#1091#1079#1082#1080
          DataBinding.FieldName = 'EDTNAME'
          Width = 199
        end
        object clv2ERRORCOUNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1086#1096#1080#1073#1086#1082
          DataBinding.FieldName = 'ERRORCOUNT'
          OnCustomDrawCell = clv2ERRORCOUNTCustomDrawCell
          Width = 103
        end
        object clv2DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2Y: TcxGridDBColumn
          DataBinding.FieldName = 'Y'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2PIPLE: TcxGridDBColumn
          DataBinding.FieldName = 'PIPLE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2FIO: TcxGridDBColumn
          Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100', '#1074#1099#1087#1086#1083#1085#1103#1074#1096#1080#1081' '#1079#1072#1075#1088#1091#1079#1082#1091
          DataBinding.FieldName = 'FIO'
          Width = 221
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object mmo1: TcxMemo
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Properties.ScrollBars = ssBoth
      Style.HotTrack = False
      TabOrder = 4
      Visible = False
      Height = 89
      Width = 185
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 3
      ShowBorder = False
      Index = -1
    end
    object grplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grplc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object grplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = #1051#1086#1075
      Parent = grplc1Group4
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 265
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object split1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object litlc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 124
      Control = ed_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litlc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Control = cbb_M
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object litlc1Item12: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = btn_LoadData
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litlc1Item13: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 245
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 3
    end
    object grplc1Group5: TdxLayoutGroup
      CaptionOptions.Text = #1044#1072#1085#1085#1099#1077
      Parent = grplc1Group4
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object litlc1Item14: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group5
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litlc1Item15: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxMemo1'
      CaptionOptions.Visible = False
      Parent = grplc1Group3
      Control = mmo1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object md1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 488
    Top = 112
  end
  object src_md1: TDataSource
    DataSet = md1
    Left = 520
    Top = 112
  end
  object Repository: TcxEditRepository
    Left = 352
    Top = 96
    object RItem1: TcxEditRepositoryCheckBoxItem
      Properties.ImmediatePost = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
    end
    object rItem2: TcxEditRepositoryComboBoxItem
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        ''
        #1103#1085#1074#1072#1088#1100
        #1092#1077#1074#1088#1072#1083#1100
        #1084#1072#1088#1090
        #1072#1087#1088#1077#1083#1100
        #1084#1072#1081
        #1080#1102#1085#1100
        #1080#1102#1083#1100)
    end
    object rItem3: TcxEditRepositoryImageComboBoxItem
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = #1103#1085#1074#1072#1088#1100
          ImageIndex = 0
          Value = 1
        end
        item
          Description = #1092#1077#1074#1088#1072#1083#1100
          Value = 2
        end
        item
          Description = #1084#1072#1088#1090
          Value = 3
        end
        item
          Description = #1072#1087#1088#1077#1083#1100
          Value = 4
        end
        item
          Description = #1084#1072#1081
          Value = 5
        end
        item
          Description = #1080#1102#1085#1100
          Value = 6
        end
        item
          Description = #1080#1102#1083#1100
          Value = 7
        end
        item
          Description = #1072#1074#1075#1091#1089#1090
          Value = 8
        end
        item
          Description = #1089#1077#1085#1090#1103#1073#1088#1100
          Value = 9
        end
        item
          Description = #1086#1082#1090#1103#1073#1088#1100
          Value = 10
        end
        item
          Description = #1085#1086#1103#1073#1088#1100
          Value = 11
        end
        item
          Description = #1076#1077#1082#1072#1073#1088#1100
          Value = 12
        end>
    end
  end
  object ds_EXPORTLOADSTATE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT EL.CODE,'
      '       EL.LOADDATE, '
      '       EL.LOADTYPE, edt.NAME EDTNAME,'
      '       EL.ERRORCOUNT, '
      '       EL.DATA, '
      '       EL.Y, '
      '       EL.M, '
      
        '       EL.PIPLE, (P.F || '#39' '#39' ||LEFT(P.I, 1) || '#39'. '#39' ||LEFT(P.O, ' +
        '1) || '#39'.'#39') FIO'
      'FROM EXPORTLOADSTATE EL'
      'left outer join EXPORTDATATYPE edt on edt.CODE = el.LOADTYPE'
      'left outer join PIPLE p on p.CODE = el.PIPLE'
      'order by EL.LOADDATE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 424
    Top = 384
  end
  object src_EXPORTLOADSTATE: TDataSource
    DataSet = ds_EXPORTLOADSTATE
    Left = 456
    Top = 384
  end
end
