object ControlNGPForm: TControlNGPForm
  Left = 0
  Top = 0
  Caption = #1050#1086#1085#1090#1088#1086#1083#1100' '#1087#1083#1086#1097#1072#1076#1077#1081' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1072#1084' '#1053#1046#1055
  ClientHeight = 752
  ClientWidth = 1000
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
    Width = 1000
    Height = 752
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object cbb_m1: TcxComboBox
      Left = 61
      Top = 10
      Properties.DropDownListStyle = lsFixedList
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
      Width = 121
    end
    object ms_Y1: TcxMaskEdit
      Left = 188
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 1
      Text = '2012'
      Width = 121
    end
    object cbb_m2: TcxComboBox
      Left = 268
      Top = 10
      Properties.DropDownListStyle = lsFixedList
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
      TabOrder = 2
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object ms_Y2: TcxMaskEdit
      Left = 395
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 3
      Text = '2012'
      Width = 121
    end
    object btn_exec: TcxButton
      Left = 455
      Top = 10
      Width = 75
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = cmDb.iml1
      TabOrder = 4
      OnClick = btn_execClick
    end
    object grd1: TcxGrid
      Left = 10
      Top = 41
      Width = 250
      Height = 200
      TabOrder = 6
      LockedStateImageOptions.Effect = lsieLight
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1083#1091#1095#1072#1077#1084' '#1076#1072#1085#1085#1099#1077'...'
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = vb1CellDblClick
        DataController.DataSource = src_md
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
          end>
      end
      object l1: TcxGridLevel
        GridView = vb1
      end
    end
    object grd2: TcxGrid
      Left = 20
      Top = 552
      Width = 250
      Height = 200
      TabOrder = 7
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1083#1091#1095#1072#1077#1084' '#1076#1072#1085#1085#1099#1077'...'
      object vb2: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_md1
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
        Bands = <
          item
          end>
      end
      object l2: TcxGridLevel
        GridView = vb2
      end
    end
    object btn_Excel: TcxButton
      Left = 582
      Top = 10
      Width = 25
      Height = 25
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      TabOrder = 5
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
      SizeOptions.Height = 19
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
      CaptionOptions.Text = ' '
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 221
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object itm_m1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089
      Parent = grp_lc1Group1
      Control = cbb_m1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Y1: TdxLayoutItem
      CaptionOptions.Text = 'cxMaskEdit1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 54
      Control = ms_Y1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_m2: TdxLayoutItem
      CaptionOptions.Text = ' '#1087#1086
      Parent = grp_lc1Group1
      Control = cbb_m2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_Y2: TdxLayoutItem
      CaptionOptions.Text = 'cxMaskEdit1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group1
      SizeOptions.Width = 54
      Control = ms_Y2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 121
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object spl_1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_lc1Item1: TdxLayoutItem
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
      Index = 5
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
        Component = cbb_m1
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_m2
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = ms_Y1
        Properties.Strings = (
          'Text')
      end
      item
        Component = ms_Y2
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object md: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 736
    Top = 256
  end
  object src_md: TDataSource
    DataSet = md
    Left = 768
    Top = 256
  end
  object ds_HOUSENG: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select HG.M, HG.Y, HN.HOUSE, H.NOMER, S.NAME SNAME, sum(HN.TOTAL' +
        ') SQ'
      'from HOUSENG HG'
      'left outer join HOUSENGLIST HN on HN.HOUSENG = HG.CODE'
      'left outer join HOUSE H on H.CODE = HN.HOUSE'
      'left outer join STREET S on S.CODE = H.STREET'
      'where HG.M = :M and HG.Y = :Y and HN.NACH <> 0'
      'group by S.NAME,H.NOMER,HN.HOUSE,HG.M, HG.Y')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 704
    Top = 256
  end
  object strep1: TcxStyleRepository
    Left = 672
    Top = 120
    PixelsPerInch = 96
    object styl_select1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object styl_fakt: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
  end
  object ds: TpFIBDataSet
    SelectSQL.Strings = (
      'select HG.M, HG.Y, HN.DCODE, HN.NAME, HN.NOTE, sum(HN.TOTAL) SQ'
      'from HOUSENG HG'
      'left outer join HOUSENGLIST HN on HN.HOUSENG = HG.CODE'
      'left outer join HOUSE H on H.CODE = HN.HOUSE'
      'left outer join STREET S on S.CODE = H.STREET'
      'where HG.M = :M and'
      '      HG.Y = :Y and'
      '      HN.HOUSE = :HOUSE and HN.NACH <> 0'
      'group by HN.DCODE, HN.NOTE, HN.NAME, HG.M, HG.Y ')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 304
    Top = 592
  end
  object md1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 344
    Top = 592
  end
  object src_md1: TDataSource
    DataSet = md1
    Left = 384
    Top = 592
  end
end
