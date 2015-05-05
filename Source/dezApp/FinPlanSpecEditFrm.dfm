object FinPlanSpecEditForm: TFinPlanSpecEditForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1089#1090#1072#1090#1077#1081' '#1088#1072#1089#1093#1086#1076#1072
  ClientHeight = 360
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 509
    Height = 360
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 128
    ExplicitTop = 88
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
        DataController.DataSource = src_FINPLANSTATE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clCODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
          Width = 43
        end
        object clNAME: TcxGridDBColumn
          Caption = #1057#1090#1072#1090#1100#1103' '#1088#1072#1089#1093#1086#1076#1072
          DataBinding.FieldName = 'NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ValidateOnEnter = True
          Properties.OnEditValueChanged = clNAMEPropertiesEditValueChanged
          Width = 434
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object bnt_Edit: TcxButtonEdit
      Left = 100
      Top = 314
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 0
          Hint = #1057#1086#1079#1076#1072#1090#1100' '#1089#1090#1072#1090#1100#1102
          Kind = bkGlyph
          Width = 40
        end
        item
          ImageIndex = 2
          Hint = #1059#1076#1072#1083#1080#1090#1100' '#1089#1090#1072#1090#1100#1102
          Kind = bkGlyph
          Width = 40
        end>
      Properties.Images = cmDb.iml1
      Properties.OnButtonClick = bnt_EditPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 121
    end
    object lGrp1: TdxLayoutGroup
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
      Parent = lGrp1
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object litmlc1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = lGrplc1Group1
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lGrplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = lGrp1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object litmlc1Item13: TdxLayoutItem
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Parent = lGrplc1Group2
      Control = bnt_Edit
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object ds_FINPLANSTATE: TpFIBDataSet
    SelectSQL.Strings = (
      'select CODE, NAME'
      'from FINPLANSTATE'
      'order by NAME')
    Transaction = cmDb.RT
    Database = cmDb.DB
    UpdateTransaction = cmDb.WT
    Left = 360
    Top = 48
  end
  object src_FINPLANSTATE: TDataSource
    DataSet = ds_FINPLANSTATE
    Left = 400
    Top = 48
  end
end
