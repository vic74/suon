object imDatalForm: TimDatalForm
  Left = 0
  Top = 0
  Caption = #1046#1091#1088#1085#1072#1083' '#1088#1072#1089#1095#1077#1090#1086#1074
  ClientHeight = 550
  ClientWidth = 810
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
    Width = 810
    Height = 550
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 7
      Visible = False
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        OnCellClick = v1CellClick
        OnEditKeyDown = v1EditKeyDown
        DataController.DataSource = src_MoveImMKD
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
          Width = 48
        end
        object clv1ptype: TcxGridDBColumn
          DataBinding.FieldName = 'ptype'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 31
          IsCaptionAssigned = True
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 99
        end
        object clv1DOGIMMKD: TcxGridDBColumn
          Caption = #1044#1086#1075#1086#1074#1086#1088
          DataBinding.FieldName = 'DOGIMMKD'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 200
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              MinWidth = 0
              Width = 0
              FieldName = 'CODE'
            end
            item
              MinWidth = 0
              Width = 0
              FieldName = 'ARENDATOR'
            end
            item
              Caption = #1053#1086#1084#1077#1088
              MinWidth = 40
              Width = 50
              FieldName = 'NOMER'
            end
            item
              Caption = #1040#1088#1077#1085#1076#1072#1090#1086#1088
              MinWidth = 90
              Width = 100
              FieldName = 'ARNAME'
            end>
          Properties.ListFieldIndex = 3
          Properties.ListSource = src_DOGIMMKD
          Width = 179
        end
        object clv1PSUM: TcxGridDBColumn
          Caption = #1085#1072#1095#1080#1089#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'PSUM'
          Width = 99
        end
        object clv1RSUM: TcxGridDBColumn
          Caption = #1086#1087#1083#1072#1090#1072
          DataBinding.FieldName = 'RSUM'
          Width = 84
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 215
        end
        object clv1saldo: TcxGridDBColumn
          DataBinding.FieldName = 'saldo'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object dt1: TcxDateEdit
      Left = 52
      Top = 1
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object dt2: TcxDateEdit
      Left = 194
      Top = 1
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cbb_DType: TcxComboBox
      Left = 336
      Top = 1
      Properties.Items.Strings = (
        #1085#1072#1088#1091#1078#1085#1072#1103' '#1088#1077#1082#1083#1072#1084#1072
        #1073#1072#1079#1086#1074#1099#1077' '#1089#1090#1072#1085#1094#1080#1080
        #1080#1085#1090#1077#1088#1085#1077#1090' '#1080' '#1082#1072#1073#1077#1083#1100#1085#1086#1077
        #1072#1088#1077#1085#1076#1072' '#1087#1086#1084#1077#1097#1077#1085#1080#1081' '#1054#1048' '#1052#1050#1044
        #1090#1077#1093#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077' '#1053#1046#1055
        #1082#1086#1083#1103#1089#1086#1095#1085#1099#1077
        #1087#1086' '#1074#1089#1077#1084)
      Style.HotTrack = False
      TabOrder = 2
      Text = #1088#1077#1082#1083#1072#1084#1072
      Width = 121
    end
    object grd2: TcxGrid
      Left = 13
      Top = 329
      Width = 689
      Height = 263
      TabOrder = 6
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_akt
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Column = clv2DATA
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv2PSum
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv2RSum
          end
          item
            Format = ',0.00;-,0.00'
            Column = clv2Saldo
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 79
        end
        object clv2PSum: TcxGridDBColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'PSum'
          RepositoryItem = ced1
          Width = 73
        end
        object clv2RSum: TcxGridDBColumn
          Caption = #1054#1087#1083#1072#1090#1072
          DataBinding.FieldName = 'RSum'
          RepositoryItem = ced1
          Width = 73
        end
        object clv2Saldo: TcxGridDBColumn
          Caption = #1057#1072#1083#1100#1076#1086
          DataBinding.FieldName = 'SALDO'
          RepositoryItem = ced1
          Width = 78
        end
        object clv2Note: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'Note'
          Width = 338
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 1
      Top = 30
      Width = 689
      Height = 263
      TabOrder = 5
      object v3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v3CellClick
        DataController.DataSource = src_obv
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clv3OST
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clv3PSUM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clv3RSUM
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = clv3SALDO
          end
          item
            Column = clv3AGROUPNAME
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv3OST
            Sorted = True
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv3PSUM
            Sorted = True
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv3RSUM
            Sorted = True
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv3SALDO
            Sorted = True
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        object clv3AGROUP: TcxGridDBColumn
          DataBinding.FieldName = 'AGROUP'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3AGROUPNAME: TcxGridDBColumn
          DataBinding.FieldName = 'AGROUPNAME'
          Visible = False
          GroupIndex = 0
          Options.ShowCaption = False
          VisibleForCustomization = False
          Width = 93
          IsCaptionAssigned = True
        end
        object clv3ARENDATOR: TcxGridDBColumn
          DataBinding.FieldName = 'ARENDATOR'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3ARNAME: TcxGridDBColumn
          Caption = #1040#1088#1077#1085#1076#1072#1090#1086#1088
          DataBinding.FieldName = 'ARNAME'
          Width = 205
        end
        object clv3DTYPE: TcxGridDBColumn
          DataBinding.FieldName = 'DTYPE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3OST: TcxGridDBColumn
          Caption = #1053#1072#1095'. '#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'OST'
          RepositoryItem = ced1
          Width = 85
        end
        object clv3PSUM: TcxGridDBColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1103
          DataBinding.FieldName = 'PSUM'
          RepositoryItem = ced1
          Width = 81
        end
        object clv3RSUM: TcxGridDBColumn
          Caption = #1054#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'RSUM'
          RepositoryItem = ced1
          Width = 89
        end
        object clv3SALDO: TcxGridDBColumn
          Caption = #1050#1086#1085'. '#1086#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = 'SALDO'
          RepositoryItem = ced1
          Width = 90
        end
        object clv3DOGIMMKD: TcxGridDBColumn
          DataBinding.FieldName = 'DOGIMMKD'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object btn_exec: TcxButton
      Left = 535
      Top = 1
      Width = 97
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 3
      OnClick = btn_execClick
    end
    object chk1: TcxCheckBox
      Left = 10000
      Top = 10000
      Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1072#1090#1100
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Width = 121
    end
    object btn_Excel: TcxButton
      Left = 633
      Top = 1
      Width = 25
      Height = 25
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      TabOrder = 4
      OnClick = btn_ExcelClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp3: TdxLayoutGroup
      CaptionOptions.Text = #1054#1073#1086#1088#1086#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      OnCaptionClick = grp3CaptionClick
      Index = 0
    end
    object grp5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Offsets.Bottom = 3
      Parent = grp3
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_dt1: TdxLayoutItem
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089' '
      Parent = grp5
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_dt2: TdxLayoutItem
      CaptionOptions.Text = ' '#1087#1086' '
      Parent = grp5
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_DType: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087
      Parent = grp5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 218
      Control = cbb_DType
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp5
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 97
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_grd3: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp3
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grp2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = False
      SizeOptions.Height = 259
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 2
    end
    object grp4: TdxLayoutGroup
      CaptionOptions.Text = #1040#1082#1090' '#1089#1074#1077#1088#1082#1080
      Parent = grp2
      ButtonOptions.Buttons = <>
      ShowBorder = False
      OnCaptionClick = grp4CaptionClick
      Index = 0
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp4
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itm_chk1: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chk1
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object LItemlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp5
      Control = btn_Excel
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 56
    object lcl1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
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
    Left = 652
    Top = 56
  end
  object ds_MoveImMKD: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE MOVEIMMKD'
      'SET '
      '    DOGIMMKD = :DOGIMMKD,'
      '    PSUM = :PSUM,'
      '    RSUM = :RSUM,'
      '    NOTE = :NOTE,'
      '    DATA = :DATA'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    MOVEIMMKD'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO MOVEIMMKD('
      '    CODE,'
      '    DOGIMMKD,'
      '    PSUM,'
      '    RSUM,'
      '    NOTE,'
      '    DATA'
      ')'
      'VALUES('
      '    :CODE,'
      '    :DOGIMMKD,'
      '    :PSUM,'
      '    :RSUM,'
      '    :NOTE,'
      '    :DATA'
      ')')
    RefreshSQL.Strings = (
      'SELECT mm.CODE, '
      '       mm.DOGIMMKD, '
      '       mm.PSUM, '
      '       mm.RSUM, '
      '       mm.NOTE, '
      '       mm.DATA'
      'FROM MOVEIMMKD mm'
      ' WHERE '
      '        MM.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT mm.CODE, '
      '       mm.DOGIMMKD, '
      '       mm.PSUM, '
      '       mm.RSUM, '
      '       mm.NOTE, '
      '       mm.DATA,'
      '       mm.saldo,'
      '       mm.ptype'
      'FROM MOVEIMMKD mm')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 184
    Top = 96
  end
  object src_MoveImMKD: TDataSource
    DataSet = ds_MoveImMKD
    Left = 213
    Top = 96
  end
  object ds_DOGIMMKD: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT dm.CODE, '
      '       dm.ARENDATOR,a.name ArName,'
      '       dm.NOMER, '
      '       dm.D1, '
      '       dm.D2, '
      '       dm.NOTE, '
      '       dm.DTYPE, '
      '       dm.RTYPE, '
      '       dm.TARIF'
      'FROM DOGIMMKD dm'
      'left outer join ARENDATOR a on a.code=dm.arendator')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 184
    Top = 136
  end
  object src_DOGIMMKD: TDataSource
    DataSet = ds_DOGIMMKD
    Left = 213
    Top = 136
  end
  object ds_akt: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT mm.CODE, '
      '       mm.LASTTIME, '
      '       mm.USERNAME, '
      '       mm.DOGIMMKD, '
      '       mm.PSUM, '
      '       mm.RSUM, '
      '       mm.NOTE, '
      '       mm.DATA, '
      '       mm.SALDO, '
      '       mm.PTYPE'
      'FROM MOVEIMMKD mm')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 40
    Top = 336
  end
  object src_akt: TDataSource
    DataSet = m_akt
    Left = 69
    Top = 392
  end
  object m_akt: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 40
    Top = 392
  end
  object ds_obv: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select ARENDATOR, DOGIMMKD, DTYPE, SALDO1, PSUM, RSUM, SALDO2, A' +
        'RNAME, ARFULLNAME, AGROUP, AGROUPNAME'
      'from GETIMOBOROT(:D1, :D2, :ADTYPE)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 320
    Top = 96
  end
  object m_obv: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 312
    Top = 136
  end
  object src_obv: TDataSource
    DataSet = m_obv
    Left = 341
    Top = 136
  end
  object edrep1: TcxEditRepository
    Left = 96
    Top = 392
    object ced1: TcxEditRepositoryCurrencyItem
      Properties.DisplayFormat = ',0.00;-,0.00'
    end
  end
  object m_obj1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 488
    Top = 168
  end
  object src_obj1: TDataSource
    DataSet = m_obj1
    Left = 517
    Top = 168
  end
end
