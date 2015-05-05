object RepGraphForm: TRepGraphForm
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1086#1089#1084#1086#1090#1088#1091' '#1074#1077#1085#1090#1080#1083#1103#1094#1080#1086#1085#1085#1099#1093' '#1082#1072#1085#1072#1083#1086#1074' '
  ClientHeight = 504
  ClientWidth = 826
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
    Width = 826
    Height = 504
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object grd1: TcxGrid
      Left = 10
      Top = 41
      Width = 250
      Height = 200
      TabOrder = 6
      LockedStateImageOptions.Effect = lsieLight
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_md
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1STNAME
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1M1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1M2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1M3
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1M4
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1M5
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1M6
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1M7
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1M8
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1M9
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1M10
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1M11
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1M12
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv1SUM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clvAvg
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object clv1STNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STNAME'
          Width = 209
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 51
        end
        object clv1M1: TcxGridDBColumn
          Caption = #1071#1085#1074#1072#1088#1100
          DataBinding.FieldName = 'M1'
          Width = 77
        end
        object clv1M2: TcxGridDBColumn
          Caption = #1060#1077#1074#1088#1072#1083#1100
          DataBinding.FieldName = 'M2'
          Width = 69
        end
        object clv1M3: TcxGridDBColumn
          Caption = #1052#1072#1088#1090
          DataBinding.FieldName = 'M3'
          Width = 69
        end
        object clv1M4: TcxGridDBColumn
          Caption = #1040#1087#1088#1077#1083#1100
          DataBinding.FieldName = 'M4'
          Width = 76
        end
        object clv1M5: TcxGridDBColumn
          Caption = #1052#1072#1081
          DataBinding.FieldName = 'M5'
          Width = 72
        end
        object clv1M6: TcxGridDBColumn
          Caption = #1048#1102#1085#1100
          DataBinding.FieldName = 'M6'
          Width = 74
        end
        object clv1M7: TcxGridDBColumn
          Caption = #1048#1102#1083#1100
          DataBinding.FieldName = 'M7'
        end
        object clv1M8: TcxGridDBColumn
          Caption = #1040#1074#1075#1091#1089#1090
          DataBinding.FieldName = 'M8'
        end
        object clv1M9: TcxGridDBColumn
          Caption = #1057#1077#1085#1090#1103#1073#1088#1100
          DataBinding.FieldName = 'M9'
        end
        object clv1M10: TcxGridDBColumn
          Caption = #1054#1082#1090#1103#1073#1088#1100
          DataBinding.FieldName = 'M10'
          Width = 71
        end
        object clv1M11: TcxGridDBColumn
          Caption = #1053#1086#1103#1073#1088#1100
          DataBinding.FieldName = 'M11'
          Width = 72
        end
        object clv1M12: TcxGridDBColumn
          Caption = #1044#1077#1082#1072#1073#1100
          DataBinding.FieldName = 'M12'
          Width = 76
        end
        object clv1SUM: TcxGridDBColumn
          Caption = #1048#1090#1086#1075#1086
          DataBinding.FieldName = 'SUM'
          Width = 71
        end
        object clvAvg: TcxGridDBColumn
          Caption = #1055#1083#1072#1085' '#1084#1077#1089#1103#1094
          DataBinding.FieldName = 'AVG'
          Width = 71
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object cbb_Y: TcxComboBox
      Left = 184
      Top = 10
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2020')
      Style.HotTrack = False
      TabOrder = 1
      Text = '2010'
      Width = 121
    end
    object cbb_RType: TcxComboBox
      Left = 33
      Top = 10
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1087#1083#1072#1085
        #1092#1072#1082#1090)
      Style.HotTrack = False
      TabOrder = 0
      Text = #1087#1083#1072#1085
      Width = 121
    end
    object sp_Tarif: TcxSpinEdit
      Left = 348
      Top = 10
      Properties.ValueType = vtFloat
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object btn_Load: TcxButton
      Left = 475
      Top = 10
      Width = 102
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 3
      OnClick = btn_LoadClick
    end
    object btn_Excel: TcxButton
      Left = 583
      Top = 10
      Width = 50
      Height = 25
      Caption = 'Excel'
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      TabOrder = 4
      OnClick = btn_ExcelClick
    end
    object btn_MakeYearPlan: TcxButton
      Left = 639
      Top = 10
      Width = 50
      Height = 25
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1075#1086#1076#1086#1074#1086#1081' '#1087#1083#1072#1085' '#1087#1086' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1102' '#1074#1077#1085#1090#1082#1072#1085#1072#1083#1086#1074
      OptionsImage.Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000D0BAACFF694731FF694731FF694731FF694731FF694731FF694731FF6947
        31FF694731FF694731FF694731FF694731FF694731FF694731FF694731FF6947
        31FF694731FF694731FF694731FF694731FF694731FF00000000000000000000
        0000D0BAACFFFAF8F7FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A2
        93FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A2
        93FFB7A293FFB7A293FFB7A293FFB7A293FF694731FF00000000000000000000
        0000D0BAACFFFDFBFBFFFAF8F7FFF8F4F3FF983000FFF3EEEBFFF1EAE7FFEFE7
        E3FFEDE4DFFFEBE0DBFFE8DDD7FFE6D9D3FFE4D6CFFFE1D3CBFFDFCFC7FFDDCC
        C3FFDBC9BFFFDBC9BFFFDBC9BFFFB7A293FF694731FF00000000000000000000
        0000D0BAACFFFFFFFFFFB7A293FFB7A293FF983000FF983000FFB7A293FFB7A2
        93FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A2
        93FFB7A293FFB7A293FFDBC9BFFFB7A293FF694731FF00000000000000000000
        0000D0BAACFFFFFFFFFFB7A293FFFFFFFFFF983000FF983000FF983000FFFFFF
        FFFFB7A293FFFFFFFFFFFFFFFFFFB7A293FFFFFFFFFFFFFFFFFFB7A293FFFFFF
        FFFFFFFFFFFFB7A293FFDBC9BFFFB7A293FF694731FF00000000000000000000
        0000D0BAACFF983000FF983000FF983000FF983000FFC5774DFF983000FF9830
        00FFB7A293FFFFFFFFFFFFFFFFFFB7A293FFFFFFFFFFFFFFFFFFB7A293FFFFFF
        FFFFFFFFFFFFB7A293FFDDCCC3FFB7A293FF694731FF00000000000000000000
        0000D0BAACFF983000FFE4A582FFD38D66FFD08860FFCA8056FFC5774DFF9830
        00FF983000FFB7A293FFB7A293FFC86000FFC86000FFC86000FFC86000FFB7A2
        93FFB7A293FFB7A293FFDFCFC7FFB7A293FF694731FF00000000000000000000
        0000D0BAACFF983000FFE4A582FFD7936CFFD38D66FFD08860FFCD845BFFC87C
        52FF983000FF983000FFFFFFFFFFC86000FFF8B048FFF89800FFC86000FFFFFF
        FFFFFFFFFFFFB7A293FFE1D3CBFFB7A293FF694731FF00000000000000000000
        0000D0BAACFF983000FFE4A582FFE4A582FFE4A582FFD59069FFD18A63FF9830
        00FF983000FFFFFFFFFFFFFFFFFFC86000FFF8BC6CFFF8B048FFC86000FFFFFF
        FFFFFFFFFFFFB7A293FFE5D8D1FFB7A293FF694731FF00000000000000000000
        0000D0BAACFF983000FF983000FF983000FF983000FFE4A582FF983000FF9830
        00FFB7A293FFB7A293FFB7A293FFC86000FFC86000FFC86000FFC86000FFB7A2
        93FFB7A293FFB7A293FFE7DBD5FFB7A293FF694731FF00000000000000000000
        0000D0BAACFFFFFFFFFFFFFFFFFFFFFFFFFF983000FF983000FF983000FFFFFF
        FFFFB7A293FFFFFFFFFFFFFFFFFFB7A293FFFFFFFFFFFFFFFFFFB7A293FFFFFF
        FFFFFFFFFFFFB7A293FFEADFD9FFB7A293FF694731FF00000000000000000000
        0000D0BAACFFFFFFFFFFFFFFFFFFFFFFFFFF983000FF983000FFFFFFFFFFFFFF
        FFFFB7A293FFFFFFFFFFFFFFFFFFB7A293FFFFFFFFFFFFFFFFFFB7A293FFFFFF
        FFFFFFFFFFFFB7A293FFECE2DDFFB7A293FF694731FF00000000000000000000
        0000D0BAACFFFFFFFFFFFFFFFFFFFFFFFFFF983000FFB7A293FFB7A293FFB7A2
        93FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A2
        93FFB7A293FFB7A293FFEEE5E1FFB7A293FF694731FF00000000000000000000
        0000D0BAACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFCFAF9FFF9F6F5FFF7F3
        F1FFF5EFEDFFF2ECE9FFF0E9E5FFB7A293FF694731FF00000000000000000000
        0000CD7621FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FFCD76
        21FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FFCD76
        21FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FF00000000000000000000
        0000CD7621FFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFBC39FFFFABB
        95FFF9B38AFFF8AB80FFF8A375FFF79B6BFFF79361FFF78C58FFF6844EFFF57D
        44FFF5763BFFF46E31FFF46B2DFFF46B2DFFCD7621FF00000000000000000000
        0000CD7621FFFBC39FFFDDA687FF694731FFDDA687FFFBC39FFFFBC39FFFFBC3
        9FFFFABB95FFF9B38AFFF8AB80FFF8A375FFF79B6BFFF79361FFF78C58FFDA7D
        52FF694731FFD97446FFF46E31FFF46B2DFFCD7621FF00000000000000000000
        0000CD7621FFFBC39FFFA36F5AFFA36F5AFF694731FFFBC39FFFFBC39FFFFBC3
        9FFFFBC39FFFFABB95FFF9B38AFFF8AB80FFF8A375FFF79B6BFFF79361FFA36F
        5AFFA36F5AFF694731FFF5763BFFF46E31FFCD7621FF00000000000000000000
        0000CD7621FFCD7621FFA36F5AFFC89898FF694731FFCD7621FFCD7621FFCD76
        21FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FFCD7621FFA36F
        5AFFC89898FF694731FFCD7621FFCD7621FFCD7621FF00000000000000000000
        00000000000000000000A36F5AFFFFFFFFFF694731FF00000000000000000000
        000000000000000000000000000000000000000000000000000000000000A36F
        5AFFFFFFFFFF694731FF00000000000000000000000000000000000000000000
        0000000000000000000038261F57A36F5AFF38261F5700000000000000000000
        0000000000000000000000000000000000000000000000000000000000003826
        1F57A36F5AFF38261F5700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btn_MakeYearPlanClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lGrplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object lGrplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object litm_lc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = lGrplc1Group2
      Control = cbb_Y
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litm_lc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087
      Parent = lGrplc1Group2
      Control = cbb_RType
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item13: TdxLayoutItem
      CaptionOptions.Text = #1058#1072#1088#1080#1092
      Parent = lGrplc1Group2
      Control = sp_Tarif
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litm_lc1Item14: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = btn_Load
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litm_lc1Item15: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = btn_Excel
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = btn_MakeYearPlan
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_RType
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_Y
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = sp_Tarif
        Properties.Strings = (
          'Value')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object ds_Rep: TpFIBDataSet
    SelectSQL.Strings = (
      'select STREET, STNAME, HOUSE, NOMER,'
      '       sum(M1) m1, sum(M2) m2, sum(M3) m3, sum(M4)m4,'
      '       sum(M5)m5, sum(M6)m6, sum(M7)m7, sum(M8)m8,'
      '       sum(M9)m9, sum(M10)m10, sum(M11)m11, sum(M12)m12'
      'from REP_GRAPH(:Y, :TARIF, :RTYPE)'
      'group by STREET, STNAME, HOUSE, NOMER')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 512
    Top = 176
  end
  object md: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 664
    Top = 272
  end
  object src_md: TDataSource
    DataSet = md
    Left = 696
    Top = 272
  end
  object rep1: TcxEditRepository
    Left = 256
    Top = 288
    object CalcItem: TcxEditRepositoryCalcItem
    end
    object CurrencyItem: TcxEditRepositoryCurrencyItem
      Properties.DisplayFormat = ',0.00;-,0.00'
    end
  end
end
