object TRProcess6Form: TTRProcess6Form
  Left = 0
  Top = 0
  HelpContext = 118
  Caption = #1054#1073#1098#1077#1082#1090#1085#1099#1081' '#1078#1091#1088#1085#1072#1083' '#1087#1086' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  ClientHeight = 776
  ClientWidth = 983
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
    Width = 983
    Height = 776
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object cbb_kontr: TcxLookupComboBox
      Left = 10
      Top = 28
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_kontr
      Style.HotTrack = False
      TabOrder = 0
      Width = 204
    end
    object dt1: TcxDateEdit
      Left = 220
      Top = 28
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object dt2: TcxDateEdit
      Left = 347
      Top = 28
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cbb_state: TcxComboBox
      Left = 474
      Top = 28
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1087#1088#1077#1076#1088#1077#1084#1086#1085#1090#1085#1072#1103' '#1074#1089#1090#1088#1077#1095#1072
        #1076#1077#1092#1077#1082#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100
        #1089#1084#1077#1090#1072
        #1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1077' '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1077
        #1074' '#1088#1072#1073#1086#1090#1077
        #1079#1072#1074#1077#1088#1096#1077#1085#1086
        #1083#1102#1073#1086#1081' '#1089#1090#1072#1090#1091#1089)
      Style.HotTrack = False
      TabOrder = 3
      Text = #1083#1102#1073#1086#1081' '#1089#1090#1072#1090#1091#1089
      Width = 177
    end
    object btn_exec: TcxButton
      Left = 657
      Top = 24
      Width = 98
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      OptionsImage.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C2020819494FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF427C7C007C7C758A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99999966999922
        BBBB777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5C5C5CA0D1D105A0A0666666FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A003A3A4E
        DFDF131313616161FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF3F79794EDFDF929292A0A0A0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C5C5CAF
        CCCC44DFDF838383999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF44444400222233555599DDDD444444222222555555FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57838342C5C58A
        FFFF75E9E9838383FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9E9E9E7997974EF3F3A5F3F36BDFDF6B6B6BFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF92929249
        4949494949494949494949494949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 4
      OnClick = btn_execClick
    end
    object grd1: TcxGrid
      Left = 20
      Top = 68
      Width = 939
      Height = 409
      TabOrder = 6
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        OnCustomDrawCell = v1CustomDrawCell
        DataController.DataSource = src_TRFACT
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv1SUMMA
          end
          item
            Kind = skSum
            Column = clv1NSUMMA
          end
          item
            Kind = skCount
            Column = clv1STATE
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        object clv1TRDOPSTATE: TcxGridDBColumn
          DataBinding.FieldName = 'TRDOPSTATE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = iml1
          Properties.Items = <
            item
              Description = #1047#1072#1087#1080#1089#1100' '#1079#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1072
              ImageIndex = 0
              Value = 1
            end
            item
              ImageIndex = 1
            end
            item
              Value = 0
            end>
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
          Options.Editing = False
          Options.ShowCaption = False
          Width = 24
          IsCaptionAssigned = True
        end
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object clv1STATE: TcxGridDBColumn
          Caption = #1057#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'STATE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_state
          Properties.OnEditValueChanged = clv1STATEPropertiesEditValueChanged
          OnCustomDrawCell = clv1STATECustomDrawCell
          Options.Editing = False
          Width = 158
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 174
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 32
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'DATA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Properties.OnEditValueChanged = clv1DATAPropertiesEditValueChanged
          Visible = False
          OnCustomDrawCell = clv1DATACustomDrawCell
          VisibleForCustomization = False
          Width = 76
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MNAME'
          Options.Editing = False
          Width = 176
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Options.Editing = False
          Width = 164
        end
        object clv1MANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FIO: TcxGridDBColumn
          Caption = #1054#1090#1074'. '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'FIO'
          Options.Editing = False
          Width = 164
        end
        object clv1NCALC: TcxGridDBColumn
          Caption = #8470' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALC'
          Options.Editing = False
          Width = 75
        end
        object clv1NCALCDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALCDATE'
          Options.Editing = False
          Width = 83
        end
        object clv1NSUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1089#1084#1077#1090#1077
          DataBinding.FieldName = 'NSUMMA'
          Options.Editing = False
          Width = 78
        end
        object clv1NDOP: TcxGridDBColumn
          Caption = #8470' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'NDOP'
          Options.Editing = False
          Width = 75
        end
        object clv1SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1088#1072#1073#1086#1090' '#1092#1072#1082#1090
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          Properties.OnEditValueChanged = clv1SUMMAPropertiesEditValueChanged
          OnCustomDrawCell = clv1SUMMACustomDrawCell
          Options.Editing = False
        end
        object clv1PLANCODE: TcxGridDBColumn
          Caption = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1089#1090#1088#1086#1082#1091' '#1087#1083#1072#1085#1072
          DataBinding.FieldName = 'PLANCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1TRDOPSOG: TcxGridDBColumn
          Caption = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1089#1090#1088#1086#1082#1091' '#1076#1086#1087#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'TRDOPSOG'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1TRDOP: TcxGridDBColumn
          DataBinding.FieldName = 'TRDOP'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1D1: TcxGridDBColumn
          Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1076#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'D1'
          Options.Editing = False
          Width = 74
        end
        object clv1D2: TcxGridDBColumn
          Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1076#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'D2'
          Options.Editing = False
          Width = 82
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          DataBinding.FieldName = 'NOTE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ValidateOnEnter = True
          Properties.OnEditValueChanged = clv1NOTEPropertiesEditValueChanged
          Options.Editing = False
          Width = 194
        end
        object clv1DPLACE: TcxGridDBColumn
          Caption = #1052#1077#1089#1090#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1088#1077#1084#1086#1085#1090#1072
          DataBinding.FieldName = 'DPLACE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ValidateOnEnter = True
          Properties.OnEditValueChanged = clv1DPLACEPropertiesEditValueChanged
          Options.Editing = False
          Width = 161
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 20
      Top = 553
      Width = 939
      Height = 200
      TabOrder = 8
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_TRPREDP
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Width = 44
        end
        object clv2TRFACT: TcxGridDBColumn
          DataBinding.FieldName = 'TRFACT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088' '#1072#1082#1090#1072', '#1076#1086#1082'-'#1090#1072
          DataBinding.FieldName = 'NOMER'
          Width = 90
        end
        object clv2DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 91
        end
        object clv2DTYPENAME: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'DTYPENAME'
          Width = 125
        end
        object clv2DTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'DTYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2NOTE: TcxGridDBColumn
          Caption = #1047#1072#1084#1077#1095#1072#1085#1080#1103' '#1080' '#1085#1077#1076#1086#1089#1090#1072#1090#1082#1080
          DataBinding.FieldName = 'NOTE'
          Width = 373
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object btn_print: TcxButton
      Left = 771
      Top = 24
      Width = 37
      Height = 25
      Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
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
      PaintStyle = bpsGlyph
      TabOrder = 5
      OnClick = btn_printClick
    end
    object doc1: TdxBarDockControl
      Left = 20
      Top = 475
      Width = 939
      Height = 28
      Align = dalTop
      BarManager = brm1
      SunkenBorder = True
      UseOwnSunkenBorder = True
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
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 33
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_kontr: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 204
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_dt1: TdxLayoutItem
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_dt2: TdxLayoutItem
      CaptionOptions.Text = #1087#1086
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_state: TdxLayoutItem
      CaptionOptions.Text = #1057#1090#1072#1090#1091#1089
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 177
      Control = cbb_state
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_exec: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 98
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_print: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Offsets.Left = 10
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 37
      Control = btn_print
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object grlc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 1
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
    object itm_doc: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grlc1Group2
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grlc1Group3: TdxLayoutGroup
      CaptionOptions.Text = #1047#1072#1084#1077#1095#1072#1085#1080#1103', '#1074#1099#1076#1072#1085#1085#1099#1077' '#1087#1086#1076#1088#1103#1076#1095#1080#1082#1072#1084#1080
      Parent = grp1
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 2
    end
    object itm_grd2: TdxLayoutItem
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group3
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 512
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_kontr
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = dt1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = dt2
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 732
    Top = 512
  end
  object src_kontr: TDataSource
    Left = 125
    Top = 136
  end
  object ds_TRFACT: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,'
      '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,'
      
        '  K.NAME KNAME, TF.MANAGER,(P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO' +
        ','
      '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,'
      
        '  TF.PLANCODE,TF.STATE,TF.TRDOPSOG, td.code trdop, td.state TRDO' +
        'PSTATE,'
      '  td.d1, td.d2, TF.SMANAGER, TF.ZD, TF.SD, TF.DPLACE'
      'from TRFACT TF'
      ' left outer join HOUSE H on H.CODE = TF.HOUSE'
      ' left outer join STREET S on S.CODE = H.STREET'
      ' left outer join MLIST M on M.CODE = TF.MLIST'
      ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT'
      ' left outer join WORKER W on W.CODE = TF.MANAGER'
      ' left outer join PIPLE P on P.CODE = W.PIPLE'
      ' left outer join trdopsog ts on ts.code=tf.trdopsog'
      ' left outer join trdop td on td.code=ts.trdop')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 464
    Top = 184
  end
  object src_TRFACT: TDataSource
    DataSet = ds_TRFACT
    Left = 493
    Top = 184
  end
  object m_state: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 400
    Top = 416
  end
  object src_state: TDataSource
    DataSet = m_state
    Left = 432
    Top = 416
  end
  object iml1: TcxImageList
    FormatVersion = 1
    DesignInfo = 17039632
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C00080000000800000008000000080000000800000008000
          000080000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C00080000000800000008000000080000000800000008000
          000080000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C00080000000800000008000000080000000800000008000
          000080000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000800000008000000080000000FFFFFF00800000008000
          000080000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000800000008000000080000000FFFFFF00800000008000
          000080000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C00080000000800000008000000080000000800000008000
          000080000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C00080000000C0C0C000C0C0C000C0C0C0008000
          0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C00080000000C0C0C000C0C0C000C0C0C0008000
          0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C00080000000C0C0C000C0C0C000C0C0C0008000
          0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000800000008000000080000000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
        MaskColor = clSilver
      end>
  end
  object ds_TRPREDP: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT tp.CODE, '
      '       tp.TRFACT, '
      '       tp.NOMER, '
      '       tp.DATA,'
      '       case'
      '         when tp.DTYPE=0 then '#39#1087#1088#1086#1095#1077#1077#39
      '         when tp.DTYPE=1 then '#39#1072#1082#1090' '#1089#1082#1088#1099#1090#1099#1093' '#1088#1072#1073#1086#1090#39
      '         when tp.DTYPE=2 then '#39#1072#1082#1090' '#1087#1088#1086#1074#1077#1088#1082#1080' '#1082#1072#1095#1077#1089#1090#1074#1072#39
      '         when tp.DTYPE=3 then '#39#1087#1083#1072#1085#1086#1074#1072#1103' '#1087#1088#1086#1074#1077#1088#1082#1072#39
      '        else '#39#39
      '       end DTYPENAME,'
      '       tp.DTYPE, '
      '       tp.NOTE'
      'FROM TRPREDP tp')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 176
    Top = 560
  end
  object src_TRPREDP: TDataSource
    DataSet = ds_TRPREDP
    Left = 204
    Top = 560
  end
  object fr: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    OldStyleProgress = True
    PreviewOptions.Buttons = [pbPrint, pbExport, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40817.624149884260000000
    ReportOptions.LastChange = 40817.673081875000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 272
    Top = 232
    Datasets = <
      item
        DataSet = fr.Q1
        DataSetName = 'Q1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object fdb: TfrxFIBDatabase
        DatabaseName = '192.168.1.6:/home/share/base/DEZ.FDB'
        LoginPrompt = False
        Params.Strings = (
          'user_name=sysdba'
          'password=masterkey'
          'sql_role_name=')
        SQLDialect = 3
        pLeft = 20
        pTop = 40
      end
      object Q1: TfrxFIBQuery
        UserName = 'Q1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          'select'
          '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,'
          '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,'
          
            '  K.NAME KNAME, TF.MANAGER,(P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO' +
            ','
          '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,'
          
            '  TF.PLANCODE,TF.STATE,TF.TRDOPSOG, td.code trdop, td.state TRDO' +
            'PSTATE,'
          '  td.d1, td.d2'
          'from TRFACT TF'
          ' left outer join HOUSE H on H.CODE = TF.HOUSE'
          ' left outer join STREET S on S.CODE = H.STREET'
          ' left outer join MLIST M on M.CODE = TF.MLIST'
          ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT'
          ' left outer join WORKER W on W.CODE = TF.MANAGER'
          ' left outer join PIPLE P on P.CODE = W.PIPLE'
          ' left outer join trdopsog ts on ts.code=tf.trdopsog'
          ' left outer join trdop td on td.code=ts.trdop'
          '     '
          '')
        Database = fr.fdb
        pLeft = 20
        pTop = 96
        Parameters = <>
      end
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Rich1: TfrxRichView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 90.708720000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574323034205461686F6D613B7D7B5C66315C
            666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C636F6C6F
            7274626C203B5C726564305C677265656E305C626C75653235353B7D0D0A7B5C
            2A5C67656E657261746F7220526963686564323020362E332E393630307D5C76
            6965776B696E64345C756331200D0A5C706172645C71725C66305C667331365C
            2763665C2766305C2765385C2765625C2765655C2765365C2765355C2765645C
            2765385C276535205C27623931305C7061720D0A5C276561205C2763665C2765
            655C2765625C2765655C2765365C2765355C2765645C2765385C276665205C27
            6565205C2765665C2765655C2766305C2766665C2765345C2765615C27653520
            5C2765665C2766305C2765655C2765325C2765355C2765345C2765355C276564
            5C2765385C2766665C7061720D0A5C2766325C2765355C2765615C2766335C27
            66395C2765355C2765335C276565205C2766305C2765355C2765635C2765655C
            2765645C2766325C276530205C2763635C2763615C2763345C7061720D0A5C70
            61720D0A0D0A5C706172645C71635C667332385C2763655C2765315C2766615C
            2765355C2765615C2766325C2765645C2766625C276539205C2765365C276633
            5C2766305C2765645C2765305C276562205C2765665C276565205C2765655C27
            66305C2765335C2765305C2765645C2765385C2765375C2765305C2766365C27
            65385C276538205C6366315C625C66315C6C616E6731303333205B7661724B6F
            6E74725D5C6366305C62305C66305C667331365C6C616E67313034395C706172
            0D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 49.133858267716540000
        Top = 170.078850000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          Width = 188.976402360000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1083#1080#1094#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 188.976402360000000000
          Width = 37.795300000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1086#1084)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 226.771702360000000000
          Width = 79.370130000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1089#1084#1077#1090#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 306.141832360000000000
          Width = 226.771800000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1080#1076' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 532.913632360000000000
          Width = 94.488250000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1086' '#1088#1072#1073#1086#1090
            '('#1087#1083#1072#1085')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Align = baWidth
          Left = 627.401882360000000000
          Width = 325.039738660000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1084#1077#1095#1072#1085#1080#1103', '#1074#1099#1076#1072#1085#1085#1099#1077' '#1087#1086#1076#1088#1103#1076#1095#1080#1082#1072#1084#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Align = baRight
          Left = 952.441621020000000000
          Width = 94.488188980000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
            '('#1087#1083#1072#1085')')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 241.889920000000000000
        Width = 1046.929810000000000000
        DataSet = fr.Q1
        DataSetName = 'Q1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."SNAME"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 188.976500000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."NOMER"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 226.771800000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."NCALC"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 306.141930000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."MNAME"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 532.913730000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[IIF(<Q1."D1"> = 0,'#39#39',<Q1."D1">)]  ')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          Left = 627.401980000000000000
          Width = 325.039641020000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baRight
          Left = 952.441621020000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[IIF(<Q1."D2"> = 0,'#39#39',<Q1."D2">)]  ')
          ParentFont = False
        end
      end
    end
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
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    UseSystemFont = True
    Left = 624
    Top = 224
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
      FloatLeft = 1103
      FloatTop = 653
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_del_fact'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_AddNewWork'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_del_fact: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ScreenTip = tip_del_fact
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000010101020101010401010106010101090101010B0101010C0101010C0101
        010B010101090101010701010104010101020000000000000000000000010101
        0108010101110101011B010101240101012C010101330101053D0101053E0101
        01350101012E010101260101011C010101130101010900000001000000000000
        0000000000000000000101010C11060667830909A7D90A0AC3FE0A0AC3FE0909
        A7D90606678301010C1101010102000000000000000000000000000000000000
        0000000000000303262E0A0AB0E10C0CD1FF0D0DE4FF0D0DEEFF0D0DEEFF0D0D
        E4FF0C0CD1FF0A0AB0E10303262E000000000000000000000000000000000000
        0000020213170B0BB9E51414EDFF1616FBFF1616FBFF1616FBFF1616FBFF1616
        FBFF1616FBFF1414EDFF0B0BB9E5020213170000000000000000000000000000
        0000070779971C1CEFFF1F1FF8FF1F1FF8FF1F1FF8FF1F1FF8FF1F1FF8FF1F1F
        F8FF1F1FF8FF1F1FF8FF1C1CEFFF070779970000000000000000000000000101
        06071616CEF13B3BF5FF3A3AE9FF3939EAFF3232EAFF3131ECFF3131EDFF3131
        EEFF3232EFFF2C2CF0FF2929F5FF1515CEF10101060700000000000000000202
        242E3838E1FF6666F5FFAFAFEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA8A8F6FF3F3FF2FF3A3AE1FF0202242E00000000000000000202
        29354343DFFF7B7BF4FFB3B3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB0B0F7FF7777F3FF4545DFFF0202293500000000000000000101
        0F142828D2FD8C8CF2FF7A7AEBFF7B7BEBFF7B7BEDFF7C7CEEFF7C7CEFFF7C7C
        F0FF7B7BF1FF7A7AF1FF8C8CF2FF2B2BD2FD01010F1400000000000000000000
        0000090999C17474E9FF9F9FF3FFA1A1F4FFA1A1F4FFA1A1F4FFA1A1F4FFA1A1
        F4FFA1A1F4FF9F9FF3FF7575E9FF0A0A99C10000000000000000000000000000
        000003032F3F2929D6FD9191EEFFA4A4F1FFAEAEF3FFB2B2F4FFB2B2F4FFAEAE
        F3FFA4A4F1FF9191EEFF2929D6FD03032F3F0000000000000000000000000000
        000000000000050557723636DCFE9797F1FFA2A2F2FFA2A2F2FFA2A2F2FFA2A2
        F2FF9898F1FF3838DCFE05055772000000000000000000000000000000000000
        000000000000000000000404394D1515B1DA4D4DE1FF6D6DEDFF6F6FEDFF5252
        E2FF1616B1DA0404394D00000000000000000000000000000000000000000000
        0000000000000000000000000000000001010303263405054660050546600303
        2634000001010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btn_del_factClick
    end
    object btn1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      ScreenTip = tip_del_fact
      Visible = ivAlways
    end
    object btn_AddNewWork: TdxBarButton
      Caption = #1044#1054#1073#1072#1074#1080#1090#1100' '#1088#1072#1073#1086#1090#1091
      Category = 0
      Hint = #1044#1054#1073#1072#1074#1080#1090#1100' '#1088#1072#1073#1086#1090#1091
      ScreenTip = tip_new_Work
      Visible = ivAlways
      Glyph.Data = {
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
      OnClick = btn_AddNewWorkClick
    end
  end
  object stip1: TdxBarScreenTipRepository
    Left = 656
    Top = 224
    object tip_del_fact: TdxBarScreenTip
      Header.Glyph.Data = {
        72010000424D7201000000000000760000002800000015000000150000000100
        040000000000FC000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333330003333333333333333333330003333333333333333333330003333
        333333333333333330003000000000000000003330003FFFFFFFFFFFFFFFF033
        30003F00000F00000000000030003FFFFFF999999999999030003F0000099999
        9999999330003FFFFFFFFFFFFFFFF03330003F00000F000F0000F03330003FFF
        FFFFFFFFFFFFF03330003F00000F000F0000F03330003FFFFFFFFFFFFFFFF033
        30003F00000F000F0000F03330003FFFFFFFFFFFFFFFF03330003F00000F000F
        0000F03330003FFFFFFFFFFFFFFFF03330003000000000000000003330003F0C
        CCCCCCCCC0F0F0333000333333333333333333333000}
      Header.Text = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1080#1079' '#1092#1072#1082#1090#1072'.'
      Description.Text = 
        #1042' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1077' '#1079#1072#1087#1080#1089#1100' '#1073#1091#1076#1077#1090' '#1091#1076#1072#1083#1077#1085#1072' '#1080#1079' '#1074#1089#1077#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1088#1077 +
        #1084#1086#1085#1090#1072' ('#1089#1084#1077#1090#1099','#1076#1086#1087'.'#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103'...)'
      UseStandardFooter = True
    end
    object tip_new_Work: TdxBarScreenTip
      Header.Text = #1044#1086#1073#1072#1074#1080#1090#1100' '#1088#1072#1073#1086#1090#1091
      Description.Text = 
        #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1099' '#1074' '#1092#1072#1082#1090' '#1089#1086' '#1089#1090#1072#1090#1091#1089#1086#1084' "'#1079#1072#1074#1077#1088#1096#1077#1085#1086'".'#13#10#1056#1072#1073#1086#1090#1072' '#1073#1091#1076#1077#1090' ' +
        #1076#1086#1073#1072#1074#1083#1077#1085#1072' '#1084#1080#1085#1091#1103' '#1074#1089#1077' '#1101#1090#1072#1087#1099'.'
    end
  end
end
