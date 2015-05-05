object nmSummaryForm: TnmSummaryForm
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1084#1072#1090#1077#1088#1080#1072#1083#1072#1084' ('#1086#1073#1097#1080#1081')'
  ClientHeight = 667
  ClientWidth = 922
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
    Width = 922
    Height = 667
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object dt1: TcxDateEdit
      Left = 71
      Top = 23
      Style.HotTrack = False
      TabOrder = 0
      Width = 122
    end
    object dt2: TcxDateEdit
      Left = 226
      Top = 23
      Style.HotTrack = False
      TabOrder = 1
      Width = 102
    end
    object cbb_kontr: TcxLookupComboBox
      Left = 430
      Top = 23
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
      Properties.ListSource = src_kontr
      Style.HotTrack = False
      TabOrder = 2
      Width = 145
    end
    object btn_exec: TcxButton
      Left = 762
      Top = 23
      Width = 112
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
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
    object grd1: TcxGrid
      Left = 20
      Top = 98
      Width = 250
      Height = 200
      TabOrder = 5
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v1CellDblClick
        DataController.DataSource = src_summary
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1SNAME
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1SUMMA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = clv1SNAME
        OptionsBehavior.PullFocusing = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 143
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 45
        end
        object clv1SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 322
      Top = 155
      Width = 250
      Height = 200
      TabOrder = 7
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_detail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv2SUMMA
          end
          item
            Kind = skSum
            Column = clv2QUANTITY
          end
          item
            Kind = skCount
            Column = clv2NAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2SERVISMATERIAL: TcxGridDBColumn
          DataBinding.FieldName = 'SERVISMATERIAL'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2NAME: TcxGridDBColumn
          Caption = #1052#1072#1090#1077#1088#1080#1072#1083
          DataBinding.FieldName = 'NAME'
          Width = 205
        end
        object clv2ED: TcxGridDBColumn
          Caption = #1045#1076'. '#1080#1079#1084'.'
          DataBinding.FieldName = 'ED'
          Width = 48
        end
        object clv2QUANTITY: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'QUANTITY'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 53
        end
        object clv2PRICE: TcxGridDBColumn
          Caption = #1062#1077#1085#1072' '#1079#1072' '#1077#1076'.'
          DataBinding.FieldName = 'PRICE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 65
        end
        object clv2SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 72
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object btn_print: TcxButton
      Left = 322
      Top = 80
      Width = 75
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100' '#1086#1090#1095#1077#1090#1072
      OptionsImage.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FEFEFEFDFDFD
        FBFBFBF8F8F8F6F6F6F4F4F4F3F3F3F3F3F3F3F3F3F3F3F3F4F4F4F5F5F5F8F8
        F8FAFAFAFCFCFCFEFEFEF9F9F9F5F5F5EEEEEEE0DEDBD5D0CBCCC7C3C5C0BBC0
        BBB7BFBAB6C1BDB8C7C2BECFCAC6D7D2CDE8E8E8F1F1F1F7F7F7FAFAFAF4F4F4
        ECECECC2B8AFC2B5A9CDC3BACCC2BACCC2BACCC2B9CBC2B9CBC1B9CBC1B8A795
        84DDDDDDF0F0F0F8F8F8FFFFFFF7F7F7ECECECBEBBB8A29A92B5B5B5B5B5B5B6
        B6B6B6B6B6B6B6B6B6B6B6B6B6B6968A80E4E4E4F4F4F4FFFFFFFEFEFEE9E9E9
        E9E9E99595955B5B5A5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5C5B
        5BDADADAE4E4E4FEFEFEFFFFFFE2E2E2DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDD76BC95B6CCC0D9D9D9FDFDFDFFFFFFDDDDDD
        D0CECDC5B6ACC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAB7AC
        9EC6BCB4D0D0D0FFFFFFFFFFFFF2F2F2BAAEA693634296674696674696674696
        6746966746966746966746966746966746A18069E1E1E1FFFFFFFFFFFFFFFFFF
        F0F0F0BDB2AA9D948ED2D1D1D2D1D1D2D1D1D2D1D1D2D1D1D2D1D1C0BEBDA99C
        92E2E0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F2F2F2F2F2F2F2
        F2F2F2F2F2F2F2F2F2F2F2ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F6F6F1F1F1F0F0F0F1F1F1F2F2F2F5F5F5F6F6F6EFEFEFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F6F6EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEECECECFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 6
      OnClick = btn_printClick
    end
    object chk_pay: TcxCheckBox
      Left = 635
      Top = 23
      Caption = #1089' '#1091#1095#1077#1090#1086#1084' '#1087#1083#1072#1090#1085#1099#1093
      Style.HotTrack = False
      TabOrder = 3
      Transparent = True
      Width = 121
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 45
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object itm_dt1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 180
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_dt2: TdxLayoutItem
      CaptionOptions.Text = ' '#1087#1086
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 156
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_kontr: TdxLayoutItem
      CaptionOptions.Text = #1055#1086#1076#1088#1103#1076#1095#1080#1082
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 261
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 112
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object grplc1Group4: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = ' '
      Parent = grplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 284
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grplc1Group6: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grplc1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object grplc1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grplc1Group6
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_print: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group5
      Control = btn_print
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = ' '
      Parent = grplc1Group6
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group3
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = chk_pay
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 656
    Top = 232
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = dt1
        Properties.Strings = (
          'Date')
      end
      item
        Component = dt2
        Properties.Strings = (
          'Date')
      end>
    StorageName = 'prop1'
    Left = 628
    Top = 232
  end
  object ds_summary: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '       ws.house,s.name SNAME,h.nomer,'
      '       sum(WS.QUANTITY * WS.PRICE) SUMMA'
      'from WORKSPECMATERIAL WS'
      'left outer join house h on h.code=ws.house'
      'left outer join street s on s.code=h.street'
      'left outer join serviswork sw on sw.code=ws.serviswork')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 96
    Top = 264
  end
  object ds_detail: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '       ws.house, WS.CLASSMAT, C.FULLNAME name, C.ED,'
      '       sum(WS.QUANTITY) QUANTITY, WS.PRICE,'
      '       sum(WS.QUANTITY * WS.PRICE) SUMMA'
      'from WORKSPECMATERIAL WS'
      'left outer join CLASSMAT C on C.CODE = ws.CLASSMAT'
      'left outer join serviswork sw on sw.code=ws.serviswork'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 376
    Top = 264
  end
  object src_summary: TDataSource
    DataSet = ds_summary
    Left = 128
    Top = 264
  end
  object src_detail: TDataSource
    DataSet = ds_detail
    Left = 408
    Top = 264
  end
  object src_kontr: TDataSource
    Left = 376
    Top = 184
  end
end
