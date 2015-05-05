object KontragentEditForm: TKontragentEditForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
  ClientHeight = 468
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 544
    Height = 468
    Align = alClient
    TabOrder = 0
    object txt_Name: TcxTextEdit
      Left = 141
      Top = 24
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 379
    end
    object txt_FullName: TcxTextEdit
      Left = 141
      Top = 51
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 379
    end
    object cbb_KType: TcxLookupComboBox
      Left = 141
      Top = 78
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_KType
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 379
    end
    object txt_INN: TcxTextEdit
      Left = 141
      Top = 105
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 379
    end
    object txt_KPP: TcxTextEdit
      Left = 141
      Top = 132
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 379
    end
    object txt_OGRN: TcxTextEdit
      Left = 141
      Top = 159
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 379
    end
    object cbb_Dir: TcxLookupComboBox
      Left = 141
      Top = 326
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'FIO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_WORKER
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 379
    end
    object txt_Phone: TcxTextEdit
      Left = 141
      Top = 353
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 379
    end
    object txt_Email: TcxTextEdit
      Left = 141
      Top = 380
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 379
    end
    object m_PostAddr: TcxMemo
      Left = 24
      Top = 204
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Height = 46
      Width = 496
    end
    object m_URADDR: TcxMemo
      Left = 24
      Top = 274
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Height = 46
      Width = 496
    end
    object btn_Ok: TcxButton
      Left = 384
      Top = 433
      Width = 150
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDb.iml1
      TabOrder = 11
      OnClick = btn_OkClick
    end
    object btn_Cancel: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'btn_Cancel'
      TabOrder = 12
      Visible = False
    end
    object lGrp1: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lGrplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Parent = lGrp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 0
    end
    object lGrplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
      Parent = lGrplc1Group1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lGrplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = #1054#1089#1085#1086#1074#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      Parent = lGrplc1Group1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lGrplc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lGrp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object litm_lc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Parent = lGrplc1Group3
      Control = txt_Name
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Parent = lGrplc1Group3
      Control = txt_FullName
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      Parent = lGrplc1Group3
      Control = cbb_KType
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litm_lc1Item13: TdxLayoutItem
      CaptionOptions.Text = #1048#1053#1053
      Parent = lGrplc1Group3
      Control = txt_INN
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litm_lc1Item14: TdxLayoutItem
      CaptionOptions.Text = #1050#1055#1055
      Parent = lGrplc1Group3
      Control = txt_KPP
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litm_lc1Item15: TdxLayoutItem
      CaptionOptions.Text = #1054#1043#1056#1053
      Parent = lGrplc1Group3
      Control = txt_OGRN
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object litm_lc1Item18: TdxLayoutItem
      CaptionOptions.Text = #1044#1080#1088#1077#1082#1090#1086#1088
      Parent = lGrplc1Group3
      Control = cbb_Dir
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object litm_lc1Item19: TdxLayoutItem
      CaptionOptions.Text = #1058#1077#1083#1077#1092#1086#1085#1099
      Parent = lGrplc1Group3
      Control = txt_Phone
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object litm_lc1Item110: TdxLayoutItem
      CaptionOptions.Text = 'EMail'
      Parent = lGrplc1Group3
      Control = txt_Email
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object litm_lc1Item111: TdxLayoutItem
      CaptionOptions.Text = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
      CaptionOptions.Layout = clTop
      Parent = lGrplc1Group3
      Control = m_PostAddr
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object litm_lc1Item16: TdxLayoutItem
      CaptionOptions.Text = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081' '#1072#1076#1088#1077#1089
      CaptionOptions.Layout = clTop
      Parent = lGrplc1Group3
      Control = m_URADDR
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object litm_lc1Item17: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      CaptionOptions.Visible = False
      Parent = lGrplc1Group4
      Control = btn_Ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item112: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = -1
    end
  end
  object ds_kont_type: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT * FROM KONTRAGENT_TYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 200
    Top = 216
  end
  object src_KType: TDataSource
    DataSet = ds_kont_type
    Left = 168
    Top = 216
  end
  object ds_WORKER: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT p.CODE, (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio'
      'FROM PIPLE p'
      '--WHERE p.ISDELETE = 0'
      'order by 2')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 152
    Top = 152
  end
  object src_WORKER: TDataSource
    DataSet = ds_WORKER
    Left = 184
    Top = 152
  end
end
