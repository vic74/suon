object SrvSaveListForm: TSrvSaveListForm
  Left = 0
  Top = 0
  ActiveControl = List
  BorderStyle = bsDialog
  Caption = #1042#1099#1073#1086#1088' '#1096#1072#1073#1083#1086#1085#1072
  ClientHeight = 241
  ClientWidth = 345
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object List: TListBox
    Left = 0
    Top = 0
    Width = 345
    Height = 193
    Align = alTop
    ItemHeight = 13
    TabOrder = 0
  end
  object btn_Ok: TButton
    Left = 11
    Top = 206
    Width = 141
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object btn_Cancel: TButton
    Left = 191
    Top = 206
    Width = 141
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    ModalResult = 2
    TabOrder = 2
  end
end
