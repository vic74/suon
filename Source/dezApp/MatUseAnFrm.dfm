object MatUseAnForm: TMatUseAnForm
  Left = 0
  Top = 0
  Caption = 'MatUseAnForm'
  ClientHeight = 586
  ClientWidth = 719
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
    Width = 719
    Height = 586
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcl1
    object grd1: TcxGrid
      Left = 20
      Top = 116
      Width = 250
      Height = 200
      TabOrder = 1
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_m1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object clv1Column1: TcxGridDBColumn
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object btn_Exec: TcxButton
      Left = 20
      Top = 41
      Width = 75
      Height = 25
      Caption = 'btn_Exec'
      TabOrder = 0
      OnClick = btn_ExecClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object gr2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itm_exec: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = gr2
      Control = btn_Exec
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object gr1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Parent = grp1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object itm_grd1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = gr1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 680
    Top = 56
    object lcl1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 652
    Top = 56
  end
  object m1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 440
    Top = 288
  end
  object src_m1: TDataSource
    DataSet = m1
    Left = 472
    Top = 288
  end
end
