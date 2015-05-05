object NGPRoomForm: TNGPRoomForm
  Left = 0
  Top = 0
  Caption = #1055#1086#1084#1077#1097#1077#1085#1080#1103' '#1053#1046#1055
  ClientHeight = 566
  ClientWidth = 836
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
    Width = 836
    Height = 566
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object grd1: TcxGrid
      Left = 10
      Top = 47
      Width = 816
      Height = 509
      TabOrder = 1
      object v1: TcxGridDBTableView
        DataController.DataSource = src_NGPROOM
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'SQ'
            Column = clv1SQ
          end
          item
            Kind = skCount
            Column = clv1SNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv1A: TcxGridDBColumn
          DataBinding.FieldName = 'A'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1APropertiesEditValueChanged
          Width = 21
          IsCaptionAssigned = True
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 212
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 31
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
        end
        object clv1SQ: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100' '#1087#1086#1084#1077#1097#1077#1085#1080#1103
          DataBinding.FieldName = 'SQ'
          Options.Editing = False
          Width = 127
        end
        object clv1FLOOR: TcxGridDBColumn
          Caption = #1069#1090#1072#1078
          DataBinding.FieldName = 'FLOOR'
          Options.Editing = False
          Width = 45
        end
        object clv1TS: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080
          DataBinding.FieldName = 'TS'
          Options.Editing = False
          Width = 125
        end
        object clv1SB: TcxGridDBColumn
          Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082
          DataBinding.FieldName = 'SBNAME'
          Options.Editing = False
          Width = 123
        end
        object clv1TARGET: TcxGridDBColumn
          Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
          DataBinding.FieldName = 'TARGET'
          Options.Editing = False
          Width = 147
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object doc1: TdxBarDockControl
      Left = 10
      Top = 10
      Width = 816
      Height = 31
      Align = dalTop
      BarManager = bm1
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object ds_NGPROOM: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT NR.CODE,'
      '       NR.A,'
      '       NR.HOUSE,'
      '       S.NAME SNAME,'
      '       H.NOMER,'
      '       NR.SQ,'
      '       NR."FLOOR",'
      '       IIF(NR.TS=0, '#39#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1077#39','
      '         IIF(NR.TS=1, '#39#1072#1088#1077#1085#1076#1072' '#1050#1059#1080#1047#1054#39', '#39#1072#1088#1077#1085#1076#1072' '#1044#1045#1047#39')) TS,'
      '       NR.SB,'
      '       NR.SBName,'
      '       NR.TARGET'
      'FROM NGPROOM NR'
      'left outer join house h on h.CODE = nr.HOUSE'
      'left outer join street s on s.CODE = h.STREET'
      ''
      'order BY S.NAME, H.NOMER')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 283
    Top = 144
  end
  object src_NGPROOM: TDataSource
    DataSet = ds_NGPROOM
    Left = 312
    Top = 144
  end
  object bm1: TdxBarManager
    AlwaysSaveText = True
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
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    SunkenBorder = True
    UseSystemFont = True
    Left = 341
    Top = 144
    DockControlHeights = (
      0
      0
      0
      0)
    object bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 884
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Open'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_Open: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = btn_OpenClick
    end
  end
end
