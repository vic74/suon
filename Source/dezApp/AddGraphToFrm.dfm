object AddGraphToForm: TAddGraphToForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1075#1088#1072#1092#1080#1082#1072' '#1058#1054
  ClientHeight = 371
  ClientWidth = 366
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
  object mName: TcxMemo
    Left = 8
    Top = 32
    TabOrder = 0
    Height = 89
    Width = 353
  end
  object lbl_1: TcxLabel
    Left = 8
    Top = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1075#1088#1072#1092#1080#1082#1072
    Transparent = True
  end
  object cbb_GraphType: TcxLookupComboBox
    Left = 8
    Top = 144
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
    Properties.ListSource = src_GRAPHTYPE
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Width = 201
  end
  object lbl_2: TcxLabel
    Left = 8
    Top = 126
    Caption = #1058#1080#1087' '#1075#1088#1072#1092#1080#1082#1072
    Transparent = True
  end
  object cbb_GraphPeriod: TcxLookupComboBox
    Left = 8
    Top = 184
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
    Properties.ListSource = src_GRAPHPERIOD
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 4
    Width = 201
  end
  object lbl_3: TcxLabel
    Left = 8
    Top = 167
    Caption = #1055#1077#1088#1080#1086#1076#1080#1095#1085#1086#1089#1090#1100' '#1086#1089#1084#1086#1090#1088#1072
    Transparent = True
  end
  object dt_PredData: TcxDateEdit
    Left = 8
    Top = 232
    Properties.DisplayFormat = 'dd.mm'
    Properties.EditFormat = 'dd.mm'
    Properties.ImmediatePost = True
    Properties.YearsInMonthList = False
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 6
    Width = 121
  end
  object lbl_4: TcxLabel
    Left = 8
    Top = 213
    Caption = #1044#1072#1090#1072' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1103' '#1075#1088#1072#1092#1080#1082#1072
    Transparent = True
  end
  object spn_ProcFact: TcxSpinEdit
    Left = 8
    Top = 272
    Properties.ImmediatePost = True
    Properties.ValueType = vtFloat
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 8
    Width = 121
  end
  object lbl_5: TcxLabel
    Left = 8
    Top = 253
    Caption = #1055#1083#1072#1085#1086#1074#1099#1081' '#1087#1088#1086#1094#1077#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
    Transparent = True
  end
  object btn_Cancel: TcxButton
    Left = 243
    Top = 328
    Width = 115
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    LookAndFeel.NativeStyle = True
    OptionsImage.ImageIndex = 12
    OptionsImage.Images = cmDb.iml1
    TabOrder = 10
    OnClick = btn_CancelClick
  end
  object btn_Ok: TcxButton
    Left = 96
    Top = 328
    Width = 123
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    LookAndFeel.NativeStyle = True
    OptionsImage.ImageIndex = 10
    OptionsImage.Images = cmDb.iml1
    TabOrder = 11
    OnClick = btn_OkClick
  end
  object ds_GRAPHPERIOD: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from GRAPHPERIOD')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 240
    Top = 184
  end
  object src_GRAPHPERIOD: TDataSource
    DataSet = ds_GRAPHPERIOD
    Left = 272
    Top = 184
  end
  object ds_GRAPHTYPE: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from GRAPHTYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 240
    Top = 144
  end
  object src_GRAPHTYPE: TDataSource
    DataSet = ds_GRAPHTYPE
    Left = 272
    Top = 144
  end
end
