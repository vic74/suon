object HouseFirmEditForm: THouseFirmEditForm
  Left = 0
  Top = 0
  ActiveControl = btn_Cancel
  BorderStyle = bsSizeToolWin
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
  ClientHeight = 88
  ClientWidth = 344
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
    Width = 344
    Height = 88
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 136
    ExplicitTop = 48
    ExplicitWidth = 300
    ExplicitHeight = 250
    object dt1: TcxDateEdit
      Left = 167
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object btn_Cancel: TcxButton
      Left = 217
      Top = 47
      Width = 117
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDb.iml1
      TabOrder = 2
    end
    object btn_Ok: TcxButton
      Left = 94
      Top = 47
      Width = 117
      Height = 25
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      OptionsImage.ImageIndex = 33
      OptionsImage.Images = cmDb.iml1
      TabOrder = 1
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
    object litm_date: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1074#1099#1074#1086#1076#1072' '#1089' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103
      Parent = lGrp1
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lGrplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Offsets.Top = 10
      Parent = lGrp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Padding.Top = 10
      Padding.AssignedValues = [lpavTop]
      ShowBorder = False
      Index = 1
    end
    object litm_lc1Item1: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group1
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item11: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group1
      Control = btn_Ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = dt1
        Properties.Strings = (
          'Date')
      end>
    StorageName = 'prop1'
    Left = 24
    Top = 40
  end
end
