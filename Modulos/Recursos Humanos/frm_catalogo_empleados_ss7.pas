unit frm_catalogo_empleados_ss7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, Grids, DBGrids, global, frm_connection,
  DB, ADODB, Buttons, ExtCtrls, frxClass, frxDBSet, ZAbstractRODataset, dateUtils,
  ZDataset, ZAbstractDataset, Controls, Menus, UnitExcepciones, UFunctionsGHH,
  UnitValidacion, rxToolEdit, rxCurrEdit, RXDBCtrl, UnitTarifa,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, unitMetodos,
  dxSkinDevExpressStyle, dxSkinFoggy, cxButtons, ZSqlUpdate, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxSplitter,
  cxCurrencyEdit, cxCheckBox, RxMemDS, cxProgressBar, cxLabel, unitGenerales,
  dxLayoutcxEditAdapters, cxCalendar, cxDBEdit, dxLayoutContainer, cxGroupBox,
  cxCheckGroup, cxDBCheckGroup, cxMemo, cxLookupEdit, cxDBLookupEdit,
  dxLayoutControl, dxLayoutControlAdapters, cxCalc, dxBarBuiltInMenu, cxPC, Utilerias,
  frxExportPDF, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,  CRAccess,
  dxSkinVisualStudio2013Light, cxImage, dxToggleSwitch, dxDBToggleSwitch,
  cxListView, cxShellComboBox, DBAccess, Uni, MemDS, dxGDIPlusClasses,jpeg,
  Vcl.ExtDlgs,UnitRH, Frm_VerPDF, cxRadioGroup,unitReportes, cxImageComboBox,
  dxCore, cxDateUtils, dxmdaset, frm_barraH1, cxGridCustomPopupMenu,
  cxGridPopupMenu, UnitEnviarEmail;

type
  TfrmCatalogoEmpleados_ss7 = class(TForm)
    PopupMenu1: TPopupMenu;
    ds_empresa: TDataSource;
    Panel1: TPanel;
    Grid_Bitacora: TcxGrid;
    BView_empresa: TcxGridDBTableView;
    Grid_BitacoraLevel1: TcxGridLevel;
    BView_empresaColumn1: TcxGridDBColumn;
    ds_ciudad: TDataSource;
    cxSplitter1: TcxSplitter;
    Panel3: TPanel;
    frxReporte: TfrxReport;
    ResstructurarSecciones1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    cxDBImage2: TcxDBImage;
    Panel2: TPanel;
    PanelMenu: TPanel;
    PanelActa: TPanel;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl1: TdxLayoutControl;
    cxNombres: TcxDBTextEdit;
    cxApellidoMaterno: TcxDBTextEdit;
    cxApellidoPaterno: TcxDBTextEdit;
    cxEstadoCivil: TcxDBComboBox;
    cxSexo: TcxDBComboBox;
    cxCodigo: TcxDBTextEdit;
    cxCorreo: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    dxLayoutControl2: TdxLayoutControl;
    cxCalle: TcxDBTextEdit;
    cxColonia: TcxDBTextEdit;
    cxInterior: TcxDBTextEdit;
    cxCP: TcxDBTextEdit;
    cxExterior: TcxDBTextEdit;
    cxCiudad: TcxDBLookupComboBox;
    cxLocalidad: TcxDBTextEdit;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxGroupBox3: TcxGroupBox;
    dxLayoutControl3: TdxLayoutControl;
    cxRFC: TcxDBTextEdit;
    cxNSS: TcxDBTextEdit;
    cxCURP: TcxDBTextEdit;
    cxIFE: TcxDBTextEdit;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    cxMovil: TcxDBTextEdit;
    cxGroupBox4: TcxGroupBox;
    dxLayoutControl4: TdxLayoutControl;
    cxInfonavit: TcxDBTextEdit;
    cxAplicacionInfonavit: TcxDBDateEdit;
    cxTipoInfonavit: TcxDBComboBox;
    cxFactorInfonavit: TcxDBCalcEdit;
    cxTerminoInfonavit: TcxDBDateEdit;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup;
    cxEdad: TcxDBCalcEdit;
    cxTelefono: TcxDBTextEdit;
    cxFechaNacimiento: TcxDBDateEdit;
    dxDBToggleSwitch1: TdxDBToggleSwitch;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutAutoCreatedGroup18: TdxLayoutAutoCreatedGroup;
    dxLayoutItem34: TdxLayoutItem;
    Panel5: TPanel;
    cxAceptar: TcxButton;
    cxCancelar: TcxButton;
    PanelAnexos: TPanel;
    PanelPersonal: TPanel;
    cxGridGenerador: TcxGrid;
    CxGridMoePersonal: TcxGridDBTableView;
    cxColCodigo: TcxGridDBColumn;
    CxColNombre: TcxGridDBColumn;
    CxColAP: TcxGridDBColumn;
    CxColAM: TcxGridDBColumn;
    CxColPuesto: TcxGridDBColumn;
    CxColDepartamento: TcxGridDBColumn;
    CxColSexo: TcxGridDBColumn;
    CxColCivil: TcxGridDBColumn;
    CxColEdad: TcxGridDBColumn;
    CxEstatus: TcxGridDBColumn;
    CxColImg: TcxGridDBColumn;
    CxColActivo: TcxGridDBColumn;
    CxLevel1: TcxGridLevel;
    PanelDetalle: TPanel;
    cxSplitterOpciones: TcxSplitter;
    PanelCentro: TPanel;
    PanelTop: TPanel;
    ds_documentos: TDataSource;
    ds_docto_usuarios: TDataSource;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    personal: TUniQuery;
    ds_personal: TUniDataSource;
    cxLeyenda: TcxLabel;
    cxLeyenda2: TcxLabel;
    ds_puesto_empleado: TUniDataSource;
    puesto_empleado: TUniQuery;
    ds_puesto: TUniDataSource;
    puesto: TUniQuery;
    ds_especialidad: TUniDataSource;
    especialidad: TUniQuery;
    ds_salario: TUniDataSource;
    salario: TUniQuery;
    ds_departamento: TUniDataSource;
    departamento: TUniQuery;
    ds_contacto: TUniDataSource;
    contacto: TUniQuery;
    ds_banco_empleado: TUniDataSource;
    banco_empleado: TUniQuery;
    ds_bancos: TUniDataSource;
    bancos: TUniQuery;
    cxPageDetalle: TcxPageControl;
    cxTabDocumentos: TcxTabSheet;
    cxGridDocumentos: TcxGrid;
    cxViewDocumentos: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxSplit1: TcxSplitter;
    PanelDown1: TPanel;
    dxLayoutControl5: TdxLayoutControl;
    cxDocumento: TcxDBLookupComboBox;
    cxDoctoExpedicion: TcxDBDateEdit;
    cxAplicacion: TcxDBDateEdit;
    cxDoctoVencimiento: TcxDBDateEdit;
    cxAgregaDocumento: TcxButton;
    cxActivoDocumento: TdxDBToggleSwitch;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutAutoCreatedGroup19: TdxLayoutAutoCreatedGroup;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutAutoCreatedGroup20: TdxLayoutAutoCreatedGroup;
    dxLayoutItem39: TdxLayoutItem;
    cxTabCargo: TcxTabSheet;
    PanelDown2: TPanel;
    dxLayoutControl6: TdxLayoutControl;
    cxPuesto: TcxDBLookupComboBox;
    cxPuestoDepto: TcxDBLookupComboBox;
    cxPuestoFecha: TcxDBDateEdit;
    dxPuestoActivo: TdxDBToggleSwitch;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutItem42: TdxLayoutItem;
    dxLayoutItem43: TdxLayoutItem;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutAutoCreatedGroup22: TdxLayoutAutoCreatedGroup;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutItem47: TdxLayoutItem;
    cxSplit2: TcxSplitter;
    cxGridCargos: TcxGrid;
    cxGridViewPuesto: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxTabContacto: TcxTabSheet;
    PanelDown3: TPanel;
    dxLayoutControl7: TdxLayoutControl;
    dxDBToggleSwitch2: TdxDBToggleSwitch;
    cxContactoDireccion: TcxDBTextEdit;
    cxContactoFecha: TcxDBDateEdit;
    cxContactoNombre: TcxDBTextEdit;
    cxContactoPorcentaje: TcxDBCalcEdit;
    cxContactoMovil: TcxDBTextEdit;
    cxContactoCorreo: TcxDBTextEdit;
    cxContactoTelefono: TcxDBTextEdit;
    cxContactoParentesco: TcxDBTextEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem57: TdxLayoutItem;
    dxLayoutAutoCreatedGroup26: TdxLayoutAutoCreatedGroup;
    dxLayoutItem53: TdxLayoutItem;
    dxLayoutItem52: TdxLayoutItem;
    dxLayoutItem50: TdxLayoutItem;
    dxLayoutItem56: TdxLayoutItem;
    dxLayoutItem55: TdxLayoutItem;
    dxLayoutItem51: TdxLayoutItem;
    dxLayoutAutoCreatedGroup29: TdxLayoutAutoCreatedGroup;
    dxLayoutItem54: TdxLayoutItem;
    dxLayoutAutoCreatedGroup28: TdxLayoutAutoCreatedGroup;
    dxLayoutItem58: TdxLayoutItem;
    dxLayoutAutoCreatedGroup27: TdxLayoutAutoCreatedGroup;
    cxSplit3: TcxSplitter;
    cxGridContacto: TcxGrid;
    cxViewContacto: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxTabBanco: TcxTabSheet;
    PanelDown4: TPanel;
    dxLayoutControl8: TdxLayoutControl;
    cxBancos: TcxDBLookupComboBox;
    cxBancoSucursal: TcxDBTextEdit;
    cxBancoFecha: TcxDBDateEdit;
    cxBancoActivo: TdxDBToggleSwitch;
    cxButton5: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem59: TdxLayoutItem;
    dxLayoutItem60: TdxLayoutItem;
    dxLayoutItem62: TdxLayoutItem;
    dxLayoutItem63: TdxLayoutItem;
    dxLayoutAutoCreatedGroup30: TdxLayoutAutoCreatedGroup;
    dxLayoutItem65: TdxLayoutItem;
    dxLayoutAutoCreatedGroup32: TdxLayoutAutoCreatedGroup;
    cxSplit4: TcxSplitter;
    cxGridBanco: TcxGrid;
    cxViewBanco: TcxGridDBTableView;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxTabHuella: TcxTabSheet;
    Panel6: TPanel;
    Image1: TImage;
    dsScanner: TDataSource;
    img: TUniQuery;
    zScanner: TUniQuery;
    zPersonal: TUniQuery;
    cxBancoCuenta: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxBancoCLABE: TcxDBTextEdit;
    dxLayoutItem61: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    Timer1: TTimer;
    btnVer: TcxButton;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutAutoCreatedGroup31: TdxLayoutAutoCreatedGroup;
    btnCargar: TcxButton;
    dxLayoutItem66: TdxLayoutItem;
    dxLayoutAutoCreatedGroup33: TdxLayoutAutoCreatedGroup;
    PanelImg: TPanel;
    dxLayoutItem67: TdxLayoutItem;
    dxLayoutAutoCreatedGroup34: TdxLayoutAutoCreatedGroup;
    QryBusca: TUniQuery;
    OpenPicture: TOpenPictureDialog;
    bImagen: TImage;
    zImagen: TUniQuery;
    dxLayoutItem64: TdxLayoutItem;
    cxvalidarActivo: TdxDBToggleSwitch;
    mDocto: TPopupMenu;
    VistaPrevia1: TMenuItem;
    cxFechaRegistro: TcxDBDateEdit;
    dxLayoutItem68: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    cxAgregaCP: TcxButton;
    dxLayoutItem69: TdxLayoutItem;
    cxAgregaCity: TcxButton;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    doctoVP: TUniQuery;
    edtCodigo: TcxDBTextEdit;
    dxLayoutItem70: TdxLayoutItem;
    ColDoc: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup35: TdxLayoutAutoCreatedGroup;
    dxLayoutItem71: TdxLayoutItem;
    cxCargarDocumento: TcxButton;
    dsDoctoVP: TDataSource;
    dlgPDF: TFileOpenDialog;
    dlgSavePDF: TSaveDialog;
    frxLista: TfrxReport;
    frxReport1: TfrxReport;
    cxTabInformes: TcxTabSheet;
    PanelSuperiorInforme: TPanel;
    dxLayoutControl9: TdxLayoutControl;
    opcionImprimir: TcxRadioGroup;
    btnImpInforme: TcxButton;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem73: TdxLayoutItem;
    dxLayoutItem74: TdxLayoutItem;
    frxReportV: TfrxReport;
    frxReportCR: TfrxReport;
    reporte: TUniQuery;
    frxDBEmpleados: TfrxDBDataset;
    Ciudad: TUniQuery;
    documentos: TUniQuery;
    docto_usuarios: TUniQuery;
    zEmpresa: TUniQuery;
    btnEliminarDetalle: TcxButton;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    frxDBContrato: TfrxDBDataset;
    Contrato: TUniQuery;
    cxTabContratos: TcxTabSheet;
    Panel7: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl10Group_Root: TdxLayoutGroup;
    dxLayoutControl10: TdxLayoutControl;
    cbFechaI: TcxDBDateEdit;
    dxLayoutItem72: TdxLayoutItem;
    cbFechaF: TcxDBDateEdit;
    dxLayoutItem75: TdxLayoutItem;
    CXSDI: TcxDBCurrencyEdit;
    dxLayoutItem77: TdxLayoutItem;
    MemoTrabajo: TcxDBMemo;
    dxLayoutItem78: TdxLayoutItem;
    cxSplitterTop: TcxSplitter;
    contratos: TUniQuery;
    dsContratos: TDataSource;
    cbPuesto: TcxDBLookupComboBox;
    dxLayoutItem76: TdxLayoutItem;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    dxLayoutCredencial: TdxLayoutItem;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    dxLayoutVacaciones: TdxLayoutItem;
    btnCartaR: TcxButton;
    dxLayoutCartaResponsiva: TdxLayoutItem;
    btnContrato: TcxButton;
    dxLayoutContratos: TdxLayoutItem;
    Filtro: TcxCheckBox;
    dxLayoutItem83: TdxLayoutItem;
    cxFechaContrato: TcxDBDateEdit;
    dxLayoutItem84: TdxLayoutItem;
    uSalarios: TUniQuery;
    ds_salarios: TDataSource;
    dxLayoutAutoCreatedGroup39: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup40: TdxLayoutAutoCreatedGroup;
    Panel8: TPanel;
    cxPageContrato: TcxPageControl;
    cxPageContrato1: TcxTabSheet;
    CredeTemp: TUniQuery;
    edtGrSangre: TcxDBTextEdit;
    dxLayoutItem119: TdxLayoutItem;
    edtAlergia: TcxDBTextEdit;
    dxLayoutItem120: TdxLayoutItem;
    dxLayoutAutoCreatedGroup57: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup36: TdxLayoutAutoCreatedGroup;
    zVacaciones: TUniQuery;
    cxDuracion: TcxCurrencyEdit;
    dxLayoutItem124: TdxLayoutItem;
    cbFInicio: TcxDateEdit;
    dxLayoutItem123: TdxLayoutItem;
    dxLayoutAutoCreatedGroup38: TdxLayoutAutoCreatedGroup;
    cbFTermino: TcxDateEdit;
    dxLayoutItem125: TdxLayoutItem;
    cxNombreCompleto: TcxGridDBColumn;
    cxQuickFormat: TcxTabSheet;
    PanelFormatos: TPanel;
    cxPageControlFormatos: TcxPageControl;
    Credenciales: TcxTabSheet;
    dxLayoutControl13: TdxLayoutControl;
    ImageCredencial: TcxImage;
    cxButton11: TcxButton;
    cxGroupBox6: TcxGroupBox;
    dxLayoutControl14: TdxLayoutControl;
    cxCredencialVigencia: TcxDateEdit;
    dxLayoutControl14Group_Root: TdxLayoutGroup;
    dxLayoutItem113: TdxLayoutItem;
    cxGroupBox7: TcxGroupBox;
    dxLayoutControl15: TdxLayoutControl;
    dxLayoutControl15Group_Root: TdxLayoutGroup;
    cxImprimirCredencialRapida: TcxButton;
    Panel9: TPanel;
    cxDBImage1: TcxDBImage;
    logoS: TcxImage;
    dxLayoutControl13Group_Root: TdxLayoutGroup;
    dxLayoutItem105: TdxLayoutItem;
    dxLayoutItem106: TdxLayoutItem;
    dxLayoutAutoCreatedGroup52: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup53: TdxLayoutAutoCreatedGroup;
    dxLayoutItem109: TdxLayoutItem;
    dxLayoutItem114: TdxLayoutItem;
    dxLayoutItem117: TdxLayoutItem;
    dxLayoutAutoCreatedGroup55: TdxLayoutAutoCreatedGroup;
    dxLayoutItem122: TdxLayoutItem;
    dxLayoutItem126: TdxLayoutItem;
    cxPageContratoRapido: TcxTabSheet;
    dxLayoutControl11: TdxLayoutControl;
    cxImage1: TcxImage;
    cxGroupBox5: TcxGroupBox;
    dxLayoutControl12: TdxLayoutControl;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit9: TcxTextEdit;
    dxLayoutControl12Group_Root: TdxLayoutGroup;
    dxLayoutItem91: TdxLayoutItem;
    dxLayoutItem92: TdxLayoutItem;
    dxLayoutAutoCreatedGroup43: TdxLayoutAutoCreatedGroup;
    dxLayoutItem95: TdxLayoutItem;
    dxLayoutItem94: TdxLayoutItem;
    dxLayoutAutoCreatedGroup42: TdxLayoutAutoCreatedGroup;
    dxLayoutItem93: TdxLayoutItem;
    dxLayoutItem103: TdxLayoutItem;
    dxLayoutAutoCreatedGroup51: TdxLayoutAutoCreatedGroup;
    cxTextEdit1: TcxTextEdit;
    cxDateEdit1: TcxDateEdit;
    cxComboBox1: TcxComboBox;
    cxDateEdit3: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxDateEdit4: TcxDateEdit;
    cxButton10: TcxButton;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    Trabajo: TcxMemo;
    dxLayoutControl11Group_Root: TdxLayoutGroup;
    dxLayoutItem86: TdxLayoutItem;
    dxLayoutItem90: TdxLayoutItem;
    dxLayoutAutoCreatedGroup47: TdxLayoutAutoCreatedGroup;
    dxLayoutItem87: TdxLayoutItem;
    dxLayoutAutoCreatedGroup49: TdxLayoutAutoCreatedGroup;
    dxLayoutItem88: TdxLayoutItem;
    dxLayoutAutoCreatedGroup50: TdxLayoutAutoCreatedGroup;
    dxLayoutItem89: TdxLayoutItem;
    dxLayoutAutoCreatedGroup44: TdxLayoutAutoCreatedGroup;
    dxLayoutItem97: TdxLayoutItem;
    dxLayoutItem96: TdxLayoutItem;
    dxLayoutItem98: TdxLayoutItem;
    dxLayoutItem101: TdxLayoutItem;
    dxLayoutItem100: TdxLayoutItem;
    dxLayoutItem99: TdxLayoutItem;
    dxLayoutItem102: TdxLayoutItem;
    dxLayoutAutoCreatedGroup45: TdxLayoutAutoCreatedGroup;
    dxLayoutItem104: TdxLayoutItem;
    Panel4: TPanel;
    cxLeyenda3: TcxLabel;
    cxLNac: TcxDBTextEdit;
    dxLayoutItem85: TdxLayoutItem;
    cxGroupBox8: TcxGroupBox;
    dxLayoutItem127: TdxLayoutItem;
    dxLayoutControl16Group_Root: TdxLayoutGroup;
    dxLayoutControl16: TdxLayoutControl;
    cxTalla: TcxDBTextEdit;
    dxLayoutItem128: TdxLayoutItem;
    cxCalzado: TcxDBTextEdit;
    dxLayoutItem129: TdxLayoutItem;
    cxTabEPP: TcxTabSheet;
    cxGridEPPDBTableView1: TcxGridDBTableView;
    cxGridEPPLevel1: TcxGridLevel;
    cxGridEPP: TcxGrid;
    cxColumnEPPProyecto: TcxGridDBColumn;
    cxColumnEPPFolioS: TcxGridDBColumn;
    cxColumnEPPMaterial: TcxGridDBColumn;
    cxColumnEPPCantidad: TcxGridDBColumn;
    uEPP: TUniQuery;
    ds_epp: TDataSource;
    cxColumnEPPFecha: TcxGridDBColumn;
    cxButton8: TcxButton;
    dxLayoutEPP: TdxLayoutItem;
    btnDocumentosxVencer: TcxButton;
    dxLayoutDocVencemiento: TdxLayoutItem;
    cxProveedor: TcxDBLookupComboBox;
    dxLayoutItem132: TdxLayoutItem;
    dsProveedores: TDataSource;
    Proveedores: TUniQuery;
    dxLayoutItem133: TdxLayoutItem;
    cxAgregaLista: TcxButton;
    dxLayoutAutoCreatedGroup37: TdxLayoutAutoCreatedGroup;
    cxCredencialNombre: TcxDBTextEdit;
    cxCredencialNomre: TdxLayoutItem;
    cxCredencialCodigo: TcxDBTextEdit;
    dxLayoutItem107: TdxLayoutItem;
    cxCredencialCategoria: TcxDBTextEdit;
    dxLayoutItem110: TdxLayoutItem;
    cxCredencialAlergias: TcxDBTextEdit;
    dxLayoutItem108: TdxLayoutItem;
    cxCredencialNSS: TcxDBTextEdit;
    dxLayoutItem111: TdxLayoutItem;
    cxCredencialRFC: TcxDBTextEdit;
    dxLayoutItem112: TdxLayoutItem;
    cxCredencialGrupoS: TcxDBTextEdit;
    dxLayoutItem115: TdxLayoutItem;
    cxCredencialContacto: TcxDBTextEdit;
    dxLayoutItem116: TdxLayoutItem;
    cxCredencialTelefono: TcxDBTextEdit;
    dxLayoutItem118: TdxLayoutItem;
    ds_proveedor_personal: TDataSource;
    Proveedor_personal: TUniQuery;
    dxLayoutAutoCreatedGroup48: TdxLayoutAutoCreatedGroup;
    mListaCredenciales: TdxMemData;
    cxNumLista: TcxLabel;
    dxLayoutItem121: TdxLayoutItem;
    mListaCredencialesFieldName: TStringField;
    mListaCredencialesFieldCodigo: TStringField;
    mListaCredencialesFieldCategoria: TStringField;
    mListaCredencialesFieldAlergias: TStringField;
    mListaCredencialesFieldRFC: TStringField;
    mListaCredencialesFieldNSS: TStringField;
    mListaCredencialesFieldGSang: TStringField;
    mListaCredencialesFieldVigencia: TDateField;
    mListaCredencialesFieldContacto: TStringField;
    mListaCredencialesFieldTelefono: TStringField;
    mListaCredencialesFieldId: TIntegerField;
    mListaCredencialesFieldImagen: TGraphicField;
    cxTabIMSS: TcxTabSheet;
    uMovimientosIMSS: TUniQuery;
    ds_movimientosIMSS: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxColumnI1: TcxGridDBColumn;
    cxColumnI2: TcxGridDBColumn;
    cxColumnI3: TcxGridDBColumn;
    InfoImss: TPanel;
    dxLayoutControl17Group_Root: TdxLayoutGroup;
    dxLayoutControl17: TdxLayoutControl;
    cxMovimiento: TdxDBToggleSwitch;
    dxLayoutItem134: TdxLayoutItem;
    cxMovFecha: TcxDBDateEdit;
    dxLayoutItem135: TdxLayoutItem;
    cxMovFecha2: TcxDBDateEdit;
    dxLayoutItem136: TdxLayoutItem;
    dxLayoutItem137: TdxLayoutItem;
    cxButton9: TcxButton;
    dxLayoutAutoCreatedGroup54: TdxLayoutAutoCreatedGroup;
    cxTabComentarios: TcxTabSheet;
    PanelC: TPanel;
    dxLayoutControl18Group_Root: TdxLayoutGroup;
    dxLayoutControl18: TdxLayoutControl;
    cxFechaC: TcxDBDateEdit;
    dxLayoutItem138: TdxLayoutItem;
    cxComentario: TcxDBMemo;
    dxLayoutItem139: TdxLayoutItem;
    gridComentariosDBTableView1: TcxGridDBTableView;
    gridComentariosLevel1: TcxGridLevel;
    gridComentarios: TcxGrid;
    cxColumnC1: TcxGridDBColumn;
    cxColumnC2: TcxGridDBColumn;
    uComentarios: TUniQuery;
    dsComentarios: TDataSource;
    cmbSalario: TcxDBLookupComboBox;
    dxLayoutItem41: TdxLayoutItem;
    cmbProyecto: TcxDBLookupComboBox;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutAutoCreatedGroup21: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup56: TdxLayoutAutoCreatedGroup;
    uProyectos: TUniQuery;
    ds_proyectos: TDataSource;
    frmBarraH11: TfrmBarraH1;
    cbSalario: TcxDBLookupComboBox;
    cbSalarios: TdxLayoutItem;
    cbEspecialidad: TcxDBLookupComboBox;
    cbEspecialidades: TdxLayoutItem;
    dxLayoutAutoCreatedGroup58: TdxLayoutAutoCreatedGroup;
    cxFaja: TcxDBTextEdit;
    dxLayoutItem48: TdxLayoutItem;
    cxTabCursos: TcxTabSheet;
    cxGridViewCurso: TcxGridDBTableView;
    cxGridCursoLevel1: TcxGridLevel;
    cxGridCurso: TcxGrid;
    PanelCursos: TPanel;
    colNombre: TcxGridDBColumn;
    CodigoFrechaI: TcxGridDBColumn;
    CodigoFechaF: TcxGridDBColumn;
    Estado: TcxGridDBColumn;
    dxLayoutControl19Group_Root: TdxLayoutGroup;
    dxLayoutControl19: TdxLayoutControl;
    edtNombreCurso: TcxDBTextEdit;
    dxLayoutItem49: TdxLayoutItem;
    edtInicio: TcxDBDateEdit;
    dxLayoutItem141: TdxLayoutItem;
    edtFinal: TcxDBDateEdit;
    dxLayoutItem142: TdxLayoutItem;
    Cursos: TUniQuery;
    dsCursos: TDataSource;
    zCorreo: TUniQuery;
    cxGridDBColumn8: TcxGridDBColumn;
    btnAutorizar: TcxButton;
    cxGridDBColumn_2: TcxGridDBColumn;
    cxGridDBColumn_1: TcxGridDBColumn;
    dxLayoutModificaciones: TdxLayoutItem;
    btnModificaciones: TcxButton;
    edtCosto: TcxDBTextEdit;
    dxLayoutItem143: TdxLayoutItem;
    dxLayoutAutoCreatedGroup61: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup59: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup60: TdxLayoutAutoCreatedGroup;
    dxLayoutCostoPersonal: TdxLayoutItem;
    btnCostoPersonal: TcxButton;
    PopEmpleados: TPopupMenu;
    Actualizar1: TMenuItem;
    zActualizar: TUniQuery;
    CheckFiltro: TCheckBox;
    dxLayoutFiltroCostoPer: TdxLayoutItem;
    dxLayoutAutoCreatedGroup62: TdxLayoutAutoCreatedGroup;
    edtInicioF: TcxDateEdit;
    dxLayoutFechaICostoPer: TdxLayoutItem;
    edtFinF: TcxDateEdit;
    dxLayoutFechaFCostoPer: TdxLayoutItem;
    cbTipo: TcxComboBox;
    dxLayoutItem148: TdxLayoutItem;
    dxLayoutAutoCreatedGroup24: TdxLayoutAutoCreatedGroup;
    cbtem1: TcxLookupComboBox;
    dxLayoutItem149: TdxLayoutItem;
    tem3: TComboBox;
    dxLayoutItem151: TdxLayoutItem;
    dxLayoutAutoCreatedGroup63: TdxLayoutAutoCreatedGroup;
    zGuardias: TUniQuery;
    dsGuardias: TDataSource;
    zEmbarcacion: TUniQuery;
    dsEmbarcacion: TDataSource;
    coltipo: TcxGridDBColumn;
    ColDivision: TcxGridDBColumn;
    ColGuardia: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup25: TdxLayoutAutoCreatedGroup;
    cbtem2: TcxComboBox;
    dxLayoutItem150: TdxLayoutItem;
    MenuMover: TMenuItem;
    Panel10: TPanel;
    dxLayoutControl20: TdxLayoutControl;
    dxLayoutControl20Group_Root: TdxLayoutGroup;
    dxLayoutItem152: TdxLayoutItem;
    btnMostrar: TcxButton;
    dxLayoutLabel: TdxLayoutItem;
    LabelProceso: TcxLabel;
    dxLayoutBarra: TdxLayoutItem;
    progreso: TcxProgressBar;
    cxTextEdit10: TcxTextEdit;
    dxLayoutItem155: TdxLayoutItem;
    dxLayoutAutoCreatedGroup23: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup41: TdxLayoutAutoCreatedGroup;
    cxTextEdit11: TcxTextEdit;
    dxLayoutItem156: TdxLayoutItem;
    dxLayoutAutoCreatedGroup65: TdxLayoutAutoCreatedGroup;
    btnSoldadores: TcxButton;
    dxLayoutSoldadores: TdxLayoutItem;
    cxNumUnico: TcxDBTextEdit;
    dxLayoutItem159: TdxLayoutItem;
    memoProcedimiento: TcxDBMemo;
    dxLayoutItem158: TdxLayoutItem;
    zFirma: TUniQuery;
    dsFirma: TDataSource;
    dxLayoutAutoCreatedGroup64: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup46: TdxLayoutAutoCreatedGroup;
    btnFirma: TcxButton;
    dxLayoutItem161: TdxLayoutItem;
    lcbFirma: TcxDBLookupComboBox;
    dxLayoutItem160: TdxLayoutItem;
    dxLayoutAutoCreatedGroup67: TdxLayoutAutoCreatedGroup;
    zGuardaFirma: TUniQuery;
    dsGuardaFirma: TDataSource;
    cxTabEntrega: TcxTabSheet;
    Panel11: TPanel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    dxLayoutControl21: TdxLayoutControl;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem163: TdxLayoutItem;
    dxLayoutItem172: TdxLayoutItem;
    cxSplitter2: TcxSplitter;
    zEntreda: TUniQuery;
    dsEntrega: TDataSource;
    cbTipoContrato: TcxComboBox;
    dxLayoutItem162: TdxLayoutItem;
    dxLayoutAutoCreatedGroup66: TdxLayoutAutoCreatedGroup;
    cxNivel: TcxDBTextEdit;
    dxLayoutItem79: TdxLayoutItem;
    dxLayoutAutoCreatedGroup69: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup68: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup70: TdxLayoutAutoCreatedGroup;
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxReporteGetValue(const VarName: string; var Value: Variant);
    procedure BView_empresaDblClick(Sender: TObject);
    procedure cxCancelarClick(Sender: TObject);
    procedure cxAceptarClick(Sender: TObject);

    //procedure ();

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure BuscaPersonalProveedor;

    procedure cxVerClick(Sender: TObject);
    procedure CxGridMoePersonalColumn2PropertiesChange(Sender: TObject);
    procedure cxGridDBTableView2StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxPageDetalleClick(Sender: TObject);
    procedure cxDoctoExpedicionExit(Sender: TObject);
    procedure Enroll;
    procedure activa_detalle_puestos;
    procedure Timer1Timer(Sender: TObject);
    procedure btnVerClick(Sender: TObject);
    procedure btnCargarClick(Sender: TObject);
    procedure VistaPrevia1Click(Sender: TObject);
    procedure cxAgregaCPClick(Sender: TObject);
    procedure cxAgregaCityClick(Sender: TObject);
    procedure cxViewDocumentosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CxGridMoePersonalCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxCargarDocumentoClick(Sender: TObject);
    procedure cxAgregaDocumentoClick(Sender: TObject);
    procedure personalAfterScroll(DataSet: TDataSet);
    procedure btnImpInformeClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure zEmpresaAfterScroll(DataSet: TDataSet);
    procedure btnEliminarDetalleClick(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure btnCartaRClick(Sender: TObject);
    procedure btnContratoClick(Sender: TObject);
    procedure frxReportCRGetValue(const VarName: string; var Value: Variant);
    procedure cxButton10Click(Sender: TObject);
    procedure cxPageContratoClick(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxImprimirCredencialRapidaClick(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxDuracionExit(Sender: TObject);
    procedure cbFechaFExit(Sender: TObject);
    procedure cbFechaIExit(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure btnDocumentosxVencerClick(Sender: TObject);
    procedure cxPageControlFormatosChange(Sender: TObject);
    procedure cxAgregaListaClick(Sender: TObject);
    procedure cxCredencialNombreExit(Sender: TObject);
    procedure cxMovimientoExit(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cmbSalarioExit(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure PanelDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnAutorizarClick(Sender: TObject);
    procedure btnModificacionesClick(Sender: TObject);
    procedure btnCostoPersonalClick(Sender: TObject);
    procedure Actualizar1Click(Sender: TObject);
    procedure ActualizarPersonal(IdPersonal:String;IdEmpresa:Integer);
    procedure BView_empresaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BView_empresaCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CheckFiltroClick(Sender: TObject);
    procedure cbTipoPropertiesChange(Sender: TObject);
    procedure cbTipoExit(Sender: TObject);
    procedure cbtem1Exit(Sender: TObject);
    procedure cbtem2Exit(Sender: TObject);
    procedure MenuMoverClick(Sender: TObject);
    procedure btnMostrarClick(Sender: TObject);
    procedure btnSoldadoresClick(Sender: TObject);
    procedure btnFirmaClick(Sender: TObject);
    procedure lcbFirmaEnter(Sender: TObject);
  private
    { Private declarations }


  public
    { Public declarations }
  end;

  const
        NBioAPIERROR_NONE = 0;

        NBioAPI_FIR_PURPOSE_VERIFY      = 1;

        //Constant for DeviceID
        NBioAPI_DEVICE_ID_NONE          = 0;
        NBioAPI_DEVICE_ID_FDP02_0       = 1;
        NBioAPI_DEVICE_ID_FDU01_0       = 2;
        NBioAPI_DEVICE_ID_AUTO_DETECT   = 255;
        InputBoxMessage = WM_USER + 200;
var

  LastCodeInserted: String;
  OpcButton1    : String ;
  frmCatalogoEmpleados_ss7: TfrmCatalogoEmpleados_ss7;
  sFirma_PEP, sPuesto_PEP, sFirma_Contratista, sPuesto_Contratista: string;
  fechaAntes: tDate;
  local_global_pernocta, local_tipo, sTipoGenerador, sTipoMoneda : string;
  titulo, titulo2,sArc: string;
  cantidadLista : Integer;
  Flap :Boolean= True;
  inactiva,bImagenDefault: boolean;
  btnPermisos : String;
  Archivo   : string;
  lNoGuardarDocto, IsOpen :boolean;

implementation

uses
  Unit1,Comobj,Ufrm_Loading, Form_Esperando, frm_Catalogos_rh_tipos,
  frm_reportesRH, frm_deptos,Frm_FechaVigencia, frm_salarios, frm_firmasNota;
var
        objNBioBSP    : variant;
        objDevice     : variant;
        objExtraction : variant;
        objNSearch    : variant;
        objIndexSearch: variant;

        BuscarPersonal : TUniquery;
{$R *.dfm}

procedure TfrmCatalogoEmpleados_ss7.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.lcbFirmaEnter(Sender: TObject);
begin
  zGuardaFirma.Append;
  zGuardaFirma.FieldByName('IdFirma').AsInteger := zFirma.FieldByName('IdFirma').AsInteger;
  zGuardaFirma.FieldByName('NombreForm').AsString := frmCatalogoEmpleados_ss7.Caption;
  zGuardaFirma.FieldByName('Boton').AsString := btnSoldadores.Caption;
end;

procedure TfrmCatalogoEmpleados_ss7.MenuMoverClick(Sender: TObject);
var  iGrid,indice : Integer;
begin
with CxGridMoePersonal.DataController.DataSource.DataSet do
  for iGrid := 0 to CxGridMoePersonal.DataController.GetSelectedCount - 1 do
  begin
    //las siguientes dos lineas son para posicionar el dataset en cada uno de los registros seleccionados
    indice := CxGridMoePersonal.DataController.GetSelectedRowIndex(iGrid);
    CxGridMoePersonal.DataController.FocusedRowIndex := indice;

    Connection.QryUBusca2.Active:=False;
    Connection.QryUBusca2.SQL.Clear;
    Connection.QryUBusca2.SQL.Text:='UPDATE master_personal SET  IdEmpresa=:IdEmpresa  WHERE IdPersonal=:IdPersonal';
    Connection.qryUBusca2.ParamByName('IdEmpresa').AsInteger:=zEmpresa.FieldByName('IdEmpresa').AsInteger;
    Connection.qryUBusca2.ParamByName('IdPersonal').AsInteger:=Personal.FieldByName('IdPersonal').AsInteger;
    Connection.qryUBusca2.ExecSQL;
  end;
  ShowMessage('Cambio realizado con exito');
  Personal.Refresh;
end;

procedure TfrmCatalogoEmpleados_ss7.PanelDetalleClick(Sender: TObject);
var
  tem:TUniQuery;
begin
  cxTabContratos.TabVisible:=False;
  Credenciales.TabVisible:=False;
  cxTabEPP.TabVisible:=False;
  cxPageDetalle.ActivePageIndex:=0;

  if  zEmpresa.FieldByName('FK_titulo').AsString ='SIANI' then
  begin
    cxTabHuella.TabVisible:=False;
    cxTabContratos.TabVisible:=True;
    Credenciales.TabVisible:=True;
    cxTabEPP.TabVisible:=True;
    btnCartaR.Visible:=True;
    btnContrato.Visible:=True;
    dxLayoutCartaResponsiva.Visible:=True;
    dxLayoutContratos.Visible:=True;
    dxLayoutDocVencemiento.Visible:=True;
    dxLayoutEPP.Visible:=True;
    dxLayoutItem123.Visible:=False;
    dxLayoutItem125.Visible:=False;
    cxViewDocumentos.OptionsView.Footer:=False;
    dxLayoutItem162.Visible:=True;
  end
  else
  begin
    if zEmpresa.FieldByName('FK_Titulo').AsString = 'SIMEGA' then begin
      Credenciales.TabVisible:=True;
      cxTabContratos.TabVisible:=True;
      cxTabEPP.TabVisible:=True;
      cxTabHuella.TabVisible:=False;
      dxLayoutCartaResponsiva.Visible:=True;
      dxLayoutContratos.Visible:=True;
      dxLayoutDocVencemiento.Visible:=True;
      dxLayoutEPP.Visible:=True;
      dxLayoutItem123.Visible:=False;
      dxLayoutItem125.Visible:=False;
      cxViewDocumentos.OptionsView.Footer:=False;
    end
    else begin
      cxTabHuella.Enabled:=True;
      cxQuickFormat.TabVisible:=False;
    end;
  end;
   if PanelDetalle.Visible then
   begin
       cxSplitterOpciones.Visible := False;
       PanelDetalle.Visible       := False;
       cxCancelarDetalle.OnClick(Sender);
   end
   else
   begin
       PanelDetalle.Visible       := True;
       cxSplitterOpciones.Visible := True;
       cxPageDetalle.OnClick(sender);
   end;
end;

procedure TfrmCatalogoEmpleados_ss7.personalAfterScroll(DataSet: TDataSet);
begin
  if IsOpen then
  begin

    if cxPageDetalle.ActivePage = cxTabDocumentos then
     begin
        docto_usuarios.Active := False;
        docto_usuarios.ParamByName('IdPersonal').AsInteger := personal.FieldByName('IdPersonal').AsInteger;
        docto_usuarios.Open;
     end;

     if cxPageDetalle.ActivePage = cxTabCargo then
     begin
        puesto_empleado.Active := False;
        AsignarSQL(puesto_empleado,'cargo_personal',pUpdate);
        FiltrarDataSet(puesto_empleado,'IdPersonal,IdEmpresa',[personal.FieldByName('IdPersonal').AsInteger,zEmpresa.FieldByName('IdEmpresa').AsInteger]);
        puesto_empleado.Open;
     end;

     if cxPageDetalle.ActivePage = cxTAbContacto then
     begin
        contacto.Active := False;
        contacto.ParamByName('IdPersonal').AsInteger := personal.FieldByName('IdPersonal').AsInteger;
        contacto.Open;
     end;

     if cxPageDetalle.ActivePage = cxTabBanco then
     begin
        banco_empleado.Active := False;
        banco_empleado.ParamByName('IdPersonal').AsInteger := personal.FieldByName('IdPersonal').AsInteger;
        banco_empleado.Open;
     end;

     if cxPageDetalle.ActivePage = cxTabContratos then
     begin
         if cxPageContrato.ActivePageIndex = 1 then
         begin
            AsignarSQL(zEntreda,'devolucion',pUpdate);
            FiltrarDataSet(zEntreda,'IdPersonal',[personal.FieldByName('IdPersonal').AsInteger]);
            zEntreda.Open;
         end
         else
         begin
            uProyectos.Active:=False;
            AsignarSQL(uProyectos,'ordenesdetrabajo',pUpdate);
            FiltrarDataSet(uProyectos,'Contrato',[GLOBAL_CONTRATO]);
            uProyectos.Open;

            uSalarios.Active:=False;
            AsignarSQL(uSalarios,'rhu_salarios',pUpdate);
            FiltrarDataSet(uSalarios,'Id,Empresa,Nomina,Activo',[-1,zEmpresa.FieldByName('IdEmpresa').AsInteger,-1,'Si']);
            uSalarios.Open;

            puesto_empleado.Active := False;
            AsignarSQL(puesto_empleado,'cargo_personal',pUpdate);
            FiltrarDataSet(puesto_empleado,'IdPersonal,IdEmpresa',[personal.FieldByName('IdPersonal').AsInteger,zEmpresa.FieldByName('IdEmpresa').AsInteger]);
            puesto_empleado.Open;

            AsignarSQL(contratos,'Contratos',pUpdate);
            FiltrarDataSet(contratos,'IdPersonal',[personal.FieldByName('IdPersonal').AsInteger]);
            Contratos.Open;
         end;
     end;

     if cxPageDetalle.ActivePage = cxTabEPP then begin
       AsignarSQL(uEPP,'empleados_entrega_epp',pUpdate);
       FiltrarDataSet(uEPP,'Empleado',[personal.FieldByName('IdPersonal').AsInteger]);
       uEPP.Open;
     end;

    if cxPageDetalle.ActivePage = cxTabIMSS then begin
      titulo2:='Movimientos IMSS';
      cxLeyenda2.Caption:=titulo2;
      PanelDown.Visible:=False;

      AsignarSQL(uMovimientosIMSS,'movimientos_imss',pUpdate);
      FiltrarDataSet(uMovimientosIMSS,'Id,Empleado',[-1,personal.FieldByName('IdPersonal').AsInteger]);
      uMovimientosIMSS.Open;

    end;

    if cxPageDetalle.ActivePage = cxTabComentarios then begin
      titulo2:='Comentarios';
      cxLeyenda2.Caption:=titulo2;
      PanelDown.Visible:=False;

      AsignarSQL(uComentarios,'comentarios_personal',pUpdate);
      FiltrarDataSet(uComentarios,'Id,Personal',[-1,personal.FieldByName('IdPersonal').AsInteger]);
      uComentarios.Open;

    end;

    if cxPageDetalle.ActivePage = cxTabCursos then begin
      titulo2:='Cursos';
      cxLeyenda2.Caption:=titulo2;
      PanelDown.Visible:=False;

      Cursos.Filtered:=False;
      Cursos.Filter:='IdPersonal = '+ QuotedStr(personal.FieldByName('IdPersonal').AsString);
      Cursos.Filtered:=True;
    end;
    cxLeyenda3.Caption:='Seleccionado: '+personal.FieldByName('NombreCompleto').AsString;
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

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

procedure TfrmCatalogoEmpleados_ss7.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

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

procedure TfrmCatalogoEmpleados_ss7.Timer1Timer(Sender: TObject);
begin
{    if (Flap = True) then
    begin
      personal.Active := False;
      personal.ParamByName('Empresa').AsInteger    := zEmpresa.FieldByName('IdEmpresa').AsInteger;
      personal.Open;
      Timer1.Enabled:=False;
    end;}
end;

procedure TfrmCatalogoEmpleados_ss7.VistaPrevia1Click(Sender: TObject);
begin


  if docto_usuarios.RecordCount > 0 then
  begin
    AsignarSQL(doctoVP,'docto_empleadoVP',pUpdate);
    FiltrarDataSet(doctoVP,'IdDocto',[docto_usuarios.FieldByName('IdDocxpersonal').AsInteger]);
    doctoVP.Open;

    if not doctoVP.FieldByName('DocumentoDigital').IsNull then
    begin
      global_Temp := 'docto_empleado_'+personal.FieldByName('CodigoPersonal').AsString+'.pdf';
      TBlobField(doctoVP.FieldByName('DocumentoDigital')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp );
      Application.CreateForm(TFrmVerPDF, FrmVerPDF);
      FrmVerPDF.ShowModal;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.zEmpresaAfterScroll(DataSet: TDataSet);
begin
  if inactiva = False then
  BEGIN
//      IsOpen := False;
//      personal.Active := False;
//      personal.ParamByName('Empresa').AsInteger    := zEmpresa.FieldByName('IdEmpresa').AsInteger;
//      personal.Open;
//      IsOpen := True;
//      if zEmpresa.FieldByName('IdEmpresa').AsInteger = 6 then
//      begin
//        logoS.Visible:=True;
//      end
//      else
//      begin
//        logoS.Visible:=False;
//      end;
  END;
end;

procedure TfrmCatalogoEmpleados_ss7.FormShow(Sender: TObject);
var tem:TUniQuery;
begin
  btnPermisos := global_btnPermisos;
  try
    if not DirectoryExists(ExtractFilePath(Application.ExeName)+'CWS') then
    begin
      CreateDir(ExtractFilePath(Application.ExeName)+'CWS');
    end;
    CxGridMoePersonal.RestoreFromIniFile(ExtractFilePath(Application.ExeName)+'CWS\gridEmpleados_'+self.Name);
  except
        ;
  end;

  if global_contrato = 'CMMI' then
    MenuMover.Visible := False;

  cxPageDetalle.ActivePageIndex := 0;
  btnCargar.Visible:=False;
  titulo:='Lista de Empleados';
  titulo2:='Huella Empleado';
  cxLeyenda.Caption:=titulo;
  cxLeyenda2.Caption:=titulo2;
  cbFInicio.Date:=now;
  cbFTermino.Date:=now;
  if not (global_grupo = 'ADMON') then
    cxvalidarActivo.Enabled := False
  else
    cxvalidarActivo.Enabled := True;

  zEmpresa.Active := False;
  zEmpresa.Open;

  ciudad.Active := False;
  ciudad.ParamByName('IdCiudad').AsInteger := -1;
  ciudad.ParamByName('IdEstado').AsInteger := -1;
  ciudad.ParamByName('Activo').AsString    := 'Si';
  ciudad.Open;

  documentos.Active := False;
  documentos.Open;
  IsOpen := False;
  personal.Active := False;
  personal.ParamByName('Empresa').AsInteger    := zEmpresa.FieldByName('IdEmpresa').AsInteger;
  personal.ParamByName('Activo').AsString    := 'Si';
  personal.Open;

  Cursos.Active:=False;
  Cursos.SQL.Text:='select * from rh_cursos';
  Cursos.Open;

  inactiva:=False;
  IsOpen:= True;

  cxSplitterOpciones.Visible := False;
  PanelDetalle.Visible := False;
  cxPageDetalle.ActivePageIndex := 0;
  PanelAnexos.Align := alClient;
  Flap:= True;

  tem:=TUniQuery.Create(Self);
  tem.Connection:=connection.Uconnection;
  tem.Active:=False;
  tem.SQL.Text:='SELECT BiometricoActivo FROM configuracion';
  tem.Open;
  if tem.FieldByName('BiometricoActivo').AsString <> 'Si' then
  begin
    cxvalidarActivo.Enabled:=False;
  end
  else
  begin
    cxvalidarActivo.Enabled:=True;
  end;
  guardar_leer_grid(BView_empresa,frmCatalogoEmpleados_ss7,0);
  guardar_leer_grid(CxGridMoePersonal,frmCatalogoEmpleados_ss7,0);
  guardar_leer_grid(cxGridViewPuesto,frmCatalogoEmpleados_ss7,0);
  guardar_leer_grid(cxGrid1DBTableView1,frmCatalogoEmpleados_ss7,0);
  guardar_leer_grid(cxViewContacto,frmCatalogoEmpleados_ss7,0);
  guardar_leer_grid(cxViewBanco,frmCatalogoEmpleados_ss7,0);
  guardar_leer_grid(cxGrid2DBTableView1,frmCatalogoEmpleados_ss7,0);
  guardar_leer_grid(gridComentariosDBTableView1,frmCatalogoEmpleados_ss7,0);
  guardar_leer_grid(cxViewDocumentos,frmCatalogoEmpleados_ss7,0);
  guardar_leer_grid(cxGridEPPDBTableView1,frmCatalogoEmpleados_ss7,0);
  guardar_leer_grid(cxGridViewCurso,frmCatalogoEmpleados_ss7,0);
  PermisosBotones(frmCatalogoEmpleados_ss7,btnPermisos);

  CxGridMoePersonal.DataController.Groups.FullExpand;

  dxLayoutLabel.Visible := False;
  dxLayoutBarra.Visible     := False;
end;

procedure TfrmCatalogoEmpleados_ss7.frxReportCRGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'CANTIDAD_LETRA') = 0 then
  begin
     Value := LetraMontos('MXN','PESOS', Contrato.FieldByName('SDI').AsFloat );
  end;

  if CompareText(VarName, 'SUELDO_LETRA') = 0 then
  begin
     Value := LetraMontos('MXN','PESOS', Contrato.FieldByName('Importe').AsFloat );
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.frxReporteGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'FECHA_INICIO') = 0 then
//    Value := tdIdFecha.Date;

  if CompareText(VarName, 'FECHA_FINAL') = 0 then
//    Value := tdIdFechaTermino.Date;

  if CompareText(VarName, 'FECHA_REPORTE') = 0 then
    Value := global_fecha_barco;

  if CompareText(VarName, 'DIAS_TRANSCURRIDOS') = 0 then
    Value := global_dias_por_transcurrir;

  if CompareText(VarName, 'DIAS_POR_TRANSCURRIR') = 0 then
    Value := global_dias_transcurridos;

  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
     Value := sSuperIntendente;

  If CompareText(VarName, 'SUPERVISOR') = 0 then
     Value := sSupervisor;

  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
     Value := sSupervisorTierra;

  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
  begin
      if pos('#', sPuestoSuperIntendente) > 0 then
         Value := copy(sPuestoSuperIntendente,0, pos('#', sPuestoSuperIntendente)-1) +#13+ copy(sPuestoSuperIntendente,pos('#', sPuestoSuperIntendente)+1, length(sPuestoSuperIntendente))
      else
         Value := sPuestoSuperIntendente
  end;

  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
  begin
      if pos('#', sPuestoSupervisor) > 0 then
         Value := copy(sPuestoSupervisor,0, pos('#', sPuestoSupervisor)-1) +#13+ copy(sPuestoSupervisor,pos('#', sPuestoSupervisor)+1, length(sPuestoSupervisor))
      else
         Value := sPuestoSupervisor
  end;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
  begin
      if pos('#', sPuestoSupervisorTierra) > 0 then
         Value := copy(sPuestoSupervisorTierra,0, pos('#', sPuestoSupervisorTierra)-1) +#13+ copy(sPuestoSupervisorTierra,pos('#', sPuestoSupervisorTierra)+1, length(sPuestoSupervisorTierra))
      else
         Value := sPuestoSupervisorTierra
  end;

end;

procedure TfrmCatalogoEmpleados_ss7.Actualizar1Click(Sender: TObject);
var IndexFocus :Integer;
  zActualiza, zMoneda : tUniquery;
  indice, iGrid    : integer;
  lContinua : boolean;
  cerrar:Boolean;
begin
    iGrid     := 0;
    try
      indice := CxGridMoePersonal.DataController.GetSelectedRowIndex(iGrid);
    Except
      on e:exception do begin
          //nothing to do
      end;
    end;

    with CxGridMoePersonal.DataController.DataSource.DataSet do
    for iGrid := 0 to CxGridMoePersonal.DataController.GetSelectedCount - 1 do
    begin
      indice := CxGridMoePersonal.DataController.GetSelectedRowIndex(iGrid);
      CxGridMoePersonal.DataController.FocusedRowIndex := indice;

      ActualizarPersonal(Personal.FieldByName('IdPersonal').AsString,zEmpresa.FieldByName('IdEmpresa').AsInteger);

    end;
  ShowMessage('Actualizado con exito');
  Personal.Refresh;
  IsOpen := False;
      personal.Active := False;
      personal.ParamByName('Empresa').AsInteger    := zEmpresa.FieldByName('IdEmpresa').AsInteger;
      personal.Open;
      IsOpen := True;
      if zEmpresa.FieldByName('IdEmpresa').AsInteger = 6 then
      begin
        logoS.Visible:=True;
      end
      else
      begin
        logoS.Visible:=False;
      end;

end;

procedure TfrmCatalogoEmpleados_ss7.ActualizarPersonal(IdPersonal: String;
  IdEmpresa: Integer);
var
 registro,name:Integer;
 sparametro:String;
begin
      zActualizar.Active:=False;
      zActualizar.ParamByName('Id').AsString:=IdPersonal;
      zActualizar.Open;

      Connection.QryUBusca2.Active:=False;
      Connection.QryUBusca2.SQL.Clear;
      Connection.QryUBusca2.SQL.Add('select * from master_personal Where Nombre = :Nombre and APaterno = :APaterno and AMaterno= :AMaterno and Rfc = :rfc and IdEmpresa = :IdEmpresa and Activo = :Activo');
      Connection.QryUBusca2.ParamByName('Nombre').AsString:=zActualizar.FieldByName('Nombre').AsString;
      Connection.QryUBusca2.ParamByName('APaterno').AsString:=zActualizar.FieldByName('APaterno').AsString;
      Connection.QryUBusca2.ParamByName('AMaterno').AsString:=zActualizar.FieldByName('AMaterno').AsString;
      Connection.QryUBusca2.ParamByName('rfc').AsString:=zActualizar.FieldByName('Rfc').AsString;
      Connection.QryUBusca2.ParamByName('Activo').AsString:='Si';
      Connection.QryUBusca2.ParamByName('IdEmpresa').AsInteger:=IdEmpresa;
      Connection.QryUBusca2.Open;

      if Connection.QryUBusca2.RecordCount>0 then
      begin
         ShowMessage('El Empledo ya esta registrado');
         exit;
      end;

      Connection.zUCommand.Active := False;
      Connection.zUCommand.SQL.Clear;
      Connection.zUCommand.SQL.Add(Ufuncsql(zActualizar, 'master_personal'));
      Connection.zUCommand.Active := False;
      sparametro := 'param' + trim(inttostr(zActualizar.fieldcount + 1));


      for registro := 1 to zActualizar.fieldcount do
      begin
        sparametro := 'param' + trim(inttostr(registro));
        connection.zUCommand.Params.parambyname(sparametro).datatype := zActualizar.fields[registro - 1].datatype;

        for name := 1 to zActualizar.fieldcount do
        begin
          if (zActualizar.fields[registro - 1].DisplayName =zActualizar.fields[name - 1].DisplayName) then
          begin
              if (zActualizar.fields[registro - 1].DisplayName = 'IdPersonal')then
                connection.zUCommand.Params.parambyname(sparametro).value := 0
              else
                if (zActualizar.fields[registro - 1].DisplayName = 'IdEmpresa')then
                  connection.zUCommand.Params.parambyname(sparametro).value := IdEmpresa
                  else
                    if (zActualizar.fields[registro - 1].DisplayName = 'CodigoPersonal')then
                      connection.zUCommand.Params.parambyname(sparametro).value := autoFolioCod(personal, 'master_personal',IdEmpresa)
                    else
                      connection.zUCommand.Params.parambyname(sparametro).value := zActualizar.fieldValues[zActualizar.fields[registro - 1].DisplayName];

          end;
        end;
      end;
      connection.zUCommand.ExecSQL;
end;


procedure TfrmCatalogoEmpleados_ss7.btnAddClick(Sender: TObject);
begin
   frmBarraH11.btnAddClick(Sender);
   btnCargar.Visible:=True;
   cxLeyenda.Caption:=titulo + '[Añadiendo]';
   PanelActa.Visible := True;

   personal.Append;
   personal.FieldByName('CodigoPersonal').AsString := autoFolio(personal, 'master_personal',zEmpresa.FieldByName('IdEmpresa').AsInteger);
   personal.FieldByName('Activo').AsString := 'Si';
   personal.FieldByName('FechaAlta').AsDateTime := date;
   personal.FieldByName('FechaNacimiento').AsDateTime := date;
   personal.FieldByName('AplicacionInfonavit').AsDateTime:= date;
   personal.FieldByName('TerminoInfonavit').AsDateTime:= date;
   personal.FieldByName('Sexo').AsString := 'Hombre';
   personal.FieldByName('EstadoCivil').AsString := 'Soltero';
   personal.FieldByName('TipoInfonavit').AsString := 'Fijo';
   personal.FieldByName('FactorInfonavit').AsFloat := 0;
   cxCiudad.DataBinding.DataSource.DataSet.FieldByName('IdCiudad').AsInteger := ciudad.FieldByName('IdCiudad').AsInteger;
   cxSexo.ItemIndex := 0;
   cxEstadoCivil.ItemIndex := 0;
   cxTipoInfonavit.ItemIndex := 0;
   cxCodigo.Properties.ReadOnly := True;
   Grid_bitacora.Enabled := False;
   PanelAnexos.Visible := False;
   cxNombres.SetFocus;
   personal.Edit;
end;

procedure TfrmCatalogoEmpleados_ss7.btnAutorizarClick(Sender: TObject);
begin
  try
   if (puesto_empleado.FieldByName('pNuevo').AsString <> '0') then
   begin
      connection.QryUBusca2.Active:=False;
      connection.QryUBusca2.SQL.Text:='UPDATE rh_puesto_empleado SET IdPuesto=:IdPuesto,  IdPuestoNuevo=:IdPuestoNuevo WHERE IdPuestoEmpleado=:IdPuestoEmpleado';
      connection.QryUBusca2.ParamByName('IdPuesto').AsInteger:=puesto_empleado.FieldByName('IdPuestoNuevo').AsInteger;
      connection.QryUBusca2.ParamByName('IdPuestoNuevo').AsInteger:=0;
      connection.QryUBusca2.ParamByName('IdPuestoEmpleado').AsInteger:=puesto_empleado.FieldByName('IdPuestoEmpleado').AsInteger;
      connection.QryUBusca2.ExecSQL;
      puesto_empleado.Refresh;
   end;
   if (puesto_empleado.FieldByName('SalarioNuevo').AsString <> '') then
   begin
      connection.QryUBusca2.Active:=False;
      connection.QryUBusca2.SQL.Text:='UPDATE rh_puesto_empleado SET IdSalario=:IdSalario, IdNuevoSalario=:IdNuevoSalario WHERE IdPuestoEmpleado=:IdPuestoEmpleado';
      connection.QryUBusca2.ParamByName('IdSalario').AsInteger:=puesto_empleado.FieldByName('IdNuevoSalario').AsInteger;
      connection.QryUBusca2.ParamByName('IdNuevoSalario').AsInteger:=0;
      connection.QryUBusca2.ParamByName('IdPuestoEmpleado').AsInteger:=puesto_empleado.FieldByName('IdPuestoEmpleado').AsInteger;
      connection.QryUBusca2.ExecSQL;
      puesto_empleado.Refresh;
   end;
  except
      ;
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.btnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCatalogoEmpleados_ss7.btnCargarClick(Sender: TObject);
var
  size: Real;
begin
    bImagen.Picture.Bitmap := nil;
    OpenPicture.Title := 'Inserta Imagen';
    OpenPicture.Filter:='Archivos de Imagen JPG (*.jpg)|*.JPG|Archivos de Imagen JPEG (*.jpeg)|*.JPEG';
    sArc := '';
    if OpenPicture.Execute then
    begin
      try
        sArc := RedimensionarJPG(OpenPicture.FileName);
        size := Tamanyo(sArc);
        if size <= 350 then
         begin
             bImagen.Picture.LoadFromFile(sArc);
             if personal.State = dsEdit then
             begin
              zImagen.Active:=False;
              zImagen.SQL.Clear;
              zImagen.SQL.Add('Update master_personal set Imagen = :img where IdPersonal = :Id');
              zImagen.Params.ParamByName('img').LoadFromFile(sArc, ftGraphic);
              zImagen.Params.ParamByName('Id').AsInteger:=Personal.FieldByName('IdPersonal').AsInteger;
              zImagen.ExecSQL;
             end;
             DeleteFile(sArc);
         end
        else
          MessageDlg('La imagen a adjuntar no debe ser mayor a 350 kb.', mtInformation, [mbOk], 0);
      except
        begin
           bImagen.Picture.LoadFromFile('');
           DeleteFile(sArc);
        end;
      end
    end;
end;

procedure TfrmCatalogoEmpleados_ss7.btnEditClick(Sender: TObject);
begin
   frmBarraH11.btnEditClick(Sender);
   btnCargar.Visible:=True;
   PanelActa.Visible := True;
   cxLeyenda.Caption:=titulo+'[Editando]';

   personal.Edit;

   cxCodigo.Properties.ReadOnly := False;
   Grid_bitacora.Enabled := False;
   PanelAnexos.Visible := False;
   if zEmpresa.FieldByName('FK_Titulo').AsString = 'TYPHOON' then begin
     cxFechaRegistro.Enabled:=False;
   end;
end;

procedure TfrmCatalogoEmpleados_ss7.btnEliminarDetalleClick(Sender: TObject);
begin
   if cxPageDetalle.ActivePage = cxTabDocumentos then
   begin
     AsignarSQL(doctoVP,'docto_empleadoVP',pUpdate);
     FiltrarDataSet(doctoVP,'IdDocto',[docto_usuarios.FieldByName('IdDocxpersonal').AsInteger]);
     doctoVP.Open;
     if MessageDlg('Desea eliminar documento',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
      doctoVP.Edit;
      doctoVP.FieldByName('Activo').AsString := 'No';
      doctoVP.Post;
      docto_usuarios.Refresh;
     end;
   end;
end;

procedure TfrmCatalogoEmpleados_ss7.btnFirmaClick(Sender: TObject);
begin

       global_frmActivo := 'frm_catalogo_empleados';
       if not MostrarFormChild('frmFirmasNota', global_dxBarManagerPrincipal) then
       begin
          Application.CreateForm(TfrmFirmasNota, frmFirmasNota);
          frmFirmasNota.show;

          frmFirmasNota.zFirma2.Filtered := False;
          frmFirmasNota.zFirma2.Filter   := zFirma.Filter;
          frmFirmasNota.zFirma2.Filtered := True;

          frmFirmasNota.frmBarraH11.btnAdd.Click;

       end;
end;

procedure TfrmCatalogoEmpleados_ss7.btnImpInformeClick(Sender: TObject);
var
  empGrid: String;
  contEmpGrid,j : Integer;
begin
  contEmpGrid:=cxGridMoePersonal.ViewData.RecordCount;
  for j := 0 to (contEmpGrid - 1) do
  begin
    try
      empGrid := empGrid + cxGridMoePersonal.ViewData.Rows[j].Values[0] +',';
    except
      ;
    end;
  end;

  case opcionImprimir.EditValue of
    1: begin

    end;
    2: begin

    end;
    3: begin
      
    end;
    4: begin
      
    end;
    5: begin
      generar_reporte_grid(cxGridMoePersonal,'Reporte de Empleados');
    end;
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.btnModificacionesClick(Sender: TObject);
begin
    Contrato.Active:=False;
    Contrato.SQl.Text:='select k.sContrato, k.sIdUsuario, k.dIdFecha, CONVERT(k.sHora,TIME) as sHora, '+
    'k.sDescripcion, k.lOrigen, k.sModulo, k.sSubModulo '+
    'from kardex_sistema as k where k.lOrigen = '+ QuotedStr('Recursos Humanos')+' ';
    Contrato.Open;
    frxReportCR.LoadFromFile(global_files +global_miReporte+'_RH_Modificaciones.fr3');
    frxReportCR.ShowReport();
end;

procedure TfrmCatalogoEmpleados_ss7.btnMostrarClick(Sender: TObject);
begin
  personal.Active := False;
  personal.ParamByName('Empresa').AsInteger := zEmpresa.FieldByName('IdEmpresa').AsInteger;
  personal.ParamByName('Activo').AsString   := '-1';
  personal.Open;
end;

procedure TfrmCatalogoEmpleados_ss7.btnRefreshClick(Sender: TObject);
begin
   personal.Refresh;
end;

procedure TfrmCatalogoEmpleados_ss7.BView_empresaCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  activa_detalle_puestos;
end;

procedure TfrmCatalogoEmpleados_ss7.BView_empresaDblClick(Sender: TObject);
begin
    if BView_Empresa.OptionsView.CellAutoHeight then
       BView_Empresa.OptionsView.CellAutoHeight := False
    else
       BView_Empresa.OptionsView.CellAutoHeight := True;
end;

procedure TfrmCatalogoEmpleados_ss7.BView_empresaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if shift=[ssright] then
  begin
    inactiva:=True;
  end;

  if shift=[ssleft] then
  begin
      IsOpen := False;
      personal.Active := False;
      personal.ParamByName('Empresa').AsInteger    := zEmpresa.FieldByName('IdEmpresa').AsInteger;
      personal.Open;
      IsOpen := True;
      if zEmpresa.FieldByName('IdEmpresa').AsInteger = 6 then
      begin
        logoS.Visible:=True;
      end
      else
      begin
        logoS.Visible:=False;
      end;
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    CxGridMoePersonal.StoreToIniFile(ExtractFilePath(Application.ExeName)+'CWS\gridEmpleados_'+self.Name);
  except
    ;
  end;
  guardar_leer_grid(BView_empresa,frmCatalogoEmpleados_ss7,1);
  guardar_leer_grid(CxGridMoePersonal,frmCatalogoEmpleados_ss7,1);
  guardar_leer_grid(cxGridViewPuesto,frmCatalogoEmpleados_ss7,1);
  guardar_leer_grid(cxGrid1DBTableView1,frmCatalogoEmpleados_ss7,1);
  guardar_leer_grid(cxViewContacto,frmCatalogoEmpleados_ss7,1);
  guardar_leer_grid(cxViewBanco,frmCatalogoEmpleados_ss7,1);
  guardar_leer_grid(cxGrid2DBTableView1,frmCatalogoEmpleados_ss7,1);
  guardar_leer_grid(gridComentariosDBTableView1,frmCatalogoEmpleados_ss7,1);
  guardar_leer_grid(cxViewDocumentos,frmCatalogoEmpleados_ss7,1);
  guardar_leer_grid(cxGridEPPDBTableView1,frmCatalogoEmpleados_ss7,1);
  guardar_leer_grid(cxGridViewCurso,frmCatalogoEmpleados_ss7,1);
  action := cafree;
end;

procedure TfrmCatalogoEmpleados_ss7.cbFechaFExit(Sender: TObject);
begin
  if (not VarIsNull(Contratos.FieldByName('FechaInicio').AsDateTime)) and (not VarIsNull(Contratos.FieldByName('FechaFinal').AsDateTime)) then begin
    cxDuracion.EditValue:=trunc(Contratos.FieldByName('FechaFinal').AsDateTime - Contratos.FieldByName('FechaInicio').AsDateTime)+1;
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.cbFechaIExit(Sender: TObject);
begin
  if (not VarIsNull(Contratos.FieldByName('FechaInicio').AsDateTime)) and (not VarIsNull(Contratos.FieldByName('FechaFinal').AsDateTime)) then begin
    cxDuracion.EditValue:=trunc(Contratos.FieldByName('FechaFinal').AsDateTime - Contratos.FieldByName('FechaInicio').AsDateTime)+1;
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.cbtem1Exit(Sender: TObject);
begin
  puesto_empleado.FieldByName('Divicion').ASString:=cbtem1.Text;
end;

procedure TfrmCatalogoEmpleados_ss7.cbtem2Exit(Sender: TObject);
begin
 // puesto_empleado.FieldByName('Guardia').ASString:=cbtem2.Text+' '+tem3.text;
end;

procedure TfrmCatalogoEmpleados_ss7.cbTipoExit(Sender: TObject);
begin
  puesto_empleado.FieldByName('Tipo').ASString:=cbTipo.Text;
end;

procedure TfrmCatalogoEmpleados_ss7.cbTipoPropertiesChange(Sender: TObject);
begin
//  if cbTipo.Text = 'Tierra' then
//   begin
//     zGuardias.Close;
//     zEmbarcacion.Close;
//     zEmbarcacion.ParamByName('id').AsString:='2';
//     zEmbarcacion.Open;
//     dxLayoutItem149.Visible:=True;
//     dxLayoutItem149.Caption:='Division';
//     dxLayoutItem150.Visible:=False;
//     dxLayoutItem151.Visible:=False;
//     dxLayoutItem42.Visible:=True;
//   end
//   else
//   begin
//     zGuardias.Open;
//     zEmbarcacion.Close;
//     zEmbarcacion.ParamByName('id').AsString:='1';
//     zEmbarcacion.Open;
//     dxLayoutItem149.Visible:=True;
//     dxLayoutItem149.Caption:='Embarcacion';
//
//     dxLayoutItem150.Visible:=True;
//     dxLayoutItem150.Caption:='Guardia';
//
//     dxLayoutItem151.Visible:=True;
//      dxLayoutItem42.Visible:=False;
//
//      while not zGuardias.Eof do
//       begin
//          cbtem2.Properties.Items.Add(zGuardias.FieldByName('Guardia').AsString);
//          zGuardias.Next;
//       end;
//   end;
end;

procedure TfrmCatalogoEmpleados_ss7.CheckFiltroClick(Sender: TObject);
begin
  if CheckFiltro.Checked then
  begin
    edtInicioF.Enabled:=True;
    edtFinF.Enabled:=True;
  end
  else
  begin
    edtInicioF.Enabled:=False;
    edtFinF.Enabled:=False;
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.cmbSalarioExit(Sender: TObject);
begin
  if Contratos.State in [dsInsert,dsEdit] then begin
    uSalarios.Locate('IdSalario',Contratos.FieldByName('IdSalario').AsInteger,[]);
    try
      Contratos.FieldByName('SDI').AsFloat:=uSalarios.FieldByName('SDI').AsFloat;
    Except
    end;
  end;
  SalidaControl(Sender);
end;

procedure TfrmCatalogoEmpleados_ss7.cxAceptarClick(Sender: TObject);
var
     SavePlace     : TBookmark;
     sEstado, Id : string;
     FlapImg:boolean;
begin
    FlapImg:=False;
    sEstado := 'Editar';
    if personal.State = dsInsert then
       sEstado := 'Nuevo';

    IsOpen := False;
    if personal.State = dsEdit then
    begin
      flapImg:=True;
    end
    else
    begin
     personal.FieldByName('FechaAlta').AsDateTime := date;
    end;

    personal.FieldByName('IdEmpresa').AsInteger  := zEmpresa.FieldByName('IdEmpresa').AsInteger;
    personal.Post;

    Id := personal.FieldByName('CodigoPersonal').AsString;

    flapImg:= False;

    messageDLG('Personal guardado con éxito!', mtInformation, [mbOk], 0);
    bImagen.Picture.Graphic := nil;
    PanelActa.Visible := False;

//      CargaDatos;
    SavePlace := CxGridMoePersonal.DataController.DataSource.DataSet.GetBookmark;

    personal.Refresh;

    try
       CxGridMoePersonal.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
    except
       CxGridMoePersonal.DataController.DataSet.FreeBookmark(SavePlace);
    end;

    if sEstado = 'Nuevo' then
    begin
        personal.Locate('CodigoPersonal',Id,[]);
    end;

    IsOpen := True;

    Grid_bitacora.Enabled := True;
    PanelAnexos.Visible := True;

    cxCancelarClick(Sender);
    PanelAnexos.Align := alClient;
    cxLeyenda.Caption:=titulo;
    PermisosBotones(frmCatalogoEmpleados_ss7,btnPermisos);
end;

procedure TfrmCatalogoEmpleados_ss7.cxAgregaCityClick(Sender: TObject);
begin
    GLOBAL_FRMACTIVO:='frmCatalogoEmpleados_ss7';
    if not MostrarFormChild('frmCatalogosRHTipos', global_dxBarManagerPrincipal) then
     begin
        Application.CreateForm(TfrmCatalogosRHTipos, frmCatalogosRHTipos);
        frmCatalogosRHTipos.show;
        frmCatalogosRHTipos.dxNavBar1Item6Click(Sender);
        frmCatalogosRHTipos.btnAddClick(Sender);
     end;
end;

procedure TfrmCatalogoEmpleados_ss7.cxAgregaCPClick(Sender: TObject);
begin
    GLOBAL_FRMACTIVO:='frmCatalogoEmpleados_ss7';
    if not MostrarFormChild('frmCatalogosRHTipos', global_dxBarManagerPrincipal) then
     begin
        Application.CreateForm(TfrmCatalogosRHTipos, frmCatalogosRHTipos);
        frmCatalogosRHTipos.show;
        frmCatalogosRHTipos.dxNavBar1Item14Click(Sender);
        frmCatalogosRHTipos.btnAddClick(Sender);
     end;
end;

procedure TfrmCatalogoEmpleados_ss7.cxAgregaDocumentoClick(Sender: TObject);
begin
    if (doctoVP.State = dsInsert ) or (doctoVP.State = dsEdit) then
   begin
       global_frmActivo := 'frmCatalogoEmpleados_ss7';

       if not MostrarFormChild('frmCatalogosRHTipos', global_dxBarManagerPrincipal) then
       begin
          global_indexactivo:= 15;
          Application.CreateForm(TfrmCatalogosRHTipos, frmCatalogosRHTipos);
          frmCatalogosRHTipos.show;
       end;
   end;
end;

procedure TfrmCatalogoEmpleados_ss7.cxAgregaListaClick(Sender: TObject);
var
    Id  : integer;
begin
   mListaCredenciales.Append;
   mListaCredenciales.FieldByName('FieldId').AsInteger:=cantidadLista;
   mListaCredenciales.FieldByName('FieldName').AsString     := Proveedor_personal.FieldByName('NombreCompleto').AsString;
   mListaCredenciales.FieldByName('FieldCodigo').AsString   := Proveedor_personal.FieldByName('CodigoPersonal').AsString;
   mListaCredenciales.FieldByName('FieldCategoria').AsString:= Proveedor_personal.FieldByName('Categoria').AsString;
   mListaCredenciales.FieldByName('FieldAlergias').AsString := Proveedor_personal.FieldByName('Alergias').AsString;
   mListaCredenciales.FieldByName('FieldRFC').AsString      := Proveedor_personal.FieldByName('RFC').AsString;
   mListaCredenciales.FieldByName('FieldNSS').AsString      := Proveedor_personal.FieldByName('NSS').AsString;
   mListaCredenciales.FieldByName('FieldGSang').AsString    := Proveedor_personal.FieldByName('GrupoSanguineo').AsString;
   mListaCredenciales.FieldByName('FieldContacto').AsString := Proveedor_personal.FieldByName('Contacto').AsString;
   mListaCredenciales.FieldByName('FieldTelefono').AsString := Proveedor_personal.FieldByName('Telefono').AsString;
   mListaCredenciales.FieldByName('FieldVigencia').AsString := cxCredencialVigencia.Text;
  TBlobField(mListaCredenciales.FieldByName('FieldImagen')).LoadFromFile(sArc);
   mListaCredenciales.Post;

   Inc(cantidadLista);
   Id := cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger;
   BuscaPersonalProveedor;
   if BuscarPersonal.RecordCount = 0 then
   begin
      if MessageDlg('Desea Guardar el Personal ?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
          TBlobField(proveedor_personal.FieldByName('Imagen')).LoadFromFile(sArc);
          Proveedor_personal.Post;
      end
      else
          Proveedor_personal.Cancel;
   end
   else
      Proveedor_personal.Cancel;

   Proveedor_personal.Append;
   cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger := Id;
   Proveedor_personal.FieldByName('Sexo').AsString := 'Hombre';
   Proveedor_personal.FieldByName('FechaNacimiento').AsDateTime := Date;
   Proveedor_personal.FieldByName('Activo').AsString := 'Si';
   if cantidadLista > 0 then begin
    cxNumLista.Caption:='Empleados en Lista ('+InttoStr(cantidadLista)+')';
    dxLayoutItem121.Visible:=True;
   end;
   mListaCredenciales.RecordCount;
end;

procedure TfrmCatalogoEmpleados_ss7.cxButton10Click(Sender: TObject);
var
  ListParam:String;
  listValues: array of Variant;
  Fecha1,Fecha2,Fecha3 : TDateTime;
begin
  ListParam:='Nombre,Direcion,Curp,rfc,NSS,FechaNacimiento,Sexo,'+
  'Estado,Ciudad,FechaInicio,FechaFinal,FechaContrato,Puesto,Trabajo,SDI,LugarNacimiento,Cp';
  listValues:= [cxTextEdit1.Text,cxTextEdit2.Text,cxTextEdit5.Text,cxTextEdit4.Text,cxTextEdit6.Text,
  cxDateEdit1.Text,cxComboBox1.Text,cxTextEdit3.Text,cxTextEdit9.Text,fechaSQL(cxDateEdit2.Date),
  fechaSQL(cxDateEdit3.Date),fechaSQL(cxDateEdit4.Date),cxTextEdit7.Text,Trabajo.Text,
  cxTextEdit8.Text,cxTextEdit10.Text,cxTextEdit11.Text];

  AsignarSQL(Contrato,'ContratoRapido',pUpdate);
  FiltrarDataSet(Contrato,ListParam,ListValues);
  Contrato.Open;

  frxReportCR.LoadFromFile(global_files + global_miReporte+'_RH_CONTRATO_INDIVIDUAL.fr3');
  frxReportCR.ShowReport();
end;

procedure TfrmCatalogoEmpleados_ss7.cxButton11Click(Sender: TObject);
var
  size: Real;
begin
  try
    ImageCredencial.Picture.Bitmap := nil;
    OpenPicture.Title := 'Inserta Imagen';
    sArc := '';
    if OpenPicture.Execute then
    begin
      try
        sArc := RedimensionarJPG(OpenPicture.FileName);
        size := Tamanyo(sArc);
        if size <= 350 then
         begin
          ImageCredencial.Picture.LoadFromFile(OpenPicture.FileName);
         end
        else
          MessageDlg('La imagen a adjuntar no debe ser mayor a 350 kb.', mtInformation, [mbOk], 0);
      except
        ImageCredencial.Picture.LoadFromFile('S/N');
      end
    end;
  finally

  end;

end;

procedure TfrmCatalogoEmpleados_ss7.cxImprimirCredencialRapidaClick(Sender: TObject);
var
  tempo_table : TUniQuery;
  tempo_sql : String;
begin
  if cantidadLista = 0 then begin
    try
      CredeTemp.Params.ParamByName('Imagen').LoadFromFile(sArc, ftGraphic);
      CredeTemp.Params.ParamByName('Id').AsString:='1';
      CredeTemp.Params.ParamByName('Nombre').AsString:=cxCredencialNombre.Text;
      CredeTemp.Params.ParamByName('Codigo').AsString:=cxCredencialCodigo.Text;
      CredeTemp.Params.ParamByName('Vigencia').AsString:=cxCredencialVigencia.Text;
      CredeTemp.Params.ParamByName('rfc').AsString:=cxCredencialRFc.Text;
      CredeTemp.Params.ParamByName('Puesto').AsString:=cxCredencialCategoria.Text;
      CredeTemp.Params.ParamByName('TSangre').AsString:=cxCredencialGrupoS.Text;
      CredeTemp.Params.ParamByName('Alergia').AsString:=cxCredencialAlergias.Text;
      CredeTemp.Params.ParamByName('LLamar').AsString:=cxCredencialContacto.Text;
      CredeTemp.Params.ParamByName('Tel').AsString:=cxCredencialTelefono.Text;
      CredeTemp.Params.ParamByName('imss').AsString:=cxCredencialNSS.Text;
      CredeTemp.Params.ParamByName('IdPersonal').AsString:= Personal.FieldByName('IdPersonal').AsString;
      CredeTemp.Open;
    except
      CredeTemp.Params.ParamByName('Imagen').AsString:='S/N';
      CredeTemp.Params.ParamByName('Id').AsString:='1';
      CredeTemp.Params.ParamByName('Nombre').AsString:=cxCredencialNombre.Text;
      CredeTemp.Params.ParamByName('Codigo').AsString:=cxCredencialCodigo.Text;
      CredeTemp.Params.ParamByName('Vigencia').AsString:=cxCredencialVigencia.Text;
      CredeTemp.Params.ParamByName('rfc').AsString:=cxCredencialRFc.Text;
      CredeTemp.Params.ParamByName('Puesto').AsString:=cxCredencialCategoria.Text;
      CredeTemp.Params.ParamByName('TSangre').AsString:=cxCredencialGrupoS.Text;
      CredeTemp.Params.ParamByName('Alergia').AsString:=cxCredencialAlergias.Text;
      CredeTemp.Params.ParamByName('LLamar').AsString:=cxCredencialContacto.Text;
      CredeTemp.Params.ParamByName('Tel').AsString:=cxCredencialTelefono.Text;
      CredeTemp.Params.ParamByName('imss').AsString:=cxCredencialNSS.Text;
      CredeTemp.Params.ParamByName('IdPersonal').AsString:=Personal.FieldByName('IdPersonal').AsString;
      CredeTemp.Open;
    end;
    procReporteCredencialPrint(personal.FieldByName('IdEmpresa').AsInteger,'','_RH_CredencialEmpleados_2.fr3', CredeTemp, frmCatalogoEmpleados_ss7, frxReporte.OnGetValue, progreso, connection.uconfiguracion.FieldByName('sFormatos').AsString, '');
    CredeTemp.Close;
  end
  else begin
    tempo_table:=TUniQuery.Create(nil);
    tempo_table.Connection:= Connection.Uconnection;
    tempo_table.SQL.Clear;
    tempo_table.SQL.Text:='DELETE FROM tempo_credenciales';
    tempo_table.Execute;

    mListaCredenciales.First;
    while not mListaCredenciales.Eof do begin
      tempo_sql:='';
      tempo_sql:='INSERT INTO tempo_credenciales (NOMBRECOMPLETO,CODIGOPERSONAL,CATEGORIA,ALERGIAS,RFC,NSS,GRUPOSANGUINEO,CONTACTO,TELEFONO,SEXO,FECHANACIMIENTO,IMAGEN) ';
      tempo_sql:=tempo_sql+' VALUES (:Nombre,:Codigo,:Categoria,:Alergia,:rfc,:nss,:grupo,:Contacto,:Telefono,:sexo,:fecha,:Imagen)';
      tempo_table.SQL.Clear;
      tempo_table.SQL.Text:=tempo_sql;
      tempo_table.Params.ParamByName('Nombre').AsString     :=  mListaCredenciales.FieldByName('FieldName').AsString;
      tempo_table.Params.ParamByName('Codigo').AsString     :=  mListaCredenciales.FieldByName('FieldCodigo').AsString;
      tempo_table.Params.ParamByName('Categoria').AsString  :=  mListaCredenciales.FieldByName('FieldCategoria').AsString;
      tempo_table.Params.ParamByName('Alergia').AsString    :=  mListaCredenciales.FieldByName('FieldAlergias').AsString;
      tempo_table.Params.ParamByName('rfc').AsString        :=  mListaCredenciales.FieldByName('FieldRFC').AsString;
      tempo_table.Params.ParamByName('nss').AsString        :=  mListaCredenciales.FieldByName('FieldNSS').AsString;
      tempo_table.Params.ParamByName('grupo').AsString      :=  mListaCredenciales.FieldByName('FieldGSang').AsString;
      tempo_table.Params.ParamByName('Contacto').AsString   :=  mListaCredenciales.FieldByName('FieldContacto').AsString;
      tempo_table.Params.ParamByName('Telefono').AsString   :=  mListaCredenciales.FieldByName('FieldTelefono').AsString;
      tempo_table.Params.ParamByName('Imagen').AsBlob       :=  mListaCredenciales.FieldByName('FieldImagen').AsBytes;
      tempo_table.Params.ParamByName('sexo').AsString       :=  'Hombre';
      tempo_table.Params.ParamByName('fecha').AsDateTime    :=  mListaCredenciales.FieldByName('FieldVigencia').AsDateTime;
      tempo_table.Execute;
      mListaCredenciales.Next;
    end;

    tempo_table.SQL.Clear;
    tempo_table.SQL.Text:='SELECT *,Categoria as Puesto, Telefono as ContactoM, FechaNacimiento as FechaVigencia, (SELECT e.Logotipo FROM master_empresa e WHERE e.IdEmpresa = :Empresa) as Logotipo FROM tempo_credenciales';
    tempo_table.Params.ParamByName('Empresa').AsInteger:=personal.FieldByName('IdEmpresa').AsInteger;
    tempo_table.Open;
    tempo_table.RecordCount;
    procReporteCredencialPrint(personal.FieldByName('IdEmpresa').AsInteger,'','_RH_CredencialEmpleados_2.fr3', tempo_table, frmCatalogoEmpleados_ss7, frxReporte.OnGetValue, progreso, connection.uconfiguracion.FieldByName('sFormatos').AsString, '');
    tempo_table.Close;
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.cxMovimientoExit(Sender: TObject);
begin
  if uMovimientosIMSS.FieldByName('TipoMovimiento').AsString = 'Alta' then
    dxLayoutItem136.Visible:=True
  else
    dxLayoutItem136.Visible:=False;

end;

procedure TfrmCatalogoEmpleados_ss7.cxButton1Click(Sender: TObject);
begin
    GLOBAL_FRMACTIVO:='frmCatalogoEmpleados_ss7';
    global_indexactivo:=11;
    if not MostrarFormChild('frmCatalogosRHTipos', global_dxBarManagerPrincipal) then
     begin
        Application.CreateForm(TfrmCatalogosRHTipos, frmCatalogosRHTipos);
        frmCatalogosRHTipos.show;
        frmCatalogosRHTipos.dxNavBar1Item11Click(Sender);
        frmCatalogosRHTipos.btnAddClick(Sender);
     end;
end;

procedure TfrmCatalogoEmpleados_ss7.cxButton2Click(Sender: TObject);
begin
    GLOBAL_FRMACTIVO:='frmCatalogoEmpleados_ss7';
    global_indexactivo:=8;
    if not MostrarFormChild('frmCatalogosRHTipos', global_dxBarManagerPrincipal) then
     begin
        Application.CreateForm(TfrmCatalogosRHTipos, frmCatalogosRHTipos);
        frmCatalogosRHTipos.show;
        frmCatalogosRHTipos.dxNavBar1Item8Click(Sender);
        frmCatalogosRHTipos.btnAddClick(Sender);
     end;
end;

procedure TfrmCatalogoEmpleados_ss7.cxButton3Click(Sender: TObject);
begin
    GLOBAL_FRMACTIVO:='frmCatalogoEmpleados_ss7';
    if not MostrarFormChild('frmDeptos', global_dxBarManagerPrincipal) then
     begin
        Application.CreateForm(TfrmDeptos, frmDeptos);
        frmDeptos.show;
        frmDeptos.btnAddClick(Sender);
     end;
end;


procedure TfrmCatalogoEmpleados_ss7.cxButton5Click(Sender: TObject);
begin
    GLOBAL_FRMACTIVO:='frmCatalogoEmpleados_ss7';
    if not MostrarFormChild('frmCatalogosRHTipos', global_dxBarManagerPrincipal) then
     begin
        Application.CreateForm(TfrmCatalogosRHTipos, frmCatalogosRHTipos);
        frmCatalogosRHTipos.show;
        frmCatalogosRHTipos.dxNavBar1Item9Click(Sender);
        frmCatalogosRHTipos.btnAddClick(Sender);
     end;
end;

procedure TfrmCatalogoEmpleados_ss7.cxButton6Click(Sender: TObject);
var
  empGrid: String;
  contEmpGrid,j : Integer;
  pwd,Id : String;
begin

    if Filtro.Checked=True then
    begin
      contEmpGrid:=cxGridMoePersonal.ViewData.RecordCount;
      for j := 0 to (contEmpGrid - 1) do
      begin
       try
       empGrid := empGrid + cxGridMoePersonal.ViewData.Rows[j].Values[0] +',';
       except
        ;
       end;
      end;
    end
    else
    begin
     empGrid:=Personal.FieldByName('CodigoPersonal').AsString+',';
    End;

    Application.CreateForm(TfrmFechaVigencia, frmFechaVigencia);
    frmFechaVigencia.cxPageControlF.ActivePage:=frmFechaVigencia.cxPageVigencia;
    frmFechaVigencia.cxPageControlF.HideTabs:=True;
    frmFechaVigencia.showModal;

    if global_resultModal = True then
    begin
      Id:=IntToStr(frmFechaVigencia.empresa.EditValue);
      AsignarSQL(reporte,'reporte_credencial_siani',pUpdate);
      FiltrarDataSet(reporte,'FechaVigencia,IdEmpresa,ListaPersonal',[FechaSQL(FrmFechaVigencia.edtFechaVigencia.Date),
      Id,empGrid]);
      reporte.Open;
      procReporteCredencialPrint(personal.FieldByName('IdEmpresa').AsInteger,'','_RH_CredencialEmpleados_2.fr3', reporte, frmCatalogoEmpleados_ss7, frxReporte.OnGetValue, progreso, connection.uconfiguracion.FieldByName('sFormatos').AsString, '');
    end;

end;

procedure TfrmCatalogoEmpleados_ss7.cxButton7Click(Sender: TObject);
var fecha:TDateTime;
    dia,dia2:Integer;
    fDate1,fDate2,fecha1,fecha2:String;
    temp2, temp:TUniQuery;
    ban1,ban2,ban3:boolean;
begin
   if zEmpresa.FieldByName('FK_titulo').AsString  = 'TYPHOON' then
  begin
     try
       if ((cbFInicio.Text = '') or (cbFTermino.Text = '')) then
        begin
          ShowMessage('Seleccione periodo de inicio y termino.');
          exit
        end;
        if (cbFInicio.EditValue > cbFTermino.EditValue) then
        begin
          ShowMessage('Fecha de inicio es mayor a la de termino, esto es incorrecto.');
          exit
        end;


         if (FormatDateTime('yyyy',Now) <> FormatDateTime('yyyy',cbFInicio.EditValue))
         or (FormatDateTime('yyyy',Now) <> FormatDateTime('yyyy',cbFTermino.EditValue)) then
         begin
           MessageDlg('No se puede seleccionar vacaciones de otro año', mtinformation, [mbOk], 0);
           exit
         end;
       Dia := Trunc (cbFTermino.Date - cbFInicio.Date);

       if MessageDlg(IntToStr(Dia)+' dias de vacaciones del dia '+FormatDateTime('yyyy/mm/dd',cbFInicio.Date)+' al dia '+FormatDateTime('yyyy/mm/dd',cbFTermino.Date),
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        temp := tUniQuery.create(nil);
        temp.Connection := Connection.uConnection;
        temp.Active:=False;
        AsignarSql(temp,'vacaciones_pedidas',pUpdate);
        FiltrarDataSet(temp,'IdPersonal,Fecha',[personal.FieldByName('IdPersonal').AsInteger,FechaSQL(now)]);
        temp.Open;
        if dia > 0 then
         begin

          temp.First;
           while not temp.Eof do
           begin
            fDate1:=FormatDateTime('yyyy/mm/dd',cbFInicio.Date);
            fDate2:=FormatDateTime('yyyy/mm/dd',cbFTermino.Date);
            fecha1:=FormatDateTime('yyyy/mm/dd',temp.FieldByName('FechaInicio').AsDateTime);
            fecha2:=FormatDateTime('yyyy/mm/dd',temp.FieldByName('FechaFin').AsDateTime);
            if (fecha1 < fDate1) and (fecha2 > fDate1)then
            begin
              ban1:=False;
            end
            else
            begin
              if fDate1 < fecha2 then
              begin
                ban1:=False;
              end
              else
              begin
               ban1:=True;
              end;

            end;
            if (fecha1 < fDate2) and (fecha2 > fDate2)then
            begin
              ban2:=False;
            end
            else
            begin
              ban2:=True;
            end;
            temp.Next;
           end;

           if temp.RecordCount=0 then
           begin
            ban1:=True;
            ban2:=True;
           end;

           if  (ban1=True) and (ban2=True)then
            begin
              if ((temp.FieldByName('diasP').AsInteger + dia) <= temp.FieldByName('DTotal').AsInteger) or (temp.RecordCount=0)then
              begin
                fecha:=Now;
                zVacaciones.Open;
                zVacaciones.Append;
                zVacaciones.FieldByName('IdPersonal').AsInteger:=personal.FieldByName('IdPersonal').AsInteger;
                zVacaciones.FieldByName('FechaInicio').Value:=FechaSQl(cbFInicio.Date);
                zVacaciones.FieldByName('FechaFin').Value:=FechaSQl(cbFTermino.Date);
                zVacaciones.FieldByName('Dias').AsInteger:=Dia;
                zVacaciones.Post;
              end
              else
              begin
                 MessageDlg('Sobre paso los dias de vacaciones disponibles', mtinformation, [mbOk], 0);
              end;
            end
            else
            begin
              MessageDlg('Dias de vaciones repetidos', mtinformation, [mbOk], 0);
            end;
         end;
         if (personal.Active) and (personal.RecordCount > 0) then
         begin
            procReporteVacaciones(personal.FieldByName('IdPersonal').AsInteger,'', img, frmCatalogoEmpleados_ss7, frxReporte.OnGetValue, progreso, connection.uconfiguracion.FieldByName('sFormatos').AsString, '');
            cbFInicio.Date:=now;
            cbFTermino.Date:=now;
         end
         else
            MessageDlg('Dias de vaciones repetidos', mtinformation, [mbOk], 0);
      end;
      except
          on e: exception do
          begin
             UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Control de pernoctas', 'Al imprimir', 0);
          end;
      end;
  end
  else
  begin
     try
         if (personal.Active) and (personal.RecordCount > 0) then
         begin
            procReporteVacaciones(personal.FieldByName('IdPersonal').AsInteger,'', img, frmCatalogoEmpleados_ss7, frxReporte.OnGetValue, progreso, connection.uconfiguracion.FieldByName('sFormatos').AsString, '')
         end
         else
            showmessage('No hay datos para Imprimir');
      except
          on e: exception do
          begin
             UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Control de pernoctas', 'Al imprimir', 0);
          end;
      end;
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.cxButton8Click(Sender: TObject);
begin
  AsignarSQL(reporte,'empleados_entrega_epp',pUpdate);
  FiltrarDataSet(reporte,'Nombre,Empleado',[personal.FieldByName('NombreCompleto').AsString,personal.FieldByName('IdPersonal').AsInteger]);
  reporte.Open;
  if reporte.RecordCount>0 then begin
    frxReportCR.LoadFromFile(global_files + global_miReporte+'_RH_ReporteEPP.fr3');
    frxReportCR.ShowReport();
  end
  else
    MessageDlg('No hay equipo de protección entregado a '+personal.FieldByName('NombreCompleto').AsString,mtInformation,[mbOk],0);
end;

procedure TfrmCatalogoEmpleados_ss7.cxButton9Click(Sender: TObject);
var
  BlobStream : TStream;
  FileStream : TFileStream;

  Ext, sArchivo : string;
begin
  try
    dlgPDF.FileName := '';
    lNoGuardarDocto := False;

    if not dlgPDF.Execute() then
      exit;

    Archivo := dlgPDF.FileName;

    if not FileExists(Archivo) then
      raise exception.Create('No se encontro el archivo especificado');

    Ext := ExtractFileExt(Archivo);

    if ( Ext <> '.PDF' ) and ( Ext <> '.pdf' ) then
      raise exception.Create('El archivo no es valido');

    TBlobField(uMovimientosIMSS.FieldByName('Documento')).LoadfromFile(archivo);

  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
    end;
  end;

end;

procedure TfrmCatalogoEmpleados_ss7.btnCartaRClick(Sender: TObject);
var
  empGrid: String;
  contEmpGrid,j : Integer;
begin
  if Filtro.Checked=True then
  begin
    contEmpGrid:=cxGridMoePersonal.ViewData.RecordCount;
    for j := 0 to (contEmpGrid - 1) do
    begin
     try
     empGrid := empGrid + cxGridMoePersonal.ViewData.Rows[j].Values[0] +',';
     except
      ;
     end;
    end;
  end
  else
  begin
   empGrid:=Personal.FieldByName('CodigoPersonal').AsString+',';
  End;
  Application.CreateForm(TfrmFechaVigencia, frmFechaVigencia);
  frmFechaVigencia.cxPageControlF.ActivePage:=frmFechaVigencia.cxPageVigencia;
  frmFechaVigencia.cxPageControlF.HideTabs:=True;
  frmFechaVigencia.showModal;

  if FrmFechaVigencia.btnAceptar.ModalResult = mrOk then begin
    AsignarSQL(reporte,'reportesRH_carta',pUpdate);
    FiltrarDataSet(reporte,'FechaVigencia,ListaPersonal',[FechaSQL(FrmFechaVigencia.edtFechaVigencia.Date),empGrid]);
    reporte.Open;
    frxReportCR.LoadFromFile(global_files + global_miReporte+'_RH_CartaResponsiva.fr3');
    frxReportCR.ShowReport();
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.btnContratoClick(Sender: TObject);
var
  empGrid: String;
  contEmpGrid,j : Integer;
begin
  if contratos.Active = False then
  begin

       AsignarSQL(contratos,'Contratos',pUpdate);
       FiltrarDataSet(contratos,'IdPersonal',[personal.FieldByName('IdPersonal').AsInteger]);
       Contratos.Open;

  end;

  if Filtro.Checked=True then
  begin
    contEmpGrid:=cxGridMoePersonal.ViewData.RecordCount;
    for j := 0 to (contEmpGrid - 1) do
    begin
     try
     empGrid := empGrid + cxGridMoePersonal.ViewData.Rows[j].Values[0] +',';
     except
      ;
     end;
    end;
  end
  else
  begin
   empGrid:=Personal.FieldByName('CodigoPersonal').AsString+',';
  End;
  AsignarSQL(Contrato,'reporte_contrato',pUpdate);
  FiltrarDataSet(Contrato,'IdPersonal,Codigo,Contrato',[personal.FieldByName('IdPersonal').AsInteger,empGrid,contratos.FieldByName('IdContrato').AsInteger]);
  Contrato.Open;

    if  zEmpresa.FieldByName('FK_titulo').AsString ='SIANI' then
    begin
      if cbTipoContrato.ItemIndex = 0 then
        frxReportCR.LoadFromFile(global_files + global_miReporte+'_RH_CONTRATO_PRUEBA.fr3')
      else
        frxReportCR.LoadFromFile(global_files + global_miReporte+'_RH_CONTRATO_INDIVIDUAL.fr3');
    end else
    begin
     frxReportCR.LoadFromFile(global_files + global_miReporte+'_RH_CONTRATO_INDIVIDUAL.fr3');
    end;

  frxReportCR.ShowReport();
end;

procedure TfrmCatalogoEmpleados_ss7.btnCostoPersonalClick(Sender: TObject);
begin
  if CheckFiltro.Checked then
  begin
    AsignarSQL(Contrato,'reporte_costos_completo',pUpdate);
    FiltrarDataSet(Contrato,'IdPersonal,FechaI,FechaF,Activo',['-1',fechaSQL(edtInicioF.Date),fechaSQL(edtFinF.Date),'Si']);
    Contrato.Open;
  end
  else
  begin
    AsignarSQL(Contrato,'reporte_costos',pUpdate);
    FiltrarDataSet(Contrato,'IdPersonal,Activo',[personal.FieldByName('IdPersonal').AsString,'Si']);
    Contrato.Open;
  end;


  if Contrato.RecordCount > 0 then
  begin
    frxReportCR.LoadFromFile(global_files + global_miReporte+'_RH_Costos.fr3');
    frxReportCR.ShowReport();
  end
  else
    ShowMessage('No Hay Datos');

end;

procedure TfrmCatalogoEmpleados_ss7.btnDeleteClick(Sender: TObject);
var
    conteo : integer;
begin
  If Personal.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Personal '#13+personal.FieldByName('CodigoPersonal').AsString+'?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        docto_usuarios.Active := False;
        docto_usuarios.ParamByName('IdPersonal').AsInteger := personal.FieldByName('IdPersonal').AsInteger;
        docto_usuarios.Open;

        puesto_empleado.Active := False;
        AsignarSQL(puesto_empleado,'cargo_personal',pUpdate);
        FiltrarDataSet(puesto_empleado,'IdPersonal,IdEmpresa',[personal.FieldByName('IdPersonal').AsInteger,zEmpresa.FieldByName('IdEmpresa').AsInteger]);
        puesto_empleado.Open;

        contacto.Active := False;
        contacto.ParamByName('IdPersonal').AsInteger := personal.FieldByName('IdPersonal').AsInteger;
        contacto.Open;

        banco_empleado.Active := False;
        banco_empleado.ParamByName('IdPersonal').AsInteger := personal.FieldByName('IdPersonal').AsInteger;
        banco_empleado.Open;

        //Conteo de registros dependientes.
        conteo := 0;
        conteo:= conteo + docto_usuarios.RecordCount;
        conteo:= conteo + puesto_empleado.RecordCount;
        conteo:= conteo + contacto.RecordCount;
        conteo:= conteo + banco_empleado.RecordCount;

        if (conteo =0) then
        begin
          IsOpen := False;
          ds_personal.DataSet.Delete;
          Personal.ApplyUpdates();
          IsOpen := True;
        end
        else
          ShowMessage('No se puede eliminar, Contiene datos en detalle.');

      except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Proveedores', 'Al eliminar registro', 0);
        end;
      end
    end

end;

procedure TfrmCatalogoEmpleados_ss7.btnDetalleClick(Sender: TObject);
var
tem:TUniQuery;
begin

  try
    Credenciales.TabVisible:=False;
    cxTabEPP.TabVisible:=False;
    cxPageDetalle.ActivePageIndex:=0;

    cxGridViewPuesto.Columns[1].Visible:=False;
    cxGridViewPuesto.Columns[2].Visible:=False;
    cxGridViewPuesto.Columns[3].Visible:=False;
    if  zEmpresa.FieldByName('FK_titulo').AsString ='SIANI' then
    begin
      cxTabContratos.TabVisible:=True;
      Credenciales.TabVisible:=True;
      cxTabEPP.TabVisible:=True;
      btnCartaR.Visible:=True;
      btnContrato.Visible:=True;
      dxLayoutCartaResponsiva.Visible:=True;
      dxLayoutContratos.Visible:=True;
      dxLayoutModificaciones.Visible:=True;
      dxLayoutEPP.Visible:=True;
      dxLayoutItem123.Visible:=False;
      dxLayoutItem125.Visible:=False;
      cxTabCursos.TabVisible:=False;
      cxViewDocumentos.OptionsView.Footer:=False;
    end
    else
    begin
      if zEmpresa.FieldByName('FK_Titulo').AsString = 'SIMEGA' then begin
        Credenciales.TabVisible:=True;
        cxTabContratos.TabVisible:=True;
        cxTabEPP.TabVisible:=True;
        cxTabHuella.TabVisible:=False;
        dxLayoutCartaResponsiva.Visible:=True;
        dxLayoutContratos.Visible:=True;
        dxLayoutDocVencemiento.Visible:=True;
        dxLayoutEPP.Visible:=True;
        dxLayoutItem123.Visible:=False;
        dxLayoutItem125.Visible:=False;
        cxTabCursos.TabVisible:=False;
        cxViewDocumentos.OptionsView.Footer:=False;
      end
      else begin
        if (zEmpresa.FieldByName('FK_Titulo').AsString = 'CMMI') or (zEmpresa.FieldByName('FK_Titulo').AsString = 'DSAI') then begin
          cxTabContratos.TabVisible:=True;
          Credenciales.TabVisible:=True;
          cxQuickFormat.TabVisible:=False;
          dxLayoutContratos.Visible:=True;
          dxLayoutDocVencemiento.Visible:=True;
          cxTabCursos.TabVisible:=False;
        end
        else begin
          cxGridViewPuesto.Columns[1].Visible:=True;
          cxGridViewPuesto.Columns[2].Visible:=True;
          cxGridViewPuesto.Columns[3].Visible:=True;
          cxTabContratos.TabVisible:=True;
          cbSalarios.Visible:=True;
          cxTabIMSS.TabVisible:=True;
          cxTabComentarios.TabVisible:=False;
          cxTabHuella.Enabled:=True;
          cxQuickFormat.TabVisible:=False;
          cbEspecialidades.Visible:=False;
          cxTabEPP.Visible := False;
          btnModificaciones.visible:=True;

          dxLayoutContratos.Visible  :=True;
          dxLayoutCredencial.Visible := True;
          dxLayoutCartaResponsiva.Visible:=True;
          dxLayoutEPP.Visible        :=False;
          dxLayoutSoldadores.Visible :=False;
          dxLayoutCostoPersonal.Visible  :=False;
          dxLayoutFiltroCostoPer.Visible := False;
          dxLayoutFechaICostoPer.Visible := False;
          dxLayoutFechaFCostoPer.Visible := False;

          cxTabEntrega.Visible := False;

          dxLayoutDocVencemiento.Visible:=True;
        end;
      end;
    end;

    if PanelDetalle.Visible then
    begin
       cxSplitterOpciones.Visible := False;
       PanelDetalle.Visible       := False;
       cxCancelarDetalle.OnClick(Sender);
    end
    else
    begin
       PanelDetalle.Visible       := True;
       cxSplitterOpciones.Visible := True;
       cxPageDetalle.OnClick(sender);
    end;

  except
   ;
  end;

end;

procedure TfrmCatalogoEmpleados_ss7.btnDocumentosxVencerClick(Sender: TObject);
begin
    AsignarSQl(Contrato,'reporte_documentosxvencer',pUpdate);
    FiltrarDataSet(Contrato,'IdPersonal',['-1']);
    Contrato.Open;
    frxReportCR.LoadFromFile(global_files + '_RH_DocumentosPorVencer.fr3');
    frxReportCR.ShowReport();
end;

procedure TfrmCatalogoEmpleados_ss7.btnVerClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJPEGImage;
  BlobField: tField;
  bMostrar: boolean;
  IdImagen:String;
begin
    QryBusca.Active := False;
    QryBusca.SQL.Clear;
    QryBusca.SQL.Add('select Imagen from master_personal where IdPersonal = :Id');
    QryBusca.Params.ParamByName('Id').AsInteger := ds_personal.DataSet.FieldByName('IdPersonal').AsInteger;
    QryBusca.Open;

  if QryBusca.RecordCount > 0 then
  begin
    bImagen.Picture.Bitmap := nil;

    BlobField := QryBusca.FieldByName('Imagen');
    BS := QryBusca.CreateBlobStream(BlobField, bmRead);
    if bs.Size > 15 then
    begin
      try
          pic := TJPEGImage.Create;
        try
          Pic.LoadFromStream(bS);
          bImagen.Picture.Graphic := Pic;
        finally
          Pic.Free;
        end;
      finally
        bS.Free
      end;
      bImagenDefault := True;
    end
    else
      bMostrar := True;
  end
  else
    bMostrar := True;

  if bMostrar = True then
  begin
    //muestraImagen;
    bImagenDefault := False;
  end;

end;

procedure TfrmCatalogoEmpleados_ss7.cxCancelarClick(Sender: TObject);
begin
    frmBarraH11.btnActive;
    bImagen.Picture.Graphic := nil;
    PanelActa.Visible := False;
    IsOpen := False;
    personal.Cancel;
    IsOpen := True;
    Grid_bitacora.Enabled := True;
    PanelAnexos.Visible := True;
    PanelAnexos.Align := alClient;
    cxLeyenda.Caption:=titulo;
    PermisosBotones(frmCatalogoEmpleados_ss7, btnPermisos);
end;

procedure TfrmCatalogoEmpleados_ss7.cxCancelarDetalleClick(Sender: TObject);
begin
  try
     if cxPageDetalle.ActivePage = cxTabDocumentos then
     begin
         cxLeyenda2.Caption:=titulo2;

         docto_usuarios.Cancel;
         cxSplit1.Visible   := False;
         PanelDown1.Visible := False;
     end;

     if cxPageDetalle.ActivePage = cxTabCargo then
     begin
         cxLeyenda2.Caption:=titulo2;
         puesto_empleado.Cancel;
         cxSplit2.Visible   := False;
         PanelDown2.Visible := False;
     end;

     if cxPageDetalle.ActivePage = cxTabContacto then
     begin
         cxLeyenda2.Caption:=titulo2;
         contacto.Cancel;
         cxSplit3.Visible   := False;
         PanelDown3.Visible := False;
     end;

     if cxPageDetalle.ActivePage = cxTabBanco then
     begin
         cxLeyenda2.Caption:=titulo2;
         banco_empleado.Cancel;
         cxSplit4.Visible   := False;
         PanelDown4.Visible := False;
     end;

      if cxPageDetalle.ActivePage = cxTabHuella then
     begin
         cxLeyenda2.Caption:=titulo2;
         cxSplit4.Visible   := False;
         PanelDown4.Visible := False;
     end;

     if cxPageDetalle.ActivePage = cxTabContratos then
     begin
       if cxPageContrato.ActivePageIndex = 1 then
       begin
        zEntreda.Cancel;
          cxLeyenda2.Caption:=titulo2;
         cxSplitterTop.Visible   := False;
         dxLayoutControl21.Visible := False;
       end
       else
       begin
         Contratos.Cancel;
         cxLeyenda2.Caption:=titulo2;
         cxSplitterTop.Visible   := False;
         dxLayoutControl10.Visible := False;
       end;

         cxLeyenda2.Caption:=titulo2;
         cxSplitterTop.Visible   := False;
         dxLayoutControl10.Visible := False;
     end;

     if cxPageDetalle.ActivePage = cxTabIMSS then begin
       uMovimientosIMSS.Cancel;
       cxLeyenda2.Caption:=Titulo2;

       InfoImss.Visible:=False;

     end;

     if cxPageDetalle.ActivePage = cxTabComentarios then begin
       uComentarios.Cancel;
       cxLeyenda2.Caption:=titulo2;

       PanelC.Visible:=False;

     end;

     if cxPageDetalle.ActivePage = cxTabCursos then begin
      cxLeyenda2.Caption:=titulo2;
      PanelCursos.Visible:=False;
      Cursos.Cancel;
     end;

     PanelDown.Visible := False;
    finally
      begin
       frmBarraH11.btnActive;
       cxNuevoDetalle.Enabled := True;
       cxEditaDetalle.Enabled := True;
       btnEliminarDetalle.Enabled:=True;
       grid_bitacora.Enabled:= True;
       cxGridGenerador.Enabled:= True;
       cxGridDocumentos.Enabled := True;
       cxGridCargos.Enabled   := True;
       cxGridContacto.Enabled := True;
       cxGridBanco.Enabled    := True;
       cxGrid1.Enabled        := True;

       PermisosBotones(frmCatalogoEmpleados_ss7,btnPermisos);
      end;
  end;


end;

procedure TfrmCatalogoEmpleados_ss7.cxCargarDocumentoClick(Sender: TObject);
var
  BlobStream : TStream;
  FileStream : TFileStream;

  Ext, sArchivo : string;
begin
  try
    dlgPDF.FileName := '';
    dlgPDF.FileTypes.Add.FileMask:='*.pdf;*.xml';
    dlgPDF.FileTypes.Add.FileMask:='*.xml';
    dlgPDF.FileTypes.Add.FileMask:='*.pdf';
    if not dlgPDF.Execute() then
      exit;

    Archivo := dlgPDF.FileName;

    if not FileExists(Archivo) then
      raise exception.Create('No se encontro el archivo especificado');

    Ext := ExtractFileExt(Archivo);

    if ( Ext <> '.PDF' ) and ( Ext <> '.pdf' ) then
      raise exception.Create('El archivo no es valido');



    doctoVP.FieldByName('NombreDocto').AsString := ExtractFileName(Archivo);
    TBlobField(doctoVP.FieldByName('DocumentoDigital')).LoadfromFile(archivo);

  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
    end;
  end;

end;


procedure TfrmCatalogoEmpleados_ss7.btnSoldadoresClick(Sender: TObject);
var
  empGrid: String;
  contEmpGrid,j : Integer;
begin

if Filtro.Checked=True then
  begin
    contEmpGrid:=cxGridMoePersonal.ViewData.RecordCount;
    for j := 0 to (contEmpGrid - 1) do
    begin
     try
     empGrid := empGrid + cxGridMoePersonal.ViewData.Rows[j].Values[0] +',';
     except
      ;
     end;
    end;
  end
  else
  begin
   empGrid:=Personal.FieldByName('CodigoPersonal').AsString+',';
  End;
  Application.CreateForm(TfrmFechaVigencia, frmFechaVigencia);
  frmFechaVigencia.cxPageControlF.ActivePage:=frmFechaVigencia.cxPageDiasL;
  frmFechaVigencia.cxPageControlF.HideTabs:=True;
  frmFechaVigencia.showModal;

  if FrmFechaVigencia.btnAceptar.ModalResult = mrOk then begin
    AsignarSQL(contrato,'reporte_categorias',pUpdate);
    FiltrarDataSet(contrato,'FechaI,FechaF,Contrato,ListaPersonal',[fechaSQL(frmFechaVigencia.cxFechaIni.Date),
    fechaSQL(frmFechaVigencia.cxFechaFin.Date),-1,empGrid]);
    contrato.Open;
    frxReportCR.LoadFromFile(global_files + global_miReporte+'_RH_RecordSoldadores.fr3');
    frxReportCR.ShowReport();
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.cxCredencialNombreExit(Sender: TObject);
begin
   BuscaPersonalProveedor;
   if BuscarPersonal.RecordCount > 0 then
   begin
      Proveedor_personal.FieldByName('CodigoPersonal').AsString := BuscarPersonal.FieldByName('CodigoPersonal').AsString;
      Proveedor_personal.FieldByName('Categoria').AsString := BuscarPersonal.FieldByName('Categoria').AsString;
      Proveedor_personal.FieldByName('Alergias').AsString := BuscarPersonal.FieldByName('Alergias').AsString;
      Proveedor_personal.FieldByName('NSS').AsString := BuscarPersonal.FieldByName('NSS').AsString;
      Proveedor_personal.FieldByName('Rfc').AsString := BuscarPersonal.FieldByName('Rfc').AsString;
      Proveedor_personal.FieldByName('GrupoSanguineo').AsString := BuscarPersonal.FieldByName('GrupoSanguineo').AsString;
      Proveedor_personal.FieldByName('Contacto').AsString := BuscarPersonal.FieldByName('Contacto').AsString;
      Proveedor_personal.FieldByName('Telefono').AsString := BuscarPersonal.FieldByName('Telefono').AsString;
   end;

   cxCredencialCodigo.style.Color  := global_color_salidaERP;
end;

procedure TfrmCatalogoEmpleados_ss7.cxDuracionExit(Sender: TObject);
begin
  if not VarIsNull(Contratos.FieldByName('FechaInicio').AsDateTime) then begin
    Contratos.FieldByName('FechaFinal').AsDateTime:=IncDay(Contratos.FieldByName('FechaInicio').AsDateTime,cxDuracion.EditValue-1);
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.cxDoctoExpedicionExit(Sender: TObject);
begin
    docto_usuarios.FieldByName('Fechavigencia').AsDateTime   := GeneraPeriodoDocto(date,documentos.FieldByName('IdDocumento').AsInteger);
end;

procedure TfrmCatalogoEmpleados_ss7.cxEditaDetalleClick(Sender: TObject);
begin
   {se deshabilitan los botones principales}
   frmBarraH11.btnAddClick(Sender);
   {Se deshabilitan los botones secundarios y se visualiza el panel de guardar y cancelar}
   cxNuevoDetalle.Enabled := False;
   cxEditaDetalle.Enabled := False;
   btnEliminarDetalle.Enabled:=False;
   PanelDown.Visible := True;
   {Se deshabilitan los grids}
   grid_bitacora.Enabled  := False;
   cxGridGenerador.Enabled:= False;
   cxGridDocumentos.Enabled := False;
   cxGridCargos.Enabled   := False;
   cxGridContacto.Enabled := False;
   cxGridBanco.Enabled    := False;
   cxGrid1.Enabled        := False;
   if cxPageDetalle.ActivePage = cxTabDocumentos then
   begin
       AsignarSQL(doctoVP,'docto_empleadoVP',pUpdate);
       FiltrarDataSet(doctoVP,'IdDocto',[docto_usuarios.FieldByName('IdDocxpersonal').AsInteger]);
       doctoVP.Open;
       if doctoVP.RecordCount > 0 then begin
         doctoVP.Edit;
         PanelDown1.Visible := True;
         cxSplit1.Visible   := True;
         cxLeyenda2.Caption:=titulo2+'[Editando]';
       end
       else begin
         MessageDlg('No hay datos para editar.',mtInformation,[mbOK],0);
         cxCancelarDetalleClick(Sender);
       end;
   end;

   if cxPageDetalle.ActivePage = cxTabCargo then
   begin
      if puesto_empleado.RecordCount>0 then begin
        if zEmpresa.FieldByName('FK_Titulo').AsString = 'TYPHOON' then
         begin
           cxPuesto.DataBinding.DataField:='IdPuestoNuevo';
           cbSalario.DataBinding.DataField:='IdNuevoSalario';
           dxLayoutItem42.Visible:=False;
           dxLayoutItem47.Visible:=False;
         end;
         dxLayoutItem149.Visible:=False;
         dxLayoutItem150.Visible:=False;
         dxLayoutItem151.Visible:=False;
         OpcButton1 := 'Edit';
         puesto_empleado.Edit;
         cxLeyenda2.Caption:=titulo2+'[Editando]';
         cxSplit2.Visible   := True;
         PanelDown2.Visible := True;
      end
      else begin
          MessageDlg('No hay datos para editar.',mtInformation,[mbOk],0);
          cxCancelarDetalleClick(Sender);
      end;
   end;

   if cxPageDetalle.ActivePage = cxTabContacto then
   begin
      if contacto.RecordCount > 0 then begin
         cxLeyenda2.Caption:=titulo2+'[Editando]';
         contacto.Edit;
         cxSplit3.Visible   := True;
         PanelDown3.Visible := True;
      end
      else begin
         MessageDlg('No hay datos para editar.',mtInformation,[mbOk],0);
         cxCancelarDetalleClick(Sender);
      end;
   end;

   if cxPageDetalle.ActivePage = cxTabBanco then
   begin
      if banco_empleado.RecordCount > 0 then begin
         cxLeyenda2.Caption:=titulo2+'[Editando]';
         cxSplit4.Visible   := True;
         PanelDown4.Visible := True;
         banco_empleado.Edit;
         if zEmpresa.FieldByName('FK_Titulo').AsString = 'TYPHOON' then
         begin
           dxLayoutItem62.Visible:=False;
           dxLayoutItem60.Visible:=False;
         end;
      end
      else begin
        MessageDlg('No hay datos para editar.',mtInformation,[mbOk],0);
        cxCancelarDetalleClick(Sender);
      end;
   end;
   if cxPageDetalle.ActivePage = cxTabHuella then
   begin
        PanelDown.Visible := True;
        objNBioBSP := CreateOleObject('NBioBSPCOM.NBioBSP');
        objDevice      := objNBioBSP.Device;
        objExtraction  := objNBioBSP.Extraction;
        objNSearch     := objNBioBSP.NSearch;
        if objNSearch.ErrorCode = NBioAPIERROR_NONE then
        begin
          Enroll;
        end
        else
        ShowMessage('Conectar biometrico!');
   end;

   if cxPageDetalle.ActivePage = cxTabContratos then
   begin
   if cxPageContrato.ActivePageIndex = 1 then
     begin
      if zEntreda.RecordCount > 0 then begin
        cxSplitterTop.Visible:=True;
        dxLayoutControl10.Visible:=True;
        zEntreda.Edit;
      end
      else begin
        MessageDlg('No hay datos para editar.',mtInformation,[mbOk],0);
        cxCancelarDetalleClick(Sender);
      end;
     end
     else
     begin


      if contratos.RecordCount > 0 then begin
        cxSplitterTop.Visible:=True;
        dxLayoutControl10.Visible:=True;
        Contratos.Edit;
        cxDuracion.EditValue:=0;
      end
      else begin
        MessageDlg('No hay datos para editar.',mtInformation,[mbOk],0);
        cxCancelarDetalleClick(Sender);
      end;
     end;
   end;

   if cxPageDetalle.ActivePage = cxTabIMSS then begin
     cxLeyenda2.Caption:=titulo2+'[Editando]';
     uMovimientosIMSS.Edit;
     cxMovimientoExit(Sender);
     InfoImss.Visible:=True;
   end;

   if cxPageDetalle.ActivePage = cxTabComentarios then begin
     cxLeyenda2.Caption:=titulo2+'[Editando]';
     uComentarios.Edit;
     PanelC.Visible:=True;

   end;

   if cxPageDetalle.ActivePage = cxTabCursos then begin
    PanelCursos.Visible:=True;
    cxLeyenda2.Caption:=titulo2+'[Editando]';
    Cursos.Edit;
   end;

end;

procedure TfrmCatalogoEmpleados_ss7.cxGrid2DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if uMovimientosIMSS.RecordCount > 0 then
  begin

    if not uMovimientosIMSS.FieldByName('Documento').IsNull then
    begin
      global_Temp := 'movimiento_imss'+personal.FieldByName('CodigoPersonal').AsString+'.pdf';
      TBlobField(uMovimientosIMSS.FieldByName('Documento')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp );
      Application.CreateForm(TFrmVerPDF, FrmVerPDF);
      FrmVerPDF.ShowModal;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.cxGridDBTableView2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var AColumn1, AColumn2: TcxCustomGridTableItem;
begin
    AColumn1 := (Sender as TcxGridDBTableView).GetColumnByFieldName('dCantidad');
    AColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('dCantidad_E');
    if ARecord.Values[AColumn1.Index] <> ARecord.Values[AColumn2.Index]  then
    begin
       astyle := connection.cxAjuste ;
       astyle.Font.Color := clRed;
    end;

    AColumn1 := (Sender as TcxGridDBTableView).GetColumnByFieldName('dVentaSumaMN');
    AColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('dVentaSumaMN_E');
    if VarToStr(ARecord.Values[AColumn1.Index]) <> VarToStr(ARecord.Values[AColumn2.Index])  then
    begin
       astyle := connection.cxAjuste ;
       astyle.Font.Color := clRed;
    end;

    AColumn1 := (Sender as TcxGridDBTableView).GetColumnByFieldName('dVentaSumaDLL');
    AColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('dVentaSumaDLL_E');
    if VarToStr(ARecord.Values[AColumn1.Index]) <> VarToStr(ARecord.Values[AColumn2.Index])  then
    begin
       astyle := connection.cxAjuste ;
       astyle.Font.Color := clRed;
    end;

end;

procedure TfrmCatalogoEmpleados_ss7.CxGridMoePersonalCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  CxGridMoePersonal.OptionsView.CellAutoHeight := not CxGridMoePersonal.OptionsView.CellAutoHeight;
end;

procedure TfrmCatalogoEmpleados_ss7.CxGridMoePersonalColumn2PropertiesChange(
  Sender: TObject);
begin
    cxGridMoePersonal.OnDblClick(sender);
end;

procedure TfrmCatalogoEmpleados_ss7.cxGuardarDetalleClick(Sender: TObject);
var
        i   : longint;
        fh1 : TextFile;
        szFileName, szFileName1, id: String;
        szInputData, mensaje : String;
        nUserID, nFingerID, nSampleNumber,id2 : longint;
        temp:TUniquery;
        Fecha:TDateTime;
        lContinua : boolean;
begin
  lContinua := True;
   if cxPageDetalle.ActivePage = cxTabDocumentos then
   begin

       if lNoGuardarDocto then
      begin
          messageDLG('El Documento '+ ExtractFileName(Archivo)+ ', No es un archivo válido!', mtWarning, [mbOk], 0);
          lContinua := False;
      end
      else
      begin
         temp := tUniQuery.create(nil);
         temp.Connection := Connection.uConnection;

         doctoVP.FieldByName('IdPersonal').AsInteger := personal.FieldByName('IdPersonal').AsInteger;
         doctoVP.Post;

         temp.Active;
         temp.SQL.Text:='Select Max(IdDocxpersonal) as Id from rhu_docxpersonal';
         temp.Open;
         id:= temp.FieldByName('Id').AsString;
         creaNotyfi(2,'rhu_docxpersonal','IdDocxpersonal',id,'Documento','',Fecha,30);

         docto_usuarios.Refresh;
         temp.Destroy;
      end;
   end;

    if cxPageDetalle.ActivePage = cxTabContratos then
   begin
     if cxPageContrato.ActivePageIndex = 1 then
     begin
      zEntreda.FieldByName('IdPersonal').AsInteger := personal.FieldByName('IdPersonal').AsInteger;
      zEntreda.Post;
      zEntreda.Refresh;
       cxLeyenda2.Caption:=titulo2;
       cxSplitterTop.Visible   := False;
       dxLayoutControl21.Visible := False;
     end
     else
     begin
     contratos.FieldByName('IdPersonal').AsInteger := personal.FieldByName('IdPersonal').AsInteger;
     Contratos.Post;
     Contratos.Refresh;
     cxLeyenda2.Caption:=titulo2;
     cxSplitterTop.Visible   := False;
     dxLayoutControl10.Visible := False;
     end;

   end;

   if cxPageDetalle.ActivePage = cxTabCargo then
   begin
       puesto_empleado.FieldByName('IdEmpresa').AsInteger  := zEmpresa.FieldByName('IdEmpresa').AsInteger;
       puesto_empleado.FieldByName('IdPersonal').AsInteger := personal.FieldByName('IdPersonal').AsInteger;

       if puesto_empleado.FieldByName('Activo').AsString = 'Si' then begin
         QryBusca.Active:=False;
         AsignarSQL(Qrybusca,'rh_puesto_empleado',pUpdate);
         FiltrarDataSet(Qrybusca,'Id,Empresa,Puesto,Departamento,Personal,Activo',[-1,-1,-1,-1,Personal.FieldByName('IdPersonal').AsInteger,'Si']);
         QryBusca.Open;
         QryBusca.First;
         while not QryBusca.Eof do begin
           if not puesto_empleado.FieldByName('IdPuestoEmpleado').IsNull then  begin
            if puesto_empleado.FieldByName('IdPuestoEmpleado').AsInteger <> QryBusca.FieldByName('IdPuestoEmpleado').AsInteger then begin
             qryBusca.Edit;
             qryBusca.FieldByName('Activo').AsString:='No';
             qryBusca.Post;
            end;
           end
           else begin
             qryBusca.Edit;
             qryBusca.FieldByName('Activo').AsString:='No';
             qryBusca.Post;
           end;
           qryBusca.Next;
         end;
         if OpcButton1 = 'Edit' then
         begin
          connection.QryUBusca.Active := False;
          connection.QryUBusca.SQL.Clear;
          connection.QryUBusca.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen, sModulo, sSubModulo)' +
            'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen, :sModulo, :sSubModulo)');
          connection.QryUBusca.Params.ParamByName('Contrato').AsString    := Global_Contrato;
          connection.QryUBusca.Params.ParamByName('Usuario').AsString     := Global_Usuario;
          connection.QryUBusca.Params.ParamByName('Fecha').AsDate         := Date;
          connection.QryUBusca.Params.ParamByName('Hora').AsString        := FormatDateTime('hh:mm:ss.zzz', Now);
          connection.QryUBusca.Params.ParamByName('Descripcion').AsString := 'Modificacion de puesto/salario del empleado '+personal.FieldByName('NombreCompleto').AsString;
          connection.QryUBusca.Params.ParamByName('Origen').AsString      := 'Recursos Humanos';
          connection.QryUBusca.Params.ParamByName('sModulo').AsString      := 'Empleados';
          connection.QryUBusca.Params.ParamByName('sSubModulo').AsString      := 'Puesto';
          connection.QryUBusca.ExecSQL();
         end;
       end;

       puesto_empleado.Post;
       puesto_empleado.Refresh;
   end;

   if cxPageDetalle.ActivePage = cxTabContacto then
   begin
       contacto.FieldByName('IdPersonal').AsInteger := personal.FieldByName('IdPersonal').AsInteger;
       contacto.Post;
       contacto.Refresh;
   end;

   if cxPageDetalle.ActivePage = cxTabBanco then
   begin
       banco_empleado.FieldByName('IdPersonal').AsInteger := personal.FieldByName('IdPersonal').AsInteger;
       if banco_empleado.FieldByName('Activo').AsString = 'Si' then begin
         QryBusca.Active:=False;
         AsignarSQL(Qrybusca,'datos_bancarios_personal',pUpdate);
         FiltrarDataSet(Qrybusca,'Id,Personal,Banco,Activo',[-1,Personal.FieldByName('IdPersonal').AsInteger,-1,'Si']);
         QryBusca.Open;
         QryBusca.First;
         while not QryBusca.Eof do begin
           if not banco_empleado.FieldByName('IdDatosbancoxPersonal').IsNull then
            if banco_empleado.FieldByName('IdDatosBancoxPersonal').AsInteger <> QryBusca.FieldByName('IdDatosBancoxPersonal').AsInteger then begin
             qryBusca.Edit;
             qryBusca.FieldByName('Activo').AsString:='No';
             qryBusca.Post;
            end;
           qryBusca.Next;
         end;
       end;
       banco_empleado.Post;
       banco_empleado.Refresh;
   end;

   if cxPageDetalle.ActivePage = cxTabHuella then
   begin
     zScanner.ExecSQL;
     zScanner.Close;
   end;

   if cxPageDetalle.ActivePage = cxTabIMSS then begin
     uMovimientosIMSS.Post;
     uMovimientosIMSS.Refresh;

     InfoImss.Visible:=False;

   end;

   if cxPageDetalle.ActivePage = cxTabComentarios then begin
     uComentarios.Post;
     uComentarios.Refresh;
     PanelC.Visible:=False;

   end;

   if cxPageDetalle.ActivePage = cxTabCursos then begin
      Cursos.Post;
      Cursos.Refresh;
      try
        mensaje:='Por medio del presente correo se le notifica que se lo tifica que debe tomar el curso de '+edtNombreCurso.Text+
        ' el dia '+edtInicio.Text;
        if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then
           Enviar_Email(zCorreo.FieldByName('Correo').AsString,
                    //desencriptar(zCorreo.FieldByName('Contrasena').AsString,10),
                    zCorreo.FieldByName('Contrasena').AsString,
                    zCorreo.FieldByName('SMTP').AsString,
                    '',
                    'Curos de '+edtNombreCurso.Text,
                    zPersonal.FieldByName('CorreoElectronico').AsString,
                    Mensaje,
                    zCorreo.FieldByName('Puerto').AsInteger,
                    zCorreo.FieldByName('AplicaTLS').AsString)
         else
            EnviarMensaje(zCorreo.FieldByName('Correo').AsString,
                      //desencriptar(zCorreo.FieldByName('Contrasena').AsString,10),
                      zCorreo.FieldByName('Contrasena').AsString,
                      zCorreo.FieldByName('SMTP').AsString,
                      '',
                      'Curos de '+edtNombreCurso.Text,
                      zPersonal.FieldByName('CorreoElectronico').AsString,
                      Mensaje,
                      zCorreo.FieldByName('Puerto').AsInteger,
                      zCorreo.FieldByName('AplicaTLS').AsString);
      except
        ;
      end;
   end;
   cxLeyenda2.Caption:=titulo2;
   cxCancelarDetalle.OnClick(sender);
   cxGridGenerador.Enabled:= True;
   cxGridDocumentos.Enabled := True;
   PermisosBotones(frmCatalogoEmpleados_ss7,btnPermisos);
end;

procedure TfrmCatalogoEmpleados_ss7.cxNuevoDetalleClick(Sender: TObject);
var i:Integer;
    dato:String;
begin;
   {se deshabilitan los botones principales}
   frmBarraH11.btnAddClick(Sender);
   {Se deshabilitan los botones secundarios y se visualiza el panel de guardar y cancelar}
   cxNuevoDetalle.Enabled := False;
   cxEditaDetalle.Enabled := False;
   btnEliminarDetalle.Enabled:=False;
   PanelDown.Visible := True;
   {Se deshabilitan los grids}
   grid_bitacora.Enabled  := False;
   cxGridGenerador.Enabled:= False;
   cxGridDocumentos.Enabled := False;
   cxGridCargos.Enabled   := False;
   cxGridContacto.Enabled := False;
   cxGridBanco.Enabled    := False;
   cxGrid1.Enabled        := False;
   if cxPageDetalle.ActivePage = cxTabDocumentos then
   begin
       AsignarSQL(doctoVP,'docto_empleadoVP',pUpdate);
       FiltrarDataSet(doctoVP,'IdDocto',[-9]);
       doctoVP.Open;

       cxLeyenda2.Caption:=titulo2 +'[Agregando]';
       doctoVP.Append;
       cxDocumento.DataBinding.DataSource.DataSet.FieldByName('IdDocumento').AsInteger := documentos.FieldByName('IdDocumento').AsInteger;
       doctoVP.FieldByName('Fechaexpedicion').AsDateTime := date;
       doctoVP.FieldByName('Fechavigencia').AsDateTime   := GeneraPeriodoDocto(date,documentos.FieldByName('IdDocumento').AsInteger);
       doctoVP.FieldByName('Fechaaplicacion').AsDateTime := date;
       doctoVP.FieldByName('Activo').AsString := 'Si';
       PanelDown1.Visible := True;
       cxSplit1.Visible   := True;
       cxDocumento.SetFocus;
   end;

   if cxPageDetalle.ActivePage = cxTabCargo then
   begin
       cxLeyenda2.Caption:=titulo2+'[Agregando]';
       cxSplit2.Visible   := True;
       PanelDown2.Visible := True;
       dxLayoutItem149.Visible:=False;
       dxLayoutItem150.Visible:=False;
       dxLayoutItem151.Visible:=False;
        if zEmpresa.FieldByName('FK_Titulo').AsString = 'TYPHOON' then
         begin
           dxLayoutItem42.Visible:=False;
           dxLayoutItem47.Visible:=False;
         end;
       puesto_empleado.Append;
       cxPuesto.DataBinding.DataSource.DataSet.FieldByName('IdPuesto').AsInteger       := puesto.FieldByName('IdPuesto').AsInteger;
//       cxPuestoEspecialidad.DataBinding.DataSource.DataSet.FieldByName('IdEspecialidad').AsInteger := especialidad.FieldByName('IdEspecialidad').AsInteger;
//       cxPuestoSalario.DataBinding.DataSource.DataSet.FieldByName('IdSalario').AsInteger           := salario.FieldByName('IdSalario').AsInteger;
//       cxPuestoEspecialidad.DataBinding.DataSource.DataSet.FieldByName('IdDepartamento').AsInteger := departamento.FieldByName('IdDepartamento').AsInteger;
       puesto_empleado.FieldByName('Fechaaplicacion').AsDateTime := date;
       puesto_empleado.FieldByName('Activo').AsString := 'Si';
       cxPuesto.SetFocus;
   end;

   if cxPageDetalle.ActivePage = cxTabContacto then
   begin
       cxLeyenda2.Caption:=titulo2+'[Agregando]';
       cxSplit3.Visible   := True;
       PanelDown3.Visible := True;

       contacto.Append;
       contacto.FieldByName('Porcentaje').AsFloat := 0;
       contacto.FieldByName('Fechanacimiento').AsDateTime := date;
       contacto.FieldByName('Activo').AsString := 'Si';
       cxContactoNombre.SetFocus;
   end;

   if cxPageDetalle.ActivePage = cxTabBanco then
   begin
       cxLeyenda2.Caption:=titulo2+'[Agregando]';
       cxSplit4.Visible   := True;
       PanelDown4.Visible := True;

       if zEmpresa.FieldByName('FK_Titulo').AsString = 'TYPHOON' then
       begin
         dxLayoutItem62.Visible:=False;
         dxLayoutItem60.Visible:=False;
       end;

       banco_empleado.Append;
       cxBancos.DataBinding.DataSource.DataSet.FieldByName('IdBanco').AsInteger := bancos.FieldByName('IdBanco').AsInteger;
       banco_empleado.FieldByName('Fechadeaplicacion').AsDateTime := date;
       banco_empleado.FieldByName('Sucursal').AsString := 'N/A';
       banco_empleado.FieldByName('Activo').AsString := 'Si';
       cxBancos.SetFocus;
   end;

   if cxPageDetalle.ActivePage = cxTabHuella then
   begin

       dato:=ds_personal.DataSet.FieldByName('IdPersonal').asString;
       zPersonal.SQL.Text:='select * from master_personal where IdPersonal = '+dato+'';
       zPersonal.Open;
       cxLeyenda2.Caption:=titulo2+'[Agregando]';
       cxSplit1.Visible   := True;

       if (zPersonal.FieldByName('ImgHuella').asString <> '')then
       begin
         ShowMessage('Personal ya registrado');
         cxCancelarDetalle.OnClick(sender);
       end
       else
       begin
        objNBioBSP := CreateOleObject('NBioBSPCOM.NBioBSP');

        objDevice      := objNBioBSP.Device;
        objExtraction  := objNBioBSP.Extraction;
        objNSearch     := objNBioBSP.NSearch;

        if objNSearch.ErrorCode = NBioAPIERROR_NONE then
        begin
          Enroll;
        end
        else
        ShowMessage('Conectar biometrico!');
        end;
   end;

   if cxPageDetalle.ActivePage = cxTabContratos then
   begin
    cxSplitterTop.Visible:=True;


     if cxPageContrato.ActivePageIndex = 1 then
     begin
      dxLayoutControl21.Visible:=True;
      zEntreda.Append;
     end
     else
     begin
        dxLayoutControl10.Visible:=True;
        Contratos.Append;
        Contratos.FieldByName('IdPuestoEmpleado').AsInteger:=puesto_empleado.FieldByName('IdPuesto').AsInteger;
        Contratos.FieldByName('IdSalario').AsInteger:=uSalarios.FieldByName('IdSalario').AsInteger;
        Contratos.FieldByName('sNumeroOrden').AsString:=uProyectos.FieldByName('sNumeroOrden').AsString;

        cxDuracion.EditValue:=0;
     end;

   end;

   if cxPageDetalle.ActivePage = cxTabIMSS  then begin
     cxLeyenda2.Caption:=titulo2+'[Añadiendo]';
     uMovimientosIMSS.Append;
     uMovimientosIMSS.FieldByName('TipoMovimiento').AsString:='Alta';
     uMovimientosIMSS.FieldByName('FechaInicio').AsDateTime:=Date;
     uMovimientosIMSS.FieldByName('FechaFinal').AsDateTime:=Date;
     uMovimientosIMSS.FieldByName('IdEmpleado').AsInteger:=personal.FieldByName('IdPersonal').AsInteger;
     cxMovimientoExit(Sender);
     InfoImss.Visible:=True;
     cxMovimiento.SetFocus;
   end;

   if cxPageDetalle.ActivePage = cxTabComentarios then begin
     cxLeyenda2.Caption:=titulo2+'[Añadiendo]';
     uComentarios.Append;
     uComentarios.FieldByName('Fecha').AsDateTime:=Date;
     uComentarios.FieldByName('IdPersonal').AsInteger:=personal.FieldByName('IdPersonal').AsInteger;
     uComentarios.FieldByName('Comentario').AsString:='';
     PanelC.Visible:=True;
     cxFechaC.SetFocus;
   end;

   if cxPageDetalle.ActivePage = cxTabCursos then begin
    PanelCursos.Visible:=True;
    cxLeyenda2.Caption:=titulo2+'[Añadiendo]';
    Cursos.Append;
    Cursos.FieldByName('Estado').Asstring:='PENDIENTE';
    Cursos.FieldByName('FechaInicio').AsDateTime:=now;
    Cursos.FieldByName('FechaFin').AsDateTime:=Now+1;
    Cursos.FieldByName('IdPersonal').AsInteger:=personal.FieldByName('IdPersonal').AsInteger;
   end;
end;

procedure TfrmCatalogoEmpleados_ss7.cxPageContratoClick(Sender: TObject);
begin
 if cxPageContrato.ActivePageIndex = 0 then
 begin
    cxNuevoDetalle.Visible    := True;
    cxEditaDetalle.Visible    := True;
    btnEliminarDetalle.Visible:= True;
 end;
 if cxPageContrato.ActivePageIndex = 1 then
 begin
    cxNuevoDetalle.Visible    := True;
    cxEditaDetalle.Visible    := True;
    btnEliminarDetalle.Visible:= True;
 end;
  if cxPageContrato.ActivePageIndex = 1 then
 begin
    AsignarSQL(zEntreda,'devolucion',pUpdate);
    FiltrarDataSet(zEntreda,'IdPersonal',[personal.FieldByName('IdPersonal').AsInteger]);
    zEntreda.Open;
 end
 else
 begin
    uProyectos.Active:=False;
    AsignarSQL(uProyectos,'ordenesdetrabajo',pUpdate);
    FiltrarDataSet(uProyectos,'Contrato',[GLOBAL_CONTRATO]);
    uProyectos.Open;

    uSalarios.Active:=False;
    AsignarSQL(uSalarios,'rhu_salarios',pUpdate);
    FiltrarDataSet(uSalarios,'Id,Empresa,Nomina,Activo',[-1,zEmpresa.FieldByName('IdEmpresa').AsInteger,-1,'Si']);
    uSalarios.Open;

    puesto_empleado.Active := False;
    AsignarSQL(puesto_empleado,'cargo_personal',pUpdate);
    FiltrarDataSet(puesto_empleado,'IdPersonal,IdEmpresa',[personal.FieldByName('IdPersonal').AsInteger,zEmpresa.FieldByName('IdEmpresa').AsInteger]);
    puesto_empleado.Open;

    AsignarSQL(contratos,'Contratos',pUpdate);
    FiltrarDataSet(contratos,'IdPersonal',[personal.FieldByName('IdPersonal').AsInteger]);
    Contratos.Open;
 end;

end;

procedure TfrmCatalogoEmpleados_ss7.cxPageControlFormatosChange(Sender: TObject);
var
  tempo_table:TUniQuery;
begin
    if cxPageControlFormatos.ActivePage  = Credenciales then
    begin
        Proveedores.Active := False ;
        AsignarSQL(Proveedores,'master_proveedores',pUpdate);
        FiltrarDataSet(Proveedores, 'IdProveedor',['-1']);
        Proveedores.Open;

        Proveedor_personal.Active := False ;
        AsignarSQL(Proveedor_personal,'master_proveedor_personal',pUpdate);
        Proveedor_personal.Open;

        Proveedor_personal.Append;
        cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger := proveedores.FieldByName('IdProveedor').AsInteger;
        Proveedor_personal.FieldByName('Sexo').AsString := 'Hombre';
        Proveedor_personal.FieldByName('FechaNacimiento').AsDateTime := Date;
        Proveedor_personal.FieldByName('Activo').AsString := 'Si';
        if cxCredencialVigencia.Text = '' then
           cxCredencialVigencia.Date := Date;

        mListaCredenciales.Active:=False;
        mListaCredenciales.Open;

        cantidadLista:=0;
        dxLayoutItem121.Visible:=False;

        tempo_table:=TUniQuery.Create(nil);
        tempo_table.Connection:= Connection.Uconnection;

        tempo_table.Active:=False;
        tempo_table.SQL.Text:='DROP TABLE IF EXISTS tempo_credenciales';
        tempo_table.Execute;

        tempo_table.Active:=False;
        tempo_table.SQL.Text:='CREATE TEMPORARY TABLE tempo_credenciales SELECT * FROM master_proveedor_personal LIMIT 0';
        tempo_table.Execute;
    end;

    if cxPageControlFormatos.ActivePage = cxPageContratoRapido then begin
      if Proveedor_personal.State in [dsInsert,dsEdit] then
        Proveedor_personal.Cancel;
    end;

end;

procedure TfrmCatalogoEmpleados_ss7.cxPageDetalleClick(Sender: TObject);
begin
    btnEliminarDetalle.Visible:= True;
    cxEditaDetalle.Visible    := True;
    cxNuevoDetalle.Visible    := True;
    cxGuardarDetalle.Visible  := True;
    cxCancelarDetalle.Visible := True;
    btnAutorizar.Visible      :=False;
    cxCancelarDetalle.OnClick(sender);
    cxEditaDetalle.Tag:=0;
    PermisosBotones(frmCatalogoEmpleados_ss7,btnPermisos);
    if cxPageDetalle.ActivePage = cxTabDocumentos then
    begin
        titulo2 := 'Documentos';
        cxLeyenda2.Caption:=titulo2;
        cxEditaDetalle.Visible:=True;

        docto_usuarios.Active := False;
        docto_usuarios.ParamByName('IdPersonal').AsInteger := personal.FieldByName('IdPersonal').AsInteger;
        docto_usuarios.Open;
        btnEliminarDetalle.Enabled:=True;
    end;

    if cxPageDetalle.ActivePage = cxTabCargo then
    begin
        titulo2 := 'Puestos por Empleado';
        cxLeyenda2.Caption:=titulo2;
        if puesto.Active = False then
        begin
           activa_detalle_puestos;
        end;

        if zEmpresa.FieldByName('FK_Titulo').AsString = 'TYPHOON' then begin
           btnAutorizar.Visible:=True;
        end;
        puesto_empleado.Active := False;
        AsignarSQL(puesto_empleado,'cargo_personal',pUpdate);
        FiltrarDataSet(puesto_empleado,'IdPersonal,IdEmpresa',[personal.FieldByName('IdPersonal').AsInteger,zEmpresa.FieldByName('IdEmpresa').AsInteger]);
        puesto_empleado.Open;
    end;

    if cxPageDetalle.ActivePage = cxTabContacto then
    begin
        titulo2 := 'Contacto ';
        cxLeyenda2.Caption:=titulo2;
        cxEditaDetalle.Visible:=True;

        contacto.Active := False;
        contacto.ParamByName('IdPersonal').AsInteger := personal.FieldByName('IdPersonal').AsInteger;
        contacto.Open;
    end;

    if cxPageDetalle.ActivePage = cxTabBanco then
    begin
        titulo2 := 'Cuentas de Banco ';
        cxLeyenda2.Caption:=titulo2;
        cxEditaDetalle.Visible:=True;

        bancos.Active :=  False;
        bancos.Open;

        banco_empleado.Active := False;
        banco_empleado.ParamByName('IdPersonal').AsInteger := personal.FieldByName('IdPersonal').AsInteger;
        banco_empleado.Open;
    end;

    if cxPageDetalle.ActivePage = cxTabHuella then
    begin
        titulo2 := 'Huella ';
        cxEditaDetalle.Tag:=13;
        PermisosBotones(frmCatalogoEmpleados_ss7,btnPermisos);
        cxLeyenda2.Caption:=titulo2;
        cxEditaDetalle.Visible    := True;
    end;

    if cxPageDetalle.ActivePage = cxTabContratos then
    begin
        titulo2 :=  'Contratos';
        cxLeyenda2.Caption:=titulo2;

         if cxPageContrato.ActivePageIndex = 1 then
         begin
            AsignarSQL(zEntreda,'devolucion',pUpdate);
            FiltrarDataSet(zEntreda,'IdPersonal',[personal.FieldByName('IdPersonal').AsInteger]);
            zEntreda.Open;
         end
         else
         begin
            uProyectos.Active:=False;
            AsignarSQL(uProyectos,'ordenesdetrabajo',pUpdate);
            FiltrarDataSet(uProyectos,'Contrato',[GLOBAL_CONTRATO]);
            uProyectos.Open;

            uSalarios.Active:=False;
            AsignarSQL(uSalarios,'rhu_salarios',pUpdate);
            FiltrarDataSet(uSalarios,'Id,Empresa,Nomina,Activo',[-1,zEmpresa.FieldByName('IdEmpresa').AsInteger,-1,'Si']);
            uSalarios.Open;

            puesto_empleado.Active := False;
            AsignarSQL(puesto_empleado,'cargo_personal',pUpdate);
            FiltrarDataSet(puesto_empleado,'IdPersonal,IdEmpresa',[personal.FieldByName('IdPersonal').AsInteger,zEmpresa.FieldByName('IdEmpresa').AsInteger]);
            puesto_empleado.Open;

            AsignarSQL(contratos,'Contratos',pUpdate);
            FiltrarDataSet(contratos,'IdPersonal',[personal.FieldByName('IdPersonal').AsInteger]);
            Contratos.Open;
         end;
    end;

    if cxPageDetalle.ActivePage = cxQuickFormat then begin
        titulo2 :=  'Formatos Rápidos ';
        cxLeyenda2.Caption:=titulo2;
        cxNuevoDetalle.Visible:=False;
        cxEditaDetalle.Visible:=False;
        btnEliminarDetalle.Visible:=False;
        PanelDown.Visible:=False;
    end;

    if cxPageDetalle.ActivePage = cxTabInformes then
    begin
        titulo2 :=  'Informes ';
        cxLeyenda2.Caption:=titulo2;
        cxNuevoDetalle.Visible:=False;
        cxEditaDetalle.Visible:=False;
        btnEliminarDetalle.Visible:=False;
        cxGuardarDetalle.Visible:=False;
        cxCancelarDetalle.Visible:=False;

        AsignarSQL(zFirma, 'rd_firmas', pUpdate);
        FiltrarDataSet(zFirma, 'IdFirma, Contrato',[-1, Global_Contrato]);
        zFirma.Open;
        AsignarSQL(zGuardaFirma, 'firmas_modulos_rh', pUpdate);
        FiltrarDataSet(zGuardaFirma, 'IdFirma',[-1]);
        zGuardaFirma.Open;
    end;

    if cxPageDetalle.ActivePage = cxTabEPP then begin
        titulo2 := 'Entrega E.P.P.';
        cxLeyenda2.Caption:=titulo2;
        cxNuevoDetalle.Visible:=False;
        cxEditaDetalle.Visible:=False;
        btnEliminarDetalle.Visible:=False;

        PanelDown.Visible:=False;

        AsignarSQL(uEPP,'empleados_entrega_epp',pUpdate);
        FiltrarDataSet(uEPP,'Empleado',[personal.FieldByName('IdPersonal').AsInteger]);
        uEPP.Open;
    end;

    if cxPageDetalle.ActivePage = cxTabIMSS then begin
      titulo2:='Movimientos IMSS';
      cxLeyenda2.Caption:=titulo2;
      PanelDown.Visible:=False;

      AsignarSQL(uMovimientosIMSS,'movimientos_imss',pUpdate);
      FiltrarDataSet(uMovimientosIMSS,'Id,Empleado',[-1,personal.FieldByName('IdPersonal').AsInteger]);
      uMovimientosIMSS.Open;

    end;

    if cxPageDetalle.ActivePage = cxTabComentarios then begin
      titulo2:='Comentarios';
      cxLeyenda2.Caption:=titulo2;
      PanelDown.Visible:=False;

      AsignarSQL(uComentarios,'comentarios_personal',pUpdate);
      FiltrarDataSet(uComentarios,'Id,Personal',[-1,personal.FieldByName('IdPersonal').AsInteger]);
      uComentarios.Open;

    end;

    if cxPageDetalle.ActivePage = cxTabCursos then begin
      titulo2:='Cursos';
      cxLeyenda2.Caption:=titulo2;
      PanelDown.Visible:=False;

      Cursos.Filtered:=False;
      Cursos.Filter:='IdPersonal = '+ QuotedStr(personal.FieldByName('IdPersonal').AsString);
      Cursos.Filtered:=True;

      zCorreo.ParamByName('Usuario').AsString  := global_usuario;
      zCorreo.ParamByName('Empresa').AsInteger := connection.ucontrato.FieldByName('IdEmpresa').AsInteger;
      zCorreo.Open;
    end;


    cxEditaDetalle.Tag:=0;
end;

procedure TfrmCatalogoEmpleados_ss7.cxVerClick(Sender: TObject);
begin
    if PanelAnexos.Visible  then
    begin
       PanelAnexos.Visible := False;
       cxAceptar.Enabled := False;
       cxCancelar.Enabled := False;
       PanelActa.Visible := True;
       btnCargar.Visible:=False;

       cxCodigo.Enabled:=False;
       cxNombres.Enabled:=False;
       cxApellidoPaterno.Enabled:=False;
       cxApellidoMaterno.Enabled:=False;
       cxSexo.Enabled:=False;
       cxEstadoCivil.Enabled:=False;
       cxCorreo.Enabled:=False;
       cxFechaRegistro.Enabled:=False;
       cxFechaNacimiento.Enabled:=False;
       cxFechaRegistro.Enabled:=False;
       btnCargar.Enabled:=False;
       cxCalle.Enabled:=False;
       cxColonia.Enabled:=False;
       cxCiudad.Enabled:=False;
       cxInterior.Enabled:=False;
       cxCP.Enabled:=False;
       cxLocalidad.Enabled:=False;
       cxExterior.Enabled:=False;
       cxRFC.Enabled:=False;
       cxNSS.Enabled:=False;
       cxCURP.Enabled:=False;
       cxIFE.Enabled:=False;
       edtGrSangre.Enabled:=False;
       edtAlergia.Enabled:=False;
       cxInfonavit.Enabled:=False;
       cxAplicacionInfonavit.Enabled:=False;
       cxTipoInfonavit.Enabled:=False;
       cxTerminoInfonavit.Enabled:=False;
       cxFactorInfonavit.Enabled:=False;
       cxTelefono.Enabled:=False;
       cxMovil.Enabled:=False;
       cxEdad.Enabled:=False;
       dxDBToggleSwitch1.Enabled:=False;
       cxvalidarActivo.Enabled:=False;
       cxLNac.Enabled:=False;
       cxTalla.Enabled:=False;
       cxCalzado.Enabled:=False;
    end
    else
    begin
       PanelAnexos.Visible := True;
       cxAceptar.Enabled := True;
       cxCancelar.Enabled := True;
       PanelActa.Visible := False;
       PanelAnexos.Visible := True;
       btnCargar.Visible:=True;
       bImagen.Picture.Graphic := nil;

       cxCodigo.Enabled:=True;
       cxNombres.Enabled:=True;
       cxApellidoPaterno.Enabled:=True;
       cxApellidoMaterno.Enabled:=True;
       cxSexo.Enabled:=True;
       cxEstadoCivil.Enabled:=True;
       cxCorreo.Enabled:=True;
       cxFechaRegistro.Enabled:=True;
       cxFechaNacimiento.Enabled:=True;
       cxFechaRegistro.Enabled:=True;
       btnCargar.Enabled:=True;
       cxCalle.Enabled:=True;
       cxColonia.Enabled:=True;
       cxCiudad.Enabled:=True;
       cxInterior.Enabled:=True;
       cxCP.Enabled:=True;
       cxLocalidad.Enabled:=True;
       cxExterior.Enabled:=True;
       cxRFC.Enabled:=True;
       cxNSS.Enabled:=True;
       cxCURP.Enabled:=True;
       cxIFE.Enabled:=True;
       edtGrSangre.Enabled:=True;
       edtAlergia.Enabled:=True;
       cxInfonavit.Enabled:=True;
       cxAplicacionInfonavit.Enabled:=True;
       cxTipoInfonavit.Enabled:=True;
       cxTerminoInfonavit.Enabled:=True;
       cxFactorInfonavit.Enabled:=True;
       cxTelefono.Enabled:=True;
       cxMovil.Enabled:=True;
       cxEdad.Enabled:=True;
       dxDBToggleSwitch1.Enabled:=True;
       cxvalidarActivo.Enabled:=True;
       cxLNac.Enabled:=True;
       cxTalla.Enabled:=True;
       cxCalzado.Enabled:=True;
    end;
end;


procedure TfrmCatalogoEmpleados_ss7.cxViewDocumentosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

  if docto_usuarios.RecordCount > 0 then
  begin
    AsignarSQL(doctoVP,'docto_empleadoVP',pUpdate);
    FiltrarDataSet(doctoVP,'IdDocto',[docto_usuarios.FieldByName('IdDocxpersonal').AsInteger]);
    doctoVP.Open;

    if not doctoVP.FieldByName('DocumentoDigital').IsNull then
    begin
      global_Temp := 'docto_empleado_'+personal.FieldByName('CodigoPersonal').AsString+'.pdf';
      TBlobField(doctoVP.FieldByName('DocumentoDigital')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp );
      Application.CreateForm(TFrmVerPDF, FrmVerPDF);
      FrmVerPDF.ShowModal;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;
end;

procedure TfrmCatalogoEmpleados_ss7.Enroll;
var
        i         : longint;
        nUserID   : longint;
        szFir     : wideString;
        str       : widestring;
        ListItem  : TListItem;
        objResult : variant;

begin
        nUserID := ds_personal.DataSet.FieldByName('IdPersonal').asInteger;

        objDevice.Open(NBioAPI_DEVICE_ID_AUTO_DETECT);

        objExtraction.Enroll(0);
        if objExtraction.ErrorCode <> NBioAPIERROR_NONE then
        begin
                str := objExtraction.ErrorDescription;
                Application.MessageBox('La extracción falló! volver a intentar', 'Error', mb_ok);
                objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);
                cxCancelarDetalle.OnClick(nil);
                Exit;

        end;

        objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);
        szFir := objExtraction.TextEncodeFIR;
        objNSearch.AddFIR(szFir, nUserID);

        if objNSearch.ErrorCode <> NBioAPIERROR_NONE then
        begin
                str := objNSearch.ErrorDescription;
                Application.MessageBox('La extracción falló! volver a intentar', 'Error', mb_ok);
                cxCancelarDetalle.OnClick(nil);
                Exit;
        end;
        szFir:= StringReplace(szFir, '''',  '', [rfReplaceAll]);
        zScanner.SQL.Text:='Update master_personal set ImgHuella = :Dato where IdPersonal = :Id';
        zScanner.ParamByName('Id').AsInteger:=ds_personal.DataSet.FieldByName('IdPersonal').asInteger;
        zScanner.ParamByName('Dato').AsString:= szFir;

end;

procedure TfrmCatalogoEmpleados_ss7.activa_detalle_puestos;
begin
    puesto.Active := False;
    puesto.ParamByName('IdEmpresa').AsInteger := zEmpresa.FieldByName('IdEmpresa').AsInteger;
    puesto.Open;

    salario.Active := False;
    salario.ParamByName('IdEmpresa').AsInteger := zEmpresa.FieldByName('IdEmpresa').AsInteger;
    salario.Open;

    departamento.Active := False;
    departamento.ParamByName('IdEmpresa').AsInteger := zEmpresa.FieldByName('IdEmpresa').AsInteger;
    departamento.Open;

    bancos.Active :=  False;
    bancos.Open;

    CxGridMoePersonal.DataController.Groups.FullExpand;

end;

procedure TfrmCatalogoEmpleados_ss7.BuscaPersonalProveedor;
begin
   BuscarPersonal := tUniQuery.create(nil);
   BuscarPersonal.Connection := Connection.uConnection;

   BuscarPersonal.Active := False;
   BuscarPersonal.SQL.Add('select * from master_proveedor_personal where NombreCompleto =:Nombre and IdProveedor =:Id');
   BuscarPersonal.ParamByName('Nombre').AsString := cxCredencialNombre.Text;
   BuscarPersonal.ParamByName('Id').AsInteger    := cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger;
   BuscarPersonal.Open;
end;
end.
