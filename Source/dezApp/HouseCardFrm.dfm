object HouseCardForm: THouseCardForm
  Left = 0
  Top = 0
  Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1076#1086#1084#1072
  ClientHeight = 662
  ClientWidth = 942
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
  object Layout: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 942
    Height = 662
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lf1
    object cbb_Street: TcxLookupComboBox
      Left = 49
      Top = 17
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_STREET
      Properties.OnEditValueChanged = cbb_StreetPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Width = 187
    end
    object cbb_House: TcxLookupComboBox
      Left = 263
      Top = 17
      Properties.DropDownSizeable = True
      Properties.GridMode = True
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
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = src_HOUSE
      Properties.OnEditValueChanged = cbb_HousePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Width = 65
    end
    object M1: TcxComboBox
      Left = 381
      Top = 17
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
      TabOrder = 2
      Text = #1103#1085#1074#1072#1088#1100
      Width = 103
    end
    object Y1: TcxMaskEdit
      Left = 487
      Top = 17
      Properties.MaskKind = emkRegExpr
      Style.HotTrack = False
      TabOrder = 3
      Text = 'Y1'
      Width = 48
    end
    object M2: TcxComboBox
      Left = 554
      Top = 17
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
      TabOrder = 4
      Text = #1103#1085#1074#1072#1088#1100
      Width = 89
    end
    object Y2: TcxMaskEdit
      Left = 646
      Top = 17
      Properties.MaskKind = emkRegExpr
      Style.HotTrack = False
      TabOrder = 5
      Text = 'Y2'
      Width = 48
    end
    object cxButton1: TcxButton
      Left = 697
      Top = 17
      Width = 80
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 6
      OnClick = cxButton1Click
    end
    object grd1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 762
      Height = 235
      TabOrder = 28
      Visible = False
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1KNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'KNAME'
          Width = 188
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 73
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SERVISWORK: TcxGridDBColumn
          DataBinding.FieldName = 'SERVISWORK'
          Visible = False
          VisibleForCustomization = False
          Width = 83
        end
        object clv1SWORKNAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'SWORKNAME'
          Width = 210
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1ADDR: TcxGridDBColumn
          DataBinding.FieldName = 'ADDR'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 261
        end
        object clv1PRICE: TcxGridDBColumn
          Caption = #1062#1077#1085#1072
          DataBinding.FieldName = 'PRICE'
          Visible = False
          Width = 76
        end
        object clv1WORKLIST: TcxGridDBColumn
          DataBinding.FieldName = 'WORKLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1QUANTITY: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'QUANTITY'
          Visible = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 10000
      Top = 10000
      Width = 762
      Height = 234
      TabOrder = 29
      Visible = False
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv2NAME
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv2QUANTITY
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv2PRICE
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2WORKSPECLIST: TcxGridDBColumn
          DataBinding.FieldName = 'WORKSPECLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2CLASSMAT: TcxGridDBColumn
          DataBinding.FieldName = 'CLASSMAT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
          DataBinding.FieldName = 'NAME'
          Width = 281
        end
        object clv2QUANTITY: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'QUANTITY'
          Width = 97
        end
        object clv2PRICE: TcxGridDBColumn
          Caption = #1062#1077#1085#1072
          DataBinding.FieldName = 'PRICE'
          Width = 100
        end
        object clv2NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 275
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 10000
      Top = 10000
      Width = 830
      Height = 361
      TabOrder = 31
      Visible = False
      object v3: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv3SUMMA
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv3NSUMMA
          end
          item
            Kind = skCount
            Column = clv3STATE
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
        object clv3TRDOPSTATE: TcxGridDBColumn
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
        object clv3CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object clv3STATE: TcxGridDBColumn
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
          Options.Editing = False
          Width = 158
        end
        object clv3SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
          Width = 174
        end
        object clv3NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
          Width = 32
        end
        object clv3DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'DATA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Visible = False
          VisibleForCustomization = False
          Width = 76
        end
        object clv3STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MNAME'
          Options.Editing = False
          Width = 176
        end
        object clv3KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3KNAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Options.Editing = False
          Width = 164
        end
        object clv3MANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3FIO: TcxGridDBColumn
          Caption = #1054#1090#1074'. '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'FIO'
          Options.Editing = False
          Width = 164
        end
        object clv3NCALC: TcxGridDBColumn
          Caption = #8470' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALC'
          Options.Editing = False
          Width = 75
        end
        object clv3NCALCDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALCDATE'
          Options.Editing = False
          Width = 83
        end
        object clv3NSUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1089#1084#1077#1090#1077
          DataBinding.FieldName = 'NSUMMA'
          Options.Editing = False
          Width = 78
        end
        object clv3NDOP: TcxGridDBColumn
          Caption = #8470' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'NDOP'
          Options.Editing = False
          Width = 75
        end
        object clv3SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1088#1072#1073#1086#1090' '#1092#1072#1082#1090
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          Options.Editing = False
        end
        object clv3DPLACE: TcxGridDBColumn
          Caption = #1052#1077#1089#1090#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103
          DataBinding.FieldName = 'DPLACE'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 185
        end
        object clv3NOTE: TcxGridDBColumn
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          DataBinding.FieldName = 'NOTE'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 194
        end
        object clv3PLANCODE: TcxGridDBColumn
          Caption = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1089#1090#1088#1086#1082#1091' '#1087#1083#1072#1085#1072
          DataBinding.FieldName = 'PLANCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3TRDOPSOG: TcxGridDBColumn
          Caption = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1089#1090#1088#1086#1082#1091' '#1076#1086#1087#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'TRDOPSOG'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3TRDOP: TcxGridDBColumn
          DataBinding.FieldName = 'TRDOP'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3D1: TcxGridDBColumn
          Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1076#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'D1'
          Options.Editing = False
          Width = 74
        end
        object clv3D2: TcxGridDBColumn
          Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1076#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'D2'
          Options.Editing = False
          Width = 82
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object lbl1: TcxDBLabel
      Left = 133
      Top = 133
      DataBinding.DataField = 'DUNAME'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 125
    end
    object lbl_Total_SQ: TcxDBLabel
      Left = 713
      Top = 133
      DataBinding.DataField = 'TOTAL_SQ'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 202
    end
    object lbl_Living_SQ: TcxDBLabel
      Left = 713
      Top = 157
      DataBinding.DataField = 'Living_SQ'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 202
    end
    object lbl_Lodger_CNT: TcxDBLabel
      Left = 417
      Top = 205
      DataBinding.DataField = 'Lodger_CNT'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 121
    end
    object lbl_Cellar_SQ: TcxDBLabel
      Left = 713
      Top = 205
      DataBinding.DataField = 'CELLAR_SQ'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 202
    end
    object lbl_Flat_CNT: TcxDBLabel
      Left = 417
      Top = 181
      DataBinding.DataField = 'Flat_CNT'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 121
    end
    object lbl_DRTZ_SQ: TcxDBLabel
      Left = 713
      Top = 181
      DataBinding.DataField = 'DRTZ_SQ'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 202
    end
    object lbl_AccCode_CNT: TcxDBLabel
      Left = 417
      Top = 229
      DataBinding.DataField = 'ACCCODE_CNT'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 121
    end
    object lbl_Floor_CNT: TcxDBLabel
      Left = 417
      Top = 157
      DataBinding.DataField = 'FLOOR_CNT'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 121
    end
    object lbl_Lift_CNT: TcxDBLabel
      Left = 417
      Top = 253
      DataBinding.DataField = 'LIFT_CNT'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 121
    end
    object lbl_Entrance_CNT: TcxDBLabel
      Left = 417
      Top = 133
      DataBinding.DataField = 'ENTRANCE_CNT'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 121
    end
    object lbl_Garbage_CNT: TcxDBLabel
      Left = 417
      Top = 277
      DataBinding.DataField = 'GARBAGE_CNT'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 121
    end
    object lbl_BuildYear: TcxDBLabel
      Left = 133
      Top = 157
      DataBinding.DataField = 'BUILDYEAR'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 125
    end
    object lbl_Last_KR: TcxDBLabel
      Left = 133
      Top = 181
      DataBinding.DataField = 'Last_KR'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 125
    end
    object lbl_Wall: TcxDBLabel
      Left = 133
      Top = 205
      DataBinding.DataField = 'WALLNAME'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 125
    end
    object lbl_GAZ: TcxDBLabel
      Left = 133
      Top = 277
      DataBinding.DataField = 'GAZNAME'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 125
    end
    object lbl_Fasad: TcxDBLabel
      Left = 133
      Top = 229
      DataBinding.DataField = 'FASADNAME'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 125
    end
    object lbl_Krov: TcxDBLabel
      Left = 133
      Top = 253
      DataBinding.DataField = 'KROVNAME'
      DataBinding.DataSource = src_HOUSE
      Style.HotTrack = False
      Height = 21
      Width = 125
    end
    object grd4: TcxGrid
      Left = 10000
      Top = 10000
      Width = 894
      Height = 160
      TabOrder = 26
      Visible = False
      object v4: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_NGPROOM
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv4A
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object clv4CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4A: TcxGridDBColumn
          Caption = #1040#1082#1090#1080#1074'.'
          DataBinding.FieldName = 'A'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 39
        end
        object clv4SQ: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'SQ'
          Width = 90
        end
        object clv4FLOOR: TcxGridDBColumn
          Caption = #1069#1090#1072#1078
          DataBinding.FieldName = 'FLOOR'
          Width = 93
        end
        object clv4TARGET: TcxGridDBColumn
          Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
          DataBinding.FieldName = 'TARGET'
          Width = 123
        end
        object clv4SBNAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
          DataBinding.FieldName = 'SBNAME'
          Width = 214
        end
        object clv4TS: TcxGridDBColumn
          DataBinding.FieldName = 'TS'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4TSNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080
          DataBinding.FieldName = 'TSNAME'
          Width = 158
        end
      end
      object l4: TcxGridLevel
        GridView = v4
      end
    end
    object grd5: TcxGrid
      Left = 28
      Top = 469
      Width = 886
      Height = 175
      TabOrder = 27
      object v5: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_HOUSEKWORK
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object clv5CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv5HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv5MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv5Y: TcxGridDBColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          Width = 75
        end
        object clv5MNAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MNAME'
          Width = 316
        end
        object clv5ENT: TcxGridDBColumn
          Caption = #1057#1087#1080#1089#1086#1082' '#1087#1086#1076#1098#1077#1079#1076#1086#1074
          DataBinding.FieldName = 'ENT'
          Width = 166
        end
      end
      object l5: TcxGridLevel
        GridView = v5
      end
    end
    object docm1: TdxBarDockControl
      Left = 16
      Top = 95
      Width = 910
      Height = 22
      Align = dalTop
      BarManager = bm1
    end
    object grd8: TcxGrid
      Left = 10000
      Top = 10000
      Width = 853
      Height = 205
      Align = alClient
      TabOrder = 35
      Visible = False
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F5
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F6
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F7
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F8
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F9
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F10
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F11
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F12
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F13
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F14
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F15
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F16
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F17
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F18
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F19
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F20
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F21
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F22
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl_F4
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.BandsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Bands = <
          item
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 148
          end
          item
            Caption = #1046#1080#1083#1086#1081' '#1092#1086#1085#1076
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 624
          end
          item
            Caption = #1053#1077#1078#1080#1083#1086#1081' '#1092#1086#1085#1076
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 397
          end
          item
            Caption = #1046#1080#1083#1086#1081'+'#1085#1077#1078#1080#1083#1086#1081' '#1092#1086#1085#1076
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 688
          end
          item
            Visible = False
            VisibleForCustomization = False
          end>
        object cl_F0: TcxGridDBBandedColumn
          Caption = #8470
          DataBinding.FieldName = 'F0'
          Visible = False
          VisibleForCustomization = False
          Width = 25
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl_F1: TcxGridDBBandedColumn
          Caption = #1040#1076#1088#1077#1089
          DataBinding.FieldName = 'F1'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 219
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl_F2: TcxGridDBBandedColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'F2'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 37
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cl_F3: TcxGridDBBandedColumn
          Caption = #1058#1072#1088#1080#1092
          DataBinding.FieldName = 'F3'
          HeaderAlignmentHorz = taCenter
          Width = 37
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cl_F4: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F4'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 84
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl_F5: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F5'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 85
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl_F6: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089' (+,-) '#1087#1086' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1102' '#1079#1072' '#1087#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1087#1077#1088#1080#1086#1076
          DataBinding.FieldName = 'F6'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 105
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl_F7: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' ('#1089#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1085#1086')'
          DataBinding.FieldName = 'F7'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 108
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl_F8: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1090#1072' '#1079#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'F8'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 85
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cl_F9: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F9'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 84
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cl_F10: TcxGridDBBandedColumn
          Caption = #1057#1084#1077#1090#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'F10'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 96
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cl_F11: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F11'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 73
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl_F12: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F12'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl_F13: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1090#1072' '#1079#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'F13'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 63
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl_F14: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F14'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 85
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl_F15: TcxGridDBBandedColumn
          Caption = #1057#1084#1077#1090#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'F15'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 95
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cl_F16: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F16'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 92
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl_F17: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F17'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 92
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl_F18: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089' (+.-) '#1087#1086' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1102' '#1079#1072' '#1087#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1087#1077#1088#1080#1086#1076
          DataBinding.FieldName = 'F18'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 107
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl_F19: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' ('#1089#1082#1086#1088#1088#1077#1082#1090#1080#1088')'
          DataBinding.FieldName = 'F19'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 98
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl_F20: TcxGridDBBandedColumn
          Caption = #1042#1086#1079#1085#1072#1075#1088#1072#1078#1076#1077#1085#1080#1077' '#1059#1050
          DataBinding.FieldName = 'F20'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 95
          Position.BandIndex = 3
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cl_F21: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F21'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 95
          Position.BandIndex = 3
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cl_F22: TcxGridDBBandedColumn
          Caption = #1057#1084#1077#1090#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'F22'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 109
          Position.BandIndex = 3
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1D: TcxGridDBBandedColumn
          Caption = #1044
          DataBinding.FieldName = 'D'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          VisibleForCustomization = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1A: TcxGridDBBandedColumn
          DataBinding.FieldName = 'A'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          VisibleForCustomization = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1Column1: TcxGridDBBandedColumn
          DataBinding.FieldName = 'House'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clvb1NMONTH: TcxGridDBBandedColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'NMONTH'
          Width = 76
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1Y: TcxGridDBBandedColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          Width = 34
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
      end
      object l8: TcxGridLevel
        GridView = vb1
      end
    end
    object grd6: TcxGrid
      Left = 10000
      Top = 10000
      Width = 853
      Height = 246
      TabOrder = 36
      Visible = False
      object vb2: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F3
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F5
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F6
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F7
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F8
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F9
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F10
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F11
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F12
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F13
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F14
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F15
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F16
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F17
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F18
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F19
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F20
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1f21
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F22
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F23
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F24
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F25
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clbv1F26
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb1House
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb1Column11
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb1Column2
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.BandMoving = False
        OptionsCustomize.BandsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Bands = <
          item
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
          end
          item
            Caption = #1047#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1100' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
            Options.HoldOwnColumnsOnly = True
            Width = 300
          end
          item
            Options.HoldOwnColumnsOnly = True
            Width = 180
          end
          item
            Caption = #1047#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1100' '#1085#1072' '#1082#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072
            Options.HoldOwnColumnsOnly = True
            Width = 270
          end
          item
            Caption = #1053#1077#1078#1080#1083#1086#1081' '#1092#1086#1085#1076
            Options.HoldOwnColumnsOnly = True
            Width = 572
          end
          item
            Options.HoldOwnColumnsOnly = True
            Width = 180
          end
          item
            Caption = #1047#1072#1090#1088#1072#1090#1099
            Options.HoldOwnColumnsOnly = True
            Width = 450
          end
          item
            Options.HoldOwnColumnsOnly = True
          end>
        object clbv1A: TcxGridDBBandedColumn
          DataBinding.FieldName = 'A'
          Visible = False
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clbv1F1: TcxGridDBBandedColumn
          Caption = #8470
          DataBinding.FieldName = 'F0'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 27
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clbv1F2: TcxGridDBBandedColumn
          Caption = #1040#1076#1088#1077#1089
          DataBinding.FieldName = 'F1'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 185
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clbv1F3: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clbv1F4: TcxGridDBBandedColumn
          Caption = #8470' '#1044#1059
          DataBinding.FieldName = 'F2'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 38
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clbv1F5: TcxGridDBBandedColumn
          Caption = #1085#1072#1089#1077#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'F4'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clbv1F6: TcxGridDBBandedColumn
          Caption = #1083#1100#1075#1086#1090#1099
          DataBinding.FieldName = 'F5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clbv1F7: TcxGridDBBandedColumn
          Caption = #1048#1058#1054#1043#1054
          DataBinding.FieldName = 'F6'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clbv1F8: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F7'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clbv1F9: TcxGridDBBandedColumn
          Caption = #1055#1086#1089#1090#1091#1087#1080#1083#1086
          DataBinding.FieldName = 'F8'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clbv1F10: TcxGridDBBandedColumn
          Caption = #1085#1072#1089#1077#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'F9'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clbv1F11: TcxGridDBBandedColumn
          Caption = #1083#1100#1075#1086#1090#1099
          DataBinding.FieldName = 'F10'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clbv1F12: TcxGridDBBandedColumn
          Caption = #1048#1058#1054#1043#1054
          DataBinding.FieldName = 'F11'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clbv1F13: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089'_1'
          DataBinding.FieldName = 'F12'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clbv1F14: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' ('#1089#1082#1086#1088#1088'.)'
          DataBinding.FieldName = 'F13'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clbv1F15: TcxGridDBBandedColumn
          Caption = #1055#1088#1086#1094#1077#1085#1090' '#1059#1050' ('#1078#1080#1083#1086#1077')'
          DataBinding.FieldName = 'F14'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clbv1F16: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089'. '#1089#1073#1086#1088' ('#1078#1080#1083#1086#1077')'
          DataBinding.FieldName = 'F15'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 6
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clbv1F17: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1072' '#1055#1054
          DataBinding.FieldName = 'F16'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 6
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clbv1F18: TcxGridDBBandedColumn
          Caption = #1055#1088#1086#1095#1080#1077
          DataBinding.FieldName = 'F17'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 6
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clbv1F19: TcxGridDBBandedColumn
          Caption = #1048#1090#1086#1075#1086' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F18'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 6
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clbv1F20: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F19'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clbv1f21: TcxGridDBBandedColumn
          Caption = #1047#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1100' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
          DataBinding.FieldName = 'F20'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clbv1F22: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F21'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clbv1F23: TcxGridDBBandedColumn
          Caption = #1055#1086#1089#1090#1091#1087#1080#1083#1086
          DataBinding.FieldName = 'F22'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 4
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clbv1F24: TcxGridDBBandedColumn
          Caption = #1055#1088#1086#1094#1077#1085#1090' '#1059#1050' ('#1085#1077#1078#1080#1083#1086#1077')'
          DataBinding.FieldName = 'F23'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clbv1F25: TcxGridDBBandedColumn
          Caption = #1047#1072#1076#1086#1083#1078#1077#1085#1086#1089#1090#1100' '#1085#1072' '#1082#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072
          DataBinding.FieldName = 'F24'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 4
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clbv1F26: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089'_2'
          DataBinding.FieldName = 'F25'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 90
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1House: TcxGridDBBandedColumn
          DataBinding.FieldName = 'House'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          VisibleForCustomization = False
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clvb1Column11: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' ('#1089#1087#1088#1072#1074#1082#1072')'
          DataBinding.FieldName = 'F26'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Position.BandIndex = 4
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1Column2: TcxGridDBBandedColumn
          Caption = #1055#1086#1089#1090#1091#1087#1080#1083#1086' ('#1089#1087#1088#1072#1074#1082#1072')'
          DataBinding.FieldName = 'F27'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 4
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb2NMONTH: TcxGridDBBandedColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'NMONTH'
          Width = 72
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2Y: TcxGridDBBandedColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          Width = 32
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object l6: TcxGridLevel
        GridView = vb2
      end
    end
    object cbb_srv: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediateDropDownWhenActivated = True
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
      Properties.ListSource = src_HOUSESRV
      Style.HotTrack = False
      TabOrder = 33
      Visible = False
      Width = 260
    end
    object btn_GetBDR: TcxButton
      Left = 10000
      Top = 10000
      Width = 130
      Height = 21
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = cmDb.iml1
      TabOrder = 34
      Visible = False
      OnClick = btn_GetBDRClick
    end
    object grd7: TcxGrid
      Left = 10000
      Top = 10000
      Width = 815
      Height = 259
      Align = alClient
      TabOrder = 37
      Visible = False
      object vb3: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF4
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF5
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF6
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF7
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF8
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF9
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF10
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF11
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF12
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF14
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF15
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF16
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF17
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF18
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF19
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF20
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF21
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF22
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF23
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF24
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF25
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF26
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF27
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF28
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF30
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF32
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF34
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb1Column12
          end
          item
            Kind = skSum
            Column = clvb1Column21
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.BandMoving = False
        OptionsCustomize.BandsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Bands = <
          item
            Width = 1291
          end
          item
            Caption = #1053#1077#1078#1080#1083#1086#1081' '#1092#1086#1085#1076
          end
          item
            Caption = #1046#1080#1083#1086#1081'+'#1053#1077#1078#1080#1083#1086#1081' '#1092#1086#1085#1076
          end
          item
            Width = 500
          end
          item
            Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
            Position.BandIndex = 3
            Position.ColIndex = 1
            Width = 392
          end
          item
            Position.BandIndex = 3
            Position.ColIndex = 0
            Width = 108
          end
          item
            Caption = #1057#1072#1085#1090#1077#1093'.,'#1086#1073#1097#1077#1089#1090#1088'. '#1088#1072#1073#1086#1090#1099
            Position.BandIndex = 4
            Position.ColIndex = 0
            Width = 149
          end
          item
            Caption = #1069#1083'.'#1084#1086#1085#1090#1072#1078'.'#1088#1072#1073#1086#1090#1099
            Position.BandIndex = 4
            Position.ColIndex = 1
            Width = 110
          end
          item
            Caption = #1058#1077#1082#1091#1097#1080#1081' '#1088#1077#1084#1086#1085#1090
            Position.BandIndex = 4
            Position.ColIndex = 2
            Width = 133
          end>
        object clvb3NMONTH: TcxGridDBBandedColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'NMONTH'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 88
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clDog: TcxGridDBBandedColumn
          Caption = #1044
          DataBinding.FieldName = 'D'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Visible = False
          HeaderAlignmentVert = vaCenter
          MinWidth = 16
          VisibleForCustomization = False
          Width = 16
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl1: TcxGridDBBandedColumn
          DataBinding.FieldName = 'A'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          HeaderAlignmentVert = vaCenter
          VisibleForCustomization = False
          Width = 21
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object clF0: TcxGridDBBandedColumn
          Caption = #8470
          DataBinding.FieldName = 'F0'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clF1: TcxGridDBBandedColumn
          Caption = #1040#1076#1088#1077#1089
          DataBinding.FieldName = 'F1'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 216
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clF2: TcxGridDBBandedColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'F2'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 41
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clF3: TcxGridDBBandedColumn
          Caption = #1058#1072#1088#1080#1092
          DataBinding.FieldName = 'F3'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clF4: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F4'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 88
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clF5: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 71
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object clF6: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089
          DataBinding.FieldName = 'F6'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object clF7: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' ('#1089#1082#1086#1088#1088'.)'
          DataBinding.FieldName = 'F7'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object clF8: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1090#1072' '#1079#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'F8'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 102
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object clF9: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F9'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 93
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object clvb1Column12: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100' '#1076#1077#1088#1072#1090#1080#1079
          DataBinding.FieldName = 'DRTZ'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 67
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object clF10: TcxGridDBBandedColumn
          Caption = #1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'F10'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 85
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object clF11: TcxGridDBBandedColumn
          Caption = #1044#1086#1089#1090#1072#1074#1082#1072' '#1080' '#1088#1072#1089#1087#1077#1095#1072#1090#1082#1072' '#1082#1074#1080#1090#1072#1085#1094#1080#1081
          DataBinding.FieldName = 'F11'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 96
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object clF12: TcxGridDBBandedColumn
          Caption = #1054#1044#1057
          DataBinding.FieldName = 'F12'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object clF14: TcxGridDBBandedColumn
          Caption = #1055#1088#1086#1095#1080#1077' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F14'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 96
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object clF15: TcxGridDBBandedColumn
          Caption = #1048#1090#1086#1075#1086' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F15'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 85
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object clF16: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F16'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 53
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clF17: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F17'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 68
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clF18: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1090#1072' '#1079#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'F18'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 97
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clF19: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F19'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 91
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clF20: TcxGridDBBandedColumn
          Caption = #1055#1088#1086#1095#1080#1077' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F20'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 74
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clF21: TcxGridDBBandedColumn
          Caption = #1048#1090#1086#1075#1086' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F21'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clF22: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F22'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 63
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clF23: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F23'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 78
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clF24: TcxGridDBBandedColumn
          Caption = #1042#1086#1079#1085#1072#1075#1088#1072#1078#1076#1077#1085#1080#1077' '#1059#1050
          DataBinding.FieldName = 'F24'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 93
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clF25: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F25'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 85
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clF26: TcxGridDBBandedColumn
          Caption = #1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103'. '#1054#1044#1057'. '#1050#1074#1080#1090#1072#1085#1094#1080#1080'. '#1055#1088#1086#1095#1077#1077
          DataBinding.FieldName = 'F26'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clF27: TcxGridDBBandedColumn
          Caption = #1048#1090#1086#1075#1086' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F27'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 2
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clF28: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072' '#1082' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1102
          DataBinding.FieldName = 'F28'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 121
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clF29: TcxGridDBBandedColumn
          Caption = '%'
          DataBinding.FieldName = 'F29'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 58
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clF30: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'F30'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 96
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clF31: TcxGridDBBandedColumn
          Caption = '%'
          DataBinding.FieldName = 'F31'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 33
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clF32: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'F32'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 7
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clF33: TcxGridDBBandedColumn
          Caption = '%'
          DataBinding.FieldName = 'F33'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 36
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clF34: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'F34'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 63
          Position.BandIndex = 8
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1Column21: TcxGridDBBandedColumn
          Caption = #1051#1080#1094'.'#1089#1095#1077#1090#1072
          DataBinding.FieldName = 'AccCount'
          Width = 67
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object clvb3Y: TcxGridDBBandedColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 35
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
      end
      object l7: TcxGridLevel
        GridView = vb3
      end
    end
    object grd9: TcxGrid
      Left = 10000
      Top = 10000
      Width = 801
      Height = 296
      Align = alClient
      TabOrder = 38
      Visible = False
      object vb4: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl4
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl6
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl7
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl8
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl9
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl10
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl11
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl12
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl13
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl14
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl15
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl16
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl17
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl18
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl19
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl20
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl21
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl22
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl23
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl24
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl25
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl26
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl27
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb1F27
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb1F28
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb1F29
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb1F30
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb1F31
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb1F32
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cl28
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb1Column22
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb1Column3
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb1Column4
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.BandMoving = False
        OptionsCustomize.BandsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Bands = <
          item
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
          end
          item
            Caption = #1047#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1100' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 233
          end
          item
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 163
          end
          item
            Caption = #1047#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1100' '#1085#1072' '#1082#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 224
          end
          item
            Caption = #1040#1088#1077#1085#1076#1072#1090#1086#1088#1099
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 445
          end
          item
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 162
          end
          item
            Caption = #1047#1072#1090#1088#1072#1090#1099
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 1074
          end
          item
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 194
          end
          item
            Caption = #1058#1077#1082#1091#1097#1080#1081' '#1088#1077#1084#1086#1085#1090
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Position.BandIndex = 6
            Position.ColIndex = 1
            Width = 201
          end
          item
            Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Position.BandIndex = 6
            Position.ColIndex = 2
            Width = 201
          end
          item
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Position.BandIndex = 6
            Position.ColIndex = 3
            Width = 453
          end
          item
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Position.BandIndex = 6
            Position.ColIndex = 0
            Width = 219
          end>
        object clvb1Column13: TcxGridDBBandedColumn
          DataBinding.FieldName = 'A'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl2: TcxGridDBBandedColumn
          Caption = #8470
          DataBinding.FieldName = 'F0'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 27
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl3: TcxGridDBBandedColumn
          Caption = #1040#1076#1088#1077#1089
          DataBinding.FieldName = 'F1'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 185
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl4: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cl5: TcxGridDBBandedColumn
          Caption = #8470' '#1044#1059
          DataBinding.FieldName = 'F2'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 38
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cl6: TcxGridDBBandedColumn
          Caption = #1085#1072#1089#1077#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'F4'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 74
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl7: TcxGridDBBandedColumn
          Caption = #1083#1100#1075#1086#1090#1099
          DataBinding.FieldName = 'F5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 77
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl8: TcxGridDBBandedColumn
          Caption = #1048#1058#1054#1043#1054
          DataBinding.FieldName = 'F6'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 82
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl9: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' 100%'
          DataBinding.FieldName = 'F7'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl10: TcxGridDBBandedColumn
          Caption = #1055#1086#1089#1090#1091#1087#1080#1083#1086' '#1086#1090' '#1085#1072#1089#1077#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'F8'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl11: TcxGridDBBandedColumn
          Caption = #1085#1072#1089#1077#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'F9'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl12: TcxGridDBBandedColumn
          Caption = #1083#1100#1075#1086#1090#1099
          DataBinding.FieldName = 'F10'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl13: TcxGridDBBandedColumn
          Caption = #1048#1058#1054#1043#1054
          DataBinding.FieldName = 'F11'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl14: TcxGridDBBandedColumn
          Caption = #1047#1072#1076#1086#1083#1078'. '#1085#1072' '#1085#1072#1095#1072#1083#1086
          DataBinding.FieldName = 'F12'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl15: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F13'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl16: TcxGridDBBandedColumn
          Caption = #1055#1086#1089#1090#1091#1087#1080#1083#1086
          DataBinding.FieldName = 'F14'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 4
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl17: TcxGridDBBandedColumn
          Caption = #1055#1088#1094#1077#1085#1090' '#1059#1050' ('#1085#1077#1078#1080#1083#1086#1077')'
          DataBinding.FieldName = 'F15'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 11
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cl18: TcxGridDBBandedColumn
          Caption = #1047#1072#1076#1086#1083#1078#1085'. '#1085#1072' '#1082#1086#1085#1077#1094
          DataBinding.FieldName = 'F16'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 4
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cl19: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089'_1'
          DataBinding.FieldName = 'F17'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl20: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' ('#1089#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1085#1086')'
          DataBinding.FieldName = 'F18'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl21: TcxGridDBBandedColumn
          Caption = #1055#1088#1086#1094#1077#1085#1090' '#1059#1050' ('#1078#1080#1083#1086#1077')'
          DataBinding.FieldName = 'F19'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 79
          Position.BandIndex = 11
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl22: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089'. '#1089#1073#1086#1088' ('#1078#1080#1083#1086#1077')'
          DataBinding.FieldName = 'F20'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 72
          Position.BandIndex = 11
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cl23: TcxGridDBBandedColumn
          Caption = #1057#1072#1085#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077', '#1086#1073#1097#1077#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1077' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'F21'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 129
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl24: TcxGridDBBandedColumn
          Caption = #1069#1083#1077#1082#1090#1088#1086#1084#1086#1085#1090#1072#1078#1085#1099#1077' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'F22'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 110
          Position.BandIndex = 8
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl25: TcxGridDBBandedColumn
          Caption = #1057#1072#1085#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077', '#1086#1073#1097#1077#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1077' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'F23'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 121
          Position.BandIndex = 9
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cl26: TcxGridDBBandedColumn
          Caption = #1069#1083#1077#1082#1090#1088#1086#1084#1086#1085#1090#1072#1078#1085#1099#1077' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'F24'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 115
          Position.BandIndex = 9
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl27: TcxGridDBBandedColumn
          Caption = #1054#1044#1057
          DataBinding.FieldName = 'F25'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 80
          Position.BandIndex = 10
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1F27: TcxGridDBBandedColumn
          Caption = #1044#1086#1089#1090#1072#1074#1082#1072
          DataBinding.FieldName = 'F26'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 80
          Position.BandIndex = 10
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1F28: TcxGridDBBandedColumn
          Caption = #1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'F27'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 83
          Position.BandIndex = 10
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1F29: TcxGridDBBandedColumn
          Caption = #1060#1080#1085#1072#1085#1089#1080#1088#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'F28'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 92
          Position.BandIndex = 10
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1F30: TcxGridDBBandedColumn
          Caption = #1055#1088#1086#1095#1080#1077
          DataBinding.FieldName = 'F29'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 72
          Position.BandIndex = 10
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1F31: TcxGridDBBandedColumn
          Caption = #1048#1090#1086#1075#1086
          DataBinding.FieldName = 'F30'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 74
          Position.BandIndex = 10
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1F32: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089'_2'
          DataBinding.FieldName = 'F31'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 98
          Position.BandIndex = 7
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cl28: TcxGridDBBandedColumn
          DataBinding.FieldName = 'House'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 11
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1Column22: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' ('#1089#1087#1088#1072#1074#1082#1072')'
          DataBinding.FieldName = 'F32'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1Column3: TcxGridDBBandedColumn
          Caption = #1055#1086#1089#1090#1091#1087#1080#1083#1086' ('#1089#1087#1088#1072#1074#1082#1072')'
          DataBinding.FieldName = 'F33'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 4
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1Column4: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089' '#1054#1048
          DataBinding.FieldName = 'F34'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 96
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb4NMONTH: TcxGridDBBandedColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'NMONTH'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb4Y: TcxGridDBBandedColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          HeaderAlignmentHorz = taCenter
          Width = 30
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
      end
      object l9: TcxGridLevel
        GridView = vb4
      end
    end
    object grd10: TcxGrid
      Left = 10000
      Top = 10000
      Width = 822
      Height = 353
      Align = alClient
      TabOrder = 39
      Visible = False
      object vb5: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = clvb534
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb535
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb536
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb537
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb538
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb539
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb540
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb541
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clF13
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb542
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb543
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb544
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb545
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb546
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb547
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb548
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb549
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb550
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb551
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb552
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb553
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb554
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb555
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb556
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'F4'
            Column = clvb533
          end
          item
            Format = ',0.'
            Kind = skSum
            Column = clvb534
          end
          item
            Format = ',0.'
            Kind = skSum
            Column = clvb535
          end
          item
            Format = ',0.'
            Kind = skSum
            Column = clvb536
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb537
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb538
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb539
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb540
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb541
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clF13
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb542
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb543
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb544
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb545
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb546
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb547
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb548
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb549
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb550
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb551
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb552
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb553
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb554
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb555
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb556
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Bands = <
          item
            Caption = #1046#1080#1083#1086#1081' '#1092#1086#1085#1076
            Width = 1155
          end
          item
            Caption = #1053#1077#1078#1080#1083#1086#1081' '#1092#1086#1085#1076
            Width = 362
          end
          item
            Caption = #1047#1072#1090#1088#1072#1090#1099
            Width = 900
          end>
        object clvb5NMONTH: TcxGridDBBandedColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'NMONTH'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 74
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb5Y: TcxGridDBBandedColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 33
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb529: TcxGridDBBandedColumn
          DataBinding.FieldName = 'F0'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb530: TcxGridDBBandedColumn
          Caption = #1040#1076#1088#1077#1089
          DataBinding.FieldName = 'F1'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 267
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb531: TcxGridDBBandedColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'F2'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 46
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb532: TcxGridDBBandedColumn
          Caption = #1058#1072#1088#1080#1092
          DataBinding.FieldName = 'F3'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 96
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clvb533: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F4'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clvb534: TcxGridDBBandedColumn
          Caption = #1051#1080#1092#1090#1086#1074' '#1074#1089#1077#1075#1086
          DataBinding.FieldName = 'F5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0.'
          HeaderAlignmentHorz = taCenter
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object clvb535: TcxGridDBBandedColumn
          Caption = #1051#1080#1092#1090#1086#1074' '#1085#1072' '#1090#1077#1093#1086#1089#1074#1080#1076'.'
          DataBinding.FieldName = 'F6'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0.'
          HeaderAlignmentHorz = taCenter
          Width = 116
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object clvb536: TcxGridDBBandedColumn
          Caption = #1051#1080#1092#1090#1086#1074' '#1085#1072' '#1101#1082#1089#1087#1077#1088#1090#1080#1079#1091
          DataBinding.FieldName = 'F7'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0.'
          HeaderAlignmentHorz = taCenter
          Width = 116
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object clvb537: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F8'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 129
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object clvb538: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089
          DataBinding.FieldName = 'F9'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 144
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object clvb539: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' ('#1046#1055' + '#1053#1046#1055')'
          DataBinding.FieldName = 'F10'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 83
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb540: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1090#1072' '#1079#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'F11'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 119
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object clvb541: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F12'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 119
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object clF13: TcxGridDBBandedColumn
          Caption = #1059#1073#1086#1088#1082#1072' '#1082#1072#1073#1080#1085#1099' '#1083#1080#1092#1090#1072
          DataBinding.FieldName = 'F13'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 86
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb542: TcxGridDBBandedColumn
          Caption = #1058#1077#1093#1086#1089#1074#1080#1076'.'
          DataBinding.FieldName = 'F14'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 74
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb543: TcxGridDBBandedColumn
          Caption = #1069#1082#1089#1087#1077#1088#1090#1080#1079#1072' '#1083#1080#1092#1090#1086#1074
          DataBinding.FieldName = 'F15'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb544: TcxGridDBBandedColumn
          Caption = #1055#1088#1086#1095#1080#1077' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F16'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 66
          Position.BandIndex = 2
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clvb545: TcxGridDBBandedColumn
          Caption = #1048#1090#1086#1075#1086' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F17'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 90
          Position.BandIndex = 2
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object clvb546: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F18'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 69
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb547: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F19'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 85
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb548: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1090#1072' '#1079#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'F20'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 93
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb549: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'F21'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 90
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb550: TcxGridDBBandedColumn
          Caption = #1055#1088#1086#1095#1080#1077' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F22'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 79
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb551: TcxGridDBBandedColumn
          Caption = #1048#1090#1086#1075#1086' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F23'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 73
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb552: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072' '#1082' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1102
          DataBinding.FieldName = 'F24'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 91
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb553: TcxGridDBBandedColumn
          Caption = #1040#1042#1057
          DataBinding.FieldName = 'F25'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 80
          Position.BandIndex = 2
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb554: TcxGridDBBandedColumn
          Caption = #1051#1044#1057#1057
          DataBinding.FieldName = 'F26'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 77
          Position.BandIndex = 2
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb555: TcxGridDBBandedColumn
          Caption = #1058#1077#1093#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'F27'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 82
          Position.BandIndex = 2
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clvb556: TcxGridDBBandedColumn
          Caption = #1058#1077#1082#1091#1097#1080#1081' '#1088#1077#1084#1086#1085#1090
          DataBinding.FieldName = 'F28'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'#39
          HeaderAlignmentHorz = taCenter
          Width = 101
          Position.BandIndex = 2
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object clvb5D1: TcxGridDBBandedColumn
          Caption = #1044
          DataBinding.FieldName = 'D'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          VisibleForCustomization = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb557: TcxGridDBBandedColumn
          DataBinding.FieldName = 'A'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          VisibleForCustomization = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object l10: TcxGridLevel
        GridView = vb5
      end
    end
    object grd11: TcxGrid
      Left = 10000
      Top = 10000
      Width = 718
      Height = 394
      Align = alClient
      TabOrder = 40
      Visible = False
      object vb6: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb631
          end
          item
            Kind = skCount
            Column = clvb632
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb633
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb634
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb635
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb636
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb637
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb638
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb639
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb640
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb641
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb642
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb643
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb644
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb645
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb646
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb647
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb648
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb649
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb650
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb651
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb652
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb653
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb654
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb655
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb656
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb657
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb658
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb659
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb6Column23
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clvb6Column31
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.BandMoving = False
        OptionsCustomize.BandsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Bands = <
          item
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
          end
          item
            Caption = #1047#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1100' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 233
          end
          item
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 171
          end
          item
            Caption = #1047#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1100' '#1085#1072' '#1082#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 225
          end
          item
            Caption = #1040#1088#1077#1085#1076#1072#1090#1086#1088#1099
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 399
          end
          item
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 163
          end
          item
            Caption = #1047#1072#1090#1088#1072#1090#1099
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 825
          end
          item
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
          end
          item
            Position.BandIndex = 6
            Position.ColIndex = 1
            Width = 73
          end
          item
            Caption = #1054#1087#1083#1072#1090#1072' '#1055#1054
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Position.BandIndex = 6
            Position.ColIndex = 2
            Width = 466
          end
          item
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Position.BandIndex = 6
            Position.ColIndex = 3
            Width = 148
          end
          item
            Caption = #1055#1088#1086#1094#1077#1085#1090' '#1059#1050
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Position.BandIndex = 6
            Position.ColIndex = 0
            Width = 138
          end>
        object clvb6Column14: TcxGridDBBandedColumn
          DataBinding.FieldName = 'A'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb629: TcxGridDBBandedColumn
          Caption = #8470
          DataBinding.FieldName = 'F0'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 27
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb630: TcxGridDBBandedColumn
          Caption = #1040#1076#1088#1077#1089
          DataBinding.FieldName = 'F1'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 185
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb631: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'F3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb632: TcxGridDBBandedColumn
          Caption = #8470' '#1044#1059
          DataBinding.FieldName = 'F2'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 38
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb633: TcxGridDBBandedColumn
          Caption = #1085#1072#1089#1077#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'F4'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb634: TcxGridDBBandedColumn
          Caption = #1083#1100#1075#1086#1090#1099
          DataBinding.FieldName = 'F5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb635: TcxGridDBBandedColumn
          Caption = #1048#1058#1054#1043#1054
          DataBinding.FieldName = 'F6'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb636: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' 100%'
          DataBinding.FieldName = 'F7'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb637: TcxGridDBBandedColumn
          Caption = #1055#1086#1089#1090#1091#1087#1080#1083#1086' '#1086#1090' '#1085#1072#1089#1077#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'F8'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb638: TcxGridDBBandedColumn
          Caption = #1085#1072#1089#1077#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'F9'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb639: TcxGridDBBandedColumn
          Caption = #1083#1100#1075#1086#1090#1099
          DataBinding.FieldName = 'F10'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb640: TcxGridDBBandedColumn
          Caption = #1048#1058#1054#1043#1054
          DataBinding.FieldName = 'F11'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb641: TcxGridDBBandedColumn
          Caption = #1047#1072#1076#1086#1083#1078'. '#1085#1072' '#1085#1072#1095#1072#1083#1086
          DataBinding.FieldName = 'F12'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb642: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'F13'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb643: TcxGridDBBandedColumn
          Caption = #1055#1086#1089#1090#1091#1087#1080#1083#1086
          DataBinding.FieldName = 'F14'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 4
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb644: TcxGridDBBandedColumn
          Caption = #1047#1072#1076#1086#1083#1078#1085'. '#1085#1072' '#1082#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072
          DataBinding.FieldName = 'F15'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 4
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb645: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089'_1'
          DataBinding.FieldName = 'F16'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb646: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' ('#1089#1082#1086#1088#1088'.)'
          DataBinding.FieldName = 'F17'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb647: TcxGridDBBandedColumn
          Caption = #1046'/'#1092
          DataBinding.FieldName = 'F18'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 90
          Position.BandIndex = 11
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb648: TcxGridDBBandedColumn
          Caption = #1053#1046#1055
          DataBinding.FieldName = 'F19'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 90
          Position.BandIndex = 11
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb649: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089'. '#1089#1073#1086#1088
          DataBinding.FieldName = 'F20'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 90
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb650: TcxGridDBBandedColumn
          Caption = #1059#1073#1086#1088#1082#1072' '#1082#1072#1073#1080#1085#1099
          DataBinding.FieldName = 'F21'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 68
          Position.BandIndex = 9
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb651: TcxGridDBBandedColumn
          Caption = #1058#1077#1093'.'#1086#1089#1074#1080#1076#1077#1090'.'
          DataBinding.FieldName = 'F22'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 77
          Position.BandIndex = 9
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb652: TcxGridDBBandedColumn
          Caption = #1069#1082#1089#1087#1077#1088#1090#1080#1079#1072
          DataBinding.FieldName = 'F23'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 66
          Position.BandIndex = 9
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb653: TcxGridDBBandedColumn
          Caption = #1040#1042#1057
          DataBinding.FieldName = 'F24'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 65
          Position.BandIndex = 9
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb654: TcxGridDBBandedColumn
          Caption = #1051#1044#1057#1057
          DataBinding.FieldName = 'F25'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 66
          Position.BandIndex = 9
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb655: TcxGridDBBandedColumn
          Caption = #1058#1054
          DataBinding.FieldName = 'F26'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 65
          Position.BandIndex = 9
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb656: TcxGridDBBandedColumn
          Caption = #1058#1056
          DataBinding.FieldName = 'F27'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 66
          Position.BandIndex = 9
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb657: TcxGridDBBandedColumn
          Caption = #1055#1088#1086#1095#1080#1077
          DataBinding.FieldName = 'F28'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 90
          Position.BandIndex = 10
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb658: TcxGridDBBandedColumn
          Caption = #1048#1090#1086#1075#1086' '#1079#1072#1090#1088#1072#1090#1099
          DataBinding.FieldName = 'F29'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 90
          Position.BandIndex = 10
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb659: TcxGridDBBandedColumn
          Caption = #1041#1072#1083#1072#1085#1089'_2'
          DataBinding.FieldName = 'F30'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 90
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb660: TcxGridDBBandedColumn
          DataBinding.FieldName = 'House'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 11
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb6Column23: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086' ('#1089#1087#1088#1072#1074#1082#1072')'
          DataBinding.FieldName = 'F31'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb6Column31: TcxGridDBBandedColumn
          Caption = #1055#1086#1089#1090#1091#1087#1080#1083#1086' ('#1089#1087#1088#1072#1074#1082#1072')'
          DataBinding.FieldName = 'F32'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 4
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb6NMONTH: TcxGridDBBandedColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'NMONTH'
          Width = 57
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb6Y: TcxGridDBBandedColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          Width = 34
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
      end
      object l11: TcxGridLevel
        GridView = vb6
      end
    end
    object grd12: TcxGrid
      Left = 10000
      Top = 10000
      Width = 693
      Height = 516
      TabOrder = 32
      Visible = False
      object v12: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv12_47
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv12_45
          end
          item
            Kind = skCount
            Column = clv12_31
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
        object clv12_29: TcxGridDBColumn
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
        object clv12_30: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object clv12_31: TcxGridDBColumn
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
          Options.Editing = False
          Width = 158
        end
        object clv12_32: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
          Width = 174
        end
        object clv12_33: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
          Width = 32
        end
        object clv12_34: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'DATA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Visible = False
          VisibleForCustomization = False
          Width = 76
        end
        object clv12_35: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv12_36: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv12_37: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv12_38: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MNAME'
          Options.Editing = False
          Width = 176
        end
        object clv12_39: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv12_40: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Options.Editing = False
          Width = 164
        end
        object clv12_41: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv12_42: TcxGridDBColumn
          Caption = #1054#1090#1074'. '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'FIO'
          Options.Editing = False
          Width = 164
        end
        object clv12_43: TcxGridDBColumn
          Caption = #8470' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALC'
          Options.Editing = False
          Width = 75
        end
        object clv12_44: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALCDATE'
          Options.Editing = False
          Width = 83
        end
        object clv12_45: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1089#1084#1077#1090#1077
          DataBinding.FieldName = 'NSUMMA'
          Options.Editing = False
          Width = 78
        end
        object clv12_46: TcxGridDBColumn
          Caption = #8470' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'NDOP'
          Options.Editing = False
          Width = 75
        end
        object clv12_47: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1088#1072#1073#1086#1090' '#1092#1072#1082#1090
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          Options.Editing = False
        end
        object clv12_48: TcxGridDBColumn
          Caption = #1052#1077#1089#1090#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103
          DataBinding.FieldName = 'DPLACE'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 185
        end
        object clv12_49: TcxGridDBColumn
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          DataBinding.FieldName = 'NOTE'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 194
        end
        object clv12_50: TcxGridDBColumn
          Caption = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1089#1090#1088#1086#1082#1091' '#1087#1083#1072#1085#1072
          DataBinding.FieldName = 'PLANCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv12_51: TcxGridDBColumn
          Caption = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1089#1090#1088#1086#1082#1091' '#1076#1086#1087#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'TRLDOPSOG'
          Visible = False
          VisibleForCustomization = False
        end
        object clv12_52: TcxGridDBColumn
          DataBinding.FieldName = 'TRLDOP'
          Visible = False
          VisibleForCustomization = False
        end
        object clv12_53: TcxGridDBColumn
          Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1076#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'D1'
          Options.Editing = False
          Width = 74
        end
        object clv12_54: TcxGridDBColumn
          Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1076#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'D2'
          Options.Editing = False
          Width = 82
        end
      end
      object l12: TcxGridLevel
        GridView = v12
      end
    end
    object grd13: TcxGrid
      Left = 10000
      Top = 10000
      Width = 861
      Height = 306
      TabOrder = 41
      Visible = False
      object vb13: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = vb13CellClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clvb1SALDO0
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1PSUM0
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM0
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO_END0
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1PSUM1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO_END1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1PSUM2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO_END2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1PSUM3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO_END3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1PSUM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO_END
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1PSUM5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1RSUM5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb1SALDO_END5
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = #1040#1076#1088#1077#1089
            Options.HoldOwnColumnsOnly = True
            Width = 254
          end
          item
            Caption = #1053#1072#1088#1091#1078#1085#1072#1103' '#1088#1077#1082#1083#1072#1084#1072
            Options.HoldOwnColumnsOnly = True
            Width = 295
          end
          item
            Caption = #1041#1072#1079#1086#1074#1099#1077' '#1089#1090#1072#1085#1094#1080#1080
            Options.HoldOwnColumnsOnly = True
            Width = 283
          end
          item
            Caption = #1048#1085#1090#1077#1088#1085#1077#1090' '#1080' '#1082#1072#1073#1077#1083#1100#1085#1086#1077
            Options.HoldOwnColumnsOnly = True
            Width = 274
          end
          item
            Caption = #1040#1088#1077#1085#1076#1072' '#1087#1086#1084#1077#1097#1077#1085#1080#1081' '#1054#1048' '#1052#1050#1044
            Options.HoldOwnColumnsOnly = True
            Width = 292
          end
          item
            Caption = #1050#1086#1083#1103#1089#1086#1095#1085#1099#1077
            Options.HoldOwnColumnsOnly = True
            Width = 327
          end
          item
            Caption = #1048#1090#1086#1075#1080
            Options.HoldOwnColumnsOnly = True
            Width = 322
          end>
        object clvb13_29: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1SNAME: TcxGridDBBandedColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 209
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1NOMER: TcxGridDBBandedColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1SALDO0: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1PSUM0: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1RSUM0: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1SALDO_END0: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1SALDO1: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1PSUM1: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1RSUM1: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1SALDO_END1: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1SALDO2: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1PSUM2: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1RSUM2: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1SALDO_END2: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1SALDO3: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1PSUM3: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1RSUM3: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1SALDO_END3: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 4
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1SALDO: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1PSUM: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1RSUM: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 6
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1SALDO_END: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 6
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1SALDO5: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1PSUM5: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1RSUM5: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 5
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1SALDO_END5: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 5
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
      end
      object l13: TcxGridLevel
        GridView = vb13
      end
    end
    object grd14: TcxGrid
      Left = 10000
      Top = 10000
      Width = 861
      Height = 305
      TabOrder = 42
      Visible = False
      object vb14: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_md2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clvb2SALDO0
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2PSUM0
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2RSUM0
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO_END0
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2PSUM1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2RSUM1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO_END1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2PSUM2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2RSUM2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO_END2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2PSUM3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2RSUM3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO_END3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2PSUM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2RSUM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO_END
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2PSUM5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2RSUM5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvb2SALDO_END5
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Options.HoldOwnColumnsOnly = True
            Width = 386
          end
          item
            Caption = #1053#1072#1088#1091#1078#1085#1072#1103' '#1088#1077#1082#1083#1072#1084#1072
            Options.HoldOwnColumnsOnly = True
            Width = 312
          end
          item
            Caption = #1041#1072#1079#1086#1074#1099#1077' '#1089#1090#1072#1085#1094#1080#1080
            Options.HoldOwnColumnsOnly = True
            Width = 298
          end
          item
            Caption = #1048#1085#1090#1077#1088#1085#1077#1090' '#1080' '#1082#1072#1073#1077#1083#1100#1085#1086#1077
            Options.HoldOwnColumnsOnly = True
            Width = 322
          end
          item
            Caption = #1040#1088#1077#1085#1076#1072' '#1087#1086#1084#1077#1097#1077#1085#1080#1081' '#1054#1048' '#1052#1050#1044
            Options.HoldOwnColumnsOnly = True
            Width = 294
          end
          item
            Caption = #1050#1086#1083#1103#1089#1086#1095#1085#1072#1103
            Options.HoldOwnColumnsOnly = True
            Width = 352
          end
          item
            Caption = #1048#1090#1086#1075#1080
            Options.HoldOwnColumnsOnly = True
            Width = 323
          end>
        object clvb2ARENDATOR: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ARENDATOR'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2ARNAME: TcxGridDBBandedColumn
          Caption = #1040#1088#1077#1085#1076#1072#1090#1086#1088
          DataBinding.FieldName = 'ARNAME'
          Width = 177
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2DOGIMMKD: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DOGIMMKD'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2DNOTE: TcxGridDBBandedColumn
          Caption = #1044#1086#1075#1086#1074#1086#1088
          DataBinding.FieldName = 'DNOTE'
          Width = 209
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2SALDO0: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2PSUM0: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2RSUM0: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2SALDO_END0: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END0'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2SALDO1: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2PSUM1: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2RSUM1: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2SALDO_END1: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2SALDO2: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2PSUM2: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2RSUM2: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2SALDO_END2: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2SALDO3: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2PSUM3: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2RSUM3: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2SALDO_END3: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END3'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 4
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2SALDO: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2PSUM: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2RSUM: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 6
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2SALDO_END: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 6
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb2SALDO5: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb2PSUM5: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb2RSUM5: TcxGridDBBandedColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 5
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb2SALDO_END5: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END5'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Position.BandIndex = 5
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
      end
      object l14: TcxGridLevel
        GridView = vb14
      end
    end
    object grd15: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 43
      Visible = False
      object v15: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object clv15TYPENAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1086#1089#1084#1086#1090#1088#1072
          DataBinding.FieldName = 'TYPENAME'
          Visible = False
          GroupIndex = 0
          Width = 192
        end
        object clv15SFNAME: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1101#1083#1077#1084#1077#1085#1090#1072' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080
          DataBinding.FieldName = 'SFNAME'
          Width = 200
        end
        object clv15MNAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'MNAME'
          Width = 283
        end
        object clv15MNOTE: TcxGridDBColumn
          Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1099
          DataBinding.FieldName = 'MNOTE'
          Width = 215
        end
        object clv15NOTE: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'NOTE'
          Width = 240
        end
        object clv15QUANTITY: TcxGridDBColumn
          Caption = #1054#1073#1098#1077#1084' '#1088#1077#1084#1086#1085#1090#1085#1099#1093' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'QUANTITY'
          Width = 171
        end
        object clv15ENTRANCE: TcxGridDBColumn
          Caption = #1055#1086#1076#1098#1077#1079#1076
          DataBinding.FieldName = 'ENTRANCE'
          Width = 179
        end
        object clv15FLOOR: TcxGridDBColumn
          Caption = #1069#1090#1072#1078
          DataBinding.FieldName = 'FLOOR'
          Width = 186
        end
        object clv15FLAT: TcxGridDBColumn
          Caption = #1050#1074#1072#1088#1090#1080#1088#1072
          DataBinding.FieldName = 'FLAT'
          Width = 60
        end
        object clv15ATYPENAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1088#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1103
          DataBinding.FieldName = 'ATYPENAME'
          Width = 154
        end
        object clv15RTYPENAME: TcxGridDBColumn
          Caption = #1056#1077#1096#1077#1085#1080#1077' '#1086' '#1087#1088#1080#1085#1103#1090#1080#1080' '#1084#1077#1088
          DataBinding.FieldName = 'RTYPENAME'
          Visible = False
          GroupIndex = 1
          Width = 192
        end
      end
      object l15: TcxGridLevel
        GridView = v15
      end
    end
    object grd16: TcxGrid
      Left = 10000
      Top = 10000
      Width = 894
      Height = 492
      TabOrder = 30
      Visible = False
      object v16: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1showhouse: TcxGridDBColumn
          Caption = #1040#1082#1090' '#8470
          DataBinding.FieldName = 'showhouse'
          Options.Editing = False
          Width = 47
        end
        object clv1SHOWRESULT: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWRESULT'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.DefaultDescription = #1089#1086#1079#1076#1072#1085#1086' '#1080#1079' '#1072#1082#1090#1072
          Properties.DefaultImageIndex = 8
          Properties.Images = il1
          Properties.Items = <
            item
            end>
          Options.Editing = False
          Width = 22
          IsCaptionAssigned = True
        end
        object clv1WORKSPECLIST1: TcxGridDBColumn
          Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'WORKSPECLIST1'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.DefaultDescription = #1089#1086#1079#1076#1072#1085#1086' '#1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080
          Properties.DefaultImageIndex = 4
          Properties.Images = il1
          Properties.Items = <
            item
            end>
          Properties.ReadOnly = True
          Options.Editing = False
          Options.ShowCaption = False
          Width = 22
        end
        object clv1WORKSPECLIST: TcxGridDBColumn
          Caption = #1087#1086' '#1085#1072#1088#1103#1076#1091
          DataBinding.FieldName = 'WORKSPECLIST'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.DefaultDescription = #1079#1072#1082#1088#1099#1090#1086' '#1080#1079' '#1085#1072#1088#1103#1076#1072
          Properties.DefaultImageIndex = 7
          Properties.Images = il1
          Properties.Items = <
            item
            end>
          Options.Editing = False
          Options.ShowCaption = False
          Width = 24
        end
        object cl29: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1JWORKTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'JWORKTYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1JTNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'JTNAME'
          Width = 119
        end
        object clv1REGDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
          DataBinding.FieldName = 'REGDATE'
          Options.Editing = False
          Width = 87
        end
        object cl30: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KONTRNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KONTRNAME'
          Options.Editing = False
          Width = 175
        end
        object cl31: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          Options.Editing = False
          Width = 123
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 46
        end
        object clv1DESCRIPTION: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1087#1083#1072#1085#1080#1088#1091#1077#1084#1099#1093' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'DESCRIPTION'
          Width = 194
        end
        object clv1PLACE: TcxGridDBColumn
          Caption = #1052#1077#1089#1090#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'PLACE'
          Width = 148
        end
        object clv1PLANDATE: TcxGridDBColumn
          Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1076#1072#1090#1072
          DataBinding.FieldName = 'PLANDATE'
          Width = 95
        end
        object clv1FACTDATE: TcxGridDBColumn
          Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103' '#1076#1072#1090#1072
          DataBinding.FieldName = 'FACTDATE'
          Width = 112
        end
        object cl32: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1099#1093' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'NOTE'
          Width = 228
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1ToArh: TcxGridDBColumn
          Caption = #1042' '#1072#1088#1093#1080#1074
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
                33333333333333903333333333333399033300000099999990330FFFF0999999
                99030FFFF099999999900F00F099999999030FFFF099999990330F00FFFFF099
                03330FFFFFFFF09033330F00F000000333330FFFF0FF033333330F07F0F03333
                33330FFFF0033333333300000033333333333333333333333333}
              Kind = bkGlyph
            end>
          Properties.ViewStyle = vsButtonsAutoWidth
          Visible = False
          VisibleForCustomization = False
          Width = 46
        end
      end
      object l16: TcxGridLevel
        GridView = v16
      end
    end
    object docs1: TdxDockSite
      Left = 10000
      Top = 10000
      Width = 910
      Height = 552
      Visible = False
      Align = alClient
      DockingType = 5
      OriginalWidth = 914
      OriginalHeight = 552
      object dlst1: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 910
        Height = 332
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
        object dlst2: TdxLayoutDockSite
          Left = 220
          Top = 0
          Width = 690
          Height = 332
          DockingType = 0
          OriginalWidth = 300
          OriginalHeight = 200
          object dlst3: TdxLayoutDockSite
            Left = 0
            Top = 0
            Width = 690
            Height = 332
            DockingType = 0
            OriginalWidth = 300
            OriginalHeight = 200
          end
          object dpnl2: TdxDockPanel
            Left = 0
            Top = 0
            Width = 690
            Height = 332
            AllowFloating = False
            AutoHide = False
            Caption = #1059#1079#1077#1083' '#1091#1095#1077#1090#1072
            CaptionButtons = []
            DockingType = 0
            OriginalWidth = 141
            OriginalHeight = 140
            object grd18: TcxGrid
              Left = 0
              Top = 0
              Width = 686
              Height = 310
              Align = alClient
              TabOrder = 0
              object v18: TcxGridDBTableView
                OnKeyUp = v18KeyUp
                Navigator.Buttons.CustomButtons = <>
                OnCellClick = v18CellClick
                DataController.DataSource = src_Device
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.GroupByBox = False
                OptionsView.HeaderAutoHeight = True
                object clv18CODE: TcxGridDBColumn
                  Caption = #1050#1086#1076
                  DataBinding.FieldName = 'CODE'
                  Visible = False
                  Width = 36
                end
                object clv18OPU_HOUSE: TcxGridDBColumn
                  DataBinding.FieldName = 'OPU_HOUSE'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv18OPU_TYPE: TcxGridDBColumn
                  DataBinding.FieldName = 'OPU_TYPE'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv18TNAME: TcxGridDBColumn
                  Caption = #1058#1080#1087' '#1087#1088#1080#1073#1086#1088#1072
                  DataBinding.FieldName = 'TNAME'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 119
                end
                object clv18INST_DATE: TcxGridDBColumn
                  Caption = #1044#1072#1090#1072' '#1091#1089#1090#1072#1085#1086#1074#1082#1080
                  DataBinding.FieldName = 'INST_DATE'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 65
                end
                object clv18INST_KONTRAGENT: TcxGridDBColumn
                  DataBinding.FieldName = 'INST_KONTRAGENT'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv18KNAME: TcxGridDBColumn
                  Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103', '#1091#1089#1090#1072#1085#1086#1074#1080#1074#1096#1072#1103' '#1087#1088#1080#1073#1086#1088
                  DataBinding.FieldName = 'KNAME'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 153
                end
                object clv18TU_DATA: TcxGridDBColumn
                  Caption = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1058#1059
                  DataBinding.FieldName = 'TU_DATA'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 61
                end
                object clv18TU_KONTRAGENT: TcxGridDBColumn
                  DataBinding.FieldName = 'TU_KONTRAGENT'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv18K1NAME: TcxGridDBColumn
                  Caption = #1050#1090#1086' '#1074#1099#1076#1072#1083' '#1058#1059
                  DataBinding.FieldName = 'K1NAME'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 153
                end
                object clv18PROJ_DATE: TcxGridDBColumn
                  Caption = #1044#1072#1090#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103' '#1087#1088#1086#1077#1082#1090#1072
                  DataBinding.FieldName = 'PROJ_DATE'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 78
                end
                object clv18PROJ_KONTRAGENT: TcxGridDBColumn
                  DataBinding.FieldName = 'PROJ_KONTRAGENT'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv18K2NAME: TcxGridDBColumn
                  Caption = #1050#1090#1086' '#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074#1072#1083
                  DataBinding.FieldName = 'K2NAME'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 153
                end
              end
              object l18: TcxGridLevel
                GridView = v18
              end
            end
          end
        end
        object dpnl1: TdxDockPanel
          Left = 0
          Top = 0
          Width = 220
          Height = 332
          AllowFloating = False
          AutoHide = False
          Caption = #1041#1083#1086#1082' '#1091#1095#1077#1090#1072
          CaptionButtons = []
          DockingType = 1
          OriginalWidth = 220
          OriginalHeight = 140
          object grd17: TcxGrid
            Left = 0
            Top = 26
            Width = 212
            Height = 276
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 216
            ExplicitHeight = 284
            object v17: TcxGridDBTableView
              OnKeyUp = v17KeyUp
              Navigator.Buttons.CustomButtons = <>
              OnCellClick = v17CellClick
              DataController.DataSource = src_OPUHOUSE
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              object clv17CODE: TcxGridDBColumn
                Caption = #1050#1086#1076
                DataBinding.FieldName = 'CODE'
                Visible = False
                Width = 37
              end
              object clv17NAME: TcxGridDBColumn
                Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1073#1083#1086#1082#1072
                DataBinding.FieldName = 'NAME'
                Width = 177
              end
              object clv17HOUSE: TcxGridDBColumn
                DataBinding.FieldName = 'HOUSE'
                Visible = False
                VisibleForCustomization = False
              end
              object clv17IP: TcxGridDBColumn
                Caption = 'IP '#1072#1076#1088#1077#1089' '#1084#1086#1076#1077#1084#1072
                DataBinding.FieldName = 'IP'
                Visible = False
                Width = 103
              end
              object clv17ISIP: TcxGridDBColumn
                Caption = #1052#1086#1076#1077#1084' '#1088#1072#1073#1086#1090#1072#1077#1090
                DataBinding.FieldName = 'ISIP'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ImmediatePost = True
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                Options.ShowCaption = False
                Width = 26
              end
            end
            object l17: TcxGridLevel
              GridView = v17
            end
          end
          object doc1: TdxBarDockControl
            Left = 0
            Top = 0
            Width = 212
            Height = 26
            Align = dalTop
            BarManager = bm1
          end
        end
      end
      object ContainerDockSite1: TdxHorizContainerDockSite
        Left = 0
        Top = 332
        Width = 910
        Height = 220
        ActiveChildIndex = -1
        AllowFloating = False
        AutoHide = False
        CaptionButtons = [cbMaximize]
        DockingType = 4
        OriginalWidth = 185
        OriginalHeight = 220
        object dxtbcntnrdckst1: TdxTabContainerDockSite
          Left = 0
          Top = 0
          Width = 533
          Height = 220
          ActiveChildIndex = 0
          AllowFloating = False
          AutoHide = False
          CaptionButtons = []
          DockingType = 1
          OriginalWidth = 533
          OriginalHeight = 220
          object dpnl3: TdxDockPanel
            Left = 0
            Top = 0
            Width = 511
            Height = 194
            AllowFloating = False
            AutoHide = False
            Caption = #1055#1088#1080#1073#1086#1088' '#1091#1095#1077#1090#1072
            CaptionButtons = []
            DockingType = 0
            OriginalWidth = 533
            OriginalHeight = 220
            object grd19: TcxGrid
              Left = 0
              Top = 0
              Width = 511
              Height = 194
              Align = alClient
              TabOrder = 0
              object v19: TcxGridDBTableView
                OnKeyUp = v19KeyUp
                Navigator.Buttons.CustomButtons = <>
                OnCellClick = v19CellClick
                DataController.DataSource = src_OPUELEMENT
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.GroupByBox = False
                OptionsView.HeaderAutoHeight = True
                object v19CODE: TcxGridDBColumn
                  Caption = #1050#1086#1076
                  DataBinding.FieldName = 'CODE'
                  Visible = False
                  Width = 36
                end
                object v19DEVICE: TcxGridDBColumn
                  DataBinding.FieldName = 'DEVICE'
                  Visible = False
                  VisibleForCustomization = False
                end
                object v19DEVICEMARK: TcxGridDBColumn
                  DataBinding.FieldName = 'DEVICEMARK'
                  Visible = False
                  VisibleForCustomization = False
                end
                object v19DNAME: TcxGridDBColumn
                  Caption = #1052#1072#1088#1082#1072' '#1087#1088#1080#1073#1086#1088#1072' '#1091#1095#1077#1090#1072
                  DataBinding.FieldName = 'DNAME'
                  GroupSummaryAlignment = taCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 162
                end
                object v19NOMER: TcxGridDBColumn
                  Caption = #1053#1086#1084#1077#1088' '#1087#1088#1080#1073#1086#1088#1072
                  DataBinding.FieldName = 'NOMER'
                  GroupSummaryAlignment = taCenter
                  HeaderAlignmentHorz = taCenter
                end
                object v19MAKEDATE: TcxGridDBColumn
                  Caption = #1044#1072#1090#1072' '#1074#1099#1087#1091#1089#1082#1072' '#1087#1088#1080#1073#1086#1088#1072
                  DataBinding.FieldName = 'MAKEDATE'
                  GroupSummaryAlignment = taCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 79
                end
                object v19DV: TcxGridDBColumn
                  Caption = #1044#1080#1072#1084#1077#1090#1088' '#1074#1074#1086#1076#1072
                  DataBinding.FieldName = 'DV'
                  GroupSummaryAlignment = taCenter
                  HeaderAlignmentHorz = taCenter
                end
                object v19DR: TcxGridDBColumn
                  Caption = #1044#1080#1072#1084#1077#1090#1088' '#1088#1072#1089#1093#1086#1076#1086#1084#1077#1088#1072
                  DataBinding.FieldName = 'DR'
                  GroupSummaryAlignment = taCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 77
                end
                object v19QV: TcxGridDBColumn
                  Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1074#1086#1076#1086#1074' ('#1092#1072#1079')'
                  DataBinding.FieldName = 'QV'
                  GroupSummaryAlignment = taCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 76
                end
                object v19ISDOC: TcxGridDBColumn
                  Caption = #1053#1072#1083#1080#1095#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
                  DataBinding.FieldName = 'ISDOC'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.NullStyle = nssUnchecked
                  Properties.ValueChecked = 1
                  Properties.ValueUnchecked = 0
                  GroupSummaryAlignment = taCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 70
                end
                object v19ISWORK: TcxGridDBColumn
                  Caption = #1055#1088#1080#1073#1086#1088' '#1088#1072#1073#1086#1090#1072#1077#1090
                  DataBinding.FieldName = 'ISWORK'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.NullStyle = nssUnchecked
                  Properties.ValueChecked = 1
                  Properties.ValueUnchecked = 0
                  GroupSummaryAlignment = taCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 58
                end
              end
              object l19: TcxGridLevel
                GridView = v19
              end
            end
          end
          object dpnl4: TdxDockPanel
            Left = 0
            Top = 0
            Width = 511
            Height = 194
            AllowFloating = False
            AutoHide = False
            Caption = #1040#1082#1090#1099' '#1076#1086#1087#1091#1089#1082#1086#1074' '#1087#1088#1080#1073#1086#1088#1086#1074
            CaptionButtons = []
            DockingType = 0
            OriginalWidth = 533
            OriginalHeight = 220
            object grd20: TcxGrid
              Left = 0
              Top = 0
              Width = 511
              Height = 194
              Align = alClient
              TabOrder = 0
              object v20: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = src_WORKACT
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.GroupByBox = False
                OptionsView.HeaderAutoHeight = True
                object clv20CODE: TcxGridDBColumn
                  Caption = #1050#1086#1076
                  DataBinding.FieldName = 'CODE'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 32
                end
                object clv20DEVICE: TcxGridDBColumn
                  DataBinding.FieldName = 'DEVICE'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv20NOMER: TcxGridDBColumn
                  Caption = #1053#1086#1084#1077#1088' '#1072#1082#1090#1072
                  DataBinding.FieldName = 'NOMER'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 68
                end
                object clv20ACT_DATA: TcxGridDBColumn
                  Caption = #1044#1072#1090#1072' '#1087#1086#1076#1087#1080#1089#1072#1085#1080#1103' '#1072#1082#1090#1072
                  DataBinding.FieldName = 'ACT_DATA'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 102
                end
                object clv20ACT_KONTRAGENT: TcxGridDBColumn
                  DataBinding.FieldName = 'ACT_KONTRAGENT'
                  Visible = False
                  VisibleForCustomization = False
                end
                object clv20KNAME: TcxGridDBColumn
                  Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103', '#1089#1086#1089#1090#1072#1074#1080#1074#1096#1072#1103' '#1072#1082#1090
                  DataBinding.FieldName = 'KNAME'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 199
                end
                object clv20LASTDATA: TcxGridDBColumn
                  Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1072#1082#1090#1072
                  DataBinding.FieldName = 'LASTDATA'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 98
                end
              end
              object l20: TcxGridLevel
                GridView = v20
              end
            end
          end
        end
        object dpnl5: TdxDockPanel
          Left = 533
          Top = 0
          Width = 377
          Height = 220
          AllowFloating = False
          AutoHide = False
          Caption = #1044#1072#1085#1085#1099#1077' '#1086' '#1087#1086#1074#1077#1088#1082#1072#1093' '#1087#1088#1080#1073#1086#1088#1086#1074' '#1091#1095#1077#1090#1072
          CaptionButtons = []
          DockingType = 1
          OriginalWidth = 377
          OriginalHeight = 220
          object grd21: TcxGrid
            Left = 0
            Top = 0
            Width = 355
            Height = 216
            Align = alClient
            TabOrder = 0
            object v21: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = src_PROVERKA
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
              object clv21CODE: TcxGridDBColumn
                Caption = #1050#1086#1076
                DataBinding.FieldName = 'CODE'
                Width = 34
              end
              object clv21OUTDATE: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1089#1085#1103#1090#1080#1103' '#1087#1088#1080#1073#1086#1088#1072
                DataBinding.FieldName = 'OUTDATE'
                Width = 81
              end
              object clv21INDATE: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1087#1088#1080#1073#1086#1088#1072
                DataBinding.FieldName = 'INDATE'
                Width = 93
              end
              object clv21KONTRAGENT: TcxGridDBColumn
                DataBinding.FieldName = 'KONTRAGENT'
                Visible = False
                VisibleForCustomization = False
              end
              object clv21KNAME: TcxGridDBColumn
                Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103', '#1074#1099#1087#1086#1083#1085#1103#1074#1096#1072#1103' '#1087#1086#1074#1077#1088#1082#1091' '#1087#1088#1080#1073#1086#1088#1072
                DataBinding.FieldName = 'KNAME'
                Width = 160
              end
              object clv21GARANTDATE: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1087#1086#1074#1077#1088#1082#1080
                DataBinding.FieldName = 'GARANTDATE'
                Width = 112
              end
              object clv21ELEMENT: TcxGridDBColumn
                DataBinding.FieldName = 'ELEMENT'
                Visible = False
                VisibleForCustomization = False
              end
            end
            object l21: TcxGridLevel
              GridView = v21
            end
          end
        end
      end
    end
    object LayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object LayoutGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = LayoutGroup_Root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object LayoutItem1: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = LayoutGroup1
      Control = cbb_Street
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutItem2: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      Parent = LayoutGroup1
      Control = cbb_House
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutItem3: TdxLayoutItem
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089
      Parent = LayoutGroup1
      Control = M1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutItem4: TdxLayoutItem
      CaptionOptions.Text = 'cxMaskEdit1'
      CaptionOptions.Visible = False
      Parent = LayoutGroup1
      Control = Y1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutItem5: TdxLayoutItem
      CaptionOptions.Text = #1087#1086
      Parent = LayoutGroup1
      Control = M2
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutItem6: TdxLayoutItem
      CaptionOptions.Text = 'cxMaskEdit1'
      CaptionOptions.Visible = False
      Parent = LayoutGroup1
      Control = Y2
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LayoutItem7: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = LayoutGroup1
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object LayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = LayoutGroup_Root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
    object LayoutGroup3: TdxLayoutGroup
      CaptionOptions.Text = #1054#1073#1097#1080#1077
      Parent = LayoutGroup2
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 0
    end
    object LayoutGroup4: TdxLayoutGroup
      CaptionOptions.Text = #1053#1072#1088#1103#1076#1099
      Parent = gLayoutGroup17
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object LayoutGroup5: TdxLayoutGroup
      CaptionOptions.Text = #1058#1056
      Parent = LayoutGroup2
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object LayoutGroup6: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1055#1086#1084#1077#1097#1077#1085#1080#1103' '#1053#1046#1055
      Parent = gLayoutGroup12
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object LayoutGroup7: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = gLayoutGroup14
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Height = 300
      SizeOptions.Width = 256
      ButtonOptions.Buttons = <>
      ItemIndex = 5
      Index = 0
    end
    object LayoutSplitterItem1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = LayoutGroup3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1056#1072#1073#1086#1090#1099' '#1087#1086' '#1085#1072#1088#1103#1076#1072#1084
      Parent = LayoutGroup4
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1052#1072#1090#1077#1088#1080#1072#1083#1099
      Parent = LayoutGroup4
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object split1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = LayoutGroup4
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itmLayoutItem8: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmLayoutItem81: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = group2
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object groupLayoutGroup8: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1054#1073#1097#1077#1089#1090#1088#1086#1081
      CaptionOptions.Visible = False
      Parent = g_TOO
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object itmLayoutItem82: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      Parent = groupLayoutGroup8
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmLayoutItem83: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084#1086#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
      Parent = LayoutGroup7
      Control = lbl1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmLayoutItem84: TdxLayoutItem
      CaptionOptions.Text = #1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
      Parent = gLayoutGroup10
      Control = lbl_Total_SQ
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmLayoutItem85: TdxLayoutItem
      CaptionOptions.Text = #1046#1080#1083#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
      Parent = gLayoutGroup10
      Control = lbl_Living_SQ
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmLayoutItem87: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1078#1080#1074#1072#1102#1097#1080#1093
      Parent = gLayoutGroup8
      Control = lbl_Lodger_CNT
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmLayoutItem88: TdxLayoutItem
      CaptionOptions.Text = #1055#1083#1086#1097#1072#1076#1100' '#1087#1086#1076#1074'. '#1087#1086#1084#1077#1097#1077#1085#1080#1081
      Parent = gLayoutGroup10
      Control = lbl_Cellar_SQ
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmLayoutItem89: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086' '#1082#1074#1072#1088#1090#1080#1088
      Parent = gLayoutGroup8
      Control = lbl_Flat_CNT
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmLayoutItem810: TdxLayoutItem
      CaptionOptions.Text = #1055#1083#1086#1097#1072#1076#1100' '#1076#1077#1088#1072#1090#1080#1079#1072#1094#1080#1080
      Parent = gLayoutGroup10
      Control = lbl_DRTZ_SQ
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmLayoutItem811: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086' '#1083#1080#1094#1077#1074#1099#1093' '#1089#1095#1077#1090#1086#1074
      Parent = gLayoutGroup8
      Control = lbl_AccCode_CNT
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmLayoutItem812: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086' '#1101#1090#1072#1078#1077#1081
      Parent = gLayoutGroup11
      Control = lbl_Floor_CNT
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmLayoutItem813: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086' '#1083#1080#1092#1090#1086#1074
      Parent = gLayoutGroup8
      Control = lbl_Lift_CNT
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object gLayoutGroup8: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = gLayoutGroup9
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object gLayoutGroup9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itmLayoutItem814: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086' '#1087#1086#1076#1098#1077#1079#1076#1086#1074
      Parent = gLayoutGroup11
      Control = lbl_Entrance_CNT
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmLayoutItem815: TdxLayoutItem
      CaptionOptions.Text = #1063#1080#1089#1083#1086' '#1084#1091#1089#1086#1088#1086#1087#1088#1086#1074#1086#1076#1086#1074
      Parent = gLayoutGroup8
      Control = lbl_Garbage_CNT
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itmLayoutItem816: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076' '#1087#1086#1089#1090#1088#1086#1081#1082#1080' '#1076#1086#1084#1072
      Parent = LayoutGroup7
      Control = lbl_BuildYear
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmLayoutItem817: TdxLayoutItem
      CaptionOptions.Text = #1050#1072#1087'. '#1088#1077#1084#1086#1085#1090
      Parent = LayoutGroup7
      Control = lbl_Last_KR
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmLayoutItem818: TdxLayoutItem
      CaptionOptions.Text = #1052#1072#1090#1077#1088#1080#1072#1083' '#1089#1090#1077#1085
      Parent = LayoutGroup7
      Control = lbl_Wall
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmLayoutItem819: TdxLayoutItem
      CaptionOptions.Text = #1043#1072#1079
      Parent = LayoutGroup7
      Control = lbl_GAZ
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object itmLayoutItem820: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087' '#1092#1072#1089#1072#1076#1072
      Parent = LayoutGroup7
      Control = lbl_Fasad
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itmLayoutItem821: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087' '#1082#1088#1086#1074#1083#1080
      Parent = LayoutGroup7
      Control = lbl_Krov
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object gLayoutGroup10: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = gLayoutGroup9
      ButtonOptions.Buttons = <>
      Index = 4
    end
    object gLayoutGroup11: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = gLayoutGroup8
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object split2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = gLayoutGroup9
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object split3: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = gLayoutGroup9
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 3
    end
    object itmLayoutItem822: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = LayoutGroup6
      Control = grd4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object gLayoutGroup12: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = LayoutGroup3
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 3
    end
    object gLayoutGroup13: TdxLayoutGroup
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1082#1072#1087'. '#1088#1077#1084#1086#1085#1090#1086#1074
      Parent = gLayoutGroup12
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object itmLayoutItem823: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = gLayoutGroup13
      Control = grd5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmLayoutItem824: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = LayoutGroup3
      Control = docm1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object gLayoutGroup14: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = gLayoutGroup9
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object g_BDR: TdxLayoutGroup
      CaptionOptions.Text = #1041#1044#1056
      Parent = LayoutGroup2
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      TabbedOptions.Rotate = True
      TabbedOptions.TabPosition = tpLeft
      Index = 3
    end
    object g_BDR1: TdxLayoutGroup
      CaptionOptions.Text = #1041#1044#1056'1'
      Parent = g_BDR
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object g_BDR2: TdxLayoutGroup
      CaptionOptions.Text = #1041#1044#1056'2'
      Parent = g_BDR
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object g_BDR3: TdxLayoutGroup
      CaptionOptions.Text = #1041#1044#1056'3'
      Parent = g_BDR
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object itmLayoutItem825: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1055#1083#1072#1085
      CaptionOptions.Layout = clTop
      Parent = g_BDR1
      Control = grd8
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmLayoutItem826: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1060#1072#1082#1090
      CaptionOptions.Layout = clTop
      Parent = g_BDR1
      Control = grd6
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object split4: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = g_BDR1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object itmLayoutItem86: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1059#1089#1083#1091#1075#1072
      Parent = gLayoutGroup15
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 299
      Control = cbb_srv
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmLayoutItem827: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = gLayoutGroup15
      Control = btn_GetBDR
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object gLayoutGroup15: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = g_BDR1
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itmLayoutItem9: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1055#1083#1072#1085
      CaptionOptions.Layout = clTop
      Parent = g_BDR2
      Control = grd7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object split5: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = g_BDR2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itmLayoutItem10: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1060#1072#1082#1090
      CaptionOptions.Layout = clTop
      Parent = g_BDR2
      Control = grd9
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmLayoutItem11: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1055#1083#1072#1085
      CaptionOptions.Layout = clTop
      Parent = g_BDR3
      Control = grd10
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object split6: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = g_BDR3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itmLayoutItem12: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1060#1072#1082#1090
      CaptionOptions.Layout = clTop
      Parent = g_BDR3
      Control = grd11
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object g_TOO: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = LayoutGroup5
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.Rotate = True
      TabbedOptions.TabPosition = tpLeft
      Index = 0
    end
    object g_TOL: TdxLayoutGroup
      CaptionOptions.Text = #1051#1080#1092#1090
      Parent = g_TOO
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object itm_TOL: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = g_TOL
      Control = grd12
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object g_bdr4: TdxLayoutGroup
      CaptionOptions.Text = #1041#1044#1056'4'
      Parent = g_BDR
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object itmLayoutItem13: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = g_bdr4
      Control = grd13
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmLayoutItem14: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = g_bdr4
      Control = grd14
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object split7: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = g_bdr4
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object g_ACT: TdxLayoutGroup
      CaptionOptions.Text = #1040#1082#1090#1099' '#1086#1089#1084#1086#1090#1088#1086#1074
      Parent = LayoutGroup2
      ButtonOptions.Buttons = <>
      Index = 4
    end
    object gLayoutGroup16: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = g_ACT
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object itmLayoutItem828: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = gLayoutGroup16
      Control = grd15
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object gLayoutGroup17: TdxLayoutGroup
      CaptionOptions.Text = #1058#1054
      Parent = LayoutGroup2
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      Index = 1
    end
    object gLayoutGroup18: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1046#1091#1088#1085#1072#1083
      Parent = gLayoutGroup17
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object itmLayoutItem15: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = gLayoutGroup18
      Control = grd16
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object gLayoutGroup19: TdxLayoutGroup
      CaptionOptions.Text = #1055#1088#1080#1073#1086#1088#1099' '#1091#1095#1077#1090#1072
      Parent = LayoutGroup2
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object gLayoutGroup20: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = -1
    end
    object split8: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = gLayoutGroup20
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 0
    end
    object itmLayoutItem831: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'dxDockSite1'
      CaptionOptions.Visible = False
      Parent = gLayoutGroup19
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 879
      Control = docs1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object LF: TdxLayoutLookAndFeelList
    Left = 648
    Top = 152
    object lf1: TdxLayoutSkinLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 3
      Offsets.RootItemsAreaOffsetVert = 3
    end
  end
  object src_STREET: TDataSource
    DataSet = ds_STREET
    Left = 592
    Top = 152
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
    Left = 560
    Top = 152
    poApplyRepositary = True
  end
  object ds_HOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select H.CODE, H.NOMER, H.STREET, H.DU, H.TOTAL_SQ, H.LIVING_SQ,' +
        ' H.LODGER_CNT,'
      
        '       H.CELLAR_SQ, H.FLAT_CNT, H.ACCCODE_CNT, H.FLOOR_CNT, H.LI' +
        'FT_CNT,'
      
        '       H.ENTRANCE_CNT, H.GARBAGE_CNT, H.COMMERCE_SQ, H.BUILDYEAR' +
        ', H."ACTIVE",'
      '       H.BUDGET, H.MSE, H.USERNAME, H.LASTTIME, H.LAST_KR,'
      '       H.WALL,'
      '         case'
      '           when H.WALL = 0 then '#39#1055#1072#1085#1077#1083#1100#1085#1099#1077#39
      '           when H.WALL = 1 then '#39#1050#1088#1091#1087#1085#1086#1073#1083#1086#1095#1085#1099#1077#39
      '           when H.WALL = 2 then '#39#1064#1083#1072#1082#1086#1073#1083#1086#1095#1085#1099#1077#39
      '           when H.WALL = 3 then '#39#1050#1080#1088#1087#1080#1095#1085#1099#1077#39
      '         end WallName,'
      '       H.GAZ,'
      '         case'
      '           when H.GAZ = 0 then '#39#1075#1072#1079#39
      '           when H.GAZ = 1 then '#39#1101#1083#1077#1082#1090#1088#1086#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077#39
      '         end GAZNAME,'
      '       H.FASAD,'
      '         case'
      '           when H.FASAD = 0 then '#39#1087#1072#1085#1077#1083#1100#1085#1072#1103' '#1089' '#1086#1082#1088#1072#1089#1082#1086#1081#39
      '           when H.FASAD = 1 then '#39#1087#1072#1085#1077#1083#1100#1085#1099#1081' '#1073#1077#1079' '#1086#1082#1088#1072#1089#1082#1080#39
      '           when H.FASAD = 2 then '#39#1082#1080#1088#1087#1080#1095#1085#1099#1081#39
      '         end FASADNAME,'
      '       H.KROV,'
      '         case'
      '           when H.KROV = 0 then '#39#1084#1103#1075#1082#1072#1103#39
      '           when H.KROV = 1 then '#39#1084#1103#1075#1082#1072#1103' '#1089' '#1091#1090#1077#1087#1083#1080#1090#1077#1083#1077#1084#39
      '           when H.KROV = 2 then '#39#1084#1103#1075#1082#1072#1103' '#1089' '#1087#1088#1086#1092#1085#1072#1089#1090#1080#1083#1086#1084#39
      '           when H.KROV = 3 then '#39#1078'\'#1073#39
      '           when H.KROV = 4 then '#39#1096#1080#1092#1077#1088#1085#1072#1103#39
      '           when H.KROV = 5 then '#39#1084#1077#1090#1072#1083#1083#1080#1095#1077#1089#1082#1072#1103#39
      '         end KROVNAME,'
      '       H.VODA, H.HAT, H.PSE, H.A, H.DRTZ_SQ,'
      '       DU.NAME DUNAME'
      'from HOUSE H'
      'left outer join DU on DU.CODE = H.DU')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 560
    Top = 192
    poApplyRepositary = True
  end
  object src_HOUSE: TDataSource
    DataSet = ds_HOUSE
    Left = 592
    Top = 192
  end
  object Prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_House
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'Constraints'
          'Cursor'
          'CustomHint'
          'DragCursor'
          'DragKind'
          'DragMode'
          'EditValue'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Margins'
          'Name'
          'ParentColor'
          'ParentCustomHint'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Touch'
          'Visible'
          'Width')
      end
      item
        Component = clv1DATA
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1KNAME
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1NOTE
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1SWORKNAME
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv3CODE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3DATA
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3DPLACE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3FIO
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3HOUSE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3KNAME
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3KONTRAGENT
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3MANAGER
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3MLIST
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3MNAME
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3NCALC
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3NCALCDATE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3NDOP
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3NOMER
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3NOTE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3NSUMMA
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3PLANCODE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3SNAME
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3STATE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3STREET
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3SUMMA
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3TRDOP
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3TRDOPSOG
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv3TRDOPSTATE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = M1
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = M2
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = Y1
        Properties.Strings = (
          'Text')
      end
      item
        Component = Y2
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'HouseCardForm'
    Left = 648
    Top = 192
  end
  object m_state: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 800
    Top = 176
  end
  object src_state: TDataSource
    DataSet = m_state
    Left = 832
    Top = 176
  end
  object iml1: TcxImageList
    FormatVersion = 1
    DesignInfo = 9962152
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
  object ds_NGPROOM: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT N.CODE,'
      '       N.A, '
      '       N.SQ, '
      '       N."FLOOR", '
      '       N.SB, '
      '       N.TARGET, '
      '       N.SBNAME, '
      '       N.TS,'
      '       case'
      '         when N.TS = 0 then '#39#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1077#39
      '         when N.TS = 1 then '#39#1072#1088#1077#1085#1076#1072' '#1050#1059#1080#1047#1054#39
      '         when N.TS = 2 then '#39#1072#1088#1077#1085#1076#1072' '#1044#1045#1047#39
      '         else '#39#1087#1088#1086#1095#1077#1077#39
      '       end TSNAME'
      'FROM NGPROOM N')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 504
    Top = 448
  end
  object src_NGPROOM: TDataSource
    DataSet = ds_NGPROOM
    Left = 536
    Top = 448
  end
  object ds_HOUSEKWORK: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT HW.CODE,'
      '       HW.HOUSE,'
      '       HW.MLIST, m.NAME MNAME,'
      '       HW.Y,'
      '       HW.ENT'
      'FROM HOUSEKWORK HW'
      'left outer join srvdogtype sd on sd.code = hw.srvdogtype'
      'left outer join mlist m on m.CODE = hw.MLIST')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 512
    Top = 496
  end
  object src_HOUSEKWORK: TDataSource
    DataSet = ds_HOUSEKWORK
    Left = 544
    Top = 496
  end
  object ds_TRWORKBDR: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT TF.ZD DATA,'
      '       TF.KONTRAGENT, k.name KNAME,'
      '       TF.NOTE,'
      
        '       TF.MLIST, m.name ||iif(TF.DPLACE IS NULL, '#39#39','#39'  ['#39'||TF.DP' +
        'LACE||'#39']'#39') MNAME,'
      '       TF.SUMMA, (TF.SUMMA / h.TOTAL_SQ) area'
      'FROM TRFACT TF'
      'left outer join kontragent k on k.code=tf.kontragent'
      'left outer join mlist m on m.code=tf.mlist'
      'left outer join house h on h.CODE = :house'
      'where tf.ZD between :d1 and :d2 and tf.house=:house'
      'order by ZD')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 560
    Top = 240
  end
  object ds_TRLFACT: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT TF.ZD DATA,'
      '       TF.KONTRAGENT, k.name KNAME,'
      '       TF.NOTE,'
      
        '       TF.MLIST, m.name ||iif(TF.DPLACE IS NULL, '#39#39','#39'  ['#39'||TF.DP' +
        'LACE||'#39']'#39') MNAME,'
      '       TF.SUMMA, (TF.SUMMA / h.TOTAL_SQ) area'
      'FROM TRLFACT TF'
      'left outer join kontragent k on k.code=tf.kontragent'
      'left outer join mlist m on m.code=tf.mlist'
      'left outer join house h on h.CODE = :house'
      'where tf.ZD between :d1 and :d2 and tf.house=:house'
      'order by ZD')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 560
    Top = 272
  end
  object xl1: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    DataSet = mT1
    Dictionary = <
      item
      end>
    _Version = '1.6.0.3'
    Left = 400
    Top = 216
  end
  object mT1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 624
    Top = 288
  end
  object src_mT1: TDataSource
    DataSet = mT1
    Left = 653
    Top = 288
  end
  object xl_sub: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    DataSet = ds_TRWORKBDR
    Dictionary = <>
    Options = [xlroTotalsAsFormula, xlroVisibleWhenError, xlroHourCursor]
    SubReport = xl1
    _Version = '1.9.0.2'
    Left = 400
    Top = 264
  end
  object xl_subL: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    DataSet = ds_TRLFACT
    Dictionary = <>
    Options = [xlroTotalsAsFormula, xlroVisibleWhenError, xlroHourCursor]
    SubReport = xl_sub
    _Version = '1.9.0.2'
    Left = 400
    Top = 312
  end
  object bm1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = cmDb.iml1
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 368
    Top = 264
    DockControlHeights = (
      0
      0
      0
      0)
    object br1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = docm1
      DockedDockControl = docm1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 848
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_UseFunds'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_ExcelAll'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object br_opu: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 976
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Fr'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_UseFunds: TdxBarButton
      Caption = #1054#1090#1095#1077#1090
      Category = 0
      Description = #1054#1090#1095#1077#1090' '#1086' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1080' '#1080' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1080' '#1076#1077#1085#1077#1078#1085#1099#1093' '#1089#1088#1077#1076#1089#1090#1074
      Hint = #1054#1090#1095#1077#1090' '#1086' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1080' '#1080' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1080' '#1076#1077#1085#1077#1078#1085#1099#1093' '#1089#1088#1077#1076#1089#1090#1074
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000F16200016203500070A0E0000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000000D
        1419015E85B11194C2FE0080B4FF00679BF60039567400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000869
        8DBF65DEEEFF3DC5E3FF229AC1FF1992BCFF007EB0FE00304766002F46630014
        1E29000000000000000000000000000000000000000000000000000000002194
        B6E07EF0F8FF5AD6EAFF45CAE5FF20B1D9FF22A7CFFF2FB4D8FF1496C2FF0070
        A6FD00334F670000000000000000000000000000000000000000000000000044
        5E7023AED7FB34BADBFF1AAAD4FF0087BBFF5CD3E6FF74E9F5FF53D5EBFF33C3
        EBFF00527EB40006000D00000000000000000000000000000000000000000000
        0000117A9FC264DFEFFF0495C8FF00669DFF0896CCFF2BB4E4FF1BA7E4FF088D
        C8FF048631FE026300DF001D003D000000000000000000000000000000000000
        00001992B9D867E2F1FF0698C8FF0F86B6FF078697FF319250FE039E33FF07A3
        00FF009C00FE068A08FE007000FC003A00850002000500000000000000000002
        030438B8DDFA66DFF4FF34B7D9FF0586B9FF61A9C8FF89A57CFF0BB81FFF27C2
        4AFF46E17CFF33C862FF078B0BFF007300FF003F009E00000000000000000002
        03041E9A95E156D6D3FF37BFE0FF37B8DCFFE3D5DCFFCCCBCAFF6AC18CFF4FED
        83FF4FE97CFF36CE59FF16AE2CFF129421FE005700D300000000000000000000
        00001670269330CB55FD32CE54FF29CB4BFF7DBB86FFB0A7ADFFB89FB2FF119D
        1FFF009A06FF009500FF009700FF08810FFF034906AA00000000000000000000
        00001872318E30C961FF22BD4FFE12BB3FFE71C185FFD4C8D1FFD8CAD5FF4CC5
        67FF39D55FFF48DF72FF42DD77FF189F2DFF0129055A00000000000000000000
        0000145F2A6C40D972FC76FEA2FEB9FEC6FEB4FFC4FFF7FFF5FFFFEEFBFFF2E0
        EDFF92FFB6FF83FFAEFF65FD9BFF32CA60FE023B078300000000000000000000
        0000000000000B36183D2BB257D863EA8CFF64E589FF46DE74FE7CDA98F772C5
        89E340A45CCD158833B80E691EA20750118D0223054000000000000000000000
        00000000000000000000010703080B2D1638051C0C24020C050F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_UseFundsClick
    end
    object btn_ExcelAll: TdxBarButton
      Caption = #1069#1082#1087#1086#1088#1090' Excel'
      Category = 0
      Hint = #1069#1082#1087#1086#1088#1090' Excel'
      Visible = ivAlways
      ImageIndex = 16
      PaintStyle = psCaptionGlyph
      OnClick = btn_ExcelAllClick
    end
    object btn_Fr: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      OnClick = btn_FrClick
    end
  end
  object ds_HOUSESRV: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NAME'
      'FROM'
      '    HOUSESRV ')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 512
    Top = 544
  end
  object src_HOUSESRV: TDataSource
    DataSet = ds_HOUSESRV
    Left = 540
    Top = 544
  end
  object ds_mat: TpFIBDataSet
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSet_ID = 13
    Left = 624
    Top = 504
    poApplyRepositary = True
  end
  object md1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 616
    Top = 544
  end
  object md2: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 648
    Top = 544
  end
  object ds_HMOVEIMMKD2: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT hm.DATA,'
      '       hm.ARENDATOR,a.name ArName,'
      '       hm.DOGIMMKD,'
      
        '       (iif(dt.nomer='#39#39','#39#39','#39#8470#39'||dt.nomer)||'#39' '#39'||iif(dt.note='#39#39', ' +
        #39#39',dt.note)) DNote,'
      '       hm.DTYPE,'
      '       sum(hm.SALDO) SALDO,'
      '       sum(hm.PSUM) PSUM,'
      '       sum(hm.RSUM) RSUM,'
      '       sum(iif(hm.saldo1 is null,0,hm.saldo1)) saldo1,'
      '       sum(iif(hm.psum1 is null, 0,hm.psum1)-'
      '           iif(hm.psum_ is null, 0,hm.psum_)) psum1,'
      '       sum(iif(hm.rsum1 is null,0,hm.rsum1)-'
      '           iif(hm.rsum_ is null,0,hm.rsum_)) rsum1'
      'FROM HMOVEIMMKD hm'
      'left outer join house h on h.code=hm.house'
      'left outer join street s on s.code=h.street'
      'left outer join dogimmkd dt on dt.code=hm.dogimmkd'
      'left outer join arendator a on a.code=hm.arendator')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 648
    Top = 504
  end
  object src_md2: TDataSource
    DataSet = md2
    Left = 677
    Top = 544
  end
  object il1: TcxImageList
    FormatVersion = 1
    DesignInfo = 24641864
    ImageInfo = <
      item
        Image.Data = {
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
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000205020A0103010700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000205030A37833DFF307936FB01030107000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000306030A408E47FF54A35CFF4F9F57FF327C38FE010402080000
          0000000000000000000000000000000000000000000000000000000000000000
          00000306030A499A51FF5BAC64FF77CA82FF74C87EFF51A059FF337D39FE0104
          0208000000000000000000000000000000000000000000000000000000000307
          040A51A65AFF63B56DFF7ECE89FF7BCC87FF76CA81FF76C981FF52A25AFF347E
          3AFE0204020800000000000000000000000000000000000000000306040959B0
          63FF6BBD76FF84D290FF7AC985FF60B26AFF63B46DFF78C983FF78CB82FF53A3
          5CFF347E3AFD02040208000000000000000000000000000000001A331D4651A2
          5BE479C986FF80CE8DFF50A459FC2246256F28552C8B5CAD67FF7CCC86FF79CB
          85FF54A45DFF347E3AFC0204020800000000000000000000000000000000162C
          193C53A45CE66DC079FF254B296F00000000000000002A592F915EAE68FF7DCD
          89FF7CCD87FF56A55FFF357F3BFC020402080000000000000000000000000000
          000019311C4324482965000000000000000000000000000000002B5A2F915FAF
          69FF7FCE8AFF7ECE89FF57A660FF36803CFC0204020800000000000000000000
          0000000000000000000000000000000000000000000000000000000000002B5A
          309160B06AFF81CF8DFF7FCF8BFF58A761FF398540FF02040208000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002B5B309162B26CFF82D18FFF7AC885FF57A660FF1B401E7B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002C5C319163B36DFF5FAF69FF1F45237900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002C5C3191254E297F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000010103C4102020708000000000000000000000000000000000000
          0000000000000101070808073A41000000000000000000000000000000000000
          000013123D414F4CF2FF3F3EEBFD020207080000000000000000000000000000
          0000010107082422E1FC312FEAFF08073A410000000000000000000000001515
          3E415856F5FF6361FAFF5855F6FF403EEAFC0202070800000000000000000201
          07082B2AE3FC413FF1FF4C4AF6FF312FEAFF08073A4100000000000000000F0F
          292B5B58F6FF6562FAFF7170FFFF5956F6FF413FEBFC02020708020207083431
          E6FC4745F2FF6362FFFF4A48F4FF2F2DE9FF0605262B00000000000000000000
          00000F0F292B5B59F6FF6663FAFF7471FFFF5A58F6FF4240EBFC3E3CEAFD504D
          F4FF6867FFFF504EF5FF3634EBFF0707272B0000000000000000000000000000
          0000000000000F0F292B5C5AF6FF6764FAFF7472FFFF7370FFFF706EFFFF6E6C
          FFFF5755F7FF3F3DEEFF0808272B000000000000000000000000000000000000
          00000000000000000000100F292B5D5BF7FF7976FFFF5956FFFF5754FFFF7270
          FFFF4846F0FF0A0A282B00000000000000000000000000000000000000000000
          00000000000000000000030308085C59F4FD7D79FFFF5E5BFFFF5B58FFFF7674
          FFFF4542EDFD0202070800000000000000000000000000000000000000000000
          000000000000030308086562F6FC706DFBFF807EFFFF7E7BFFFF7C79FFFF7977
          FFFF5E5CF7FF4643ECFC02020708000000000000000000000000000000000000
          0000040308086D6AF9FC7774FDFF8682FFFF7673FCFF6462F8FF605DF7FF6D6A
          FAFF7B79FFFF605DF7FF4744ECFC020207080000000000000000000000000404
          08087370FCFD7D7AFEFF8A87FFFF7C79FDFF6C69FBFF11102A2B10102A2B615E
          F8FF6E6CFAFF7D7AFFFF615FF7FF4845EDFC0101050500000000000000000E0E
          1F1F7A77FFFF817EFFFF817EFEFF7471FDFF12122A2B00000000000000001010
          2A2B625FF8FF6F6DFBFF7E7CFFFF625FF8FF201F686F01010202000000000000
          00000E0E1F1F7A77FFFF7976FEFF13132B2B0000000000000000000000000000
          000010102A2B6461F8FF6A68F9FF3735A0A80D0C272900000000000000000000
          0000000000000E0E1F1F14142B2B000000000000000000000000000000000000
          00000000000011102A2B28286C6F16153C3E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004040A0A000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000090C1B231C275F7D3047A3DB334DB4F32E47B3F32843
          9EDB15255A7D050A192300000000000000000000000000000000000000000000
          000000000000171D41533C4DB3E63C52CCFF757AE8FF8F92EEFF8F92EEFF7178
          E4FF334DC1FF2743A5E60D183B53000000000000000000000000000000000000
          0000191D43534655C2F45C65E0FFA1A6F5FF7E86EFFF5B63E9FF595DE7FF7D84
          EEFF9EA0F4FF515DD7FF2947AFF40D183B530000000000000000000000000B0D
          1C224B57BAE5616BE3FFA1ACF5FF545FECFF505CEAFF4D59E9FF4E59E6FF4C56
          E6FF5056E6FF9EA2F4FF5460D6FF2642A5E5050A182200000000000000002B2F
          697E4B56DBFFA2ABF6FF5664F0FF5266EEFF4D59E9FF4D59E9FF4D59E9FF4D59
          E9FF4C58E6FF525AE6FF9FA3F5FF3450C4FF15255B7E00000000000000004F54
          B9DB818CEEFF7E91F7FF5D73F3FF4D59E9FF4D59E9FF4D59E9FF4D59E9FF4D59
          E9FF4D59E9FF4F5BE9FF7B83F0FF757BE2FF2840A0DB00000000000000005C60
          D2F6A1ABF7FF7086F8FF6882F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4D59E9FF5C66EAFF969CF1FF304DB5F600000000000000006065
          D3F6AFB9F9FF7F93FAFF7085F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4D59E9FF5E6AEEFF969DF1FF344CB7F60000000000000000585B
          BFDBA5AFF5FF9DABFAFF778CF0FF545FECFF545FECFF545FECFF545FECFF545F
          ECFF545FECFF6377F2FF818EF4FF787FE9FF3247A5DB00000000000000003434
          6F7E7D83EAFFCDD4FCFF8B9DFAFF7E93F7FF758AEEFF6C84F6FF6C84F6FF6C84
          F6FF6C84F6FF6379F3FFA4AFF8FF3E4FD0FF1F2A607E00000000000000000E0E
          1E225F5EC9E5A3A7F3FFD4DBFDFF879AFAFF7F91F0FF7A8EF1FF7F94F8FF7E92
          F9FF768CF8FFA8B6F8FF636EE3FF3E4EB3E5090B1A2200000000000000000000
          000023234A536564D6F4AAADF2FFD8DCFDFFAEBAFAFF91A3FAFF8B9DFAFF9CA9
          FBFFBAC7FCFF707BE9FF4957C3F4171D42530000000000000000000000000000
          00000000000023234A536060C9E68E93EDFFBEC3F8FFCCD3F9FFC4CBF9FFAAB4
          F4FF6670E2FF4B55BDE61A1E4353000000000000000000000000000000000000
          000000000000000000000F0F1F2334346E7D595BBEDB5E5FD2F35C5FD0F35055
          BADB2D31697D0C0D1D2300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000307936FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000037833EFF347E3AFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003F8D46FF57A15EFF559E5AFF357F3BFF317B37FF2662
          2AD31230146B0000000000000000000000000000000000000000000000000000
          00000000000046984EFF5FA966FF83C68BFF81C587FF7EC385FF7CC282FF6DB5
          74FF4D9552FF235C27CB040B051A000000000000000000000000000000000000
          0000000000004A9D53FF63AD6AFF87C98FFF85C78BFF82C689FF7FC487FF75BF
          7CFF7BC282FF559D5BFF235C27CB000000000000000000000000000000000000
          000000000000000000004B9E53FF63AE6CFF60AA68FF409048FF5AA361FF81C5
          87FF7EC485FF7CC282FF4E9654FF1331156B0000000000000000000000000000
          00000000000000000000000000004B9F54FF489A50FF000000002A5E30A63E8B
          44FD7CC184FF77C17EFF71B777FF29662ED80000000000000000000000000000
          0000000000000000000000000000000000004CA055FF0000000000000000224A
          258263AB6AFF83C78AFF82C588FF347E3AFF0000000000000000000000000000
          00005CB666FF59B263FF56AE60FF53A95CFF254D2A770000000000000000244D
          288267AF6FFF88C98FFF85C88CFF38843EFF0000000000000000000000000000
          0000509E5AD894D19DFF9DD5A6FF93CF9BFF52A95CFD29552D8227522C82499B
          51FD89C990FF85C88CFF7DC084FF337439D80000000000000000000000000000
          000029502E6B7BC785FFA0D7A9FF9ED6A7FF97D1A0FF77C081FF75BC7EFF8ECC
          97FF93CF9BFF90CE98FF61AB69FF1B3C1E6B0000000000000000000000000000
          0000000000004E9857CB82CA8CFFA1D8ABFF99D4A2FF9CD5A6FF9BD4A4FF92D0
          9BFF96D19EFF71B879FF397A40CB000000000000000000000000000000000000
          0000000000000A140B1A4E9858CB7CC887FF96D3A1FFA0D8AAFF9ED6A7FF90CE
          99FF70BA78FF3F8246CB0810091A000000000000000000000000000000000000
          00000000000000000000000000002A512E6B519F5BD85EB969FF5BB566FF4B96
          54D82449286B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001340
          58FF15425EFF25699CFF2C76B4FF285E7EAD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001242
          59FF5D9CD4FFA6CFF5FFA9CFECFF488BC1FF2C76B4FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E6D
          93FFCBE3F9FF61AAECFF4098E8FF1567C2FF1660AAFF2C76B4FF000000000000
          0000000000000000000000000000000000000000000000000000000000001E6D
          93FFC8E1F2FFD1E7FAFF347DB5FF3199C3FF6DC4DCFF4A9CCFFF3483C7FF0000
          000000000000000000000000000000000000000000000000000000000000040C
          13202689B9FFB0CBE1FF67A9C8FF60DCF5FF44D6F4FF8EEEFAFF5DB4E6FF3B8F
          D9FF000000000000000000000000000000000000000000000000000000000000
          0000000000002689B9FFBEE6F2FFB3F4FCFF60DCF5FF44D6F4FF8EEEFAFF5DB4
          E6FF3B8FD9FF0000000000000000000000000000000000000000000000000000
          000000000000000000002790BFFFC3EDF8FFB3F4FCFF60DCF5FF44D6F4FF8EEE
          FAFF5DB4E6FF3B8FD9FF00000000000000000000000000000000000000000000
          00000000000000000000000000002FBAE4FFC3EDF8FFB3F4FCFF60DCF5FF44D6
          F4FF8EEEFAFF5DB4E6FF3B8FD9FF000000000000000000000000000000000000
          0000000000000000000000000000000000002FBAE4FFC3EDF8FFB3F4FCFF60DC
          F5FF44D6F4FF8EEEFAFF5DB4E6FF3B8FD9FF0000000000000000000000000000
          000000000000000000000000000000000000000000002FBAE4FFC3EDF8FFB3F4
          FCFF68D9F5FF6FCFF3FF599DD0FF73ABDDFF4F91C9FF00000000000000000000
          00000000000000000000000000000000000000000000000000002FBAE4FFC3ED
          F8FFA8E2F8FF6CAEDDFFA5CFF4FFA5CFF4FFBDDBF7FF508EC5F7000000000000
          0000000000000000000000000000000000000000000000000000000000002FBA
          E4FFA7D4F4FFC5E1F8FFCCE3F9FFCCE3F9FFBDDBF7FF4E8FC7FD000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000050A8D9FF6AA5D8FFC9E1F7FFCBE3F8FF4295CAFF215984AE000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002070809489CC9EA4F92C8FD4E90C8FF2989B8DF05101619000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FDFDFD00FBFBFB00F9F9F900F6F6F600F4F4F400F3F3F300F3F3F300F4F4
          F400F6F6F600F8F8F800FBFBFB00FDFDFD00FFFFFF00FFFFFF00FEFEFE00F7F7
          F700EEEEEE00E4E4E400DBDBDB00D3D3D300CCCCCC00C2C2C700C1C1C600CACA
          CA00D1D1D100D9D9D900E3E3E300ECECEC00F6F6F600FEFEFE00FFFFFF00FFFF
          FF00FFFFFF00FEFEFE00EFEFFA008282E2002E2ECC000A0AC4000A0AC4002E2E
          CC008282E200EFEFFA00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00D3D3F6002727CE000C0CD1000D0DE4000D0DEE000D0DEE000D0D
          E4000C0CD1002727CE00D3D3F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00E9E9FA002424D2001414ED001616F5002929ED001616FB001616FB002828
          ED001616F5001414ED002424D200E9E9FA00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF006F6FE1001C1CEF001F1FF300A2A2EF00E2E2F8003838EC003838EC00E2E2
          F700A1A1EE001E1EF3001C1CEF006F6FE100FFFFFF00FFFFFF00FFFFFF00F8F8
          FD002323DC003B3BF5004C4CED00E4E4F900FFFFFF00E3E3F800E2E2F800FFFF
          FF00E2E2F8003636EA002929F5002222DC00F8F8FD00FFFFFF00FFFFFF00D3D3
          F5003838E1006666F5006666F5006868EE00E4E4FA00FFFFFF00FFFFFF00E2E2
          F9004545EB003232F2003F3FF2003A3AE100D3D3F500FFFFFF00FFFFFF00CCCC
          F2004343DF007B7BF4007B7BF4007272F000E3E3FA00FFFFFF00FFFFFF00E3E3
          FA005C5CED006363F2007777F3004545DF00CCCCF200FFFFFF00FFFFFF00ECEC
          FA002929D4008C8CF2007B7BF100E3E3FB00FFFFFF00E4E4FB00E4E4FB00FFFF
          FF00E4E4FB007B7BEF008C8CF2002C2CD400ECECFA00FFFFFF00FFFFFF00FFFF
          FF004747D6007474E9009393F100B8B8F600E4E4FB008D8DF1008E8EF100E4E4
          FB00B9B9F6009393F1007575E9004747D600FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C2C2EF002A2AD8009191EE009696F0009292F000B2B2F400B2B2F4009292
          F0009696F0009191EE002A2AD800C2C2EF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF009191E3003636DD009797F100A2A2F200A2A2F200A2A2F200A2A2
          F2009898F1003838DD009191E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00B5B5EB003939D5004D4DE1006D6DED006F6FED005252
          E2003B3BD500B5B5EB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00CDCDF100A3A3E500A3A3E500CDCD
          F100FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00D5D5D500CCCCCC00CCCCCC00CCCCCC00D1D1D100FAFAFA00FFFF
          FF00D5D5D500CCCCCC00CCCCCC00CCCCCC00D1D1D100F8F8F800FFFFFF00F5F5
          F500D2D2D200747270006B696800757370006967660041403F00BEBEBE00CCCC
          CC0055545400383635006A68670062605F005D5B5A00BDBDBD00E0E0E000C8C7
          C4007A797800ADABAA00D7D5D400C1BFBF008D8B8A003E3C3B0043413E005E5B
          560055535200817F7D00B0AEAC00AAA8A60092908D005C5A5900BDB9B300BBB4
          A7006D6B6A00E6E4E30082807E00696866005351510083818000797776007775
          7400706E6D005B5958006967650053515100ABA9A600716F6D00B3ADA000CEC7
          BB0072716F00EAE8E9007C7A7800C1B8B20068666400FFFFFF00ECEAE900E3E1
          E100C3C1BF007C7A79009E9A910052504F00B2B0AF00817F7E00B1AB9F00CDC6
          BB0078767500FFFFFF007F7D7B0063615F007A7978007D7B79007C7A78007D7B
          79007E7C7A007D7B79006664640056545200DBD9D800807E7C00B1AB9E00CFC7
          BD009D9A9700B3B3B100FDFDFC00E7E5E400E5E3E200ABAAA8008B8885009C99
          9600B3B2B100FFFFFF00F2F0F000E8E7E600B0AEAC0092908E00C1BDB500FCF6
          F000D5CEC6008885810079777600737170006C6C6A007C787600C3B9B000C6BC
          B300898682007C7B7A007E7D7C0082807E0099979500FFFFFF00BAB7AF00A39B
          9000BCB4A900CFC5BC00E4DAD000ECE1D800F3E7E000EDE3DA00E4D9D100D0C6
          BE00C2B8AF00ABA19700C0BBB400FFFFFF00FFFFFF00FFFFFF00B1AB9F00C9C2
          B900D0C8BF00D6CDC500DDD4CB00E5DAD200EBE0D900E7DDD400DFD4CC00D8CF
          C600D2CAC100CDC4BC00B3ADA100FFFFFF00FFFFFF00FFFFFF00B0AB9E00C7C0
          B600CCC4BB00D3C9C100DAD0C700E1D7CF00EBE1DA00E4D9D100DCD1C900D5CC
          C200CEC6BD00CAC1B900B1AB9E00FFFFFF00FFFFFF00FFFFFF00AFAA9D00C8C1
          B700E8E3DB00F5F0E800FDF8F200FCF8F100FBF7F000FCF7F100FCF8F100F6F0
          EA00E9E2DB00CAC2BA00AFA99D00FFFFFF00FFFFFF00FFFFFF00AEA89C00FBF5
          EF00EEE7DE00E0D8CE00DDD5CC00DDD4CB00DDD4CB00DDD4CB00DDD5CC00E0D7
          CE00EDE6DE00FBF6EF00AEA89C00FFFFFF00FFFFFF00FFFFFF00AFA99D00E1D8
          CE00E1D7CE00DFD6CC00DFD5CB00DFD5CB00DFD5CB00DFD5CB00DFD5CB00DFD6
          CC00E1D7CE00E1D8CE00AFA99D00FFFFFF00FFFFFF00FFFFFF00D0CCC500B6B0
          A400D6CFC400E6DED500EFE7DD00EEE6DC00EEE6DC00EEE6DC00EFE7DD00E6DE
          D500D6CFC400B6B0A400D0CCC500FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEE
          EB00C4C0B700AEA99C00AEA89C00AEA89C00AEA89C00AEA89C00AEA89C00AEA9
          9C00C4C0B700EFEEEB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          001E000000330000003300000033000000220000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000001E6B69
          69AC676564FF676564FF636160FF5A5957BD0000002200000000000000000000
          000000000000000000000000000000000000000000000000000072716FAC6A68
          66FFB7B5B3FFB2B0AEFFAEABA8FF615F5EFF6A6866B90000001E000000000000
          0000000000000000000000000000000000000000000000000000767472FFC1C1
          BEFF7F7D7BFF4A4B4B74716F6DFF9E9C99FF615F5EFF5F5D5CAC000000000000
          00000000000000000000000000000000000000000000000000007C7A78FFD5D3
          D2FF3F3F3F880000000000000033747270FFAFACAAFF666462FF000000000000
          00000000000000000000000000000000000000000000000000007F7D7AFFEEED
          ECFF83817FFF000000336D6A68FF585656FFB7B5B3FF6F6D6BFF000000000000
          0000000000000000000000000000000000000000000000000000797977AC7A78
          76FFEAEBEAFF848280FF7A7876FFB9B8B7FF585654FF3F4040FF000000000000
          0000000000000000000000000000000000000000000000000000000000008B8A
          89A7787675FFEEEDECFFD7D5D5FF797775FFF5F6F6FF5A5856FF000000330000
          003300000033000000330000001E000000000000000000000000000000000000
          00007C7C7A967F7D7BFF807E7CFF7F7D7BFF7A7876FFF5F6F6FF5A5756FF3F3F
          3FFF6E6C6AFF646362FF5F5E5CAC000000220000000000000000000000000000
          000000000000000000000000000000000000000000007A7876FFF5F5F5FF5654
          53FFB7B5B3FFAFACAAFF61605FFF6A6867B90000001E00000000000000000000
          000000000000000000000000000000000000000000007D7B79FF777572FFF4F4
          F5FF575555FF62605EFFB0ADABFF636160FF504E4DAC00000000000000000000
          000000000000000000000000000000000000000000007F7D7CFFD6D4D3FF7977
          75FF6E6C69FF000000005F5D5BFFAFABA9FF666463FF00000000000000000000
          000000000000000000000000000000000000000000007F7D7BFFEEEDECFF7F7D
          7AFF000000330000001554545498B2B0AEFF6A6866FF00000000000000000000
          000000000000000000000000000000000000000000007D7C7B97797775FFF5F5
          F4FF7E7B79FF404040876C6A67FFB9B7B4FF6D6B6AFF00000000000000000000
          00000000000000000000000000000000000000000000000000008A8A88A77B78
          76FFEEEDECFFD5D3D2FFC3C2C0FF73716EFF5C5B599700000000000000000000
          0000000000000000000000000000000000000000000000000000000000006867
          6696817F7DFF7F7D7CFF7C7A78FF61605F970000000000000000}
      end>
  end
  object ds_OPUHOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT OH.CODE,'
      '       OH.NAME, '
      '       OH.HOUSE, '
      '       OH.IP, '
      '       OH.ISIP'
      'FROM OPU_HOUSE OH'
      'WHERE oh.HOUSE= :house')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 120
    Top = 480
  end
  object src_OPUHOUSE: TDataSource
    DataSet = ds_OPUHOUSE
    Left = 152
    Top = 480
  end
  object ds_Device: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT OD.CODE,'
      '       OD.OPU_HOUSE,'
      '       OD.OPU_TYPE, OT.NAME TNAME,'
      '       OD.INST_DATE, '
      '       OD.INST_KONTRAGENT, OK.NAME KNAME,'
      '       OD.TU_DATA, '
      '       OD.TU_KONTRAGENT, OK1.NAME K1NAME,'
      '       OD.PROJ_DATE, '
      '       OD.PROJ_KONTRAGENT, OK2.NAME K2NAME'
      'FROM OPU_DEVICE OD'
      'left outer join OPU_TYPE OT ON OT.CODE = OD.OPU_TYPE'
      
        'left outer join OPU_KONTRAGENT OK ON OK.CODE = OD.INST_KONTRAGEN' +
        'T'
      
        'left outer join OPU_KONTRAGENT OK1 ON OK1.CODE = OD.TU_KONTRAGEN' +
        'T'
      
        'left outer join OPU_KONTRAGENT OK2 ON OK2.CODE = OD.PROJ_KONTRAG' +
        'ENT'
      'where OD.OPU_HOUSE= :mas_CODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_OPUHOUSE
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 120
    Top = 512
    dcForceOpen = True
  end
  object src_Device: TDataSource
    DataSet = ds_Device
    Left = 152
    Top = 512
  end
  object docm2: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.AllowFloating = False
    DefaultHorizContainerSiteProperties.CaptionButtons = [cbMaximize]
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.AllowFloating = False
    DefaultVertContainerSiteProperties.CaptionButtons = [cbMaximize]
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.AllowFloating = False
    DefaultTabContainerSiteProperties.CaptionButtons = [cbMaximize]
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    DockStyle = dsVS2005
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    LookAndFeel.NativeStyle = False
    Left = 768
    Top = 360
    PixelsPerInch = 96
  end
  object ds_OPUELEMENT: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT OE.CODE,'
      '       OE.DEVICE, '
      '       OE.DEVICEMARK, OD.NAME DNAME,'
      '       OE.NOMER, '
      '       OE.MAKEDATE, '
      '       OE.DV, '
      '       OE.DR, '
      '       OE.QV, '
      '       OE.ISDOC, '
      '       OE.ISWORK'
      'FROM OPU_ELEMENT OE'
      'left outer join OPU_DEVICEMARK OD on OD.CODE = OE.DEVICEMARK'
      'where OE.DEVICE = :mas_CODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_Device
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 120
    Top = 544
    dcForceOpen = True
  end
  object src_OPUELEMENT: TDataSource
    DataSet = ds_OPUELEMENT
    Left = 150
    Top = 544
  end
  object ds_WORKACT: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT OW.CODE,'
      '       OW.DEVICE, '
      '       OW.NOMER, '
      '       OW.ACT_DATA, '
      '       OW.ACT_KONTRAGENT, OK.NAME KNAME,'
      '       OW.LASTDATA'
      'FROM OPU_WORKACT OW'
      'left outer join OPU_KONTRAGENT OK ON OK.CODE = OW.ACT_KONTRAGENT'
      'where OW.DEVICE = :mas_CODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_Device
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 400
    Top = 536
    dcForceOpen = True
  end
  object src_WORKACT: TDataSource
    DataSet = ds_WORKACT
    Left = 429
    Top = 536
  end
  object ds_PROVERKA: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT OP.CODE,'
      '       OP.OUTDATE, '
      '       OP.INDATE, '
      '       OP.KONTRAGENT, OK.NAME KNAME,'
      '       OP.GARANTDATE, '
      '       OP.ELEMENT, OE.NOMER, OD.NAME DNAME'
      'FROM OPU_PROVERKA OP'
      'left outer join OPU_KONTRAGENT OK ON OK.CODE = OP.KONTRAGENT'
      'left outer join OPU_ELEMENT OE on OE.CODE = OP.ELEMENT'
      'left outer join OPU_DEVICEMARK OD ON OD.CODE = OE.DEVICEMARK'
      'WHERE OP.ELEMENT =:mas_CODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_OPUELEMENT
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 624
    Top = 464
    dcForceOpen = True
  end
  object src_PROVERKA: TDataSource
    DataSet = ds_PROVERKA
    Left = 656
    Top = 464
  end
  object fr1: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41235.906160370400000000
    ReportOptions.LastChange = 41259.978118761570000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 496
    Datasets = <
      item
        DataSet = fr_ds1
        DataSetName = 'ds_OPUHOUSE'
      end
      item
        DataSet = fr_ds_WorkAct
        DataSetName = 'ds_WORKACT'
      end
      item
        DataSet = fr_ds2
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = fr_ds_Prov
        DataSetName = 'PROVERKA'
      end
      item
        DataSet = fr_ds_OPUELEMENT
        DataSetName = 'OPUELEMENT'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
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
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object frxDBDataset1NAME: TfrxMemoView
          Align = baLeft
          Left = 121.283471890000000000
          Top = 52.118120000000010000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NAME'
          DataSet = fr_ds1
          DataSetName = 'ds_OPUHOUSE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftRight, ftTop]
          Memo.UTF8W = (
            '[ds_OPUHOUSE."NAME"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 0.338590000000000000
          Top = 52.118120000000010000
          Width = 120.944881890000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            #1044#1086#1084':')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 0.338590000000000000
          Top = 72.574830000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            'IP:')
          ParentFont = False
        end
        object frxDBDataset1IP: TfrxMemoView
          Align = baLeft
          Left = 121.283550000000000000
          Top = 72.354360000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IP'
          DataSet = fr_ds1
          DataSetName = 'ds_OPUHOUSE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[ds_OPUHOUSE."IP"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baWidth
          Top = 7.559059999999999000
          Width = 1046.929810000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1072#1088#1090#1086#1095#1082#1072' '#1091#1079#1083#1072' '#1091#1095#1077#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 0.338590000000000000
          Top = 92.047310000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            #1052#1086#1076#1077#1084' '#1088#1072#1073#1086#1090#1072#1077#1090':')
          ParentFont = False
        end
        object ds_OPUHOUSEISIP: TfrxMemoView
          Left = 121.283550000000000000
          Top = 92.047310000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds1
          DataSetName = 'ds_OPUHOUSE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[IIF(<ds_OPUHOUSE."ISIP">=0,'#39#1085#1077#1090#39','#39#1076#1072#39')]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 49.133858267716530000
        Top = 211.653680000000000000
        Width = 1046.929810000000000000
        KeepChild = True
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 173.858380000000000000
          Height = 49.133865590000000000
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
            #1058#1080#1087' '#1091#1079#1083#1072' '#1091#1095#1077#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 173.858380000000000000
          Width = 90.708720000000000000
          Height = 49.133865590000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr_ds2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1087#1088#1080#1073#1086#1088#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 264.567100000000000000
          Width = 185.196970000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr_ds2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103', '#1091#1089#1090#1072#1085#1086#1074#1080#1074#1096#1072#1103' '#1087#1088#1080#1073#1086#1088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 449.764069999999900000
          Width = 90.708720000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr_ds2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1058#1059)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 540.472789999999900000
          Width = 173.858380000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr_ds2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1090#1086' '#1074#1099#1076#1072#1083' '#1058#1059)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 714.331169999999900000
          Width = 120.944960000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr_ds2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103' '#1087#1088#1086#1077#1082#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 835.276130000000000000
          Width = 211.653680000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr_ds2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1090#1086' '#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074#1072#1083)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 283.464750000000000000
        Width = 1046.929810000000000000
        DataSet = fr_ds2
        DataSetName = 'frxDBDataset1'
        KeepHeader = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object frxDBDataset1TNAME: TfrxMemoView
          Align = baLeft
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TNAME'
          DataSet = fr_ds2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."TNAME"]')
          ParentFont = False
        end
        object frxDBDataset1TU_DATA: TfrxMemoView
          Align = baLeft
          Left = 173.858380000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'INST_DATE'
          DataSet = fr_ds2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."INST_DATE"]')
          ParentFont = False
        end
        object frxDBDataset1KNAME: TfrxMemoView
          Align = baLeft
          Left = 264.567100000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'KNAME'
          DataSet = fr_ds2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."KNAME"]')
          ParentFont = False
        end
        object frxDBDataset1TU_DATA1: TfrxMemoView
          Align = baLeft
          Left = 449.764070000000100000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TU_DATA'
          DataSet = fr_ds2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."TU_DATA"]')
          ParentFont = False
        end
        object frxDBDataset1K1NAME: TfrxMemoView
          Align = baLeft
          Left = 540.472790000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'K1NAME'
          DataSet = fr_ds2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."K1NAME"]')
          ParentFont = False
        end
        object frxDBDataset1PROJ_DATE: TfrxMemoView
          Align = baLeft
          Left = 714.331170000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PROJ_DATE'
          DataSet = fr_ds2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."PROJ_DATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1K2NAME: TfrxMemoView
          Align = baLeft
          Left = 835.276130000000100000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'K2NAME'
          DataSet = fr_ds2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."K2NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897637800000000000
        Top = 385.512060000000000000
        Width = 1046.929810000000000000
        DataSet = fr_ds_WorkAct
        DataSetName = 'ds_WORKACT'
        RowCount = 0
        object ds_WORKACTNOMER: TfrxMemoView
          Left = 41.574830000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOMER'
          DataSet = fr_ds_WorkAct
          DataSetName = 'ds_WORKACT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_WORKACT."NOMER"]')
          ParentFont = False
        end
        object ds_WORKACTACT_DATA: TfrxMemoView
          Align = baLeft
          Left = 124.724490000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ACT_DATA'
          DataSet = fr_ds_WorkAct
          DataSetName = 'ds_WORKACT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_WORKACT."ACT_DATA"]')
          ParentFont = False
        end
        object ds_WORKACTKNAME: TfrxMemoView
          Align = baLeft
          Left = 204.094620000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'KNAME'
          DataSet = fr_ds_WorkAct
          DataSetName = 'ds_WORKACT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_WORKACT."KNAME"]')
          ParentFont = False
        end
        object ds_WORKACTLASTDATA: TfrxMemoView
          Align = baLeft
          Left = 684.094930000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LASTDATA'
          DataSet = fr_ds_WorkAct
          DataSetName = 'ds_WORKACT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ds_WORKACT."LASTDATA"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Height = 37.795275590000000000
        Top = 325.039580000000000000
        Width = 1046.929810000000000000
        object Memo10: TfrxMemoView
          Left = 41.574830000000000000
          Top = 18.897637799999980000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_WorkAct
          DataSetName = 'ds_WORKACT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1072#1082#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 124.724490000000000000
          Top = 18.897637799999980000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_WorkAct
          DataSetName = 'ds_WORKACT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1072#1082#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Left = 204.094620000000000000
          Top = 18.897637799999980000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_WorkAct
          DataSetName = 'ds_WORKACT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 684.094930000000000000
          Top = 18.897637799999980000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_WorkAct
          DataSetName = 'ds_WORKACT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1077#1081#1089#1090#1074#1080#1090#1077#1083#1077#1085' '#1076#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 41.574830000000000000
          Width = 771.023653780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1082#1090#1099' '#1074#1074#1086#1076#1072)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData2: TfrxDetailData
        Height = 18.897637800000000000
        Top = 487.559370000000000000
        Width = 1046.929810000000000000
        DataSet = fr_ds_OPUELEMENT
        DataSetName = 'OPUELEMENT'
        KeepTogether = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object OPUELEMENTDNAME: TfrxMemoView
          Left = 90.708720000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DNAME'
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[OPUELEMENT."DNAME"]')
          ParentFont = False
        end
        object OPUELEMENTNOMER: TfrxMemoView
          Align = baLeft
          Left = 253.228510000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOMER'
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[OPUELEMENT."NOMER"]')
          ParentFont = False
        end
        object OPUELEMENTMAKEDATE: TfrxMemoView
          Align = baLeft
          Left = 351.496290000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MAKEDATE'
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[OPUELEMENT."MAKEDATE"]')
          ParentFont = False
        end
        object OPUELEMENTDV: TfrxMemoView
          Align = baLeft
          Left = 449.764070000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DV'
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[OPUELEMENT."DV"]')
          ParentFont = False
        end
        object OPUELEMENTDR: TfrxMemoView
          Align = baLeft
          Left = 529.134199999999900000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DR'
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[OPUELEMENT."DR"]')
          ParentFont = False
        end
        object OPUELEMENTQV: TfrxMemoView
          Align = baLeft
          Left = 627.401980000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'QV'
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[OPUELEMENT."QV"]')
          ParentFont = False
        end
        object OPUELEMENTISDOC: TfrxMemoView
          Align = baLeft
          Left = 725.669760000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[IIF(<OPUELEMENT."ISDOC">=0,'#39#1085#1077#1090#39','#39#1076#1072#39')]')
          ParentFont = False
        end
        object OPUELEMENTISWORK: TfrxMemoView
          Align = baLeft
          Left = 767.244590000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[IIF(<OPUELEMENT."ISWORK">=0,'#39#1085#1077#1090#39','#39#1076#1072#39')]')
          ParentFont = False
        end
      end
      object Header3: TfrxHeader
        Height = 37.795275590000000000
        Top = 427.086890000000000000
        Width = 1046.929810000000000000
        AllowSplit = True
        KeepChild = True
        object Memo15: TfrxMemoView
          Left = 90.708720000000000000
          Top = 19.000000000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1072#1088#1082#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Left = 253.228510000000000000
          Top = 19.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1077#1088'. '#8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Left = 351.496290000000000000
          Top = 19.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1074#1099#1087#1091#1089#1082#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Left = 449.764070000000000000
          Top = 19.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060' '#1074#1074#1086#1076#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 529.134199999999900000
          Top = 19.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060' '#1088#1072#1089#1086#1076#1086#1084#1077#1088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Left = 627.401980000000000000
          Top = 19.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1074#1086#1076#1099' ('#1092#1072#1079#1099')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Left = 725.669760000000000000
          Top = 19.000000000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1086#1082)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Left = 767.244590000000000000
          Top = 19.000000000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1073)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 90.708720000000000000
          Width = 721.890230000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1073#1086#1088#1099)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object SubdetailData1: TfrxSubdetailData
        Height = 18.897637795275600000
        Top = 589.606680000000000000
        Width = 1046.929810000000000000
        DataSet = fr_ds_Prov
        DataSetName = 'PROVERKA'
        RowCount = 0
        object PROVERKAOUTDATE: TfrxMemoView
          Align = baLeft
          Left = 366.330833150000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'OUTDATE'
          DataSet = fr_ds_Prov
          DataSetName = 'PROVERKA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[PROVERKA."OUTDATE"]')
          ParentFont = False
        end
        object PROVERKAINDATE: TfrxMemoView
          Align = baLeft
          Left = 445.700963150000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'INDATE'
          DataSet = fr_ds_Prov
          DataSetName = 'PROVERKA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[PROVERKA."INDATE"]')
          ParentFont = False
        end
        object PROVERKAKNAME: TfrxMemoView
          Align = baLeft
          Left = 525.071093150000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'KNAME'
          DataSet = fr_ds_Prov
          DataSetName = 'PROVERKA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[PROVERKA."KNAME"]')
          ParentFont = False
        end
        object PROVERKAGARANTDATE: TfrxMemoView
          Align = baLeft
          Left = 732.945243150000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'GARANTDATE'
          DataSet = fr_ds_Prov
          DataSetName = 'PROVERKA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[PROVERKA."GARANTDATE"]')
          ParentFont = False
        end
        object OPUELEMENTDNAME1: TfrxMemoView
          Left = 173.574803150000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DNAME'
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[OPUELEMENT."DNAME"]')
          ParentFont = False
        end
        object OPUELEMENTNOMER1: TfrxMemoView
          Align = baLeft
          Left = 283.181173150000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOMER'
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[OPUELEMENT."NOMER"]')
          ParentFont = False
        end
      end
      object Header4: TfrxHeader
        Height = 37.795287800000000000
        Top = 529.134199999999900000
        Width = 1046.929810000000000000
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 366.330833150000000000
          Top = 19.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_Prov
          DataSetName = 'PROVERKA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1077#1084#1086#1085#1090#1072#1078)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 445.700963150000000000
          Top = 19.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_Prov
          DataSetName = 'PROVERKA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1089#1090#1072#1085#1086#1074#1082#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Left = 525.071093150000000000
          Top = 19.000000000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_Prov
          DataSetName = 'PROVERKA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Left = 732.945243150000000000
          Top = 19.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_Prov
          DataSetName = 'PROVERKA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1043#1086#1076#1077#1085' '#1076#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 173.574803150000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1074#1077#1088#1082#1080' '#1087#1088#1080#1073#1086#1088#1086#1074)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 173.574803150000000000
          Top = 18.897637795275610000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1073#1086#1088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 283.181173150000000000
          Top = 18.897637795275610000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr_ds_OPUELEMENT
          DataSetName = 'OPUELEMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1077#1088' '#8470)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object fr_ds1: TfrxDBDataset
    UserName = 'ds_OPUHOUSE'
    CloseDataSource = False
    DataSet = ds_OPUHOUSE
    BCDToCurrency = False
    Left = 256
    Top = 496
  end
  object fr_ds2: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ds_Device
    BCDToCurrency = False
    Left = 256
    Top = 536
  end
  object fr_ds_WorkAct: TfrxDBDataset
    UserName = 'ds_WORKACT'
    CloseDataSource = False
    DataSet = ds_WORKACT
    BCDToCurrency = False
    Left = 280
    Top = 536
  end
  object fr_ds_OPUELEMENT: TfrxDBDataset
    UserName = 'OPUELEMENT'
    CloseDataSource = False
    DataSet = ds_OPUELEMENT
    BCDToCurrency = False
    Left = 280
    Top = 496
  end
  object fr_ds_Prov: TfrxDBDataset
    UserName = 'PROVERKA'
    CloseDataSource = False
    DataSet = ds_PROVERKA
    BCDToCurrency = False
    Left = 304
    Top = 536
  end
  object frxls1: TfrxXLSExport
    ShowDialog = False
    FileName = 'opu.xls'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    ExportEMF = True
    OpenExcelAfterExport = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 304
    Top = 496
  end
  object frdoc1: TfrxRTFExport
    ShowDialog = False
    FileName = 'opu.rtf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = True
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 336
    Top = 496
  end
end
