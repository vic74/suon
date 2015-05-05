object DefArhForm: TDefArhForm
  Left = 0
  Top = 0
  Caption = #1040#1088#1093#1080#1074' '#1076#1077#1092#1077#1082#1090#1085#1099#1093' '#1074#1077#1076#1086#1084#1086#1089#1090#1077#1081
  ClientHeight = 780
  ClientWidth = 996
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
    Top = 26
    Width = 996
    Height = 754
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    ExplicitWidth = 968
    ExplicitHeight = 714
    object grd1: TcxGrid
      Left = 14
      Top = 35
      Width = 250
      Height = 200
      TabOrder = 0
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1083#1091#1095#1072#1077#1084' '#1076#1072#1085#1085#1099#1077'...'
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_TRFACT
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SMETA: TcxGridDBColumn
          Caption = #1055#1088#1080#1082#1088#1077#1087#1083#1077#1085#1085#1099#1081' '#1092#1072#1081#1083
          DataBinding.FieldName = 'SMETA'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = cmDb.iml1
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = #1085#1077#1090' '#1089#1084#1077#1090
              Value = 0
            end
            item
              Description = #1077#1089#1090#1100' '#1089#1084#1077#1090#1072
              ImageIndex = 27
              Value = 1
            end>
          HeaderGlyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            00020000001700000039000000493C39387C494544911D1B1B570000003D0000
            0036000000340000002B00000014000000040000000000000000000000000000
            00020000001044404058655F5FDE615C5CC65954549F656060DD272424410000
            002B0000002B0000002400000011000000030000000000000000000000000000
            00006A6463496B6564DC595454360000000B0000000A635E5D57696362AE0000
            000B0000000B0000000900000005000000010000000000000000000000000000
            00006D6867C66D686736000000000000000000000000000000006D6867B46D68
            674B000000000000000000000000000000000000000000000000FFFFFF00FFFF
            FF006F6A69BA6F6A693FFFFFFF006F6A69306F6A69A56F6A69C96F6A694E6F6A
            69D56F6A6906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00716D6C3C716D6CC3FFFFFF00716D6CC0716D6C33716D6C3C716D6CC9716D
            6C8A716D6C78FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0074706FA574706F5A74706F8474706FAEFFFFFF0074706F967470
            6F7E74706FD874706F1BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF007773721B777372D877737218777372DB777372577773720F7773
            72D877737278777372A5FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0079767678797676877976764B797676ED797676187976
            7654797676B4797676C37976763CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF007C7979067C7979D87C7979247C7979B47C7979AEFFFF
            FF007C7979B47C7979817C797948FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF007F7C7C5A7F7C7CB47F7C7C247F7C7CF97F7C
            7C2A7F7C7C1B7F7C7CDE7F7C7C12FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00817F7FC3817F7F4B817F7F18FFFF
            FF00FFFFFF00817F7F6F817F7F9FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0083818130838181D883818106FFFF
            FF00FFFFFF0083818103838181E18381812AFFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008584849685848478FFFF
            FF00FFFFFF008584841E858484E785848427FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0087868512878685E18786
            857E87868599878685ED8786857EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008887872A8887
            87908887878788878721FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          HeaderHint = #1055#1088#1080#1082#1088#1077#1087#1083#1077#1085#1085#1099#1081' '#1092#1072#1081#1083
          Options.ShowCaption = False
          Width = 24
        end
        object clv1DNUM: TcxGridDBColumn
          Caption = #8470' '#1076#1077#1092'.'#1074#1077#1076#1086#1084#1086#1089#1090#1080
          DataBinding.FieldName = 'DNUM'
          Options.Editing = False
          Width = 86
        end
        object clv1DDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1076#1077#1092'. '#1074#1077#1076#1086#1084#1086#1089#1090#1080
          DataBinding.FieldName = 'DDATE'
          Options.Editing = False
          Width = 85
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 160
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 47
        end
        object clv1MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MNAME'
          Options.Editing = False
          Width = 160
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Options.Editing = False
          Width = 136
        end
        object clv1MANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FIO: TcxGridDBColumn
          Caption = #1054#1090#1074'. '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'FIO'
          Options.Editing = False
          Width = 157
        end
        object clv1NCALC: TcxGridDBColumn
          Caption = #8470' '#1082#1072#1083#1100#1082#1091#1083#1103#1094#1080#1080
          DataBinding.FieldName = 'NCALC'
          Visible = False
          VisibleForCustomization = False
          Width = 135
        end
        object clv1NCALCDATE: TcxGridDBColumn
          DataBinding.FieldName = 'NCALCDATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NSUMMA: TcxGridDBColumn
          DataBinding.FieldName = 'NSUMMA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NDOP: TcxGridDBColumn
          DataBinding.FieldName = 'NDOP'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SUMMA: TcxGridDBColumn
          DataBinding.FieldName = 'SUMMA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          DataBinding.FieldName = 'NOTE'
          Options.Editing = False
          Width = 168
        end
        object clv1PLANCODE: TcxGridDBColumn
          DataBinding.FieldName = 'PLANCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DPLACE: TcxGridDBColumn
          Caption = #1052#1077#1089#1090#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1088#1077#1084#1086#1085#1090#1072
          DataBinding.FieldName = 'DPLACE'
          Options.Editing = False
          Width = 193
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 14
      Top = 329
      Width = 250
      Height = 200
      TabOrder = 2
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_TRDEFECTVED
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2TRFACT: TcxGridDBColumn
          DataBinding.FieldName = 'TRFACT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2NUM: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'NUM'
          Width = 23
        end
        object clv2SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 172
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 40
        end
        object clv2MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MNAME'
          Width = 173
        end
        object clv2MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2WNOTE: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'WNOTE'
          Width = 169
        end
        object clv2ED: TcxGridDBColumn
          Caption = #1045#1076'. '#1080#1079#1084
          DataBinding.FieldName = 'ED'
        end
        object clv2QUANTITY: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'QUANTITY'
        end
        object clv2NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 147
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object btn_Save: TcxButton
      Left = 14
      Top = 248
      Width = 137
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1089#1084#1077#1090#1091
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDb.iml1
      TabOrder = 1
      OnClick = btn_SaveClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grouplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1076#1077#1092#1077#1082#1090#1085#1099#1093' '#1074#1077#1076#1086#1084#1086#1089#1090#1077#1081
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 282
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object grouplc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object split1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grouplc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item11: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grouplc1Group2
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grouplc1Group1
      Visible = False
      Control = btn_Save
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 3
      Offsets.RootItemsAreaOffsetVert = 3
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = itm_dt1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = itm_dt2
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object bm1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = cmDb.iml1
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 304
    Top = 104
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
      FloatLeft = 881
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 120
          Visible = True
          ItemName = 'cbb_type'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 112
          Visible = True
          ItemName = 'itm_dt1'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 112
          Visible = True
          ItemName = 'itm_dt2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_exec'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Print'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object itm_dt1: TcxBarEditItem
      Caption = #1055#1077#1088#1080#1086#1076' '#1089
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076' '#1089
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object itm_dt2: TcxBarEditItem
      Caption = ' '#1087#1086' '
      Category = 0
      Hint = ' '#1087#1086' '
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object btn_exec: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = btn_execClick
    end
    object btn_Print: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = btn_PrintClick
    end
    object cbb_type: TdxBarCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Text = #1086#1073#1097#1077#1089#1090#1088#1086#1081
      Items.Strings = (
        #1086#1073#1097#1077#1089#1090#1088#1086#1081
        #1083#1080#1092#1090)
      ItemIndex = 0
    end
  end
  object ds_TRFACT: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,'
      '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,'
      
        '  K.NAME KNAME, TF.MANAGER,(P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO' +
        ','
      '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,'
      '  TF.PLANCODE,TF.STATE, TF.DPLACE, TF.DNum, TF.DDate,'
      '  iif(TF.SMETA IS NULL,0,1) SMETA'
      'from @@table_clause@ TF'
      ' left outer join HOUSE H on H.CODE = TF.HOUSE'
      ' left outer join STREET S on S.CODE = H.STREET'
      ' left outer join MLIST M on M.CODE = TF.MLIST'
      ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT'
      ' left outer join WORKER W on W.CODE = TF.MANAGER'
      ' left outer join PIPLE P on P.CODE = W.PIPLE'
      'where TF.DDATE between :D1 and :D2'
      'order by TF.DNum, TF.DDate')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 112
    Top = 136
  end
  object src_TRFACT: TDataSource
    DataSet = ds_TRFACT
    Left = 144
    Top = 136
  end
  object ds_TRDEFECTVED: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT df.CODE, '
      '       df.TRFACT,'
      '       tf.house,S.NAME SNAME,H.NOMER,M.NAME MNAME,'
      '       tf.mlist,'
      '       df.WNOTE, '
      '       df.ED, '
      '       df.QUANTITY, '
      '       df.NOTE, df.NUM'
      'FROM TRDEFECTVED df'
      'left outer join trfact tf on tf.code=df.trfact'
      ' left outer join HOUSE H on H.CODE = TF.HOUSE'
      ' left outer join STREET S on S.CODE = H.STREET'
      ' left outer join MLIST M on M.CODE = TF.MLIST')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 240
    Top = 440
  end
  object src_TRDEFECTVED: TDataSource
    DataSet = ds_TRDEFECTVED
    Left = 269
    Top = 440
  end
  object dlgSave1: TSaveDialog
    Left = 240
    Top = 144
  end
  object fds_smeta: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT SMETA, FNAME FROM TRFACT WHERE CODE=:CODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 416
    Top = 104
  end
end
