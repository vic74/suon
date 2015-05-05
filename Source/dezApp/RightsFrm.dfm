object RightsForm: TRightsForm
  Left = 0
  Top = 0
  HelpContext = 5
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1088#1072#1074' '#1076#1086#1089#1090#1091#1087#1072
  ClientHeight = 570
  ClientWidth = 714
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
    Width = 714
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 24
    Width = 714
    Height = 546
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = LCxSkin1
    object grd1: TcxGrid
      Left = 10
      Top = 28
      Width = 250
      Height = 200
      Align = alClient
      TabOrder = 0
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_roles
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Appending = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1Kontragent: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'Kontragent'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
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
          Properties.ListSource = src_kontr
          Width = 110
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 214
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 366
      Top = 28
      Width = 250
      Height = 200
      Align = alClient
      TabOrder = 1
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v2CellDblClick
        OnEditKeyUp = v2EditKeyUp
        DataController.DataSource = src_pr
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
          Width = 47
        end
        object clv2AROLE: TcxGridDBColumn
          Caption = #1054#1073#1098#1077#1082#1090
          DataBinding.FieldName = 'NAME'
          Width = 216
        end
        object clv2ch: TcxGridDBColumn
          Caption = '*'
          DataBinding.FieldName = 'ch'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          Width = 32
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object Itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1056#1086#1083#1080
      CaptionOptions.Layout = clTop
      Parent = dxLayoutControl1Group_Root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object splt1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = dxLayoutControl1Group_Root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object Itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1055#1088#1072#1074#1072
      CaptionOptions.Layout = clTop
      Parent = dxLayoutControl1Group_Root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = Itm_grd1
        Properties.Strings = (
          'SizeOptions.Width')
      end
      item
        Component = Itm_grd2
        Properties.Strings = (
          'SizeOptions.Width')
      end
      item
        Component = v1
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.Footer'
          'OptionsView.GroupByBox')
      end
      item
        Component = v2
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.Footer'
          'OptionsView.GroupByBox')
      end>
    StorageName = 'prop1'
    Left = 672
    Top = 32
  end
  object LSkin1: TdxLayoutLookAndFeelList
    Left = 672
    Top = 64
    object LCxSkin1: TdxLayoutCxLookAndFeel
    end
  end
  object ds_roles: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ROLES'
      'SET '
      '    NAME = :NAME,'
      '    KONTRAGENT = :KONTRAGENT'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ROLES'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO ROLES('
      '    CODE,'
      '    NAME,'
      '    KONTRAGENT'
      ')'
      'VALUES('
      '    :CODE,'
      '    :NAME,'
      '    :KONTRAGENT'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME,'
      '    KONTRAGENT'
      'FROM'
      '    ROLES '
      ''
      ' WHERE '
      '        ROLES.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME,'
      '    KONTRAGENT'
      'FROM'
      '    ROLES ')
    BeforePost = ds_rolesBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 24
    Top = 88
  end
  object src_roles: TDataSource
    DataSet = ds_roles
    Left = 56
    Top = 88
  end
  object ds_rights: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE RIGHTS'
      'SET '
      '    ARIGHT = :ARIGHT,'
      '    AROLE = :AROLE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    RIGHTS'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO RIGHTS('
      '    CODE,'
      '    ARIGHT,'
      '    AROLE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :ARIGHT,'
      '    :AROLE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    ARIGHT,'
      '    AROLE'
      'FROM'
      '    RIGHTS '
      ''
      ' WHERE '
      '        RIGHTS.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    ARIGHT,'
      '    AROLE'
      'FROM'
      '    RIGHTS ')
    Transaction = cmDb.trn1
    Database = cmDb.db1
    UpdateTransaction = cmDb.WT
    Left = 408
    Top = 104
  end
  object src_rights: TDataSource
    DataSet = ds_rights
    Left = 440
    Top = 104
  end
  object ds_pr: TpFIBDataSet
    SelectSQL.Strings = (
      'select GR.CODE, GR.NAME,iif(r.aright is null,0,1) ch'
      'from GETRIGHTLIST GR'
      'left join rights r on r.aright=gr.code and r.arole=:arole')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 408
    Top = 192
  end
  object src_pr: TDataSource
    DataSet = mt_d
    Left = 437
    Top = 192
  end
  object mt_d: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 408
    Top = 240
  end
  object ds_kontr: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME,'
      '    FULLNAME'
      'FROM'
      '    KONTRAGENT ')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 40
    Top = 176
  end
  object src_kontr: TDataSource
    DataSet = ds_kontr
    Left = 72
    Top = 176
  end
end
