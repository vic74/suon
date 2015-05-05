object CashFlowsForm: TCashFlowsForm
  Left = 0
  Top = 0
  Caption = #1044#1074#1080#1078#1077#1085#1080#1077' '#1076#1077#1085#1077#1078#1085#1099#1093' '#1089#1088#1077#1076#1089#1090#1074
  ClientHeight = 479
  ClientWidth = 916
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
    Width = 916
    Height = 479
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 10
      Top = 68
      Width = 250
      Height = 200
      TabOrder = 12
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_HMOVEIMMKD
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        Bands = <
          item
            Width = 932
          end>
        object clvb1HOUSE: TcxGridDBBandedColumn
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
          Options.CellMerging = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 273
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1NOMER: TcxGridDBBandedColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.CellMerging = True
          SortIndex = 1
          SortOrder = soAscending
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1ARENDATOR: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ARENDATOR'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1ARNAME: TcxGridDBBandedColumn
          Caption = #1040#1088#1077#1085#1076#1072#1090#1086#1088
          DataBinding.FieldName = 'ARNAME'
          Options.CellMerging = True
          Width = 159
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1DTYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DTYPE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1DTNAME: TcxGridDBBandedColumn
          Caption = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'DTNAME'
          Width = 131
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1SALDO: TcxGridDBBandedColumn
          Caption = #1053#1072#1095'.'#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 92
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clvb1PSUM: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 82
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clvb1RSUM: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1090#1077#1078#1080
          DataBinding.FieldName = 'RSUM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 68
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object clvb1SALDO_END: TcxGridDBBandedColumn
          Caption = #1050#1086#1085'. '#1086#1090#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO_END'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 77
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
      end
      object l1: TcxGridLevel
        GridView = vb1
      end
    end
    object cbb_m1: TcxComboBox
      Left = 64
      Top = 10
      Properties.Items.Strings = (
        ''
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
      TabOrder = 0
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object msk_y1: TcxMaskEdit
      Left = 166
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 1
      Text = '2011'
      Width = 49
    end
    object cbb_m2: TcxComboBox
      Left = 240
      Top = 10
      Properties.Items.Strings = (
        ''
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
      Width = 85
    end
    object msk_y2: TcxMaskEdit
      Left = 331
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 3
      Text = '2011'
      Width = 49
    end
    object btn_exec: TcxButton
      Left = 730
      Top = 10
      Width = 106
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
      OnClick = btn_execClick
    end
    object cbb_agroup: TcxLookupComboBox
      Left = 426
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
          FieldName = 'NAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_AGROUP
      Style.HotTrack = False
      TabOrder = 4
      Width = 145
    end
    object cbb_street: TcxLookupComboBox
      Left = 64
      Top = 41
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
      Properties.ListSource = src_street
      Properties.OnEditValueChanged = cbb_streetPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 9
      Width = 145
    end
    object cbb_house: TcxLookupComboBox
      Left = 321
      Top = 41
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
          FieldName = 'NOMER'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_house
      Style.HotTrack = False
      TabOrder = 10
      Width = 144
    end
    object btn_shClear: TcxButton
      Left = 398
      Top = 41
      Width = 20
      Height = 20
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1103' '#1074#1074#1086#1076#1072
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1103' '#1074#1074#1086#1076#1072
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000373746468B8BDBF5111142F5000000460000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003636
        4848B9B9F7F7DADAFFFF4D4DD2FF000037F70000004800000000000000000000
        000000000000000000000000000000000000000000000000000036364848BABA
        F7F7D1D1FFFF7D7DE8FF0C0CC7FF0000B9FF00003EF700000048000000000000
        0000000000000000000000000000000000000000000000000000BFBFFFFFCECE
        FFFF7E7EEAFF0000BDFF0000BFFF0000C6FF0000B8FF00003FFD000000440000
        0000000000000000000000000000000000000000000000000000686883837F7F
        E9FF0000BBFF0000BFFF0000C0FF0000C0FF0000C4FF0000B9FF00003AF50000
        0048000000000000000000000000000000000000000000000000000000005959
        7B7E3232D0FF0000BBFF0000C0FF0000C0FF0000C0FF0000C5FF0103BCFF2013
        35F9000000460000000000000000000000000000000000000000000000000000
        000060607E7E3232D0FF0000BCFF0000C0FF0000BFFF0000BCFF9CAAF7FFEFAA
        A0FF3D0000FB0000004400000000000000000000000000000000000000000000
        000000000000646481833838D0FF0000BAFF0000BCFF919BEDFFFFFAE8FFFF92
        93FFE75B5BFF3D0000F500000048000000000000000000000000000000000000
        000000000000000000005D5D7C7C3536D1FF9199EBFFFFF1ECFFFF8483FFFF7B
        7BFFFF8B8BFFE45E5EFF410505FF000000460000000000000000000000000000
        00000000000000000000000000006D6C8181FFD5CCFFFF8584FFFF7B7BFFFF80
        80FFFF8080FFFF8989FFE45E5EFF3B0202F70000004800000000000000000000
        000000000000000000000000000000000000815D5B81FF8E8EFFFF7C7CFFFF80
        80FFFF8080FFFF7F7FFFFF8A8AFFE75E5EFF3E0303F700000048000000000000
        000000000000000000000000000000000000000000007C5E5E7CFF9090FFFF7B
        7BFFFF8080FFFF8080FFFF8080FFFF8A8AFFE35E5EFF470C0CF9000000000000
        000000000000000000000000000000000000000000000000000083636383FF91
        91FFFF7B7BFFFF8080FFFF8080FFFF8080FFFF9090FFAD2525FD000000000000
        0000000000000000000000000000000000000000000000000000000000007E5F
        5F7EFF9191FFFF7B7BFFFF8282FFFF8A8AFFBF4040FF1C0303DB000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00007E5F5F7EFF9090FFFF8585FFC13F3FFF170000D50000001C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000083676783BC5050F5140000D70000001C00000000}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = btn_shClearClick
    end
    object btn_grClear: TcxButton
      Left = 577
      Top = 10
      Width = 20
      Height = 20
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1103' '#1074#1074#1086#1076#1072
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1103' '#1074#1074#1086#1076#1072
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000373746468B8BDBF5111142F5000000460000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003636
        4848B9B9F7F7DADAFFFF4D4DD2FF000037F70000004800000000000000000000
        000000000000000000000000000000000000000000000000000036364848BABA
        F7F7D1D1FFFF7D7DE8FF0C0CC7FF0000B9FF00003EF700000048000000000000
        0000000000000000000000000000000000000000000000000000BFBFFFFFCECE
        FFFF7E7EEAFF0000BDFF0000BFFF0000C6FF0000B8FF00003FFD000000440000
        0000000000000000000000000000000000000000000000000000686883837F7F
        E9FF0000BBFF0000BFFF0000C0FF0000C0FF0000C4FF0000B9FF00003AF50000
        0048000000000000000000000000000000000000000000000000000000005959
        7B7E3232D0FF0000BBFF0000C0FF0000C0FF0000C0FF0000C5FF0103BCFF2013
        35F9000000460000000000000000000000000000000000000000000000000000
        000060607E7E3232D0FF0000BCFF0000C0FF0000BFFF0000BCFF9CAAF7FFEFAA
        A0FF3D0000FB0000004400000000000000000000000000000000000000000000
        000000000000646481833838D0FF0000BAFF0000BCFF919BEDFFFFFAE8FFFF92
        93FFE75B5BFF3D0000F500000048000000000000000000000000000000000000
        000000000000000000005D5D7C7C3536D1FF9199EBFFFFF1ECFFFF8483FFFF7B
        7BFFFF8B8BFFE45E5EFF410505FF000000460000000000000000000000000000
        00000000000000000000000000006D6C8181FFD5CCFFFF8584FFFF7B7BFFFF80
        80FFFF8080FFFF8989FFE45E5EFF3B0202F70000004800000000000000000000
        000000000000000000000000000000000000815D5B81FF8E8EFFFF7C7CFFFF80
        80FFFF8080FFFF7F7FFFFF8A8AFFE75E5EFF3E0303F700000048000000000000
        000000000000000000000000000000000000000000007C5E5E7CFF9090FFFF7B
        7BFFFF8080FFFF8080FFFF8080FFFF8A8AFFE35E5EFF470C0CF9000000000000
        000000000000000000000000000000000000000000000000000083636383FF91
        91FFFF7B7BFFFF8080FFFF8080FFFF8080FFFF9090FFAD2525FD000000000000
        0000000000000000000000000000000000000000000000000000000000007E5F
        5F7EFF9191FFFF7B7BFFFF8282FFFF8A8AFFBF4040FF1C0303DB000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00007E5F5F7EFF9090FFFF8585FFC13F3FFF170000D50000001C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000083676783BC5050F5140000D70000001C00000000}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btn_grClearClick
    end
    object chk_1c: TcxCheckBox
      Left = 603
      Top = 13
      Caption = #1044#1072#1085#1085#1099#1077' 1'#1057
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object btn_Excek: TcxButton
      Left = 842
      Top = 10
      Width = 25
      Height = 25
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      TabOrder = 8
      OnClick = btn_ExcekClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object gr1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 22
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_m1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089' '
      Parent = gr1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 150
      Control = cbb_m1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Y1: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = gr1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 48
      Control = msk_y1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_m2: TdxLayoutItem
      CaptionOptions.Text = ' '#1087#1086
      Parent = gr1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 105
      Control = cbb_m2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_Y2: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = gr1
      Control = msk_y2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_agroup: TdxLayoutItem
      CaptionOptions.Text = #1075#1088#1091#1087#1087#1072
      Parent = gr1
      Control = cbb_agroup
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_grClear: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = gr1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 1
      SizeOptions.Width = 2
      Control = btn_grClear
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itm_1c: TdxLayoutItem
      AlignVert = avCenter
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = gr1
      Control = chk_1c
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = gr1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 106
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object gr2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itm_street: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = gr2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 280
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_house: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      Parent = gr2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 96
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_shClear: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = gr2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 8
      SizeOptions.Width = 11
      Control = btn_shClear
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LItemlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = gr1
      Control = btn_Excek
      ControlOptions.ShowBorder = False
      Index = 8
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 848
    Top = 96
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 820
    Top = 96
  end
  object ds_HMOVEIMMKD: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT hm.DATA,'
      '       hm.HOUSE,h.nomer, s.name SNAME,'
      '       hm.ARENDATOR,a.name ArName,'
      '       hm.DTYPE,dt.name DtName,'
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
      'left outer join dogimmkd_type dt on dt.code=hm.dtype'
      'left outer join arendator a on a.code=hm.arendator'
      'left outer join agroup ag on ag.code=a.agroup')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 304
    Top = 128
  end
  object src_HMOVEIMMKD: TDataSource
    DataSet = m1
    Left = 374
    Top = 88
  end
  object m1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 344
    Top = 88
  end
  object ds_AGROUP: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME from AGROUP')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 424
    Top = 184
  end
  object src_AGROUP: TDataSource
    DataSet = ds_AGROUP
    Left = 452
    Top = 184
  end
  object ds_house: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NOMER,'
      '       Street'
      'FROM HOUSE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 288
    Top = 184
    poApplyRepositary = True
  end
  object src_house: TDataSource
    DataSet = ds_house
    Left = 317
    Top = 184
  end
  object ds_street: TpFIBDataSet
    SelectSQL.Strings = (
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSet_ID = 1
    Left = 288
    Top = 232
    poApplyRepositary = True
  end
  object src_street: TDataSource
    DataSet = ds_street
    Left = 317
    Top = 232
  end
end
