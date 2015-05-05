object MatClassAddForm: TMatClassAddForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 260
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lc_1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 372
    Height = 260
    Align = alClient
    TabOrder = 0
    object txt_ParentName: TcxTextEdit
      Left = 24
      Top = 42
      TabStop = False
      Properties.AutoSelect = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = clBtnFace
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object txt_Name: TcxTextEdit
      Left = 24
      Top = 87
      Properties.OnChange = txt_NamePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object txt_FullName: TcxTextEdit
      Left = 24
      Top = 132
      TabStop = False
      Properties.AutoSelect = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = clBtnFace
      Style.HotTrack = False
      Style.TransparentBorder = True
      TabOrder = 2
      Width = 121
    end
    object btn_Cancel: TcxButton
      Left = 247
      Top = 227
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDb.iml1
      TabOrder = 9
      OnClick = btn_CancelClick
    end
    object btn_Ok: TcxButton
      Left = 123
      Top = 227
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDb.iml1
      TabOrder = 8
      OnClick = btn_OkClick
    end
    object chk_ISGROUP: TcxCheckBox
      Left = 24
      Top = 159
      Caption = #1043#1088#1091#1087#1087#1072
      Properties.ImmediatePost = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object chk_ISNAME: TcxCheckBox
      Left = 24
      Top = 186
      Caption = #1042#1082#1083#1102#1095#1072#1090#1100' '#1080#1084#1103' '#1074' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
      Properties.ImmediatePost = True
      State = cbsChecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object txt_MatName: TcxTextEdit
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Visible = False
      Width = 250
    end
    object txt_Ed: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Visible = False
      Width = 250
    end
    object txt_ED1: TcxTextEdit
      Left = 210
      Top = 159
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
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
    object grp__1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp_1Group1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object grp__1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 19
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object itm_1: TdxLayoutItem
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1075#1088#1091#1087#1087#1099' '#1088#1086#1076#1080#1090#1077#1083#1103
      CaptionOptions.Layout = clTop
      Parent = grp__1Group1
      Control = txt_ParentName
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Name: TdxLayoutItem
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = grp__1Group1
      Control = txt_Name
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm__1Item1: TdxLayoutItem
      CaptionOptions.Text = #1048#1090#1086#1075#1086#1074#1099#1081' '#1074#1080#1076' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1103
      CaptionOptions.Layout = clTop
      Parent = grp__1Group1
      Control = txt_FullName
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_Cancel: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp__1Group3
      SizeOptions.Width = 98
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_Ok: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Offsets.Right = 20
      Parent = grp__1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 98
      Control = btn_Ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grp__1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp__1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_ISGROUP: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_1Group3
      Control = chk_ISGROUP
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_ISNAME: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp__1Group1
      Control = chk_ISNAME
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object grp_1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 0
    end
    object grp_1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp_1Group1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object itm_MatName: TdxLayoutItem
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Parent = grp_1Group2
      Control = txt_MatName
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Ed: TdxLayoutItem
      CaptionOptions.Text = #1045#1076'. '#1080#1079#1084'.'
      Parent = grp_1Group2
      Control = txt_Ed
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_ED1: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = #1045#1076'. '#1080#1079#1084'.'
      Parent = grp_1Group3
      Control = txt_ED1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grp_1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp__1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
  end
end
