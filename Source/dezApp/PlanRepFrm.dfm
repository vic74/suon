object PlanRepForm: TPlanRepForm
  Left = 0
  Top = 0
  HelpContext = 106
  Caption = #1055#1083#1072#1085' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1088#1077#1084#1086#1085#1090#1072
  ClientHeight = 671
  ClientWidth = 977
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
    Width = 977
    Height = 671
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object grd1: TcxGrid
      Left = 10
      Top = 41
      Width = 957
      Height = 528
      TabOrder = 6
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_trplan
        DataController.Filter.OnChanged = v1DataControllerFilterChanged
        DataController.Filter.Active = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems.OnSummary = v1DataControllerSummaryFooterSummaryItemsSummary
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1SUM1
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1SUM2
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1SUM3
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1SUM4
          end
          item
            Format = '0.00;-0.00'
            Column = clv1FIO
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1SUMALL
            VisibleForCustomization = False
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1sumFact
            VisibleForCustomization = False
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1SUMOST
            VisibleForCustomization = False
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = clv1SUMY
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Styles.Footer = cxstyl_grfooter
        Styles.Group = cxstyl_group
        Styles.GroupFooterSortedSummary = cxstyl_grfooter
        Styles.GroupSummary = cxstyl_grfooter
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv1Y: TcxGridDBColumn
          DataBinding.FieldName = 'Y'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 145
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
          Width = 43
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 41
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KONTNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KONTNAME'
          HeaderAlignmentHorz = taCenter
          Width = 145
        end
        object clv1MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MLISTNAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MLISTNAME'
          HeaderAlignmentHorz = taCenter
          Width = 137
        end
        object clv1SUMY: TcxGridDBColumn
          Caption = #1054#1088#1080#1077#1085#1090#1080#1088#1086#1074#1086#1095#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
          DataBinding.FieldName = 'SUMY'
          HeaderAlignmentHorz = taCenter
          Width = 98
        end
        object clv1SUMOST: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1075#1086#1076#1072
          DataBinding.FieldName = 'SUMOST'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.CellMerging = True
        end
        object clv1SUMALL: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1085#1072' '#1075#1086#1076
          DataBinding.FieldName = 'SUMALL'
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 76
        end
        object clv1sumFact: TcxGridDBColumn
          Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103' '#1089#1091#1084#1084#1072
          DataBinding.FieldName = 'sumFact'
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 74
        end
        object clv1SUM1: TcxGridDBColumn
          Caption = '1-'#1081' '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM1'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 77
        end
        object clv1SUM2: TcxGridDBColumn
          Caption = '2-'#1081' '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
        end
        object clv1SUM3: TcxGridDBColumn
          Caption = '3-'#1081' '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM3'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 76
        end
        object clv1SUM4: TcxGridDBColumn
          Caption = '4-'#1081' '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM4'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 77
        end
        object clv1FSUM1: TcxGridDBColumn
          DataBinding.FieldName = 'FSUM1'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FSUM2: TcxGridDBColumn
          DataBinding.FieldName = 'FSUM2'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FSUM3: TcxGridDBColumn
          DataBinding.FieldName = 'FSUM3'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FSUM4: TcxGridDBColumn
          DataBinding.FieldName = 'FSUM4'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MANAGER: TcxGridDBColumn
          Caption = #1052#1077#1085#1077#1076#1078#1077#1088' ('#1050#1086#1076')'
          DataBinding.FieldName = 'MANAGER'
          Visible = False
        end
        object clv1FIO: TcxGridDBColumn
          Caption = #1052#1077#1085#1077#1076#1078#1077#1088' '#1086#1090#1076#1077#1083#1072' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080
          DataBinding.FieldName = 'FIO'
          Width = 143
        end
        object clv1SHOWCODE: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWCODE'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object edt_year: TcxMaskEdit
      Left = 34
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '([12][0-9])? [0-9][0-9]'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 0
      Width = 82
    end
    object cbb_street: TcxLookupComboBox
      Left = 158
      Top = 10
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 180
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          Width = 92
          FieldName = 'NAME'
        end
        item
          Width = 80
          FieldName = 'STR_TYPE'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_street
      Style.HotTrack = False
      TabOrder = 1
      Width = 168
    end
    object cbb_firm: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          Width = 92
          FieldName = 'NAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_kontr
      Style.HotTrack = False
      TabOrder = 12
      Visible = False
      Width = 145
    end
    object btn_exec: TcxButton
      Left = 669
      Top = 10
      Width = 75
      Height = 25
      Caption = #1047#1072#1087#1088#1086#1089
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000008242F3700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002290B9D5249AC9E902080A0C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000002080A0C2DAEDFFF2BABDEFF145A778A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000238EB5CF4FBCE7FF4CBAE6FF239BCCED030F14170000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002BAFDFFF84D3F2FF55BDE7FF2EAADEFF145D
        7C90000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002286A9C070CCEEFF83D2F2FF7ECEF1FF4AB6
        E4FF229CCFF1030F14170000000000000000000000000000000035B7D9F035BB
        E0F834B8DFF832B6DEF830B3DDF82EB1DCF886D7F3FF2FB6EBFF4ABCECFF80CE
        F1FF51B9E6FF2CA8DDFF1664869D00000000000000000000000035B3D4E975DA
        F2FF93E6F8FF91E3F7FF8DE0F6FF8ADCF5FF8ADBF5FF88D7F4FF84D3F2FF7FCF
        F1FF7CCCF0FF7AC9EFFF48B4E3FF229DD1F504161E23000000000D2B32374FCD
        ECFF98E9F9FF4AD5F3FF45CFF1FF40CAF0FF38C2EEFF89D9F4FF2EB3E0FE2BAC
        DAF82AA9D9F828A7D8F826A4D6F824A1D5F82095C7E9000000000000000038BE
        DFF480E1F5FF8EE6F8FF43D2F3FF3FCDF1FF39C7EFFF8CDCF5FF58C6EAFF1552
        6674000000000000000000000000000000000000000000000000000000001442
        4D545BD4EFFF99EAF9FF47D6F4FF42D0F2FF3DCBF0FF6ED5F3FF7FD7F3FF4AC0
        E7FF0E34414A0000000000000000000000000000000000000000000000000000
        00003CC5E4F993E9F9FF72E1F7FF45D4F3FF41CEF2FF3CC9F0FF8ADCF5FF70D0
        EFFF3DBBE4FF06191F2300000000000000000000000000000000000000000000
        00002069798364D9F1FF9AEBFAFF48D8F4FF44D3F3FF3FCEF1FF3AC8F0FF8CDC
        F5FF62CBEDFF30B6E0FC00000000000000000000000000000000000000000000
        0000000000003FCAE9FD9AEDFAFF99EBF9FF97E8F9FF94E5F8FF91E2F7FF8EDF
        F6FF8BDBF5FF56C7EBFF2FAFD8F3000000000000000000000000000000000000
        000000000000298396A23FCCEBFF3ECBEAFF3CC9E9FF3BC7E9FF3AC4E8FF38C2
        E7FF36C0E6FF35BDE5FF33BBE4FF2BA2C8E10000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 3
      OnClick = btn_execClick
    end
    object btn_xls: TcxButton
      Left = 750
      Top = 10
      Width = 77
      Height = 25
      Caption = 'Excel'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000004E2C
        166B894A23BCAE5F2EEDB4632EF7B4632EF7B4632EF7B4622EF7B4622EF7B362
        2DF7B3622DF7B3612DF7AD5E2BEF884921BD472612630000000000000000A45B
        2CDEEBE5DEF2F5EADDFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3
        EBFFFAF2EAFFFCF7F3FFFAF6F2FDEFEFEEF0995023D50000000000000000B86D
        36F5F4EADEFEFCE4D1FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4
        D1FFFCE4D1FFFCE4D1FFFCE4D1FFFBF9F6FDB05F2BF30000000000000000BB74
        3AF7F7EDE3FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4D1FFFCE4
        D1FFFCE4D1FFFCE4D1FFFCE4D1FFFBF7F4FFB5642FF70000000000000000BE78
        3EF7F7F0E6FFFCE4D1FFFCE4D1FFE5D9C2FF689E70FF579665FF599766FF6CA0
        73FFFCE4D1FFFCE4D1FFFCE4D1FFFCF9F5FFB96C34F70000000017692EE41A75
        33FF197533FF197433FF448A52FF619B6BFFBBD6C3FF78BB84FF61AB6AFF5796
        64FFFCE2CCFFFBE0C9FFFBE1C8FFFDFAF7FFBB7239F7000000000A2F14661B75
        33FF5BA06EFF49965CFF47905BFFC7DDCDFF5DB671FF67AE75FF448D58FF1B75
        33FFFCE2CDFFFBE1CBFFFBE1C9FFFBF7F2FFBF783DF700000000000000007D7C
        3EFA1F7837FF48915DFFC7DDCDFF6AC084FF71B682FF448E59FFB1C1A1FFFBE4
        D0FFFBE3CCFFFADFC7FFFADFC6FFFAF2EAFFC07C40F70000000000000000BC84
        47F7619E71FFC5DCCCFF76C997FF73BC87FF438D58FF559360FFF5E0CCFFFBE1
        CCFFFAE0C7FFF9DDC3FFF8DCC2FFFAF4EDFFC07E43F700000000020402076E89
        52FCC0D9C8FF82D3A3FF6DC18AFF549563FF4B9660FF519764FF679A68FFF4DC
        C3FFF8DCC2FFF6DABDFFF6D8BBFFFAF4EFFFC07F44F7000000002D5F3BACB5D3
        BEFF9CDAB5FF74C895FF549563FF4A935FFF5DA474FF59A16EFF509764FF6297
        62FFE9D1B4FFF3D4B5FFF1D2B3FFF8F4F0FFBE7E44F7000000003A7B4DDE558B
        56FE539666FF549563FFA1B995FF8DAE83FF2E7F42FF2E7F41FF3A8448FF3682
        45FF90B490FFF7F2ECFFFBF7F3FFF5EFE9FFBF7C44FB0000000000000000BF84
        49F6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
        BAFFFDFBF8FFFCE6CDFFFAE5C9FFE2B684FF7C4F2BA60000000000000000B57D
        45EAF7F3EFFCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
        B8FFFFFBF8FFF6D8B4FFE1B07DFFD38D60F60503020700000000000000009666
        38C3E5E0DAECF5F1EBFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
        ECFFF2E6D7FFE2B27DFFD28E61F505030207000000000000000000000000492F
        1A60936638BBBB834AEEC1874CF6C2884DF7C2884DF7C2894DF7C3884DF7C187
        4DF7A4723ED46F43229104020106000000000000000000000000}
      TabOrder = 4
      OnClick = btn_xlsClick
    end
    object cbb_manager: TcxLookupComboBox
      Left = 407
      Top = 10
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
          FieldName = 'FIO'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_worker
      Style.HotTrack = False
      TabOrder = 2
      Width = 256
    end
    object quart1: TcxCalcEdit
      Left = 20
      Top = 626
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object quart2: TcxCalcEdit
      Left = 147
      Top = 626
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object quart3: TcxCalcEdit
      Left = 274
      Top = 626
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object quart4: TcxCalcEdit
      Left = 401
      Top = 626
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object doc1: TdxBarDockControl
      Left = 528
      Top = 626
      Width = 100
      Height = 26
      Align = dalTop
      BarManager = brm1
    end
    object chk_manager: TcxCheckBox
      Left = 833
      Top = 10
      Caption = #1086#1073#1097#1072#1103' '#1085#1077#1087#1088#1077#1076#1074'.'
      Properties.OnEditValueChanged = chk_managerPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 5
      Width = 120
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp_2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_year: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1043#1086#1076
      Parent = grp_2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 106
      Control = edt_year
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = grp_2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 204
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_manager: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1085#1077#1076#1078#1077#1088' '#1057#1069
      Parent = grp_2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 331
      Control = cbb_manager
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_2
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_xls: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 77
      Control = btn_xls
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grlc1Group1: TdxLayoutGroup
      CaptionOptions.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000000000000000000000000000000000000D0D0D1C2424
        245225252554252525542525255425252554242424530B0B0B16000000000000
        00000000000000000000000000000000000000000000000000002626264FEAEA
        EAFFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE1E1E1FF8A8A8AD61010101A0000
        000000000000000000000000000000000000000000000000000026262650E7E7
        E7FFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFC6C6C6FB929292D61313
        131D00000000000000000000000000000000000000000000000026262651F1F1
        F1FFC3C3C3FFE3E3E3FFEBEBEBFFEBEBEBFFEBEBEBFFDADADAFCBFBFBFFBAFAF
        AFD916161621000000000000000000000000000000000000000026262652FBFB
        FBFFB6B8BCFF9FB1CDFFBFCFE7FFF1F3F6FFF8F8F8FFE2E2E2F9C8C8C8FCECEC
        ECFFBDBDBDDB191919250000000000000000000000000000000026262652FFFF
        FFFFF7F9FCFFB9CBE7FFA1BDE5FF82B9DEFFD5F4F9FFF1F1F1FCBFBFBFFDC2C2
        C2FBBBBBBBFD9F9F9FDC1C1C1C2D00000000000000000000000026262652FFFF
        FFFFFFFFFFFFCDDDEEFF8DC8E9FF0CC0E5FF1BB6DAFFD5F4F9FFFFFFFFFFFBFB
        FCFFE6E6E6FFB8B8B8FC8A8A8AE91616162D000000000000000026262652FFFF
        FFFFFFFFFFFFFAFCFEFF79DEF1FF3DD5F1FF01C0E5FF1BB6DAFFD5F4F9FFFFFF
        FFFFFEFEFEFFF0F0F1FFC4C4C5FF28282850000000000000000026262652FFFF
        FFFFFFFFFFFFFFFFFFFFFCFEFFFF79DEF1FF3DD5F1FF01BFE4FF1BB3D8FFD5F4
        F9FFFFFFFFFFFEFEFEFFF0F0F0FF2828284F000000000000000026262652FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFFFF79DEF1FF41D7F1FF01BFE4FF1AAD
        D5FFD5F4F9FFFFFFFFFFFEFEFEFF2929294E000000000000000026262652FFFF
        FFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFBFEFEFF7CDFF1FF49DFF4FF01C2
        E5FF1DA9D2FFEBF6F9FFFFFFFFFF2A2A2A4E000000000000000026262652FAFA
        FAFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF4F7F7FF7EDDEEFF54E3
        F5FF67C0D6FFC3C5C6FFF1F1F1FF2B2B2B4F000000000000000026262652F3F3
        F3FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEAECEDFF94CA
        D8FFE0E2E2FFCFCECDFFBDBDBDFF2F2F2F51000000000000000026262652ECEC
        ECFFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2
        E1FFD1D1D1FFE3E3E2FFAEAECAFF3333A6CC050511170000000028282855F0F0
        F0FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
        E8FFE7E7E7FFC6C6D8FF6F6FDFFF4A4AD9F40E0E2D37000000000D0D0D1C3131
        3155313131553131315531313155313131553131315531313155313131553131
        3155313131552F2F32553F3F7D90171742490000000000000000}
      CaptionOptions.Text = #1053#1077#1087#1088#1077#1076#1074#1080#1076#1077#1085#1085#1099#1077' '#1088#1072#1089#1093#1086#1076#1099' '#1087#1086' '#1082#1074#1072#1088#1090#1072#1083#1072#1084
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 2
      ButtonOptions.Buttons = <
        item
          Enabled = False
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000001515
            151F8A8A8A9F8888889D8686869B8484849983838397818181957F7E7E937C7B
            7A907777768E757575885C5C5C720F0F0F210000000000000000000000002222
            222FF8F8F8FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F4
            F4FFF1EFEFFFF0EFEFFFF7F7F7FFB5B5B5D10101010800000000000000001F1F
            1F2BF7F7F7FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
            F5FFF5F3F3FFF2EFEFFFEFEFEFFFF2F2F2FF0C0C0C1900000000000000001C1C
            1C28F6F6F6FFF5F5F5FFF4F4F4FFF4F4F4FFF3F3F2FFDDD8D5FFDDD8D5FFF3F3
            F2FFF4F4F4FFF4F3F3FFF2EFEFFFEFEEEEFF1A1A1A2500000000000000001919
            1924F4F4F4FFF4F4F4FFF3F3F3FFC8AF9CFFC87639FFE38945FFE38945FFC876
            39FFC8AF9CFFF4F4F4FFF4F3F2FFF2F0EFFF1A1A1A2400000000000000001717
            1722F3F3F3FFF3F3F3FFC5A68FFFF08535FFFFAF73FFEFC19EFFD7B193FFFFAF
            73FFF08535FFC5A68FFFF3F3F3FFF4F2F2FF1A1A1A2400000000000000001717
            1721F2F2F2FFEAE8E6FFD16D24FFFFA561FFFFA764FFFFEBDCFFD8D2CDFFFFA7
            64FFFFA561FFD16D24FFEAE8E6FFF3F3F3FF1919192300000000000000001616
            1620F2F2F2FFC6BBB3FFFB8730FFFF9D53FFFF9D53FFFFE9D8FFD8D1CCFFFF9D
            53FFFF9D53FFFB8730FFC7BCB4FFF2F2F2FF1818182100000000000000001515
            151EF1F1F1FFC6BAB2FFFB862FFFFF9343FFFF9444FFFFE7D6FFDAD1CBFFFF93
            43FFFF9343FFFB862FFFC6BBB3FFF2F2F2FF1515151E00000000000000001313
            131CF0F0F0FFE7E5E3FFD0722CFFFF9C52FFFFA969FFEFB78CFFDCA983FFFFA5
            62FFFFA05AFFCF722CFFE8E6E4FFF1F1F1FF1212121B00000000000000001010
            1019EFEFEFFFEFEFEFFFC2A38CFFED8C44FFFFB37CFFFFCFADFFF3C7A7FFFFB3
            7BFFED8D45FFC2A48DFFF0F0F0FFF0F0F0FF0F0F0F1800000000000000000E0E
            0E17EFEFEFFFEFEFEFFFEDEDEDFFC3AA98FFC67F49FFE39052FFE39052FFC67F
            49FFC4AB99FFEEEEEEFFF0F0F0FFF0F0F0FF0B0B0B1300000000000000000C0C
            0C14EEEEEEFFEFEFEFFFEDEDEDFFEBEBEBFFE8E8E8FFD3CECBFFD4CFCBFFEAEA
            EAFFEDEDEDFFEEEEEEFFF0F0F0FFEFEFEFFF0808080F00000000000000000A0A
            0A12EEEEEEFFEFEFEFFFEDEDEDFFEBEBEBFFEAEAEAFFE9E9E9FFE9E9E9FFEBEB
            EBFFEDEDEDFFEEEEEEFFF0F0F0FFEFEFEFFF0505050B00000000000000000909
            0910EEEEEEFFEFEFEFFFEEEEEEFFECECECFFEBEBEBFFEBEBEBFFEBEBEBFFECEC
            ECFFEDEDEDFFEFEFEFFFF0F0F0FFEEEEEEFF0202020700000000000000000303
            03065E5E5E6D6161616F62626270626262706262627162626271626262726262
            62726161617161616171616161715F5F5F700000000300000000}
          Hint = #1057#1087#1088#1072#1074#1082#1072
          OnClick = grlc1Group1Button0Click
        end>
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '1-'#1081' '#1082#1074#1072#1088#1090#1072#1083
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = quart1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = '2-'#1081' '#1082#1074#1072#1088#1090#1072#1083
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = quart2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = '3-'#1081' '#1082#1074#1072#1088#1090#1072#1083
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = quart3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item13: TdxLayoutItem
      CaptionOptions.Text = '4-'#1081' '#1082#1074#1072#1088#1090#1072#1083
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = quart4
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmlc1Item14: TdxLayoutItem
      CaptionOptions.Text = ' '
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 40
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_firm: TdxLayoutItem
      CaptionOptions.Text = #1055#1086#1076#1088#1103#1076#1095#1080#1082
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 228
      Control = cbb_firm
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object litm_lc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = grp_2
      Control = chk_manager
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 592
    Top = 120
    object laf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_manager
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_street
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = clv1SUM1
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1SUM2
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1SUM3
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1SUM4
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1SUMALL
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1sumFact
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1SUMOST
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1SUMY
        Properties.Strings = (
          'Width')
      end
      item
        Component = edt_year
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 616
    Top = 200
  end
  object ds_trplan: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT TP.CODE, '
      '       TP.Y, '
      '       TP.HOUSE,h.nomer,'
      '       h.street,s.name StreetName,'
      '       TP.MLIST,m.name MlistName,'
      '       TP.SUMY, '
      '       TP.SUM1, '
      '       TP.SUM2, '
      '       TP.SUM3, '
      '       TP.SUM4,'
      '       tf.sumy SumAll,'
      '       tf.sumost,'
      '       (tf.sumy+tf.sumost) sumFact,'
      '       TP.FSUM1, '
      '       TP.FSUM2, '
      '       TP.FSUM3, '
      '       TP.FSUM4,'
      '       TP.kontragent,k.name KontName,'
      '       mh.worker manager, (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       TP.showcode'
      'FROM TRPLAN TP'
      'left outer join house h on h.code=tp.house'
      'left outer join street s on s.code=h.street'
      
        'left outer join mhouse mh on mh.house=tp.house and mh.kontragent' +
        '=1'
      'left outer join mlist m on m.code=tp.mlist'
      'left outer join kontragent k on k.code = tp.kontragent'
      'left outer join worker w on w.code = mh.worker'
      'left outer join piple p on p.code = w.piple'
      'left outer join trfinplan tf on tf.y=tp.y and tf.house=tp.house')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    Left = 104
    Top = 184
  end
  object src_trplan: TDataSource
    DataSet = ds_trplan
    Left = 133
    Top = 184
  end
  object ds_street: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME, STR_TYPE from STREET')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 184
    Top = 96
  end
  object src_street: TDataSource
    DataSet = ds_street
    Left = 213
    Top = 96
  end
  object ds_kontr: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME, FULLNAME from KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 416
    Top = 88
  end
  object src_kontr: TDataSource
    DataSet = ds_kontr
    Left = 448
    Top = 88
  end
  object stl_1: TcxStyleRepository
    Left = 40
    Top = 144
    PixelsPerInch = 96
    object cxstyl_group: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxstyl_grfooter: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object ds_worker: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT w.CODE, (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio'
      'FROM WORKER w'
      'left outer join piple p on p.code=w.piple'
      'where w.kontragent=1 and w.code<>9 and w.arole in (3,4,7,22,24)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 104
    Top = 264
  end
  object src_worker: TDataSource
    DataSet = ds_worker
    Left = 136
    Top = 264
  end
  object ds_UNFORESEEN_EXP: TpFIBDataSet
    SelectSQL.Strings = (
      'select ID, WORKER,'
      '        QUART1,'
      '        QUART2,'
      '        QUART3,'
      '        QUART4, Y'
      'from UNFORESEEN_EXP')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 720
    Top = 608
  end
  object src_UNFORESEEN_EXP: TDataSource
    DataSet = ds_UNFORESEEN_EXP
    Left = 688
    Top = 608
  end
  object brm1: TdxBarManager
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
    Left = 616
    Top = 288
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
      FloatLeft = 917
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_save'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_save: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
      OnClick = btn_saveClick
    end
  end
  object dlgSave1: TSaveDialog
    Filter = 'Excel|*.xls'
    Left = 512
    Top = 200
  end
end
