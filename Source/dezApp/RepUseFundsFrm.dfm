object RepUseFundsForm: TRepUseFundsForm
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090' '#1086' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1080' '#1080' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1080' '#1076#1077#1085#1077#1078#1085#1099#1093' '#1089#1088#1077#1076#1089#1090#1074
  ClientHeight = 661
  ClientWidth = 894
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
    Width = 894
    Height = 661
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 10
      Top = 122
      Width = 864
      Height = 504
      TabOrder = 13
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = v1CustomDrawCell
        DataController.DataSource = src_mT1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object clv1F: TcxGridDBColumn
          DataBinding.FieldName = 'F'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1Num: TcxGridDBColumn
          Caption = #8470' '#1087'\'#1087
          DataBinding.FieldName = 'Nomer'
          Width = 60
        end
        object clv1Name: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1090#1072#1090#1100#1080
          DataBinding.FieldName = 'Name'
          Width = 350
        end
        object clv1R: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' ('#1088#1091#1073')'
          DataBinding.FieldName = 'FactSum'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 97
        end
        object clv1FactSum: TcxGridDBColumn
          Caption = #1085#1072' '#1084'2 ('#1088#1091#1073')'
          DataBinding.FieldName = 'M2Sum'
          Width = 87
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object msk_Y: TcxMaskEdit
      Left = 66
      Top = 47
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 0
      Width = 67
    end
    object cbb_m1: TcxComboBox
      Left = 66
      Top = 74
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
      TabOrder = 1
      Text = #1103#1085#1074#1072#1088#1100
      Width = 69
    end
    object cbb_m2: TcxComboBox
      Left = 158
      Top = 74
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
      Width = 96
    end
    object cbb_street: TcxLookupComboBox
      Left = 296
      Top = 47
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
      Properties.ListSource = src_STREET
      Properties.OnEditValueChanged = cbb_streetPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 3
      Width = 198
    end
    object cbb_house: TcxLookupComboBox
      Left = 296
      Top = 74
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
          FieldName = 'NOMER'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_HOUSE
      Style.HotTrack = False
      TabOrder = 4
      Width = 198
    end
    object btn_exec: TcxButton
      Left = 500
      Top = 47
      Width = 99
      Height = 45
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_execClick
    end
    object btn_xls: TcxButton
      Left = 605
      Top = 47
      Width = 62
      Height = 45
      Caption = 'Excel'
      OptionsImage.Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFF
        0000FFFFFF000000000000000000000000000000000000000000000000000000
        000000000000808000808000808000808000000000FFFFFF0000FFFFFF000000
        808080808080808080808080808080808080808080808080000000808000FFFF
        00FFFF00FFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFF000000FFFF008080
        00808000808000808000808000000000808000FFFF00FFFF00FFFFFF000000FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF000000FFFF0080800080800080
        8000000000808000FFFF00FFFF00FFFFFF000000808000000000FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00808000000000808000FFFF00
        FFFF00FFFFFF000000000000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000808000FFFF00FFFF00FFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000808000FFFF00FFFF00FFFFFF000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF000000808000FFFF00FF
        FF00FFFFFF000000808000808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFF000000808000FFFF00FFFF00FFFFFF000000FFFF00
        808000808000808080000000FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        000000808000FFFF00FFFF00FFFFFF000000FFFFFF000000FFFF008080008080
        00808080000000FFFFFFFFFFFFFFFFFF0000FFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFF00FFFF00FFFF00FFFF0000
        0000FFFFFFFFFFFF0000FFFFFF000000000000000000000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_xlsClick
    end
    object btn_file: TcxButtonEdit
      Left = 10000
      Top = 10000
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btn_filePropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 371
    end
    object ms_Y1: TcxMaskEdit
      Left = 10000
      Top = 10000
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 7
      Text = '2012'
      Visible = False
      Width = 67
    end
    object btn_AutoXls: TcxButton
      Left = 10000
      Top = 10000
      Width = 133
      Height = 25
      HelpContext = 700
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 12
      Visible = False
      OnClick = btn_AutoXlsClick
    end
    object chk_arhiv: TcxCheckBox
      Left = 10000
      Top = 10000
      Caption = #1040#1088#1093#1080#1074#1080#1088#1086#1074#1072#1090#1100
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Width = 115
    end
    object Name_check: TcxCheckBox
      Left = 10000
      Top = 10000
      Caption = #1050#1086#1076#1099' '#1091#1083#1080#1094' '#1074' '#1080#1084#1077#1085#1080' '#1092#1072#1081#1083#1086#1074
      Style.HotTrack = False
      TabOrder = 9
      Visible = False
      Width = 175
    end
    object Recreate_check: TcxCheckBox
      Left = 10000
      Top = 10000
      Caption = #1055#1077#1088#1077#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Style.HotTrack = False
      TabOrder = 10
      Visible = False
      Width = 121
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1086#1090#1095#1077#1090#1072
      LayoutLookAndFeel = lcl1
      Parent = grp_lc1Group1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 53
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grplc1Group2: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object itm_Y: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1043#1086#1076
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 111
      Control = msk_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itm_m1: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094' '#1089
      Parent = grplc1Group3
      SizeOptions.Width = 113
      Control = cbb_m1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_m2: TdxLayoutItem
      CaptionOptions.Text = #1087#1086
      Parent = grplc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 113
      Control = cbb_m2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grplc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = grplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 234
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_house: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      Parent = grplc1Group4
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 45
      SizeOptions.Width = 99
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_xls: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 45
      SizeOptions.Width = 62
      Control = btn_xls
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grp_lc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = lcl1
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object grp_lc1Group2: TdxLayoutGroup
      CaptionOptions.Text = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072' '#1092#1072#1081#1083#1086#1074
      LayoutLookAndFeel = lcl1
      Parent = grp_lc1Group1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object itm_lc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1044#1080#1088#1077#1082#1090#1086#1088#1080#1103' '#1076#1083#1103' '#1092#1072#1081#1083#1086#1074
      LayoutLookAndFeel = lcl1
      Parent = grp_lc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 501
      Control = btn_file
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_lc1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1043#1086#1076
      Parent = grp_lc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = ms_Y1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 133
      Control = btn_AutoXls
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grp_lc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_lc1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itm_lc1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 115
      Control = chk_arhiv
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grp_lc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_lc1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group4
      Control = Name_check
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lc1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = grp_lc1Group4
      Control = Recreate_check
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 664
    Top = 136
    object lcl1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = btn_file
        Properties.Strings = (
          'Text')
      end
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
        Component = chk_arhiv
        Properties.Strings = (
          'Checked')
      end
      item
        Component = msk_Y
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 636
    Top = 136
  end
  object ds_STREET: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NAME'
      'FROM STREET'
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSet_ID = 1
    Description = 'Simple STREET'
    Left = 656
    Top = 192
    poApplyRepositary = True
  end
  object src_STREET: TDataSource
    DataSet = ds_STREET
    Left = 688
    Top = 192
  end
  object src_HOUSE: TDataSource
    DataSet = ds_HOUSE
    Left = 584
    Top = 160
  end
  object ds_HOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NOMER,'
      '       Street'
      'FROM HOUSE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 552
    Top = 160
    poApplyRepositary = True
  end
  object mT1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 400
    Top = 168
  end
  object src_mT1: TDataSource
    DataSet = ds_Report
    Left = 429
    Top = 168
  end
  object xl1: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    DataSet = ds_Report
    Dictionary = <
      item
      end>
    _Version = '1.6.0.3'
    Left = 400
    Top = 216
  end
  object dlg_1: TcxShellBrowserDialog
    ShowInfoTips = True
    Left = 432
    Top = 216
  end
  object ds_TRLFINPLAN: TpFIBDataSet
    SelectSQL.Strings = (
      'select H.Code HOUSE, DU.NAME DUNAME, S.NAME, H.NOMER,'
      '       iif(S.KDEZ is null, 0, S.KDEZ) KDEZ'
      'from HOUSE H '
      'left outer join STREET S on S.CODE = H.STREET'
      'left outer join DU on DU.CODE = H.DU'
      'where H.A=1'
      'order by H.DU, S.NAME, H.NOMER')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 552
    Top = 216
  end
  object ds_TRWORKBDR: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT TF.ZD DATA,'
      '       TF.KONTRAGENT, k.name KNAME,'
      '       TF.NOTE,'
      
        '       TF.MLIST, m.name ||iif(TF.DPLACE IS NULL, '#39#39','#39'  ['#39'||TF.DP' +
        'LACE||'#39']'#39') MNAME,'
      '       TF.SUMMA, (TF.SUMMA / h.TOTAL_SQ) area'
      'FROM TRFACT TF'
      'left outer join kontragent k on k.code=tf.kontragent'
      'left outer join mlist m on m.code=tf.mlist'
      'left outer join house h on h.CODE = :house'
      'where tf.ZD between :d1 and :d2 and tf.house=:house'
      'order by ZD')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 552
    Top = 272
  end
  object xl_sub: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    DataSet = ds_TRWORKBDR
    Dictionary = <>
    Options = [xlroTotalsAsFormula, xlroVisibleWhenError, xlroHourCursor]
    SubReport = xl1
    _Version = '1.9.0.2'
    Left = 400
    Top = 264
  end
  object ds_TRLFACT: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT TF.ZD DATA,'
      '       TF.KONTRAGENT, k.name KNAME,'
      '       TF.NOTE,'
      
        '       TF.MLIST, m.name ||iif(TF.DPLACE IS NULL, '#39#39','#39'  ['#39'||TF.DP' +
        'LACE||'#39']'#39') MNAME,'
      '       TF.SUMMA, (TF.SUMMA / h.TOTAL_SQ) area'
      'FROM TRLFACT TF'
      'left outer join kontragent k on k.code=tf.kontragent'
      'left outer join mlist m on m.code=tf.mlist'
      'left outer join house h on h.CODE = :house'
      'where tf.ZD between :d1 and :d2 and tf.house=:house'
      'order by ZD')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 552
    Top = 320
  end
  object xl_subL: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    DataSet = ds_TRLFACT
    Dictionary = <>
    Options = [xlroTotalsAsFormula, xlroVisibleWhenError, xlroHourCursor]
    SubReport = xl_sub
    _Version = '1.9.0.2'
    Left = 400
    Top = 312
  end
  object ds_Report: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from CreateFinReport1(:m1,:m2,:y,:house)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 552
    Top = 408
  end
end
