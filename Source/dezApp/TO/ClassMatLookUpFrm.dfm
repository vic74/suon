object ClassMatLookUpForm: TClassMatLookUpForm
  Left = 0
  Top = 0
  Caption = 'ClassMatLookUpForm'
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
    object lst_1: TcxDBTreeList
      Left = 20
      Top = 112
      Width = 225
      Height = 532
      Align = alCustom
      Bands = <
        item
        end>
      DataController.DataSource = src_CLASSMAT
      DataController.ParentField = 'OWN'
      DataController.KeyField = 'CODE'
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.IncSearchItem = cl_FULLNAME
      OptionsData.Editing = False
      OptionsData.Deleting = False
      OptionsSelection.InvertSelect = False
      OptionsView.Bands = True
      OptionsView.CategorizedColumn = cl_GROOP
      OptionsView.ColumnAutoWidth = True
      OptionsView.DropNodeIndicator = True
      OptionsView.DynamicFocusedStateImages = True
      OptionsView.Indicator = True
      RootValue = -1
      TabOrder = 1
      object cl_CODE: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'CODE'
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cl_FULLNAME: TcxDBTreeListColumn
        Caption.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'FULLNAME'
        Options.Customizing = False
        Width = 158
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cl_1ED: TcxDBTreeListColumn
        Caption.Text = #1045#1076'. '#1080#1079#1084'.'
        DataBinding.FieldName = 'ED'
        Width = 53
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cl_GROOP: TcxDBTreeListColumn
        Caption.Text = #1050#1072#1090#1077#1075#1086#1088#1080#1103
        DataBinding.FieldName = 'GROOP'
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cl_NAME: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'NAME'
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object bnt_Search: TcxButtonEdit
      Left = 20
      Top = 41
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 35
          Kind = bkGlyph
          Width = 70
        end
        item
          ImageIndex = 23
          Kind = bkGlyph
          Width = 70
        end>
      Properties.Images = cmDb.iml1
      Properties.OnButtonClick = bnt_SearchPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 0
      Width = 700
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
      Index = 1
    end
    object lGrplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object lGrplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object litm_lc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBTreeList1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group1
      Control = lst_1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item2: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group3
      Control = bnt_Search
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
  object ds_CLASSMAT: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT cm.CODE,'
      '       cm.OWN,'
      '       iif(cm.isgroup = 1, cm.name,null) groop,'
      '       cm1.NAME,'
      '       cm1.FULLNAME,'
      '       cm.ISGROUP,'
      '       cm.ISNAME,'
      '       cm.ED'
      'FROM CLASSMAT cm'
      
        'left outer join classmat cm1 on cm1.code = cm.code and cm1.isgro' +
        'up = 0')
    Filter = 'FULLNAME like '#39#1073#1086#1095#1077#1085'*'#39
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    OnFilterRecord = ds_CLASSMATFilterRecord
    Left = 192
    Top = 152
    object fld_CLASSMATCODE: TFIBIntegerField
      FieldName = 'CODE'
    end
    object ds_CLASSMATOWN: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'OWN'
    end
    object ds_CLASSMATGROOP: TFIBStringField
      FieldName = 'GROOP'
      Size = 128
      EmptyStrToNull = True
    end
    object ds_CLASSMATNAME: TFIBStringField
      FieldName = 'NAME'
      Size = 128
      EmptyStrToNull = True
    end
    object ds_CLASSMATFULLNAME: TFIBStringField
      FieldName = 'FULLNAME'
      Size = 256
      EmptyStrToNull = True
    end
    object ds_CLASSMATISGROUP: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'ISGROUP'
    end
    object ds_CLASSMATISNAME: TFIBSmallIntField
      DefaultExpression = '1'
      FieldName = 'ISNAME'
    end
    object ds_CLASSMATED: TFIBStringField
      FieldName = 'ED'
      Size = 12
      EmptyStrToNull = True
    end
  end
  object src_CLASSMAT: TDataSource
    DataSet = ds_CLASSMAT
    Left = 221
    Top = 152
  end
end
