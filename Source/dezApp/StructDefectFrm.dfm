object StructDefectForm: TStructDefectForm
  Left = 0
  Top = 0
  Caption = #1042#1080#1076#1099' '#1076#1077#1092#1077#1082#1090#1086#1074' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081
  ClientHeight = 599
  ClientWidth = 734
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
    Width = 734
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
    Width = 734
    Height = 575
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = LCxSkin1
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_defect
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SHOWSTRUCT: TcxGridDBColumn
          Caption = #1050#1086#1085#1089#1090#1088#1091#1082#1094#1080#1103', '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'SHOWSTRUCT'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = #1050#1086#1076
              Width = 40
              FieldName = 'CODE'
            end
            item
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 90
              FieldName = 'NAME'
            end
            item
              Caption = #1058#1080#1087
              Width = 70
              FieldName = 'STYPE'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListSource = src_constr
          Width = 200
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1077#1092#1077#1082#1090#1072
          DataBinding.FieldName = 'NAME'
          Width = 286
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object Itm1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object LSkin1: TdxLayoutLookAndFeelList
    Left = 704
    object LCxSkin1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = clv1SHOWSTRUCT
        Properties.Strings = (
          'Properties.DropDownWidth')
      end
      item
        Component = v1
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.Footer'
          'OptionsView.GroupByBox')
      end>
    StorageName = 'prop1'
    Left = 672
  end
  object ds_defect: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE STRUCTDEFECT'
      'SET '
      '    SHOWSTRUCT = :SHOWSTRUCT,'
      '    NAME = :NAME'
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
      '    NAME'
      ')'
      'VALUES('
      '    :CODE,'
      '    :SHOWSTRUCT,'
      '    :NAME'
      ')')
    RefreshSQL.Strings = (
      'select CODE, SHOWSTRUCT, NAME'
      'from STRUCTDEFECT'
      ' WHERE '
      '        STRUCTDEFECT.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'select CODE, SHOWSTRUCT, NAME'
      'from STRUCTDEFECT')
    BeforePost = ds_defectBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 56
    Top = 160
  end
  object src_defect: TDataSource
    DataSet = ds_defect
    Left = 88
    Top = 160
  end
  object ds_constr: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME,'
      ' iif(STYPE=0,'#39#1089#1090#1088#1086#1077#1085#1080#1103#39','#39#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1090#1074#1086#39') Stype'
      'from SHOWSTRUCT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 56
    Top = 216
  end
  object src_constr: TDataSource
    DataSet = ds_constr
    Left = 88
    Top = 216
  end
end
