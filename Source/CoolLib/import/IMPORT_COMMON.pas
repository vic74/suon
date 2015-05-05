unit IMPORT_COMMON;
interface
uses
  IMPORT_ActiveX,
  IMPORT_Variants,
  IMPORT_SysUtils,
  IMPORT_Classes,
  //IMPORT_Controls,
  //IMPORT_StdCtrls,
  //IMPORT_Forms,
  //IMPORT_Menus,
  IMPORT_Dialogs,
  IMPORT_cmUtils,
  IMPORT_cmTables;

implementation

begin
  Register_ActiveX;
  Register_Variants;
  Register_SysUtils;
  Register_Classes;
  //Register_Controls;
  //Register_StdCtrls;
  //Register_Forms;
  //Register_Menus;
  Register_Dialogs;
  Register_cmUtils;
  Register_cmTables;
end.