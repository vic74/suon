object BgRepForm: TBgRepForm
  Left = 0
  Top = 0
  Caption = #1041#1102#1076#1078#1077#1090' '#1088#1072#1089#1093#1086#1076#1086#1074' '#1080' '#1076#1086#1093#1086#1076#1086#1074
  ClientHeight = 509
  ClientWidth = 755
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
  object Ribbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 755
    Height = 24
    BarManager = MainForm.bm1
    ColorSchemeName = 'Blue'
    ShowTabGroups = False
    ShowTabHeaders = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object Ribbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Ribbon1Tab1'
      Groups = <>
      Index = 0
    end
  end
  object lcntr1: TdxLayoutControl
    Left = 0
    Top = 77
    Width = 755
    Height = 432
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = LCxSkin1
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_mtbgRep
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = clvb1commission
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb1smeta
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb1bonus
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb1PSRVSUM
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb1SRVSUM
          end
          item
            Kind = skSum
            Position = spFooter
            Column = clvb1Plan
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = clvb1SRVSUM
          end
          item
            Kind = skSum
            Column = clvb1PSRVSUM
          end
          item
            Kind = skSum
            Column = clvb1smeta
          end
          item
            Kind = skSum
            Column = clvb1commission
          end
          item
            Kind = skSum
            Column = clvb1Plan
          end
          item
            Kind = skSum
            Column = clvb1bonus
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.HeaderAutoHeight = True
        Bands = <
          item
            Caption = #1040#1076#1088#1077#1089
          end
          item
            Width = 184
          end
          item
            Width = 240
          end
          item
            Caption = #1047#1072#1090#1088#1072#1090#1099
            Width = 279
          end>
        object clvb1CODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CODE '
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1REC_TYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'REC_TYPE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1STREET: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STREET'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object clvb1STREETNAME: TcxGridDBBandedColumn
          Caption = #1059#1083#1080#1094#1072
          DataBinding.FieldName = 'STREETNAME'
          HeaderAlignmentHorz = taCenter
          Width = 111
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1HOUSE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HOUSE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'TOTAL_SQ'
            end
            item
              FieldName = 'LIVING_SQ'
            end
            item
              FieldName = 'COMMERCE_SQ'
            end
            item
              FieldName = 'CELLAR_SQ'
            end
            item
              FieldName = 'LODGER_CNT'
            end
            item
              FieldName = 'FLAT_CNT'
            end
            item
              FieldName = 'ACCCODE_CNT'
            end
            item
              FieldName = 'ENTRANCE_CNT'
            end
            item
              FieldName = 'LIFT_CNT'
            end
            item
              FieldName = 'GARBAGE_CNT'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_house
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object clvb1DOM: TcxGridDBBandedColumn
          Caption = #1044#1086#1084
          DataBinding.FieldName = 'DOM'
          HeaderAlignmentHorz = taCenter
          Width = 54
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object clvb1DU: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DU'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1DUNAME: TcxGridDBBandedColumn
          Caption = #1044#1086#1084#1086#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'DUNAME'
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          Width = 121
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1total_sq: TcxGridDBBandedColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'total'
          HeaderAlignmentHorz = taCenter
          Width = 63
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1Plan: TcxGridDBBandedColumn
          Caption = #1055#1083#1072#1085
          DataBinding.FieldName = 'Plan'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1SRVSUM: TcxGridDBBandedColumn
          Caption = #1060#1072#1082#1090
          DataBinding.FieldName = 'SRVSUM'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1PSRVSUM: TcxGridDBBandedColumn
          Caption = #1055#1077#1085#1103
          DataBinding.FieldName = 'SumPsrv'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object clvb1ACCCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCCODE '
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object clvb1bonus: TcxGridDBBandedColumn
          Caption = #1042#1086#1079#1085#1072#1075#1088#1072#1078#1076#1077#1085#1080#1077' '#1059#1050
          DataBinding.FieldName = 'bonus'
          HeaderAlignmentHorz = taCenter
          Width = 101
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clvb1commission: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
          DataBinding.FieldName = 'commission'
          HeaderAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object clvb1smeta: TcxGridDBBandedColumn
          Caption = #1057#1084#1077#1090#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090
          DataBinding.FieldName = 'smeta'
          HeaderAlignmentHorz = taCenter
          Width = 88
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object l1: TcxGridLevel
        GridView = vb1
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
    object Itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = LCxSkin1
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object LSkin1: TdxLayoutLookAndFeelList
    Left = 640
    object LCxSkin1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = ed_bg
        Properties.Strings = (
          'EditValue'
          'Properties.DropDownWidth')
      end
      item
        Component = ed_bgLine
        Properties.Strings = (
          'Properties.DropDownWidth')
      end
      item
        Component = ed_bonus
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = ed_budget
        Properties.Strings = (
          'EditValue'
          'Properties.DropDownWidth')
      end
      item
        Component = ed_Commission
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = ed_month
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = ed_year
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = vb1
        Properties.Strings = (
          'FilterRow.Visible'
          'OptionsView.Footer'
          'OptionsView.GroupByBox')
      end>
    StorageName = 'prop1'
    Left = 668
  end
  object ds_bgRep: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT '
      '       iif(a.srv=:srv,a.summa,0) SrvSum,'
      '       iif(a.srv=:psrv,a.summa,0) SumPsrv,'
      '       A.HOUSE,H.nomer dom,'
      '       H.street, S.name StreetName,'
      '       A.DU,d.name DuName,'
      '       case'
      '        when :tbase = 0 then h.total_sq'
      '        when :tbase = 1 then h.living_sq'
      '        when :tbase = 2 then h.commerce_sq'
      '        when :tbase = 3 then h.cellar_sq'
      '        when :tbase = 4 then h.lodger_cnt'
      '        when :tbase = 5 then h.flat_cnt'
      '        when :tbase = 6 then h.acccode_cnt'
      '        when :tbase = 7 then h.entrance_cnt'
      '        when :tbase = 8 then h.lift_cnt'
      '        when :tbase = 9 then h.garbage_cnt'
      '        else 0'
      '       end Total,'
      '       h.total_sq '
      ''
      'FROM ACCCODEPRV A'
      'left outer join house h on a.house=h.code'
      'left outer join street s on h.street=s.code'
      'left outer join du d on a.du=d.code'
      'left outer join BudgetLine b on h.budget=b.budget')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 104
    Top = 176
  end
  object src_bgrep: TDataSource
    DataSet = ds_bgRep
    Left = 132
    Top = 176
  end
  object bm1: TdxBarManager
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
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 611
    DockControlHeights = (
      0
      0
      53
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
      FloatLeft = 728
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_exec'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 123
          Visible = True
          ItemName = 'ed_budget'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 137
          Visible = True
          ItemName = 'ed_bgLine'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 92
          Visible = True
          ItemName = 'ed_month'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 56
          Visible = True
          ItemName = 'ed_year'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 52
          Visible = True
          ItemName = 'ed_bonus'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 47
          Visible = True
          ItemName = 'ed_Commission'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_exec: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000008242F3700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002290B9D5249AC9E902080A0C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000002080A0C2DAEDFFF2BABDEFF145A778A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000238EB5CF4FBCE7FF4CBAE6FF239BCCED030F14170000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002BAFDFFF84D3F2FF55BDE7FF2EAADEFF145D
        7C90000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002286A9C070CCEEFF83D2F2FF7ECEF1FF4AB6
        E4FF229CCFF1030F14170000000000000000000000000000000035B7D9F035BB
        E0F834B8DFF832B6DEF830B3DDF82EB1DCF886D7F3FF2FB6EBFF4ABCECFF80CE
        F1FF51B9E6FF2CA8DDFF1664869D00000000000000000000000035B3D4E975DA
        F2FF93E6F8FF91E3F7FF8DE0F6FF8ADCF5FF8ADBF5FF88D7F4FF84D3F2FF7FCF
        F1FF7CCCF0FF7AC9EFFF48B4E3FF229DD1F504161E23000000000D2B32374FCD
        ECFF98E9F9FF4AD5F3FF45CFF1FF40CAF0FF38C2EEFF89D9F4FF2EB3E0FE2BAC
        DAF82AA9D9F828A7D8F826A4D6F824A1D5F82095C7E9000000000000000038BE
        DFF480E1F5FF8EE6F8FF43D2F3FF3FCDF1FF39C7EFFF8CDCF5FF58C6EAFF1552
        6674000000000000000000000000000000000000000000000000000000001442
        4D545BD4EFFF99EAF9FF47D6F4FF42D0F2FF3DCBF0FF6ED5F3FF7FD7F3FF4AC0
        E7FF0E34414A0000000000000000000000000000000000000000000000000000
        00003CC5E4F993E9F9FF72E1F7FF45D4F3FF41CEF2FF3CC9F0FF8ADCF5FF70D0
        EFFF3DBBE4FF06191F2300000000000000000000000000000000000000000000
        00002069798364D9F1FF9AEBFAFF48D8F4FF44D3F3FF3FCEF1FF3AC8F0FF8CDC
        F5FF62CBEDFF30B6E0FC00000000000000000000000000000000000000000000
        0000000000003FCAE9FD9AEDFAFF99EBF9FF97E8F9FF94E5F8FF91E2F7FF8EDF
        F6FF8BDBF5FF56C7EBFF2FAFD8F3000000000000000000000000000000000000
        000000000000298396A23FCCEBFF3ECBEAFF3CC9E9FF3BC7E9FF3AC4E8FF38C2
        E7FF36C0E6FF35BDE5FF33BBE4FF2BA2C8E10000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_execClick
    end
    object ed_bg: TcxBarEditItem
      Caption = #1041#1102#1076#1078#1077#1090
      Category = 0
      Hint = #1041#1102#1076#1078#1077#1090
      Visible = ivAlways
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 250
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1041#1102#1076#1078#1077#1090' "'#1042#1099#1074#1086#1079' '#1058#1041#1054'"'
        #1041#1102#1076#1078#1077#1090' "'#1042#1044#1043#1054'"'
        #1041#1102#1076#1078#1077#1090' "'#1057#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1080' '#1088#1077#1084#1086#1085#1090' '#1084#1091#1089#1086#1088#1086#1087#1088#1086#1074#1086#1076#1072'"')
      Properties.OnChange = ed_bgPropertiesChange
    end
    object ed_month: TcxBarEditItem
      Caption = #1087#1077#1088#1080#1086#1076
      Category = 0
      Hint = #1087#1077#1088#1080#1086#1076
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.ImmediatePost = True
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
    end
    object ed_year: TcxBarEditItem
      Caption = #1075#1086#1076
      Category = 0
      Hint = #1075#1086#1076
      Visible = ivAlways
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.MaxValue = 2020.000000000000000000
      Properties.MinValue = 1990.000000000000000000
      Properties.ValidateOnEnter = False
      InternalEditValue = '2011'
    end
    object ed_budget: TcxBarEditItem
      Caption = #1065#1072#1073#1083#1086#1085' '#1073#1102#1076#1078#1077#1090#1072
      Category = 0
      Hint = #1065#1072#1073#1083#1086#1085' '#1073#1102#1076#1078#1077#1090#1072
      Visible = ivAlways
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownSizeable = True
      Properties.GridMode = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          Width = 80
          FieldName = 'NAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_budget
      Properties.OnChange = ed_budgetPropertiesChange
    end
    object ed_bonus: TcxBarEditItem
      Caption = #1042#1086#1079#1085#1072#1075#1088#1072#1078#1076#1077#1085#1080#1077
      Category = 0
      Hint = #1042#1086#1079#1085#1072#1075#1088#1072#1078#1076#1077#1085#1080#1077
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.ImmediatePost = True
      Properties.ValidateOnEnter = False
    end
    object ed_Commission: TcxBarEditItem
      Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
      Category = 0
      Hint = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1081' '#1089#1073#1086#1088
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.ImmediatePost = True
    end
    object ed_bgLine: TcxBarEditItem
      Caption = #1057#1090#1072#1090#1100#1103' '#1073#1102#1076#1078#1077#1090#1072
      Category = 0
      Hint = #1057#1090#1072#1090#1100#1103' '#1073#1102#1076#1078#1077#1090#1072
      Visible = ivAlways
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 320
      Properties.GridMode = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'BUDGET'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'SRV'
        end
        item
          Caption = #1042#1080#1076' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1103
          Width = 80
          FieldName = 'SRVNAME'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'PSRV'
        end
        item
          Caption = #1055#1077#1085#1103
          Width = 80
          FieldName = 'PSRVNAME'
        end
        item
          Caption = #1058#1072#1088#1080#1092
          Width = 40
          FieldName = 'TARIF'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'TBASE'
        end
        item
          Caption = #1041#1072#1079#1072' '#1076#1083#1103' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1103
          Width = 120
          FieldName = 'TBASENAME'
        end>
      Properties.ListFieldIndex = 3
      Properties.ListSource = src_bglist
      Properties.OnChange = ed_bgLinePropertiesChange
    end
  end
  object mt_bgRep: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 104
    Top = 216
  end
  object ds_house: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NOMER, '
      '       STREET, '
      '       DU, '
      '       TOTAL_SQ, '
      '       LIVING_SQ, '
      '       LODGER_CNT, '
      '       CELLAR_SQ, '
      '       FLAT_CNT, '
      '       ACCCODE_CNT, '
      '       FLOOR_CNT, '
      '       LIFT_CNT, '
      '       ENTRANCE_CNT, '
      '       GARBAGE_CNT, '
      '       COMMERCE_SQ, '
      '       BUILDYEAR, '
      '       "ACTIVE", '
      '       BUDGET'
      'FROM HOUSE')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 200
    Top = 232
  end
  object ds_srv: TpFIBDataSet
    SelectSQL.Strings = (
      'select code,name from budgetshablon')
    AfterOpen = ds_srvAfterOpen
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 232
    Top = 184
  end
  object src_budget: TDataSource
    DataSet = ds_srv
    Left = 260
    Top = 184
  end
  object src_mtbgRep: TDataSource
    DataSet = mt_bgRep
    Left = 132
    Top = 216
  end
  object src_house: TDataSource
    DataSet = ds_house
    Left = 232
    Top = 232
  end
  object ds_bglist: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT bl.CODE, '
      '       bl.BUDGET, '
      '       bl.SRV, sv.name SrvName,'
      '       bl.TARIF, '
      '       bl.PSRV, psv.name PsrvName,'
      '       bl.TBASE,'
      '       case'
      '        when bl.TBASE = 0 then '#39#1087#1083#1086#1097#1072#1076#1100' '#1086#1073#1097#1072#1103#39
      '        when bl.TBASE = 1 then '#39#1087#1083#1086#1097#1072#1076#1100' '#1078#1080#1083#1072#1103#39
      '        when bl.TBASE = 2 then '#39#1087#1083#1086#1097#1072#1076#1100' '#1085#1077#1078#1080#1083#1072#1103#39
      '        when bl.TBASE = 3 then '#39#1087#1083#1086#1097#1072#1076#1100' '#1087#1086#1076#1074#1072#1083#1086#1074#39
      '        when bl.TBASE = 4 then '#39#1082#1086#1083'-'#1074#1086' '#1078#1080#1083#1100#1094#1086#1074#39
      '        when bl.TBASE = 5 then '#39#1082#1086#1083'-'#1074#1086' '#1082#1074#1072#1088#1090#1080#1088#39
      '        when bl.TBASE = 6 then '#39#1082#1086#1083'-'#1074#1086' '#1083#1080#1094#1077#1074#1099#1093' '#1089#1095#1077#1090#1086#1074#39
      '        when bl.TBASE = 7 then '#39#1082#1086#1083'-'#1074#1086' '#1087#1086#1076#1098#1077#1079#1076#1086#1074#39
      '        when bl.TBASE = 8 then '#39#1082#1086#1083'-'#1074#1086' '#1083#1080#1092#1090#1086#1074#39
      '        when bl.TBASE = 9 then '#39#1082#1086#1083'-'#1074#1086' '#1084#1091#1089#1086#1088#1086#1087#1088#1086#1074#1086#1076#1086#1074#39
      '        else '#39#1085#1077' '#1091#1082#1072#1079#1072#1085#1086#39
      '       end TBASEName'
      'FROM BUDGETLINE bl'
      'left outer join srvlist sv on bl.srv=sv.srv'
      'left outer join srvlist psv on bl.psrv=psv.srv')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 32
    Top = 176
  end
  object src_bglist: TDataSource
    DataSet = ds_bglist
    Left = 32
    Top = 208
  end
end
