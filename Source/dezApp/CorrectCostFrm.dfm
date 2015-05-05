object CorrectCostForm: TCorrectCostForm
  Left = 0
  Top = 0
  Caption = #1050#1086#1088#1088#1077#1082#1094#1080#1103' '#1094#1077#1085' '#1087#1086' '#1085#1072#1088#1103#1076#1072#1084
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
    object grd1: TcxGrid
      Left = 10
      Top = 67
      Width = 250
      Height = 200
      TabOrder = 4
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_WORKLIST
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object clv1KSNAME: TcxGridDBColumn
          Caption = #1043#1088#1091#1087#1087#1072
          DataBinding.FieldName = 'KSNAME'
          Visible = False
          VisibleForCustomization = False
          Width = 138
        end
        object clv1CLASSMAT: TcxGridDBColumn
          DataBinding.FieldName = 'CLASSMAT'
          Visible = False
          VisibleForCustomization = False
          Width = 144
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1052#1072#1090#1077#1088#1080#1072#1083
          DataBinding.FieldName = 'NAME'
          Width = 430
        end
        object clv1ED: TcxGridDBColumn
          Caption = #1045#1076'. '#1080#1079#1084'.'
          DataBinding.FieldName = 'ED'
          Width = 82
        end
        object clv1PRICE: TcxGridDBColumn
          DataBinding.FieldName = 'PRICE'
          Visible = False
          VisibleForCustomization = False
          Width = 81
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 200
      Top = 331
      Width = 250
      Height = 200
      TabOrder = 8
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_attire
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv2SUMMA
          end
          item
            Kind = skSum
            Column = clv2QUANTITY
          end
          item
            Kind = skCount
            Column = clv2ATTIRE
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Indicator = styl__indicator
        object clv2FLAG: TcxGridDBColumn
          DataBinding.FieldName = 'FLAG'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv2FLAGPropertiesEditValueChanged
          Width = 26
          IsCaptionAssigned = True
        end
        object clv2ATTIRE: TcxGridDBColumn
          Caption = #1053#1072#1088#1103#1076
          DataBinding.FieldName = 'ATTIRE'
          Options.Editing = False
          Width = 175
        end
        object clv2SERVISWORK: TcxGridDBColumn
          DataBinding.FieldName = 'CLASSMAT'
          Visible = False
          VisibleForCustomization = False
          Width = 74
        end
        object clv2STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          Options.Editing = False
          Width = 162
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 32
        end
        object clv2SNAME: TcxGridDBColumn
          Caption = #1056#1072#1073#1086#1090#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 165
        end
        object clv2QUANTITY: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'QUANTITY'
          Options.Editing = False
          Width = 66
        end
        object clv2PRICE: TcxGridDBColumn
          Caption = #1062#1077#1085#1072
          DataBinding.FieldName = 'PRICE'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          Properties.OnEditValueChanged = clv2PRICEPropertiesEditValueChanged
          Width = 75
        end
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Options.Editing = False
          Width = 74
        end
        object clv2STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2DU: TcxGridDBColumn
          DataBinding.FieldName = 'DU'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2DUName: TcxGridDBColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'DUNAME'
          Width = 164
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object dt1: TcxDateEdit
      Left = 71
      Top = 23
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object dt2: TcxDateEdit
      Left = 215
      Top = 23
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object chk1: TcxCheckBox
      Left = 342
      Top = 23
      Caption = #1058#1086#1083#1100#1082#1086' '#1073#1077#1079' '#1094#1077#1085
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object btn_exec: TcxButton
      Left = 469
      Top = 23
      Width = 98
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 3
      OnClick = btn_execClick
    end
    object ced1: TcxCalcEdit
      Left = 20
      Top = 362
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cbb_set: TcxComboBox
      Left = 20
      Top = 389
      Properties.Items.Strings = (
        #1087#1086' '#1074#1089#1077#1084
        #1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1084
        #1089' '#1085#1091#1083#1077#1074#1099#1084#1080' '#1094#1077#1085#1072#1084#1080)
      Style.HotTrack = False
      TabOrder = 6
      Text = #1087#1086' '#1074#1089#1077#1084
      Width = 121
    end
    object btn_setprice: TcxButton
      Left = 20
      Top = 416
      Width = 164
      Height = 25
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100
      TabOrder = 7
      OnClick = btn_setpriceClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp_top: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 33
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object itm_dt1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089
      Parent = grp_top
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_dt2: TdxLayoutItem
      CaptionOptions.Text = #1087#1086
      Parent = grp_top
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_chk: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = grp_top
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 21
      Control = chk1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_btn_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_top
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 98
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object grplc1Group1: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object grp_set: TdxLayoutGroup
      CaptionOptions.Text = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1094#1077#1085#1099
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 184
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_ced1: TdxLayoutItem
      CaptionOptions.Text = 'cxCalcEdit1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_set
      Control = ced1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_set: TdxLayoutItem
      CaptionOptions.Text = 'cxComboBox1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_set
      Control = cbb_set
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_setprice: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_set
      Control = btn_setprice
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group1
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 675
    Top = 72
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = clv2DUName
        Properties.Strings = (
          'Visible')
      end>
    StorageName = 'prop1'
    Left = 647
    Top = 72
  end
  object ds_WORKLIST: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT distinct(wm.CLASSMAT),sm.fullname name,sm.ed,sm.price'
      'FROM WORKLIST w'
      'left outer join WORKSPECLIST ws on ws.worklist=w.code'
      'left outer join WORKSPECMATERIAL wm on wm.workspeclist=ws.code'
      'left outer join CLASSMAT sm on sm.code=wm.CLASSMAT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 104
    Top = 152
  end
  object src_WORKLIST: TDataSource
    DataSet = ds_WORKLIST
    Left = 133
    Top = 152
  end
  object ds_attire: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT ws.code,'#39#8470#39' || w.code || '#39' '#1086#1090' '#39' ||w.data attire,'
      '       ws.CLASSMAT, c.FULLNAME SName,'
      '        ws.quantity, ws.price,'
      '       (ws.quantity * ws.price) Summa,'
      '       st.code Street, st.name streetname,w.HOUSE, h.nomer,'
      '       h.du, du.name DuName'
      'FROM WORKSPECMATERIAL ws'
      'left outer join WORKSPECLIST wl on wl.code=ws.workspeclist'
      'left outer join worklist w on w.code=wl.worklist'
      'left outer join CLASSMAT c on c.CODE = ws.CLASSMAT'
      'left outer join house h on h.code = w.house'
      'left outer join street st on st.code = h.street'
      'left outer join du on du.code=h.du')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 256
    Top = 432
  end
  object src_attire: TDataSource
    DataSet = m_attire
    Left = 284
    Top = 384
  end
  object m_attire: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 256
    Top = 384
  end
  object str_indicator: TcxStyleRepository
    Left = 48
    Top = 104
    PixelsPerInch = 96
    object styl__indicator: TcxStyle
      AssignedValues = [svBitmap]
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFF5F5F5
        EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE9E8E7E7E7ECECECE8E8
        E8EDEDEDFFFFFFFFFFFFFFFFFFF2F2F2F8F8F8F7F7F7F7F7F7F6F6F6F6F6F6F6
        F6F6F6F6F6F5F4F4F1EFEFF0EFEFF7F7F7E3E3E3F7F7F7FFFFFFDBDCDDC1C9D2
        F6F6F6F6F6F6F6F6F6F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F3F3F2EFEFEFEF
        EFF2F2F2F2F2F2FFFFFFFFFFFFBCD0EE6CA8DAD1E0EAF4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F3F3F2EFEFEFEEEEF3F3F3FFFFFFFFFFFFEDF2F6
        55C4F61796DFBED6E5F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F4F4F4F4F3
        F2F2F0EFF4F4F4FFFFFFFFFFFFF4F4F4DDEEF450C5F60E96E1AACBE1F1F1F1F1
        F1F1F1F1F1F2F2F2F2F2F2F3F3F3F3F3F3F4F2F2F5F5F5FFFFFFFFFFFFF4F4F4
        F2F2F2E3EEF361CAF60A98E593C0DDF0F0F0F0F0F0F0F0F0F1F1F1F2F2F2F3F3
        F3F3F3F3F5F5F5FFFFFFFFFFFFF5F5F5F2F2F2F1F1F1E6EDF070CFF50B9DE97B
        B4D9EEEEEEEFEFEFF0F0F0F1F1F1F2F2F2F2F2F2F5F5F5FFFFFFFFFFFFF5F5F5
        F1F1F1F0F0F0EFEFEFE8ECEE7FD2F40FA3EC62AAD8EAEBECEFEFEFF0F0F0F1F1
        F1F2F2F2F5F5F5FFFFFFFFFFFFF5F5F5F0F0F0F0F0F0EEEEEEEDEDEDE9EBEC8C
        D5F216A9EE4CA2D8E5E8EAEFEFEFF1F1F1F1F1F1F6F6F6FFFFFFFFFFFFF5F5F5
        EFEFEFEFEFEFEDEDEDECECECEAEAEAE9E9EA99D7F01EAEF1399DD9D9E1E6F0F0
        F0F0F0F0F6F6F6FFFFFFFFFFFFF6F6F6EFEFEFEFEFEFEDEDEDEBEBEBE9E9E9E8
        E8E8E9E9E9A7DAEF2FB4EFABBECAE1E2E3F0F0F0F7F7F7FFFFFFFFFFFFF6F6F6
        EEEEEEEFEFEFEDEDEDEBEBEBE9E9E9E8E8E8E9E9E9EBEBEBD1DBE0C3C3C3B5C0
        DDD6DCEEF7F7F7FFFFFFFFFFFFF7F7F7EEEEEEEFEFEFEDEDEDEBEBEBEAEAEAE9
        E9E9E9E9E9EBEBEBEDEDEDDBDEE8C8D8FDD8DFF3F8F8F8FFFFFFFFFFFFF7F7F7
        EEEEEEEFEFEFEEEEEEECECECEBEBEBEBEBEBEBEBEBECECECEDEDEDEFEFEFE5E7
        F1EEEEEEF9F9F9FFFFFFFFFFFFFBFBFBF0F0F0F1F1F1F0F0F0F0F0F0EFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDEDEDFCFCFCFFFFFF}
    end
  end
end
