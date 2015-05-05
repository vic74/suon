object MakeDocProcessForm: TMakeDocProcessForm
  Left = 0
  Top = 0
  ActiveControl = M
  Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1092#1080#1085#1072#1085#1089#1086#1074#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
  ClientHeight = 507
  ClientWidth = 719
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
  object LayoutControl: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 719
    Height = 507
    Align = alClient
    TabOrder = 0
    object M: TcxComboBox
      Left = 70
      Top = 46
      Properties.DropDownListStyle = lsFixedList
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
      Width = 121
    end
    object Y: TcxSpinEdit
      Left = 70
      Top = 73
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 22
      Top = 173
      Width = 181
      Height = 25
      Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1058#1056
      TabOrder = 3
      OnClick = cxButton1Click
    end
    object Memo: TcxMemo
      Left = 233
      Top = 28
      Properties.ReadOnly = True
      Properties.ScrollBars = ssBoth
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Height = 452
      Width = 464
    end
    object cxButton2: TcxButton
      Left = 22
      Top = 204
      Width = 181
      Height = 25
      Caption = #1056#1072#1089#1095#1077#1090' '#1054#1048
      TabOrder = 4
      OnClick = cxButton2Click
    end
    object ProgressBar: TcxProgressBar
      Left = 233
      Top = 469
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 13
      Width = 464
    end
    object cxButton3: TcxButton
      Left = 22
      Top = 465
      Width = 181
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1073#1072#1083#1072#1085#1089' 2011 '#1054#1048
      TabOrder = 11
      OnClick = cxButton3Click
    end
    object BDRPlanBtn: TcxButton
      Left = 22
      Top = 142
      Width = 181
      Height = 25
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1041#1044#1056' ('#1087#1083#1072#1085')'
      TabOrder = 2
      OnClick = BDRPlanBtnClick
    end
    object BDRFactBtn: TcxButton
      Left = 22
      Top = 235
      Width = 181
      Height = 25
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1041#1044#1056' ('#1092#1072#1082#1090')'
      TabOrder = 5
      OnClick = BDRFactBtnClick
    end
    object M1: TcxComboBox
      Left = 73
      Top = 296
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
      TabOrder = 6
      Text = #1103#1085#1074#1072#1088#1100
      Width = 130
    end
    object Y1: TcxSpinEdit
      Left = 73
      Top = 323
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Width = 130
    end
    object M2: TcxComboBox
      Left = 73
      Top = 350
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
      TabOrder = 8
      Text = #1103#1085#1074#1072#1088#1100
      Width = 130
    end
    object Y2: TcxSpinEdit
      Left = 73
      Top = 377
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 9
      Width = 130
    end
    object cxButton4: TcxButton
      Left = 22
      Top = 404
      Width = 181
      Height = 25
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
      TabOrder = 10
      OnClick = cxButton4Click
    end
    object LayoutControlGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object PeriodGroup: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup4
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object DataGroup: TdxLayoutGroup
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076
      Parent = PeriodGroup
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = DataGroup
      Control = M
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = DataGroup
      Control = Y
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object OperationGroup: TdxLayoutGroup
      CaptionOptions.Text = #1054#1087#1077#1088#1072#1094#1080#1080
      Parent = LayoutControlGroup4
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object LayoutControlItem3: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = OperationGroup
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem5: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = OperationGroup
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object LayoutControlItem4: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxMemo1'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup1
      Control = Memo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem6: TdxLayoutItem
      Parent = LayoutControlGroup1
      Control = ProgressBar
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup4: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup5: TdxLayoutGroup
      CaptionOptions.Text = #1042#1088#1077#1084#1077#1085#1085#1099#1081' '#1092#1091#1085#1082#1094#1080#1086#1085#1072#1083
      Parent = LayoutControlGroup3
      Visible = False
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object LayoutControlItem9: TdxLayoutItem
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup5
      Control = cxButton3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem10: TdxLayoutItem
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Parent = OperationGroup
      Control = BDRPlanBtn
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem11: TdxLayoutItem
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Parent = OperationGroup
      Control = BDRFactBtn
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlGroup2: TdxLayoutGroup
      CaptionOptions.Text = #1050#1086#1084#1087#1083#1077#1082#1089#1085#1072#1103' '#1086#1073#1088#1072#1073#1086#1090#1082#1072
      Parent = LayoutControlGroup3
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object LayoutControlGroup3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem7: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094' '#1089
      Parent = LayoutControlGroup2
      Control = M1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem8: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076' '#1089
      Parent = LayoutControlGroup2
      Control = Y1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem12: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094' '#1087#1086
      Parent = LayoutControlGroup2
      Control = M2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem13: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076' '#1087#1086
      Parent = LayoutControlGroup2
      Control = Y2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlItem14: TdxLayoutItem
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup2
      Control = cxButton4
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object LayouotLook: TdxLayoutLookAndFeelList
    Left = 336
    Top = 176
    object Skin: TdxLayoutSkinLookAndFeel
    end
  end
  object XML: TXMLDocument
    Active = True
    Options = [doNodeAutoCreate, doNodeAutoIndent, doAttrNull, doAutoPrefix, doNamespaceDecl]
    Left = 408
    Top = 176
    DOMVendorDesc = 'MSXML'
  end
  object OpenDialog: TOpenDialog
    Left = 440
    Top = 176
  end
  object T: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 512
    Top = 176
  end
end
