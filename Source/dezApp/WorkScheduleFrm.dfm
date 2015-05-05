object WorkScheduleForm: TWorkScheduleForm
  Left = 0
  Top = 0
  Caption = #1043#1088#1072#1092#1080#1082' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072' '#1088#1072#1073#1086#1090
  ClientHeight = 588
  ClientWidth = 969
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
    Width = 969
    Height = 588
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object grd1: TcxGrid
      Left = 10
      Top = 81
      Width = 250
      Height = 200
      TabOrder = 6
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_TRDOP
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        Styles.Inactive = cmDb.styl1
        Styles.Selection = cmDb.styl1
        Styles.OnGetContentStyle = v1StylesGetContentStyle
        object clv1LOCK: TcxGridDBColumn
          DataBinding.FieldName = 'LOCK'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
          Width = 22
        end
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
          Width = 69
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'KNAME'
          Options.Editing = False
          Width = 131
        end
        object clv1TRFACT: TcxGridDBColumn
          DataBinding.FieldName = 'TRFACT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 176
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 54
        end
        object clv1NDOP: TcxGridDBColumn
          Caption = #8470' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'NDOP'
          Options.Editing = False
          Width = 49
        end
        object clv1D1: TcxGridDBColumn
          Caption = #1053#1072#1095#1072#1083#1086' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'D1'
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 68
        end
        object clv1D2: TcxGridDBColumn
          Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'D2'
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 68
        end
        object clv1MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MNAME'
          Options.Editing = False
          Width = 215
        end
        object clv1NSUMMA: TcxGridDBColumn
          Caption = #1057#1084#1077#1090#1085#1072#1103' '#1089#1091#1084#1084#1072
          DataBinding.FieldName = 'NSUMMA'
          Options.Editing = False
          Width = 70
        end
        object clv1PODATA: TcxGridDBColumn
          Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103' '#1076#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1088#1072#1073#1086#1090' '#1055#1054
          DataBinding.FieldName = 'PODATA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          OnGetProperties = clv1PODATAGetProperties
          Width = 74
        end
        object clv1ZD: TcxGridDBColumn
          Caption = #1047#1072#1074#1077#1088#1096#1077#1085#1080#1077' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'ZD'
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 71
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SUMMA: TcxGridDBColumn
          DataBinding.FieldName = 'SUMMA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DPLACE: TcxGridDBColumn
          DataBinding.FieldName = 'DPLACE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1TRDOP: TcxGridDBColumn
          DataBinding.FieldName = 'TRDOP'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NCALC: TcxGridDBColumn
          DataBinding.FieldName = 'NCALC'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DURATION: TcxGridDBColumn
          Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1088#1072#1073#1086#1090' '#1092#1072#1082#1090' ('#1076#1085#1080')'
          DataBinding.FieldName = 'DURATION'
          Options.Editing = False
          Width = 71
        end
        object clv1DPlan: TcxGridDBColumn
          Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1088#1072#1073#1086#1090' '#1087#1083#1072#1085' ('#1076#1085#1080')'
          DataBinding.FieldName = 'DPlan'
          Width = 77
        end
        object clv1DFact: TcxGridDBColumn
          Caption = #1056#1072#1079#1085#1080#1094#1072' ('#1087#1083#1072#1085' - '#1092#1072#1082#1090')'
          DataBinding.FieldName = 'DFact'
          Width = 84
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object dt1: TcxDateEdit
      Left = 196
      Top = 41
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object dt2: TcxDateEdit
      Left = 343
      Top = 41
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object btn_exec: TcxButton
      Left = 735
      Top = 41
      Width = 131
      Height = 21
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      OptionsImage.ImageIndex = 26
      OptionsImage.Images = cmDb.iml1
      TabOrder = 5
      OnClick = btn_execClick
    end
    object cbb_kontr: TcxLookupComboBox
      Left = 535
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
      Properties.ListSource = src_kontr
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 167
    end
    object btn_clearkontr: TcxButton
      Left = 708
      Top = 41
      Width = 21
      Height = 21
      Caption = 'btn_clearkontr'
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      TabOrder = 4
      OnClick = btn_clearkontrClick
    end
    object cbb_type: TcxComboBox
      Left = 43
      Top = 41
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1054#1073#1097#1077#1089#1090#1088#1086#1081
        #1051#1080#1092#1090)
      Style.HotTrack = False
      TabOrder = 0
      Text = #1054#1073#1097#1077#1089#1090#1088#1086#1081
      Width = 121
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object group1: TdxLayoutGroup
      CaptionOptions.Text = #1055#1072#1088#1072#1084#1077#1090#1088#1099
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 31
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089' '
      Parent = group1
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1087#1086' '
      Parent = group1
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = group1
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itmlc1Item2: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      Parent = group1
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmlc1Item13: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = group1
      Control = btn_clearkontr
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LItemlc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1058#1080#1087
      Parent = group1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 116
      Control = cbb_type
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
    Components = <
      item
        Component = clv1D1
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1D2
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1DURATION
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1MNAME
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1NDOP
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1NOMER
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1NSUMMA
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1PODATA
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1SNAME
        Properties.Strings = (
          'Width')
      end
      item
        Component = clv1ZD
        Properties.Strings = (
          'Width')
      end
      item
        Component = dt1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = dt2
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object ds_TRDOP: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT iif(tr.ZD is NULL,0,1) LOCK,'
      '       td.CODE,'
      '       td.TRFACT, tr.mlist,'
      '       m.name mName,'
      '       tr.house, h.nomer,'
      '       h.street, s.name sName,'
      '       tr.summa, tr.NSumma,tr.dplace,'
      '       td.TRDOP, tr.NCALC,'
      '       td.D1, tr.KONTRAGENT, k.NAME KNAME,'
      '       td.D2, tr.ZD, td.PODATA,'
      '       tr.NDOP,'
      '       td.STATE, tr.ISCALC, tr.CALCNUM,'
      '       iif(td.PODATA is NULL, NULL,'
      '                iif(tr.ZD is NULL, NULL, tr.ZD - td.PODATA)'
      '                                    ) duration,'
      '       (td.D2 - td.D1) DPlan,'
      '       iif(iif(td.PODATA is NULL, NULL,'
      '                iif(tr.ZD is NULL, NULL, tr.ZD - td.PODATA)'
      '                                    ) is NULL,  null,'
      
        '                                    (td.D2 - td.D1) - (tr.ZD - t' +
        'd.PODATA)) DFact'
      'FROM TRDOPSOG td'
      'left outer join trfact tr on tr.code=td.trfact'
      'left outer join mlist m on m.code=tr.mlist'
      'left outer join house h on h.code=tr.house'
      'left outer join street s on s.code=h.street'
      'left outer join kontragent k on k.CODE = tr.KONTRAGENT'
      '')
    BeforePost = ds_TRDOPBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 576
    Top = 136
  end
  object src_TRDOP: TDataSource
    DataSet = ds_TRDOP
    Left = 608
    Top = 136
  end
  object src_kontr: TDataSource
    Left = 605
    Top = 176
  end
  object EditRepository1: TcxEditRepository
    Left = 608
    Top = 288
    object DateItem_write: TcxEditRepositoryDateItem
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = DateItem_writePropertiesEditValueChanged
    end
    object DateItem_Read: TcxEditRepositoryDateItem
      Properties.ButtonGlyph.Data = {
        E6010000424DE60100000000000036000000280000000B0000000C0000000100
        180000000000B0010000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0800000800000800000800000800000800000800000C0C0C0C0C0C000
        0000C0C0C0C0C0C0800000800000800000800000800000800000800000C0C0C0
        C0C0C0000000C0C0C0C0C0C08000008000008000008000008000008000008000
        00C0C0C0C0C0C0000000C0C0C0C0C0C0800000800000800000FFFFFF80000080
        0000800000C0C0C0C0C0C0000000C0C0C0C0C0C0800000800000800000FFFFFF
        800000800000800000C0C0C0C0C0C0000000C0C0C0C0C0C08000008000008000
        00800000800000800000800000C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C080
        0000C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C0800000C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0C0C0C0800000C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0C0C0C0C000
        0000C0C0C0C0C0C0C0C0C0C0C0C0800000800000800000C0C0C0C0C0C0C0C0C0
        C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000}
      Properties.ReadOnly = True
    end
  end
  object ds_TRLDOP: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT iif(tr.ZD is NULL,0,1) LOCK,'
      '       td.CODE,'
      '       td.TRLFACT, tr.mlist,'
      '       m.name mName,'
      '       tr.house, h.nomer,'
      '       h.street, s.name sName,'
      '       tr.summa, tr.NSumma,tr.dplace,'
      '       td.TRLDOP, tr.NCALC,'
      '       td.D1, tr.KONTRAGENT, k.NAME KNAME,'
      '       td.D2, tr.ZD, td.PODATE PODATA,'
      '       tr.NDOP,'
      '       td.STATE, tr.ISCALC, tr.CALCNUM,'
      '       iif(td.PODATE is NULL, NULL,'
      '                iif(tr.ZD is NULL, NULL, tr.ZD - td.PODATE)'
      '                                    ) duration,'
      '       (td.D2 - td.D1) DPlan,'
      '       iif(iif(td.PODATE is NULL, NULL,'
      '                iif(tr.ZD is NULL, NULL, tr.ZD - td.PODATE)'
      '                                    ) is NULL,  null,'
      
        '                                    (td.D2 - td.D1) - (tr.ZD - t' +
        'd.PODATE)) DFact'
      'FROM TRLDOPSOG td'
      'left outer join trlfact tr on tr.code=td.trlfact'
      'left outer join mlist m on m.code=tr.mlist'
      'left outer join house h on h.code=tr.house'
      'left outer join street s on s.code=h.street'
      'left outer join kontragent k on k.CODE = tr.KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 576
    Top = 232
    poApplyRepositary = True
  end
  object src_TRLDOP: TDataSource
    DataSet = ds_TRLDOP
    Left = 608
    Top = 232
  end
end
