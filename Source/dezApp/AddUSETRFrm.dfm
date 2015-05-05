object AddUSETRForm: TAddUSETRForm
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = '   '#1047#1072#1082#1088#1077#1087#1083#1077#1085#1080#1077' '#1086#1090#1074'. '#1083#1080#1094#1072' '#1087#1086' '#1058#1056
  ClientHeight = 162
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 293
    Height = 162
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object cbb_manager: TcxLookupComboBox
      Left = 10
      Top = 73
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
          FieldName = 'FIO'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_worker
      Style.HotTrack = False
      TabOrder = 1
      Width = 304
    end
    object btn_OK: TcxButton
      Left = 10
      Top = 110
      Width = 105
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = btn_OKClick
    end
    object btn_Cancel: TcxButton
      Left = 172
      Top = 110
      Width = 111
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 3
    end
    object cbb_kontr: TcxLookupComboBox
      Left = 10
      Top = 28
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_kontr
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object gr1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itm_kontr: TdxLayoutItem
      CaptionOptions.Text = #1055#1086#1076#1088#1103#1076#1095#1080#1082
      CaptionOptions.Layout = clTop
      Parent = gr1
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_w: TdxLayoutItem
      CaptionOptions.Text = #1054#1090#1074'. '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
      CaptionOptions.Layout = clTop
      Parent = gr1
      Control = cbb_manager
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Offsets.Top = 10
      Parent = gr1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object itm_OK: TdxLayoutItem
      CaptionOptions.Text = #1054#1082
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 105
      Control = btn_OK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Cancel: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 111
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 128
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object ds_worker: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT w.CODE, '
      '       w.KONTRAGENT, '
      '       w.PIPLE,'
      '       (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       w.AROLE'
      'FROM WORKER w'
      'left outer join PIPLE p on p.code=w.piple'
      'where USETR=1')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 160
  end
  object src_worker: TDataSource
    DataSet = ds_worker
    Left = 192
  end
  object src_kontr: TDataSource
    DataSet = ds_kont
    Left = 177
    Top = 52
  end
  object ds_kont: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, NAME, FULLNAME FROM KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    Left = 149
    Top = 52
  end
end
