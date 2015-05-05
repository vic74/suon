object ObjAkt1Form: TObjAkt1Form
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1040#1082#1090' '#1087#1088#1086#1074#1077#1088#1082#1080' '#1082#1072#1095#1077#1089#1090#1074#1072
  ClientHeight = 493
  ClientWidth = 555
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
    Width = 555
    Height = 493
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxlytcxlkndfl1
    object lbl_POName: TcxLabel
      Left = 22
      Top = 139
      Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1055#1054':'
      Style.HotTrack = False
      Transparent = True
    end
    object txt_FIO: TcxTextEdit
      Left = 84
      Top = 189
      Style.HotTrack = False
      TabOrder = 5
      Width = 449
    end
    object txt_POST: TcxTextEdit
      Left = 84
      Top = 162
      Style.HotTrack = False
      TabOrder = 4
      Width = 449
    end
    object mmo_inspection: TcxMemo
      Left = 10
      Top = 246
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 6
      Height = 89
      Width = 535
    end
    object mmo_result: TcxMemo
      Left = 10
      Top = 359
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 7
      Height = 89
      Width = 535
    end
    object txt_POST1: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 10
      Visible = False
      Width = 449
    end
    object txt_FIO1: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 449
    end
    object btn_Save: TcxButton
      Left = 307
      Top = 454
      Width = 106
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDb.iml1
      TabOrder = 8
      OnClick = btn_SaveClick
    end
    object btn_Cancel: TcxButton
      Left = 439
      Top = 454
      Width = 106
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDb.iml1
      TabOrder = 9
    end
    object txt_PostOS: TcxTextEdit
      Left = 84
      Top = 55
      Style.HotTrack = False
      TabOrder = 1
      Width = 449
    end
    object txt_FIOOS: TcxTextEdit
      Left = 84
      Top = 82
      Style.HotTrack = False
      TabOrder = 2
      Width = 449
    end
    object lbl1: TcxLabel
      Left = 22
      Top = 28
      Align = alLeft
      Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' '#1054#1054#1054' '#171#1044#1045#1047' '#1050#1072#1083#1080#1085#1080#1085#1089#1082#1086#1075#1086' '#1088#1072#1081#1086#1085#1072#187':'
      Style.HotTrack = False
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
      Index = 1
    end
    object LItemLControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group1
      Control = lbl_POName
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item11: TdxLayoutItem
      CaptionOptions.Text = #1060'.'#1048'.'#1054'.'
      Parent = lgrpLControl1Group1
      Control = txt_FIO
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LItemLControl1Item12: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      Parent = lgrpLControl1Group1
      Control = txt_POST
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrpLControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object LItemLControl1Item13: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1080' '#1087#1088#1080#1077#1084#1082#1077' '#1088#1072#1073#1086#1090'/'#1101#1090#1072#1087#1072' '#1088#1072#1073#1086#1090' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1086':'
      CaptionOptions.Layout = clTop
      Parent = lgrpLControl1Group2
      Control = mmo_inspection
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 3
    end
    object LItemLControl1Item14: TdxLayoutItem
      CaptionOptions.Text = #1056#1077#1096#1077#1085#1080#1077' '#1082#1086#1084#1080#1089#1089#1080#1080':'
      CaptionOptions.Layout = clTop
      Parent = lgrpLControl1Group3
      Control = mmo_result
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = #1055#1086#1076#1087#1080#1089#1080' '#1082#1086#1084#1080#1089#1089#1080#1080':'
      ButtonOptions.Buttons = <>
      Index = -1
    end
    object LItemLControl1Item15: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      Parent = lgrpLControl1Group4
      Control = txt_POST1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item16: TdxLayoutItem
      CaptionOptions.Text = #1060'.'#1048'.'#1054'.'
      Parent = lgrpLControl1Group4
      Control = txt_FIO1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrpLControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object LItemLControl1Item17: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group5
      Control = btn_Save
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item18: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Offsets.Left = 20
      Parent = lgrpLControl1Group5
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrpLControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = #1050#1086#1084#1080#1089#1089#1080#1103' '#1074' '#1089#1086#1089#1090#1072#1074#1077':'
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object LItemLControl1Item19: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      Parent = lgrpLControl1Group6
      Control = txt_PostOS
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item110: TdxLayoutItem
      CaptionOptions.Text = #1060'.'#1048'.'#1054'.'
      Parent = lgrpLControl1Group6
      Control = txt_FIOOS
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LItemLControl1Item111: TdxLayoutItem
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group6
      Control = lbl1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object ds_TRFACTOBJTYPE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT * FROM TRFACT$OBJ$TYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 264
    Top = 160
  end
  object dxlytlkndflst1: TdxLayoutLookAndFeelList
    Left = 256
    Top = 8
    object dxlytcxlkndfl1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = True
    end
  end
end
