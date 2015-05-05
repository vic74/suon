object PDUHistoryForm: TPDUHistoryForm
  Left = 0
  Top = 0
  Caption = #1048#1089#1090#1086#1088#1080#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
  ClientHeight = 588
  ClientWidth = 1029
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
    Width = 1029
    Height = 588
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object grd1: TcxGrid
      Left = 10
      Top = 41
      Width = 250
      Height = 200
      TabOrder = 3
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_history
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv1FACTDOCCODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'FACTDOCCODE'
          Width = 43
        end
        object clv1M: TcxGridDBColumn
          DataBinding.FieldName = 'M'
          Visible = False
        end
        object clv1MONTHNAME: TcxGridDBColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'MONTHNAME'
          Width = 63
        end
        object clv1Y: TcxGridDBColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          Width = 49
        end
        object clv1DOCTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'DOCTYPE'
          Visible = False
        end
        object clv1HOUSESRV: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSESRV'
          Visible = False
        end
        object clv1OPERNAME: TcxGridDBColumn
          Caption = #1054#1087#1077#1088#1072#1094#1080#1103
          DataBinding.FieldName = 'OPERNAME'
          Width = 95
        end
        object clv1TYPENAME: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          DataBinding.FieldName = 'TYPENAME'
          Width = 186
        end
        object clv1SRVNAME: TcxGridDBColumn
          Caption = #1059#1089#1083#1091#1075#1072
          DataBinding.FieldName = 'SRVNAME'
          Width = 161
        end
        object clv1OPERTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'OPERTYPE'
          Visible = False
        end
        object clv1PLANSUM: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072'('#1055#1083#1072#1085')'
          DataBinding.FieldName = 'PLANSUM'
          Width = 83
        end
        object clv1FACTSUM: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072'('#1060#1072#1082#1090')'
          DataBinding.FieldName = 'FACTSUM'
          Width = 88
        end
        object clv1CORRECT: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072'('#1050#1086#1088#1088#1077#1082#1090'.)'
          DataBinding.FieldName = 'CORRECT'
          Width = 87
        end
        object clv1LASTTIME: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
          DataBinding.FieldName = 'LASTTIME'
          Width = 106
        end
        object clv1USERNAME: TcxGridDBColumn
          DataBinding.FieldName = 'USERNAME'
          Visible = False
        end
        object clv1FIO: TcxGridDBColumn
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          DataBinding.FieldName = 'FIO'
          Width = 90
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object dt1: TcxDateEdit
      Left = 61
      Top = 10
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object dt2: TcxDateEdit
      Left = 205
      Top = 10
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object btnExec: TcxButton
      Left = 332
      Top = 10
      Width = 107
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      OptionsImage.ImageIndex = 26
      OptionsImage.Images = cmDb.iml1
      TabOrder = 2
      OnClick = btnExecClick
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
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grplc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object lItmlc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089
      Parent = grplc1Group1
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1087#1086
      Parent = grplc1Group1
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lItmlc1Item13: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      Control = btnExec
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 848
    Top = 104
    object lcf1: TdxLayoutCxLookAndFeel
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
    Left = 816
    Top = 104
  end
  object ds_history: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select FH.CODE, FH.FACTDOCCODE, FH.M, FH.Y, FH.DOCTYPE, FH.HOUSE' +
        'SRV,'
      '       case FH.M'
      '        when 1 then '#39#1103#1085#1074#1072#1088#1100#39
      '        when 2 then '#39#1092#1077#1074#1088#1072#1083#1100#39
      '        when 3 then '#39#1084#1072#1088#1090#39
      '        when 4 then '#39#1072#1087#1088#1077#1083#1100#39
      '        when 5 then '#39#1084#1072#1081#39
      '        when 6 then '#39#1080#1102#1085#1100#39
      '        when 7 then '#39#1080#1102#1083#1100#39
      '        when 8 then '#39#1072#1074#1075#1091#1089#1090#39
      '        when 9 then '#39#1089#1077#1085#1090#1103#1073#1088#1100#39
      '        when 10 then '#39#1086#1082#1090#1103#1073#1088#1100#39
      '        when 11 then '#39#1085#1086#1103#1073#1088#1100#39
      '        when 12 then '#39#1076#1077#1082#1072#1073#1088#1100#39
      '       end MonthName,'
      
        '       iif(FH.DOCTYPE = 0,'#39#1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080' ('#1091#1089#1083#1091#1075#1080' '#1056#1050#1062')'#39','#39#1050#1086#1088#1088#1077#1082#1090#1080 +
        #1088#1086#1074#1082#1080' ('#1087#1088#1086#1095#1077#1077')'#39') TypeName,'
      '       iif(FH.DOCTYPE =0,hs.NAME, s.NAME) SRVNAME,'
      '       case FH.OPERTYPE'
      '           when 0 then '#39#1089#1086#1079#1076#1072#1085#1080#1077#39
      '           when 1 then '#39#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077#39
      '           when 2 then '#39#1091#1076#1072#1083#1077#1085#1080#1077#39
      '         end OPERNAME,'
      '       FH.OPERTYPE, FH.PLANSUM, FH.FACTSUM, FH.CORRECT,'
      '       FH.LASTTIME, FH.USERNAME,'
      '       iif(FH.USERNAME = '#39'SYSDBA'#39', '#39#1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#39',p.FIO) FIO'
      'from FACTDOCHISTORY FH'
      'left outer join WORKER W on W.CODE = FH.WORKER'
      'left outer join PIPLE P on P.CODE = W.PIPLE'
      'left outer join HOUSESRV hs on hs.CODE = fh.HOUSESRV'
      'left outer join srv s on s.CODE = fh.HOUSESRV')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 704
    Top = 344
  end
  object src_history: TDataSource
    DataSet = ds_history
    Left = 733
    Top = 344
  end
end
