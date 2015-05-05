object FactDateForm: TFactDateForm
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  ClientHeight = 102
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 283
    Height = 102
    Align = alClient
    TabOrder = 0
    object dt1: TcxDateEdit
      Left = 138
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object dt2: TcxDateEdit
      Left = 138
      Top = 37
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object btn_set: TcxButton
      Left = 10
      Top = 64
      Width = 261
      Height = 25
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100
      TabOrder = 2
      OnClick = btn_setClick
    end
    object gr1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itm_dt1: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1092#1072#1082#1090'. '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103
      Parent = gr1
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_dt2: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1076#1083#1103' '#1089#1072#1081#1090#1072
      Parent = gr1
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_set: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = gr1
      Control = btn_set
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
end
