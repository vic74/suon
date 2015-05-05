object EditForm: TEditForm
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1086#1090#1095#1077#1090#1086#1074
  ClientHeight = 712
  ClientWidth = 1037
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lcntr_root: TdxLayoutControl
    Left = 0
    Top = 24
    Width = 265
    Height = 688
    Align = alLeft
    TabOrder = 0
    LayoutLookAndFeel = LCxSkin1
    object btn_save: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1096#1072#1073#1083#1086#1085
      Enabled = False
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000683B1E8F834B
        26B5AC6231EEB76835FFB56835FFB46734FFB26634FFB06533FFAE6433FFAC63
        32FFAA6232FFA96132FFA86031FFA66031FE9D5B2EF1814B26C4A25C2EDEEBC6
        ADFFEAC5ADFFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFB
        F8FFFEFBF8FFFEFBF8FFFEFBF8FFC89A7CFFC79879FF9B592EEDB96B37FEEDCA
        B3FFE0A27AFFFEFAF7FF62C088FF62C088FF62C088FF62C088FF62C088FF62C0
        88FF62C088FF62C088FFFDF9F6FFCA8D65FFC99B7CFFA66031FEBB6C38FFEECC
        B6FFE1A27AFFFEFAF7FFBFDCC2FFBFDCC2FFBFDCC2FFBFDCC2FFBFDCC2FFBFDC
        C2FFBFDCC2FFBFDCC2FFFDF9F6FFCD9068FFCC9E81FFA86132FFBB6B38FFEFCE
        B8FFE1A279FFFEFAF7FF62C088FF62C088FF62C088FF62C088FF62C088FF62C0
        88FF62C088FF62C088FFFDF9F6FFCF936AFFCEA384FFAA6132FFBA6A36FFEFD0
        BBFFE2A27AFFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFB
        F8FFFEFBF8FFFEFBF8FFFEFBF8FFD3966DFFD2A78AFFAB6232FFBB6A36FFF0D2
        BEFFE2A37AFFE2A37AFFE1A37AFFE2A37BFFE1A37BFFE0A178FFDE9F77FFDD9F
        76FFDC9D74FFD99B72FFD89971FFD69970FFD5AB8EFFAD6333FFBB6A36FFF2D5
        C2FFE3A37AFFE3A37AFFE2A37BFFE2A37BFFE2A47BFFE1A279FFE0A178FFDEA0
        77FFDE9E75FFDC9D74FFDA9B73FFD99B73FFDAB095FFAF6433FFBB6A36FFF2D8
        C5FFE3A47BFFE3A37AFFE3A47AFFE2A47BFFE2A37BFFE1A37BFFE1A279FFDFA0
        77FFDE9F76FFDD9E74FFDB9C72FFDC9D74FFDDB59AFFB16534FFBB6B36FFF4D9
        C7FFE6A67DFFC88C64FFC98D65FFC98E67FFCB926CFFCB926DFFCA9069FFC88C
        65FFC88C64FFC88C64FFC88C64FFDA9C74FFE1BA9FFFB36634FFBA6B36FEF4DC
        C9FFE7A77DFFF9ECE1FFF9ECE1FFF9EDE3FFFCF4EEFFFDFAF7FFFDF7F3FFFAED
        E5FFF7E7DBFFF7E5D9FFF6E5D8FFDEA077FFE4BEA4FFB46734FFB86935FAF5DD
        CCFFE7A87EFFFAF0E8FFFAF0E8FFC98D66FFFAF0E9FFFDF8F3FFFEFAF8FFFCF4
        EFFFF9E9DFFFF7E7DBFFF7E5D9FFE0A278FFE7C2A9FFB66835FFB16533F0F6DF
        D0FFE8A87EFFFCF6F1FFFCF6F1FFC88C64FFFAF1E9FFFBF4EEFFFDFAF7FFFDF9
        F6FFFAF0E8FFF8E8DDFFF7E6DBFFE1A37AFFEFD5C3FFB66935FE9F5B2ED8F6DF
        D1FFE9AA80FFFEFAF6FFFDFAF6FFC88C64FFFBF3EEFFFBF1EAFFFCF6F2FFFEFB
        F8FFFCF6F1FFF9ECE2FFF8E7DBFFEED0BAFFECD0BDFFB66D3CF87241219BF6E0
        D1FFF7E0D1FFFEFBF8FFFEFBF7FFFDF9F6FFFCF5F0FFFAF0EAFFFBF2EDFFFDF9
        F6FFFDFAF7FFFBF1EBFFF7E8DEFEE8CDBAFBBA7F57EC46291563532F18716A3C
        1E9096562BCCAF6432EEB86935FABA6B36FEBB6B36FFBB6A36FFBB6A36FFBC6C
        39FFBD6E3BFFBB6D3AFFAF6434EF955931CB3C23115400000000}
      TabOrder = 0
      OnClick = btn_saveClick
    end
    object grd3: TcxGrid
      Left = 10
      Top = 59
      Width = 250
      Height = 200
      TabOrder = 1
      object v3: TcxGridDBTableView
        OnKeyUp = v3KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCanFocusRecord = v3CanFocusRecord
        OnCellClick = v3CellClick
        OnFocusedRecordChanged = v3FocusedRecordChanged
        DataController.DataSource = src1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Appending = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object clv3CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 104
        end
        object clv3SRV: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1081
          DataBinding.FieldName = 'SRV'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'Srv'
          Properties.ListColumns = <
            item
              FieldName = 'Srv'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src2
          Width = 87
        end
        object clv3COLUMNS: TcxGridDBColumn
          DataBinding.FieldName = 'COLUMNS'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3SCRIPT: TcxGridDBColumn
          DataBinding.FieldName = 'SCRIPT'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object grp_root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object Itm_rootItem1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_root
      Control = btn_save
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object Itm_grd3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1086#1090#1095#1077#1090#1086#1074
      CaptionOptions.Layout = clTop
      Parent = grp_root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object spl1: TcxSplitter
    Left = 265
    Top = 24
    Width = 6
    Height = 688
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = lcntr_root
  end
  object lcntr_right: TdxLayoutControl
    Left = 271
    Top = 24
    Width = 766
    Height = 688
    Align = alClient
    TabOrder = 2
    LayoutLookAndFeel = LCxSkin1
    ExplicitWidth = 470
    object grd1: TcxGrid
      Left = 10
      Top = 28
      Width = 250
      Height = 103
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnSorting = False
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.GroupByBox = False
        Styles.Selection = styl_select1
        OnColumnHeaderClick = vb1ColumnHeaderClick
        OnColumnPosChanged = vb1ColumnPosChanged
        OnColumnSizeChanged = vb1ColumnSizeChanged
        Bands = <
          item
          end>
        OnBandPosChanged = vb1BandPosChanged
        OnBandSizeChanged = vb1BandSizeChanged
      end
      object l1: TcxGridLevel
        GridView = vb1
      end
    end
    object txtCapt: TcxTextEdit
      Left = 20
      Top = 220
      Style.HotTrack = False
      TabOrder = 2
      Text = #1053#1086#1074#1072#1103' '#1075#1088#1091#1087#1087#1072
      Width = 121
    end
    object btn_BandAdd: TcxButton
      Left = 20
      Top = 247
      Width = 177
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      TabOrder = 3
      OnClick = btn_BandAddClick
    end
    object txt_FieldCapt: TcxTextEdit
      Left = 20
      Top = 416
      Style.HotTrack = False
      TabOrder = 6
      Text = #1053#1086#1074#1086#1077' '#1087#1086#1083#1077
      Width = 121
    end
    object btn_FieldAdd: TcxButton
      Left = 20
      Top = 533
      Width = 176
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1083#1077
      TabOrder = 9
      OnClick = btn_FieldAddClick
    end
    object grd2: TcxVerticalGrid
      Left = 223
      Top = 202
      Width = 150
      Height = 200
      TabOrder = 11
      OnEdited = grd2Edited
      Version = 1
      object row1: TcxEditorRow
        Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
    end
    object btn_BandDelete: TcxButton
      Left = 20
      Top = 278
      Width = 177
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      Enabled = False
      TabOrder = 4
      OnClick = btn_BandDeleteClick
    end
    object btn_FieldDelete: TcxButton
      Left = 20
      Top = 564
      Width = 176
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1083#1077
      Enabled = False
      TabOrder = 10
      OnClick = btn_FieldDeleteClick
    end
    object btn_SaveXml: TcxButton
      Left = 10000
      Top = 10000
      Width = 139
      Height = 25
      Caption = 'btn_SaveXml'
      TabOrder = 13
      Visible = False
      OnClick = btn_SaveXmlClick
    end
    object btn_LoadXml: TcxButton
      Left = 10000
      Top = 10000
      Width = 139
      Height = 25
      Caption = 'btn_LoadXml'
      TabOrder = 14
      Visible = False
      OnClick = btn_LoadXmlClick
    end
    object mmo1: TcxMemo
      Left = 10
      Top = 643
      Style.HotTrack = False
      TabOrder = 12
      Height = 89
      Width = 185
    end
    object cbb_FType: TcxComboBox
      Left = 20
      Top = 461
      Properties.Items.Strings = (
        #1058#1077#1082#1089#1090
        #1063#1080#1089#1083#1086)
      Properties.OnChange = cbb_FTypePropertiesChange
      Style.HotTrack = False
      TabOrder = 7
      Text = #1058#1077#1082#1089#1090
      Width = 121
    end
    object msedt_format: TcxMaskEdit
      Left = 20
      Top = 506
      Style.HotTrack = False
      TabOrder = 8
      Text = ',0.00'
      Width = 121
    end
    object txt_FieldName: TcxMaskEdit
      Left = 20
      Top = 371
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '[\d\_a-zA-Z]+'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 5
      Text = 'Field'
      Width = 121
    end
    object btn_clearGrid: TcxButton
      Left = 10
      Top = 140
      Width = 75
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077
      TabOrder = 1
      OnClick = btn_clearGridClick
    end
    object grp_right: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object Itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = #1042#1080#1076' '#1086#1090#1095#1077#1090#1072
      CaptionOptions.Layout = clTop
      Parent = grp_right
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 110
      SizeOptions.Width = 464
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object splt2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      LayoutLookAndFeel = LCxSkin2
      Parent = grp_right
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 8
      Index = 1
    end
    object Itm_ClearGrid: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_right
      Control = btn_clearGrid
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grp_rightGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_right
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object grp_rightGroup4: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_rightGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object grp_Band: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = #1043#1088#1091#1087#1087#1072
      Parent = grp_rightGroup4
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 136
      SizeOptions.Width = 197
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object Itm_txtCapt: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1047#1072#1075#1086#1083#1086#1074#1086#1082
      CaptionOptions.Layout = clTop
      Parent = grp_Band
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 158
      Control = txtCapt
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object ItmbtnBandAdd: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_Band
      Control = btn_BandAdd
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object Itm_BandDelete: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_Band
      Control = btn_BandDelete
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object grp_Field: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = #1055#1086#1083#1077
      Parent = grp_rightGroup4
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 244
      SizeOptions.Width = 196
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 1
    end
    object Itm_FieldName: TdxLayoutItem
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = grp_Field
      Control = txt_FieldName
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object Itm_FieldCapt: TdxLayoutItem
      CaptionOptions.Text = #1047#1072#1075#1086#1083#1086#1074#1086#1082
      CaptionOptions.Layout = clTop
      Parent = grp_Field
      Control = txt_FieldCapt
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object Itm_Ftype: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087' '#1087#1086#1083#1103
      CaptionOptions.Layout = clTop
      Parent = grp_Field
      Control = cbb_FType
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object Itm_msedtforma: TdxLayoutItem
      CaptionOptions.Text = #1060#1086#1088#1084#1072#1090' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103
      CaptionOptions.Layout = clTop
      Parent = grp_Field
      Visible = False
      Control = msedt_format
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object Itm_FieldAdd: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_Field
      Control = btn_FieldAdd
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object Itm_FieldDelete: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grp_Field
      Control = btn_FieldDelete
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 5
    end
    object grp_Params: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1055#1072#1088#1072#1084#1077#1090#1088#1099
      Parent = grp_rightGroup3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 395
      SizeOptions.Width = 213
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 1
    end
    object Itm_grd2: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'cxVerticalGrid1'
      CaptionOptions.Visible = False
      Parent = grp_Params
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object splt1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      LayoutLookAndFeel = LCxSkin2
      Parent = grp_right
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 11
      Index = 4
    end
    object Itm_mmo: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1057#1082#1088#1080#1087#1090
      CaptionOptions.Layout = clTop
      Parent = grp_right
      Control = mmo1
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object grp_Xml: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object Itm_SaveXml: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_Xml
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 139
      Control = btn_SaveXml
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object Itm_LoadXml: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_Xml
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 139
      Control = btn_LoadXml
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object Ribbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1037
    Height = 24
    BarManager = MainForm.bm1
    ColorSchemeName = 'Blue'
    ShowTabGroups = False
    ShowTabHeaders = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 3
    TabStop = False
    ExplicitWidth = 741
    object Ribbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Ribbon1Tab1'
      Groups = <>
      Index = 0
    end
  end
  object skin: TdxSkinController
    Kind = lfStandard
    SkinName = 'Office2010Blue'
    Left = 32
  end
  object LSkin1: TdxLayoutLookAndFeelList
    object LCxSkin1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
    object LCxSkin2: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'McSkin'
    end
  end
  object strep1: TcxStyleRepository
    Left = 64
    PixelsPerInch = 96
    object styl_select1: TcxStyle
      AssignedValues = [svBitmap, svColor, svTextColor]
      Color = clRed
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDAB69FD0A285C0835EBA7953B67751B47651B1
        7450AD724FAA714FA86F4EA76E4DA66E4DA87556BA8F76FFFFFFFFFFFFC8906B
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFAC7859FFFFFFFFFFFFC28258FFFFFFAF672CAD642BAD642BFFFFFFF0
        E5DEF0E5DEF0E5DEF0E5DEF0E5DEF0E5DEFFFFFFA76F4EFFFFFFFFFFFFC4865A
        FFFFFFAF672CCD9F74AD642BFFFFFFF0E5DEF6EFEBF6EFEBF6EFEBF6EFEBF0E5
        DEFFFFFFA8714FFFFFFFFFFFFFC5865BFFFFFFAF672CCDA075AD642BFFFFFFF0
        E5DEF6EFEBF5ECE6F5ECE6F6EFEBF0E5DEFFFFFFAC7250FFFFFFFFFFFFC7885A
        FFFFFFB46E33D0A57EB26C2EFFFFFFF0E5DEF6EFEBF5ECE6F5ECE6F6EFEBF0E5
        DEFFFFFFB27651FFFFFFFFFFFFC88A5BFFFFFFB77640D1A683B67338FFFFFFF0
        E5DEF6EFEBF6EFEBF6EFEBF6EFEBF0E5DEFFFFFFB67853FFFFFFFFFFFFCA8C5C
        FFFFFFBC7F54BA7D4CBA7C4AFFFFFFF0E5DEF0E5DEF0E5DEF0E5DEF0E5DEF0E5
        DEFFFFFFB97C54FFFFFFFFFFFFCB8E5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7E55FFFFFFFFFFFFCD9261
        FFFFFF4A9F504A9F50499E4F499D4D469B4C45994A4397484296464094453F93
        43FFFFFFBE8157FFFFFFFFFFFFCF9768FFFFFF4FA4555FBE6C5FBE6C5FBE6C5F
        BE6C5FBE6C5FBE6C5FBE6C5FBE6C409445FFFFFFC18458FFFFFFFFFFFFD5A377
        FFFFFF55A95B53A95A52A75950A5564EA3544BA051499D4E469B4B4398484196
        46FFFFFFC78F65FFFFFFFFFFFFE1BD9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6AA89FFFFFFFFFFFFE9CFB8
        E3C2A4D7A87FCE935FCD935FCD925FCC905FCD9261CD9363CB9161CE9569D4A8
        83D8AE8BD7AC8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TextColor = clBlue
    end
  end
  object repItem1: TcxEditRepository
    Left = 96
    object curEd1: TcxEditRepositoryCurrencyItem
    end
  end
  object ds_srv: TpFIBDataSet
    SelectSQL.Strings = (
      ' select SRV, NAME from SRVLIST')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 160
    Top = 120
  end
  object src2: TDataSource
    DataSet = ds_srv
    Left = 136
    Top = 120
  end
  object ds_shablon: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PLANREPORT'
      'SET '
      '    NAME = :NAME,'
      '    SRV = :SRV,'
      '    COLUMNS = :COLUMNS,'
      '    SCRIPT = :SCRIPT'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    PLANREPORT'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO PLANREPORT('
      '    CODE,'
      '    NAME,'
      '    SRV,'
      '    COLUMNS,'
      '    SCRIPT'
      ')'
      'VALUES('
      '    null,'
      '    :NAME,'
      '    :SRV,'
      '    :COLUMNS,'
      '    :SCRIPT'
      ')')
    RefreshSQL.Strings = (
      'select p.CODE, p.NAME, p.SRV,s.name srvName, p.COLUMNS, p.SCRIPT'
      'from PLANREPORT p'
      'left outer join srvlist s on p.srv=s.srv'
      ' WHERE '
      '        P.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'select p.CODE, p.NAME, p.SRV,s.name srvName, p.COLUMNS, p.SCRIPT'
      'from PLANREPORT p'
      'left outer join srvlist s on p.srv=s.srv')
    AfterInsert = ds_shablonAfterInsert
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    Left = 136
    Top = 184
    poSupportUnicodeBlobs = True
  end
  object src1: TDataSource
    DataSet = ds_shablon
    Left = 166
    Top = 184
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = lcntr_root
        Properties.Strings = (
          'Width')
      end
      item
        Component = v3
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.GroupByBox')
      end>
    StorageName = 'prop1'
    Left = 240
    Top = 96
  end
end
