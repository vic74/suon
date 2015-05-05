object KServisworkLookForm: TKServisworkLookForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1088#1072#1073#1086#1090' '#1087#1086' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1086#1084#1091' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1102
  ClientHeight = 505
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 720
    Height = 505
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    ExplicitWidth = 714
    ExplicitHeight = 492
    object grd1: TcxGrid
      Left = 10
      Top = 37
      Width = 250
      Height = 200
      Images = cmDb.iml1
      TabOrder = 1
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        OnCellDblClick = v1CellDblClick
        DataController.DataSource = cmDb.src_SERVISWORK
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.MRUItemsList = False
        Images = cmDb.iml1
        OptionsBehavior.IncSearchItem = clv1NAME
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv1CASH: TcxGridDBColumn
          DataBinding.FieldName = 'CASH'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Images = cmDb.iml1
          Properties.Items = <
            item
              Value = 0
            end
            item
              ImageIndex = 38
              Value = 1
            end>
          Properties.ShowDescriptions = False
          HeaderGlyphAlignmentHorz = taCenter
          HeaderHint = #1055#1083#1072#1090#1085#1072#1103' '#1088#1072#1073#1086#1090#1072
          HeaderImageIndex = 38
          Options.ShowCaption = False
          Width = 34
          IsCaptionAssigned = True
        end
        object clv1GROOP: TcxGridDBColumn
          Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
          DataBinding.FieldName = 'GROOP'
          Options.CellMerging = True
          Width = 214
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
          DataBinding.FieldName = 'NAME'
          Width = 311
        end
        object clv1ED: TcxGridDBColumn
          Caption = #1045#1076'. '#1080#1079#1084'.'
          DataBinding.FieldName = 'ED'
          Width = 53
        end
        object clv1PRICE: TcxGridDBColumn
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
          DataBinding.FieldName = 'PRICE'
          Width = 79
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object bnt_Search: TcxButtonEdit
      Left = 10
      Top = 10
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 35
          Kind = bkGlyph
          Width = 70
        end
        item
          ImageIndex = 23
          Kind = bkGlyph
          Width = 70
        end>
      Properties.Images = cmDb.iml1
      Properties.OnButtonClick = bnt_SearchPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 0
      OnKeyUp = bnt_SearchKeyUp
      Width = 121
    end
    object btn_Ok: TcxButton
      Left = 488
      Top = 470
      Width = 108
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      ModalResult = 1
      OptionsImage.ImageIndex = 33
      OptionsImage.Images = cmDb.iml1
      TabOrder = 2
    end
    object btn_Cancel: TcxButton
      Left = 602
      Top = 470
      Width = 108
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDb.iml1
      TabOrder = 3
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lGrplc1Group1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object lGrplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object litm_lc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lGrplc1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object litm_lc1Item11: TdxLayoutItem
      CaptionOptions.Text = 'cxButtonEdit1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = bnt_Search
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item12: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group3
      Control = btn_Ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item13: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group3
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Width')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
end
