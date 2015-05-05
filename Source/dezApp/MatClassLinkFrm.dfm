object MatClassLinkForm: TMatClassLinkForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1089#1074#1103#1079#1080' '#1089' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1084
  ClientHeight = 207
  ClientWidth = 355
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
  object lc_1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 355
    Height = 207
    Align = alClient
    TabOrder = 0
    object txt_oldName: TcxTextEdit
      Left = 10
      Top = 87
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 335
    end
    object txt_NewName: TcxTextEdit
      Left = 10
      Top = 132
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 335
    end
    object btn_Ok: TcxButton
      Left = 10
      Top = 172
      Width = 104
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      ModalResult = 1
      OptionsImage.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555905555555555555999055555555555599905555
        5555555999990555555555999999055555555799059990555555790555599055
        5555555555599905555555555555990555555555555559905555555555555579
        0555555555555557905555555555555559905555555555555555}
      TabOrder = 3
    end
    object btn_Cancel: TcxButton
      Left = 254
      Top = 172
      Width = 91
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FDFDFDFBFBFBF9F9F9F6F6F6F4F4F4F3F3F3F3F3F3F4F4F4F6F6F6F8F8F8FBFB
        FBFDFDFDFFFFFFFFFFFFFEFEFEF7F7F7EEEEEEE4E4E4DBDBDBD3D3D3CCCCCCC2
        C2C7C1C1C6CACACAD1D1D1D9D9D9E3E3E3ECECECF6F6F6FEFEFEFFFFFFFFFFFF
        FFFFFFFEFEFEEFEFFA8282E22E2ECC0A0AC40A0AC42E2ECC8282E2EFEFFAFDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3F62727CE0C0CD10D0DE40D
        0DEE0D0DEE0D0DE40C0CD12727CED3D3F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E9E9FA2424D21414ED1616F52929ED1616FB1616FB2828ED1616F51414ED2424
        D2E9E9FAFFFFFFFFFFFFFFFFFFFFFFFF6F6FE11C1CEF1F1FF3A2A2EFE2E2F838
        38EC3838ECE2E2F7A1A1EE1E1EF31C1CEF6F6FE1FFFFFFFFFFFFFFFFFFF8F8FD
        2323DC3B3BF54C4CEDE4E4F9FFFFFFE3E3F8E2E2F8FFFFFFE2E2F83636EA2929
        F52222DCF8F8FDFFFFFFFFFFFFD3D3F53838E16666F56666F56868EEE4E4FAFF
        FFFFFFFFFFE2E2F94545EB3232F23F3FF23A3AE1D3D3F5FFFFFFFFFFFFCCCCF2
        4343DF7B7BF47B7BF47272F0E3E3FAFFFFFFFFFFFFE3E3FA5C5CED6363F27777
        F34545DFCCCCF2FFFFFFFFFFFFECECFA2929D48C8CF27B7BF1E3E3FBFFFFFFE4
        E4FBE4E4FBFFFFFFE4E4FB7B7BEF8C8CF22C2CD4ECECFAFFFFFFFFFFFFFFFFFF
        4747D67474E99393F1B8B8F6E4E4FB8D8DF18E8EF1E4E4FBB9B9F69393F17575
        E94747D6FFFFFFFFFFFFFFFFFFFFFFFFC2C2EF2A2AD89191EE9696F09292F0B2
        B2F4B2B2F49292F09696F09191EE2A2AD8C2C2EFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF9191E33636DD9797F1A2A2F2A2A2F2A2A2F2A2A2F29898F13838DD9191
        E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5EB3939D54D4DE16D
        6DED6F6FED5252E23B3BD5B5B5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFECDCDF1A3A3E5A3A3E5CDCDF1FEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 4
    end
    object lbl_1: TcxLabel
      Left = 10
      Top = 10
      AutoSize = False
      Caption = 
        '                                          '#1042#1085#1080#1084#1072#1085#1080#1077'!'#13#10#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080 +
        #1077' '#1089#1090#1072#1088#1086#1075#1086' '#1084#1072#1090#1077#1088#1080#1072#1083#1072' '#1073#1091#1076#1077#1090' '#1079#1072#1084#1077#1085#1077#1085#1086' '#1085#1086#1074#1099#1084'!'
      ParentFont = False
      Style.Font.Charset = RUSSIAN_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -13
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.Shadow = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsLowered
      Properties.WordWrap = True
      Height = 53
      Width = 335
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itm_old: TdxLayoutItem
      CaptionOptions.Text = #1057#1090#1072#1088#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
      CaptionOptions.Layout = clTop
      Parent = grp1
      Control = txt_oldName
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_New: TdxLayoutItem
      CaptionOptions.Text = #1053#1086#1074#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
      CaptionOptions.Layout = clTop
      Parent = grp1
      Control = txt_NewName
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_Ok: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp__1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 104
      Control = btn_Ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Cancel: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp__1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 91
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grp__1Group1: TdxLayoutGroup
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object itm__1Item1: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = lbl_1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
end
