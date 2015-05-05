object NameForm: TNameForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  ClientHeight = 64
  ClientWidth = 300
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object NameEdit: TEdit
    Left = 5
    Top = 8
    Width = 289
    Height = 21
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 174
    Top = 35
    Width = 120
    Height = 22
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    ModalResult = 2
    TabOrder = 1
  end
  object Btn_ok: TButton
    Left = 8
    Top = 35
    Width = 121
    Height = 22
    Caption = 'Ok'
    TabOrder = 2
    OnClick = OkBtnClick
  end
end
