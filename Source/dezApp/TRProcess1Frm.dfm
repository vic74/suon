object TRProcess1Form: TTRProcess1Form
  Left = 0
  Top = 0
  HelpContext = 111
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1088#1072#1073#1086#1090' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1088#1077#1084#1086#1085#1090#1072
  ClientHeight = 603
  ClientWidth = 987
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
    Width = 987
    Height = 603
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 35
      Top = 58
      Width = 614
      Height = 250
      TabOrder = 10
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_TRFACT
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 57
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 128
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 32
        end
        object clv1MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'MNAME'
          Width = 134
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Width = 132
        end
        object clv1MANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FIO: TcxGridDBColumn
          Caption = #1054#1090#1074'. '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'FIO'
          Width = 147
        end
        object clv1NCALC: TcxGridDBColumn
          DataBinding.FieldName = 'NCALC'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NCALCDATE: TcxGridDBColumn
          DataBinding.FieldName = 'NCALCDATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NSUMMA: TcxGridDBColumn
          DataBinding.FieldName = 'NSUMMA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NDOP: TcxGridDBColumn
          DataBinding.FieldName = 'NDOP'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SUMMA: TcxGridDBColumn
          DataBinding.FieldName = 'SUMMA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NOTE: TcxGridDBColumn
          DataBinding.FieldName = 'NOTE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1PLANCODE: TcxGridDBColumn
          DataBinding.FieldName = 'PLANCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FIRM: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'FIRM'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = cmDb.src_FIRM
          Width = 141
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 11
      Top = 360
      Width = 965
      Height = 229
      TabOrder = 11
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_TRPLAN
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv2STREETNAME
          end
          item
            Kind = skSum
            Column = clv2SUMY
          end
          item
            Kind = skSum
            Column = clv2SUM1
          end
          item
            Kind = skSum
            Column = clv2SUM2
          end
          item
            Kind = skSum
            Column = clv2SUM3
          end
          item
            Kind = skSum
            Column = clv2SUM4
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
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv2Y: TcxGridDBColumn
          DataBinding.FieldName = 'Y'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          Width = 141
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 45
        end
        object clv2STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2DUNAME: TcxGridDBColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'DUNAME'
          Width = 73
        end
        object clv2MLISTNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'MLISTNAME'
          Width = 165
        end
        object clv2SUMY: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1085#1072' '#1075#1086#1076
          DataBinding.FieldName = 'SUMY'
          Width = 91
        end
        object clv2SUM1: TcxGridDBColumn
          Caption = '1 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM1'
        end
        object clv2SUM2: TcxGridDBColumn
          Caption = '2 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM2'
        end
        object clv2SUM3: TcxGridDBColumn
          Caption = '3 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM3'
        end
        object clv2SUM4: TcxGridDBColumn
          Caption = '4 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM4'
          Width = 69
        end
        object clv2SUMALL: TcxGridDBColumn
          DataBinding.FieldName = 'SUMALL'
          Visible = False
        end
        object clv2SUMOST: TcxGridDBColumn
          DataBinding.FieldName = 'SUMOST'
          Visible = False
        end
        object clv2SUMFACT: TcxGridDBColumn
          DataBinding.FieldName = 'SUMFACT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2FSUM1: TcxGridDBColumn
          DataBinding.FieldName = 'FSUM1'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2FSUM2: TcxGridDBColumn
          DataBinding.FieldName = 'FSUM2'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2FSUM3: TcxGridDBColumn
          DataBinding.FieldName = 'FSUM3'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2FSUM4: TcxGridDBColumn
          DataBinding.FieldName = 'FSUM4'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2KONTNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'KONTNAME'
          Visible = False
          VisibleForCustomization = False
          Width = 120
        end
        object clv2MANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2FIO: TcxGridDBColumn
          Caption = #1089#1090'. '#1084#1077#1085#1077#1076#1078#1077#1088' '#1057#1069
          DataBinding.FieldName = 'FIO'
          Width = 137
        end
        object clv2SHOWCODE: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2FACTCODE: TcxGridDBColumn
          DataBinding.FieldName = 'FACTCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2DU: TcxGridDBColumn
          DataBinding.FieldName = 'DU'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Options.Editing = False
          Width = 212
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object msk_Y: TcxMaskEdit
      Left = 22
      Top = 1
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 0
      Width = 92
    end
    object btn_exec: TcxButton
      Left = 418
      Top = 1
      Width = 116
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 2
      OnClick = btn_execClick
    end
    object cbb_street: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_street
      Properties.OnEditValueChanged = cbb_streetPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 5
      Visible = False
      Width = 271
    end
    object cbb_house: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'HOUSE'
      Properties.ListColumns = <
        item
          FieldName = 'NOMER'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_house
      Properties.OnEditValueChanged = cbb_housePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 6
      Visible = False
      Width = 271
    end
    object cbb_kontr: TcxLookupComboBox
      Left = 10000
      Top = 10000
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
      TabOrder = 4
      Visible = False
      Width = 304
    end
    object cbb_mlist: TcxLookupComboBox
      Left = 10000
      Top = 10000
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
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
          Width = 150
          FieldName = 'NAME'
        end
        item
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
          MinWidth = 0
          Width = 0
          FieldName = 'NOTE'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = src_mlist
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Width = 304
    end
    object btn_add: TcxButton
      Left = 10000
      Top = 10000
      Width = 304
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      TabOrder = 9
      Visible = False
      OnClick = btn_addClick
    end
    object cbb_manager: TcxLookupComboBox
      Left = 10000
      Top = 10000
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
      TabOrder = 7
      Visible = False
      Width = 304
    end
    object lbl1: TcxLabel
      Left = 10000
      Top = 10000
      Align = alClient
      AutoSize = False
      Caption = #1044#1086#1087'. '#1088#1072#1073#1086#1090#1072' '#1087#1086' '#1058#1056
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold, fsItalic]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.LineOptions.Visible = True
      Visible = False
      Height = 17
      Width = 304
      AnchorX = 10152
    end
    object cbb_Firm: TcxLookupComboBox
      Left = 183
      Top = 1
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_FIRM
      Properties.OnEditValueChanged = cbb_FirmPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Width = 224
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object Group1: TdxLayoutGroup
      CaptionOptions.Text = ' '
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 7
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_Y: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1043#1086#1076
      Parent = Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 113
      Control = msk_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Offsets.Left = 10
      Parent = Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 116
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1060#1072#1082#1090
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = False
      SizeOptions.Width = 344
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object grlc1Group1: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object group5: TdxLayoutGroup
      CaptionOptions.Glyph.Data = {
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
      CaptionOptions.Layout = clLeft
      CaptionOptions.Text = #1044#1086#1087'. '#1088#1072#1073#1086#1090#1072' '#1087#1086' '#1058#1056'   '
      Parent = grlc1Group1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 180
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      OnCaptionClick = group5CaptionClick
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Parent = group5
      Control = lbl1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_kontr: TdxLayoutItem
      CaptionOptions.Text = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      CaptionOptions.Layout = clTop
      Parent = group5
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = group5
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_house: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      Parent = group5
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_manager: TdxLayoutItem
      CaptionOptions.Text = #1054#1090#1074'. '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
      CaptionOptions.Layout = clTop
      Parent = group5
      Control = cbb_manager
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_mlist: TdxLayoutItem
      CaptionOptions.Text = #1056#1072#1073#1086#1090#1072
      CaptionOptions.Layout = clTop
      Parent = group5
      Control = cbb_mlist
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itm_add: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = group5
      Control = btn_add
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
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
      SizeOptions.Width = 10
      Index = 2
    end
    object Group3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1055#1083#1072#1085'   ( F3 '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1079#1072#1087#1080#1089#1080' )'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid2'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = Group3
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Parent = Group1
      Control = cbb_Firm
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 520
    Top = 256
    object lcl1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_Firm
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = msk_Y
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 492
    Top = 256
  end
  object ds_TRPLAN: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select TP.CODE, TP.Y, TP.HOUSE, H.NOMER, H.STREET, S.NAME STREET' +
        'NAME,'
      '       H.DU, DU.name DUNAME,'
      '       TP.MLIST, M.NAME MLISTNAME, TP.SUMY, TP.SUM1,'
      '       TP.SUM2, TP.SUM3, TP.SUM4, TF.SUMY SUMALL, TF.SUMOST,'
      
        '       (TF.SUMY + TF.SUMOST) SUMFACT, TP.FSUM1, TP.FSUM2, TP.FSU' +
        'M3,'
      '       TP.FSUM4, TP.KONTRAGENT, K.NAME KONTNAME, TP.MANAGER,'
      
        '       (P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO, TP.SHOWCODE, TP.FA' +
        'CTCODE,'
      '       TP.STATE, TP.NOTE, TP.FIRM'
      'from TRPLAN TP'
      'left outer join HOUSE H on H.CODE = TP.HOUSE'
      'left outer join DU on DU.code=h.du'
      'left outer join STREET S on S.CODE = H.STREET'
      
        'left outer join MLIST M on M.CODE = TP.MLIST and m.MGROUP in (1,' +
        '3)'
      'left outer join KONTRAGENT K on K.CODE = TP.KONTRAGENT'
      'left outer join WORKER W on W.CODE = TP.MANAGER'
      'left outer join PIPLE P on P.CODE = W.PIPLE'
      'left join TRFINPLAN TF on TF.Y = TP.Y and TF.HOUSE = TP.HOUSE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 384
    Top = 256
  end
  object src_TRPLAN: TDataSource
    DataSet = ds_TRPLAN
    Left = 413
    Top = 256
  end
  object ds_TRFACT: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,'
      '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,'
      
        '  K.NAME KNAME, TF.MANAGER,(P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO' +
        ','
      '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,'
      '  TF.PLANCODE,TF.STATE,TF.DPLACE, TF.FIRM'
      'from TRFACT TF'
      ' left outer join HOUSE H on H.CODE = TF.HOUSE'
      ' left outer join STREET S on S.CODE = H.STREET'
      ' left outer join MLIST M on M.CODE = TF.MLIST'
      ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT'
      ' left outer join WORKER W on W.CODE = TF.MANAGER'
      ' left outer join PIPLE P on P.CODE = W.PIPLE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 72
    Top = 272
  end
  object src_TRFACT: TDataSource
    DataSet = ds_TRFACT
    Left = 101
    Top = 272
  end
  object ds_house: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT HOUSE, NOMER, STREET FROM GETHOUSEBYFIRM(:FIRM)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 384
    Top = 432
    dcForceOpen = True
  end
  object ds_mlist: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    MGROUP,'
      '    NAME,'
      '    ED,'
      '    JWORKTYPE,'
      '    NOTE,'
      '    KYEAR,'
      '    STRUCTDEFECT'
      'FROM'
      '    MLIST '
      'where MGROUP in (1,3)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 384
    Top = 512
  end
  object ds_street: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NAME, '
      '       STR_TYPE'
      'FROM STREET'
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 384
    Top = 464
  end
  object src_mlist: TDataSource
    DataSet = ds_mlist
    Left = 413
    Top = 512
  end
  object src_street: TDataSource
    DataSet = ds_street
    Left = 412
    Top = 464
  end
  object src_house: TDataSource
    DataSet = ds_house
    Left = 413
    Top = 432
  end
  object src_kontr: TDataSource
    Left = 413
    Top = 403
  end
  object ds_worker: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT w.CODE, '
      '       w.KONTRAGENT, '
      '       w.PIPLE,'
      '       (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       w.AROLE'
      'FROM WORKER w'
      'left outer join PIPLE p on p.code=w.piple'
      'where USETR=1')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 448
    Top = 400
  end
  object src_worker: TDataSource
    DataSet = ds_worker
    Left = 480
    Top = 400
  end
  object ppm1: TcxGridPopupMenu
    Grid = grd1
    PopupMenus = <>
    AlwaysFireOnPopup = True
    Left = 256
    Top = 192
  end
  object ppm2: TcxGridPopupMenu
    Grid = grd2
    PopupMenus = <>
    AlwaysFireOnPopup = True
    Left = 296
    Top = 448
  end
end
