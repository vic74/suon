object RepByPOForm: TRepByPOForm
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072#1084
  ClientHeight = 588
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
  object docs1: TdxDockSite
    Left = 0
    Top = 0
    Width = 938
    Height = 588
    Align = alClient
    DockingType = 5
    OriginalWidth = 938
    OriginalHeight = 588
    object dlst1: TdxLayoutDockSite
      Left = 201
      Top = 0
      Width = 737
      Height = 588
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
      object dlst2: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 737
        Height = 588
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object dpnl2: TdxDockPanel
        Left = 0
        Top = 0
        Width = 737
        Height = 588
        AllowFloating = True
        AutoHide = False
        Caption = #1044#1072#1085#1085#1099#1077
        CaptionButtons = []
        Dockable = False
        DockingType = 0
        OriginalWidth = 681
        OriginalHeight = 140
        object lc2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 729
          Height = 558
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = lcf1
          object grd1: TcxGrid
            Left = 3
            Top = 3
            Width = 250
            Height = 200
            TabOrder = 0
            LockedStateImageOptions.Effect = lsieLight
            LockedStateImageOptions.ShowText = True
            LockedStateImageOptions.Text = #1087#1086#1076#1086#1078#1076#1080#1090#1077' ...'
            object v1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
            end
            object l1: TcxGridLevel
              GridView = v1
            end
          end
          object group2: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object itmlc2Item1: TdxLayoutItem
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGrid1'
            CaptionOptions.Visible = False
            Parent = group2
            Control = grd1
            ControlOptions.ShowBorder = False
            Index = 0
          end
        end
      end
    end
    object dpnl1: TdxDockPanel
      Left = 0
      Top = 0
      Width = 201
      Height = 588
      AllowFloating = True
      AutoHide = False
      Caption = #1060#1080#1083#1100#1090#1088
      CaptionButtons = [cbHide]
      Dockable = False
      TabsProperties.Options = [pcoAlwaysShowGoDialogButton, pcoGoDialog, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
      TabsProperties.TabCaptionAlignment = taLeftJustify
      DockingType = 1
      OriginalWidth = 201
      OriginalHeight = 140
      object lc1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 193
        Height = 558
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = lcf1
        OptionsImage.Images = cmDb.iml1
        object cbb1: TcxLookupComboBox
          Left = 13
          Top = 137
          Properties.DropDownSizeable = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_kontr
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Width = 167
        end
        object cbb_street: TcxLookupComboBox
          Left = 13
          Top = 218
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
          Properties.ListSource = src_STREET
          Properties.OnEditValueChanged = cbb_streetPropertiesEditValueChanged
          Style.HotTrack = False
          TabOrder = 5
          Width = 167
        end
        object cbb_house: TcxLookupComboBox
          Left = 51
          Top = 240
          Properties.CaseSensitiveSearch = True
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
              SortOrder = soAscending
              FieldName = 'NOMER'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.CaseInsensitive = True
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_HOUSE
          Style.HotTrack = False
          TabOrder = 6
          Width = 129
        end
        object cbb_type: TcxComboBox
          Left = 73
          Top = 285
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            #1058#1054
            #1058#1056)
          Style.HotTrack = False
          TabOrder = 7
          Text = #1058#1054
          Width = 121
        end
        object btn_exec: TcxButton
          Left = 3
          Top = 395
          Width = 191
          Height = 25
          Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
          LookAndFeel.NativeStyle = True
          OptionsImage.ImageIndex = 26
          OptionsImage.Images = cmDb.iml1
          TabOrder = 9
          OnClick = btn_execClick
        end
        object cbb_M1: TcxComboBox
          Left = 51
          Top = 34
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
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
          Style.HotTrack = False
          TabOrder = 0
          Text = #1103#1085#1074#1072#1088#1100
          Width = 82
        end
        object cbb_M2: TcxComboBox
          Left = 51
          Top = 56
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
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
          Style.HotTrack = False
          TabOrder = 2
          Text = #1103#1085#1074#1072#1088#1100
          Width = 82
        end
        object msk_Y1: TcxMaskEdit
          Left = 134
          Top = 34
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '\d\d\d\d'
          Style.HotTrack = False
          TabOrder = 1
          Text = '2012'
          Width = 46
        end
        object msk_Y2: TcxMaskEdit
          Left = 134
          Top = 56
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '\d\d\d\d'
          Style.HotTrack = False
          TabOrder = 3
          Text = '2012'
          Width = 46
        end
        object cbb_filtr: TcxComboBox
          Left = 13
          Top = 350
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            #1073#1077#1079' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1082#1080
            #1087#1086' '#1090#1080#1087#1091' '#1088#1072#1073#1086#1090#1099
            #1087#1086' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1091)
          Properties.OnEditValueChanged = cbb_filtrPropertiesEditValueChanged
          Style.HotTrack = False
          TabOrder = 8
          Text = #1073#1077#1079' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1082#1080
          Width = 121
        end
        object btn_print: TcxButton
          Left = 3
          Top = 431
          Width = 75
          Height = 25
          Caption = #1055#1077#1095#1072#1090#1100
          LookAndFeel.NativeStyle = True
          OptionsImage.ImageIndex = 3
          OptionsImage.Images = cmDb.iml1
          TabOrder = 10
          OnClick = btn_printClick
        end
        object group1: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          LayoutLookAndFeel = lcf1
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object grouplc1Group1: TdxLayoutGroup
          AlignHorz = ahClient
          CaptionOptions.Text = #1055#1077#1088#1080#1086#1076
          Parent = group1
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object lc1Group1: TdxLayoutGroup
          CaptionOptions.Text = #1040#1076#1088#1077#1089
          Parent = group1
          ButtonOptions.Buttons = <
            item
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000C0C0FF00C0C0
                FF00CACAFF469191E4F5121245F5000000460000000000000000000000000000
                0000000000000000000000000000000000000000000000000000C0C0FF00C0C0
                FF48BFBFFFF7DADAFFFF4D4DD2FF000039F70000004800000000000000000000
                0000000000000000000000000000000000000000000000000000C0C0FF48C0C0
                FFF7D1D1FFFF7D7DE8FF0C0CC7FF0000B9FF000040F700000048000000000000
                0000000000000000000000000000000000000000000000000000BFBFFFFFCECE
                FFFF7E7EEAFF0000BDFF0000BFFF0000C6FF0000B8FF000040FD000000440000
                0000000000000000000000000000000000000000000000000000CACAFF837F7F
                E9FF0000BBFF0000BFFF0000C0FF0000C0FF0000C4FF0000B9FF00003CF50000
                0048000000000000000000000000000000000000000000000000C3C3FF00B5B5
                F97E3232D0FF0000BBFF0000C0FF0000C0FF0000C0FF0000C5FF0103BCFF2113
                36F9000000460000000000000000000000000000000000000000C0C0FF00C4C4
                FF00C3C3FE7E3232D0FF0000BCFF0000C0FF0000BFFF0000BCFF9CAAF7FFEFAA
                A0FF3E0000FB0000004400000000000000000000000000000000C0C0FF00C0C0
                FF00C6C6FF00C2C2FC833838D0FF0000BAFF0000BCFF919BEDFFFFFAE8FFFF92
                93FFE75B5BFF3F0000F500000048000000000000000000000000C0C0FF00C0C0
                FF00BFBFFF00C5C5FF00C0C0FF7C3536D1FF9199EBFFFFF1ECFFFF8483FFFF7B
                7BFFFF8B8BFFE45E5EFF410505FF000000460000000000000000C0C0FF00C0C0
                FF00C0C0FF00C0C0FF00BFC0FF00D8D5FF81FFD5CCFFFF8584FFFF7B7BFFFF80
                80FFFF8080FFFF8989FFE45E5EFF3D0202F70000004800000000C0C0FF00C0C0
                FF00C0C0FF00C0C0FF00BEC0FF00CBC0F400FFB7B481FF8E8EFFFF7C7CFFFF80
                80FFFF8080FFFF7F7FFFFF8A8AFFE75E5EFF400303F700000048C0C0FF00C0C0
                FF00C0C0FF00C0C0FF00BEC0FF00CBC0F400FFC2BF00FFC1C17CFF9090FFFF7B
                7BFFFF8080FFFF8080FFFF8080FFFF8A8AFFE35E5EFF490C0CF9C0C0FF00C0C0
                FF00C0C0FF00C0C0FF00BEC0FF00CBC0F400FFC0BD00FFC1C100FFC1C183FF91
                91FFFF7B7BFFFF8080FFFF8080FFFF8080FFFF9090FFAE2525FDC0C0FF00C0C0
                FF00C0C0FF00C0C0FF00BEC0FF00CBC0F400FFC0BD00FFC0C000FFC2C200FFC1
                C17EFF9191FFFF7B7BFFFF8282FFFF8A8AFFBF4040FF210303DBC0C0FF00C0C0
                FF00C0C0FF00C0C0FF00BEC0FF00CBC0F400FFC0BD00FFC0C000FFC0C000FFC1
                C100FFC1C17EFF9090FFFF8585FFC13F3FFF1C0000D50000001CC0C0FF00C0C0
                FF00C0C0FF00C0C0FF00BEC0FF00CBC0F400FFC0BD00FFC0C000FFC0C000FFC0
                C000FFC2C200FFC8C883C45353F5180000D70000001C00000000}
              Hint = #1054#1095#1080#1089#1090#1080#1090#1100
              OnClick = lc1Group1Button0Click
            end>
          Index = 2
        end
        object itmlc1Item12: TdxLayoutItem
          AlignHorz = ahClient
          CaptionOptions.Text = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          CaptionOptions.Layout = clTop
          LayoutLookAndFeel = lcf1
          Parent = grouplc1Group3
          Control = cbb1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object itmlc1Item13: TdxLayoutItem
          CaptionOptions.Text = #1091#1083#1080#1094#1072
          CaptionOptions.Layout = clTop
          Parent = lc1Group1
          Control = cbb_street
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object itmlc1Item14: TdxLayoutItem
          CaptionOptions.Text = #1076#1086#1084
          Parent = lc1Group1
          Control = cbb_house
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object itmlc1Item15: TdxLayoutItem
          CaptionOptions.Text = #1074#1080#1076' '#1091#1089#1083#1091#1075'      '
          Parent = group1
          Padding.Top = 10
          Padding.AssignedValues = [lpavTop]
          Control = cbb_type
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object itmlc1Item16: TdxLayoutItem
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Parent = group1
          Padding.Bottom = 10
          Padding.Top = 10
          Padding.AssignedValues = [lpavBottom, lpavTop]
          Control = btn_exec
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object grouplc1Group3: TdxLayoutGroup
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          Parent = group1
          SizeOptions.AssignedValues = [sovSizableVert]
          SizeOptions.SizableVert = True
          SizeOptions.Height = 41
          ButtonOptions.Buttons = <
            item
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000C0C0FF00C0C0
                FF00CACAFF469191E4F5121245F5000000460000000000000000000000000000
                0000000000000000000000000000000000000000000000000000C0C0FF00C0C0
                FF48BFBFFFF7DADAFFFF4D4DD2FF000039F70000004800000000000000000000
                0000000000000000000000000000000000000000000000000000C0C0FF48C0C0
                FFF7D1D1FFFF7D7DE8FF0C0CC7FF0000B9FF000040F700000048000000000000
                0000000000000000000000000000000000000000000000000000BFBFFFFFCECE
                FFFF7E7EEAFF0000BDFF0000BFFF0000C6FF0000B8FF000040FD000000440000
                0000000000000000000000000000000000000000000000000000CACAFF837F7F
                E9FF0000BBFF0000BFFF0000C0FF0000C0FF0000C4FF0000B9FF00003CF50000
                0048000000000000000000000000000000000000000000000000C3C3FF00B5B5
                F97E3232D0FF0000BBFF0000C0FF0000C0FF0000C0FF0000C5FF0103BCFF2113
                36F9000000460000000000000000000000000000000000000000C0C0FF00C4C4
                FF00C3C3FE7E3232D0FF0000BCFF0000C0FF0000BFFF0000BCFF9CAAF7FFEFAA
                A0FF3E0000FB0000004400000000000000000000000000000000C0C0FF00C0C0
                FF00C6C6FF00C2C2FC833838D0FF0000BAFF0000BCFF919BEDFFFFFAE8FFFF92
                93FFE75B5BFF3F0000F500000048000000000000000000000000C0C0FF00C0C0
                FF00BFBFFF00C5C5FF00C0C0FF7C3536D1FF9199EBFFFFF1ECFFFF8483FFFF7B
                7BFFFF8B8BFFE45E5EFF410505FF000000460000000000000000C0C0FF00C0C0
                FF00C0C0FF00C0C0FF00BFC0FF00D8D5FF81FFD5CCFFFF8584FFFF7B7BFFFF80
                80FFFF8080FFFF8989FFE45E5EFF3D0202F70000004800000000C0C0FF00C0C0
                FF00C0C0FF00C0C0FF00BEC0FF00CBC0F400FFB7B481FF8E8EFFFF7C7CFFFF80
                80FFFF8080FFFF7F7FFFFF8A8AFFE75E5EFF400303F700000048C0C0FF00C0C0
                FF00C0C0FF00C0C0FF00BEC0FF00CBC0F400FFC2BF00FFC1C17CFF9090FFFF7B
                7BFFFF8080FFFF8080FFFF8080FFFF8A8AFFE35E5EFF490C0CF9C0C0FF00C0C0
                FF00C0C0FF00C0C0FF00BEC0FF00CBC0F400FFC0BD00FFC1C100FFC1C183FF91
                91FFFF7B7BFFFF8080FFFF8080FFFF8080FFFF9090FFAE2525FDC0C0FF00C0C0
                FF00C0C0FF00C0C0FF00BEC0FF00CBC0F400FFC0BD00FFC0C000FFC2C200FFC1
                C17EFF9191FFFF7B7BFFFF8282FFFF8A8AFFBF4040FF210303DBC0C0FF00C0C0
                FF00C0C0FF00C0C0FF00BEC0FF00CBC0F400FFC0BD00FFC0C000FFC0C000FFC1
                C100FFC1C17EFF9090FFFF8585FFC13F3FFF1C0000D50000001CC0C0FF00C0C0
                FF00C0C0FF00C0C0FF00BEC0FF00CBC0F400FFC0BD00FFC0C000FFC0C000FFC0
                C000FFC2C200FFC8C883C45353F5180000D70000001C00000000}
              Hint = #1054#1095#1080#1089#1090#1080#1090#1100
              OnClick = grouplc1Group3Button0Click
            end>
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object itmlc1Item17: TdxLayoutItem
          CaptionOptions.Text = #1085#1072#1095#1072#1083#1086
          Parent = grouplc1Group2
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = True
          SizeOptions.Width = 120
          Control = cbb_M1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object itmlc1Item18: TdxLayoutItem
          CaptionOptions.Text = #1082#1086#1085#1077#1094
          Parent = grouplc1Group4
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = True
          SizeOptions.Width = 120
          Control = cbb_M2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object itmlc1Item19: TdxLayoutItem
          CaptionOptions.Text = 'cxMaskEdit1'
          CaptionOptions.Visible = False
          Parent = grouplc1Group2
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = True
          SizeOptions.Width = 46
          Control = msk_Y1
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object grouplc1Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = grouplc1Group1
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object itmlc1Item110: TdxLayoutItem
          CaptionOptions.Text = 'cxMaskEdit1'
          CaptionOptions.Visible = False
          Parent = grouplc1Group4
          SizeOptions.Width = 46
          Control = msk_Y2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object grouplc1Group4: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = grouplc1Group1
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object grouplc1Group5: TdxLayoutGroup
          CaptionOptions.ImageIndex = 24
          CaptionOptions.Text = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072
          Parent = group1
          SizeOptions.AssignedValues = [sovSizableVert]
          SizeOptions.SizableVert = True
          SizeOptions.Height = 47
          ButtonOptions.Buttons = <>
          Padding.Top = 10
          Padding.AssignedValues = [lpavTop]
          Index = 4
        end
        object itmlc1Item11: TdxLayoutItem
          CaptionOptions.Text = 'cxComboBox1'
          CaptionOptions.Visible = False
          Parent = grouplc1Group5
          Control = cbb_filtr
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object itmlc1Item111: TdxLayoutItem
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Parent = group1
          Control = btn_print
          ControlOptions.ShowBorder = False
          Index = 6
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
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
      LookAndFeel.NativeStyle = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_M1
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_M2
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_street
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_type
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = dpnl1
        Properties.Strings = (
          'AutoHide'
          'Width')
      end
      item
        Component = msk_Y1
        Properties.Strings = (
          'Text')
      end
      item
        Component = msk_Y2
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object docm1: TdxDockingManager
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
    LookAndFeel.NativeStyle = False
    Left = 408
    Top = 280
    PixelsPerInch = 96
  end
  object ds_TO: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT FDL.FACTSUM, FDL.HOUSE, FDL.KONTRAGENT, k.NAME KNAME,'
      '       F.HOUSESRV,'
      '       case'
      '        when f.HOUSESRV=0 then '#39#1058#1056' '#1101#1083#1077#1082#1090#1088#1080#1082#1072#39
      '        when f.HOUSESRV=1 then '#39#1058#1056' '#1086#1073#1097#1077#1089#1090#1088#1086#1081#39
      '        when f.HOUSESRV=2 then '#39#1058#1056' '#1083#1080#1092#1090#39
      '        when f.HOUSESRV=3 then '#39#1054#1044#1057#39
      '        when f.HOUSESRV=4 then '#39#1044#1077#1088#1072#1090#1080#1079#1072#1094#1080#1103#39
      '        when f.HOUSESRV=5 then '#39#1058#1054' '#1086#1073#1097#1077#1089#1090#1088#1086#1081#39
      '        when f.HOUSESRV=6 then '#39#1058#1054' '#1101#1083#1077#1082#1090#1088#1086#1084#1086#1085#1090#1072#1078#39
      '        when f.HOUSESRV=7 then '#39#1059#1073#1086#1088#1082#1072' '#1082#1072#1073#1080#1085#1099' '#1083#1080#1092#1090#1072#39
      '        when f.HOUSESRV=8 then '#39#1058#1077#1093#1086#1089#1074#1080#1076'. '#1083#1080#1092#1090#1072#39
      '        when f.HOUSESRV=9 then '#39#1069#1082#1089#1087#1077#1088#1090#1080#1079#1072' '#1083#1080#1092#1090#1072#39
      '        when f.HOUSESRV=10 then '#39#1040#1042#1057#39
      '        when f.HOUSESRV=11 then '#39#1051#1044#1057#1057#39
      '        when f.HOUSESRV=12 then '#39#1058#1054' '#1083#1080#1092#1090#39
      '       else '#39#39
      '      end HOUSESRVName, (s.NAME||'#39' '#39'||h.NOMER) ADDR,'
      '      F.M, F.Y'
      'FROM FACT1DOCLIST FDL'
      'left outer join FACT1DOC f on f.CODE = fdl.FACT1DOC'
      'left outer join house h on h.CODE = fdl.HOUSE'
      'left outer join street S on s.CODE = h.STREET'
      'left outer join KONTRAGENT k on k.code = FDL.KONTRAGENT'
      'where @clause1'
      'union all'
      ''
      'SELECT FDL.FACTSUM, FDL.HOUSE, FDL.KONTRAGENT, k.NAME KNAME,'
      '       F.HOUSESRV,'
      '       HS.NAME HOUSESRVName, (s.NAME||'#39' '#39'||h.NOMER) ADDR,'
      '      F.M, F.Y'
      'FROM FACTDOCLIST FDL'
      'left outer join FACTDOC f on f.CODE = fdl.FACTDOC'
      'left outer join house h on h.CODE = fdl.HOUSE'
      'left outer join street S on s.CODE = h.STREET'
      'left outer join KONTRAGENT k on k.code = FDL.KONTRAGENT'
      'left outer join HouseSRv HS on HS.code= f.HOUSESRV'
      'where @clause2'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 728
    Top = 168
    object fld_KNAME: TFIBStringField
      DisplayLabel = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      FieldName = 'KNAME'
      Size = 128
      EmptyStrToNull = True
    end
    object fld_TOADDR: TFIBStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'ADDR'
      Size = 161
      EmptyStrToNull = True
    end
    object fld_TOHOUSESRVNAME: TFIBStringField
      DisplayLabel = #1058#1080#1087' '#1091#1089#1083#1091#1075#1080
      FieldName = 'HOUSESRVNAME'
      Size = 19
      EmptyStrToNull = True
    end
    object fld_TOFACTSUM: TFIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'FACTSUM'
      Size = 2
    end
  end
  object src_TO: TDataSource
    DataSet = ds_TO
    Left = 757
    Top = 168
  end
  object src_kontr: TDataSource
    Left = 685
    Top = 168
  end
  object ds_STREET: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT CODE, '
      '       NAME'
      'FROM STREET'
      'order by name')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    DataSet_ID = 1
    Description = 'Simple STREET'
    Left = 656
    Top = 200
    poApplyRepositary = True
  end
  object src_STREET: TDataSource
    DataSet = ds_STREET
    Left = 685
    Top = 200
  end
  object src_HOUSE: TDataSource
    DataSet = ds_HOUSE
    Left = 685
    Top = 231
  end
  object ds_HOUSE: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODE,'
      '    NOMER'
      'FROM'
      '    HOUSE ')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 656
    Top = 231
    poApplyRepositary = True
  end
  object EngineController1: TdxPSEngineController
    Active = True
    DialogsLookAndFeel.NativeStyle = True
    PreviewDialogStyle = 'Ribbon2010'
    Left = 360
    Top = 344
  end
  object ComponentPrinter1: TdxComponentPrinter
    CurrentLink = GridReportLink1
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageBackground, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPrint]
    Version = 0
    Left = 360
    Top = 392
    object GridReportLink1: TdxGridReportLink
      Active = True
      Component = grd1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 7400
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 26500
      PrinterPage.PageFooter.LeftTitle.Strings = (
        '')
      PrinterPage.PageFooter.RightTitle.Strings = (
        '')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        #1054#1090#1095#1077#1090' '#1087#1086' '#1088#1072#1073#1086#1090#1072#1084' '#1074#1099#1087#1086#1083#1085#1077#1085#1099#1084' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072#1084#1080)
      PrinterPage.PageHeader.Font.Charset = RUSSIAN_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -19
      PrinterPage.PageHeader.Font.Name = 'Arial Narrow'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42079.895257314810000000
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      OptionsPreview.MaxLineCount = 3
      OptionsPreview.Visible = False
      OptionsSize.AutoWidth = True
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
  object ds_TR: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT tf.KONTRAGENT FKONTRAGENT, k.name FKName,'
      '       s.name SName,'
      '       tf.HOUSE, h.nomer,'
      '       tf.MLIST FMLIST, m.name FMName,'
      '       Sum(tf.SUMMA) SUMMA'
      'FROM TRFACT tf'
      'left outer join house h on h.code=tf.house'
      'left outer join street s on s.code=h.street'
      '--left outer join du on du.code=h.du'
      'left outer join mlist m on m.code=tf.mlist'
      'left outer join kontragent k on k.code=tf.kontragent'
      
        '--left outer join mhouse mh on mh.house=tf.house and mh.kontrage' +
        'nt=1'
      '--left outer join trdopsog ds on ds.code=tf.trdopsog'
      '--left outer join trdop td on td.code=ds.trdop'
      '')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 656
    Top = 280
    object fld_TRFKNAME: TFIBStringField
      DisplayLabel = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      FieldName = 'FKNAME'
      Size = 128
      EmptyStrToNull = True
    end
    object fld_TRSNAME: TFIBStringField
      DisplayLabel = #1059#1083#1080#1094#1072
      FieldName = 'SNAME'
      Size = 128
      EmptyStrToNull = True
    end
    object fld_TRNOMER: TFIBStringField
      DisplayLabel = #1044#1086#1084
      FieldName = 'NOMER'
      Size = 32
      EmptyStrToNull = True
    end
    object fld_TRFMNAME: TFIBStringField
      DisplayLabel = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
      FieldName = 'FMNAME'
      Size = 256
      EmptyStrToNull = True
    end
    object fld_TRSUMMA: TFIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMMA'
      Size = 2
    end
  end
  object src_TR: TDataSource
    DataSet = ds_TR
    Left = 688
    Top = 280
  end
end
