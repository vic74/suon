object UNFORESEENForm: TUNFORESEENForm
  Left = 0
  Top = 0
  HelpContext = 110
  BorderStyle = bsSizeToolWin
  ClientHeight = 127
  ClientWidth = 257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 257
    Height = 127
    Align = alClient
    TabOrder = 0
    object msk_year: TcxMaskEdit
      Left = 90
      Top = 37
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '([12][0-9])? [0-9][0-9]'
      Properties.MaxLength = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 82
    end
    object btn1: TcxButton
      Left = 42
      Top = 74
      Width = 75
      Height = 25
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1085#1077#1087#1088'. '#1088#1072#1073#1086#1090#1099
      TabOrder = 2
      OnClick = btn1Click
    end
    object cbb1: TcxComboBox
      Left = 10
      Top = 10
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1054#1073#1097#1077#1089#1090#1088#1086#1081
        #1051#1080#1092#1090)
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Text = #1054#1073#1097#1077#1089#1090#1088#1086#1081
      Width = 121
    end
    object gr1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = 'cxComboBox1'
      CaptionOptions.Visible = False
      Parent = gr1
      Control = cbb1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = #1043#1086#1076
      Parent = gr1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 124
      Control = msk_year
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item11: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Offsets.Top = 10
      Parent = gr1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 172
      Control = btn1
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb1
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = msk_year
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 216
    Top = 32
  end
end
