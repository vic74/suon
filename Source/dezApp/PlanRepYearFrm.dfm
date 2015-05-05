object PlanRepYearForm: TPlanRepYearForm
  Left = 0
  Top = 0
  Caption = 'PlanRepYearForm'
  ClientHeight = 550
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 721
    Height = 550
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object edt_year: TcxMaskEdit
      Left = 37
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 0
      Text = '2011'
      Width = 55
    end
    object cbb_street: TcxLookupComboBox
      Left = 137
      Top = 10
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'Code'
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
      Style.Shadow = False
      TabOrder = 1
      Width = 200
    end
    object cbb_House: TcxLookupComboBox
      Left = 368
      Top = 10
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'Code'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          FieldName = 'Nomer'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_House
      EditValue = 0
      Style.HotTrack = False
      TabOrder = 2
      Width = 65
    end
    object btn_exec: TcxButton
      Left = 439
      Top = 10
      Width = 97
      Height = 25
      Caption = #1047#1072#1087#1088#1086#1089
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000A5CBD7FF0E6894FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00009CC4CFFF44BAD7FF006090FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001E282B3B87B2BEFF04C7F6FF006090FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000090BAC6FFCEDFE4FF00C8F8FF006090FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003243486390BAC6FF83DDFBFF00C8F8FF006090FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000405050787B2BEFF93D7ECFF8EE0FBFF00C8F8FF006090FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000445C62879CC4CFFFA4E6FBFF8EE0FBFF00C8F8FF0060
        90FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000E12141BB0D5E0FFBBECFCFFA4E6FBFF8EE0FBFF00C8
        F8FF006090FF0000000000000000000000000000000000000000000000000000
        0000468AA6FF126B96FF006090FF006090FFD2F2FDFFBBECFCFFA4E6FBFF8EE0
        FBFF00C8F8FF006090FF00000000000000000000000000000000000000000000
        0000445C6287ABC8D0FF00C8F8FF00C8F8FF00C8F8FFD2F2FDFFBBECFCFFA4E6
        FBFF8EE0FBFF00C8F8FF006090FF000000000000000000000000000000000000
        0000080A0B0F8DB5C0FFE0EBEEFFFFFFFFFFFFFFFFFFE9F9FEFFD2F2FDFF00C8
        F8FF00C8F8FF00C8F8FF00C8F8FF006090FF0000000000000000000000000000
        0000000000003243486399BCC6FFFEFEFEFFFFFFFFFFFFFFFFFFE9F9FEFF00C8
        F8FF006090FF006090FF006090FF006090FF0000000000000000000000000000
        0000000000000202020399BCC6FFCEDFE4FFFFFFFFFFFFFFFFFFE9F9FEFFBBEC
        FCFF00C8F8FF006090FF00000000000000000000000000000000000000000000
        00000000000000000000202B2E3F8DB5C0FFF8FAFBFFFFFFFFFFFFFFFFFFE9F9
        FEFFBBECFCFF00C8F8FF006090FF000000000000000000000000000000000000
        0000000000000000000000000000ABC8D0FFBCD4DAFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9F9FEFFBBECFCFF00C8F8FF006090FF0000000000000000000000000000
        0000000000000000000000000000121819233685A1FF006890FF006890FF0068
        90FF006090FF006090FF006090FF006090FF0000000000000000}
      TabOrder = 3
      OnClick = btn_execClick
    end
    object grd1: TcxGrid
      Left = 10
      Top = 41
      Width = 693
      Height = 264
      Align = alTop
      TabOrder = 4
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_mem1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Bands = <
          item
          end
          item
            Caption = '1-'#1081' '#1082#1074#1072#1088#1090#1072#1083
            Width = 215
          end
          item
            Caption = '2-'#1081' '#1082#1074#1072#1088#1090#1072#1083
            Width = 227
          end
          item
            Caption = '3-'#1081' '#1082#1074#1072#1088#1090#1072#1083
            Width = 220
          end
          item
            Caption = '4-'#1081' '#1082#1074#1072#1088#1090#1072#1083
            Width = 229
          end>
        object clvb1CODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1Y: TcxGridDBBandedColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          Options.CellMerging = True
          Width = 56
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1HOUSE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1STREETNAME: TcxGridDBBandedColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          Options.CellMerging = True
          Width = 132
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1NOMER: TcxGridDBBandedColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.CellMerging = True
          Width = 28
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1STREET: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1MLIST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1MLISTNAME: TcxGridDBBandedColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090' '#1087#1086' '#1087#1083#1072#1085#1091
          DataBinding.FieldName = 'MLISTNAME'
          Width = 208
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object clvb1SUMY: TcxGridDBBandedColumn
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
          DataBinding.FieldName = 'SUMY'
          Width = 88
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object clvb1VidWork: TcxGridDBBandedColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082' '#1080' '#1074#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'VidWork'
          Width = 286
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object clvb1Jan: TcxGridDBBandedColumn
          Caption = #1103#1085#1074#1072#1088#1100
          DataBinding.FieldName = 'Jan'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1Feb: TcxGridDBBandedColumn
          Caption = #1092#1077#1074#1088#1072#1083#1100
          DataBinding.FieldName = 'Feb'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1Mar: TcxGridDBBandedColumn
          Caption = #1084#1072#1088#1090
          DataBinding.FieldName = 'Mar'
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1Apr: TcxGridDBBandedColumn
          Caption = #1072#1087#1088#1077#1083#1100
          DataBinding.FieldName = 'Apr'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1May: TcxGridDBBandedColumn
          Caption = #1084#1072#1081
          DataBinding.FieldName = 'May'
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1Jun: TcxGridDBBandedColumn
          Caption = #1080#1102#1085#1100
          DataBinding.FieldName = 'Jun'
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1Jul: TcxGridDBBandedColumn
          Caption = #1080#1102#1083#1100
          DataBinding.FieldName = 'Jul'
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1Aug: TcxGridDBBandedColumn
          Caption = #1072#1074#1075#1091#1089#1090
          DataBinding.FieldName = 'Aug'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1Sep: TcxGridDBBandedColumn
          Caption = #1089#1077#1085#1090#1103#1073#1088#1100
          DataBinding.FieldName = 'Sep'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1Oct: TcxGridDBBandedColumn
          Caption = #1086#1082#1090#1103#1073#1088#1100
          DataBinding.FieldName = 'Oct'
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1Nov: TcxGridDBBandedColumn
          Caption = #1085#1086#1103#1073#1088#1100
          DataBinding.FieldName = 'Nov'
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1Dec: TcxGridDBBandedColumn
          Caption = #1076#1077#1082#1072#1073#1088#1100
          DataBinding.FieldName = 'Dec'
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1KONTRAGENT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object clvb1KONTNAME: TcxGridDBBandedColumn
          DataBinding.FieldName = 'KONTNAME'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object clvb1MANAGER: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object clvb1FIO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FIO'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object clvb1SHOWCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SHOWCODE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
      end
      object l1: TcxGridLevel
        GridView = vb1
      end
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_year: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076' '
      Parent = grp2
      Control = edt_year
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072' '
      Parent = grp2
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_house: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      Parent = grp2
      Control = cbb_House
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = grp2
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_grd: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 478
    Top = 80
    object laf1: TdxLayoutCxLookAndFeel
      LookAndFeel.SkinName = 'Office2010Blue'
    end
  end
  object ds_street: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT Code, Name FROM Street'
      'ORDER BY Name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 152
    Top = 80
  end
  object src_street: TDataSource
    DataSet = ds_street
    Left = 181
    Top = 80
  end
  object ds_House: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT Code, Nomer FROM House'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 368
    Top = 80
  end
  object src_House: TDataSource
    DataSet = ds_House
    Left = 397
    Top = 80
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = edt_year
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 448
    Top = 80
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
      '       TP.manager, (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       TP.showcode'
      'FROM TRPLAN TP'
      'left outer join house h on h.code=tp.house'
      'left outer join street s on s.code=h.street'
      'left outer join mlist m on m.code=tp.mlist'
      'left outer join kontragent k on k.code = tp.kontragent'
      'left outer join worker w on w.code = tp.manager'
      'left outer join piple p on p.code = w.piple'
      'left outer join trfinplan tf on tf.y=tp.y and tf.house=tp.house')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 144
    Top = 152
  end
  object src_trplan: TDataSource
    DataSet = ds_trplan
    Left = 173
    Top = 152
  end
  object mem1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 136
    Top = 240
  end
  object src_mem1: TDataSource
    DataSet = mem1
    Left = 168
    Top = 240
  end
end
