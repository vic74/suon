object LoadFrom1CForm: TLoadFrom1CForm
  Left = 0
  Top = 0
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1076#1072#1085#1085#1099#1093' '#1080#1079' 1'#1057
  ClientHeight = 437
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 786
    Height = 437
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object StatusBar: TdxStatusBar
      Left = 0
      Top = 417
      Width = 0
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
          PanelStyle.Container = StatusBarContainer1
        end>
      PaintStyle = stpsUseLookAndFeel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      object StatusBarContainer1: TdxStatusBarContainerControl
        Left = 1
        Top = 3
        Width = 20
        Height = 16
        object ProgressBar: TcxProgressBar
          Left = 0
          Top = 0
          Align = alClient
          TabOrder = 0
          Width = 20
        end
      end
    end
    object Memo: TcxMemo
      Left = 12
      Top = 94
      Align = alClient
      Properties.ReadOnly = True
      Properties.ScrollBars = ssBoth
      Style.HotTrack = False
      TabOrder = 9
      Height = 89
      Width = 185
    end
    object Month: TcxComboBox
      Left = 62
      Top = 36
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
      Style.HotTrack = False
      TabOrder = 0
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object Year: TcxSpinEdit
      Left = 215
      Top = 36
      Style.HotTrack = False
      TabOrder = 1
      Value = 2011
      Width = 70
    end
    object FileName: TcxButtonEdit
      Left = 330
      Top = 36
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = FileNamePropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 2
      Width = 250
    end
    object cxButton1: TcxButton
      Left = 12
      Top = 69
      Width = 100
      Height = 25
      Caption = #1058#1056' '#1086#1073#1097#1077#1089#1090#1088#1086#1081
      TabOrder = 4
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 112
      Top = 69
      Width = 75
      Height = 25
      Caption = #1058#1056' '#1083#1080#1092#1090
      TabOrder = 5
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Left = 187
      Top = 69
      Width = 75
      Height = 25
      Caption = #1054#1044#1057
      TabOrder = 6
      OnClick = cxButton3Click
    end
    object Code: TcxMaskEdit
      Left = 610
      Top = 36
      Style.HotTrack = False
      TabOrder = 3
      Text = 'Code'
      Width = 80
    end
    object cxButton4: TcxButton
      Left = 262
      Top = 69
      Width = 133
      Height = 25
      Caption = #1044#1086#1084#1072' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1072#1084' '#1054#1048
      TabOrder = 7
      OnClick = cxButton4Click
    end
    object cxButton5: TcxButton
      Left = 395
      Top = 69
      Width = 75
      Height = 25
      Caption = #1056#1072#1089#1095#1077#1090' '#1054#1048
      TabOrder = 8
      OnClick = cxButton5Click
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      Parent = dxLayoutControl1Group1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094'  '
      Parent = dxLayoutControl1Group2
      Control = Month
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = '  '#1043#1086#1076'  '
      Parent = dxLayoutControl1Group2
      Control = Year
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = '   '#1060#1072#1081#1083'   '
      Parent = dxLayoutControl1Group2
      Control = FileName
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object cxCode: TdxLayoutItem
      CaptionOptions.Text = '   '#1050#1086#1076
      Parent = dxLayoutControl1Group2
      Control = Code
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      AlignHorz = ahClient
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      Parent = dxLayoutControl1Group1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group3
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group3
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group3
      Control = cxButton3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group3
      Control = cxButton4
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group3
      Control = cxButton5
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      Parent = dxLayoutControl1Group1
      Control = Memo
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object StatusBarItem: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Control = StatusBar
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 648
    Top = 128
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'txt'
    Left = 600
    Top = 112
  end
end
