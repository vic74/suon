unit HouseCardFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinDevExpressStyle,  System.DateUtils,
  dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Data.DB,
  FIBDataSet, pFIBDataSet, dxLayoutLookAndFeels, dxLayoutControl, AppUtils,
  FIBQuery, pFIBCacheQueries, pFIBProps,
  cxPropertiesStore, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxStyles, HouseCardUnit, BaseForm, cmDBUnit, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxImageComboBox, cxCalendar, cxCalc, dxmdaset, Vcl.ImgList, cxLabel, cxDBLabel,
  cxCheckBox, EXLReportExcelTLB, EXLReportBand, EXLReport,
  dxSkinsdxBarPainter, dxBar, cxCurrencyEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, cxButtonEdit, dxSkinsdxDockControlPainter, cxPC,
  dxDockControl, dxDockPanel, frxClass, frxDBSet, frxExportXLS, frxExportRTF,
  dxSkinsDefaultPainters, cxNavigator;

type
  THouseCardForm = class(TDezForm)
    LayoutGroup_Root: TdxLayoutGroup;
    Layout: TdxLayoutControl;
    LF: TdxLayoutLookAndFeelList;
    lf1: TdxLayoutSkinLookAndFeel;
    LayoutGroup1: TdxLayoutGroup;
    src_STREET: TDataSource;
    ds_STREET: TpFIBDataSet;
    cbb_Street: TcxLookupComboBox;
    LayoutItem1: TdxLayoutItem;
    ds_HOUSE: TpFIBDataSet;
    src_HOUSE: TDataSource;
    cbb_House: TcxLookupComboBox;
    LayoutItem2: TdxLayoutItem;
    Prop1: TcxPropertiesStore;
    M1: TcxComboBox;
    LayoutItem3: TdxLayoutItem;
    Y1: TcxMaskEdit;
    LayoutItem4: TdxLayoutItem;
    M2: TcxComboBox;
    LayoutItem5: TdxLayoutItem;
    Y2: TcxMaskEdit;
    LayoutItem6: TdxLayoutItem;
    cxButton1: TcxButton;
    LayoutItem7: TdxLayoutItem;
    LayoutGroup2: TdxLayoutGroup;
    LayoutGroup3: TdxLayoutGroup;
    LayoutGroup4: TdxLayoutGroup;
    LayoutGroup5: TdxLayoutGroup;
    LayoutGroup6: TdxLayoutGroup;
    LayoutGroup7: TdxLayoutGroup;
    LayoutSplitterItem1: TdxLayoutSplitterItem;
    group1: TdxLayoutGroup;
    group2: TdxLayoutGroup;
    split1: TdxLayoutSplitterItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmLayoutItem8: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itmLayoutItem81: TdxLayoutItem;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1SERVISWORK: TcxGridDBColumn;
    clv1SWORKNAME: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1ADDR: TcxGridDBColumn;
    clv1PRICE: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1WORKLIST: TcxGridDBColumn;
    clv1QUANTITY: TcxGridDBColumn;
    clv2CODE: TcxGridDBColumn;
    clv2WORKSPECLIST: TcxGridDBColumn;
    clv2DATA: TcxGridDBColumn;
    clv2CLASSMAT: TcxGridDBColumn;
    clv2NAME: TcxGridDBColumn;
    clv2QUANTITY: TcxGridDBColumn;
    clv2PRICE: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    groupLayoutGroup8: TdxLayoutGroup;
    itmLayoutItem82: TdxLayoutItem;
    grd3: TcxGrid;
    v3: TcxGridDBTableView;
    clv3TRDOPSTATE: TcxGridDBColumn;
    clv3CODE: TcxGridDBColumn;
    clv3STATE: TcxGridDBColumn;
    clv3SNAME: TcxGridDBColumn;
    clv3NOMER: TcxGridDBColumn;
    clv3DATA: TcxGridDBColumn;
    clv3STREET: TcxGridDBColumn;
    clv3HOUSE: TcxGridDBColumn;
    clv3MLIST: TcxGridDBColumn;
    clv3MNAME: TcxGridDBColumn;
    clv3KONTRAGENT: TcxGridDBColumn;
    clv3KNAME: TcxGridDBColumn;
    clv3MANAGER: TcxGridDBColumn;
    clv3FIO: TcxGridDBColumn;
    clv3NCALC: TcxGridDBColumn;
    clv3NCALCDATE: TcxGridDBColumn;
    clv3NSUMMA: TcxGridDBColumn;
    clv3NDOP: TcxGridDBColumn;
    clv3SUMMA: TcxGridDBColumn;
    clv3DPLACE: TcxGridDBColumn;
    clv3NOTE: TcxGridDBColumn;
    clv3PLANCODE: TcxGridDBColumn;
    clv3TRDOPSOG: TcxGridDBColumn;
    clv3TRDOP: TcxGridDBColumn;
    clv3D1: TcxGridDBColumn;
    clv3D2: TcxGridDBColumn;
    l3: TcxGridLevel;
    m_state: TdxMemData;
    src_state: TDataSource;
    iml1: TcxImageList;
    lbl1: TcxDBLabel;
    itmLayoutItem83: TdxLayoutItem;
    lbl_Total_SQ: TcxDBLabel;
    itmLayoutItem84: TdxLayoutItem;
    lbl_Living_SQ: TcxDBLabel;
    itmLayoutItem85: TdxLayoutItem;
    lbl_Lodger_CNT: TcxDBLabel;
    itmLayoutItem87: TdxLayoutItem;
    lbl_Cellar_SQ: TcxDBLabel;
    itmLayoutItem88: TdxLayoutItem;
    lbl_Flat_CNT: TcxDBLabel;
    itmLayoutItem89: TdxLayoutItem;
    lbl_DRTZ_SQ: TcxDBLabel;
    itmLayoutItem810: TdxLayoutItem;
    lbl_AccCode_CNT: TcxDBLabel;
    itmLayoutItem811: TdxLayoutItem;
    lbl_Floor_CNT: TcxDBLabel;
    itmLayoutItem812: TdxLayoutItem;
    lbl_Lift_CNT: TcxDBLabel;
    itmLayoutItem813: TdxLayoutItem;
    gLayoutGroup8: TdxLayoutGroup;
    gLayoutGroup9: TdxLayoutGroup;
    lbl_Entrance_CNT: TcxDBLabel;
    itmLayoutItem814: TdxLayoutItem;
    lbl_Garbage_CNT: TcxDBLabel;
    itmLayoutItem815: TdxLayoutItem;
    lbl_BuildYear: TcxDBLabel;
    itmLayoutItem816: TdxLayoutItem;
    lbl_Last_KR: TcxDBLabel;
    itmLayoutItem817: TdxLayoutItem;
    lbl_Wall: TcxDBLabel;
    itmLayoutItem818: TdxLayoutItem;
    lbl_GAZ: TcxDBLabel;
    itmLayoutItem819: TdxLayoutItem;
    lbl_Fasad: TcxDBLabel;
    itmLayoutItem820: TdxLayoutItem;
    lbl_Krov: TcxDBLabel;
    itmLayoutItem821: TdxLayoutItem;
    gLayoutGroup10: TdxLayoutGroup;
    gLayoutGroup11: TdxLayoutGroup;
    split2: TdxLayoutSplitterItem;
    split3: TdxLayoutSplitterItem;
    ds_NGPROOM: TpFIBDataSet;
    src_NGPROOM: TDataSource;
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    grd4: TcxGrid;
    itmLayoutItem822: TdxLayoutItem;
    clv4CODE: TcxGridDBColumn;
    clv4A: TcxGridDBColumn;
    clv4SQ: TcxGridDBColumn;
    clv4FLOOR: TcxGridDBColumn;
    clv4TARGET: TcxGridDBColumn;
    clv4SBNAME: TcxGridDBColumn;
    clv4TS: TcxGridDBColumn;
    clv4TSNAME: TcxGridDBColumn;
    ds_HOUSEKWORK: TpFIBDataSet;
    src_HOUSEKWORK: TDataSource;
    gLayoutGroup12: TdxLayoutGroup;
    gLayoutGroup13: TdxLayoutGroup;
    v5: TcxGridDBTableView;
    l5: TcxGridLevel;
    grd5: TcxGrid;
    itmLayoutItem823: TdxLayoutItem;
    clv5CODE: TcxGridDBColumn;
    clv5HOUSE: TcxGridDBColumn;
    clv5MLIST: TcxGridDBColumn;
    clv5MNAME: TcxGridDBColumn;
    clv5Y: TcxGridDBColumn;
    clv5ENT: TcxGridDBColumn;
    ds_TRWORKBDR: TpFIBDataSet;
    ds_TRLFACT: TpFIBDataSet;
    xl1: TEXLReport;
    mT1: TdxMemData;
    src_mT1: TDataSource;
    xl_sub: TEXLReport;
    xl_subL: TEXLReport;
    bm1: TdxBarManager;
    docm1: TdxBarDockControl;
    itmLayoutItem824: TdxLayoutItem;
    gLayoutGroup14: TdxLayoutGroup;
    br1: TdxBar;
    btn_UseFunds: TdxBarButton;
    g_BDR: TdxLayoutGroup;
    g_BDR1: TdxLayoutGroup;
    g_BDR2: TdxLayoutGroup;
    g_BDR3: TdxLayoutGroup;
    itmLayoutItem825: TdxLayoutItem;
    itmLayoutItem826: TdxLayoutItem;
    split4: TdxLayoutSplitterItem;
    grd8: TcxGrid;
    vb1: TcxGridDBBandedTableView;
    cl_F0: TcxGridDBBandedColumn;
    cl_F1: TcxGridDBBandedColumn;
    cl_F2: TcxGridDBBandedColumn;
    cl_F3: TcxGridDBBandedColumn;
    cl_F4: TcxGridDBBandedColumn;
    cl_F5: TcxGridDBBandedColumn;
    cl_F6: TcxGridDBBandedColumn;
    cl_F7: TcxGridDBBandedColumn;
    cl_F8: TcxGridDBBandedColumn;
    cl_F9: TcxGridDBBandedColumn;
    cl_F10: TcxGridDBBandedColumn;
    cl_F11: TcxGridDBBandedColumn;
    cl_F12: TcxGridDBBandedColumn;
    cl_F13: TcxGridDBBandedColumn;
    cl_F14: TcxGridDBBandedColumn;
    cl_F15: TcxGridDBBandedColumn;
    cl_F16: TcxGridDBBandedColumn;
    cl_F17: TcxGridDBBandedColumn;
    cl_F18: TcxGridDBBandedColumn;
    cl_F19: TcxGridDBBandedColumn;
    cl_F20: TcxGridDBBandedColumn;
    cl_F21: TcxGridDBBandedColumn;
    cl_F22: TcxGridDBBandedColumn;
    clvb1D: TcxGridDBBandedColumn;
    clvb1A: TcxGridDBBandedColumn;
    clvb1Column1: TcxGridDBBandedColumn;
    l8: TcxGridLevel;
    clvb1NMONTH: TcxGridDBBandedColumn;
    clvb1Y: TcxGridDBBandedColumn;
    grd6: TcxGrid;
    vb2: TcxGridDBBandedTableView;
    clbv1A: TcxGridDBBandedColumn;
    clbv1F1: TcxGridDBBandedColumn;
    clbv1F2: TcxGridDBBandedColumn;
    clbv1F3: TcxGridDBBandedColumn;
    clbv1F4: TcxGridDBBandedColumn;
    clbv1F5: TcxGridDBBandedColumn;
    clbv1F6: TcxGridDBBandedColumn;
    clbv1F7: TcxGridDBBandedColumn;
    clbv1F8: TcxGridDBBandedColumn;
    clbv1F9: TcxGridDBBandedColumn;
    clbv1F10: TcxGridDBBandedColumn;
    clbv1F11: TcxGridDBBandedColumn;
    clbv1F12: TcxGridDBBandedColumn;
    clbv1F13: TcxGridDBBandedColumn;
    clbv1F14: TcxGridDBBandedColumn;
    clbv1F15: TcxGridDBBandedColumn;
    clbv1F16: TcxGridDBBandedColumn;
    clbv1F17: TcxGridDBBandedColumn;
    clbv1F18: TcxGridDBBandedColumn;
    clbv1F19: TcxGridDBBandedColumn;
    clbv1F20: TcxGridDBBandedColumn;
    clbv1f21: TcxGridDBBandedColumn;
    clbv1F22: TcxGridDBBandedColumn;
    clbv1F23: TcxGridDBBandedColumn;
    clbv1F24: TcxGridDBBandedColumn;
    clbv1F25: TcxGridDBBandedColumn;
    clbv1F26: TcxGridDBBandedColumn;
    clvb1House: TcxGridDBBandedColumn;
    clvb1Column11: TcxGridDBBandedColumn;
    clvb1Column2: TcxGridDBBandedColumn;
    l6: TcxGridLevel;
    clvb2NMONTH: TcxGridDBBandedColumn;
    clvb2Y: TcxGridDBBandedColumn;
    cbb_srv: TcxLookupComboBox;
    itmLayoutItem86: TdxLayoutItem;
    ds_HOUSESRV: TpFIBDataSet;
    src_HOUSESRV: TDataSource;
    btn_GetBDR: TcxButton;
    itmLayoutItem827: TdxLayoutItem;
    gLayoutGroup15: TdxLayoutGroup;
    grd7: TcxGrid;
    vb3: TcxGridDBBandedTableView;
    clDog: TcxGridDBBandedColumn;
    cl1: TcxGridDBBandedColumn;
    clF0: TcxGridDBBandedColumn;
    clF1: TcxGridDBBandedColumn;
    clF2: TcxGridDBBandedColumn;
    clF3: TcxGridDBBandedColumn;
    clF4: TcxGridDBBandedColumn;
    clF5: TcxGridDBBandedColumn;
    clF6: TcxGridDBBandedColumn;
    clF7: TcxGridDBBandedColumn;
    clF8: TcxGridDBBandedColumn;
    clF9: TcxGridDBBandedColumn;
    clvb1Column12: TcxGridDBBandedColumn;
    clF10: TcxGridDBBandedColumn;
    clF11: TcxGridDBBandedColumn;
    clF12: TcxGridDBBandedColumn;
    clF14: TcxGridDBBandedColumn;
    clF15: TcxGridDBBandedColumn;
    clF16: TcxGridDBBandedColumn;
    clF17: TcxGridDBBandedColumn;
    clF18: TcxGridDBBandedColumn;
    clF19: TcxGridDBBandedColumn;
    clF20: TcxGridDBBandedColumn;
    clF21: TcxGridDBBandedColumn;
    clF22: TcxGridDBBandedColumn;
    clF23: TcxGridDBBandedColumn;
    clF24: TcxGridDBBandedColumn;
    clF25: TcxGridDBBandedColumn;
    clF26: TcxGridDBBandedColumn;
    clF27: TcxGridDBBandedColumn;
    clF28: TcxGridDBBandedColumn;
    clF29: TcxGridDBBandedColumn;
    clF30: TcxGridDBBandedColumn;
    clF31: TcxGridDBBandedColumn;
    clF32: TcxGridDBBandedColumn;
    clF33: TcxGridDBBandedColumn;
    clF34: TcxGridDBBandedColumn;
    clvb1Column21: TcxGridDBBandedColumn;
    l7: TcxGridLevel;
    itmLayoutItem9: TdxLayoutItem;
    split5: TdxLayoutSplitterItem;
    itmLayoutItem10: TdxLayoutItem;
    grd9: TcxGrid;
    vb4: TcxGridDBBandedTableView;
    clvb1Column13: TcxGridDBBandedColumn;
    cl2: TcxGridDBBandedColumn;
    cl3: TcxGridDBBandedColumn;
    cl4: TcxGridDBBandedColumn;
    cl5: TcxGridDBBandedColumn;
    cl6: TcxGridDBBandedColumn;
    cl7: TcxGridDBBandedColumn;
    cl8: TcxGridDBBandedColumn;
    cl9: TcxGridDBBandedColumn;
    cl10: TcxGridDBBandedColumn;
    cl11: TcxGridDBBandedColumn;
    cl12: TcxGridDBBandedColumn;
    cl13: TcxGridDBBandedColumn;
    cl14: TcxGridDBBandedColumn;
    cl15: TcxGridDBBandedColumn;
    cl16: TcxGridDBBandedColumn;
    cl17: TcxGridDBBandedColumn;
    cl18: TcxGridDBBandedColumn;
    cl19: TcxGridDBBandedColumn;
    cl20: TcxGridDBBandedColumn;
    cl21: TcxGridDBBandedColumn;
    cl22: TcxGridDBBandedColumn;
    cl23: TcxGridDBBandedColumn;
    cl24: TcxGridDBBandedColumn;
    cl25: TcxGridDBBandedColumn;
    cl26: TcxGridDBBandedColumn;
    cl27: TcxGridDBBandedColumn;
    clvb1F27: TcxGridDBBandedColumn;
    clvb1F28: TcxGridDBBandedColumn;
    clvb1F29: TcxGridDBBandedColumn;
    clvb1F30: TcxGridDBBandedColumn;
    clvb1F31: TcxGridDBBandedColumn;
    clvb1F32: TcxGridDBBandedColumn;
    cl28: TcxGridDBBandedColumn;
    clvb1Column22: TcxGridDBBandedColumn;
    clvb1Column3: TcxGridDBBandedColumn;
    clvb1Column4: TcxGridDBBandedColumn;
    l9: TcxGridLevel;
    clvb3NMONTH: TcxGridDBBandedColumn;
    clvb3Y: TcxGridDBBandedColumn;
    clvb4NMONTH: TcxGridDBBandedColumn;
    clvb4Y: TcxGridDBBandedColumn;
    itmLayoutItem11: TdxLayoutItem;
    grd10: TcxGrid;
    vb5: TcxGridDBBandedTableView;
    clvb529: TcxGridDBBandedColumn;
    clvb530: TcxGridDBBandedColumn;
    clvb531: TcxGridDBBandedColumn;
    clvb532: TcxGridDBBandedColumn;
    clvb533: TcxGridDBBandedColumn;
    clvb534: TcxGridDBBandedColumn;
    clvb535: TcxGridDBBandedColumn;
    clvb536: TcxGridDBBandedColumn;
    clvb537: TcxGridDBBandedColumn;
    clvb538: TcxGridDBBandedColumn;
    clvb539: TcxGridDBBandedColumn;
    clvb540: TcxGridDBBandedColumn;
    clvb541: TcxGridDBBandedColumn;
    clF13: TcxGridDBBandedColumn;
    clvb542: TcxGridDBBandedColumn;
    clvb543: TcxGridDBBandedColumn;
    clvb544: TcxGridDBBandedColumn;
    clvb545: TcxGridDBBandedColumn;
    clvb546: TcxGridDBBandedColumn;
    clvb547: TcxGridDBBandedColumn;
    clvb548: TcxGridDBBandedColumn;
    clvb549: TcxGridDBBandedColumn;
    clvb550: TcxGridDBBandedColumn;
    clvb551: TcxGridDBBandedColumn;
    clvb552: TcxGridDBBandedColumn;
    clvb553: TcxGridDBBandedColumn;
    clvb554: TcxGridDBBandedColumn;
    clvb555: TcxGridDBBandedColumn;
    clvb556: TcxGridDBBandedColumn;
    clvb5D1: TcxGridDBBandedColumn;
    clvb557: TcxGridDBBandedColumn;
    l10: TcxGridLevel;
    split6: TdxLayoutSplitterItem;
    itmLayoutItem12: TdxLayoutItem;
    grd11: TcxGrid;
    vb6: TcxGridDBBandedTableView;
    clvb6Column14: TcxGridDBBandedColumn;
    clvb629: TcxGridDBBandedColumn;
    clvb630: TcxGridDBBandedColumn;
    clvb631: TcxGridDBBandedColumn;
    clvb632: TcxGridDBBandedColumn;
    clvb633: TcxGridDBBandedColumn;
    clvb634: TcxGridDBBandedColumn;
    clvb635: TcxGridDBBandedColumn;
    clvb636: TcxGridDBBandedColumn;
    clvb637: TcxGridDBBandedColumn;
    clvb638: TcxGridDBBandedColumn;
    clvb639: TcxGridDBBandedColumn;
    clvb640: TcxGridDBBandedColumn;
    clvb641: TcxGridDBBandedColumn;
    clvb642: TcxGridDBBandedColumn;
    clvb643: TcxGridDBBandedColumn;
    clvb644: TcxGridDBBandedColumn;
    clvb645: TcxGridDBBandedColumn;
    clvb646: TcxGridDBBandedColumn;
    clvb647: TcxGridDBBandedColumn;
    clvb648: TcxGridDBBandedColumn;
    clvb649: TcxGridDBBandedColumn;
    clvb650: TcxGridDBBandedColumn;
    clvb651: TcxGridDBBandedColumn;
    clvb652: TcxGridDBBandedColumn;
    clvb653: TcxGridDBBandedColumn;
    clvb654: TcxGridDBBandedColumn;
    clvb655: TcxGridDBBandedColumn;
    clvb656: TcxGridDBBandedColumn;
    clvb657: TcxGridDBBandedColumn;
    clvb658: TcxGridDBBandedColumn;
    clvb659: TcxGridDBBandedColumn;
    clvb660: TcxGridDBBandedColumn;
    clvb6Column23: TcxGridDBBandedColumn;
    clvb6Column31: TcxGridDBBandedColumn;
    l11: TcxGridLevel;
    clvb5NMONTH: TcxGridDBBandedColumn;
    clvb5Y: TcxGridDBBandedColumn;
    clvb6NMONTH: TcxGridDBBandedColumn;
    clvb6Y: TcxGridDBBandedColumn;
    btn_ExcelAll: TdxBarButton;
    ds_mat: TpFIBDataSet;
    g_TOO: TdxLayoutGroup;
    g_TOL: TdxLayoutGroup;
    grd12: TcxGrid;
    v12: TcxGridDBTableView;
    clv12_29: TcxGridDBColumn;
    clv12_30: TcxGridDBColumn;
    clv12_31: TcxGridDBColumn;
    clv12_32: TcxGridDBColumn;
    clv12_33: TcxGridDBColumn;
    clv12_34: TcxGridDBColumn;
    clv12_35: TcxGridDBColumn;
    clv12_36: TcxGridDBColumn;
    clv12_37: TcxGridDBColumn;
    clv12_38: TcxGridDBColumn;
    clv12_39: TcxGridDBColumn;
    clv12_40: TcxGridDBColumn;
    clv12_41: TcxGridDBColumn;
    clv12_42: TcxGridDBColumn;
    clv12_43: TcxGridDBColumn;
    clv12_44: TcxGridDBColumn;
    clv12_45: TcxGridDBColumn;
    clv12_46: TcxGridDBColumn;
    clv12_47: TcxGridDBColumn;
    clv12_48: TcxGridDBColumn;
    clv12_49: TcxGridDBColumn;
    clv12_50: TcxGridDBColumn;
    clv12_51: TcxGridDBColumn;
    clv12_52: TcxGridDBColumn;
    clv12_53: TcxGridDBColumn;
    clv12_54: TcxGridDBColumn;
    l12: TcxGridLevel;
    itm_TOL: TdxLayoutItem;
    md1: TdxMemData;
    g_bdr4: TdxLayoutGroup;
    grd13: TcxGrid;
    vb13: TcxGridDBBandedTableView;
    clvb13_29: TcxGridDBBandedColumn;
    clvb1SNAME: TcxGridDBBandedColumn;
    clvb1NOMER: TcxGridDBBandedColumn;
    clvb1SALDO0: TcxGridDBBandedColumn;
    clvb1PSUM0: TcxGridDBBandedColumn;
    clvb1RSUM0: TcxGridDBBandedColumn;
    clvb1SALDO_END0: TcxGridDBBandedColumn;
    clvb1SALDO1: TcxGridDBBandedColumn;
    clvb1PSUM1: TcxGridDBBandedColumn;
    clvb1RSUM1: TcxGridDBBandedColumn;
    clvb1SALDO_END1: TcxGridDBBandedColumn;
    clvb1SALDO2: TcxGridDBBandedColumn;
    clvb1PSUM2: TcxGridDBBandedColumn;
    clvb1RSUM2: TcxGridDBBandedColumn;
    clvb1SALDO_END2: TcxGridDBBandedColumn;
    clvb1SALDO3: TcxGridDBBandedColumn;
    clvb1PSUM3: TcxGridDBBandedColumn;
    clvb1RSUM3: TcxGridDBBandedColumn;
    clvb1SALDO_END3: TcxGridDBBandedColumn;
    clvb1SALDO: TcxGridDBBandedColumn;
    clvb1PSUM: TcxGridDBBandedColumn;
    clvb1RSUM: TcxGridDBBandedColumn;
    clvb1SALDO_END: TcxGridDBBandedColumn;
    clvb1SALDO5: TcxGridDBBandedColumn;
    clvb1PSUM5: TcxGridDBBandedColumn;
    clvb1RSUM5: TcxGridDBBandedColumn;
    clvb1SALDO_END5: TcxGridDBBandedColumn;
    l13: TcxGridLevel;
    itmLayoutItem13: TdxLayoutItem;
    itmLayoutItem14: TdxLayoutItem;
    split7: TdxLayoutSplitterItem;
    grd14: TcxGrid;
    vb14: TcxGridDBBandedTableView;
    clvb2ARENDATOR: TcxGridDBBandedColumn;
    clvb2ARNAME: TcxGridDBBandedColumn;
    clvb2DOGIMMKD: TcxGridDBBandedColumn;
    clvb2DNOTE: TcxGridDBBandedColumn;
    clvb2SALDO0: TcxGridDBBandedColumn;
    clvb2PSUM0: TcxGridDBBandedColumn;
    clvb2RSUM0: TcxGridDBBandedColumn;
    clvb2SALDO_END0: TcxGridDBBandedColumn;
    clvb2SALDO1: TcxGridDBBandedColumn;
    clvb2PSUM1: TcxGridDBBandedColumn;
    clvb2RSUM1: TcxGridDBBandedColumn;
    clvb2SALDO_END1: TcxGridDBBandedColumn;
    clvb2SALDO2: TcxGridDBBandedColumn;
    clvb2PSUM2: TcxGridDBBandedColumn;
    clvb2RSUM2: TcxGridDBBandedColumn;
    clvb2SALDO_END2: TcxGridDBBandedColumn;
    clvb2SALDO3: TcxGridDBBandedColumn;
    clvb2PSUM3: TcxGridDBBandedColumn;
    clvb2RSUM3: TcxGridDBBandedColumn;
    clvb2SALDO_END3: TcxGridDBBandedColumn;
    clvb2SALDO: TcxGridDBBandedColumn;
    clvb2PSUM: TcxGridDBBandedColumn;
    clvb2RSUM: TcxGridDBBandedColumn;
    clvb2SALDO_END: TcxGridDBBandedColumn;
    clvb2SALDO5: TcxGridDBBandedColumn;
    clvb2PSUM5: TcxGridDBBandedColumn;
    clvb2RSUM5: TcxGridDBBandedColumn;
    clvb2SALDO_END5: TcxGridDBBandedColumn;
    l14: TcxGridLevel;
    md2: TdxMemData;
    ds_HMOVEIMMKD2: TpFIBDataSet;
    src_md2: TDataSource;
    g_ACT: TdxLayoutGroup;
    gLayoutGroup16: TdxLayoutGroup;
    v15: TcxGridDBTableView;
    l15: TcxGridLevel;
    grd15: TcxGrid;
    itmLayoutItem828: TdxLayoutItem;
    clv15TYPENAME: TcxGridDBColumn;
    clv15SFNAME: TcxGridDBColumn;
    clv15MNAME: TcxGridDBColumn;
    clv15MNOTE: TcxGridDBColumn;
    clv15NOTE: TcxGridDBColumn;
    clv15QUANTITY: TcxGridDBColumn;
    clv15ENTRANCE: TcxGridDBColumn;
    clv15FLOOR: TcxGridDBColumn;
    clv15FLAT: TcxGridDBColumn;
    clv15ATYPENAME: TcxGridDBColumn;
    clv15RTYPENAME: TcxGridDBColumn;
    gLayoutGroup17: TdxLayoutGroup;
    gLayoutGroup18: TdxLayoutGroup;
    itmLayoutItem15: TdxLayoutItem;
    grd16: TcxGrid;
    v16: TcxGridDBTableView;
    clv1showhouse: TcxGridDBColumn;
    clv1SHOWRESULT: TcxGridDBColumn;
    clv1WORKSPECLIST1: TcxGridDBColumn;
    clv1WORKSPECLIST: TcxGridDBColumn;
    cl29: TcxGridDBColumn;
    clv1JWORKTYPE: TcxGridDBColumn;
    clv1JTNAME: TcxGridDBColumn;
    clv1REGDATE: TcxGridDBColumn;
    cl30: TcxGridDBColumn;
    clv1KONTRNAME: TcxGridDBColumn;
    cl31: TcxGridDBColumn;
    clv1STREETNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1DESCRIPTION: TcxGridDBColumn;
    clv1PLACE: TcxGridDBColumn;
    clv1PLANDATE: TcxGridDBColumn;
    clv1FACTDATE: TcxGridDBColumn;
    cl32: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1ToArh: TcxGridDBColumn;
    l16: TcxGridLevel;
    il1: TcxImageList;
    gLayoutGroup19: TdxLayoutGroup;
    ds_OPUHOUSE: TpFIBDataSet;
    src_OPUHOUSE: TDataSource;
    gLayoutGroup20: TdxLayoutGroup;
    split8: TdxLayoutSplitterItem;
    ds_Device: TpFIBDataSet;
    src_Device: TDataSource;
    docm2: TdxDockingManager;
    dpnl1: TdxDockPanel;
    docs1: TdxDockSite;
    itmLayoutItem831: TdxLayoutItem;
    grd17: TcxGrid;
    v17: TcxGridDBTableView;
    clv17CODE: TcxGridDBColumn;
    clv17NAME: TcxGridDBColumn;
    clv17HOUSE: TcxGridDBColumn;
    clv17IP: TcxGridDBColumn;
    clv17ISIP: TcxGridDBColumn;
    l17: TcxGridLevel;
    dpnl2: TdxDockPanel;
    grd18: TcxGrid;
    v18: TcxGridDBTableView;
    clv18CODE: TcxGridDBColumn;
    clv18OPU_HOUSE: TcxGridDBColumn;
    clv18OPU_TYPE: TcxGridDBColumn;
    clv18TNAME: TcxGridDBColumn;
    clv18INST_DATE: TcxGridDBColumn;
    clv18INST_KONTRAGENT: TcxGridDBColumn;
    clv18KNAME: TcxGridDBColumn;
    clv18TU_DATA: TcxGridDBColumn;
    clv18TU_KONTRAGENT: TcxGridDBColumn;
    clv18K1NAME: TcxGridDBColumn;
    clv18PROJ_DATE: TcxGridDBColumn;
    clv18PROJ_KONTRAGENT: TcxGridDBColumn;
    clv18K2NAME: TcxGridDBColumn;
    l18: TcxGridLevel;
    dpnl3: TdxDockPanel;
    dlst2: TdxLayoutDockSite;
    dlst1: TdxLayoutDockSite;
    dlst3: TdxLayoutDockSite;
    v19: TcxGridDBTableView;
    l19: TcxGridLevel;
    grd19: TcxGrid;
    ds_OPUELEMENT: TpFIBDataSet;
    src_OPUELEMENT: TDataSource;
    v19CODE: TcxGridDBColumn;
    v19DEVICE: TcxGridDBColumn;
    v19DEVICEMARK: TcxGridDBColumn;
    v19DNAME: TcxGridDBColumn;
    v19NOMER: TcxGridDBColumn;
    v19MAKEDATE: TcxGridDBColumn;
    v19DV: TcxGridDBColumn;
    v19DR: TcxGridDBColumn;
    v19QV: TcxGridDBColumn;
    v19ISDOC: TcxGridDBColumn;
    v19ISWORK: TcxGridDBColumn;
    dpnl4: TdxDockPanel;
    dxtbcntnrdckst1: TdxTabContainerDockSite;
    v20: TcxGridDBTableView;
    l20: TcxGridLevel;
    grd20: TcxGrid;
    ds_WORKACT: TpFIBDataSet;
    src_WORKACT: TDataSource;
    clv20CODE: TcxGridDBColumn;
    clv20DEVICE: TcxGridDBColumn;
    clv20NOMER: TcxGridDBColumn;
    clv20ACT_DATA: TcxGridDBColumn;
    clv20ACT_KONTRAGENT: TcxGridDBColumn;
    clv20KNAME: TcxGridDBColumn;
    clv20LASTDATA: TcxGridDBColumn;
    dpnl5: TdxDockPanel;
    ContainerDockSite1: TdxHorizContainerDockSite;
    v21: TcxGridDBTableView;
    l21: TcxGridLevel;
    grd21: TcxGrid;
    ds_PROVERKA: TpFIBDataSet;
    src_PROVERKA: TDataSource;
    clv21CODE: TcxGridDBColumn;
    clv21OUTDATE: TcxGridDBColumn;
    clv21INDATE: TcxGridDBColumn;
    clv21KONTRAGENT: TcxGridDBColumn;
    clv21KNAME: TcxGridDBColumn;
    clv21GARANTDATE: TcxGridDBColumn;
    clv21ELEMENT: TcxGridDBColumn;
    fr1: TfrxReport;
    fr_ds1: TfrxDBDataset;
    fr_ds2: TfrxDBDataset;
    doc1: TdxBarDockControl;
    br_opu: TdxBar;
    btn_Fr: TdxBarButton;
    fr_ds_WorkAct: TfrxDBDataset;
    fr_ds_OPUELEMENT: TfrxDBDataset;
    fr_ds_Prov: TfrxDBDataset;
    frxls1: TfrxXLSExport;
    frdoc1: TfrxRTFExport;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbb_StreetPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_UseFundsClick(Sender: TObject);
    procedure btn_GetBDRClick(Sender: TObject);
    procedure cbb_HousePropertiesEditValueChanged(Sender: TObject);
    procedure btn_ExcelAllClick(Sender: TObject);
    procedure SetCellValue(Sender: TObject;
  Band: TEXLReportBand; RowInTemplate, RowInReport, ColumnInReport: Integer;
  var CellValue: OleVariant);
    procedure GetFieldValue(Sender: TObject; const Field: string; var Value: OleVariant);
    procedure vb13CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure GrouppingBeforeBuild(Sender: TObject);
    procedure v17CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v17KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v18CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v18KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v19CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v19KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_FrClick(Sender: TObject);
  private
    procedure OpenDS;
    procedure OpenHouse;
    procedure OpenHouseSrv;
    //
    function CheckParams: Boolean;
    procedure OpenTO;
    procedure OpenTR;
    procedure CreateMem;
    procedure OpenNGROOM;
    procedure openHousekWork;
    //
    procedure RepUseFunds;
    procedure ExportExcel;
    //
    procedure LoadBDR;
    procedure CreateMD2;
    procedure MakeData1;
    procedure MakeByArendator;
    //
    procedure GetAct;
    //
    procedure MakeOPU;
    procedure OpenOPUDevice;
    procedure OpenOPUElement;
    procedure OpenOPUWorkAkt;
    procedure OpenOPUProverka;
    //
    procedure ExpExcelAll;
  public
    { Public declarations }
  end;

var
  HouseCardForm: THouseCardForm;

implementation

{$R *.dfm}

uses dezHouseReport, LoadingSplash, dezMakeBDR;


procedure THouseCardForm.btn_ExcelAllClick(Sender: TObject);
begin
  ExpExcelAll;
end;

procedure THouseCardForm.btn_FrClick(Sender: TObject);
begin
  fr1.LoadFromFile(AppPath+'rep\opu_Card.fr3');
  fr1.ShowReport();
end;

procedure THouseCardForm.btn_GetBDRClick(Sender: TObject);
begin
  LoadBDR;
end;

procedure THouseCardForm.btn_UseFundsClick(Sender: TObject);
begin
  RepUseFunds;
  ExportExcel;
end;

procedure THouseCardForm.cbb_HousePropertiesEditValueChanged(Sender: TObject);
begin
  if ds_HOUSE.State in [dsBrowse] then
  ds_HOUSE.Locate('CODE',cbb_House.EditValue,[]);
end;

procedure THouseCardForm.cbb_StreetPropertiesEditValueChanged(Sender: TObject);
begin
  OpenHouse;
end;

function THouseCardForm.CheckParams: Boolean;
begin
  Result:= False;
  if cbb_House.EditingValue = null then
     raise dezException.Create('Не указан дом!');
  if (Y1.EditingValue = null) or (Y2.EditingValue = null) then
     raise dezException.Create('Не верно указан период!');
  Result:= True;
end;

procedure THouseCardForm.CreateMD2;
var
  i :Integer;
begin
  CreateField(md2,'ARENDATOR',ftInteger);
  CreateField(md2,'ARNAME',ftString,256);
  CreateField(md2,'DOGIMMKD',ftInteger);
  CreateField(md2,'DNOTE',ftString,512);
  CreateField(md2,'DTYPE',ftInteger);
  for i:=0 to 5 do begin
    if i<>4 then begin
      CreateField(md2,'SALDO'+IntToStr(i),ftBCD);
      CreateField(md2,'PSUM'+IntToStr(i),ftBCD);
      CreateField(md2,'RSUM'+IntToStr(i),ftBCD);
      CreateField(md2,'SALDO_END'+IntToStr(i),ftBCD);
    end;
  end;
  CreateField(md2,'SALDO',ftBCD);
  CreateField(md2,'PSUM',ftBCD);
  CreateField(md2,'RSUM',ftBCD);
  CreateField(md2,'SALDO_END',ftBCD);
  md2.Open;
end;

procedure THouseCardForm.CreateMem;
  procedure AddType(ACode :Integer; AName :string);
  begin
    with m_state do
    begin
      Append;
      FieldByName('Code').AsInteger:=ACode;
      FieldByName('Name').AsString:=AName;
      Post;
    end;
  end;
begin
  CreateField(m_state,'CODE',ftInteger);
  CreateField(m_state,'NAME',ftString,128);
  m_state.Open;
  AddType(0,'предремонтная встреча');
  AddType(1,'дефектная ведомость');
  AddType(2,'калькуляция');
  AddType(3,'доп. соглашение');
  AddType(4,'в работе');
  AddType(5,'завершено');
end;


procedure THouseCardForm.cxButton1Click(Sender: TObject);
begin
  if not CheckParams then Exit;
  OpenTO;
  OpenTR;
  OpenNGROOM;
  openHousekWork;
  GetAct;
  MakeOPU;
  //LoadBDR;
end;

procedure THouseCardForm.ExpExcelAll;
var
  fD1, fD2: Variant;
  fxl_main: TEXLReport;        //общие данные
  fxl_ngp: TEXLReport;         //помещения нжп
  fxl_kr: TEXLReport;          //список кап ремонтов
  fxl_TOw: TEXLReport;         //список работ ТО
  fxl_TOm: TEXLReport;         //список материалов ТО
  fxl_TR: TEXLReport;          //список работ ТР
  fxl_TRL: TEXLReport;         //список работ ТР лифт
  fxl_PBDR1: TEXLReport;       //бдр1 план
  fxl_Akt: TEXLReport;         //акты осмотров
  //
  m_ngp: TdxMemData;
  m_kr:  TdxMemData;
  m_TOw: TdxMemData;
  m_TOm: TdxMemData;
  m_TR:  TdxMemData;
  m_TRL: TdxMemData;
  //
  procedure MakeData;
  begin
    fD1:= StartOfAMonth(Y1.EditingValue, M1.ItemIndex+1);
    fD2:= EndOfAMonth(Y2.EditingValue, M2.ItemIndex+1)-1;
  end;

  procedure SetParams(DS: TpFIBDataSet);
  begin
    with DS do begin
      Transaction := cmDb.RT;
      Database := cmDb.DB;
      UpdateTransaction := cmDb.WT;
    end;
  end;

  procedure PrepareRep;
  begin
    MakeData;
      with DS_MAT do begin
        Close;
          DataSet_ID:= 13;
          Prepare;
          ParamByName('D1').AsVariant:= fD1;
          ParamByName('D2').AsVariant:= fD2;
          ParamByName('HOUSE').AsVariant:= cbb_House.EditValue;
        Open;
      end;
    fxl_main:= TEXLReport.Create(nil);
    fxl_ngp:= TEXLReport.Create(self);
    fxl_kr:= TEXLReport.Create(nil);
    fxl_TOw:= TEXLReport.Create(nil);
    fxl_TOm:= TEXLReport.Create(nil);
    fxl_TR:=  TEXLReport.Create(nil);
    fxl_TRL:=  TEXLReport.Create(nil);
    fxl_PBDR1:= TEXLReport.Create(nil);
    fxl_Akt:= TEXLReport.Create(nil);
    //memdata
    m_ngp:= TdxMemData.Create(nil);
    m_kr:=  TdxMemData.Create(nil);
    m_TOw:= TdxMemData.Create(nil);
    m_TOm:= TdxMemData.Create(nil);
    m_TR:=  TdxMemData.Create(nil);
    m_TRL:= TdxMemData.Create(nil);
  end;

  procedure FreeRep;
  begin
    if Assigned(fxl_main) then FreeAndNil(fxl_main);
    if Assigned(fxl_ngp) then FreeAndNil(fxl_ngp);
    if Assigned(fxl_kr) then FreeAndNil(fxl_kr);
    if Assigned(fxl_TOw) then FreeAndNil(fxl_TOw);
    if Assigned(fxl_TOm) then FreeAndNil(fxl_TOm);
    if Assigned(fxl_TR) then FreeAndNil(fxl_TR);
    if Assigned(fxl_TRL) then FreeAndNil(fxl_TRL);
    if Assigned(fxl_PBDR1) then FreeAndNil(fxl_PBDR1);
    if Assigned(fxl_Akt) then FreeAndNil(fxl_Akt);
    //if Assigned(DS_MAT) then FreeAndNil(DS_MAT);
    if Assigned(m_ngp) then FreeAndNil(m_ngp);
    if Assigned(m_kr) then FreeAndNil(m_kr);
    if Assigned(m_TOw) then FreeAndNil(m_TOw);
    if Assigned(m_TOm) then FreeAndNil(m_TOm);
    if Assigned(m_TR) then FreeAndNil(m_TR);
    if Assigned(m_TRL) then FreeAndNil(m_TRL);
  end;

  procedure DictAdd(aField, aValue: string; xlr: TEXLReport);
  begin
    with xlr.Dictionary.Add do
    begin
      FieldName:=aField;
      ValueAsString:=aValue;
    end;
  end;

  procedure MakeMain;
  begin
    //fxl_main.Template:= AppPath+'rep\HouseCard.xls';
    fxl_main.TemplSheet:='Общие данные';
    fxl_main.Dictionary.Clear;
    DictAdd('ADDR',cbb_Street.Text+', '+cbb_House.Text, fxl_main);
    DictAdd('DUNAME',lbl1.Caption, fxl_main);
    DictAdd('BUILDYEAR',lbl_BuildYear.Caption, fxl_main);
    DictAdd('Last_KR',lbl_Last_KR.Caption, fxl_main);
    DictAdd('WALLNAME',lbl_Wall.Caption, fxl_main);
    DictAdd('FASADNAME',lbl_Fasad.Caption, fxl_main);
    DictAdd('KROVNAME',lbl_Krov.Caption, fxl_main);
    DictAdd('GAZNAME',lbl_GAZ.Caption, fxl_main);
    DictAdd('ENTRANCE_CNT',lbl_Entrance_CNT.Caption, fxl_main);
    DictAdd('FLOOR_CNT',lbl_Floor_CNT.Caption, fxl_main);
    DictAdd('Flat_CNT',lbl_Flat_CNT.Caption, fxl_main);
    DictAdd('Lodger_CNT',lbl_Lodger_CNT.Caption, fxl_main);
    DictAdd('ACCCODE_CNT',lbl_AccCode_CNT.Caption, fxl_main);
    DictAdd('LIFT_CNT',lbl_Lift_CNT.Caption, fxl_main);
    DictAdd('GARBAGE_CNT',lbl_Garbage_CNT.Caption, fxl_main);
    DictAdd('TOTAL_SQ',lbl_Total_SQ.Caption, fxl_main);
    DictAdd('Living_SQ',lbl_Living_SQ.Caption, fxl_main);
    DictAdd('DRTZ_SQ',lbl_DRTZ_SQ.Caption, fxl_main);
    DictAdd('CELLAR_SQ',lbl_Cellar_SQ.Caption, fxl_main);
  end;

  procedure MakeNGP;
  begin
    //fxl_ngp.Template:= AppPath+'rep\HouseCard.xls';
    fxl_ngp.TemplSheet:='нжп';
    m_ngp.LoadFromDataSet(v4.DataController.DataSource.DataSet);
    fxl_ngp.DataSet:=  m_ngp;
    fxl_ngp.SubReport:= fxl_main;
    fxl_ngp.Bands.Clear;
    with fxl_ngp.Bands.AddBand(xlrbtTitle) do
      Range:='A1:F3';
    with fxl_ngp.Bands.AddBand(xlrbtMasterData) do
      Range:='A4:F4';
    with fxl_ngp.Bands.AddBand(xlrbtSummary) do
      Range:='A5:F5';
    fxl_ngp.Dictionary.Clear;
    DictAdd('ADDR',cbb_Street.Text+', '+cbb_House.Text, fxl_ngp);

  end;

  procedure MakeKapRem;
  begin
    //fxl_kr.Template:= AppPath+'rep\HouseCard.xls';
    fxl_kr.TemplSheet:='Кап. ремонт';
    m_kr.LoadFromDataSet(v5.DataController.DataSource.DataSet);
    fxl_kr.Dictionary.Clear;
    DictAdd('ADDR',cbb_Street.Text+', '+cbb_House.Text, fxl_kr);
    fxl_kr.DataSet:= m_kr;
    fxl_kr.SubReport:= fxl_ngp;
  end;

  procedure MakeWorkTO;
  begin
    //fxl_TOw.Template:= AppPath+'rep\HouseCard.xls';
    fxl_TOw.TemplSheet:='ТО работы';
    m_TOw.LoadFromDataSet(v1.DataController.DataSource.DataSet);
      with fxl_TOw.Bands.AddBand(xlrbtTitle) do
        Range:='A1:D3';
      with fxl_TOw.Bands.AddBand(xlrbtMasterData) do
        Range:='A4:D4';
      with fxl_TOw.Bands.AddBand(xlrbtSummary) do
        Range:='A5:D5';
    fxl_TOw.Dictionary.Clear;
    DictAdd('ADDR',cbb_Street.Text+', '+cbb_House.Text, fxl_TOw);
    DictAdd('D1',DateToStr(fD1), fxl_TOw);
    DictAdd('D2',DateToStr(fD2), fxl_TOw);
    fxl_TOw.DataSet:= m_TOw;
    fxl_TOw.SubReport:= fxl_kr;
  end;

  procedure MakeMaterialTO;
  begin
    //fxl_TOm.Template:= AppPath+'rep\HouseCard.xls';
    fxl_TOm.TemplSheet:='ТО материалы';
    m_TOm.LoadFromDataSet(DS_MAT);
      with fxl_TOm.Bands.AddBand(xlrbtTitle) do
        Range:='A1:D3';
      with fxl_TOm.Bands.AddBand(xlrbtMasterData) do
        Range:='A4:D4';
      with fxl_TOm.Bands.AddBand(xlrbtSummary) do
        Range:='A5:D5';
    fxl_TOm.Dictionary.Clear;
    DictAdd('ADDR',cbb_Street.Text+', '+cbb_House.Text, fxl_TOm);
    DictAdd('D1',DateToStr(fD1), fxl_TOm);
    DictAdd('D2',DateToStr(fD2), fxl_TOm);
    fxl_TOm.DataSet:= m_TOm;
    fxl_TOm.SubReport:= fxl_TOw;
  end;

  procedure MakeTR;
  begin
    with fxl_TR do begin
      //Template:= AppPath+'rep\HouseCard.xls';
      TemplSheet:='ТР';
      m_TR.LoadFromDataSet(v3.DataController.DataSource.DataSet);
      with fxl_TR.Bands.AddBand(xlrbtTitle) do
        Range:='A1:L3';
      with fxl_TR.Bands.AddBand(xlrbtMasterData) do
        Range:='A4:L4';
      with fxl_TR.Bands.AddBand(xlrbtSummary) do
        Range:='A5:L5';
      Dictionary.Clear;
      DictAdd('ADDR',cbb_Street.Text+', '+cbb_House.Text, fxl_TR);
      DictAdd('DB',DateToStr(fD1), fxl_TR);
      DictAdd('DE',DateToStr(fD2), fxl_TR);
      DataSet:= m_TR;
      SubReport:= fxl_TOm;
    end;
  end;

  procedure MakeTRL;
  begin
    with fxl_TRL do begin
      //Template:= AppPath+'rep\HouseCard.xls';
      TemplSheet:='ТР лифт';
      m_TRL.LoadFromDataSet(v12.DataController.DataSource.DataSet);
      with fxl_TRL.Bands.AddBand(xlrbtTitle) do
        Range:='A1:L3';
      with fxl_TRL.Bands.AddBand(xlrbtMasterData) do
        Range:='A4:L4';
      with fxl_TRL.Bands.AddBand(xlrbtSummary) do
        Range:='A5:L5';
      Dictionary.Clear;
      DictAdd('ADDR',cbb_Street.Text+', '+cbb_House.Text, fxl_TRL);
      DictAdd('DB',DateToStr(fD1), fxl_TRL);
      DictAdd('DE',DateToStr(fD2), fxl_TRL);
      DataSet:= m_TRL;
      SubReport:= fxl_TR;
    end;
  end;

  procedure MakePBDR1;
  begin
    with fxl_PBDR1 do begin
      Template:= AppPath+'rep\HouseCard.xls';
      TemplSheet:='БДР1 план';
      Dictionary.Clear;
      DictAdd('ADDR',cbb_Street.Text+', '+cbb_House.Text, fxl_PBDR1);
      DictAdd('D1',DateToStr(fD1), fxl_PBDR1);
      DictAdd('D2',DateToStr(fD2), fxl_PBDR1);
      DictAdd('SRV',cbb_srv.Text, fxl_PBDR1);
      DataSet:= vb1.DataController.DataSource.DataSet;
      SubReport:= fxl_TRL;
    end;
  end;

  procedure MakeAkt;
  begin
    with fxl_Akt do begin
      OnBeforeBuild:= GrouppingBeforeBuild;
      Template:= AppPath+'rep\HouseCard.xls';
      DataSet:= v15.DataController.DataSource.DataSet;
      TemplSheet:='Акты осмотров';
      with Bands.AddBand(xlrbtTitle) do
        Range:='A1:K4';
      with Bands.AddBand(xlrbtMasterData) do
        Range:='A8:K8';
      with (Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do begin
        Range:='A6:K6';
        FieldName:='TYPENAME';
      end;
      Dictionary.Clear;
      DictAdd('ADDR',cbb_Street.Text+', '+cbb_House.Text, fxl_Akt);
      DictAdd('DB',DateToStr(fD1), fxl_Akt);
      DictAdd('DE',DateToStr(fD2), fxl_Akt);
      SubReport:= fxl_TRL;
    end;
  end;

begin
  PrepareRep;
  try
    MakeMain;
    MakeNGP;
    MakeKapRem;
    MakeWorkTO;
    MakeMaterialTO;
    MakeTR;
    MakeTRL;
    MakeAkt;
    //MakePBDR1;
    //
    fxl_Akt.Show;
  finally
    FreeRep;
  end;
end;

procedure THouseCardForm.ExportExcel;

  function GetAddr :string;
  begin
    Result:=cbb_street.Text +' '+ cbb_house.Text;
  end;

  function GetPeriodStr: string;
  begin
    if (m1.ItemIndex+1=1) and (m2.ItemIndex+1=12) then
      Result:=Y1.Text
    else
    if (m1.ItemIndex+1=m2.ItemIndex+1) then
      Result:=m1.Text+' '+Y1.Text
    else
      Result:=m1.Text+'-'+m2.Text+' '+Y1.Text;
  end;

  //общая полщадь по дому
  function GetAreaHouse(const house: variant): Variant;
  var
    Q: TFIBQuery;
  begin
    if house = null then Exit;
    Q:= GetQueryForUse(cmDb.RT, 'select Total_SQ from HOUSE where code=:house');
    Q.ParamByName('house').AsVariant:= house;
    Q.Options:=[qoStartTransaction];
    try
      Q.ExecQuery;
      Result:=Q['Total_SQ'].AsVariant;
      if Result = null then
         Result:= 1;
    finally
      FreeQueryForUse(Q);
    end;
  end;

begin
  xl1.TemplSheet:='Отчет';
  //------------------
  xl1.Dictionary.Clear;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Y';
    ValueAsString:=GetPeriodStr;
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='ADDR';
    ValueAsString:=GetAddr;
  end;
  with xl1.Dictionary.Add do // площадь по дому
  begin
    FieldName:='AREA';
    ValueAsString:=GetAreaHouse(cbb_house.EditValue);
  end;
  with mT1 do begin
    First;
    while not Eof do begin
      with xl1.Dictionary.Add do
      begin
        FieldName:=mT1.FieldByName('F').AsString;
        ValueAsString:=mT1.FieldByName('R').AsString;
      end;
      Next;
    end;
  end;
  // subreport
  //xl_sub.Template:='rep\usefound.xls';
  xl_sub.TemplSheet:='Текущий ремонт';
  xl_sub.Bands.Clear;
  with xl_sub.Bands.AddBand(xlrbtTitle) do
    Range:='A1:F4';
  with xl_sub.Bands.AddBand(xlrbtMasterData) do
    Range:='A5:F5';
  with xl_sub.Bands.AddBand(xlrbtSummary) do
  Range:='A6:F6';
  // subreport Lift
  xl_subL.Template:='rep\usefound.xls';
  xl_subL.TemplSheet:='Лифт';
  xl_subL.Bands.Clear;
  with xl_subL.Bands.AddBand(xlrbtTitle) do
    Range:='A1:F4';
  with xl_subL.Bands.AddBand(xlrbtMasterData) do
    Range:='A5:F5';
  with xl_subL.Bands.AddBand(xlrbtSummary) do
  Range:='A6:F6';
  //--------------------------------------------
  xl_subL.Dictionary.Clear;
  xl_subL.Show();
  //xl_sub.Dictionary.Clear;
  //xl_sub.Show();
end;

procedure THouseCardForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure THouseCardForm.FormCreate(Sender: TObject);
var
  aM, aY, aD: word;
begin
  OpenDS;
  DecodeDate(Date, aY, aM, aD);
  Y1.EditValue:=aY;
  Y2.EditValue:=aY;
  LoadForm(prop1,Self.Name);
  CreateMem;
  CreateMD2;
  //export
  frxls1.FileName:=AppPath+'tem_rep\opu.xls';
  frdoc1.FileName:=AppPath+'tem_rep\opu.rtf';
end;

procedure THouseCardForm.GetAct;
begin
  if HACT.GetActInfo(cbb_House.EditValue) then
    v15.DataController.DataSource:= HACT.SACT;
end;

procedure THouseCardForm.GetFieldValue(Sender: TObject; const Field: string;
  var Value: OleVariant);
begin
  if Field = 'SQ' then
     Value:= Value;
end;

procedure THouseCardForm.GrouppingBeforeBuild(Sender: TObject);
begin
  with (v15.DataController.DataSource.DataSet as TpFIBDataSet) do begin
    DoSort(['TYPENAME','RTYPENAME'], [true,true]);
  end;
end;

procedure THouseCardForm.LoadBDR;
begin
  if BDR.GetBDR(cbb_srv.EditValue, cbb_House.EditValue,
                Y1.EditValue, Y2.EditValue,
                M1.ItemIndex+1, M2.ItemIndex+1) then
  begin
    vb1.DataController.DataSource:= BDR.SPBDR1;
    vb2.DataController.DataSource:= BDR.SFBDR1;
    vb3.DataController.DataSource:= BDR.SPBDR2;
    vb4.DataController.DataSource:= BDR.SFBDR2;
    vb5.DataController.DataSource:= BDR.SPBDR3;
    vb6.DataController.DataSource:= BDR.SFBDR3;
    vb13.DataController.DataSource:= BDR.SFBDR4;
    MakeData1;
  end;
end;

procedure THouseCardForm.MakeByArendator;
var
  data, arn, dog :Variant;
  FSALDO,FPSUM,FRSUM,FSALDO_END :string;

  procedure GetFName;
  begin
    FSALDO:='SALDO'+IntToStr(ds_HMOVEIMMKD2.FN('DTYPE').AsInteger);
    FPSUM:='PSUM'+IntToStr(ds_HMOVEIMMKD2.FN('DTYPE').AsInteger);
    FRSUM:='RSUM'+IntToStr(ds_HMOVEIMMKD2.FN('DTYPE').AsInteger);
    FSALDO_END:='SALDO_END'+IntToStr(ds_HMOVEIMMKD2.FN('DTYPE').AsInteger);
  end;
  procedure SetSum;
  begin
    md2.Edit;
      md2.FieldByName('PSUM').AsCurrency:=
        md2.FieldByName('PSUM').AsCurrency+ds_HMOVEIMMKD2.FN('PSUM').AsCurrency;
      md2.FieldByName('RSUM').AsCurrency:=
        md2.FieldByName('RSUM').AsCurrency + ds_HMOVEIMMKD2.FieldByName('RSUM').AsCurrency;
      md2.FieldByName('SALDO_END').AsCurrency:=
        md2.FieldByName('SALDO_END').AsCurrency +
        (ds_HMOVEIMMKD2.FN('SALDO').AsCurrency+ds_HMOVEIMMKD2.FN('PSUM').AsCurrency-
        ds_HMOVEIMMKD2.FN('RSUM').AsCurrency);
    md2.Post;
  end;
begin
  vb2.BeginUpdate;
  md2.Close; md2.Open;
  with ds_HMOVEIMMKD2 do
  while not Eof do begin
    GetFName;
    if (arn<>FN('ARENDATOR').AsVariant) or (dog<>FN('DOGIMMKD').AsVariant) then
    begin
      data:=FN('DATA').AsVariant;
      md2.Append;
      md2.FieldByName('ARENDATOR').AsVariant:=FN('ARENDATOR').AsVariant;
      md2.FieldByName('ARNAME').AsVariant:=FN('ARNAME').AsVariant;
      md2.FieldByName('DOGIMMKD').AsVariant:=FN('DOGIMMKD').AsVariant;
      md2.FieldByName('DNOTE').AsVariant:=FN('DNOTE').AsVariant;
      md2.FieldByName('DTYPE').AsVariant:=FN('DTYPE').AsVariant;
      if BDR.a1C then begin
        md2.FieldByName('SALDO').AsCurrency:= FN('SALDO').AsCurrency;
        md2.FieldByName('PSUM').AsCurrency:= FN('PSUM').AsCurrency;
        md2.FieldByName('RSUM').AsCurrency:= FN('RSUM').AsCurrency;
        md2.FieldByName('SALDO_END').AsCurrency:=
          FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency;
        md2.FieldByName(FSALDO).AsCurrency:= FN('SALDO').AsCurrency;
        md2.FieldByName(FPSUM).AsCurrency:= FN('PSUM').AsCurrency;
        md2.FieldByName(FRSUM).AsCurrency:= FN('RSUM').AsCurrency;
        md2.FieldByName(FSALDO_END).AsCurrency:=
          FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency;
      end else begin
        md2.FieldByName('SALDO').AsCurrency:= FN('SALDO1').AsCurrency;
        md2.FieldByName('PSUM').AsCurrency:= FN('PSUM1').AsCurrency;
        md2.FieldByName('RSUM').AsCurrency:= FN('RSUM1').AsCurrency;
        md2.FieldByName('SALDO_END').AsCurrency:=
          FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency;
        md2.FieldByName(FSALDO).AsCurrency:= FN('SALDO1').AsCurrency;
        md2.FieldByName(FPSUM).AsCurrency:= FN('PSUM1').AsCurrency;
        md2.FieldByName(FRSUM).AsCurrency:= FN('RSUM1').AsCurrency;
        md2.FieldByName(FSALDO_END).AsCurrency:=
          FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency;
      end;
      md2.Post;
      arn:=FN('ARENDATOR').AsVariant;
      dog:=FN('DOGIMMKD').AsVariant;
    end else
    begin
      if data<>FN('DATA').AsVariant then
      begin
        md2.edit;
        if BDR.a1C then begin
          md2.FieldByName(FPSUM).AsCurrency:=
            md2.FieldByName(FPSUM).AsCurrency+ FN('PSUM').AsCurrency;
          md2.FieldByName(FRSUM).AsCurrency:=
            md2.FieldByName(FRSUM).AsCurrency+ FN('RSUM').AsCurrency;
          md2.FieldByName(FSALDO_END).AsCurrency:=
            md2.FieldByName(FSALDO_END).AsCurrency+
            (FN('PSUM').AsVariant-FN('RSUM').AsCurrency);
          md2.FieldByName('PSUM').AsCurrency:=
            md2.FieldByName('PSUM').AsCurrency+FN('PSUM').AsCurrency;
          md2.FieldByName('RSUM').AsCurrency:=
            md2.FieldByName('RSUM').AsCurrency + FieldByName('RSUM').AsCurrency;
          md2.FieldByName('SALDO_END').AsCurrency:=
            md2.FieldByName('SALDO_END').AsCurrency +
            (FN('PSUM').AsCurrency-FN('RSUM').AsCurrency);
        end else begin
          md2.FieldByName(FPSUM).AsCurrency:=
            md2.FieldByName(FPSUM).AsCurrency+ FN('PSUM1').AsCurrency;
          md2.FieldByName(FRSUM).AsCurrency:=
            md2.FieldByName(FRSUM).AsCurrency+ FN('RSUM1').AsCurrency;
          md2.FieldByName(FSALDO_END).AsCurrency:=
            md2.FieldByName(FSALDO_END).AsCurrency+
            (FN('PSUM1').AsVariant-FN('RSUM1').AsCurrency);
          md2.FieldByName('PSUM').AsCurrency:=
            md2.FieldByName('PSUM').AsCurrency+FN('PSUM1').AsCurrency;
          md2.FieldByName('RSUM').AsCurrency:=
            md2.FieldByName('RSUM').AsCurrency + FieldByName('RSUM1').AsCurrency;
          md2.FieldByName('SALDO_END').AsCurrency:=
            md2.FieldByName('SALDO_END').AsCurrency +
            (FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency);
        end;
        md2.Post;
      end else
      begin
        md2.edit;
        if BDR.a1C then begin
          md2.FieldByName(FSALDO).AsCurrency:=
          md2.FieldByName(FSALDO).AsCurrency+ FN('SALDO').AsCurrency;
          md2.FieldByName(FPSUM).AsCurrency:=
            md2.FieldByName(FPSUM).AsCurrency+ FN('PSUM').AsCurrency;
          md2.FieldByName(FRSUM).AsCurrency:=
            md2.FieldByName(FRSUM).AsCurrency+ FN('RSUM').AsCurrency;
          md2.FieldByName(FSALDO_END).AsCurrency:=
            md2.FieldByName(FSALDO_END).AsCurrency+
            (FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency);
          //
          md2.FieldByName('SALDO').AsCurrency:=
          md2.FieldByName('SALDO').AsCurrency+md2.FieldByName(FSALDO).AsCurrency;
          md2.FieldByName('PSUM').AsCurrency:=
            md2.FieldByName('PSUM').AsCurrency+FN('PSUM').AsCurrency;
          md2.FieldByName('RSUM').AsCurrency:=
            md2.FieldByName('RSUM').AsCurrency + FieldByName('RSUM').AsCurrency;
          md2.FieldByName('SALDO_END').AsCurrency:=
            md2.FieldByName('SALDO_END').AsCurrency +
            (FN('SALDO').AsCurrency+FN('PSUM').AsCurrency-FN('RSUM').AsCurrency);
        end else begin
          md2.FieldByName(FSALDO).AsCurrency:=
          md2.FieldByName(FSALDO).AsCurrency+ FN('SALDO1').AsCurrency;
          md2.FieldByName(FPSUM).AsCurrency:=
            md2.FieldByName(FPSUM).AsCurrency+ FN('PSUM1').AsCurrency;
          md2.FieldByName(FRSUM).AsCurrency:=
            md2.FieldByName(FRSUM).AsCurrency+ FN('RSUM1').AsCurrency;
          md2.FieldByName(FSALDO_END).AsCurrency:=
            md2.FieldByName(FSALDO_END).AsCurrency+
            (FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency);
          //
          md2.FieldByName('SALDO').AsCurrency:=
          md2.FieldByName('SALDO').AsCurrency+md2.FieldByName(FSALDO).AsCurrency;
          md2.FieldByName('PSUM').AsCurrency:=
            md2.FieldByName('PSUM').AsCurrency+FN('PSUM1').AsCurrency;
          md2.FieldByName('RSUM').AsCurrency:=
            md2.FieldByName('RSUM').AsCurrency + FieldByName('RSUM1').AsCurrency;
          md2.FieldByName('SALDO_END').AsCurrency:=
            md2.FieldByName('SALDO_END').AsCurrency +
            (FN('SALDO1').AsCurrency+FN('PSUM1').AsCurrency-FN('RSUM1').AsCurrency);
        end;
        md2.Post;
      end;
      arn:=FN('ARENDATOR').AsVariant;
      dog:=FN('DOGIMMKD').AsVariant;
    end;
    Next;
  end;
  vb2.EndUpdate;
end;

procedure THouseCardForm.MakeData1;
var
  d1, d2 :Variant;
begin
  //SplashVisibility(true,'Подождите.');
  if vb13.GetColumnByFieldName('HOUSE').EditValue = null then Exit;
  if vb13.GetColumnByFieldName('HOUSE').EditValue = Unassigned then Exit;
  try
    D1:= StartOfAMonth(Y1.EditingValue, M1.ItemIndex+1);
    D2:= EndOfAMonth(Y2.EditingValue, M2.ItemIndex+1)-1;
    with ds_HMOVEIMMKD2 do begin
      Close;
      MainWhereClause:='hm.DATA between :d1 and :d2 and hm.DTYPE<>4 and hm.HOUSE=:hs';
      ParamByName('d1').AsVariant:=d1;
      ParamByName('d2').AsVariant:=d2;
      ParamByName('hs').AsVariant:=vb13.GetColumnByFieldName('HOUSE').EditValue;
      GroupByClause:='hm.ARENDATOR,hm.DOGIMMKD,hm.DATA,hm.DTYPE,3,5,6';
      Open;
      MakeByArendator;
    end;
  finally
    //SplashVisibility(false);
  end;
end;

procedure THouseCardForm.MakeOPU;
  procedure OpenOPUHouse;
  begin
    with ds_OPUHOUSE do begin
      Close;
      ParamByName('house').AsVariant:= cbb_House.EditValue;
      Open;
    end;
    OpenOPUDevice;
  end;

begin
  OpenOPUHouse;
end;

procedure THouseCardForm.OpenDS;
begin
  ds_Street.Open;
  OpenHouseSrv;

end;

procedure THouseCardForm.OpenHouse;
begin
  with ds_HOUSE do begin
    Close;
    if cbb_street.EditValue=null then Exit;
    MainWhereClause:='H.STREET=:street';
    ParamByName('Street').AsVariant:=cbb_street.EditValue;
    Open;
  end;
end;

procedure THouseCardForm.openHousekWork;
begin
  with ds_HOUSEKWORK do begin
    Close;
      MainWhereClause:='HW.HOUSE=:house';
      ParamByName('house').AsVariant:= cbb_House.EditValue;
      OrderClause:='HW.Y';
    Open;
  end;
end;

procedure THouseCardForm.OpenHouseSrv;
begin
  with ds_HOUSESRV do begin
    Close;
      MainWhereClause:='CODE in (1,2,3,5,9)';
    Open;
    First;
  end;
end;

procedure THouseCardForm.OpenNGROOM;
begin
  with ds_NGPROOM do begin
    Close;
     MainWhereClause:='n.HOUSE =:house';
     ParamByName('house').AsVariant:= cbb_House.EditValue;
    Open;
  end;
end;

procedure THouseCardForm.OpenOPUDevice;
begin
 { with ds_Device do begin
    Close;
    ParamByName('CODE').AsVariant:= ds_OPUHOUSE.FN('CODE').AsVariant;
    Open;
  end;}
end;

procedure THouseCardForm.OpenOPUElement;
begin
  with ds_OPUELEMENT do begin
    Close;
    ParamByName('DEVICE').AsVariant:= ds_Device.FN('CODE').AsVariant;
    Open;
  end;
end;

procedure THouseCardForm.OpenOPUProverka;
begin
  with ds_PROVERKA do begin
    Close;
    ParamByName('CODE').AsVariant:= ds_OPUELEMENT.FN('CODE').AsVariant;
    Open;
  end;
end;

procedure THouseCardForm.OpenOPUWorkAkt;
begin
  with ds_WORKACT do begin
    Close;
    ParamByName('DEVICE').AsVariant:= ds_Device.FN('CODE').AsVariant;
    Open;
  end;
end;

procedure THouseCardForm.OpenTO;
var
  D1, D2: Variant;
  procedure MakeDate;
  var
    M, M_1: Integer;
  begin
    M:= M1.ItemIndex+1;
    M_1:= M2.ItemIndex+1;
    D1:= StartOfAMonth(Y1.EditingValue, M);
    D2:= EndOfAMonth(Y2.EditingValue, M_1);
  end;
begin
  MakeDate;
  v1.DataController.DataSource:= HTO.GetTOInfo(cbb_House.EditValue,D1, D2);
  v2.DataController.DataSource:=HTO.GetMaterial(v1.FN('CODE'));
  v16.DataController.DataSource:= HTO.GetJurnalInfo(cbb_House.EditValue,D1, D2);
end;

procedure THouseCardForm.OpenTR;
var
  D1, D2: Variant;
  procedure MakeDate;
  var
    M, M_1: Integer;
  begin
    M:= M1.ItemIndex+1;
    M_1:= M2.ItemIndex+1;
    D1:= StartOfAMonth(Y1.EditingValue, M);
    D2:= EndOfAMonth(Y1.EditingValue, M_1)-1;
  end;
begin
  MakeDate;
  v3.DataController.DataSource:= HTR.GetTRInfo(cbb_House.EditValue,D1, D2);
  v12.DataController.DataSource:= HTR.GetTRLInfo(cbb_House.EditValue,D1, D2);
end;

procedure THouseCardForm.RepUseFunds;
var
  obj :TdezHouseReport;
  d1, d2: TDateTime;
begin
  //проверка параметров формирования отчета
  if not CheckParams then Exit;
  obj:=TdezHouseReport.Create(mT1);
  SplashVisibility(True,'Дождитесь окончания операции.');
  try
      obj.M1:= M1.ItemIndex+1;
      obj.M2:= M2.ItemIndex+1;
      obj.Y1:= Y1.EditValue;
      obj.Y2:= Y2.EditValue;
      obj.House:= cbb_house.EditValue;
      obj.Execute;
    d1:= StartOfAMonth(Y1.EditValue,M1.ItemIndex+1);
    d2:= EndOfAMonth(Y2.EditValue,M2.ItemIndex+1)-1;
    with ds_TRWORKBDR do begin
      Close;
      ParamByName('D1').AsDate:= d1;
      ParamByName('D2').AsDate:= d2;
      ParamByName('house').AsVariant:=cbb_house.EditValue;
      Open;
    end;
    with ds_TRLFACT do begin
      Close;
      ParamByName('D1').AsDate:= d1;
      ParamByName('D2').AsDate:= d2;
      ParamByName('house').AsVariant:=cbb_house.EditValue;
      Open;
    end;
  finally
    obj.Free;
    SplashVisibility(false);
  end;
end;

procedure THouseCardForm.SetCellValue(Sender: TObject; Band: TEXLReportBand;
  RowInTemplate, RowInReport, ColumnInReport: Integer;
  var CellValue: OleVariant);
begin
  if (Band.BandType = xlrbtMasterData) and  (ColumnInReport = 2) then
     CellValue:= CellValue * 10;
end;

procedure THouseCardForm.v17CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  //OpenOPUDevice;
end;

procedure THouseCardForm.v17KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 { case Key of
    VK_UP: OpenOPUDevice;
    VK_DOWN: OpenOPUDevice;
  end;}
end;

procedure THouseCardForm.v18CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  //OpenOPUElement;
  //OpenOPUWorkAkt;
end;

procedure THouseCardForm.v18KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {case Key of
    VK_UP: begin
             OpenOPUElement;
             OpenOPUWorkAkt;
           end;
    VK_DOWN: begin
             OpenOPUElement;
             OpenOPUWorkAkt;
           end;
  end;}
end;

procedure THouseCardForm.v19CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  //OpenOPUProverka;
end;

procedure THouseCardForm.v19KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {case Key of
    VK_UP: OpenOPUProverka;
    VK_DOWN: OpenOPUProverka;
  end;}
end;

procedure THouseCardForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  v2.DataController.DataSource:= HTO.GetMaterial(v1.FN('CODE'));
end;

procedure THouseCardForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP: v2.DataController.DataSource:=HTO.GetMaterial(v1.FN('CODE'));
    VK_DOWN: v2.DataController.DataSource:=HTO.GetMaterial(v1.FN('CODE'));
  end;
end;

procedure THouseCardForm.vb13CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  MakeData1;
end;

initialization

  RegisterClass(THouseCardForm);

end.
