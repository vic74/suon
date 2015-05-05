object LoadSmetaShablonForm: TLoadSmetaShablonForm
  Left = 0
  Top = 0
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1096#1072#1073#1083#1086#1085#1072' '#1089#1084#1077#1090#1099
  ClientHeight = 360
  ClientWidth = 473
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 473
    Height = 360
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object FileName: TcxButtonEdit
      Left = 128
      Top = 30
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = FileNamePropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 376
      Top = 28
      Width = 75
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object Memo: TcxMemo
      Left = 10
      Top = 71
      Align = alClient
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 2
      Height = 89
      Width = 185
    end
    object ProgressBar: TcxProgressBar
      Left = 10
      Top = 329
      TabOrder = 3
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' '#1092#1072#1081#1083#1072
      Parent = dxLayoutControl1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Control = FileName
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxMemo1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      Control = Memo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'cxProgressBar1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      Control = ProgressBar
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object LLook: TdxLayoutLookAndFeelList
    Left = 24
    Top = 80
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'txt'
    Left = 64
    Top = 80
  end
end
