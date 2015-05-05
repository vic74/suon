object KategoryRightForm: TKategoryRightForm
  Left = 0
  Top = 0
  Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080' '#1087#1088#1072#1074' '#1076#1086#1089#1090#1091#1087#1072
  ClientHeight = 578
  ClientWidth = 727
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
    Width = 727
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
    Width = 727
    Height = 554
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = LCxSkin1
    object grd1: TcxGrid
      Left = 10
      Top = 28
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_kat
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1Name: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 371
      Top = 28
      Width = 250
      Height = 200
      TabOrder = 1
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v2CellDblClick
        DataController.DataSource = src_klist
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv2NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 190
        end
        object clv2ARIGHT: TcxGridDBColumn
          Caption = '*'
          DataBinding.FieldName = 'ARIGHT'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          Width = 37
        end
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object Itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1050#1072#1090#1077#1075#1086#1088#1080#1103
      CaptionOptions.Layout = clTop
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object splt1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object Itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1056#1086#1083#1080
      CaptionOptions.Layout = clTop
      Parent = grp1
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
    Left = 688
    Top = 8
  end
  object LSkin1: TdxLayoutLookAndFeelList
    Left = 659
    Top = 8
    object LCxSkin1: TdxLayoutCxLookAndFeel
    end
  end
  object ds_kat: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE KATEGORY'
      'SET '
      '    NAME = :NAME'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    KATEGORY'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO KATEGORY('
      '    CODE,'
      '    NAME'
      ')'
      'VALUES('
      '    :CODE,'
      '    :NAME'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME'
      'FROM'
      '    KATEGORY '
      ''
      ' WHERE '
      '        KATEGORY.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME'
      'FROM'
      '    KATEGORY ')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 104
    Top = 144
  end
  object src_kat: TDataSource
    DataSet = ds_kat
    Left = 136
    Top = 144
  end
  object ds_klist: TpFIBDataSet
    SelectSQL.Strings = (
      'select iif(exists(select KATEGORY'
      '                  from KATEGORYRIGHTS'
      '                  where KATEGORY = :KATEGORY and'
      '                  AROLE = A.CODE), 1, 0) ARIGHT, NAME, CODE'
      'from ROLES A')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 392
    Top = 128
  end
  object mt_klist: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 392
    Top = 176
  end
  object src_klist: TDataSource
    DataSet = mt_klist
    Left = 424
    Top = 176
  end
end
