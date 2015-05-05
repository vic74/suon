object oiFactShbForm: ToiFactShbForm
  Left = 0
  Top = 0
  Caption = #1064#1072#1073#1083#1086#1085' '#1088#1072#1089#1095#1077#1090#1072' '#1054#1048' '#1092#1072#1082#1090' ('#1076#1083#1103' '#1041#1044#1056'2)'
  ClientHeight = 588
  ClientWidth = 858
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
    Width = 858
    Height = 588
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object grd1: TcxGrid
      Left = 10
      Top = 85
      Width = 250
      Height = 200
      TabOrder = 2
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_FBDR
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1Y: TcxGridDBColumn
          Caption = #1075#1086#1076
          DataBinding.FieldName = 'Y'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 92
        end
        object clv1M: TcxGridDBColumn
          Caption = #1084#1077#1089#1103#1094
          DataBinding.FieldName = 'M'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 69
        end
        object clv1ISOI: TcxGridDBColumn
          Caption = #1092#1072#1082#1090' '#1054#1048
          DataBinding.FieldName = 'ISOI'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1ISOIPropertiesEditValueChanged
          HeaderAlignmentHorz = taCenter
          Width = 52
        end
        object v1Column1: TcxGridDBColumn
          Caption = #1088#1077#1082#1083#1072#1084#1072
          DataBinding.FieldName = 'ISOI_1'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnEditValueChanged = clv1ISOIPropertiesEditValueChanged
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object v1Column2: TcxGridDBColumn
          Caption = #1080#1085#1090#1077#1088#1085#1077#1090
          DataBinding.FieldName = 'ISOI_2'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          Width = 46
        end
        object v1Column3: TcxGridDBColumn
          Caption = #1073#1072#1079'. '#1089#1090'.'
          DataBinding.FieldName = 'ISOI_3'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          Width = 61
        end
        object v1Column4: TcxGridDBColumn
          Caption = #1072#1088#1077#1085#1076#1072
          DataBinding.FieldName = 'ISOI_4'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
        end
        object v1Column5: TcxGridDBColumn
          Caption = #1082#1086#1083#1103#1089#1086#1095#1085#1099#1077
          DataBinding.FieldName = 'ISOI_5'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object msk_Y: TcxMaskEdit
      Left = 43
      Top = 41
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 0
      Text = '2011'
      Width = 97
    end
    object btn_Exec: TcxButton
      Left = 146
      Top = 41
      Width = 75
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      OptionsImage.Images = cmDb.iml1
      TabOrder = 1
      OnClick = btn_ExecClick
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
      Parent = grplc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = '  '
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
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
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1075#1086#1076
      Parent = grplc1Group1
      Control = msk_Y
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 173
      Control = btn_Exec
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 424
    Top = 176
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = msk_Y
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 384
    Top = 176
  end
  object ds_FBDR: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE FBDR'
      'SET '
      '    Y = :Y,'
      '    M = :M,'
      '    ISOI = :ISOI,'
      '    ISOI_1 = :ISOI_1,'
      '    ISOI_2 = :ISOI_2,'
      '    ISOI_3 = :ISOI_3,'
      '    ISOI_4 = :ISOI_4,'
      '    ISOI_5 = :ISOI_5'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    FBDR'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO FBDR('
      '    Y,'
      '    M,'
      '    ISOI,'
      '    ISOI_1,'
      '    ISOI_2,'
      '    ISOI_3,'
      '    ISOI_4,'
      '    ISOI_5'
      ')'
      'VALUES('
      '    :Y,'
      '    :M,'
      '    :ISOI,'
      '    :ISOI_1,'
      '    :ISOI_2,'
      '    :ISOI_3,'
      '    :ISOI_4,'
      '    :ISOI_5'
      ')')
    RefreshSQL.Strings = (
      
        'select f.code, f.y, f.m, f.isoi, f.isoi_1, f.isoi_2, f.isoi_3, f' +
        '.isoi_4, f.isoi_5'
      'from fbdr f'
      ''
      ' WHERE '
      '        F.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      
        'select f.code, f.y, f.m, f.isoi, f.isoi_1, f.isoi_2, f.isoi_3, f' +
        '.isoi_4, f.isoi_5'
      'from fbdr f')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    Left = 168
    Top = 120
  end
  object src_FBDR: TDataSource
    DataSet = ds_FBDR
    Left = 200
    Top = 120
  end
end
