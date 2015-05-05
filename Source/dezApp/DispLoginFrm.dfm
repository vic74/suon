object DispLoginForm: TDispLoginForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103' '#1074' '#1076#1080#1089#1087#1077#1090#1095#1077#1088#1077
  ClientHeight = 95
  ClientWidth = 190
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
  object lbl1: TLabel
    Left = 8
    Top = 16
    Width = 30
    Height = 13
    Caption = #1051#1086#1075#1080#1085
  end
  object lbl2: TLabel
    Left = 8
    Top = 43
    Width = 37
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object Login: TcxTextEdit
    Left = 48
    Top = 8
    TabOrder = 0
    Width = 134
  end
  object Pass: TcxTextEdit
    Left = 48
    Top = 35
    TabOrder = 1
    Width = 134
  end
  object btn_Ok: TcxButton
    Left = 48
    Top = 62
    Width = 134
    Height = 25
    Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
    ModalResult = 1
    TabOrder = 2
  end
end
