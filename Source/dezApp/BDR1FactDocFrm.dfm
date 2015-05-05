object BDR1FactDocForm: TBDR1FactDocForm
  Left = 0
  Top = 0
  Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080' ('#1087#1088#1086#1095#1077#1077')'
  ClientHeight = 621
  ClientWidth = 766
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
    Width = 766
    Height = 592
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    ExplicitTop = 0
    ExplicitHeight = 621
    object grd1: TcxGrid
      Left = 269
      Top = 16
      Width = 484
      Height = 203
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
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object clv1PRV: TcxGridDBColumn
          Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1082#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          DataBinding.FieldName = 'PRV'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1PRVPropertiesEditValueChanged
          HeaderHint = #1055#1088#1080#1079#1085#1072#1082' '#1073#1083#1086#1082#1080#1088#1086#1074#1082#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          HeaderImageIndex = 14
          Options.ShowCaption = False
          Width = 26
        end
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Options.Editing = False
        end
        object clv1FIRM: TcxGridDBColumn
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
          Width = 93
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
        end
        object clv1HSNAME: TcxGridDBColumn
          Caption = #1059#1089#1083#1091#1075#1072
          DataBinding.FieldName = 'HOUSESRVNAME'
          Options.Editing = False
          Width = 175
        end
        object clv1SHB: TcxGridDBColumn
          Caption = #1057#1086#1079#1076#1072#1085#1086' '#1080#1079' '#1096#1072#1073#1083#1086#1085#1072
          DataBinding.FieldName = 'SHB'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1SHBPropertiesEditValueChanged
          HeaderHint = #1055#1088#1080#1079#1085#1072#1082' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1080#1079' '#1096#1072#1073#1083#1086#1085#1072
          HeaderImageIndex = 19
          Options.Editing = False
          Options.ShowCaption = False
          Width = 24
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
          Properties.ViewStyle = vsButtonsAutoWidth
          Properties.OnButtonClick = clv1HistoryPropertiesButtonClick
          HeaderGlyphAlignmentHorz = taCenter
          HeaderHint = #1048#1089#1090#1086#1088#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          HeaderImageIndex = 28
          Options.ShowEditButtons = isebAlways
          Options.ShowCaption = False
          Width = 41
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 3
      Top = 278
      Width = 760
      Height = 319
      TabOrder = 11
      LockedStateImageOptions.Effect = lsieLight
      LockedStateImageOptions.ShowText = True
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
            Column = clv2FACT1DOC
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
          Width = 172
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
        object clv2FACT1DOC: TcxGridDBColumn
          DataBinding.FieldName = 'FACT1DOC'
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
          Width = 89
        end
        object clv2CORRECT: TcxGridDBColumn
          Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080
          DataBinding.FieldName = 'CORRECT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 122
        end
        object clv2SQ1: TcxGridDBColumn
          Caption = #1046#1080#1083#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'SQ1'
          Options.Editing = False
          Width = 70
        end
        object clv2SQ2: TcxGridDBColumn
          Caption = #1053#1077' '#1078#1080#1083#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'SQ2'
          Options.Editing = False
          Width = 67
        end
        object clv2SQ3: TcxGridDBColumn
          Caption = #1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'SQ3'
          Options.Editing = False
          Width = 68
        end
        object clv2KNAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'KNAME'
          Visible = False
          Options.Editing = False
          Width = 92
        end
        object clv2KONTRAGENT: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'|'#1050#1086#1076
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          Options.Editing = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object cbb_month: TcxComboBox
      Left = 44
      Top = 78
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownSizeable = True
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
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_SRV
      Style.HotTrack = False
      TabOrder = 6
      Width = 189
    end
    object btn_add: TcxButton
      Left = 44
      Top = 179
      Width = 211
      Height = 25
      Caption = #1055#1086#1080#1089#1082
      OptionsImage.ImageIndex = 35
      OptionsImage.Images = cmDb.iml1
      TabOrder = 8
      OnClick = btn_addClick
    end
    object doc1: TdxBarDockControl
      Left = 3
      Top = 248
      Width = 760
      Height = 29
      Align = dalTop
      BarManager = brm1
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
    object grp2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object grplc1Group1: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grp3: TdxLayoutGroup
      CaptionOptions.Layout = clLeft
      CaptionOptions.Text = #1060#1080#1083#1100#1090#1088
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 202
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object itm_month: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      CaptionOptions.Layout = clTop
      Parent = lGrplc1Group3
      Control = cbb_month
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Y: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = #1043#1086#1076
      CaptionOptions.Layout = clTop
      Parent = lGrplc1Group2
      Control = msk_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_srv: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = #1059#1089#1083#1091#1075#1072
      CaptionOptions.Layout = clTop
      Parent = lGrplc1Group1
      Control = cbb_srv
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_add: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Offsets.Top = 5
      Parent = grp3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 181
      Control = btn_add
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group1
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
    object itm_doc1: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = lGrplc1Group5
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
      Parent = lGrplc1Group5
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_Firm: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      CaptionOptions.Layout = clTop
      Parent = lGrplc1Group4
      Control = cbb_Firm
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item1: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group1
      Control = btn_SrvClear
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object litm_lc1Item2: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = btn_YClear
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object litm_lc1Item3: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group3
      Control = btn_MClear
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object litm_lc1Item4: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group4
      Control = btn_FirmClear
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrplc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lGrplc1Group5: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 142
    Top = 547
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
    Left = 46
    Top = 515
  end
  object ds_FACTDOC: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE FACT1DOC'
      'SET '
      '    M = :M,'
      '    Y = :Y,'
      '    HOUSESRV = :HOUSESRV'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    FACT1DOC'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO FACT1DOC('
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
      'SELECT f1.CODE, '
      '       f1.M, '
      '       f1.Y, '
      '       f1.HOUSESRV,'
      '       case'
      '        when f1.HOUSESRV=0 then '#39#1085#1077' '#1091#1082#1072#1079#1072#1085#1072#39
      '        when f1.HOUSESRV=1 then '#39#1058#1056' '#1086#1073#1097#1077#1089#1090#1088#1086#1081#39
      '        when f1.HOUSESRV=2 then '#39#1058#1056' '#1083#1080#1092#1090#39
      '        when f1.HOUSESRV=3 then '#39#1054#1044#1057#39
      '        when f1.HOUSESRV=4 then '#39#1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103#39
      '        when f1.HOUSESRV=5 then '#39#1058#1054' '#1086#1073#1097#1077#1089#1090#1088#1086#1081#39
      '        when f1.HOUSESRV=6 then '#39#1058#1054' '#1101#1083#1077#1082#1090#1088#1086#1084#1086#1085#1090#1072#1078#39
      '        when f1.HOUSESRV=7 then '#39#1059#1073#1086#1088#1082#1072' '#1082#1072#1073#1080#1085#1099' '#1083#1080#1092#1090#1072#39
      '        when f1.HOUSESRV=8 then '#39#1058#1077#1093#1086#1089#1074#1080#1076'. '#1083#1080#1092#1090#1072#39
      '        when f1.HOUSESRV=9 then '#39#1069#1082#1089#1087#1077#1088#1090#1080#1079#1072' '#1083#1080#1092#1090#1072#39
      '        when f1.HOUSESRV=10 then '#39#1040#1042#1057#39
      '        when f1.HOUSESRV=11 then '#39#1051#1044#1057#1057#39
      '        when f1.HOUSESRV=12 then '#39#1058#1054' '#1083#1080#1092#1090#39
      '       else '#39#39
      '      end HOUSESRVName'
      'FROM FACT1DOC f1'
      ''
      ' WHERE '
      '        F1.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT f1.CODE,'
      '       f1.M,'
      '       f1.Y,'
      '       f1.FIRM,'
      '       f1.HOUSESRV,'
      '       s.NAME HOUSESRVName, f1.SHB, f1.PRV'
      ''
      'FROM FACT1DOC f1'
      'left outer join srv s on s.CODE = f1.HOUSESRV')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 270
    Top = 547
  end
  object src_FACTDOC: TDataSource
    DataSet = ds_FACTDOC
    Left = 110
    Top = 547
  end
  object m_month: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 174
    Top = 547
  end
  object src_month: TDataSource
    DataSet = m_month
    Left = 78
    Top = 515
  end
  object ds_FACTDOCLIST: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE FACT1DOCLIST'
      'SET '
      '    FACT1DOC = :FACT1DOC,'
      '    PLANSUM = :PLANSUM,'
      '    FACTSUM = :FACTSUM,'
      '    CORRECT = :CORRECT,'
      '    HOUSE = :HOUSE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    FACT1DOCLIST'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO FACT1DOCLIST('
      '    CODE,'
      '    FACT1DOC,'
      '    PLANSUM,'
      '    FACTSUM,'
      '    CORRECT,'
      '    HOUSE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :FACT1DOC,'
      '    :PLANSUM,'
      '    :FACTSUM,'
      '    :CORRECT,'
      '    :HOUSE'
      ')')
    RefreshSQL.Strings = (
      'SELECT fd1.CODE, '
      '       fd1.FACT1DOC, '
      '       fd1.PLANSUM, '
      '       fd1.FACTSUM, '
      '       fd1.CORRECT, '
      '       fd1.HOUSE,h.nomer,s.name StName'
      'FROM FACT1DOCLIST fd1'
      'left outer join house h on h.code=fd1.house'
      'left outer join street s on s.code=h.street'
      ''
      ' WHERE '
      '        FD1.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT fd1.CODE,'
      '       fd1.FACT1DOC, '
      '       fd1.PLANSUM, '
      '       fd1.FACTSUM, '
      '       fd1.CORRECT, '
      '       fd1.HOUSE,h.nomer,s.name StName,'
      '       fd1.SQ1, fd1.SQ2,(fd1.SQ1+fd1.SQ2) SQ3,'
      '       fd1.KONTRAGENT, k.NAME KNAME'
      'FROM FACT1DOCLIST fd1'
      'left outer join house h on h.code=fd1.house'
      'left outer join street s on s.code=h.street'
      'left outer join kontragent k on k.CODE = fd1.KONTRAGENT'
      'where fd1.FACT1DOC=:mas_code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_FACTDOC
    Left = 334
    Top = 515
    dcForceOpen = True
  end
  object src_FACTDOCLIST: TDataSource
    DataSet = ds_FACTDOCLIST
    Left = 46
    Top = 547
  end
  object ds_HOUSESRV: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NAME'
      'FROM HOUSESRV'
      '--where ('#39',6,8,4,7,'#39' not containing '#39','#39' || CODE || '#39','#39')')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 302
    Top = 515
  end
  object src_HOUSESRV: TDataSource
    DataSet = ds_HOUSESRV
    Left = 110
    Top = 515
  end
  object m_Srv: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 78
    Top = 451
  end
  object src_Srv: TDataSource
    DataSet = m_Srv
    Left = 46
    Top = 451
  end
  object brm1: TdxBarManager
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
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 510
    Top = 467
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
      FloatClientWidth = 97
      FloatClientHeight = 80
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_EditSumm'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_penalt'
        end>
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
      FloatLeft = 800
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AddSRV'
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
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_fill: TdxBarButton
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
      Category = 0
      Hint = #1047#1072#1087#1086#1083#1085#1080#1090#1100
      Visible = ivAlways
      OnClick = btn_fillClick
    end
    object btn_correct: TdxBarButton
      Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      OnClick = btn_correctClick
    end
    object btn_penalt: TdxBarButton
      Caption = #1057#1084#1077#1090#1072'/'#1040#1082#1090
      Category = 0
      Hint = #1057#1084#1077#1090#1072'/'#1040#1082#1090
      Visible = ivNever
      ImageIndex = 3
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
    object btn_EditSumm: TdxBarButton
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
      OnClick = btn_EditSummClick
    end
    object btn_AddSRV: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_AddSRVClick
    end
    object btn_EditSrv: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EditSrvClick
    end
    object btn_DeleteSrv: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_DeleteSrvClick
    end
  end
  object ds_Sanc: TpFIBDataSet
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 302
    Top = 547
  end
  object ds_SancSum: TpFIBDataSet
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 270
    Top = 515
  end
  object m_Title: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 206
    Top = 515
  end
  object m_Data: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 174
    Top = 515
  end
  object xl1: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    DataSet = ds_SancSum
    Dictionary = <>
    SubReport = xl_sub
    _Version = '1.6.0.3'
    Left = 238
    Top = 547
  end
  object xl_sub: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    DataSet = ds_Sanc
    Dictionary = <>
    _Version = '1.6.0.3'
    Left = 238
    Top = 515
  end
  object pm1: TPopupMenu
    Images = cmDb.iml1
    Left = 480
    Top = 152
    object N1: TMenuItem
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' <F7>'
      ImageIndex = 28
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
