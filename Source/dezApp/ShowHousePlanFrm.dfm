object ShowHousePlanForm: TShowHousePlanForm
  Left = 0
  Top = 0
  Caption = #1055#1083#1072#1085#1099' '#1086#1089#1084#1086#1090#1088#1086#1074
  ClientHeight = 627
  ClientWidth = 734
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
    Width = 734
    Height = 24
    BarManager = MainForm.bm1
    ColorSchemeName = 'Office2010Blue'
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
    Top = 24
    Width = 734
    Height = 603
    Align = alClient
    TabOrder = 1
    TabStop = False
    LayoutLookAndFeel = LCxSkin1
    ExplicitLeft = 248
    ExplicitTop = 216
    ExplicitWidth = 300
    ExplicitHeight = 250
    object grd1: TcxGrid
      Left = 10
      Top = 28
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 367
      Top = 28
      Width = 250
      Height = 200
      TabOrder = 1
      object v2: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
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
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object grp2: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        object grp3: TdxLayoutGroup
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object Itm1: TdxLayoutItem
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'cxGrid1'
            CaptionOptions.Layout = clTop
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = True
            SizeOptions.SizableVert = True
            SizeOptions.Width = 339
            Control = grd1
            ControlOptions.ShowBorder = False
          end
          object splt1: TdxLayoutSplitterItem
            CaptionOptions.Text = 'Splitter'
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = False
            SizeOptions.SizableVert = False
          end
        end
      end
      object Itm2: TdxLayoutItem
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'cxGrid1'
        CaptionOptions.Layout = clTop
        Control = grd2
        ControlOptions.ShowBorder = False
      end
    end
  end
  object LSkin1: TdxLayoutLookAndFeelList
    Left = 672
    object LCxSkin1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 696
  end
end
