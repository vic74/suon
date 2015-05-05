object AnalizTOForm: TAnalizTOForm
  Left = 0
  Top = 0
  Caption = #1040#1085#1072#1083#1080#1079' '#1089#1084#1077#1090' '#1055#1054
  ClientHeight = 533
  ClientWidth = 839
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
    Left = 6
    Top = 0
    Width = 833
    Height = 533
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 374
      Height = 200
      TabOrder = 16
      Visible = False
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_HouseYear
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        object v1Column1: TcxGridDBColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'Y'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object v1Column2: TcxGridDBColumn
          Caption = '% '#1086#1073#1097#1077#1089#1090#1088#1086#1081
          DataBinding.FieldName = 'SR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 74
        end
        object v1Column3: TcxGridDBColumn
          Caption = '% '#1101#1083#1077#1082#1090#1088#1086#1084#1086#1085#1090#1072#1078
          DataBinding.FieldName = 'ER'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 92
        end
        object v1Column4: TcxGridDBColumn
          Caption = '% '#1058#1056
          DataBinding.FieldName = 'TO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 85
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 12
      Top = 91
      Width = 805
      Height = 226
      Align = alClient
      TabOrder = 12
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Visible = True
        DataController.DataSource = src_m1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.NavigatorHints = True
        OptionsData.Appending = True
        OptionsSelection.CellSelect = False
        OptionsView.NavigatorOffset = 2
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object v2Column1: TcxGridDBColumn
          DataBinding.FieldName = 'Code'
          Visible = False
        end
        object clv2SDNOMER: TcxGridDBColumn
          Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'Nomer'
          Options.Editing = False
          Width = 69
        end
        object clv2KNAME: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'SrvDog'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'Code'
          Properties.ListColumns = <
            item
              Caption = #1053#1086#1084#1077#1088
              HeaderAlignment = taCenter
              Width = 100
              FieldName = 'Nomer'
            end
            item
              Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
              HeaderAlignment = taCenter
              Width = 300
              FieldName = 'Name'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListSource = SrcDog
          Width = 155
        end
        object clv2HouseSrv: TcxGridDBColumn
          Caption = #1059#1089#1083#1091#1075#1072' ('#1041#1044#1056'1)'
          DataBinding.FieldName = 'HouseSrv'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'Code'
          Properties.ListColumns = <
            item
              FieldName = 'Name'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src__HOUSESRV
          Properties.OnEditValueChanged = clv2HouseSrvPropertiesEditValueChanged
          Width = 146
        end
        object clv2SNAME: TcxGridDBColumn
          Caption = #1059#1089#1083#1091#1075#1072' ('#1087#1088#1086#1095#1077#1077')'
          DataBinding.FieldName = 'SRV'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.DropDownSizeable = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'Code'
          Properties.ListColumns = <
            item
              HeaderAlignment = taCenter
              Width = 100
              FieldName = 'Name'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = srcSrv
          Width = 138
        end
        object clv2SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'SUMMA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 123
        end
        object v2Column2: TcxGridDBColumn
          DataBinding.FieldName = 'KontragentName'
          Visible = False
        end
        object v2Column3: TcxGridDBColumn
          DataBinding.FieldName = 'HouseSrvName'
          Visible = False
        end
        object v2Column4: TcxGridDBColumn
          DataBinding.FieldName = 'SrvName'
          Visible = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object ced1: TcxCalcEdit
      Left = 10000
      Top = 10000
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
      Width = 121
    end
    object ced2: TcxCalcEdit
      Left = 10000
      Top = 10000
      EditValue = 0.000000000000000000
      Style.HotTrack = False
      TabOrder = 14
      Visible = False
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1088#1086#1094#1077#1085#1090
      TabOrder = 15
      Visible = False
      OnClick = cxButton1Click
    end
    object Memo: TcxMemo
      Left = 22
      Top = 395
      Properties.ReadOnly = True
      Properties.ScrollBars = ssBoth
      Properties.WordWrap = False
      Style.HotTrack = False
      TabOrder = 17
      Height = 91
      Width = 785
    end
    object ProgressBar: TcxProgressBar
      Left = 22
      Top = 485
      TabOrder = 18
      Width = 785
    end
    object MonthEdit: TcxComboBox
      Left = 45
      Top = 15
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
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
      Style.HotTrack = False
      TabOrder = 0
      Text = #1103#1085#1074#1072#1088#1100
      Width = 121
    end
    object YearEdit: TcxCalcEdit
      Left = 192
      Top = 15
      EditValue = 0
      Style.HotTrack = False
      TabOrder = 1
      Width = 57
    end
    object BDR1: TcxCheckBox
      Left = 342
      Top = 16
      Caption = #1041#1044#1056'1'
      Style.HotTrack = False
      TabOrder = 3
      Transparent = True
      Width = 51
    end
    object BDR2: TcxCheckBox
      Left = 396
      Top = 16
      Caption = #1041#1044#1056'2'
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
      Width = 53
    end
    object BDR3: TcxCheckBox
      Left = 452
      Top = 16
      Caption = #1041#1044#1056'3'
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
      Width = 53
    end
    object cxButton2: TcxButton
      Left = 540
      Top = 13
      Width = 31
      Height = 25
      Hint = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1087#1083#1072#1085#1099' '#1041#1044#1056
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = cxButton2Click
    end
    object SumSmetaBtn: TcxButton
      Left = 574
      Top = 13
      Width = 29
      Height = 25
      Hint = #1056#1072#1089#1095#1077#1090' '#1089#1091#1084#1084' '#1087#1086' '#1089#1084#1077#1090#1072#1084
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        00000000003F000000FF000000FF0000003F0000000000000000000000000000
        000000000000000000FF00000000000000000000000000000000000000000000
        0000000000000000003F000000FF000000FF0000003F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000003F000000FF000000FF0000003F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000003F000000FF000000FF0000003F0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000003F000000FF000000FF0000
        003F000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000003F000000FF000000FF0000003F0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000003F000000FF000000FF0000003F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000003F000000FF000000FF0000003F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000003F000000FF000000FF0000003F0000000000000000000000000000
        000000000000000000FF00000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = SumSmetaBtnClick
    end
    object Grid3: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      Align = alClient
      TabOrder = 19
      Visible = False
      object v3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_Smeta
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
          end
          item
            Kind = skSum
            Column = v3GP
          end
          item
            Kind = skSum
            Column = v3NGP
          end
          item
            Kind = skSum
          end
          item
            Kind = skSum
            Column = v3AllP
          end
          item
            Kind = skSum
            Column = v3AllSum
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = v3GP
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = v3NGP
          end
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = v3AllP
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = v3AllSum
          end
          item
            Kind = skCount
            Column = v3_StreetName
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        object v3_StreetName: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'StreetName'
          Width = 160
        end
        object v3_Nomer: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'HouseNomer'
          Width = 70
        end
        object v3_DU: TcxGridDBColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'DUName'
          Width = 80
        end
        object v3GP: TcxGridDBColumn
          Caption = #1055#1083#1086#1097'. '#1078#1080#1083#1072#1103
          DataBinding.FieldName = 'GP'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.DisplayFormat = '0.00'
          Properties.ReadOnly = True
          Width = 90
        end
        object v3NGP: TcxGridDBColumn
          Caption = #1055#1083#1086#1097'. '#1085#1077#1078#1080#1083#1072#1103
          DataBinding.FieldName = 'NGP'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.DisplayFormat = '0.00'
          Properties.ReadOnly = True
          Width = 90
        end
        object v3AllP: TcxGridDBColumn
          Caption = #1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'AllP'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.DisplayFormat = '0.00'
          Properties.ReadOnly = True
          Width = 90
        end
        object v3AllSum: TcxGridDBColumn
          Caption = #1048#1090#1086#1075#1086
          DataBinding.FieldName = 'AllSum'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.DisplayFormat = '0.00'
          Properties.ReadOnly = True
          Width = 90
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object SmetaBtn: TcxButton
      Left = 606
      Top = 13
      Width = 29
      Height = 25
      Hint = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1089#1084#1077#1090#1091
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000C8B3A4FF694731FF694731FF694731FF694731FF694731FF694731FF6947
        31FF694731FF694731FF694731FF694731FF694731FF00000000000000000000
        0000C8B3A4FFEEE6E1FF006090FFB7A293FFB7A293FFB7A293FFB7A293FFB7A2
        93FFB7A293FFB7A293FFB7A293FFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFF1EAE6FF81ADB9FF006090FFE9DED8FFE6D9D3FFE3D5CEFFE0D1
        C9FFDDCDC4FFDBC9BFFFDBC9BFFFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFF4EEEBFFF1EAE6FF81ADB9FF006090FFE9DED8FFE6D9D3FFE3D5
        CEFFE0D1C9FFDDCDC4FFDBC9BFFFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFF6F2F0FFF4EEEBFF81ADB9FFD2F2FDFF006090FFE9DED8FFE6D9
        D3FFE3D5CEFFE0D1C9FFDDCDC4FFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFF9F6F5FFF6F2F0FFF4EEEBFF81ADB9FF96D4FBFF006090FFE9DE
        D8FFE6D9D3FFE3D5CEFFE0D1C9FFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFFCFBFAFFF9F6F5FFF6F2F0FF81ADB9FFD2F2FDFF00C8F8FF0060
        90FFE9DED8FFE6D9D3FFE3D5CEFFB7A293FF694731FF00000000000000000000
        0000C8B3A4FF006090FF006090FF006090FF006090FFFFFFFFFFD2F2FDFF00C8
        F8FF006090FFE9DED8FFE6D9D3FFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFFFFFFFFF81ADB9FF00C8F8FF00C8F8FF00C8F8FFFFFFFFFFD2F2
        FDFF00C8F8FF006090FFEAE0DAFFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFFFFFFFFF81ADB9FFD2F2FDFFFFFFFFFFFFFFFFFF00C8F8FF00C8
        F8FF00C8F8FF00C8F8FF006090FFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFFFFFFFFFFFFFFFFF81ADB9FFFFFFFFFFFFFFFFFF00C8F8FF0060
        90FF006090FF006090FF006090FFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFFFFFFFFFFFFFFFFF81ADB9FFD2F2FDFFFFFFFFFFC3E0FCFF00C8
        F8FF006090FFC8B3A4FF694731FF694731FF694731FF00000000000000000000
        0000C8B3A4FFFFFFFFFFFFFFFFFFFFFFFFFF81ADB9FFFFFFFFFFF1FBFEFFBBEC
        FCFF00C8F8FF006090FFF3EBE6FFDBC9BFFF694731FF00000000000000000000
        0000C8B3A4FFFFFFFFFFFFFFFFFFFFFFFFFF81ADB9FF006890FF006390FF0060
        90FF006090FF006090FFDBC9BFFF694731FF0000000000000000000000000000
        0000C8B3A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC8B3A4FF694731FF000000000000000000000000000000000000
        0000C8B3A4FFC8B3A4FFC8B3A4FFC8B3A4FFC8B3A4FFC8B3A4FFC8B3A4FFC8B3
        A4FFC8B3A4FFC8B3A4FF00000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = SmetaBtnClick
    end
    object cxButton3: TcxButton
      Left = 508
      Top = 13
      Width = 29
      Height = 25
      Hint = #1042#1082#1083#1102#1095#1080#1090#1100'\'#1074#1099#1082#1083#1102#1095#1080#1090#1100' '#1088#1077#1078#1080#1084' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1096#1072#1073#1083#1086#1085#1072' '#1089#1084#1077#1090
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000C8B3A4FF694731FF694731FF694731FF694731FF694731FF694731FF6947
        31FF694731FF694731FF694731FF694731FF694731FF00000000000000000000
        0000C8B3A4FFEEE6E1FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A2
        93FFB7A293FFB7A293FFB7A293FFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFF1EAE6FFEEE6E1FFEBE2DDFFE9DED8FFE6D9D3FFE3D5CEFFE0D1
        C9FFDDCDC4FFDBC9BFFFDBC9BFFFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFF4EEEBFFF1EAE6FFEEE6E1FFEBE2DDFFE9DED8FFE6D9D3FFE3D5
        CEFFE0D1C9FFDDCDC4FFDBC9BFFFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFF6F2F0FFD89840FFD89840FF1C1C1CFF986060FF986060FFE6D9
        D3FFE3D5CEFFE0D1C9FFDDCDC4FFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFF9F6F5FFF6F2F0FFF4EEEBFFC89898FF1C1C1CFF0098C8FF1C1C
        1CFFE6D9D3FFE3D5CEFFE0D1C9FFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFFCFBFAFFD89840FFD89840FFC89898FF0098C8FF4ABEDFFF0098
        C8FF1C1C1CFFE6D9D3FFE3D5CEFFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFFFFFFFFFFCFBFAFFF9F6F5FFF6F2F0FF0098C8FF94E4F6FF4ABE
        DFFF0098C8FF1C1C1CFFE6D9D3FFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFFFFFFFFFD89840FFD89840FFD89840FFD89840FF0098C8FF94E4
        F6FF4ABEDFFF0098C8FF1C1C1CFFB7A293FF694731FF00000000000000000000
        0000C8B3A4FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFBF9F8FFF8F4F3FF0098
        C8FF94E4F6FF4ABEDFFF0098C8FF1C1C1CFF694731FF00000000000000000000
        0000C8B3A4FFFFFFFFFFD89840FFD89840FFD89840FFD89840FFD89840FFD898
        40FF0098C8FF94E4F6FF4ABEDFFF808080FF00009AFF00000000000000000000
        0000C8B3A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFBF9
        F8FFF8F4F3FF0098C8FFD2BAACFF778C98FF00009AFF00009AFF000000000000
        0000C8B3A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
        FDFFFBF9F8FFC8B3A4FF0030F8FF6D8AFDFF0030F8FF00009AFF000000000000
        0000C8B3A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFDFDFDFFC8B3A4FFDBC9BFFF0030F8FF0030F8FF00000000000000000000
        0000C8B3A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC8B3A4FF694731FF000000000000000000000000000000000000
        0000C8B3A4FFC8B3A4FFC8B3A4FFC8B3A4FFC8B3A4FFC8B3A4FFC8B3A4FFC8B3
        A4FFC8B3A4FFC8B3A4FF00000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 638
      Top = 13
      Width = 29
      Height = 25
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1084#1077#1090#1099' '#1074' Excel'
      OptionsImage.Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFF
        0000FFFFFF000000000000000000000000000000000000000000000000000000
        000000000000808000808000808000808000000000FFFFFF0000FFFFFF000000
        808080808080808080808080808080808080808080808080000000808000FFFF
        00FFFF00FFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFF000000FFFF008080
        00808000808000808000808000000000808000FFFF00FFFF00FFFFFF000000FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF000000FFFF0080800080800080
        8000000000808000FFFF00FFFF00FFFFFF000000808000000000FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00808000000000808000FFFF00
        FFFF00FFFFFF000000000000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000808000FFFF00FFFF00FFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000808000FFFF00FFFF00FFFFFF000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF000000808000FFFF00FF
        FF00FFFFFF000000808000808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFF000000808000FFFF00FFFF00FFFFFF000000FFFF00
        808000808000808080000000FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        000000808000FFFF00FFFF00FFFFFF000000FFFFFF000000FFFF008080008080
        00808080000000FFFFFFFFFFFFFFFFFF0000FFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFF00FFFF00FFFF00FFFF0000
        0000FFFFFFFFFFFF0000FFFFFF000000000000000000000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = cxButton4Click
    end
    object cxButton5: TcxButton
      Left = 670
      Top = 13
      Width = 29
      Height = 25
      Hint = #1040#1085#1072#1083#1080#1079' '#1041#1044#1056' '#1087#1083#1072#1085#1086#1074' '#1074' '#1088#1072#1079#1088#1077#1079#1077' '#1089#1084#1077#1090#1099
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000005738
        388740242473906464ED5F3C3CB7170C0C350000000000000000000000000000
        00000B06061B4728289EB49999F5543030B60201010700000000000000009560
        60FBB88383F9D5ABABFFC89E9EFFA17373FC4B2B2B8E0703030D010000022E1A
        1A648C5959F0C9A4A4FF7172B1FF918780FF4A403DA500000000000000008D5D
        5DFCC08A8AFFD3AAAAFFCCA0A0FFC89B9BFFB58B8BFF8A6060EF7D5656E1B181
        81FFCCA9A9FF767AB8FF347BF5FF7FDEFFFF90867DF300000000000000008D5B
        5BFCB77F7FFFDCB3B3FFD0A4A4FFCE9F9FFFCC9C9CFFC89999FFC59393FFCAA2
        A2FF7B7FB6FF307AF7FF71E1FFFF3587FAFF1D3D87A100000000000000008A59
        59FCA16969FFE5BFBFFFD5AAAAFFD2A6A6FF988888FF787374FF73706FFF7770
        70FF8E8A87FF8CC5D6FF3383FAFF6A77BAFD0603030E00000000000000008856
        56FE8E5757FFE2BBBBFFDCB2B2FF9D9091FFBDAA90FFFFD184FFFED085FFFED6
        98FF9A948BFF8E8C89FF7A82BEFF754949C50000000000000000000000008553
        53FE8E5A5AFFC29696FFE9C7C7FF7F7A78FFFFDD97FFF2D598FFEFCD90FFF1C8
        82FFFED99DFF7B7374FFC29090FF3C2121710000000000000000000000008250
        50FE8B5858FFA36C6CFFF6DADAFF7B7873FFFFEEBDFFF8E8BBFFF4DDA9FFF0D0
        94FFFFD590FF767372FFA87676F90C0707160000000000000000000000007F4C
        4CFE875454FF905A5AFFE8CCCCFF837F7AFFFFFFEAFFFFFEEFFFF9EDC2FFF6DA
        A0FFFFDA96FF7E7778FF633E3EA4000000000000000000000000000000007B48
        48FF814E4EFF875454FFC39B9BFFA8A1A1FFDEDAC4FFFFFFF2FFFFF7CBFFFFE7
        A6FFB5A694FF938282FE1A0E0E2C000000000000000000000000000000007643
        43FF7C4949FF824F4FFFA37575FFECD0D0FFA79E9EFF817D7BFF7B7874FF7E7A
        79FFA49898FF8B5B5BD20000000000000000000000000000000000000000713E
        3EFF774444FF7E4B4BFF824F4FFFB18585FFFDE7E7FFEFD0D0FFE9CACAFFECCA
        CAFFC6A0A0FFA67070FE63444483000000000000000000000000000000006C39
        39FF723F3FFF774444FF7C4949FF844F4FFFB38383FFFFE7E7FFF5D8D8FFD6AB
        ABFF986060FF966363FF9F6B6BFE5F3F3F810000000000000000000000006633
        33FF6C3939FF713E3EFF764343FF7B4848FF814E4EFFA06F6FFFB28585FF8F59
        59FF8D5A5AFF8F5C5CFF915E5EFF976363FE5235358000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = cxButton5Click
    end
    object Grid4: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      Align = alClient
      TabOrder = 20
      Visible = False
      object v4: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_BDRScan1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v4Balans1
          end
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v4Nach
          end
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v4Rash
          end
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v4Balans2
          end
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v4Smeta
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsBehavior.NavigatorHints = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        object v4IsDog: TcxGridDBColumn
          Caption = #1042' '#1076#1086#1075'.'
          DataBinding.FieldName = 'IsDog'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 46
        end
        object v4StreetName: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'StreetName'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 163
        end
        object v4HouseNomer: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'HouseNomer'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 63
        end
        object v4DUName: TcxGridDBColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'DUName'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 91
        end
        object v4Balans1: TcxGridDBColumn
          Caption = #1041#1072#1083#1072#1085#1089'1'
          DataBinding.FieldName = 'Balans1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          Properties.EditFormat = '0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
        end
        object v4Nach: TcxGridDBColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'Nach'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          Properties.EditFormat = '0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
        end
        object v4Rash: TcxGridDBColumn
          Caption = #1056#1072#1089#1093#1086#1076#1099
          DataBinding.FieldName = 'Rash'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          Properties.EditFormat = '0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 81
        end
        object v4Balans2: TcxGridDBColumn
          Caption = #1050' '#1088#1072#1089#1087#1088#1077#1076'.'
          DataBinding.FieldName = 'Balans2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          Properties.EditFormat = '0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 81
        end
        object v4Smeta: TcxGridDBColumn
          Caption = #1057#1084#1077#1090#1072
          DataBinding.FieldName = 'Smeta'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
      end
      object l4: TcxGridLevel
        GridView = v4
      end
    end
    object Proc: TcxCurrencyEdit
      Left = 299
      Top = 15
      EditValue = 50.000000000000000000
      Properties.DisplayFormat = '0.##'
      Style.HotTrack = False
      TabOrder = 2
      Width = 40
    end
    object Grid5: TcxGrid
      Left = 10000
      Top = 10000
      Width = 367
      Height = 105
      TabOrder = 21
      Visible = False
      object v5: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_BDRScan2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v5Balans1
          end
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v5Nach
          end
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v5Rash
          end
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v5Balans2
          end
          item
            Format = ',##0.00'
            Kind = skSum
          end
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v5TO1
          end
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v5TO2
          end
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v5TR
          end
          item
            Format = ',##0.00'
            Kind = skSum
          end
          item
            Format = ',##0.00'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsBehavior.NavigatorHints = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        object v5IsDog: TcxGridDBColumn
          Caption = #1042' '#1076#1086#1075'.'
          DataBinding.FieldName = 'IsDog'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 46
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'StreetName'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 163
        end
        object v5HouseNomer: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'HouseNomer'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 63
        end
        object v5DUName: TcxGridDBColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'DUName'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 91
        end
        object v5Balans1: TcxGridDBColumn
          Caption = #1041#1072#1083#1072#1085#1089'1'
          DataBinding.FieldName = 'Balans1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          Properties.EditFormat = '0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 82
        end
        object v5Nach: TcxGridDBColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'Nach'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          Properties.EditFormat = '0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 82
        end
        object v5Rash: TcxGridDBColumn
          Caption = #1056#1072#1089#1093#1086#1076#1099
          DataBinding.FieldName = 'Rash'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          Properties.EditFormat = '0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 82
        end
        object v5Balans2: TcxGridDBColumn
          Caption = #1050' '#1088#1072#1089#1087#1088#1077#1076'.'
          DataBinding.FieldName = 'Balans2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          Properties.EditFormat = '0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 82
        end
        object v5TO1: TcxGridDBColumn
          Caption = #1058#1054' ('#1086#1073#1097#1077#1089#1090#1088#1086#1081')'
          DataBinding.FieldName = 'TO1'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 82
        end
        object v5TO2: TcxGridDBColumn
          Caption = #1058#1054' ('#1101#1083#1077#1082#1090#1088')'
          DataBinding.FieldName = 'TO2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 82
        end
        object v5TR: TcxGridDBColumn
          Caption = #1058#1056
          DataBinding.FieldName = 'TR'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 82
        end
      end
      object l5: TcxGridLevel
        GridView = v5
      end
    end
    object Grid6: TcxGrid
      Left = 10000
      Top = 10000
      Width = 781
      Height = 105
      TabOrder = 22
      Visible = False
      object v6: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_BDRScan3
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v6Balans1
          end
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v6Nach
          end
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v6Rash
          end
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v6Balans2
          end
          item
            Format = ',##0.00'
            Kind = skSum
          end
          item
            Format = ',##0.00'
            Kind = skSum
          end
          item
            Format = ',##0.00'
            Kind = skSum
          end
          item
            Format = ',##0.00'
            Kind = skSum
          end
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v6TOb_
          end
          item
            Format = ',##0.00'
            Kind = skSum
            Column = v6TR_
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsBehavior.NavigatorHints = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        object v6IsDog: TcxGridDBColumn
          Caption = #1042' '#1076#1086#1075'.'
          DataBinding.FieldName = 'IsDog'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 46
        end
        object v6StreetName: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'StreetName'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 163
        end
        object v6HouseNomer: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'HouseNomer'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 63
        end
        object v6DUName: TcxGridDBColumn
          Caption = #1044#1059
          DataBinding.FieldName = 'DUName'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 91
        end
        object v6Balans1: TcxGridDBColumn
          Caption = #1041#1072#1083#1072#1085#1089'1'
          DataBinding.FieldName = 'Balans1'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 82
        end
        object v6Nach: TcxGridDBColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
          DataBinding.FieldName = 'Nach'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          Properties.EditFormat = '0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 82
        end
        object v6Rash: TcxGridDBColumn
          Caption = #1056#1072#1089#1093#1086#1076#1099
          DataBinding.FieldName = 'Rash'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          Properties.EditFormat = '0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 82
        end
        object v6Balans2: TcxGridDBColumn
          Caption = #1050' '#1088#1072#1089#1087#1088#1077#1076'.'
          DataBinding.FieldName = 'Balans2'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          Properties.EditFormat = '0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 82
        end
        object v6TOb_: TcxGridDBColumn
          Caption = #1058#1054' ('#1089#1084#1077#1090#1072')'
          DataBinding.FieldName = 'TOb_'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 82
        end
        object v6TR_: TcxGridDBColumn
          Caption = #1058#1056' ('#1089#1084#1077#1090#1072')'
          DataBinding.FieldName = 'TR_'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 82
        end
      end
      object l6: TcxGridLevel
        GridView = v6
      end
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Test'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = lcl1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemControlAreaAlignment = catAuto
      ItemIndex = 3
      ShowBorder = False
      Index = -1
    end
    object lc1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lc1Item4: TdxLayoutItem
      AlignVert = avCenter
      CaptionOptions.Text = #1052#1077#1089#1103#1094
      Parent = lc1Group4
      Control = MonthEdit
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lc1Item5: TdxLayoutItem
      AlignVert = avCenter
      CaptionOptions.Text = #1043#1086#1076
      Parent = lc1Group4
      SizeOptions.Width = 80
      Control = YearEdit
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lc1Item17: TdxLayoutItem
      AlignVert = avCenter
      CaptionOptions.Text = #1055#1088#1086#1094#1077#1085#1090
      Parent = lc1Group4
      Control = Proc
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lc1Item6: TdxLayoutItem
      AlignVert = avCenter
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = lc1Group4
      Control = BDR1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lc1Item7: TdxLayoutItem
      AlignVert = avCenter
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = lc1Group4
      Control = BDR2
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lc1Item8: TdxLayoutItem
      AlignVert = avCenter
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'cxCheckBox2'
      CaptionOptions.Visible = False
      Parent = lc1Group4
      Control = BDR3
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lc1Item13: TdxLayoutItem
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Parent = lc1Group4
      SizeOptions.Width = 29
      Control = cxButton3
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object lc1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = lc1Group4
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object lc1Item10: TdxLayoutItem
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Parent = lc1Group4
      Control = SumSmetaBtn
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object lc1Item12: TdxLayoutItem
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Parent = lc1Group4
      Control = SmetaBtn
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object lc1Item14: TdxLayoutItem
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Parent = lc1Group4
      Control = cxButton4
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object lc1Item15: TdxLayoutItem
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Parent = lc1Group4
      Control = cxButton5
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object DataTab: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
    object SmetaGroup: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1089#1084#1077#1090' '#1055#1054
      LayoutLookAndFeel = lcl1
      Parent = DataTab
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 500
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      OnCollapsed = SmetaGroupCollapsed
      OnExpanded = SmetaGroupExpanded
      Index = 0
    end
    object itmlc1Item15: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1057#1084#1077#1090#1099' '#1055#1054
      CaptionOptions.Visible = False
      LayoutLookAndFeel = lcl1
      Parent = SmetaGroup
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object ScaleGroup: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1064#1082#1072#1083#1072' '#1090#1077#1093#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103
      LayoutLookAndFeel = lcl1
      Parent = DataTab
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object ScaleProcPanel: TdxLayoutGroup
      CaptionOptions.AlignHorz = taCenter
      Parent = ScaleGroup
      SizeOptions.Width = 150
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      OnCollapsed = ScaleProcPanelCollapsed
      OnExpanded = ScaleProcPanelExpanded
      Index = 0
    end
    object lc1Item1: TdxLayoutItem
      CaptionOptions.Text = #1054#1073#1097#1077#1089#1090#1088#1086#1081
      Parent = ScaleProcPanel
      Control = ced1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lc1Item2: TdxLayoutItem
      CaptionOptions.Text = #1069#1083#1077#1082#1090#1088#1080#1082#1072
      Parent = ScaleProcPanel
      Control = ced2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lc1Item3: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = ScaleProcPanel
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lc1Group5: TdxLayoutGroup
      AlignHorz = ahClient
      Parent = ScaleGroup
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object itmlc1Item14: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lc1Group5
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lc1SplitterItem2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object TabGroup: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      Index = 3
    end
    object ExecuteGroup: TdxLayoutGroup
      CaptionOptions.Text = #1054#1073#1088#1072#1073#1086#1090#1082#1072' '#1076#1072#1085#1085#1099#1093
      Parent = TabGroup
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object MemoItem: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxMemo1'
      CaptionOptions.Visible = False
      Parent = ExecuteGroup
      Control = Memo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object ProgressItem: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'cxProgressBar1'
      CaptionOptions.Visible = False
      Parent = ExecuteGroup
      Control = ProgressBar
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lc1Group1: TdxLayoutGroup
      CaptionOptions.Text = #1057#1084#1077#1090#1099
      Parent = TabGroup
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lc1Item11: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lc1Group1
      Control = Grid3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lc1Group2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1040#1085#1072#1083#1080#1079' '#1041#1044#1056'1'
      Parent = TabGroup
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object lc1Item16: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lc1Group2
      Control = Grid4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lc1Group3: TdxLayoutGroup
      CaptionOptions.Text = #1040#1085#1072#1083#1080#1079' '#1041#1044#1056'2'
      Parent = TabGroup
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object lc1Item18: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lc1Group3
      Control = Grid5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lc1Group6: TdxLayoutGroup
      CaptionOptions.Text = #1040#1085#1072#1083#1080#1079' '#1041#1044#1056'3'
      Parent = TabGroup
      ButtonOptions.Buttons = <>
      Index = 4
    end
    object lc1Item19: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Parent = lc1Group6
      Control = Grid6
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 0
    Width = 6
    Height = 533
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 472
    Top = 136
    object lcl1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
    end
  end
  object src_m1: TDataSource
    DataSet = ds1
    Left = 77
    Top = 112
  end
  object ds1: TpFIBDataSet
    UpdateSQL.Strings = (
      'update MakeSmetaShablon'
      'set SrvDog=:SrvDog, HouseSrv=:HouseSrv, Srv=:Srv, Summa=0'
      'where Code=:OLD_Code')
    DeleteSQL.Strings = (
      'delete from MakeSmetaShablon'
      'where Code=:OLD_Code')
    InsertSQL.Strings = (
      'INSERT INTO MakeSmetaShablon(Code, SrvDog, HouseSrv, Srv, Summa)'
      'VALUES(:Code, :SrvDog, :HouseSrv, :Srv, 0)')
    RefreshSQL.Strings = (
      'SELECT '
      '  s.Code,'
      '  s.SrvDog,'
      '  s.HouseSrv,'
      '  s.Srv,'
      '  s.Summa,'
      '  d.Nomer'
      'FROM MAKESMETASHABLON s'
      'left outer join SrvDog d on d.Code=s.SrvDog'
      'where s.Code=:NEW_Code')
    SelectSQL.Strings = (
      'SELECT '
      '  s.Code,'
      '  s.SrvDog,'
      '  s.HouseSrv,'
      '  s.Srv,'
      '  s.Summa,'
      '  d.Nomer,'
      '  k.FullName KontragentName,'
      '  h.Name HouseSrvName,'
      '  a.Name SrvName'
      'FROM MAKESMETASHABLON s'
      'left outer join SrvDog d on d.Code=s.SrvDog'
      'left outer join Kontragent k on k.Code=d.Kontragent'
      'left outer join HouseSrv h on h.Code=s.HouseSrv'
      'left outer join Srv a on a.Code=s.Srv')
    AutoUpdateOptions.KeyFields = 'Code'
    AutoUpdateOptions.GeneratorName = 'MakeSmetaShablon_gen'
    AutoUpdateOptions.AutoParamsToFields = True
    OnNewRecord = ds1NewRecord
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    SQLScreenCursor = crSQLWait
    Left = 48
    Top = 96
    poImportDefaultValues = False
  end
  object ds_HouseYear: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE HOUSEYEAR'
      'SET '
      '    Y = :Y,'
      '    SR = :SR,'
      '    ER = :ER'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    HOUSEYEAR'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO HOUSEYEAR('
      '    CODE,'
      '    Y,'
      '    SR,'
      '    ER,'
      '    "TO"'
      ')'
      'VALUES('
      '    :CODE,'
      '    :Y,'
      '    :SR,'
      '    :ER,'
      '    :"TO"'
      ')')
    RefreshSQL.Strings = (
      'SELECT CODE, '
      '       Y, '
      '       SR, '
      '       ER, '
      '       100-(SR+ER)"TO"'
      'FROM HOUSEYEAR'
      ''
      ' WHERE '
      '        HOUSEYEAR.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       Y, '
      '       SR, '
      '       ER, '
      '       100-(SR+ER)"TO"'
      'FROM HOUSEYEAR'
      'ORDER BY Y')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    Left = 208
    Top = 200
  end
  object src_HouseYear: TDataSource
    DataSet = ds_HouseYear
    Left = 245
    Top = 200
  end
  object ds_dog: TpFIBDataSet
    SelectSQL.Strings = (
      'select '
      '  d.Code, '
      '  d.Nomer,'
      '  d.D1,'
      '  d.D2,'
      '  d.AType,'
      '  k.Name'
      'from'
      '  SrvDog d '
      '  left outer join Kontragent k on k.Code=d.Kontragent'
      'where Active=1')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 48
    Top = 144
  end
  object SrcDog: TDataSource
    DataSet = ds_dog
    Left = 72
    Top = 144
  end
  object ds_Srv: TpFIBDataSet
    SelectSQL.Strings = (
      'select -1 Code, '#39#1053#1077' '#1091#1082#1072#1079#1072#1085#39' Name from RDB$DataBase'
      'union'
      
        'select Code, Name from Srv where Code IN (0,1,2,4,5,6,7,10,11,12' +
        ',13)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 48
    Top = 192
  end
  object srcSrv: TDataSource
    DataSet = ds_Srv
    Left = 80
    Top = 192
  end
  object T: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 48
    Top = 392
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = MonthEdit
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = YearEdit
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 368
    Top = 144
  end
  object ds_HOUSESRV: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT -1 CODE, '#39#1053#1077' '#1091#1082#1072#1079#1072#1085#39' Name from RDB$Database'
      'union'
      'SELECT CODE, '
      '       NAME'
      'FROM HOUSESRV'
      'where code in(1,2,3,4,5,9,13,14)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 48
    Top = 240
  end
  object src__HOUSESRV: TDataSource
    DataSet = ds_HOUSESRV
    Left = 80
    Top = 240
  end
  object src_Smeta: TDataSource
    DataSet = ds_Smeta
    Left = 160
    Top = 392
  end
  object ds_Smeta: TpFIBDataSet
    Transaction = cmDb.RT
    Database = cmDb.DB
    Left = 112
    Top = 392
  end
  object ds_BDRScan1: TpFIBDataSet
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 256
    Top = 392
  end
  object src_BDRScan1: TDataSource
    DataSet = ds_BDRScan1
    Left = 472
    Top = 424
  end
  object ds_BDRScan2: TpFIBDataSet
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 360
    Top = 440
  end
  object src_BDRScan2: TDataSource
    DataSet = ds_BDRScan2
    Left = 392
    Top = 440
  end
  object src_BDRScan3: TDataSource
    DataSet = ds_BDRScan3
    Left = 504
    Top = 440
  end
  object ds_BDRScan3: TpFIBDataSet
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 472
    Top = 440
  end
end
