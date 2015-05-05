object imDogAddDateForm: TimDogAddDateForm
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 113
  ClientWidth = 269
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
  object cbb_month: TcxComboBox
    Left = 16
    Top = 16
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
    TabOrder = 0
    Text = #1103#1085#1074#1072#1088#1100
    Width = 121
  end
  object msk_Y: TcxMaskEdit
    Left = 167
    Top = 16
    Properties.MaskKind = emkRegExpr
    Properties.EditMask = ' ([123][0-9])? [0-9][0-9]'
    Properties.MaxLength = 0
    TabOrder = 1
    Width = 74
  end
  object chk_copy: TcxCheckBox
    Left = 16
    Top = 43
    Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1075#1086' '#1087#1077#1088#1080#1086#1076#1072'?'
    TabOrder = 2
    Width = 249
  end
  object btn_Ok: TcxButton
    Left = 16
    Top = 70
    Width = 89
    Height = 25
    Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
    TabOrder = 3
    OnClick = btn_OkClick
  end
  object btn_Cancel: TcxButton
    Left = 167
    Top = 70
    Width = 89
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 4
    OnClick = btn_CancelClick
  end
end
