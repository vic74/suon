object IPUEDITForm: TIPUEDITForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 253
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 361
    Height = 253
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    ExplicitLeft = 40
    ExplicitTop = 56
    ExplicitWidth = 300
    ExplicitHeight = 250
    object cbb_STREET: TcxLookupComboBox
      Left = 120
      Top = 23
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_STREET
      Properties.OnEditValueChanged = cbb_STREETPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object cbb_HOUSE: TcxLookupComboBox
      Left = 120
      Top = 50
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NOMER'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_HOUSE
      Style.HotTrack = False
      TabOrder = 1
      Width = 145
    end
    object txt_Flat: TcxTextEdit
      Left = 120
      Top = 77
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object spn_CNT: TcxSpinEdit
      Left = 120
      Top = 104
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = spn_CNTPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object dt_DATA: TcxDateEdit
      Left = 120
      Top = 131
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object clc_SUMA: TcxCalcEdit
      Left = 120
      Top = 158
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object btn_Ok: TcxButton
      Left = 143
      Top = 218
      Width = 101
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDb.iml1
      OptionsImage.Layout = blGlyphRight
      TabOrder = 6
      OnClick = btn_OkClick
    end
    object btn_Cancel: TcxButton
      Left = 250
      Top = 218
      Width = 101
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDb.iml1
      OptionsImage.Layout = blGlyphRight
      TabOrder = 7
      OnClick = btn_CancelClick
    end
    object grpLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      Locked = True
      ShowBorder = False
      Index = -1
    end
    object grplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grpLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object grplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grpLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lItmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = grplc1Group1
      Control = cbb_STREET
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1044#1086#1084
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 215
      Control = cbb_HOUSE
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lItmlc1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1082#1074'.'
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 215
      Control = txt_Flat
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lItmlc1Item13: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086' '#1048#1055#1059
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 215
      Control = spn_CNT
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lItmlc1Item14: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1044#1072#1090#1072' '#1087#1083#1086#1084#1073#1080#1088#1086#1074#1082#1080
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 215
      Control = dt_DATA
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lItmlc1Item15: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1057#1091#1084#1084#1072' '#1087#1083#1086#1084#1073#1080#1088'.'
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 215
      Control = clc_SUMA
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lItmlc1Item16: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      Control = btn_Ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item17: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object llflf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    UseAppManager = True
    Left = 356
    Top = 21
    object bndlnkspn_CNT: TBindLink
      Category = 'Links'
      ControlComponent = spn_CNT
      ParseExpressions = <>
      FormatExpressions = <>
      ClearExpressions = <>
    end
  end
  object ds_HOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NOMER'
      'FROM'
      '    HOUSE ')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 288
    Top = 104
  end
  object src_HOUSE: TDataSource
    DataSet = ds_HOUSE
    Left = 316
    Top = 104
  end
end
