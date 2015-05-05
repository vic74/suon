object YMakeFinPlanForm: TYMakeFinPlanForm
  Left = 0
  Top = 0
  HelpContext = 101
  Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1075#1086#1076#1086#1074#1086#1075#1086' '#1092#1080#1085#1087#1083#1072#1085#1072' '#1058#1056
  ClientHeight = 444
  ClientWidth = 782
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
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 782
    Height = 444
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object mmo1: TcxMemo
      Left = 0
      Top = 151
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 16
      Height = 89
      Width = 185
    end
    object cbb_m1: TcxComboBox
      Left = 57
      Top = 31
      Properties.Items.Strings = (
        ''
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
    object msk_y1: TcxMaskEdit
      Left = 178
      Top = 31
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 1
      Text = '2011'
      Width = 49
    end
    object cbb_m2: TcxComboBox
      Left = 246
      Top = 31
      Properties.Items.Strings = (
        ''
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
      TabOrder = 2
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object msk_y2: TcxMaskEdit
      Left = 367
      Top = 31
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 3
      Text = '2011'
      Width = 49
    end
    object msk_Y: TcxMaskEdit
      Left = 57
      Top = 113
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 8
      Text = '2012'
      Width = 49
    end
    object btn_exec: TcxButton
      Left = 420
      Top = 113
      Width = 126
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      OptionsImage.Glyph.Data = {
        72010000424D7201000000000000760000002800000014000000150000000100
        040000000000FC000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFF00FFFFFFFFFFFF0000FFFFFF0B0FFFFFFFFFFF
        0000FFFFFFF0B0FFFFFFFFFF0000FFFFFFF0FB0FFFFFFFFF0000FFFFFFFF0FB0
        FFFFFFFF0000FFFFFF000B000FFFFFFF0000FFFFFFF0BF0FFFFFFFFF0000FFFF
        FFFF0BF0FFFFFFFF0000FFFFFFFF0FBF0FFFFFFF0000FFFFF0000F0000FFFFFF
        0000FFFFFF0BFBF0FFFFFFFF0000FFFFFFF0BFBF0FFFFFFF0000FFFFFFF0FBFB
        F0FFFFFF0000FFFFFFFF0000000FFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000}
      TabOrder = 13
      OnClick = btn_execClick
    end
    object chk_ob: TcxCheckBox
      Left = 416
      Top = 31
      Caption = #1054#1073#1097#1077#1089#1090#1088#1086#1081
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object chk_lift: TcxCheckBox
      Left = 416
      Top = 50
      Caption = #1051#1080#1092#1090
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object spin1: TcxSpinEdit
      Left = 199
      Top = 113
      AutoSize = False
      Properties.ImmediatePost = True
      Properties.ValueType = vtFloat
      Style.HotTrack = False
      TabOrder = 9
      Value = 15.000000000000000000
      Height = 21
      Width = 52
    end
    object spin2: TcxSpinEdit
      Left = 257
      Top = 113
      AutoSize = False
      Properties.ImmediatePost = True
      Properties.ValueType = vtFloat
      Style.HotTrack = False
      TabOrder = 10
      Value = 35.000000000000000000
      Height = 21
      Width = 695
    end
    object spin3: TcxSpinEdit
      Left = 315
      Top = 113
      AutoSize = False
      Properties.ImmediatePost = True
      Properties.ValueType = vtFloat
      Style.HotTrack = False
      TabOrder = 11
      Value = 35.000000000000000000
      Height = 21
      Width = 44
    end
    object spin4: TcxSpinEdit
      Left = 366
      Top = 113
      AutoSize = False
      Properties.ImmediatePost = True
      Properties.ValueType = vtFloat
      Style.HotTrack = False
      TabOrder = 12
      Value = 15.000000000000000000
      Height = 21
      Width = 44
    end
    object OstM: TcxComboBox
      Left = 581
      Top = 31
      Properties.Items.Strings = (
        '.....'
        #1089#1077#1085#1090#1103#1073#1088#1100
        #1086#1082#1090#1103#1073#1088#1100
        #1085#1086#1103#1073#1088#1100
        #1076#1077#1082#1072#1073#1088#1100)
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object OstY: TcxMaskEdit
      Left = 702
      Top = 31
      Style.HotTrack = False
      TabOrder = 7
      Text = '2012'
      Width = 55
    end
    object PKoef: TcxSpinEdit
      Left = 618
      Top = 113
      Style.HotTrack = False
      TabOrder = 14
      Value = 1
      Width = 61
    end
    object cxButton1: TcxButton
      Left = 679
      Top = 113
      Width = 98
      Height = 25
      Caption = #1047#1072#1075#1088'. '#1083#1080#1092#1090#1099
      TabOrder = 15
      OnClick = cxButton1Click
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = #1087#1072#1088#1072#1084#1077#1090#1088#1099' '#1076#1083#1103' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 35
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object itmlc1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089
      Parent = grlc1Group1
      Control = cbb_m1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item11: TdxLayoutItem
      Parent = grlc1Group1
      Control = msk_y1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = ' '#1087#1086' '
      Parent = grlc1Group1
      Control = cbb_m2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item13: TdxLayoutItem
      Parent = grlc1Group1
      Control = msk_y2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grlc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 4
    end
    object itm_ob: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = grlc1Group4
      Control = chk_ob
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_lift: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = grlc1Group4
      Control = chk_lift
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grlc1Group2: TdxLayoutGroup
      CaptionOptions.Text = #1087#1072#1088#1072#1084#1077#1090#1088#1099' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1076#1072#1085#1085#1099#1093
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 9
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object itmlc1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1043#1086#1076
      Parent = grlc1Group2
      Control = msk_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item14: TdxLayoutItem
      CaptionOptions.Text = '% '#1087#1086' '#1082#1074#1072#1088#1090#1072#1083#1072#1084' 1'
      Parent = grlc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 144
      Control = spin1
      ControlOptions.MinWidth = 51
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item15: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '2'
      Parent = grlc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 57
      Control = spin2
      ControlOptions.MinWidth = 51
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item16: TdxLayoutItem
      CaptionOptions.Text = '3'
      Parent = grlc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = spin3
      ControlOptions.MinWidth = 51
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmlc1Item17: TdxLayoutItem
      CaptionOptions.Text = '4'
      Parent = grlc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = spin4
      ControlOptions.MinWidth = 51
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Offsets.Left = 10
      Parent = grlc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 126
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object grlc1Group3: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 151
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxMemo1'
      CaptionOptions.Visible = False
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      Control = mmo1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1054#1089#1090#1072#1090#1086#1082
      Parent = grlc1Group1
      Visible = False
      Control = OstM
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lc1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxMaskEdit1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Visible = False
      Control = OstY
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object lc1Item3: TdxLayoutItem
      CaptionOptions.Text = '   '#1050#1086#1101#1092#1080#1094#1080#1077#1085#1090
      Parent = grlc1Group2
      Control = PKoef
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object lc1Item4: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group2
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 7
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 56
    Top = 224
    object lcl1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_m1
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_m2
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = chk_lift
        Properties.Strings = (
          'Checked')
      end
      item
        Component = msk_Y
        Properties.Strings = (
          'Text')
      end
      item
        Component = msk_y1
        Properties.Strings = (
          'Text')
      end
      item
        Component = msk_y2
        Properties.Strings = (
          'Text')
      end
      item
        Component = OstM
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = OstY
        Properties.Strings = (
          'Text')
      end
      item
        Component = spin1
        Properties.Strings = (
          'Value')
      end
      item
        Component = spin2
        Properties.Strings = (
          'Value')
      end
      item
        Component = spin3
        Properties.Strings = (
          'Value')
      end
      item
        Component = spin4
        Properties.Strings = (
          'Value')
      end>
    StorageName = 'YMakeFinPlanForm'
    Left = 28
    Top = 224
  end
  object OpenDialog: TOpenDialog
    Filter = '*.csv'
    Left = 32
    Top = 160
  end
end
