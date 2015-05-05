object BDRFactDocForm: TBDRFactDocForm
  Left = 0
  Top = 0
  Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080' ('#1091#1089#1083#1091#1075#1080' '#1056#1050#1062')'
  ClientHeight = 629
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 29
    Width = 809
    Height = 600
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    ExplicitTop = 0
    ExplicitHeight = 629
    object grd1: TcxGrid
      Left = 269
      Top = 16
      Width = 527
      Height = 215
      TabOrder = 9
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_FACTDOC
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object clv1PRV: TcxGridDBColumn
          Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1082#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          DataBinding.FieldName = 'PRV'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssInactive
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1PRVPropertiesEditValueChanged
          HeaderHint = #1055#1088#1080#1079#1085#1072#1082' '#1073#1083#1086#1082#1080#1088#1086#1074#1082#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          HeaderImageIndex = 14
          Options.ShowCaption = False
          Width = 24
        end
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Options.Editing = False
        end
        object clv1Firm: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'FIRM'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = cmDb.src_FIRM
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 97
        end
        object clv1M: TcxGridDBColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'M'
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
          Properties.ListSource = src_month
          Options.Editing = False
          Width = 102
        end
        object clv1Y: TcxGridDBColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          Options.Editing = False
          Width = 84
        end
        object clv1HOUSESRV: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSESRV'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1HSNAME: TcxGridDBColumn
          Caption = #1059#1089#1083#1091#1075#1072
          DataBinding.FieldName = 'HSNAME'
          Options.Editing = False
          Width = 221
        end
        object clv1SHB: TcxGridDBColumn
          Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085' '#1080#1079' '#1096#1072#1073#1083#1086#1085#1072
          DataBinding.FieldName = 'SHB'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1SHBPropertiesEditValueChanged
          HeaderHint = #1055#1088#1080#1079#1085#1072#1082' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1080#1079' '#1096#1072#1073#1083#1086#1085#1072
          HeaderImageIndex = 19
          Options.Editing = False
          Options.ShowCaption = False
          Width = 22
        end
        object clv1History: TcxGridDBColumn
          Caption = #1048#1089#1090#1086#1088#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              ImageIndex = 28
              Kind = bkGlyph
            end>
          Properties.Images = cmDb.iml1
          Properties.ViewStyle = vsButtonsOnly
          Properties.OnButtonClick = clv1HistoryPropertiesButtonClick
          HeaderGlyphAlignmentHorz = taCenter
          HeaderHint = #1048#1089#1090#1086#1088#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          HeaderImageIndex = 28
          Options.ShowEditButtons = isebAlways
          Options.ShowCaption = False
          Width = 40
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 13
      Top = 296
      Width = 783
      Height = 289
      TabOrder = 11
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_FACTDOCLIST
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv2STNAME
          end
          item
            Kind = skSum
            Column = clv2FACTDOC
          end
          item
            Kind = skSum
            Column = clv2PLANSUM
          end
          item
            Kind = skSum
            Column = clv2FACTSUM
          end
          item
            Kind = skSum
            Column = clv2CORRECT
          end>
        DataController.Summary.SummaryGroups = <>
        Images = cmDb.iml1
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2STNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STNAME'
          Options.Editing = False
          Width = 176
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 46
        end
        object clv2FACTDOC: TcxGridDBColumn
          DataBinding.FieldName = 'FACTDOC'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2PLANSUM: TcxGridDBColumn
          Caption = #1055#1083#1072#1085
          DataBinding.FieldName = 'PLANSUM'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 101
        end
        object clv2FACTSUM: TcxGridDBColumn
          Caption = #1060#1072#1082#1090
          DataBinding.FieldName = 'FACTSUM'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object clv2CORRECT: TcxGridDBColumn
          Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080
          DataBinding.FieldName = 'CORRECT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 89
        end
        object clv2SQ1: TcxGridDBColumn
          Caption = #1046#1080#1083#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'SQ1'
          Options.Editing = False
          Width = 71
        end
        object clv2SQ2: TcxGridDBColumn
          Caption = #1053#1077' '#1078#1080#1083#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'SQ2'
          Options.Editing = False
          Width = 71
        end
        object clv2SQ3: TcxGridDBColumn
          Caption = #1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'SQ3'
          Options.Editing = False
          Width = 73
        end
        object clv2KONTRAGENT: TcxGridDBColumn
          Caption = #1050#1085#1090#1088#1072#1075#1077#1085#1090'|'#1050#1086#1076
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          Options.Editing = False
        end
        object clv2KNAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'KNAME'
          Visible = False
          Options.Editing = False
          Width = 178
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object doc1: TdxBarDockControl
      Left = 13
      Top = 266
      Width = 783
      Height = 29
      Align = dalTop
      BarManager = brm1
    end
    object cbb_month: TcxComboBox
      Left = 44
      Top = 78
      Properties.DropDownListStyle = lsEditFixedList
      Properties.ImmediatePost = True
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
      TabOrder = 2
      Text = #1103#1085#1074#1072#1088#1100
      Width = 189
    end
    object msk_Y: TcxMaskEdit
      Left = 44
      Top = 115
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 4
      Width = 189
    end
    object cbb_srv: TcxLookupComboBox
      Left = 44
      Top = 152
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
      Style.HotTrack = False
      TabOrder = 6
      Width = 189
    end
    object btn_add: TcxButton
      Left = 44
      Top = 174
      Width = 211
      Height = 25
      Caption = #1055#1086#1080#1089#1082
      OptionsImage.ImageIndex = 35
      OptionsImage.Images = cmDb.iml1
      TabOrder = 8
      OnClick = btn_addClick
    end
    object cbb_Firm: TcxLookupComboBox
      Left = 44
      Top = 41
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_FIRM
      Style.HotTrack = False
      TabOrder = 0
      Width = 189
    end
    object btn_SrvClear: TcxButton
      Left = 234
      Top = 152
      Width = 21
      Height = 21
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      TabOrder = 7
      OnClick = btn_SrvClearClick
    end
    object btn_YClear: TcxButton
      Left = 234
      Top = 115
      Width = 21
      Height = 21
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      TabOrder = 5
      OnClick = btn_YClearClick
    end
    object btn_MClear: TcxButton
      Left = 234
      Top = 78
      Width = 21
      Height = 21
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      TabOrder = 3
      OnClick = btn_MClearClick
    end
    object btn_FirmClear: TcxButton
      Left = 234
      Top = 41
      Width = 21
      Height = 21
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      TabOrder = 1
      OnClick = btn_FirmClearClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp_left: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object grp_2: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Layout = clLeft
      CaptionOptions.Text = #1060#1080#1083#1100#1090#1088
      Parent = grp_left
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 213
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object itm_month: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      CaptionOptions.Layout = clTop
      Parent = lGrplc1Group3
      Control = cbb_month
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Y: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      CaptionOptions.Layout = clTop
      Parent = lGrplc1Group2
      Control = msk_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_srv: TdxLayoutItem
      CaptionOptions.Text = #1059#1089#1083#1091#1075#1072
      CaptionOptions.Layout = clTop
      Parent = lGrplc1Group1
      Control = cbb_srv
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object itm_add: TdxLayoutItem
      CaptionOptions.Text = #1055#1086#1080#1089#1082
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 211
      Control = btn_add
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_left
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = True
      SizeOptions.Height = 216
      SizeOptions.Width = 275
      Control = grd1
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
    object grp2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object itm_doc: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp2
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp2
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_Firm: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      CaptionOptions.Layout = clTop
      Parent = lGrplc1Group4
      Control = cbb_Firm
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item1: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = lGrplc1Group1
      Control = btn_SrvClear
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object litm_lc1Item11: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = lGrplc1Group2
      Control = btn_YClear
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object litm_lc1Item12: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = lGrplc1Group3
      Control = btn_MClear
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object litm_lc1Item13: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = lGrplc1Group4
      Control = btn_FirmClear
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrplc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 56
    object lcl1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_Firm
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_month
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_srv
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = msk_Y
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 652
    Top = 56
  end
  object ds_FACTDOC: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE FACTDOC'
      'SET '
      '    M = :M,'
      '    Y = :Y,'
      '    HOUSESRV = :HOUSESRV'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    FACTDOC'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO FACTDOC('
      '    CODE,'
      '    M,'
      '    Y,'
      '    HOUSESRV'
      ')'
      'VALUES('
      '    :CODE,'
      '    :M,'
      '    :Y,'
      '    :HOUSESRV'
      ')')
    RefreshSQL.Strings = (
      'SELECT f.CODE, '
      '       f.M, '
      '       f.Y, '
      '       f.HOUSESRV, hs.name HsName'
      'FROM FACTDOC f'
      'left outer join HOUSESRV hs on hs.code=f.housesrv'
      ' WHERE '
      '        F.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT f.CODE,'
      '       f.M,'
      '       f.Y,'
      '       f.HOUSESRV, hs.name HsName, f.SHB, f.PRV'
      '       ,f.FIRM'
      'FROM FACTDOC f'
      'left outer join HOUSESRV hs on hs.code=f.housesrv')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 288
    Top = 136
  end
  object src_FACTDOC: TDataSource
    DataSet = ds_FACTDOC
    Left = 341
    Top = 136
  end
  object m_month: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 400
    Top = 200
  end
  object src_month: TDataSource
    DataSet = m_month
    Left = 432
    Top = 200
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
      'SELECT fd.CODE,'
      '       fd.FACTDOC, '
      '       fd.PLANSUM, '
      '       fd.FACTSUM, '
      '       fd.CORRECT, '
      '       fd.HOUSE,'
      '       h.nomer,s.name StName,'
      '       fd.SQ1, fd.SQ2,(fd.SQ1 + fd.SQ2) SQ3,'
      '       fd.KONTRAGENT, k.NAME KNAME'
      'FROM FACTDOCLIST fd'
      'left outer join house h on h.code=fd.house'
      'left outer join street s on s.code=h.street'
      'left outer join kontragent k on k.CODE = fd.KONTRAGENT'
      'where fd.FACTDOC=:mas_code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_FACTDOC
    Left = 184
    Top = 336
    dcForceOpen = True
  end
  object src_FACTDOCLIST: TDataSource
    DataSet = ds_FACTDOCLIST
    Left = 213
    Top = 336
  end
  object brm1: TdxBarManager
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
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 576
    Top = 344
    DockControlHeights = (
      0
      0
      29
      0)
    object bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 753
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_editSumm'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_penalt'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object brm1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 843
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AddSrv'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_EditSrv'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_DeleteSrv'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_fill: TdxBarButton
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
      Category = 0
      Hint = #1047#1072#1087#1086#1083#1085#1080#1090#1100
      Visible = ivNever
      OnClick = btn_fillClick
    end
    object btn_correct: TdxBarButton
      Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivNever
      OnClick = btn_correctClick
    end
    object btn_penalt: TdxBarButton
      Caption = #1057#1084#1077#1090#1072'/'#1040#1082#1090
      Category = 0
      Hint = #1057#1084#1077#1090#1072'/'#1040#1082#1090
      Visible = ivNever
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
      OnClick = btn_penaltClick
    end
    object btn_akt: TdxBarButton
      Caption = #1040#1082#1090
      Category = 0
      Hint = #1040#1082#1090
      Visible = ivAlways
      OnClick = btn_aktClick
    end
    object btn_editSumm: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1089#1091#1084#1084#1099
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1089#1091#1084#1084#1099
      Visible = ivAlways
      Glyph.Data = {
        72010000424D7201000000000000760000002800000015000000150000000100
        040000000000FC000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333330003333333333903333333330003333333339990333333330003333
        333339990333333330008000000099999000003330008FFFFFF9999990FFF033
        30008F00089998899908F03330008FFFF99FFFFF990FF03330008F00088F000F
        9990F03330008FFFFFFFFFFFF990F03330008F00000F000F0899003330008FFF
        FFFFFFFFFFF9903330008F00000F000F0008990330008FFFFFFFFFFFFFFFF099
        00008F00000F000F0000F03330008FFFFFFFFFFFFFFFF03330008F00000F000F
        0000F03330008FFFFFFFFFFFFFFFF03330008000000000000000003330008F0C
        CCCCCCCCC0F0F0333000888888888888888888333000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_editSummClick
    end
    object btn_AddSrv: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_AddSrvClick
    end
    object btn_EditSrv: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EditSrvClick
    end
    object btn_DeleteSrv: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_DeleteSrvClick
    end
  end
  object ds_Sanc: TpFIBDataSet
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 192
    Top = 416
  end
  object xl1: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    DataSet = ds_SancSum
    Dictionary = <>
    SubReport = xl_sub
    TemplSheet = #1047#1072#1075#1086#1083#1086#1074#1086#1082
    _Version = '1.6.0.3'
    Left = 224
    Top = 416
  end
  object xl_sub: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    DataSet = ds_Sanc
    Dictionary = <>
    TemplSheet = #1044#1072#1085#1085#1099#1077
    _Version = '1.6.0.3'
    OnBeforeBuild = xl_subBeforeBuild
    OnFormatCell = xl_subFormatCell
    Left = 256
    Top = 416
  end
  object ds_SancSum: TpFIBDataSet
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 192
    Top = 464
  end
  object ds_HOUSESRV: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NAME'
      'FROM HOUSESRV'
      'where ('#39',6,8,4,7,'#39' not containing '#39','#39' || CODE || '#39','#39')')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 272
    Top = 64
  end
  object src_HOUSESRV: TDataSource
    DataSet = ds_HOUSESRV
    Left = 301
    Top = 64
  end
  object pm1: TPopupMenu
    Images = cmDb.iml1
    Left = 480
    Top = 152
    object N1: TMenuItem
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' <F7>'
      ImageIndex = 17
      OnClick = N1Click
    end
  end
  object ppm1: TcxGridPopupMenu
    Grid = grd1
    PopupMenus = <
      item
        GridView = v1
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = pm1
      end>
    Left = 544
    Top = 152
  end
end
