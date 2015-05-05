object BDRAutoCreateForm: TBDRAutoCreateForm
  Left = 0
  Top = 0
  Caption = #1040#1074#1090#1086#1089#1086#1079#1076#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
  ClientHeight = 531
  ClientWidth = 779
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
    Width = 779
    Height = 531
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object m_Y: TcxMaskEdit
      Left = 47
      Top = -354
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cbb_M: TcxComboBox
      Left = 47
      Top = -327
      Properties.Items.Strings = (
        ''
        #1103#1085#1074#1072#1088#1100
        #1092#1077#1074#1088#1072#1083#1100
        #1084#1072#1088#1090
        #1072#1087#1088#1077#1083#1100
        #1084#1072#1081
        #1080#1102#1085#1100
        #1080#1102#1083#1100
        #1072#1074#1075#1091#1089#1090
        #1089#1077#1085#1090#1103#1073#1088#1100
        #1086#1082#1090#1103#1073#1088#1100
        #1085#1086#1103#1073#1088#1100
        #1076#1077#1082#1072#1073#1088#1100)
      Style.HotTrack = False
      TabOrder = 1
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object grd1: TcxGrid
      Left = 21
      Top = -73
      Width = 250
      Height = 200
      TabOrder = 6
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_srv1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object clv1Flag: TcxGridDBColumn
          DataBinding.FieldName = 'Flag'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
        end
        object clv1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NAME: TcxGridDBColumn
          DataBinding.FieldName = 'NAME'
          Options.Editing = False
        end
        object clv1RTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'RTYPE'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object btn_Create: TcxButton
      Left = 21
      Top = 210
      Width = 224
      Height = 25
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
      OptionsImage.Glyph.Data = {
        72010000424D7201000000000000760000002800000014000000150000000100
        040000000000FC000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFF00FFFFFFFFFFFF0000FFFFFF0B0FFFFFFFFFFF
        0000FFFFFFF0B0FFFFFFFFFF0000FFFFFFF0FB0FFFFFFFFF0000FFFFFFFF0FB0
        FFFFFFFF0000FFFFFF000B000FFFFFFF0000FFFFFFF0BF0FFFFFFFFF0000FFFF
        FFFF0BF0FFFFFFFF0000FFFFFFFF0FBF0FFFFFFF0000FFFFF0000F0000FFFFFF
        0000FFFFFF0BFBF0FFFFFFFF0000FFFFFFF0BFBF0FFFFFFF0000FFFFFFF0FBFB
        F0FFFFFF0000FFFFFFFF0000000FFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000}
      TabOrder = 7
      OnClick = btn_CreateClick
    end
    object grd2: TcxGrid
      Left = 21
      Top = 285
      Width = 250
      Height = 200
      TabOrder = 8
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_srv2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object clv2FLAG: TcxGridDBColumn
          DataBinding.FieldName = 'FLAG'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 43
        end
        object clv2ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2NAME: TcxGridDBColumn
          DataBinding.FieldName = 'NAME'
          Options.Editing = False
        end
        object clv2RTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'RTYPE'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object btn_correcr: TcxButton
      Left = 21
      Top = 479
      Width = 224
      Height = 25
      Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100
      OptionsImage.Glyph.Data = {
        72010000424D7201000000000000760000002800000014000000150000000100
        040000000000FC000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFF00FFFFFFFFFFFF0000FFFFFF0B0FFFFFFFFFFF
        0000FFFFFFF0B0FFFFFFFFFF0000FFFFFFF0FB0FFFFFFFFF0000FFFFFFFF0FB0
        FFFFFFFF0000FFFFFF000B000FFFFFFF0000FFFFFFF0BF0FFFFFFFFF0000FFFF
        FFFF0BF0FFFFFFFF0000FFFFFFFF0FBF0FFFFFFF0000FFFFF0000F0000FFFFFF
        0000FFFFFF0BFBF0FFFFFFFF0000FFFFFFF0BFBF0FFFFFFF0000FFFFFFF0FBFB
        F0FFFFFF0000FFFFFFFF0000000FFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000}
      TabOrder = 9
      OnClick = btn_correcrClick
    end
    object mmo1: TcxMemo
      Left = 281
      Top = -354
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 10
      Height = 89
      Width = 185
    end
    object btn_createTR: TcxButton
      Left = 21
      Top = -223
      Width = 224
      Height = 25
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      OptionsImage.Glyph.Data = {
        72010000424D7201000000000000760000002800000014000000150000000100
        040000000000FC000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFF00FFFFFFFFFFFF0000FFFFFF0B0FFFFFFFFFFF
        0000FFFFFFF0B0FFFFFFFFFF0000FFFFFFF0FB0FFFFFFFFF0000FFFFFFFF0FB0
        FFFFFFFF0000FFFFFF000B000FFFFFFF0000FFFFFFF0BF0FFFFFFFFF0000FFFF
        FFFF0BF0FFFFFFFF0000FFFFFFFF0FBF0FFFFFFF0000FFFFF0000F0000FFFFFF
        0000FFFFFF0BFBF0FFFFFFFF0000FFFFFFF0BFBF0FFFFFFF0000FFFFFFF0FBFB
        F0FFFFFF0000FFFFFFFF0000000FFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000}
      TabOrder = 4
      OnClick = btn_createTRClick
    end
    object rb_Obh: TcxRadioButton
      Left = 21
      Top = -269
      Width = 224
      Height = 17
      Caption = #1054#1073#1097#1077#1089#1090#1088#1086#1081
      Checked = True
      Color = clWhite
      ParentColor = False
      TabOrder = 2
      TabStop = True
      ParentBackground = False
    end
    object rb_Lift: TcxRadioButton
      Left = 21
      Top = -246
      Width = 224
      Height = 17
      Caption = #1051#1080#1092#1090
      Color = clWhite
      ParentColor = False
      TabOrder = 3
      ParentBackground = False
    end
    object UnloadSiteBtn: TcxButton
      Left = 21
      Top = -148
      Width = 224
      Height = 25
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      TabOrder = 5
      OnClick = UnloadSiteBtnClick
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
    object grp_left: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 264
      ButtonOptions.Buttons = <>
      ItemIndex = 5
      Index = 0
    end
    object itm_m_Y: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = grp_left
      Control = m_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_M: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = grp_left
      Control = cbb_M
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090' '#1087#1086' '#1058#1056'              '
      Parent = grp_left
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      OnCaptionClick = grlc1Group1CaptionClick
      Index = 2
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxRadioButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = rb_Obh
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = 'cxRadioButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = rb_Lift
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_createTR: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = btn_createTR
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object UnloadSiteGroup: TdxLayoutGroup
      CaptionOptions.Text = #1042#1099#1075#1088#1091#1079#1082#1072' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1089#1072#1081#1090#1072' '#1054#1054#1054' '#1044#1045#1047
      Parent = grp_left
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object lc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = UnloadSiteGroup
      Control = UnloadSiteBtn
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grp_create: TdxLayoutGroup
      CaptionOptions.Text = #1057#1086#1079#1076#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'              '
      Parent = grp_left
      SizeOptions.Height = 200
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      OnCaptionClick = grp_createCaptionClick
      Index = 4
    end
    object itm_grd1: TdxLayoutItem
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_create
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 277
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Create: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_create
      Control = btn_Create
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grp_correct: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'              '
      Parent = grp_left
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 1
      OnCaptionClick = grp_correctCaptionClick
      Index = 5
    end
    object itm_grd2: TdxLayoutItem
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp_correct
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 188
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_corect: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_correct
      Control = btn_correcr
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grp_right: TdxLayoutGroup
      AlignHorz = ahClient
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object itm_mmo1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxMemo1'
      CaptionOptions.Visible = False
      Parent = grp_right
      Control = mmo1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 664
    Top = 88
    object lcl1: TdxLayoutCxLookAndFeel
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_M
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = grp_correct
        Properties.Strings = (
          'Expanded')
      end
      item
        Component = grp_create
        Properties.Strings = (
          'Expanded')
      end
      item
        Component = m_Y
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 636
    Top = 88
  end
  object ds_srv1: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT (hs.CODE||'#39'-'#39'||0)id,hs.CODE,'
      '       hs.NAME,'
      '       0 rtype,0 Flag'
      'FROM HOUSESRV hs'
      'where hs.code in (1,2,3,5,9)'
      'union all'
      'SELECT (f1d.CODE||'#39'-'#39'||1)id,f1d.CODE,'
      '       f1d.NAME,'
      '       1 rtype,0 Flag'
      'FROM FACT1DOCSRV f1d'
      '--where f1d.code not in (0,1,2,3)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 336
    Top = 144
  end
  object src_srv1: TDataSource
    DataSet = m_srv1
    Left = 365
    Top = 144
  end
  object m_srv1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 394
    Top = 144
  end
  object ds_srv2: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT (hs.CODE||'#39'-'#39'||0)id,hs.CODE,'
      '       hs.NAME,'
      '       0 rtype,0 Flag'
      'FROM HOUSESRV hs'
      'where hs.code in (1,2,3,5,9)'
      'union all'
      'SELECT (f1d.CODE||'#39'-'#39'||1)id,f1d.CODE,'
      '       f1d.NAME,'
      '       1 rtype,0 Flag'
      'FROM FACT1DOCSRV f1d'
      'where f1d.code in (0,1,2,3)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 336
    Top = 312
  end
  object m_srv2: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 394
    Top = 312
  end
  object src_srv2: TDataSource
    DataSet = m_srv2
    Left = 365
    Top = 312
  end
  object ds_FACTDOCLIST: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE FACTDOCLIST'
      'SET '
      '    FACTDOC = :FACTDOC,'
      '    PLANSUM = :PLANSUM,'
      '    FACTSUM = :FACTSUM,'
      '    CORRECT = :CORRECT,'
      '    HOUSE = :HOUSE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    FACTDOCLIST'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO FACTDOCLIST('
      '    CODE,'
      '    FACTDOC,'
      '    PLANSUM,'
      '    FACTSUM,'
      '    CORRECT,'
      '    HOUSE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :FACTDOC,'
      '    :PLANSUM,'
      '    :FACTSUM,'
      '    :CORRECT,'
      '    :HOUSE'
      ')')
    RefreshSQL.Strings = (
      'SELECT fd.CODE, '
      '       fd.FACTDOC, '
      '       fd.PLANSUM, '
      '       fd.FACTSUM, '
      '       fd.CORRECT, '
      '       fd.HOUSE,'
      '       h.nomer,s.name StName'
      'FROM FACTDOCLIST fd'
      'left outer join house h on h.code=fd.house'
      'left outer join street s on s.code=h.street'
      ' WHERE '
      '        FD.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT fd.CODE, '
      '       fd.FACTDOC, '
      '       fd.PLANSUM, '
      '       fd.FACTSUM, '
      '       fd.CORRECT, '
      '       fd.HOUSE,'
      '       h.nomer,s.name StName'
      'FROM FACTDOCLIST fd'
      'left outer join house h on h.code=fd.house'
      'left outer join street s on s.code=h.street')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 336
    Top = 376
  end
  object XML: TXMLDocument
    Active = True
    Options = [doNodeAutoCreate, doNodeAutoIndent, doAttrNull, doAutoPrefix, doNamespaceDecl]
    Left = 336
    Top = 208
    DOMVendorDesc = 'MSXML'
  end
  object OpenDialog: TOpenDialog
    Left = 368
    Top = 208
  end
end
