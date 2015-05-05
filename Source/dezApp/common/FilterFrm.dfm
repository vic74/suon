object FilterForm: TFilterForm
  Left = 0
  Top = 0
  Caption = #1060#1080#1083#1100#1090#1088
  ClientHeight = 313
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 543
    Height = 313
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 430
    ExplicitHeight = 306
    object dt1: TcxDateEdit
      Left = 143
      Top = 30
      Properties.ClearKey = 46
      Properties.ImmediatePost = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 102
    end
    object dt2: TcxDateEdit
      Left = 281
      Top = 30
      Properties.ClearKey = 46
      Properties.ImmediatePost = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cbb_JobType: TcxLookupComboBox
      Left = 143
      Top = 84
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'JobTypeId'
      Properties.ListColumns = <
        item
          FieldName = 'Title'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_JobType
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = cbb_JobTypePropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 246
    end
    object cbb_JobSubtype: TcxLookupComboBox
      Left = 143
      Top = 111
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'JobSubtypeId'
      Properties.ListColumns = <
        item
          FieldName = 'Title'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_JobSubtype
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 246
    end
    object cbb_Location: TcxLookupComboBox
      Left = 143
      Top = 138
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_Location
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 145
    end
    object cbb_Status: TcxLookupComboBox
      Left = 143
      Top = 165
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_Status
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 145
    end
    object btn_Ok: TcxButton
      Left = 22
      Top = 257
      Width = 75
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      TabOrder = 11
      OnClick = btn_OkClick
    end
    object btn_Cancel: TcxButton
      Left = 446
      Top = 257
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      TabOrder = 12
      OnClick = btn_CancelClick
    end
    object tm1: TcxTimeEdit
      Left = 143
      Top = 57
      EditValue = 0d
      Properties.ClearKey = 46
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 102
    end
    object tm2: TcxTimeEdit
      Left = 281
      Top = 57
      EditValue = 0d
      Properties.ClearKey = 46
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 121
    end
    object chk_IsEmergency: TcxCheckBox
      Left = 22
      Top = 192
      Caption = #1040#1074#1072#1088#1080#1081#1085#1099#1077
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object chk_IsPaid: TcxCheckBox
      Left = 149
      Top = 192
      Caption = #1055#1083#1072#1090#1085#1099#1077
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object chk_IsOutdated: TcxCheckBox
      Left = 276
      Top = 192
      Caption = #1055#1088#1086#1089#1088#1086#1095#1077#1085#1085#1099#1077
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cbb_CanceledCompany: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_CanceledCompany
      Properties.OnEditValueChanged = cbb_CanceledCompanyPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Visible = False
      Width = 246
    end
    object cbb_UserCanceled: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_Users
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Visible = False
      Width = 246
    end
    object cbb_MgmtCompany: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_MgmtCompany
      Properties.OnEditValueChanged = cbb_MgmtCompanyPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Visible = False
      Width = 192
    end
    object cbb_DU: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_DU
      Properties.OnEditValueChanged = cbb_DUPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Visible = False
      Width = 192
    end
    object cbb_STreet: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_Street
      Properties.OnEditValueChanged = cbb_STreetPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 17
      Visible = False
      Width = 192
    end
    object cbb_HOUSE: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_HOUSE
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 18
      Visible = False
      Width = 192
    end
    object txt_Flat: TcxTextEdit
      Left = 10000
      Top = 10000
      Properties.ClearKey = 46
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Visible = False
      Width = 192
    end
    object txt_ExecutorName: TcxTextEdit
      Left = 10000
      Top = 10000
      Properties.ClearKey = 46
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Visible = False
      Width = 192
    end
    object txt_RequesterPhone: TcxTextEdit
      Left = 10000
      Top = 10000
      Properties.ClearKey = 46
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Visible = False
      Width = 192
    end
    object cbb_ClosedCompany: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_CanceledCompany
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 22
      Visible = False
      Width = 192
    end
    object cbb_ClosedUser: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.ClearKey = 46
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_Users
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 23
      Visible = False
      Width = 192
    end
    object lgrp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object LItemLControl1Item1: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080'  '#1089
      Parent = lgrpLControl1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 236
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item11: TdxLayoutItem
      CaptionOptions.Text = #1087#1086
      Parent = lgrpLControl1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 138
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1042#1080#1076' '#1088#1072#1073#1086#1090
      Parent = lgrpLControl1Group8
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 380
      Control = cbb_JobType
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item13: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1086#1076#1074#1080#1076' '#1088#1072#1073#1086#1090
      Parent = lgrpLControl1Group8
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 380
      Control = cbb_JobSubtype
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LItemLControl1Item14: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1051#1086#1082#1072#1083#1080#1079#1072#1094#1080#1103
      Parent = lgrpLControl1Group8
      Control = cbb_Location
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LItemLControl1Item15: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1057#1086#1089#1090#1086#1103#1085#1080#1077
      Parent = lgrpLControl1Group8
      Control = cbb_Status
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lgrpLControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      UseIndent = False
      Index = 1
    end
    object LItemLControl1Item16: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group2
      Control = btn_Ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item17: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group2
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item18: TdxLayoutItem
      CaptionOptions.Text = #1042#1088#1077#1084#1103' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1082#1080' c'
      Parent = lgrpLControl1Group6
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 236
      Control = tm1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item19: TdxLayoutItem
      CaptionOptions.Text = #1087#1086
      Parent = lgrpLControl1Group6
      SizeOptions.Width = 138
      Control = tm2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrpLControl1Group4: TdxLayoutGroup
      Parent = lgrp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 223
      ButtonOptions.Buttons = <
        item
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            F0F0FF9595E51B1B4CB9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFEDEDFFC1C1FFDADAFF4D4DD208083FB7B7B7FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDFFC1C1FF
            D1D1FF7D7DE80C0CC70000B9080845B7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFBFBFFFCECEFF7E7EEA0000BD0000BF0000C60000B802
            0241BBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3FF7F7FE9
            0000BB0000BF0000C00000C00000C40000B90A0A43B7B7B7FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFDADAFC3232D00000BB0000C00000C00000C000
            00C50103BC26183AB9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            E1E1FE3232D00000BC0000C00000BF0000BC9CAAF7EFAAA0410404BBBBBBFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFD3838D00000BA0000BC91
            9BEDFFFAE8FF9293E75B5B460A0AB7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE0E0FF3536D19199EBFFF1ECFF8483FF7B7BFF8B8BE45E5E4105
            05B9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBE9FFFFD5CCFF
            8584FF7B7BFF8080FF8080FF8989E45E5E430909B7B7B7FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFDAD9FF8E8EFF7C7CFF8080FF8080FF7F7FFF8A
            8AE75E5E450A0AB7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            E0E0FF9090FF7B7BFF8080FF8080FF8080FF8A8AE35E5E4D1111FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF9191FF7B7BFF8080FF80
            80FF8080FF9090AE2626FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE0E0FF9191FF7B7BFF8282FF8A8ABF4040402626FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0FF9090FF85
            85C13F3F412A2AE3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE2E2C659593C2828E3E3E3FFFFFF}
          Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
          OnClick = lgrpLControl1Group4Button0Click
        end>
      Index = 0
    end
    object lgrpLControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrpLControl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lgrpLControl1Group7
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrpLControl1Group8
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrpLControl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lgrpLControl1Group7: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lgrpLControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrpLControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lgrpLControl1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lgrpLControl1Group4
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item110: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group9
      Control = chk_IsEmergency
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item111: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group9
      Control = chk_IsPaid
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item112: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group9
      Control = chk_IsOutdated
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LItemLControl1Item113: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075'-'#1094#1080#1103', '#1089#1085#1103#1074#1096#1072#1103' '#1079#1072#1103#1074#1082#1091
      Control = cbb_CanceledCompany
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object LItemLControl1Item114: TdxLayoutItem
      CaptionOptions.Text = #1057#1085#1103#1083' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      Control = cbb_UserCanceled
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object LItemLControl1Item115: TdxLayoutItem
      CaptionOptions.Text = #1059#1087#1088#1072#1074#1083#1103#1102#1097#1072#1103' '#1082#1086#1084#1087#1072#1085#1080#1103
      Parent = lgrpLControl1Group3
      Control = cbb_MgmtCompany
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item116: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084#1086#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
      Parent = lgrpLControl1Group3
      Control = cbb_DU
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item117: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = lgrpLControl1Group3
      Control = cbb_STreet
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LItemLControl1Item118: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      Parent = lgrpLControl1Group7
      Control = cbb_HOUSE
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item119: TdxLayoutItem
      CaptionOptions.Text = #1050#1074#1072#1088#1090#1080#1088#1072
      Parent = lgrpLControl1Group7
      Control = txt_Flat
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LItemLControl1Item120: TdxLayoutItem
      CaptionOptions.Text = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
      Parent = lgrpLControl1Group7
      Control = txt_ExecutorName
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LItemLControl1Item121: TdxLayoutItem
      CaptionOptions.Text = #1058#1077#1083#1077#1092#1086#1085' '#1079#1072#1103#1074#1080#1090#1077#1083#1103
      Parent = lgrpLControl1Group7
      Control = txt_RequesterPhone
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LItemLControl1Item122: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075'-'#1094#1080#1103', '#1079#1072#1082#1088#1099#1074#1096#1072#1103' '#1079#1072#1103#1074#1082#1091
      Parent = lgrpLControl1Group7
      Control = cbb_ClosedCompany
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LItemLControl1Item123: TdxLayoutItem
      CaptionOptions.Text = #1047#1072#1082#1088#1099#1083' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      Parent = lgrpLControl1Group7
      Control = cbb_ClosedUser
      ControlOptions.ShowBorder = False
      Index = 6
    end
  end
  object src_JobType: TDataSource
    Left = 464
    Top = 32
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_CanceledCompany
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_ClosedCompany
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_ClosedUser
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_DU
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_HOUSE
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_JobSubtype
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_JobType
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_Location
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_MgmtCompany
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_Status
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_STreet
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_UserCanceled
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = chk_IsEmergency
        Properties.Strings = (
          'Checked')
      end
      item
        Component = chk_IsOutdated
        Properties.Strings = (
          'Checked')
      end
      item
        Component = chk_IsPaid
        Properties.Strings = (
          'Checked')
      end
      item
        Component = dt1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = dt2
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = tm1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = tm2
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = txt_ExecutorName
        Properties.Strings = (
          'Text')
      end
      item
        Component = txt_Flat
        Properties.Strings = (
          'Text')
      end
      item
        Component = txt_RequesterPhone
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 464
    Top = 208
  end
  object src_JobSubtype: TDataSource
    Left = 496
    Top = 32
  end
  object src_Location: TDataSource
    Left = 464
    Top = 64
  end
  object src_Status: TDataSource
    Left = 496
    Top = 64
  end
  object src_CanceledCompany: TDataSource
    Left = 464
    Top = 96
  end
  object src_Users: TDataSource
    Left = 496
    Top = 96
  end
  object src_MgmtCompany: TDataSource
    Left = 464
    Top = 128
  end
  object src_DU: TDataSource
    Left = 496
    Top = 128
  end
  object src_Street: TDataSource
    Left = 464
    Top = 160
  end
  object src_HOUSE: TDataSource
    Left = 496
    Top = 160
  end
end
