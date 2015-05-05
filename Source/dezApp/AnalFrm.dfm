object AnalForm: TAnalForm
  Left = 0
  Top = 0
  HelpContext = 19
  Caption = #1040#1085#1072#1083#1080#1090#1080#1095#1077#1089#1082#1080#1081' '#1086#1090#1095#1077#1090
  ClientHeight = 627
  ClientWidth = 890
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Ribbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 890
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
    Top = 50
    Width = 890
    Height = 577
    Align = alClient
    TabOrder = 5
    LayoutLookAndFeel = LCxSkin1
    object grd1: TcxGrid
      Left = 10
      Top = 224
      Width = 250
      Height = 200
      TabOrder = 1
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object vb1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = vb1CustomDrawCell
        DataController.DataSource = src_rep
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
          end>
        object clvb1Column1: TcxGridDBBandedColumn
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          SortIndex = 0
          SortOrder = soAscending
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
      end
      object l1: TcxGridLevel
        GridView = vb1
      end
    end
    object grd2: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object vb2: TcxGridDBBandedTableView
        OnKeyUp = vb2KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = vb2CellClick
        DataController.DataSource = src_top
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        Bands = <
          item
          end>
      end
      object l2: TcxGridLevel
        GridView = vb2
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
    object Itm_grd2: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 196
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object splt1: TdxLayoutSplitterItem
      CaptionOptions.Text = 'Splitter'
      Parent = grp1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object Itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object bm1: TdxBarManager
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
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
    Left = 536
    Top = 80
    DockControlHeights = (
      0
      0
      26
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
      FloatLeft = 755
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn1'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 163
          Visible = True
          ItemName = 'ed_kontr'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 58
          Visible = True
          ItemName = 'ed_step'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'ed_d11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'ed_d22'
        end
        item
          Visible = True
          ItemName = 'lb_type'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn1: TdxBarButton
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
      OnClick = btn1Click
    end
    object ed_d11: TcxBarEditItem
      Caption = #1055#1077#1088#1080#1086#1076' '#1089':'
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076' '#1089':'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ImmediateDropDownWhenActivated = True
      Properties.ImmediatePost = True
    end
    object ed_d22: TcxBarEditItem
      Caption = #1087#1086':'
      Category = 0
      Hint = #1087#1086':'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ImmediateDropDownWhenActivated = True
      Properties.ImmediatePost = True
    end
    object ed_step: TcxBarEditItem
      Caption = #1043#1086#1076
      Category = 0
      Hint = #1043#1086#1076
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxMaskEditProperties'
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      InternalEditValue = 0
    end
    object ed_kontr: TcxBarEditItem
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1086#1076#1088#1103#1076#1095#1080#1082#1072
      Category = 0
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1087#1086#1076#1088#1103#1076#1095#1080#1082#1072
      Visible = ivAlways
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_kontr
    end
    object lb_type: TcxBarEditItem
      Caption = #1058#1080#1087
      Category = 0
      Hint = #1058#1080#1087
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1074#1077#1089#1085#1072
        #1086#1089#1077#1085#1100
        #1074#1089#1077)
    end
    object btn_excel: TdxBarButton
      Caption = 'Excel'
      Category = 0
      Hint = 'Excel'
      Visible = ivNever
      Glyph.Data = {
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
      OnClick = btn_excelClick
    end
  end
  object LSkin1: TdxLayoutLookAndFeelList
    Left = 560
    Top = 80
    object LCxSkin1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
    end
  end
  object ds_rep: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '      s.CODE,'
      '      s.SRVDOG,sd.nomer DogNom,'
      '      k.name KontrName,'
      '      s.SHOWDATE,'
      '      s.STYPE,'
      '      s.SYEAR,'
      '      s.STATE,'
      '      sp.house, h.nomer HouseNom,'
      '      st.name StreetName,'
      '      1 planed,'
      '      sp.d1,'
      '      sp.d2,sp."LOCK",sp.LOCKDATA,'
      '      sp.showdate shdate,'
      '      iif(sp.showdate is null, 0,1) prov'
      'from SHOWHOUSE s'
      'left outer join showhouseplan sp on s.code=sp.showhouse'
      'left outer join house h on sp.house=h.code'
      'left outer join srvdog sd on s.srvdog=sd.code'
      'left outer join kontragent k on sd.kontragent=k.code'
      'left outer join STREET st on h.street=st.code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 288
    Top = 320
  end
  object src_rep: TDataSource
    DataSet = mt_rep
    Left = 320
    Top = 320
  end
  object mt_rep: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 288
    Top = 368
  end
  object strep1: TcxStyleRepository
    Left = 584
    Top = 80
    PixelsPerInch = 96
    object styl_select1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object styl_fakt: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
  end
  object src_kontr: TDataSource
    Left = 52
    Top = 120
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = ed_d11
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = ed_d22
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = ed_kontr
        Properties.Strings = (
          'EditValue'
          'Properties.DropDownWidth')
      end
      item
        Component = ed_step
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = lb_type
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
    Left = 616
    Top = 80
  end
  object mt_top: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 264
    Top = 72
  end
  object src_top: TDataSource
    DataSet = mt_top
    Left = 296
    Top = 72
  end
  object ds_top: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '      sd.kontragent,'
      '      k.name KontrName,'
      '      s.SRVDOG,sd.nomer DogNom,'
      '      1 planed,'
      '      sp.d1,'
      '      sp.d2,'
      '      sp.showdate,sp."LOCK",sp.LOCKDATA,'
      '      iif(sp.showdate is null, 0,1) prov'
      'from SHOWHOUSE s'
      'left outer join showhouseplan sp on s.code=sp.showhouse'
      'left outer join srvdog sd on s.srvdog=sd.code'
      'left outer join kontragent k on sd.kontragent=k.code')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 264
    Top = 104
  end
  object dlgSave: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' Excel|*.xls'
    Left = 264
    Top = 176
  end
end
