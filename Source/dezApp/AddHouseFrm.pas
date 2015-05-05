unit AddHouseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, DB, FIBDataSet, pFIBDataSet, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxmdaset,
  cxCalc, Menus, StdCtrls, cxButtons, cxCalendar, dxLayoutControlAdapters,
  dxLayoutContainer, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinDevExpressStyle,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TAddHouseForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    ds_STREET: TpFIBDataSet;
    src_STREET: TDataSource;
    src_HOUSE: TDataSource;
    ds_HOUSE: TpFIBDataSet;
    cbb_du: TcxLookupComboBox;
    itm_du: TdxLayoutItem;
    ced_TOTAL_SQ: TcxCalcEdit;
    itm_TOTAL_SQ: TdxLayoutItem;
    ced_LIVING_SQ: TcxCalcEdit;
    itm_LIVING_SQ: TdxLayoutItem;
    ced_LODGER_CNT: TcxCalcEdit;
    itm_LODGER_CNT: TdxLayoutItem;
    ced_CELLAR_SQ: TcxCalcEdit;
    itm_CELLAR_SQ: TdxLayoutItem;
    ced_DRTZ_SQ: TcxCalcEdit;
    itm_DRTZ_SQ: TdxLayoutItem;
    ced_FLAT_CNT: TcxCalcEdit;
    lc1Item1: TdxLayoutItem;
    ced_ACCCODE_CNT: TcxCalcEdit;
    itm_ACCCODE_CNT: TdxLayoutItem;
    ced_FLOOR_CNT: TcxCalcEdit;
    itm_FLOOR_CNT: TdxLayoutItem;
    ced_LIFT_CNT: TcxCalcEdit;
    itm_LIFT_CNT: TdxLayoutItem;
    ced_ENTRANCE_CNT: TcxCalcEdit;
    itm_ENTRANCE_CNT: TdxLayoutItem;
    ced_GARBAGE_CNT: TcxCalcEdit;
    itm_GARBAGE_CNT: TdxLayoutItem;
    ced_COMMERCE_SQ: TcxCalcEdit;
    itm_COMMERCE_SQ: TdxLayoutItem;
    msk_BUILDYEAR: TcxMaskEdit;
    itm_BUILDYEAR: TdxLayoutItem;
    cbb_Wall: TcxLookupComboBox;
    itm_Wall: TdxLayoutItem;
    mem_wall: TdxMemData;
    src_wall: TDataSource;
    cbb_GAZ: TcxLookupComboBox;
    itm_GAZ: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    mem_GAZ: TdxMemData;
    src_GAZ: TDataSource;
    cbb_FASAD: TcxLookupComboBox;
    itm_FASAD: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    mem_Fasad: TdxMemData;
    src_Fasad: TDataSource;
    mem_Krov: TdxMemData;
    src_Krov: TDataSource;
    cbb_KROV: TcxLookupComboBox;
    itm_KROV: TdxLayoutItem;
    cbb_VODA: TcxLookupComboBox;
    itm_VODA: TdxLayoutItem;
    src_Voda: TDataSource;
    mem_Voda: TdxMemData;
    mem_Hat: TdxMemData;
    src_Hat: TDataSource;
    cbb_HAT: TcxLookupComboBox;
    itm_HAT: TdxLayoutItem;
    ds_DU: TpFIBDataSet;
    src_DU: TDataSource;
    grplc1Group3: TdxLayoutGroup;
    btn_Add: TcxButton;
    itm_Add: TdxLayoutItem;
    btn_Cancel: TcxButton;
    itm_Cancel: TdxLayoutItem;
    grplc1Group4: TdxLayoutGroup;
    msk_nomer: TcxMaskEdit;
    itm_nomer: TdxLayoutItem;
    dt_LAST_KR: TcxDateEdit;
    itm_LAST_KR1: TdxLayoutItem;
    btn_addStreet: TcxButton;
    itm_AddStreet: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_addStreetClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetHouse;
    procedure OpenDS;
    function AddHouse :Boolean;
  public
    Fds :TpFIBDataSet;
    { Public declarations }
  end;

var
  AddHouseForm: TAddHouseForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, AddStreetFrm;

{$R *.dfm}

function TAddHouseForm.AddHouse :Boolean;
begin
  with Fds do begin
    if not Locate('NOMER;STREET',
                      VarArrayOf([msk_nomer.EditValue,cbb_street.EditValue]),[])
    then begin
      Append;
      FN('NOMER').AsVariant:= msk_nomer.Text;
      FN('STREET').AsVariant:= cbb_street.EditValue;
      FN('DU').AsVariant:= cbb_du.EditValue;
      FN('TOTAL_SQ').AsVariant:= ced_TOTAL_SQ.EditValue;
      FN('LIVING_SQ').AsVariant:= ced_LIVING_SQ.EditValue;
      FN('LODGER_CNT').AsVariant:= ced_LODGER_CNT.EditValue;
      FN('CELLAR_SQ').AsVariant:= ced_CELLAR_SQ.EditValue;
      FN('DRTZ_SQ').AsVariant:= ced_DRTZ_SQ.EditValue;
      FN('FLAT_CNT').AsVariant:= ced_FLAT_CNT.EditValue;
      FN('ACCCODE_CNT').AsVariant:= ced_ACCCODE_CNT.EditValue;
      FN('FLOOR_CNT').AsVariant:= ced_FLOOR_CNT.EditValue;
      FN('LIFT_CNT').AsVariant:= ced_LIFT_CNT.EditValue;
      FN('ENTRANCE_CNT').AsVariant:= ced_ENTRANCE_CNT.EditValue;
      FN('GARBAGE_CNT').AsVariant:= ced_GARBAGE_CNT.EditValue;
      FN('COMMERCE_SQ').AsVariant:= ced_COMMERCE_SQ.EditValue;
      FN('BUILDYEAR').AsVariant:= msk_BUILDYEAR.EditValue;
      FN('ACTIVE').AsVariant:= 0;
      FN('BUDGET').AsVariant:= 0;
      FN('LAST_KR').AsVariant:= dt_Last_KR.EditValue;
      FN('WALL').AsVariant:= cbb_Wall.EditValue;
      FN('GAZ').AsVariant:= cbb_GAZ.EditValue;
      FN('FASAD').AsVariant:= cbb_FASAD.EditValue;
      FN('KROV').AsVariant:= cbb_KROV.EditValue;
      FN('VODA').AsVariant:= cbb_VODA.EditValue;
      FN('HAT').AsVariant:=  cbb_HAT.EditValue;
      FN('A').AsVariant:= 0;
      Post;
      Result:=True;
    end else begin
    Application.MessageBox('Данный адрес уже зарегистрирован в справочнике домов.',
      'Ошибка', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
      Result:=False;
    end;
  end;
end;

procedure TAddHouseForm.btn_AddClick(Sender: TObject);
var
  i :integer;
begin
  for i:=0 to ComponentCount -1 do begin
    if Components[i].ClassType = TcxLookupComboBox then begin
      with (Components[i] as TcxLookupComboBox) do begin
        if (EditValue=null) and (Tag<>1) then begin
          Application.MessageBox('Не указаны обязательные параметры!',
            'Внимание', MB_OK + MB_ICONSTOP + MB_TOPMOST);
          SetFocus;
          Exit;
        end;
      end;
    end;
    if Components[i].ClassType = TcxCalcEdit then begin
       with (Components[i] as TcxCalcEdit) do begin
         if (EditValue=null) and (Tag<>1) then begin
           Application.MessageBox('Не указаны обязательные параметры!',
             'Внимание', MB_OK + MB_ICONSTOP + MB_TOPMOST);
           SetFocus;
           Exit;
         end;
       end;
    end;
    { TODO -chouseForm : maskEdit не проверять }
    if Components[i].ClassType = TcxMaskEdit then begin
       with (Components[i] as TcxMaskEdit) do begin
         if (EditText='') and (Tag<>1) then begin
           Application.MessageBox('Не указаны обязательные параметры!',
             'Внимание', MB_OK + MB_ICONSTOP + MB_TOPMOST);
           SetFocus;
           Exit;
         end;
       end;
    end;
    if Components[i].ClassType = TcxDateEdit then begin
       with (Components[i] as TcxDateEdit) do begin
         if (EditText='') and (Tag<>1) then begin
           Application.MessageBox('Не указаны обязательные параметры!',
             'Внимание', MB_OK + MB_ICONSTOP + MB_TOPMOST);
           SetFocus;
           Exit;
         end;
       end;
    end;
  end;

  if AddHouse then  begin
    Fds.CloseOpen(false);
    ModalResult:=mrOk;
  end else ModalResult:=mrNone;

end;

procedure TAddHouseForm.btn_addStreetClick(Sender: TObject);
var
  F :TAddStreetForm;
begin
  F:=TAddStreetForm.Create(self);
  if F.ShowModal=mrOk then
     ds_STREET.CloseOpen(false);
  F.Free;
end;

procedure TAddHouseForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  GetHouse;
end;

procedure TAddHouseForm.GetHouse;
begin
  //cbb_house.EditValue:=null;
  with ds_HOUSE do begin
    Close;
    if cbb_street.EditValue = null then Exit;
    MainWhereClause:='Street=:street';
    ParamByName('street').AsVariant:=cbb_street.EditValue;
    OrderClause:='Nomer';
    Open;
  end;
end;

procedure TAddHouseForm.OpenDS;
begin
  ds_STREET.Open;
  ds_DU.Open;
  CreateWall(mem_wall);
  HouseFieldEx(mem_GAZ,'GAZ');
  HouseFieldEx(mem_Fasad,'Fasad');
  HouseFieldEx(mem_Krov,'Krov');
  HouseFieldEx(mem_Voda,'Voda');
  HouseFieldEx(mem_Hat,'Hat');
end;

procedure TAddHouseForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TAddHouseForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;


 initialization
 RegisterClass(TAddHouseForm);
end.
