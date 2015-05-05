object GetGraphPeriodForm: TGetGraphPeriodForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 107
  ClientWidth = 213
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 213
    Height = 107
    Align = alClient
    TabOrder = 0
    object cbb_month: TcxComboBox
      Left = 46
      Top = 10
      Properties.DropDownListStyle = lsEditFixedList
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
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object msk_Y: TcxMaskEdit
      Left = 46
      Top = 37
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Text = '2011'
      Width = 121
    end
    object btn_ok: TcxButton
      Left = 10
      Top = 64
      Width = 75
      Height = 25
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      TabOrder = 2
      OnClick = btn_okClick
    end
    object btn_cancel: TcxButton
      Left = 111
      Top = 64
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 3
    end
    object gr1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itm_month: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = gr1
      Control = cbb_month
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Y: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = gr1
      Control = msk_Y
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = gr1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 190
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 89
      Control = btn_ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item11: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = #1054#1090#1084#1077#1085#1080#1090#1100
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 89
      Control = btn_cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_month
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = msk_Y
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 8
    Top = 16
  end
end
