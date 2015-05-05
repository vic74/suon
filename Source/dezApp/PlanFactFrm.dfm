object PlanFactForm: TPlanFactForm
  Left = 0
  Top = 0
  ActiveControl = edt_year
  Caption = #1058#1077#1082#1091#1097#1080#1081' '#1088#1077#1084#1086#1085#1090'. '#1042#1074#1086#1076' '#1092#1072#1082#1090#1072'.'
  ClientHeight = 528
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LControl: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 713
    Height = 528
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object edt_year: TcxMaskEdit
      Left = 34
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
      Left = 131
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
      Properties.OnChange = StreetPropertiesChange
      Properties.OnEditValueChanged = cbb_streetPropertiesEditValueChanged
      Style.HotTrack = False
      Style.Shadow = False
      TabOrder = 1
      OnKeyDown = cbb_streetKeyDown
      Width = 200
    end
    object btn_exec: TcxButton
      Left = 433
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
    object cbb_House: TcxLookupComboBox
      Left = 362
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
      Properties.OnInitPopup = HousePropertiesInitPopup
      EditValue = 0
      Style.HotTrack = False
      TabOrder = 2
      Width = 65
    end
    object grd1: TcxGrid
      Left = 10
      Top = 59
      Width = 620
      Height = 215
      Align = alTop
      TabOrder = 4
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_Plan
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1Y: TcxGridDBColumn
          DataBinding.FieldName = 'Y'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KONTNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KONTNAME'
          HeaderAlignmentHorz = taCenter
          Width = 89
        end
        object clv1STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          HeaderAlignmentHorz = taCenter
          Width = 44
        end
        object clv1MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MLISTNAME: TcxGridDBColumn
          Caption = #1056#1072#1073#1086#1090#1072
          DataBinding.FieldName = 'MLISTNAME'
          HeaderAlignmentHorz = taCenter
          Width = 151
        end
        object clv1SUMY: TcxGridDBColumn
          Caption = #1054#1088#1080#1077#1085#1090#1080#1088#1086#1074#1086#1095#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
          DataBinding.FieldName = 'SUMY'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SUM1: TcxGridDBColumn
          Caption = #1050#1074#1072#1088#1090#1072#1083' 1'
          DataBinding.FieldName = 'SUM1'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SUM2: TcxGridDBColumn
          Caption = #1050#1074#1072#1088#1090#1072#1083' 2'
          DataBinding.FieldName = 'SUM2'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SUM3: TcxGridDBColumn
          Caption = #1050#1074#1072#1088#1090#1072#1083' 3'
          DataBinding.FieldName = 'SUM3'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SUM4: TcxGridDBColumn
          Caption = #1050#1074#1072#1088#1090#1072#1083' 4'
          DataBinding.FieldName = 'SUM4'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SUMALL: TcxGridDBColumn
          DataBinding.FieldName = 'SUMALL'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SUMOST: TcxGridDBColumn
          DataBinding.FieldName = 'SUMOST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SUMFACT: TcxGridDBColumn
          DataBinding.FieldName = 'SUMFACT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FSUM1: TcxGridDBColumn
          Caption = #1082#1074#1072#1088#1090#1072#1083' 1'
          DataBinding.FieldName = 'FSUM1'
          HeaderAlignmentHorz = taCenter
        end
        object clv1FSUM2: TcxGridDBColumn
          Caption = #1082#1074#1072#1088#1090#1072#1083' 2'
          DataBinding.FieldName = 'FSUM2'
          HeaderAlignmentHorz = taCenter
        end
        object clv1FSUM3: TcxGridDBColumn
          Caption = #1082#1074#1072#1088#1090#1072#1083' 3'
          DataBinding.FieldName = 'FSUM3'
          HeaderAlignmentHorz = taCenter
        end
        object clv1FSUM4: TcxGridDBColumn
          Caption = #1082#1074#1072#1088#1090#1072#1083' 4'
          DataBinding.FieldName = 'FSUM4'
          HeaderAlignmentHorz = taCenter
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FIO: TcxGridDBColumn
          Caption = #1052#1077#1085#1077#1076#1078#1077#1088
          DataBinding.FieldName = 'FIO'
          HeaderAlignmentHorz = taCenter
          Width = 155
        end
        object clv1SHOWCODE: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWCODE'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 10
      Top = 318
      Width = 620
      Height = 200
      TabOrder = 5
      object v2: TcxGridDBTableView
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
        Navigator.Visible = True
        OnEditKeyDown = v2EditKeyDown
        DataController.DataSource = src_trfact
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2STATE: TcxGridDBColumn
          Caption = #1057#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'STATE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
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
          Properties.ListSource = src_state
          Properties.OnEditValueChanged = clv2STATEPropertiesEditValueChanged
          Width = 143
        end
        object clv2DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DATA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Properties.OnEditValueChanged = clv2DATAPropertiesEditValueChanged
          Width = 87
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2NCALC: TcxGridDBColumn
          Caption = #8470' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALC'
          Options.Editing = False
          Width = 74
        end
        object clv2NDOP: TcxGridDBColumn
          Caption = #8470' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'NDOP'
          Options.Editing = False
          Width = 92
        end
        object clv2SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1088#1072#1073#1086#1090' ('#1092#1072#1082#1090')'
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          Properties.OnEditValueChanged = clv2SUMMAPropertiesEditValueChanged
          Width = 84
        end
        object clv2FIO: TcxGridDBColumn
          Caption = #1052#1077#1085#1077#1076#1078#1077#1088
          DataBinding.FieldName = 'FIO'
          Visible = False
          VisibleForCustomization = False
          Width = 81
        end
        object clv2NSUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1089#1084#1077#1090#1077
          DataBinding.FieldName = 'NSUMMA'
          Options.Editing = False
          Width = 92
        end
        object clv2MANAGER: TcxGridDBColumn
          Caption = #1054#1090#1074'. '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'MANAGER'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              MinWidth = 0
              Width = 0
              FieldName = 'CODE'
            end
            item
              Width = 150
              FieldName = 'FIO'
            end
            item
              Width = 150
              FieldName = 'ROLENAME'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_manager
          Options.Editing = False
          Width = 148
        end
        object clv2NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Options.Editing = False
          Width = 213
        end
        object clv2PLANCODE: TcxGridDBColumn
          DataBinding.FieldName = 'PLANCODE'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grp_root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp1: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Parent = grp_root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_year: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = grp1
      Control = edt_year
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_street: TdxLayoutItem
      CaptionOptions.Text = #1059#1083#1080#1094#1072
      Parent = grp1
      Control = cbb_street
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_house: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      Parent = grp1
      Control = cbb_House
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1055#1083#1072#1085
      CaptionOptions.Layout = clTop
      Parent = grp_root
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl1: TdxLayoutSplitterItem
      AlignVert = avBottom
      CaptionOptions.Text = 'Splitter'
      Parent = grp_root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = #1060#1072#1082#1090
      CaptionOptions.Layout = clTop
      Parent = grp_root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object ds_street: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT Code, Name FROM Street'
      'ORDER BY Name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 48
    Top = 120
  end
  object src_street: TDataSource
    DataSet = ds_street
    Left = 77
    Top = 120
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 144
    Top = 104
    object laf1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
  object ds_House: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT Code, Nomer FROM House'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 48
    Top = 192
  end
  object src_House: TDataSource
    DataSet = ds_House
    Left = 77
    Top = 192
  end
  object ds_Plan: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TRPLAN'
      'SET '
      '    Y = :Y,'
      '    HOUSE = :HOUSE,'
      '    MLIST = :MLIST,'
      '    SUMY = :SUMY,'
      '    SUM1 = :SUM1,'
      '    SUM2 = :SUM2,'
      '    SUM3 = :SUM3,'
      '    SUM4 = :SUM4,'
      '    FSUM1 = :FSUM1,'
      '    FSUM2 = :FSUM2,'
      '    FSUM3 = :FSUM3,'
      '    FSUM4 = :FSUM4,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    MANAGER = :MANAGER,'
      '    SHOWCODE = :SHOWCODE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TRPLAN'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TRPLAN('
      '    CODE,'
      '    Y,'
      '    HOUSE,'
      '    MLIST,'
      '    SUMY,'
      '    SUM1,'
      '    SUM2,'
      '    SUM3,'
      '    SUM4,'
      '    FSUM1,'
      '    FSUM2,'
      '    FSUM3,'
      '    FSUM4,'
      '    KONTRAGENT,'
      '    MANAGER,'
      '    SHOWCODE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :Y,'
      '    :HOUSE,'
      '    :MLIST,'
      '    :SUMY,'
      '    :SUM1,'
      '    :SUM2,'
      '    :SUM3,'
      '    :SUM4,'
      '    :FSUM1,'
      '    :FSUM2,'
      '    :FSUM3,'
      '    :FSUM4,'
      '    :KONTRAGENT,'
      '    :MANAGER,'
      '    :SHOWCODE'
      ')')
    RefreshSQL.Strings = (
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
      'left outer join trfinplan tf on tf.y=tp.y and tf.house=tp.house'
      ''
      ''
      ''
      ''
      ' WHERE '
      '        TP.CODE = :OLD_CODE'
      '    ')
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
      'left outer join trfinplan tf on tf.y=tp.y and tf.house=tp.house'
      ''
      ''
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 224
    Top = 128
  end
  object src_Plan: TDataSource
    DataSet = ds_Plan
    Left = 253
    Top = 128
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_House
        Properties.Strings = (
          'Properties.DropDownWidth')
      end
      item
        Component = cbb_street
        Properties.Strings = (
          'Properties.DropDownWidth')
      end
      item
        Component = clv1CODE
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
        Component = clv1FSUM1
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1FSUM2
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1FSUM3
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1FSUM4
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
        Component = clv1KONTNAME
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
        Component = clv1MANAGER
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1MLIST
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1MLISTNAME
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1NOMER
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1SHOWCODE
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1STREET
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1STREETNAME
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1SUM1
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1SUM2
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1SUM3
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1SUM4
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1SUMALL
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1SUMFACT
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1SUMOST
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1SUMY
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = clv1Y
        Properties.Strings = (
          'Visible'
          'Width')
      end
      item
        Component = edt_year
        Properties.Strings = (
          'Text')
      end
      item
        Component = itm_grd1
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = itm_grd2
        Properties.Strings = (
          'SizeOptions.Height'
          'SizeOptions.Width')
      end
      item
        Component = Owner
        Properties.Strings = (
          'WindowState')
      end
      item
        Component = v1
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.GroupByBox')
      end
      item
        Component = v2
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.GroupByBox')
      end>
    StorageName = 'prop1'
    Left = 592
    Top = 8
  end
  object ds_trfact: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TRFACT'
      'SET '
      '    DATA = :DATA,'
      '    HOUSE = :HOUSE,'
      '    MLIST = :MLIST,'
      '    KONTRAGENT = :KONTRAGENT,'
      '    MANAGER = :MANAGER,'
      '    NCALC = :NCALC,'
      '    NDOP = :NDOP,'
      '    NSUMMA = :NSUMMA,'
      '    STATE = :STATE,'
      '    SUMMA = :SUMMA,'
      '    NOTE = :NOTE,'
      '    PLANCODE = :PLANCODE'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TRFACT'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TRFACT('
      '    CODE,'
      '    DATA,'
      '    HOUSE,'
      '    MLIST,'
      '    KONTRAGENT,'
      '    MANAGER,'
      '    NCALC,'
      '    NDOP,'
      '    NSUMMA,'
      '    STATE,'
      '    SUMMA,'
      '    NOTE,'
      '    PLANCODE'
      ')'
      'VALUES('
      '    :CODE,'
      '    :DATA,'
      '    :HOUSE,'
      '    :MLIST,'
      '    :KONTRAGENT,'
      '    :MANAGER,'
      '    :NCALC,'
      '    :NDOP,'
      '    :NSUMMA,'
      '    :STATE,'
      '    :SUMMA,'
      '    :NOTE,'
      '    :PLANCODE'
      ')')
    RefreshSQL.Strings = (
      'SELECT tf.CODE, '
      '       tf.DATA, '
      '       tf.HOUSE, '
      '       tf.MLIST, '
      '       tf.KONTRAGENT, '
      '       tf.MANAGER,'
      '       (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio, '
      '       tf.NCALC, '
      '       tf.NDOP,'
      '       tf.nsumma,'
      '       tf.state,'
      '       tf.SUMMA, '
      '       tf.NOTE, '
      '       tf.PLANCODE'
      'FROM TRFACT tf'
      'left outer join worker w on w.code = tf.manager'
      'left outer join piple p on p.code = w.piple'
      ''
      ' WHERE '
      '        TF.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT tf.CODE, '
      '       tf.DATA, '
      '       tf.HOUSE, '
      '       tf.MLIST, '
      '       tf.KONTRAGENT, '
      '       tf.MANAGER,'
      '       (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio, '
      '       tf.NCALC, '
      '       tf.NDOP,'
      '       tf.nsumma,'
      '       tf.state,'
      '       tf.SUMMA, '
      '       tf.NOTE, '
      '       tf.PLANCODE'
      'FROM TRFACT tf'
      'left outer join worker w on w.code = tf.manager'
      'left outer join piple p on p.code = w.piple')
    AfterCancel = ds_trfactAfterCancel
    AfterInsert = ds_trfactAfterInsert
    BeforeDelete = ds_trfactBeforeDelete
    BeforeEdit = ds_trfactBeforeEdit
    BeforePost = ds_trfactBeforePost
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 96
    Top = 368
  end
  object src_trfact: TDataSource
    DataSet = ds_trfact
    Left = 125
    Top = 368
  end
  object ds_manager: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT W.CODE, (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       R.NAME RoleName'
      'FROM WORKER W'
      'left outer join piple p on p.code=w.piple'
      'left outer join roles r on r.code=w.arole'
      'where w.code<>9'
      'order by 3,2')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 216
    Top = 392
  end
  object src_manager: TDataSource
    DataSet = ds_manager
    Left = 244
    Top = 392
  end
  object m_state: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 32
    Top = 392
  end
  object src_state: TDataSource
    DataSet = m_state
    Left = 56
    Top = 392
  end
end
