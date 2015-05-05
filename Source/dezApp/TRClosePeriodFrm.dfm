object TRClosePeriodForm: TTRClosePeriodForm
  Left = 0
  Top = 0
  HelpContext = 119
  BorderStyle = bsToolWindow
  Caption = #1047#1072#1082#1088#1099#1090#1080#1077' '#1087#1077#1088#1080#1086#1076#1072
  ClientHeight = 508
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 324
    Height = 508
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object cbb_Month: TcxComboBox
      Left = 58
      Top = 28
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
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
    object ms_Y: TcxMaskEdit
      Left = 188
      Top = 28
      Properties.LookupItems.Strings = (
        '2010'
        '2011'
        '2012'
        '2013')
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 1
      Text = '2012'
      Width = 121
    end
    object btn_Close: TcxButton
      Left = 22
      Top = 55
      Width = 75
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1087#1077#1088#1080#1086#1076
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 14
      OptionsImage.Images = cmDb.iml1
      TabOrder = 2
      OnClick = btn_CloseClick
    end
    object grd1: TcxGrid
      Left = 22
      Top = 116
      Width = 250
      Height = 200
      TabOrder = 4
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_TRFACT_PERIOD
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
        OptionsView.GroupByBox = False
        object cl_DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          Visible = False
        end
        object cl_Y: TcxGridDBColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          Width = 79
        end
        object cl_M: TcxGridDBColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'M'
          Width = 137
        end
        object cl_MCOD: TcxGridDBColumn
          DataBinding.FieldName = 'MCOD'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object btn_Open: TcxButton
      Left = 175
      Top = 55
      Width = 75
      Height = 25
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1087#1077#1088#1080#1086#1076
      LookAndFeel.Kind = lfOffice11
      OptionsImage.ImageIndex = 15
      OptionsImage.Images = cmDb.iml1
      TabOrder = 3
      OnClick = btn_OpenClick
    end
    object btn_History: TcxButton
      Left = 22
      Top = 466
      Width = 75
      Height = 20
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
      OptionsImage.ImageIndex = 28
      OptionsImage.Images = cmDb.iml1
      TabOrder = 5
      OnClick = btn_HistoryClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = lcf1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp_lc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = ' '
      LayoutLookAndFeel = lcf1
      Parent = grp_lc1Group3
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 73
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object grp_lc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1089#1087#1080#1089#1086#1082' '#1079#1072#1082#1088#1099#1090#1099#1093' '#1087#1077#1088#1080#1086#1076#1086#1074
      LayoutLookAndFeel = lcf1
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object grp_lc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_lc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      LayoutLookAndFeel = lcf1
      Parent = grp_lc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 137
      Control = cbb_Month
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1075#1086#1076
      LayoutLookAndFeel = lcf1
      Parent = grp_lc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 126
      Control = ms_Y
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grp_lc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_lc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_lc1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 127
      Control = btn_Close
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_lc1Item13: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = lcf1
      Parent = grp_lc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_lc1Item14: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = lcf1
      Parent = grp_lc1Group5
      SizeOptions.Width = 127
      Control = btn_Open
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grp_lc1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_lc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LItemlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group2
      Control = btn_History
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 208
    Top = 280
    object lcf1: TdxLayoutCxLookAndFeel
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 240
    Top = 280
  end
  object ds_TRFACT_PERIOD: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select DATA , EXTRACT (YEAR FROM DATA) Y,EXTRACT (MONTH FROM DAT' +
        'A) MCOD,'
      '       case'
      '         when  EXTRACT (MONTH FROM DATA) =1 then '#39#1103#1085#1074#1072#1088#1100#39
      '         when  EXTRACT (MONTH FROM DATA) =2 then '#39#1092#1077#1074#1088#1072#1083#1100#39
      '         when  EXTRACT (MONTH FROM DATA) =3 then '#39#1084#1072#1088#1090#39
      '         when  EXTRACT (MONTH FROM DATA) =4 then '#39#1072#1087#1088#1077#1083#1100#39
      '         when  EXTRACT (MONTH FROM DATA) =5 then '#39#1084#1072#1081#39
      '         when  EXTRACT (MONTH FROM DATA) =6 then '#39#1080#1102#1085#1100#39
      '         when  EXTRACT (MONTH FROM DATA) =7 then '#39#1080#1102#1083#1100#39
      '         when  EXTRACT (MONTH FROM DATA) =8 then '#39#1072#1074#1075#1091#1089#1090#39
      '         when  EXTRACT (MONTH FROM DATA) =9 then '#39#1089#1077#1085#1090#1103#1073#1088#1100#39
      '         when  EXTRACT (MONTH FROM DATA) =10 then '#39#1086#1082#1090#1103#1073#1088#1100#39
      '         when  EXTRACT (MONTH FROM DATA) =11 then '#39#1085#1086#1103#1073#1088#1100#39
      '         when  EXTRACT (MONTH FROM DATA) =12 then '#39#1076#1077#1082#1072#1073#1088#1100#39
      '       end M'
      'from TRFACT_PERIOD'
      'order by DATA')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 104
    Top = 208
  end
  object src_TRFACT_PERIOD: TDataSource
    DataSet = ds_TRFACT_PERIOD
    Left = 136
    Top = 208
  end
end
