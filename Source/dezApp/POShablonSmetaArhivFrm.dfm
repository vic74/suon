object POShablonSmetaArhivForm: TPOShablonSmetaArhivForm
  Left = 0
  Top = 0
  Caption = #1040#1088#1093#1080#1074' '#1096#1072#1073#1083#1086#1085#1086#1074' '#1089#1084#1077#1090
  ClientHeight = 396
  ClientWidth = 690
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 690
    Height = 396
    Align = alClient
    TabOrder = 0
    object grd1: TcxGrid
      Left = 24
      Top = 44
      Width = 642
      Height = 236
      TabOrder = 0
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = v1CellClick
        DataController.DataSource = src_ArcShbHead
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clv1MAKESHABLONSMETA
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
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 45
        end
        object clv1FIRM: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'FIRM'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = cmDb.src_FIRM
          Width = 91
        end
        object clv1MAKESHABLONSMETA: TcxGridDBColumn
          Caption = #1050#1086#1076' '#1089#1084#1077#1090#1099
          DataBinding.FieldName = 'MAKESMETASHABLON'
          Width = 61
        end
        object clv1M: TcxGridDBColumn
          DataBinding.FieldName = 'M'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NMONTH: TcxGridDBColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'NMONTH'
          Width = 84
        end
        object clv1Y: TcxGridDBColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          Width = 55
        end
        object clv1SRVDOG: TcxGridDBColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1HOUSESRV: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSESRV'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1SRV: TcxGridDBColumn
          DataBinding.FieldName = 'SRV'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'NOMER'
          Width = 84
        end
        object clv1KCODE: TcxGridDBColumn
          DataBinding.FieldName = 'KCODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KONTRAGENTNAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KONTRAGENTNAME'
          Width = 121
        end
        object clv1HOUSESRVNAME: TcxGridDBColumn
          Caption = #1059#1089#1083#1091#1075#1072' ('#1041#1044#1056'1)'
          DataBinding.FieldName = 'HOUSESRVNAME'
          Width = 115
        end
        object clv1SRVNAME: TcxGridDBColumn
          Caption = #1059#1089#1083#1091#1075#1072' ('#1087#1088#1086#1095#1077#1077')'
          DataBinding.FieldName = 'SRVNAME'
          Width = 122
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object cbb_M: TcxComboBox
      Left = 348
      Top = 304
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        ''
        #1103#1085#1074#1072#1088#1100
        #1092#1077#1074#1088#1072#1083#1100
        #1084#1072#1088#1090
        #1072#1087#1088#1077#1083#1100
        #1084#1072#1081
        #1080#1102#1085#1100
        #1080#1102#1083#1100
        #1072#1074#1075#1091#1089#1090
        #1089#1077#1085#1090#1103#1073#1088#1100
        #1086#1082#1090#1103#1073#1088#1100
        #1085#1086#1103#1073#1088#1100
        #1076#1077#1082#1072#1073#1088#1100)
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Text = #1103#1085#1074#1072#1088#1100
      Width = 86
    end
    object msk_Y: TcxMaskEdit
      Left = 464
      Top = 304
      Properties.LookupItems.Strings = (
        '2010'
        '2011'
        '2012'
        '2013'
        '2014')
      Properties.LookupItemsSorted = True
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d\d\d\d'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Text = '2013'
      Width = 56
    end
    object btn_Save: TcxButton
      Left = 526
      Top = 304
      Width = 34
      Height = 25
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1096#1072#1073#1083#1086#1085' '#1074' '#1072#1088#1093#1080#1074
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btn_SaveClick
    end
    object btn_Load: TcxButton
      Left = 36
      Top = 335
      Width = 618
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' '#1072#1088#1093#1080#1074#1072' '#1074' '#1096#1072#1073#1083#1086#1085
      Enabled = False
      LookAndFeel.NativeStyle = True
      OptionsImage.ImageIndex = 18
      OptionsImage.Images = cmDb.iml1
      TabOrder = 6
      OnClick = btn_LoadClick
    end
    object btn_Delete: TcxButton
      Left = 566
      Top = 304
      Width = 34
      Height = 25
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1096#1072#1073#1083#1086#1085' '#1080#1079' '#1072#1088#1093#1080#1074#1072
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = cmDb.iml1
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btn_DeleteClick
    end
    object grd2: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 7
      Visible = False
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_ARCSHBSPEC
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv2SQ1
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv2SQ2
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = clv2SUMMA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Styles.Footer = Style1
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
          Width = 48
        end
        object clv2ARCSHBHEAD: TcxGridDBColumn
          DataBinding.FieldName = 'ARCSHBHEAD'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2SNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'SNAME'
          Width = 183
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Width = 42
        end
        object clv2SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 106
        end
        object clv2SQ1: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100' '#1078#1080#1083#1099#1093' '#1087#1086#1084#1077#1097#1077#1085#1080#1081
          DataBinding.FieldName = 'SQ1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 96
        end
        object clv2SQ2: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100' '#1085#1077#1078#1080#1083#1099#1093' '#1087#1086#1084#1077#1097#1077#1085#1080#1081
          DataBinding.FieldName = 'SQ2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 108
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 8
      Visible = False
      object v3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_history
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Styles.Footer = Style1
        object clv3CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv3ARCSHBHEAD_ID: TcxGridDBColumn
          DataBinding.FieldName = 'ARCSHBHEAD_ID'
          Visible = False
        end
        object clv3MAKESMETASHABLON: TcxGridDBColumn
          DataBinding.FieldName = 'MAKESMETASHABLON'
          Visible = False
        end
        object clv3Y: TcxGridDBColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          Width = 67
        end
        object clv3M: TcxGridDBColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'M'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = #1103#1085#1074#1072#1088#1100
              ImageIndex = 0
              Value = 1
            end
            item
              Description = #1092#1077#1074#1088#1072#1083#1100
              Value = 2
            end
            item
              Description = #1084#1072#1088#1090
              Value = 3
            end
            item
              Description = #1072#1087#1088#1077#1083#1100
              Value = 4
            end
            item
              Description = #1084#1072#1081
              Value = 5
            end
            item
              Description = #1080#1102#1085#1100
              Value = 6
            end
            item
              Description = #1080#1102#1083#1100
              Value = 7
            end
            item
              Description = #1072#1074#1075#1091#1089#1090
              Value = 8
            end
            item
              Description = #1089#1077#1085#1090#1103#1073#1088#1100
              Value = 9
            end
            item
              Description = #1086#1082#1090#1103#1073#1088#1100
              Value = 10
            end
            item
              Description = #1085#1086#1103#1073#1088#1100
              Value = 11
            end
            item
              Description = #1076#1077#1082#1072#1073#1088#1100
              Value = 12
            end>
          Width = 88
        end
        object clv3SRVDOG: TcxGridDBColumn
          DataBinding.FieldName = 'SRVDOG'
          Visible = False
        end
        object clv3HOUSESRV: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSESRV'
          Visible = False
        end
        object clv3SRV: TcxGridDBColumn
          DataBinding.FieldName = 'SRV'
          Visible = False
        end
        object clv3HSRVNAME: TcxGridDBColumn
          Caption = #1059#1089#1083#1091#1075#1072' ('#1041#1044#1056'1)'
          DataBinding.FieldName = 'HSRVNAME'
          Width = 131
        end
        object clv3SRVNAME: TcxGridDBColumn
          Caption = #1059#1089#1083#1091#1075#1072' ('#1087#1088#1086#1095#1077#1077')'
          DataBinding.FieldName = 'SRVNAME'
          Width = 125
        end
        object clv3SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
          DataBinding.FieldName = 'SUMMA'
          Width = 115
        end
        object clv3WORKERID: TcxGridDBColumn
          DataBinding.FieldName = 'WORKERID'
          Visible = False
          VisibleForCustomization = False
        end
        object clv3FIO: TcxGridDBColumn
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          DataBinding.FieldName = 'FIO'
          Width = 146
        end
        object clv3DATA: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
          DataBinding.FieldName = 'DATA'
          Width = 97
        end
        object clv3OPERTYPE: TcxGridDBColumn
          Caption = #1054#1087#1077#1088#1072#1094#1080#1103
          DataBinding.FieldName = 'OPERTYPE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = #1089#1086#1079#1076#1072#1085#1080#1077
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
              Value = 1
            end
            item
              Description = #1091#1076#1072#1083#1077#1085#1080#1077
              Value = 2
            end>
          Width = 125
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object cbb_FIRM: TcxLookupComboBox
      Left = 161
      Top = 304
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
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 145
    end
    object g1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object glc1Group2: TdxLayoutGroup
      AlignHorz = ahCenter
      CaptionOptions.Text = 'New Group'
      Parent = glc1Group4
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 12
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itmlc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = glc1Group7
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item11: TdxLayoutItem
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = glc1Group2
      Control = cbb_M
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item12: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = glc1Group2
      Control = msk_Y
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item13: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = glc1Group2
      Control = btn_Save
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object glc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = glc1Group4
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object glc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = glc1Group7
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object itmlc1Item15: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = glc1Group3
      Control = btn_Load
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object itmlc1Item14: TdxLayoutItem
      CaptionOptions.Text = #1059#1076#1072#1083#1080#1090#1100
      CaptionOptions.Visible = False
      Parent = glc1Group2
      Control = btn_Delete
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object glc1Group5: TdxLayoutGroup
      CaptionOptions.Text = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103' '#1096#1072#1073#1083#1086#1085#1086#1074
      Parent = glc1Group6
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object glc1Group6: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = g1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object glc1Group7: TdxLayoutGroup
      CaptionOptions.Text = #1047#1072#1075#1086#1083#1086#1074#1082#1080' '#1096#1072#1073#1083#1086#1085#1086#1074
      Parent = glc1Group6
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itmlc1Item16: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = glc1Group5
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpHistory: TdxLayoutGroup
      CaptionOptions.Text = #1048#1089#1090#1086#1088#1080#1103' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
      Parent = glc1Group6
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object lItmlc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grpHistory
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_Firm: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Parent = glc1Group2
      Control = cbb_FIRM
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object ds_ArcShbHead: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT AR.CODE,AR.MAKESMETASHABLON,'
      '       AR.M, '
      '       CASE AR.M'
      '         when 1 then '#39#1103#1085#1074#1072#1088#1100#39
      '         when 2 then '#39#1092#1077#1074#1088#1072#1083#1100#39
      '         when 3 then '#39#1084#1072#1088#1090#39
      '         when 4 then '#39#1072#1087#1088#1077#1083#1100#39
      '         when 5 then '#39#1084#1072#1081#39
      '         when 6 then '#39#1080#1102#1085#1100#39
      '         when 7 then '#39#1080#1102#1083#1100#39
      '         when 8 then '#39#1072#1074#1075#1091#1089#1090#39
      '         when 9 then '#39#1089#1077#1085#1090#1103#1073#1088#1100#39
      '         when 10 then '#39#1086#1082#1090#1103#1073#1088#1100#39
      '         when 11 then '#39#1085#1086#1103#1073#1088#1100#39
      '         when 12 then '#39#1076#1077#1082#1072#1073#1088#1100#39
      '       end NMONTH,'
      '       AR.Y, '
      '       AR.SRVDOG, '
      '       AR.HOUSESRV, '
      '       AR.SRV,'
      '       D.NOMER, K.CODE KCODE,'
      '       K.FULLNAME KONTRAGENTNAME,'
      '       H.NAME HOUSESRVNAME,'
      '       A.NAME SRVNAME'
      '       ,ar.FIRM'
      'FROM ARCSHBHEAD AR'
      'LEFT OUTER JOIN SRVDOG D ON D.CODE=AR.SRVDOG'
      'LEFT OUTER JOIN KONTRAGENT K ON K.CODE=D.KONTRAGENT'
      'LEFT OUTER JOIN HOUSESRV H ON H.CODE=AR.HOUSESRV'
      'LEFT OUTER JOIN SRV A ON A.CODE=AR.SRV')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 456
    Top = 96
  end
  object src_ArcShbHead: TDataSource
    DataSet = ds_ArcShbHead
    Left = 516
    Top = 96
  end
  object ds_ARCSHBSPEC: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT AC.CODE,'
      '       AC.ARCSHBHEAD, '
      '       AC.HOUSE, S.NAME SNAME, H.NOMER, '
      '       AC.SQ1, '
      '       AC.SQ2, '
      '       AC.SUMMA'
      'FROM ARCSHBSPEC AC'
      'left outer join house h on h.CODE = AC.HOUSE'
      'left outer join street s on s.code= h.street'
      'where AC.ARCSHBHEAD= :mas_CODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_ArcShbHead
    DefaultFormats.NumericEditFormat = '#,##0.'
    Left = 448
    Top = 192
    dcForceOpen = True
  end
  object src_ARCSHBSPEC: TDataSource
    DataSet = ds_ARCSHBSPEC
    Left = 512
    Top = 168
  end
  object StyleRepository1: TcxStyleRepository
    Left = 104
    Top = 120
    PixelsPerInch = 96
    object Style1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object ds_history: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select AR.CODE, AR.ARCSHBHEAD_ID, AR.MAKESMETASHABLON, AR.M, AR.' +
        'Y,'
      '       AR.SRVDOG, AR.HOUSESRV, AR.SRV, AR.SUMMA, AR.WORKERID,'
      '       P.FIO, AR.DATA, AR.OPERTYPE,'
      '       h.NAME HSRVName, a.NAME SRVName'
      'from ARCSHBHEAD$HISTORY AR'
      'left outer join WORKER W on W.CODE = AR.WORKERID'
      'left outer join PIPLE P on P.CODE = W.PIPLE'
      'LEFT OUTER JOIN HOUSESRV H ON H.CODE=AR.HOUSESRV'
      'LEFT OUTER JOIN SRV A ON A.CODE=AR.SRV'
      'where AR.ARCSHBHEAD_ID = :mas_CODE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSource = src_ArcShbHead
    Left = 312
    Top = 160
    dcForceOpen = True
  end
  object src_history: TDataSource
    DataSet = ds_history
    Left = 352
    Top = 160
  end
end
