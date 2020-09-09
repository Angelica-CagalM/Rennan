unit frm_Noil_THY;

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
  cxGridDBCardView, cxImageComboBox, dxLayoutcxEditAdapters;

const
	InputBoxMessage = WM_USER + 200;

type
  TfrmNoil_THY = class(TdxRibbonForm)
  Status: TdxRibbonStatusBar;
  Tiempo: TTimer;
  OpenDialog1: TOpenDialog;
  frxReport1: TfrxReport;
  dxBarManager1: TdxBarManager;
  dxRibbon1Tab1: TdxRibbonTab;
    mNoil: TdxRibbon;
  dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
  dxSkinController1: TdxSkinController;
  dxBarManager1Bar9: TdxBar;
  dxBarManager1Bar2: TdxBar;
    mnPrecioUnitario: TdxRibbonTab;
    mnRecursosHumanos: TdxRibbonTab;
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
    btnPlataformas: TdxBarButton;
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
  dxBarManager1Bar3: TdxBar;
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
    Catalogo3: TdxBarSubItem;
    btncActivos: TdxBarButton;
    btnAlmacenes: TdxBarButton;
    subActivos: TdxBarSubItem;
    btnGrupos: TdxBarButton;
    btnFamilias: TdxBarButton;
    dxBarSubItem34: TdxBarSubItem;
    btnSubfamilias: TdxBarButton;
    btnMarcas: TdxBarButton;
    btnUnidades: TdxBarButton;
    btnProducto: TdxBarButton;
    btnGiros: TdxBarButton;
    proyectos: TdxBarButton;
    btnCatalogoActivos: TdxBarButton;
    btnDepartamentos: TdxBarButton;
    btnProveedores: TdxBarButton;
    btnEmbarcaciones: TdxBarButton;
    dxBarButton37: TdxBarButton;
    btnCatActivos: TdxBarLargeButton;
    btnProve: TdxBarLargeButton;
    dxBarButton66: TdxBarButton;
    btnAsigActivos: TdxBarLargeButton;
    btnRecep: TdxBarLargeButton;
    btnEmbarque: TdxBarLargeButton;
    dxBarButton67: TdxBarButton;
    btnSeguimientos: TdxBarLargeButton;
    btnAutorizaciones: TdxBarLargeButton;
    frmNoil_SSI: TdxRibbonTab;
    dxBarManager1Bar4: TdxBar;
    dxBarButton68: TdxBarButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarMateriales_ALM: TdxBarLargeButton;
    dxBarRequisiciones_ALM: TdxBarLargeButton;
    dxBarOC_ALM: TdxBarLargeButton;
    dxBarEntradaAlmacen_ALM: TdxBarLargeButton;
    dxBarSalidaAlmacen_ALM: TdxBarLargeButton;
    dxBarEmbarque_ALM: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarAutorizar_ALM: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarCatalogos_ALM: TdxBarSubItem;
    dxProyectos_ALM: TdxBarButton;
    dxCentroC_ALM: TdxBarButton;
    dxBarSeguimientoReqs_ALM: TdxBarLargeButton;
    dxBarSubItem35: TdxBarSubItem;
    cxAnexo: TdxBarButton;
    dxBarSubItem36: TdxBarSubItem;
    frmCatalogosAnexos: TdxBarButton;
    dxTipoRecurso_ALM: TdxBarLargeButton;
    dxBarLargeButton27: TdxBarLargeButton;
    dxAsignados_ALM: TdxBarLargeButton;
    dxDocumentos_ALM: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    btnProyecs: TdxBarLargeButton;
    btnSalario: TdxBarLargeButton;
    dxBarDesAutorizar_ALM: TdxBarLargeButton;

  procedure FormShow(Sender: TObject);
  procedure adConfiguracionClick(Sender: TObject);
  procedure adContratosClick(Sender: TObject);
  procedure adDeptosClick(Sender: TObject);
  procedure adUsuariosClick(Sender: TObject);
  procedure cEmbarcacionesClick(Sender: TObject);
  procedure cPlataformasClick(Sender: TObject);
  procedure cPernoctanClick(Sender: TObject);
  procedure cOrdenesClick(Sender: TObject);
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
  procedure opSQLAnexoClick(Sender: TObject);
  procedure adResidenciasClick(Sender: TObject);
  procedure adGruposClick(Sender: TObject);
  procedure adGrupoPClick(Sender: TObject);
  procedure adUsuariosCClick(Sender: TObject);
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
  procedure imgKardex1Click(Sender: TObject);
  procedure sCambiaPClick(Sender: TObject);
  procedure opRequisicionesClick(Sender: TObject);
  procedure opPedidosClick(Sender: TObject);
  procedure SpeedItem23Click(Sender: TObject);
  procedure adActivosClick(Sender: TObject);
  procedure opadmonCatalogoClick(Sender: TObject);
  procedure ActivarBiometrico;
  procedure mnuKardexClick(Sender: TObject);
  procedure TiempoTimer(Sender: TObject);
  procedure MnuAlmacenClick(Sender: TObject);
  procedure tbbRepBarcoClick(Sender: TObject);
  procedure tbbFotosClick(Sender: TObject);
  procedure tbbFirmantesClick(Sender: TObject);
  procedure tbbAutorizaClick(Sender: TObject);
  procedure tbbDesautorizaClick(Sender: TObject);
  procedure tbbEstimaClick(Sender: TObject);
  procedure tbbGeneraClick(Sender: TObject);
  procedure tbbInformesClick(Sender: TObject);
  procedure AdvToolBarButton24Click(Sender: TObject);
  procedure MnuEntAlmaceClick(Sender: TObject);
  procedure MnuSalAlmacenClick(Sender: TObject);
  procedure ToolButton1Click(Sender: TObject);
  procedure ToolButton2Click(Sender: TObject);
  procedure ToolButton10Click(Sender: TObject);
  procedure ToolButton9Click(Sender: TObject);
  procedure ToolButton6Click(Sender: TObject);
  procedure ToolButton7Click(Sender: TObject);
  procedure ToolButton8Click(Sender: TObject);
  procedure ToolButton11Click(Sender: TObject);
  procedure ToolButton21Click(Sender: TObject);
  procedure AdvToolBarMenuButton1Click(Sender: TObject);
  procedure tbbCambiaContratoClick(Sender: TObject);
  procedure CatalogoErroresClick(Sender: TObject);
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
  procedure MnsCaptOrdComClick(Sender: TObject);
  procedure MnsEntradasAlmacenClick(Sender: TObject);
  procedure MnsSalidasAlmacenClick(Sender: TObject);
  procedure CalculoRenunciaExecute(Sender: TObject);
  procedure CalculoDespidoExecute(Sender: TObject);
  procedure ImpresionRenunciaExecute(Sender: TObject);
  procedure ImpresionDespidoExecute(Sender: TObject);
  procedure catIdiomasClick(Sender: TObject);
  procedure AreasDepartamentos1Click(Sender: TObject);
  procedure Organizacion1Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item2Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item3Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item4Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item5Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item6Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item7Click(Sender: TObject);
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
  procedure imgKardexClick(Sender: TObject);
  procedure AcoplarDesacoplarClick(Sender: TObject);
  procedure menuExtraPaneItemClick(Sender: TObject; AIndex: Integer);

    procedure dxbrlrgbtnregistrof1Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure btnProyectosClick(Sender: TObject);
    procedure mnuEmpresasClick(Sender: TObject);
    procedure mnuEmpresaClick(Sender: TObject);
    procedure tbbAutorizaAlmClick(Sender: TObject);
    procedure tbbDesautorizaAlmClick(Sender: TObject);
    procedure dxValidacionClick(Sender: TObject);
    procedure dxbrbtnfrentes1Click(Sender: TObject);
    procedure dxbrlrgbtnFrentesClick(Sender: TObject);
    procedure lbtImportacionClick(Sender: TObject);
    procedure btnModulosClick(Sender: TObject);
    procedure lbtAsigModClick(Sender: TObject);
    procedure lbtDeptoClick(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarManager1ClickItem(Sender: TdxBarManager;
      ClickedItem: TdxBarItem);
    procedure FondoDblClick(Sender: TObject);
    procedure btnProveedorClick(Sender: TObject);
    procedure btnMaterialesClick(Sender: TObject);
    procedure mnuAgrupacionPClick(Sender: TObject);
    procedure btnGeneraRespaldoClick(Sender: TObject);
    procedure btnMontarRespaldoClick(Sender: TObject);
    procedure dxBarButton53Click(Sender: TObject);
    procedure dxBarButton63Click(Sender: TObject);
    procedure Empleados1Click(Sender: TObject);
    procedure btnCatGenRHClick(Sender: TObject);
    procedure btnTiposNominaClick(Sender: TObject);
    procedure btnCatGenMatClick(Sender: TObject);
    procedure btnAutoFolioClick(Sender: TObject);
    procedure btnDiagramaSGCClick(Sender: TObject);
    procedure opDiagramaSGCClick(Sender: TObject);
    procedure btnDiagramaSGC2Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnEvaIniClick(Sender: TObject);
    procedure btnDiasLaboradosClick(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
    procedure btnProgramarHorariosClick(Sender: TObject);
    procedure ControldeGuardias1Click(Sender: TObject);
    procedure Guardias1Click(Sender: TObject);
    procedure btnFoliosClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnRecargaConsultaClick(Sender: TObject);
    procedure btnConfigGuardiasClick(Sender: TObject);
    procedure oPFirmasAlmClick(Sender: TObject);
    procedure btnNotificacionesClick(Sender: TObject);
    procedure TimerNotificadorTimer(Sender: TObject);
    procedure TimerNotTimer(Sender: TObject);
    procedure Evaluarempleados1Click(Sender: TObject);
    procedure Cerrar_TodoClick(Sender: TObject);
    procedure opConfigCorreoClick(Sender: TObject);
    procedure btnEvaluaProvClick(Sender: TObject);
    procedure btnCatalogoMaterialesClick(Sender: TObject);
    procedure GAtivaBtnClientesClick(Sender: TObject);
    procedure ImprimirContratos1Click(Sender: TObject);
    procedure GAtivaBtnProveedoresClick(Sender: TObject);
    procedure dxBarMateriales_ALMClick(Sender: TObject);
    procedure dxBarRequisiciones_ALMClick(Sender: TObject);
    procedure dxBarAutorizar_ALMClick(Sender: TObject);
    procedure dxBarLargeButton21Click(Sender: TObject);
    procedure dxBarOC_ALMClick(Sender: TObject);
    procedure dxProyectos_ALMClick(Sender: TObject);
    procedure btnEmbarcacionesClick(Sender: TObject);
    procedure dxCentroC_ALMClick(Sender: TObject);
    procedure dxBarSeguimientoReqs_ALMClick(Sender: TObject);
    procedure dxBarSalidaAlmacen_ALMClick(Sender: TObject);
    procedure dxAlmacenes_ALMClick(Sender: TObject);
    procedure dxProveedores_ALMClick(Sender: TObject);
    procedure dxBarEntradaAlmacen_ALMClick(Sender: TObject);
    procedure dxCatalogos_ALMClick(Sender: TObject);
    procedure dxTipoRecurso_ALMClick(Sender: TObject);
    procedure dxBarEmbarque_ALMClick(Sender: TObject);
    procedure dxBarLargeButton27Click(Sender: TObject);
    procedure dxAsignados_ALMClick(Sender: TObject);
    procedure dxDocumentos_ALMClick(Sender: TObject);
    procedure dxBarLargeButton17Click(Sender: TObject);
    procedure btnProyecsClick(Sender: TObject);
    procedure btnPlataformasClick(Sender: TObject);
    procedure btnSalarioClick(Sender: TObject);
    procedure adImportarClick(Sender: TObject);
    procedure dxBarDesAutorizar_ALMClick(Sender: TObject);

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
  procedure Notificaciones;

end;

const
  WM_UPDATESTATUS = WM_USER + 2;

var
  frmNoil_THY: TfrmNoil_THY;
  detectar: string;
  Letra: char;
  udc_activa:integer;
  HoraI: TTime;
  index:Boolean;
function  GetAppVersion:string;

implementation

uses frm_contratos, frm_deptos, frm_usuarios,
  Frm_Embarcacion,
  frm_plataformas,
  frm_Pernoctan,
  frm_tiposdeMovimiento,
  frm_acceso,
  frm_acerca,
  frm_proveedores, UFrm_EvaluaProveedor,
  frm_Almacenes,
  frm_valida,
  frm_turnos,
  frm_ReporteDiarioTurno,
  frm_compara2,
  frm_comparativo,
  frm_importaciondedatos,
  frm_residencias,
  frm_programas,
  frm_GruposUsuarios, frm_gruposxprograma,
  frm_contratosxusuario,
  frm_Kardex, frm_setup,
  frm_cambiapassword,
  frm_activos, frm_seleccion2,
  frm_admonCatalogos,
  frm_Pedidos,
  frm_Fases,
  frm_Anexos,
  frm_CatalogoAnexos,
  frm_EntradaAlmacen_THY, frm_SalidaAlmacen_THY,
  frm_asistencias,
  frm_NuevoIdioma,
  frm_nuc_organizacion,
  frm_repositorio,
  Func_Genericas,
  frm_Presupuesto,
  utfrmdepartamentos,
  frm_catalogomodulos, frm_Modulosxusuario,
  frm_catalogoerrores, frm_ordenes,
  frm_GruposPersonal,
  frm_usuarios_proyectos,
  frm_respaldo, frm_montarespaldo,
  frm_ordenes_compra,frm_catalogos_Operaciones,
  frm_Catalogos_rh_tipos, frm_catalogo_empleados,frm_SeguroVida,
  frm_Empresas, frm_tipos_nomina, frm_catalogos_almacen,
  frm_folios, frm_evaluacion,UnitGenerales,Frm_ProgramarHorarios,
  frm_diaslaborados,Frm_Verificar,Unit1, frm_materiales,frm_guardias,
  Frm_Asignar_Guardias,Frm_ConfGuardias, frm_firmantes,
  UFrmNotificaciones,Frm_Justificar, UFrmConfigCorreo,
  Frm_RequisicionMaterial,Comobj,Frm_CentroCosto,
  frm_clientes,frm_abrereporte, Frm_Asignacion,frm_salarios,
  frm_Reembolso,
  frm_Estatus_Requisiciones, frm_Proyectos, frm_AvisoEmbarque_THY;

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

procedure TfrmNoil_THY.MosaicoHorizontal1Click(Sender: TObject);
begin
  frmNoil_THY.TileModE := tbHorizontal;
  frmNoil_THY.Tile;
end;

procedure TfrmNoil_THY.MosaicoVertical1Click(Sender: TObject);
begin
  frmNoil_THY.TileModE := tbVertical;
  frmNoil_THY.Tile;
end;

procedure TfrmNoil_THY.AppMessage(var Msg: TMsg; var Handled: Boolean); // TMSg
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

procedure TfrmNoil_THY.AreasDepartamentos1Click(Sender: TObject);
begin
//  if not MostrarFormChild('frm_CatalogoAreas',global_dxBarManagerPrincipal) Then
//   begin
//     Application.CreateForm(TFrmDepartamentos, frmDepartamentos);
//     frmDepartamentos.FormStyle := fsMDIChild;
//     frmDepartamentos.visible := True;
//     FrmDepartamentos.Show;
//   end;

  If not mostrarformChild('frmDeptos', global_dxBarManagerPrincipal) Then
   begin
    global_btnPermisos := 'AreasDepartamentos';
     Application.CreateForm(TfrmDeptos, frmDeptos);
     frmDeptos.show;
   end;
end;

procedure TfrmNoil_THY.FondoDblClick(Sender: TObject);
begin
    Fondo.Picture := cxColeccionesFondo.Items[Random( 6 )].Picture;
    Fondo.Refresh;
    frmNoil_THY.Refresh;
end;

procedure TfrmNoil_THY.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if lErrorIniciar = False then
  begin
      if MessageDlg('Esta seguro que desea salir completamente de la aplicación?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        application.Terminate
      else abort
  end;
end;

procedure TfrmNoil_THY.FormCreate(Sender: TObject);
begin
  Application.OnMessage := AppMessage;
  global_FormNoilPrincipal := frmNoil_THY;
  global_dxBarManagerPrincipal := dxBarManager1;
  global_zScanner := zScanner;
end;

procedure TfrmNoil_THY.FormDeactivate(Sender: TObject);
begin
  cxDBImage1.Visible := False;
end;

procedure TfrmNoil_THY.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin
    if RecargarConsultasSQL then
      MessageDlg('Información del sistema.'+#13+'Se ha cargado nuevamente las consultas sql y la tabla de validación automática a la memoria del sistema.',mtInformation,[mbOk],0);
  end;
end;

procedure TfrmNoil_THY.FormShow(Sender: TObject);
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
      cxLocalizer1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Recursos/CXLOCALIZATION.ini');
      cxLocalizer1.Active := True;
      cxLocalizer1.Locale := 1034;

      adentro := False;
      InfoSize := GetFileVersionInfoSize(PChar(Application.ExeName), H);
      VersionBlock := AllocMem(InfoSize);
    //  dxDockSite1.AutoSize := True;
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
          connection.ucontrato.Active := False;
          connection.ucontrato.Params.ParamByName('Contrato').DataType := ftString;
          connection.ucontrato.Params.ParamByName('Contrato').Value := global_contrato;
          connection.ucontrato.Open;

          connection.uconfiguracion.Active := False;
          connection.uconfiguracion.Params.ParamByName('Contrato').Value := global_contrato;
          connection.uconfiguracion.Params.ParamByName('Contrato').DataType := ftString;
          connection.uconfiguracion.Open;
          global_convenio := 'C';
          if connection.uconfiguracion.RecordCount = 0 then
            application.MessageBox('Precaución: No se encontro el archivo principal de configuración, notifique al Administrador del Sistema', 'Inteligent', 0)
          else Global_Convenio := connection.uconfiguracion.FieldValues['sIdConvenio']
        end
        else application.Terminate;
      end;
      Licencia := 'Si';

      status.Panels.Items[1].Text  := global_nombre;
      status.Panels.Items[3].Text  := global_server;
      status.Panels.Items[7].Text  := global_contrato;
      status.Panels.Items[9].Text  := global_convenio;
      status.Panels.Items[5].Text  := global_db;

      frmNoil_THY.Caption := global_version + '  ['+Major_Version+'.'+Minor_Version+'.'+  Release_Version+'.'+Build_Version+ ' ]';

      {codigo de carmen parala imagen de fondo}
      detectar := global_ruta + 'image.ini';
      if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
        muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
      else
        escribeinidefault(detectar, 'bmCenter');

      HoraI:=Time;
      TimerAlert.Enabled:=True;
      frmNoil_THY.permisosUsuModulos(100);
      //Notificaciones
      NumNotyfi := 0;
      Notificaciones;
      //Notificame;
      TimerNot.Enabled := True;

      zqImagen.SQL.Add('select g.Imagen from grupos as g where g.sIdGrupo = (select u.sIdGrupo from usuarios as u where u.sNombre = '+''''+global_nombre+''''+')');
      zqImagen.Open;

      //ActivarBiometrico;
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

procedure TfrmNoil_THY.adConfiguracionClick(Sender: TObject);
begin
 if not MostrarFormChild('frmSetup',global_dxBarManagerPrincipal) Then
   begin
     Application.CreateForm(TfrmSetup, frmSetup);
     frmSetup.Show;
   end;
end;

procedure TfrmNoil_THY.adContratosClick(Sender: TObject);
begin
  if not MostrarFormChild('frmContratos',global_dxBarManagerPrincipal) Then
   begin
    global_cambioletrero := 10 ;
    global_btnPermisos := 'adContratos';
    Application.CreateForm(TfrmContratos, frmContratos);
    frmContratos.show;

  end;
end;

procedure TfrmNoil_THY.adDeptosClick(Sender: TObject);
begin
  If not mostrarformChild('frmDeptos',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
     Application.CreateForm(TfrmDeptos, frmDeptos);
     frmDeptos.show;
  end;
end;

procedure TfrmNoil_THY.adUsuariosClick(Sender: TObject);
var
  pwd : String;
  zSQL :TUniQuery;
begin
  if global_grupo = 'ADMON' then
  begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.text :='select AES_DECRYPT(u.sPassword,"AES2016") as sPassword from usuarios u where sIdUsuario = :usuario and lActivo="Si"';
    connection.QryBusca.params.ParamByName('Usuario').DataType := ftString;
    connection.QryBusca.ParamByName('Usuario').AsString := global_usuario;
    connection.QryBusca.Open;
    if connection.QryBusca.RecordCount > 0 then
    begin
      PostMessage(Handle, InputBoxMessage, 0, 0);
      pwd:=InputBox('¡Seguridad de Conexiones!', 'Ingresar contraseña:','');
      if pwd = connection.QryBusca.FieldByName('sPassWord').AsString then
      begin
        if not MostrarFormChild('frmUsuarios',global_dxBarManagerPrincipal) Then
        begin
          global_btnPermisos := '';
          Application.CreateForm(TfrmUsuarios, frmUsuarios);
          frmUsuarios.show;
        end;
      end
      else
        ShowMessage('La contraseña no corresponde a su usuario, intente de nuevo.');
    end;
  end
  else
    ShowMessage('Su usuario no es del grupo administrador, acceso denegado.');
end;

procedure TfrmNoil_THY.Cerrar_TodoClick(Sender: TObject);
begin
  CierraFormChild(frmNoil_THY);
end;

procedure TfrmNoil_THY.cEmbarcacionesClick(Sender: TObject);
begin
  if not mostrarFormChild('frmembarcacion',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmEmbarcacion, frmEmbarcacion);
    frmembarcacion.show
  end;
end;

procedure TfrmNoil_THY.centrado1Click(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
    modofondo(fondo, 'bmCenter', detectar)
  else escribeinidefault(detectar, 'bmCenter');
end;

procedure TfrmNoil_THY.cPlataformasClick(Sender: TObject);
begin
 if not mostrarFormChild('frmPlataformas',global_dxBarManagerPrincipal) Then
   begin
    global_btnPermisos := '';
     Application.CreateForm(TfrmPlataformas, frmPlataformas);
     frmPlataformas.show
   end;
end;

procedure TfrmNoil_THY.cxButton1Click(Sender: TObject);
begin
    TimerNotificador.Enabled:=False;
    cxButton1.Colors.DefaultText := clDefault;
    cxButton1.OptionsImage.ImageIndex := 55;
    NumNotyfi := 0;
    Notificaciones;
    //Notificame;
end;

procedure TfrmNoil_THY.cPernoctanClick(Sender: TObject);
begin
  if not mostrarFormChild('frmPernoctan',global_dxBarManagerPrincipal) then
    begin
    global_btnPermisos := '';
     Application.CreateForm(TfrmPernoctan, frmPernoctan);
     frmPernoctan.show
   end;
end;

procedure TfrmNoil_THY.cOrdenesClick(Sender: TObject);
begin
if not mostrarFormChild('frmPresupuesto',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
     Application.CreateForm(TfrmPresupuesto, frmPresupuesto);
     frmPresupuesto.show;
  end ;
end;

procedure TfrmNoil_THY.Cambiarimagendefondo1Click(Sender: TObject);
var pathimagen: string;
  Ini: TiniFile;
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';
  escribeini(detectar, OpenDialog1);
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
    muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
end;

procedure TfrmNoil_THY.sSeleccionClick(Sender: TObject);
begin
  frmSeleccion2.fin := False;
  frmSeleccion2.showModal;
  NumNotyfi := 0;
  //Notificame;
  frmNoil_THY.permisosUsuModulos(100);
  Notificaciones;
end;

procedure TfrmNoil_THY.sLoginClick(Sender: TObject);
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
      connection.uconfiguracion.Active := False;
      connection.uconfiguracion.SQL.Clear;
      connection.uconfiguracion.SQL.Add('select * from configuracion where sContrato = :contrato');
      connection.uconfiguracion.Params.ParamByName('Contrato').Value    := global_contrato;
      connection.uconfiguracion.Params.ParamByName('Contrato').DataType :=        ftString;
      connection.uconfiguracion.Open;
      global_convenio := 'C';
      if connection.uconfiguracion.RecordCount = 0 then
        application.MessageBox('Precaución: No se encontro el archivo principal de configuración, notifique al Administrador del Sistema', 'Inteligent', 0)
      else
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

procedure TfrmNoil_THY.sSalirClick(Sender: TObject);
begin
  close;
end;

procedure TfrmNoil_THY.Cascada1Click(Sender: TObject);
begin
  frmNoil_THY.Cascade;
end;

procedure TfrmNoil_THY.CatalogoErroresClick(Sender: TObject);
begin
 if not MostrarFormChild('frmCatalogoErrores',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmCatalogoErrores, frmCatalogoErrores);
    frmCatalogoErrores.show;
  end;
end;

procedure TfrmNoil_THY.catIdiomasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmNuevoIdioma',global_dxBarManagerPrincipal) Then
   begin
   global_btnPermisos := '';
    Application.CreateForm(TfrmNuevoIdioma, frmNuevoIdioma);
    frmNuevoIdioma.show;
  end;
end;

procedure TfrmNoil_THY.mosaicoverticalClick(Sender: TObject);
begin
  frmNoil_THY.TileModE := tbVertical;
  frmNoil_THY.Tile;
end;

procedure TfrmNoil_THY.Notificaciones;
var tb : String;
  fAlertWindow: TdxAlertWindow;
begin

  if global_usuario = 'rmolina' then
   begin
       try
        zNotify.Active := False;
        zNotify.SQL.Text := 'Call MensajeNotify(1);';
        zNotify.Open;
        zNotify.RecordCount;
        zNotify.First;
        while not zNotify.Eof do
        begin
          if(zNotify.FieldByName('Tipo').AsString = 'Documento') then
            tb := 'Documentos a vencer: ';
          if(zNotify.FieldByName('Tipo').AsString = 'Fecha') then
            tb := 'Fechas por terminar: ';
          if(zNotify.FieldByName('Tipo').AsString = 'Estatus') then
            tb := 'Operaciones';


          fAlertWindow := alertme.Show('Tipo: '+tb,zNotify.FieldByName('Mensaje').AsString,10);
          zNotify.Next;
        end;
      except
        on e: Exception do
        if e.message <> '***' then
          begin

        end;

      end;
   end
   else
   begin
     TimerNotificador.Enabled:=False;
   end;
end;

procedure TfrmNoil_THY.Notificame;
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
  try
    while not zNotify.Eof do
      begin
        ocultar_al := False;
        inc(x);
        zNotifica.Active := False;

        if (zNotify.FieldByName('TipoAlerta').AsString = 'Documento') then
        begin
          zNotifica.SQL.Text := 'Select dp.*, d.Documento, CONCAT(p.Nombre,'+quotedStr(' ')+', p.APaterno,'+QuotedStr(' ')+', p.AMaterno) as NombrePersonal,'+
                              'if (datediff(dp.Fechavigencia, CURDATE()) >0,datediff(dp.Fechavigencia, CURDATE()),0) as DiasVencimiento '+
                              'from '+zNotify.FieldByName('Tabla').AsString+' as dp '+
                              'inner join rhu_documento d on d.IdDocumento = dp.IdDocumento '+
                              'inner join master_personal p on dp.IdPersonal = p.IdPersonal '+
                              'where  dp.'+zNotify.FieldByName('CampoPrincipal').AsString+'=:Id';
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
  except
    on e: Exception do
    if e.message <> '***' then
      begin

    end;

  end;

//  mNoti.First;
 // cxGrid1DBTableView1.DataController.Groups.FullExpand;
end;

procedure TfrmNoil_THY.mosaicohorizontalClick(Sender: TObject);
begin
  frmNoil_THY.TileModE := tbHorizontal;
  frmNoil_THY.Tile;
end;

procedure TfrmNoil_THY.cambiarfondoClick(Sender: TObject);
  var pathimagen: string;
  Ini: TiniFile;
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';
  escribeini(detectar, OpenDialog1);
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
    muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
end;

procedure TfrmNoil_THY.irareportesdiariosClick(Sender: TObject);
begin
  rDiario.Click;
end;

procedure TfrmNoil_THY.iraestimacionesClick(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmNoil_THY.irageneradoresClick(Sender: TObject);
begin
  opGeneradores.Click;
end;

procedure TfrmNoil_THY.estiradoClick(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
      modofondo(fondo, 'bmStretch', detectar)
  else escribeinidefault(detectar, 'bmStretch');
end;

procedure TfrmNoil_THY.Evaluarempleados1Click(Sender: TObject);
begin
if not MostrarFormChild('FrmJustificar',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'Evaluarempleados1';
    Application.CreateForm(TFrmJustificar,FrmJustificar);
    FrmJustificar.Show;
  end;
end;

procedure TfrmNoil_THY.irageneradoresdeinformesClick(Sender: TObject);
begin
  rComparativo.Click;
end;

procedure TfrmNoil_THY.centradoClick(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then modofondo(fondo, 'bmCenter', detectar)
  else escribeinidefault(detectar, 'bmCenter');
end;

procedure TfrmNoil_THY.dxBarButton28Click(Sender: TObject);
begin
   if not MostrarFormChild('frmValida',global_dxBarManagerPrincipal) then
   begin
     global_btnPermisos := '';
     Application.CreateForm(TfrmValida, frmValida);
     frmValida.show;
     frmValida.cxLista.Items.Item[0].Delete;
     frmValida.cxLista.Items.Item[0].Delete;
     frmValida.cxLista.Items.Item[0].Delete;
     frmValida.cxLista.Items.Item[0].Delete;
   end;
end;

procedure TfrmNoil_THY.btnProveedorClick(Sender: TObject);
begin
    if not mostrarFormChild('frmProveedores',global_dxBarManagerPrincipal) then
     begin
       global_btnPermisos:= 'btnProveedor';
       Application.CreateForm(TfrmProveedores, frmProveedores);
       frmProveedores.show
     end;
end;

procedure TfrmNoil_THY.btnMaterialesClick(Sender: TObject);
begin
  if not MostrarFormChild('frmMateriales',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos  := 'btnMateriales';
    Application.CreateForm(TfrmMateriales, frmMateriales);
    frmMateriales.Show;
  end;
end;

procedure TfrmNoil_THY.dxBarButton53Click(Sender: TObject);
begin
   if not MostrarFormChild('frmObtenerRespaldo',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos := '';
      Application.CreateForm(TfrmObtenerRespaldo, frmObtenerRespaldo);
      frmObtenerRespaldo.show;
   end;
end;
procedure TfrmNoil_THY.dxBarButton63Click(Sender: TObject);
begin
    if not mostrarFormChild('frmOrdenes_compra',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := '';
      Application.CreateForm(TfrmOrdenes_Compra, frmOrdenes_Compra);
      frmOrdenes_Compra.show
    end;
end;

procedure TfrmNoil_THY.dxBarDesAutorizar_ALMClick(Sender: TObject);
begin
   if not mostrarFormChild('frmAbreReporte',global_dxBarManagerPrincipal) then
   begin
     global_btnPermisos := 'dxBarDesAutorizar_COMP';
     Application.CreateForm(TfrmAbreReporte, frmAbreReporte);
     frmAbreReporte.show;
   end;
end;

procedure TfrmNoil_THY.btnCatGenRHClick(Sender: TObject);
begin
  if not mostrarFormChild('frmCatalogosRHTipos',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'btnCatGenRH';
    Application.CreateForm(TfrmCatalogosRHtipos, frmCatalogosRHTipos);
    frmCatalogosRHTipos.show
  end;
end;

procedure TfrmNoil_THY.btnTiposNominaClick(Sender: TObject);
begin
  if not mostrarFormChild('frmTiposNomina',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'btnTiposNomina';
    Application.CreateForm(TfrmTiposNomina, frmTiposNomina);
    frmTiposnomina.show
  end;
end;

procedure TfrmNoil_THY.btnCatalogoMaterialesClick(Sender: TObject);
begin
  if not MostrarFormChild('frmMateriales',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos  := 'btnCatalogoMateriales';
    Application.CreateForm(TfrmMateriales, frmMateriales);
    frmMateriales.Show;
  end;
end;

procedure TfrmNoil_THY.btnCatGenMatClick(Sender: TObject);
begin

  if not mostrarFormChild('frmCatalogosAlmacen',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'btnCatGenMat';
    Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
    frmCatalogosAlmacen.show

  end;
end;

procedure TfrmNoil_THY.btnEmbarcacionesClick(Sender: TObject);
begin
 if not mostrarFormChild('frmEmbarcacion',global_dxBarManagerPrincipal) Then
  begin
    Application.CreateForm(TfrmEmbarcacion, frmEmbarcacion);
    frmEmbarcacion.show
  end;
end;

procedure TfrmNoil_THY.btnEvaIniClick(Sender: TObject);
begin
  if not mostrarFormChild('frmEvaluacion',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'btnEvaIni';
    Application.CreateForm(TfrmEvaluacion, frmEvaluacion);
    frmEvaluacion.show
  end;
end;

procedure TfrmNoil_THY.btnEvaluaProvClick(Sender: TObject);
begin
  if not mostrarFormChild('Frm_EvaluaProveedor',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'btnEvaluaProv';
    Application.CreateForm(TFrm_EvaluaProveedor, Frm_EvaluaProveedor);
    Frm_EvaluaProveedor.show
  end;
end;

procedure TfrmNoil_THY.btnPlataformasClick(Sender: TObject);
begin
  if not mostrarFormChild('frmPlataformas',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos:= 'btnFolios';
     Application.CreateForm(TfrmPlataformas, frmPlataformas);
     frmPlataformas.show;
  end ;
end;

procedure TfrmNoil_THY.btnProgramarHorariosClick(Sender: TObject);
begin
  if not mostrarFormChild('FrmProgramarH',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TFrmProgramarH, FrmProgramarH);
    FrmProgramarH.show
  end;
end;

procedure TfrmNoil_THY.btnFoliosClick(Sender: TObject);
begin
  if not mostrarFormChild('frmPresupuesto',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos:= 'btnFolios';
     Application.CreateForm(TfrmPresupuesto, frmPresupuesto);
     frmPresupuesto.show;
  end ;
end;

procedure TfrmNoil_THY.btnMontarRespaldoClick(Sender: TObject);
var pwd : String;
begin
// Request Password
  PostMessage(Handle, InputBoxMessage, 0, 0);
  pwd:=InputBox('¡Seguridad de Conexiones!', 'Ingresar contraseña:','');
  if pwd = 'noiladmin0317' then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmMontarRespaldo, frmMontarRespaldo);
    frmMontarRespaldo.ShowModal;
  end
  else
  begin
    MessageDlg('Contraseña incorecta, no  posee permisos, vuelva a intentar',mtError,[mbOk],0);
  end;
end;


procedure TfrmNoil_THY.btnNotificacionesClick(Sender: TObject);
begin
  if not MostrarFormChild('FrmNotificaciones',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TFrmNotificaciones, FrmNotificaciones);
    FrmNotificaciones.show;
  end;
end;

procedure TfrmNoil_THY.tbbAutorizaAlmClick(Sender: TObject);
begin
  opValida.Click
end;

procedure TfrmNoil_THY.tbbDesautorizaAlmClick(Sender: TObject);
begin
  opAbre.Click
end;

procedure TfrmNoil_THY.dxAlmacenes_ALMClick(Sender: TObject);
begin
 if not MostrarFormChild('frmAlmacenes',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'MnuAlmacen';
    Application.CreateForm(TfrmAlmacenes, frmAlmacenes);
    frmAlmacenes.Show;
  end;
end;

procedure TfrmNoil_THY.dxAsignados_ALMClick(Sender: TObject);
begin
  if not MostrarFormChild('FrmAsignacion',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnAsignados';
    Application.CreateForm(TFrmAsignacion, FrmAsignacion);
    FrmAsignacion.show;
  end;
end;

procedure TfrmNoil_THY.btnAutoFolioClick(Sender: TObject);
begin
    if not MostrarFormChild('frmFolios',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmFolios, frmFolios);
    frmFolios.show;
  end;
end;

procedure TfrmNoil_THY.btnDiagramaSGCClick(Sender: TObject);
begin
   cxDBImage1.Visible:=not cxDBImage1.Visible;
end;

procedure TfrmNoil_THY.opDiagramaSGCClick(Sender: TObject);
begin
  btnDiagramaSGCClick(Sender);
end;

procedure TfrmNoil_THY.btnDiagramaSGC2Click(Sender: TObject);
begin
  btnDiagramaSGCClick(Sender)
end;

procedure TfrmNoil_THY.btnDiasLaboradosClick(Sender: TObject);
begin
  if not MostrarFormChild('frmDiasLaborados',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnDiasLaborados';
    Application.CreateForm(tfrmDiasLaborados, frmDiasLaborados);
    frmDiasLaborados.show;
  end;
end;

procedure TfrmNoil_THY.dxDocumentos_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('frmCatalogosRHTipos', global_dxBarManagerPrincipal) then
   begin
      global_indexactivo:= 15;
      Application.CreateForm(TfrmCatalogosRHTipos, frmCatalogosRHTipos);
      frmCatalogosRHTipos.show;
   end;
end;

procedure TfrmNoil_THY.btnVerificarClick(Sender: TObject);
var
  pwd : String;
  objNBioBSP    : variant;
begin
   try
     UDMConection.ReloadQuerys
   except
      ;
   end;
  try
   objNBioBSP := CreateOleObject('NBioBSPCOM.NBioBSP');
   if not MostrarFormChild('FrmVerificar',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos := '';
    Application.CreateForm(TFrmVerificar, FrmVerificar);
    FrmVerificar.showModal;
   end;
  except
   ShowMessage('Verificar conexion de biometrico');
  end;
end;

procedure TfrmNoil_THY.dxProveedores_ALMClick(Sender: TObject);
begin
  if not mostrarFormChild('frmProveedores',global_dxBarManagerPrincipal) then
   begin
     global_btnPermisos:= 'btnProveedor';
     Application.CreateForm(TfrmProveedores, frmProveedores);
     frmProveedores.show
   end;
end;

procedure TfrmNoil_THY.btnRecargaConsultaClick(Sender: TObject);
begin
  if RecargarConsultasSQL then
      MessageDlg('Información del sistema.'+#13+'Se ha cargado nuevamente las consultas sql y la tabla de validación automática a la memoria del sistema.',mtInformation,[mbOk],0);

//  frmNoil_THY.permisosUsuModulos(100);
end;

procedure TfrmNoil_THY.btnConfigGuardiasClick(Sender: TObject);
begin
if not MostrarFormChild('FrmConfGuardias',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnConfigGuardias';
    Application.CreateForm(TFrmConfGuardias, FrmConfGuardias);
    FrmConfGuardias.show;
  end;

end;

procedure TfrmNoil_THY.dxCentroC_ALMClick(Sender: TObject);
begin
  if not MostrarFormChild('frmCentroCosto',global_dxBarManagerPrincipal) then
   begin
    Application.CreateForm(TfrmCentroCosto, frmCentroCosto);
    frmCentroCosto.Show;
  end;
end;

procedure TfrmNoil_THY.dxBarMateriales_ALMClick(Sender: TObject);
begin
  if not MostrarFormChild('frmMateriales',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos  := 'btnCatalogoMateriales';
    Application.CreateForm(TfrmMateriales, frmMateriales);
    frmMateriales.Show;
  end;
end;

procedure TfrmNoil_THY.dxBarRequisiciones_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('FrmRequisicionMaterial',global_dxBarManagerPrincipal) Then
   begin
      global_btnPermisos := 'dxBarRequisiciones_ALM';
      Application.CreateForm(TFrmRequisicionMaterial, FrmRequisicionMaterial);
      FrmRequisicionMaterial.show
   end;
end;

procedure TfrmNoil_THY.dxBarOC_ALMClick(Sender: TObject);
begin
  if not MostrarFormChild('frmPedidos',global_dxBarManagerPrincipal) Then
     begin
       global_btnPermisos := 'dxBarOC_ALM';
       Application.CreateForm(TfrmPedidos, frmPedidos);
       frmPedidos.show
     end;
end;

procedure TfrmNoil_THY.dxBarEntradaAlmacen_ALMClick(Sender: TObject);
begin
     if not MostrarFormChild('frmEntradaAlmacen',global_dxBarManagerPrincipal) then
     begin
        global_btnPermisos := 'dxBarEntradaAlmacen_ALM';
        Application.CreateForm(TfrmEntradaAlmacen_THY, frmEntradaAlmacen_THY);
        frmEntradaAlmacen_THY.show ;
     end;
end;

procedure TfrmNoil_THY.dxBarLargeButton17Click(Sender: TObject);
begin
//FrmReembolso
 If not MostrarFormChild('FrmReembolso',global_dxBarManagerPrincipal) Then
  begin
    Application.CreateForm(TFrmReembolso, FrmReembolso);
    FrmReembolso.show
  end;
end;

procedure TfrmNoil_THY.btnSalarioClick(Sender: TObject);
begin
 If not MostrarFormChild('frmSalarios',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'btnSalida';
    Application.CreateForm(TfrmSalarios, frmSalarios);
    frmSalarios.show;
  end;

end;

procedure TfrmNoil_THY.dxBarSalidaAlmacen_ALMClick(Sender: TObject);
begin
    If not MostrarFormChild('frmSalidaAlmacen',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := 'dxBarSalidaAlmacen_ALM';
      Application.CreateForm(TfrmSalidaAlmacen_THY, frmSalidaAlmacen_THY);
      frmSalidaAlmacen_THY.show
    end;
end;

procedure TfrmNoil_THY.dxBarEmbarque_ALMClick(Sender: TObject);
begin
  global_btnPermisos := 'dxBarEmbarque_ALM';
  if not MostrarFormChild('frmAvisosEmbarque',global_dxBarManagerPrincipal) Then
  begin
    Application.CreateForm(TfrmAvisoEmbarque_THY, frmAvisoEmbarque_THY);
    frmAvisoEmbarque_THY.Show;
  end;
end;

procedure TfrmNoil_THY.dxBarAutorizar_ALMClick(Sender: TObject);
begin
  if not MostrarFormChild('frmValida',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos := 'btnAutorizar';
     Application.CreateForm(TfrmValida, frmValida);
     frmValida.show;
   end;
end;

procedure TfrmNoil_THY.dxBarLargeButton21Click(Sender: TObject);
begin
  if not mostrarFormChild('frmAbreReporte',global_dxBarManagerPrincipal) then
   begin
     Application.CreateForm(TfrmAbreReporte, frmAbreReporte);
     frmAbreReporte.show;
     frmAbreReporte.cxLista.Items.Item[4].Delete;
     frmAbreReporte.cxLista.Items.Item[4].Delete;
   end;
end;

procedure TfrmNoil_THY.dxBarSeguimientoReqs_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('frmEstatus_Requisiciones',global_dxBarManagerPrincipal) then
   begin
     global_btnPermisos := 'dxBarSeguimientoReqs_COMP';
     Application.CreateForm(TfrmEstatus_Requisiciones, frmEstatus_Requisiciones);
     frmEstatus_Requisiciones.show;
  end;
end;

procedure TfrmNoil_THY.dxCatalogos_ALMClick(Sender: TObject);
begin
    if not mostrarFormChild('frmCatalogosAlmacen',global_dxBarManagerPrincipal) Then
    begin
       global_btnPermisos := 'dxCatalogos_ALM';
       Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
       frmCatalogosAlmacen.show  ;
    end;
end;

procedure TfrmNoil_THY.dxTipoRecurso_ALMClick(Sender: TObject);
begin
  if not MostrarFormChild('frmCatalogosOperacion',global_dxBarManagerPrincipal) then
  begin
    GLOBAL_FRMACTIVO:='frmMateriales';
    global_indexactivo := 6;
    global_btnPermisos := 'dxBarLargeButton5';
    Application.CreateForm(TfrmCatalogosOperacion, frmCatalogosOperacion);
    frmCatalogosOperacion.show;
  end;
end;

procedure TfrmNoil_THY.dxBarLargeButton27Click(Sender: TObject);
begin
  if not MostrarFormChild('frmAsistencias',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarLargeButton27';
    Application.CreateForm(TfrmAsistencias, frmAsistencias);
    frmAsistencias.show;
  end;
end;

procedure TfrmNoil_THY.dxBarLargeButton5Click(Sender: TObject);
begin
  if not MostrarFormChild('frmcontratos',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarLargeButton5';
    Application.CreateForm(TfrmContratos, frmContratos);
    frmContratos.show;
  end;
end;

procedure TfrmNoil_THY.GAtivaBtnClientesClick(Sender: TObject);
begin
  if not mostrarFormChild('frmClientes',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'GAtivaBtnClientes';
    Application.CreateForm(TfrmClientes, frmClientes);
    frmClientes.show
  end;
end;

procedure TfrmNoil_THY.GAtivaBtnProveedoresClick(Sender: TObject);
begin
  if not mostrarFormChild('frmProveedores',global_dxBarManagerPrincipal) then
     begin
       global_btnPermisos:= 'GAtivaBtnProveedores';
       Application.CreateForm(TfrmProveedores, frmProveedores);
       frmProveedores.show
     end;
end;

procedure TfrmNoil_THY.btnProyecsClick(Sender: TObject);
begin
  if not mostrarFormChild('frmPresupuesto',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos:= 'btnFolios';
    Application.CreateForm(TfrmPresupuesto, frmPresupuesto);
    frmPresupuesto.show;
  end;
end;

procedure TfrmNoil_THY.dxProyectos_ALMClick(Sender: TObject);
begin
  if not mostrarFormChild('frmProyectos',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos:= 'dxProyectos_ALM';
    Application.CreateForm(TfrmProyectos, frmProyectos);
    frmProyectos.show;
  end;
end;

procedure TfrmNoil_THY.btnProyectosClick(Sender: TObject);
 begin
 if not MostrarFormChild('frmPresupuesto',global_dxBarManagerPrincipal) then
   begin
      global_btnPermisos := 'btnProyectos';
      Application.CreateForm(TfrmPresupuesto, frmPresupuesto ) ;
      frmPresupuesto.show;
   end;
 end;

procedure TfrmNoil_THY.dxBarManager1ClickItem(Sender: TdxBarManager;
  ClickedItem: TdxBarItem);
begin
   try
      stMenu := ClickedItem.Name;
   Except
   end;
end;

procedure TfrmNoil_THY.dxbrbtnfrentes1Click(Sender: TObject);
begin
    if not MostrarFormChild('frmordenes',global_dxBarManagerPrincipal) then
    begin
      global_btnPermisos := '';
       Application.CreateForm(TfrmOrdenes, frmOrdenes);
       frmOrdenes.show;
    end
end;


procedure TfrmNoil_THY.lbtAsigModClick(Sender: TObject);
begin
if not MostrarFormChild('frmModulosxUsuario',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmModulosxusuario, frmModulosxUsuario);
    frmModulosxUsuario.show;
  end;
end;


procedure TfrmNoil_THY.lbtDeptoClick(Sender: TObject);
begin
  If not mostrarformChild('frmDeptos',global_dxBarManagerPrincipal) Then
   begin
    global_btnPermisos := '';
     global_btnPermisos := 'lbtDepto';
     Application.CreateForm(TfrmDeptos, frmDeptos);
     frmDeptos.show;
   end;
end;

procedure TfrmNoil_THY.lbtImportacionClick(Sender: TObject);
begin
  if not MostrarFormChild('frmImportaciondeDatos',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmImportaciondeDatos, frmImportaciondeDatos);
    frmImportaciondeDatos.ShowModal;
   end;
end;

procedure TfrmNoil_THY.dxbrlrgbtnFrentesClick(Sender: TObject);
begin
 if not MostrarFormChild('frmordenes',global_dxBarManagerPrincipal) then
    begin
      global_btnPermisos := '';
      Application.CreateForm(TfrmOrdenes, frmOrdenes);
      frmOrdenes.show;
    end
end;

procedure TfrmNoil_THY.dxbrlrgbtnregistrof1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmOrdenes',global_dxBarManagerPrincipal) then
    begin
      global_btnPermisos := '';
       Application.CreateForm(TfrmOrdenes, frmOrdenes);
       frmOrdenes.show;
    end;
end;

procedure TfrmNoil_THY.dxRibbonGalleryItem1Group2Item10Click(Sender: TObject);
begin
  close;
end;
procedure TfrmNoil_THY.dxRibbonGalleryItem1Group2Item2Click(Sender: TObject);
var pathimagen: string;
  Ini: TiniFile;
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';
  escribeini(detectar, OpenDialog1);
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
    muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
end;

procedure TfrmNoil_THY.dxRibbonGalleryItem1Group2Item3Click(Sender: TObject);
begin
  rDiario.Click;
end;

procedure TfrmNoil_THY.dxRibbonGalleryItem1Group2Item4Click(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmNoil_THY.dxRibbonGalleryItem1Group2Item5Click(Sender: TObject);
begin
  opGeneradores.Click;
end;

procedure TfrmNoil_THY.dxRibbonGalleryItem1Group2Item6Click(Sender: TObject);
begin
  rComparativo.Click;
end;

procedure TfrmNoil_THY.dxRibbonGalleryItem1Group2Item7Click(Sender: TObject);
begin
  global_btnPermisos := '';
  Application.CreateForm(TfrmCambioPassword, frmCambioPassword);
  frmcambiopassword.ShowModal
end;

procedure TfrmNoil_THY.dxRibbonGalleryItem1Group2Item8Click(Sender: TObject);
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
      // El usuario pertenece a un contrato ...
      // Se inicializan los Querys al contrato seleccionado ...
      connection.uconfiguracion.Active := False;
      connection.uconfiguracion.SQL.Clear;
      connection.uconfiguracion.SQL.Add('select * from configuracion where sContrato = :contrato');
      connection.uconfiguracion.Params.ParamByName('Contrato').Value    := global_contrato;
      connection.uconfiguracion.Params.ParamByName('Contrato').DataType :=        ftString;
      connection.uconfiguracion.Open;
      global_convenio := 'C';
      if connection.uconfiguracion.RecordCount = 0 then
        application.MessageBox('Precaución: No se encontro el archivo principal de configuración, notifique al Administrador del Sistema', 'Inteligent', 0)
      else
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

procedure TfrmNoil_THY.dxRibbonGalleryItem1Group2Item9Click(Sender: TObject);
begin
  frmSeleccion2.showModal;

end;

procedure TfrmNoil_THY.dxSkinChooserGalleryItem1SkinChanged(Sender: TObject;const ASkinName: string);
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

procedure TfrmNoil_THY.dxValidacionClick(Sender: TObject);
begin
  try
    frmValida.SetFocus;
  except
    global_btnPermisos := '';
    Application.CreateForm(TfrmValida, frmValida);
    frmValida.show
  end;
end;

procedure TfrmNoil_THY.Empleados1Click(Sender: TObject);
begin
        if not mostrarFormChild('frmCatalogoEmpleados',global_dxBarManagerPrincipal) Then
        begin
          global_btnPermisos := 'Empleados1';
          Application.CreateForm(TfrmCatalogoEmpleados, frmCatalogoEmpleados);
          frmCatalogoEmpleados.show;
        end;
end;

procedure TfrmNoil_THY.Estimaciones3Click(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmNoil_THY.estirado1Click(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then modofondo(fondo, 'bmStretch', detectar)
  else escribeinidefault(detectar, 'bmStretch');
  fondo.Stretch:=True;
end;

procedure TfrmNoil_THY.ControldeGuardias1Click(Sender: TObject);
begin
if not MostrarFormChild('FrmGuardias',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'ControldeGuardias1';
    Application.CreateForm(TFrmGuardias, FrmGuardias);
    FrmGuardias.show
  end;
end;

procedure TfrmNoil_THY.JvAppEvents1ActiveControlChange(Sender: TObject);
begin
  self.Caption := sender.ClassName;
end;

procedure TfrmNoil_THY.SpeedItem2Click(Sender: TObject);
begin
  adConfiguracion.Click
end;

procedure TfrmNoil_THY.SpeedItem3Click(Sender: TObject);
begin
  adentro := True;
  sSeleccion.Click;
end;

procedure TfrmNoil_THY.SpeedItem5Click(Sender: TObject);
begin
  qComentarios.Click
end;

procedure TfrmNoil_THY.SpeedItem6Click(Sender: TObject);
begin
  cConsulta4.Click
end;

procedure TfrmNoil_THY.SpeedItem7Click(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmNoil_THY.SpeedItem11Click(Sender: TObject);
begin
  rDiario.Click
end;

procedure TfrmNoil_THY.SpeedItem14Click(Sender: TObject);
begin
  opGeneradores.Click
end;

procedure TfrmNoil_THY.SpeedItem10Click(Sender: TObject);
begin
  opComparativo1.Click
end;


procedure TfrmNoil_THY.opSQLAnexoClick(Sender: TObject);
begin
if not mostrarFormChild('frmImportaciondeDatos',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmImportaciondeDatos, frmImportaciondeDatos);
    frmImportaciondeDatos.ShowModal;
  end;
end;

procedure TfrmNoil_THY.menuExtraPaneItemClick(Sender: TObject;AIndex: Integer);
begin
  if AIndex=0 then sLogin.Click;
end;

procedure TfrmNoil_THY.MnsCaptOrdComClick(Sender: TObject);
begin
 try
    frmPedidos.SetFocus;
 except
    global_btnPermisos := '';
    Application.CreateForm(TfrmPedidos, frmPedidos);
    frmPedidos.Show
  end;
end;

procedure TfrmNoil_THY.MnsEntradasAlmacenClick(Sender: TObject);
begin
  if not MostrarFormChild('frmEntradaAlmacen',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmEntradaAlmacen_THY, frmEntradaAlmacen_THY);
    frmEntradaAlmacen_THY.Show
  end;
end;

procedure TfrmNoil_THY.MnsSalidasAlmacenClick(Sender: TObject);
begin
  try
    frmSalidaAlmacen_THY.SetFocus;
  except
    Application.CreateForm(TfrmSalidaAlmacen_THY, frmSalidaAlmacen_THY);
    frmSalidaAlmacen_THY.Show
  end;
end;

procedure TfrmNoil_THY.Generaciondeinformes2Click(Sender: TObject);
begin
  rComparativo.Click
end;

procedure TfrmNoil_THY.Generadores2Click(Sender: TObject);
begin
  opGeneradores.Click
end;

procedure TfrmNoil_THY.Guardias1Click(Sender: TObject);
begin
  if not MostrarFormChild('FrmAsignarGuardias',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TFrmAsignarGuardias, FrmAsignarGuardias);
    FrmAsignarGuardias.show;
  end;
end;

procedure TfrmNoil_THY.adResidenciasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmResidencias',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'adResidencias';
    Application.CreateForm(TfrmResidencias, frmResidencias);
    frmResidencias.show;
  end;
end;

procedure TfrmNoil_THY.adGruposClick(Sender: TObject);
begin
  if not MostrarFormChild('frmGrupos',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmGrupos, frmGrupos);
    frmGrupos.show;
  end;
end;

procedure TfrmNoil_THY.adImportarClick(Sender: TObject);
begin
  if not MostrarFormChild('frmImportaciondedatos',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmImportaciondeDatos, frmImportaciondeDatos);
    frmImportaciondeDatos.show;
  end;
end;

procedure TfrmNoil_THY.adGrupoPClick(Sender: TObject);
begin
  if not MostrarFormChild('frmGruposxPrograma',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmGruposxPrograma, frmGruposxPrograma);
    frmGruposxPrograma.show;
  end;
end;

procedure TfrmNoil_THY.adUsuariosCClick(Sender: TObject);
begin
 if not MostrarFormChild('frmUsuariosXproyectos',global_dxBarManagerPrincipal) Then
   begin
    global_btnPermisos := 'adUsuarios';
    Application.CreateForm(TfrmUsuariosxproyectos, frmUsuariosXproyectos);
    frmUsuariosXproyectos.show;
  end;
end;

procedure TfrmNoil_THY.SpeedItem4Click0(Sender: TObject);
begin
  opValida.Click
end;

procedure TfrmNoil_THY.SpeedItem15Click(Sender: TObject);
begin
  opAbre.Click
end;

procedure TfrmNoil_THY.SpeedItem16Click(Sender: TObject);
begin
  opFirmas.Click
end;

procedure TfrmNoil_THY.SpeedItem17Click(Sender: TObject);
begin
  rComparativo.Click
end;

procedure TfrmNoil_THY.SpeedItem16Click0(Sender: TObject);
begin
  opFirmas.Click
end;

procedure TfrmNoil_THY.AcoplarDesacoplarClick(Sender: TObject);

begin
  if dxTabbedMDIManager1.Active then   //Si el componente tiene activa la propiedad
    dxTabbedMDIManager1.Active    := false   //Desacopla las ventanas
  else dxTabbedMDIManager1.Active := True; //Si esta desactivado las acopla al mdi
end;

procedure TfrmNoil_THY.CalculoRenunciaExecute(Sender: TObject);
begin
  ShowMessage('Se hizo el cálculo de una renuncia.');
end;

procedure TfrmNoil_THY.CalculoDespidoExecute(Sender: TObject);
begin
  ShowMessage('Se hizo el calculo de un despido');
end;

procedure TfrmNoil_THY.Organizacion1Click(Sender: TObject);
begin
  If not mostrarFormChild('frm_empresa',global_dxBarManagerPrincipal) Then
   begin
      global_btnPermisos := 'Organizacion1';
      Application.CreateForm(Tfrm_empresa, frm_empresa);
      frm_empresa.show;
   end;
end;

procedure TfrmNoil_THY.permisosUsuModulos(bandera: byte);
var
  Component : TdxBarLargeButton;
  Component1:      TdxBarButton;
  Component2 : TdxRibbonTab;
  iElemento : Integer;
  gener     : TComponent ;
  sPrograma :  string;
begin
  for iElemento := 0 to frmNoil_THY.ComponentCount - 1 do
  begin
    if frmNoil_THY.Components[iElemento].ClassName = 'TdxBarLargeButton' then
     begin
       Component := frmNoil_THY.Components[iElemento] as TdxBarLargeButton;
       if ((Component.Tag <> 123) ) then
       begin
         Component.Enabled := False ;
         Component.Visible := ivNever;
       end;
     end;

    if frmNoil_THY.Components[iElemento].ClassName = 'TdxBarButton' then
     begin
       Component1 := frmNoil_THY.Components[iElemento] as TdxBarButton;
       if ((Component1.Tag <> 123) ) then
       begin
         Component1.Enabled := False ;
         Component1.Visible := ivNever;
       end;
     end;

{     if frmNoil_THY.Components[iElemento].ClassName = 'TdxRibbonTab' then
     begin

       Component2 := frmNoil_THY.Components[iElemento] as TdxRibbonTab;
       if Component2.Name = 'mnGerenciaAdtiva' then
        begin
        // Component2.Enabled := False ;
         Component2.Visible := False;
        end;
     end;
 }

   end ;

  connection.zModulosPermisos.Active := False;
  connection.zModulosPermisos.ParamByName('Usuario').AsString := global_usuario;
  connection.zModulosPermisos.Open;

  if Connection.zModulosPermisos.RecordCount >0 Then
    while not Connection.zModulosPermisos.Eof do
    begin

        gener := frmNoil_THY.FindComponent(Connection.zModulosPermisos.FieldByName('sIdPrograma').AsString) ;
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

    for iElemento := 0 to frmNoil_THY.ComponentCount - 1 do
    begin
      if frmNoil_THY.Components[iElemento].ClassName = 'TdxRibbonTab' then
       begin

         Component2 := frmNoil_THY.Components[iElemento] as TdxRibbonTab;
         if Component2.Tag > 0  then
          begin

            Connection.zModulosPermisos.Filtered := False;
            Connection.zModulosPermisos.Filter   := 'IdTab = ' + QuotedStr(IntToStr(Component2.Tag)) + ' AND ' + 'Acceder = ' + QuotedStr('Si');
            Connection.zModulosPermisos.Filtered := True;

            if Connection.zModulosPermisos.RecordCount > 0 then
              Component2.Visible := True
            else
              Component2.Visible := False;


            Connection.zModulosPermisos.Filtered := False;
          end;
       end;
    end;

end;
procedure TfrmNoil_THY.opConfigCorreoClick(Sender: TObject);
begin
 if not MostrarFormChild('frmConfigCorreo',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'opConfigCorreo';
    Application.CreateForm(TFrmConfigCorreo, FrmConfigCorreo);
    FrmConfigCorreo.Show;
  end;
end;

procedure TfrmNoil_THY.oPFirmasAlmClick(Sender: TObject);
begin
  if not MostrarFormChild('frmFirmantes',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'oPFirmasAlm';
    Application.CreateForm(TfrmFirmas, frmFirmas);
    frmFirmas.Show;
  end;
end;

procedure TfrmNoil_THY.SpeedItem19Click(Sender: TObject);
begin
  opTiemposM.Click
end;

procedure TfrmNoil_THY.SpeedItem20Click(Sender: TObject);
begin
  cConsulta5.Click
end;

procedure TfrmNoil_THY.SpeedItem13Click(Sender: TObject);
begin
  cConsulta5.Click
end;

procedure TfrmNoil_THY.SpeedItem10Click0(Sender: TObject);
begin
  opComparativo1.Click
end;

procedure TfrmNoil_THY.SpeedItem22Click(Sender: TObject);
begin
  cConsulta1.Click
end;

procedure TfrmNoil_THY.FormResize(Sender: TObject);
begin
  if frmNoil_THY.Height<600 then frmNoil_THY.Height:=600;
  if frmNoil_THY.Width<800 then frmNoil_THY.Width:=800;
end;

procedure TfrmNoil_THY.imgKardex1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmKardex',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmKardex, frmKardex);
    frmKardex.show
  end;
end;

procedure TfrmNoil_THY.imgKardexClick(Sender: TObject);
begin
  if not MostrarFormChild('frmKardex',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmKardex, frmKardex);
    frmKardex.show
  end;
end;

procedure TfrmNoil_THY.ImpresionDespidoExecute(Sender: TObject);
begin
  ShowMessage('Se imprimió un despido.');
end;

procedure TfrmNoil_THY.ImpresionRenunciaExecute(Sender: TObject);
begin
  ShowMessage('Se imprimio una renuncia');
end;

procedure TfrmNoil_THY.ImprimirContratos1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmSeguroVida',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'ImprimirContratos1';
    Application.CreateForm(TfrmSeguroVida, frmSeguroVida);
    frmSeguroVida.show

  end;
end;

procedure TfrmNoil_THY.InputBoxSetPasswordChar(var Msg: TMessage);
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

procedure TfrmNoil_THY.inteligentpopPopup(Sender: TObject);
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

procedure TfrmNoil_THY.Iraestimaciones1Click(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmNoil_THY.Irageneradores1Click(Sender: TObject);
begin
  opGeneradores.Click;
end;

procedure TfrmNoil_THY.Irageneradoresdeinformes1Click(Sender: TObject);
begin
  rComparativo.Click;
end;

procedure TfrmNoil_THY.Irareportesdiarios1Click(Sender: TObject);
begin
  rDiario.Click;
end;

procedure TfrmNoil_THY.sCambiaPClick(Sender: TObject);
begin
   if not MostrarFormChild('frmcambiopassword',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := '';
      Application.CreateForm(TfrmCambioPassword, frmCambioPassword);
      frmcambiopassword.ShowModal
    end;
end;

procedure TfrmNoil_THY.opRequisicionesClick(Sender: TObject);
begin

   if not MostrarFormChild('FrmRequisicionMaterial',global_dxBarManagerPrincipal) Then
   begin
        global_btnPermisos := 'opRequisiciones';
        Application.CreateForm(TFrmRequisicionMaterial, FrmRequisicionMaterial);
        FrmRequisicionMaterial.show
   end;

end;

procedure TfrmNoil_THY.opPedidosClick(Sender: TObject);
begin
  if not MostrarFormChild('frmPedidos',global_dxBarManagerPrincipal) Then
   begin
     global_btnPermisos := 'opPedidos';
     Application.CreateForm(TfrmPedidos, frmPedidos);
     frmPedidos.show
   end;
end;

procedure TfrmNoil_THY.SpeedItem23Click(Sender: TObject);
begin
  opComparativo5.Click
end;

procedure TfrmNoil_THY.TiempoTimer(Sender: TObject);
begin
  application.Terminate;
end;

procedure TfrmNoil_THY.TimerNotificadorTimer(Sender: TObject);
begin
  if global_usuario = 'rmolina' then
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
end;

procedure TfrmNoil_THY.TimerNotTimer(Sender: TObject);
var tb:String;
  sqlCount:TUniquery;
  fAlertWindow: TdxAlertWindow;
begin
  if global_usuario = 'rmolina' then
   begin
       try
        sqlCount := TUniquery.Create(nil);
        sqlCount.Connection := connection.Uconnection;
        sqlCount.Active := False;
        sqlCount.SQl.Text := 'Call MensajeNotify(1)';
        sqlCount.Open;

        if sqlCount.RecordCount > zNotify.RecordCount then
        begin
          TimerNotificador.Enabled:=True;
          zNotifica.SQL.Text := 'Call MensajeNotify(0)';
          zNotifica.Open;
          if zNotifica.RecordCount > 0 then
          begin
            if(zNotifica.FieldByName('Tipo').AsString = 'Documento') then
              tb := 'Documentos a vencer: ';
            if(zNotifica.FieldByName('Tipo').AsString = 'Fecha') then
              tb := 'Fechas por terminar: ';
            if(zNotifica.FieldByName('Tipo').AsString = 'Estatus') then
              tb := 'Operaciones';

            fAlertWindow := alertme.Show('Tipo: '+tb,zNotifica.FieldByName('Mensaje').AsString,10);
            zNotify.Refresh;
          end;
        end;

      sqlCount.Close;
      sqlCount.Destroy;
      except
        on e: Exception do
        if e.message <> '***' then
          begin

        end;
      end;
   end;

end;

procedure TfrmNoil_THY.ToolButton10Click(Sender: TObject);
begin
  qComentarios.Click
end;

procedure TfrmNoil_THY.ToolButton11Click(Sender: TObject);
begin
  opComparativo5.Click
end;

procedure TfrmNoil_THY.ToolButton1Click(Sender: TObject);
begin
  adConfiguracion.Click
end;

procedure TfrmNoil_THY.ToolButton21Click(Sender: TObject);
begin
  opFirmas.Click
end;

procedure TfrmNoil_THY.ToolButton2Click(Sender: TObject);
begin
  adentro := True;
  sSeleccion.Click;
end;

procedure TfrmNoil_THY.ToolButton6Click(Sender: TObject);
begin
  cConsulta1.Click
end;

procedure TfrmNoil_THY.ToolButton7Click(Sender: TObject);
begin
  opComparativo1.Click
end;

procedure TfrmNoil_THY.ToolButton8Click(Sender: TObject);
begin
  cConsulta5.Click
end;

procedure TfrmNoil_THY.ToolButton9Click(Sender: TObject);
begin
  cConsulta4.Click
end;

procedure TfrmNoil_THY.ActivarBiometrico;
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

procedure TfrmNoil_THY.adActivosClick(Sender: TObject);
begin
 if not MostrarFormChild('frmActivos',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := 'adActivos';
      Application.CreateForm(TfrmActivos, frmActivos);
      frmActivos.show;
    end;
end;

procedure TfrmNoil_THY.opadmonCatalogoClick(Sender: TObject);
begin
  if not MostrarFormChild('frmAdmonCatalogos',global_dxBarManagerPrincipal) then
      begin
        global_btnPermisos := '';
        Application.CreateForm(TfrmAdmonCatalogos, frmAdmonCatalogos);
        frmAdmonCatalogos.show
      end;
end;

procedure TfrmNoil_THY.MnuSalAlmacenClick(Sender: TObject);
begin
 If not MostrarFormChild('frmSalidaAlmacen',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'MnuSalAlmacen';
    Application.CreateForm(TfrmSalidaAlmacen_THY, frmSalidaAlmacen_THY);
    frmSalidaAlmacen_THY.show
  end;
end;

procedure TfrmNoil_THY.mnuEmpresaClick(Sender: TObject);
begin
  If not mostrarFormChild('frm_empresa',global_dxBarManagerPrincipal) Then
   begin
      global_btnPermisos := 'mnuEmpresa';
      Application.CreateForm(Tfrm_empresa, frm_empresa);
      frm_empresa.show;
   end;
end;

procedure TfrmNoil_THY.mnuEmpresasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmcontratos',global_dxBarManagerPrincipal) then
  begin
    global_cambioletrero := 20 ;
    global_btnPermisos := '';
    Application.CreateForm(TfrmContratos, frmContratos);
    frmContratos.show;
  end;
end;

procedure TfrmNoil_THY.mnuAgrupacionPClick(Sender: TObject);
begin
    if not MostrarFormChild('frmGruposPersonal',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := '';
      Application.CreateForm(TfrmGruposPersonal, frmGruposPersonal);
      frmGruposPersonal.Show
    end;
end;

procedure TfrmNoil_THY.MnuAlmacenClick(Sender: TObject);
begin
   if not MostrarFormChild('frmAlmacenes',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := 'MnuAlmacen';
      Application.CreateForm(TfrmAlmacenes, frmAlmacenes);
      frmAlmacenes.Show;
    end;
end;

procedure TfrmNoil_THY.tbbRepBarcoClick(Sender: TObject);
begin
  reporteBarco.Click;
end;

procedure TfrmNoil_THY.tbbFotosClick(Sender: TObject);
begin
  opTiemposM.Click
end;

procedure TfrmNoil_THY.tbbFirmantesClick(Sender: TObject);
begin
  opFirmas.Click
end;

procedure TfrmNoil_THY.tbbAutorizaClick(Sender: TObject);
begin
  opValida.Click
end;

procedure TfrmNoil_THY.tbbDesautorizaClick(Sender: TObject);
begin
  opAbre.Click
end;

procedure TfrmNoil_THY.tbbEmpleadosClick(Sender: TObject);
begin
  mnuPersonal2.Click;
end;

procedure TfrmNoil_THY.tbbEstimaClick(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmNoil_THY.tbbGeneraClick(Sender: TObject);
begin
  opGeneradores.Click
end;

procedure TfrmNoil_THY.tbbInformesClick(Sender: TObject);
begin
  rComparativo.Click
end;

procedure TfrmNoil_THY.AdvToolBarButton24Click(Sender: TObject);
begin
  rComparativo.Click
end;

procedure TfrmNoil_THY.tbbCambiaContratoClick(Sender: TObject);
begin
  if ValidaChildAbierto(frmNoil_THY) > 0 then
  begin
    if MSG_YN('Si cambia de empresa se cerraran todas las ventanas desea continuar?') then
    begin
      CierraFormChild(frmNoil_THY);
    end;
  end;
  adentro  := True;

  frmSeleccion2.fin := False;
  frmSeleccion2.showModal;
  NumNotyfi := 0;
  //Notificame;
  frmNoil_THY.permisosUsuModulos(100);
  Notificaciones;
  //sSeleccion.Click;
end;

procedure TfrmNoil_THY.AdvToolBarMenuButton1Click(Sender: TObject);
begin
  adConfiguracion.Click
end;

procedure TfrmNoil_THY.btnGeneraRespaldoClick(Sender: TObject);
var pwd : String;
begin
// Request Password
  PostMessage(Handle, InputBoxMessage, 0, 0);
  pwd:=InputBox('¡Seguridad de Conexiones!', 'Ingresar contraseña:','');
  if pwd = 'noiladmin0317' then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmObtenerRespaldo, frmObtenerRespaldo);
    frmObtenerRespaldo.ShowModal;
  end
  else
  begin
    MessageDlg('Contraseña incorecta, no  posee permisos, vuelva a intentar',mtError,[mbOk],0);
  end;

end;

procedure TfrmNoil_THY.btnModulosClick(Sender: TObject);
begin
if not MostrarFormChild('frmCatalogoModulos',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'btnModulos';
    Application.CreateForm(TfrmCatalogoModulos, frmCatalogoModulos);
    frmCatalogoModulos.show;
  end;
end;

procedure TfrmNoil_THY.Reportesdiarios1Click(Sender: TObject);
begin
  rDiario.Click;
end;

procedure TfrmNoil_THY.MnuEntAlmaceClick(Sender: TObject);
begin
   if not MostrarFormChild('frmEntradaAlmacen',global_dxBarManagerPrincipal) then
      begin
        global_btnPermisos := 'MnuEntAlmace';
        Application.CreateForm(TfrmEntradaAlmacen_THY, frmEntradaAlmacen_THY);
        frmEntradaAlmacen_THY.show ;
      end;
end;

procedure TfrmNoil_THY.mnuKardexClick(Sender: TObject);
begin
 if not MostrarFormChild('frmKardex',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmKardex, frmKardex);
    frmKardex.Show;
  end;
end;

procedure TfrmNoil_THY.cascadaClick(Sender: TObject);
begin
  frmNoil_THY.Cascade;
end;

end.

