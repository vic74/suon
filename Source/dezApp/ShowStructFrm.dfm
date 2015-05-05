object ShowStructForm: TShowStructForm
  Left = 0
  Top = 0
  HelpContext = 12
  Caption = #1064#1072#1073#1083#1086#1085' '#1072#1082#1090#1072' '#1086#1089#1084#1086#1090#1088#1072
  ClientHeight = 473
  ClientWidth = 733
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
  object Ribbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 733
    Height = 24
    BarManager = MainForm.bm1
    ColorSchemeName = 'Blue'
    ShowTabGroups = False
    ShowTabHeaders = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object Ribbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Ribbon1Tab1'
      Groups = <>
      Index = 0
    end
  end
  object lcntr1: TdxLayoutControl
    Left = 0
    Top = 24
    Width = 733
    Height = 449
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = LCxSkin1
    object grd1: TcxGrid
      Left = 10
      Top = 73
      Width = 250
      Height = 200
      TabOrder = 1
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataModeController.GridMode = True
        DataController.DataSource = src_struct
        DataController.KeyFieldNames = 'Code'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnDetailExpanded = v1DataControllerDetailExpanded
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clvStructNum: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'Num'
          Width = 20
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 230
        end
        object clv1STYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080
          DataBinding.FieldName = 'STYPE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
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
          Properties.ListSource = src_mttype
          Visible = False
          VisibleForCustomization = False
          Width = 132
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 320
      Top = 28
      Width = 250
      Height = 200
      TabOrder = 2
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = src_defect
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2SHOWSTRUCT: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWSTRUCT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2NUM: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'NUM'
          Width = 30
        end
        object clv2NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 195
        end
        object clv2ED: TcxGridDBColumn
          Caption = #1045#1076'. '#1080#1079#1084'.'
          DataBinding.FieldName = 'ED'
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object cbb_mtype: TcxLookupComboBox
      Left = 10
      Top = 28
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
      Properties.ListSource = src_mttype
      Properties.OnChange = cbb_mtypePropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp2: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grp_mtype: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 292
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object itm_mtype: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = #1058#1080#1087' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080
      CaptionOptions.Layout = clTop
      Parent = grp_mtype
      Control = cbb_mtype
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object Itm1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1050#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080
      CaptionOptions.Layout = clTop
      Parent = grp_mtype
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 233
      SizeOptions.Width = 265
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1042#1080#1076#1099' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080
      CaptionOptions.Layout = clTop
      Parent = grp2
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object LSkin1: TdxLayoutLookAndFeelList
    Left = 520
    Top = 40
    object LCxSkin1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
  object ds_struct: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SHOWSTRUCT'
      'SET '
      '    NAME = :NAME,'
      '    STYPE = :STYPE,'
      '    NUM = :NUM'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SHOWSTRUCT'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SHOWSTRUCT('
      '    CODE,'
      '    NAME,'
      '    STYPE,'
      '    NUM'
      ')'
      'VALUES('
      '    :CODE,'
      '    :NAME,'
      '    :STYPE,'
      '    :NUM'
      ')')
    RefreshSQL.Strings = (
      'select * from SHOWSTRUCT '
      ''
      ' WHERE '
      '        SHOWSTRUCT.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'select * from SHOWSTRUCT '
      'order by SType, Num')
    AutoUpdateOptions.UpdateTableName = 'SHOWSTRUCT'
    AutoUpdateOptions.KeyFields = 'Code'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'SHOWSTRUCT_GEN'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    BeforePost = ds_structBeforePost
    OnNewRecord = ds_structNewRecord
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    Left = 120
    Top = 136
  end
  object src_struct: TDataSource
    DataSet = ds_struct
    Left = 148
    Top = 136
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_mtype
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = v1
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.Footer'
          'OptionsView.GroupByBox')
      end>
    StorageName = 'prop1'
    Left = 560
    Top = 40
  end
  object mt_type: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 40
    Top = 136
  end
  object src_mttype: TDataSource
    DataSet = mt_type
    Left = 68
    Top = 136
  end
  object ds_defect: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE STRUCTDEFECT'
      'SET '
      '    SHOWSTRUCT = :SHOWSTRUCT,'
      '    NAME = :NAME,'
      '    NUM = :NUM,'
      '    ED = :ED'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    STRUCTDEFECT'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO STRUCTDEFECT('
      '    CODE,'
      '    SHOWSTRUCT,'
      '    NAME,'
      '    NUM,'
      '    ED'
      ')'
      'VALUES('
      '    :CODE,'
      '    :SHOWSTRUCT,'
      '    :NAME,'
      '    :NUM,'
      '    :ED'
      ')')
    RefreshSQL.Strings = (
      'select * from STRUCTDEFECT'
      'where(  ShowStruct=:mas_Code'
      '     ) and (     STRUCTDEFECT.CODE = :OLD_CODE'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'select * from STRUCTDEFECT'
      'where ShowStruct=:mas_Code'
      'order by Num')
    AutoUpdateOptions.UpdateTableName = 'STRUCTDEFECT'
    AutoUpdateOptions.KeyFields = 'CODE'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'STRUCTDEFECT_GEN'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AfterPost = ds_defectAfterPost
    BeforePost = ds_defectBeforePost
    OnNewRecord = ds_defectNewRecord
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    DataSource = src_struct
    Left = 552
    Top = 376
  end
  object src_defect: TDataSource
    DataSet = ds_defect
    Left = 584
    Top = 376
  end
end
