object IPUFactBdrEditForm: TIPUFactBdrEditForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
  ClientHeight = 293
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 337
    Height = 293
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = llaflcf1
    ExplicitLeft = 120
    ExplicitTop = 136
    ExplicitWidth = 300
    ExplicitHeight = 250
    object cbb_Street: TcxLookupComboBox
      Left = 56
      Top = 68
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_STREET
      Properties.OnEditValueChanged = cbb_StreetPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Width = 145
    end
    object dt1: TcxDateEdit
      Left = 56
      Top = 41
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cbb_House: TcxLookupComboBox
      Left = 56
      Top = 95
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NOMER'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_HOUSE
      Style.HotTrack = False
      TabOrder = 2
      Width = 145
    end
    object sp_Summa: TcxSpinEdit
      Left = 56
      Top = 122
      Properties.ValueType = vtFloat
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object mmo1: TcxMemo
      Left = 20
      Top = 167
      Style.HotTrack = False
      TabOrder = 4
      Height = 89
      Width = 185
    end
    object btn_Cancel: TcxButton
      Left = 216
      Top = 258
      Width = 111
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDb.iml1
      TabOrder = 6
    end
    object btn_Ok: TcxButton
      Left = 99
      Top = 258
      Width = 111
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDb.iml1
      TabOrder = 5
      OnClick = btn_OkClick
    end
    object lGrp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lGrplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = ' '
      Parent = lGrp1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lGrplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lGrp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object litm_lc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = lGrplc1Group1
      Control = cbb_Street
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1044#1072#1090#1072
      Parent = lGrplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1044#1086#1084
      Parent = lGrplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 156
      Control = cbb_House
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litm_lc1Item13: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1057#1091#1084#1084#1072
      Parent = lGrplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = sp_Summa
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litm_lc1Item14: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = lGrplc1Group1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 71
      Control = mmo1
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litm_lc1Item15: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item16: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = btn_Ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object laflf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object llaflcf1: TdxLayoutCxLookAndFeel
    end
  end
end
