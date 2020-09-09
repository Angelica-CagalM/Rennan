unit frm_Noil_SSI;

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
  cxGridDBCardView, cxImageComboBox, dxLayoutcxEditAdapters, frxDBSet,
  cxProgressBar ;

const
	InputBoxMessage = WM_USER + 200;

type
  TfrmNoil_SSI = class(TdxRibbonForm)
  Status: TdxRibbonStatusBar;
  Tiempo: TTimer;
  OpenDialog1: TOpenDialog;
  frxReport1: TfrxReport;
  dxBarManager1: TdxBarManager;
  dxRibbon1Tab1: TdxRibbonTab;
    mNoil: TdxRibbon;
  dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
  dxSkinController1: TdxSkinController;
    barInicio: TdxBar;
    mnRecursosHumanos: TdxRibbonTab;
    mnAlmacen: TdxRibbonTab;
  estirado: TdxBarButton;
  centrado: TdxBarButton;
  mosaico: TdxBarButton;
  cascada: TdxBarButton;
  mosaicovertical: TdxBarButton;
  mosaicohorizontal: TdxBarButton;
  sSalir: TdxBarLargeButton;
  OpCrearGenerado: TdxBarSubItem;
  dxBarSubItem12: TdxBarSubItem;
  cambiarfondo: TdxBarButton;
  cambiarmododefondo: TdxBarSubItem;
  ventanaen: TdxBarSubItem;
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
  dxBarManager1Bar10: TdxBar;
    dxBarCatalogos_RH: TdxBarSubItem;
    dxBarEmpleados_RH: TdxBarLargeButton;
  Equipos1: TdxBarLargeButton;
    dxBarConfiguracionRH_RH: TdxBarLargeButton;
  EstatusEmpleados1: TdxBarButton;
    dxDepartamentos_RH: TdxBarButton;
    dxEmpresa_RH: TdxBarButton;
  dxBarManager1Bar13: TdxBar;
    dxBarSistema_CONF: TdxBarSubItem;
    dxAcerca_CONF: TdxBarButton;
    dxAyuda_CONF: TdxBarButton;
    dxHistorialMoto_CONF: TdxBarButton;
    dxCambiarPassword_CONF: TdxBarButton;
  sLogin: TdxBarButton;
  sSeleccion: TdxBarButton;
    dxBarAsignaciones_CONF: TdxBarSubItem;
    cxAsignaciones_CONF: TdxBarSubItem;
  adDeptos: TdxBarButton;
  adProgramas: TdxBarButton;
    dxAsignaUsuarios_CONF: TdxBarButton;
  AsignaciondeOrd: TdxBarButton;
    dxUsuarios_CONF: TdxBarButton;
    dxPerfilUsuario_CONF: TdxBarButton;
  SubAdministrador: TdxBarButton;
    cxProyectoEmpresa_CONF: TdxBarButton;
  adSubContratos: TdxBarButton;
    dxConfiguracion_CONF: TdxBarButton;
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
    dxAdmonCliente_CONF: TdxBarSubItem;
    dxResidencias_CONF: TdxBarButton;
    dxActivos_CONF: TdxBarButton;
  cFactorCosto: TdxBarButton;
    dxCatalogoErrores_CONF: TdxBarButton;
    dxBarHerramientas_CONF: TdxBarSubItem;
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
    dxBarEntradaAlmacen_ALM: TdxBarLargeButton;
    dxBarSalidaAlmacen_ALM: TdxBarLargeButton;
    dxBarRequisiciones_ALM: TdxBarLargeButton;
    dxBarOC_ALM: TdxBarLargeButton;
    dxBarEmbarque_ALM: TdxBarLargeButton;
  optEstimaciones: TdxBarLargeButton;
  optValida: TdxBarLargeButton;
  optDesautoriza: TdxBarLargeButton;
  mnPanel: TdxRibbonTab;
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
    dxBarCatalogos_ALM: TdxBarSubItem;
  dxBarSubItem11: TdxBarSubItem;
  dxBarSubItem13: TdxBarSubItem;
    dxAlmacenes_ALM: TdxBarButton;
  MnuCatalogodeMo: TdxBarButton;
  Firmantes1: TdxBarLargeButton;
  MovtosdeEmbarcacin1: TdxBarLargeButton;
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
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxbrlrgbtnregistrof1: TdxBarLargeButton;
    dxbrlrgbtnregistrof2: TdxBarLargeButton;
    dxbrbtn1: TdxBarButton;
    dxBarSelecciona_INI: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    btnProyectos: TdxBarLargeButton;
    btnConfiguracionVentas: TdxBarLargeButton;
    dxBarButton14: TdxBarButton;
    dxbrbtn2: TdxBarButton;
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
    dxEmpresas_CONF: TdxBarButton;
    AsignacindeAlmacenesaUsuarios1: TdxBarButton;
    subAsigAlmContratos: TdxBarButton;
    dxbrsbtmlistas2: TdxBarSubItem;
    mnuEmpresac: TdxBarButton;
    mnuGenerealc: TdxBarButton;
    dxBarButton19: TdxBarButton;
    btnCatalogoTipoVisita: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarSubItem17: TdxBarSubItem;
    dxBarButton21: TdxBarButton;
    Cotizaciones1: TdxBarLargeButton;
    dxBarAutorizar_ALM: TdxBarLargeButton;
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
    dxBarGuardia_RH: TdxBarLargeButton;
    dxBarButton22: TdxBarButton;
    dxBarSubItem18: TdxBarSubItem;
    dxBarSubItem19: TdxBarSubItem;
    cGruposIsom: TdxBarButton;
    cIsometricos: TdxBarButton;
    dxValidacion: TdxBarButton;
    dxDesvalidacion: TdxBarButton;
    dxCatalogoConceptos: TdxBarButton;
    dxCatalogoConceptosPU: TdxBarButton;
    dxBarSubItem22: TdxBarSubItem;
    dxCatalogoMaterialesPU: TdxBarButton;
    Tipo_Insumo: TdxBarButton;
    configuracion_almacen: TdxBarLargeButton;
    programaDeSalud: TdxBarLargeButton;
    Metro: TdxBarButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxbrsbtmAnalisis1: TdxBarSubItem;
    dxbrlrgbtnAnalisis: TdxBarLargeButton;
    subIndirectosCat: TdxBarButton;
    btnregistroquejas: TdxBarLargeButton;
    dxBtnSalarios: TdxBarLargeButton;
    dxBarFirmantes_ALM: TdxBarLargeButton;
    btnCatMaestros: TdxBarButton;
    dxModulos_CONF: TdxBarButton;
    lbtImportacion: TdxBarLargeButton;
    lbtAsigMod: TdxBarLargeButton;
    lbtRepError: TdxBarLargeButton;
    mnuBorrarContrato: TdxBarLargeButton;
    lbtLista: TdxBarLargeButton;
    dxDepartamentos_ALM: TdxBarLargeButton;
    lbtConfPu: TdxBarLargeButton;
    cxColeccionesFondo: TcxImageCollection;
    cxImageCollection1Item1: TcxImageCollectionItem;
    cxImageCollection1Item2: TcxImageCollectionItem;
    cxImageCollection1Item3: TcxImageCollectionItem;
    cxImageCollection1Item4: TcxImageCollectionItem;
    cxImageCollection1Item5: TcxImageCollectionItem;
    cxImageCollection1Item6: TcxImageCollectionItem;
    cControlOficio: TdxBarButton;
    cTipoOficio: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxProveedores_ALM: TdxBarButton;
    dxMateriales_ALM: TdxBarButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarSubItem26: TdxBarSubItem;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarSubItem27: TdxBarSubItem;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarSeparator2: TdxBarSeparator;
    dxBarSeparator3: TdxBarSeparator;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarButton61: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxCatalogos_RH: TdxBarButton;
    btnDoctos: TdxBarButton;
    dxTiposNomina_RH: TdxBarButton;
    dxCatalogos_ALM: TdxBarButton;
    alertme: TdxAlertWindowManager;
    dxBarAutofolios_CONF: TdxBarLargeButton;
    zNotifica: TUniQuery;
    zqImagen: TUniQuery;
    ds_imagen: TDataSource;
    cxDBImage1: TcxDBImage;
    cxBarDiagramaSGC_INI: TdxBarLargeButton;
    dxBarDiagramaSGC_ALM: TdxBarLargeButton;
    dxBarDiagramaSGC_RH: TdxBarLargeButton;
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
    cxGrid1DBLayoutView1LayoutItem3: TcxGridLayoutItem;
    cxGrid1DBLayoutView1Item3: TcxGridDBLayoutViewItem;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    iconAlert: TcxImageList;
    mNotiicon: TIntegerField;
    cxGrid1DBLayoutView1Group1: TdxLayoutAutoCreatedGroup;
    btnEvaIni: TdxBarButton;
    dxBarDiasLaborados_RH: TdxBarLargeButton;
    dxBarVerificar_RH: TdxBarLargeButton;
    zScanner: TUniQuery;
    dxProgramaHora_CONF: TdxBarButton;
    dxProyectos_ALM: TdxBarButton;
    dxBarButton75: TdxBarButton;
    dxBarRecargaConsulta_CONF: TdxBarLargeButton;
    cxBarNotificaciones_CONF: TdxBarLargeButton;
    TimerNotificador: TTimer;
    TimerNot: TTimer;
    zNotify: TUniQuery;
    mNotiIdNotificacion: TIntegerField;
    dxConfCorreo_CONF: TdxBarButton;
    dxEvalua_proveedor_ALM: TdxBarButton;
    dxBarMateriales_ALM: TdxBarLargeButton;
    btnClientes: TdxBarButton;
    mnGerenciaAdtiva: TdxRibbonTab;
    dxBarManager1Bar16: TdxBar;
    dxBarClientes_GA: TdxBarLargeButton;
    dxBarProveedores_GA: TdxBarLargeButton;
    dxBarEstadosCuenta_GA: TdxBarLargeButton;
    dxBarPagos_GA: TdxBarLargeButton;
    dxBarCuentasCobrar_GA: TdxBarLargeButton;
    dxBarAutorizar_GA: TdxBarLargeButton;
    dxBarDesautorizar_GA: TdxBarLargeButton;
    dxBarOCC_GA: TdxBarLargeButton;
    dxBarFacturas_GA: TdxBarLargeButton;
    mNoilMto: TdxRibbonTab;
    dxBarManager1Bar17: TdxBar;
    dxBarCatalogoMatenimiento_MTO: TdxBarLargeButton;
    dxBarRegistroMantenimiento_MTO: TdxBarLargeButton;
    dxBarEvalucacionComp_RH: TdxBarLargeButton;
    dxSalarios_RH: TdxBarButton;
    dxNomina_RH: TdxBarLargeButton;
    btnMatMto: TdxBarLargeButton;
    dxBarCatalogo_MTO: TdxBarSubItem;
    dxCatalogoGeneral_MTO: TdxBarButton;
    dxAlmacen_MTO: TdxBarButton;
    dxMateriales_MTO: TdxBarButton;
    dxAreas_MTO: TdxBarButton;
    mNoilTabGC: TdxRibbonTab;
    mNoilTabConta: TdxRibbonTab;
    mNoilTabOper: TdxRibbonTab;
    dxBarManager1Bar18: TdxBar;
    dxBarManager1Bar19: TdxBar;
    dxBarCatalogoGeneral_GC: TdxBarSubItem;
    dxCatatalogoGeneral_GC: TdxBarButton;
    dxAreas_GC: TdxBarButton;
    dxBarEvaluaInicial_GC: TdxBarLargeButton;
    dxBarEvaluaProveedor_GC: TdxBarLargeButton;
    dxBarActDiarias_GC: TdxBarLargeButton;
    dxBarDiagramaSGC_GC: TdxBarLargeButton;
    dxBarManager1Bar20: TdxBar;
    dxBarCatalogos_OPER: TdxBarSubItem;
    dxCatalogosGenerales_OPER: TdxBarButton;
    dxClientes_OPER: TdxBarButton;
    dxProyectos_OPER: TdxBarButton;
    dxCatalogosMateriales_OPER: TdxBarButton;
    dxBarDiasLaborados_OPER: TdxBarLargeButton;
    dxBarPresupuestos_OPER: TdxBarLargeButton;
    dxBarCatalogoGeneral_CON: TdxBarSubItem;
    dxCatalogoGeneral_CON: TdxBarButton;
    dxBarNomina_CON: TdxBarLargeButton;
    dxBarCuentasCobrar_CON: TdxBarLargeButton;
    dxBarEdoCuenta_CON: TdxBarLargeButton;
    dxBarFacClientes_CON: TdxBarLargeButton;
    dxBarPlanMantenimiento_MTO: TdxBarLargeButton;
    dxBarReporteCheck_MTO: TdxBarLargeButton;
    dxPersonalProv_RH: TdxBarButton;
    dxBarPeriodoNom_RH: TdxBarLargeButton;
    dxBarButton37: TdxBarButton;
    dxBarPreNomina_RH: TdxBarLargeButton;
    dxBarControlComision_RH: TdxBarLargeButton;
    dxRangoSalarios_RH: TdxBarButton;
    dxBarCostoAlmacen_ALM: TdxBarLargeButton;
    dxBarControlSubBaj_RH: TdxBarLargeButton;
    dxBarInformePresupuesto_OPER: TdxBarLargeButton;
    dxBarGenerador_OPER: TdxBarLargeButton;
    dxBarMateriales_OPER: TdxBarLargeButton;
    dxBarRequisicion_OPER: TdxBarLargeButton;
    dxBarProyecto_OPER: TdxBarLargeButton;
    dxBarAdicionales_OPER: TdxBarLargeButton;
    dxBarRegistroActividad_OPER: TdxBarLargeButton;
    uProyectos: TUniQuery;
    ds_proyectos: TDataSource;
    uCCxUsuario: TUniQuery;
    ds_ccxUsuario: TDataSource;
    dxBarConfMail_CONF: TdxBarLargeButton;
    noilTabCompras: TdxRibbonTab;
    barCompras: TdxBar;
    dxBarCatalogos_COMP: TdxBarSubItem;
    dxCatalogos_COMP: TdxBarButton;
    dxAlmacenes_COMP: TdxBarButton;
    dxBarEvaluaciones_COMP: TdxBarSubItem;
    dxEvalua_inicio_COMP: TdxBarButton;
    dxEvaluacion_COMP: TdxBarButton;
    dxBarCotizaciones_COMP: TdxBarLargeButton;
    dxBarActividadGeneral_GA: TdxBarLargeButton;
    dxBarRegistroAct_RH: TdxBarLargeButton;
    dxBarRegistroAct_ALM: TdxBarLargeButton;
    dxBarRegistroAct_COMP: TdxBarLargeButton;
    dxBarRegistroActividad_MTO: TdxBarLargeButton;
    dxBarRegistroActividades_CON: TdxBarLargeButton;
    dxBarAutorizar_OPER: TdxBarLargeButton;
    dxBarDesautorizar_OPER: TdxBarLargeButton;
    dxDepartamentos_COMP: TdxBarButton;
    dxProyectos_COMP: TdxBarButton;
    dxBarProveedores_COMP: TdxBarLargeButton;
    dxBarMateriales_COMP: TdxBarLargeButton;
    dxBarRequisiciones_COMP: TdxBarLargeButton;
    dxBarOC_COMP: TdxBarLargeButton;
    dxBarCostoALM_COMP: TdxBarLargeButton;
    dxBarAutoriza_COMP: TdxBarLargeButton;
    dxBarDesAutorizar_COMP: TdxBarLargeButton;
    dxBarFirmantes_COMP: TdxBarLargeButton;
    dxBarDiagramaSGC_COMP: TdxBarLargeButton;
    dxBarProgramaPresupuesto_OPER: TdxBarLargeButton;
    dxBarRegistroAct_INI: TdxBarLargeButton;
    dxBarReportesALM_ALM: TdxBarLargeButton;
    dxBarConfALM_ALM: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarCostosSalida_CON: TdxBarLargeButton;
    dxBarBancos_GA: TdxBarLargeButton;
    dxBarMovimientosBancos_GA: TdxBarLargeButton;
    dxBarBancos_CON: TdxBarLargeButton;
    dxBarMovimientosBancos_CON: TdxBarLargeButton;
    dxBarComprobantesF_CON: TdxBarLargeButton;
    dxBarReporteCategorias_RH: TdxBarLargeButton;
    zContrato: TUniQuery;
    frxDBCategoria: TfrxDBDataset;
    dxBarCuentasPorPagar_CON: TdxBarLargeButton;
    dxBarReporteProyectos_CON: TdxBarLargeButton;
    dxBarProveedores_CON: TdxBarLargeButton;
    dxBarProyeccionCXC_CON: TdxBarLargeButton;
    dxBarProyeccionCXC_GA: TdxBarLargeButton;
    dxFirmantes_CONF: TdxBarButton;
    dxBarConsulta_INI: TdxBarLargeButton;
    dxBarEspecialidad_INI: TdxBarLargeButton;
    dxBarMedicos_INI: TdxBarLargeButton;
    dxBarPacientes_INI: TdxBarLargeButton;
    dxBarPlantilla_INI: TdxBarLargeButton;
    dxBarTipoEstudio_INI: TdxBarLargeButton;

  procedure FormShow(Sender: TObject);
  procedure dxConfiguracion_CONFClick(Sender: TObject);
  procedure cxProyectoEmpresa_CONFClick(Sender: TObject);
  procedure adDeptosClick(Sender: TObject);
  procedure dxUsuarios_CONFClick(Sender: TObject);
  procedure sLoginClick(Sender: TObject);
  procedure sSalirClick(Sender: TObject);
  procedure adTurnosClick(Sender: TObject);
 // procedure SpeedItem2Click(Sender: TObject);
  procedure SpeedItem3Click(Sender: TObject);
  procedure SpeedItem12Click(Sender: TObject);
  procedure dxResidencias_CONFClick(Sender: TObject);
  procedure adProgramasClick(Sender: TObject);
  procedure dxPerfilUsuario_CONFClick(Sender: TObject);
  procedure adGrupoPClick(Sender: TObject);
  procedure dxAsignaUsuarios_CONFClick(Sender: TObject);
  procedure SpeedItem4Click0(Sender: TObject);
  procedure SpeedItem15Click(Sender: TObject);
  procedure dxBarEmbarque_ALMClick(Sender: TObject);
  procedure FormResize(Sender: TObject);
  procedure imgKardex1Click(Sender: TObject);
  procedure dxCambiarPassword_CONFClick(Sender: TObject);
  procedure dxBarRequisiciones_ALMClick(Sender: TObject);
  procedure dxBarOC_ALMClick(Sender: TObject);
  procedure dxActivos_CONFClick(Sender: TObject);
  procedure opadmonCatalogoClick(Sender: TObject);
 // procedure ActivarBiometrico;
  procedure dxHistorialMoto_CONFClick(Sender: TObject);
  procedure TiempoTimer(Sender: TObject);
  procedure dxAlmacenes_ALMClick(Sender: TObject);
 // procedure tbbSetupClick(Sender: TObject);
  procedure dxBarEntradaAlmacen_ALMClick(Sender: TObject);
  procedure dxBarSalidaAlmacen_ALMClick(Sender: TObject);
 // procedure ToolButton1Click(Sender: TObject);
  procedure ToolButton2Click(Sender: TObject);
  procedure ToolButton18Click(Sender: TObject);
  procedure ToolButton22Click(Sender: TObject);
  procedure ToolButton23Click(Sender: TObject);
 // procedure AdvToolBarMenuButton1Click(Sender: TObject);
  procedure dxBarSelecciona_INIClick(Sender: TObject);
  procedure dxCatalogoErrores_CONFClick(Sender: TObject);
  procedure inteligentpopPopup(Sender: TObject);
  procedure Cambiarimagendefondo1Click(Sender: TObject);
  procedure estirado1Click(Sender: TObject);
  procedure centrado1Click(Sender: TObject);
  procedure FormCreate(Sender: TObject);
  procedure Cascada1Click(Sender: TObject);
  procedure MosaicoVertical1Click(Sender: TObject);
  procedure MosaicoHorizontal1Click(Sender: TObject);
  procedure JvAppEvents1ActiveControlChange(Sender: TObject);
  procedure Equipos1Click(Sender: TObject);
  procedure MnsCaptdeReqClick(Sender: TObject);
  procedure MnsCaptOrdComClick(Sender: TObject);
  procedure MnsEntradasAlmacenClick(Sender: TObject);
  procedure MnsSalidasAlmacenClick(Sender: TObject);
  procedure subAsigAlmUsuariosClick(Sender: TObject);
  procedure subAsigAlmContratosClick(Sender: TObject);
  procedure CalculoRenunciaExecute(Sender: TObject);
  procedure CalculoDespidoExecute(Sender: TObject);
  procedure ImpresionRenunciaExecute(Sender: TObject);
  procedure ImpresionDespidoExecute(Sender: TObject);
  procedure catIdiomasClick(Sender: TObject);
  procedure dxDepartamentos_RHClick(Sender: TObject);
  procedure dxEmpresa_RHClick(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item2Click(Sender: TObject);
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
  procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  procedure imgKardexClick(Sender: TObject);
  procedure AcoplarDesacoplarClick(Sender: TObject);
  procedure dxRibbonBackstageViewGalleryControl1ItemClick(Sender: TObject;
    AItem: TdxRibbonBackstageViewGalleryItem);
  procedure menuExtraPaneItemClick(Sender: TObject; AIndex: Integer);

    procedure dxbrlrgbtnregistrof1Click(Sender: TObject);
    procedure mnuEmpresasClick(Sender: TObject);
    procedure mnuEmpresaClick(Sender: TObject);
    procedure AsignacindeAlmacenesaUsuarios1Click(Sender: TObject);
    procedure mnu2Click(Sender: TObject);
    procedure dxBarAutorizar_ALMClick(Sender: TObject);
    procedure tbbDesautorizaAlmClick(Sender: TObject);
    procedure dxValidacionClick(Sender: TObject);
    procedure dxDesvalidacionClick(Sender: TObject);
    procedure configuracion_almacenClick(Sender: TObject);
    procedure dxbrbtnfrentes1Click(Sender: TObject);
    procedure dxbrlrgbtnFrentesClick(Sender: TObject);
    procedure lbtImportacionClick(Sender: TObject);
    procedure dxModulos_CONFClick(Sender: TObject);
    procedure lbtAsigModClick(Sender: TObject);
    procedure dxDepartamentos_ALMClick(Sender: TObject);
    procedure dxBarManager1ClickItem(Sender: TdxBarManager;
      ClickedItem: TdxBarItem);
    procedure FondoDblClick(Sender: TObject);
    procedure dxProveedores_ALMClick(Sender: TObject);
    procedure dxMateriales_ALMClick(Sender: TObject);
    procedure btnGeneraRespaldoClick(Sender: TObject);
    procedure btnMontarRespaldoClick(Sender: TObject);
    procedure dxBarEmpleados_RHClick(Sender: TObject);
    procedure dxCatalogos_RHClick(Sender: TObject);
    procedure dxTiposNomina_RHClick(Sender: TObject);
    procedure dxCatalogos_ALMClick(Sender: TObject);
    procedure dxBarAutofolios_CONFClick(Sender: TObject);
    procedure cxBarDiagramaSGC_INIClick(Sender: TObject);
    procedure dxBarDiagramaSGC_ALMClick(Sender: TObject);
    procedure dxBarDiagramaSGC_RHClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnEvaIniClick(Sender: TObject);
    procedure dxBarDiasLaborados_RHClick(Sender: TObject);
    procedure dxBarVerificar_RHClick(Sender: TObject);
    procedure dxProgramaHora_CONFClick(Sender: TObject);
    procedure ControldeGuardias1Click(Sender: TObject);
    procedure dxBarGuardia_RHClick(Sender: TObject);
    procedure dxProyectos_ALMClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxBarRecargaConsulta_CONFClick(Sender: TObject);
    procedure btnConfigGuardiasClick(Sender: TObject);
    procedure cxBarNotificaciones_CONFClick(Sender: TObject);
    procedure TimerNotificadorTimer(Sender: TObject);
    procedure TimerNotTimer(Sender: TObject);
    procedure Cerrar_TodoClick(Sender: TObject);
    procedure dxConfCorreo_CONFClick(Sender: TObject);
    procedure dxEvalua_proveedor_ALMClick(Sender: TObject);
    procedure dxBarMateriales_ALMClick(Sender: TObject);
    procedure dxBarClientes_GAClick(Sender: TObject);
    procedure ImprimirContratos1Click(Sender: TObject);
    procedure dxBarProveedores_GAClick(Sender: TObject);
    procedure rhBtnCompClick(Sender: TObject);
    procedure dxBarCatalogoMatenimiento_MTOClick(Sender: TObject);
    procedure dxBarRegistroMantenimiento_MTOClick(Sender: TObject);
    procedure dxBarEvaluaInicial_GCClick(Sender: TObject);
    procedure dxSalarios_RHClick(Sender: TObject);
    procedure dxBarPagos_GAClick(Sender: TObject);
    procedure dxNomina_RHClick(Sender: TObject);
    procedure btnMatMtoClick(Sender: TObject);
    procedure dxCatalogoGeneral_MTOClick(Sender: TObject);
    procedure dxMateriales_MTOClick(Sender: TObject);
    procedure dxAreas_MTOClick(Sender: TObject);
    procedure dxAlmacen_MTOClick(Sender: TObject);
    procedure dxCatalogosMateriales_OPERClick(Sender: TObject);
    procedure dxClientes_OPERClick(Sender: TObject);
    procedure dxProyectos_OPERClick(Sender: TObject);
    procedure dxCatalogosGenerales_OPERClick(Sender: TObject);
    procedure dxBarDiasLaborados_OPERClick(Sender: TObject);
    procedure dxCatalogoGeneral_CONClick(Sender: TObject);
    procedure dxBarNomina_CONClick(Sender: TObject);
    procedure dxBarEvaluaProveedor_GCClick(Sender: TObject);
    procedure dxBarDiagramaSGC_GCClick(Sender: TObject);
    procedure dxCatatalogoGeneral_GCClick(Sender: TObject);
    procedure dxAreas_GCClick(Sender: TObject);
    procedure dxBarPlanMantenimiento_MTOClick(Sender: TObject);
    procedure btnReporteCheckClick(Sender: TObject);
    procedure dxPersonalProv_RHClick(Sender: TObject);
    procedure dxBarPeriodoNom_RHClick(Sender: TObject);
    procedure dxBarPreNomina_RHClick(Sender: TObject);
    procedure dxBarControlComision_RHClick(Sender: TObject);
    procedure dxRangoSalarios_RHClick(Sender: TObject);
    procedure dxBarCostoAlmacen_ALMClick(Sender: TObject);
    procedure dxBarControlSubBaj_RHClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure dxBarProyecto_OPERClick(Sender: TObject);
    procedure dxBarMateriales_OPERClick(Sender: TObject);
    procedure dxBarInformePresupuesto_OPERClick(Sender: TObject);
    procedure dxBarRequisicion_OPERClick(Sender: TObject);
    procedure dxBarPresupuestos_OPERClick(Sender: TObject);
    procedure dxBarAdicionales_OPERClick(Sender: TObject);
    procedure dxBarRegistroActividad_OPERClick(Sender: TObject);
    procedure verificaRegistroAct();
    procedure btnCambiaClick(Sender: TObject);
    procedure dxBarConfMail_CONFClick(Sender: TObject);
    procedure dxBarCotizaciones_COMPClick(Sender: TObject);
    procedure dxBarActividadGeneral_GAClick(Sender: TObject);
    procedure dxBarRegistroAct_RHClick(Sender: TObject);
    procedure dxBarRegistroAct_ALMClick(Sender: TObject);
    procedure dxBarRegistroAct_COMPClick(Sender: TObject);
    procedure dxBarRegistroActividad_MTOClick(Sender: TObject);
    procedure dxBarAutorizar_OPERClick(Sender: TObject);
    procedure dxBarDesautorizar_OPERClick(Sender: TObject);
    procedure dxBarRegistroActividades_CONClick(Sender: TObject);
    procedure dxBarDesAutorizar_COMPClick(Sender: TObject);
    procedure dxBarAutoriza_COMPClick(Sender: TObject);
    procedure dxBarCostoALM_COMPClick(Sender: TObject);
    procedure dxBarOC_COMPClick(Sender: TObject);
    procedure dxBarRequisiciones_COMPClick(Sender: TObject);
    procedure dxBarMateriales_COMPClick(Sender: TObject);
    procedure dxBarProveedores_COMPClick(Sender: TObject);
    procedure dxEvalua_inicio_COMPClick(Sender: TObject);
    procedure dxEvaluacion_COMPClick(Sender: TObject);
    procedure dxCatalogos_COMPClick(Sender: TObject);
    procedure dxAlmacenes_COMPClick(Sender: TObject);
    procedure dxProyectos_COMPClick(Sender: TObject);
    procedure dxDepartamentos_COMPClick(Sender: TObject);
    procedure dxBarProgramaPresupuesto_OPERClick(Sender: TObject);
    procedure dxBarConfALM_ALMClick(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarCostosSalida_CONClick(Sender: TObject);
    procedure dxBarBancos_CONClick(Sender: TObject);
    procedure dxBarMovimientosBancos_CONClick(Sender: TObject);
    procedure dxBarComprobantesF_CONClick(Sender: TObject);
    procedure dxBarReporteCategorias_RHClick(Sender: TObject);
    procedure dxBarCuentasPorPagar_CONClick(Sender: TObject);
    procedure dxBarReporteProyectos_CONClick(Sender: TObject);
    procedure dxBarProveedores_CONClick(Sender: TObject);
    procedure dxBarProyeccionCXC_CONClick(Sender: TObject);
    procedure dxBarProyeccionCXC_GAClick(Sender: TObject);
    procedure dxFirmantes_CONFClick(Sender: TObject);
    procedure dxBarConsulta_INIClick(Sender: TObject);
    procedure dxBarEspecialidad_INIClick(Sender: TObject);
    procedure dxBarMedicos_INIClick(Sender: TObject);
    procedure dxBarPacientes_INIClick(Sender: TObject);
    procedure dxBarPlantilla_INIClick(Sender: TObject);
    procedure dxBarTipoEstudio_INIClick(Sender: TObject);

private
  { Private declarations }
public
  { Public declarations }
  adentro: boolean;
  valTimerN:Boolean;
  loadNoty:Boolean;
  NumNotyfi:Integer;
  esInicio:boolean;
  procedure permisosUsuModulos(bandera : byte);
  procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
  procedure InputBoxSetPasswordChar(var Msg: TMessage); message InputBoxMessage;
  procedure Notificame;
  procedure Notificaciones;
end;

const
  WM_UPDATESTATUS = WM_USER + 2;

var
  frmNoil_SSI: TfrmNoil_SSI;
  detectar: string;
  Letra: char;
  udc_activa,IdRegistro:integer;
  HoraI: TTime;
  index:Boolean;
function  GetAppVersion:string;

implementation

uses frm_contratos, frm_deptos, frm_usuarios,
  frm_embarcaciones,
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
  frm_EntradaAlmacen_SSI, frm_SalidaAlmacen_SSI,
  frm_AlmacenesporUsuario, frm_AlmacenesporContrato,
  frm_NuevoIdioma,
  frm_nuc_organizacion,
  frm_repositorio,
  Func_Genericas,
  frm_Presupuesto,
  utfrmdepartamentos,
  frm_catalogomodulos, frm_Modulosxusuario,
  frm_catalogoerrores, frm_abrereporte, frm_ordenes,
  frm_SetupAlm, frm_GruposPersonal,
  frm_usuarios_proyectos,
  frm_respaldo, frm_montarespaldo,
  frm_ordenes_compra,
  frm_Anexos, frm_CatalogoAnexos,
  frm_Catalogos_rh_tipos, frm_catalogo_empleados_ssi,frm_SeguroVida,
  frm_Empresas, frm_tipos_nomina, frm_catalogos_almacen,
  frm_folios, frm_evaluacion,UnitGenerales,Frm_ProgramarHorarios,
  frm_diaslaboradosSIANI,Frm_Verificar,Unit1, frm_materiales,frm_guardias,
  Frm_Asignar_Guardias,Frm_ConfGuardias, frm_firmantes,
  UFrmNotificaciones,Frm_Justificar, UFrmConfigCorreo,
  Frm_RequisicionMaterial, frm_ReporteControl,frm_catalogos_Operaciones,
  frm_AvisoEmbarque, frm_clientes, frm_EvaluaCompetencias,
  frm_Mantenimiento,frm_RegistroMantenimiento, frm_salarios,
  frm_pagoProveedores,Frm_Nomina, frm_ProgramaMantenimiento,
  frm_Reportecheck, frm_personal_prov, frm_CatalogoNominas , Frm_PreNomina,
  frm_controlComisiones, frm_rangoSalarios, Frm_CostoAlmacen,frm_agregar_masivoOP_SSI,
  Frm_CostoPresupuesto, frm_adicional_pres, frm_registro_actividades,
  frm_ConfiguraMail_mensajes, Frm_CotizacionP, frm_ActividadesGeneral,
  frm_Proyectos, frm_programaPresupuesto,Frm_Embarcacion,Frm_Modal, frm_bancos,
  Frm_BancosMovimientos,frm_ComprobantesFiscalesD, frm_CuentasPorPagar,
  frm_ProyeccionCXC,frm_Empresas_SSI,frm_Consulta,frm_Especialidad,frm_Medicos,frm_Pacientes,
  frm_Plantilla,frm_TipoEstudio;

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

procedure TfrmNoil_SSI.MosaicoHorizontal1Click(Sender: TObject);
begin
  frmNoil_SSI.TileModE := tbHorizontal;
  frmNoil_SSI.Tile;
end;

procedure TfrmNoil_SSI.MosaicoVertical1Click(Sender: TObject);
begin
  frmNoil_SSI.TileModE := tbVertical;
  frmNoil_SSI.Tile;
end;

procedure TfrmNoil_SSI.AppMessage(var Msg: TMsg; var Handled: Boolean); // TMSg
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

procedure TfrmNoil_SSI.dxDepartamentos_RHClick(Sender: TObject);
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

procedure TfrmNoil_SSI.FondoDblClick(Sender: TObject);
begin
    Fondo.Picture := cxColeccionesFondo.Items[Random( 6 )].Picture;
    Fondo.Refresh;
    frmNoil_SSI.Refresh;
end;

procedure TfrmNoil_SSI.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if lErrorIniciar = False then
  begin
      if MessageDlg('Esta seguro que desea salir completamente de la aplicación?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        application.Terminate
      else abort
  end;
end;

procedure TfrmNoil_SSI.FormCreate(Sender: TObject);
begin
  Application.OnMessage := AppMessage;
  global_FormNoilPrincipal := frmNoil_SSI;
  global_dxBarManagerPrincipal := dxBarManager1;
  global_zScanner := zScanner;
  RegisterClasses([TfrmCatalogosAlmacen,TfrmEvaluacion,TfrmAlmacenes,TfrmProveedores,TFrm_EvaluaProveedor]);
  RegisterClasses([TfrmPresupuesto,TfrmMateriales,TfrmDeptos,TFrmRequisicionMaterial,TfrmPedidos]);
  RegisterClasses([TfrmEntradaAlmacen_SSI,TfrmSalidaAlmacen_SSI,TfrmAvisoEmbarque,TfrmSetupAlm,TfrmFirmas,TfrmCatalogosRHtipos]);
  RegisterClasses([TfrmPersonalProv,TFrmSalarios,TfrmTiposNomina,Tfrm_empresa,TfrmCatalogoEmpleadosSSI]);
  RegisterClasses([TFrmVerificar,tfrmDiasLaboradosSIANI,TFrmCatalogoNominas,TFrmPreNomina,TFrmNomina,TFrmAsignarGuardias]);
  RegisterClasses([TfrmUsuariosxproyectos,TfrmModulosxusuario,TfrmGruposxPrograma,TfrmContratos,TfrmSetup,TfrmResidencias]);
  RegisterClasses([TfrmActivos,TfrmCatalogoModulos,TfrmUsuarios,TFrmConfigCorreo,TfrmGrupos,TfrmKardex]);
  RegisterClasses([TFrmProgramarH,TfrmCambioPassword,TfrmCatalogoErrores,TfrmObtenerRespaldo,TfrmFolios,TFrmNotificaciones]);
  RegisterClasses([TfrmClientes,TfrmpagoProveedores,TfrmMantenimiento,TfrmRegistroMantenimiento,TFrmProgramaMantenimiento]);
  RegisterClasses([TfrmReportecheck, TfrmValida,TfrmAbreReporte,TfrmControlComision]);
end;

procedure TfrmNoil_SSI.FormDeactivate(Sender: TObject);
begin
  cxDBImage1.Visible := False;
end;

procedure TfrmNoil_SSI.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin
    if RecargarConsultasSQL then
      MessageDlg('Información del sistema.'+#13+'Se ha cargado nuevamente las consultas sql y la tabla de validación automática a la memoria del sistema.',mtInformation,[mbOk],0);
  end;
end;

procedure TfrmNoil_SSI.FormShow(Sender: TObject);
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
      esInicio:=True;
      cxLocalizer1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Recursos/CXLOCALIZATION.ini');
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

      frmNoil_SSI.Caption := global_version + '  ['+Major_Version+'.'+Minor_Version+'.'+  Release_Version+'.'+Build_Version+ ' ]';

      {codigo de carmen parala imagen de fondo}
      detectar := global_ruta + 'image.ini';
      if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
        muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
      else
        escribeinidefault(detectar, 'bmCenter');

      HoraI:=Time;
      TimerAlert.Enabled:=True;
      frmNoil_SSI.permisosUsuModulos(100);

      NumNotyfi := 0;
     // Notificaciones;
      //Notificame;

      TimerNot.Enabled := True;

      zqImagen.SQL.Add('select g.Imagen from grupos as g where g.sIdGrupo = (select u.sIdGrupo from usuarios as u where u.sNombre = '+''''+global_nombre+''''+')');
      zqImagen.Open;

    //  ActivarBiometrico;
      cxDBImage1.Align := alLeft;
      cxDBImage1.Width := screen.Width - Fondo.Width;
      cxDBImage1.Visible := True;
      verificaRegistroAct();  //metodo referente al registro de actividades por usuario
      esInicio:=False;
  Except
    begin
       lErrorIniciar := True;
       close;
    end;
  end;
end;

procedure TfrmNoil_SSI.verificaRegistroAct();
var
  uSupp : TUniQuery;
begin
  uSupp:=TUniQuery.Create(nil);
  uSupp.Connection:=connection.Uconnection;
  uSupp.Active:=False;
  uCCxUsuario.Active:=False;
  AsignarSQL(uCCxUsuario,'CCxusuario',pUpdate);
  FiltrarDataSet(uCCxUsuario,'CC,Usuario',[-1,GLOBAL_USUARIO]);
  uCCxUsuario.Open;
  uProyectos.Active:=False;
  AsignarSQL(uProyectos,'ordenesdetrabajo',pUpdate);
  FiltrarDataSet(uProyectos,'Contrato,TProyecto',[GLOBAL_CONTRATO,'Proyecto']);
  uProyectos.Open;
  if uCCxUsuario.RecordCount > 0 then begin

    //uProyectos.Locate('sNumeroOrden',uCCxUsuario.FieldByName('sNumeroOrden').AsString,[]);
    if esInicio then begin
      uSupp.SQL.Text:='SELECT * FROM registro_actividades WHERE sIdUsuario = :Usuario AND Fecha = DATE(:Fecha) AND ((TIME(:Hora) BETWEEN HoraInicio AND HoraFin) AND TIME(:Hora) <> HoraFin)';
      uSupp.ParamByName('Usuario').AsString:=GLOBAL_USUARIO;
      uSupp.ParamByName('Fecha').AsDate:=StrToDate(FormatDateTime('dd/mm/yyyy',now));
      uSupp.ParamByName('Hora').AsTime:=StrToTime(FormatDateTime('t',Now()));
      uSupp.Open;
      if uSupp.RecordCount = 0 then begin
        uSupp.SQL.Text:='INSERT INTO registro_actividades (sIdUsuario,sNumeroOrden,Fecha,HoraInicio) VALUES (:Usuario,:Proyecto,:Fecha,:Hora)';
        uSupp.ParamByName('Usuario').AsString:=GLOBAL_USUARIO;
        uSupp.ParamByName('Proyecto').AsString:=uCCxUsuario.FieldByName('sNumeroOrden').AsString;
        uSupp.ParamByName('Fecha').AsString:=DatetoStrSql(Now());
        uSupp.ParamByName('Hora').AsTime:= StrToTime(FormatDateTime('t',Now()));
        uSupp.Execute;
        //se busca el id del registro que se acaba de insertar
        uSupp.SQL.Text:='SELECT IdRegistro FROM registro_actividades WHERE sIdUsuario = :Usuario AND sNumeroOrden = :Proyecto AND Fecha = :Fecha AND HoraInicio = :Hora';
        uSupp.ParamByName('Usuario').AsString:=GLOBAL_USUARIO;
        uSupp.ParamByName('Proyecto').AsString:=uCCxUsuario.FieldByName('sNumeroOrden').AsString;
        uSupp.ParamByName('Fecha').AsString:=DatetoStrSql(Now());
        uSupp.ParamByName('Hora').AsTime:= StrToTime(FormatDateTime('t',Now()));
        uSupp.Open;
        IdRegistro:=uSupp.FieldByName('IdRegistro').AsInteger;
      end;
    end;

  end
  else begin

  end;
  uSupp.Free;
end;

procedure TfrmNoil_SSI.dxConfiguracion_CONFClick(Sender: TObject);
begin
 if not MostrarFormChild('frmSetup',global_dxBarManagerPrincipal) Then
   begin
     Application.CreateForm(TfrmSetup, frmSetup);
     frmSetup.Show;
   end;
end;

procedure TfrmNoil_SSI.cxProyectoEmpresa_CONFClick(Sender: TObject);
begin
  if not MostrarFormChild('frmContratos',global_dxBarManagerPrincipal) Then
   begin
    global_cambioletrero := 10 ;
    global_btnPermisos := 'adContratos';
    Application.CreateForm(TfrmContratos, frmContratos);
    frmContratos.show;

  end;
end;

procedure TfrmNoil_SSI.adDeptosClick(Sender: TObject);
begin
  If not mostrarformChild('frmDeptos',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
     Application.CreateForm(TfrmDeptos, frmDeptos);
     frmDeptos.show;
  end;
end;

procedure TfrmNoil_SSI.dxUsuarios_CONFClick(Sender: TObject);
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

procedure TfrmNoil_SSI.Cerrar_TodoClick(Sender: TObject);
begin
  CierraFormChild(frmNoil_SSI);
end;

procedure TfrmNoil_SSI.centrado1Click(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
    modofondo(fondo, 'bmCenter', detectar)
  else escribeinidefault(detectar, 'bmCenter');
end;

procedure TfrmNoil_SSI.cxButton1Click(Sender: TObject);
begin

  //if SplitView1.Opened then SplitView1.Close else begin
    TimerNotificador.Enabled:=False;
    cxButton1.Colors.DefaultText := clDefault;
    cxButton1.OptionsImage.ImageIndex := 55;
    NumNotyfi := 0;
    //Notificaciones;
    //Notificame;
    //SplitView1.Open
  //end;

end;

procedure TfrmNoil_SSI.cxButton2Click(Sender: TObject);
begin
  if not mostrarFormChild('frmAgregarMasivoOP',global_dxBarManagerPrincipal) then
    begin
    global_btnPermisos := '';
     Application.CreateForm(TfrmAgregarMasivoOP_SSI, frmAgregarMasivoOP_SSI);
     frmAgregarMasivoOP_SSI.show
   end;
end;

procedure TfrmNoil_SSI.Cambiarimagendefondo1Click(Sender: TObject);
var pathimagen: string;
  Ini: TiniFile;
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';
  escribeini(detectar, OpenDialog1);
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
    muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
end;

procedure TfrmNoil_SSI.sLoginClick(Sender: TObject);
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

procedure TfrmNoil_SSI.sSalirClick(Sender: TObject);
begin
  close;
end;

procedure TfrmNoil_SSI.Cascada1Click(Sender: TObject);
begin
  frmNoil_SSI.Cascade;
end;

procedure TfrmNoil_SSI.dxCatalogoErrores_CONFClick(Sender: TObject);
begin
 if not MostrarFormChild('frmCatalogoErrores',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmCatalogoErrores, frmCatalogoErrores);
    frmCatalogoErrores.show;
  end;
end;

procedure TfrmNoil_SSI.catIdiomasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmNuevoIdioma',global_dxBarManagerPrincipal) Then
   begin
   global_btnPermisos := '';
    Application.CreateForm(TfrmNuevoIdioma, frmNuevoIdioma);
    frmNuevoIdioma.show;
  end;
end;

procedure TfrmNoil_SSI.mosaicoverticalClick(Sender: TObject);
begin
  frmNoil_SSI.TileModE := tbVertical;
  frmNoil_SSI.Tile;
end;

procedure TfrmNoil_SSI.Notificaciones;
var tb : String;
  fAlertWindow: TdxAlertWindow;
begin
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
end;

procedure TfrmNoil_SSI.Notificame;
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

//  mNoti.First;
 // cxGrid1DBTableView1.DataController.Groups.FullExpand;
end;

procedure TfrmNoil_SSI.mosaicohorizontalClick(Sender: TObject);
begin
  frmNoil_SSI.TileModE := tbHorizontal;
  frmNoil_SSI.Tile;
end;

procedure TfrmNoil_SSI.cambiarfondoClick(Sender: TObject);
  var pathimagen: string;
  Ini: TiniFile;
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';
  escribeini(detectar, OpenDialog1);
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
    muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
end;

procedure TfrmNoil_SSI.estiradoClick(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
      modofondo(fondo, 'bmStretch', detectar)
  else escribeinidefault(detectar, 'bmStretch');
end;


procedure TfrmNoil_SSI.centradoClick(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then modofondo(fondo, 'bmCenter', detectar)
  else escribeinidefault(detectar, 'bmCenter');
end;

procedure TfrmNoil_SSI.dxBarProveedores_COMPClick(Sender: TObject);
begin
  if not mostrarFormChild('frmProveedores',global_dxBarManagerPrincipal) then
   begin
     global_btnPermisos:= 'btnProvCompras';
     Application.CreateForm(TfrmProveedores, frmProveedores);
     frmProveedores.show
   end;
end;

procedure TfrmNoil_SSI.dxBarProveedores_CONClick(Sender: TObject);
begin
if not mostrarFormChild('frmProveedores',global_dxBarManagerPrincipal) then
     begin
       global_btnPermisos:= 'dxBarProveedores_CON';
       Application.CreateForm(TfrmProveedores, frmProveedores);
       frmProveedores.show
     end;
end;

procedure TfrmNoil_SSI.dxProveedores_ALMClick(Sender: TObject);
begin
    if not mostrarFormChild('frmProveedores',global_dxBarManagerPrincipal) then
     begin
       global_btnPermisos:= 'btnProveedor';
       Application.CreateForm(TfrmProveedores, frmProveedores);
       frmProveedores.show
     end;
end;

procedure TfrmNoil_SSI.dxBarMateriales_COMPClick(Sender: TObject);
begin
  if not MostrarFormChild('frmMateriales',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos  := 'btnMatCompras';
    Application.CreateForm(TfrmMateriales, frmMateriales);
    frmMateriales.Show;
  end;
end;

procedure TfrmNoil_SSI.dxBarMovimientosBancos_CONClick(Sender: TObject);
var
  status: TStatusWindowHandle;
begin

 if not MostrarFormChild('frmBancosMovimientos',global_dxBarManagerPrincipal) then
   begin
    try
      status := CreateStatusWindow('Procesando, espere por favor...');

      global_btnPermisos  := 'dxBarMovimientosBancos_CON';
      Application.CreateForm(TfrmBancosMovimientos, frmBancosMovimientos);
      frmBancosMovimientos.Show;
    finally
      RemoveStatusWindow(status);
    end;
  end;

end;



procedure TfrmNoil_SSI.dxMateriales_ALMClick(Sender: TObject);
begin
  if not MostrarFormChild('frmMateriales',global_dxBarManagerPrincipal) then
   begin
     global_btnPermisos  := 'btnMateriales';
      Application.CreateForm(TfrmMateriales, frmMateriales);
      frmMateriales.Show;

  end;
end;


procedure TfrmNoil_SSI.dxBarMateriales_OPERClick(Sender: TObject);
begin
    if not MostrarFormChild('frmMateriales',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos  := 'dxBarMateriales_OPER';
    Application.CreateForm(TfrmMateriales, frmMateriales);
    frmMateriales.Show;
  end;
end;

procedure TfrmNoil_SSI.dxBarMedicos_INIClick(Sender: TObject);
begin
if not MostrarFormChild('frmMedicos',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarMedicos_INI';
    Application.CreateForm(TfrmMedicos, frmMedicos);
    frmMedicos.show;
  end;
end;

procedure TfrmNoil_SSI.btnMatMtoClick(Sender: TObject);
begin
  if not MostrarFormChild('frmMateriales',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos  := 'btnMatMto';
    Application.CreateForm(TfrmMateriales, frmMateriales);
    frmMateriales.Show;
  end;
end;

procedure TfrmNoil_SSI.dxCatatalogoGeneral_GCClick(Sender: TObject);
begin
    if not mostrarFormChild('frmCatalogosAlmacen',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'dxCatatalogoGeneral_GC';
    Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
    frmCatalogosAlmacen.show
  end;
end;

procedure TfrmNoil_SSI.dxBarBancos_CONClick(Sender: TObject);
begin
     if not MostrarFormChild('frmBancos',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := 'dxBarBancos_CON';
      Application.CreateForm(TfrmBancos, frmBancos);
      frmBancos.Show;
    end;
end;



procedure TfrmNoil_SSI.dxBarDesautorizar_OPERClick(Sender: TObject);
begin
  if not mostrarFormChild('frmAbreReporte',global_dxBarManagerPrincipal) then
   begin
     global_btnPermisos:='dxBarDesautorizar_OPER';
     Application.CreateForm(TfrmAbreReporte, frmAbreReporte);
     frmAbreReporte.show;
     frmAbreReporte.cxLista.Items.Item[4].Delete;
     frmAbreReporte.cxLista.Items.Item[4].Delete;
   end;
end;

procedure TfrmNoil_SSI.dxBarLargeButton6Click(Sender: TObject);
begin
 If not MostrarFormChild('FrmEmbarcacion',global_dxBarManagerPrincipal) Then
 begin
    global_btnPermisos := '';
    Application.CreateForm(TFrmEmbarcacion, FrmEmbarcacion);
    FrmEmbarcacion.Show ;
  end;
end;





procedure TfrmNoil_SSI.dxBarProyeccionCXC_GAClick(Sender: TObject);
begin
   if not mostrarFormChild('frmProyeccionCxC',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos:= 'dxBarProyeccionCXC_GA';
    Application.CreateForm(TfrmProyeccionCXC, frmProyeccionCXC);
    frmProyeccionCXC.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarComprobantesF_CONClick(Sender: TObject);
var
  status: TStatusWindowHandle;
begin
  if not MostrarFormChild('frmComprobantesFiscalesD',global_dxBarManagerPrincipal) Then
  begin
    try
      status := CreateStatusWindow('Procesando, espere por favor...');

        global_btnPermisos := 'dxBarComprobantesF_CON';
        Application.CreateForm(TfrmComprobantesFiscalesD, frmComprobantesFiscalesD);
        frmComprobantesFiscalesD.FormStyle := fsMDIChild;
        frmComprobantesFiscalesD.Visible := True;
        frmComprobantesFiscalesD.Position := poDefault;

        frmComprobantesFiscalesD.Show;

    finally
      RemoveStatusWindow(status);
    end;
  End;

end;

procedure TfrmNoil_SSI.dxBarConfALM_ALMClick(Sender: TObject);
begin
If not MostrarFormChild('frmSetupAlm',global_dxBarManagerPrincipal) Then
 begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmSetupAlm, frmSetupAlm);
    frmSetupAlm.Show ;
  end;
end;

procedure TfrmNoil_SSI.dxBarCotizaciones_COMPClick(Sender: TObject);
begin
  if not MostrarFormChild('frmCotizacionesP',global_dxBarManagerPrincipal) then begin
    global_btnPermisos:='btnCotCompras';
    Application.CreateForm(TFrmCotizacionesP,frmCotizacionesP);
    frmCotizacionesP.Show;

  end;
end;

procedure TfrmNoil_SSI.dxBarCuentasPorPagar_CONClick(Sender: TObject);
begin
//  if not MostrarFormChild('frmCuentasPorPagar',global_dxBarManagerPrincipal) then
//   begin
//    global_btnPermisos := 'dxBarCuentasPorPagar_CON';
//    Application.CreateForm(TfrmCuentasPorPagar, frmCuentasPorPagar);
//    frmCuentasPorPagar.show;
//   end;
end;

procedure TfrmNoil_SSI.dxBarAutorizar_OPERClick(Sender: TObject);
begin
 if not MostrarFormChild('frmValida',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos := 'dxBarAutorizar_OPER';
     Application.CreateForm(TfrmValida, frmValida);
     frmValida.show;
   end;
end;

procedure TfrmNoil_SSI.dxBarRegistroActividad_MTOClick(Sender: TObject);
begin
 if not MostrarFormChild('frmRegistroAct',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarRegistroActividad_MTO';
    Application.CreateForm(TfrmRegistroAct, frmRegistroAct);
    frmRegistroAct.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarRegistroAct_COMPClick(Sender: TObject);
begin
 if not MostrarFormChild('frmRegistroAct',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnRegActCompras';
    Application.CreateForm(TfrmRegistroAct, frmRegistroAct);
    frmRegistroAct.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarRegistroAct_ALMClick(Sender: TObject);
begin
 if not MostrarFormChild('frmRegistroAct',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnRegistroAct';
    Application.CreateForm(TfrmRegistroAct, frmRegistroAct);
    frmRegistroAct.show;
  end;
end;

procedure TfrmNoil_SSI.dxAlmacenes_COMPClick(Sender: TObject);
begin
  if not MostrarFormChild('frmAlmacenes',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := 'barBtnAlmacenesCompras';
      Application.CreateForm(TfrmAlmacenes, frmAlmacenes);
      frmAlmacenes.Show;
    end;
end;

procedure TfrmNoil_SSI.dxDepartamentos_COMPClick(Sender: TObject);
begin
  If not mostrarformChild('frmDeptos',global_dxBarManagerPrincipal) Then
   begin
     global_btnPermisos := 'barBtnAreasCompras';
     Application.CreateForm(TfrmDeptos, frmDeptos);
     frmDeptos.show;
   end;
end;

procedure TfrmNoil_SSI.dxCatalogos_COMPClick(Sender: TObject);
begin
  if not mostrarFormChild('frmCatalogosAlmacen',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'barBtnCatGenCompras';
    Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
    frmCatalogosAlmacen.show

  end;
end;

procedure TfrmNoil_SSI.dxEvalua_inicio_COMPClick(Sender: TObject);
begin
  if not mostrarFormChild('frmEvaluacion',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'barBtnEvaIniCompras';
    Application.CreateForm(TfrmEvaluacion, frmEvaluacion);
    frmEvaluacion.show
  end;
end;

procedure TfrmNoil_SSI.dxEvaluacion_COMPClick(Sender: TObject);
begin
  if not mostrarFormChild('Frm_EvaluaProveedor',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'barBtnEvaProvCompras';
    Application.CreateForm(TFrm_EvaluaProveedor, Frm_EvaluaProveedor);
    Frm_EvaluaProveedor.show
  end;
end;

procedure TfrmNoil_SSI.dxProyectos_COMPClick(Sender: TObject);
begin
  if not mostrarFormChild('frmproyectos',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos:= 'barBtnProyectosCompras';
     Application.CreateForm(TfrmProyectos, frmProyectos);
     frmProyectos.show;
  end ;
end;

procedure TfrmNoil_SSI.dxBarActividadGeneral_GAClick(Sender: TObject);
begin
   if not MostrarFormChild('frmActGeneral',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := 'dxBarActividadGeneral_GA';
      Application.CreateForm(TfrmActGeneral, frmActGeneral);
      frmActGeneral.Show;
    end;
end;

procedure TfrmNoil_SSI.dxAlmacen_MTOClick(Sender: TObject);
begin
     if not MostrarFormChild('frmAlmacenes',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := 'dxAlmacen_MTO';
      Application.CreateForm(TfrmAlmacenes, frmAlmacenes);
      frmAlmacenes.Show;
    end;
end;

procedure TfrmNoil_SSI.dxAreas_MTOClick(Sender: TObject);
begin
  If not mostrarformChild('frmDeptos',global_dxBarManagerPrincipal) Then
   begin
     global_btnPermisos := 'dxAreas_MTO';
     Application.CreateForm(TfrmDeptos, frmDeptos);
     frmDeptos.show;
   end;
end;

procedure TfrmNoil_SSI.dxCatalogos_RHClick(Sender: TObject);
begin
  if not mostrarFormChild('frmCatalogosRHTipos',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'btnCatGenRH';
    Application.CreateForm(TfrmCatalogosRHtipos, frmCatalogosRHTipos);
    frmCatalogosRHTipos.show
  end;
end;

procedure TfrmNoil_SSI.dxMateriales_MTOClick(Sender: TObject);
begin
  if not MostrarFormChild('frmMateriales',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos  := 'dxMateriales_MTO';
    Application.CreateForm(TfrmMateriales, frmMateriales);
    frmMateriales.Show;
  end;
end;

procedure TfrmNoil_SSI.dxCatalogosMateriales_OPERClick(Sender: TObject);
begin
  if not MostrarFormChild('frmMateriales',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos  := 'dxCatalogosMateriales_OPER';
    Application.CreateForm(TfrmMateriales, frmMateriales);
    frmMateriales.Show;
  end;
end;

procedure TfrmNoil_SSI.dxBarConsulta_INIClick(Sender: TObject);
begin
if not MostrarFormChild('frmConsulta',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarConsulta_INI';
    Application.CreateForm(TfrmConsulta, frmConsulta);
    frmConsulta.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarCatalogoMatenimiento_MTOClick(Sender: TObject);
begin
  if not mostrarFormChild('frmMantenimiento',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'dxBarCatalogoMatenimiento_MTO';
    Application.CreateForm(TfrmMantenimiento, frmMantenimiento);
    frmMantenimiento.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarPeriodoNom_RHClick(Sender: TObject);
begin
   if not MostrarFormChild('FrmCatalogoNominas',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos  := 'btnCatNomina';
    Application.CreateForm(TFrmCatalogoNominas, FrmCatalogoNominas);
    FrmCatalogoNominas.Show;
  end;
end;

procedure TfrmNoil_SSI.dxClientes_OPERClick(Sender: TObject);
begin
  if not mostrarFormChild('frmClientes',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'dxClientes_OPER';
    Application.CreateForm(TfrmClientes, frmClientes);
    frmClientes.show
  end;
end;

procedure TfrmNoil_SSI.dxTiposNomina_RHClick(Sender: TObject);
begin
  if not mostrarFormChild('frmTiposNomina',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'btnTiposNomina';
    Application.CreateForm(TfrmTiposNomina, frmTiposNomina);
    frmTiposnomina.show
  end;
end;

procedure TfrmNoil_SSI.btnCambiaClick(Sender: TObject);
begin
  if uCCxUsuario.RecordCount > 0 then begin


  end
  else
    MessageDlg('No se encontraron Centros de Costo Asignados a su usuario',mtInformation,[mbOk],0);
end;

procedure TfrmNoil_SSI.dxBarMateriales_ALMClick(Sender: TObject);
begin
  if not MostrarFormChild('frmMateriales',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos  := 'btnCatalogoMateriales';
    Application.CreateForm(TfrmMateriales, frmMateriales);
    frmMateriales.Show;
  end;
end;

procedure TfrmNoil_SSI.dxCatalogoGeneral_CONClick(Sender: TObject);
begin
  if not mostrarFormChild('frmCatalogosAlmacen',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'dxCatalogoGeneral_CON';
    Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
    frmCatalogosAlmacen.show
  end;
end;

procedure TfrmNoil_SSI.dxCatalogoGeneral_MTOClick(Sender: TObject);
begin
  if not mostrarFormChild('frmCatalogosAlmacen',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'dxCatalogoGeneral_MTO';
    Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
    frmCatalogosAlmacen.show
  end;
end;

procedure TfrmNoil_SSI.dxCatalogos_ALMClick(Sender: TObject);
begin

  if not mostrarFormChild('frmCatalogosAlmacen',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'btnCatGenMat';
    Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
    frmCatalogosAlmacen.show

  end;
end;

procedure TfrmNoil_SSI.dxCatalogosGenerales_OPERClick(Sender: TObject);
begin
  if not mostrarFormChild('frmCatalogosOperacion',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'dxCatalogosGenerales_OPER';
    Application.CreateForm(TfrmCatalogosOperacion, frmCatalogosOperacion);
    frmCatalogosOperacion.show

  end;
end;

procedure TfrmNoil_SSI.btnEvaIniClick(Sender: TObject);
begin
  if not mostrarFormChild('frmEvaluacion',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'btnEvaIni';
    Application.CreateForm(TfrmEvaluacion, frmEvaluacion);
    frmEvaluacion.show
  end;
end;

procedure TfrmNoil_SSI.dxEvalua_proveedor_ALMClick(Sender: TObject);
begin
  if not mostrarFormChild('Frm_EvaluaProveedor',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'btnEvaluaProv';
    Application.CreateForm(TFrm_EvaluaProveedor, Frm_EvaluaProveedor);
    Frm_EvaluaProveedor.show
  end;
end;

procedure TfrmNoil_SSI.dxFirmantes_CONFClick(Sender: TObject);
begin
If not MostrarFormChild('FrmFirmas',global_dxBarManagerPrincipal) Then
 begin
    global_btnPermisos := 'dxFirmantes_CONF';
    Application.CreateForm(TfrmFirmas, FrmFirmas);
    FrmFirmas.Show ;
  end;
end;

procedure TfrmNoil_SSI.dxBarEvaluaProveedor_GCClick(Sender: TObject);
begin
    if not mostrarFormChild('Frm_EvaluaProveedor',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'dxBarEvaluaProveedor_GC';
    Application.CreateForm(TFrm_EvaluaProveedor, Frm_EvaluaProveedor);
    Frm_EvaluaProveedor.show
  end;
end;

procedure TfrmNoil_SSI.dxProgramaHora_CONFClick(Sender: TObject);
begin
  if not mostrarFormChild('FrmProgramarH',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TFrmProgramarH, FrmProgramarH);
    FrmProgramarH.show
  end;
end;

procedure TfrmNoil_SSI.dxProyectos_ALMClick(Sender: TObject);
begin
  if not mostrarFormChild('frmproyecto',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos:= 'btnFolios';
     Application.CreateForm(Tfrmproyectos, frmProyectos);
     frmProyectos.show;
  end ;
end;

procedure TfrmNoil_SSI.btnMontarRespaldoClick(Sender: TObject);
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


procedure TfrmNoil_SSI.dxNomina_RHClick(Sender: TObject);
begin
  if not MostrarFormChild('FrmNomina',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnNomina';
    Application.CreateForm(TFrmNomina, FrmNomina);
    FrmNomina.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarNomina_CONClick(Sender: TObject);
begin
  if not MostrarFormChild('FrmNomina',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarNomina_CON';
    Application.CreateForm(TFrmNomina, FrmNomina);
    FrmNomina.show;
  end;
end;

procedure TfrmNoil_SSI.cxBarNotificaciones_CONFClick(Sender: TObject);
begin
  if not MostrarFormChild('FrmNotificaciones',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnNotificaciones';
    Application.CreateForm(TFrmNotificaciones, FrmNotificaciones);
    FrmNotificaciones.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarOC_COMPClick(Sender: TObject);
begin
  if not MostrarFormChild('frmPedidos',global_dxBarManagerPrincipal) Then
   begin
     global_btnPermisos := 'btnOCCompras';
     Application.CreateForm(TfrmPedidos, frmPedidos);
     frmPedidos.show
   end;
end;

procedure TfrmNoil_SSI.dxBarAutorizar_ALMClick(Sender: TObject);
begin
  if not MostrarFormChild('frmValida',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos := 'tbbAutorizaAlm';
     Application.CreateForm(TfrmValida, frmValida);
     frmValida.show;
   end;
end;

procedure TfrmNoil_SSI.tbbDesautorizaAlmClick(Sender: TObject);
begin
//  opAbre.Click
  if not mostrarFormChild('frmAbreReporte',global_dxBarManagerPrincipal) then
   begin
     Application.CreateForm(TfrmAbreReporte, frmAbreReporte);
     frmAbreReporte.show;
   end;
end;

procedure TfrmNoil_SSI.dxBarAutoriza_COMPClick(Sender: TObject);
begin
  if not MostrarFormChild('frmValida',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos := 'btnAutoCompras';
     Application.CreateForm(TfrmValida, frmValida);
     frmValida.show;
   end;
end;

procedure TfrmNoil_SSI.dxBarAutofolios_CONFClick(Sender: TObject);
begin
    if not MostrarFormChild('frmFolios',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmFolios, frmFolios);
    frmFolios.show;
  end;
end;

procedure TfrmNoil_SSI.cxBarDiagramaSGC_INIClick(Sender: TObject);
begin
   cxDBImage1.Visible:=not cxDBImage1.Visible;
end;

procedure TfrmNoil_SSI.dxBarDiagramaSGC_ALMClick(Sender: TObject);
begin
  cxDBImage1.Visible:=not cxDBImage1.Visible;
end;

procedure TfrmNoil_SSI.dxAreas_GCClick(Sender: TObject);
begin
    If not mostrarformChild('frmDeptos', global_dxBarManagerPrincipal) Then
   begin
    global_btnPermisos := 'dxAreas_GC';
     Application.CreateForm(TfrmDeptos, frmDeptos);
     frmDeptos.show;
   end;
end;

procedure TfrmNoil_SSI.dxBarDesAutorizar_COMPClick(Sender: TObject);
begin
  if not mostrarFormChild('frmAbreReporte',global_dxBarManagerPrincipal) then
   begin
     Application.CreateForm(TfrmAbreReporte, frmAbreReporte);
     frmAbreReporte.show;
   end;
end;

procedure TfrmNoil_SSI.dxBarDiagramaSGC_RHClick(Sender: TObject);
begin
  cxDBImage1.Visible:=not cxDBImage1.Visible;
end;

procedure TfrmNoil_SSI.dxBarDiasLaborados_OPERClick(Sender: TObject);
begin
  if not MostrarFormChild('frmDiasLaboradosSIANI',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarDiasLaborados_OPER';
    Application.CreateForm(tfrmDiasLaboradosSIANI, frmDiasLaboradosSIANI);
    frmDiasLaboradosSIANI.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarDiasLaborados_RHClick(Sender: TObject);
begin
  if not MostrarFormChild('frmDiasLaboradosSIANI',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnDiasLaborados';
    Application.CreateForm(tfrmDiasLaboradosSIANI, frmDiasLaboradosSIANI);
    frmDiasLaboradosSIANI.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarVerificar_RHClick(Sender: TObject);
var
  pwd : String;
begin
  {if global_grupo = 'ADMON' then
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
      begin    }
        if not MostrarFormChild('FrmVerificar',global_dxBarManagerPrincipal) then
        begin
          global_btnPermisos := '';
          Application.CreateForm(TFrmVerificar, FrmVerificar);
          FrmVerificar.showModal;
        end;
{      end
      else
        ShowMessage('La contraseña no corresponde a su usuario, intente de nuevo.');
    end;
  end
  else
    ShowMessage('Su usuario no es del grupo administrador, acceso denegado.'); }
end;

procedure TfrmNoil_SSI.btnReporteCheckClick(Sender: TObject);
begin
  if  not mostrarFormChild('frmReportecheck', global_dxBarManagerPrincipal)then
  begin
    global_btnPermisos:='dxBarReporteCheck_MTO';
    Application.CreateForm(TfrmReportecheck, frmReportecheck);
    frmReportecheck.show
  end;
end;

procedure TfrmNoil_SSI.dxBarRequisiciones_COMPClick(Sender: TObject);
begin
  if not MostrarFormChild('FrmRequisicionMaterial',global_dxBarManagerPrincipal) Then
   begin
        global_btnPermisos := 'btnReqCompras';
        Application.CreateForm(TFrmRequisicionMaterial, FrmRequisicionMaterial);
        FrmRequisicionMaterial.show
   end;
end;

procedure TfrmNoil_SSI.dxBarRequisicion_OPERClick(Sender: TObject);
begin
   if not MostrarFormChild('FrmRequisicionMaterial',global_dxBarManagerPrincipal) Then
   begin
        global_btnPermisos := 'dxBarRequisicion_OPER';
        Application.CreateForm(TFrmRequisicionMaterial, FrmRequisicionMaterial);
        FrmRequisicionMaterial.show
   end;
end;

procedure TfrmNoil_SSI.dxRangoSalarios_RHClick(Sender: TObject);
begin
  if  not mostrarFormChild('frmRangoSalarios', global_dxBarManagerPrincipal)then
  begin
    global_btnPermisos:='btnRhRangos';
    Application.CreateForm(TfrmRangoSalarios, frmRangoSalarios);
    frmRangoSalarios.show
  end;
end;

procedure TfrmNoil_SSI.dxBarRecargaConsulta_CONFClick(Sender: TObject);
begin
  if RecargarConsultasSQL then
      MessageDlg('Información del sistema.'+#13+'Se ha cargado nuevamente las consultas sql y la tabla de validación automática a la memoria del sistema.',mtInformation,[mbOk],0);

//  frmNoil_SSI.permisosUsuModulos(100);
end;

procedure TfrmNoil_SSI.dxBarRegistroActividades_CONClick(Sender: TObject);
begin
   if not MostrarFormChild('frmRegistroAct',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarRegistroActividades_CON';
    Application.CreateForm(TfrmRegistroAct, frmRegistroAct);
    frmRegistroAct.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarRegistroActividad_OPERClick(Sender: TObject);
begin
   if not MostrarFormChild('frmRegistroAct',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarRegistroActividad_OPER';
    Application.CreateForm(TfrmRegistroAct, frmRegistroAct);
    frmRegistroAct.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarRegistroAct_RHClick(Sender: TObject);
begin
 if not MostrarFormChild('frmRegistroAct',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnRegistroAct';
    Application.CreateForm(TfrmRegistroAct, frmRegistroAct);
    frmRegistroAct.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarReporteCategorias_RHClick(Sender: TObject);
begin
  AsignarSQL(zContrato,'reporte_categorias',pUpdate);
  FiltrarDataSet(zContrato,'Contrato',[-1]);
  zContrato.Open;
  frxReport1.LoadFromFile(global_files + global_miReporte+'_RH_Categorias.fr3');
  frxReport1.ShowReport();
end;

procedure TfrmNoil_SSI.dxBarReporteProyectos_CONClick(Sender: TObject);
begin
  Application.CreateForm(TFrmModal, FrmModal);
  frmModal.cxPageModal.ActivePage:=frmModal.cxTabReporte;
  frmModal.cxPageModal.HideTabs:=True;
  global_frmActivo:='Reporte_Proyecto';
  FrmModal.show;
end;

procedure TfrmNoil_SSI.dxBarRegistroMantenimiento_MTOClick(Sender: TObject);
begin
  if not mostrarFormChild('frmRegistroMantenimiento',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'dxBarRegistroMantenimiento_MTO';
    Application.CreateForm(TfrmRegistroMantenimiento, frmRegistroMantenimiento);
    frmRegistroMantenimiento.show
  end;
end;

procedure TfrmNoil_SSI.dxSalarios_RHClick(Sender: TObject);
begin
  if not MostrarFormChild('frmSalarios',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnRHSalarios';
    Application.CreateForm(TFrmSalarios, frmSalarios);
    frmSalarios.show;
  end;
end;

procedure TfrmNoil_SSI.btnConfigGuardiasClick(Sender: TObject);
begin
if not MostrarFormChild('FrmConfGuardias',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnConfigGuardias';
    Application.CreateForm(TFrmConfGuardias, FrmConfGuardias);
    FrmConfGuardias.show;
  end;

end;

procedure TfrmNoil_SSI.dxBarCostosSalida_CONClick(Sender: TObject);
begin
  Application.CreateForm(TFrmModal, FrmModal);
  frmModal.cxPageModal.ActivePage:=frmModal.cxTabReporte;
  frmModal.cxPageModal.HideTabs:=True;
  global_frmActivo:='Costos_Salida';
  FrmModal.show
end;

procedure TfrmNoil_SSI.dxBarControlSubBaj_RHClick(Sender: TObject);
begin
  if not mostrarFormChild('frmPersonalProv',global_dxBarManagerPrincipal) Then
  begin
     global_btnPermisos:= 'btnPersonalProv';
     Application.CreateForm(TFrmReporteControl, FrmReporteControl);
     FrmReporteControl.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarCostoALM_COMPClick(Sender: TObject);
begin
  if not MostrarFormChild('frmCostoAlmacen',global_dxBarManagerPrincipal) Then
   begin
     global_btnPermisos := 'btnCostoAlmCompras';
     Application.CreateForm(TfrmCostoAlmacen, frmCostoAlmacen);
     frmCostoAlmacen.show
   end;
end;

procedure TfrmNoil_SSI.dxBarDiagramaSGC_GCClick(Sender: TObject);
begin
  cxDBImage1.Visible:=not cxDBImage1.Visible;
end;

procedure TfrmNoil_SSI.dxPersonalProv_RHClick(Sender: TObject);
begin
  if not mostrarFormChild('frmPersonalProv',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos:= 'btnPersonalProv';
     Application.CreateForm(TfrmPersonalProv, frmPersonalProv);
     frmPersonalProv.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarProgramaPresupuesto_OPERClick(Sender: TObject);
begin
  if not mostrarFormChild('frmProgramPres',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'dxBarProgramaPresupuesto_OPER';
    Application.CreateForm(TfrmProgramPres, frmProgramPres);
    frmProgramPres.show
  end;
end;

procedure TfrmNoil_SSI.dxBarPlanMantenimiento_MTOClick(Sender: TObject);
begin
  if not mostrarFormChild('FrmProgramaMantenimiento',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'dxBarPlanMantenimiento_MTO';
    Application.CreateForm(TFrmProgramaMantenimiento, FrmProgramaMantenimiento);
    FrmProgramaMantenimiento.show
  end;
end;

procedure TfrmNoil_SSI.dxBarPlantilla_INIClick(Sender: TObject);
begin
if not MostrarFormChild('frmPlantilla',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarPlantilla_INI';
    Application.CreateForm(TfrmPlantilla, frmPlantilla);
    frmPlantilla.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarPreNomina_RHClick(Sender: TObject);
begin
 if not MostrarFormChild('FrmPreNomina',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnPreNomina';
    Application.CreateForm(TFrmPreNomina, FrmPreNomina);
    FrmPreNomina.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarPresupuestos_OPERClick(Sender: TObject);
begin
    if not MostrarFormChild('FrmCostoPresupuesto',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarPresupuestos_OPER';
    Application.CreateForm(TFrmCostoPresupuesto, FrmCostoPresupuesto);
    FrmCostoPresupuesto.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarControlComision_RHClick(Sender: TObject);
begin
  if not MostrarFormChild('frmControlComision',global_dxBarManagerPrincipal) then begin
    global_btnPermisos := 'btnCtrlComision';
    Application.CreateForm(TfrmControlComision,frmControlComision);
    frmControlComision.show;
  end;

end;

procedure TfrmNoil_SSI.dxBarCostoAlmacen_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('frmCostoAlmacen',global_dxBarManagerPrincipal) Then
   begin
     global_btnPermisos := 'dxCostoAlmacen';
     Application.CreateForm(TfrmCostoAlmacen, frmCostoAlmacen);
     frmCostoAlmacen.show
   end;
end;

procedure TfrmNoil_SSI.dxBarConfMail_CONFClick(Sender: TObject);
begin
   if not MostrarFormChild('frmConfiguraMail_mensajes',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnConfiguraMail';
    Application.CreateForm(TfrmConfiguraMail_mensajes, frmConfiguraMail_mensajes);
    frmConfiguraMail_mensajes.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarAdicionales_OPERClick(Sender: TObject);
begin
   if not MostrarFormChild('FrmAdicional_pres',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarAdicionales_OPER';
    Application.CreateForm(TFrmAdicionalesPres, FrmAdicionalesPres);
    FrmAdicionalespres.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarEvaluaInicial_GCClick(Sender: TObject);
begin
  if not mostrarFormChild('frmEvaluacion',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'dxBarEvaluaInicial_GC';
    Application.CreateForm(TfrmEvaluacion, frmEvaluacion);
    frmEvaluacion.show
  end;
end;

procedure TfrmNoil_SSI.dxBarClientes_GAClick(Sender: TObject);
begin
  if not mostrarFormChild('frmClientes',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'dxBarClientes_GA';
    Application.CreateForm(TfrmClientes, frmClientes);
    frmClientes.show
  end;
end;

procedure TfrmNoil_SSI.dxBarPacientes_INIClick(Sender: TObject);
begin
if not MostrarFormChild('frmPacientes',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarPacientes_INI';
    Application.CreateForm(TfrmPacientes, frmPacientes);
    frmPacientes.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarPagos_GAClick(Sender: TObject);
begin
  if not mostrarFormChild('frmpagoProveedores',global_dxBarManagerPrincipal) then
     begin
       global_btnPermisos:= 'dxBarPagos_GA';
       Application.CreateForm(TfrmpagoProveedores, frmpagoProveedores);
       frmpagoProveedores.show
     end;
end;

procedure TfrmNoil_SSI.dxBarProveedores_GAClick(Sender: TObject);
begin
  if not mostrarFormChild('frmProveedores',global_dxBarManagerPrincipal) then
     begin
       global_btnPermisos:= 'dxBarProveedores_GA';
       Application.CreateForm(TfrmProveedores, frmProveedores);
       frmProveedores.show
     end;
end;

procedure TfrmNoil_SSI.dxBarProyeccionCXC_CONClick(Sender: TObject);
begin
   if not mostrarFormChild('frmProyeccionCxC',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos:= 'dxBarProyeccionCXC_CON';
    Application.CreateForm(TfrmProyeccionCXC, frmProyeccionCXC);
    frmProyeccionCXC.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarProyecto_OPERClick(Sender: TObject);
begin
  if not mostrarFormChild('frmProyectos',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos:= 'dxBarProyecto_OPER';
    Application.CreateForm(TfrmProyectos, frmProyectos);
    frmProyectos.show;
  end;
end;

procedure TfrmNoil_SSI.dxProyectos_OPERClick(Sender: TObject);
begin
  if not mostrarFormChild('frmPproyectos',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos:= 'dxProyectos_OPER';
     Application.CreateForm(TfrmProyectos, frmProyectos);
     frmProyectos.show;
  end;
end;

procedure TfrmNoil_SSI.dxBarManager1ClickItem(Sender: TdxBarManager;
  ClickedItem: TdxBarItem);
begin
   try
      stMenu := ClickedItem.Name;
   Except
   end;
end;

procedure TfrmNoil_SSI.dxbrbtnfrentes1Click(Sender: TObject);
begin
    if not MostrarFormChild('frmordenes',global_dxBarManagerPrincipal) then
    begin
      global_btnPermisos := '';
       Application.CreateForm(TfrmOrdenes, frmOrdenes);
       frmOrdenes.show;
    end
end;


procedure TfrmNoil_SSI.lbtAsigModClick(Sender: TObject);
begin
if not MostrarFormChild('frmModulosxUsuario',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmModulosxusuario, frmModulosxUsuario);
    frmModulosxUsuario.show;
  end;
end;


procedure TfrmNoil_SSI.dxDepartamentos_ALMClick(Sender: TObject);
begin
  If not mostrarformChild('frmDeptos',global_dxBarManagerPrincipal) Then
   begin
    global_btnPermisos := '';
     global_btnPermisos := 'lbtDepto';
     Application.CreateForm(TfrmDeptos, frmDeptos);
     frmDeptos.show;
   end;
end;

procedure TfrmNoil_SSI.lbtImportacionClick(Sender: TObject);
begin
  if not MostrarFormChild('frmImportaciondeDatos',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmImportaciondeDatos, frmImportaciondeDatos);
    frmImportaciondeDatos.ShowModal;
   end;
end;

procedure TfrmNoil_SSI.dxbrlrgbtnFrentesClick(Sender: TObject);
begin
 if not MostrarFormChild('frmordenes',global_dxBarManagerPrincipal) then
    begin
      global_btnPermisos := '';
      Application.CreateForm(TfrmOrdenes, frmOrdenes);
      frmOrdenes.show;
    end
end;

procedure TfrmNoil_SSI.dxbrlrgbtnregistrof1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmOrdenes',global_dxBarManagerPrincipal) then
    begin
      global_btnPermisos := '';
       Application.CreateForm(TfrmOrdenes, frmOrdenes);
       frmOrdenes.show;
    end;
end;

procedure TfrmNoil_SSI.dxDesvalidacionClick(Sender: TObject);
begin
  if not MostrarFormChild('frmabrereporte',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmAbreReporte, frmAbreReporte);
    frmAbreReporte.show
  end;
end;

procedure TfrmNoil_SSI.dxRibbonBackstageViewGalleryControl1ItemClick(
  Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
{Se comenta para una implementacion posterior}
begin
  //if AItem=tbbSetup1          then tbbSetup.Click;
  //if AItem=tbbCambiaContrato1 then tbbCambiaContrato.Click;
  //if AItem=tbbRepBarco1       then tbbRepBarco.Click;
  //if AItem=tbbEstima1         then tbbEstima.Click;
  //if AItem=tbbFotos1          then tbbFotos.Click;
  //if AItem=tbbRepDiario1      then tbbRepDiario.Click;
  //if AItem=tbbGenera1         then tbbGenera.Click;
  //if AItem=tbbInformes1       then tbbInformes.Click;
  //if AItem=cPendientes1       then cPendientes.Click;
end;

procedure TfrmNoil_SSI.dxRibbonGalleryItem1Group2Item10Click(Sender: TObject);
begin
  close;
end;
procedure TfrmNoil_SSI.dxRibbonGalleryItem1Group2Item2Click(Sender: TObject);
var pathimagen: string;
  Ini: TiniFile;
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';
  escribeini(detectar, OpenDialog1);
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
    muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
end;

procedure TfrmNoil_SSI.dxRibbonGalleryItem1Group2Item7Click(Sender: TObject);
begin
  global_btnPermisos := '';
  Application.CreateForm(TfrmCambioPassword, frmCambioPassword);
  frmcambiopassword.ShowModal
end;

procedure TfrmNoil_SSI.dxRibbonGalleryItem1Group2Item8Click(Sender: TObject);
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

procedure TfrmNoil_SSI.dxRibbonGalleryItem1Group2Item9Click(Sender: TObject);
begin
  frmSeleccion2.showModal;

end;

procedure TfrmNoil_SSI.dxSkinChooserGalleryItem1SkinChanged(Sender: TObject;const ASkinName: string);
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

procedure TfrmNoil_SSI.dxValidacionClick(Sender: TObject);
begin
  try
    frmValida.SetFocus;
  except
    global_btnPermisos := '';
    Application.CreateForm(TfrmValida, frmValida);
    frmValida.show
  end;
end;

procedure TfrmNoil_SSI.dxBarEmpleados_RHClick(Sender: TObject);
begin
        if not mostrarFormChild('frmCatalogoEmpleados',global_dxBarManagerPrincipal) Then
        begin
          global_btnPermisos := 'Empleados1';
          Application.CreateForm(TfrmCatalogoEmpleadosSSI, frmCatalogoEmpleadosSSI);
          frmCatalogoEmpleadosSSI.show;
        end;
end;

procedure TfrmNoil_SSI.Equipos1Click(Sender: TObject);
begin
//  if not MostrarFormChild('frmConsumibles',global_dxBarManagerPrincipal) then
//   begin
//    Application.CreateForm(TfrmConsumibles, frmConsumibles);
//    frmConsumibles.Show;
//  end;
end;

procedure TfrmNoil_SSI.estirado1Click(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then modofondo(fondo, 'bmStretch', detectar)
  else escribeinidefault(detectar, 'bmStretch');
  fondo.Stretch:=True;
end;

procedure TfrmNoil_SSI.adTurnosClick(Sender: TObject);
begin
 if not MostrarFormChild('frmTurnos',global_dxBarManagerPrincipal) Then
   begin
   global_btnPermisos := '';
    Application.CreateForm(TfrmTurnos, frmTurnos);
    frmTurnos.show;
  end;
end;

procedure TfrmNoil_SSI.configuracion_almacenClick(Sender: TObject);
begin
 If not MostrarFormChild('frmSetupAlm',global_dxBarManagerPrincipal) Then
 begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmSetupAlm, frmSetupAlm);
    frmSetupAlm.Show ;
  end;
end;

procedure TfrmNoil_SSI.ControldeGuardias1Click(Sender: TObject);
begin
if not MostrarFormChild('FrmGuardias',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'ControldeGuardias1';
    Application.CreateForm(TFrmGuardias, FrmGuardias);
    FrmGuardias.show
  end;
end;

procedure TfrmNoil_SSI.JvAppEvents1ActiveControlChange(Sender: TObject);
begin
  self.Caption := sender.ClassName;
end;

//procedure TfrmNoil_SSI.SpeedItem2Click(Sender: TObject);
//begin
//  adConfiguracion.Click
//end;

procedure TfrmNoil_SSI.SpeedItem3Click(Sender: TObject);
begin
  adentro := True;
  sSeleccion.Click;
end;

procedure TfrmNoil_SSI.SpeedItem12Click(Sender: TObject);
begin
  //opOrdenCam.Click
end;

procedure TfrmNoil_SSI.menuExtraPaneItemClick(Sender: TObject;AIndex: Integer);
begin
  if AIndex=0 then sLogin.Click;
end;

procedure TfrmNoil_SSI.MnsCaptdeReqClick(Sender: TObject);
begin
  {if not MostrarFormChild('frmRequisicionPerf',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmRequisicionPerf, frmRequisicionPerf);
    frmRequisicionPerf.Show
  end;}

end;

procedure TfrmNoil_SSI.MnsCaptOrdComClick(Sender: TObject);
begin
 try
    frmPedidos.SetFocus;
 except
    global_btnPermisos := '';
    Application.CreateForm(TfrmPedidos, frmPedidos);
    frmPedidos.Show
  end;
end;

procedure TfrmNoil_SSI.MnsEntradasAlmacenClick(Sender: TObject);
begin
  if not MostrarFormChild('frmEntradaAlmacen_SSI',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmEntradaAlmacen_SSI, frmEntradaAlmacen_SSI);
    frmEntradaAlmacen_SSI.Show
  end;
end;

procedure TfrmNoil_SSI.MnsSalidasAlmacenClick(Sender: TObject);
begin
  try
    frmSalidaAlmacen_SSI.SetFocus;
  except
    Application.CreateForm(TfrmSalidaAlmacen_SSI, frmSalidaAlmacen_SSI);
    frmSalidaAlmacen_SSI.Show
  end;
end;

procedure TfrmNoil_SSI.dxBarGuardia_RHClick(Sender: TObject);
begin
  if not MostrarFormChild('FrmAsignarGuardias',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TFrmAsignarGuardias, FrmAsignarGuardias);
    FrmAsignarGuardias.show;
  end;
end;

procedure TfrmNoil_SSI.dxResidencias_CONFClick(Sender: TObject);
begin
  if not MostrarFormChild('frmResidencias',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'adResidencias';
    Application.CreateForm(TfrmResidencias, frmResidencias);
    frmResidencias.show;
  end;
end;

procedure TfrmNoil_SSI.adProgramasClick(Sender: TObject);
begin
//  if not MostrarFormChild('frmProgramas',global_dxBarManagerPrincipal) Then
//   begin
//    Application.CreateForm(TfrmProgramas, frmProgramas);
//    frmProgramas.show;
//  end;
end;

procedure TfrmNoil_SSI.dxPerfilUsuario_CONFClick(Sender: TObject);
begin
  if not MostrarFormChild('frmGrupos',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmGrupos, frmGrupos);
    frmGrupos.show;
  end;
end;

procedure TfrmNoil_SSI.adGrupoPClick(Sender: TObject);
begin
  if not MostrarFormChild('frmGruposxPrograma',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmGruposxPrograma, frmGruposxPrograma);
    frmGruposxPrograma.show;
  end;
end;

procedure TfrmNoil_SSI.dxAsignaUsuarios_CONFClick(Sender: TObject);
begin
 if not MostrarFormChild('frmUsuariosXproyectos',global_dxBarManagerPrincipal) Then
   begin
    global_btnPermisos := 'adUsuarios';
    Application.CreateForm(TfrmUsuariosxproyectos, frmUsuariosXproyectos);
    frmUsuariosXproyectos.show;
  end;
end;

procedure TfrmNoil_SSI.SpeedItem4Click0(Sender: TObject);
begin
//  opValida.Click
end;

procedure TfrmNoil_SSI.SpeedItem15Click(Sender: TObject);
begin
//  opAbre.Click
end;

procedure TfrmNoil_SSI.AcoplarDesacoplarClick(Sender: TObject);

begin
  if dxTabbedMDIManager1.Active then   //Si el componente tiene activa la propiedad
    dxTabbedMDIManager1.Active    := false   //Desacopla las ventanas
  else dxTabbedMDIManager1.Active := True; //Si esta desactivado las acopla al mdi
end;

procedure TfrmNoil_SSI.CalculoRenunciaExecute(Sender: TObject);
begin
  ShowMessage('Se hizo el cálculo de una renuncia.');
end;

procedure TfrmNoil_SSI.CalculoDespidoExecute(Sender: TObject);
begin
  ShowMessage('Se hizo el calculo de un despido');
end;

procedure TfrmNoil_SSI.dxEmpresa_RHClick(Sender: TObject);
begin
  If not mostrarFormChild('frm_empresa',global_dxBarManagerPrincipal) Then
   begin
      global_btnPermisos := 'Organizacion1';
      Application.CreateForm(Tfrm_empresa, frm_empresa);
      frm_empresa.show;
   end;
end;

procedure TfrmNoil_SSI.permisosUsuModulos(bandera: byte);
var
  Component : TdxBarLargeButton;
  Component1:      TdxBarButton;
  Component2 : TdxRibbonTab;
  iElemento : Integer;
  gener     : TComponent ;
  sPrograma :  string;
begin
  for iElemento := 0 to frmNoil_SSI.ComponentCount - 1 do
  begin
    if frmNoil_SSI.Components[iElemento].ClassName = 'TdxBarLargeButton' then
     begin
       Component := frmNoil_SSI.Components[iElemento] as TdxBarLargeButton;
       if ((Component.Tag <> 100) ) then
       begin
         Component.Enabled := False ;
         Component.Visible := ivNever;
       end;
     end;

    if frmNoil_SSI.Components[iElemento].ClassName = 'TdxBarButton' then
     begin
       Component1 := frmNoil_SSI.Components[iElemento] as TdxBarButton;
       if ((Component1.Tag <> 100) ) then
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
        gener := frmNoil_SSI.FindComponent(Connection.zModulosPermisos.FieldByName('sIdPrograma').AsString) ;
        if Assigned (gener) Then
        begin
            sPrograma := gener.GetNamePath ;
                          if gener.ClassName = 'TdxBarLargeButton' then
                          begin
                            Component := gener as TdxBarLargeButton;
                            Component.Enabled := cad_bool(connection.zModulosPermisos.FieldValues['Acceder']);
                            if Component.Enabled = True then
                              Component.Visible := ivAlways
                            else
                              Component.Visible := ivNever;
                          end;

                          if gener.ClassName = 'TdxBarButton' then
                          begin
                            Component1 := gener as TdxBarButton;
                            Component1.Enabled := cad_bool(connection.zModulosPermisos.FieldValues['Acceder']);
                            if Component1.Enabled = True then
                              Component1.Visible := ivAlways
                            else
                              Component1.Visible := ivNever;
                          end;
        end;
      Connection.zModulosPermisos.Next ;
    end;

    for iElemento := 0 to frmNoil_SSI.ComponentCount - 1 do
    begin
      if frmNoil_SSI.Components[iElemento].ClassName = 'TdxRibbonTab' then
       begin

         Component2 := frmNoil_SSI.Components[iElemento] as TdxRibbonTab;
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
procedure TfrmNoil_SSI.dxBarEmbarque_ALMClick(Sender: TObject);
begin
  global_btnPermisos := 'opAvisodeEmb';
 if not MostrarFormChild('frmAvisoEmbarque',global_dxBarManagerPrincipal) Then
  begin
    Application.CreateForm(TfrmAvisoEmbarque, frmAvisoEmbarque);
    frmAvisoEmbarque.Show;
  end;
end;

procedure TfrmNoil_SSI.dxConfCorreo_CONFClick(Sender: TObject);
begin
 if not MostrarFormChild('frmConfigCorreo',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'opConfigCorreo';
    Application.CreateForm(TFrmConfigCorreo, FrmConfigCorreo);
    FrmConfigCorreo.Show;
  end;
end;

procedure TfrmNoil_SSI.subAsigAlmContratosClick(Sender: TObject);
begin
  if not MostrarFormChild('frmAlmacenesPorContrato',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmAlmacenesPorContrato, frmAlmacenesPorContrato);
    frmAlmacenesPorContrato.Show;
  end;
end;

procedure TfrmNoil_SSI.subAsigAlmUsuariosClick(Sender: TObject);
begin
  if not MostrarFormChild('frmalmacenesporusuario',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := '';
    Application.CreateForm(Tfrmalmacenesporusuario, frmalmacenesporusuario);
    frmalmacenesporusuario.show;
  end;
end;

procedure TfrmNoil_SSI.FormResize(Sender: TObject);
begin
  if frmNoil_SSI.Height<600 then frmNoil_SSI.Height:=600;
  if frmNoil_SSI.Width<800 then frmNoil_SSI.Width:=800;
end;

procedure TfrmNoil_SSI.imgKardex1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmKardex',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmKardex, frmKardex);
    frmKardex.show
  end;
end;

procedure TfrmNoil_SSI.imgKardexClick(Sender: TObject);
begin
  if not MostrarFormChild('frmKardex',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmKardex, frmKardex);
    frmKardex.show
  end;
end;

procedure TfrmNoil_SSI.ImpresionDespidoExecute(Sender: TObject);
begin
  ShowMessage('Se imprimió un despido.');
end;

procedure TfrmNoil_SSI.ImpresionRenunciaExecute(Sender: TObject);
begin
  ShowMessage('Se imprimio una renuncia');
end;

procedure TfrmNoil_SSI.ImprimirContratos1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmSeguroVida',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'ImprimirContratos1';
    Application.CreateForm(TfrmSeguroVida, frmSeguroVida);
    frmSeguroVida.show

  end;
end;

procedure TfrmNoil_SSI.InputBoxSetPasswordChar(var Msg: TMessage);
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

procedure TfrmNoil_SSI.inteligentpopPopup(Sender: TObject);
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

procedure TfrmNoil_SSI.dxCambiarPassword_CONFClick(Sender: TObject);
begin
   if not MostrarFormChild('frmcambiopassword',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := '';
      Application.CreateForm(TfrmCambioPassword, frmCambioPassword);
      frmcambiopassword.ShowModal
    end;
end;

procedure TfrmNoil_SSI.dxBarRequisiciones_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('FrmRequisicionMaterial',global_dxBarManagerPrincipal) Then
   begin
        global_btnPermisos := 'opRequisiciones';
        Application.CreateForm(TFrmRequisicionMaterial, FrmRequisicionMaterial);
        FrmRequisicionMaterial.show
   end;

end;

procedure TfrmNoil_SSI.dxBarOC_ALMClick(Sender: TObject);
begin
  if not MostrarFormChild('frmPedidos',global_dxBarManagerPrincipal) Then
   begin
     global_btnPermisos := 'opPedidos';
     Application.CreateForm(TfrmPedidos, frmPedidos);
     frmPedidos.show
   end;
end;

procedure TfrmNoil_SSI.TiempoTimer(Sender: TObject);
begin
  application.Terminate;
end;

procedure TfrmNoil_SSI.TimerNotificadorTimer(Sender: TObject);
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

procedure TfrmNoil_SSI.TimerNotTimer(Sender: TObject);
var tb:String;
  sqlCount:TUniquery;
  fAlertWindow: TdxAlertWindow;
begin
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
      if zNotify.Active then
        zNotify.Refresh
      else
        zNotify.Open;
    end;
    //Notificaciones;
    //Notificame;
  end;

  sqlCount.Close;
  sqlCount.Destroy;
end;

procedure TfrmNoil_SSI.ToolButton18Click(Sender: TObject);
begin
  //opOrdenCam.Click
end;
//
//procedure TfrmNoil_SSI.ToolButton1Click(Sender: TObject);
//begin
//  adConfiguracion.Click
//end;

procedure TfrmNoil_SSI.ToolButton22Click(Sender: TObject);
begin
//  opValida.Click
end;

procedure TfrmNoil_SSI.ToolButton23Click(Sender: TObject);
begin
//  opAbre.Click
end;

procedure TfrmNoil_SSI.ToolButton2Click(Sender: TObject);
begin
  adentro := True;
  sSeleccion.Click;
end;

//procedure TfrmNoil_SSI.ActivarBiometrico;
//var
//  tem:TUniquery;
//begin
//  tem:=TUniQuery.Create(Self);
//  tem.Connection:=connection.Uconnection;
//  tem.Active:=False;
//  tem.SQL.Text:='SELECT BiometricoActivo FROM configuracion';
//  tem.Open;
//  if tem.FieldByName('BiometricoActivo').AsString <> 'Si' then
//  begin
//    btnVerificar.Visible:=ivNever;
//  end
//  else
//  begin
//    btnVerificar.Visible:=ivAlways;
//  end;
//
//end;

procedure TfrmNoil_SSI.dxActivos_CONFClick(Sender: TObject);
begin
 if not MostrarFormChild('frmActivos',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := 'adActivos';
      Application.CreateForm(TfrmActivos, frmActivos);
      frmActivos.show;
    end;
end;

procedure TfrmNoil_SSI.opadmonCatalogoClick(Sender: TObject);
begin
  if not MostrarFormChild('frmAdmonCatalogos',global_dxBarManagerPrincipal) then
      begin
        global_btnPermisos := '';
        Application.CreateForm(TfrmAdmonCatalogos, frmAdmonCatalogos);
        frmAdmonCatalogos.show
      end;
end;

procedure TfrmNoil_SSI.dxBarSalidaAlmacen_ALMClick(Sender: TObject);
begin
 If not MostrarFormChild('frmSalidaAlmacen',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'MnuSalAlmacen';
    Application.CreateForm(TfrmSalidaAlmacen_SSI, frmSalidaAlmacen_SSI);
    frmSalidaAlmacen_SSI.show
  end;
end;

procedure TfrmNoil_SSI.mnuEmpresaClick(Sender: TObject);
begin
  If not mostrarFormChild('frm_empresa',global_dxBarManagerPrincipal) Then
   begin
      global_btnPermisos := 'mnuEmpresa';
      Application.CreateForm(Tfrm_Empresa_SSI, frm_Empresa_SSI);
      frm_Empresa_SSI.show;
   end;
end;

procedure TfrmNoil_SSI.mnuEmpresasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmcontratos',global_dxBarManagerPrincipal) then
  begin
    global_cambioletrero := 20 ;
    global_btnPermisos := '';
    Application.CreateForm(TfrmContratos, frmContratos);
    frmContratos.show;
  end;
end;

procedure TfrmNoil_SSI.AsignacindeAlmacenesaUsuarios1Click(Sender: TObject);
begin
if not MostrarFormChild('frmalmacenesporusuario',global_dxBarManagerPrincipal) Then
   begin
    global_btnPermisos := '';
     Application.CreateForm(Tfrmalmacenesporusuario, frmalmacenesporusuario);
     frmalmacenesporusuario.show;
  end;
end;

procedure TfrmNoil_SSI.mnu2Click(Sender: TObject);
begin
  if not MostrarFormChild('frmAlmacenesPorContrato',global_dxBarManagerPrincipal) Then
   begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmAlmacenesPorContrato, frmAlmacenesPorContrato);
    frmAlmacenesPorContrato.Show;
  end;
end;

procedure TfrmNoil_SSI.dxAlmacenes_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('frmAlmacenes',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := 'MnuAlmacen';
      Application.CreateForm(TfrmAlmacenes, frmAlmacenes);
      frmAlmacenes.Show;
    end;
end;

//procedure TfrmNoil_SSI.tbbSetupClick(Sender: TObject);
//begin
//  adConfiguracion.Click
//end;

procedure TfrmNoil_SSI.dxBarSelecciona_INIClick(Sender: TObject);
begin
  if ValidaChildAbierto(frmNoil_SSI) > 0 then
  begin
    if MSG_YN('Si cambia de empresa se cerraran todas las ventanas desea continuar?') then
    begin
      CierraFormChild(frmNoil_SSI);
    end;
  end;
  adentro  := True;

  frmSeleccion2.fin := False;
  frmSeleccion2.showModal;
  NumNotyfi := 0;

  //Notificame;
  frmNoil_SSI.permisosUsuModulos(100);
  //Notificaciones;
  //sSeleccion.Click;
end;

procedure TfrmNoil_SSI.dxBarTipoEstudio_INIClick(Sender: TObject);
begin
if not MostrarFormChild('frmTipoEstudio',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarTipoEstudio_INI';
    Application.CreateForm(TfrmTipoEstudio, frmTipoEstudio);
    frmTipoEstudio.show;
  end;
end;

//procedure TfrmNoil_SSI.AdvToolBarMenuButton1Click(Sender: TObject);
//begin
//  adConfiguracion.Click
//end;

procedure TfrmNoil_SSI.btnGeneraRespaldoClick(Sender: TObject);
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

procedure TfrmNoil_SSI.dxBarInformePresupuesto_OPERClick(Sender: TObject);
begin
  if not mostrarFormChild('frmPresupuesto',global_dxBarManagerPrincipal) Then
  begin
     global_btnPermisos:= 'dxBarInformePresupuesto_OPER';
     Application.CreateForm(TfrmPresupuesto, frmPresupuesto);
     frmPresupuesto.show;
  end;
end;

procedure TfrmNoil_SSI.dxModulos_CONFClick(Sender: TObject);
begin
if not MostrarFormChild('frmCatalogoModulos',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'btnModulos';
    Application.CreateForm(TfrmCatalogoModulos, frmCatalogoModulos);
    frmCatalogoModulos.show;
  end;
end;

procedure TfrmNoil_SSI.rhBtnCompClick(Sender: TObject);
begin
   if not MostrarFormChild('frmEvaluaCompetencias',global_dxBarManagerPrincipal) then
      begin
        global_btnPermisos := 'rhBtnComp';
        Application.CreateForm(Tfrm_EvaluaCompetencias, frmEvaluaCompetencias);
        frmEvaluaCompetencias.show ;
      end;
end;

procedure TfrmNoil_SSI.dxBarEntradaAlmacen_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('frmEntradaAlmacen',global_dxBarManagerPrincipal) then
      begin
        global_btnPermisos := 'MnuEntAlmace';
        Application.CreateForm(TfrmEntradaAlmacen_SSI, frmEntradaAlmacen_SSI);
        frmEntradaAlmacen_SSI.show ;
      end;
end;

procedure TfrmNoil_SSI.dxBarEspecialidad_INIClick(Sender: TObject);
begin
if not MostrarFormChild('frmEspecialidad',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarEspecialidad_INI';
    Application.CreateForm(TfrmEspecialidad, frmEspecialidad);
    frmEspecialidad.show;
  end;
end;

procedure TfrmNoil_SSI.dxHistorialMoto_CONFClick(Sender: TObject);
begin
 if not MostrarFormChild('frmKardex',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmKardex, frmKardex);
    frmKardex.Show;
  end;
end;

procedure TfrmNoil_SSI.cascadaClick(Sender: TObject);
begin
  frmNoil_SSI.Cascade;
end;

end.

