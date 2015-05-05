object MailTaskForm: TMailTaskForm
  Left = 0
  Top = 0
  Caption = #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077' '#1087#1086#1076#1087#1080#1089#1086#1082' '#1085#1072' '#1089#1086#1073#1099#1090#1080#1103
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
    Top = 29
    Width = 858
    Height = 559
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    ExplicitTop = 26
    ExplicitHeight = 562
    object grd1: TcxGrid
      Left = 22
      Top = 47
      Width = 810
      Height = 486
      Images = cmDb.iml1
      TabOrder = 0
      LockedStateImageOptions.Effect = lsieDark
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_Task
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CopyRecordsToClipboard = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        object clv1GROOP: TcxGridDBColumn
          DataBinding.FieldName = 'GROOP'
          Visible = False
        end
        object clv1GROUPNAME: TcxGridDBColumn
          Caption = #1043#1088#1091#1087#1087#1072
          DataBinding.FieldName = 'GROUPNAME'
          Visible = False
          GroupIndex = 0
          Width = 140
        end
        object clv1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1086#1076#1087#1080#1089#1082#1080
          DataBinding.FieldName = 'NAME'
          Options.Editing = False
          Width = 305
        end
        object clv1DESCRIPTIONS: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
          DataBinding.FieldName = 'DESCRIPTIONS'
          Options.Editing = False
          Width = 278
        end
        object clv1ISSUB: TcxGridDBColumn
          Caption = #1055#1086#1076#1087#1080#1089#1072#1085#1099
          DataBinding.FieldName = 'ISSUB'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = #1076#1072
              ImageIndex = 0
              Value = 1
            end
            item
              Description = #1085#1077#1090
              Value = 0
            end>
          Options.Editing = False
          Styles.OnGetContentStyle = clv1ISSUBStylesGetContentStyle
          Width = 67
        end
        object clv1Sub: TcxGridDBColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              ImageIndex = 31
              Hint = #1080#1079#1084#1077#1085#1080#1090#1100' '#1089#1086#1089#1090#1086#1103#1085#1080#1077' '#1087#1086#1076#1087#1080#1089#1082#1080
              Kind = bkGlyph
            end>
          Properties.Images = cmDb.iml1
          Properties.ViewStyle = vsButtonsAutoWidth
          Properties.OnButtonClick = clv1SubPropertiesButtonClick
          Options.ShowEditButtons = isebAlways
          Width = 51
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object mmo1: TcxMemo
      Left = 10000
      Top = 10000
      TabStop = False
      Lines.Strings = (
        '    '
        '    '
        '    '
        '      '#1042' '#1042#1072#1096#1077#1084' '#1087#1088#1086#1092#1080#1083#1077' '#1085#1077' '#1091#1082#1072#1079#1072#1085' '#1101#1083#1077#1082#1090#1088#1086#1085#1085#1099#1081' '#1072#1076#1088#1077#1089' (email).'
        '      '#1044#1083#1103' '#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1080' '#1087#1086#1076#1087#1080#1089#1099#1074#1072#1090#1100#1089#1103' '#1085#1072' '#1089#1086#1073#1099#1090#1080#1103' '#1042#1072#1084' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '
        
          '      '#1091#1082#1072#1079#1072#1090#1100' '#1089#1074#1086#1081' '#1101#1083#1077#1082#1090#1088#1086#1085#1085#1099#1081' '#1072#1076#1088#1077#1089' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1077' "'#1060#1080#1079#1080#1095#1077#1089#1082#1080#1077' '#1083 +
          #1080#1094#1072'".'
        '    '
        '      '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080' ->'
        '             '#1057#1080#1089#1090#1077#1084#1085#1099#1077' ->'
        '                  '#1060#1080#1079#1080#1095#1077#1089#1082#1080#1077' '#1083#1080#1094#1072'.')
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = True
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      TabOrder = 1
      Visible = False
      Height = 368
      Width = 790
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
      Parent = grplc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object lItmlc1Item11: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxMemo1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = mmo1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 776
    Top = 208
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 744
    Top = 200
  end
  object ds_Task: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    GROOP,'
      '    GROUPNAME,'
      '    ID,'
      '    NAME,'
      '    DESCRIPTIONS,'
      '    ISSUB'
      'FROM'
      '    GET_TASKS(:WORKER)'
      'ORDER BY GROUPNAME, ID')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 280
    Top = 176
  end
  object src_Task: TDataSource
    DataSet = ds_Task
    Left = 312
    Top = 176
  end
  object brm1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = cmDb.iml1
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 688
    Top = 208
    DockControlHeights = (
      0
      0
      29
      0)
    object bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 892
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Refresh'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_Refresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = btn_RefreshClick
    end
  end
end
