object AutoCreateWorkForm: TAutoCreateWorkForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1072#1088#1103#1076#1086#1074
  ClientHeight = 190
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 305
    Height = 190
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object cbb_month: TcxComboBox
      Left = 10000
      Top = 10000
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
      TabOrder = 4
      Text = #1103#1085#1074#1072#1088#1100
      Visible = False
      Width = 121
    end
    object dt1: TcxDateEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 3
      Visible = False
      Width = 121
    end
    object btn_create: TcxButton
      Left = 10
      Top = 155
      Width = 131
      Height = 25
      Caption = #1057#1086#1079#1076#1072#1090#1100
      TabOrder = 1
      OnClick = btn_createClick
    end
    object dtn1: TcxDateNavigator
      Left = 10
      Top = 10
      Width = 147
      Height = 129
      Touch.ParentTabletOptions = False
      Touch.TabletOptions = [toPressAndHold]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LookAndFeel.NativeStyle = False
      TabOrder = 0
    end
    object btn_cancel: TcxButton
      Left = 164
      Top = 155
      Width = 131
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      TabOrder = 2
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itm_dtn1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxDateNavigator1'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 284
      Control = dtn1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group1: TdxLayoutGroup
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itm_create: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 131
      Control = btn_create
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_cancel: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      SizeOptions.Width = 131
      Control = btn_cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_month: TdxLayoutItem
      CaptionOptions.Text = #1084#1077#1089#1103#1094
      Control = cbb_month
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itm_dt1: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = #1076#1072#1090#1072
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = -1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Top = 8
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
end
