object VentSmetalForm: TVentSmetalForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'VentSmetalForm'
  ClientHeight = 112
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 361
    Height = 112
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    ExplicitWidth = 858
    ExplicitHeight = 588
    object dt1: TcxDateEdit
      Left = 65
      Top = 10
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object dt2: TcxDateEdit
      Left = 213
      Top = 10
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object sp_Tarif: TcxSpinEdit
      Left = 65
      Top = 37
      Properties.ValueType = vtFloat
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object btn_Print: TcxButton
      Left = 10
      Top = 73
      Width = 75
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = cmDb.iml1
      TabOrder = 3
      OnClick = btn_PrintClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object litm_lc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089':'
      Parent = lGrplc1Group3
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1087#1086':'
      Parent = lGrplc1Group3
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1058#1072#1088#1080#1092': '
      Parent = lGrplc1Group1
      Control = sp_Tarif
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object lGrplc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object lGrplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lGrplc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object litm_lc1Item13: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = btn_Print
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 248
    Top = 32
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = dt1
        Properties.Strings = (
          'Date')
      end
      item
        Component = dt2
        Properties.Strings = (
          'Date')
      end
      item
        Component = sp_Tarif
        Properties.Strings = (
          'Value')
      end>
    StorageName = 'prop1'
    Left = 216
    Top = 32
  end
end
