object RepToPFForm: TRepToPFForm
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090' '#1074' '#1088#1072#1079#1088#1077#1079#1077' '#1055#1054' ('#1089' '#1076#1086#1083#1103#1084#1080')'
  ClientHeight = 602
  ClientWidth = 862
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
  object cnt1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 862
    Height = 602
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcaf1
    object grd1: TcxGrid
      Left = 10
      Top = 94
      Width = 250
      Height = 200
      TabOrder = 7
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072' '#1087#1086#1076#1086#1078#1076#1080#1090#1077' ...'
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Bands = <
          item
          end>
        object clvb1Column1: TcxGridDBBandedColumn
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ValueType = vtFloat
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.LineCount = 4
          Position.RowIndex = 0
        end
      end
      object l1: TcxGridLevel
        GridView = vb1
      end
    end
    object msk_Y: TcxMaskEdit
      Left = 46
      Top = 47
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 0
      Width = 111
    end
    object btn_exec: TcxButton
      Left = 163
      Top = 47
      Width = 133
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 1
      OnClick = btn_execClick
    end
    object dt1: TcxDateEdit
      Left = 10000
      Top = 10000
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = 'mmmm yyyyy'
      Properties.ImmediatePost = True
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 3
      Visible = False
      Width = 121
    end
    object dt2: TcxDateEdit
      Left = 10000
      Top = 10000
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = 'mmmm yyyyy'
      Properties.ImmediatePost = True
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 4
      Visible = False
      Width = 121
    end
    object btn_ExecFact: TcxButton
      Left = 10000
      Top = 10000
      Width = 132
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 5
      Visible = False
      OnClick = btn_ExecFactClick
    end
    object btn_Excel: TcxButton
      Left = 302
      Top = 47
      Width = 83
      Height = 25
      Caption = #1069#1082#1089#1087#1086#1088#1090
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = cmDb.iml1
      TabOrder = 2
      OnClick = btn_ExcelClick
    end
    object btn_Excel1: TcxButton
      Left = 10000
      Top = 10000
      Width = 85
      Height = 25
      Caption = #1069#1082#1089#1087#1086#1088#1090
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = cmDb.iml1
      TabOrder = 6
      Visible = False
      OnClick = btn_Excel1Click
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
      CaptionOptions.Text = #1055#1083#1072#1085
      LayoutLookAndFeel = lcaf1
      Parent = grpcnt1Group2
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 24
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpcnt1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object itmcnt1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmcnt1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1043#1086#1076
      Parent = grp2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 135
      Control = msk_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmcnt1Item11: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 133
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpcnt1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = lcaf1
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object grpcnt1Group3: TdxLayoutGroup
      CaptionOptions.Text = #1060#1072#1082#1090
      LayoutLookAndFeel = lcaf1
      Parent = grpcnt1Group2
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object itmcnt1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1087#1077#1088#1080#1086#1076' '#1089
      Parent = grpcnt1Group3
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmcnt1Item3: TdxLayoutItem
      CaptionOptions.Text = ' '#1087#1086
      Parent = grpcnt1Group3
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmcnt1Item13: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 132
      Control = btn_ExecFact
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LItemcnt1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp2
      Control = btn_Excel
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LItemcnt1Item11: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grpcnt1Group3
      Control = btn_Excel1
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object laf1: TdxLayoutLookAndFeelList
    Left = 768
    Top = 176
    object lcaf1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = dt1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = dt2
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = msk_Y
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 736
    Top = 176
  end
  object ds_TRPLAN: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sum(tp.SUMY) SUMY'
      '      ,mg.code, mg.name'
      '      ,tp.kontragent'
      'FROM TRPLAN tp'
      'left outer join mlist m on m.code=tp.mlist'
      'left outer join matgroupto mg on mg.code = m.matgroupto'
      'where m.matgroupto is not null and tp.y=:y'
      'group by tp.kontragent, mg.code, mg.name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 168
    Top = 216
  end
  object src_md1: TDataSource
    DataSet = md1
    Left = 200
    Top = 376
  end
  object md1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 168
    Top = 376
  end
  object rps1: TcxEditRepository
    Left = 216
    Top = 224
    object cred1: TcxEditRepositoryCurrencyItem
      Properties.DisplayFormat = ',0.000;-,0.000'
    end
    object cred2: TcxEditRepositoryCurrencyItem
      Properties.DisplayFormat = ',0.00;-,0.00'
    end
    object msk1: TcxEditRepositoryMaskItem
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '(\d | [.] )+'
    end
    object spn1: TcxEditRepositorySpinItem
      Properties.CanEdit = False
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.EditFormat = ',0.00;-,0.00'
      Properties.ImmediatePost = True
      Properties.UseDisplayFormatWhenEditing = True
    end
    object clc1: TcxEditRepositoryCalcItem
      Properties.DisplayFormat = '0.00'
      Properties.ImmediatePost = True
      Properties.Precision = 15
      Properties.UseThousandSeparator = True
    end
  end
  object strp1: TcxStyleRepository
    Left = 248
    Top = 224
    PixelsPerInch = 96
    object stl1: TcxStyle
      AssignedValues = [svColor]
      Color = clSkyBlue
    end
    object stl2: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnFace
    end
  end
  object ds_TRFact: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sum(tp.SUMMA) SUMMA'
      '      ,mg.code, mg.name'
      '      ,tp.kontragent'
      'FROM TRFact tp'
      'left outer join mlist m on m.code=tp.mlist'
      'left outer join matgroupto mg on mg.code = m.matgroupto'
      
        'where m.matgroupto is not null and tp.zd between :d1 and :d2 and' +
        ' tp.state=5'
      'group by tp.kontragent, mg.code, mg.name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 344
    Top = 216
  end
end
