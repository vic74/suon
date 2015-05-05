object Mat1CForm: TMat1CForm
  Left = 0
  Top = 0
  Caption = #1042#1099#1075#1088#1091#1079#1082#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' '#1074' 1'#1057
  ClientHeight = 444
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 600
    Height = 444
    Align = alClient
    TabOrder = 0
    object AllMatBox: TcxCheckBox
      Left = 34
      Top = 46
      Caption = #1042#1099#1075#1088#1091#1078#1072#1090#1100' '#1074#1089#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1099
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object FileBox1: TcxButtonEdit
      Left = 65
      Top = 73
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = FileBox1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 34
      Top = 100
      Width = 75
      Height = 25
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object ProgressBar: TcxProgressBar
      Left = 336
      Top = 401
      Align = alBottom
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 6
      Width = 121
    end
    object Memo: TcxMemo
      Left = 336
      Top = 28
      Align = alClient
      Properties.ReadOnly = True
      Properties.ScrollBars = ssBoth
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Height = 89
      Width = 185
    end
    object cxButton2: TcxButton
      Left = 34
      Top = 188
      Width = 75
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      TabOrder = 4
      OnClick = cxButton2Click
    end
    object FileBox2: TcxButtonEdit
      Left = 65
      Top = 161
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = FileBox2PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 121
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
      Parent = dxLayoutControl1Group_Root
      SizeOptions.Width = 300
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = dxLayoutControl1Group_Root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = #1042#1099#1075#1088#1091#1079#1082#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' '#1074' 1'#1057
      Parent = dxLayoutControl1Group1
      SizeOptions.Height = 100
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group3
      Control = AllMatBox
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = #1060#1072#1081#1083
      Parent = dxLayoutControl1Group3
      Control = FileBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group3
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object ProgressBar1: TdxLayoutItem
      AlignVert = avBottom
      Parent = dxLayoutControl1Group2
      Control = ProgressBar
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignVert = avClient
      Parent = dxLayoutControl1Group2
      Control = Memo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = #1047#1072#1075#1088#1091#1079#1082#1072' '#1094#1077#1085' '#1080#1079' 1'#1057
      Parent = dxLayoutControl1Group1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group4
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = #1060#1072#1081#1083
      Parent = dxLayoutControl1Group4
      Control = FileBox2
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 384
    Top = 32
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object OpenDialog: TOpenDialog
    Left = 352
    Top = 32
  end
end
