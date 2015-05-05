object GlobVarForm: TGlobVarForm
  Left = 0
  Top = 0
  Caption = #1043#1083#1086#1073#1072#1083#1100#1085#1099#1077' '#1087#1077#1088#1077#1084#1077#1085#1085#1099#1077' '#1087#1083#1072#1085#1086#1074' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1081
  ClientHeight = 293
  ClientWidth = 426
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
  object Ribbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 426
    Height = 24
    BarManager = MainForm.bm1
    ColorSchemeName = 'Office2010Blue'
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
    Width = 426
    Height = 269
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = LCxSkin1
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      Align = alClient
      TabOrder = 0
      object v1: TcxGridDBTableView
        DataController.DataSource = src1
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.InfoText = #1042#1074#1077#1076#1080#1090#1077' '#1079#1076#1077#1089#1100' '#1080#1084#1103' '#1085#1086#1074#1086#1081' '#1087#1077#1088#1077#1084#1077#1085#1085#1086#1081
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Appending = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.NewItemRowInfoText = styl_select1
        object clv1Code: TcxGridDBColumn
          Caption = #1048#1076#1077#1085#1090#1077#1092#1080#1082#1072#1090#1086#1088
          DataBinding.FieldName = 'ID'
        end
        object clv1Caption: TcxGridDBColumn
          Caption = #1055#1077#1088#1077#1084#1077#1085#1085#1072#1103
          DataBinding.FieldName = 'Caption'
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object btn_cancel: TcxButton
      Left = 10
      Top = 234
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 1
    end
    object btn_ok: TcxButton
      Left = 241
      Top = 234
      Width = 75
      Height = 25
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      TabOrder = 2
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = LCxSkin1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object Itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grp2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object Item_cancel: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp2
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 163
      Control = btn_cancel
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object Item_ok: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 175
      Control = btn_ok
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object ds1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE GLOBALPLANVAR'
      'SET '
      '    CAPTION = :CAPTION'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    GLOBALPLANVAR'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO GLOBALPLANVAR('
      '    ID,'
      '    CAPTION'
      ')'
      'VALUES('
      '    :ID,'
      '    :CAPTION'
      ')')
    RefreshSQL.Strings = (
      'select ID, CAPTION from GLOBALPLANVAR'
      ''
      ' WHERE '
      '        GLOBALPLANVAR.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'select ID, CAPTION from GLOBALPLANVAR')
    AutoUpdateOptions.UpdateTableName = 'GLOBALPLANVAR'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GLOBALPLANVAR_GEN'
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    Transaction = cmDB.RT
    Database = cmDB.DB
    UpdateTransaction = cmDB.WT
    AutoCommit = True
    Left = 385
    Top = 35
  end
  object src1: TDataSource
    DataSet = ds1
    Left = 357
    Top = 37
  end
  object LSkin1: TdxLayoutLookAndFeelList
    object LCxSkin1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
  object strep1: TcxStyleRepository
    PixelsPerInch = 96
    object styl_select1: TcxStyle
      AssignedValues = [svBitmap, svFont, svTextColor]
      Bitmap.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000FF00FF000875
        0D0010A61D0013AA220016AD260017AF2A001AB12D001CB4310020B8360021B8
        390025BD3E0026BE41002AC147002CC349002FC74F0030C9520035CE590038D1
        5E003AD260003CD462003ED766003FD8680041DA6D0045DD710049E279004DE6
        7F000E7FA9000E80AA001385AF000682B600078DBB002692BF000C92C000089C
        CE00129FCB000DA2D40011A7D20020A1CA0035A7CD0030BCDD0044BADD0023D7
        FE0036D8FD004AC5DD0049C1E30049D5EE0063DAF50059EAFE006CE0F8006FE6
        FF006FF8FF0072F9FE007AFEFF0092CEE4008DE7FA0082F8FF008CFBFE0091FC
        FE0097FEFF009BFBFC00BAEEF600A0FCFE00A8FFFF00ADFFFF00B6F6FF00B3FC
        FE00B4FFFF00C6F5FF00C7FFFF00D3FFFF00E3FAFF00E4FFFF00E9F9FD00F1FB
        FD00F4FFFF00FCFFFF0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000101010100000000001B1B1B1B1B1B0001030201000000001E2D292A31
        36281B010603010000001E382F292A31010101010A07010101011E382F292A31
        0113100F0D0B0A0605011E382F292A3101161611100D0C0A08011E4140434648
        010101011513010101011E3C27242225261F35011716010000001E2B2F292A31
        362C1D011919010000001E382F292A31362C21010101010000001E382F292A31
        362C211A0000000000001E382F292A31362C211B0000000000001E3937323439
        3D2E231B0000000000001E4B4A4541413F3F321B00000000000000204A46443F
        3D3B1C0000000000000000001E1E1E1E1E1E0000000000000000}
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clGreen
    end
  end
end
