object SmetaABSForm: TSmetaABSForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1057#1084#1077#1090#1099' '#1040#1041#1057' '#1080' '#1051#1044#1057#1057
  ClientHeight = 287
  ClientWidth = 313
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
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 313
    Height = 287
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object cbb_month: TcxComboBox
      Left = 42
      Top = 3
      Properties.Items.Strings = (
        ''
        #1103#1085#1074#1072#1088#1100
        #1092#1077#1074#1088#1072#1083#1100
        #1084#1072#1088#1090
        #1072#1087#1088#1077#1083#1100
        #1084#1072#1081
        #1080#1102#1085#1100
        #1080#1102#1083#1100
        #1072#1074#1075#1091#1089#1090
        #1089#1077#1085#1090#1103#1073#1088#1100
        #1086#1082#1090#1103#1073#1088#1100
        #1085#1086#1103#1073#1088#1100
        #1076#1077#1082#1072#1073#1088#1100)
      Style.HotTrack = False
      TabOrder = 0
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object msk_Y: TcxMaskEdit
      Left = 42
      Top = 47
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object btn_smeta: TcxButton
      Left = 3
      Top = 254
      Width = 75
      Height = 25
      Caption = #1057#1084#1077#1090#1072
      TabOrder = 4
      OnClick = btn_smetaClick
    end
    object btn_akt: TcxButton
      Left = 119
      Top = 254
      Width = 75
      Height = 25
      Caption = #1040#1082#1090
      TabOrder = 5
      OnClick = btn_aktClick
    end
    object btn_exit: TcxButton
      Left = 235
      Top = 254
      Width = 75
      Height = 25
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 6
      OnClick = btn_exitClick
    end
    object grd1: TcxGrid
      Left = 3
      Top = 86
      Width = 250
      Height = 200
      TabOrder = 3
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_dog
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Width = 35
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1075#1086#1074#1086#1088
          DataBinding.FieldName = 'NOMER'
          VisibleForCustomization = False
          Width = 76
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'KNAME'
          Width = 144
        end
        object clv1D1: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1103
          DataBinding.FieldName = 'D1'
          Visible = False
          VisibleForCustomization = False
          Width = 72
        end
        object clv1D2: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
          DataBinding.FieldName = 'D2'
          Visible = False
          VisibleForCustomization = False
          Width = 70
        end
        object clv1ACTIVE: TcxGridDBColumn
          DataBinding.FieldName = 'ACTIVE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1ATYPE: TcxGridDBColumn
          DataBinding.FieldName = 'ATYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1ATYPENAME: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'ATYPENAME'
          Width = 85
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object cbb_srv: TcxComboBox
      Left = 42
      Top = 25
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1040#1041#1057
        #1051#1044#1057#1057)
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itm_month: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = grp1
      Control = cbb_month
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1059#1089#1083#1091#1075#1072
      Parent = grp1
      Control = cbb_srv
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_Y: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = grp1
      Control = msk_Y
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1044#1086#1075#1086#1074#1086#1088
      CaptionOptions.Layout = clTop
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 147
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Offsets.Bottom = 5
      Offsets.Top = 5
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object itm_smeta: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = btn_smeta
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_akt: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = btn_akt
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_exit: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = btn_exit
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 80
    Top = 24
    object lcl1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 113
    Top = 22
  end
  object ds_srv: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT hs.CODE,ks.code KSCODE,'
      '       hs.NAME,'
      '       iif(ks.code is null,0,1) ksSrv,'
      '       iif(ks.rtype is null, 0,ks.rtype)rtype'
      'FROM HOUSESRV hs'
      'left outer join KONTRAGENTSRV ks on ks.srv=hs.code'
      '            and ks.rtype=0 and ks.kontragent=:kontr'
      'where hs.CODE not in(6,8,4,7,10)'
      'union all'
      'SELECT f1d.CODE,ks.code KSCODE,'
      '       f1d.NAME,'
      '       iif(ks.code is null,0,1) ksSrv,'
      '       iif(ks.rtype is null, 1,ks.rtype)rtype'
      'FROM FACT1DOCSRV f1d'
      'left outer join KONTRAGENTSRV ks on ks.srv=f1d.code'
      '            and ks.rtype=1 and ks.kontragent=:kontr'
      'where f1d.CODE in (0,1,2,7,5,6,12)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 16
    Top = 144
  end
  object src_srv: TDataSource
    DataSet = ds_srv
    Left = 48
    Top = 144
  end
  object ds_kontr: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, NAME FROM KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 112
    Top = 128
  end
  object src_kontr: TDataSource
    DataSet = ds_kontr
    Left = 140
    Top = 128
  end
  object src_dog: TDataSource
    DataSet = ds_dog
    Left = 140
    Top = 176
  end
  object ds_dog: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sd.CODE, '
      '       sd.KONTRAGENT,k.NAME KName, '
      '       sd.NOMER, '
      '       sd.D1, '
      '       sd.D2, '
      '       sd."ACTIVE", '
      '       sd.DATA,'
      '       sd.atype,'
      '      case'
      '        when sd.atype=0 then '#39#1057#1072#1085#1090#1077#1093#1085#1080#1082#1072' '#1080' '#1086#1073#1097#1077#1089#1090#1088#1086#1081#39
      '        when sd.atype=1 then '#39#1069#1083#1077#1082#1090#1088#1080#1082#1072#39
      '        when sd.atype=2 then '#39#1051#1080#1092#1090#1099#39
      '        when sd.atype=3 then '#39#1057#1072#1085#1080#1090#1072#1088#1080#1103#39
      '        when sd.atype=4 then '#39#1042#1044#1043#1054#39
      '        when sd.atype=5 then '#39#1042#1077#1085#1090#1080#1083#1103#1094#1080#1103#39
      '        when sd.atype=6 then '#39#1042#1099#1074#1086#1079' '#1058#1041#1054#39
      '        when sd.atype=7 then '#39#1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103#39
      '        else '#39' '#39
      '      end atypeName'
      'FROM SRVDOG sd'
      'left outer join KONTRAGENT k on k.code=sd.KONTRAGENT'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 112
    Top = 176
  end
end
