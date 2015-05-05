object ShowPricazEditForm: TShowPricazEditForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
  ClientHeight = 311
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 363
    Height = 311
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = llaflaf1
    object txt_fNum: TcxTextEdit
      Left = 91
      Top = 14
      Properties.OnEditValueChanged = txt_fNumPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object dt_fData: TcxDateEdit
      Left = 91
      Top = 36
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = dt_fDataPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cbb_fShowType: TcxComboBox
      Left = 91
      Top = 58
      Properties.DropDownListStyle = lsEditFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1074#1077#1089#1085#1072
        #1086#1089#1077#1085#1100)
      Properties.OnEditValueChanged = cbb_fShowTypePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Text = #1074#1077#1089#1085#1072
      Width = 121
    end
    object msk_GenDir: TcxMaskEdit
      Left = 91
      Top = 150
      Properties.OnEditValueChanged = msk_GenDirPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 5
      Width = 196
    end
    object msk_ChiefOE: TcxMaskEdit
      Left = 91
      Top = 216
      ParentShowHint = False
      Properties.OnEditValueChanged = msk_ChiefOEPropertiesEditValueChanged
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 8
      Width = 196
    end
    object msk_ChiefTO: TcxMaskEdit
      Left = 91
      Top = 194
      Properties.OnEditValueChanged = msk_ChiefTOPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 7
      Width = 196
    end
    object txt_fStNum: TcxTextEdit
      Left = 91
      Top = 80
      Properties.OnEditValueChanged = txt_fStNumPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 3
      Width = 196
    end
    object dt_fStDate: TcxDateEdit
      Left = 91
      Top = 102
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = dt_fStDatePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 4
      Width = 196
    end
    object txt_fChiefFIN: TcxTextEdit
      Left = 91
      Top = 172
      Properties.OnEditValueChanged = txt_fChiefFINPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object txt_fCheifUO: TcxTextEdit
      Left = 91
      Top = 238
      Properties.OnEditValueChanged = txt_fCheifUOPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object btn_Save: TcxButton
      Left = 133
      Top = 285
      Width = 109
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      Enabled = False
      OptionsImage.ImageIndex = 33
      OptionsImage.Images = cmDb.iml1
      TabOrder = 10
      OnClick = btn_SaveClick
    end
    object btn_Cancel: TcxButton
      Left = 253
      Top = 285
      Width = 109
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDb.iml1
      TabOrder = 11
      OnClick = btn_CancelClick
    end
    object lGrp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object litm_lc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1053#1086#1084#1077#1088' '#1087#1088#1080#1082#1072#1079#1072
      Parent = lGrplc1Group2
      Control = txt_fNum
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1087#1088#1080#1082#1072#1079#1072
      Parent = lGrplc1Group2
      Control = dt_fData
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087
      Parent = lGrplc1Group2
      Control = cbb_fShowType
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litm_lc1Item2: TdxLayoutItem
      CaptionOptions.Text = #1043#1077#1085'. '#1076#1080#1088#1077#1082#1090#1086#1088
      Parent = lGrplc1Group1
      Control = msk_GenDir
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item3: TdxLayoutItem
      CaptionOptions.Text = #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1057#1069
      Parent = lGrplc1Group1
      Control = msk_ChiefOE
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litm_lc1Item4: TdxLayoutItem
      CaptionOptions.Text = #1058#1077#1093'. '#1076#1080#1088#1077#1082#1090#1086#1088
      Parent = lGrplc1Group1
      Control = msk_ChiefTO
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litm_lc1Item5: TdxLayoutItem
      CaptionOptions.Text = #1057#1090#1072#1085#1076#1072#1088#1090' '#8470
      Parent = lGrplc1Group2
      Control = txt_fStNum
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litm_lc1Item6: TdxLayoutItem
      CaptionOptions.Text = #1057#1090#1072#1085#1076#1072#1088#1090' '#1076#1072#1090#1072
      Parent = lGrplc1Group2
      Control = dt_fStDate
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litm_lc1Item13: TdxLayoutItem
      CaptionOptions.Text = #1060#1080#1085'. '#1076#1080#1088#1077#1082#1090#1086#1088
      Parent = lGrplc1Group1
      Control = txt_fChiefFIN
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item14: TdxLayoutItem
      CaptionOptions.Text = #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1070#1054
      Parent = lGrplc1Group1
      Control = txt_fCheifUO
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lGrplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lGrp1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lGrplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lGrp1
      ButtonOptions.Buttons = <>
      Padding.Right = 140
      Padding.AssignedValues = [lpavRight]
      Index = 0
    end
    object lGrplc1Group3: TdxLayoutGroup
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      Parent = lGrp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object litm_lc1Item15: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group3
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      Control = btn_Save
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object litm_lc1Item16: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group3
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object laflkf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 88
    object llaflaf1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
    end
  end
end
