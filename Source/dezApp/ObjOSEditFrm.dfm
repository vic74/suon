object ObjOSEditForm: TObjOSEditForm
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
  ClientHeight = 226
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 322
    Height = 226
    Align = alClient
    TabOrder = 0
    AutoSize = True
    object dt1: TcxDBDateEdit
      Left = 68
      Top = 10
      DataBinding.DataField = 'OSDATE'
      DataBinding.DataSource = src_TRFACTOBJ
      Properties.ImmediatePost = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 244
    end
    object mmo_result: TcxDBMemo
      Left = 68
      Top = 37
      DataBinding.DataField = 'OSRESULT'
      DataBinding.DataSource = src_TRFACTOBJ
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Height = 142
      Width = 244
    end
    object clc1: TcxDBCalcEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'FACTCOST'
      DataBinding.DataSource = src_TRFACTOBJ
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Visible = False
      Width = 175
    end
    object btn_Cancel: TcxButton
      Left = 10
      Top = 185
      Width = 95
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDb.iml1
      TabOrder = 2
    end
    object btn_Ok: TcxButton
      Left = 217
      Top = 185
      Width = 95
      Height = 25
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      ModalResult = 1
      TabOrder = 3
      OnClick = btn_OkClick
    end
    object lgrp1: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object LItemLControl1Item1: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072
      Parent = lgrp1
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item11: TdxLayoutItem
      CaptionOptions.Text = #1056#1077#1079#1091#1083#1100#1090#1072#1090
      Parent = lgrp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 142
      Control = mmo_result
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item14: TdxLayoutItem
      CaptionOptions.Text = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
      Control = clc1
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object LItemLControl1Item15: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group1
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item16: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group1
      Control = btn_Ok
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrpLControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
  end
  object dlgOpen1: TOpenDialog
    Left = 104
    Top = 72
  end
  object ds1_TRFACTOBJ: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    TRFACT,'
      '    POFACTDATE,'
      '    PHASE,'
      '    PODATE,'
      '    PORESULT,'
      '    POPLANDATE,'
      '    OSDATE,'
      '    OSRESULT,'
      '    OSDOC,'
      '    FACTCOST'
      'FROM'
      '    TRFACT$OBJ ')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 136
    Top = 72
  end
  object src_TRFACTOBJ: TDataSource
    DataSet = ds1_TRFACTOBJ
    Left = 164
    Top = 72
  end
end
