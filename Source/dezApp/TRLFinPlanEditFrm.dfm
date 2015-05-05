object TRLFinPlanEditForm: TTRLFinPlanEditForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1060#1080#1085#1072#1085#1089#1086#1074#1099#1081' '#1087#1083#1072#1085
  ClientHeight = 445
  ClientWidth = 296
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 296
    Height = 445
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    ExplicitHeight = 414
    object cxButton1: TcxButton
      Left = 10
      Top = 403
      Width = 130
      Height = 25
      Caption = 'OK'
      TabOrder = 11
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 146
      Top = 403
      Width = 130
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 12
      OnClick = cxButton2Click
    end
    object YSum: TcxCurrencyEdit
      Left = 22
      Top = 91
      Properties.AssignedValues.DisplayFormat = True
      Properties.OnChange = YSumPropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Width = 134
    end
    object Proc1: TcxCurrencyEdit
      Left = 78
      Top = 193
      EditValue = 15.000000000000000000
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 0
      Properties.OnChange = Proc1PropertiesChange
      Style.HotTrack = False
      TabOrder = 3
      Width = 50
    end
    object Sum1: TcxCurrencyEdit
      Left = 128
      Top = 193
      Properties.DisplayFormat = '0.00'
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 4
      Width = 134
    end
    object Proc2: TcxCurrencyEdit
      Left = 78
      Top = 250
      EditValue = 35.000000000000000000
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 0
      Properties.OnChange = Proc1PropertiesChange
      Style.HotTrack = False
      TabOrder = 5
      Width = 50
    end
    object Sum2: TcxCurrencyEdit
      Left = 131
      Top = 250
      Properties.DisplayFormat = '0.00'
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 6
      Width = 134
    end
    object Proc3: TcxCurrencyEdit
      Left = 78
      Top = 307
      EditValue = 35.000000000000000000
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 0
      Properties.OnChange = Proc1PropertiesChange
      Style.HotTrack = False
      TabOrder = 7
      Width = 50
    end
    object Sum3: TcxCurrencyEdit
      Left = 134
      Top = 307
      Properties.DisplayFormat = '0.00'
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 8
      Width = 134
    end
    object Proc4: TcxCurrencyEdit
      Left = 78
      Top = 364
      EditValue = 15.000000000000000000
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 0
      Properties.ReadOnly = True
      Properties.OnEditValueChanged = Proc4PropertiesEditValueChanged
      TabOrder = 9
      Width = 50
    end
    object Sum4: TcxCurrencyEdit
      Left = 134
      Top = 364
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0.00'
      Properties.ReadOnly = True
      TabOrder = 10
      Width = 134
    end
    object cedt_sumOst: TcxCurrencyEdit
      Left = 22
      Top = 46
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object ced_sumAll: TcxCurrencyEdit
      Left = 22
      Top = 136
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object grp_top: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = #1047#1076#1077#1089#1100' '#1074#1099#1074#1077#1089#1090#1080' '#1091#1083#1080#1094#1091' '#1080' '#1085#1086#1084#1077#1088' '#1076#1086#1084#1072
      Parent = dxLayoutControl1Group4
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 263
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_sumOst: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1075#1086#1076#1072
      CaptionOptions.Layout = clTop
      Parent = grp_top
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 231
      Control = cedt_sumOst
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1083#1072#1085' '#1085#1072' '#1075#1086#1076
      CaptionOptions.Layout = clTop
      Parent = grp_top
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 231
      Control = YSum
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 264
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '1 '#1082#1074#1072#1088#1090#1072#1083
      Parent = dxLayoutControl1Group3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 100
      Control = Proc1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      Parent = dxLayoutControl1Group3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      Control = Sum1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 265
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '2 '#1082#1074#1072#1088#1090#1072#1083
      Parent = dxLayoutControl1Group5
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 103
      Control = Proc2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      Control = Sum2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 250
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '3 '#1082#1074#1072#1088#1090#1072#1083
      Parent = dxLayoutControl1Group6
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      Control = Proc3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      Control = Sum3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 250
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '4 '#1082#1074#1072#1088#1090#1072#1083
      Parent = dxLayoutControl1Group7
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      Control = Proc4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object Sum4_: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      Control = Sum4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 130
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 130
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1083#1072#1085'+'#1086#1089#1090#1072#1090#1086#1082
      CaptionOptions.Layout = clTop
      Parent = grp_top
      SizeOptions.Width = 231
      Control = ced_sumAll
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 232
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      LookAndFeel.SkinName = 'Office2010Blue'
    end
  end
end
