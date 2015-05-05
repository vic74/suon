object LKHeadForm: TLKHeadForm
  Left = 0
  Top = 0
  Caption = #1043#1088#1072#1092#1080#1082' '#1091#1073#1086#1088#1082#1080' '#1083#1077#1089#1090#1085#1080#1095#1085#1099#1093' '#1082#1083#1077#1090#1086#1082
  ClientHeight = 714
  ClientWidth = 889
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
    Width = 889
    Height = 714
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object msk_Y: TcxMaskEdit
      Left = 109
      Top = 589
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cbb_dog: TcxLookupComboBox
      Left = 35
      Top = 630
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
          FieldName = 'DOG'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_dog
      Style.HotTrack = False
      TabOrder = 3
      Width = 145
    end
    object grd1: TcxGrid
      Left = 23
      Top = 29
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        OnCellDblClick = v1CellDblClick
        DataController.DataSource = src_LKHEAD
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Width = 41
        end
        object clv1ALOCK: TcxGridDBColumn
          Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1082#1072
          DataBinding.FieldName = 'ALOCK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1ALOCKPropertiesEditValueChanged
          HeaderGlyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFBFBFB
            F4F4F4EAEAEADADADACACACAC0C0C0BABABABCBCBCC3C3C3CECECEDDDDDDEBEB
            EBF3F3F3F8F8F8FDFDFDFFFFFFFEFEFEF9F9F9C2C2C2A1A1A17E7E7E7F7F7F88
            88888A8A8A838383828282A2A2A2C1C1C1F7F7F7FCFCFCFFFFFFFFFFFFFFFFFF
            FFFFFFD0D0D0D6D6D6B7B7B7C1C1C1CFCFCFD1D1D1C3C3C3B6B6B6D5D5D5D1D1
            D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1D8D8D8B8B8B8C1C1C1D0
            D0D0D1D1D1C3C3C3B7B7B7D6D6D6D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFCFCFCFD9D9D9B3B3B3BEBEBED1D1D1D3D3D3C1C1C1B1B1B1D6D6D6D0D0
            D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEDBDBDBB1B1B1BBBBBBCD
            CDCDCFCFCFBDBDBDADADADD8D8D8CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFD1D1D1E4E4E4B9B9B9BFBFBFCFCFCFD1D1D1C1C1C1B5B5B5E2E2E2D1D1
            D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1E6E6E6BDBDBDC1C1C1CF
            CFCFD1D1D1C3C3C3BBBBBBE4E4E4D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFD8D8D8BFC0C0BFBFBFD5D5D5DFDFDFE1E1E1D7D7D7C7C7C7C1C1C1D0D0
            D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B1B2DADADAFFFFFFFF
            FFFFFFFFFFFFFFFFEFEFEFAFB0B1E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFB2B3B3D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFEEEEEEADAEAFE6E6
            E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C2C2C2C2C3FFFFFFFF
            FFFFFFFFFFFFFFFFDADADA9D9E9FF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFDBDBDB999A9AF2F2F2FFFFFFFFFFFFFAFAFAA2A2A3C0C1C1FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8DCDCDCBBBBBBB1
            B2B2B2B2B2BFBFBFD7D7D8F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF7F7F7E3E3E3C2C3C3BFC0C0E1E2E2F5F5F5FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Options.ShowCaption = False
          Width = 28
        end
        object clv1Y: TcxGridDBColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          Options.Editing = False
          Width = 78
        end
        object clv1SRVDOG: TcxGridDBColumn
          Caption = #1044#1086#1075#1086#1074#1086#1088'('#1082#1086#1076')'
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
          Width = 88
        end
        object clv1MNAME: TcxGridDBColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'MNAME'
          Options.Editing = False
          Width = 79
        end
        object clv1M: TcxGridDBColumn
          DataBinding.FieldName = 'M'
          Visible = False
          Width = 84
        end
        object clv1DOG: TcxGridDBColumn
          Caption = #1044#1086#1075#1086#1074#1086#1088
          DataBinding.FieldName = 'DOG'
          Options.Editing = False
          Width = 440
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object doc1: TdxBarDockControl
      Left = 34
      Top = 652
      Width = 208
      Height = 28
      Align = dalTop
      BarManager = brm1
    end
    object txt_street: TcxTextEdit
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 5
      Visible = False
      Width = 121
    end
    object cbb_M: TcxComboBox
      Left = 109
      Top = 566
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
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
      TabOrder = 1
      Text = #1103#1085#1074#1072#1088#1100
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
    object grlc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1043#1088#1072#1092#1080#1082' '#1091#1073#1086#1088#1082#1080' '#1083#1077#1089#1090#1085#1080#1095#1085#1099#1093' '#1082#1083#1077#1090#1086#1082
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 461
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = grd1
      Index = 0
    end
    object grlc1Group7: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = ' '
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 119
      ButtonOptions.Buttons = <>
      UseIndent = False
      Index = 1
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = grlc1Group7
      Control = cbb_M
      Index = 0
    end
    object itm_Y: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1043#1086#1076' '#1089#1086#1079#1076#1072#1085#1080#1103
      Parent = grlc1Group7
      Control = msk_Y
      Index = 1
    end
    object itm_dog: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1044#1086#1075#1086#1074#1086#1088
      CaptionOptions.Layout = clTop
      Parent = grlc1Group7
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 352
      Control = cbb_dog
      Index = 2
    end
    object itm_doc1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grlc1Group7
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 351
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1040#1076#1088#1077#1089
      CaptionOptions.Layout = clTop
      Control = txt_street
      Index = -1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 56
    object lcl1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
    object lcl2: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_dog
        Properties.Strings = (
          'Properties.DropDownWidth')
      end>
    StorageName = 'prop1'
    Left = 652
    Top = 56
  end
  object brm1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = cmDb.iml1
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    SunkenBorder = True
    UseSystemFont = True
    Left = 712
    Top = 56
    DockControlHeights = (
      0
      0
      0
      0)
    object bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 923
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_add_h'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_edit_h'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_del_h'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_HPrint'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_add_h: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_add_hClick
    end
    object btn_del_h: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_del_hClick
    end
    object btn_edit_h: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_edit_hClick
    end
    object btn_Add_sh: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1084#1072' '#1074' '#1075#1088#1072#1092#1080#1082
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1084#1072' '#1074' '#1075#1088#1072#1092#1080#1082
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
    end
    object btn_edit_sh: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
    end
    object btn_del_sh: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
    end
    object btn_HPrint: TdxBarButton
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1075#1088#1072#1092#1080#1082
      Category = 0
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1075#1088#1072#1092#1080#1082
      Visible = ivAlways
      PaintStyle = psCaptionGlyph
      OnClick = btn_HPrintClick
    end
  end
  object ds_dog: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sd.CODE, '
      '       sd.KONTRAGENT, '
      '       sd.D1, sd.D2,'
      '       sd."ACTIVE", '
      '       sd.DATA,sd.ATYPE,'
      '         case'
      
        '           when sd.ATYPE = 0 then '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||' +
        #39'| '#1054#1073#1097#1077#1089#1090#1088#1086#1081#39
      
        '           when sd.ATYPE = 1 then '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||' +
        #39'| '#1069#1083#1077#1082#1090#1088#1080#1082#1072#39
      
        '           when sd.ATYPE = 2 then '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||' +
        #39'| '#1051#1080#1092#1090#1099#39
      
        '           when sd.ATYPE = 3 then '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||' +
        #39'| '#1057#1072#1085#1080#1090#1072#1088#1080#1103#39
      
        '           when sd.ATYPE = 4 then '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||' +
        #39'| '#1042#1044#1043#1054#39
      
        '           when sd.ATYPE = 5 then '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||' +
        #39'| '#1042#1077#1085#1090#1080#1083#1103#1094#1080#1103#39
      
        '           when sd.ATYPE = 6 then '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||' +
        #39'| '#1042#1099#1074#1086#1079' '#1058#1041#1054#39
      
        '           when sd.ATYPE = 7 then '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||' +
        #39'| '#1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103#39
      '           else '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||'#39'| '#1055#1088#1086#1095#1077#1077#39
      '         end DOG,'
      '       sd.NUM'
      'FROM SRVDOG sd'
      'left outer join kontragent k on k.code=sd.kontragent'
      'where sd."ACTIVE" =1'
      'order by k.name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 192
    Top = 352
  end
  object src_dog: TDataSource
    DataSet = ds_dog
    Left = 224
    Top = 352
  end
  object ds_LKHEAD: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT lk.CODE,'
      '       lk.Y, '
      '       k.code kontragent, '
      '       lk.SRVDOG,'
      '         case'
      
        '           when sd.ATYPE = 0 then '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||' +
        #39'| '#1054#1073#1097#1077#1089#1090#1088#1086#1081#39
      
        '           when sd.ATYPE = 1 then '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||' +
        #39'| '#1069#1083#1077#1082#1090#1088#1080#1082#1072#39
      
        '           when sd.ATYPE = 2 then '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||' +
        #39'| '#1051#1080#1092#1090#1099#39
      
        '           when sd.ATYPE = 3 then '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||' +
        #39'| '#1057#1072#1085#1080#1090#1072#1088#1080#1103#39
      
        '           when sd.ATYPE = 4 then '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||' +
        #39'| '#1042#1044#1043#1054#39
      
        '           when sd.ATYPE = 5 then '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||' +
        #39'| '#1042#1077#1085#1090#1080#1083#1103#1094#1080#1103#39
      
        '           when sd.ATYPE = 6 then '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||' +
        #39'| '#1042#1099#1074#1086#1079' '#1058#1041#1054#39
      
        '           when sd.ATYPE = 7 then '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||' +
        #39'| '#1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103#39
      '           else '#39#8470#39'||sd.NOMER||'#39' | '#39'||k.name||'#39'| '#1055#1088#1086#1095#1077#1077#39
      '         end DOG,        '
      '       lk.ALOCK, lk.M,'
      '         case'
      '           when lk.M = 1 then '#39#1103#1085#1074#1072#1088#1100#39
      '           when lk.M = 2 then '#39#1092#1077#1074#1088#1072#1083#1100#39
      '           when lk.M = 3 then '#39#1084#1072#1088#1090#39
      '           when lk.M = 4 then '#39#1072#1087#1088#1077#1083#1100#39
      '           when lk.M = 5 then '#39#1084#1072#1081#39
      '           when lk.M = 6 then '#39#1080#1102#1085#1100#39
      '           when lk.M = 7 then '#39#1080#1102#1083#1100#39
      '           when lk.M = 8 then '#39#1072#1074#1075#1091#1089#1090#39
      '           when lk.M = 9 then '#39#1089#1077#1085#1090#1103#1073#1088#1100#39
      '           when lk.M = 10 then '#39#1086#1082#1090#1103#1073#1088#1100#39
      '           when lk.M = 11 then '#39#1085#1086#1103#1073#1088#1100#39
      '           when lk.M = 12 then '#39#1076#1077#1082#1072#1073#1088#1100#39
      '         end MNAME'
      'FROM LKHEAD lk'
      'left outer join srvdog sd on sd.code=lk.srvdog'
      'left outer join kontragent k on k.code=sd.kontragent')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 96
    Top = 120
  end
  object src_LKHEAD: TDataSource
    DataSet = ds_LKHEAD
    Left = 128
    Top = 120
  end
end
