object UpgradeForm: TUpgradeForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 167
  ClientWidth = 296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 296
    Height = 24
    BarManager = MainForm.bm1
    ColorSchemeName = 'Blue'
    ShowTabGroups = False
    ShowTabHeaders = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object RibbonTab: TdxRibbonTab
      Active = True
      Caption = 'RibbonTab'
      Groups = <>
      Index = 0
    end
  end
  object btn1: TcxButton
    Left = 80
    Top = 114
    Width = 145
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'McSkin'
    ModalResult = 1
    TabOrder = 1
  end
  object rch1: TcxRichEdit
    Left = 0
    Top = 24
    TabStop = False
    Align = alTop
    Enabled = False
    Lines.Strings = (
      '          '#1054#1073#1085#1072#1088#1091#1078#1077#1085#1085#1086' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1099'.'
      #1057#1077#1081#1095#1072#1089' '#1073#1091#1076#1077#1090' '#1087#1088#1086#1080#1079#1074#1077#1076#1077#1085#1085#1086' '#1089#1082#1072#1095#1080#1074#1072#1085#1080#1077' '#1080' '#1091#1089#1090#1072#1085#1086#1074#1082#1072'.'
      #1055#1086#1089#1083#1077' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1072' '#1079#1072#1087#1091#1089#1090#1080#1090#1089#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080'.'
      '        '#1053#1072#1078#1084#1080#1090#1077' '#171#1054#1073#1085#1086#1074#1080#1090#1100#187' '#1076#1083#1103' '#1087#1088#1086#1076#1086#1083#1078#1077#1085#1080#1103'.')
    Style.BorderStyle = ebsOffice11
    Style.Shadow = False
    StyleDisabled.BorderStyle = ebsNone
    StyleDisabled.Color = clBtnFace
    StyleDisabled.TextColor = clWindowText
    TabOrder = 2
    Height = 73
    Width = 296
  end
end
