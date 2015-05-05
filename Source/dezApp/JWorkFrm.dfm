object JWORKForm: TJWORKForm
  Left = 0
  Top = 0
  Caption = #1046#1091#1088#1085#1072#1083' '#1088#1072#1073#1086#1090' '#1087#1086' '#1090#1077#1082#1091#1097#1077#1084#1091' '#1088#1077#1084#1086#1085#1090#1091
  ClientHeight = 671
  ClientWidth = 894
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
    Top = 26
    Width = 894
    Height = 645
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object grd1: TcxGrid
      Left = 22
      Top = 79
      Width = 250
      Height = 200
      Images = il1
      TabOrder = 3
      object v1: TcxGridDBTableView
        OnKeyDown = v1KeyDown
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = v1CustomDrawCell
        DataController.DataSource = src_JWork
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = il1
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = v1StylesGetContentStyle
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
          HeaderHint = #1057#1086#1079#1076#1072#1085#1086' '#1080#1079' '#1072#1082#1090#1072' '#1086#1089#1084#1086#1090#1088#1072
          HeaderImageIndex = 8
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
          HeaderHint = #1057#1086#1079#1076#1072#1085#1086' '#1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080' '
          HeaderImageIndex = 7
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
          HeaderHint = #1047#1072#1082#1088#1099#1090#1086' '#1080#1079' '#1085#1072#1088#1103#1076#1072
          Options.Editing = False
          Options.ShowCaption = False
          Width = 24
        end
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv1JWORKTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'JWORKTYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1JTNAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'JWORKTYPE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
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
          Properties.ListSource = src_JWORKTYPE
          Width = 119
        end
        object clv1REGDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
          DataBinding.FieldName = 'REGDATE'
          Options.Editing = False
          Width = 87
        end
        object clv1KONTRAGENT: TcxGridDBColumn
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
        object clv1HOUSE: TcxGridDBColumn
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
          OnCustomDrawCell = clv1PLANDATECustomDrawCell
          Width = 95
        end
        object clv1FACTDATE: TcxGridDBColumn
          Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103' '#1076#1072#1090#1072
          DataBinding.FieldName = 'FACTDATE'
          Width = 112
        end
        object clv1NOTE: TcxGridDBColumn
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
          Properties.OnButtonClick = clv1ToArhPropertiesButtonClick
          VisibleForCustomization = False
          Width = 46
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object dt1: TcxDateEdit
      Left = 73
      Top = 48
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object dt2: TcxDateEdit
      Left = 217
      Top = 48
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object btn_exec: TcxButton
      Left = 344
      Top = 48
      Width = 75
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
      TabOrder = 2
      OnClick = btn_execClick
    end
    object grd2: TcxGrid
      Left = 10000
      Top = 10000
      Width = 868
      Height = 561
      TabOrder = 8
      Visible = False
      object v2: TcxGridDBTableView
        OnKeyDown = v1KeyDown
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = v1CustomDrawCell
        DataController.DataSource = src_JWORKARC
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = #1040#1082#1090' '#8470
          DataBinding.FieldName = 'showhouse'
          Options.Editing = False
          Width = 47
        end
        object cl_SHOWRESULT: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWRESULT'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.DefaultImageIndex = 8
          Properties.Images = il1
          Properties.Items = <
            item
            end>
          Options.Editing = False
          Width = 22
          IsCaptionAssigned = True
        end
        object cxGridDBColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object cxGridDBColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'JWORKTYPE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object cl_JWORKTYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'JWORKTYPE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
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
          Properties.ListSource = src_JWORKTYPE
          Options.Editing = False
          Width = 119
        end
        object clREGDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
          DataBinding.FieldName = 'REGDATE'
          Options.Editing = False
          Width = 87
        end
        object cxGridDBColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object cxGridDBColumn8: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KONTRNAME'
          Options.Editing = False
          Width = 175
        end
        object cxGridDBColumn9: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object cxGridDBColumn10: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          Options.Editing = False
          Width = 123
        end
        object cxGridDBColumn11: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 46
        end
        object cxGridDBColumn12: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1087#1083#1072#1085#1080#1088#1091#1077#1084#1099#1093' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'DESCRIPTION'
          Options.Editing = False
          Width = 194
        end
        object cxGridDBColumn13: TcxGridDBColumn
          Caption = #1052#1077#1089#1090#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'PLACE'
          Options.Editing = False
          Width = 148
        end
        object cxGridDBColumn14: TcxGridDBColumn
          Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1076#1072#1090#1072
          DataBinding.FieldName = 'PLANDATE'
          OnCustomDrawCell = clv1PLANDATECustomDrawCell
          Options.Editing = False
          Width = 95
        end
        object cxGridDBColumn15: TcxGridDBColumn
          Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103' '#1076#1072#1090#1072
          DataBinding.FieldName = 'FACTDATE'
          Options.Editing = False
          Width = 112
        end
        object cxGridDBColumn16: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1099#1093' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'NOTE'
          Options.Editing = False
          Width = 228
        end
        object cxGridDBColumn17: TcxGridDBColumn
          DataBinding.FieldName = 'WORKSPECLIST'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object cxGridDBColumn18: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object cxGridDBColumn19: TcxGridDBColumn
          Caption = #1042' '#1078#1091#1088#1085#1072#1083
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
          Properties.OnButtonClick = cxGridDBColumn19PropertiesButtonClick
          VisibleForCustomization = False
          Width = 46
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object dt3: TcxDateEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 4
      Visible = False
      Width = 121
    end
    object dt4: TcxDateEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 5
      Visible = False
      Width = 121
    end
    object chk_ark: TcxCheckBox
      Left = 10000
      Top = 10000
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080
      Properties.OnEditValueChanged = chk_arkPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 6
      Visible = False
      Width = 121
    end
    object btn_arh: TcxButton
      Left = 10000
      Top = 10000
      Width = 139
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
      TabOrder = 7
      Visible = False
      OnClick = btn_arhClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grplc1Group1: TdxLayoutGroup
      CaptionOptions.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        0000333330FFFFFFFFF0003000000FF000F0E00FBFBFB0FFFFF0E0FBFB00000F
        F0F0E0BFBFBFBFB0FFF0E0FBFB00000FF0F0E0BFBFBFBFB0FFF0E0FB0000000F
        F0F0000FB0FFFFFFFFF0333000FFFFFFFFF0333330F000FF0000333330FFFFFF
        0FF0333330CCCCCC0F03333330FFFFFF00333333300000000333}
      CaptionOptions.Text = #1046#1091#1088#1085#1072#1083' '#1088#1072#1073#1086#1090
      Parent = grplc1Group2
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object grplc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = grplc1Group2TabChanged
      Index = 0
    end
    object grplc1Group3: TdxLayoutGroup
      CaptionOptions.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        00005555000FFFFFFFF055000F0F0000FFF0000F0F0FFFFFFFF00F0F0F0F0000
        00F00F0F0F0FFFFFFFF00F0F0F0F000000F00F0F0F0FFFFFFFF00F0F0F0F000F
        FFF00F0F0F0FFFFF00000F0F0F0F00FF0F050F0F0F0FFFFF00550F0F0F000000
        05550F0F0000000555550F000000055555550000000555555555}
      CaptionOptions.Text = #1040#1088#1093#1080#1074' '#1078#1091#1088#1085#1072#1083#1072' '#1088#1072#1073#1086#1090
      Parent = grplc1Group2
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object grplc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = True
      SizeOptions.Height = 13
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089
      Parent = grplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1087#1086
      Parent = grplc1Group4
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group4
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 123
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = grplc1Group3
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grplc1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grplc1Group3
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itmlc1Item13: TdxLayoutItem
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089
      Parent = grplc1Group5
      Control = dt3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item14: TdxLayoutItem
      CaptionOptions.Text = #1087#1086
      Parent = grplc1Group5
      Control = dt4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item15: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = grplc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 162
      Control = chk_ark
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item16: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 122
      Control = btn_arh
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 128
    Top = 320
    object laf1: TdxLayoutCxLookAndFeel
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
    Left = 160
    Top = 288
  end
  object ds_JWork: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE JWORK'
      'SET '
      '    JWORKTYPE = :JWORKTYPE,'
      '    REGDATE = :REGDATE,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    HOUSE = :HOUSE,'
      '    DESCRIPTION = :DESCRIPTION,'
      '    PLACE = :PLACE,'
      '    PLANDATE = :PLANDATE,'
      '    FACTDATE = :FACTDATE,'
      '    NOTE = :NOTE,'
      '    SHOWRESULT = :SHOWRESULT,'
      '    WORKSPECLIST = :WORKSPECLIST,'
      '    LASTTIME = :LASTTIME,'
      '    USERNAME = :USERNAME,'
      '    STREET = :STREET'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    JWORK'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO JWORK('
      '    CODE,'
      '    JWORKTYPE,'
      '    REGDATE,'
      '    KONTRAGENT,'
      '    HOUSE,'
      '    DESCRIPTION,'
      '    PLACE,'
      '    PLANDATE,'
      '    FACTDATE,'
      '    NOTE,'
      '    SHOWRESULT,'
      '    WORKSPECLIST,'
      '    LASTTIME,'
      '    USERNAME,'
      '    STREET'
      ')'
      'VALUES('
      '    :CODE,'
      '    :JWORKTYPE,'
      '    :REGDATE,'
      '    :KONTRAGENT,'
      '    :HOUSE,'
      '    :DESCRIPTION,'
      '    :PLACE,'
      '    :PLANDATE,'
      '    :FACTDATE,'
      '    :NOTE,'
      '    :SHOWRESULT,'
      '    :WORKSPECLIST,'
      '    :LASTTIME,'
      '    :USERNAME,'
      '    :STREET'
      ')')
    RefreshSQL.Strings = (
      'SELECT JW.CODE, '
      '       JW.JWORKTYPE, jt.name JTName,'
      '       JW.REGDATE, '
      '       JW.KONTRAGENT, k.Name KontrName,'
      '       JW.HOUSE, h.nomer,'
      '       JW.DESCRIPTION, '
      '       JW.PLACE, '
      '       JW.PLANDATE, '
      '       JW.FACTDATE, '
      '       JW.NOTE, '
      '       JW.SHOWRESULT, '
      '       JW.WORKSPECLIST, '
      '       JW.LASTTIME, '
      '       JW.USERNAME, '
      '       JW.STREET, s.name StreetName'
      'FROM JWORK JW'
      'left outer join house h on h.code=JW.HOUSE'
      'Left outer join street s on s.code = jw.street'
      'left outer join kontragent k on k.code=jw.kontragent'
      'left outer join JWORKTYPE jt on jt.code=jw.JWORKTYPE'
      ''
      ' WHERE '
      '        JW.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT JW.CODE, '
      '       JW.JWORKTYPE, jt.name JTName,'
      '       JW.REGDATE, '
      '       JW.KONTRAGENT, k.Name KontrName,'
      '       JW.HOUSE, h.nomer,'
      '       JW.DESCRIPTION, '
      '       JW.PLACE, '
      '       JW.PLANDATE, '
      '       JW.FACTDATE, '
      '       JW.NOTE, '
      '       JW.SHOWRESULT, sh.showhouse,'
      '       JW.WORKSPECLIST, '
      '       JW.LASTTIME, '
      '       JW.USERNAME, '
      '       JW.STREET, s.name StreetName'
      'FROM JWORK JW'
      'left outer join house h on h.code=JW.HOUSE'
      'Left outer join street s on s.code = jw.street'
      'left outer join kontragent k on k.code=jw.kontragent'
      'left outer join JWORKTYPE jt on jt.code=jw.JWORKTYPE'
      'left outer join showresult sh on sh.code=jw.showresult')
    BeforeDelete = ds_JWorkBeforeDelete
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 128
    Top = 224
  end
  object src_JWork: TDataSource
    DataSet = ds_JWork
    Left = 157
    Top = 224
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 128
    Top = 256
    DockControlHeights = (
      0
      0
      26
      0)
    object brm1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 745
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Add'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Edit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Delete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_excel'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_Add: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100
      ScreenTip = tip1_insert
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
      PaintStyle = psCaptionGlyph
      OnClick = btn_AddClick
    end
    object btn_Edit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ScreenTip = tip1_edit
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000001515
        151F8A8A8A9F8888889D8686869B8484849983838397818181957F7E7E937C7B
        7A907777768E757575885C5C5C720F0F0F210000000000000000000000002222
        222FF8F8F8FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F4
        F4FFF1EFEFFFF0EFEFFFF7F7F7FFB5B5B5D10101010800000000151616383E45
        4F7BF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
        F5FFF5F3F3FFF2EFEFFFEFEFEFFFF2F2F2FF0C0C0C1900000000000000007085
        A3B36CA8DAFFD1E0EAFFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
        F4FFF4F4F4FFF4F3F3FFF2EFEFFFEFEEEEFF1A1A1A2500000000000000001E23
        272F55C4F6FF1796DFFFBED6E5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF4F4F4FFF4F3F2FFF2F0EFFF1A1A1A2400000000000000001717
        1722DDEEF4FF50C5F6FF0E96E1FFAACBE1FFF1F1F1FFF1F1F1FFF1F1F1FFF2F2
        F2FFF2F2F2FFF3F3F3FFF3F3F3FFF4F2F2FF1A1A1A2400000000000000001717
        1721F2F2F2FFE3EEF3FF61CAF6FF0A98E5FF93C0DDFFF0F0F0FFF0F0F0FFF0F0
        F0FFF1F1F1FFF2F2F2FFF3F3F3FFF3F3F3FF1919192300000000000000001616
        1620F2F2F2FFF1F1F1FFE6EDF0FF70CFF5FF0B9DE9FF7BB4D9FFEEEEEEFFEFEF
        EFFFF0F0F0FFF1F1F1FFF2F2F2FFF2F2F2FF1818182100000000000000001515
        151EF1F1F1FFF0F0F0FFEFEFEFFFE8ECEEFF7FD2F4FF0FA3ECFF62AAD8FFEAEB
        ECFFEFEFEFFFF0F0F0FFF1F1F1FFF2F2F2FF1515151E00000000000000001313
        131CF0F0F0FFF0F0F0FFEEEEEEFFEDEDEDFFE9EBECFF8CD5F2FF16A9EEFF4CA2
        D8FFE5E8EAFFEFEFEFFFF1F1F1FFF1F1F1FF1212121B00000000000000001010
        1019EFEFEFFFEFEFEFFFEDEDEDFFECECECFFEAEAEAFFE9E9EAFF99D7F0FF1EAE
        F1FF399DD9FFD9E1E6FFF0F0F0FFF0F0F0FF0F0F0F1800000000000000000E0E
        0E17EFEFEFFFEFEFEFFFEDEDEDFFEBEBEBFFE9E9E9FFE8E8E8FFE9E9E9FFA7DA
        EFFF2FB4EFFFABBECAFFE1E2E3FFF0F0F0FF0B0B0B1300000000000000000C0C
        0C14EEEEEEFFEFEFEFFFEDEDEDFFEBEBEBFFE9E9E9FFE8E8E8FFE9E9E9FFEBEB
        EBFFD1DBE0FFC3C3C3FFB5C0DDFFD6DCEEFF0808080F00000000000000000A0A
        0A12EEEEEEFFEFEFEFFFEDEDEDFFEBEBEBFFEAEAEAFFE9E9E9FFE9E9E9FFEBEB
        EBFFEDEDEDFFDBDEE8FFC8D8FDFFD8DFF3FF0505050B00000000000000000909
        0910EEEEEEFFEFEFEFFFEEEEEEFFECECECFFEBEBEBFFEBEBEBFFEBEBEBFFECEC
        ECFFEDEDEDFFEFEFEFFFE5E7F1FFEEEEEEFF0202020700000000000000000303
        03065E5E5E6D6161616F62626270626262706262627162626271626262726262
        62726161617161616171616161715F5F5F700000000300000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_EditClick
    end
    object btn_Delete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      ScreenTip = tip1_delete
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
        0000020213170B0BB9E51414EDFF1616F5FF2929EDFF1616FBFF1616FBFF2828
        EDFF1616F5FF1414EDFF0B0BB9E5020213170000000000000000000000000000
        0000070779971C1CEFFF1F1FF3FFA2A2EFFFE2E2F8FF3838ECFF3838ECFFE2E2
        F7FFA1A1EEFF1E1EF3FF1C1CEFFF070779970000000000000000000000000101
        06071616CEF13B3BF5FF4C4CEDFFE4E4F9FFFFFFFFFFE3E3F8FFE2E2F8FFFFFF
        FFFFE2E2F8FF3636EAFF2929F5FF1515CEF10101060700000000000000000202
        242E3838E1FF6666F5FF6666F5FF6868EEFFE4E4FAFFFFFFFFFFFFFFFFFFE2E2
        F9FF4545EBFF3232F2FF3F3FF2FF3A3AE1FF0202242E00000000000000000202
        29354343DFFF7B7BF4FF7B7BF4FF7272F0FFE3E3FAFFFFFFFFFFFFFFFFFFE3E3
        FAFF5C5CEDFF6363F2FF7777F3FF4545DFFF0202293500000000000000000101
        0F142828D2FD8C8CF2FF7B7BF1FFE3E3FBFFFFFFFFFFE4E4FBFFE4E4FBFFFFFF
        FFFFE4E4FBFF7B7BEFFF8C8CF2FF2B2BD2FD01010F1400000000000000000000
        0000090999C17474E9FF9393F1FFB8B8F6FFE4E4FBFF8D8DF1FF8E8EF1FFE4E4
        FBFFB9B9F6FF9393F1FF7575E9FF0A0A99C10000000000000000000000000000
        000003032F3F2929D6FD9191EEFF9696F0FF9292F0FFB2B2F4FFB2B2F4FF9292
        F0FF9696F0FF9191EEFF2929D6FD03032F3F0000000000000000000000000000
        000000000000050557723636DCFE9797F1FFA2A2F2FFA2A2F2FFA2A2F2FFA2A2
        F2FF9898F1FF3838DCFE05055772000000000000000000000000000000000000
        000000000000000000000404394D1515B1DA4D4DE1FF6D6DEDFF6F6FEDFF5252
        E2FF1616B1DA0404394D00000000000000000000000000000000000000000000
        0000000000000000000000000000000001010303263405054660050546600303
        2634000001010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_DeleteClick
    end
    object btn_excel: TdxBarButton
      Caption = 'Excel'
      Category = 0
      Hint = 'Excel'
      ScreenTip = tip1_excel
      Visible = ivAlways
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFF
        0000FFFFFF000000000000000000000000000000000000000000000000000000
        000000000000808000808000808000808000000000FFFFFF0000FFFFFF000000
        808080808080808080808080808080808080808080808080000000808000FFFF
        00FFFF00FFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFF000000FFFF008080
        00808000808000808000808000000000808000FFFF00FFFF00FFFFFF000000FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF000000FFFF0080800080800080
        8000000000808000FFFF00FFFF00FFFFFF000000808000000000FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00808000000000808000FFFF00
        FFFF00FFFFFF000000000000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000808000FFFF00FFFF00FFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000808000FFFF00FFFF00FFFFFF000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF000000808000FFFF00FF
        FF00FFFFFF000000808000808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFF000000808000FFFF00FFFF00FFFFFF000000FFFF00
        808000808000808080000000FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        000000808000FFFF00FFFF00FFFFFF000000FFFFFF000000FFFF008080008080
        00808080000000FFFFFFFFFFFFFFFFFF0000FFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFF00FFFF00FFFF00FFFF0000
        0000FFFFFFFFFFFF0000FFFFFF000000000000000000000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
      OnClick = btn_excelClick
    end
  end
  object tip1: TdxBarScreenTipRepository
    Left = 128
    Top = 288
    object tip1_insert: TdxBarScreenTip
      Header.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FDFDFDFBFBFBF9F9F9F6F6F6F4F4F4F3F3F3F3F3F3F4F4F4F6F6F6F8F8F8FBFB
        FBFDFDFDFFFFFFFFFFFFFEFEFEF7F7F7EEEEEEE4E4E4DBDBDBD3D3D3CBCBCBC1
        C4C2C1C4C2CACACAD1D1D1DADADAE3E3E3ECECECF6F6F6FEFEFEFFFFFFFFFFFF
        FFFFFFFEFEFEEFF5F180C09C2EB2690BB3560BB3562EB26980C09CEFF5F1FDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2E8DC27B06425DC813EEDA24A
        F3B14AF4B23FEDA426DC8327B165D2E8DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E9F4EE29B66B43EEA854FABF4CECABADEBCEADE8CC4CE5A854FABF45F0AB2BB7
        6DE9F4EEFFFFFFFFFFFFFFFFFFFFFFFF6FC5963EEAA24BF5B34BF5B34AE7A3FF
        FFFFFFFFFF49E0A04BF5B34BF5B340ECA56FC697FFFFFFFFFFFFFFFFFFF8FCFA
        29C27552F2AF4CEDA44AE9A148DE97FFFFFFFFFFFF47D19042D9973ED89541F1
        A82CC579F8FCFAFFFFFFFFFFFFD3EEDF3ACE846AF2B5AFF4D0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA6DCC146EEA33CD187D3EEDFFFFFFFFFFFFFCCEDDB
        40C98173F0B5B1F4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADDCC36FEF
        B340CB83CCEDDBFFFFFFFFFFFFECF9F228B4687CEBB36BEAA86CE7A764DD9DFF
        FFFFFFFFFF63CF966BD89F69D79F7BECB428B568ECF9F2FFFFFFFFFFFFFFFFFF
        47C17D6EC89787ECB788EFB974E3A7FFFFFFFFFFFF73DCA487EFB986ECB86CC9
        9747C17DFFFFFFFFFFFFFFFFFFFFFFFFC3F1D72AAA648DCDAA93DFB57BDFA8B7
        E9CDB7E6CC7BD8A593DFB68CCDA927A961C3F1D7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF92E4B736AC6A95CAADA0CFB5A0CFB5A0CFB5A0CFB595C9AD34AA6992E4
        B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6F1D039BE744CB27A6A
        B1896CB28B4FB47D3ABE75B6F1D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFECEF7E0A5F1C6A5F1C6CEF7E0FEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Header.Text = #1057#1086#1079#1076#1072#1090#1100' <INSERT>'
      Description.Text = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083#1077' '#1088#1072#1073#1086#1090'.'
    end
    object tip1_edit: TdxBarScreenTip
      Header.Glyph.Data = {
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
      Header.Text = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' <ENTER>'
      Description.Text = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1081' '#1079#1072#1087#1080#1089#1080
    end
    object tip1_delete: TdxBarScreenTip
      Header.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FDFDFDFBFBFBF9F9F9F6F6F6F4F4F4F3F3F3F3F3F3F4F4F4F6F6F6F8F8F8FBFB
        FBFDFDFDFFFFFFFFFFFFFEFEFEF7F7F7EEEEEEE4E4E4DBDBDBD3D3D3CCCCCCC2
        C2C7C1C1C6CACACAD1D1D1D9D9D9E3E3E3ECECECF6F6F6FEFEFEFFFFFFFFFFFF
        FFFFFFFEFEFEEFEFFA8282E22E2ECC0A0AC40A0AC42E2ECC8282E2EFEFFAFDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3F62727CE0C0CD10D0DE40D
        0DEE0D0DEE0D0DE40C0CD12727CED3D3F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E9E9FA2424D21414ED1616F52929ED1616FB1616FB2828ED1616F51414ED2424
        D2E9E9FAFFFFFFFFFFFFFFFFFFFFFFFF6F6FE11C1CEF1F1FF3A2A2EFE2E2F838
        38EC3838ECE2E2F7A1A1EE1E1EF31C1CEF6F6FE1FFFFFFFFFFFFFFFFFFF8F8FD
        2323DC3B3BF54C4CEDE4E4F9FFFFFFE3E3F8E2E2F8FFFFFFE2E2F83636EA2929
        F52222DCF8F8FDFFFFFFFFFFFFD3D3F53838E16666F56666F56868EEE4E4FAFF
        FFFFFFFFFFE2E2F94545EB3232F23F3FF23A3AE1D3D3F5FFFFFFFFFFFFCCCCF2
        4343DF7B7BF47B7BF47272F0E3E3FAFFFFFFFFFFFFE3E3FA5C5CED6363F27777
        F34545DFCCCCF2FFFFFFFFFFFFECECFA2929D48C8CF27B7BF1E3E3FBFFFFFFE4
        E4FBE4E4FBFFFFFFE4E4FB7B7BEF8C8CF22C2CD4ECECFAFFFFFFFFFFFFFFFFFF
        4747D67474E99393F1B8B8F6E4E4FB8D8DF18E8EF1E4E4FBB9B9F69393F17575
        E94747D6FFFFFFFFFFFFFFFFFFFFFFFFC2C2EF2A2AD89191EE9696F09292F0B2
        B2F4B2B2F49292F09696F09191EE2A2AD8C2C2EFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF9191E33636DD9797F1A2A2F2A2A2F2A2A2F2A2A2F29898F13838DD9191
        E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5EB3939D54D4DE16D
        6DED6F6FED5252E23B3BD5B5B5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFECDCDF1A3A3E5A3A3E5CDCDF1FEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Header.Text = #1059#1076#1072#1083#1080#1090#1100' <DELETE>'
      Description.Text = #1059#1076#1072#1083#1077#1085#1080#1077' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1081' '#1079#1072#1087#1080#1089#1080
    end
    object tip1_excel: TdxBarScreenTip
      Header.Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFF
        0000FFFFFF000000000000000000000000000000000000000000000000000000
        000000000000808000808000808000808000000000FFFFFF0000FFFFFF000000
        808080808080808080808080808080808080808080808080000000808000FFFF
        00FFFF00FFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFF000000FFFF008080
        00808000808000808000808000000000808000FFFF00FFFF00FFFFFF000000FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF000000FFFF0080800080800080
        8000000000808000FFFF00FFFF00FFFFFF000000808000000000FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00808000000000808000FFFF00
        FFFF00FFFFFF000000000000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000808000FFFF00FFFF00FFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000808000FFFF00FFFF00FFFFFF000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF000000808000FFFF00FF
        FF00FFFFFF000000808000808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFF000000808000FFFF00FFFF00FFFFFF000000FFFF00
        808000808000808080000000FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        000000808000FFFF00FFFF00FFFFFF000000FFFFFF000000FFFF008080008080
        00808080000000FFFFFFFFFFFFFFFFFF0000FFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFF00FFFF00FFFF00FFFF0000
        0000FFFFFFFFFFFF0000FFFFFF000000000000000000000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
      Header.Text = #1069#1082#1089#1087#1086#1088#1090
      Description.Text = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
    end
  end
  object dlgSave: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' Excel|*.xls'
    Left = 160
    Top = 256
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
  object stl1: TcxStyleRepository
    Left = 80
    Top = 200
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svColor]
      Color = clRed
    end
  end
  object ds_JWORKTYPE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NAME'
      'FROM JWORKTYPE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 168
    Top = 408
  end
  object src_JWORKTYPE: TDataSource
    DataSet = ds_JWORKTYPE
    Left = 197
    Top = 408
  end
  object ds_JWORKARC: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT JW.CODE, '
      '       JW.JWORKTYPE, jt.name JTName,'
      '       JW.REGDATE, '
      '       JW.KONTRAGENT, k.Name KontrName,'
      '       JW.HOUSE, h.nomer,'
      '       JW.DESCRIPTION, '
      '       JW.PLACE, '
      '       JW.PLANDATE, '
      '       JW.FACTDATE, '
      '       JW.NOTE, '
      '       JW.SHOWRESULT, sh.showhouse,'
      '       JW.WORKSPECLIST, '
      '       JW.LASTTIME, '
      '       JW.USERNAME, '
      '       JW.STREET, s.name StreetName'
      'FROM JWORK_ARC JW'
      'left outer join house h on h.code=JW.HOUSE'
      'Left outer join street s on s.code = jw.street'
      'left outer join kontragent k on k.code=jw.kontragent'
      'left outer join JWORKTYPE jt on jt.code=jw.JWORKTYPE'
      'left outer join showresult sh on sh.code=jw.showresult')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 256
    Top = 192
  end
  object src_JWORKARC: TDataSource
    DataSet = ds_JWORKARC
    Left = 285
    Top = 192
  end
end
