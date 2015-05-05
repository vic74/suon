object PublicSiteForm: TPublicSiteForm
  Left = 0
  Top = 0
  ActiveControl = Date1
  Caption = #1042#1099#1075#1088#1091#1079#1082#1072' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1089#1072#1081#1090#1072
  ClientHeight = 379
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 830
    Height = 379
    Align = alClient
    TabOrder = 0
    object Date1: TcxDateEdit
      Left = 122
      Top = 46
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
    end
    object Date2: TcxDateEdit
      Left = 122
      Top = 73
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 120
    end
    object ProgressBar: TcxProgressBar
      Left = 284
      Top = 336
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 5
      Width = 121
    end
    object Memo: TcxMemo
      Left = 284
      Top = 28
      Properties.ReadOnly = True
      Properties.ScrollBars = ssBoth
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Height = 89
      Width = 185
    end
    object cxButton1: TcxButton
      Left = 22
      Top = 112
      Width = 75
      Height = 25
      Caption = #1042#1099#1075#1088#1091#1079#1082#1072' '#1076#1072#1085#1085#1099#1093' '#1086' '#1058#1056
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 22
      Top = 143
      Width = 75
      Height = 25
      Caption = #1042#1099#1075#1088#1091#1079#1082#1072' '#1075#1088#1072#1092#1080#1082#1086#1074' '#1088#1072#1073#1086#1090
      TabOrder = 3
      OnClick = cxButton2Click
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076
      Parent = dxLayoutControl1Group1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1053#1072#1095#1072#1083#1100#1085#1072#1103' '#1076#1072#1090#1072
      Parent = dxLayoutControl1Group2
      Control = Date1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1050#1086#1085#1077#1095#1085#1072#1103' '#1076#1072#1090#1072
      Parent = dxLayoutControl1Group2
      Control = Date2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'cxProgressBar1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group3
      Control = ProgressBar
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxMemo1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group3
      Control = Memo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object XML: TXMLDocument
    Active = True
    Options = [doNodeAutoCreate, doNodeAutoIndent, doAttrNull, doAutoPrefix, doNamespaceDecl]
    Left = 376
    Top = 72
    DOMVendorDesc = 'MSXML'
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'xml'
    Left = 432
    Top = 72
  end
end
