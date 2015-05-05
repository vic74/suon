object HouseTarifForm: THouseTarifForm
  Left = 0
  Top = 0
  Caption = #1058#1072#1088#1080#1092#1099' '#1055#1059
  ClientHeight = 522
  ClientWidth = 771
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
    Width = 771
    Height = 522
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
        OnKeyUp = v1KeyUp
        OnCellClick = v1CellClick
        DataController.DataSource = src_HouseTarif
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 144
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 183
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 2
      object v2: TcxGridDBTableView
        DataController.DataSource = src_HouseTarifList
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv2STREETNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2HOUSETARIF: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSETARIF'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          Options.Editing = False
          Width = 160
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 59
        end
        object clv2HOUSESRV: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSESRV'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2HSNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1091#1089#1083#1091#1075#1080
          DataBinding.FieldName = 'HSNAME'
          Options.Editing = False
          Width = 161
        end
        object clv2TOT_SPACE: TcxGridDBColumn
          Caption = #1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'TOT_SPACE'
          Width = 95
        end
        object clv2TARIF_TAXA: TcxGridDBColumn
          Caption = #1058#1072#1088#1080#1092
          DataBinding.FieldName = 'TARIF_TAXA'
          Width = 84
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 183
      Top = 312
      Width = 250
      Height = 200
      TabOrder = 4
      object v3: TcxGridDBTableView
        DataController.DataSource = src_OUTHOUSETARIFLIST
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object clv3CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3HOUSETARIF: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSETARIF'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          Width = 160
        end
        object clv3NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 59
        end
        object clv3HOUSESRV: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSESRV'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3HSNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1091#1089#1083#1091#1075#1080
          DataBinding.FieldName = 'HSNAME'
          Width = 161
        end
        object clv3TOT_SPACE: TcxGridDBColumn
          Caption = #1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'TOT_SPACE'
          Width = 95
        end
        object clv3TARIF_TAXA: TcxGridDBColumn
          Caption = #1058#1072#1088#1080#1092
          DataBinding.FieldName = 'TARIF_TAXA'
          Width = 84
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object cxButton1: TcxButton
      Left = 183
      Top = 263
      Width = 573
      Height = 25
      Caption = #1050#1086#1088#1088#1077#1082#1094#1080#1103' '#1090#1072#1088#1080#1092#1086#1074' '#1087#1086' '#1091#1089#1083#1091#1075#1077' "'#1052#1091#1089#1086#1088#1086#1087#1088#1086#1074#1086#1076'".'
      TabOrder = 3
      OnClick = cxButton1Click
    end
    object btn_copy: TcxButton
      Left = 10
      Top = 487
      Width = 160
      Height = 25
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1085#1072' '#1076#1072#1090#1091
      OptionsImage.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        00005555000FFFFFFFF055000F0F0000FFF0000F0F0FFFFFFFF00F0F0F0F0000
        00F00F0F0F0FFFFFFFF00F0F0F0F000000F00F0F0F0FFFFFFFF00F0F0F0F000F
        FFF00F0F0F0FFFFF00000F0F0F0F00FF0F050F0F0F0FFFFF00550F0F0F000000
        05550F0F0000000555550F000000055555550000000555555555}
      TabOrder = 1
      OnClick = btn_copyClick
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
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 160
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = btn_copy
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Layout = clTop
      Parent = grplc1Group1
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lc1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_grd3: TdxLayoutItem
      CaptionOptions.Text = #1059#1076#1072#1083#1077#1085#1085#1099#1077' '#1090#1072#1088#1080#1092#1099
      CaptionOptions.Layout = clTop
      Parent = grplc1Group1
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 372
    Top = 296
    object laf1: TdxLayoutCxLookAndFeel
    end
  end
  object ds_HouseTarif: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSETARIF'
      'SET '
      '    DATA = :DATA'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSETARIF'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSETARIF('
      '    CODE,'
      '    DATA'
      ')'
      'VALUES('
      '    :CODE,'
      '    :DATA'
      ')')
    RefreshSQL.Strings = (
      'SELECT CODE, '
      '       DATA'
      'FROM HOUSETARIF'
      ' WHERE '
      '        HOUSETARIF.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       DATA'
      'FROM HOUSETARIF')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 32
    Top = 128
  end
  object ds_HouseTarifList: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSETARIFLIST'
      'SET '
      '    HOUSETARIF = :HOUSETARIF,'
      '    HOUSE = :HOUSE,'
      '    HOUSESRV = :HOUSESRV,'
      '    TOT_SPACE = :TOT_SPACE,'
      '    TARIF_TAXA = :TARIF_TAXA'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSETARIFLIST'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSETARIFLIST('
      '    CODE,'
      '    HOUSETARIF,'
      '    HOUSE,'
      '    HOUSESRV,'
      '    TOT_SPACE,'
      '    TARIF_TAXA'
      ')'
      'VALUES('
      '    :CODE,'
      '    :HOUSETARIF,'
      '    :HOUSE,'
      '    :HOUSESRV,'
      '    :TOT_SPACE,'
      '    :TARIF_TAXA'
      ')')
    RefreshSQL.Strings = (
      'SELECT ht.CODE, '
      '       ht.HOUSETARIF, '
      '       ht.HOUSE,h.nomer,'
      '       ht.HOUSESRV,hs.name HSName,h.street, s.name StreetName,'
      '       ht.TOT_SPACE, '
      '       ht.TARIF_TAXA'
      'FROM HOUSETARIFLIST ht'
      'left outer join housesrv hs on hs.code=ht.housesrv'
      'left outer join house h on h.code=ht.house'
      'left outer join street s on s.code=h.street'
      ''
      ' WHERE '
      '        HT.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT ht.CODE, '
      '       ht.HOUSETARIF, '
      '       ht.HOUSE,h.nomer,'
      '       ht.HOUSESRV,hs.name HSName,h.street, s.name StreetName,'
      '       ht.TOT_SPACE, '
      '       ht.TARIF_TAXA'
      'FROM HOUSETARIFLIST ht'
      'left outer join housesrv hs on hs.code=ht.housesrv'
      'left outer join house h on h.code=ht.house'
      'left outer join street s on s.code=h.street')
    AfterDelete = ds_HouseTarifListAfterDelete
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 344
    Top = 160
  end
  object src_HouseTarifList: TDataSource
    DataSet = ds_HouseTarifList
    Left = 372
    Top = 160
  end
  object src_HouseTarif: TDataSource
    DataSet = ds_HouseTarif
    Left = 62
    Top = 128
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 344
    Top = 296
  end
  object ppm2: TcxGridPopupMenu
    Grid = grd2
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
      end>
    Left = 344
    Top = 352
  end
  object pm1: TPopupMenu
    Left = 376
    Top = 352
    object Excel1: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OnClick = Excel1Click
    end
  end
  object ds_OUTHOUSETARIFLIST: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE OUTHOUSETARIFLIST'
      'SET '
      '    HOUSETARIF = :HOUSETARIF,'
      '    HOUSE = :HOUSE,'
      '    HOUSESRV = :HOUSESRV,'
      '    TOT_SPACE = :TOT_SPACE,'
      '    TARIF_TAXA = :TARIF_TAXA'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    OUTHOUSETARIFLIST'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO OUTHOUSETARIFLIST('
      '    CODE,'
      '    HOUSETARIF,'
      '    HOUSE,'
      '    HOUSESRV,'
      '    TOT_SPACE,'
      '    TARIF_TAXA'
      ')'
      'VALUES('
      '    :CODE,'
      '    :HOUSETARIF,'
      '    :HOUSE,'
      '    :HOUSESRV,'
      '    :TOT_SPACE,'
      '    :TARIF_TAXA'
      ')')
    RefreshSQL.Strings = (
      'SELECT ht.CODE, '
      '       ht.HOUSETARIF, '
      '       ht.HOUSE,h.nomer,'
      '       ht.HOUSESRV,hs.name HSName,h.street, s.name StreetName,'
      '       ht.TOT_SPACE, '
      '       ht.TARIF_TAXA'
      'FROM OUTHOUSETARIFLIST ht'
      'left outer join housesrv hs on hs.code=ht.housesrv'
      'left outer join house h on h.code=ht.house'
      'left outer join street s on s.code=h.street'
      ' WHERE '
      '        HT.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT ht.CODE, '
      '       ht.HOUSETARIF, '
      '       ht.HOUSE,h.nomer,'
      '       ht.HOUSESRV,hs.name HSName,h.street, s.name StreetName,'
      '       ht.TOT_SPACE, '
      '       ht.TARIF_TAXA'
      'FROM OUTHOUSETARIFLIST ht'
      'left outer join housesrv hs on hs.code=ht.housesrv'
      'left outer join house h on h.code=ht.house'
      'left outer join street s on s.code=h.street')
    AfterDelete = ds_OUTHOUSETARIFLISTAfterDelete
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 328
    Top = 432
  end
  object src_OUTHOUSETARIFLIST: TDataSource
    DataSet = ds_OUTHOUSETARIFLIST
    Left = 349
    Top = 488
  end
  object pm2: TPopupMenu
    Left = 32
    Top = 376
    object N1: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1085#1072' '#1091#1082#1072#1079#1072#1085#1085#1099#1081' '#1084#1077#1089#1103#1094
    end
  end
  object dlgSave1: TSaveDialog
    Filter = 'Excel|*.xls'
    Left = 411
    Top = 400
  end
end
