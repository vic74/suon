object GlVarsForm: TGlVarsForm
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1075#1083#1086#1073#1072#1083#1100#1085#1099#1093' '#1087#1077#1088#1077#1084#1077#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1095#1077#1090#1072
  ClientHeight = 293
  ClientWidth = 426
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
  object Ribbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 426
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
    Width = 426
    Height = 269
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = LCxSkin1
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object clv1Id: TcxGridDBColumn
          DataBinding.FieldName = 'Id'
          Visible = False
          VisibleForCustomization = False
        end
        object clv1Caption: TcxGridDBColumn
          Caption = #1055#1077#1088#1077#1084#1077#1085#1085#1072#1103
          DataBinding.FieldName = 'Caption'
          Width = 177
        end
        object clv1Value: TcxGridDBColumn
          Caption = #1047#1085#1072#1095#1077#1085#1080#1077
          DataBinding.FieldName = 'Value'
          Width = 191
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object btn_Ok: TcxButton
      Left = 10
      Top = 234
      Width = 75
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      ModalResult = 1
      TabOrder = 1
      OnClick = btn_OkClick
    end
    object grp_root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object Item_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = grp_root
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object Itmlcntr1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = grp_root
      Control = btn_Ok
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object mt1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 320
    Top = 104
  end
  object src1: TDataSource
    DataSet = mt1
    Left = 352
    Top = 104
  end
  object LSkin1: TdxLayoutLookAndFeelList
    Left = 48
    Top = 24
    object LCxSkin1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
    end
  end
end
