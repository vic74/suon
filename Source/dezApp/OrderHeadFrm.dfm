object OrderHeadForm: TOrderHeadForm
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1085#1072#1088#1103#1076#1086#1074
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
      Top = 117
      Width = 816
      Height = 453
      TabOrder = 4
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      LockedStateImageOptions.Text = #1055#1086#1083#1091#1095#1072#1077#1084' '#1076#1072#1085#1085#1099#1077'...'
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        OnCellDblClick = v1CellDblClick
        DataController.DataSource = src_worklist
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1DATA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 35
        end
        object clv1DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          Width = 78
        end
        object clv1KontrName: TcxGridDBColumn
          Caption = #1055#1054
          DataBinding.FieldName = 'KontrName'
          Width = 161
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
          Width = 157
        end
        object clv1streetname: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'streetname'
          Width = 187
        end
        object clv1nomer: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'nomer'
          Width = 45
        end
        object clv1DUNAME: TcxGridDBColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'DUNAME'
          Width = 62
        end
        object clv1FIO: TcxGridDBColumn
          Caption = #1052#1072#1089#1090#1077#1088
          DataBinding.FieldName = 'FIO'
          Width = 130
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 124
        end
        object clv1Street: TcxGridDBColumn
          DataBinding.FieldName = 'Street'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1DU: TcxGridDBColumn
          DataBinding.FieldName = 'DU'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1PSE: TcxGridDBColumn
          DataBinding.FieldName = 'worker'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object doc1: TdxBarDockControl
      Left = 10
      Top = 85
      Width = 816
      Height = 26
      Align = dalTop
      BarManager = bm1
    end
    object dt1: TcxDateEdit
      Left = 71
      Top = 41
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object dt2: TcxDateEdit
      Left = 215
      Top = 41
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object btn_Exec: TcxButton
      Left = 342
      Top = 41
      Width = 130
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = cmDb.iml1
      TabOrder = 2
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
      Parent = grplc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object grplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = #1060#1080#1083#1100#1090#1088
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = True
      SizeOptions.Height = 51
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1089
      Parent = grplc1Group2
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1087#1086
      Parent = grplc1Group2
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item13: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grplc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 130
      Control = btn_Exec
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 652
    Top = 176
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = clv1CODE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1DATA
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1DU
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1DUNAME
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1FIO
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1HOUSE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1KONTRAGENT
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1KontrName
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1nomer
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1NOTE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1PSE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1Street
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1streetname
        Properties.Strings = (
          'Visible'
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
    Left = 624
    Top = 176
  end
  object src_worklist: TDataSource
    DataSet = ds_worklist
    Left = 405
    Top = 232
  end
  object ds_worklist: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE WORKLIST'
      'SET '
      '    DATA = :DATA,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    HOUSE = :HOUSE,'
      '    NOTE = :NOTE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    WORKLIST'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO WORKLIST('
      '    CODE,'
      '    DATA,'
      '    KONTRAGENT,'
      '    HOUSE,'
      '    NOTE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :DATA,'
      '    :KONTRAGENT,'
      '    :HOUSE,'
      '    :NOTE'
      ')')
    RefreshSQL.Strings = (
      'SELECT wl.CODE, '
      '       wl.DATA, '
      '       wl.KONTRAGENT,k.name KontrName, '
      '        s.code Street, s.name streetname,'
      '       wl.HOUSE, h.nomer, h.du, d.name DUName,'
      '       mh.worker,(p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       wl.NOTE  '
      ''
      'FROM WORKLIST wl'
      'left outer join house h on h.code = wl.house'
      'left outer join street s on s.code = h.street'
      'left outer join KONTRAGENT k on k.code=wl.KONTRAGENT'
      'left outer join du d on d.code=h.du'
      ''
      
        'left outer join mhouse mh on mh.house=wl.house and mh.kontragent' +
        '=wl.kontragent'
      'left outer join worker w on w.code=mh.worker'
      'left outer join piple p on p.code=w.piple'
      ''
      ' WHERE '
      '        WL.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT distinct(wl.CODE), '
      '       wl.DATA, '
      '       wl.KONTRAGENT,k.name KontrName, '
      '        s.code Street, s.name streetname,'
      '       wl.HOUSE, h.nomer, h.du, d.name DUName,'
      '       mh.worker,(p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       wl.NOTE  '
      ''
      'FROM WORKLIST wl'
      'left outer join house h on h.code = wl.house'
      'left outer join street s on s.code = h.street'
      'left outer join KONTRAGENT k on k.code=wl.KONTRAGENT'
      'left outer join du d on d.code=h.du'
      ''
      
        'left outer join mhouse mh on mh.house=wl.house and mh.kontragent' +
        '=wl.kontragent'
      'left outer join worker w on w.code=mh.worker'
      'left outer join piple p on p.code=w.piple')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 376
    Top = 232
  end
  object bm1: TdxBarManager
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = cmDb.iml1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 440
    Top = 280
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
          ItemName = 'btn_nAdd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_nEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_nDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_print'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_auto'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_clear'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_nAdd: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1072#1088#1103#1076
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1072#1088#1103#1076
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_nAddClick
    end
    object btn_nEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1085#1072#1088#1103#1076
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1085#1072#1088#1103#1076
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_nEditClick
    end
    object btn_nDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1088#1103#1076
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1088#1103#1076
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_nDeleteClick
    end
    object btn_print: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1072#1088#1103#1076#1072
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1085#1072#1088#1103#1076#1072
      Visible = ivAlways
      ImageIndex = 11
      OnClick = btn_printClick
    end
    object btn_auto: TdxBarButton
      Caption = #1040#1074#1090#1086#1089#1086#1079#1076#1072#1085#1080#1077' '#1085#1072#1088#1103#1076#1086#1074
      Category = 0
      Hint = #1040#1074#1090#1086#1089#1086#1079#1076#1072#1085#1080#1077' '#1085#1072#1088#1103#1076#1086#1074
      Visible = ivAlways
      ImageIndex = 7
      OnClick = btn_autoClick
    end
    object btn_clear: TdxBarButton
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1085#1072#1089#1090#1086#1081#1082#1080' '#1092#1086#1088#1084#1099
      Category = 0
      Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1085#1072#1089#1090#1086#1081#1082#1080' '#1092#1086#1088#1084#1099
      Visible = ivAlways
      ImageIndex = 23
      OnClick = btn_clearClick
    end
  end
  object ds_kontr: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, NAME FROM KONTRAGENT')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 376
    Top = 280
  end
  object src_kontr: TDataSource
    DataSet = ds_kontr
    Left = 405
    Top = 280
  end
  object fr1: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40626.950418217600000000
    ReportOptions.LastChange = 41144.663154270840000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Q1.ParamByName('#39'Code'#39').Value:=Report.variables['#39'varCode'#39'];    ' +
        '                                      '
      'end;'
      ''
      'procedure Memo5OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   memo5.text:=FormatFloat('#39'#.00'#39',(<Q_mat."QUANTITY">*<Q_mat."PR' +
        'ICE">));  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 376
    Top = 184
    Datasets = <
      item
        DataSet = fr1.Q1
        DataSetName = 'Q1'
      end
      item
        DataSet = fr1.Q_mat
        DataSetName = 'Q_mat'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object fdb1: TfrxFIBDatabase
        DatabaseName = '91.144.190.4:d:/base/DEZ.fdb'
        LoginPrompt = False
        Params.Strings = (
          'user_name=sysdba'
          'password=victris')
        SQLDialect = 3
        pLeft = 20
        pTop = 24
      end
      object Q1: TfrxFIBQuery
        UserName = 'Q1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'code'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'SELECT wl.CODE, '
          '       wl.DATA, w.data D1,'
          '       wl.KONTRAGENT,k.name KontrName, '
          '       wl.SERVISWORK, sw.name WorkName,'
          '       s.code street, s.name StreetName, '
          '       wl.HOUSE, h.nomer,                    '
          '       wl.ADDR, '
          '       wl.PRICE, '
          '       wl.NOTE, '
          '       wl.WORKLIST, '
          '       wl.USERNAME, '
          '       wl.LASTTIME, '
          '       wl.QUANTITY, sw.ed       '
          'FROM WORKSPECLIST wl'
          'left outer join kontragent k on k.code=wl.kontragent'
          'left outer join house h on h.code=wl.house'
          'left outer join street s on s.code=h.street'
          'left outer join serviswork  sw on sw.code=wl.serviswork'
          'left outer join worklist w on w.code=wl.worklist'
          'where wl.WORKLIST=:code'
          'order by wl.DATA                           '
          '                                               ')
        Database = fr1.fdb1
        pLeft = 20
        pTop = 76
        Parameters = <
          item
            Name = 'code'
            DataType = ftUnknown
          end>
      end
      object Q_mat: TfrxFIBQuery
        UserName = 'Q_mat'
        CloseDataSource = True
        BCDToCurrency = False
        Master = fr1.Q1
        IgnoreDupParams = False
        Params = <
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'SELECT wm.CODE, '
          '       wm.WORKSPECLIST, '
          '       wm.DATA, '
          '       wm.KONTRAGENT, '
          '       wm.SERVISWORK, '
          '       wm.HOUSE, '
          '       wm.ADDR, '
          '       --wm.SERVISMATERIAL, sm.name MatName,'
          '       wm.CLASSMAT, TRIM(c.FULLNAME) MatName,'
          '       c.ed,'
          '       wm.QUANTITY, '
          '       wm.PRICE, '
          '       wm.NOTE, '
          '       wm.USERNAME, '
          '       wm.LASTTIME'
          'FROM WORKSPECMATERIAL wm'
          'left outer join SERVISMATERIAL sm on sm.code=wm.servismaterial'
          'left outer join CLASSMAT C on C.CODE = wm.CLASSMAT'
          'where wm.WORKSPECLIST=:mas_code  ')
        Database = fr1.fdb1
        pLeft = 20
        pTop = 132
        Parameters = <
          item
            Name = 'mas_code'
            DataType = ftUnknown
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 113.385900000000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          Align = baLeft
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 94.488250000000000000
          Top = 37.795300000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[Q1."KONTRNAME"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Top = 57.472480000000010000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1053#1072#1088#1103#1076' '#8470)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 68.031540000000000000
          Top = 57.448818900000010000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[Q1."CODE"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 105.519790000000000000
          Top = 57.448818900000010000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 128.196970000000000000
          Top = 57.448818900000010000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[Q1."D1"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Top = 76.370130000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 94.488250000000000000
          Top = 76.346456690000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[<Q1."STREETNAME">] [<Q1."NOMER">]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 68.031540000000000000
        Top = 148.000000000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo6: TfrxMemoView
          Width = 71.811070000000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 71.811028500000000000
          Width = 173.858380000000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 245.669408500000000000
          Width = 291.401574800000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090' ('#1084#1077#1089#1090#1086')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 537.149970000000000000
          Width = 34.015770000000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076'. '#1080#1079#1084'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 571.165740000000000000
          Width = 52.913420000000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083'-'#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 624.220474880000000000
          Width = 93.732281020000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = 15000804
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090'-'#1090#1100' '#1087#1083#1072#1090#1085#1086#1081' '#1091#1089#1083#1091#1075#1080' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 236.000000000000000000
        Width = 718.110700000000000000
        DataSet = fr1.Q1
        DataSetName = 'Q1'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Width = 71.811023622047210000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'DATA'
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."DATA"]')
          ParentFont = False
        end
        object Q1WORKNAME: TfrxMemoView
          Left = 71.811023620000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'WORKNAME'
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."WORKNAME"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 245.669291340000000000
          Width = 291.401574803150000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NOTE'
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."NOTE"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 537.070866140000000000
          Width = 34.015748031496100000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'ED'
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."ED"]')
          ParentFont = False
        end
        object Q1QUANTITY: TfrxMemoView
          Left = 571.086614170000000000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'QUANTITY'
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Q1."QUANTITY"]')
          ParentFont = False
        end
        object Q1PLATWORK: TfrxMemoView
          Left = 624.377952760000000000
          Width = 93.732283460000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'PRICE'
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Q1."PRICE"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 120.944960000000000000
        Top = 356.000000000000000000
        Width = 718.110700000000000000
        object Memo23: TfrxMemoView
          Top = 11.338590000000010000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100':')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Top = 30.015770000000090000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1044#1080#1088#1077#1082#1090#1086#1088' '#1055#1054)
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 147.401670000000000000
          Top = 30.236240000000010000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[varDir]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Top = 74.063080000000080000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #1052#1072#1089#1090#1077#1088' ('#1080#1085#1078#1077#1085#1077#1088') '#1055#1054)
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 151.181200000000000000
          Top = 74.063079999999960000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[varManager]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897637795275600000
        Top = 316.000000000000000000
        Width = 718.110700000000000000
        DataSet = fr1.Q_mat
        DataSetName = 'Q_mat'
        RowCount = 0
        object Q_matMATNAME: TfrxMemoView
          Left = 75.220428500000000000
          Width = 294.803193540000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MATNAME'
          DataSet = fr1.Q_mat
          DataSetName = 'Q_mat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q_mat."MATNAME"]')
          ParentFont = False
        end
        object Q_matPRICE: TfrxMemoView
          Left = 506.456692910000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRICE'
          DataSet = fr1.Q_mat
          DataSetName = 'Q_mat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Q_mat."PRICE"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 585.826771650000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo5OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 370.023622050000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ED'
          DataSet = fr1.Q_mat
          DataSetName = 'Q_mat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q_mat."ED"]')
          ParentFont = False
        end
        object Q_matQUANTITY: TfrxMemoView
          Left = 426.717070000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'QUANTITY'
          DataSet = fr1.Q_mat
          DataSetName = 'Q_mat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Q_mat."QUANTITY"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Description = 'fghgfh'
        Height = 18.897637795275600000
        Top = 276.000000000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Left = 506.394250000000000000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 13434828
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090'-'#1090#1100' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 585.764380000000000000
          Width = 132.283550000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo5OnBeforePrint'
          ShowHint = False
          Color = 13434828
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1097#1072#1103' '#1089#1090'-'#1090#1100' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 75.283860000000000000
          Width = 294.803340000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 13434828
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 369.992580000000000000
          Width = 56.692950000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 13434828
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076'. '#1080#1079#1084'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 426.685530000000000000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 13434828
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083'-'#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object Xexp1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 404
    Top = 184
  end
  object wexp1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 432
    Top = 184
  end
end
