object SIGNDogEditForm: TSIGNDogEditForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1088#1080#1079#1085#1072#1082#1080' '#1076#1086#1075#1086#1074#1086#1088#1072
  ClientHeight = 365
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 411
    Height = 365
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = llafLCxSkin1
    ExplicitLeft = 240
    ExplicitTop = 208
    ExplicitWidth = 300
    ExplicitHeight = 250
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = cmDb.iml1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = #1044#1086#1073#1072#1074#1080#1090#1100
        Navigator.Buttons.Append.ImageIndex = 0
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Edit.Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Navigator.Buttons.Edit.ImageIndex = 1
        Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Navigator.Buttons.Post.ImageIndex = 10
        Navigator.Buttons.Cancel.Hint = #1054#1090#1084#1077#1085#1080#1090#1100
        Navigator.Buttons.Cancel.ImageIndex = 12
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = cmDb.src_SIGNDOG
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.NavigatorHints = True
        OptionsData.Appending = True
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        object clv1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Options.Editing = False
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object btn_Ok: TcxButton
      Left = 173
      Top = 330
      Width = 111
      Height = 25
      Caption = 'Ok'
      ModalResult = 1
      OptionsImage.ImageIndex = 33
      OptionsImage.Images = cmDb.iml1
      TabOrder = 1
    end
    object btn_Cancel: TcxButton
      Left = 290
      Top = 330
      Width = 111
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDb.iml1
      TabOrder = 2
    end
    object lGrp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object litm_lc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lGrp1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lGrplc1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = -1
    end
    object lGrplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = lGrp1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object litm_lc1Item11: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = btn_Ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litm_lc1Item12: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group2
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lafLSkin1: TdxLayoutLookAndFeelList
    Left = 376
    Top = 24
    object llafLCxSkin1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
    end
  end
end
