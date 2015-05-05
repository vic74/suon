object LoadDataForm: TLoadDataForm
  Left = 0
  Top = 0
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1076#1072#1085#1085#1099#1093
  ClientHeight = 493
  ClientWidth = 774
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 300
    Height = 473
    Align = alLeft
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    ExplicitHeight = 478
    object D1: TcxDateEdit
      Left = 89
      Top = 58
      Style.HotTrack = False
      TabOrder = 1
      Width = 195
    end
    object cxButton1: TcxButton
      Left = 16
      Top = 79
      Width = 268
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object FileName: TcxButtonEdit
      Left = 89
      Top = 37
      Properties.Buttons = <
        item
          Default = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000008592
            99FF006090FF006090FF006090FF006090FF006090FF006090FF006090FF0060
            90FF006090FF004F77D3000D1423000000000000000000000000000000008592
            99FF78B3C3FF339FC9FF0691CDFF0691CDFF0691CDFF0691CDFF0691CDFF0691
            CDFF0691CDFF0691CDFF004F77D3000D14230000000000000000000000008592
            99FF8BB7BDFF7AAEBDFF61DAF7FF5AD5F5FF54D1F3FF4CCBF0FF44C7EEFF3DC2
            EDFF37BEEBFF30B9E9FF0691CDFF003C5A9F0000000000000000000000008592
            99FF92E7EBFF919EA5FF6BD2EBFF63DAF7FF5DD7F6FF55D1F3FF4DCDF1FF46C8
            EFFF3FC4EDFF37BFEBFF29B5E7FF004F77D3000D142300000000000000008592
            99FF94F5F8FF8BB7BDFF7AAEBDFF67DDF9FF65DCF8FF5DD6F6FF55D1F3FF4ECD
            F1FF46C8EFFF3FC4EDFF37BFEBFF0691CDFF003C5A9F00000000000000008592
            99FF94F5F8FF92E7EBFF919EA5FF6BD2EBFF67DDF9FF64DBF8FF5DD6F6FF55D1
            F3FF4DCDF1FF46C8EFFF3FC4EDFF30B6E5FF004F77D3000D1423000000008592
            99FF94F5F8FF94F5F8FF8BB7BDFF7AAEBDFF67DCF8FF67DDF9FF65DCF8FF5ED7
            F6FF56D2F4FF4ECDF1FF47C9EFFF3AC1EBFF0691CDFF004F77D3000000008592
            99FF94F5F8FF94F5F8FF92E7EBFF8BB7BDFF859299FF859299FF859299FF8592
            99FF859299FF859299FF859299FF859299FF859299FF859299FF000000008592
            99FF94F5F8FF94F5F8FF94F5F8FF94F5F8FF94F5F8FF94F5F8FF94F5F8FF94F5
            F8FF94F5F8FF94F5F8FF94F5F8FF859299FF0000000000000000000000008592
            99FF94F5F8FF94F5F8FF94F5F8FF94F5F8FF94F5F8FF859299FF859299FF8592
            99FF859299FF859299FF859299FF859299FF0000000000000000000000008592
            99FF94F5F8FF94F5F8FF94F5F8FF94F5F8FF859299FF2B303253000000000000
            0000000000001A08002C722300B19D3203F7A23E10FF993202FF000000002B30
            3253859299FF859299FF859299FF859299FF2B30325300000000000000000000
            0000000000000000000022140A2D95411CC9D47F54FFA03B0CFF000000000000
            000000000000000000000000000000000000000000000000000000000000270D
            014022140A2D01010101321E1043A05326D09C421FD99D3303F8000000000000
            0000000000000000000000000000000000000000000000000000000000007D2C
            05C78D4A23AE3B1F0E5589471FB2803514BB22140A2D792500C4000000000000
            0000000000000000000000000000000000000000000000000000000000002214
            0A2D803514BB993203E9883005CC2E0F024A0200000400000000}
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = FileNamePropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 0
      Width = 195
    end
    object FileName1: TcxButtonEdit
      Left = 89
      Top = 148
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = FileName1PropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 3
      Width = 195
    end
    object M: TcxComboBox
      Left = 89
      Top = 169
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
      TabOrder = 4
      Text = #1103#1085#1074#1072#1088#1100
      Width = 195
    end
    object Y: TcxSpinEdit
      Left = 89
      Top = 190
      Properties.AssignedValues.MinValue = True
      Style.HotTrack = False
      TabOrder = 5
      Width = 195
    end
    object cxButton2: TcxButton
      Left = 16
      Top = 211
      Width = 268
      Height = 25
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1077#1085#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      TabOrder = 6
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Left = 16
      Top = 236
      Width = 268
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      TabOrder = 7
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 16
      Top = 347
      Width = 268
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1054#1048
      TabOrder = 10
      OnClick = cxButton4Click
    end
    object FileName2: TcxButtonEdit
      Left = 89
      Top = 305
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = FileName2PropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 8
      Width = 195
    end
    object FileName3: TcxButtonEdit
      Left = 10000
      Top = 10000
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = FileName3PropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
      Width = 121
    end
    object M2: TcxComboBox
      Left = 10000
      Top = 10000
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
      TabOrder = 14
      Text = #1092#1077#1074#1088#1072#1083#1100
      Visible = False
      Width = 121
    end
    object Y2: TcxSpinEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 15
      Visible = False
      Width = 121
    end
    object Srv: TcxComboBox
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 16
      Text = 'Srv'
      Visible = False
      Width = 121
    end
    object cxButton5: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1041#1044#1056' '#1092#1072#1082#1090
      TabOrder = 18
      Visible = False
      OnClick = cxButton5Click
    end
    object cxButton6: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080' '#1041#1044#1056
      TabOrder = 19
      Visible = False
      OnClick = cxButton6Click
    end
    object Srv1: TcxComboBox
      Left = 10000
      Top = 10000
      Properties.Items.Strings = (
        #1053#1077#1090' '#1091#1089#1083#1091#1075#1080
        #1058#1056' '#1086#1073#1097#1077#1089#1090#1088#1086#1081
        #1058#1056' '#1083#1080#1092#1090
        #1054#1044#1057
        #1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103
        #1058#1054' '#1086#1073#1097#1077#1089#1090#1088#1086#1081
        #1058#1054' '#1101#1083#1077#1082#1090#1088#1086#1084#1086#1085#1090#1072#1078
        #1059#1073#1086#1088#1082#1072' '#1082#1072#1073#1080#1085#1099' '#1083#1080#1092#1090#1072
        #1058#1077#1093#1086#1089#1074#1080#1076'. '#1083#1080#1092#1090#1072
        #1069#1082#1089#1087#1077#1088#1090#1080#1079#1072' '#1083#1080#1092#1090#1072
        #1040#1042#1057
        #1051#1044#1057#1057
        #1058#1054' '#1083#1080#1092#1090)
      Style.HotTrack = False
      TabOrder = 17
      Text = #1053#1077#1090' '#1091#1089#1083#1091#1075#1080
      Visible = False
      Width = 121
    end
    object cxButton7: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080' (Srv1)'
      TabOrder = 20
      Visible = False
      OnClick = cxButton7Click
    end
    object cxButton8: TcxButton
      Left = 16
      Top = 372
      Width = 268
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      TabOrder = 11
      OnClick = cxButton8Click
    end
    object BuhFileName: TcxButtonEdit
      Left = 89
      Top = 326
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = BuhFileNamePropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 9
      Width = 195
    end
    object cxButton9: TcxButton
      Left = 16
      Top = 397
      Width = 268
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1089#1087#1080#1089#1082#1072' '#1076#1086#1084#1086#1074' '#1080#1079' 1'#1057
      TabOrder = 12
      OnClick = cxButton9Click
    end
    object dxLayoutControl1Group_Root1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = #1047#1072#1075#1088#1091#1079#1082#1072' '#1090#1072#1088#1080#1092#1086#1074
      Parent = dxLayoutControl1Group_Root1
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Padding.AssignedValues = [lpavBottom]
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = #1060#1072#1081#1083
      Parent = dxLayoutControl1Group1
      Control = FileName
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = #1053#1072' '#1076#1072#1090#1091
      Parent = dxLayoutControl1Group1
      Control = D1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = #1047#1072#1075#1088#1091#1079#1082#1072' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1077#1085#1085#1099#1093' '#1076#1072#1085#1085#1099#1093' '#1080' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1081
      Parent = dxLayoutControl1Group_Root1
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = #1060#1072#1081#1083
      Parent = dxLayoutControl1Group2
      Control = FileName1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = dxLayoutControl1Group2
      Control = M
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = dxLayoutControl1Group2
      Control = Y
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      Visible = False
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      Control = cxButton3
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = #1047#1072#1075#1088#1091#1079#1082#1072' '#1076#1072#1085#1085#1099#1093' '#1080#1079' 1'#1057
      Parent = dxLayoutControl1Group_Root1
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 2
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = #1060#1072#1081#1083
      Parent = dxLayoutControl1Group3
      Control = FileName2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      CaptionOptions.Text = #1041#1091#1093'. '#1089#1087#1088#1072#1074#1082#1072
      Parent = dxLayoutControl1Group3
      Visible = False
      Control = BuhFileName
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group3
      Visible = False
      Control = cxButton4
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group3
      Control = cxButton8
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = #1047#1072#1075#1088#1091#1079#1082#1072' '#1076#1072#1085#1085#1099#1093' ('#1041#1044#1056' '#1092#1072#1082#1090')'
      Parent = dxLayoutControl1Group_Root1
      Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      Index = 3
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      CaptionOptions.Text = #1060#1072#1081#1083
      Parent = dxLayoutControl1Group4
      Control = FileName3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = dxLayoutControl1Group4
      Control = M2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = dxLayoutControl1Group4
      Control = Y2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      CaptionOptions.Text = #1059#1089#1083#1091#1075#1072
      Parent = dxLayoutControl1Group4
      Control = Srv
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      CaptionOptions.Text = #1059#1089#1083#1091#1075#1072'1'
      Parent = dxLayoutControl1Group4
      Control = Srv1
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group4
      Control = cxButton5
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group4
      Control = cxButton6
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group4
      Control = cxButton7
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      CaptionOptions.Text = 'cxButton9'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group3
      Visible = False
      Control = cxButton9
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object cxSplitter2: TcxSplitter
    Left = 300
    Top = 0
    Width = 6
    Height = 473
    HotZoneClassName = 'TcxMediaPlayer8Style'
    HotZone.SizePercent = 13
    Control = dxLayoutControl1
    ExplicitHeight = 478
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 473
    Width = 774
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = dxStatusBar1Container1
      end>
    PaintStyle = stpsUseLookAndFeel
    LookAndFeel.SkinName = 'Office2010Blue'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitTop = 478
    object dxStatusBar1Container1: TdxStatusBarContainerControl
      Left = 106
      Top = 4
      Width = 651
      Height = 13
      object Progress: TcxProgressBar
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        Transparent = True
        Width = 651
      end
    end
  end
  object dxLayoutControl3: TdxLayoutControl
    Left = 306
    Top = 0
    Width = 468
    Height = 473
    Align = alClient
    TabOrder = 3
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    ExplicitHeight = 478
    object Memo: TcxMemo
      Left = 6
      Top = 6
      Align = alClient
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      Style.TransparentBorder = True
      TabOrder = 0
      Height = 350
      Width = 454
    end
    object TreeList: TcxVirtualTreeList
      Left = 6
      Top = 362
      Width = 454
      Height = 228
      Bands = <>
      Navigator.Buttons.CustomButtons = <>
      OptionsData.Editing = False
      OptionsData.Deleting = False
      TabOrder = 1
    end
    object dxLayoutControl3Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl3SplitterItem1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = dxLayoutControl3Group_Root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxLayoutControl3Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      Parent = dxLayoutControl3Group3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      SizeOptions.Height = 350
      Control = Memo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl3Group3: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl3Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl3Item3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxVirtualTreeList2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl3Group_Root
      Control = TreeList
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object LScin: TdxLayoutLookAndFeelList
    Left = 344
    Top = 16
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      Offsets.ControlOffsetHorz = 4
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 4
      Offsets.RootItemsAreaOffsetVert = 4
    end
  end
  object OpenDBFDialog: TOpenDialog
    DefaultExt = '*.dbf'
    Left = 368
    Top = 72
  end
  object prop1: TcxPropertiesStore
    Active = False
    Components = <>
    StorageName = 'prop1'
    Left = 376
    Top = 16
  end
  object OpenXMLDialog: TOpenDialog
    DefaultExt = '*.xml'
    Left = 440
    Top = 56
  end
  object OpenTxtDialog: TOpenDialog
    DefaultExt = '*.txt'
    Left = 592
    Top = 16
  end
end
