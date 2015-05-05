unit MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  dxSkinMcSkin,dxRibbonForm, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGraphics,  cxGrid, HtmlHelpViewer, cxGridCustomView,
  FIBQuery, pFIBCacheQueries, pFIBProps,
  cxGridExportLink, cxExport, ShellApi,DB, BaseForm,
  Dialogs, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxRibbonPainter,
  dxSkinsdxBarPainter, dxSkinsForm, dxBar, dxStatusBar, dxRibbonStatusBar,
  cxClasses, dxRibbon, AppUtils, cxPropertiesStore, dxSkinBlue,
  dxSkinOffice2010Blue, cxLocalization, {JvComponentBase,
  JvWinHelp,} GlobVarFrm, GlVarsFrm, PlanShablon, dxLayoutLookAndFeels,
  dxSkinOffice2010Black, cxLabel, cxBarEditItem, ExtCtrls,
  ExceptionLog, ECore, FIBDataSet, pFIBDataSet, dxRibbonSkins, dxBarApplicationMenu,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinDevExpressStyle, dxSkinBlack,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type

 TcxMyGridTableViewExport = class(TcxGridTableViewExport)
  protected
    procedure AddFooterMessage(var ATop, ALeft: Integer; AText: string); virtual;
    procedure AddHeaderMessage(var ATop, ALeft: Integer; AText: string); virtual;
    function GetCopyrightMessage: string; virtual;
    function GetHeaderMessage: string; virtual;
    procedure CreateFooter(var ATop, ALeft: Integer); override;
    procedure CreateHeader(var ATop, ALeft: Integer); override;
  end;
                    //Tdxcustomribbonform
  TMainForm = class(Tdxcustomribbonform)
    stb1: TdxRibbonStatusBar;
    bm1: TdxBarManager;
    bar1: TdxBar;
    btn_AccForm: TdxBarButton;
    btn_LoadDataForm: TdxBarButton;
    dxskncntrlr1: TdxSkinController;
    prop1: TcxPropertiesStore;
    bar_report: TdxBar;
    btn_PrincipalForm: TdxBarButton;
    Localizer1: TcxLocalizer;
    btn_HouseForm: TdxBarButton;
    barPlan: TdxBar;
    btn_PlanForm: TdxBarButton;
    btn_GlobVarsForm: TdxBarButton;
    btn_GlobVarForm: TdxBarButton;
    btn_EditForm: TdxBarButton;
    btn_KontragentForm: TdxBarButton;
    btn_IspForm: TdxBarButton;
    btn_PeopleForm: TdxBarButton;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    btn_WorkerForm: TdxBarButton;
    bar_stbr: TdxBar;
    btn_filtr: TdxBarButton;
    btn_grp: TdxBarButton;
    btn_SrvDogForm: TdxBarButton;
    btn_ShowHouseForm: TdxBarButton;
    bar_osm: TdxBar;
    btn_ShowStructForm: TdxBarButton;
    btn_StructDefectForm: TdxBarButton;
    btn_ShowHousePlan: TdxBarButton;
    btn_ShowResultForm: TdxBarButton;
    btn_BgRepForm1: TdxBarButton;
    btn_AnalForm: TdxBarButton;
    BDR_Plans: TdxBarButton;
    LfC1: TcxLookAndFeelController;
    bar_mm: TdxBar;
    grp1: TdxBarGroup;
    SubItem1: TdxBarSubItem;
    Sub_rep: TdxBarSubItem;
    Sub_plan: TdxBarSubItem;
    Sub_osm: TdxBarSubItem;
    sep1: TdxBarSeparator;
    sep2: TdxBarSeparator;
    btn_RightsForm: TdxBarButton;
    btn_KategoryRightForm: TdxBarButton;
    btn_EventsForm: TdxBarButton;
    Sub_events: TdxBarSubItem;
    Ribbon: TdxRibbon;
    RibbonTab1: TdxRibbonTab;
    RibbonTab2: TdxRibbonTab;
    RibbonTab3: TdxRibbonTab;
    RibbonTab4: TdxRibbonTab;
    sbitm_expl: TdxBarSubItem;
    btn_OsmForm: TdxBarButton;
    sbitm_remont: TdxBarSubItem;
    btn_CurRemForm: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    btn_PlanRepForm: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    btn_PlanFactForm: TdxBarButton;
    btn_PlanRepYearForm: TdxBarButton;
    btn_KServisWorkForm: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    btn_JWorkTypeForm: TdxBarButton;
    btn_JWORKForm: TdxBarButton;
    btn_AddMatForm: TdxBarButton;
    br_tool: TdxBar;
    btn1: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    btn_HouseWorkForm: TdxBarButton;
    btn_KapRemOsmForm: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    cxBarEditItem1: TcxBarEditItem;
    btn_GraphTOForm: TdxBarButton;
    btn_GraphListForm: TdxBarButton;
    btn_LiftlistForm: TdxBarButton;
    btn_HouseYearForm: TdxBarButton;
    btn_HousePlanForm: TdxBarButton;
    btn_HouseTarifForm: TdxBarButton;
    btn_HouseRecvForm: TdxBarButton;
    btn_HousePrvForm: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarSubItem10: TdxBarSubItem;
    sub_bkpSpr: TdxBarSubItem;
    btn_TarifUKForm: TdxBarButton;
    btn_HouseLiftGrForm: TdxBarButton;
    btn_HouseLiftTarifForm: TdxBarButton;
    dxBarSubItem12: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarSubItem13: TdxBarSubItem;
    btn_BDR1Form: TdxBarButton;
    btn_BDR2Form: TdxBarButton;
    btn_BDR3Form: TdxBarButton;
    btn_HouseNGForm: TdxBarButton;
    btn_HouseDogForm: TdxBarButton;
    btn_ShowPrikaz: TdxBarButton;
    btn_ShowPrikazPO: TdxBarButton;
    btn_SGForm: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSeparator2: TdxBarSeparator;
    btn_ShowRep1Form: TdxBarButton;
    btn_ShowRep2Form: TdxBarButton;
    btn_HouseLiftRepForm: TdxBarButton;
    dxBarSubItem14: TdxBarSubItem;
    dxBarSubItem15: TdxBarSubItem;
    btn_FactBDR1Form: TdxBarButton;
    btn_FactBRD2Form: TdxBarButton;
    btn_FactBDR3Form: TdxBarButton;
    tmr: TTimer;
    btn_excel_bar: TdxBarButton;
    ImMKD: TdxBarSubItem;
    btn_imArendatorForm: TdxBarButton;
    btn_ImBaseForm: TdxBarButton;
    btn_imDogForm: TdxBarButton;
    btn_imDatalForm: TdxBarButton;
    dxBarSubItem16: TdxBarSubItem;
    btn_BDRFactDocForm: TdxBarButton;
    btn_ShowR2Form: TdxBarButton;
    btn_BDR1FactDocForm: TdxBarButton;
    btn_ShtrafDocForm: TdxBarButton;
    btn_RDocForm: TdxBarButton;
    btn_RLiftDocForm: TdxBarButton;
    btn_ControlWorkListForm: TdxBarButton;
    btn_ODSDocForm: TdxBarButton;
    btn_CommFactForm: TdxBarButton;
    btn_Mat1CForm: TdxBarButton;
    btn_ODSFactDoc: TdxBarButton;
    dxBarSeparator3: TdxBarSeparator;
    btn_POActSmetaForm: TdxBarButton;
    btn_DostDocForm: TdxBarButton;
    btn_CompareBDRForm: TdxBarButton;
    btn_CorrectCostForm: TdxBarButton;
    btn_BDRDocListForm: TdxBarButton;
    btn_BDRAutoCreateForm: TdxBarButton;
    btn_NotLiftSrv: TdxBarButton;
    btn_WorkAutoPrintForm: TdxBarButton;
    dxBarSubItem17: TdxBarSubItem;
    dxBarSubItem18: TdxBarSubItem;
    btn_nmCommonForm: TdxBarButton;
    btn_nmHouseForm: TdxBarButton;
    btn_RepUseFundsForm: TdxBarButton;
    btn_nmSummaryForm: TdxBarButton;
    dxBarSeparator4: TdxBarSeparator;
    dxBarSeparator5: TdxBarSeparator;
    btn_TRProcess1Form: TdxBarButton;
    btn_TRProcess2Form: TdxBarButton;
    btn_TRProcess3Form: TdxBarButton;
    btn_TRProcess4Form: TdxBarButton;
    btn_TRProcess5Form: TdxBarButton;
    btn_TOPlanProcForm: TdxBarButton;
    btn_TRProcess6Form: TdxBarButton;
    dxBarSeparator6: TdxBarSeparator;
    dxBarSubItem19: TdxBarSubItem;
    dxBarSubItem20: TdxBarSubItem;
    btn_GenListForm: TdxBarButton;
    btn_MatUseAnForm: TdxBarButton;
    btn_ZTOShablonForm: TdxBarButton;
    btn_ReversStateForm: TdxBarButton;
    btn_CashFlowsForm: TdxBarButton;
    btn_MakeSmetaSablonForm: TdxBarButton;
    btn_AddWorkInPlanForm: TdxBarButton;
    btn_RepMKDForm: TdxBarButton;
    btn_Rep2Form: TdxBarButton;
    btn_help: TdxBarButton;
    btn_AcCodeOborotForm: TdxBarButton;
    btn_UNFORESEENForm: TdxBarButton;
    btn_TRLFinPlanForm: TdxBarButton;
    btn_LCurRemForm: TdxBarButton;
    btn_LPlanRepForm: TdxBarButton;
    btn_InsTRWorkBDRForm: TdxBarButton;
    btn_YMakeFinPlanForm: TdxBarButton;
    ppm1: TcxGridPopupMenu;
    btn_TRProcess7Form: TdxBarButton;
    btn_LoadData: TdxBarSubItem;
    dxBarSubItem21: TdxBarSubItem;
    dxBarSubItem22: TdxBarSubItem;
    dxBarSubItem23: TdxBarSubItem;
    dxBarSubItem24: TdxBarSubItem;
    dxBarSubItem25: TdxBarSubItem;
    dxBarSubItem26: TdxBarSubItem;
    dxBarSubItem27: TdxBarSubItem;
    dxBarSubItem28: TdxBarSubItem;
    dxBarSubItem29: TdxBarSubItem;
    dxBarSubItem30: TdxBarSubItem;
    dxBarSubItem31: TdxBarSubItem;
    dxBarSubItem32: TdxBarSubItem;
    dxBarSubItem33: TdxBarSubItem;
    dxBarSubItem34: TdxBarSubItem;
    btn_AnalizTOForm: TdxBarButton;
    dxBarSeparator7: TdxBarSeparator;
    dxBarSubItem35: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    dxBarSubItem36: TdxBarSubItem;
    dxBarSubItem37: TdxBarSubItem;
    btn_TRLProcess1Form: TdxBarButton;
    btn_TRLProcess2Form: TdxBarButton;
    btn_TRLProcess3Form: TdxBarButton;
    btn_TRLProcess4Form: TdxBarButton;
    btn_TRLProcess5Form: TdxBarButton;
    btn_TRLProcess7Form: TdxBarButton;
    btn_TRLProcess6Form: TdxBarButton;
    btn_AnalizMatForm: TdxBarButton;
    btn_SmetaABSForm: TdxBarButton;
    btn_GrafRepForm: TdxBarButton;
    btn_LKShablonForm: TdxBarButton;
    btn_LKTYPEForm: TdxBarButton;
    btn_LKHeadForm: TdxBarButton;
    dxBarSubItem38: TdxBarSubItem;
    btn_ShbSrvListForm: TdxBarButton;
    btn_ShbSrvCheckForm: TdxBarButton;
    erklg1: TEurekaLog;
    ds_EUREKA: TpFIBDataSet;
    btn_MakeDocProcessForm: TdxBarButton;
    brapm1: TdxBarApplicationMenu;
    btn_RepToPFForm: TdxBarButton;
    dxBarSubItem40: TdxBarSubItem;
    btn_oiFactShbForm: TdxBarButton;
    btn_RepWorkForm: TdxBarButton;
    btn_TaskForm: TdxBarButton;
    btn_ControlNGPForm: TdxBarButton;
    btn_NGRepForm: TdxBarButton;
    btn_PublicSiteForm: TdxBarButton;
    btn_MatClassForm: TdxBarButton;
    btn_MoveMatClassForm: TdxBarButton;
    btn_ClosePeriodForm: TdxBarButton;
    btn_OrderHeadForm: TdxBarButton;
    dxBarSubItem41: TdxBarSubItem;
    btn_POShablonSmetaForm: TdxBarButton;
    btn_pop: TdxBarButton;
    btn_NGPRoomForm: TdxBarButton;
    btn_ArRepForm: TdxBarButton;
    btn_ExpirDopForm: TdxBarButton;
    dlgSave1: TSaveDialog;
    sep3: TdxBarSeparator;
    btn_DefArhForm: TdxBarButton;
    btn_HouseCardForm: TdxBarButton;
    btn_RepByPOForm: TdxBarButton;
    btn_WorkScheduleForm: TdxBarButton;
    btn_MatRepDetailForm: TdxBarButton;
    dxBarSubItem42: TdxBarSubItem;
    dxBarSubItem43: TdxBarSubItem;
    btn_opuSprForm: TdxBarButton;
    btn_opuDeviceForm: TdxBarButton;
    btn_OPURepForm: TdxBarButton;
    btn_OPURep1Form: TdxBarButton;
    btn_OPURep2Form: TdxBarButton;
    btn_UnionDispForm: TdxBarButton;
    btn_LoadFrom1C8Form: TdxBarButton;
    btn_ShablonFinOperForm: TdxBarButton;
    btn_ObjForm: TdxBarButton;
    btn_RequestForm: TdxBarButton;
    btn_OtherFactForm: TdxBarButton;
    btn_ImportControlForm: TdxBarButton;
    btn_OrderWorkForm: TdxBarButton;
    btn_IPUForm: TdxBarButton;
    btn_MailTaskForm: TdxBarButton;
    btn_OtherPlanForm: TdxBarButton;
    btn_PDUHistoryForm: TdxBarButton;
    btn_FinPlanSpecForm: TdxBarButton;
    btn_HouseFirmForm: TdxBarButton;
    btn_herForm: TdxBarButton;
    btn_PlanToForm: TdxBarButton;
    dxbrsprtr1: TdxBarSeparator;
    dxbrsprtr2: TdxBarSeparator;
    dxbrsprtr3: TdxBarSeparator;
    btn_CurRemTOForm: TdxBarButton;
    btn_IPUFactBdrForm: TdxBarButton;
    dxBarButton5: TdxBarButton;
    btn_WorkListTOForm: TdxBarButton;
    btn_ClassMatLookUpForm: TdxBarButton;
    btn_RepPlanTRForm: TdxBarButton;
    btn_RepGraphForm: TdxBarButton;
    btn_ReportPlanTOForm: TdxBarButton;
    btn_PlanFactTOForm: TdxBarButton;
    btn_RepMatUnfForm: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure btn_GlobVarsFormClick(Sender: TObject);
    procedure btn_GlobVarFormClick(Sender: TObject);
    procedure btn_filtrClick(Sender: TObject);
    procedure btn_grpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bm1ClickItem(Sender: TdxBarManager; ClickedItem: TdxBarItem);
    procedure ShowDEZForm(Sender: TdxBarButton);
    procedure tmrTimer(Sender: TObject);
    procedure btn_helpClick(Sender: TObject);
    procedure erklg1ExceptionActionNotify(
      EurekaExceptionRecord: TEurekaExceptionRecord;
      EurekaAction: TEurekaActionType; var Execute: Boolean);
    procedure DEZClick(Sender: TObject);
    procedure btn_ClosePeriodFormClick(Sender: TObject);
    procedure btn_popClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure CreateSkin;
    procedure SetGrants;
    procedure OnHotKey(var Msg: TWMHotKey); message WM_HOTKEY;
    procedure EventsButton;
    procedure ShowGroup(Sender: TObject);
    procedure ShowFilter(Sender: TObject);
    procedure GlobalExpExcel(Sender: TObject);
    procedure ShowPOActSmeta;
    procedure ShowSmetaABSForm;
    procedure ShowHelp;
    procedure SetUnSum(Sender: TObject);
    procedure ConstRight;
    procedure ShowPopup(Sender: TObject);
    procedure ShowDisp(Sender: TObject);
    procedure SetRight;
  public
  procedure GrdEnter(Sender: TObject);
    { Public declarations }
  end;

var
  MainForm: TMainForm;
const
  HH_HELP_CONTEXT = $F;
  MYHELP_FILE = '\Help\TZ.chm' + Chr(0);
var
  RetCode: LongInt;

implementation

uses cmUtils, dezCommon, cmDBUnit, POActSmetaFrm, UNFORESEENFrm, SmetaABSFrm,
     PublicSiteFrm, ClosePeriodFrm, SrvDogFrm, LoadingSplash, Mat1CFrm;

{$R *.dfm}
{$R rus.res}

procedure ExportGridToFile(AFileName: string; AExportType: Integer;
  AGrid: TcxGrid; AExpand, ASaveAll, AUseNativeFormat: Boolean;
  const ASeparator, ABeginString, AEndString: string; const AFileExt: string);
var
  AView: TcxCustomGridView;
  AGridExport: TcxGridCustomExport;
begin
  if AGrid <> nil then
  begin
    if AFileExt <> '' then
      AFileName := ChangeFileExt(AFileName, '.' + AFileExt);
    AView := AGrid.ActiveLevel.GridView;
    AGridExport := TcxMyGridTableViewExport.Create(AFileName, AExportType, AView, AGrid, nil);
    AGridExport.SaveAll := ASaveAll;
    AGridExport.Expand := AExpand;
    AGridExport.UseNativeFormat := AUseNativeFormat;
    AGridExport.AddSeparators([ASeparator, ABeginString, AEndString]);
    AGrid.BeginUpdate;
    try
      try
        AGridExport.DoExport;
      finally
        AGridExport.Free;
      end;
    finally
      AGrid.EndUpdate;
    end;
  end;
end;

procedure TMainForm.bm1ClickItem(Sender: TdxBarManager;
  ClickedItem: TdxBarItem);
var
  i :Integer;
begin
 if FindChild(ClickedItem.Description)<>nil then
 begin
     for I := 0 to br_tool.ItemLinks.AvailableItemCount - 1 do
     begin
       (br_tool.ItemLinks.Items[i].Item as TdxBarButton).Lowered:=False;
     end;
   FindChild(ClickedItem.Description).BringToFront;
  (ClickedItem as TdxBarButton).Lowered:=True;
 end;
end;

procedure TMainForm.OnHotKey(var Msg: TWMHotKey);
var
  Id_context :Integer;
begin
   inherited;
   if (Msg.HotKey=1)  then
   begin
     if Application.MainForm.ActiveMDIChild=nil then Exit;
     Id_context:=Application.MainForm.ActiveMDIChild.HelpContext;
     if Id_context<>0 then Application.HelpContext(Id_context);
   end;
end;

procedure TMainForm.btn_filtrClick(Sender: TObject);
begin
  //ShowFilter();
end;

procedure TMainForm.btn_grpClick(Sender: TObject);
begin
  //ShowGroup();
end;

procedure TMainForm.btn_helpClick(Sender: TObject);
var
  Id_context :Integer;
begin
  Id_context:=Application.MainForm.ActiveMDIChild.HelpContext;
  if Id_context<>0 then Application.HelpContext(Id_context);
end;

procedure TMainForm.btn_popClick(Sender: TObject);
begin
  //
end;

procedure TMainForm.ShowGroup(Sender: TObject);
var
  Form :TForm;
  i :Integer;
  grd : TcxGrid;
begin
  Form:=Application.MainForm.ActiveMDIChild;
  if Form=nil then Exit;
  for I := 0 to Form.ComponentCount - 1 do
  begin
    if (Form.Components[i].ClassType=TcxGrid) then
    begin
      grd:=(Form.Components[i] as TcxGrid);
      if grd.IsFocused then
      TcxGridDBTableView(grd.FocusedView).OptionsView.GroupByBox:=
      not TcxGridDBTableView(grd.FocusedView).OptionsView.GroupByBox;
    end;
  end;
end;

procedure TMainForm.ShowHelp;
var
  Id_context :Integer;
begin
  if Application.MainForm.ActiveMDIChild=nil then Exit;
  Id_context:=Application.MainForm.ActiveMDIChild.HelpContext;
  if Id_context<>0 then
    Application.HelpContext(Id_context)
  else
    ShowMessage('Для данной формы справка отсутствует.');
end;

procedure TMainForm.GlobalExpExcel(Sender: TObject);
var
  Form :TForm;
  i :Integer;
  grd : TcxGrid;
  FName: string;
begin
  Form:=Application.MainForm.ActiveMDIChild;
  if Form=nil then Exit;
  for I := 0 to Form.ComponentCount - 1 do
  begin
    if (Form.Components[i].ClassType=TcxGrid) then
    begin
      grd:=(Form.Components[i] as TcxGrid);
      if grd.IsFocused then
      if dlgSave1.Execute then begin
          {ExportGridToExcel(dlg2.FileName, grd, True, True, NativeFormat, 'xls');
          ShellExecute(Handle,'open',PChar(dlg2.FileName),nil,nil,0); }
          ExportGridToFile(dlgSave1.FileName, cxExportToExcel, grd, true, true, True,
                           '', '', '', 'xls');
          FName:= ChangeFileExt(dlgSave1.FileName, '.xls');
          if Application.MessageBox('Данные экспортированы.      ' + #13#10 +
            '        Открыть файл?      ', 'Внимание', MB_YESNO +
            MB_ICONQUESTION + MB_TOPMOST) = IDYES then
          begin
            ShellExecute(0, PChar('open'), PChar(FName), nil, nil, SW_SHOWMAXIMIZED);
          end;
      end;
    end;
  end;
end;

procedure TMainForm.GrdEnter(Sender: TObject);
begin
  ppm1.Grid:=Sender as TcxGrid;
    inherited;
end;

procedure TMainForm.tmrTimer(Sender: TObject);
begin
  cmDB.DB.Execute('select CODE FROM ROLES Where CODE=1');
end;

procedure TMainForm.ShowFilter(Sender: TObject);
var
  Form :TForm;
  i :Integer;
  grd : TcxGrid;
begin
  Form:=Application.MainForm.ActiveMDIChild;
  if Form=nil then Exit;

  for I := 0 to Form.ComponentCount - 1 do
  begin
    if (Form.Components[i].ClassType=TcxGrid) then
    begin
      grd:=(Form.Components[i] as TcxGrid);
      if grd.IsFocused then
      TcxGridDBTableView(grd.FocusedView).FilterRow.Visible:=
      not TcxGridDBTableView(grd.FocusedView).FilterRow.Visible;
    end;
  end;
end;

procedure TMainForm.ShowDEZForm(Sender: TdxBarButton);
var
  AName: string;
  AHelpIndex: integer;
begin
   //SplashVisibility(True,'Подождите. Идет загрузка формы...');
   try
     AName:=cmGetWord(Sender.Name,2,'_');
     AHelpIndex:=Sender.HelpContext;
     CreateForm(AName, AHelpIndex);
   finally
     //SplashVisibility(false);
   end;
end;

procedure TMainForm.ShowDisp(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PChar('http://mail.kc174.ru:7001/'), nil, nil, SW_SHOW);
end;

procedure TMainForm.btn_GlobVarFormClick(Sender: TObject);
var
  Form :TGlobVarForm;
begin
  Form:=TGlobVarForm.Create(Application);
  Form.ShowModal;
  Form.Free;
end;

procedure TMainForm.btn_GlobVarsFormClick(Sender: TObject);
var
  form :TGlVarsForm;
  GlVar :TdezGlobalVars;
begin
  GlVar:=TdezGlobalVars.Create;
  GlVar.LoadFromBase;
  form:=TGlVarsForm.Create(Application);
  form.GlobalVars:=GlVar;
  form.ShowModal;
  ShowMessage(FloatToStr(GlVar.ByName['4']));
  form.Free;
  GlVar.Free;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UnregisterHotKey(Handle, 1);
  if Assigned(LCxSkin) then
  LCxSkin.Free;
  //if Assigned(SFD) then
  //   FreeAndNil(SFD);
  if Assigned(LSkin) then
  LSkin.Free;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  PackageModule: HModule;
begin
  AppPath:= ExtractFilePath(Application.ExeName);
  LoadForm(prop1,Self.Name);
  CreateSkin;
  DSOptoins(ds_EUREKA,'','EUREKAEXCEPTION','ID','EUREKAEXCEPTION_GEN');
  //язык
  with Localizer1 do
  begin
    //FileName:=ExtractFilePath(Application.ExeName)+'config\rus.ini';
    LoadFromResource(HInstance);
    Active:=True;
    Locale:=1049;
    Translate;
  end;
   RegisterHotKey(Handle, 1, 0, VK_F1); // F1
  //права доступа
  SetGrants;
  stb1.Panels[2].Text:=GetWorkerFio(ActiveWorker);
  stb1.Panels[1].Text:= GetFileVersionEx(Application.ExeName);
  stb1.Panels[0].Text:=BaseNameStr;
  EventsButton;
  //ConstRight;
  SetRight;
  if mform then
     br_tool.Visible:=true else
     br_tool.Visible:=false;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  SplashVisibility(false);
end;

procedure TMainForm.EventsButton;
var
  i :Integer;
begin
  for I := 0 to MainForm.ComponentCount - 1 do
  begin
    if Components[i].ClassType=TdxBarButton then
    begin
      if (Components[i] as TdxBarButton).Name='btn_filtr' then
          (Components[i] as TdxBarButton).OnClick:= ShowFilter else
      if (Components[i] as TdxBarButton).Name='btn_grp' then
          (Components[i] as TdxBarButton).OnClick:= ShowGroup else
      if (Components[i] as TdxBarButton).Name='btn_excel_bar' then
          (Components[i] as TdxBarButton).OnClick:= GlobalExpExcel else
      if (Components[i] as TdxBarButton).Name='btn_UNFORESEENForm' then
          (Components[i] as TdxBarButton).OnClick:= SetUnSum else
      if (Components[i] as TdxBarButton).Name='btn_ClosePeriodForm' then
          (Components[i] as TdxBarButton).OnClick:= btn_ClosePeriodFormClick else
      if (Components[i] as TdxBarButton).Name='btn_pop' then
          (Components[i] as TdxBarButton).OnClick:= ShowPopup else
      if (Components[i] as TdxBarButton).Name='btn_RequestForm' then
          (Components[i] as TdxBarButton).OnClick:= ShowDisp else
      (Components[i] as TdxBarButton).OnClick:= DEZClick;
    end;
  end;
end;

procedure TMainForm.DEZClick(Sender: TObject);
begin
  if (Sender is TdxBarButton) then begin
    if (Sender as TdxBarButton).Name='btn_POActSmetaForm' then
      ShowPOActSmeta
    else if (Sender as TdxBarButton).Name='btn_SmetaABSForm' then
      ShowSmetaABSForm
    else if (Sender as TdxBarButton).Name='btn_help' then
      ShowHelp
    else
      ShowDEZForm(Sender as TdxBarButton);
  end;
end;

procedure TMainForm.btn_ClosePeriodFormClick(Sender: TObject);
var
  Form: TClosePeriodForm;
begin
  Form:=TClosePeriodForm.Create(Application);
  if Form.ShowModal=mrOk then
    cmShowMessage('Период закрыт по '+Form.M.Text+' '+IntToStr(Form.Y.EditValue));
  Form.Free;
end;

procedure TMainForm.ConstRight;
  procedure BkpSPR;
  begin
    sub_bkpSpr.Visible:= ivAlways;
  end;
begin
  case ActiveWorker of
    7 :BkpSPR;  //пермякова
    9 :BkpSPR;  //sysdba
  end;
end;

procedure TMainForm.ShowSmetaABSForm;
var
  F: TSmetaABSForm;
begin
  F:=TSmetaABSForm.Create(self);
  F.ShowModal;
  F.Free;
end;

procedure TMainForm.ShowPOActSmeta;
var
  F: TPOActSmetaForm;
begin
  F:=TPOActSmetaForm.Create(self);
  F.ShowModal;
  F.Free;

end;

procedure TMainForm.ShowPopup(Sender: TObject);
var
  Form :TForm;
  i, n :Integer;
  grd : TcxGrid;

begin
  Form:=Application.MainForm.ActiveMDIChild;
  if Form=nil then Exit;
  for I := 0 to Form.ComponentCount - 1 do
  begin
    if (Form.Components[i].ClassType=TcxGrid) then
    begin
      grd:=(Form.Components[i] as TcxGrid);
      if grd.IsFocused then begin
        (grd.FocusedView as TcxGridDBTableView).OptionsView.Footer:=
        not (grd.FocusedView as TcxGridDBTableView).OptionsView.Footer;
      end;
    end;
  end;
end;

procedure TMainForm.CreateSkin;
var
  BName: string;
begin
  BName:= AnsiUpperCase(BaseNameStr);
  if (Pos('TEST', BName)>0) or (Pos('ТЕСТ', BName)>0) then
  begin
    //LfC1.NativeStyle:= True;
    dxskncntrlr1.UseSkins:= False;
    LSkin:=TdxLayoutLookAndFeelList.Create(Application);
    LCxSkin:= TdxLayoutCxLookAndFeel.Create(LSkin);
    LCxSkin.LookAndFeel.SkinName:='DevExpressStyle';
    LCxSkin.LookAndFeel.NativeStyle:=true;
    Ribbon.ColorSchemeName:= 'DevExpressStyle';
    Application.MessageBox('Вы работаете в тестовой базе данных!', 'Внимание',
      MB_OK + MB_ICONWARNING + MB_TOPMOST);

  end else begin
    dxskncntrlr1.UseSkins:= True;
    LSkin:=TdxLayoutLookAndFeelList.Create(Application);
    LCxSkin:= TdxLayoutCxLookAndFeel.Create(LSkin);
    LCxSkin.LookAndFeel.SkinName:='Office2010Blue';
    LCxSkin.LookAndFeel.NativeStyle:=False;
    Ribbon.ColorSchemeName:= 'Blue';
  end;
end;

procedure TMainForm.erklg1ExceptionActionNotify(
  EurekaExceptionRecord: TEurekaExceptionRecord;
  EurekaAction: TEurekaActionType; var Execute: Boolean);
  var
    Stream, PNGSTream :TMemoryStream;
    Ls :TStringList;
    LogFile :string;
    DebugInfo: TEurekaDebugInfo;
begin
  if cmDB.DB.TestConnected then begin
    case EurekaAction of
        atSavedLogFile : begin
                           Stream:=TMemoryStream.Create;
                           PNGSTream:=TMemoryStream.Create;
                           LS :=TStringList.Create;
                           LogFile:=ExtractFilePath(Application.ExeName)+'bug\dez.elf';
                           SaveScreenshotToStream(PNGSTream);
                           LS.Text:=EurekaExceptionRecord.LogText;
                           LS.SaveToStream(Stream);

                           try
                             with ds_EUREKA do begin
                               Append;
                               FN('USR').AsVariant:=ActiveWorker;
                               TBlobField(FN('PNG')).LoadFromStream(PNGSTream);
                               TBlobField(FN('LOGTXT')).LoadFromStream(Stream);
                               //if FileExists(LogFile) then
                               //TBlobField(FN('LOGFILE')).LoadFromFile(LogFile);
                               Post;
                             end;
                           finally
                             FreeAndNil(Stream);
                             FreeAndNil(PNGSTream);
                             FreeAndNil(LS);
                           end;
                         end;
    end;
  end else begin
    Execute :=False;
  end;

end;

procedure TMainForm.SetGrants;
var
  i: integer;

procedure ClosedGroup;
var
  i,j: integer;
begin
  for i:=0 to ComponentCount-1 do
    if (Components[i].ClassType=TdxBarSubItem) and
      (TdxBarSubItem(Components[i]).Visible=ivAlways) then
    begin
      TdxBarSubItem(Components[i]).Visible:=ivNever;
      //if TdxBarSubItem(Components[i]).Name='Sub_osm' then
      //  ShowMessage('Tyt');
      for j:=0 to TdxBarSubItem(Components[i]).ItemLinks.Count-1 do
        if (TdxBarSubItem(Components[i]).ItemLinks[j].Item.Visible=ivAlways) and
          not (TdxBarSubItem(Components[i]).ItemLinks[j].Item is TdxBarSeparator) then
        begin
          TdxBarSubItem(Components[i]).Visible:=ivAlways;
          Break;
        end;
    end;
end;

begin
  //первый этап - проверка прав доступа
  for i:=0 to ComponentCount-1 do
    if (Components[i] is TdxBarItem) and
      (TdxBarItem(Components[i]).Tag<>0) then
        if not IsGrant(TdxBarItem(Components[i]).Tag) then
          TdxBarItem(Components[i]).Visible:=ivNever;
  //второй этап скрытие не используемых пунктов меню
  for i:=0 to 2 do ClosedGroup;
end;

procedure TMainForm.SetRight;
  procedure OpenOPU;
  begin
    btn_opuSprForm.Visible:= ivAlways;
    dxBarSubItem42.Visible:= ivAlways;
    btn_OPURepForm.Visible:= ivNever;
    btn_OPURep1Form.Visible:= ivNever;
    btn_OPURep2Form.Visible:= ivNever;
  end;
begin
  case ActiveWorker of
    4: OpenOPU;        //начальнику СЭ Шалимовой В.Е.
    35: OpenOPU;      //зам. начальника СЭ Колеговой Т.Г.
    11: OpenOPU;      //старшему менеджеру СЭ Сокол Н.Л
    39: OpenOPU;      //старшему менеджеру СЭ Горьковой Ю.Г
    12: OpenOPU;      //старшему менеджеру СЭ Банниковой А.А.
    40: OpenOPU;      //старшему менеджеру СЭ Урванцевой О.В.
    36: OpenOPU;      //энергетику СЭ Суворову О.Л.
  end;
end;

procedure TMainForm.SetUnSum(Sender: TObject);
var
  F: TUNFORESEENForm;
begin
  try
    F:=TUNFORESEENForm.Create(Application);
    F.ShowModal;
  finally
    F.Free;
  end;
end;

{ TcxMyGridTableViewExport }

procedure TcxMyGridTableViewExport.AddFooterMessage(var ATop, ALeft: Integer;
  AText: string);
var
  R: TRect;
  AParams: TcxViewParams;
  ARowCount: Integer;
begin
  inherited;
  if CanShowMultiSummaries(True) then
    ARowCount := GetFooterLineCount(DataController.Summary.FooterSummaryItems)
  else
    ARowCount := RecordRowCount;
  R.Bottom := ATop + ARowCount * (DefaultRowHeight + cxGridFooterCellIndent);
  R := Rect(ALeft, R.Bottom, RecordWidth, R.Bottom + DefaultRowHeight);
  Styles.GetFooterParams(nil, nil, -1, nil, AParams);
  AddVisualItemEx(R, AText,  AParams, taRightJustify, cxBordersAll, FooterCellBorderColor);
end;

procedure TcxMyGridTableViewExport.AddHeaderMessage(var ATop, ALeft: Integer;
  AText: string);
var
  R: TRect;
  AParams: TcxViewParams;
  ARowCount: Integer;
begin
  inherited;
  R.Top := ((DefaultRowHeight + cxGridFooterCellIndent))*-1;
  R := Rect(ALeft, R.Top, RecordWidth, R.Top + DefaultRowHeight);
  Styles.GetFooterParams(nil, nil, -1, nil, AParams);
  AddVisualItemEx(R, AText,  AParams, taCenter, cxBordersAll, FooterCellBorderColor);
end;

procedure TcxMyGridTableViewExport.CreateFooter(var ATop, ALeft: Integer);
begin
  inherited;
  AddFooterMessage(ATop, ALeft, GetCopyrightMessage);

end;

procedure TcxMyGridTableViewExport.CreateHeader(var ATop, ALeft: Integer);
begin
  inherited;
  AddHeaderMessage(ATop, ALeft, GetHeaderMessage);
end;

function TcxMyGridTableViewExport.GetCopyrightMessage: string;
begin
  Result := 'Сохранен '+DateTimeToStr(Date)+' '+TimeToStr(Time);
end;

function TcxMyGridTableViewExport.GetHeaderMessage: string;
var
  F: TSrvDogForm;
begin
  if Application.MainForm.ActiveMDIChild.Name = 'SrvDogForm' then begin
    F:= Application.MainForm.ActiveMDIChild as TSrvDogForm;
    Result:= Application.MainForm.ActiveMDIChild.Caption;
    Result:= Result + ' ('+ F.KontrName+')';
  end else
  Result:= Application.MainForm.ActiveMDIChild.Caption;
end;

end.

