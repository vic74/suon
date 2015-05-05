object AddMatTOForm: TAddMatTOForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1099
  ClientHeight = 264
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 353
    Height = 264
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object cbb_mat: TcxLookupComboBox
      Left = 10
      Top = 28
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end
        item
          MinWidth = 0
          Width = 20
          FieldName = 'ED'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'PRICE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_smat
      Properties.OnChange = cbb_matPropertiesChange
      Properties.OnEditValueChanged = cbb_matPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Width = 310
    end
    object sp_Quantity: TcxSpinEdit
      Left = 79
      Top = 68
      Properties.ImmediatePost = True
      Properties.ValueType = vtFloat
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object sp_Price: TcxSpinEdit
      Left = 79
      Top = 95
      Properties.ImmediatePost = True
      Properties.ValueType = vtFloat
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object txt_ED: TcxTextEdit
      Left = 79
      Top = 122
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object txt_Note: TcxTextEdit
      Left = 10
      Top = 180
      Style.HotTrack = False
      TabOrder = 4
      Width = 245
    end
    object btn_Save: TcxButton
      Left = 151
      Top = 207
      Width = 93
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDb.iml1
      TabOrder = 5
      OnClick = btn_SaveClick
    end
    object btn_Cancel: TcxButton
      Left = 250
      Top = 207
      Width = 93
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDb.iml1
      TabOrder = 6
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object litm_lc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1052#1072#1090#1077#1088#1080#1072#1083
      CaptionOptions.Layout = clTop
      Parent = grp1
      Control = cbb_mat
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item2: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086
      Parent = lGrplc1Group1
      Control = sp_Quantity
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item3: TdxLayoutItem
      CaptionOptions.Text = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      Parent = lGrplc1Group1
      Control = sp_Price
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item4: TdxLayoutItem
      CaptionOptions.Text = #1045#1076'. '#1080#1079#1084'.'
      Parent = lGrplc1Group1
      Control = txt_ED
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litm_lc1Item5: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = grp1
      Control = txt_Note
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lGrplc1Group1: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lGrplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object litm_lc1Item11: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = btn_Save
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item12: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object ds_CLASSMAT: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE,'
      '       TRIM(FULLNAME) NAME,'
      '       ED, '
      '       PRICE'
      'FROM CLASSMAT'
      'where ISGROUP=0'
      'order by TRIM(FULLNAME)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 401
    Top = 468
  end
  object src_smat: TDataSource
    DataSet = ds_CLASSMAT
    Left = 373
    Top = 469
  end
end
