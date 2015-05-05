object HouseYearForm: THouseYearForm
  Left = 0
  Top = 0
  Caption = #1064#1082#1072#1083#1072' '#1090#1077#1093#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103
  ClientHeight = 478
  ClientWidth = 690
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
    Width = 690
    Height = 478
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object grd1: TcxGrid
      Left = 277
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 9
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_HouseYear
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1Y: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1083#1077#1090
          DataBinding.FieldName = 'Y'
          Width = 54
        end
        object clv1SR: TcxGridDBColumn
          Caption = '%  '#1089#1072#1085#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'SR'
          Width = 97
        end
        object clv1ER: TcxGridDBColumn
          Caption = '% '#1101#1083#1077#1082#1090#1088#1086#1084#1086#1085#1090#1072#1078#1085#1099#1077' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'ER'
          Width = 106
        end
        object clv1TO: TcxGridDBColumn
          Caption = '% '#1090#1077#1082#1091#1097#1080#1081' '#1088#1077#1084#1086#1085#1090
          DataBinding.FieldName = 'TO'
          Options.Editing = False
          Width = 84
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object ed_Y: TcxSpinEdit
      Left = 22
      Top = 48
      Properties.ImmediatePost = True
      Properties.ValueType = vtInt
      Properties.OnChange = ed_YPropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object clc_SR: TcxCalcEdit
      Left = 22
      Top = 93
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object clc_ER: TcxCalcEdit
      Left = 22
      Top = 138
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object clc_TO: TcxCalcEdit
      Left = 10000
      Top = 10000
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 10
      Visible = False
      Width = 121
    end
    object btn_save: TcxButton
      Left = 22
      Top = 165
      Width = 75
      Height = 25
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = 'btn_save'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000A000000250000003300000033000000330000
        0033000000250000000A00000000000000000000000000000000000000000000
        00000000000000000022001D105C006738C9008C4BFF008B4AFF008B4AFF008C
        4BFF006738C9001D105C0000001E000000000000000000000000000000000000
        00000000001E005E33BB009050FF01A169FF00AA76FF00AB77FF00AB77FF00AA
        76FF01A169FF009050FF00532DAA0000001E0000000000000000000000000000
        000A00532DAA009152FF02AC77FF00C38CFF00D699FF18DEA8FF18DEA8FF00D6
        99FF00C38CFF01AB76FF009253FF00532DAA0000000A0000000000000000001C
        1051009051FF0FB483FF02D299FF00D69BFF00D193FFFFFFFFFFFFFFFFFF00D1
        93FF00D69BFF00D198FF01AB76FF009050FF001D105100000000000000000067
        36C916AB78FF11C997FF00D49AFF00D297FF00CD8EFFFFFFFFFFFFFFFFFF00CD
        8EFF00D297FF00D59BFF00C18CFF01A169FF006838C90000000000000000008A
        48FF38C49CFF00D198FF00CD92FF00CB8EFF00C787FFFFFFFFFFFFFFFFFF00C7
        87FF00CB8EFF00CE93FF00D09AFF00AB76FF008C4BFF00000000000000000089
        46FF51D2AFFF12D4A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00CF97FF00AD78FF008B4AFF00000000000000000088
        45FF66DDBEFF10D0A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00CD97FF00AD78FF008B4AFF00000000000000000088
        46FF76E0C5FF00CA98FF00C590FF00C48EFF00C187FFFFFFFFFFFFFFFFFF00C1
        87FF00C48EFF00C793FF00CB99FF00AB76FF008C4BFF00000000000000000065
        34BE59C9A4FF49DEBCFF00C794FF00C794FF00C38EFFFFFFFFFFFFFFFFFF00C3
        8EFF00C896FF00CB9AFF06C190FF00A168FF006838BF0000000000000000001C
        0F330A9458FFADF8E9FF18D0A7FF00C494FF00C290FFFFFFFFFFFFFFFFFF00C3
        91FF00C799FF05C89BFF18B787FF009050FF001C0F3300000000000000000000
        0000005C30AA199C63FFBCFFF7FF5DE4C9FF00C397FF00BF90FF00C091FF00C4
        98FF22CAA2FF31C297FF039355FF00522C950000000000000000000000000000
        00000000000000512A950E9659FF74D5B6FF9FF3E0FF92EFDAFF79E5CAFF5DD6
        B5FF2EB586FF039152FF005D33AA000000000000000000000000000000000000
        00000000000000000000001C0F33006433BB008744FF008743FF008744FF0089
        46FF006636BB001C0F3300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btn_saveClick
    end
    object btn_edit: TcxButton
      Left = 103
      Top = 165
      Width = 75
      Height = 25
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = 'btn_edit'
      OptionsImage.Glyph.Data = {
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
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btn_editClick
    end
    object btn_del: TcxButton
      Left = 184
      Top = 165
      Width = 75
      Height = 25
      Hint = #1059#1076#1072#1083#1080#1090#1080#1100' '#1079#1072#1087#1080#1089#1100
      Caption = 'btn_del'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000031B300004223C0001070C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000001080F00095A9F000F8DF9000F90FF000F90FF000F90FF000C
        73CC00031E360000000000000000000000000000000000000000000000000000
        000000032039011089ED081D9FFF0522A9FF0A2FB7FF0B32B8FF082CB5FF0825
        A7FF051898FD0008487E00000000000000000000000000000000000000000001
        0A12010F87EB0A20A5FF010D9DFF525ABCFF0A16A0FF0936C5FF1F29A9FF1A26
        B4FF020C8FFF041698FF00042A4B000000000000000000000000000000000008
        4C8704179BFF0A2FB8FF7186D2FFFFFFFFFFCFD4EEFF2731ACFFE3E8F8FFDAE1
        F6FF2048C8FF051C9FFF000D7AD800000000000000000000000000000000000D
        7CDB0824ADFF0430BFFF3452C2FFF3F5FBFFFFFFFFFFFDFDFEFFFFFFFFFFCBD3
        F0FF143FC6FF0525ACFF000F90FF0002182A000000000000000000000203000F
        8EFC082BB7FF0938C7FF042FC0FF414AB6FFFCFDFEFFFFFFFFFFF9FAFDFF1620
        A5FF0834C2FF0724A6FF000F90FF00052F54000000000000000000000000000E
        8BF6092AB4FF0639CDFF1F29A9FFE1E3F6FFFFFFFFFFF9FAFEFFFFFFFFFFC1C4
        EBFF0A16A0FF0521A5FF000F90FF00042A4B000000000000000000000000000B
        6EC30921A5FF0F44D4FF5679DCFFFDFDFEFFD2D9F3FF4E69CFFFEBEEF9FFFAFB
        FEFF4668D4FF0925AAFF000F90FF0002111E0000000000000000000000000006
        3A66021294FF2045C5FF154CD8FF4C72DDFF0F42D0FF0035CBFF254DCBFF5071
        D6FF1740C4FF0D23A4FF000B67B7000000000000000000000000000000000000
        0306000C72C9051698FF2B4BC5FF2657D9FF174ED8FF134BD5FF1D4FD3FF2E56
        CCFF162CAAFF01108EF70002182A000000000000000000000000000000000000
        000000020F1B000C72C9021294FF1428A6FF2844BBFF2D4BC0FF223BB4FF091B
        9CFF010F88EE0004274500000000000000000000000000000000000000000000
        0000000000000000030600063D6C000C73CC000F90FF000F90FF000E82E70008
        519000010E180000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btn_delClick
    end
    object ced1: TcxCalcEdit
      Left = 22
      Top = 244
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object ced2: TcxCalcEdit
      Left = 22
      Top = 289
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object btn1: TcxButton
      Left = 22
      Top = 316
      Width = 75
      Height = 25
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1088#1086#1094#1077#1085#1090#1099
      TabOrder = 8
      OnClick = btn1Click
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object grlc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object grp_set: TdxLayoutGroup
      AlignVert = avClient
      Parent = grlc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 171
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object itm_Y: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086' '#1083#1077#1090' '#1074' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080
      CaptionOptions.Layout = clTop
      Parent = grp_set
      Control = ed_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_SR: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1086#1094#1077#1085#1090' '#1085#1072' '#1089#1072#1085#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077' '#1088#1072#1073#1086#1090#1099'.'
      CaptionOptions.Layout = clTop
      Parent = grp_set
      Control = clc_SR
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_ER: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1086#1094#1077#1085#1090' '#1085#1072' '#1101#1083#1077#1082#1090#1088#1086#1084#1086#1085#1090#1072#1078#1085#1099#1077' '#1088#1072#1073#1086#1090#1099'.'
      CaptionOptions.Layout = clTop
      Parent = grp_set
      Control = clc_ER
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp_set
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object itm_save: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group1
      Control = btn_save
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_edit: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group1
      Control = btn_edit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_del: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grplc1Group1
      Control = btn_del
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grlc1Group1: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1088#1086#1094#1077#1085#1090#1099
      Parent = grlc1Group2
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 372
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = '+-%  '#1089#1072#1085#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077' '#1088#1072#1073#1086#1090#1099
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = ced1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = '+-% '#1101#1083#1077#1082#1090#1088#1086#1084#1086#1085#1090#1072#1078#1085#1099#1077' '#1088#1072#1073#1086#1090#1099
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = ced2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Parent = grlc1Group1
      Control = btn1
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
      Index = 1
    end
    object itm_TO: TdxLayoutItem
      CaptionOptions.Text = #1055#1088#1086#1094#1077#1085#1090' '#1085#1072' '#1090#1077#1093#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077' '#1076#1086#1084#1072'.'
      CaptionOptions.Layout = clTop
      Control = clc_TO
      ControlOptions.ShowBorder = False
      Index = -1
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 648
    Top = 16
    object laf1: TdxLayoutCxLookAndFeel
    end
  end
  object ds_HouseYear: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSEYEAR'
      'SET '
      '    Y = :Y,'
      '    SR = :SR,'
      '    ER = :ER,'
      '    "TO" = :"TO"'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSEYEAR'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSEYEAR('
      '    CODE,'
      '    Y,'
      '    SR,'
      '    ER,'
      '    "TO"'
      ')'
      'VALUES('
      '    :CODE,'
      '    :Y,'
      '    :SR,'
      '    :ER,'
      '    :"TO"'
      ')')
    RefreshSQL.Strings = (
      'SELECT CODE, '
      '       Y, '
      '       SR, '
      '       ER, '
      '       "TO"'
      'FROM HOUSEYEAR'
      ''
      ' WHERE '
      '        HOUSEYEAR.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       Y, '
      '       SR, '
      '       ER, '
      '       100-(SR+ER)"TO"'
      'FROM HOUSEYEAR'
      'ORDER BY Y')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 592
    Top = 192
  end
  object src_HouseYear: TDataSource
    DataSet = ds_HouseYear
    Left = 621
    Top = 192
  end
end
