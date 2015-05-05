object SrvDogAddForm: TSrvDogAddForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1072
  ClientHeight = 240
  ClientWidth = 366
  Color = clBtnFace
  UseDockManager = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cnt1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 366
    Height = 240
    Align = alClient
    TabOrder = 0
    object cbb_kontr: TcxLookupComboBox
      Left = 106
      Top = 37
      Properties.DropDownSizeable = True
      Properties.ImmediateDropDownWhenActivated = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_kontr
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 250
    end
    object m_num: TcxMaskEdit
      Left = 106
      Top = 64
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 250
    end
    object dt1: TcxDateEdit
      Left = 106
      Top = 91
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 250
    end
    object dt2: TcxDateEdit
      Left = 106
      Top = 118
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 250
    end
    object cbb_type: TcxLookupComboBox
      Left = 106
      Top = 145
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          FieldName = 'NAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_SRVDOGTYPE
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 250
    end
    object doc1: TdxBarDockControl
      Left = 10
      Top = 199
      Width = 346
      Height = 26
      Align = dalTop
      BarManager = bm1
    end
    object cbb_FIRM: TcxLookupComboBox
      Left = 106
      Top = 10
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_FIRM
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 250
    end
    object cbb_SIGN: TcxLookupComboBox
      Left = 106
      Top = 172
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_SIGNDOG
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 250
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itm_kontr: TdxLayoutItem
      CaptionOptions.Text = #1055#1086#1076#1088#1103#1076#1095#1080#1082
      Parent = grp1
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_num: TdxLayoutItem
      CaptionOptions.Text = #8470
      Parent = grp1
      Control = m_num
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_dt1: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1103
      Parent = grp1
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_dt2: TdxLayoutItem
      CaptionOptions.Text = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      Parent = grp1
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_type: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087
      Parent = grp1
      Control = cbb_type
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itmcnt1Item1: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object litmcnt1Item1: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Parent = grp1
      Control = cbb_FIRM
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_cnt1Item1: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1080#1079#1085#1072#1082
      Parent = grp1
      Control = cbb_SIGN
      ControlOptions.ShowBorder = False
      Index = 6
    end
  end
  object src_kontr: TDataSource
    Left = 172
    Top = 24
  end
  object ds_SRVDOGTYPE: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from SRVDOGTYPE'
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 152
    Top = 56
  end
  object src_SRVDOGTYPE: TDataSource
    DataSet = ds_SRVDOGTYPE
    Left = 176
    Top = 56
  end
  object bm1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = cmDb.iml1
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 208
    Top = 56
    DockControlHeights = (
      0
      0
      0
      0)
    object bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 333
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_add'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_add: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
      OnClick = btn_addClick
    end
    object btn_Edit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
    end
    object btn_Delete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivNever
    end
  end
end
