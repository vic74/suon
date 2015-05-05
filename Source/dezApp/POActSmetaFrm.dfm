object POActSmetaForm: TPOActSmetaForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1072#1082#1090#1086#1074' '#1080' '#1089#1084#1077#1090' '#1055#1054
  ClientHeight = 142
  ClientWidth = 326
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 326
    Height = 142
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object cbb_month: TcxComboBox
      Left = 67
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
      Properties.OnEditValueChanged = cbb_monthPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object cbb_srv: TcxLookupComboBox
      Left = 67
      Top = 25
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'COD'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_srv
      Properties.OnEditValueChanged = cbb_srvPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Width = 145
    end
    object msk_Y: TcxMaskEdit
      Left = 10000
      Top = 10000
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Width = 121
    end
    object btn_smeta: TcxButton
      Left = 3
      Top = 106
      Width = 94
      Height = 25
      Caption = #1057#1084#1077#1090#1072
      Enabled = False
      OptionsImage.ImageIndex = 11
      OptionsImage.Images = cmDb.iml1
      TabOrder = 6
      OnClick = btn_smetaClick
    end
    object btn_akt: TcxButton
      Left = 116
      Top = 106
      Width = 94
      Height = 25
      Caption = #1040#1082#1090
      Enabled = False
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = cmDb.iml1
      TabOrder = 5
      OnClick = btn_aktClick
    end
    object btn_exit: TcxButton
      Left = 240
      Top = 106
      Width = 83
      Height = 25
      Caption = #1042#1099#1093#1086#1076
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDb.iml1
      TabOrder = 7
      OnClick = btn_exitClick
    end
    object grd1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 9
      Visible = False
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
          Width = 78
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'KNAME'
          Width = 150
        end
        object clv1D1: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1103
          DataBinding.FieldName = 'D1'
          Visible = False
          Width = 72
        end
        object clv1D2: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
          DataBinding.FieldName = 'D2'
          Visible = False
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
          Width = 100
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object ms_proc: TcxMaskEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 11
      Text = '100'
      Visible = False
      Width = 121
    end
    object cbb_RepType: TcxComboBox
      Left = 10000
      Top = 10000
      Enabled = False
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1087#1086' '#1041#1044#1056' ('#1087#1083#1072#1085')'
        #1087#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1091' '#1079#1072#1090#1088#1072#1090
        #1087#1086' '#1096#1072#1073#1083#1086#1085#1091)
      Properties.OnEditValueChanged = cbb_RepTypePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 10
      Text = #1087#1086' '#1096#1072#1073#1083#1086#1085#1091
      Visible = False
      Width = 121
    end
    object cbb_kontr: TcxLookupComboBox
      Left = 67
      Top = 47
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'FULLNAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_kontr
      Properties.OnEditValueChanged = cbb_kontrPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 3
      Width = 145
    end
    object cbb_DogType: TcxLookupComboBox
      Left = 67
      Top = 69
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ATYPE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_SRVDOGTYPE
      Style.HotTrack = False
      TabOrder = 4
      Width = 145
    end
    object cbb_Y: TcxComboBox
      Left = 202
      Top = 3
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
      Properties.OnEditValueChanged = cbb_YPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      LayoutLookAndFeel = lcl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itm_month: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = lGrplc1Group1
      Control = cbb_month
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_srv: TdxLayoutItem
      CaptionOptions.Text = #1059#1089#1083#1091#1075#1072
      Parent = grp1
      Control = cbb_srv
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_Y: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Width = 125
      Control = msk_Y
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1044#1086#1075#1086#1074#1086#1088
      CaptionOptions.Layout = clTop
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 147
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object grplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Offsets.Bottom = 5
      Offsets.Top = 15
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object itm_smeta: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = btn_smeta
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object itm_akt: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = lcl1
      Parent = grplc1Group1
      Control = btn_akt
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
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
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = '%'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 95
      Control = ms_proc
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087
      Control = cbb_RepType
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = -1
    end
    object LItemlc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      Parent = grp1
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LItemlc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087
      Parent = grp1
      Control = cbb_DogType
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litm_lc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = lGrplc1Group1
      Control = cbb_Y
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lGrplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 264
    Top = 8
    object lcl1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
      LookAndFeel.NativeStyle = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_month
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_Y
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = msk_Y
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 233
    Top = 38
  end
  object ds_srv: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT '#39'0_'#39'||CODE COD,CODE, NAME,'
      '       '#39'HOUSESRV'#39' TBL'
      'FROM HOUSESRV'
      'where code in (1,2,3,5,9)'
      'union all'
      'SELECT '#39'1_'#39'||CODE COD,CODE, NAME,'
      '       '#39'SRV'#39' TBL'
      'FROM SRV'
      'where code in (3,4,5,6,7,8,9,10,11,12,13)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 168
    Top = 120
  end
  object src_srv: TDataSource
    DataSet = ds_srv
    Left = 200
    Top = 120
  end
  object ds_kontr: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select KONTRAGENT CODE, NAME FULLNAME from GET_KONTRBYDOC(:M, :Y' +
        ', :HOUSESRV, :REPTYPE)'
      'ORDER BY NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 104
    Top = 120
  end
  object src_kontr: TDataSource
    DataSet = ds_kontr
    Left = 132
    Top = 120
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
  object ds_SRVDOGTYPE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT DISTINCT(SD.ATYPE), dt.NAME FROM SRVDOG SD'
      'left outer join SRVDOGTYPE dt on dt.CODE = sd.ATYPE'
      'where sd.KONTRAGENT =:KONTR and SD."ACTIVE"=1')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 40
    Top = 16
  end
  object src_SRVDOGTYPE: TDataSource
    DataSet = ds_SRVDOGTYPE
    Left = 80
    Top = 16
  end
end
