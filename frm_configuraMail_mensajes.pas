unit frm_configuraMail_mensajes;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, frm_connection, StdCtrls, Buttons, global,
  DBCtrls, StrUtils, Mask, utilerias, masUtilerias,
  frxClass, Menus, ZAbstractRODataset, ZDataset, Gauges, UnitGenerales,
  ExtCtrls, ZAbstractDataset, Math, ComCtrls, frm_repositorio,
  frxExportPDF, UnitExcepciones,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxCheckBox, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxListView, cxImageComboBox,
  cxLabel, cxTextEdit, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxButtons, MemDS, DBAccess, Uni, frxDBSet, IdAttachmentFile, IdMessage,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxMemo,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxGroupBox, dxLayoutControl,
  frm_barraH2, cxSplitter, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxBarBuiltInMenu, cxPC;

type
  TfrmConfiguraMail_mensajes = class(TForm)
    ds_datos: TDataSource;
    ds_salida: TDataSource;
    zqDatos: TUniQuery;
    QrySalida: TUniQuery;
    reporte: TUniQuery;
    ds_moneda: TDataSource;
    Moneda: TUniQuery;
    zEmpleado: TUniQuery;
    zValida: TUniQuery;
    PanelOpciones: TPanel;
    cxLista: TcxListView;
    cxSplitter1: TcxSplitter;
    Panel1: TPanel;
    PanelInferior: TPanel;
    frmBarraH21: TfrmBarraH2;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxGroupBox2: TcxGroupBox;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxTextCorreo: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxTextNombre: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxCheckOtros: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cxAgregar: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxViewCorreos: TcxGridDBTableView;
    cxGrid_CorreosLevel1: TcxGridLevel;
    cxGrid_Correos: TcxGrid;
    dxLayoutItem8: TdxLayoutItem;
    cxViewCorreosColumn1: TcxGridDBColumn;
    cxViewCorreosColumn2: TcxGridDBColumn;
    cxViewCorreosColumn3: TcxGridDBColumn;
    cxGroupBox3: TcxGroupBox;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    zConfigMail: TUniQuery;
    cxEmpleado: TcxLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    ds_empleado: TDataSource;
    ds_destino: TDataSource;
    zDestino: TUniQuery;
    cxAsunto: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxMensaje: TcxDBMemo;
    dxLayoutItem11: TdxLayoutItem;
    cxPiePagina: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxEliminar: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem15: TdxLayoutItem;
    cxPageProceso: TcxPageControl;
    cxTabValida: TcxTabSheet;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    cxTabAutorizar: TcxTabSheet;
    cxTabLiberar: TcxTabSheet;
    cxTabAsignarCC: TcxTabSheet;
    cxTabComprar: TcxTabSheet;
    dxLayoutControl5: TdxLayoutControl;
    cxGroupBox4: TcxGroupBox;
    dxLayoutControl6: TdxLayoutControl;
    cxGroupBox5: TcxGroupBox;
    dxLayoutControl7: TdxLayoutControl;
    cxTextCorreoAutoriza: TcxTextEdit;
    ckAutoriza: TcxCheckBox;
    cxButton1: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton2: TcxButton;
    cxTextNombreAutoriza: TcxTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    cxGroupBox6: TcxGroupBox;
    dxLayoutControl8: TdxLayoutControl;
    cxAsuntoAutorizar: TcxDBTextEdit;
    cxMensajeAutorizar: TcxDBMemo;
    cxPiePaginaAutorizar: TcxDBTextEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem31: TdxLayoutItem;
    Panel2: TPanel;
    frmBarraH22: TfrmBarraH2;
    dxLayoutControl9: TdxLayoutControl;
    cxGroupBox7: TcxGroupBox;
    dxLayoutControl10: TdxLayoutControl;
    cxGroupBox8: TcxGroupBox;
    dxLayoutControl11: TdxLayoutControl;
    cxTextCorreoLibera: TcxTextEdit;
    ckLibera: TcxCheckBox;
    cxButton3: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxEmpleadoAutoriza: TcxLookupComboBox;
    cxButton4: TcxButton;
    cxTextNombreLibera: TcxTextEdit;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutItem38: TdxLayoutItem;
    cxGroupBox9: TcxGroupBox;
    dxLayoutControl12: TdxLayoutControl;
    cxAsuntoLiberar: TcxDBTextEdit;
    cxMensajeLiberar: TcxDBMemo;
    cxPiePaginaLiberar: TcxDBTextEdit;
    cxDBCheckBox5: TcxDBCheckBox;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutItem43: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem46: TdxLayoutItem;
    Panel3: TPanel;
    frmBarraH23: TfrmBarraH2;
    dxLayoutControl13: TdxLayoutControl;
    cxGroupBox10: TcxGroupBox;
    dxLayoutControl14: TdxLayoutControl;
    cxGroupBox11: TcxGroupBox;
    dxLayoutControl15: TdxLayoutControl;
    cxTextCorreoAsigna: TcxTextEdit;
    ckAsigna: TcxCheckBox;
    cxButton5: TcxButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxEmpleadoAsigna: TcxLookupComboBox;
    cxButton6: TcxButton;
    cxTextNombreAsigna: TcxTextEdit;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem47: TdxLayoutItem;
    dxLayoutItem48: TdxLayoutItem;
    dxLayoutItem49: TdxLayoutItem;
    dxLayoutItem50: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutItem51: TdxLayoutItem;
    dxLayoutItem52: TdxLayoutItem;
    dxLayoutItem53: TdxLayoutItem;
    cxGroupBox12: TcxGroupBox;
    dxLayoutControl16: TdxLayoutControl;
    cxAsuntoAsignar: TcxDBTextEdit;
    cxMensajeAsignar: TcxDBMemo;
    cxPiePaginaAsignar: TcxDBTextEdit;
    cxDBCheckBox7: TcxDBCheckBox;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem54: TdxLayoutItem;
    dxLayoutItem55: TdxLayoutItem;
    dxLayoutItem56: TdxLayoutItem;
    dxLayoutItem58: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem59: TdxLayoutItem;
    dxLayoutItem60: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutItem61: TdxLayoutItem;
    Panel4: TPanel;
    frmBarraH24: TfrmBarraH2;
    dxLayoutControl17: TdxLayoutControl;
    cxGroupBox13: TcxGroupBox;
    dxLayoutControl18: TdxLayoutControl;
    cxGroupBox14: TcxGroupBox;
    dxLayoutControl19: TdxLayoutControl;
    cxTextCorreoCompra: TcxTextEdit;
    ckCompra: TcxCheckBox;
    cxButton7: TcxButton;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxEmpleadoCompra: TcxLookupComboBox;
    cxButton8: TcxButton;
    cxTextNombreCompra: TcxTextEdit;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutItem62: TdxLayoutItem;
    dxLayoutItem63: TdxLayoutItem;
    dxLayoutItem64: TdxLayoutItem;
    dxLayoutItem65: TdxLayoutItem;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxLayoutItem66: TdxLayoutItem;
    dxLayoutItem67: TdxLayoutItem;
    dxLayoutItem68: TdxLayoutItem;
    cxGroupBox15: TcxGroupBox;
    dxLayoutControl20: TdxLayoutControl;
    cxAsuntoComprar: TcxDBTextEdit;
    cxMensajeComprar: TcxDBMemo;
    cxPiePaginaComprar: TcxDBTextEdit;
    cxDBCheckBox9: TcxDBCheckBox;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutItem69: TdxLayoutItem;
    dxLayoutItem70: TdxLayoutItem;
    dxLayoutItem71: TdxLayoutItem;
    dxLayoutItem73: TdxLayoutItem;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutItem74: TdxLayoutItem;
    dxLayoutItem75: TdxLayoutItem;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutItem76: TdxLayoutItem;
    Panel5: TPanel;
    frmBarraH25: TfrmBarraH2;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem42: TdxLayoutItem;
    cxEmpleadoLibera: TcxLookupComboBox;
    dxLayoutItem36: TdxLayoutItem;
    cxTabRechazar: TcxTabSheet;
    cxTabCancelar: TcxTabSheet;
    dxLayoutControl21: TdxLayoutControl;
    cxGroupBox16: TcxGroupBox;
    dxLayoutControl22: TdxLayoutControl;
    cxGroupBox17: TcxGroupBox;
    dxLayoutControl23: TdxLayoutControl;
    cxTextCorreoRechaza: TcxTextEdit;
    ckRechaza: TcxCheckBox;
    cxButton9: TcxButton;
    cxGrid5: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxEmpleadoRechaza: TcxLookupComboBox;
    cxButton10: TcxButton;
    cxTextNombreRechaza: TcxTextEdit;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutItem77: TdxLayoutItem;
    dxLayoutItem78: TdxLayoutItem;
    dxLayoutItem79: TdxLayoutItem;
    dxLayoutItem80: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem81: TdxLayoutItem;
    dxLayoutItem82: TdxLayoutItem;
    dxLayoutItem83: TdxLayoutItem;
    cxGroupBox18: TcxGroupBox;
    dxLayoutControl24: TdxLayoutControl;
    cxAsuntoRechaza: TcxDBTextEdit;
    cxMensajeRechaza: TcxDBMemo;
    cxPiePaginaRechaza: TcxDBTextEdit;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem84: TdxLayoutItem;
    dxLayoutItem85: TdxLayoutItem;
    dxLayoutItem86: TdxLayoutItem;
    dxLayoutItem87: TdxLayoutItem;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutItem88: TdxLayoutItem;
    dxLayoutItem89: TdxLayoutItem;
    Panel6: TPanel;
    frmBarraH26: TfrmBarraH2;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutItem90: TdxLayoutItem;
    dxLayoutItem91: TdxLayoutItem;
    dxLayoutControl25: TdxLayoutControl;
    cxGroupBox19: TcxGroupBox;
    dxLayoutControl26: TdxLayoutControl;
    cxGroupBox20: TcxGroupBox;
    dxLayoutControl27: TdxLayoutControl;
    cxTextCorreoCancela: TcxTextEdit;
    ckCancela: TcxCheckBox;
    cxButton11: TcxButton;
    cxGrid6: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    cxEmpleadoCancela: TcxLookupComboBox;
    cxButton12: TcxButton;
    cxTextNombreCancela: TcxTextEdit;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutItem92: TdxLayoutItem;
    dxLayoutItem93: TdxLayoutItem;
    dxLayoutItem94: TdxLayoutItem;
    dxLayoutItem95: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutItem96: TdxLayoutItem;
    dxLayoutItem97: TdxLayoutItem;
    dxLayoutItem98: TdxLayoutItem;
    cxGroupBox21: TcxGroupBox;
    dxLayoutControl28: TdxLayoutControl;
    cxAsuntoCancela: TcxDBTextEdit;
    cxMensajeCancela: TcxDBMemo;
    cxPiePaginaCancela: TcxDBTextEdit;
    cxDBCheckBox4: TcxDBCheckBox;
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutItem99: TdxLayoutItem;
    dxLayoutItem100: TdxLayoutItem;
    dxLayoutItem101: TdxLayoutItem;
    dxLayoutItem102: TdxLayoutItem;
    dxLayoutGroup23: TdxLayoutGroup;
    dxLayoutItem103: TdxLayoutItem;
    dxLayoutItem104: TdxLayoutItem;
    Panel7: TPanel;
    frmBarraH27: TfrmBarraH2;
    dxLayoutGroup24: TdxLayoutGroup;
    dxLayoutItem105: TdxLayoutItem;
    dxLayoutItem106: TdxLayoutItem;
    dxLayoutItem72: TdxLayoutItem;
    cxDBCheckBox6: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem107: TdxLayoutItem;
    cxDBCheckBox8: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    cxTabNotasGenerales: TcxTabSheet;
    dxLayoutControl29: TdxLayoutControl;
    cxGroupBox22: TcxGroupBox;
    dxLayoutControl30: TdxLayoutControl;
    dxLayoutGroup27: TdxLayoutGroup;
    Panel8: TPanel;
    frmBarraH28: TfrmBarraH2;
    dxLayoutGroup28: TdxLayoutGroup;
    dxLayoutItem123: TdxLayoutItem;
    dxLayoutItem124: TdxLayoutItem;
    cxNotasGenerales: TcxDBMemo;
    dxLayoutItem108: TdxLayoutItem;
    cxTabPR: TcxTabSheet;
    dxLayoutControl31: TdxLayoutControl;
    cxGroupBox23: TcxGroupBox;
    dxLayoutControl32: TdxLayoutControl;
    cxGroupBox24: TcxGroupBox;
    dxLayoutControl33: TdxLayoutControl;
    cxTextCorreoPR: TcxTextEdit;
    ckPR: TcxCheckBox;
    cxButton13: TcxButton;
    cxGrid7: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    cxEmpleadoPR: TcxLookupComboBox;
    cxButton14: TcxButton;
    cxTextNombrePR: TcxTextEdit;
    dxLayoutGroup25: TdxLayoutGroup;
    dxLayoutItem110: TdxLayoutItem;
    dxLayoutItem111: TdxLayoutItem;
    dxLayoutItem112: TdxLayoutItem;
    dxLayoutItem113: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutItem114: TdxLayoutItem;
    dxLayoutItem115: TdxLayoutItem;
    dxLayoutItem116: TdxLayoutItem;
    cxGroupBox25: TcxGroupBox;
    dxLayoutControl34: TdxLayoutControl;
    cxAsuntoPR: TcxDBTextEdit;
    cxMensajePR: TcxDBMemo;
    cxPiePaginaPR: TcxDBTextEdit;
    cxDBCheckBox10: TcxDBCheckBox;
    dxLayoutGroup26: TdxLayoutGroup;
    dxLayoutItem117: TdxLayoutItem;
    dxLayoutItem118: TdxLayoutItem;
    dxLayoutItem119: TdxLayoutItem;
    dxLayoutItem120: TdxLayoutItem;
    dxLayoutGroup29: TdxLayoutGroup;
    dxLayoutItem121: TdxLayoutItem;
    dxLayoutItem122: TdxLayoutItem;
    Panel9: TPanel;
    frmBarraH29: TfrmBarraH2;
    dxLayoutGroup30: TdxLayoutGroup;
    dxLayoutItem125: TdxLayoutItem;
    dxLayoutItem126: TdxLayoutItem;
    dxLayoutItem109: TdxLayoutItem;
    ckERequisitor: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutItem57: TdxLayoutItem;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup18: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup19: TdxLayoutAutoCreatedGroup;
    dxLayoutItem127: TdxLayoutItem;
    ckEComprador: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup20: TdxLayoutAutoCreatedGroup;
    dxLayoutItem128: TdxLayoutItem;
    ckEGerencia: TcxDBCheckBox;
    dxLayoutItem129: TdxLayoutItem;
    ckEVRequisitor: TcxDBCheckBox;
    dxLayoutItem130: TdxLayoutItem;
    ckEVComprador: TcxDBCheckBox;
    dxLayoutItem131: TdxLayoutItem;
    ckEVGerencia: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup21: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup22: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup23: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup24: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    cxTabRechazarMateriales: TcxTabSheet;
    dxLayoutControl35: TdxLayoutControl;
    cxGroupBox26: TcxGroupBox;
    dxLayoutControl36: TdxLayoutControl;
    cxGroupBox27: TcxGroupBox;
    dxLayoutControl37: TdxLayoutControl;
    cxTextCorreoRechazarMateriales: TcxTextEdit;
    ckRechazarMateriales: TcxCheckBox;
    cxGrid8: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    cxEmpleadoRechazarMateriales: TcxLookupComboBox;
    cxTextNombreRechazarMateriales: TcxTextEdit;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    dxLayoutGroup31: TdxLayoutGroup;
    dxLayoutItem133: TdxLayoutItem;
    dxLayoutItem134: TdxLayoutItem;
    dxLayoutItem135: TdxLayoutItem;
    dxLayoutAutoCreatedGroup26: TdxLayoutAutoCreatedGroup;
    dxLayoutItem136: TdxLayoutItem;
    dxLayoutItem137: TdxLayoutItem;
    dxLayoutItem138: TdxLayoutItem;
    dxLayoutItem139: TdxLayoutItem;
    dxLayoutAutoCreatedGroup27: TdxLayoutAutoCreatedGroup;
    cxGroupBox28: TcxGroupBox;
    dxLayoutControl38: TdxLayoutControl;
    cxAsuntoRechazarMateriales: TcxDBTextEdit;
    cxMensajeRechazarMateriales: TcxDBMemo;
    cxPiePaginaRechazarMateriales: TcxDBTextEdit;
    cxDBCheckBox11: TcxDBCheckBox;
    dxLayoutGroup32: TdxLayoutGroup;
    dxLayoutItem140: TdxLayoutItem;
    dxLayoutItem141: TdxLayoutItem;
    dxLayoutItem142: TdxLayoutItem;
    dxLayoutItem143: TdxLayoutItem;
    dxLayoutGroup33: TdxLayoutGroup;
    dxLayoutItem145: TdxLayoutItem;
    dxLayoutItem146: TdxLayoutItem;
    Panel10: TPanel;
    frmBarraH210: TfrmBarraH2;
    dxLayoutGroup34: TdxLayoutGroup;
    dxLayoutItem147: TdxLayoutItem;
    dxLayoutItem148: TdxLayoutItem;
    cxTabCondicionarMateriales: TcxTabSheet;
    dxLayoutControl39: TdxLayoutControl;
    cxGroupBox29: TcxGroupBox;
    dxLayoutControl40: TdxLayoutControl;
    cxGroupBox30: TcxGroupBox;
    dxLayoutControl41: TdxLayoutControl;
    cxTextCorreoCondicionarMateriales: TcxTextEdit;
    ckCondicionarMateriales: TcxCheckBox;
    cxGrid9: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    cxEmpleadoCondicionarMateriales: TcxLookupComboBox;
    cxTextNombreCondicionarMateriales: TcxTextEdit;
    cxButton17: TcxButton;
    cxButton18: TcxButton;
    dxLayoutGroup35: TdxLayoutGroup;
    dxLayoutItem144: TdxLayoutItem;
    dxLayoutItem149: TdxLayoutItem;
    dxLayoutItem150: TdxLayoutItem;
    dxLayoutAutoCreatedGroup28: TdxLayoutAutoCreatedGroup;
    dxLayoutItem151: TdxLayoutItem;
    dxLayoutItem152: TdxLayoutItem;
    dxLayoutItem153: TdxLayoutItem;
    dxLayoutItem154: TdxLayoutItem;
    dxLayoutAutoCreatedGroup29: TdxLayoutAutoCreatedGroup;
    cxGroupBox31: TcxGroupBox;
    dxLayoutControl42: TdxLayoutControl;
    cxAsuntoCondicionarMateriales: TcxDBTextEdit;
    cxMensajeCondicionarMateriales: TcxDBMemo;
    cxPiePaginaCondicionarMateriales: TcxDBTextEdit;
    cxDBCheckBox12: TcxDBCheckBox;
    dxLayoutGroup36: TdxLayoutGroup;
    dxLayoutItem155: TdxLayoutItem;
    dxLayoutItem156: TdxLayoutItem;
    dxLayoutItem157: TdxLayoutItem;
    dxLayoutItem158: TdxLayoutItem;
    dxLayoutGroup37: TdxLayoutGroup;
    dxLayoutItem159: TdxLayoutItem;
    dxLayoutItem160: TdxLayoutItem;
    Panel11: TPanel;
    frmBarraH211: TfrmBarraH2;
    dxLayoutGroup38: TdxLayoutGroup;
    dxLayoutItem161: TdxLayoutItem;
    dxLayoutItem162: TdxLayoutItem;
    cxTabMateriales: TcxTabSheet;
    dxLayoutControl43: TdxLayoutControl;
    cxGroupBox32: TcxGroupBox;
    dxLayoutControl44: TdxLayoutControl;
    cxGroupBox33: TcxGroupBox;
    dxLayoutControl45: TdxLayoutControl;
    cxTextCorreoMateriales: TcxTextEdit;
    ckMateriales: TcxCheckBox;
    cxGrid10: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    cxEmpleadoMateriales: TcxLookupComboBox;
    cxTextNombreMateriales: TcxTextEdit;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    dxLayoutGroup39: TdxLayoutGroup;
    dxLayoutItem163: TdxLayoutItem;
    dxLayoutItem164: TdxLayoutItem;
    dxLayoutItem165: TdxLayoutItem;
    dxLayoutAutoCreatedGroup30: TdxLayoutAutoCreatedGroup;
    dxLayoutItem166: TdxLayoutItem;
    dxLayoutItem167: TdxLayoutItem;
    dxLayoutItem168: TdxLayoutItem;
    dxLayoutItem169: TdxLayoutItem;
    dxLayoutAutoCreatedGroup31: TdxLayoutAutoCreatedGroup;
    cxGroupBox34: TcxGroupBox;
    dxLayoutControl46: TdxLayoutControl;
    cxAsuntoMaterialesServicio: TcxDBTextEdit;
    cxMensajeMaterialesServicio: TcxDBMemo;
    cxPiePaginaMaterialesServicio: TcxDBTextEdit;
    dxLayoutGroup40: TdxLayoutGroup;
    dxLayoutItem170: TdxLayoutItem;
    dxLayoutItem171: TdxLayoutItem;
    dxLayoutItem172: TdxLayoutItem;
    dxLayoutGroup41: TdxLayoutGroup;
    dxLayoutItem174: TdxLayoutItem;
    dxLayoutItem175: TdxLayoutItem;
    Panel12: TPanel;
    frmBarraH212: TfrmBarraH2;
    dxLayoutGroup42: TdxLayoutGroup;
    dxLayoutItem176: TdxLayoutItem;
    dxLayoutItem177: TdxLayoutItem;
    dxLayoutItem132: TdxLayoutItem;
    ckLiderMR: TcxDBCheckBox;
    dxLayoutItem178: TdxLayoutItem;
    ckCalidad: TcxDBCheckBox;
    dxLayoutItem179: TdxLayoutItem;
    ckELiderMR: TcxDBCheckBox;
    dxLayoutItem180: TdxLayoutItem;
    ckEASolicitante: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup25: TdxLayoutAutoCreatedGroup;
    dsCosto: TDataSource;
    zCosto: TUniQuery;
    lcbCentroCosto: TcxLookupComboBox;
    dxLayoutItem181: TdxLayoutItem;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxTabServicio: TcxTabSheet;
    dxLayoutControl47: TdxLayoutControl;
    cxGroupBox35: TcxGroupBox;
    dxLayoutControl48: TdxLayoutControl;
    cxGroupBox36: TcxGroupBox;
    dxLayoutControl49: TdxLayoutControl;
    cxCorreoServicio: TcxTextEdit;
    ckServicio: TcxCheckBox;
    cxGrid11: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridLevel11: TcxGridLevel;
    cxEmpleadoServicio: TcxLookupComboBox;
    cxNombreServicio: TcxTextEdit;
    btnAgrega: TcxButton;
    btnImprime: TcxButton;
    dxLayoutGroup43: TdxLayoutGroup;
    dxLayoutItem183: TdxLayoutItem;
    dxLayoutItem184: TdxLayoutItem;
    dxLayoutItem185: TdxLayoutItem;
    dxLayoutAutoCreatedGroup33: TdxLayoutAutoCreatedGroup;
    dxLayoutItem186: TdxLayoutItem;
    dxLayoutItem187: TdxLayoutItem;
    dxLayoutItem188: TdxLayoutItem;
    dxLayoutItem189: TdxLayoutItem;
    dxLayoutAutoCreatedGroup34: TdxLayoutAutoCreatedGroup;
    cxGroupBox37: TcxGroupBox;
    dxLayoutControl50: TdxLayoutControl;
    cxAsuntoServicio: TcxDBTextEdit;
    cxMensajeServicio: TcxDBMemo;
    cxPiePaginaServicio: TcxDBTextEdit;
    cxDBCheckBox14: TcxDBCheckBox;
    dxLayoutGroup44: TdxLayoutGroup;
    dxLayoutItem190: TdxLayoutItem;
    dxLayoutItem191: TdxLayoutItem;
    dxLayoutItem192: TdxLayoutItem;
    dxLayoutItem193: TdxLayoutItem;
    dxLayoutGroup45: TdxLayoutGroup;
    dxLayoutItem194: TdxLayoutItem;
    dxLayoutItem195: TdxLayoutItem;
    Panel13: TPanel;
    frmBarraH213: TfrmBarraH2;
    dxLayoutGroup46: TdxLayoutGroup;
    dxLayoutItem196: TdxLayoutItem;
    dxLayoutItem197: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCheckOtrosClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure cxAgregarClick(Sender: TObject);
    procedure cxListaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxEliminarClick(Sender: TObject);
    procedure cxPageProcesoClick(Sender: TObject);
    procedure cxEmpleadoPropertiesChange(Sender: TObject);
    procedure cxEmpleadoAutorizaPropertiesChange(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  iPausa = 1000;
var
  frmConfiguraMail_mensajes: TfrmConfiguraMail_mensajes;
  dMonto: Currency;
  sJornada: string;
  lRecordChange: Boolean;
  iRecord: Integer;
  SavePlace2 : TBookmark;
  temE:TUniQuery;
  btnPermisos:String;
  Personal:TUniQuery;



implementation

uses
  UFrmEnviarCorreo,UnitMetodos;

{$R *.dfm}

procedure TfrmConfiguraMail_mensajes.btnCancelClick(Sender: TObject);
begin
    zqDatos.Cancel;
    close;
end;

procedure TfrmConfiguraMail_mensajes.btnPostClick(Sender: TObject);
begin
  if zqDatos.State in [dsInsert, dsEdit] then
     zqDatos.Post;

     zqDatos.Edit;

end;

procedure TfrmConfiguraMail_mensajes.cxAgregarClick(Sender: TObject);
var
nombre, cc : String;
r : Boolean;
aux:TUniQuery;

begin
     if cxPageProceso.ActivePage = cxTabValida then
     begin
       zEmpleado.Locate('NombreCompleto',cxEmpleado.Text,[]);
       if cxCheckOtros.checked  then
       begin
           if zDestino.Locate('Nombre;Mail;',VarArrayOf([cxTextNombre.Text,cxTextCorreo.Text]),[loCaseInsensitive]) then
           begin
             messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
             exit;
           end;
       end
       else
       begin
           if zDestino.Locate('Nombre;Mail;',VarArrayOf([zEmpleado.FieldByName('NombreCompleto').AsString,zEmpleado.FieldByName('CorreoElectronico').AsString]),[loCaseInsensitive]) then  begin
             messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
             exit;
           end;
       end;
       zDestino.Append;
       zDestino.FieldByName('IdConfiguracion').AsInteger := zqDatos.FieldByName('IdConfiguracion').AsInteger;

       if cxCheckotros.Checked = False then
       begin
           //zEmpleado.Locate('NombreCompleto',cxEmpleado.Text,[]);
           zDestino.FieldByName('IdPersonal').AsInteger   := zEmpleado.FieldByName('IdPersonal').AsInteger;
           zDestino.FieldByName('Nombre').AsString        := zEmpleado.FieldByName('NombreCompleto').AsString;
           zDestino.FieldByName('Mail').AsString          := zEmpleado.FieldByName('CorreoElectronico').AsString;
       end
       else
       begin
           zDestino.FieldByName('IdPersonal').AsInteger   := 0;
           zDestino.FieldByName('Nombre').AsString        := cxTextNombre.Text;
           zDestino.FieldByName('Mail').AsString          := cxTextCorreo.Text;
       end;
       zDestino.FieldByName('Page').AsString:= 'VALIDAR';
     end
     else
     if cxPageProceso.ActivePage = cxTabAutorizar then  begin
      zEmpleado.Locate('NombreCompleto',cxEmpleadoAutoriza.Text,[]);
       if ckAutoriza.checked  then begin
         if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 12) then
         begin
          if lcbCentroCosto.EditValue = null then
            CC:= ''
           else
              CC:=lcbCentroCosto.EditValue;
           if zDestino.Locate('Nombre;Mail;sNumeroOrdenCentroCosto',VarArrayOf([cxTextNombreAutoriza.Text,cxTextCorreoAutoriza.Text,lcbCentroCosto.EditValue]),[loCaseInsensitive]) then  begin
             messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
             exit;
           end
         end
         else
         begin
           if zDestino.Locate('Nombre;Mail;',VarArrayOf([cxTextNombreAutoriza.Text,cxTextCorreoAutoriza.Text]),[loCaseInsensitive]) then  begin
             messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
             exit;
           end;
         end;
       end
       else
       begin
         if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 12) then
         begin
          if lcbCentroCosto.EditValue = null then
            CC:= ''
           else
              CC:=lcbCentroCosto.EditValue;
           if zDestino.Locate('Nombre;Mail;sNumeroOrdenCentroCosto',VarArrayOf([zEmpleado.FieldByName('NombreCompleto').AsString,zEmpleado.FieldByName('CorreoElectronico').AsString,CC]),[loCaseInsensitive]) then  begin
             messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
             exit;
           end
         end
         else
         begin
           if zDestino.Locate('Nombre;Mail',VarArrayOf([zEmpleado.FieldByName('NombreCompleto').AsString,zEmpleado.FieldByName('CorreoElectronico').AsString]),[loCaseInsensitive]) then  begin
             messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
             exit;
           end;
         end;
       end;
       zDestino.Append;
       zDestino.FieldByName('IdConfiguracion').AsInteger := zqDatos.FieldByName('IdConfiguracion').AsInteger;

       if ckAutoriza.Checked = False then
       begin
           //zEmpleado.Locate('NombreCompleto',cxEmpleado.Text,[]);
           zDestino.FieldByName('IdPersonal').AsInteger   := zEmpleado.FieldByName('IdPersonal').AsInteger;
           zDestino.FieldByName('Nombre').AsString        := zEmpleado.FieldByName('NombreCompleto').AsString;
           zDestino.FieldByName('Mail').AsString          := zEmpleado.FieldByName('CorreoElectronico').AsString;

           if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 12) then
              zDestino.FieldByName('sNumeroOrdenCentroCosto').AsString := CC;
       end
       else
       begin
           zDestino.FieldByName('IdPersonal').AsInteger   := 0;
           zDestino.FieldByName('Nombre').AsString        := cxTextNombreAutoriza.Text;
           zDestino.FieldByName('Mail').AsString          := cxTextCorreoAutoriza.Text;
           if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 12) then
              zDestino.FieldByName('sNumeroOrdenCentroCosto').AsString := CC;
       end;
      zDestino.FieldByName('Page').AsString:= 'AUTORIZAR';
     end
     else
     if cxPageProceso.ActivePage = cxTabLiberar then begin
      zEmpleado.Locate('NombreCompleto',cxEmpleadoLibera.Text,[]);
       if ckLibera.checked  then begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([cxTextNombreLibera.Text,cxTextCorreoLibera.Text]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end
       else begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([zEmpleado.FieldByName('NombreCompleto').AsString,zEmpleado.FieldByName('CorreoElectronico').AsString]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end;
       zDestino.Append;
       zDestino.FieldByName('IdConfiguracion').AsInteger := zqDatos.FieldByName('IdConfiguracion').AsInteger;

     if ckLibera.Checked = False then
       begin
           //zEmpleado.Locate('NombreCompleto',cxEmpleado.Text,[]);
           zDestino.FieldByName('IdPersonal').AsInteger   := zEmpleado.FieldByName('IdPersonal').AsInteger;
           zDestino.FieldByName('Nombre').AsString        := zEmpleado.FieldByName('NombreCompleto').AsString;
           zDestino.FieldByName('Mail').AsString          := zEmpleado.FieldByName('CorreoElectronico').AsString;
       end
       else
       begin
           zDestino.FieldByName('IdPersonal').AsInteger   := 0;
           zDestino.FieldByName('Nombre').AsString        := cxTextNombreLibera.Text;
           zDestino.FieldByName('Mail').AsString          := cxTextCorreoLibera.Text;
       end;
     zDestino.FieldByName('Page').AsString:= 'LIBERAR';
     end
     else
     if cxPageProceso.ActivePage = cxTabAsignarCC then  begin
      zEmpleado.Locate('NombreCompleto',cxEmpleadoAsigna.Text,[]);
       if ckAutoriza.checked  then begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([cxTextNombreAsigna.Text,cxTextCorreoAsigna.Text]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end
       else begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([zEmpleado.FieldByName('NombreCompleto').AsString,zEmpleado.FieldByName('CorreoElectronico').AsString]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end;
       zDestino.Append;
       zDestino.FieldByName('IdConfiguracion').AsInteger := zqDatos.FieldByName('IdConfiguracion').AsInteger;

     if ckAsigna.Checked = False then
       begin
           //zEmpleado.Locate('NombreCompleto',cxEmpleado.Text,[]);
           zDestino.FieldByName('IdPersonal').AsInteger   := zEmpleado.FieldByName('IdPersonal').AsInteger;
           zDestino.FieldByName('Nombre').AsString        := zEmpleado.FieldByName('NombreCompleto').AsString;
           zDestino.FieldByName('Mail').AsString          := zEmpleado.FieldByName('CorreoElectronico').AsString;
       end
       else
       begin
           zDestino.FieldByName('IdPersonal').AsInteger   := 0;
           zDestino.FieldByName('Nombre').AsString        := cxTextNombreAsigna.Text;
           zDestino.FieldByName('Mail').AsString          := cxTextCorreoAsigna.Text;
       end;
     zDestino.FieldByName('Page').AsString:= 'ASIGNAR';
     end
     else
     if cxPageProceso.ActivePage = cxTabRechazar then
     begin
       zEmpleado.Locate('NombreCompleto',cxEmpleadoRechaza.Text,[]);
       if ckRechaza.checked  then begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([cxTextNombreRechaza.Text,cxTextCorreoRechaza.Text]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end
       else
       begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([zEmpleado.FieldByName('NombreCompleto').AsString,zEmpleado.FieldByName('CorreoElectronico').AsString]),[loCaseInsensitive]) then
         begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end;
       zDestino.Append;
       zDestino.FieldByName('IdConfiguracion').AsInteger := zqDatos.FieldByName('IdConfiguracion').AsInteger;

     if ckRechaza.Checked = False then
       begin
           //zEmpleado.Locate('NombreCompleto',cxEmpleado.Text,[]);
           zDestino.FieldByName('IdPersonal').AsInteger   := zEmpleado.FieldByName('IdPersonal').AsInteger;
           zDestino.FieldByName('Nombre').AsString        := zEmpleado.FieldByName('NombreCompleto').AsString;
           zDestino.FieldByName('Mail').AsString          := zEmpleado.FieldByName('CorreoElectronico').AsString;
       end
       else
       begin
           zDestino.FieldByName('IdPersonal').AsInteger   := 0;
           zDestino.FieldByName('Nombre').AsString        := cxTextNombreRechaza.Text;
           zDestino.FieldByName('Mail').AsString          := cxTextCorreoRechaza.Text;
       end;
      zDestino.FieldByName('Page').AsString:= 'RECHAZAR';
     end
     else
     if cxPageProceso.ActivePage = cxTabCancelar then begin
      zEmpleado.Locate('NombreCompleto',cxEmpleadoCancela.Text,[]);
       if ckCancela.checked  then begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([cxTextNombreCancela.Text,cxTextCorreoCancela.Text]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end
       else begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([zEmpleado.FieldByName('NombreCompleto').AsString,zEmpleado.FieldByName('CorreoElectronico').AsString]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end;
       zDestino.Append;
       zDestino.FieldByName('IdConfiguracion').AsInteger := zqDatos.FieldByName('IdConfiguracion').AsInteger;

     if ckCancela.Checked = False then
       begin
           //zEmpleado.Locate('NombreCompleto',cxEmpleado.Text,[]);
           zDestino.FieldByName('IdPersonal').AsInteger   := zEmpleado.FieldByName('IdPersonal').AsInteger;
           zDestino.FieldByName('Nombre').AsString        := zEmpleado.FieldByName('NombreCompleto').AsString;
           zDestino.FieldByName('Mail').AsString          := zEmpleado.FieldByName('CorreoElectronico').AsString;
       end
       else
       begin
           zDestino.FieldByName('IdPersonal').AsInteger   := 0;
           zDestino.FieldByName('Nombre').AsString        := cxTextNombreCancela.Text;
           zDestino.FieldByName('Mail').AsString          := cxTextCorreoCancela.Text;
       end;
     zDestino.FieldByName('Page').AsString:= 'CANCELAR';
     end

     else
     if cxPageProceso.ActivePage = cxTabRechazarMateriales then begin
      zEmpleado.Locate('NombreCompleto',cxEmpleadoRechazarMateriales.Text,[]);
       if ckRechazarMateriales.checked  then begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([cxTextNombreRechazarMateriales.Text,cxTextCorreoRechazarMateriales.Text]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end
       else begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([zEmpleado.FieldByName('NombreCompleto').AsString,zEmpleado.FieldByName('CorreoElectronico').AsString]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end;
       zDestino.Append;
       zDestino.FieldByName('IdConfiguracion').AsInteger := zqDatos.FieldByName('IdConfiguracion').AsInteger;

     if ckRechazarMateriales.Checked = False then
       begin
           //zEmpleado.Locate('NombreCompleto',cxEmpleado.Text,[]);
           zDestino.FieldByName('IdPersonal').AsInteger   := zEmpleado.FieldByName('IdPersonal').AsInteger;
           zDestino.FieldByName('Nombre').AsString        := zEmpleado.FieldByName('NombreCompleto').AsString;
           zDestino.FieldByName('Mail').AsString          := zEmpleado.FieldByName('CorreoElectronico').AsString;
       end
       else
       begin
           zDestino.FieldByName('IdPersonal').AsInteger   := 0;
           zDestino.FieldByName('Nombre').AsString        := cxTextNombreRechazarMateriales.Text;
           zDestino.FieldByName('Mail').AsString          := cxTextCorreoRechazarMateriales.Text;
       end;
     zDestino.FieldByName('Page').AsString:= 'RECHAZAR_MATERIALES';
     end

     else
     if cxPageProceso.ActivePage = cxTabCondicionarMateriales then begin
      zEmpleado.Locate('NombreCompleto',cxEmpleadoCondicionarMateriales.Text,[]);
       if ckCondicionarMateriales.checked  then begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([cxTextNombreCondicionarMateriales.Text,cxTextCorreoCondicionarMateriales.Text]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end
       else begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([zEmpleado.FieldByName('NombreCompleto').AsString,zEmpleado.FieldByName('CorreoElectronico').AsString]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end;
       zDestino.Append;
       zDestino.FieldByName('IdConfiguracion').AsInteger := zqDatos.FieldByName('IdConfiguracion').AsInteger;

     if ckCondicionarMateriales.Checked = False then
       begin
           //zEmpleado.Locate('NombreCompleto',cxEmpleado.Text,[]);
           zDestino.FieldByName('IdPersonal').AsInteger   := zEmpleado.FieldByName('IdPersonal').AsInteger;
           zDestino.FieldByName('Nombre').AsString        := zEmpleado.FieldByName('NombreCompleto').AsString;
           zDestino.FieldByName('Mail').AsString          := zEmpleado.FieldByName('CorreoElectronico').AsString;
       end
       else
       begin
           zDestino.FieldByName('IdPersonal').AsInteger   := 0;
           zDestino.FieldByName('Nombre').AsString        := cxTextNombreCondicionarMateriales.Text;
           zDestino.FieldByName('Mail').AsString          := cxTextCorreoCondicionarMateriales.Text;
       end;
     zDestino.FieldByName('Page').AsString:= 'CONDICIONAR_MATERIALES';
     end

     else
     if cxPageProceso.ActivePage = cxTabPR then begin
      zEmpleado.Locate('NombreCompleto',cxEmpleadoPR.Text,[]);
       if ckPR.checked  then begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([cxTextNombrePR.Text,cxTextCorreoPR.Text]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end
       else begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([zEmpleado.FieldByName('NombreCompleto').AsString,zEmpleado.FieldByName('CorreoElectronico').AsString]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end;
       zDestino.Append;
       zDestino.FieldByName('IdConfiguracion').AsInteger := zqDatos.FieldByName('IdConfiguracion').AsInteger;

     if ckPR.Checked = False then
       begin
           //zEmpleado.Locate('NombreCompleto',cxEmpleado.Text,[]);
           zDestino.FieldByName('IdPersonal').AsInteger   := zEmpleado.FieldByName('IdPersonal').AsInteger;
           zDestino.FieldByName('Nombre').AsString        := zEmpleado.FieldByName('NombreCompleto').AsString;
           zDestino.FieldByName('Mail').AsString          := zEmpleado.FieldByName('CorreoElectronico').AsString;
       end
       else
       begin
           zDestino.FieldByName('IdPersonal').AsInteger   := 0;
           zDestino.FieldByName('Nombre').AsString        := cxTextNombrePR.Text;
           zDestino.FieldByName('Mail').AsString          := cxTextCorreoPR.Text;
       end;
     zDestino.FieldByName('Page').AsString:= 'GENERARPR';
     end
     else
     if cxPageProceso.ActivePage = cxTabComprar then begin
      zEmpleado.Locate('NombreCompleto',cxEmpleadoCompra.Text,[]);
       if ckCompra.checked  then begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([cxTextNombreCompra.Text,cxTextCorreoCompra.Text]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end
       else begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([zEmpleado.FieldByName('NombreCompleto').AsString,zEmpleado.FieldByName('CorreoElectronico').AsString]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end;
       zDestino.Append;
       zDestino.FieldByName('IdConfiguracion').AsInteger := zqDatos.FieldByName('IdConfiguracion').AsInteger;

     if ckCompra.Checked = False then
       begin
           //zEmpleado.Locate('NombreCompleto',cxEmpleado.Text,[]);
           zDestino.FieldByName('IdPersonal').AsInteger   := zEmpleado.FieldByName('IdPersonal').AsInteger;
           zDestino.FieldByName('Nombre').AsString        := zEmpleado.FieldByName('NombreCompleto').AsString;
           zDestino.FieldByName('Mail').AsString          := zEmpleado.FieldByName('CorreoElectronico').AsString;
       end
       else
       begin
           zDestino.FieldByName('IdPersonal').AsInteger   := 0;
           zDestino.FieldByName('Nombre').AsString        := cxTextNombreCompra.Text;
           zDestino.FieldByName('Mail').AsString          := cxTextCorreoCompra.Text;
       end;
     zDestino.FieldByName('Page').AsString:= 'COMPRAR';
     end

     else
      if cxPageProceso.ActivePage = cxTabMateriales then  begin
       zEmpleado.Locate('NombreCompleto',cxEmpleadoMateriales.Text,[]);
       if ckMateriales.checked  then begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([cxTextNombreMateriales.Text,cxTextCorreoMateriales.Text]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end
       else begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([zEmpleado.FieldByName('NombreCompleto').AsString,zEmpleado.FieldByName('CorreoElectronico').AsString]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end;
       zDestino.Append;
       zDestino.FieldByName('IdConfiguracion').AsInteger := zqDatos.FieldByName('IdConfiguracion').AsInteger;

       if ckMateriales.Checked = False then
       begin
           //zEmpleado.Locate('NombreCompleto',cxEmpleado.Text,[]);
           zDestino.FieldByName('IdPersonal').AsInteger   := zEmpleado.FieldByName('IdPersonal').AsInteger;
           zDestino.FieldByName('Nombre').AsString        := zEmpleado.FieldByName('NombreCompleto').AsString;
           zDestino.FieldByName('Mail').AsString          := zEmpleado.FieldByName('CorreoElectronico').AsString;
       end
       else
       begin
           zDestino.FieldByName('IdPersonal').AsInteger   := 0;
           zDestino.FieldByName('Nombre').AsString        := cxTextNombreMateriales.Text;
           zDestino.FieldByName('Mail').AsString          := cxTextCorreoMateriales.Text;
       end;
       zDestino.FieldByName('Page').AsString:= 'MATERIAL_NUEVO';
     end

     else
      if cxPageProceso.ActivePage = cxTabServicio then  begin
       zEmpleado.Locate('NombreCompleto',cxEmpleadoServicio.Text,[]);
       if ckServicio.checked  then begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([cxNombreServicio.Text,cxCorreoServicio.Text]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end
       else begin
         if zDestino.Locate('Nombre;Mail',VarArrayOf([zEmpleado.FieldByName('NombreCompleto').AsString,zEmpleado.FieldByName('CorreoElectronico').AsString]),[loCaseInsensitive]) then  begin
           messageDLG('Los datos de destinatario ya existen', mtInformation, [mbOk],0);
           exit;
         end;
       end;
       zDestino.Append;
       zDestino.FieldByName('IdConfiguracion').AsInteger := zqDatos.FieldByName('IdConfiguracion').AsInteger;

       if ckServicio.Checked = False then
       begin
           //zEmpleado.Locate('NombreCompleto',cxEmpleado.Text,[]);
           zDestino.FieldByName('IdPersonal').AsInteger   := zEmpleado.FieldByName('IdPersonal').AsInteger;
           zDestino.FieldByName('Nombre').AsString        := zEmpleado.FieldByName('NombreCompleto').AsString;
           zDestino.FieldByName('Mail').AsString          := zEmpleado.FieldByName('CorreoElectronico').AsString;
       end
       else
       begin
           zDestino.FieldByName('IdPersonal').AsInteger   := 0;
           zDestino.FieldByName('Nombre').AsString        := cxNombreServicio.Text;
           zDestino.FieldByName('Mail').AsString          := cxCorreoServicio.Text;
       end;
       zDestino.FieldByName('Page').AsString:= 'SERVICIO';
     end;

     zDestino.FieldByName('Activo').AsString:= 'Si';
     zDestino.Post;

     zDestino.Refresh;
end;

procedure TfrmConfiguraMail_mensajes.cxCheckOtrosClick(Sender: TObject);
begin
        if cxPageProceso.ActivePage = cxTabValida then
         begin
            if cxCheckOtros.Checked = true then begin
            cxTextNombre.Enabled:= True;
            cxTextCorreo.Enabled:= True;
            cxEmpleado.Enabled := False;
            end
            else begin
            cxTextNombre.Enabled:= False;
            cxTextCorreo.Enabled:= False;
            cxEmpleado.Enabled := True;
            end;
         end
         else
         if cxPageProceso.ActivePage = cxTabAutorizar then
         begin
          if ckAutoriza.Checked = true then begin
            cxTextNombreAutoriza.Enabled:= True;
            cxTextCorreoAutoriza.Enabled:= True;
            cxEmpleadoAutoriza.Enabled := False;
            end
            else begin
            cxTextNombreAutoriza.Enabled:= False;
            cxTextCorreoAutoriza.Enabled:= False;
            cxEmpleadoAutoriza.Enabled := True;
            end;
         end
        else
        if cxPageProceso.ActivePage = cxTabLiberar then
         begin
         if ckLibera.Checked = true then begin
            cxTextNombreLibera.Enabled:= True;
            cxTextCorreoLibera.Enabled:= True;
            cxEmpleadoLibera.Enabled := False;
            end
            else begin
            cxTextNombreLibera.Enabled:= False;
            cxTextCorreoLibera.Enabled:= False;
            cxEmpleadoLibera.Enabled := True;
            end;
         end
         else
         if cxPageProceso.ActivePage = cxTabAsignarCC then
         begin
            if ckAsigna.Checked = true then begin
            cxTextNombreAsigna.Enabled:= True;
            cxTextCorreoAsigna.Enabled:= True;
            cxEmpleadoAsigna.Enabled := False;
            end
            else begin
            cxTextNombreAsigna.Enabled:= False;
            cxTextCorreoAsigna.Enabled:= False;
            cxEmpleadoAsigna.Enabled := True;
            end;
         end
         else
         if cxPageProceso.ActivePage = cxTabPR then
         begin
         if ckPR.Checked = true then begin
            cxTextNombrePR.Enabled:= True;
            cxTextCorreoPR.Enabled:= True;
            cxEmpleadoPR.Enabled := False;
            end
            else begin
            cxTextNombrePR.Enabled:= False;
            cxTextCorreoPR.Enabled:= False;
            cxEmpleadoPR.Enabled := True;
            end;
         end
         else
         if cxPageProceso.ActivePage = cxTabComprar then
         begin
         if ckCompra.Checked = true then begin
            cxTextNombreCompra.Enabled:= True;
            cxTextCorreoCompra.Enabled:= True;
            cxEmpleadoCompra.Enabled := False;
            end
            else begin
            cxTextNombreCompra.Enabled:= False;
            cxTextCorreoCompra.Enabled:= False;
            cxEmpleadoCompra.Enabled := True;
            end;
         end
         else
         if cxPageProceso.ActivePage = cxTabRechazar then
         begin
         if ckRechaza.Checked = true then begin
            cxTextNombreRechaza.Enabled:= True;
            cxTextCorreoRechaza.Enabled:= True;
            cxEmpleadoRechaza.Enabled := False;
            end
            else begin
            cxTextNombreRechaza.Enabled:= False;
            cxTextCorreoRechaza.Enabled:= False;
            cxEmpleadoRechaza.Enabled := True;
            end;
         end
         else
         if cxPageProceso.ActivePage = cxTabCancelar then
         begin
         if ckCancela.Checked = true then begin
            cxTextNombreCancela.Enabled:= True;
            cxTextCorreoCancela.Enabled:= True;
            cxEmpleadoCancela.Enabled := False;
            end
            else begin
            cxTextNombreCancela.Enabled:= False;
            cxTextCorreoCancela.Enabled:= False;
            cxEmpleadoCancela.Enabled := True;
            end;
         end
         else
         if cxPageProceso.ActivePage = cxTabRechazarMateriales then
         begin
         if ckRechazarMateriales.Checked = true then begin
            cxTextNombreRechazarMateriales.Enabled:= True;
            cxTextCorreoRechazarMateriales.Enabled:= True;
            cxEmpleadoRechazarMateriales.Enabled := False;
            end
            else begin
            cxTextNombreRechazarMateriales.Enabled:= False;
            cxTextCorreoRechazarMateriales.Enabled:= False;
            cxEmpleadoRechazarMateriales.Enabled := True;
            end;
         end
         else
         if cxPageProceso.ActivePage = cxTabCondicionarMateriales then
         begin
         if ckCondicionarMateriales.Checked = true then begin
            cxTextNombreCondicionarMateriales.Enabled:= True;
            cxTextCorreoCondicionarMateriales.Enabled:= True;
            cxEmpleadoCondicionarMateriales.Enabled := False;
            end
            else begin
            cxTextNombreCondicionarMateriales.Enabled:= False;
            cxTextCorreoCondicionarMateriales.Enabled:= False;
            cxEmpleadoCondicionarMateriales.Enabled := True;
            end;
         end
         else
         if cxPageProceso.ActivePage = cxTabMateriales then
         begin
         if ckMateriales.Checked = true then begin
            cxTextNombreMateriales.Enabled:= True;
            cxTextCorreoMateriales.Enabled:= True;
            cxEmpleadoMateriales.Enabled := False;
            end
            else begin
            cxTextNombreMateriales.Enabled:= False;
            cxTextCorreoMateriales.Enabled:= False;
            cxEmpleadoMateriales.Enabled := True;
            end;
         end
         else
         if cxPageProceso.ActivePage = cxTabServicio then
         begin
            if ckServicio.Checked = true then begin
              cxNombreServicio.Enabled:= True;
              cxCorreoServicio.Enabled:= True;
              cxEmpleadoServicio.Enabled := False;
            end
            else begin
              cxNombreServicio.Enabled:= False;
              cxCorreoServicio.Enabled:= False;
              cxEmpleadoServicio.Enabled := True;
            end;
         end
end;


procedure TfrmConfiguraMail_mensajes.cxEliminarClick(Sender: TObject);
begin
   zDestino.Delete;
   zDestino.ApplyUpdates();
end;

procedure TfrmConfiguraMail_mensajes.cxEmpleadoAutorizaPropertiesChange(
  Sender: TObject);
begin
zEmpleado.FieldByName('NombreCompleto').AsString;
end;

procedure TfrmConfiguraMail_mensajes.cxEmpleadoPropertiesChange(
  Sender: TObject);
begin
zEmpleado.FieldByName('NombreCompleto').AsString;
end;

procedure TfrmConfiguraMail_mensajes.cxListaClick(Sender: TObject);
begin
  temE := TUniquery.create(nil);
  temE.Connection := Connection.uConnection;
  temE.Active:=False;
  temE.SQL.Text:='Select FK_Titulo from master_empresa';
  temE.Open;
    {$REGION 'SUBSEA 7'}
     if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
     begin

      if cxLista.ItemIndex = 0 then
       begin
          cxPageProceso.Pages[0].TabVisible := True;
          cxPageProceso.Pages[1].TabVisible := True;
          cxPageProceso.Pages[2].TabVisible := True;
          cxPageProceso.Pages[3].TabVisible := True;
          cxPageProceso.Pages[4].TabVisible := True;
          cxPageProceso.Pages[5].TabVisible := True;
          cxPageProceso.Pages[6].TabVisible := True;
          cxPageProceso.Pages[7].TabVisible := True;
          cxPageProceso.Pages[8].TabVisible := True;
          cxPageProceso.Pages[9].TabVisible := False;
          cxPageProceso.Pages[10].TabVisible := False;
          cxPageProceso.Pages[11].TabVisible := False;
          cxPageProceso.Pages[12].TabVisible := True;
          cxPageProcesoClick(Sender);
          zqDatos.Active:=False;
          AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
          FiltrarDataSet(zqDatos,'Clasificacion',['REQUISICION']);
          zqDatos.Open;

          if zqDatos.RecordCount =  0 then
          begin
             zqDatos.Append;
             zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
             zqDatos.FieldByName('sClasificacion').asString:= 'REQUISICION';

             zqDatos.Post;
             zqDatos.Edit;
          end
          else
             zqDatos.Edit;

          zDestino.Active:=False;
          AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
          FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsString]);
          zDestino.Open;

       end;

        if cxLista.ItemIndex = 1 then
       begin
          cxPageProceso.Pages[0].TabVisible := True;
          cxPageProceso.Pages[1].TabVisible := True;
          cxPageProceso.Pages[2].TabVisible := False;
          cxPageProceso.Pages[3].TabVisible := False;
          cxPageProceso.Pages[4].TabVisible := False;
          cxPageProceso.Pages[5].TabVisible := False;
          cxPageProceso.Pages[6].TabVisible := False;
          cxPageProceso.Pages[7].TabVisible := True;
          cxPageProceso.Pages[8].TabVisible := False;
          cxPageProceso.Pages[9].TabVisible := False;
          cxPageProceso.Pages[10].TabVisible := False;
          cxPageProceso.Pages[11].TabVisible := False;
          cxPageProceso.Pages[12].TabVisible := False;
          cxPageProcesoClick(Sender);
          zqDatos.Active:=False;
          AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
          FiltrarDataSet(zqDatos,'Clasificacion',['ORDEN_COMPRA']);
          zqDatos.Open;

          if zqDatos.RecordCount =  0 then
          begin
             zqDatos.Append;
             zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
             zqDatos.FieldByName('sClasificacion').asString:= 'ORDEN_COMPRA';
             zqDatos.Post;
             zqDatos.Edit;
          end
          else
             zqDatos.Edit;

          zDestino.Active:=False;
          AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
          FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsInteger]);
          zDestino.Open;

       end;

       if cxLista.ItemIndex = 2 then
       begin
          cxPageProceso.Pages[0].TabVisible := True;
          cxPageProceso.Pages[1].TabVisible := True;
          cxPageProceso.Pages[2].TabVisible := False;
          cxPageProceso.Pages[3].TabVisible := False;
          cxPageProceso.Pages[4].TabVisible := False;
          cxPageProceso.Pages[5].TabVisible := False;
          cxPageProceso.Pages[6].TabVisible := False;
          cxPageProceso.Pages[7].TabVisible := False;
          cxPageProceso.Pages[8].TabVisible := False;
          cxPageProceso.Pages[9].TabVisible := True;
          cxPageProceso.Pages[10].TabVisible := True;
          cxPageProceso.Pages[11].TabVisible := False;
          cxPageProceso.Pages[12].TabVisible := False;
          cxPageProcesoClick(Sender);
          zqDatos.Active:=False;
          AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
          FiltrarDataSet(zqDatos,'Clasificacion',['RIM']);
          zqDatos.Open;

          if zqDatos.RecordCount =  0 then
          begin
             zqDatos.Append;
             zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
             zqDatos.FieldByName('sClasificacion').asString:= 'RIM';
             zqDatos.Post;
             zqDatos.Edit;
          end
          else
             zqDatos.Edit;

          zDestino.Active:=False;
          AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
          FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsInteger]);
          zDestino.Open;
       end;
        if cxLista.ItemIndex = 3 then
       begin
          cxPageProceso.Pages[0].TabVisible := True;
          cxPageProceso.Pages[1].TabVisible := True;
          cxPageProceso.Pages[2].TabVisible := False;
          cxPageProceso.Pages[3].TabVisible := False;
          cxPageProceso.Pages[4].TabVisible := False;
          cxPageProceso.Pages[5].TabVisible := False;
          cxPageProceso.Pages[6].TabVisible := False;
          cxPageProceso.Pages[7].TabVisible := False;
          cxPageProceso.Pages[8].TabVisible := False;
          cxPageProceso.Pages[9].TabVisible := False;
          cxPageProceso.Pages[10].TabVisible := False;
          cxPageProceso.Pages[11].TabVisible := False;
          cxPageProceso.Pages[12].TabVisible := False;
          cxPageProcesoClick(Sender);
          zqDatos.Active:=False;
          AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
          FiltrarDataSet(zqDatos,'Clasificacion',['ENTRADAS']);
          zqDatos.Open;

          if zqDatos.RecordCount =  0 then
          begin
             zqDatos.Append;
             zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
             zqDatos.FieldByName('sClasificacion').asString:= 'ENTRADAS';
             zqDatos.Post;
             zqDatos.Edit;
          end
          else
             zqDatos.Edit;

          zDestino.Active:=False;
          AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
          FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsInteger]);
          zDestino.Open;
       end;
       if cxLista.ItemIndex = 4 then
       begin
          cxPageProceso.Pages[0].TabVisible := True;
          cxPageProceso.Pages[1].TabVisible := True;
          cxPageProceso.Pages[2].TabVisible := False;
          cxPageProceso.Pages[3].TabVisible := False;
          cxPageProceso.Pages[4].TabVisible := False;
          cxPageProceso.Pages[5].TabVisible := False;
          cxPageProceso.Pages[6].TabVisible := False;
          cxPageProceso.Pages[7].TabVisible := False;
          cxPageProceso.Pages[8].TabVisible := False;
          cxPageProceso.Pages[9].TabVisible := False;
          cxPageProceso.Pages[10].TabVisible := False;
          cxPageProceso.Pages[11].TabVisible := False;
          cxPageProceso.Pages[12].TabVisible := False;
          cxPageProcesoClick(Sender);
          zqDatos.Active:=False;
          AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
          FiltrarDataSet(zqDatos,'Clasificacion',['SALIDAS']);
          zqDatos.Open;

          if zqDatos.RecordCount =  0 then
          begin
             zqDatos.Append;
             zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
             zqDatos.FieldByName('sClasificacion').asString:= 'SALIDAS';
             zqDatos.Post;
             zqDatos.Edit;
          end
          else
             zqDatos.Edit;


          zDestino.Active:=False;
          AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
          FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsInteger]);
          zDestino.Open;
       end;
       if cxLista.ItemIndex = 5 then
       begin
          cxPageProceso.Pages[0].TabVisible := True;
          cxPageProceso.Pages[1].TabVisible := True;
          cxPageProceso.Pages[2].TabVisible := False;
          cxPageProceso.Pages[3].TabVisible := False;
          cxPageProceso.Pages[4].TabVisible := False;
          cxPageProceso.Pages[5].TabVisible := False;
          cxPageProceso.Pages[6].TabVisible := False;
          cxPageProceso.Pages[7].TabVisible := False;
          cxPageProceso.Pages[8].TabVisible := False;
          cxPageProceso.Pages[9].TabVisible := False;
          cxPageProceso.Pages[10].TabVisible := False;
          cxPageProceso.Pages[11].TabVisible := False;
          cxPageProceso.Pages[12].TabVisible := False;
          cxPageProcesoClick(Sender);
          zqDatos.Active:=False;
          AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
          FiltrarDataSet(zqDatos,'Clasificacion',['AVISO_EMBARQUE']);
          zqDatos.Open;

          if zqDatos.RecordCount =  0 then
          begin
             zqDatos.Append;
             zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
             zqDatos.FieldByName('sClasificacion').asString:= 'AVISO_EMBARQUE';
             zqDatos.Post;
             zqDatos.Edit;
          end
          else
             zqDatos.Edit;


          zDestino.Active:=False;
          AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
          FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsInteger]);
          zDestino.Open;
       end;
       if cxLista.ItemIndex = 6 then
       begin
          cxPageProceso.Pages[0].TabVisible := True;
          cxPageProceso.Pages[1].TabVisible := True;
          cxPageProceso.Pages[2].TabVisible := False;
          cxPageProceso.Pages[3].TabVisible := False;
          cxPageProceso.Pages[4].TabVisible := False;
          cxPageProceso.Pages[5].TabVisible := False;
          cxPageProceso.Pages[6].TabVisible := False;
          cxPageProceso.Pages[7].TabVisible := False;
          cxPageProceso.Pages[8].TabVisible := False;
          cxPageProceso.Pages[9].TabVisible := False;
          cxPageProceso.Pages[10].TabVisible := False;
          cxPageProceso.Pages[11].TabVisible := False;
          cxPageProceso.Pages[12].TabVisible := False;
          cxPageProcesoClick(Sender);
          zqDatos.Active:=False;
          AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
          FiltrarDataSet(zqDatos,'Clasificacion',['RECEPCION']);
          zqDatos.Open;

          if zqDatos.RecordCount =  0 then
          begin
             zqDatos.Append;
             zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
             zqDatos.FieldByName('sClasificacion').asString:= 'RECEPCION';
             zqDatos.Post;
             zqDatos.Edit;
          end
          else
             zqDatos.Edit;


          zDestino.Active:=False;
          AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
          FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsInteger]);
          zDestino.Open;
       end;
       if cxLista.ItemIndex = 7 then
       begin
          cxPageProceso.Pages[0].TabVisible := True;
          cxPageProceso.Pages[1].TabVisible := True;
          cxPageProceso.Pages[2].TabVisible := False;
          cxPageProceso.Pages[3].TabVisible := False;
          cxPageProceso.Pages[4].TabVisible := False;
          cxPageProceso.Pages[5].TabVisible := False;
          cxPageProceso.Pages[6].TabVisible := False;
          cxPageProceso.Pages[7].TabVisible := False;
          cxPageProceso.Pages[8].TabVisible := False;
          cxPageProceso.Pages[9].TabVisible := False;
          cxPageProceso.Pages[10].TabVisible := False;
          cxPageProceso.Pages[11].TabVisible := False;
          cxPageProceso.Pages[12].TabVisible := False;
          cxPageProcesoClick(Sender);
          zqDatos.Active:=False;
          AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
          FiltrarDataSet(zqDatos,'Clasificacion',['DESEMBARQUE']);
          zqDatos.Open;

          if zqDatos.RecordCount =  0 then
          begin
             zqDatos.Append;
             zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
             zqDatos.FieldByName('sClasificacion').asString:= 'DESEMBARQUE';
             zqDatos.Post;
             zqDatos.Edit;
          end
          else
             zqDatos.Edit;


          zDestino.Active:=False;
          AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
          FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsInteger]);
          zDestino.Open;
       end;
     end
      {$ENDREGION}
     else
     begin
     if cxLista.ItemIndex = 0 then
     begin
       cxPageProceso.Pages[0].TabVisible := True;
       cxPageProceso.Pages[1].TabVisible := True;
       cxPageProceso.Pages[2].TabVisible := False;
       cxPageProceso.Pages[3].TabVisible := False;
       cxPageProceso.Pages[4].TabVisible := False;
       cxPageProceso.Pages[5].TabVisible := False;
       cxPageProceso.Pages[6].TabVisible := True;
       cxPageProceso.Pages[7].TabVisible := True;
       cxPageProceso.Pages[8].TabVisible := False;
       cxPageProceso.Pages[9].TabVisible := False;
       cxPageProceso.Pages[10].TabVisible := False;
       cxPageProceso.Pages[11].TabVisible := False;
       cxPageProceso.Pages[12].TabVisible := False;
        zqDatos.Active:=False;
        AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zqDatos,'Clasificacion',['REQUISICION']);
        zqDatos.Open;

        if zqDatos.RecordCount =  0 then
        begin
           zqDatos.Append;
           zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
           zqDatos.FieldByName('sClasificacion').asString:= 'REQUISICION';
           zqDatos.Post;
           zqDatos.Edit;
        end
        else
           zqDatos.Edit;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsString]);
        zDestino.Open;

     end;

     if cxLista.ItemIndex = 1 then
     begin
       cxPageProceso.Pages[0].TabVisible := True;
       cxPageProceso.Pages[1].TabVisible := True;
       cxPageProceso.Pages[2].TabVisible := False;
       cxPageProceso.Pages[3].TabVisible := False;
       cxPageProceso.Pages[4].TabVisible := False;
       cxPageProceso.Pages[5].TabVisible := False;
       cxPageProceso.Pages[6].TabVisible := False;
       cxPageProceso.Pages[7].TabVisible := True;
       cxPageProceso.Pages[8].TabVisible := False;
       cxPageProceso.Pages[9].TabVisible := False;
       cxPageProceso.Pages[10].TabVisible := False;
       cxPageProceso.Pages[11].TabVisible := False;
       cxPageProceso.Pages[12].TabVisible := False;
        zqDatos.Active:=False;
        AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zqDatos,'Clasificacion',['ORDEN_COMPRA']);
        zqDatos.Open;

        if zqDatos.RecordCount =  0 then
        begin
           zqDatos.Append;
           zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
           zqDatos.FieldByName('sClasificacion').asString:= 'ORDEN_COMPRA';
           zqDatos.Post;
           zqDatos.Edit;
        end
        else
           zqDatos.Edit;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsInteger]);
        zDestino.Open;

     end;

      if cxLista.ItemIndex = 2 then
     begin
       cxPageProceso.Pages[0].TabVisible := True;
       cxPageProceso.Pages[1].TabVisible := True;
       cxPageProceso.Pages[2].TabVisible := False;
       cxPageProceso.Pages[3].TabVisible := False;
       cxPageProceso.Pages[4].TabVisible := False;
       cxPageProceso.Pages[5].TabVisible := False;
       cxPageProceso.Pages[6].TabVisible := False;
       cxPageProceso.Pages[7].TabVisible := False;
       cxPageProceso.Pages[8].TabVisible := False;
       cxPageProceso.Pages[9].TabVisible := False;
       cxPageProceso.Pages[10].TabVisible := False;
       cxPageProceso.Pages[11].TabVisible := False;
       cxPageProceso.Pages[12].TabVisible := False;
       cxPageProcesoClick(Sender);
        zqDatos.Active:=False;
        AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zqDatos,'Clasificacion',['ENTRADAS']);
        zqDatos.Open;

        if zqDatos.RecordCount =  0 then
        begin
           zqDatos.Append;
           zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
           zqDatos.FieldByName('sClasificacion').asString:= 'ENTRADAS';
           zqDatos.Post;
           zqDatos.Edit;
        end
        else
           zqDatos.Edit;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsInteger]);
        zDestino.Open;
     end;


      if cxLista.ItemIndex = 3 then
     begin
         cxPageProceso.Pages[0].TabVisible := True;
         cxPageProceso.Pages[1].TabVisible := True;
         cxPageProceso.Pages[2].TabVisible := False;
         cxPageProceso.Pages[3].TabVisible := False;
         cxPageProceso.Pages[4].TabVisible := False;
         cxPageProceso.Pages[5].TabVisible := False;
         cxPageProceso.Pages[6].TabVisible := False;
         cxPageProceso.Pages[7].TabVisible := False;
         cxPageProceso.Pages[8].TabVisible := False;
         cxPageProceso.Pages[9].TabVisible := False;
         cxPageProceso.Pages[10].TabVisible := False;
         cxPageProceso.Pages[11].TabVisible := False;
         cxPageProceso.Pages[12].TabVisible := False;
        zqDatos.Active:=False;
        AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zqDatos,'Clasificacion',['SALIDAS']);
        zqDatos.Open;

        if zqDatos.RecordCount =  0 then
        begin
           zqDatos.Append;
           zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
           zqDatos.FieldByName('sClasificacion').asString:= 'SALIDAS';
           zqDatos.Post;
           zqDatos.Edit;
        end
        else
           zqDatos.Edit;


        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsInteger]);
        zDestino.Open;
     end;
     if cxLista.ItemIndex = 4 then
     begin
         cxPageProceso.Pages[0].TabVisible := True;
         cxPageProceso.Pages[1].TabVisible := True;
         cxPageProceso.Pages[2].TabVisible := False;
         cxPageProceso.Pages[3].TabVisible := False;
         cxPageProceso.Pages[4].TabVisible := False;
         cxPageProceso.Pages[5].TabVisible := False;
         cxPageProceso.Pages[6].TabVisible := False;
         cxPageProceso.Pages[7].TabVisible := False;
         cxPageProceso.Pages[8].TabVisible := False;
         cxPageProceso.Pages[9].TabVisible := False;
         cxPageProceso.Pages[10].TabVisible := False;
         cxPageProceso.Pages[11].TabVisible := False;
         cxPageProceso.Pages[12].TabVisible := False;
        zqDatos.Active:=False;
        AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zqDatos,'Clasificacion',['AVISO_EMBARQUE']);
        zqDatos.Open;

        if zqDatos.RecordCount =  0 then
        begin
           zqDatos.Append;
           zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
           zqDatos.FieldByName('sClasificacion').asString:= 'AVISO_EMBARQUE';
           zqDatos.Post;
           zqDatos.Edit;
        end
        else
           zqDatos.Edit;


        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsInteger]);
        zDestino.Open;
     end;

       if cxLista.ItemIndex = 5 then
     begin
//       checkAutoriza.Caption := 'Enviar Correos al Validar';
         cxPageProceso.Pages[0].TabVisible := True;
         cxPageProceso.Pages[1].TabVisible := True;
         cxPageProceso.Pages[2].TabVisible := False;
         cxPageProceso.Pages[3].TabVisible := False;
         cxPageProceso.Pages[4].TabVisible := False;
         cxPageProceso.Pages[5].TabVisible := False;
         cxPageProceso.Pages[6].TabVisible := False;
         cxPageProceso.Pages[7].TabVisible := False;
         cxPageProceso.Pages[8].TabVisible := False;
         cxPageProceso.Pages[9].TabVisible := False;
         cxPageProceso.Pages[10].TabVisible := False;
         cxPageProceso.Pages[11].TabVisible := False;
         cxPageProceso.Pages[12].TabVisible := False;
        zqDatos.Active:=False;
        AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zqDatos,'Clasificacion',['VALIDA_PRESUPUESTO']);
        zqDatos.Open;

        if zqDatos.RecordCount =  0 then
        begin
           zqDatos.Append;
           zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
           zqDatos.FieldByName('sClasificacion').asString:= 'VALIDA_PRESUPUESTO';
           zqDatos.Post;
           zqDatos.Edit;
        end
        else
           zqDatos.Edit;


        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsInteger]);
        zDestino.Open;
     end;


      if cxLista.ItemIndex = 6 then
     begin
//        checkAutoriza.Caption := 'Enviar Correos al Autorizar';
         cxPageProceso.Pages[0].TabVisible := True;
         cxPageProceso.Pages[1].TabVisible := True;
         cxPageProceso.Pages[2].TabVisible := False;
         cxPageProceso.Pages[3].TabVisible := False;
         cxPageProceso.Pages[4].TabVisible := False;
         cxPageProceso.Pages[5].TabVisible := False;
         cxPageProceso.Pages[6].TabVisible := False;
         cxPageProceso.Pages[7].TabVisible := False;
         cxPageProceso.Pages[8].TabVisible := False;
         cxPageProceso.Pages[9].TabVisible := False;
         cxPageProceso.Pages[10].TabVisible := False;
         cxPageProceso.Pages[11].TabVisible := False;
         cxPageProceso.Pages[12].TabVisible := False;
        zqDatos.Active:=False;
        AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zqDatos,'Clasificacion',['PRESUPUESTO']);
        zqDatos.Open;

        if zqDatos.RecordCount =  0 then
        begin
           zqDatos.Append;
           zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
           zqDatos.FieldByName('sClasificacion').asString:= 'PRESUPUESTO';
           zqDatos.Post;
           zqDatos.Edit;
        end
        else
           zqDatos.Edit;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsInteger]);
        zDestino.Open;
     end;

      if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 11) then
     begin
       cxPageProceso.Pages[0].TabVisible := False;
       cxPageProceso.Pages[1].TabVisible := False;
       cxPageProceso.Pages[2].TabVisible := False;
       cxPageProceso.Pages[3].TabVisible := False;
       cxPageProceso.Pages[4].TabVisible := False;
       cxPageProceso.Pages[5].TabVisible := False;
       cxPageProceso.Pages[6].TabVisible := False;
       cxPageProceso.Pages[7].TabVisible := False;
       cxPageProceso.Pages[8].TabVisible := False;
       cxPageProceso.Pages[9].TabVisible := False;
       cxPageProceso.Pages[10].TabVisible := False;
       cxPageProceso.Pages[11].TabVisible := True;
       cxPageProceso.Pages[12].TabVisible := False;
       cxPageProceso.ActivePage := cxTabMateriales;
       cxPageProcesoClick(Sender);
        zqDatos.Active:=False;
        AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zqDatos,'Clasificacion',['MATERIAL_NUEVO']);
        zqDatos.Open;

        if zqDatos.RecordCount =  0 then
        begin
           zqDatos.Append;
           zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
           zqDatos.FieldByName('sClasificacion').asString:= 'MATERIAL_NUEVO';
           zqDatos.Post;
           zqDatos.Edit;
        end
        else
           zqDatos.Edit;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsInteger]);
        zDestino.Open;
     end;


  end;

  if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 12) then
     begin
       cxPageProceso.Pages[0].TabVisible := True;
       cxPageProceso.Pages[1].TabVisible := True;
       cxPageProceso.Pages[2].TabVisible := False;
       cxPageProceso.Pages[3].TabVisible := False;
       cxPageProceso.Pages[4].TabVisible := False;
       cxPageProceso.Pages[5].TabVisible := False;
       cxPageProceso.Pages[6].TabVisible := True;
       cxPageProceso.Pages[7].TabVisible := False;
       cxPageProceso.Pages[8].TabVisible := False;
       cxPageProceso.Pages[9].TabVisible := False;
       cxPageProceso.Pages[10].TabVisible := False;
       cxPageProceso.Pages[11].TabVisible := False;
       cxPageProceso.Pages[12].TabVisible := False;
        zqDatos.Active:=False;
        AsignarSQL(zqDatos,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zqDatos,'Clasificacion',['SOLICITUDES']);
        zqDatos.Open;

        if zqDatos.RecordCount =  0 then
        begin
           zqDatos.Append;
           zqDatos.FieldByName('IdConfiguracion').AsInteger:= 0;
           zqDatos.FieldByName('sClasificacion').asString:= 'SOLICITUDES';
           zqDatos.Post;
           zqDatos.Edit;
        end
        else
           zqDatos.Edit;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zqDatos.FieldByName('IdConfiguracion').AsString]);
        zDestino.Open;

        zCosto.Active:= False;
        AsignarSQL(zCosto,'ordenesdetrabajo_req',pUpdate);
        FiltrarDataSet(zCosto,'Contrato,Tipo',[global_contrato,'CENTRO_COSTO']);
        zCosto.Open;
        lcbCentroCosto.EditValue := null;
        dxLayoutItem181.Visible := True;

     end
     else
     begin

        dxLayoutItem181.Visible := False;
        lcbCentroCosto.EditValue := null;
     end;
end;


procedure TfrmConfiguraMail_mensajes.cxPageProcesoClick(Sender: TObject);
begin
        if cxPageProceso.ActivePage = cxTabValida then
         begin
           if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
           begin
             if (cxPageProceso.ActivePage = cxTabValida) and (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4){()(cxLista.ItemIndex = 3)} then
               begin

                dxLayoutItem132.Visible:=True;
                ckLiderMR.DataBinding.DataField:='EnviarAlLider_MR';
                ckLiderMR.DataBinding.DataSource:=ds_datos;

                dxLayoutItem178.Visible:=True;
                ckCalidad.DataBinding.DataField:='EnviarACalidad';
                ckCalidad.DataBinding.DataSource:=ds_datos;

               end
               else begin
                dxLayoutItem129.Visible:=False;
                dxLayoutItem130.Visible:=False;
                dxLayoutItem132.Visible:=False;
                dxLayoutItem131.Visible:=False;
                dxLayoutItem178.Visible:=False;
               end;
           end;
          zDestino.Filtered := False;
          zDestino.Filter   := ' Page ='+QuotedStr('VALIDAR');
          zDestino.Filtered := True;
         end
         else
         if cxPageProceso.ActivePage = cxTabAutorizar then
         begin
           if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
           begin
            if (cxPageProceso.ActivePage = cxTabAutorizar) and (cxLista.ItemIndex = 2) then
             begin

              dxLayoutItem109.Visible:=True;
              ckERequisitor.DataBinding.DataField:='EnviarAlRequisitor';
              ckERequisitor.DataBinding.DataSource:=ds_datos;

              dxLayoutItem127.Visible:=True;
              ckEComprador.DataBinding.DataField:='EnviarAlComprador';
              ckEComprador.DataBinding.DataSource:=ds_datos;

              dxLayoutItem128.Visible:=True;
              ckEGerencia.DataBinding.DataField:='EnviarAGerencia';
              ckEGerencia.DataBinding.DataSource:=ds_datos;
              dxLayoutItem179.Visible:=False;
             end
             else begin
              dxLayoutItem109.Visible:=False;
              dxLayoutItem127.Visible:=False;
              dxLayoutItem128.Visible:=False;
              dxLayoutItem179.Visible:=False;
             end;
           end;

            if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
           begin
            if (cxPageProceso.ActivePage = cxTabAutorizar) and (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 3) then
             begin

              dxLayoutItem109.Visible:=True;
              ckERequisitor.DataBinding.DataField:='EnviarAlRequisitor';
              ckERequisitor.DataBinding.DataSource:=ds_datos;

              dxLayoutItem179.Visible:=True;
              ckELiderMR.DataBinding.DataField:='EnviarAlLider_MR';
              ckELiderMR.DataBinding.DataSource:=ds_datos;

              dxLayoutItem127.Visible:=False;
              dxLayoutItem128.Visible:=False;
             end
             else begin
                dxLayoutItem109.Visible:=False;
                dxLayoutItem127.Visible:=False;
                dxLayoutItem128.Visible:=False;
                dxLayoutItem179.Visible:=False;
             end;
           end;


          zDestino.Filtered := False;
          zDestino.Filter   := ' Page ='+QuotedStr('AUTORIZAR');
          zDestino.Filtered := True;
         end
        else
        if cxPageProceso.ActivePage = cxTabLiberar then
         begin
          zDestino.Filtered := False;
          zDestino.Filter   := ' Page ='+QuotedStr('LIBERAR');
          zDestino.Filtered := True;
         end
         else
//          if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
//           begin
             if (cxPageProceso.ActivePage = cxTabAsignarCC) and (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1) then
             begin

              dxLayoutItem180.Visible:=True;
              ckEASolicitante.DataBinding.DataField:='EnviarAlSolicitante';
              ckEASolicitante.DataBinding.DataSource:=ds_datos;
//             end
//             else
                dxLayoutItem180.Visible:=False;


              zDestino.Filtered := False;
              zDestino.Filter   := ' Page ='+QuotedStr('ASIGNAR');
              zDestino.Filtered := True;
           end
         else
         if cxPageProceso.ActivePage = cxTabPR then
         begin
          zDestino.Filtered := False;
          zDestino.Filter   := ' Page ='+QuotedStr('GENERARPR');
          zDestino.Filtered := True;
         end
         else
         if cxPageProceso.ActivePage = cxTabComprar then
         begin
          zDestino.Filtered := False;
          zDestino.Filter   := ' Page ='+QuotedStr('COMPRAR');
          zDestino.Filtered := True;
         end
         else
         if cxPageProceso.ActivePage = cxTabRechazar then
         begin
          zDestino.Filtered := False;
          zDestino.Filter   := ' Page ='+QuotedStr('RECHAZAR');
          zDestino.Filtered := True;
         end
         else
         if cxPageProceso.ActivePage = cxTabCancelar then
         begin
          zDestino.Filtered := False;
          zDestino.Filter   := ' Page ='+QuotedStr('CANCELAR');
          zDestino.Filtered := True;
         end
         else
          if cxPageProceso.ActivePage = cxTabRechazarMateriales then
         begin
          zDestino.Filtered := False;
          zDestino.Filter   := ' Page ='+QuotedStr('RECHAZAR_MATERIALES');
          zDestino.Filtered := True;
         end
         else
          if cxPageProceso.ActivePage = cxTabCondicionarMateriales then
         begin
          zDestino.Filtered := False;
          zDestino.Filter   := ' Page ='+QuotedStr('CONDICIONAR_MATERIALES');
          zDestino.Filtered := True;
         end
         else
          if cxPageProceso.ActivePage = cxTabMateriales then
         begin
          zDestino.Filtered := False;
          zDestino.Filter   := ' Page ='+QuotedStr('MATERIAL_NUEVO');
          zDestino.Filtered := True;
         end
         else
         if cxPageProceso.ActivePage = cxTabServicio then
         begin
          zDestino.Filtered := False;
          zDestino.Filter   := ' Page ='+QuotedStr('SERVICIO');
          zDestino.Filtered := True;
         end
end;

procedure TfrmConfiguraMail_mensajes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  guardar_leer_grid(cxViewCorreos,frmConfiguraMail_mensajes,1);
    action := cafree;
end;

procedure TfrmConfiguraMail_mensajes.FormShow(Sender: TObject);
begin
  temE := TUniquery.create(nil);
  temE.Connection := Connection.uConnection;
  temE.Active:=False;
  temE.SQL.Text:='Select FK_Titulo from master_empresa';
  temE.Open;
    if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
     begin
//      cxLista.Items.Item[11].Delete;
      cxLista.Items.Item[10].Delete;
      cxLista.Items.Item[7].Delete;
      cxLista.Items.Item[6].Delete;
//      cxLista.Items.Item[5].Delete;
      dxLayoutItem109.Visible:=False;
      dxLayoutItem127.Visible:=False;
      dxLayoutItem128.Visible:=False;
      dxLayoutItem129.Visible:=False;
      dxLayoutItem130.Visible:=False;
      dxLayoutItem131.Visible:=False;
      cxPageProceso.Pages[8].TabVisible := True;
           if cxPageProceso.Pages[8].TabVisible then
            begin
              cxNotasGenerales.Text:='';
              cxNotasGenerales.DataBinding.DataField:='NotasGenerales';
              cxNotasGenerales.DataBinding.DataSource:=ds_datos;
            end;
     end
     else  begin
       if temE.FieldByName('FK_Titulo').AsString <> 'CMMI' then begin
       cxLista.Items.Item[11].Delete;
       cxLista.Items.Item[10].Delete;
       end;
     cxLista.Items.Item[9].Delete;
     cxLista.Items.Item[8].Delete;
     cxLista.Items.Item[2].Delete;

         cxPageProceso.Pages[8].TabVisible := False;
         dxLayoutItem109.Visible:=False;
         dxLayoutItem127.Visible:=False;
         dxLayoutItem128.Visible:=False;
         dxLayoutItem129.Visible:=False;
         dxLayoutItem130.Visible:=False;
         dxLayoutItem131.Visible:=False;
         dxLayoutItem132.Visible:=False;
         dxLayoutItem178.Visible:=False;
//        end;
     end;
    zEmpleado.Active:=False;
    AsignarSQL(zEmpleado,'mater_personal_correo',pUpdate);
    zEmpleado.Open;

    cxLista.ItemIndex := 0;
    cxLista.OnClick(sender);
    cxPageProcesoClick(Sender);
    CxEmpleado.ItemIndex := zEmpleado.FieldByName('IdPersonal').AsInteger;
    CxEmpleadoAutoriza.ItemIndex := zEmpleado.FieldByName('IdPersonal').AsInteger;
    CxEmpleadoLibera.ItemIndex := zEmpleado.FieldByName('IdPersonal').AsInteger;
    CxEmpleadoAsigna.ItemIndex := zEmpleado.FieldByName('IdPersonal').AsInteger;
    CxEmpleadoPR.ItemIndex := zEmpleado.FieldByName('IdPersonal').AsInteger;
    CxEmpleadoCompra.ItemIndex := zEmpleado.FieldByName('IdPersonal').AsInteger;
    CxEmpleadoRechaza.ItemIndex := zEmpleado.FieldByName('IdPersonal').AsInteger;
    CxEmpleadoCancela.ItemIndex := zEmpleado.FieldByName('IdPersonal').AsInteger;
    CxEmpleadoRechazarMateriales.ItemIndex := zEmpleado.FieldByName('IdPersonal').AsInteger;
    CxEmpleadoCondicionarMateriales.ItemIndex := zEmpleado.FieldByName('IdPersonal').AsInteger;
    CxEmpleadoMateriales.ItemIndex := zEmpleado.FieldByName('IdPersonal').AsInteger;
    CxEmpleadoServicio.ItemIndex := zEmpleado.FieldByName('IdPersonal').AsInteger;
//    guardar_leer_grid(cxViewCorreos,frmConfiguraMail_mensajes,0);
end;

procedure TfrmConfiguraMail_mensajes.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmConfiguraMail_mensajes.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmConfiguraMail_mensajes.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;

end.




