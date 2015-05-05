object OtherFactForm: TOtherFactForm
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1095#1080#1077' '#1088#1072#1089#1093#1086#1076#1099' '#1092#1072#1082#1090
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
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        OnEditKeyDown = v1EditKeyDown
        DataController.DataSource = src_COMMFACT
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1087#1088#1086#1074#1086#1076#1082#1080
          DataBinding.FieldName = 'DATA'
          Width = 99
        end
        object clv1HOUSESRV: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1091#1089#1083#1091#1075#1080
          DataBinding.FieldName = 'HOUSESRV'
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
          Properties.ListSource = src_HOUSESRV
          Width = 215
        end
        object clv1HSNAME: TcxGridDBColumn
          DataBinding.FieldName = 'HSNAME'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1091#1089#1083#1091#1075#1077
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          Width = 116
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
  object ds_COMMFACT: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE COMMFACT'
      'SET '
      '    DATA = :DATA,'
      '    HOUSESRV = :HOUSESRV,'
      '    SUMMA = :SUMMA'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    COMMFACT'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO COMMFACT('
      '    CODE,'
      '    DATA,'
      '    HOUSESRV,'
      '    SUMMA'
      ')'
      'VALUES('
      '    :CODE,'
      '    :DATA,'
      '    :HOUSESRV,'
      '    :SUMMA'
      ')')
    RefreshSQL.Strings = (
      'SELECT cf.CODE, '
      '       cf.DATA, '
      '       cf.HOUSESRV,'
      '       cf.SUMMA'
      'FROM COMMFACT cf'
      ''
      ' WHERE '
      '        CF.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT cf.CODE,'
      '       cf.DATA, '
      '       cf.HOUSESRV,'
      '       cf.SUMMA'
      'FROM OTHERFACT cf')
    BeforePost = ds_COMMFACTBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 120
    Top = 144
  end
  object src_COMMFACT: TDataSource
    DataSet = ds_COMMFACT
    Left = 149
    Top = 144
  end
  object ds_HOUSESRV: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT hs.CODE, '
      '       hs.NAME'
      'FROM HOUSESRV hs'
      'order by hs.NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 112
    Top = 232
  end
  object src_HOUSESRV: TDataSource
    DataSet = ds_HOUSESRV
    Left = 140
    Top = 232
  end
end
