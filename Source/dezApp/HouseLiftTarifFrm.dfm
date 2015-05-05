object HouseLiftTarifForm: THouseLiftTarifForm
  Left = 0
  Top = 0
  Caption = #1058#1072#1088#1080#1092#1099' '#1087#1086' '#1089#1090#1072#1090#1100#1077' '#1083#1080#1092#1090
  ClientHeight = 591
  ClientWidth = 730
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
    Width = 730
    Height = 591
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        DataController.DataSource = src_HouseLiftTarif
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 89
        end
        object clv1KAB: TcxGridDBColumn
          Caption = #1059#1073#1086#1088#1082#1072' '#1082#1072#1073#1080#1085#1099
          DataBinding.FieldName = 'KAB'
          Width = 75
        end
        object clv1TEXOS: TcxGridDBColumn
          Caption = #1058#1077#1093#1086#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086#1074#1072#1085#1080#1077' '#1083#1080#1092#1090#1072
          DataBinding.FieldName = 'TEXOS'
          Width = 105
        end
        object clv1EXP: TcxGridDBColumn
          Caption = #1069#1082#1089#1087#1077#1088#1090#1080#1079#1072
          DataBinding.FieldName = 'EXP'
          Width = 74
        end
        object clv1ABS: TcxGridDBColumn
          Caption = #1040#1074#1072#1088#1080#1081#1085#1072#1103' '#1089#1083#1091#1078#1073#1072
          DataBinding.FieldName = 'ABS'
          Width = 68
        end
        object clv1LDDS: TcxGridDBColumn
          Caption = #1051#1080#1085#1080#1103' '#1076#1080#1089#1087#1077#1090#1095#1077#1088#1089#1082#1086#1081' '#1089#1074#1103#1079#1080' '#1080' '#1089#1080#1075#1085#1072#1083#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'LDDS'
          Width = 115
        end
        object clv1TO: TcxGridDBColumn
          Caption = #1058#1077#1093#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'TO'
          Width = 106
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
  object lkf1: TdxLayoutLookAndFeelList
    Left = 696
    Top = 96
    object laf1: TdxLayoutCxLookAndFeel
    end
  end
  object ds_HouseLiftTarif: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSELIFTTARIF'
      'SET '
      '    "DATE" = :"DATE",'
      '    KAB = :KAB,'
      '    TEXOS = :TEXOS,'
      '    EXP = :EXP,'
      '    ABS = :ABS,'
      '    LDDS = :LDDS,'
      '    "TO" = :"TO"'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSELIFTTARIF'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSELIFTTARIF('
      '    CODE,'
      '    "DATE",'
      '    KAB,'
      '    TEXOS,'
      '    EXP,'
      '    ABS,'
      '    LDDS,'
      '    "TO"'
      ')'
      'VALUES('
      '    :CODE,'
      '    :"DATE",'
      '    :KAB,'
      '    :TEXOS,'
      '    :EXP,'
      '    :ABS,'
      '    :LDDS,'
      '    :"TO"'
      ')')
    RefreshSQL.Strings = (
      'SELECT hl.CODE, '
      '       hl."DATE", '
      '       hl.KAB, '
      '       hl.TEXOS, '
      '       hl.EXP, '
      '       hl."ABS", '
      '       hl.LDDS, '
      '       hl."TO"'
      'FROM HOUSELIFTTARIF hl'
      ' WHERE '
      '        HL.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT hl.CODE, '
      '       hl.DATA, '
      '       hl.KAB, '
      '       hl.TEXOS, '
      '       hl.EXP, '
      '       hl."ABS", '
      '       hl.LDDS, '
      '       hl."TO"'
      'FROM HOUSELIFTTARIF hl')
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    Left = 80
    Top = 128
  end
  object src_HouseLiftTarif: TDataSource
    DataSet = ds_HouseLiftTarif
    Left = 112
    Top = 128
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 667
    Top = 96
  end
end
