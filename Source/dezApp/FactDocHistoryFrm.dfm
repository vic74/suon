object FactDocHistoryForm: TFactDocHistoryForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1048#1089#1090#1086#1088#1080#1103' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  ClientHeight = 261
  ClientWidth = 837
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grd1: TcxGrid
    Left = 0
    Top = 26
    Width = 837
    Height = 235
    Align = alClient
    TabOrder = 4
    object v1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = src_FACTDOCHISTORY
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Images = cmDb.iml1
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.Indicator = True
      object clv1CODE: TcxGridDBColumn
        DataBinding.FieldName = 'CODE'
        Visible = False
      end
      object clv1FACTDOCCODE: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'FACTDOCCODE'
        Width = 40
      end
      object clv1M: TcxGridDBColumn
        DataBinding.FieldName = 'M'
        Visible = False
        VisibleForCustomization = False
        Width = 36
      end
      object clv1MONTHNAME: TcxGridDBColumn
        Caption = #1052#1077#1089#1103#1094
        DataBinding.FieldName = 'MONTHNAME'
        Width = 69
      end
      object clv1Y: TcxGridDBColumn
        Caption = #1043#1086#1076
        DataBinding.FieldName = 'Y'
        Width = 60
      end
      object clv1DOCTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'DOCTYPE'
        Visible = False
      end
      object clv1HOUSESRV: TcxGridDBColumn
        DataBinding.FieldName = 'HOUSESRV'
        Visible = False
      end
      object clv1SRVNAME: TcxGridDBColumn
        Caption = #1059#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'SRVNAME'
        Width = 105
      end
      object clv1OPERTYPE: TcxGridDBColumn
        Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1082#1072
        DataBinding.FieldName = 'OPERTYPE'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderImageIndex = 14
        Options.ShowCaption = False
        Width = 23
      end
      object clv1PLANSUM: TcxGridDBColumn
        Caption = #1055#1083#1072#1085
        DataBinding.FieldName = 'PLANSUM'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.UseThousandSeparator = True
        Width = 78
      end
      object clv1FACTSUM: TcxGridDBColumn
        Caption = #1060#1072#1082#1090
        DataBinding.FieldName = 'FACTSUM'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.UseThousandSeparator = True
        Width = 90
      end
      object clv1CORRECT: TcxGridDBColumn
        Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080
        DataBinding.FieldName = 'CORRECT'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.UseThousandSeparator = True
        Width = 89
      end
      object clv1LASTTIME: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
        DataBinding.FieldName = 'LASTTIME'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 119
      end
      object clv1USERNAME: TcxGridDBColumn
        DataBinding.FieldName = 'USERNAME'
        Visible = False
      end
      object clv1FIO: TcxGridDBColumn
        Caption = #1048#1079#1084#1077#1085#1080#1083
        DataBinding.FieldName = 'FIO'
        Width = 143
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
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 368
    Top = 120
    DockControlHeights = (
      0
      0
      26
      0)
    object br1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 665
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Excel'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btn_Exit: TdxBarButton
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivNever
    end
    object btn_Excel: TdxBarButton
      Caption = #1045#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Category = 0
      Hint = #1045#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = btn_ExcelClick
    end
  end
  object ds_FACTDOCHISTORY: TpFIBDataSet
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSet_ID = 28
    Left = 248
    Top = 168
    poApplyRepositary = True
  end
  object src_FACTDOCHISTORY: TDataSource
    DataSet = ds_FACTDOCHISTORY
    Left = 280
    Top = 168
  end
  object dlgSave1: TSaveDialog
    Filter = 'Excel|*.xls'
    Left = 320
    Top = 272
  end
end
