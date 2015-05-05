object AddWorkInPlanForm: TAddWorkInPlanForm
  Left = 0
  Top = 0
  HelpContext = 109
  Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1072#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1072' '#1088#1072#1073#1086#1090#1099
  ClientHeight = 662
  ClientWidth = 829
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
    Width = 829
    Height = 662
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object cbb_mlist: TcxLookupComboBox
      Left = 20
      Top = 41
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 200
      Properties.GridMode = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          Caption = #1050#1086#1076
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          Caption = #1043#1088#1091#1087#1087#1072
          Width = 90
          FieldName = 'GRNAME'
        end
        item
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          Width = 90
          FieldName = 'NAME'
        end
        item
          Caption = #1045#1076'.'#1080#1079#1084'.'
          MinWidth = 0
          Width = 0
          FieldName = 'ED'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'MGROUP'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'RTYPE'
        end>
      Properties.ListFieldIndex = 2
      Properties.ListSource = src_mat
      Style.HotTrack = False
      StyleFocused.BorderStyle = ebsThick
      StyleFocused.Color = clWindow
      TabOrder = 0
      Width = 243
    end
    object btn_mlistAdd: TcxButton
      Left = 242
      Top = 42
      Width = 24
      Height = 20
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000009140B231E46247D32783ADB33833DF3308139F32871
        2FDB163F197D0511072300000000000000000000000000000000000000000000
        00000000000018321D533E874BE6419950FF7DC28FFF96D0A6FF96CFA6FF78BE
        89FF368D42FF28742FE60D291053000000000000000000000000000000000000
        00001A3420534A9559F464B478FFA8DBB5FF87CC98FF66BC7DFF64BA7CFF86CB
        98FFA5D9B4FF58AA6BFF2A7B32F40D2910530000000000000000000000000C16
        0E224D925CE56AB97DFFA8DBB2FF60BC77FF5CBA73FF59B870FF59B56FFF58B5
        6FFF5BB774FFA5D9B3FF5AAA6CFF28752FE50511062200000000000000002E54
        377E53AB68FFAADDB4FF64C179FF5FBE71FF60BC77FFFFFFFFFFFFFFFFFF59B8
        70FF58B56EFF5CB774FFA6DAB4FF388F43FF16401A7E00000000000000005394
        64DB8ACC98FF89D396FF6BC67AFF63C170FF55AB65FFFFFFFFFFFFFFFFFF59B8
        70FF59B870FF5BB972FF85CC97FF7BBE8DFF297231DB000000000000000061A9
        76F6A9DDB3FF7DCF8AFF75CC81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF59B870FF67BE7DFF9CD4ABFF32833BF6000000000000000065AC
        7AF6B6E2BEFF8BD597FF7AC986FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF59B870FF69C17EFF9DD4AAFF368640F600000000000000005E9B
        71DBACDDB6FFA6DFAFFF81CB8CFF7CC986FF6EBD79FFFFFFFFFFFFFFFFFF5BAC
        6AFF60BC77FF5CBA73FF8BD199FF80C592FF347A3DDB0000000000000000375B
        437E85C797FFD2EED7FF95D9A0FF8AD394FF7FC889FFFFFFFFFFFFFFFFFF79CD
        85FF6BC37CFF6FC77EFFACDFB5FF459E57FF2048267E00000000000000000F19
        122265A579E5AADAB7FFD8F1DCFF92D89DFF88CD93FF84CC8EFF8BD496FF8AD4
        95FF83D28EFFAFE0B7FF6BB97DFF41894DE509140B2200000000000000000000
        0000253D2D536BB081F4AFDCBBFFDCF2E0FFB6E4BDFF9BDBA5FF96D9A0FFA5DF
        AFFFC0E8C5FF79C28AFF4D975BF419321E530000000000000000000000000000
        000000000000253D2D5366A67AE694CEA4FFC3E6CBFFCFEBD4FFC9E9CEFFAFDD
        B8FF6DB97FFF4F955FE61B342153000000000000000000000000000000000000
        00000000000000000000101A1323375B437D5E9C71DB65AB7AF362A976F35595
        66DB2F54387D0D170F2300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      TabOrder = 1
      TabStop = False
      OnClick = btn_mlistAddClick
    end
    object msk_Y: TcxMaskEdit
      Left = 44
      Top = 113
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cbb_Kontragent: TcxLookupComboBox
      Left = 20
      Top = 86
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_Kontr
      Properties.OnEditValueChanged = cbb_KontragentPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Width = 196
    end
    object btn_set: TcxButton
      Left = 20
      Top = 181
      Width = 246
      Height = 25
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100
      OptionsImage.Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333300003333333333333333333300003333000333333333333300003333
        08803333333333330000333330F8033333333333000033333307803333333333
        00003333330F700333333333000033333330780380333333000033333300F700
        0803333300003333330F0F700780333300003333300F0FF70080333300003333
        30F0F0FF7078033300003333300F0F0F777703330000333330F0F07FF7770333
        00003333330F07FFFF770333000033333330FF7FFFF703330000333333330FFF
        FFF7033300003333333330F7FFFF703300003333333333000000003300003333
        33333333333333330000}
      TabOrder = 5
      OnClick = btn_setClick
    end
    object grd1: TcxGrid
      Left = 304
      Top = 23
      Width = 250
      Height = 200
      TabOrder = 6
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_m1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1SNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FLAG: TcxGridDBColumn
          DataBinding.FieldName = 'FLAG'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 23
          IsCaptionAssigned = True
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 197
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 52
        end
        object clv1TP: TcxGridDBColumn
          Caption = #1053#1072#1083#1080#1095#1080#1077' '#1074' '#1087#1083#1072#1085#1077
          DataBinding.FieldName = 'TP'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1072
              Value = 1
            end>
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
          Width = 148
        end
        object clv1worker: TcxGridDBColumn
          DataBinding.FieldName = 'worker'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object btn_exec: TcxButton
      Left = 20
      Top = 140
      Width = 246
      Height = 25
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      OptionsImage.Glyph.Data = {
        72010000424D7201000000000000760000002800000014000000150000000100
        040000000000FC000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFF00FFFFFFFFFFFF0000FFFFFF0B0FFFFFFFFFFF
        0000FFFFFFF0B0FFFFFFFFFF0000FFFFFFF0FB0FFFFFFFFF0000FFFFFFFF0FB0
        FFFFFFFF0000FFFFFF000B000FFFFFFF0000FFFFFFF0BF0FFFFFFFFF0000FFFF
        FFFF0BF0FFFFFFFF0000FFFFFFFF0FBF0FFFFFFF0000FFFFF0000F0000FFFFFF
        0000FFFFFF0BFBF0FFFFFFFF0000FFFFFFF0BFBF0FFFFFFF0000FFFFFFF0FBFB
        F0FFFFFF0000FFFFFFFF0000000FFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000}
      TabOrder = 4
      OnClick = btn_execClick
    end
    object prb1: TcxProgressBar
      Left = 304
      Top = 620
      TabOrder = 7
      Width = 121
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object grlc1Group1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 194
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object grlc1Group3: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grlc1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1042#1080#1076' '#1088#1072#1073#1086#1090
      CaptionOptions.Layout = clTop
      Parent = grlc1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 216
      Control = cbb_mlist
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = grlc1Group3
      Control = btn_mlistAdd
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_kontr: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 242
      Control = cbb_Kontragent
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_Y: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1043#1086#1076
      Parent = grlc1Group1
      Control = msk_Y
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_set: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Offsets.Top = 10
      Parent = grlc1Group1
      Control = btn_set
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grlc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_prb1: TdxLayoutItem
      CaptionOptions.Text = 'cxProgressBar1'
      CaptionOptions.Visible = False
      Parent = grlc1Group2
      Control = prb1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 56
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 652
    Top = 56
  end
  object ds_mat: TpFIBDataSet
    SelectSQL.Strings = (
      'select ML.CODE, ML.MGROUP,MG.NAME GRNAME, ML.NAME, ML.ED, '
      'ML.RTYPE, ML.JWorkType'
      'from MLIST ML'
      'left outer join MGROUP MG on ML.MGROUP = MG.CODE'
      'order by ML.MGROUP')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 184
    Top = 216
  end
  object src_mat: TDataSource
    DataSet = ds_mat
    Left = 213
    Top = 216
  end
  object ds_house: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT distinct(h.CODE),'
      '       h.NOMER, '
      '       h.STREET, s.name SNAME'
      '       ,iif(tp.code is null,0,1) TP'
      '       --,iif(tp.code is null,1,0) FLAG'
      '       ,0 FLAG'
      '       ,mh.worker'
      ''
      'FROM HOUSE h'
      
        'left outer join trplan tp on tp.house=h.code and tp.y=:y and tp.' +
        'mlist=:mlist'
      'left outer join street s on s.code=h.street'
      ''
      'left outer join mhouse mh on mh.house=h.code and mh.kontragent=1'
      'left outer join worker w on w.code=mh.worker'
      'left outer join piple p on p.code=w.piple'
      'where h.A=1 and tp.code is null'
      'order by h.street,h.nomer')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 368
    Top = 88
  end
  object m1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 408
    Top = 88
  end
  object src_m1: TDataSource
    DataSet = m1
    Left = 440
    Top = 88
  end
  object src_Kontr: TDataSource
    Left = 192
    Top = 312
  end
end
