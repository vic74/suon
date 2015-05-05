object ObjAkt2Form: TObjAkt2Form
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1040#1082#1090' '#1086#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086#1074#1072#1085#1080#1103' '#1089#1082#1088#1099#1090#1099#1093' '#1088#1072#1073#1086#1090
  ClientHeight = 569
  ClientWidth = 574
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 574
    Height = 569
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxlytcxlkndfl1
    object txt_FIO: TcxTextEdit
      Left = 22
      Top = 28
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object mmo_workList: TcxMemo
      Left = 22
      Top = 103
      Style.HotTrack = False
      TabOrder = 1
      Height = 60
      Width = 566
    end
    object mmo_matList: TcxMemo
      Left = 22
      Top = 217
      Style.HotTrack = False
      TabOrder = 2
      Height = 60
      Width = 566
    end
    object mmo_quality: TcxMemo
      Left = 22
      Top = 331
      Style.HotTrack = False
      TabOrder = 3
      Height = 60
      Width = 566
    end
    object mmo_resolution: TcxMemo
      Left = 22
      Top = 427
      Style.HotTrack = False
      TabOrder = 4
      Height = 60
      Width = 516
    end
    object btn_Save: TcxButton
      Left = 378
      Top = 523
      Width = 85
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 33
      OptionsImage.Images = cmDb.iml1
      TabOrder = 5
      OnClick = btn_SaveClick
    end
    object btn_Cancel: TcxButton
      Left = 479
      Top = 523
      Width = 85
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDb.iml1
      TabOrder = 6
    end
    object lgrp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lgrpLControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = #1050#1086#1084#1080#1089#1089#1080#1103' '#1074' '#1089#1086#1089#1090#1072#1074#1077':'
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object LItemLControl1Item1: TdxLayoutItem
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1092#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086', '#1076#1086#1083#1078#1085#1086#1089#1090#1100
      CaptionOptions.Layout = clBottom
      Parent = lgrpLControl1Group1
      Control = txt_FIO
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item11: TdxLayoutItem
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1082#1088#1099#1090#1099#1093' '#1088#1072#1073#1086#1090
      CaptionOptions.Layout = clBottom
      Parent = lgrpLControl1Group2
      Control = mmo_workList
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = #1050' '#1086#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086#1074#1072#1085#1080#1102' '#1080' '#1087#1088#1080#1077#1084#1082#1077' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1099' '#1089#1083#1077#1076#1091#1102#1097#1080#1077' '#1088#1072#1073#1086#1090#1099
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lgrpLControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = #1055#1088#1080' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1088#1072#1073#1086#1090' '#1087#1088#1080#1084#1077#1085#1077#1085#1099
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object LItemLControl1Item12: TdxLayoutItem
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 
        #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074', '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081','#1080#1079#1076#1077#1083#1080#1081' '#1089' '#1091#1082#1072#1079#1072#1085#1080#1077#1084' '#1084#1072#1088#1082#1080', ' +
        #1090#1080#1087#1072', '#1082#1072#1090#1077#1075#1086#1088#1080#1080' '#1082#1072#1095#1077#1089#1090#1074#1072' '#1080' '#1090'.'#1087'.'
      CaptionOptions.Layout = clBottom
      Parent = lgrpLControl1Group3
      Control = mmo_matList
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = ' '#1055#1088#1077#1076#1098#1103#1074#1083#1077#1085#1085#1099#1077' '#1082' '#1087#1088#1080#1077#1084#1082#1077' '#1088#1072#1073#1086#1090#1099' '#1087#1088#1080#1085#1103#1090#1099' '#1089' '#1086#1094#1077#1085#1082#1086#1081' '#1082#1072#1095#1077#1089#1090#1074#1072
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object lgrpLControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = #1056#1072#1079#1088#1077#1096#1072#1077#1090#1089#1103' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086' '#1087#1086#1089#1083#1077#1076#1091#1102#1097#1080#1093' '#1088#1072#1073#1086#1090' '#1087#1086' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1091
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      Index = 4
    end
    object LItemLControl1Item13: TdxLayoutItem
      CaptionOptions.Text = 'cxMemo1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group4
      Control = mmo_quality
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item14: TdxLayoutItem
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090', '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081
      CaptionOptions.Layout = clBottom
      Parent = lgrpLControl1Group5
      Control = mmo_resolution
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object LItemLControl1Item15: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group6
      Control = btn_Save
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item16: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Offsets.Left = 10
      Parent = lgrpLControl1Group6
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dxlytlkndflst1: TdxLayoutLookAndFeelList
    Left = 32
    Top = 48
    object dxlytcxlkndfl1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = True
    end
  end
  object ds_TRFACTOBJTYPE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT ID,'
      '       AKTTYPE, '
      '       COMMIS, '
      '       WORKLIST, '
      '       MATLIST, '
      '       QUALITY, '
      '       RESOLUTION, '
      '       POST, '
      '       FIO, '
      '       INSPECTION, '
      '       POST1, '
      '       FIO1, '
      '       TRFACT_OBJECT'
      'FROM TRFACT$OBJ$TYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 56
    Top = 48
  end
end
