object NGRepForm: TNGRepForm
  Left = 0
  Top = 0
  Caption = 'NGRepForm'
  ClientHeight = 721
  ClientWidth = 918
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
    Width = 918
    Height = 721
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object cbb_M: TcxComboBox
      Left = 46
      Top = 10
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
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
      TabOrder = 0
      Text = #1103#1085#1074#1072#1088#1100
      Width = 114
    end
    object ms_Y: TcxMaskEdit
      Left = 189
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 1
      Text = '2012'
      Width = 53
    end
    object btn_Exec: TcxButton
      Left = 248
      Top = 10
      Width = 106
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 2
      OnClick = btn_ExecClick
    end
    object grd1: TcxGrid
      Left = 10
      Top = 41
      Width = 898
      Height = 457
      TabOrder = 4
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1072#1085#1085#1099#1093'...'
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v1CellDblClick
        DataController.DataSource = src_HOUSENG
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cl_v1SQ
          end
          item
            Kind = skCount
            Column = cl_v1NAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cl_v1KCODE: TcxGridDBColumn
          DataBinding.FieldName = 'KCODE'
          Visible = False
        end
        object cl_v1NAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'NAME'
          Width = 356
        end
        object cl_v1CNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1076#1086#1075#1086#1074#1086#1088#1086#1074
          DataBinding.FieldName = 'CNT'
          Width = 111
        end
        object cl_v1SQ: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'SQ'
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 10
      Top = 516
      Width = 898
      Height = 195
      TabOrder = 5
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1072#1085#1085#1099#1093'...'
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cl_v2SQ
          end
          item
            Kind = skCount
            Column = cl_v2NAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cl_v2KCODE: TcxGridDBColumn
          DataBinding.FieldName = 'KCODE'
          Visible = False
        end
        object cl_v2SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 177
        end
        object cl_v2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 37
        end
        object cl_v2NAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'NAME'
          Width = 200
        end
        object cl_v2NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 303
        end
        object cl_v2SQ: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'SQ'
          Width = 109
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object btn_Excel: TcxButton
      Left = 360
      Top = 10
      Width = 25
      Height = 25
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      TabOrder = 3
      OnClick = btn_ExcelClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp_lc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 18
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grp_lc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object grp_lc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 195
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 3
    end
    object spl_1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object itm_lc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = grp_lc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 150
      Control = cbb_M
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1075#1086#1076
      Parent = grp_lc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 76
      Control = ms_Y
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_lc1Item12: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 106
      Control = btn_Exec
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_lc1Item13: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_lc1Item14: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group3
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group1
      Control = btn_Excel
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
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
        Component = ms_Y
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object ds_HOUSENG: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select HG.M, HG.Y, HN.KCODE,count(HN.KCODE) CNT, HN.NAME, sum(HN' +
        '.TOTAL) SQ'
      'from HOUSENG HG'
      'left outer join HOUSENGLIST HN on HN.HOUSENG = HG.CODE'
      'where HG.M = :M and'
      '      HG.Y = :Y and'
      '      HN.NACH <> 0'
      'group by HN.NAME, HG.M, HG.Y, HN.KCODE'
      '--having count(HN.KCODE) >1')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 168
    Top = 344
  end
  object src_HOUSENG: TDataSource
    DataSet = ds_HOUSENG
    Left = 196
    Top = 344
  end
  object ds: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select HG.M, HG.Y, S.NAME SNAME, H.NOMER, HN.KCODE, HN.NAME, HN.' +
        'NOTE, sum(HN.TOTAL) SQ'
      'from HOUSENG HG'
      'left outer join HOUSENGLIST HN on HN.HOUSENG = HG.CODE'
      'left outer join HOUSE H on H.CODE = HN.HOUSE'
      'left outer join STREET S on S.CODE = H.STREET'
      'where HG.M = :M and'
      '      HG.Y = :Y and'
      '      HN.KCODE = :KCODE and'
      '      HN.NACH <> 0'
      'group by S.NAME, H.NOMER,HN.NAME, HG.M, HG.Y, HN.KCODE, HN.NOTE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 259
    Top = 592
  end
  object src_ds: TDataSource
    DataSet = ds
    Left = 288
    Top = 592
  end
end
