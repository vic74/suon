object ObjPoEditForm: TObjPoEditForm
  Left = 0
  Top = 0
  VertScrollBar.Visible = False
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
  ClientHeight = 354
  ClientWidth = 251
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
  object LControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 251
    Height = 354
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxlytcxlkndfl1
    RedrawOnResize = False
    OptionsItem.SizableHorz = True
    OptionsItem.SizableVert = True
    object dt1: TcxDBDateEdit
      Left = 51
      Top = 162
      DataBinding.DataField = 'PODATE'
      DataBinding.DataSource = src_TRFACTOBJ
      Style.HotTrack = False
      TabOrder = 2
      Width = 180
    end
    object dt_fact1: TcxDBDateEdit
      Left = 10
      Top = 28
      DataBinding.DataField = 'POFACTDATE'
      DataBinding.DataSource = src_TRFACTOBJ
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 0
      Width = 231
    end
    object mmo_Phase: TcxDBMemo
      Left = 10
      Top = 73
      DataBinding.DataField = 'PHASE'
      DataBinding.DataSource = src_TRFACTOBJ
      Style.HotTrack = False
      TabOrder = 1
      Height = 52
      Width = 231
    end
    object mmo_Result: TcxDBMemo
      Left = 20
      Top = 207
      DataBinding.DataField = 'PORESULT'
      DataBinding.DataSource = src_TRFACTOBJ
      Style.HotTrack = False
      TabOrder = 3
      Height = 48
      Width = 211
    end
    object dt_plan: TcxDBDateEdit
      Left = 20
      Top = 279
      DataBinding.DataField = 'POPLANDATE'
      DataBinding.DataSource = src_TRFACTOBJ
      Style.HotTrack = False
      TabOrder = 4
      Width = 211
    end
    object btn_cancel: TcxButton
      Left = 10
      Top = 319
      Width = 95
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDb.iml1
      TabOrder = 5
    end
    object btn_Ok: TcxButton
      Left = 146
      Top = 319
      Width = 95
      Height = 25
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      ModalResult = 1
      OptionsImage.Images = cmDb.iml1
      TabOrder = 6
      OnClick = btn_OkClick
    end
    object lgrp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object LItemLControl1Item12: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072
      Parent = lgrpLControl1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 181
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item13: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090
      CaptionOptions.Layout = clTop
      Parent = lgrp1
      SizeOptions.Width = 181
      Control = dt_fact1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item1: TdxLayoutItem
      CaptionOptions.Text = #1069#1090#1072#1087' '#1088#1072#1073#1086#1090#1099
      CaptionOptions.Layout = clTop
      Parent = lgrp1
      SizeOptions.Height = 70
      SizeOptions.Width = 181
      Control = mmo_Phase
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrpLControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1081' '#1082#1086#1085#1090#1088#1086#1083#1100' '#1082#1072#1095#1077#1089#1090#1074#1072' '#1088#1072#1073#1086#1090
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object LItemLControl1Item11: TdxLayoutItem
      CaptionOptions.Text = #1056#1077#1079#1091#1083#1100#1090#1072#1090
      CaptionOptions.Layout = clTop
      Parent = lgrpLControl1Group1
      SizeOptions.Height = 66
      Control = mmo_Result
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LItemLControl1Item14: TdxLayoutItem
      CaptionOptions.Text = #1055#1083#1072#1085#1080#1088#1091#1077#1084#1072#1103' '#1076#1072#1090#1072' '#1089#1076#1072#1095#1080' '#1088#1072#1073#1086#1090#1099
      CaptionOptions.Layout = clTop
      Parent = lgrpLControl1Group1
      Control = dt_plan
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LItemLControl1Item15: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group2
      Control = btn_cancel
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LItemLControl1Item16: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lgrpLControl1Group2
      Control = btn_Ok
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgrpLControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgrp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
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
    Left = 104
    Top = 120
  end
  object src_TRFACTOBJ: TDataSource
    DataSet = ds1_TRFACTOBJ
    Left = 132
    Top = 120
  end
  object dxlytlkndflst1: TdxLayoutLookAndFeelList
    Left = 152
    object dxlytcxlkndfl1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
end
