object SplashForm: TSplashForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  BorderWidth = 1
  Caption = 'SplashForm'
  ClientHeight = 245
  ClientWidth = 446
  Color = clMedGray
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  SnapBuffer = 20
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 396
    Top = 265
    Width = 3
    Height = 13
  end
  object lbl2: TLabel
    Left = 40
    Top = 96
    Width = 359
    Height = 113
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 40
    Top = 48
    Width = 359
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TButton
    Left = 24
    Top = 8
    Width = 145
    Height = 25
    Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1100
    TabOrder = 0
    Visible = False
    OnClick = btn1Click
  end
  object pb1: TProgressBar
    Left = 0
    Top = 228
    Width = 446
    Height = 17
    Align = alBottom
    ParentShowHint = False
    BackgroundColor = clMedGray
    ShowHint = False
    TabOrder = 1
  end
  object ds1: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, AFILE, FILESIZE, FILENAME, FILEEXT,'
      'FILEDATE, UTYPE, DESCRIPTION, UPPATH, DEZ, PO'
      'from UPDATEAPP'
      'where CODE=:cod')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Container = cont1
    Left = 352
    Top = 120
  end
  object mTable: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 384
    Top = 120
  end
  object cont1: TDataSetsContainer
    IsGlobalContainer = True
    OnReadBlobField = cont1ReadBlobField
    OnWriteBlobField = cont1WriteBlobField
    Left = 416
    Top = 120
  end
end
