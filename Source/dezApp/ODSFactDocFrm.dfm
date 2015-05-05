object ODSFactDoc: TODSFactDoc
  Left = 0
  Top = 0
  Caption = #1054#1044#1057' '#1092#1072#1082#1090
  ClientHeight = 586
  ClientWidth = 719
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
    Width = 719
    Height = 586
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
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
        OnEditKeyDown = v1EditKeyDown
        DataController.DataSource = src_ODSFact
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1087#1088#1086#1074#1086#1076#1082#1080
          DataBinding.FieldName = 'DATA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Width = 112
        end
        object clv1SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1088#1086#1074#1086#1076#1082#1080
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          Width = 159
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
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 56
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 652
    Top = 56
  end
  object ds_ODSFact: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ODSFACT'
      'SET '
      '    DATA = :DATA,'
      '    SUMMA = :SUMMA'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ODSFACT'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO ODSFACT('
      '    CODE,'
      '    DATA,'
      '    SUMMA'
      ')'
      'VALUES('
      '    :CODE,'
      '    :DATA,'
      '    :SUMMA'
      ')')
    RefreshSQL.Strings = (
      'SELECT CODE, '
      '       DATA, '
      '       SUMMA'
      'FROM ODSFACT'
      ' WHERE '
      '        ODSFACT.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       DATA, '
      '       SUMMA'
      'FROM ODSFACT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 208
    Top = 272
  end
  object src_ODSFact: TDataSource
    DataSet = ds_ODSFact
    Left = 236
    Top = 272
  end
end
