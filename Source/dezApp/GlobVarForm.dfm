object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Ribbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 426
    Height = 24
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
    Top = 24
    Width = 426
    Height = 269
    Align = alClient
    TabOrder = 1
    TabStop = False
    ExplicitLeft = 32
    ExplicitTop = 30
    ExplicitWidth = 300
    ExplicitHeight = 250
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      Align = alClient
      TabOrder = 0
      object v1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.Visible = True
        OptionsView.GroupByBox = False
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object btn_cancel: TcxButton
      Left = 10
      Top = 234
      Width = 75
      Height = 25
      Caption = 'btn_cancel'
      TabOrder = 1
    end
    object btn_ok: TcxButton
      Left = 272
      Top = 234
      Width = 75
      Height = 25
      Caption = 'btn_ok'
      TabOrder = 2
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object Itm_grd1: TdxLayoutItem
        AlignHorz = ahClient
        AlignVert = avClient
        Control = grd1
        ControlOptions.ShowBorder = False
      end
      object grp2: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object Item_cancel: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = True
          SizeOptions.Width = 163
          Control = btn_cancel
          ControlOptions.ShowBorder = False
        end
        object Item_ok: TdxLayoutItem
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = True
          SizeOptions.Width = 144
          Control = btn_ok
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
