unit KontragentEditFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Aurelius.Types.Nullable,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Kontragent, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Data.DB, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, FIBDataSet, pFIBDataSet,
  cxMemo, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  KontragentRepository;

type
  TKontragentEditForm = class(TForm)
    lGrp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    lGrplc1Group3: TdxLayoutGroup;
    lGrplc1Group4: TdxLayoutGroup;
    ds_kont_type: TpFIBDataSet;
    txt_Name: TcxTextEdit;
    litm_lc1Item1: TdxLayoutItem;
    txt_FullName: TcxTextEdit;
    litm_lc1Item11: TdxLayoutItem;
    cbb_KType: TcxLookupComboBox;
    litm_lc1Item12: TdxLayoutItem;
    src_KType: TDataSource;
    txt_INN: TcxTextEdit;
    litm_lc1Item13: TdxLayoutItem;
    txt_KPP: TcxTextEdit;
    litm_lc1Item14: TdxLayoutItem;
    txt_OGRN: TcxTextEdit;
    litm_lc1Item15: TdxLayoutItem;
    cbb_Dir: TcxLookupComboBox;
    litm_lc1Item18: TdxLayoutItem;
    txt_Phone: TcxTextEdit;
    litm_lc1Item19: TdxLayoutItem;
    txt_Email: TcxTextEdit;
    litm_lc1Item110: TdxLayoutItem;
    m_PostAddr: TcxMemo;
    litm_lc1Item111: TdxLayoutItem;
    m_URADDR: TcxMemo;
    litm_lc1Item16: TdxLayoutItem;
    btn_Ok: TcxButton;
    litm_lc1Item17: TdxLayoutItem;
    btn_Cancel: TcxButton;
    litm_lc1Item112: TdxLayoutItem;
    ds_WORKER: TpFIBDataSet;
    src_WORKER: TDataSource;
    procedure FormDestroy(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

    fRepo: TKontragentController;
    procedure FillControls;
    procedure MapToObject;
  public
    { Public declarations }
    fkontr: TKontragent;
    constructor Create(AOwner: TComponent; kontr: TKontragent);
  end;

var
  KontragentEditForm: TKontragentEditForm;

implementation

{$R *.dfm}

uses cmDBUnit;


{ TKontragentEditForm }

procedure TKontragentEditForm.btn_OkClick(Sender: TObject);
begin
  try
    MapToObject;
    //fRepo.Save(fkontr);
    ModalResult:= mrOk;
  except
    on E: Exception do
      ModalResult:= mrNone;
  end;
end;

constructor TKontragentEditForm.Create(AOwner: TComponent; kontr: TKontragent);
begin
  inherited Create(AOwner);
  //fRepo:= TKontragentController.Create;
  fkontr:= kontr;

  ds_kont_type.Open;
  ds_WORKER.Open;
  FillControls;
  {if not VarIsType(fId,[0,1]) then begin
     fkontr:= fRepo.GetById(fId);
     FillControls;
  end;}
end;

procedure TKontragentEditForm.FillControls;
begin
  //if fkontr.Code = null then Exit;
  with fkontr do begin
    txt_Name.EditValue:= Name;
    txt_FullName.EditValue:= FullName;
    cbb_KType.EditValue:= KType;
    txt_INN.EditValue:= INN;
    txt_KPP.EditValue:= KPP;
    txt_OGRN.EditValue:= Ogrn;
    m_PostAddr.EditValue:= PostAddr;
    m_URADDR.EditValue:= UrAddr;
    //cbb_Dir.EditValue:= Director;
    txt_Phone.EditValue:= Phone;
    txt_Email.EditValue:= Email;
    if Chief.HasValue then
      cbb_Dir.EditValue:= fkontr.Chief;
  end;

end;

procedure TKontragentEditForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TKontragentEditForm.FormDestroy(Sender: TObject);
begin
  if Assigned(fkontr) then
     FreeAndNil(fkontr);
end;

procedure TKontragentEditForm.MapToObject;
begin
  with fkontr do begin
    Name:= txt_Name.EditValue;
    FullName:= txt_FullName.EditValue;
    KType:= cbb_KType.EditValue;
    INN:= txt_INN.EditValue;
    KPP:= txt_KPP.EditValue;
    Ogrn:= txt_OGRN.EditValue;
    PostAddr:= m_PostAddr.EditValue;
    UrAddr:= m_URADDR.EditValue;
    //Director:= null;
    Phone:= txt_Phone.EditValue;
    Email:= txt_Email.EditValue;
    if VarIsType(cbb_Dir.EditValue,[0,1]) then
    Chief:= SNull else
    Chief:= cbb_Dir.EditValue;
  end;
end;

end.
