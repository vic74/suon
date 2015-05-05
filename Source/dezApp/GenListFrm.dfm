object GenListForm: TGenListForm
  Left = 0
  Top = 0
  Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088#1099' '#1085#1086#1084#1077#1088#1086#1074' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
  ClientHeight = 586
  ClientWidth = 808
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
    Width = 808
    Height = 586
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 11
      Top = 103
      Width = 250
      Height = 200
      TabOrder = 7
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_GENLIST
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1075#1077#1085#1077#1088#1072#1090#1086#1088#1072
          DataBinding.FieldName = 'NAME'
          Width = 276
        end
        object clv1PREF: TcxGridDBColumn
          Caption = #1055#1088#1077#1092#1080#1082#1089
          DataBinding.FieldName = 'PREF'
          Width = 98
        end
        object clv1NUM: TcxGridDBColumn
          Caption = #1053#1091#1084#1077#1088#1072#1090#1086#1088
          DataBinding.FieldName = 'NUM'
          Width = 140
        end
        object clv1LEN: TcxGridDBColumn
          Caption = #1044#1083#1080#1085#1072' '#1085#1086#1084#1077#1088#1072
          DataBinding.FieldName = 'LEN'
          Width = 137
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object txt_name: TcxTextEdit
      Left = 125
      Top = 14
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object m_pref: TcxMaskEdit
      Left = 125
      Top = 36
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object spin_num: TcxSpinEdit
      Left = 396
      Top = 14
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object spin_Len: TcxSpinEdit
      Left = 396
      Top = 36
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object btn_add: TcxButton
      Left = 528
      Top = 14
      Width = 103
      Height = 20
      Caption = #1076#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 4
      OnClick = btn_addClick
    end
    object btn_edit: TcxButton
      Left = 528
      Top = 35
      Width = 103
      Height = 20
      Caption = #1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 5
      OnClick = btn_editClick
    end
    object btn_del: TcxButton
      Left = 528
      Top = 56
      Width = 103
      Height = 20
      Caption = #1091#1076#1072#1083#1080#1090#1100
      TabOrder = 6
      OnClick = btn_delClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 83
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object grlc1Group5: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object itm_name: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1086#1087#1080#1089#1072#1085#1080#1077' '#1075#1077#1085#1077#1088#1072#1090#1086#1088#1072
      Parent = grlc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 299
      Control = txt_name
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_pref: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1087#1088#1077#1092#1080#1082#1089
      Parent = grlc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 299
      Control = m_pref
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grlc1Group4: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Offsets.Left = 10
      Parent = grlc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object itm_num: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1085#1091#1084#1077#1088#1072#1090#1086#1088
      Parent = grlc1Group4
      Control = spin_num
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_len: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1076#1083#1080#1085#1072' '#1085#1086#1084#1077#1088#1072
      Parent = grlc1Group4
      Control = spin_Len
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grlc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Offsets.Left = 10
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 117
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object itm_add: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 13
      Control = btn_add
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_edit: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group3
      SizeOptions.Height = 13
      Control = btn_edit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_del: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group3
      SizeOptions.Height = 13
      Control = btn_del
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grlc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 664
    Top = 192
    object lcl1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 636
    Top = 192
  end
  object ds_GENLIST: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NAME, '
      '       PREF, '
      '       NUM, '
      '       LEN'
      'FROM GENLIST')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 328
    Top = 200
  end
  object src_GENLIST: TDataSource
    DataSet = ds_GENLIST
    Left = 358
    Top = 200
  end
end
