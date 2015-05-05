object NotLiftSrv: TNotLiftSrv
  Left = 0
  Top = 0
  Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1082#1072' '#1091#1089#1083#1091#1075' '#1040#1042#1057' '#1080' '#1051#1044#1057#1057
  ClientHeight = 586
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 719
    Height = 586
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object cbb_street: TcxLookupComboBox
      Left = 56
      Top = 41
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
      Properties.ListSource = src_STREET
      Properties.OnEditValueChanged = cbb_streetPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Width = 203
    end
    object cbb_house: TcxLookupComboBox
      Left = 56
      Top = 68
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
          FieldName = 'NOMER'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_HOUSE
      Style.HotTrack = False
      TabOrder = 1
      Width = 203
    end
    object btn_add: TcxButton
      Left = 20
      Top = 95
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000010101020101010401010106010101090101010B0101010C0101010C0101
        010B010101090101010701010104010101020000000000000000000000010101
        0108010101110101011B010101240101012C010101340103023E0103023E0101
        01350101012E010101250101011C010101130101010900000001000000000000
        000000000000000000010107041105442183098C43D90BB256FE0BB256FE098C
        43D9054421830107041101010102000000000000000000000000000000000000
        00000000000002170B2E0A9247E125DC81FF3EEDA2FF4AF3B1FF4AF4B2FF3FED
        A4FF26DC83FF0A9347E102170B2E000000000000000000000000000000000000
        0000010D06170F9C52E543EEA8FF54FABFFF4CECABFFADEBCEFFADE8CCFF4CE5
        A8FF54FABFFF45F0ABFF119D54E5010D06170000000000000000000000000000
        0000075E2E973EEAA2FF4BF5B3FF4BF5B3FF4AE7A3FFFFFFFFFFFFFFFFFF49E0
        A0FF4BF5B3FF4BF5B3FF40ECA5FF085E2F970000000000000000000000000104
        02071BB568F152F2AFFF4CEDA4FF4AE9A1FF48DE97FFFFFFFFFFFFFFFFFF47D1
        90FF42D997FF3ED895FF41F1A8FF1EB76CF1010402070000000000000000021E
        0E2E3ACE84FF6AF2B5FFAFF4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA6DCC1FF46EEA3FF3CD187FF021E0E2E00000000000000000224
        113540C981FF73F0B5FFB1F4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFADDCC3FF6FEFB3FF40CB83FF022411350000000000000000010E
        071427B366FD7CEBB3FF6BEAA8FF6CE7A7FF64DD9DFFFFFFFFFFFFFFFFFF63CF
        96FF6BD89FFF69D79FFF7BECB4FF27B466FD010E071400000000000000000000
        0000098440C16EC897FF87ECB7FF88EFB9FF74E3A7FFFFFFFFFFFFFFFFFF73DC
        A4FF87EFB9FF86ECB8FF6CC997FF098440C10000000000000000000000000000
        00000331183F29A962FD8DCDAAFF93DFB5FF7BDFA8FFB7E9CDFFB7E6CCFF7BD8
        A5FF93DFB6FF8CCDA9FF26A85FFD0331183F0000000000000000000000000000
        00000000000006582A7236AB6AFE95CAADFFA0CFB5FFA0CFB5FFA0CFB5FFA0CF
        B5FF95C9ADFF34A969FE06582A72000000000000000000000000000000000000
        0000000000000000000005401F4D159950DA4CB27AFF6AB189FF6CB28BFF4FB4
        7DFF159A50DA05401F4D00000000000000000000000000000000000000000000
        000000000000000000000000000000010101042D16340652286006522860042D
        1634000101010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 2
      OnClick = btn_addClick
    end
    object btn_delete: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'btn_delete'
      TabOrder = 4
      Visible = False
    end
    object grd1: TcxGrid
      Left = 285
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 3
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_NOTLIFTSRV
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
          Width = 40
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 239
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 43
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NOTABC: TcxGridDBColumn
          Caption = 'ABC'
          DataBinding.FieldName = 'NOTABC'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.FullFocusRect = True
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1NOTABCPropertiesEditValueChanged
          Width = 34
        end
        object clv1NOTLDSS: TcxGridDBColumn
          Caption = 'LDSS'
          DataBinding.FieldName = 'NOTLDSS'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.FullFocusRect = True
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1NOTLDSSPropertiesEditValueChanged
          Width = 33
        end
        object clv1NOTKAB: TcxGridDBColumn
          Caption = #1041#1077#1079' '#1091#1073#1086#1088#1082#1080' '#1083#1080#1092#1090#1072
          DataBinding.FieldName = 'NOTKAB'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1NOTKABPropertiesEditValueChanged
          Width = 65
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grplc1Group2: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grp_top: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 163
      SizeOptions.Width = 269
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = grp_top
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_house: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      Parent = grp_top
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 135
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_btn_add: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_top
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 130
      Control = btn_add
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_delete: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Visible = False
      Control = btn_delete
      ControlOptions.ShowBorder = False
      Index = -1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 184
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 652
    Top = 184
  end
  object ds_STREET: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NAME'
      'FROM STREET'
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSet_ID = 1
    Description = 'Simple STREET'
    Left = 592
    Top = 96
    poApplyRepositary = True
  end
  object src_STREET: TDataSource
    DataSet = ds_STREET
    Left = 624
    Top = 96
  end
  object src_HOUSE: TDataSource
    DataSet = ds_HOUSE
    Left = 624
    Top = 136
  end
  object ds_HOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NOMER,'
      '       Street'
      'FROM HOUSE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 592
    Top = 136
    poApplyRepositary = True
  end
  object ds_NOTLIFTSRV: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE NOTLIFTSRV'
      'SET '
      '    HOUSE = :HOUSE,'
      '    STREET = :STREET,'
      '    NOTABC = :NOTABC,'
      '    NOTLDSS = :NOTLDSS'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    NOTLIFTSRV'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO NOTLIFTSRV('
      '    CODE,'
      '    HOUSE,'
      '    STREET,'
      '    NOTABC,'
      '    NOTLDSS'
      ')'
      'VALUES('
      '    :CODE,'
      '    :HOUSE,'
      '    :STREET,'
      '    :NOTABC,'
      '    :NOTLDSS'
      ')')
    RefreshSQL.Strings = (
      'SELECT nl.CODE, '
      '       nl.HOUSE,h.nomer, '
      '       nl.STREET,s.name SName,'
      '       nl.NOTABC, '
      '       nl.NOTLDSS'
      'FROM NOTLIFTSRV nl'
      'left outer join house h on h.code=nl.house'
      'left outer join street s on s.code=nl.street'
      ' WHERE '
      '        NL.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT nl.CODE, '
      '       nl.HOUSE,h.nomer, '
      '       nl.STREET,s.name SName,'
      '       nl.NOTABC, '
      '       nl.NOTLDSS,'
      '       nl.NOTKAB'
      'FROM NOTLIFTSRV nl'
      'left outer join house h on h.code=nl.house'
      'left outer join street s on s.code=nl.street')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 408
    Top = 184
  end
  object src_NOTLIFTSRV: TDataSource
    DataSet = ds_NOTLIFTSRV
    Left = 440
    Top = 184
  end
end
