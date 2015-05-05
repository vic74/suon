object OrderClosePeriodForm: TOrderClosePeriodForm
  Left = 0
  Top = 0
  Caption = #1047#1072#1082#1088#1099#1090#1080#1077' '#1087#1077#1088#1080#1086#1076#1072' '#1085#1072#1088#1103#1076#1086#1074
  ClientHeight = 508
  ClientWidth = 559
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
    Width = 559
    Height = 508
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_OrderPeriod
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          VisibleForCustomization = False
          Width = 40
        end
        object clv1ComandColumn: TcxGridDBColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              ImageIndex = 2
              Hint = #1059#1076#1072#1083#1080#1090#1100
              Kind = bkGlyph
            end>
          Properties.Images = cmDb.iml1
          Properties.ViewStyle = vsButtonsAutoWidth
          Properties.OnButtonClick = clv1ComandColumnPropertiesButtonClick
          Options.Filtering = False
          Options.ShowEditButtons = isebAlways
          Options.Moving = False
          Options.ShowCaption = False
          Width = 34
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ListColumns = <>
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
          Width = 98
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'NAME'
          Options.Editing = False
          Width = 219
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1050#1086#1085#1077#1095#1085#1072#1103' '#1076#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'dd.MMMM.YYYY'
          Properties.OnChange = clv1DATAPropertiesChange
          Options.ShowEditButtons = isebAlways
          Width = 140
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object cbb_kontr: TcxLookupComboBox
      Left = 20
      Top = 464
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_kontr
      Style.HotTrack = False
      TabOrder = 1
      Width = 145
    end
    object dt_DATA: TcxDateEdit
      Left = 283
      Top = 464
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object btn_Save: TcxButton
      Left = 410
      Top = 460
      Width = 127
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = cmDb.iml1
      TabOrder = 3
      OnClick = btn_SaveClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lItmlc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lItmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      CaptionOptions.Layout = clTop
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 257
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072
      CaptionOptions.Layout = clTop
      Parent = grplc1Group2
      Control = dt_DATA
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lItmlc1Item13: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = btn_Save
      ControlOptions.ShowBorder = False
      Index = 2
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
  object ds_OrderPeriod: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ORD.ID,'
      '    ORD.DATA,'
      '    ORD.KONTRAGENT, K.NAME'
      'FROM'
      '    ORDER$CLOSEPERIOD ORD'
      'LEFT OUTER JOIN KONTRAGENT K on K.CODE = ORD.KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 72
    Top = 112
  end
  object src_OrderPeriod: TDataSource
    DataSet = ds_OrderPeriod
    Left = 104
    Top = 112
  end
  object src_kontr: TDataSource
    Left = 224
    Top = 176
  end
end
