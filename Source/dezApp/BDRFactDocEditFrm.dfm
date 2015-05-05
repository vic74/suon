object BDRFactDocEditForm: TBDRFactDocEditForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  ClientHeight = 176
  ClientWidth = 334
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
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 334
    Height = 176
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = llaflcl1
    object cbb_FIRM: TcxLookupComboBox
      Left = 81
      Top = 34
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_FIRM
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object cbb_MONTH: TcxComboBox
      Left = 81
      Top = 56
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
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
      TabOrder = 1
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object sp_Y: TcxSpinEdit
      Left = 81
      Top = 78
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 2
      Value = 2014
      Width = 121
    end
    object cbb_SRV: TcxLookupComboBox
      Left = 81
      Top = 100
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_HOUSESRV
      Style.HotTrack = False
      TabOrder = 3
      Width = 145
    end
    object btn_SAVE: TcxButton
      Left = 100
      Top = 148
      Width = 115
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDb.iml1
      TabOrder = 4
      OnClick = btn_SAVEClick
    end
    object btn_Cancel: TcxButton
      Left = 216
      Top = 148
      Width = 115
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDb.iml1
      TabOrder = 5
    end
    object lGrp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object litmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Parent = lGrplc1Group1
      Control = cbb_FIRM
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = lGrplc1Group1
      Control = cbb_MONTH
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = lGrplc1Group1
      Control = sp_Y
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litmlc1Item13: TdxLayoutItem
      CaptionOptions.Text = #1059#1089#1083#1091#1075#1072
      Parent = lGrplc1Group1
      Control = cbb_SRV
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lGrplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = ' '
      Parent = lGrp1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lGrplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lGrp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object litmlc1Item14: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = btn_SAVE
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litmlc1Item15: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object laflf1: TdxLayoutLookAndFeelList
    Left = 376
    Top = 24
    object llaflcl1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Properties.Strings = (
          'EditValue')
      end
      item
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 348
    Top = 24
  end
end
