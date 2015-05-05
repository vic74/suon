object PeriodTrfactHistoryForm: TPeriodTrfactHistoryForm
  Left = 0
  Top = 0
  Caption = #1048#1089#1090#1086#1088#1080#1103' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1079#1072#1082#1088#1099#1090#1086#1075#1086' '#1087#1077#1088#1080#1086#1076#1072
  ClientHeight = 445
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grd1: TcxGrid
    Left = 0
    Top = 26
    Width = 605
    Height = 419
    Align = alClient
    TabOrder = 4
    LookAndFeel.NativeStyle = False
    ExplicitLeft = 128
    ExplicitTop = 128
    ExplicitWidth = 250
    ExplicitHeight = 200
    object v1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = src_ds
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object clv1CODE: TcxGridDBColumn
        DataBinding.FieldName = 'CODE'
        Visible = False
      end
      object clv1DATA: TcxGridDBColumn
        DataBinding.FieldName = 'DATA'
        Visible = False
        Width = 70
      end
      object clv1Y: TcxGridDBColumn
        Caption = #1043#1086#1076
        DataBinding.FieldName = 'Y'
        Width = 70
      end
      object clv1MONTHNAME: TcxGridDBColumn
        Caption = #1052#1077#1089#1103#1094
        DataBinding.FieldName = 'MONTHNAME'
        Width = 79
      end
      object clv1SUMMA: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072' '#1079#1072#1082#1088#1099#1090#1099#1093' '#1088#1072#1073#1086#1090
        DataBinding.FieldName = 'SUMMA'
        Width = 126
      end
      object clv1OPER: TcxGridDBColumn
        DataBinding.FieldName = 'OPER'
        Visible = False
        Width = 85
      end
      object clv1OPERNAME: TcxGridDBColumn
        Caption = #1044#1077#1081#1089#1090#1074#1080#1077
        DataBinding.FieldName = 'OPERNAME'
        Width = 94
      end
      object clv1USERNAME: TcxGridDBColumn
        DataBinding.FieldName = 'USERNAME'
        Visible = False
      end
      object clv1FIO: TcxGridDBColumn
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        DataBinding.FieldName = 'FIO'
        Width = 122
      end
      object clv1LASTTIME: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
        DataBinding.FieldName = 'LASTTIME'
        Width = 96
      end
    end
    object l1: TcxGridLevel
      GridView = v1
    end
  end
  object BarManager1: TdxBarManager
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = cmDb.iml1
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 328
    Top = 208
    DockControlHeights = (
      0
      0
      26
      0)
    object br1: TdxBar
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
      FloatLeft = 780
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bItm_dt1'
        end
        item
          Visible = True
          ItemName = 'bItm_dt2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Open'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btn_Open: TdxBarButton
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 26
      PaintStyle = psCaptionGlyph
      OnClick = btn_OpenClick
    end
    object bItm_dt1: TcxBarEditItem
      Caption = #1055#1077#1088#1080#1086#1076' '#1089
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076' '#1089
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object bItm_dt2: TcxBarEditItem
      Caption = #1087#1086' '
      Category = 0
      Hint = #1087#1086' '
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
  end
  object ds: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT FH.CODE,'
      '       FH.DATA, '
      '       FH.SUMMA,'
      '       CASE EXTRACT(MONTH FROM DATA)'
      '         WHEN 1 THEN '#39#1071#1053#1042#1040#1056#1068#39
      '         WHEN 2 THEN '#39#1060#1045#1042#1056#1040#1051#1068#39
      '         WHEN 3 THEN '#39#1052#1040#1056#1058#39
      '         WHEN 4 THEN '#39#1040#1055#1056#1045#1051#1068#39
      '         WHEN 5 THEN '#39#1052#1040#1049#39
      '         WHEN 6 THEN '#39#1048#1070#1053#1068#39
      '         WHEN 7 THEN '#39#1048#1070#1051#1068#39
      '         WHEN 8 THEN '#39#1040#1042#1043#1059#1057#1058#39
      '         WHEN 9 THEN '#39#1057#1045#1053#1058#1071#1041#1056#1068#39
      '         WHEN 10 THEN '#39#1054#1050#1058#1071#1041#1056#1068#39
      '         WHEN 11 THEN '#39#1053#1054#1071#1041#1056#1068#39
      '         WHEN 12 THEN '#39#1044#1045#1050#1040#1041#1056#1068#39
      '       END MONTHNAME,'
      '       EXTRACT(YEAR FROM DATA) Y,'
      '       FH.OPER,'
      '       CASE'
      '         WHEN FH.OPER = 0 THEN '#39#1055#1077#1088#1080#1086#1076' '#1079#1072#1082#1088#1099#1090#39
      '         WHEN FH.OPER = 1 THEN '#39#1055#1077#1088#1080#1086#1076' '#1086#1090#1082#1088#1099#1090#39
      '       END OPERNAME,'
      '       FH.USERNAME,'
      
        '       IIF(FH.USERNAME = '#39'SYSDBA'#39', '#39#1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#39',(P.F || '#39' '#39' |' +
        '|LEFT(P.I, 1) || '#39'. '#39' ||LEFT(P.O, 1) || '#39'.'#39')) FIO,'
      '       FH.LASTTIME'
      'FROM TRFACT_PERIOD$HISTORY FH'
      'LEFT OUTER JOIN WORKER W ON W.USERNAME = FH.USERNAME'
      'LEFT OUTER JOIN PIPLE P ON P.CODE = W.PIPLE'
      'WHERE FH.DATA BETWEEN :D1 AND :D2')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 392
    Top = 208
  end
  object src_ds: TDataSource
    DataSet = ds
    Left = 420
    Top = 208
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = bItm_dt1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = bItm_dt2
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 344
    Top = 104
  end
end
