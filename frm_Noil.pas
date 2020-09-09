unit frm_Noil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, global, ComCtrls, frm_connection, DB, jpeg, ExtCtrls,
  ImgList, StdCtrls, RXClock, StdActns, PSAPI, StrUtils, ShellApi,
  Sockets, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdTime, IdTCPServer, IdUDPBase, IdUDPClient, IdEcho, Mask,utilerias, StoHtmlHelp, rxSpeedbar,
  ToolWin,
  UnitExcepciones,
  Buttons, iniFiles, ZConnection,
  unitmanejofondo, masutilerias, unitMetodos,
  RxLookup, DBCtrls, Grids, DBGrids, rxToolEdit, rxCurrEdit, RXDBCtrl,
  AppEvnts,
  frxClass,  ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ActnList, cxGraphics, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, cxClasses, dxBar, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxSkinsdxNavBarPainter, dxNavBar, dxRibbon, dxRibbonGallery,
  dxSkinChooserGallery, dxGalleryControl, dxRibbonBackstageViewGalleryControl,
  dxNavBarCollns, dxNavBarBase, dxRibbonMiniToolbar, dxSkinsForm, dxStatusBar,
  dxRibbonStatusBar, dxRibbonBackstageView,dxRibbonForm, dxGallery, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxPC, dxSkinscxPCPainter, cxPCdxBarPopupMenu, dxTabbedMDI,
  cxFontNameComboBox, dxLayoutLookAndFeels, dxRibbonRadialMenu,Clipbrd,
  dxSkinsdxDockControlPainter, cxLocalization, dxDockControl,
  dxBarApplicationMenu, dxBarDBNav, cxPropertiesStore, dxLayoutContainer,
  dxLayoutControl, dxScreenTip, cxLabel, dxAlertWindow, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxImage, dxCustomHint, cxHint,
   dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, DateUtils, dxBarBuiltInMenu,
  dxRibbonCustomizationForm, dxGDIPlusClasses, cxButtons,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList,
  MemDS, DBAccess, Uni, cxDBEdit, dxDockPanel, cxGridLevel, cxGridDBTableView,
  dxmdaset, cxGridViewLayoutContainer, cxGridLayoutView, cxGridDBLayoutView,
  cxGridCustomLayoutView, cxMemo, Vcl.WinXCtrls, cxGridCardView,
  cxGridDBCardView, cxImageComboBox, dxLayoutcxEditAdapters ;

const
	InputBoxMessage = WM_USER + 200;

type
  TfrmNoil = class(TdxRibbonForm)
  Status: TdxRibbonStatusBar;
  Tiempo: TTimer;
  OpenDialog1: TOpenDialog;
  frxReport1: TfrxReport;
  dxBarManager1: TdxBarManager;
  dxRibbon1Tab1: TdxRibbonTab;
    mNoil: TdxRibbon;
    mnControlObra: TdxRibbonTab;
  dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
  dxSkinController1: TdxSkinController;
  dxBarManager1Bar9: TdxBar;
  dxBarManager1Bar2: TdxBar;
    mnPrecioUnitario: TdxRibbonTab;
    mnRecursosHumanos: TdxRibbonTab;
  Nominas: TdxRibbonTab;
    mnControlAdmin: TdxRibbonTab;
    mnAlmacen: TdxRibbonTab;
    mnVentas: TdxRibbonTab;
  menuEstimacion: TdxRibbonTab;
  estirado: TdxBarButton;
  centrado: TdxBarButton;
  mosaico: TdxBarButton;
  cascada: TdxBarButton;
  mosaicovertical: TdxBarButton;
  mosaicohorizontal: TdxBarButton;
  sSalir: TdxBarLargeButton;
  opSQLAnexo: TdxBarButton;
  cConvenios: TdxBarButton;
  opEmpleados: TdxBarButton;
  cAnexo: TdxBarButton;
  cPolizas: TdxBarButton;
  cDistribuyeO: TdxBarButton;
  cFichaTecnica: TdxBarButton;
  cTrinomios: TdxBarButton;
  cActividades: TdxBarButton;
  cOrdenes: TdxBarButton;
  cRecursos: TdxBarButton;
  cVerifica: TdxBarButton;
  mnOperaciones: TdxBarSubItem;
  ControlPers: TdxBarSubItem;
  mnAvances: TdxBarSubItem;
  mnDiario: TdxBarSubItem;
  mnConsultas: TdxBarSubItem;
  mnEstimaciones: TdxBarSubItem;
  adDistPrograma: TdxBarButton;
  cPaquetesAct: TdxBarButton;
  adReg02: TdxBarButton;
  adReg03: TdxBarButton;
  adReg04: TdxBarButton;
  mnuPersonal2: TdxBarButton;
  oficmodif: TdxBarButton;
  MovPerofic: TdxBarButton;
  cAvContrato: TdxBarButton;
  cAvOrden: TdxBarButton;
  cConsulta1: TdxBarButton;
  cConsulta3: TdxBarButton;
  cConsulta6: TdxBarButton;
  cConsulta5: TdxBarButton;
  opComparativo1: TdxBarButton;
  opComparativo5: TdxBarButton;
  rComparativo: TdxBarButton;
  opPermisos: TdxBarButton;
  opFirmas: TdxBarButton;
  rInstalado: TdxBarButton;
  rDiario: TdxBarButton;
  reporteBarco: TdxBarButton;
  rGerencial: TdxBarButton;
  rSintesis: TdxBarButton;
  qComentarios: TdxBarButton;
  opTiemposM: TdxBarButton;
  adCancelacion: TdxBarButton;
  opValida: TdxBarButton;
  opAbre: TdxBarButton;
  opProyeccion: TdxBarButton;
  opEstimaciones: TdxBarButton;
  opValidaEst: TdxBarButton;
  OpCrearGenerado: TdxBarSubItem;
  opGeneradores: TdxBarButton;
  opHistorico: TdxBarButton;
  rPartidasIsom: TdxBarButton;
  dxBarSubItem12: TdxBarSubItem;
  cambiarfondo: TdxBarButton;
  irareportesdiarios: TdxBarButton;
  iraestimaciones: TdxBarButton;
  irageneradores: TdxBarButton;
  cambiarmododefondo: TdxBarSubItem;
  ventanaen: TdxBarSubItem;
  irageneradoresdeinformes: TdxBarButton;
  Cambiarimagendefondo1: TdxBarButton;
  estirado1: TdxBarButton;
  centrado1: TdxBarButton;
  mosaico1: TdxBarButton;
  cambiarmododefondo1: TdxBarSubItem;
  Cascada1: TdxBarButton;
  MosaicoVertical1: TdxBarButton;
  MosaicoHorizontal1: TdxBarButton;
  Ventanasen1: TdxBarSubItem;
  Irareportesdiarios1: TdxBarButton;
  Iraestimaciones1: TdxBarButton;
  Irageneradores1: TdxBarButton;
  Irageneradoresdeinformes1: TdxBarButton;
  cConsulta4: TdxBarButton;
  dxBarManager1Bar10: TdxBar;
  Catalogos2: TdxBarSubItem;
  Empleados1: TdxBarLargeButton;
  Equipos1: TdxBarLargeButton;
  EquipodeSeguridad1: TdxBarSubItem;
  ImprimirContratos1: TdxBarLargeButton;
  ImportaciondeDatos1: TdxBarLargeButton;
  ControldeGuardias1: TdxBarLargeButton;
  ConfiguracionRH1: TdxBarLargeButton;
  EstatusEmpleados1: TdxBarButton;
  Puestos2: TdxBarButton;
  AreasDepartamentos1: TdxBarButton;
  EstatusDiarioEmpleados1: TdxBarButton;
  EstatusEquipos1: TdxBarButton;
  InstitucionesEducativas1: TdxBarButton;
  Profesiones1: TdxBarButton;
  LocalidadesEducativas1: TdxBarButton;
  NiveldeOrganizacin1: TdxBarButton;
    Organizacion1: TdxBarButton;
  EquipodeSeguridad2: TdxBarButton;
  SalidadeEquipodeSeguridad1: TdxBarButton;
  ConsultadeEquipodeSeguridad1: TdxBarButton;
  dxBarManager1Bar13: TdxBar;
  Catlogos1: TdxBarSubItem;
  Nminas1: TdxBarSubItem;
  ablasISR1: TdxBarSubItem;
  CatlogodeRegistrosPatronales1: TdxBarButton;
  CatlogodeEmpleados1: TdxBarButton;
  CatlogodePercepciones1: TdxBarButton;
  CatlogodeDeducciones1: TdxBarButton;
  CatlogodePrestacionesdeLey1: TdxBarButton;
  subZonasGeo: TdxBarButton;
  NminasProcesadas1: TdxBarSubItem;
  NminasProcesadas2: TdxBarButton;
  AbrirNmina1: TdxBarButton;
  ProcesarNmina1: TdxBarButton;
  SeleccindeEgresos1: TdxBarButton;
  HojadeIncidencias1: TdxBarButton;
  Recibos1: TdxBarButton;
  GuardarNmina1: TdxBarButton;
  ReportedeNmina1: TdxBarButton;
  ReportedeClculo1: TdxBarButton;
  arifaMensual1: TdxBarButton;
  SubsidiodeEmpleo1: TdxBarButton;
  ablasIMSS1: TdxBarLargeButton;
  Configuracion1: TdxBarLargeButton;
  ProcesarNmina2: TdxBarButton;
  Catalogos1: TdxBarSubItem;
  ControlIngresos1: TdxBarSubItem;
  ControlEgresos1: TdxBarSubItem;
  AperturaValidacion1: TdxBarSubItem;
  GeneracionInformesReportes1: TdxBarSubItem;
  ModuloTraspaso1: TdxBarLargeButton;
  DetalleGastosxEmpleado1: TdxBarLargeButton;
  ConfiguraciondeContabilidad1: TdxBarLargeButton;
  mnuBancos: TdxBarButton;
  Clientes1: TdxBarButton;
  CuentasBancarias1: TdxBarButton;
  CuentasContables1: TdxBarButton;
  Egresos1: TdxBarButton;
  GrupodeEgresos1: TdxBarButton;
  Proveedores1: TdxBarButton;
  DepositosBancarios1: TdxBarButton;
  EstadosdeCuentasBancarios1: TdxBarButton;
  EmisiondeCheques1: TdxBarButton;
  ransferencia1: TdxBarButton;
  ConsultadeGastos1: TdxBarButton;
  HistoricodeEgresos1: TdxBarButton;
  AperturadeComprobacion1: TdxBarButton;
  CerrarComprobacin1: TdxBarButton;
  Ingresos2: TdxBarButton;
  Egresos3: TdxBarButton;
  Catalogos3: TdxBarSubItem;
  ProspectosClientes1: TdxBarLargeButton;
  Vendedores1: TdxBarLargeButton;
  iposdeClientes1: TdxBarLargeButton;
  configuraciones: TdxBarSubItem;
  tbConsult: TdxBarSubItem;
  tbReports: TdxBarSubItem;
  tbHisto: TdxBarSubItem;
  tbSeg: TdxBarSubItem;
  tbbSetup: TdxBarButton;
  tbbPaquetePer: TdxBarButton;
  tbbPaqEq: TdxBarButton;
  tbbConsult6: TdxBarButton;
  tbbRepDiario: TdxBarButton;
  tbbRepBarco: TdxBarButton;
  tbbAvisoEmb: TdxBarButton;
  tbbFotos: TdxBarButton;
  tbbEmpleados: TdxBarButton;
  tbbAutoriza: TdxBarButton;
  tbbDesautoriza: TdxBarButton;
  tbbEstima: TdxBarButton;
  tbbGenera: TdxBarButton;
  tbbInformes: TdxBarButton;
  dxBarSubItem4: TdxBarSubItem;
  dxBarSubItem9: TdxBarSubItem;
  sAcerca: TdxBarButton;
  opAyuda: TdxBarButton;
  sTips: TdxBarButton;
  sWarning: TdxBarButton;
  mnuKardex: TdxBarButton;
  sCambiaP: TdxBarButton;
  sLogin: TdxBarButton;
  sSeleccion: TdxBarButton;
  dxBarSubItem10: TdxBarSubItem;
  mnAdmon: TdxBarSubItem;
  adDeptos: TdxBarButton;
  adProgramas: TdxBarButton;
  adUsuariosC: TdxBarButton;
  AsignaciondeOrd: TdxBarButton;
  adUsuarios: TdxBarButton;
  adGrupos: TdxBarButton;
  SubAdministrador: TdxBarButton;
  adContratos: TdxBarButton;
  adSubContratos: TdxBarButton;
  adConfiguracion: TdxBarButton;
  adTurnos: TdxBarButton;
  catIdiomas: TdxBarButton;
  adFestivos: TdxBarButton;
  adAvisos: TdxBarButton;
  adGrupoP: TdxBarButton;
  opadmonCatalogo: TdxBarButton;
  adTiposMov: TdxBarButton;
  cFases: TdxBarButton;
  cProgPlaticas: TdxBarButton;
  InformedeSincronizado1: TdxBarButton;
  mnAdmonPEP: TdxBarSubItem;
  adResidencias: TdxBarButton;
  adActivos: TdxBarButton;
  cFactorCosto: TdxBarButton;
  CatalogoErrores: TdxBarButton;
  mnHerramientas: TdxBarSubItem;
  adSql: TdxBarButton;
  adImportar: TdxBarButton;
  adExportar: TdxBarButton;
  adImportarOk: TdxBarButton;
  adExportar2: TdxBarButton;
  mnCopiarParametros: TdxBarButton;
  MnuImpAvCont: TdxBarButton;
  CargaPrograma: TdxBarButton;
  Graficador: TdxBarButton;
  ChartPro: TdxBarButton;
  cProveedores: TdxBarLargeButton;
  MnuEntAlmace: TdxBarLargeButton;
  MnuSalAlmacen: TdxBarLargeButton;
  opInventario: TdxBarLargeButton;
  opRequisiciones: TdxBarLargeButton;
  opPedidos: TdxBarLargeButton;
  opAvisodeEmb: TdxBarLargeButton;
  optEstimaciones: TdxBarLargeButton;
  optValida: TdxBarLargeButton;
  optDesautoriza: TdxBarLargeButton;
  mnPanel: TdxRibbonTab;
  dxRibbon1Tab4: TdxRibbonTab;
  dxBarManager1Bar7: TdxBar;
  GerencialBarco1: TdxBarLargeButton;
  ReportedeProduccion: TdxBarLargeButton;
  geAvFiFin: TdxBarLargeButton;
  ProyecciondeAct: TdxBarLargeButton;
  gePersonalProg: TdxBarLargeButton;
  grPenasRet: TdxBarLargeButton;
  AccesoObra: TdxBarLargeButton;
  FontDialog1: TFontDialog;
  ReplaceDialog: TReplaceDialog;
  dxTabbedMDIManager1: TdxTabbedMDIManager;
  cxLocalizer1: TcxLocalizer;
  menu: TdxBarApplicationMenu;
  dxBarSubItem1: TdxBarSubItem;
  dxBarSubItem2: TdxBarSubItem;
  dxBarSubItem3: TdxBarSubItem;
  dxBarSubItem5: TdxBarSubItem;
  dxBarSubItem6: TdxBarSubItem;
  cEmbarcaciones: TdxBarButton;
  mnPersonal: TdxBarSubItem;
  mnEquipos: TdxBarSubItem;
  mnHerramienta: TdxBarSubItem;
  mnBasicos: TdxBarSubItem;
  mnuAgrupacionP: TdxBarButton;
  cPersonal: TdxBarButton;
  cPaquetesPer: TdxBarButton;
  opProgramacion: TdxBarButton;
  Tripulacion: TdxBarButton;
  cEquipos: TdxBarButton;
  cPaquetesEq: TdxBarButton;
  subHerramientas: TdxBarButton;
  subHerramientas_p: TdxBarButton;
  subBasicos: TdxBarButton;
  subBasicos_p: TdxBarButton;
  subMateriales: TdxBarButton;
  dxBarSubItem7: TdxBarSubItem;
  dxBarSubItem8: TdxBarSubItem;
  dxBarSubItem11: TdxBarSubItem;
  dxBarSubItem13: TdxBarSubItem;
  cPlataformas: TdxBarButton;
  cPernoctan: TdxBarButton;
  mnuPozosdePerfo: TdxBarButton;
  menuRecursos: TdxBarSubItem;
  cCuentas: TdxBarButton;

  cIsometricosNuevo: TdxBarButton;
  MnuGpoPerimetros: TdxBarButton;
  MnuPerimetros: TdxBarButton;
  MnuAlmacen: TdxBarButton;
  MnuFamiliadePro: TdxBarSubItem;
  MnuCatalogodeMo: TdxBarButton;
  mnuFamiliadePro1: TdxBarButton;
  SubfamiliadeProduc1: TdxBarButton;
  nsubMarca: TdxBarButton;
  rMovimientosdeBarco: TdxBarButton;
  rPersonal: TdxBarButton;
  rEquipo: TdxBarButton;
  rPernoctas: TdxBarButton;
  cPendientes: TdxBarLargeButton;
  Firmantes1: TdxBarLargeButton;
  JornadasEspeciales1: TdxBarLargeButton;
  MovtosdeEmbarcacin1: TdxBarLargeButton;
  FasesxOrden1: TdxBarLargeButton;
  BitacoradeActividades1: TdxBarLargeButton;
  ReporteDiario2: TdxBarLargeButton;
  Estimaciones5: TdxBarLargeButton;
  Estimaciones2: TdxBarLargeButton;
  NotasdeCampo1: TdxBarLargeButton;
  dxLayoutLookAndFeelList10: TdxLayoutLookAndFeelList;
  dxLayoutStandardLookAndFeel10: TdxLayoutStandardLookAndFeel;
  dxAlertWindowManager1: TdxAlertWindowManager;
  dxDockingManager1: TdxDockingManager;
  cxLookAndFeelController1: TcxLookAndFeelController;
  cxDefaultEditStyleController1: TcxDefaultEditStyleController;
  cxEditStyleController1: TcxEditStyleController;
  Fondo: TImage;
  imgKardex: TdxBarButton;
  AcoplarDesacoplar: TdxBarButton;
    CatalogodeAspirantes2: TdxBarButton;
  RequisiciondePersonal1: TdxBarLargeButton;
  dxBarButton1: TdxBarButton;
  CapturadeRecepcindeMateriales1: TdxBarLargeButton;
  subDetallesSubFam: TdxBarSubItem;
  nsubTipo: TdxBarButton;
  Tipos_Hits: TdxScreenTipRepository;
  Sin_Registro: TdxScreenTip;
  prueba: TdxLayoutSkinLookAndFeel;
  dxBarScreenTipRepository1: TdxBarScreenTipRepository;
  Manager_Hits: TcxHintStyleController;
  cxLookAndFeelController2: TcxLookAndFeelController;
  dxBarScreenTipRepository1ScreenTip1: TdxScreenTip;
  Cerrar_Todo: TdxBarButton;
    razabilidadInsumos1: TdxBarLargeButton;
    OrdenesdeCompra1: TdxBarLargeButton;
    ReportesAlmacen1: TdxBarSubItem;
    Materiales1: TdxBarLargeButton;
    mnusSalidas1: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxbrlrgbtnregistrof1: TdxBarLargeButton;
    dxbrlrgbtnregistrof2: TdxBarLargeButton;
    dxbrsbtmlistas1: TdxBarSubItem;
    dxbrbtn1: TdxBarButton;
    tbbCambiaContrato: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarSubItem14: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    mInteligentTab1: TdxRibbonTab;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    btnProyectos: TdxBarLargeButton;
    dxBarSubItem15: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarSubItem16: TdxBarSubItem;
    btnEdosCuentasBancarios: TdxBarSubItem;
    dxBarButton13: TdxBarButton;
    btnConfiguracionVentas: TdxBarLargeButton;
    dxBarButton14: TdxBarButton;
    dxbrbtn2: TdxBarButton;
    dxBarButton7: TdxBarButton;
    btnCotizaciones: TdxBarLargeButton;
    btnTimeLine: TdxBarLargeButton;
    btnFirmanteDigitales: TdxBarLargeButton;
    btnTraspasos: TdxBarButton;
    btnTodasCotizaciones: TdxBarLargeButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxAlert: TdxAlertWindowManager;
    cxImageList1: TcxImageList;
    TimerAlert: TTimer;
    mnuEmpresas: TdxBarButton;
    AsignacindeAlmacenesaUsuarios1: TdxBarButton;
    subAsigAlmContratos: TdxBarButton;
    dxbrsbtmlistas2: TdxBarSubItem;
    dxbrsbtmlistas3: TdxBarSubItem;
    mnuEmpresac: TdxBarButton;
    mnuGenerealc: TdxBarButton;
    dxBarButton19: TdxBarButton;
    btnCatalogoTipoVisita: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarSubItem17: TdxBarSubItem;
    dxBarButton21: TdxBarButton;
    Cotizaciones1: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    tbbAutorizaAlm: TdxBarLargeButton;
    tbbDesautorizaAlm: TdxBarLargeButton;
    MnuDocumentacion: TdxBarButton;
    BancosRH: TdxBarButton;
    HorarioLabores1: TdxBarButton;
    PeriodosdePago1: TdxBarButton;
    Nacionalidad1: TdxBarButton;
    DiasdeDescanso1: TdxBarButton;
    ipodePersonal1: TdxBarButton;
    mnuCatalogoCuentas: TdxBarButton;
    CatalogodeAspirantes1: TdxBarLargeButton;
    Evaluarempleados1: TdxBarLargeButton;
    Guardias1: TdxBarLargeButton;
    dxBarButton22: TdxBarButton;
    dxBarSubItem18: TdxBarSubItem;
    subMaterialesctrlobra: TdxBarButton;
    dxBarSubItem19: TdxBarSubItem;
    dxBarButton23: TdxBarButton;
    dxBarSubItem20: TdxBarSubItem;
    cGruposIsom: TdxBarButton;
    cIsometricos: TdxBarButton;
    dxValidacion: TdxBarButton;
    dxDesvalidacion: TdxBarButton;
    dxCatalogoConceptos: TdxBarButton;
    dxCatalogoConceptosPU: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarSubItem21: TdxBarSubItem;
    dxBarButton26: TdxBarButton;
    dxBarSubItem22: TdxBarSubItem;
    dxCatalogoMaterialesPU: TdxBarButton;
    Tipo_Insumo: TdxBarButton;
    configuracion_almacen: TdxBarLargeButton;
    programaDeSalud: TdxBarLargeButton;
    programa1: TdxBarLargeButton;
    programa2: TdxBarLargeButton;
    Metro: TdxBarButton;
    mnBarco: TdxRibbonTab;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarSubItem23: TdxBarSubItem;
    dxbrsbtmAnalisis1: TdxBarSubItem;
    dxbrlrgbtnAnalisis: TdxBarLargeButton;
    SubIndirectos: TdxBarButton;
    subIndirectosCat: TdxBarButton;
    btnsincuentas: TdxBarButton;
    btnAsignarCuenta: TdxBarButton;
    aclaraciones: TdxBarButton;
    btnregistroquejas: TdxBarLargeButton;
    dxBtnSalarios: TdxBarLargeButton;
    oPFirmasAlm: TdxBarLargeButton;
    btn1: TdxBarButton;
    btnCatMaestros: TdxBarButton;
    btnModulos: TdxBarButton;
    lbtImportacion: TdxBarLargeButton;
    lbtAsigMod: TdxBarLargeButton;
    lbtRepError: TdxBarLargeButton;
    mnuBorrarContrato: TdxBarLargeButton;
    lbtLista: TdxBarLargeButton;
    lbtDepto: TdxBarLargeButton;
    lbtConfPu: TdxBarLargeButton;
    dxBarSubItem24: TdxBarSubItem;
    dxBarSubItem25: TdxBarSubItem;
    dxBarButton24: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    cxColeccionesFondo: TcxImageCollection;
    cxImageCollection1Item1: TcxImageCollectionItem;
    cxImageCollection1Item2: TcxImageCollectionItem;
    cxImageCollection1Item3: TcxImageCollectionItem;
    cxImageCollection1Item4: TcxImageCollectionItem;
    cxImageCollection1Item5: TcxImageCollectionItem;
    cxImageCollection1Item6: TcxImageCollectionItem;
    dxBarButton32: TdxBarButton;
    cControlOficio: TdxBarButton;
    cTipoOficio: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    btnProveedor: TdxBarButton;
    btnMateriales: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarSubItem26: TdxBarSubItem;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarSubItem27: TdxBarSubItem;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarSubItem28: TdxBarSubItem;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarSeparator2: TdxBarSeparator;
    dxBarSeparator3: TdxBarSeparator;
    dxBarSubItem29: TdxBarSubItem;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarSeparator4: TdxBarSeparator;
    dxBarSubItem30: TdxBarSubItem;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    dxBarButton62: TdxBarButton;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    cxAnexos: TdxBarButton;
    dxBarButton65: TdxBarButton;
    btnCatGenRH: TdxBarButton;
    dxBarSubItem31: TdxBarSubItem;
    dxBarSubItem32: TdxBarSubItem;
    btnDoctos: TdxBarButton;
    btnTiposNomina: TdxBarButton;
    btnCatGenMat: TdxBarButton;
    alertme: TdxAlertWindowManager;
    btnAutoFolio: TdxBarLargeButton;
    zNotifica: TUniQuery;
    zqImagen: TUniQuery;
    ds_imagen: TDataSource;
    cxDBImage1: TcxDBImage;
    dxBarButton70: TdxBarButton;
    btnDiagramaSGC: TdxBarLargeButton;
    opDiagramaSGC: TdxBarLargeButton;
    btnDiagramaSGC2: TdxBarLargeButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    mNoti: TdxMemData;
    dsNot: TDataSource;
    mNotiTabla: TStringField;
    mNotiMensaje: TStringField;
    cxGrid1DBLayoutView1Group_Root: TdxLayoutGroup;
    cxGrid1DBLayoutView1: TcxGridDBLayoutView;
    cxGrid1DBLayoutView1LayoutItem1: TcxGridLayoutItem;
    cxGrid1DBLayoutView1Item1: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1LayoutItem2: TcxGridLayoutItem;
    cxGrid1DBLayoutView1Item2: TcxGridDBLayoutViewItem;
    dxBarButton71: TdxBarButton;
    dxBarLargeButton15: TdxBarLargeButton;
    statusContainer10: TdxStatusBarContainerControl;
    cxButton1: TcxButton;
    SplitView1: TSplitView;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBCardView1Row1: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Row2: TcxGridDBCardViewRow;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    statusContainer11: TdxStatusBarContainerControl;
    cxGrid1DBLayoutView1LayoutItem3: TcxGridLayoutItem;
    cxGrid1DBLayoutView1Item3: TcxGridDBLayoutViewItem;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    iconAlert: TcxImageList;
    mNotiicon: TIntegerField;
    cxGrid1DBLayoutView1Group1: TdxLayoutAutoCreatedGroup;
    btnEvaIni: TdxBarButton;
    btnDiasLaborados: TdxBarLargeButton;
    btnVerificar: TdxBarLargeButton;
    zScanner: TUniQuery;
    dxBarSubItem33: TdxBarSubItem;
    btnProgramarHorarios: TdxBarButton;
    btnFolios: TdxBarButton;
    dxBarButton75: TdxBarButton;
    btnRecargaConsulta: TdxBarLargeButton;
    btnConfigGuardias: TdxBarLargeButton;
    btnNotificaciones: TdxBarLargeButton;
    TimerNotificador: TTimer;
    TimerNot: TTimer;
    zNotify: TUniQuery;
    mNotiIdNotificacion: TIntegerField;
    opConfigCorreo: TdxBarButton;
    btnEvaluaProv: TdxBarButton;
    btnCatalogoMateriales: TdxBarLargeButton;
    btnClientes: TdxBarButton;
    dxBarButton36: TdxBarButton;
    GAtivaBtnClientes: TdxBarLargeButton;
    GAtivaBtnProveedores: TdxBarLargeButton;
    GAtivaBtnEdosCuenta: TdxBarLargeButton;
    GAtivaBtnPagos: TdxBarLargeButton;
    GAtivaBtnCuentasCobrar: TdxBarLargeButton;
    GAtivaBtnAutorizar: TdxBarLargeButton;
    GAtivaBtnDesautorizar: TdxBarLargeButton;
    GAtivaOCC: TdxBarLargeButton;
    GAtivaFacturas: TdxBarLargeButton;

  procedure FormShow(Sender: TObject);
  procedure sSeleccionClick(Sender: TObject);
  procedure sLoginClick(Sender: TObject);
  procedure sSalirClick(Sender: TObject);
  procedure SpeedItem2Click(Sender: TObject);
  procedure SpeedItem3Click(Sender: TObject);
  procedure SpeedItem5Click(Sender: TObject);
  procedure SpeedItem6Click(Sender: TObject);
  procedure SpeedItem7Click(Sender: TObject);
  procedure SpeedItem11Click(Sender: TObject);
  procedure SpeedItem14Click(Sender: TObject);
  procedure SpeedItem10Click(Sender: TObject);
  procedure SpeedItem4Click0(Sender: TObject);
  procedure SpeedItem15Click(Sender: TObject);
  procedure SpeedItem16Click(Sender: TObject);
  procedure SpeedItem17Click(Sender: TObject);
  procedure SpeedItem16Click0(Sender: TObject);
  procedure SpeedItem19Click(Sender: TObject);
  procedure SpeedItem20Click(Sender: TObject);
  procedure SpeedItem13Click(Sender: TObject);
  procedure SpeedItem10Click0(Sender: TObject);
  procedure SpeedItem22Click(Sender: TObject);
  procedure FormResize(Sender: TObject);
  procedure SpeedItem23Click(Sender: TObject);
  procedure ActivarBiometrico;
  procedure TiempoTimer(Sender: TObject);
  procedure tbbSetupClick(Sender: TObject);
  procedure tbbRepDiarioClick(Sender: TObject);
  procedure tbbRepBarcoClick(Sender: TObject);
  procedure tbbFotosClick(Sender: TObject);
  procedure tbbFirmantesClick(Sender: TObject);
  procedure tbbAutorizaClick(Sender: TObject);
  procedure tbbDesautorizaClick(Sender: TObject);
  procedure tbbEstimaClick(Sender: TObject);
  procedure tbbGeneraClick(Sender: TObject);
  procedure tbbInformesClick(Sender: TObject);
  procedure AdvToolBarButton24Click(Sender: TObject);
  procedure ToolButton1Click(Sender: TObject);
  procedure ToolButton2Click(Sender: TObject);
  procedure ToolButton10Click(Sender: TObject);
  procedure ToolButton9Click(Sender: TObject);
  procedure ToolButton6Click(Sender: TObject);
  procedure ToolButton7Click(Sender: TObject);
  procedure ToolButton8Click(Sender: TObject);
  procedure ToolButton11Click(Sender: TObject);
  procedure ToolButton13Click(Sender: TObject);
  procedure ToolButton17Click(Sender: TObject);
  procedure ToolButton21Click(Sender: TObject);
  procedure ToolButton22Click(Sender: TObject);
  procedure ToolButton23Click(Sender: TObject);
  procedure ToolButton24Click(Sender: TObject);
  procedure ToolButton25Click(Sender: TObject);
  procedure ToolButton27Click(Sender: TObject);
  procedure tbbCambiaContratoClick(Sender: TObject);
  procedure Generaciondeinformes2Click(Sender: TObject);
  procedure Generadores2Click(Sender: TObject);
  procedure Estimaciones3Click(Sender: TObject);
  procedure Reportesdiarios1Click(Sender: TObject);
  procedure inteligentpopPopup(Sender: TObject);
  procedure Irareportesdiarios1Click(Sender: TObject);
  procedure Iraestimaciones1Click(Sender: TObject);
  procedure Irageneradores1Click(Sender: TObject);
  procedure Irageneradoresdeinformes1Click(Sender: TObject);
  procedure Cambiarimagendefondo1Click(Sender: TObject);
  procedure tbbEmpleadosClick(Sender: TObject);
  procedure estirado1Click(Sender: TObject);
  procedure centrado1Click(Sender: TObject);
  procedure FormCreate(Sender: TObject);
  procedure Cascada1Click(Sender: TObject);
  procedure MosaicoVertical1Click(Sender: TObject);
  procedure MosaicoHorizontal1Click(Sender: TObject);
  procedure JvAppEvents1ActiveControlChange(Sender: TObject);
  procedure CalculoRenunciaExecute(Sender: TObject);
  procedure CalculoDespidoExecute(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item2Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item3Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item4Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item5Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item6Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item8Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item9Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item10Click(Sender: TObject);
  procedure dxSkinChooserGalleryItem1SkinChanged(Sender: TObject;const ASkinName: string);
  procedure estiradoClick(Sender: TObject);
  procedure centradoClick(Sender: TObject);
  procedure cascadaClick(Sender: TObject);
  procedure mosaicohorizontalClick(Sender: TObject);
  procedure mosaicoverticalClick(Sender: TObject);
  procedure cambiarfondoClick(Sender: TObject);
  procedure irareportesdiariosClick(Sender: TObject);
  procedure iraestimacionesClick(Sender: TObject);
  procedure irageneradoresClick(Sender: TObject);
  procedure irageneradoresdeinformesClick(Sender: TObject);
  procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  procedure AcoplarDesacoplarClick(Sender: TObject);
    procedure dxBarManager1ClickItem(Sender: TdxBarManager;
      ClickedItem: TdxBarItem);
    procedure FondoDblClick(Sender: TObject);
    procedure btnGeneraRespaldoClick(Sender: TObject);
    procedure btnDiagramaSGCClick(Sender: TObject);
    procedure opDiagramaSGCClick(Sender: TObject);
    procedure btnDiagramaSGC2Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TimerNotificadorTimer(Sender: TObject);
    procedure TimerNotTimer(Sender: TObject);
    procedure Cerrar_TodoClick(Sender: TObject);

private
  { Private declarations }
public
  { Public declarations }
  adentro: boolean;
  valTimerN:Boolean;
  loadNoty:Boolean;
  NumNotyfi:Integer;
  procedure permisosUsuModulos(bandera : byte);
  procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
  procedure InputBoxSetPasswordChar(var Msg: TMessage); message InputBoxMessage;
  procedure Notificame;

end;

const
  WM_UPDATESTATUS = WM_USER + 2;

var
  frmNoil: TfrmNoil;
  detectar: string;
  Letra: char;
  udc_activa:integer;
  HoraI: TTime;
  index:Boolean;

function  GetAppVersion:string;

implementation

uses frm_contratos, frm_deptos,
  frm_acceso,
  frm_seleccion2,
  frm_repositorio,
  Func_Genericas,
  UnitGenerales;
{$R *.dfm}

function  GetAppVersion:string;
var
  Size, Size2: DWord;
  Pt, Pt2: Pointer;
begin
  Size := GetFileVersionInfoSize(PChar (ParamStr (0)), Size2);
  if Size > 0 then
  begin
    GetMem (Pt, Size);
    try
      GetFileVersionInfo (PChar (ParamStr (0)), 0, Size, Pt);
      VerQueryValue (Pt, '\', Pt2, Size2);
      with TVSFixedFileInfo (Pt2^) do
      begin
        Result:= ' Ver '+
        IntToStr (HiWord (dwFileVersionMS)) + '.' +
        IntToStr (LoWord (dwFileVersionMS)) + '.' +
        IntToStr (HiWord (dwFileVersionLS)) + '.' +
        IntToStr (LoWord (dwFileVersionLS));
      end;
    finally
      FreeMem (Pt);
    end;
  end;
end;

procedure TfrmNoil.MosaicoHorizontal1Click(Sender: TObject);
begin
  FRMNOIL.TileModE := tbHorizontal;
  FRMNOIL.Tile;
end;

procedure TfrmNoil.MosaicoVertical1Click(Sender: TObject);
begin
  FRMNOIL.TileModE := tbVertical;
  FRMNOIL.Tile;
end;

procedure TfrmNoil.AppMessage(var Msg: TMsg; var Handled: Boolean); // TMSg
var
  actual: TWincontrol;
begin
  if Msg.Message = WM_KEYDOWN then
  begin
    Actual := Screen.ActiveControl;
    if (Msg.wParam = 189) or (Msg.wParam = 109) then
    begin
      if (Actual is TCustomEdit) and not (Actual is TCustomMemo) then
        if TCustomEdit(Actual).Tag = 2123 then Msg.wParam := VK_CANCEL;
      if Actual is TDBGrid then
        if (TDBGrid(Actual).Tag = 2123) then
          if (pos('CANTIDAD', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('AVANCE', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('PRECIO', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('DURACION', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('VENTA M.N.', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('VENTA DLL', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('GRUPO', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('RENGLON', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('ORDEN', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('NO. ESTIMACION', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('NO. REPROG.', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('FASE', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('COSTO MN', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('COSTO DLL', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('ID', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('ANEXO', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('PARTIDA', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('ID PAGO', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            then Msg.wParam := VK_CANCEL;
    end;
    if Msg.wParam = VK_RETURN then
    begin
      if (Actual is TRxDBCalcEdit) then
        TRxDBCalcEdit(Actual).value := abs(TRxDBCalcEdit(Actual).value);
    end;
  end;
end;

procedure TfrmNoil.FondoDblClick(Sender: TObject);
begin
    Fondo.Picture := cxColeccionesFondo.Items[Random( 6 )].Picture;
    Fondo.Refresh;
    frmNoil.Refresh;
end;

procedure TfrmNoil.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if lErrorIniciar = False then
  begin
      if MessageDlg('Esta seguro que desea salir completamente de la aplicación?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        application.Terminate
      else abort
  end;
end;

procedure TfrmNoil.FormCreate(Sender: TObject);
begin
  lErrorIniciar := False;
  Application.OnMessage := AppMessage;
end;

procedure TfrmNoil.FormDeactivate(Sender: TObject);
begin
  cxDBImage1.Visible := False;
end;

procedure TfrmNoil.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin
    if RecargarConsultasSQL then
      MessageDlg('Información del sistema.'+#13+'Se ha cargado nuevamente las consultas sql y la tabla de validación automática a la memoria del sistema.',mtInformation,[mbOk],0);
  end;
end;

procedure TfrmNoil.FormShow(Sender: TObject);
var
  WinDir: array[0..MAX_PATH - 1] of char;
  sTipo,validarpath,pathimagen,StringList,rutaaux: string;
  iPos,i: Integer;
  InfoSize, H, RsltLen: Cardinal;
  VersionBlock: Pointer;
  Rslt: PVSFixedFileInfo;
  S: wideString;
  F: TextFile;
  ini: tinifile;
  bueno,bueno2: boolean;
  Query: TZQuery;
  fAlertWindow: TdxAlertWindow;
begin
  try
    cxLocalizer1.LoadFromFile(ExtractFilePath(Application.ExeName)+'CXLOCALIZATION.ini');
    cxLocalizer1.Active := True;
    cxLocalizer1.Locale := 1034;

    adentro := False;
    InfoSize := GetFileVersionInfoSize(PChar(Application.ExeName), H);
    VersionBlock := AllocMem(InfoSize);

    try
      GetFileVersionInfo(PChar(Application.ExeName), H, InfoSize, VersionBlock);
      VerQueryValue(VersionBlock, '\', Pointer(Rslt), RsltLen);
      Caption  := global_version;
      dxRibbon1Tab1.Active:=True;
    finally
      FreeMem(VersionBlock);
    end;
    frmAcceso.ShowModal;
    if frmAcceso.salir then
    begin
      tiempo.enabled := True;
      abort;
    end;

    if (global_usuario <> '') and (global_usuario <> 'ACCESO_TOTAL') then
    begin
      global_activo := 'S';
      frmSeleccion2.showModal;
    end
    else
    if global_usuario <> 'ACCESO_TOTAL' then
    begin
      if global_grupo = 'ACCESO_TOTAL' then
      begin
        frmSeleccion2.showModal;
        global_convenio := 'C';
        Global_Convenio := connection.uconfiguracion.FieldValues['sIdConvenio']
      end
      else application.Terminate;
    end;
    Licencia := 'Si';

    status.Panels.Items[1].Text  :=   global_nombre;
    status.Panels.Items[3].Text  :=   global_server;
    status.Panels.Items[7].Text  := global_contrato;
    status.Panels.Items[9].Text  := global_convenio;

    HoraI:=Time;
    TimerAlert.Enabled:=True;
    frmNoil.permisosUsuModulos(100);
    //Notificaciones
    NumNotyfi := 0;
    Notificame;
    TimerNot.Enabled := True;

    zqImagen.SQL.Add('select g.Imagen from grupos as g where g.sIdGrupo = (select u.sIdGrupo from usuarios as u where u.sNombre = '+''''+global_nombre+''''+')');
    zqImagen.Open;

    ActivarBiometrico;
    cxDBImage1.Align := alLeft;
    cxDBImage1.Width := screen.Width - Fondo.Width;
    cxDBImage1.Visible := True;
  Except
    begin
       lErrorIniciar := True;
       close;
    end;
  end;
end;

procedure TfrmNoil.Cerrar_TodoClick(Sender: TObject);
begin
  CierraFormChild(frmNoil);
end;

procedure TfrmNoil.centrado1Click(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
    modofondo(fondo, 'bmCenter', detectar)
  else escribeinidefault(detectar, 'bmCenter');
end;

procedure TfrmNoil.Cambiarimagendefondo1Click(Sender: TObject);
var pathimagen: string;
  Ini: TiniFile;
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';
  escribeini(detectar, OpenDialog1);
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
    muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
end;

procedure TfrmNoil.sSeleccionClick(Sender: TObject);
begin
  frmSeleccion2.fin := False;
  frmSeleccion2.showModal;
  NumNotyfi := 0;
  Notificame;
  frmNoil.permisosUsuModulos(100);
end;

procedure TfrmNoil.sLoginClick(Sender: TObject);
var
  sPrograma:    string;
  iElemento:   Integer;
  Component: tMenuItem;
  StringList: TStrings;
  S: wideString;
  F:   TextFile;
begin
  adentro := True;
  global_contrato := '';
  global_usuario  := '';
  connection.zConnection.Disconnect;
  frmAcceso.ShowModal;

  if frmacceso.salir then
  begin
    tiempo.Enabled := True;
    abort;
  end;
  if global_usuario <> '' then
  begin
    global_activo := 'S';
    if global_contrato <> '' then
    begin

      global_convenio := 'C';
      Global_Convenio := connection.uconfiguracion.FieldValues['sIdConvenio']
    end
    else
    frmSeleccion2.showModal
  end
  else
  begin
    if global_grupo = 'ACCESO_TOTAL' then
      frmSeleccion2.showModal
    else application.Terminate;
  end;
  status.Panels.Items[1].Text :=   global_nombre;
  status.Panels.Items[3].Text :=   global_server;
  status.Panels.Items[7].Text := global_contrato;
  status.Panels.Items[9].Text := global_convenio;
  try
    if global_PendientesOculto = False then
    begin
      global_PendientesOculto := False;
    end;
    if global_contrato <> '' then
    begin

    end;
  except

  end;
end;

procedure TfrmNoil.sSalirClick(Sender: TObject);
begin
  close;
end;

procedure TfrmNoil.Cascada1Click(Sender: TObject);
begin
  FRMNOIL.Cascade;
end;

procedure TfrmNoil.mosaicoverticalClick(Sender: TObject);
begin
  frmNoil.TileModE := tbVertical;
  frmNoil.Tile;
end;

procedure TfrmNoil.Notificame;
var
  fAlertWindow: TdxAlertWindow;
  msg, tb : String;
  ocultar_al:Boolean;
  img : TcxDBImage;
  ABitmap: TcxAlphaBitmap;
  APNGImage: TdxPNGImage;
  x:Integer;
begin
  zNotify.Active := False;
  zNotify.SQL.Text := 'Select mn.*,mmn.Mensaje from master_notificaciones as mn '+
                      'inner join master_mensajes_notificacion as mmn on mmn.IdMensaje = mn.IdMensaje '+
                      'where Activo ='+QuotedStr('Si');
  zNotify.Open;
  zNotify.RecordCount;
  zNotify.First;
  //mNoti.Close;
  //mNoti.Active := True;
  x := 0;
  while not zNotify.Eof do
  begin
    ocultar_al := False;
    inc(x);
    zNotifica.Active := False;

    if (zNotify.FieldByName('TipoAlerta').AsString = 'Documento') then
    begin
      zNotifica.SQL.Text := 'Select dp.*, d.Documento, CONCAT(p.Nombre,'+quotedStr(' ')+', p.APaterno,'+QuotedStr(' ')+', p.AMaterno) as NombrePersonal, datediff(dp.Fechavigencia, CURDATE()) as DiasVencimiento '+
                          'from '+zNotify.FieldByName('Tabla').AsString+' as dp '+
                          'inner join rhu_documento d on d.IdDocumento = dp.IdDocumento '+
                          'inner join master_personal p on dp.IdPersonal = p.IdPersonal '+
                          'where (dp.Fechavigencia > CURDATE()) and dp.'+zNotify.FieldByName('CampoPrincipal').AsString+'=:Id';
      zNotifica.ParamByName('Id').AsString := zNotify.FieldByName('Folio').AsString;

    end;
    if (zNotify.FieldByName('TipoAlerta').AsString = 'Fecha') then
    begin
      zNotifica.SQL.Text := 'Select dp.Tipoalerta,dp.Folio,datediff(dp.Fecha, CURDATE()) as DiasVencimiento, mn.Mensaje From master_notificaciones as dp '+
                            'inner join master_mensajes_notificacion as mn on dp.IdMensaje = mn.IdMensaje '+
                            'where (dp.Fecha > CURDATE()) and dp.IdNotificacion=:IdNotificacion';
      zNotifica.ParamByName('IdNotificacion').AsString:= zNotify.FieldByName('IdNotificacion').AsString;
    end;
    if (zNotify.FieldByName('TipoAlerta').AsString = 'Estatus') then
    begin
       zNotifica.SQL.Text := 'Select mn.Tipoalerta, mn.Folio,datediff(mn.Fecha, CURDATE()) as DiasVencimiento, m.Mensaje,mn.Estatus,mn.sIdUsuario '+
                             'From master_notificaciones as mn '+
                             'inner join master_mensajes_notificacion as m on mn.IdMensaje = m.IdMensaje '+
                             'where  mn.IdNotificacion=:IdNotificacion';
       zNotifica.ParamByName('IdNotificacion').AsString:= zNotify.FieldByName('IdNotificacion').AsString;
    end;


    zNotifica.Open;
    zNotifica.First;
    while not zNotifica.Eof do
    begin
      tb:='';
      msg:='';
        if(zNotify.FieldByName('TipoAlerta').AsString = 'Documento') then
        begin
          tb := 'Documentos a vencer: ';
          msg := zNotifica.FieldByName('Documento').AsString +' ('+zNotifica.FieldByName('DiasVencimiento').AsString+' Días para vencer)'+
                                      #13+zNotifica.FieldByName('NombrePersonal').AsString;

          if not (zNotifica.FieldByName('DiasVencimiento').AsInteger <= zNotify.FieldByName('LimiteDias').AsInteger) then
            ocultar_al := True;

    //      mNoti.Append;
    //      mNoti.FieldByName('Tabla').AsString := tb;
    //      mNoti.FieldByName('Mensaje').AsString := msg;
    //      mNoti.FieldByName('icon').AsInteger := 1;
    //      mNoti.FieldByName('IdNotificacion').AsInteger := zNotify.FieldByName('IdNotificacion').AsInteger;
          //fAlertWindow := alertme.Show('Notificación de tipo: '+tb,msg,10);
        end;
        if(zNotify.FieldByName('TipoAlerta').AsString = 'Fecha') then
        begin
          tb := 'Fechas por terminar';
          msg := zNotify.FieldByName('Mensaje').AsString+'('+zNotifica.FieldByName('DiasVencimiento').AsString+' Días)'+
                                      #13+'Del Folio: '+ zNotify.FieldByName('Folio').AsString+#13;

          if not (zNotifica.FieldByName('DiasVencimiento').AsInteger <= zNotify.FieldByName('LimiteDias').AsInteger) then
            ocultar_al := True;

    //      mNoti.Append;
    //      mNoti.FieldByName('Tabla').AsString := tb;
    //      mNoti.FieldByName('Mensaje').AsString := msg;
    //      mNoti.FieldByName('icon').AsInteger := 0;
    //      mNoti.FieldByName('IdNotificacion').AsInteger := zNotify.FieldByName('IdNotificacion').AsInteger;

          //fAlertWindow := alertme.Show('Notificación de tipo: '+tb,msg,10);
        end;
        if(zNotify.FieldByName('TipoAlerta').AsString = 'Estatus') then
        begin
          tb := 'Operaciones';
          msg := zNotify.FieldByName('Mensaje').AsString+' En '+zNotify.FieldByName('Estatus').AsString+#13+'Del Folio: '+ zNotify.FieldByName('Folio').AsString+#13+'Realizado por '+zNotify.FieldByName('sIdUsuario').AsString+#13;
//          ocultar_al := ;
    //      mNoti.Append;
    //      mNoti.FieldByName('Tabla').AsString := tb;
    //      mNoti.FieldByName('Mensaje').AsString := msg;
    //      mNoti.FieldByName('icon').AsInteger := 0;
    //      mNoti.FieldByName('IdNotificacion').AsInteger := zNotify.FieldByName('IdNotificacion').AsInteger;

        end;
    //    if  (mNoti.State = dsInsert) or (mNoti.State = dsEdit) then
      //  begin

          //mNoti.Post;
        //end;
        if ((NumNotyfi < x) and (ocultar_al=False)) then
            fAlertWindow := alertme.Show('Tipo: '+tb,msg,10);
      zNotifica.Next;
    end;

    zNotify.Next;
  end;


end;

procedure TfrmNoil.mosaicohorizontalClick(Sender: TObject);
begin
  frmNoil.TileModE := tbHorizontal;
  frmNoil.Tile;
end;

procedure TfrmNoil.cambiarfondoClick(Sender: TObject);
  var pathimagen: string;
  Ini: TiniFile;
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';
  escribeini(detectar, OpenDialog1);
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
    muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
end;

procedure TfrmNoil.irareportesdiariosClick(Sender: TObject);
begin
  rDiario.Click;
end;

procedure TfrmNoil.iraestimacionesClick(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmNoil.irageneradoresClick(Sender: TObject);
begin
  opGeneradores.Click;
end;

procedure TfrmNoil.estiradoClick(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
      modofondo(fondo, 'bmStretch', detectar)
  else escribeinidefault(detectar, 'bmStretch');
end;

procedure TfrmNoil.irageneradoresdeinformesClick(Sender: TObject);
begin
  rComparativo.Click;
end;

procedure TfrmNoil.centradoClick(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then modofondo(fondo, 'bmCenter', detectar)
  else escribeinidefault(detectar, 'bmCenter');
end;

procedure TfrmNoil.btnDiagramaSGCClick(Sender: TObject);
begin
   cxDBImage1.Visible:=not cxDBImage1.Visible;
end;

procedure TfrmNoil.opDiagramaSGCClick(Sender: TObject);
begin
  btnDiagramaSGCClick(Sender);
end;

procedure TfrmNoil.btnDiagramaSGC2Click(Sender: TObject);
begin
  btnDiagramaSGCClick(Sender)
end;

procedure TfrmNoil.dxBarManager1ClickItem(Sender: TdxBarManager;
  ClickedItem: TdxBarItem);
begin
   try
      stMenu := ClickedItem.Name;
   Except
   end;
end;

procedure TfrmNoil.dxRibbonGalleryItem1Group2Item10Click(Sender: TObject);
begin
  close;
end;
procedure TfrmNoil.dxRibbonGalleryItem1Group2Item2Click(Sender: TObject);
var pathimagen: string;
  Ini: TiniFile;
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';
  escribeini(detectar, OpenDialog1);
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
    muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
end;

procedure TfrmNoil.dxRibbonGalleryItem1Group2Item3Click(Sender: TObject);
begin
  rDiario.Click;
end;

procedure TfrmNoil.dxRibbonGalleryItem1Group2Item4Click(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmNoil.dxRibbonGalleryItem1Group2Item5Click(Sender: TObject);
begin
  opGeneradores.Click;
end;

procedure TfrmNoil.dxRibbonGalleryItem1Group2Item6Click(Sender: TObject);
begin
  rComparativo.Click;
end;

procedure TfrmNoil.dxRibbonGalleryItem1Group2Item8Click(Sender: TObject);
var
  sPrograma: string;
  iElemento: Integer;
  Component: tMenuItem;
  StringList: TStrings;
  S: wideString;
  F: TextFile;
begin
  adentro := True;
  global_contrato := '';
  global_usuario := '';
  connection.zConnection.Disconnect;
  frmAcceso.ShowModal;
  if frmacceso.salir then
  begin
    tiempo.Enabled := True;
    abort;
  end;
  if global_usuario <> '' then
  begin
    global_activo := 'S';
    if global_contrato <> '' then
    begin

      global_convenio := 'C';
      Global_Convenio := connection.uconfiguracion.FieldValues['sIdConvenio']
    end
    else
     // frmInteligent.permisosUsuarios(100);
    frmSeleccion2.showModal
  end
  else
  if global_grupo = 'ACCESO_TOTAL' then
    frmSeleccion2.showModal
  else
    application.Terminate;
  status.Panels.Items[1].Text :=   global_nombre;
  status.Panels.Items[3].Text :=   global_server;
  //status.Panels.Items[5].Text :=       global_db;
  status.Panels.Items[7].Text := global_contrato;
  status.Panels.Items[9].Text := global_convenio;
  if global_PendientesOculto = False then
  begin
    global_PendientesOculto := False;

  end;

end;

procedure TfrmNoil.dxRibbonGalleryItem1Group2Item9Click(Sender: TObject);
begin
  frmSeleccion2.showModal;

end;

procedure TfrmNoil.dxSkinChooserGalleryItem1SkinChanged(Sender: TObject;const ASkinName: string);
begin
  mNoil.ColorSchemeName               :=ASkinName;   //Para darle color al ribbon
  dxSkinController1.SkinName                :=ASkinName;   //Para darke color al control del skin
  dxTabbedMDIManager1.LookAndFeel.SkinName  :=ASkinName;   //Para darle color al manager de los tabuladore
  dxDockingManager1.LookAndFeel.SkinName    :=ASkinName;
  cxLookAndFeelController1.SkinName         :=ASkinName;
  dxAlertWindowManager1.LookAndFeel.SkinName:=ASkinName;
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';
  guardaskin(detectar,ASkinName);
end;

procedure TfrmNoil.Estimaciones3Click(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmNoil.estirado1Click(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then modofondo(fondo, 'bmStretch', detectar)
  else escribeinidefault(detectar, 'bmStretch');
  fondo.Stretch:=True;
end;

procedure TfrmNoil.JvAppEvents1ActiveControlChange(Sender: TObject);
begin
  self.Caption := sender.ClassName;
end;

procedure TfrmNoil.SpeedItem2Click(Sender: TObject);
begin
  adConfiguracion.Click
end;

procedure TfrmNoil.SpeedItem3Click(Sender: TObject);
begin
  adentro := True;
  sSeleccion.Click;
end;

procedure TfrmNoil.SpeedItem5Click(Sender: TObject);
begin
  qComentarios.Click
end;

procedure TfrmNoil.SpeedItem6Click(Sender: TObject);
begin
  cConsulta4.Click
end;

procedure TfrmNoil.SpeedItem7Click(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmNoil.SpeedItem11Click(Sender: TObject);
begin
  rDiario.Click
end;

procedure TfrmNoil.SpeedItem14Click(Sender: TObject);
begin
  opGeneradores.Click
end;

procedure TfrmNoil.SpeedItem10Click(Sender: TObject);
begin
  opComparativo1.Click
end;


procedure TfrmNoil.Generaciondeinformes2Click(Sender: TObject);
begin
  rComparativo.Click
end;

procedure TfrmNoil.Generadores2Click(Sender: TObject);
begin
  opGeneradores.Click
end;

procedure TfrmNoil.SpeedItem4Click0(Sender: TObject);
begin
  opValida.Click
end;

procedure TfrmNoil.SpeedItem15Click(Sender: TObject);
begin
  opAbre.Click
end;

procedure TfrmNoil.SpeedItem16Click(Sender: TObject);
begin
  opFirmas.Click
end;

procedure TfrmNoil.SpeedItem17Click(Sender: TObject);
begin
  rComparativo.Click
end;

procedure TfrmNoil.SpeedItem16Click0(Sender: TObject);
begin
  opFirmas.Click
end;

procedure TfrmNoil.AcoplarDesacoplarClick(Sender: TObject);

begin
  if dxTabbedMDIManager1.Active then   //Si el componente tiene activa la propiedad
    dxTabbedMDIManager1.Active    := false   //Desacopla las ventanas
  else dxTabbedMDIManager1.Active := True; //Si esta desactivado las acopla al mdi
end;

procedure TfrmNoil.CalculoRenunciaExecute(Sender: TObject);
begin
  ShowMessage('Se hizo el cálculo de una renuncia.');
end;

procedure TfrmNoil.CalculoDespidoExecute(Sender: TObject);
begin
  ShowMessage('Se hizo el calculo de un despido');
end;

procedure TfrmNoil.permisosUsuModulos(bandera: byte);
var
  Component : TdxBarLargeButton;
  Component1:      TdxBarButton;
  Component2 : TdxRibbonTab;
  iElemento : Integer;
  gener     : TComponent ;
  sPrograma :  string;
begin
  for iElemento := 0 to frmNoil.ComponentCount - 1 do
  begin
    if frmNoil.Components[iElemento].ClassName = 'TdxBarLargeButton' then
     begin
       Component := frmNoil.Components[iElemento] as TdxBarLargeButton;
       if ((Component.Tag <> 123) ) then
       begin
         Component.Enabled := False ;
         Component.Visible := ivNever;
       end;
     end;

    if frmNoil.Components[iElemento].ClassName = 'TdxBarButton' then
     begin
       Component1 := frmNoil.Components[iElemento] as TdxBarButton;
       if ((Component1.Tag <> 123) ) then
       begin
         Component1.Enabled := False ;
         Component1.Visible := ivNever;
       end;
     end;


   end ;

  connection.zModulosPermisos.Active := False;
  connection.zModulosPermisos.ParamByName('Usuario').AsString := global_usuario;
  connection.zModulosPermisos.Open;

  if Connection.zModulosPermisos.RecordCount >0 Then
    while not Connection.zModulosPermisos.Eof do
    begin

        gener := frmNoil.FindComponent(Connection.zModulosPermisos.FieldByName('sIdPrograma').AsString) ;
        if Assigned (gener) Then
        begin
            sPrograma := gener.GetNamePath ;
                          if gener.ClassName = 'TdxBarLargeButton' then
                          begin
                            Component := gener as TdxBarLargeButton;
//                            Component.Caption := connection.zModulosPermisos.FieldValues['sDescripcion'] ;
                            Component.Enabled := cad_bool(connection.zModulosPermisos.FieldValues['Acceder']);
                            if Component.Enabled = True then
                              Component.Visible := ivAlways
                            else
                              Component.Visible := ivNever;
                          end;

                          if gener.ClassName = 'TdxBarButton' then
                          begin
                            Component1 := gener as TdxBarButton;
//                            Component1.Caption := connection.zModulosPermisos.FieldValues['sDescripcion'];
                            Component1.Enabled := cad_bool(connection.zModulosPermisos.FieldValues['Acceder']);
                            if Component1.Enabled = True then
                              Component1.Visible := ivAlways
                            else
                              Component1.Visible := ivNever;
                          end;
        end;
      Connection.zModulosPermisos.Next ;
    end;
end;
procedure TfrmNoil.SpeedItem19Click(Sender: TObject);
begin
  opTiemposM.Click
end;

procedure TfrmNoil.SpeedItem20Click(Sender: TObject);
begin
  cConsulta5.Click
end;

procedure TfrmNoil.SpeedItem13Click(Sender: TObject);
begin
  cConsulta5.Click
end;

procedure TfrmNoil.SpeedItem10Click0(Sender: TObject);
begin
  opComparativo1.Click
end;

procedure TfrmNoil.SpeedItem22Click(Sender: TObject);
begin
  cConsulta1.Click
end;

procedure TfrmNoil.FormResize(Sender: TObject);
begin
  if frmNoil.Height<600 then frmNoil.Height:=600;
  if frmNoil.Width<800 then frmNoil.Width:=800;
end;

procedure TfrmNoil.InputBoxSetPasswordChar(var Msg: TMessage);
var
	  hInputForm, hEdit: HWND;
begin
  hInputForm := Screen.Forms[0].Handle;
  if (hInputForm <> 0) then
  begin
    hEdit := FindWindowEx(hInputForm, 0, 'TEdit', nil);
    SendMessage(hEdit, EM_SETPASSWORDCHAR, Ord('*'), 0);
  end;
end;

procedure TfrmNoil.inteligentpopPopup(Sender: TObject);
begin
  cambiarimagendefondo1.Enabled     := TRUE;
  irareportesdiarios1.ENABLED       := TRUE;
  iraestimaciones1.ENABLED          := TRUE;
  irageneradores1.ENABLED           := TRUE;
  irageneradoresdeinformes1.ENABLED := TRUE;
  cambiarmododefondo1.Enabled       := TRUE;
  estirado1.Enabled                 := TRUE;
  mosaico1.Enabled                  := TRUE;
  centrado1.Enabled                 := TRUE;
  Ventanasen1.Enabled               := TRUE;
  Cascada1.Enabled                  := TRUE;
  MosaicoVertical1.Enabled          := TRUE;
  Mosaicohorizontal1.Enabled        := TRUE;
end;

procedure TfrmNoil.Iraestimaciones1Click(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmNoil.Irageneradores1Click(Sender: TObject);
begin
  opGeneradores.Click;
end;

procedure TfrmNoil.Irageneradoresdeinformes1Click(Sender: TObject);
begin
  rComparativo.Click;
end;

procedure TfrmNoil.Irareportesdiarios1Click(Sender: TObject);
begin
  rDiario.Click;
end;

procedure TfrmNoil.SpeedItem23Click(Sender: TObject);
begin
  opComparativo5.Click
end;

procedure TfrmNoil.TiempoTimer(Sender: TObject);
begin
  application.Terminate;
end;

procedure TfrmNoil.TimerNotificadorTimer(Sender: TObject);
begin
  if valTimerN then
  begin
    cxButton1.Colors.DefaultText := clRed;
    cxButton1.OptionsImage.ImageIndex := 54;
  end
  else
  begin
    cxButton1.Colors.DefaultText := clDefault;
    cxButton1.OptionsImage.ImageIndex := 55;
  end;

  valTimerN:= not valTimerN;
end;

procedure TfrmNoil.TimerNotTimer(Sender: TObject);
var sqlCount:TUniquery;
begin
  sqlCount := TUniquery.Create(nil);
  sqlCount.Connection := connection.Uconnection;
  sqlCount.Active := False;
  sqlCount.SQl.Text := 'Select count(IdNotificacion) as Cant from master_notificaciones where Activo='+'''Si''';
  sqlCount.Open;

  if sqlCount.FieldByName('Cant').AsInteger <> zNotify.RecordCount then
  begin
    TimerNotificador.Enabled:=True;
    NumNotyfi := zNotify.RecordCount;
    Notificame;
  end;

  sqlCount.Close;
  sqlCount.Destroy;
end;

procedure TfrmNoil.ToolButton10Click(Sender: TObject);
begin
  qComentarios.Click
end;

procedure TfrmNoil.ToolButton11Click(Sender: TObject);
begin
  opComparativo5.Click
end;

procedure TfrmNoil.ToolButton13Click(Sender: TObject);
begin
  rDiario.Click
end;

procedure TfrmNoil.ToolButton17Click(Sender: TObject);
begin
  opTiemposM.Click
end;

procedure TfrmNoil.ToolButton1Click(Sender: TObject);
begin
  adConfiguracion.Click
end;

procedure TfrmNoil.ToolButton21Click(Sender: TObject);
begin
  opFirmas.Click
end;

procedure TfrmNoil.ToolButton22Click(Sender: TObject);
begin
  opValida.Click
end;

procedure TfrmNoil.ToolButton23Click(Sender: TObject);
begin
  opAbre.Click
end;

procedure TfrmNoil.ToolButton24Click(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmNoil.ToolButton25Click(Sender: TObject);
begin
  opGeneradores.Click
end;

procedure TfrmNoil.ToolButton27Click(Sender: TObject);
begin
  rComparativo.Click
end;

procedure TfrmNoil.ToolButton2Click(Sender: TObject);
begin
  adentro := True;
  sSeleccion.Click;
end;

procedure TfrmNoil.ToolButton6Click(Sender: TObject);
begin
  cConsulta1.Click
end;

procedure TfrmNoil.ToolButton7Click(Sender: TObject);
begin
  opComparativo1.Click
end;

procedure TfrmNoil.ToolButton8Click(Sender: TObject);
begin
  cConsulta5.Click
end;

procedure TfrmNoil.ToolButton9Click(Sender: TObject);
begin
  cConsulta4.Click
end;

procedure TfrmNoil.ActivarBiometrico;
var
  tem:TUniquery;
begin
  tem:=TUniQuery.Create(Self);
  tem.Connection:=connection.Uconnection;
  tem.Active:=False;
  tem.SQL.Text:='SELECT BiometricoActivo FROM configuracion';
  tem.Open;
  if tem.FieldByName('BiometricoActivo').AsString <> 'Si' then
  begin
    btnVerificar.Visible:=ivNever;
  end
  else
  begin
    btnVerificar.Visible:=ivAlways;
  end;

end;

procedure TfrmNoil.tbbRepDiarioClick(Sender: TObject);
begin
  rDiario.Click
end;

procedure TfrmNoil.tbbRepBarcoClick(Sender: TObject);
begin
  reporteBarco.Click;
end;

procedure TfrmNoil.tbbFotosClick(Sender: TObject);
begin
  opTiemposM.Click
end;

procedure TfrmNoil.tbbFirmantesClick(Sender: TObject);
begin
  opFirmas.Click
end;

procedure TfrmNoil.tbbAutorizaClick(Sender: TObject);
begin
  opValida.Click
end;

procedure TfrmNoil.tbbSetupClick(Sender: TObject);
begin
  adConfiguracion.Click
end;

procedure TfrmNoil.tbbDesautorizaClick(Sender: TObject);
begin
  opAbre.Click
end;

procedure TfrmNoil.tbbEmpleadosClick(Sender: TObject);
begin
  mnuPersonal2.Click;
end;

procedure TfrmNoil.tbbEstimaClick(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmNoil.tbbGeneraClick(Sender: TObject);
begin
  opGeneradores.Click
end;

procedure TfrmNoil.tbbInformesClick(Sender: TObject);
begin
  rComparativo.Click
end;

procedure TfrmNoil.AdvToolBarButton24Click(Sender: TObject);
begin
  rComparativo.Click
end;

procedure TfrmNoil.tbbCambiaContratoClick(Sender: TObject);
begin
  if ValidaChildAbierto(frmNoil) > 0 then
  begin
    if MSG_YN('Si cambia de empresa se cerraran todas las ventanas desea continuar?') then
    begin
      CierraFormChild(frmNoil);
    end;
  end;
  adentro  := True;

  frmSeleccion2.fin := False;
  frmSeleccion2.showModal;
  NumNotyfi := 0;
  Notificame;
  frmNoil.permisosUsuModulos(100);


end;

procedure TfrmNoil.btnGeneraRespaldoClick(Sender: TObject);
var pwd : String;
begin


end;

procedure TfrmNoil.Reportesdiarios1Click(Sender: TObject);
begin
  rDiario.Click;
end;

procedure TfrmNoil.cascadaClick(Sender: TObject);
begin
  frmNoil.Cascade;
end;

end.





