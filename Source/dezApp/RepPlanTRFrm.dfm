object RepPlanTRForm: TRepPlanTRForm
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1058#1056
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
    object cbb_Y: TcxComboBox
      Left = 34
      Top = 10
      Properties.DropDownListStyle = lsEditFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
      Style.HotTrack = False
      TabOrder = 0
      Width = 93
    end
    object cbb_M: TcxComboBox
      Left = 169
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
      Width = 121
    end
    object btnLoad: TcxButton
      Left = 296
      Top = 10
      Width = 115
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 2
      OnClick = btnLoadClick
    end
    object grd1: TcxGrid
      Left = 10
      Top = 41
      Width = 250
      Height = 200
      TabOrder = 4
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_Rep
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        object clv1Y: TcxGridDBColumn
          DataBinding.FieldName = 'Y'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 233
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 46
        end
        object clv1ALLSUM: TcxGridDBColumn
          Caption = #1055#1083#1072#1085' ('#1075#1086#1076')'#13#10#13#10'1'
          DataBinding.FieldName = 'ALLSUM'
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object clv1SUMBYMONTH: TcxGridDBColumn
          Caption = #1055#1083#1072#1085' ('#1087#1077#1088#1080#1086#1076')'#13#10#13#10'2'
          DataBinding.FieldName = 'SUMBYMONTH'
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object clv1FACTSUM: TcxGridDBColumn
          Caption = #1060#1072#1082#1090' ('#1087#1077#1088#1080#1086#1076')'#13#10'3'
          DataBinding.FieldName = 'FACTSUM'
          HeaderAlignmentHorz = taCenter
          Width = 69
        end
        object clv1YPROC: TcxGridDBColumn
          Caption = '% '#1086#1089#1074#1086#1077#1085#1080#1103' '#1087#1083#1072#1085#1072' '#1075#1086#1076#1086#1074#1086#1075#1086#13#10'4 = 3/1'
          DataBinding.FieldName = 'YPROC'
          HeaderAlignmentHorz = taCenter
          Width = 89
        end
        object clv1MPROC: TcxGridDBColumn
          Caption = '% '#1086#1089#1074#1086#1077#1085#1080#1103' '#1087#1083#1072#1085#1072' '#1079#1072' '#1087#1077#1088#1080#1086#1076' '#13#10'5 = 3/2'
          DataBinding.FieldName = 'MPROC'
          HeaderAlignmentHorz = taCenter
          Width = 105
        end
        object clv1OSTPLAN: TcxGridDBColumn
          Caption = #1086#1089#1090#1072#1090#1086#1082' '#1075#1086#1076#1086#1074#1086#1075#1086' '#1087#1083#1072#1085#1072' '#13#10'6'
          DataBinding.FieldName = 'OSTPLAN'
          HeaderAlignmentHorz = taCenter
          Width = 105
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object btn_Excel: TcxButton
      Left = 417
      Top = 10
      Width = 40
      Height = 25
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      TabOrder = 3
      OnClick = btn_ExcelClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lGrplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object lGrplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object litm_lc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = lGrplc1Group2
      Control = cbb_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = lGrplc1Group2
      Control = cbb_M
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item12: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = btnLoad
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litm_lc1Item13: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item14: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = btn_Excel
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_M
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_Y
        Properties.Strings = (
          'ItemIndex')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object ds_Rep: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from get_plantr(:Y,:M)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 392
    Top = 216
  end
  object src_Rep: TDataSource
    DataSet = ds_Rep
    Left = 421
    Top = 216
  end
end
