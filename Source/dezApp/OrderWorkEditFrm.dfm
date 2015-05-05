object OrderWorkEditForm: TOrderWorkEditForm
  Left = 0
  Top = 0
  Caption = #1056#1072#1073#1086#1090#1099' '#1058#1054
  ClientHeight = 334
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DockSite1: TdxDockSite
    Left = 0
    Top = 0
    Width = 640
    Height = 334
    Align = alClient
    DockingType = 5
    OriginalWidth = 640
    OriginalHeight = 334
    object lDockSite1: TdxLayoutDockSite
      Left = 286
      Top = 0
      Width = 354
      Height = 334
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
      object lDockSite2: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 354
        Height = 334
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object DockPanel2: TdxDockPanel
        Left = 0
        Top = 0
        Width = 354
        Height = 334
        AllowDock = []
        AllowFloating = False
        AutoHide = False
        Caption = #1057#1087#1080#1089#1086#1082' '#1072#1076#1088#1077#1089#1086#1074
        CaptionButtons = []
        DockingType = 0
        OriginalWidth = 185
        OriginalHeight = 140
        object grd1: TcxGrid
          Left = 0
          Top = 0
          Width = 346
          Height = 304
          Align = alClient
          TabOrder = 0
          OnExit = grd1Exit
          LookAndFeel.NativeStyle = True
          object v1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = src_houseByDog
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = clv1SNAME
              end
              item
                Format = '0'
                Kind = skSum
                Column = clv1FLAG
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.ColumnFilteredItemsList = True
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsBehavior.AlwaysShowEditor = True
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = clv1SNAME
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.FooterAutoHeight = True
            OptionsView.GridLines = glHorizontal
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.Indicator = True
            object clv1HOUSE: TcxGridDBColumn
              DataBinding.FieldName = 'HOUSE'
              Visible = False
              VisibleForCustomization = False
            end
            object clv1FLAG: TcxGridDBColumn
              Caption = #1060#1083#1072#1075
              DataBinding.FieldName = 'FLAG'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Properties.OnChange = clv1FLAGPropertiesChange
              Options.ShowCaption = False
              Width = 41
            end
            object clv1SNAME: TcxGridDBColumn
              Caption = #1059#1083#1080#1094#1072
              DataBinding.FieldName = 'SNAME'
              Options.Editing = False
              Width = 403
            end
            object clv1NOMER: TcxGridDBColumn
              Caption = #1044#1086#1084
              DataBinding.FieldName = 'NOMER'
              Options.Editing = False
              Width = 77
            end
          end
          object l1: TcxGridLevel
            GridView = v1
          end
        end
      end
    end
    object DockPanel1: TdxDockPanel
      Left = 0
      Top = 0
      Width = 286
      Height = 334
      AllowDock = []
      AllowDockClients = []
      AllowFloating = False
      AutoHide = False
      Caption = 'DockPanel1'
      CaptionButtons = []
      ShowCaption = False
      DockingType = 1
      OriginalWidth = 286
      OriginalHeight = 140
      object lc1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 278
        Height = 326
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = lcf1
        object cbb_work: TcxLookupComboBox
          Left = 11
          Top = 47
          Properties.CaseSensitiveSearch = True
          Properties.DropDownHeight = 150
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 250
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_serviswork
          Properties.OnChange = cbb_workPropertiesChange
          Style.HotTrack = False
          TabOrder = 0
          Width = 256
        end
        object dt1: TcxDateEdit
          Left = 59
          Top = 84
          Properties.DateButtons = [btnClear, btnToday]
          Properties.ImmediatePost = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Style.HotTrack = False
          TabOrder = 1
          Width = 114
        end
        object spn_col: TcxSpinEdit
          Left = 59
          Top = 108
          Properties.ValueType = vtFloat
          Style.HotTrack = False
          TabOrder = 2
          Width = 114
        end
        object curEd_wprice: TcxCurrencyEdit
          Left = 59
          Top = 132
          Properties.DisplayFormat = ',0.00;-,0.00'
          Style.HotTrack = False
          TabOrder = 3
          Width = 114
        end
        object mmo1: TcxMemo
          Left = 3
          Top = 171
          Properties.ClearKey = 46
          Style.HotTrack = False
          TabOrder = 4
          Height = 120
          Width = 274
        end
        object btn_SaveWork: TcxButton
          Left = 5
          Top = 296
          Width = 270
          Height = 25
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          OptionsImage.ImageIndex = 10
          OptionsImage.Images = cmDb.iml1
          TabOrder = 5
          OnClick = btn_SaveWorkClick
        end
        object grp1: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          LayoutLookAndFeel = lcf1
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object grplc1Group1: TdxLayoutGroup
          CaptionOptions.Text = #1060#1080#1083#1100#1090#1088
          Parent = grp1
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object lItmlc1Item3: TdxLayoutItem
          AlignHorz = ahClient
          CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
          CaptionOptions.Layout = clTop
          Parent = grplc1Group2
          Control = cbb_work
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object grplc1Group2: TdxLayoutGroup
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          LayoutLookAndFeel = lcf1
          Parent = grplc1Group1
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object grplc1Group3: TdxLayoutGroup
          AlignVert = avClient
          CaptionOptions.Text = 'New Group'
          Offsets.Left = 2
          Parent = grp1
          ButtonOptions.Buttons = <>
          ShowBorder = False
          Index = 1
        end
        object lItmlc1Item5: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = #1044#1072#1090#1072
          Parent = grplc1Group3
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = True
          SizeOptions.Width = 170
          Control = dt1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lItmlc1Item6: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = #1054#1073#1098#1077#1084
          Parent = grplc1Group3
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = True
          SizeOptions.Width = 170
          Control = spn_col
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lItmlc1Item7: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = #1057#1090#1086#1080#1084#1086#1089#1090#1100
          Parent = grplc1Group3
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = True
          SizeOptions.Width = 170
          Control = curEd_wprice
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lItmlc1Item8: TdxLayoutItem
          AlignVert = avClient
          CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          CaptionOptions.Layout = clTop
          Parent = grplc1Group3
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = True
          SizeOptions.Height = 99
          Control = mmo1
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object grplc1Group4: TdxLayoutGroup
          CaptionOptions.Text = 'New Group'
          Parent = grplc1Group3
          ButtonOptions.Buttons = <>
          Padding.Bottom = 2
          Padding.AssignedValues = [lpavBottom]
          ShowBorder = False
          Index = 4
        end
        object lItmlc1Item11: TdxLayoutItem
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Parent = grplc1Group4
          Padding.Bottom = 4
          Padding.Left = 2
          Padding.Right = 2
          Padding.Top = 2
          Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
          Control = btn_SaveWork
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 1
      Offsets.RootItemsAreaOffsetVert = 1
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object DockingManager1: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    DockStyle = dsVS2005
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 504
    Top = 104
    PixelsPerInch = 96
  end
  object src_serviswork: TDataSource
    DataSet = ds_serviswork
    Left = 349
    Top = 104
  end
  object ds_serviswork: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from SERVISWORK'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 320
    Top = 104
  end
  object md_HouseByDog: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 413
    Top = 184
  end
  object ds_houseByDog: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT DISTINCT(sd.HOUSE),0 flag,h.nomer,s.name SNAME'
      'FROM SRVDOGHOUSE sd'
      'left outer join house h on h.code=sd.house'
      'left outer join street s on s.code=h.street'
      'left outer join SRVDOG d on d.CODE = sd.SRVDOG'
      'where d.KONTRAGENT = :kontr and d."ACTIVE" = 1'
      'order by s.name, h.nomer'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 440
    Top = 184
  end
  object src_houseByDog: TDataSource
    DataSet = md_HouseByDog
    Left = 384
    Top = 184
  end
  object ds_TOPLAN: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT TP.CODE,'
      '       TP.Y,'
      '       TP.HOUSE,h.nomer,'
      '       h.street,s.name StreetName,'
      '       TP.MLIST,m.name MlistName,'
      '       TP.SUMY'
      '       ,TP.NOTE'
      'FROM TOPLAN TP'
      'left outer join house h on h.code=tp.house'
      'left outer join street s on s.code=h.street'
      'left outer join mlist m on m.code=tp.mlist'
      ''
      'where tp.y = :y and tp.kontragent = :kontr and tp.house = :house')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 512
    Top = 160
  end
  object src_ToPlan: TDataSource
    DataSet = ds_TOPLAN
    Left = 544
    Top = 160
  end
end
