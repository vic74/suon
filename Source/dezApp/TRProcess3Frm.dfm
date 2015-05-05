object TRProcess3Form: TTRProcess3Form
  Left = 0
  Top = 0
  HelpContext = 113
  Caption = #1057#1084#1077#1090#1072
  ClientHeight = 603
  ClientWidth = 938
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
    Top = 28
    Width = 938
    Height = 575
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 21
      Top = 351
      Width = 250
      Height = 200
      TabOrder = 1
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_TRFACT3
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv1NSUMMA
          end
          item
            Kind = skCount
            Column = clv1SNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
        end
        object clv1DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 176
        end
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 33
        end
        object clv1MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MNAME'
          Width = 129
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Visible = False
          VisibleForCustomization = False
          Width = 127
        end
        object clv1MANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1FIO: TcxGridDBColumn
          Caption = #1054#1090#1074'. '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'FIO'
          Width = 127
        end
        object clv1NCALC: TcxGridDBColumn
          Caption = #8470' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALC'
          Width = 83
        end
        object clv1NCALCDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALCDATE'
          Width = 80
        end
        object clv1NSUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1089#1084#1077#1090#1077
          DataBinding.FieldName = 'NSUMMA'
          Width = 85
        end
        object clv1NDOP: TcxGridDBColumn
          Caption = #8470' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'NDOP'
          Visible = False
          Width = 99
        end
        object clv1SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1088#1072#1073#1086#1090' '#1092#1072#1082#1090
          DataBinding.FieldName = 'SUMMA'
          Visible = False
          Width = 108
        end
        object clv1NOTE: TcxGridDBColumn
          DataBinding.FieldName = 'NOTE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1PLANCODE: TcxGridDBColumn
          DataBinding.FieldName = 'PLANCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SMANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'SMANAGER'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SFIO: TcxGridDBColumn
          Caption = #1057#1084#1077#1090#1095#1080#1082
          DataBinding.FieldName = 'SFIO'
          Width = 87
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 11
      Top = 29
      Width = 250
      Height = 200
      TabOrder = 0
      object v2: TcxGridDBTableView
        OnKeyUp = v2KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v2CellDblClick
        DataController.DataSource = src_TRFACT2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv2NSUMMA
          end
          item
            Kind = skCount
            Column = clv2SNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Options.Editing = False
          Width = 35
        end
        object clv2DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2ISPRINT: TcxGridDBColumn
          DataBinding.FieldName = 'ISPRINT'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = iml1
          Properties.Items = <
            item
              Description = #1088#1072#1089#1087#1077#1095#1072#1090#1072#1085
              ImageIndex = 0
              Value = 1
            end
            item
              Description = #1085#1077' '#1088#1072#1089#1087#1077#1095#1072#1090#1072#1085
              ImageIndex = 1
              Value = 0
            end>
          HeaderGlyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FEFEFEFDFDFD
            FBFBFBF8F8F8F6F6F6F4F4F4F3F3F3F3F3F3F3F3F3F3F3F3F4F4F4F5F5F5F8F8
            F8FAFAFAFCFCFCFEFEFEF9F9F9F5F5F5EEEEEEE0DEDBD5D0CBCCC7C3C5C0BBC0
            BBB7BFBAB6C1BDB8C7C2BECFCAC6D7D2CDE8E8E8F1F1F1F7F7F7FAFAFAF4F4F4
            ECECECC2B8AFC2B5A9CDC3BACCC2BACCC2BACCC2B9CBC2B9CBC1B9CBC1B8A795
            84DDDDDDF0F0F0F8F8F8FFFFFFF7F7F7ECECECBEBBB8A29A92B5B5B5B5B5B5B6
            B6B6B6B6B6B6B6B6B6B6B6B6B6B6968A80E4E4E4F4F4F4FFFFFFFEFEFEE9E9E9
            E9E9E99595955B5B5A5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5C5B
            5BDADADAE4E4E4FEFEFEFFFFFFE2E2E2DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
            DDDDDDDDDDDDDDDDDDDDDDDDDDDD76BC95B6CCC0D9D9D9FDFDFDFFFFFFDDDDDD
            D0CECDC5B6ACC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAB7AC
            9EC6BCB4D0D0D0FFFFFFFFFFFFF2F2F2BAAEA693634296674696674696674696
            6746966746966746966746966746966746A18069E1E1E1FFFFFFFFFFFFFFFFFF
            F0F0F0BDB2AA9D948ED2D1D1D2D1D1D2D1D1D2D1D1D2D1D1D2D1D1C0BEBDA99C
            92E2E0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F2F2F2F2F2F2F2
            F2F2F2F2F2F2F2F2F2F2F2ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF6F6F6F1F1F1F0F0F0F1F1F1F2F2F2F5F5F5F6F6F6EFEFEFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF6F6F6EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEECECECFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Options.Editing = False
          Width = 25
          IsCaptionAssigned = True
        end
        object clv2SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Options.Editing = False
          Width = 149
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 40
        end
        object clv2MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2MNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MNAME'
          Options.Editing = False
          Width = 117
        end
        object clv2KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2KNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KNAME'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
          Width = 130
        end
        object clv2MANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2FIO: TcxGridDBColumn
          Caption = #1054#1090#1074'. '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'FIO'
          Options.Editing = False
          Width = 90
        end
        object clv2NCALC: TcxGridDBColumn
          Caption = #8470' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALC'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ValidateOnEnter = True
          Properties.OnEditValueChanged = clv2NCALCPropertiesEditValueChanged
          Options.Editing = False
          Width = 73
        end
        object clv2NCALCDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'NCALCDATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Properties.OnEditValueChanged = clv2NCALCDATEPropertiesEditValueChanged
          Options.Editing = False
          Width = 79
        end
        object clv2NSUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1089#1084#1077#1090#1077
          DataBinding.FieldName = 'NSUMMA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          Properties.QuickClose = True
          Properties.OnEditValueChanged = clv2NSUMMAPropertiesEditValueChanged
          Options.Editing = False
          Width = 88
        end
        object clv2NDOP: TcxGridDBColumn
          Caption = #8470' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'NDOP'
          Visible = False
          Options.Editing = False
          Width = 81
        end
        object clv2SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1088#1072#1073#1086#1090' '#1092#1072#1082#1090
          DataBinding.FieldName = 'SUMMA'
          Visible = False
          Options.Editing = False
          Width = 111
        end
        object clv2NOTE: TcxGridDBColumn
          DataBinding.FieldName = 'NOTE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2PLANCODE: TcxGridDBColumn
          DataBinding.FieldName = 'PLANCODE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv2DDate: TcxGridDBColumn
          DataBinding.FieldName = 'DDate'
          Visible = False
        end
        object clv2DNum: TcxGridDBColumn
          DataBinding.FieldName = 'DNum'
          Visible = False
        end
        object clv2DPLACE: TcxGridDBColumn
          DataBinding.FieldName = 'DPLACE'
          Visible = False
        end
        object clv2SMETA: TcxGridDBColumn
          Caption = #1060#1072#1081#1083' '#1082#1072#1083#1100#1082#1091#1083#1103#1094#1080#1080
          DataBinding.FieldName = 'SMETA'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderGlyph.Data = {
            1A020000424D1A0200000000000036000000280000000E0000000B0000000100
            180000000000E4010000C40E0000C40E00000000000000000000C0C0C0000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000008080808080808080808080808080808080808080808080808080
            80808080808080808080808080000000000080808000FFFFC0C0C000FFFFC0C0
            C000FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFF80808000000000008080
            8000000000FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFF00
            0000808080000000000080808000FFFF00000000FFFFC0C0C000FFFF00000000
            FFFFC0C0C000FFFF00000000FFFF8080800000000000808080FFFFFF00FFFF00
            000000FFFF00000000FFFF00000000FFFF00000000FFFFC0C0C0808080000000
            000080808000FFFFC0C0C000FFFF00000000FFFFC0C0C000FFFF00000000FFFF
            C0C0C000FFFF8080800000000000808080FFFFFF00FFFF00000000FFFFC0C0C0
            00FFFFC0C0C000FFFF00000000FFFFC0C0C0808080000000000080808000FFFF
            00000000FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFF00000000FFFF8080
            80000000000080808000000000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FFFFFFFF00FFFF00000080808000000000008080808080808080808080808080
            80808080808080808080808080808080808080808080808080C0C0C00000}
          HeaderGlyphAlignmentHorz = taCenter
          HeaderHint = #1060#1072#1081#1083' '#1082#1072#1083#1100#1082#1091#1083#1103#1094#1080#1080
          Options.ShowCaption = False
          Width = 25
        end
        object clv2Y: TcxGridDBColumn
          Caption = #1055#1083#1072#1085
          DataBinding.FieldName = 'Y'
          Visible = False
        end
        object clv2FIRM: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'FIRM'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = cmDb.src_FIRM
          Options.Editing = False
          Width = 157
        end
      end
      object l2: TcxGridLevel
        GridView = v2
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
    object itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1057#1084#1077#1090#1072
      CaptionOptions.Layout = clTop
      Parent = grp1
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grlc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object grlc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'F3 -'#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
      LayoutLookAndFeel = lcl1
      Parent = grlc1Group3
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1077' '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1077
      CaptionOptions.Layout = clTop
      Parent = grlc1Group2
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grlc1Group1: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 17
      ButtonOptions.Buttons = <>
      Index = -1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 576
    Top = 128
    object lcl1: TdxLayoutCxLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = [fsBold, fsItalic]
      GroupOptions.CaptionOptions.UseDefaultFont = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 548
    Top = 128
  end
  object ds_TRFACT2: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,'
      
        '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,TF.DPLACE, TF.D' +
        'Date,'
      '  TF.DNum,TF.ISPRINT,'
      
        '  K.NAME KNAME, TF.MANAGER,(P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO' +
        ','
      '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,'
      
        '  TF.PLANCODE, TP.Y ,TF.STATE, TF.smanager, (P1.F || '#39' '#39' || P1.I' +
        ' || '#39' '#39' || P1.O) SFIO,'
      '  IIF(TF.SMETA is null,0,1) SMETA, TF.FIRM'
      'from TRFACT TF'
      ' left outer join HOUSE H on H.CODE = TF.HOUSE'
      ' left outer join STREET S on S.CODE = H.STREET'
      ' left outer join MLIST M on M.CODE = TF.MLIST'
      ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT'
      ' left outer join WORKER W on W.CODE = TF.MANAGER'
      ' left outer join WORKER W1 on W1.CODE = TF.SMANAGER'
      ' left outer join PIPLE P on P.CODE = W.PIPLE'
      ' left outer join PIPLE P1 on P1.CODE = W1.PIPLE'
      ' left outer join TRPLAN TP ON TP.CODE = TF.PLANCODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Container = cmDb.FibContainer1
    Left = 72
    Top = 128
  end
  object src_TRFACT2: TDataSource
    DataSet = ds_TRFACT2
    Left = 101
    Top = 128
  end
  object ds_TRFACT3: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,'
      '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,'
      
        '  K.NAME KNAME, TF.MANAGER,(P.F || '#39' '#39' || P.I || '#39' '#39' || P.O) FIO' +
        ','
      '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,'
      
        '  TF.PLANCODE,TF.STATE, TF.smanager, (P1.F || '#39' '#39' || P1.I || '#39' '#39 +
        ' || P1.O) SFIO,'
      '  TF.FIRM'
      'from TRFACT TF'
      ' left outer join HOUSE H on H.CODE = TF.HOUSE'
      ' left outer join STREET S on S.CODE = H.STREET'
      ' left outer join MLIST M on M.CODE = TF.MLIST'
      ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT'
      ' left outer join WORKER W on W.CODE = TF.MANAGER'
      ' left outer join WORKER W1 on W1.CODE = TF.SMANAGER'
      ' left outer join PIPLE P on P.CODE = W.PIPLE'
      ' left outer join PIPLE P1 on P1.CODE = W1.PIPLE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Container = cmDb.FibContainer1
    Left = 472
    Top = 176
  end
  object src_TRFACT3: TDataSource
    DataSet = ds_TRFACT3
    Left = 501
    Top = 176
  end
  object fr1: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    OldStyleProgress = True
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40813.633144513900000000
    ReportOptions.LastChange = 40833.877290937500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 154
    Top = 192
    Datasets = <
      item
        DataSet = fr1.Q1
        DataSetName = 'Q1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object fdb: TfrxFIBDatabase
        DatabaseName = '192.168.1.6:/home/share/base/DEZ.FDB'
        LoginPrompt = False
        Params.Strings = (
          'user_name=sysdba'
          'password=masterkey'
          'sql_role_name=')
        SQLDialect = 3
        pLeft = 20
        pTop = 28
      end
      object Q1: TfrxFIBQuery
        UserName = 'Q1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'cod'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'SELECT df.CODE, '
          '       df.TRFACT,'
          '       tf.house,S.NAME SNAME,H.NOMER,M.NAME MNAME,'
          '       tf.mlist,'
          '       df.WNOTE, '
          '       df.ED, '
          '       df.QUANTITY, '
          '       df.NOTE'
          'FROM TRDEFECTVED df'
          'left outer join trfact tf on tf.code=df.trfact'
          ' left outer join HOUSE H on H.CODE = TF.HOUSE'
          ' left outer join STREET S on S.CODE = H.STREET'
          ' left outer join MLIST M on M.CODE = TF.MLIST'
          'where tf.code=:cod             ')
        Database = fr1.fdb
        pLeft = 20
        pTop = 76
        Parameters = <
          item
            Name = 'cod'
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
      object ReportTitle1: TfrxReportTitle
        Height = 211.653680000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Rich1: TfrxRichView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 204.094620000000000000
          ShowHint = False
          StretchMode = smActualHeight
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574323034205461686F6D613B7D7B5C66315C
            666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C6765
            6E657261746F7220526963686564323020362E332E393630307D5C766965776B
            696E64345C756331200D0A5C706172645C71725C66305C667331365C7061720D
            0A5C7061720D0A0D0A5C706172645C2763655C2763655C27636520225C276334
            5C2763355C276337205C2763615C2765305C2765625C2765385C2765645C2765
            385C2765645C2766315C2765615C2765655C2765335C276565205C2766305C27
            65305C2765395C2765655C2765645C276530225C7061720D0A5C625C66315C66
            7332305C6C616E67313033335C7061720D0A0D0A5C706172645C71635C66305C
            667332345C6C616E67313034395C2763345C2765355C2766345C2765355C2765
            615C2766325C2765645C2765305C276666205C2765325C2765355C2765345C27
            65655C2765635C2765655C2766315C2766325C2766635C66315C6C616E673130
            33332020205C66305C6C616E67313034395C2762395C66315C6C616E67313033
            33205B7661724E6F6D5D205C66305C6C616E67313034395C2765655C27663220
            5C66315C6C616E6731303333205B766172446174655D5C66305C6C616E673130
            34395C7061720D0A0D0A5C706172645C62305C667331365C7061720D0A5C7061
            720D0A5C2765615C2765655C2765635C2765385C2766315C2766315C2765385C
            276666205C276532205C2766315C2765655C2766315C2766325C2765305C2765
            325C2765353A5C625C66315C6C616E67313033332020205B7661724973705D20
            5C66305C6C616E67313034395C7061720D0A5C62305C7061720D0A5C2765665C
            2766305C2765655C2765385C2765375C2765325C2765355C2765625C27653020
            5C2765655C2766315C2765635C2765655C2766325C276630205C2765655C2765
            315C2766615C2765355C2765615C2766325C2765303A5C625C66315C6C616E67
            3130333320205B766172416464725D20205C62305C66305C6C616E6731303439
            5C7061720D0A5C7061720D0A5C7061720D0A5C2763665C2766305C2765385C27
            66375C2765385C2765645C276662205C2766305C2765355C2765635C2765655C
            2765645C2766325C2765303A5C625C66315C6C616E673130333320205B766172
            50726963685D5C66305C6C616E67313034395C7061720D0A5C62305C7061720D
            0A5C7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 34.015748031496100000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Align = baLeft
          Width = 30.236220470000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 30.236220470000000000
          Width = 309.921460000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090' '#1080' '#1092#1086#1088#1084#1091#1083#1072' '#1087#1086#1076#1089#1095#1077#1090#1072' '#1086#1073#1098#1077#1084#1086#1074)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 340.157680470000000000
          Width = 37.795300000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076'. '#1080#1079#1084'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 377.952980470000000000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Align = baWidth
          Left = 464.882170470000000000
          Width = 253.228529530000000000
          Height = 34.015748030000000000
          ShowHint = False
          Color = 14211288
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        DataSet = fr1.Q1
        DataSetName = 'Q1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 30.236240000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'WNOTE'
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."WNOTE"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Align = baLeft
          Left = 377.953000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'QUANTITY'
          DataSet = fr1.Q1
          DataSetName = 'Q1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Q1."QUANTITY"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          Left = 464.882190000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
      end
      object PageFooter1: TfrxPageFooter
        Height = 75.590600000000000000
        Top = 427.086890000000000000
        Width = 718.110700000000000000
        object Rich2: TfrxRichView
          Align = baClient
          Width = 718.110700000000000000
          Height = 75.590600000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574323034205461686F6D613B7D7B5C66315C
            666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C6765
            6E657261746F7220526963686564323020362E332E393630307D5C766965776B
            696E64345C756331200D0A5C706172645C66305C667331365C2763385C276631
            5C2765665C2765655C2765625C2765645C2765385C2766325C2765355C276562
            5C2766633A5C625C66315C6C616E67313033332020205B7661724973705D205C
            62305C66305C6C616E67313034395C7061720D0A5C7061720D0A5C2763665C27
            66305C2765655C2765325C2765355C2766305C2765385C2765623A205C276538
            5C2765645C2765365C2765355C2765645C2765355C2766302D5C2765615C2766
            335C2766305C2765305C2766325C2765655C276630205C2763655C2763655C27
            636520225C2763345C2763355C276337205C2763615C2765305C2765625C2765
            385C2765645C2765385C2765645C2766315C2765615C2765655C2765335C2765
            65205C2766305C2765305C2765395C2765655C2765645C276530223A5C706172
            0D0A7D0D0A00}
        end
      end
    end
  end
  object iml1: TcxImageList
    FormatVersion = 1
    DesignInfo = 12583040
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000010101010101
          01020101010401010107010101090101010B0101010C0101010C0101010C0101
          010C0101010B0101010A01010107010101050101010301010101010101060101
          010B0303031314110F32231E1A4D231E1955221D195C221D1960221D1961221D
          195F221D1859221D1952221D194A0404041B0202020F01010108010101050101
          010B0101011439302776C2B5A9FFCDC3BAFFCCC2BAFFCCC2BAFFCCC2B9FFCBC2
          B9FFCBC1B9FFCBC1B8FF988574EF020202230101010F01010107000000002525
          252CBDBDBDD0B8B5B2F8A29A92FFB5B5B5FFB5B5B5FFB6B6B6FFB6B6B6FFB6B6
          B6FFB6B6B6FFB6B6B6FF95897EFDCECECEE85454545F00000000010101019393
          93A9E9E9E9FF959595FF5B5B5AFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
          5EFF5E5E5EFF5E5E5EFF5C5B5BFFDADADAFFDADADAF500000001000000009393
          93B0DDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFF76BC95FFB6CCC0FFD6D6D6FC00000002000000007777
          7798D0CECDFFC5B6ACFFC4B5AAFFC4B5AAFFC4B5AAFFC4B5AAFFC4B5AAFFC4B5
          AAFFC4B5AAFFC4B5AAFFB7AC9EFFC6BCB4FFB7B7B7E600000000000000001919
          1926AB9E97EF936342FF966746FF966746FF966746FF966746FF966746FF9667
          46FF966746FF966746FF966746FFA18069FF4848486500000000000000000000
          00001B1B1B2A766A62B7978F89F9D2D1D1FFD2D1D1FFD2D1D1FFD2D1D1FFD2D1
          D1FFD2D1D1FFBFBDBCFE807268D5383736550000000000000000000000000000
          000000000000000000003333333EF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
          F2FFF2F2F2FFC2C2C2D400000000000000000000000000000000000000000000
          000000000000000000003434343DF1F1F1FFF0F0F0FFF1F1F1FFF2F2F2FFF5F5
          F5FFF6F6F6FFC5C5C5D500000000000000000000000000000000000000000000
          000000000000000000003131313CF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFBEBEBED300000000000000000000000000000000000000000000
          000000000000000000001C1C1C24868686968686869686868696868686968686
          8696868686966B6B6B7D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object brm1: TdxBarManager
    AllowReset = False
    AutoDockColor = False
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
    DockColor = clBtnFace
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    ShowHelpButton = True
    ShowShortCutInHint = True
    SunkenBorder = True
    UseSystemFont = True
    Left = 472
    Top = 128
    DockControlHeights = (
      0
      0
      28
      0)
    object bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 872
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_printS'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_edSum'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cbb1'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 236
          Visible = True
          ItemName = 'cbb_Firm'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_SPrint'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_printS: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1089#1084#1077#1090#1099
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1089#1084#1077#1090#1099
      ScreenTip = tip1
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000010101010101
        01020101010401010107010101090101010B0101010C0101010C0101010C0101
        010C0101010B0101010A01010107010101050101010301010101010101060101
        010B0303031314110F32231E1A4D231E1955221D195C221D1960221D1961221D
        195F221D1859221D1952221D194A0404041B0202020F01010108010101050101
        010B0101011439302776C2B5A9FFCDC3BAFFCCC2BAFFCCC2BAFFCCC2B9FFCBC2
        B9FFCBC1B9FFCBC1B8FF988574EF020202230101010F01010107000000002525
        252CBDBDBDD0B8B5B2F8A29A92FFB5B5B5FFB5B5B5FFB6B6B6FFB6B6B6FFB6B6
        B6FFB6B6B6FFB6B6B6FF95897EFDCECECEE85454545F00000000010101019393
        93A9E9E9E9FF959595FF5B5B5AFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
        5EFF5E5E5EFF5E5E5EFF5C5B5BFFDADADAFFDADADAF500000001000000009393
        93B0DDDDDDFFDDDDDDFFD4DADEFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
        DDFFDDDDDDFFDDDDDDFF76BC95FFB6CCC0FFD6D6D6FC00000002000000007777
        7798D0CECDFFC5B6ACFF85B6C3FFB7B2AEFFC4B5AAFFC4B5AAFFC4B5AAFFC4B5
        AAFFC4B5AAFFC4B5AAFFB7AC9EFFC6BCB4FFB7B7B7E600000000000000001919
        1926AB9E97EF936342FF5A878CFF4D9396FF966746FF966746FF966746FF9667
        46FF966746FF966746FF966746FFA18069FF4848486500000000000000000000
        00001B1B1B2A766A62B727CEDAFB16CBEEFFBCC5CAFFD2D1D1FFD2D1D1FFD2D1
        D1FFD2D1D1FFBFBDBCFE807268D5383736550000000000000000000000000000
        000000000000000000000986939B3EC7EDFFABD4ECFFF2F2F2FFF2F2F2FFF2F2
        F2FFF2F2F2FFC2C2C2D400000000000000000000000000000000000000000000
        000000000000045363680997ADB61ECAF4FFE5E7E8FFF1F1F1FFF2F2F2FFF5F5
        F5FFF6F6F6FFC5C5C5D500000000000000000000000000000000000000000000
        00000000000004414A4E11EEF0FF14C8F7FFABD4E7FFF0F0F0FFF0F0F0FFF0F0
        F0FFF0F0F0FFBEBEBED300000000000000000000000000000000000000000000
        00000000000001141E1F11E7F2FF4299B9D14E71859986868696868686968686
        8696868686966B6B6B7D00000000000000000000000000000000000000000000
        000000000000000000000EC5E2EB0A84AABA0101010100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000002212E2F098ABBC30101010900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000001060A0A0103040700000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btn_printSClick
    end
    object btn_edSum: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1085#1080#1077' / '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1085#1080#1077' / '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      ScreenTip = tip_sEdt
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001822275D23384396233843962338439623384396233843962338
        4396233843962236409414171864020202030000000000000000000000000000
        0000070E111D558CA8FBA1BDCBFFACC3CFFFADC3CEFFB1C7D2FFB3C8D3FFB5C9
        D4FFB6CAD5FFB8CBD6FF6A808BDC070707130000000000000000000000000000
        00000D181D30ADC3CFFFF3F3F3FFF0EEEDFFF4F3F3FFF5F5F5FFF5F5F5FFF5F5
        F5FFF5F5F5FFF6F6F6FF8C9EA8E7080808140000000000000000000000000000
        00000D181D30BCCED9FFEBF0F5FFF0F4F9FFEBF0F5FFF4F4F4FFF4F4F4FFF4F4
        F4FFF4F4F4FFF5F5F5FF8A9DA7E7080808140000000000000000000000000000
        00000D181E30BECFDAFFE5EDF6FFE5EFF8FFE8EEF3FFF2F2F2FFF2F2F2FFF2F2
        F2FFF3F3F3FFF4F4F4FF8A9DA7E7080808140000000000000000000000000000
        00000D181E30BDD1DDFFF7F8FAFFFCFCFCFFE9EEF3FFF0F0F0FFF0F0F0FFF0F0
        F0FFF1F1F1FFF2F2F2FF889CA7E7080808140000000000000000000000000000
        00000E191E30C1D3DDFFE1ECF6FFE5EFF8FFE4EBF1FFEEEEEEFFEEEEEEFFEFEF
        EFFFF0F0F0FFF1F1F1FF869BA6E7080808140000000000000000000000000000
        00000E191F30BCD1DEFFF9F9F9FFFBFBFBFFE8EDF1FFECECECFFECECECFFEDED
        EDFFEEEEEEFFF0F0F0FF849AA5E7080808140000000000000000000000000000
        00000F1A1F30C0D3DEFFD7E2F6FFDBE4F8FFE2E9EEFFEAEAEAFFEAEAEAFFEBEB
        EBFFEDEDEDFFEFEFEFFF849AA5E7080808140000000000000000000000000000
        00000F1A1F30BCD1DDFFD3D4FAFFD5D5FCFFE5EBEFFFE9E9E9FFE8E8E8FFEAEA
        EAFFECECECFFEFEFEFFF839AA6E7080808140000000000000000000000000000
        0000101B2030BCD1DDFFE3ECF5FFE4EEF7FFE2E8EEFFE9E9E9FFE8E8E8FFEAEA
        EAFFECECECFFEFEFEFFF829AA6E7080808140000000000000000000000000000
        0000101B2030BBD1DDFFEBF1F5FFEEF3F7FFE5EAEFFFEAEAEAFFE9E9E9FFEBEB
        EBFFEDEDEDFFEFEFEFFF829AA7E7080808140000000000000000000000000000
        00000E181C2B9ABED0FFB6CEDAFFB6CEDAFFBDC3C6FFC9C3C2FFCEC9C8FFC0C9
        CFFFB6CEDAFFB6CFDBFF6D8F9FE30505050C0000000000000000000000000000
        0000010101022F4C5A7A436B80A8436B80A8577788B88D8686DD988E8CF2426B
        7FA9436B80A840677BA219283043000000000000000000000000000000000000
        00000000000000000000000000000000000007070708726F6F875552516F0000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btn_edSumClick
    end
    object btn_SPrint: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      ScreenTip = tip_refresh
      Visible = ivAlways
      Glyph.Data = {
        42010000424D4201000000000000760000002800000012000000110000000100
        040000000000CC00000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFF444444
        FFFFFF000000F24FF422222244FFFF000000F22442222222224FFF000000F222
        222AAAAA2224FF000000F22222AFFFFFA2224F000000F22222FFFFFFFA224F00
        0000F222222FFFFFFA444F000000FAAAAAAAFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFF444444000000FA444FFFFFFA222224000000FA22
        4FFFFFFFA22224000000FFA224FFFFF4422224000000FFA22244444222222400
        0000FFFA2222222222AA24000000FFFFAA222222AAFFAF000000FFFFFFAAAAAA
        FFFFFF000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_SPrintClick
    end
    object cbb_Firm: TcxBarEditItem
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Category = 0
      Hint = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = cmDb.src_FIRM
    end
    object cbb1: TcxBarEditItem
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object cbb2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ListColumns = <>
    end
  end
  object stip1: TdxBarScreenTipRepository
    Left = 504
    Top = 128
    object tip1: TdxBarScreenTip
      Header.Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FEFEFEFDFDFD
        FBFBFBF8F8F8F6F6F6F4F4F4F3F3F3F3F3F3F3F3F3F3F3F3F4F4F4F5F5F5F8F8
        F8FAFAFAFCFCFCFEFEFEF9F9F9F5F5F5EEEEEEE0DEDBD5D0CBCCC7C3C5C0BBC0
        BBB7BFBAB6C1BDB8C7C2BECFCAC6D7D2CDE8E8E8F1F1F1F7F7F7FAFAFAF4F4F4
        ECECECC2B8AFC2B5A9CDC3BACCC2BACCC2BACCC2B9CBC2B9CBC1B9CBC1B8A795
        84DDDDDDF0F0F0F8F8F8FFFFFFF7F7F7ECECECBEBBB8A29A92B5B5B5B5B5B5B6
        B6B6B6B6B6B6B6B6B6B6B6B6B6B6968A80E4E4E4F4F4F4FFFFFFFEFEFEE9E9E9
        E9E9E99595955B5B5A5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5C5B
        5BDADADAE4E4E4FEFEFEFFFFFFE2E2E2DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDD76BC95B6CCC0D9D9D9FDFDFDFFFFFFDDDDDD
        D0CECDC5B6ACC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAC4B5AAB7AC
        9EC6BCB4D0D0D0FFFFFFFFFFFFF2F2F2BAAEA693634296674696674696674696
        6746966746966746966746966746966746A18069E1E1E1FFFFFFFFFFFFFFFFFF
        F0F0F0BDB2AA9D948ED2D1D1D2D1D1D2D1D1D2D1D1D2D1D1D2D1D1C0BEBDA99C
        92E2E0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F2F2F2F2F2F2F2
        F2F2F2F2F2F2F2F2F2F2F2ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F6F6F1F1F1F0F0F0F1F1F1F2F2F2F5F5F5F6F6F6EFEFEFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F6F6EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEECECECFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Description.Text = #1055#1077#1095#1072#1090#1100' '#1076#1077#1092#1077#1082#1090#1085#1086#1081' '#1074#1077#1076#1086#1084#1086#1089#1090#1080
      UseStandardFooter = True
    end
    object tip_sEdt: TdxBarScreenTip
      Header.Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADA000000000000ADAD0FFFFFFFFFF0DADA0F00F00000F0ADAD0FFFFFFFFFF0
        DADA0F00F00000F0ADAD0FFFFFFFFFF0DADA0FFFFFFF0FF0ADAD0FF0FFF080F0
        DAD40F080F0808000D440FF08080808880440000080808888844DADAD0808888
        8844ADADAD0888888044DADADAD000000A44ADADADADADADADAD}
      Description.Text = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1089#1084#1077#1090#1091
      UseStandardFooter = True
    end
    object tip_refresh: TdxBarScreenTip
      Header.Glyph.Data = {
        42010000424D4201000000000000760000002800000012000000110000000100
        040000000000CC000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFF444444
        FFFFFF000000F24FF422222244FFFF000000F22442222222224FFF000000F222
        222AAAAA2224FF000000F22222AFFFFFA2224F000000F22222FFFFFFFA224F00
        0000F222222FFFFFFA444F000000FAAAAAAAFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFF444444000000FA444FFFFFFA222224000000FA22
        4FFFFFFFA22224000000FFA224FFFFF4422224000000FFA22244444222222400
        0000FFFA2222222222AA24000000FFFFAA222222AAFFAF000000FFFFFFAAAAAA
        FFFFFF000000}
      Description.Text = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
    end
  end
end
