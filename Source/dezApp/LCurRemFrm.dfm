object LCurRemForm: TLCurRemForm
  Left = 0
  Top = 0
  HelpContext = 105
  Caption = #1043#1086#1076#1086#1074#1086#1081' '#1087#1083#1072#1085' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1088#1077#1084#1086#1085#1090#1072' ('#1051#1080#1092#1090')'
  ClientHeight = 668
  ClientWidth = 950
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
    Width = 950
    Height = 668
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = laf1
    object edt_year: TcxMaskEdit
      Left = 34
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.MaxLength = 0
      Properties.OnChange = edt_yearPropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Width = 89
    end
    object cbb_house: TcxLookupComboBox
      Left = 154
      Top = 10
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          FieldName = 'ADDRES'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_house
      Style.HotTrack = False
      TabOrder = 1
      Width = 247
    end
    object grd1: TcxGrid
      Left = 10
      Top = 59
      Width = 930
      Height = 267
      TabOrder = 3
      object v1: TcxGridDBTableView
        OnKeyDown = v1KeyDown
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = il1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.ImageIndex = 3
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.ImageIndex = 1
        Navigator.Buttons.Cancel.ImageIndex = 2
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = src_trplan
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnsQuickCustomization = True
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
        object clv1HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          Options.Editing = False
          Width = 139
        end
        object clv1NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Options.Editing = False
          Width = 43
        end
        object clv1STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1KONTNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'KONTNAME'
          Options.Editing = False
          Width = 137
        end
        object clv1MLISTNAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MLISTNAME'
          Options.Editing = False
          Width = 127
        end
        object clv1SUMY: TcxGridDBColumn
          Caption = #1054#1088#1080#1077#1085#1090#1080#1088#1086#1074#1086#1095#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
          DataBinding.FieldName = 'SUMY'
          Width = 101
        end
        object clv1SUM1: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1085#1072' 1 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM1'
          Width = 74
        end
        object clv1SUM2: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1085#1072' 2 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM2'
          Width = 66
        end
        object clv1SUM3: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1085#1072' 3 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM3'
          Width = 72
        end
        object clv1SUM4: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1085#1072' 4 '#1082#1074#1072#1088#1090#1072#1083
          DataBinding.FieldName = 'SUM4'
          Width = 64
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1MANAGER: TcxGridDBColumn
          DataBinding.FieldName = 'MANAGER'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object clv1FIO: TcxGridDBColumn
          Caption = #1052#1077#1085#1077#1076#1078#1077#1088
          DataBinding.FieldName = 'FIO'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
          Width = 115
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1044#1086#1087'. '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          DataBinding.FieldName = 'NOTE'
          Width = 230
        end
        object cl_v1FACTCODE: TcxGridDBColumn
          DataBinding.FieldName = 'FACTCODE'
          Visible = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object cedt_sumy: TcxCurrencyEdit
      Left = 128
      Top = 362
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 5
      Width = 91
    end
    object cedt_sumost: TcxCurrencyEdit
      Left = 10
      Top = 362
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 4
      Width = 112
    end
    object cedt_sumfact: TcxCurrencyEdit
      Left = 225
      Top = 362
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 6
      Width = 88
    end
    object grd2: TcxGrid
      Left = 10
      Top = 407
      Width = 503
      Height = 256
      TabOrder = 10
      OnEnter = grd2Enter
      object v2: TcxGridDBTableView
        OnKeyDown = v2KeyDown
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_showhouse
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnDataChanged = v2DataControllerDataChanged
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object clv2Img: TcxGridDBColumn
          Caption = ' '
          DataBinding.FieldName = 'Img'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = il1
          Properties.Items = <
            item
              Value = 0
            end
            item
              ImageIndex = 6
              Value = 1
            end>
          Visible = False
          VisibleForCustomization = False
          Width = 27
        end
        object clv2V: TcxGridDBColumn
          DataBinding.FieldName = 'V'
          HeaderGlyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FD00FD00FC00
            FC00FA01FA00F801F800F402F400EE04EE00E606E600DB09DB00CB0ECB00B615
            B600991D99007A287A00533453003D3D3D003E3E3E003F3F3F00404040004141
            4100424242004343430044444400454545004646460047474700484848004949
            49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F004C5155004A53
            5B004555660040586F003C5A7800385B7E00355C8400325E8A002F5F8E002D5F
            92002A60970027619B0025619D002262A1002062A4001E62A6001D62A7001C62
            A9001B62AA001B63AA001B63AA001C63A9001E63A8001F63A7002163A5002463
            A3002864A0002B649E002E659B0033669800376796003B67930041699000476A
            8D004E6C8900566D85005F7080006A727B007074790077777700787878007979
            79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
            8100828282008383830084848400858585008686860087878700888888008989
            89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
            9100929292009393930094949400959595009696960097979700989898009999
            99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
            A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
            A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
            B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
            B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
            C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
            C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCFCF00D0D0D000D1D1
            D100D2D2D200D3D3D300CBD4D800C5D5DD00C0D6E300BCD7E500B9D7E800B6D8
            EA00A9D5E20098D0D4008BCDCB007FCAC40076C8C1006CC3BF0065BFC0005FBB
            BF0059BAB40050B89F0046B78A003CB3790036B0650032AE5C002DA8530026A1
            4400209A37001A942C00168E2400158B21001488200014861F00148420001483
            20001583200014831F0014821F0014821F0013811D00117E1A000F7B17000A75
            1000056E08000269030001680200006701000066000000660000191919191919
            19191919191919191919F2F2F2F2F2F2F2F2F2F2F2F219191919F2F2F2F2F2F2
            F2F2F2F2F2F21919191919191919191919191919191919191919191919641919
            19FEFEFEFEFEFE19191919196464191919FEE6E9EBEDFE1919191964E1E16464
            19FEFEFEFEFEFE19191964D9DDE1E164191919191919191919191964D6E16464
            19FEFEFEFEFEFEFEFEFE19196464191919FEE6E6E7E7E9EAECFA191919641919
            19FEFEFEFEFEFEFEFEFE19191919191919191919191919191919F2F2F2F2F2F2
            F2F2F2F2F2F219191919F2F2F2F2F2F2F2F2F2F2F2F219191919191919191919
            1919191919191919191919191919191919191919191919191919}
          Options.ShowCaption = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 30
        end
        object clv2trplan: TcxGridDBColumn
          Caption = ' '
          DataBinding.FieldName = 'trplan'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = il1
          Properties.Items = <
            item
              ImageIndex = 6
            end
            item
            end>
          Properties.ReadOnly = True
          Properties.ShowDescriptions = False
          Visible = False
          VisibleForCustomization = False
          Width = 29
        end
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2Act: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'ACT'
          Visible = False
          VisibleForCustomization = False
          Width = 62
        end
        object clv2SYEAR: TcxGridDBColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'SYEAR'
        end
        object clv2STYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1086#1089#1084#1086#1090#1088#1072
          DataBinding.FieldName = 'STYPE'
          Width = 86
        end
        object clv2STREET: TcxGridDBColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2KONRNAME: TcxGridDBColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'KONRNAME'
          Width = 103
        end
        object clv2STREETNAME: TcxGridDBColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          Visible = False
          Width = 120
        end
        object clv2HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2NOMER: TcxGridDBColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'NOMER'
          Visible = False
          Width = 37
        end
        object clv2NOTE: TcxGridDBColumn
          DataBinding.FieldName = 'NOTE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2MLISTNAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'MLISTNAME'
          Width = 152
        end
        object clv2MNOTE: TcxGridDBColumn
          Caption = #1052#1072#1090#1077#1088#1080#1072#1083
          DataBinding.FieldName = 'MNOTE'
          Visible = False
          VisibleForCustomization = False
          Width = 121
        end
        object clv2KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2mse: TcxGridDBColumn
          DataBinding.FieldName = 'mse'
          Visible = False
          VisibleForCustomization = False
        end
        object clv2SHOWHOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWHOUSE'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object btn_exec: TcxButton
      Left = 407
      Top = 10
      Width = 106
      Height = 25
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      TabOrder = 2
      OnClick = btn_execClick
    end
    object cedt_proc: TcxCurrencyEdit
      Left = 10000
      Top = 10000
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseThousandSeparator = True
      Properties.OnChange = cedt_procPropertiesChange
      Properties.OnEditValueChanged = cedt_procPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 14
      Visible = False
      Width = 121
    end
    object cedt_ost: TcxCurrencyEdit
      Left = 416
      Top = 362
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 8
      Width = 90
    end
    object btn_save: TcxButton
      Left = 512
      Top = 362
      Width = 151
      Height = 20
      Caption = #1053#1077#1087#1088#1077#1076#1074'. '#1088#1072#1073#1086#1090#1099
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000683B1E8F834B
        26B5AC6231EEB76835FFB56835FFB46734FFB26634FFB06533FFAE6433FFAC63
        32FFAA6232FFA96132FFA86031FFA66031FE9D5B2EF1814B26C4A25C2EDEEBC6
        ADFFEAC5ADFFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFB
        F8FFFEFBF8FFFEFBF8FFFEFBF8FFC89A7CFFC79879FF9B592EEDB96B37FEEDCA
        B3FFE0A27AFFFEFAF7FF62C088FF62C088FF62C088FF62C088FF62C088FF62C0
        88FF62C088FF62C088FFFDF9F6FFCA8D65FFC99B7CFFA66031FEBB6C38FFEECC
        B6FFE1A27AFFFEFAF7FFBFDCC2FFBFDCC2FFBFDCC2FFBFDCC2FFBFDCC2FFBFDC
        C2FFBFDCC2FFBFDCC2FFFDF9F6FFCD9068FFCC9E81FFA86132FFBB6B38FFEFCE
        B8FFE1A279FFFEFAF7FF62C088FF62C088FF62C088FF62C088FF62C088FF62C0
        88FF62C088FF62C088FFFDF9F6FFCF936AFFCEA384FFAA6132FFBA6A36FFEFD0
        BBFFE2A27AFFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFB
        F8FFFEFBF8FFFEFBF8FFFEFBF8FFD3966DFFD2A78AFFAB6232FFBB6A36FFF0D2
        BEFFE2A37AFFE2A37AFFE1A37AFFE2A37BFFE1A37BFFE0A178FFDE9F77FFDD9F
        76FFDC9D74FFD99B72FFD89971FFD69970FFD5AB8EFFAD6333FFBB6A36FFF2D5
        C2FFE3A37AFFE3A37AFFE2A37BFFE2A37BFFE2A47BFFE1A279FFE0A178FFDEA0
        77FFDE9E75FFDC9D74FFDA9B73FFD99B73FFDAB095FFAF6433FFBB6A36FFF2D8
        C5FFE3A47BFFE3A37AFFE3A47AFFE2A47BFFE2A37BFFE1A37BFFE1A279FFDFA0
        77FFDE9F76FFDD9E74FFDB9C72FFDC9D74FFDDB59AFFB16534FFBB6B36FFF4D9
        C7FFE6A67DFFC88C64FFC98D65FFC98E67FFCB926CFFCB926DFFCA9069FFC88C
        65FFC88C64FFC88C64FFC88C64FFDA9C74FFE1BA9FFFB36634FFBA6B36FEF4DC
        C9FFE7A77DFFF9ECE1FFF9ECE1FFF9EDE3FFFCF4EEFFFDFAF7FFFDF7F3FFFAED
        E5FFF7E7DBFFF7E5D9FFF6E5D8FFDEA077FFE4BEA4FFB46734FFB86935FAF5DD
        CCFFE7A87EFFFAF0E8FFFAF0E8FFC98D66FFFAF0E9FFFDF8F3FFFEFAF8FFFCF4
        EFFFF9E9DFFFF7E7DBFFF7E5D9FFE0A278FFE7C2A9FFB66835FFB16533F0F6DF
        D0FFE8A87EFFFCF6F1FFFCF6F1FFC88C64FFFAF1E9FFFBF4EEFFFDFAF7FFFDF9
        F6FFFAF0E8FFF8E8DDFFF7E6DBFFE1A37AFFEFD5C3FFB66935FE9F5B2ED8F6DF
        D1FFE9AA80FFFEFAF6FFFDFAF6FFC88C64FFFBF3EEFFFBF1EAFFFCF6F2FFFEFB
        F8FFFCF6F1FFF9ECE2FFF8E7DBFFEED0BAFFECD0BDFFB66D3CF87241219BF6E0
        D1FFF7E0D1FFFEFBF8FFFEFBF7FFFDF9F6FFFCF5F0FFFAF0EAFFFBF2EDFFFDF9
        F6FFFDFAF7FFFBF1EBFFF7E8DEFEE8CDBAFBBA7F57EC46291563532F18716A3C
        1E9096562BCCAF6432EEB86935FABA6B36FEBB6B36FFBB6A36FFBB6A36FFBC6C
        39FFBD6E3BFFBB6D3AFFAF6434EF955931CB3C23115400000000}
      TabOrder = 9
      OnClick = btn_saveClick
    end
    object cedt_proc4: TcxCurrencyEdit
      Left = 10000
      Top = 10000
      EditValue = 25.000000000000000000
      Properties.AssignedValues.DisplayFormat = True
      Properties.ReadOnly = True
      Properties.OnChange = cedt_proc4PropertiesChange
      Properties.OnEditValueChanged = cedt_proc4PropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 12
      Visible = False
      Width = 121
    end
    object cedt_razn: TcxCurrencyEdit
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 15
      Visible = False
      Width = 121
    end
    object ced_wsum: TcxCurrencyEdit
      Left = 319
      Top = 362
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 7
      Width = 91
    end
    object btn1: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'btn1'
      TabOrder = 13
      Visible = False
      OnClick = btn1Click
    end
    object grd3: TcxGrid
      Left = 531
      Top = 389
      Width = 414
      Height = 274
      TabOrder = 11
      OnEnter = grd3Enter
      object v4: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_detail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clv4QUANTITY
          end
          item
            Kind = skCount
            Column = clv4SDNAME
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
        object clv4V: TcxGridDBColumn
          DataBinding.FieldName = 'V'
          HeaderGlyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FD00FD00FC00
            FC00FA01FA00F801F800F402F400EE04EE00E606E600DB09DB00CB0ECB00B615
            B600991D99007A287A00533453003D3D3D003E3E3E003F3F3F00404040004141
            4100424242004343430044444400454545004646460047474700484848004949
            49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F004C5155004A53
            5B004555660040586F003C5A7800385B7E00355C8400325E8A002F5F8E002D5F
            92002A60970027619B0025619D002262A1002062A4001E62A6001D62A7001C62
            A9001B62AA001B63AA001B63AA001C63A9001E63A8001F63A7002163A5002463
            A3002864A0002B649E002E659B0033669800376796003B67930041699000476A
            8D004E6C8900566D85005F7080006A727B007074790077777700787878007979
            79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
            8100828282008383830084848400858585008686860087878700888888008989
            89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
            9100929292009393930094949400959595009696960097979700989898009999
            99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
            A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
            A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
            B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
            B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
            C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
            C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCFCF00D0D0D000D1D1
            D100D2D2D200D3D3D300CBD4D800C5D5DD00C0D6E300BCD7E500B9D7E800B6D8
            EA00A9D5E20098D0D4008BCDCB007FCAC40076C8C1006CC3BF0065BFC0005FBB
            BF0059BAB40050B89F0046B78A003CB3790036B0650032AE5C002DA8530026A1
            4400209A37001A942C00168E2400158B21001488200014861F00148420001483
            20001583200014831F0014821F0014821F0013811D00117E1A000F7B17000A75
            1000056E08000269030001680200006701000066000000660000191919191919
            19191919191919191919F2F2F2F2F2F2F2F2F2F2F2F219191919F2F2F2F2F2F2
            F2F2F2F2F2F21919191919191919191919191919191919191919191919641919
            19FEFEFEFEFEFE19191919196464191919FEE6E9EBEDFE1919191964E1E16464
            19FEFEFEFEFEFE19191964D9DDE1E164191919191919191919191964D6E16464
            19FEFEFEFEFEFEFEFEFE19196464191919FEE6E6E7E7E9EAECFA191919641919
            19FEFEFEFEFEFEFEFEFE19191919191919191919191919191919F2F2F2F2F2F2
            F2F2F2F2F2F219191919F2F2F2F2F2F2F2F2F2F2F2F219191919191919191919
            1919191919191919191919191919191919191919191919191919}
          Width = 22
        end
        object clv4STRUCTDEFECT: TcxGridDBColumn
          DataBinding.FieldName = 'STRUCTDEFECT'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4SDNAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1089#1090#1088#1091#1082#1094#1080#1103
          DataBinding.FieldName = 'SDNAME'
          Width = 101
        end
        object clv4NOTE: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'NOTE'
          Width = 132
        end
        object clv4QUANTITY: TcxGridDBColumn
          Caption = #1054#1073#1098#1077#1084
          DataBinding.FieldName = 'QUANTITY'
          Width = 47
        end
        object clv4ed: TcxGridDBColumn
          Caption = #1045#1076'.'#1080#1079#1084'.'
          DataBinding.FieldName = 'ed'
          Width = 46
        end
        object clv4MNOTE: TcxGridDBColumn
          Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1099
          DataBinding.FieldName = 'MNOTE'
          Width = 126
        end
        object clv4SHOWHOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'SHOWHOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4HOUSE: TcxGridDBColumn
          DataBinding.FieldName = 'HOUSE'
          Visible = False
          VisibleForCustomization = False
        end
        object clv4MLIST: TcxGridDBColumn
          DataBinding.FieldName = 'MLIST'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object l4: TcxGridLevel
        GridView = v4
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
    object grp2: TdxLayoutGroup
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_year: TdxLayoutItem
      CaptionOptions.Text = #1043#1086#1076
      Parent = grp2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 113
      Control = edt_year
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_house: TdxLayoutItem
      CaptionOptions.Text = #1044#1086#1084
      Parent = grp2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 272
      Control = cbb_house
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 106
      Control = btn_exec
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1087#1083#1072#1085#1086#1074#1099#1093' '#1088#1072#1073#1086#1090' '#1087#1086' '#1076#1086#1084#1091
      CaptionOptions.Layout = clTop
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 285
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spl1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object grp3: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object itm_sumost: TdxLayoutItem
      CaptionOptions.Text = #1053#1072#1095#1072#1083#1100#1085#1099#1081' '#1086#1089#1090#1072#1090#1086#1082
      CaptionOptions.Layout = clTop
      Parent = grp3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 112
      Control = cedt_sumost
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_sumy: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = #1057#1091#1084#1084#1072' '#1085#1072' '#1075#1086#1076
      CaptionOptions.Layout = clTop
      Parent = grp3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 91
      Control = cedt_sumy
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_sumfact: TdxLayoutItem
      CaptionOptions.Text = #1060#1072#1082#1090'. '#1089#1091#1084#1084#1072
      CaptionOptions.Layout = clTop
      Parent = grp3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 88
      Control = cedt_sumfact
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_wsum: TdxLayoutItem
      CaptionOptions.Text = #1057#1091#1084#1084#1072' '#1088#1072#1073#1086#1090
      CaptionOptions.Layout = clTop
      Parent = grp3
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 91
      Control = ced_wsum
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_ost: TdxLayoutItem
      CaptionOptions.Text = #1053#1077#1087#1088#1077#1076'. '#1088#1072#1073#1086#1090#1099
      CaptionOptions.Layout = clTop
      Parent = grp3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 90
      Control = cedt_ost
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_save: TdxLayoutItem
      CaptionOptions.Text = ' '
      CaptionOptions.Layout = clTop
      Parent = grp3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 30
      SizeOptions.Width = 151
      Control = btn_save
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object grlc1Group2: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object itm_grd2: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = #1057#1087#1080#1089#1086#1082' '#1088#1072#1073#1086#1090' '#1080#1079' '#1072#1082#1090#1086#1074' '#1086#1089#1077#1085#1085#1077'-'#1074#1077#1089#1077#1085#1085#1080#1093' '#1086#1089#1084#1086#1090#1088#1086#1074
      CaptionOptions.Layout = clTop
      Parent = grlc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 503
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object spl2: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grlc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object grlc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grlc1Group2
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 242
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object itm4: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grlc1Group1
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_razn: TdxLayoutItem
      CaptionOptions.Text = ' '
      CaptionOptions.Layout = clTop
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 79
      Control = cedt_razn
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itm_proc: TdxLayoutItem
      CaptionOptions.Text = #1053#1077#1087#1088#1077#1076'. '#1088#1072#1073#1086#1090#1099
      CaptionOptions.Layout = clTop
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 96
      Control = cedt_proc
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itmlc1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Visible = False
      Control = btn1
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object itm_proc4: TdxLayoutItem
      CaptionOptions.Text = '%'
      CaptionOptions.Layout = clTop
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 31
      Control = cedt_proc4
      ControlOptions.ShowBorder = False
      Index = -1
    end
  end
  object lkf1: TdxLayoutLookAndFeelList
    Left = 285
    Top = 192
    object laf1: TdxLayoutCxLookAndFeel
    end
  end
  object ds_trplan: TpFIBDataSet
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
      '       TP.SUM4, '
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
      '       TP.SUM4, '
      '       TP.FSUM1, '
      '       TP.FSUM2, '
      '       TP.FSUM3, '
      '       TP.FSUM4,'
      '       TP.kontragent,k.name KontName,'
      '       TP.manager, (p.f||'#39' '#39'||p.i||'#39' '#39'||p.o) fio,'
      '       TP.showcode,TP.NOTE, TP.FACTCODE'
      'FROM TRLPLAN TP'
      'left outer join house h on h.code=tp.house'
      'left outer join street s on s.code=h.street'
      'left outer join mlist m on m.code=tp.mlist'
      'left outer join kontragent k on k.code = tp.kontragent'
      'left outer join worker w on w.code = tp.manager'
      'left outer join piple p on p.code = w.piple'
      '')
    AfterDelete = ds_trplanAfterDelete
    AfterPost = ds_trplanAfterPost
    BeforeDelete = ds_trplanBeforeDelete
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 96
    Top = 136
  end
  object src_trplan: TDataSource
    DataSet = ds_trplan
    Left = 125
    Top = 136
  end
  object ds_showhouse: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SHOWRESULT'
      'SET '
      '    SHOWHOUSE = :SHOWHOUSE,'
      '    HOUSE = :HOUSE,'
      '    STRUCTDEFECT = :STRUCTDEFECT,'
      '    NOTE = :NOTE,'
      '    QUANTITY = :QUANTITY,'
      '    ENTRANCE = :ENTRANCE,'
      '    FLOOR = :FLOOR,'
      '    FLAT = :FLAT,'
      '    ATYPE = :ATYPE,'
      '    RTYPE = :RTYPE,'
      '    MLIST = :MLIST,'
      '    MNOTE = :MNOTE,'
      '    V = :V,'
      '    TRPLAN = :TRPLAN'
      'WHERE'
      '    CODE = :OLD_CODE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SHOWRESULT'
      'WHERE'
      '        CODE = :OLD_CODE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SHOWRESULT('
      '    CODE,'
      '    SHOWHOUSE,'
      '    HOUSE,'
      '    STRUCTDEFECT,'
      '    NOTE,'
      '    QUANTITY,'
      '    ENTRANCE,'
      '    FLOOR,'
      '    FLAT,'
      '    ATYPE,'
      '    RTYPE,'
      '    MLIST,'
      '    MNOTE,'
      '    V,'
      '    TRPLAN'
      ')'
      'VALUES('
      '    :CODE,'
      '    :SHOWHOUSE,'
      '    :HOUSE,'
      '    :STRUCTDEFECT,'
      '    :NOTE,'
      '    :QUANTITY,'
      '    :ENTRANCE,'
      '    :FLOOR,'
      '    :FLAT,'
      '    :ATYPE,'
      '    :RTYPE,'
      '    :MLIST,'
      '    :MNOTE,'
      '    :V,'
      '    :TRPLAN'
      ')')
    RefreshSQL.Strings = (
      'SELECT SR.CODE,sd.nomer Act, '
      '       SR.SHOWHOUSE, sh.syear,'
      '        (case sh.stype'
      '           when 0 then '#39#1074#1077#1089#1085#1072#39
      '           when 1 then '#39#1086#1089#1077#1085#1100#39
      '           when 2 then '#39#1074#1085#1077#1087#1083#1072#1085#1086#1074#1099#1081#39
      '           else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39
      '        end) stype,'
      '       s.code Street,s.name StreetName,'
      '       SR.HOUSE, h.nomer,h.mse,'
      '       SR.STRUCTDEFECT, '
      '       SR.NOTE, '
      '       SR.QUANTITY, '
      '       SR.ENTRANCE, '
      '       SR."FLOOR", '
      '       SR.FLAT, '
      '       SR.ATYPE, '
      '       SR.RTYPE, '
      '       SR.MLIST, m.name MlistName,'
      '       SR.MNOTE, '
      '       SR.V,'
      '       sd.kontragent, k.name KonrName,'
      '       sr.trplan,'
      '       iif(sr.trplan is null,0,1) img'
      'FROM SHOWRESULT SR'
      'left outer join SHOWHOUSE SH on SH.CODE = SR.showhouse'
      'left outer join srvdog sd on sd.code = sh.srvdog'
      'left outer join kontragent k on k.code=sd.kontragent'
      'left outer join mlist m on m.code=sr.mlist'
      'left outer join house h on h.code =sr.house'
      'left outer join street s on s.code=h.street'
      ''
      ' WHERE '
      '        SR.CODE = :OLD_CODE'
      '    ')
    SelectSQL.Strings = (
      'SELECT distinct(SR.MLIST),'
      '       max(SR.V) V,'
      '       sum(SR.QUANTITY) Quantity,'
      '       m.name MlistName,'
      '       SR.SHOWHOUSE, sh.syear,'
      '        (case sh.stype'
      '           when 0 then '#39#1074#1077#1089#1085#1072#39
      '           when 1 then '#39#1086#1089#1077#1085#1100#39
      '           when 2 then '#39#1074#1085#1077#1087#1083#1072#1085#1086#1074#1099#1081#39
      '           else '#39#1086#1096#1080#1073#1082#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103'!!'#39
      '        end) stype,'
      '       s.code Street,s.name StreetName,'
      '       SR.HOUSE, h.nomer,'
      '       sd.kontragent, k.name KonrName, sd.nomer Act'
      ''
      'FROM SHOWRESULT SR'
      'left outer join SHOWHOUSE SH on SH.CODE = SR.showhouse'
      'left outer join srvdog sd on sd.code = sh.srvdog'
      'left outer join kontragent k on k.code=sd.kontragent'
      'left outer join mlist m on m.code=sr.mlist'
      'left outer join house h on h.code =sr.house'
      'left outer join street s on s.code=h.street')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 40
    Top = 424
  end
  object src_showhouse: TDataSource
    DataSet = ds_showhouse
    Left = 68
    Top = 424
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_house
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = clv1NOTE
        Properties.Strings = (
          'Visible')
      end
      item
        Component = edt_year
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 256
    Top = 192
  end
  object ds_house: TpFIBDataSet
    SelectSQL.Strings = (
      'select H.CODE, (s.name||'#39' '#39'||h.nomer) addres'
      'from HOUSE H'
      'left outer join street s on s.code=h.street'
      'where h.a=1'
      'order by (s.name||'#39' '#39'||h.nomer)')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 256
    Top = 152
  end
  object src_house: TDataSource
    DataSet = ds_house
    Left = 285
    Top = 152
  end
  object ds_trfinplan: TpFIBDataSet
    SelectSQL.Strings = (
      'select Y, HOUSE, SUMY, SUM1, SUM2, SUM3, SUM4, SUMOST'
      'from TRLFINPLAN')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 560
    Top = 264
  end
  object src_trfinplan: TDataSource
    DataSet = ds_trfinplan
    Left = 588
    Top = 264
  end
  object il1: TcxImageList
    FormatVersion = 1
    DesignInfo = 33554477
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000009140B231E46247D32783ADB33833DF3308139F32871
          2FDB163F197D0511072300000000000000000000000000000000000000000000
          00000000000018321D533E874BE6419950FF7DC28FFF96D0A6FF96CFA6FF78BE
          89FF368D42FF28742FE60D291053000000000000000000000000000000000000
          00001A3420534A9559F464B478FFA8DBB5FF87CC98FF66BC7DFF64BA7CFF86CB
          98FFA5D9B4FF58AA6BFF2A7B32F40D2910530000000000000000000000000C16
          0E224D925CE56AB97DFFA8DBB2FF60BC77FF5CBA73FF59B870FF59B56FFF58B5
          6FFF5BB774FFA5D9B3FF5AAA6CFF28752FE50511062200000000000000002E54
          377E53AB68FFAADDB4FF64C179FF5FBE71FF60BC77FFFFFFFFFFFFFFFFFF59B8
          70FF58B56EFF5CB774FFA6DAB4FF388F43FF16401A7E00000000000000005394
          64DB8ACC98FF89D396FF6BC67AFF63C170FF55AB65FFFFFFFFFFFFFFFFFF59B8
          70FF59B870FF5BB972FF85CC97FF7BBE8DFF297231DB000000000000000061A9
          76F6A9DDB3FF7DCF8AFF75CC81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF59B870FF67BE7DFF9CD4ABFF32833BF6000000000000000065AC
          7AF6B6E2BEFF8BD597FF7AC986FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF59B870FF69C17EFF9DD4AAFF368640F600000000000000005E9B
          71DBACDDB6FFA6DFAFFF81CB8CFF7CC986FF6EBD79FFFFFFFFFFFFFFFFFF5BAC
          6AFF60BC77FF5CBA73FF8BD199FF80C592FF347A3DDB0000000000000000375B
          437E85C797FFD2EED7FF95D9A0FF8AD394FF7FC889FFFFFFFFFFFFFFFFFF79CD
          85FF6BC37CFF6FC77EFFACDFB5FF459E57FF2048267E00000000000000000F19
          122265A579E5AADAB7FFD8F1DCFF92D89DFF88CD93FF84CC8EFF8BD496FF8AD4
          95FF83D28EFFAFE0B7FF6BB97DFF41894DE509140B2200000000000000000000
          0000253D2D536BB081F4AFDCBBFFDCF2E0FFB6E4BDFF9BDBA5FF96D9A0FFA5DF
          AFFFC0E8C5FF79C28AFF4D975BF419321E530000000000000000000000000000
          000000000000253D2D5366A67AE694CEA4FFC3E6CBFFCFEBD4FFC9E9CEFFAFDD
          B8FF6DB97FFF4F955FE61B342153000000000000000000000000000000000000
          00000000000000000000101A1323375B437D5E9C71DB65AB7AF362A976F35595
          66DB2F54387D0D170F2300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000205020A0103010700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000205030A37833DFF307936FB01030107000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000306030A408E47FF54A35CFF4F9F57FF327C38FE010402080000
          0000000000000000000000000000000000000000000000000000000000000000
          00000306030A499A51FF5BAC64FF77CA82FF74C87EFF51A059FF337D39FE0104
          0208000000000000000000000000000000000000000000000000000000000307
          040A51A65AFF63B56DFF7ECE89FF7BCC87FF76CA81FF76C981FF52A25AFF347E
          3AFE0204020800000000000000000000000000000000000000000306040959B0
          63FF6BBD76FF84D290FF7AC985FF60B26AFF63B46DFF78C983FF78CB82FF53A3
          5CFF347E3AFD02040208000000000000000000000000000000001A331D4651A2
          5BE479C986FF80CE8DFF50A459FC2246256F28552C8B5CAD67FF7CCC86FF79CB
          85FF54A45DFF347E3AFC0204020800000000000000000000000000000000162C
          193C53A45CE66DC079FF254B296F00000000000000002A592F915EAE68FF7DCD
          89FF7CCD87FF56A55FFF357F3BFC020402080000000000000000000000000000
          000019311C4324482965000000000000000000000000000000002B5A2F915FAF
          69FF7FCE8AFF7ECE89FF57A660FF36803CFC0204020800000000000000000000
          0000000000000000000000000000000000000000000000000000000000002B5A
          309160B06AFF81CF8DFF7FCF8BFF58A761FF398540FF02040208000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002B5B309162B26CFF82D18FFF7AC885FF57A660FF1B401E7B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002C5C319163B36DFF5FAF69FF1F45237900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002C5C3191254E297F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000010103C4102020708000000000000000000000000000000000000
          0000000000000101070808073A41000000000000000000000000000000000000
          000013123D414F4CF2FF3F3EEBFD020207080000000000000000000000000000
          0000010107082422E1FC312FEAFF08073A410000000000000000000000001515
          3E415856F5FF6361FAFF5855F6FF403EEAFC0202070800000000000000000201
          07082B2AE3FC413FF1FF4C4AF6FF312FEAFF08073A4100000000000000000F0F
          292B5B58F6FF6562FAFF7170FFFF5956F6FF413FEBFC02020708020207083431
          E6FC4745F2FF6362FFFF4A48F4FF2F2DE9FF0605262B00000000000000000000
          00000F0F292B5B59F6FF6663FAFF7471FFFF5A58F6FF4240EBFC3E3CEAFD504D
          F4FF6867FFFF504EF5FF3634EBFF0707272B0000000000000000000000000000
          0000000000000F0F292B5C5AF6FF6764FAFF7472FFFF7370FFFF706EFFFF6E6C
          FFFF5755F7FF3F3DEEFF0808272B000000000000000000000000000000000000
          00000000000000000000100F292B5D5BF7FF7976FFFF5956FFFF5754FFFF7270
          FFFF4846F0FF0A0A282B00000000000000000000000000000000000000000000
          00000000000000000000030308085C59F4FD7D79FFFF5E5BFFFF5B58FFFF7674
          FFFF4542EDFD0202070800000000000000000000000000000000000000000000
          000000000000030308086562F6FC706DFBFF807EFFFF7E7BFFFF7C79FFFF7977
          FFFF5E5CF7FF4643ECFC02020708000000000000000000000000000000000000
          0000040308086D6AF9FC7774FDFF8682FFFF7673FCFF6462F8FF605DF7FF6D6A
          FAFF7B79FFFF605DF7FF4744ECFC020207080000000000000000000000000404
          08087370FCFD7D7AFEFF8A87FFFF7C79FDFF6C69FBFF11102A2B10102A2B615E
          F8FF6E6CFAFF7D7AFFFF615FF7FF4845EDFC0101050500000000000000000E0E
          1F1F7A77FFFF817EFFFF817EFEFF7471FDFF12122A2B00000000000000001010
          2A2B625FF8FF6F6DFBFF7E7CFFFF625FF8FF201F686F01010202000000000000
          00000E0E1F1F7A77FFFF7976FEFF13132B2B0000000000000000000000000000
          000010102A2B6461F8FF6A68F9FF3735A0A80D0C272900000000000000000000
          0000000000000E0E1F1F14142B2B000000000000000000000000000000000000
          00000000000011102A2B28286C6F16153C3E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004040A0A000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000090C1B231C275F7D3047A3DB334DB4F32E47B3F32843
          9EDB15255A7D050A192300000000000000000000000000000000000000000000
          000000000000171D41533C4DB3E63C52CCFF757AE8FF8F92EEFF8F92EEFF7178
          E4FF334DC1FF2743A5E60D183B53000000000000000000000000000000000000
          0000191D43534655C2F45C65E0FFA1A6F5FF7E86EFFF5B63E9FF595DE7FF7D84
          EEFF9EA0F4FF515DD7FF2947AFF40D183B530000000000000000000000000B0D
          1C224B57BAE5616BE3FFA1ACF5FF545FECFF505CEAFF4D59E9FF4E59E6FF4C56
          E6FF5056E6FF9EA2F4FF5460D6FF2642A5E5050A182200000000000000002B2F
          697E4B56DBFFA2ABF6FF5664F0FF5266EEFF4D59E9FF4D59E9FF4D59E9FF4D59
          E9FF4C58E6FF525AE6FF9FA3F5FF3450C4FF15255B7E00000000000000004F54
          B9DB818CEEFF7E91F7FF5D73F3FF4D59E9FF4D59E9FF4D59E9FF4D59E9FF4D59
          E9FF4D59E9FF4F5BE9FF7B83F0FF757BE2FF2840A0DB00000000000000005C60
          D2F6A1ABF7FF7086F8FF6882F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4D59E9FF5C66EAFF969CF1FF304DB5F600000000000000006065
          D3F6AFB9F9FF7F93FAFF7085F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4D59E9FF5E6AEEFF969DF1FF344CB7F60000000000000000585B
          BFDBA5AFF5FF9DABFAFF778CF0FF545FECFF545FECFF545FECFF545FECFF545F
          ECFF545FECFF6377F2FF818EF4FF787FE9FF3247A5DB00000000000000003434
          6F7E7D83EAFFCDD4FCFF8B9DFAFF7E93F7FF758AEEFF6C84F6FF6C84F6FF6C84
          F6FF6C84F6FF6379F3FFA4AFF8FF3E4FD0FF1F2A607E00000000000000000E0E
          1E225F5EC9E5A3A7F3FFD4DBFDFF879AFAFF7F91F0FF7A8EF1FF7F94F8FF7E92
          F9FF768CF8FFA8B6F8FF636EE3FF3E4EB3E5090B1A2200000000000000000000
          000023234A536564D6F4AAADF2FFD8DCFDFFAEBAFAFF91A3FAFF8B9DFAFF9CA9
          FBFFBAC7FCFF707BE9FF4957C3F4171D42530000000000000000000000000000
          00000000000023234A536060C9E68E93EDFFBEC3F8FFCCD3F9FFC4CBF9FFAAB4
          F4FF6670E2FF4B55BDE61A1E4353000000000000000000000000000000000000
          000000000000000000000F0F1F2334346E7D595BBEDB5E5FD2F35C5FD0F35055
          BADB2D31697D0C0D1D2300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000307936FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000037833EFF347E3AFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003F8D46FF57A15EFF559E5AFF357F3BFF317B37FF2662
          2AD31230146B0000000000000000000000000000000000000000000000000000
          00000000000046984EFF5FA966FF83C68BFF81C587FF7EC385FF7CC282FF6DB5
          74FF4D9552FF235C27CB040B051A000000000000000000000000000000000000
          0000000000004A9D53FF63AD6AFF87C98FFF85C78BFF82C689FF7FC487FF75BF
          7CFF7BC282FF559D5BFF235C27CB000000000000000000000000000000000000
          000000000000000000004B9E53FF63AE6CFF60AA68FF409048FF5AA361FF81C5
          87FF7EC485FF7CC282FF4E9654FF1331156B0000000000000000000000000000
          00000000000000000000000000004B9F54FF489A50FF000000002A5E30A63E8B
          44FD7CC184FF77C17EFF71B777FF29662ED80000000000000000000000000000
          0000000000000000000000000000000000004CA055FF0000000000000000224A
          258263AB6AFF83C78AFF82C588FF347E3AFF0000000000000000000000000000
          00005CB666FF59B263FF56AE60FF53A95CFF254D2A770000000000000000244D
          288267AF6FFF88C98FFF85C88CFF38843EFF0000000000000000000000000000
          0000509E5AD894D19DFF9DD5A6FF93CF9BFF52A95CFD29552D8227522C82499B
          51FD89C990FF85C88CFF7DC084FF337439D80000000000000000000000000000
          000029502E6B7BC785FFA0D7A9FF9ED6A7FF97D1A0FF77C081FF75BC7EFF8ECC
          97FF93CF9BFF90CE98FF61AB69FF1B3C1E6B0000000000000000000000000000
          0000000000004E9857CB82CA8CFFA1D8ABFF99D4A2FF9CD5A6FF9BD4A4FF92D0
          9BFF96D19EFF71B879FF397A40CB000000000000000000000000000000000000
          0000000000000A140B1A4E9858CB7CC887FF96D3A1FFA0D8AAFF9ED6A7FF90CE
          99FF70BA78FF3F8246CB0810091A000000000000000000000000000000000000
          00000000000000000000000000002A512E6B519F5BD85EB969FF5BB566FF4B96
          54D82449286B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001340
          58FF15425EFF25699CFF2C76B4FF285E7EAD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001242
          59FF5D9CD4FFA6CFF5FFA9CFECFF488BC1FF2C76B4FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E6D
          93FFCBE3F9FF61AAECFF4098E8FF1567C2FF1660AAFF2C76B4FF000000000000
          0000000000000000000000000000000000000000000000000000000000001E6D
          93FFC8E1F2FFD1E7FAFF347DB5FF3199C3FF6DC4DCFF4A9CCFFF3483C7FF0000
          000000000000000000000000000000000000000000000000000000000000040C
          13202689B9FFB0CBE1FF67A9C8FF60DCF5FF44D6F4FF8EEEFAFF5DB4E6FF3B8F
          D9FF000000000000000000000000000000000000000000000000000000000000
          0000000000002689B9FFBEE6F2FFB3F4FCFF60DCF5FF44D6F4FF8EEEFAFF5DB4
          E6FF3B8FD9FF0000000000000000000000000000000000000000000000000000
          000000000000000000002790BFFFC3EDF8FFB3F4FCFF60DCF5FF44D6F4FF8EEE
          FAFF5DB4E6FF3B8FD9FF00000000000000000000000000000000000000000000
          00000000000000000000000000002FBAE4FFC3EDF8FFB3F4FCFF60DCF5FF44D6
          F4FF8EEEFAFF5DB4E6FF3B8FD9FF000000000000000000000000000000000000
          0000000000000000000000000000000000002FBAE4FFC3EDF8FFB3F4FCFF60DC
          F5FF44D6F4FF8EEEFAFF5DB4E6FF3B8FD9FF0000000000000000000000000000
          000000000000000000000000000000000000000000002FBAE4FFC3EDF8FFB3F4
          FCFF68D9F5FF6FCFF3FF599DD0FF73ABDDFF4F91C9FF00000000000000000000
          00000000000000000000000000000000000000000000000000002FBAE4FFC3ED
          F8FFA8E2F8FF6CAEDDFFA5CFF4FFA5CFF4FFBDDBF7FF508EC5F7000000000000
          0000000000000000000000000000000000000000000000000000000000002FBA
          E4FFA7D4F4FFC5E1F8FFCCE3F9FFCCE3F9FFBDDBF7FF4E8FC7FD000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000050A8D9FF6AA5D8FFC9E1F7FFCBE3F8FF4295CAFF215984AE000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002070809489CC9EA4F92C8FD4E90C8FF2989B8DF05101619000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000038843EFF35803BFF327C38FF2F7835FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003B8942FF7EC383FF7BC282FF337C38FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003F8D46FF81C587FF7EC385FF539C59FF1D46208F000000000000
          0000000000001335167B00010003000000000000000000000000000000000000
          00000000000042924AFF80D189FF6DC977FF73C77CFF307336E21D47208F0000
          000000000000235E28D21A451C9F000000000000000000000000000000000000
          00000000000046974EFF83D38CFF65C870FF7ED087FF78BE7FFF549D5AFF347E
          3AFF317A37FF4C9452FF4A914FFF18401B930000000000000000000000000000
          000000000000499C52FF87D490FF4A9D52FF61B96BFF7FC587FF82C588FF7FC4
          86FF7DC283FF7BC281FF78BF7DFF4A9250FF163C198A00000000000000000000
          0000000000004DA155FF89D694FF69BE73FF4E9C56FF5BA562FF6DB474FF78BD
          7FFF80C487FF7EC384FF7AC080FF4D9553FF173C198400000000000000000000
          00000000000050A559FF8CD897FF8BD695FF59A861FF3A8140E939803FE43E8C
          45FF3B8842FF569F5CFF539C59FF1C4620900000000000000000000000000000
          00000000000053AA5DFF90D99BFF8DD899FF4A9E53FF00000000000000000000
          000000000000317136D22251279C000000000000000000000000000000000000
          00000000000056AE60FF93DA9DFF90D99CFF4EA257FF00000000000000000000
          0000000000001E42217801020103000000000000000000000000000000000000
          00000000000059B263FF96DCA2FF94DB9FFF51A75AFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005CB666FF99DDA4FF96DDA2FF54AB5EFF00000000000000000000
          000000000000000000000000000000000000000000000000000000000000478A
          4FB85EB769F779C983FF9BDEA7FF99DDA5FF71C37CFF52A75BF73C7B43BB0000
          0000000000000000000000000000000000000000000000000000000000000205
          030654A35ED97ACC86FF9DE0AAFF9CDFA8FF74C580FF4C9754DB020402060000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000509C5ACF7BCC86FF79CA85FF4C9655D100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004C9455C44D9656C90000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object ds_dedail: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT sh.V,sh.STRUCTDEFECT, sd.name SDNAME,'
      '       sh.NOTE, '
      '       sh.QUANTITY,m.ed,'
      '       sh.MNOTE,'
      '       sh.showhouse,sh.house,sh.mlist'
      'FROM SHOWRESULT sh'
      'left outer join STRUCTDEFECT sd on sd.code=sh.structdefect'
      'left outer join mlist m on m.code=sh.mlist'
      
        'where sh.SHOWHOUSE=:mas_SHOWHOUSE and sh.MLIST=:mas_MLIST and sh' +
        '.house=:mas_house')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    AutoCommit = True
    DataSource = src_showhouse
    Left = 584
    Top = 512
    dcForceOpen = True
  end
  object src_detail: TDataSource
    DataSet = ds_dedail
    Left = 614
    Top = 512
  end
  object ppm1: TcxGridPopupMenu
    Grid = grd1
    PopupMenus = <
      item
        HitTypes = []
        Index = 0
      end>
    AlwaysFireOnPopup = True
    Left = 400
    Top = 152
  end
end
