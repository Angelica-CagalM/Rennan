unit frm_Noil_SS7;

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
  TfrmNoil_SS7 = class(TdxRibbonForm)
  Status: TdxRibbonStatusBar;
  Tiempo: TTimer;
  OpenDialog1: TOpenDialog;
  frxReport1: TfrxReport;
  dxBarManager1: TdxBarManager;
    mnInicio: TdxRibbonTab;
    mNoil: TdxRibbon;
  dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
  dxSkinController1: TdxSkinController;
  dxBarManager1Bar9: TdxBar;
  dxBarManager1Bar2: TdxBar;
    mnRecursosHumanos: TdxRibbonTab;
    mnAlmacen: TdxRibbonTab;
  estirado: TdxBarButton;
  centrado: TdxBarButton;
  mosaico: TdxBarButton;
  cascada: TdxBarButton;
  mosaicovertical: TdxBarButton;
  mosaicohorizontal: TdxBarButton;
  sSalir: TdxBarLargeButton;
  cambiarmododefondo: TdxBarSubItem;
  ventanaen: TdxBarSubItem;
  estirado1: TdxBarButton;
  centrado1: TdxBarButton;
  mosaico1: TdxBarButton;
  cambiarmododefondo1: TdxBarSubItem;
  Cascada1: TdxBarButton;
  MosaicoVertical1: TdxBarButton;
  MosaicoHorizontal1: TdxBarButton;
  Ventanasen1: TdxBarSubItem;
  dxBarManager1Bar10: TdxBar;
    dxBarCatalogos_RH: TdxBarSubItem;
    dxBarEmpleados_RH: TdxBarLargeButton;
    dxBarConfiguracionRH_RH: TdxBarLargeButton;
    dxDepartamentos_RH: TdxBarButton;
    dxEmpresa_RH: TdxBarButton;
    dxBarSistema_CONF: TdxBarSubItem;
    dxBarAsignaciones_CONF: TdxBarSubItem;
    cxAsignaciones_CONF: TdxBarSubItem;
    dxAsignaUsuarios_CONF: TdxBarButton;
    dxProyectoEmpresa_CONF: TdxBarButton;
    dxConfiguracion_CONF: TdxBarButton;
    dxAdmonCliente_CONF: TdxBarSubItem;
    dxResidencias_CONF: TdxBarButton;
    dxActivos_CONF: TdxBarButton;
    dxCatalogoErrores_CONF: TdxBarButton;
    dxBarHerramientas_CONF: TdxBarSubItem;
  mnPanel: TdxRibbonTab;
  dxBarManager1Bar3: TdxBar;
  dxBarManager1Bar7: TdxBar;
  FontDialog1: TFontDialog;
  ReplaceDialog: TReplaceDialog;
  dxTabbedMDIManager1: TdxTabbedMDIManager;
  cxLocalizer1: TcxLocalizer;
    menu: TdxBarApplicationMenu;
  dxLayoutLookAndFeelList10: TdxLayoutLookAndFeelList;
  dxLayoutStandardLookAndFeel10: TdxLayoutStandardLookAndFeel;
  dxAlertWindowManager1: TdxAlertWindowManager;
  dxDockingManager1: TdxDockingManager;
  cxLookAndFeelController1: TcxLookAndFeelController;
  cxDefaultEditStyleController1: TcxDefaultEditStyleController;
  cxEditStyleController1: TcxEditStyleController;
  Fondo: TImage;
  Tipos_Hits: TdxScreenTipRepository;
  Sin_Registro: TdxScreenTip;
  prueba: TdxLayoutSkinLookAndFeel;
  dxBarScreenTipRepository1: TdxBarScreenTipRepository;
  Manager_Hits: TcxHintStyleController;
  cxLookAndFeelController2: TcxLookAndFeelController;
  dxBarScreenTipRepository1ScreenTip1: TdxScreenTip;
    dxBarSelecciona_INI: TdxBarLargeButton;
    dxAlert: TdxAlertWindowManager;
    cxImageList1: TcxImageList;
    TimerAlert: TTimer;
    dxEmpresas_CONF: TdxBarButton;
    dxBarGuardia_RH: TdxBarLargeButton;
    dxModulos_CONF: TdxBarButton;
    cxColeccionesFondo: TcxImageCollection;
    cxImageCollection1Item1: TcxImageCollectionItem;
    cxImageCollection1Item2: TcxImageCollectionItem;
    cxImageCollection1Item3: TcxImageCollectionItem;
    cxImageCollection1Item4: TcxImageCollectionItem;
    cxImageCollection1Item5: TcxImageCollectionItem;
    cxImageCollection1Item6: TcxImageCollectionItem;
    dxCatalogos_RH: TdxBarButton;
    dxTiposNomina_RH: TdxBarButton;
    alertme: TdxAlertWindowManager;
    dxBarAutofolios_CONF: TdxBarLargeButton;
    zNotifica: TUniQuery;
    zqImagen: TUniQuery;
    ds_imagen: TDataSource;
    cxDBImage1: TcxDBImage;
    dxBarDiagramaSGC_INI: TdxBarLargeButton;
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
    dxBarDiasLaborados_RH: TdxBarLargeButton;
    zScanner: TUniQuery;
    dxBarRecargaConsulta_CONF: TdxBarLargeButton;
    dxBarNotificaciones_CONF: TdxBarLargeButton;
    TimerNotificador: TTimer;
    TimerNot: TTimer;
    zNotify: TUniQuery;
    mNotiIdNotificacion: TIntegerField;
    dxBarEvalucacionComp_RH: TdxBarLargeButton;
    dxSalarios_RH: TdxBarButton;
    dxNomina_RH: TdxBarLargeButton;
    dxPersonalProv_RH: TdxBarButton;
    dxBarPeriodoNom_RH: TdxBarLargeButton;
    dxBarPreNomina_RH: TdxBarLargeButton;
    dxBarControlComision_RH: TdxBarLargeButton;
    dxBarPersonalGuardia_RH: TdxBarLargeButton;
    dxBarPeriodoGuardia_RH: TdxBarLargeButton;
    dxRangoSalarios_RH: TdxBarButton;
    dxDoctoReporte_RH: TdxBarLargeButton;
    dxBarManager1Bar1: TdxBar;
    dxBarCatalogos_ALM: TdxBarSubItem;
    dxCatalogos_ALM: TdxBarButton;
    dxAlmacenes_ALM: TdxBarButton;
    dxProveedores_ALM: TdxBarButton;
    dxEvalua_proveedor_ALM: TdxBarButton;
    dxProyectos_ALM: TdxBarButton;
    dxMateriales_ALM: TdxBarButton;
    dxDepartamentos_ALM: TdxBarButton;
    dxBarMateriales_ALM: TdxBarLargeButton;
    dxBarRequisiciones_ALM: TdxBarLargeButton;
    dxBarOC_ALM: TdxBarLargeButton;
    dxBarEntradaAlmacen_ALM: TdxBarLargeButton;
    dxBarSalidaAlmacen_ALM: TdxBarLargeButton;
    dxBarEmbarque_ALM: TdxBarLargeButton;
    dxBarReportesALM_ALM: TdxBarLargeButton;
    dxBarCostoAlmacen_ALM: TdxBarLargeButton;
    dxBarAutorizar_ALM: TdxBarLargeButton;
    dxBarDesAutorizar_ALM: TdxBarLargeButton;
    dxBarConfALM_ALM: TdxBarLargeButton;
    dxBarFirmantes_ALM: TdxBarLargeButton;
    dxBarDiagramaSGC_ALM: TdxBarLargeButton;
    dxBarRegistroAct_ALM: TdxBarLargeButton;
    dxBarCatalogos_COMP: TdxBarSubItem;
    dxCatalogos_COMP: TdxBarButton;
    dxAlmacenes_COMP: TdxBarButton;
    dxProyectos_COMP: TdxBarButton;
    dxDepartamentos_COMP: TdxBarButton;
    dxBarEvaluaciones_COMP: TdxBarSubItem;
    dxEvalua_inicio_COMP: TdxBarButton;
    dxEvaluacion_COMP: TdxBarButton;
    dxBarProveedores_COMP: TdxBarLargeButton;
    dxBarMateriales_COMP: TdxBarLargeButton;
    dxBarCotizaciones_COMP: TdxBarLargeButton;
    dxBarRequisiciones_COMP: TdxBarLargeButton;
    dxBarOC_COMP: TdxBarLargeButton;
    dxBarCostoALM_COMP: TdxBarLargeButton;
    dxBarAutoriza_COMP: TdxBarLargeButton;
    dxBarDesAutorizar_COMP: TdxBarLargeButton;
    dxBarSeguimientoReqs_COMP: TdxBarLargeButton;
    dxBarDiagramaSGC_COMP: TdxBarLargeButton;
    dxBarRegistroAct_COMP: TdxBarLargeButton;
    dxBarVerificar_RH: TdxBarLargeButton;
    dxAcerca_CONF: TdxBarButton;
    dxAyuda_CONF: TdxBarButton;
    dxCambiarPassword_CONF: TdxBarButton;
    dxUsuarios_CONF: TdxBarButton;
    dxConfCorreo_CONF: TdxBarButton;
    dxPerfilUsuario_CONF: TdxBarButton;
    dxProgramaHora_CONF: TdxBarButton;
    dxHistorialMoto_CONF: TdxBarButton;
    Cerrar_Todo: TdxBarButton;
    AcoplarDesacoplar: TdxBarButton;
    dxBarRegistroAct_INI: TdxBarLargeButton;
    dxBarEvaluaProveedor_INI: TdxBarLargeButton;
    dxBarConfMail_CONF: TdxBarLargeButton;
    cxLimpia: TcxButton;
    dxImportaciones_CONF: TdxBarButton;
    dxBarAprobacionPag_COMP: TdxBarLargeButton;
    brnConfFirmantes: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxCentroC_COMP: TdxBarButton;
    dxBarOpcFirm_CONF: TdxBarLargeButton;
    dxBarAprobarRequisiciones_ALM: TdxBarLargeButton;
    dxBarRequerimientoControlCalidad_ALM: TdxBarLargeButton;
    dxBarRequisiciones2_ALM: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxPlanta_ALM: TdxBarButton;
    dxCompradores_ALM: TdxBarButton;
    dxGerentesDepto_ALM: TdxBarButton;
    dxBarCompradores_ALM: TdxBarLargeButton;
    dxBarIM_ALM: TdxBarLargeButton;
    dxBarSubItem2: TdxBarSubItem;
    dxAprobarRequerimientos_ALM: TdxBarButton;
    dxRequerimientosControlCalidad_ALM: TdxBarButton;
    dxBarSeguimientoReqs_ALM: TdxBarLargeButton;
    dxCentroC_ALM: TdxBarButton;
    dxBarConcentradoRIM_ALM: TdxBarLargeButton;
    dxOrdenTrabajo_ALM: TdxBarButton;
    dxContratos_ALM: TdxBarButton;
    dxBarMPO_ALM: TdxBarLargeButton;
    dxBarTransito_ALM: TdxBarLargeButton;
    dxBarSolicitudDeMateriales_ALM: TdxBarLargeButton;
    dxBarOCEstatus_ALM: TdxBarLargeButton;
    dxBarSeguimientoPOE_ALM: TdxBarLargeButton;
    dxBarRevisiones_ALM: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBar_AsistenciaMed_RH: TdxBarLargeButton;
    mNoilTab1: TdxRibbonTab;
    dxBarManager1Bar4: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarEntregaEPP: TdxBarLargeButton;
    dxBarButton3: TdxBarButton;
    dxBarEPP: TdxBarLargeButton;
    dxBarDevolucionEPP: TdxBarLargeButton;
    dxBarAsistenciaPersonal: TdxBarLargeButton;
    dxBarButton4: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    btnMigrarReporteMto: TdxBarButton;

  procedure FormShow(Sender: TObject);
  procedure dxConfiguracion_CONFClick(Sender: TObject);
  procedure dxProyectoEmpresa_CONFClick(Sender: TObject);
  procedure adUsuariosClick(Sender: TObject);
  procedure sLoginClick(Sender: TObject);
  procedure sSalirClick(Sender: TObject);
  procedure FormResize(Sender: TObject);
  procedure sCambiaPClick(Sender: TObject);
  procedure opPedidosClick(Sender: TObject);
  procedure dxActivos_CONFClick(Sender: TObject);
  procedure ActivarBiometrico;
  procedure MnuAlmacenClick(Sender: TObject);
  procedure MnuSalAlmacenClick(Sender: TObject);
  procedure dxBarSelecciona_INIClick(Sender: TObject);
  procedure Cambiarimagendefondo1Click(Sender: TObject);
  procedure estirado1Click(Sender: TObject);
  procedure centrado1Click(Sender: TObject);
  procedure FormCreate(Sender: TObject);
  procedure Cascada1Click(Sender: TObject);
  procedure MosaicoVertical1Click(Sender: TObject);
  procedure MosaicoHorizontal1Click(Sender: TObject);
  procedure catIdiomasClick(Sender: TObject);
  procedure dxDepartamentos_RHClick(Sender: TObject);
  procedure dxEmpresa_RHClick(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item2Click(Sender: TObject);
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
  procedure AcoplarDesacoplarClick(Sender: TObject);
    procedure mnuEmpresasClick(Sender: TObject);
    procedure mnuEmpresaClick(Sender: TObject);
    procedure AsignacindeAlmacenesaUsuarios1Click(Sender: TObject);
    procedure mnu2Click(Sender: TObject);
    procedure dxModulos_CONFClick(Sender: TObject);
    procedure FondoDblClick(Sender: TObject);
    procedure mnuAgrupacionPClick(Sender: TObject);
    procedure dxTiposNomina_RHClick(Sender: TObject);
    procedure dxBarAutofolios_CONFClick(Sender: TObject);
    procedure dxBarDiagramaSGC_INIClick(Sender: TObject);
    procedure dxBarDiagramaSGC_RHClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ControldeGuardias1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxBarRecargaConsulta_CONFClick(Sender: TObject);
    procedure dxBarNotificaciones_CONFClick(Sender: TObject);
    procedure TimerNotificadorTimer(Sender: TObject);
    procedure TimerNotTimer(Sender: TObject);
    procedure Cerrar_TodoClick(Sender: TObject);
    procedure dxDoctoReporte_RHClick(Sender: TObject);
    procedure dxCatalogos_ALMClick(Sender: TObject);
    procedure dxAlmacenes_ALMClick(Sender: TObject);
    procedure dxProveedores_ALMClick(Sender: TObject);
    procedure dxProyectos_ALMClick(Sender: TObject);
    procedure dxMateriales_ALMClick(Sender: TObject);
    procedure dxDepartamentos_ALMClick(Sender: TObject);
    procedure dxBarMateriales_ALMClick(Sender: TObject);
    procedure dxBarRequisiciones_ALMClick(Sender: TObject);
    procedure dxBarOC_ALMClick(Sender: TObject);
    procedure dxBarEntradaAlmacen_ALMClick(Sender: TObject);
    procedure dxBarSalidaAlmacen_ALMClick(Sender: TObject);
    procedure dxBarEmbarque_ALMClick(Sender: TObject);
    procedure dxBarAutorizar_ALMClick(Sender: TObject);
    procedure dxBarDesAutorizar_ALMClick(Sender: TObject);
    procedure dxBarConfALM_ALMClick(Sender: TObject);
    procedure dxBarEvalucacionComp_RHClick(Sender: TObject);
    procedure cxBarConfiguracion_INIClick(Sender: TObject);
    procedure dxCatalogoErrores_CONFClick(Sender: TObject);
    procedure dxResidencias_CONFClick(Sender: TObject);
    procedure dxAsignaUsuarios_CONFClick(Sender: TObject);
    procedure dxUsuarios_CONFClick(Sender: TObject);
    procedure dxConfCorreo_CONFClick(Sender: TObject);
    procedure dxPerfilUsuario_CONFClick(Sender: TObject);
    procedure dxHistorialMoto_CONFClick(Sender: TObject);
    procedure dxProgramaHora_CONFClick(Sender: TObject);
    procedure dxCambiarPassword_CONFClick(Sender: TObject);
    procedure dxBarConfMail_CONFClick(Sender: TObject);
    procedure dxBarIniciarSesionClick(Sender: TObject);
    procedure cxLimpiaClick(Sender: TObject);
    procedure dxImportaciones_CONFClick(Sender: TObject);
    procedure brnConfFirmantesClick(Sender: TObject);
    procedure dxBarOpcFirm_CONFClick(Sender: TObject);
    procedure dxBarRequisiciones2_ALMClick(Sender: TObject);
    procedure dxPlanta_ALMClick(Sender: TObject);
    procedure dxCompradores_ALMClick(Sender: TObject);
    procedure dxGerentesDepto_ALMClick(Sender: TObject);
    procedure dxBarIM_ALMClick(Sender: TObject);
    procedure dxAprobarRequerimientos_ALMClick(Sender: TObject);
    procedure dxRequerimientosControlCalidad_ALMClick(Sender: TObject);
    procedure dxBarSeguimientoReqs_ALMClick(Sender: TObject);
    procedure dxCentroC_ALMClick(Sender: TObject);
    procedure dxBarConcentradoRIM_ALMClick(Sender: TObject);
    procedure dxContratos_ALMClick(Sender: TObject);
    procedure dxOrdenTrabajo_ALMClick(Sender: TObject);
    procedure dxBarMPO_ALMClick(Sender: TObject);
    procedure dxBarTransito_ALMClick(Sender: TObject);
    procedure dxBarSolicitudDeMateriales_ALMClick(Sender: TObject);
    procedure dxBarOCEstatus_ALMClick(Sender: TObject);
    procedure dxCatalogos_RHClick(Sender: TObject);
    procedure dxBarEmpleados_RHClick(Sender: TObject);
    procedure dxPersonalProv_RHClick(Sender: TObject);
    procedure dxSalarios_RHClick(Sender: TObject);
    procedure dxBarDiasLaborados_RHClick(Sender: TObject);
    procedure dxBarGuardia_RHClick(Sender: TObject);
    procedure dxBarPeriodoGuardia_RHClick(Sender: TObject);
    procedure dxBarPersonalGuardia_RHClick(Sender: TObject);
    procedure dxBarPeriodoNom_RHClick(Sender: TObject);
    procedure dxBarPreNomina_RHClick(Sender: TObject);
    procedure dxNomina_RHClick(Sender: TObject);
    procedure dxBarSeguimientoPOE_ALMClick(Sender: TObject);
    procedure dxBarRevisiones_ALMClick(Sender: TObject);
    procedure dxBarVerificar_RHClick(Sender: TObject);
    procedure dxBar_AsistenciaMed_RHClick(Sender: TObject);
    procedure dxBarEntregaEPPClick(Sender: TObject);
    procedure dxBarEPPClick(Sender: TObject);
    procedure dxBarDevolucionEPPClick(Sender: TObject);
    procedure dxBarAsistenciaPersonalClick(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure btnMigrarReporteMtoClick(Sender: TObject);

private
  { Private declarations }
public
  { Public declarations }
  adentro: boolean;
  valTimerN:Boolean;
  loadNoty:Boolean;
  NumNotyfi:Integer;
  procedure permisosUsuModulos(bandera : byte);
  procedure InputBoxSetPasswordChar(var Msg: TMessage); message InputBoxMessage;
  procedure Notificame;
  procedure Notificaciones;
end;

const
  WM_UPDATESTATUS = WM_USER + 2;

var
  frmNoil_SS7: TfrmNoil_SS7;
  detectar: string;
  Letra: char;
  udc_activa:integer;
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
  frm_proveedores,
  frm_Almacenes,
  frm_valida,
  frm_turnos,
  frm_residencias,
  frm_programas,
  frm_Kardex, frm_setup,
  frm_cambiapassword,
  frm_activos, frm_seleccion2,
  frm_Pedidos,
  frm_EntradaAlmacen_SS7, frm_SalidaAlmacen_SS7,
  frm_AlmacenesporUsuario, frm_AlmacenesporContrato,
  frm_nuc_organizacion,
  frm_repositorio,
  Func_Genericas,
  frm_Presupuesto,
  utfrmdepartamentos,
  frm_catalogomodulos, frm_Modulosxusuario,
  frm_catalogoerrores, frm_abrereporte, frm_ordenes,
  frm_SetupAlm, frm_GruposPersonal,
  frm_montarespaldo,
  frm_Empresas, frm_tipos_nomina, frm_catalogos_almacen,
  frm_evaluacion,UnitGenerales,Frm_ProgramarHorarios,
  Unit1, frm_materiales_SS7,
  UFrmNotificaciones, UFrmConfigCorreo,
  frm_Documentos_Reportes,
  frm_AvisoEmbarque,
  frm_folios, Frm_CostoAlmacen,
  Frm_CotizacionP, frm_usuarios_proyectos, frm_configuraMail_mensajes,
  frm_GruposUsuarios, frm_Proyectos, frm_importaciondedatos,
  frm_AprobacionPagos, frm_FirmasNota,frm_Estatus_Requisiciones,
  frm_centroCosto, frm_opc_firmantes,frm_ApruebaRequisiciones,
  Frm_RequerimientosControlCalidad,Frm_requisicion_ss7,frm_Planta,frm_Compradores,
  frm_GerentesPorDepartamento,frm_InspeccionMateriales, frm_Pedidos_SAP,
  frm_Concentrado_InspeccionMat,frm_ContratoReq,frm_OrdenTrabajo,
  frm_NuevoIdioma,frm_MaterialesPO, frm_Transito,frm_SolicitudDeMateriales,
  frm_Pedidos_SAP_Estatus, frm_Catalogos_rh_tipos, frm_catalogo_empleados_ss7,
  frm_personal_prov, frm_salarios, frm_diaslaboradosSIANI, Frm_Asignar_Guardias,
  Frm_ConfGuardias, frm_guardias, frm_CatalogoNominas, Frm_PreNomina,
  Frm_Nomina, frm_Estatus_POEntradas, frm_RevisionesRequisicion,
  frm_VerificarSs7, FrmAsistenciaMedica, frm_verificar, Comobj, frm_valida_ss7,
  frm_abrereporte_ss7, frm_EntregaEquipo, frm_DevolucionEquipo,
  frm_AsistenciaPersonal,Frm_ConfBiometrico,Frm_MaterialXCategoria,frm_migrar_ordenes,
  frm_clientes;

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

procedure TfrmNoil_SS7.MosaicoHorizontal1Click(Sender: TObject);
begin
  frmNoil_SS7.TileModE := tbHorizontal;
  frmNoil_SS7.Tile;
end;

procedure TfrmNoil_SS7.MosaicoVertical1Click(Sender: TObject);
begin
  frmNoil_SS7.TileModE := tbVertical;
  frmNoil_SS7.Tile;
end;


procedure TfrmNoil_SS7.dxDepartamentos_RHClick(Sender: TObject);
begin
   If not mostrarformChild('frmDeptos', global_dxBarManagerPrincipal) Then
   begin
    global_btnPermisos := 'AreasDepartamentos';
     Application.CreateForm(TfrmDeptos, frmDeptos);
     frmDeptos.show;
   end;
end;

procedure TfrmNoil_SS7.FondoDblClick(Sender: TObject);
begin
    Fondo.Picture := cxColeccionesFondo.Items[Random( 6 )].Picture;
    Fondo.Refresh;
    frmNoil_SS7.Refresh;
end;

procedure TfrmNoil_SS7.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if lErrorIniciar = False then
  begin
      if MessageDlg('Esta seguro que desea salir completamente de la aplicación?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        application.Terminate
      else abort
  end;
end;

procedure TfrmNoil_SS7.FormCreate(Sender: TObject);
begin
  global_FormNoilPrincipal := frmNoil_SS7;
  global_dxBarManagerPrincipal := dxBarManager1;
  global_zScanner := zScanner;
  RegisterClasses([TfrmCatalogosAlmacen,TfrmAlmacenes,TfrmProveedores]);
  RegisterClasses([TfrmMateriales_SS7,TfrmDeptos,TFrmRequisicionss7,TfrmPedidos]);
  RegisterClasses([TfrmEntradaAlmacen_SS7,TfrmSalidaAlmacen_SS7,TfrmAvisoEmbarque,TfrmSetupAlm]);
  RegisterClasses([Tfrm_empresa]);
  RegisterClasses([TfrmUsuariosxproyectos,TfrmModulosxusuario,TfrmContratos,TfrmSetup,TfrmResidencias]);
  RegisterClasses([TfrmModulosxusuario,TfrmContratos,TfrmSetup,TfrmResidencias]);
  RegisterClasses([TfrmActivos,TfrmCatalogoModulos,TfrmUsuarios,TFrmConfigCorreo,TfrmGrupos,TfrmKardex]);
  RegisterClasses([TFrmProgramarH,TfrmCambioPassword,TfrmCatalogoErrores,TfrmFolios,TFrmNotificaciones]);
  RegisterClasses([TfrmValida,TfrmAbreReporte]);
end;

procedure TfrmNoil_SS7.FormDeactivate(Sender: TObject);
begin
  cxDBImage1.Visible := False;
end;

procedure TfrmNoil_SS7.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
  begin
    if RecargarConsultasSQL then
      MessageDlg('Información del sistema.'+#13+'Se ha cargado nuevamente las consultas sql y la tabla de validación automática a la memoria del sistema.',mtInformation,[mbOk],0);
  end;
end;

procedure TfrmNoil_SS7.FormShow(Sender: TObject);
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
      try
        GetFileVersionInfo(PChar(Application.ExeName), H, InfoSize, VersionBlock);
        VerQueryValue(VersionBlock, '\', Pointer(Rslt), RsltLen);
        Caption  := global_version;
        mnInicio.Active:=True;
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

      frmNoil_SS7.Caption := global_version + '  ['+Major_Version+'.'+Minor_Version+'.'+  Release_Version+'.'+Build_Version+ ' ]';

      {codigo de carmen parala imagen de fondo}
      detectar := global_ruta + 'image.ini';
      if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
        muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
      else
        escribeinidefault(detectar, 'bmCenter');

      HoraI:=Time;
      TimerAlert.Enabled:=True;
      frmNoil_SS7.permisosUsuModulos(100);

      NumNotyfi := 0;
      Notificaciones;
      //Notificame;

      TimerNot.Enabled := True;

      //zqImagen.SQL.Add('select g.Imagen from grupos as g where g.sIdGrupo = (select u.sIdGrupo from usuarios as u where u.sNombre = '+''''+global_nombre+''''+')');
      //zqImagen.Open;

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

procedure TfrmNoil_SS7.dxConfCorreo_CONFClick(Sender: TObject);
begin
    if not MostrarFormChild('frmConfigCorreo',global_dxBarManagerPrincipal) then
    begin
       global_btnPermisos := 'opConfigCorreo';
       Application.CreateForm(TFrmConfigCorreo, FrmConfigCorreo);
       FrmConfigCorreo.Show;
    end;
end;

procedure TfrmNoil_SS7.dxConfiguracion_CONFClick(Sender: TObject);
begin
   if not MostrarFormChild('frmSetup',global_dxBarManagerPrincipal) Then
   begin
      Application.CreateForm(TfrmSetup, frmSetup);
      frmSetup.Show;
   end;
end;

procedure TfrmNoil_SS7.dxContratos_ALMClick(Sender: TObject);
begin
if not MostrarFormChild('frmContratoReq',global_dxBarManagerPrincipal) Then
   begin
    global_cambioletrero := 10 ;
    global_btnPermisos := 'btnContratoReq';
    Application.CreateForm(TfrmContratoReq, frmContratoReq);
    frmContratoReq.show;

  end;
end;

procedure TfrmNoil_SS7.dxProyectoEmpresa_CONFClick(Sender: TObject);
begin
   if not MostrarFormChild('frmContratos',global_dxBarManagerPrincipal) Then
   begin
    global_cambioletrero := 10 ;
    global_btnPermisos := 'adContratos';
    Application.CreateForm(TfrmContratos, frmContratos);
    frmContratos.show;

  end;
end;

procedure TfrmNoil_SS7.adUsuariosClick(Sender: TObject);
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

procedure TfrmNoil_SS7.Cerrar_TodoClick(Sender: TObject);
begin
  CierraFormChild(frmNoil_SS7);
end;

procedure TfrmNoil_SS7.centrado1Click(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
    modofondo(fondo, 'bmCenter', detectar)
  else escribeinidefault(detectar, 'bmCenter');
end;

procedure TfrmNoil_SS7.cxButton1Click(Sender: TObject);
begin

  //if SplitView1.Opened then SplitView1.Close else begin
    TimerNotificador.Enabled:=False;
    cxButton1.Colors.DefaultText := clDefault;
    cxButton1.OptionsImage.ImageIndex := 55;
    NumNotyfi := 0;
    Notificaciones;
    //Notificame;
    //SplitView1.Open
  //end;

end;

procedure TfrmNoil_SS7.cxLimpiaClick(Sender: TObject);
var
   i,y,z : Byte;
   sNombre  : string;
   sLista : AnsiString;
   P : PChar;
   MenuPrincipal : tdxBarApplicationMenu;
begin
    for i := 0 to Application.ComponentCount -1 do
    begin
        if Application.Components[i] is tForm then
        begin
            if pos('frmNoil_',Application.Components[i].Name) > 0 then
            begin
               sNombre := Application.Components[i].Name;
               for y := 0 to Application.Components[i].Components[y].ComponentCount -1 do
               begin
                  if Application.Components[i].Components[y] is tdxBarApplicationMenu then
                  begin
                      MenuPrincipal := tdxBarApplicationMenu.Create(Self);
                      MenuPrincipal := (Application.Components[i].Components[y] as tdxBarApplicationMenu);
                      for z := 0 to MenuPrincipal.BarManager.ItemCount - 1 do
                      begin
                          if z < 10 then
                          sLista := sLista + 'insert into programas (sIdPrograma, sDescripcion,sIdIdioma,Esta) values ('+''+MenuPrincipal.BarManager.Items[z].Name+''+','+#39+MenuPrincipal.BarManager.Items[z].Caption+#39+','+#39+'ESP'+#39+','+#39+'No'+#39+'); ';
                      end;
                  end;
               end;
            end;
        end;

    end;

    AsignarSQL(connection.qryUBusca,'programas_elimina',pUpdate);
    connection.qryUBusca.ExecSQL;

    connection.qryUBusca.Active := False;
    connection.qryUBusca.SQL.Clear;
    connection.qryUBusca.SQL.Text := sLista;
    connection.qryUBusca.ExecSQL;

    MenuPrincipal.Free;
end;

procedure TfrmNoil_SS7.Cambiarimagendefondo1Click(Sender: TObject);
var pathimagen: string;
  Ini: TiniFile;
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';
  escribeini(detectar, OpenDialog1);
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
    muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
end;

procedure TfrmNoil_SS7.sLoginClick(Sender: TObject);
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

procedure TfrmNoil_SS7.sSalirClick(Sender: TObject);
begin
  close;
end;

procedure TfrmNoil_SS7.Cascada1Click(Sender: TObject);
begin
  frmNoil_SS7.Cascade;
end;

procedure TfrmNoil_SS7.catIdiomasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmNuevoIdioma',global_dxBarManagerPrincipal) Then
   begin
   global_btnPermisos := '';
    Application.CreateForm(TfrmNuevoIdioma, frmNuevoIdioma);
    frmNuevoIdioma.show;
  end;
end;

procedure TfrmNoil_SS7.mosaicoverticalClick(Sender: TObject);
begin
  frmNoil_SS7.TileModE := tbVertical;
  frmNoil_SS7.Tile;
end;

procedure TfrmNoil_SS7.Notificaciones;
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

procedure TfrmNoil_SS7.Notificame;
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

procedure TfrmNoil_SS7.mosaicohorizontalClick(Sender: TObject);
begin
  frmNoil_SS7.TileModE := tbHorizontal;
  frmNoil_SS7.Tile;
end;

procedure TfrmNoil_SS7.cambiarfondoClick(Sender: TObject);
  var pathimagen: string;
  Ini: TiniFile;
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';
  escribeini(detectar, OpenDialog1);
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
    muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
end;

procedure TfrmNoil_SS7.estiradoClick(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
      modofondo(fondo, 'bmStretch', detectar)
  else escribeinidefault(detectar, 'bmStretch');
end;


procedure TfrmNoil_SS7.centradoClick(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then modofondo(fondo, 'bmCenter', detectar)
  else escribeinidefault(detectar, 'bmCenter');
end;

procedure TfrmNoil_SS7.dxAlmacenes_ALMClick(Sender: TObject);
begin
    if not MostrarFormChild('frmAlmacenes',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := 'MnuAlmacen';
      Application.CreateForm(TfrmAlmacenes, frmAlmacenes);
      frmAlmacenes.Show;
    end;
end;

procedure TfrmNoil_SS7.dxAprobarRequerimientos_ALMClick(Sender: TObject);
begin
if not MostrarFormChild('frm_ApruebaRequisiciones',global_dxBarManagerPrincipal) Then
   begin
     Application.CreateForm(TfrmApruebaRequisiciones, frmApruebaRequisiciones);
     frmApruebaRequisiciones.show
   end;
end;

procedure TfrmNoil_SS7.dxAsignaUsuarios_CONFClick(Sender: TObject);
begin
   if not MostrarFormChild('frmUsuariosXproyectos',global_dxBarManagerPrincipal) Then
   begin
      global_btnPermisos := 'adUsuarios';
      Application.CreateForm(TfrmUsuariosxproyectos, frmUsuariosXproyectos);
      frmUsuariosXproyectos.show;
   end;
end;

procedure TfrmNoil_SS7.dxRequerimientosControlCalidad_ALMClick(Sender: TObject);
begin
if not MostrarFormChild('Frm_RequerimientosControlCalidad',global_dxBarManagerPrincipal) Then
   begin
      Application.CreateForm(TFrmRequerimientosControlCalidad, FrmRequerimientosControlCalidad);
      FrmRequerimientosControlCalidad.show
   end;
end;

procedure TfrmNoil_SS7.dxResidencias_CONFClick(Sender: TObject);
begin
   if not MostrarFormChild('frmResidencias',global_dxBarManagerPrincipal) Then
   begin
      global_btnPermisos := 'adResidencias';
      Application.CreateForm(TfrmResidencias, frmResidencias);
      frmResidencias.show;
   end;
end;

procedure TfrmNoil_SS7.dxCambiarPassword_CONFClick(Sender: TObject);
begin
    if not MostrarFormChild('frmcambiopassword',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := '';
      Application.CreateForm(TfrmCambioPassword, frmCambioPassword);
      frmcambiopassword.ShowModal
    end;
end;

procedure TfrmNoil_SS7.dxCatalogoErrores_CONFClick(Sender: TObject);
begin
  if not MostrarFormChild('frmCatalogoErrores',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmCatalogoErrores, frmCatalogoErrores);
    frmCatalogoErrores.show;
  end;
end;

procedure TfrmNoil_SS7.dxCatalogos_ALMClick(Sender: TObject);
begin
    if not mostrarFormChild('frmCatalogosAlmacen',global_dxBarManagerPrincipal) Then
    begin
       global_btnPermisos := 'btnCatGenMat';
       Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
       frmCatalogosAlmacen.show

    end;
end;

procedure TfrmNoil_SS7.dxCatalogos_RHClick(Sender: TObject);
begin
  if not mostrarFormChild('frmCatalogosRHTipos',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'dxCatalogos_RH';
    Application.CreateForm(TfrmCatalogosRHtipos, frmCatalogosRHTipos);
    frmCatalogosRHTipos.show
  end;
end;

procedure TfrmNoil_SS7.dxDepartamentos_ALMClick(Sender: TObject);
begin
     If not mostrarformChild('frmDeptos',global_dxBarManagerPrincipal) Then
     begin
       global_btnPermisos := '';
       global_btnPermisos := 'lbtDepto';
       Application.CreateForm(TfrmDeptos, frmDeptos);
       frmDeptos.show;
     end;
end;

procedure TfrmNoil_SS7.dxGerentesDepto_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('FrmGerentesPorDepartamento',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmGerentesPorDepartamento, frmGerentesPorDepartamento);
    frmGerentesPorDepartamento.show;
  end;
end;

procedure TfrmNoil_SS7.dxHistorialMoto_CONFClick(Sender: TObject);
begin
   if not MostrarFormChild('frmKardex',global_dxBarManagerPrincipal) Then
   begin
      global_btnPermisos := '';
      Application.CreateForm(TfrmKardex, frmKardex);
      frmKardex.Show;
   end;
end;

procedure TfrmNoil_SS7.dxImportaciones_CONFClick(Sender: TObject);
begin
  if not mostrarFormChild('frmImportaciondeDatos',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'btnImportaciondeDatos';
    Application.CreateForm(TfrmImportaciondeDatos, frmImportaciondeDatos);
    frmImportaciondeDatos.show
  end;
end;

procedure TfrmNoil_SS7.dxTiposNomina_RHClick(Sender: TObject);
begin
  if not mostrarFormChild('frmTiposNomina',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'btnTiposNomina';
    Application.CreateForm(TfrmTiposNomina, frmTiposNomina);
    frmTiposnomina.show
  end;
end;

procedure TfrmNoil_SS7.dxUsuarios_CONFClick(Sender: TObject);
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

procedure TfrmNoil_SS7.dxOrdenTrabajo_ALMClick(Sender: TObject);
begin
if not MostrarFormChild('FrmOrdenTrabajo',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnOrdenTrabajo';
    Application.CreateForm(TFrmOrdenTrabajo, FrmOrdenTrabajo);
    FrmOrdenTrabajo.show;
  end;
end;

procedure TfrmNoil_SS7.dxBarNotificaciones_CONFClick(Sender: TObject);
begin
  if not MostrarFormChild('FrmNotificaciones',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnNotificaciones';
    Application.CreateForm(TFrmNotificaciones, FrmNotificaciones);
    FrmNotificaciones.show;
  end;
end;

procedure TfrmNoil_SS7.dxBarAsistenciaPersonalClick(Sender: TObject);
begin

  if not MostrarFormChild('FrmAsistenciaPersonal',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TFrmAsistenciaPersonal, FrmAsistenciaPersonal);
    FrmAsistenciaPersonal.show;
  end;
end;

procedure TfrmNoil_SS7.dxBarAutofolios_CONFClick(Sender: TObject);
begin
  if not MostrarFormChild('frmFolios',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmFolios, frmFolios);
    frmFolios.show;
  end;
end;

procedure TfrmNoil_SS7.cxBarConfiguracion_INIClick(Sender: TObject);
begin
   if not MostrarFormChild('frmSetup',global_dxBarManagerPrincipal) Then
   begin
     Application.CreateForm(TfrmSetup, frmSetup);
     frmSetup.Show;
   end;
end;

procedure TfrmNoil_SS7.dxBarDiagramaSGC_INIClick(Sender: TObject);
begin
   cxDBImage1.Visible:=not cxDBImage1.Visible;
end;

procedure TfrmNoil_SS7.dxBarDiagramaSGC_RHClick(Sender: TObject);
begin
  cxDBImage1.Visible:=not cxDBImage1.Visible;
end;

procedure TfrmNoil_SS7.dxBarDiasLaborados_RHClick(Sender: TObject);
begin
  if not MostrarFormChild('frmDiasLaboradosSIANI',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarDiasLaborados_RH';
    Application.CreateForm(tfrmDiasLaboradosSIANI, frmDiasLaboradosSIANI);
    frmDiasLaboradosSIANI.show;
  end;
end;

procedure TfrmNoil_SS7.dxDoctoReporte_RHClick(Sender: TObject);
begin
  if not MostrarFormChild('FrmDocumentos_Reportes',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnDiasLaborados';
    Application.CreateForm(TFrmDocumentos_Reportes, FrmDocumentos_Reportes);
    FrmDocumentos_Reportes.show;
  end;
end;

procedure TfrmNoil_SS7.dxBarRecargaConsulta_CONFClick(Sender: TObject);
begin
  if RecargarConsultasSQL then
      MessageDlg('Información del sistema.'+#13+'Se han Actualizados las consultas SQL!.',mtInformation,[mbOk],0);

end;

procedure TfrmNoil_SS7.brnConfFirmantesClick(Sender: TObject);
begin
  if not MostrarFormChild('frmFirmasNota',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'frmFirmasNota';
    Application.CreateForm(TfrmFirmasNota, frmFirmasNota);
    frmFirmasNota.Show;
  end;
end;

procedure TfrmNoil_SS7.btnMigrarReporteMtoClick(Sender: TObject);
begin
    if not MostrarFormChild('frmMigrar_ordenes',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := '';
      Application.CreateForm(TfrmMigrar_ordenes, frmMigrar_ordenes);
      frmMigrar_ordenes.show;
    end;

end;

procedure TfrmNoil_SS7.dxPerfilUsuario_CONFClick(Sender: TObject);
begin
    if not MostrarFormChild('frmGrupos',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := '';
      Application.CreateForm(TfrmGrupos, frmGrupos);
      frmGrupos.show;
    end;
end;

procedure TfrmNoil_SS7.dxPersonalProv_RHClick(Sender: TObject);
begin
  if not mostrarFormChild('frmPersonalProv',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos:= 'dxPersonalProv_RH';
     Application.CreateForm(TfrmPersonalProv, frmPersonalProv);
     frmPersonalProv.show;
  end;
end;

procedure TfrmNoil_SS7.dxPlanta_ALMClick(Sender: TObject);
begin
if not MostrarFormChild('frmPlanta',global_dxBarManagerPrincipal) Then
    begin
      Application.CreateForm(TfrmPlanta, frmPlanta);
      frmPlanta.Show;
    end;
end;

procedure TfrmNoil_SS7.dxBarAutorizar_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('frmValida_ss7',global_dxBarManagerPrincipal) then
   begin
     global_btnPermisos := 'tbbAutorizaAlm';
     Application.CreateForm(TfrmValida_ss7, frmValida_ss7);
     frmValida_ss7.show;
   end;
end;

procedure TfrmNoil_SS7.dxBarButton4Click(Sender: TObject);
begin
   if not MostrarFormChild('FrmConfBiometrico',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TFrmConfBiometrico, FrmConfBiometrico);
    FrmConfBiometrico.show;
  end;
end;

procedure TfrmNoil_SS7.dxCompradores_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('FrmCompradores',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmCompradores, frmCompradores);
    frmCompradores.show;
  end;
end;

procedure TfrmNoil_SS7.dxCentroC_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('FrmCtrCosto',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmCentroCosto, frmCentroCosto);
    frmCentroCosto.show;
  end;
end;

procedure TfrmNoil_SS7.dxBarConcentradoRIM_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('FrmConcentrado_InspeccionMat',global_dxBarManagerPrincipal) Then
   begin
     global_btnPermisos := 'dxBarIM_ALM';
     Application.CreateForm(TFrmConcentrado_InspeccionMat, FrmConcentrado_InspeccionMat);
     FrmConcentrado_InspeccionMat.show
   end;
end;

procedure TfrmNoil_SS7.dxBarConfALM_ALMClick(Sender: TObject);
begin
   If not MostrarFormChild('frmSetupAlm',global_dxBarManagerPrincipal) Then
   begin
      global_btnPermisos := '';
      Application.CreateForm(TfrmSetupAlm, frmSetupAlm);
      frmSetupAlm.Show ;
   end;
end;

procedure TfrmNoil_SS7.dxBarDesAutorizar_ALMClick(Sender: TObject);
begin
   if not mostrarFormChild('frmAbreReporte',global_dxBarManagerPrincipal) then
   begin
     Application.CreateForm(TfrmAbreReporte_ss7, frmAbreReporte_ss7);
     frmAbreReporte_ss7.show;
   end;
end;

procedure TfrmNoil_SS7.dxBarEmbarque_ALMClick(Sender: TObject);
begin
  global_btnPermisos := 'opAvisodeEmb';
  if not MostrarFormChild('frmAvisoEmbarque',global_dxBarManagerPrincipal) Then
  begin
    Application.CreateForm(TfrmAvisoEmbarque, frmAvisoEmbarque);
    frmAvisoEmbarque.Show;
  end;
end;

procedure TfrmNoil_SS7.dxBarEmpleados_RHClick(Sender: TObject);
begin
    if not mostrarFormChild('frmCatalogoEmpleados',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := 'dxBarEmpleados_RH';
      Application.CreateForm(TfrmCatalogoEmpleados_ss7, frmCatalogoEmpleados_ss7);
      frmCatalogoEmpleados_ss7.show;
    end;
end;

procedure TfrmNoil_SS7.dxBarEntradaAlmacen_ALMClick(Sender: TObject);
begin
     if not MostrarFormChild('frmEntradaAlmacen',global_dxBarManagerPrincipal) then
     begin
        global_btnPermisos := 'MnuEntAlmace';
        Application.CreateForm(TfrmEntradaAlmacen_SS7, frmEntradaAlmacen_SS7);
        frmEntradaAlmacen_SS7.show ;
     end;
end;

procedure TfrmNoil_SS7.dxBarEvalucacionComp_RHClick(Sender: TObject);
begin
  if not mostrarFormChild('frmEvaluacion',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'btnEvaluaInicial';
    Application.CreateForm(TfrmEvaluacion, frmEvaluacion);
    frmEvaluacion.show
  end;
end;

procedure TfrmNoil_SS7.dxBarGuardia_RHClick(Sender: TObject);
begin
  if not MostrarFormChild('FrmAsignarGuardias',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'dxBarGuardia_RH';
    Application.CreateForm(TFrmAsignarGuardias, FrmAsignarGuardias);
    FrmAsignarGuardias.show;
  end;
end;

procedure TfrmNoil_SS7.dxBarSeguimientoPOE_ALMClick(Sender: TObject);
begin
    if not MostrarFormChild('frmEstatus_PO/Entradas',global_dxBarManagerPrincipal) then
   begin
     Application.CreateForm(TfrmEstatus_POEntradas, frmEstatus_POEntradas);
     frmEstatus_POEntradas.show;
  end;
end;

procedure TfrmNoil_SS7.dxBarSeguimientoReqs_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('frmEstatus_Requisiciones',global_dxBarManagerPrincipal) then
   begin
     Application.CreateForm(TfrmEstatus_Requisiciones, frmEstatus_Requisiciones);
     frmEstatus_Requisiciones.show;
  end;
end;

procedure TfrmNoil_SS7.dxBarMateriales_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('frmMateriales',global_dxBarManagerPrincipal) then
   begin
      global_btnPermisos  := 'btnMatCompras';
      Application.CreateForm(TfrmMateriales_SS7, frmMateriales_SS7);
      frmMateriales_SS7.Show;
   end;
end;

procedure TfrmNoil_SS7.dxBarMPO_ALMClick(Sender: TObject);
begin
if not MostrarFormChild('FrmMaterialesPO',global_dxBarManagerPrincipal) Then
   begin
     global_btnPermisos := 'dxBarMPO_ALM';
     Application.CreateForm(TFrmMaterialesPO, FrmMaterialesPO);
     FrmMaterialesPO.show
   end;
end;

procedure TfrmNoil_SS7.dxBarOCEstatus_ALMClick(Sender: TObject);
begin
      if not MostrarFormChild('frmPedidos_SAP_Estatus',global_dxBarManagerPrincipal) Then
     begin
       global_btnPermisos := 'dxBarOCEstatus_ALM';
       Application.CreateForm(TfrmPedidos_SAP_Estatus, frmPedidos_SAP_Estatus);
       frmPedidos_SAp_Estatus.show;
     end;
end;

procedure TfrmNoil_SS7.dxBarOC_ALMClick(Sender: TObject);
begin
     if not MostrarFormChild('frmPedidos',global_dxBarManagerPrincipal) Then
     begin
       global_btnPermisos := 'opPedidos';
       Application.CreateForm(TfrmPedidos_SAP, frmPedidos_SAP);
       frmPedidos_SAp.show;
     end;
end;

procedure TfrmNoil_SS7.dxBarOpcFirm_CONFClick(Sender: TObject);
begin
  if not MostrarFormChild('frmOpcFirmantes',global_dxBarManagerPrincipal) Then
   begin
      global_btnPermisos := 'dxBarOpcFirm_CONF';
      Application.CreateForm(TfrmOpcFirmantes, frmOpcFirmantes);
      frmOpcFirmantes.show
   end;
end;

procedure TfrmNoil_SS7.dxBarPeriodoGuardia_RHClick(Sender: TObject);
begin
  if not MostrarFormChild('FrmConfGuardias',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'dxBarPeriodoGuardia_RH';
    Application.CreateForm(TFrmConfGuardias, FrmConfGuardias);
    FrmConfGuardias.show;
  end;
end;

procedure TfrmNoil_SS7.dxBarPeriodoNom_RHClick(Sender: TObject);
begin
   if not MostrarFormChild('FrmCatalogoNominas',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos  := 'dxBarPeriodoNom_RH';
    Application.CreateForm(TFrmCatalogoNominas, FrmCatalogoNominas);
    FrmCatalogoNominas.Show;
  end;
end;


procedure TfrmNoil_SS7.dxBarPersonalGuardia_RHClick(Sender: TObject);
begin
  if not MostrarFormChild('FrmGuardias',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'dxBarPersonalGuardia_RH';
    Application.CreateForm(TFrmGuardias, FrmGuardias);
    FrmGuardias.show;
  end;
end;

procedure TfrmNoil_SS7.dxBarPreNomina_RHClick(Sender: TObject);
begin
 if not MostrarFormChild('FrmPreNomina',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarPreNomina_RH';
    Application.CreateForm(TFrmPreNomina, FrmPreNomina);
    FrmPreNomina.show;
  end;
end;

procedure TfrmNoil_SS7.dxBarRequisiciones2_ALMClick(Sender: TObject);
begin
if not MostrarFormChild('frm_requisicion_ss7',global_dxBarManagerPrincipal) Then
   begin
     Application.CreateForm(TFrmRequisicionss7, FrmRequisicionss7);
     FrmRequisicionss7.show
   end;
end;

procedure TfrmNoil_SS7.dxBarRequisiciones_ALMClick(Sender: TObject);
begin
if not MostrarFormChild('FrmRequisicionss7',global_dxBarManagerPrincipal) Then
   begin
     //global_btnPermisos := 'dxBarRequisiciones_ALM';
     Application.CreateForm(TFrmRequisicionss7, FrmRequisicionss7);
     FrmRequisicionss7.show
   end;
end;

procedure TfrmNoil_SS7.dxBarRevisiones_ALMClick(Sender: TObject);
begin
   If not MostrarFormChild('FrmRevisionesRequisiciones',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := 'MnuSalAlmacen';
      Application.CreateForm(TFrmRevisionesRequisiciones, FrmRevisionesRequisiciones);
      FrmRevisionesRequisiciones.show
    end;
end;

procedure TfrmNoil_SS7.dxBarSalidaAlmacen_ALMClick(Sender: TObject);
begin
    If not MostrarFormChild('frmSalidaAlmacen',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := 'MnuSalAlmacen';
      Application.CreateForm(TfrmSalidaAlmacen_SS7, frmSalidaAlmacen_SS7);
      frmSalidaAlmacen_SS7.show
    end;
end;

procedure TfrmNoil_SS7.dxMateriales_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('frmMateriales',global_dxBarManagerPrincipal) then
   begin
      global_btnPermisos  := 'btnMateriales';
      Application.CreateForm(TfrmMateriales_SS7, frmMateriales_SS7);
      frmMateriales_SS7.Show;
   end;
end;

procedure TfrmNoil_SS7.dxProgramaHora_CONFClick(Sender: TObject);
begin
   if not mostrarFormChild('FrmProgramarH',global_dxBarManagerPrincipal) Then
   begin
      global_btnPermisos := '';
      Application.CreateForm(TFrmProgramarH, FrmProgramarH);
      FrmProgramarH.show;
   end;
end;

procedure TfrmNoil_SS7.dxProveedores_ALMClick(Sender: TObject);
begin
     if not mostrarFormChild('frmProveedores',global_dxBarManagerPrincipal) then
     begin
       global_btnPermisos:= 'btnProveedor';
       Application.CreateForm(TfrmProveedores, frmProveedores);
       frmProveedores.show
     end;
end;

procedure TfrmNoil_SS7.dxProyectos_ALMClick(Sender: TObject);
begin
    if not mostrarFormChild('frmPresupuesto',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos:= 'btnFolios';
       Application.CreateForm(TfrmProyectos, frmProyectos);
       frmProyectos.show;
    end ;
end;

procedure TfrmNoil_SS7.dxRibbonGalleryItem1Group2Item10Click(Sender: TObject);
begin
  close;
end;
procedure TfrmNoil_SS7.dxRibbonGalleryItem1Group2Item2Click(Sender: TObject);
var pathimagen: string;
  Ini: TiniFile;
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';
  escribeini(detectar, OpenDialog1);
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then
    muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
end;

procedure TfrmNoil_SS7.dxRibbonGalleryItem1Group2Item8Click(Sender: TObject);
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

procedure TfrmNoil_SS7.dxRibbonGalleryItem1Group2Item9Click(Sender: TObject);
begin
  frmSeleccion2.showModal;

end;

procedure TfrmNoil_SS7.dxSalarios_RHClick(Sender: TObject);
begin
  if not MostrarFormChild('frmSalarios',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxSalarios_RH';
    Application.CreateForm(TFrmSalarios, frmSalarios);
    frmSalarios.show;
  end;
end;

procedure TfrmNoil_SS7.dxSkinChooserGalleryItem1SkinChanged(Sender: TObject;const ASkinName: string);
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

procedure TfrmNoil_SS7.estirado1Click(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar, mNoil, dxSkinController1, dxTabbedMDIManager1, dxDockingManager1, cxLookAndFeelController1, dxAlertWindowManager1) <> 'no' then modofondo(fondo, 'bmStretch', detectar)
  else escribeinidefault(detectar, 'bmStretch');
  fondo.Stretch:=True;
end;

procedure TfrmNoil_SS7.ControldeGuardias1Click(Sender: TObject);
begin
;
end;

procedure TfrmNoil_SS7.dxBarIM_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('FrmInspeccionMateriales',global_dxBarManagerPrincipal) Then
   begin
     global_btnPermisos := 'dxBarConcentradoRIM_ALM';
     Application.CreateForm(TFrmInspeccionMateriales, FrmInspeccionMateriales);
     FrmInspeccionMateriales.show
   end;
end;

procedure TfrmNoil_SS7.dxBarIniciarSesionClick(Sender: TObject);
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



procedure TfrmNoil_SS7.dxBarLargeButton4Click(Sender: TObject);
begin
  if not MostrarFormChild('FrmMaterialXCategoria',global_dxBarManagerPrincipal) then
   begin

    Application.CreateForm(TFrmMaterialXCategoria,FrmMaterialXCategoria);
    FrmMaterialXCategoria.show
   end;
end;

procedure TfrmNoil_SS7.dxBarDevolucionEPPClick(Sender: TObject);
begin
if not MostrarFormChild('frmDevolucionEquipo',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos  := 'dxBarDevolucionEPP';
    Application.CreateForm(TfrmDevolucionEquipo, frmDevolucionEquipo);
    frmDevolucionEquipo.show
   end;
end;

procedure TfrmNoil_SS7.dxBarEntregaEPPClick(Sender: TObject);
begin
   if not MostrarFormChild('frmEntregaEquipo',global_dxBarManagerPrincipal) then
   begin
    global_btnPermisos  := 'dxBarEntregaEPP';
    Application.CreateForm(TfrmEntregaEquipo, frmEntregaEquipo);
    frmEntregaEquipo.show
   end;
end;

procedure TfrmNoil_SS7.dxBarEPPClick(Sender: TObject);
begin
   if not MostrarFormChild('frmMateriales_SS7',global_dxBarManagerPrincipal) then
   begin
      global_btnPermisos  := 'dxBarEPP';
      Application.CreateForm(TfrmMateriales_SS7, frmMateriales_SS7);
      frmMateriales_SS7.Caption := 'Insumos / Materiales Seguridad' ;
      frmMateriales_SS7.Show;
   end;
end;

procedure TfrmNoil_SS7.dxBar_AsistenciaMed_RHClick(Sender: TObject);
var
  pwd : String;
  objNBioBSP    : variant;
begin
  If not mostrarformChild('FrmAsistenciaMed', global_dxBarManagerPrincipal) Then
   begin
    global_btnPermisos := 'dxBar_AsistenciaMed_RH';
     Application.CreateForm(TFrmAsistenciaMed, FrmAsistenciaMed);
     FrmAsistenciaMed.show;
   end;

// try
//     UDMConection.ReloadQuerys
//   except
//      ;
//   end;
//  try
//   objNBioBSP := CreateOleObject('NBioBSPCOM.NBioBSP');
//   if not MostrarFormChild('FrmVerificar',global_dxBarManagerPrincipal) then
//   begin
//    global_btnPermisos := '';
//    Application.CreateForm(TFrmVerificar, FrmVerificar);
//    FrmVerificar.showModal;
//   end;
//  except
//   ShowMessage('Verificar conexion de biometrico');
//  end;
end;

procedure TfrmNoil_SS7.dxBarSolicitudDeMateriales_ALMClick(Sender: TObject);
begin
If not mostrarformChild('frmSolicitudDeMateriales', global_dxBarManagerPrincipal) Then
   begin
    global_btnPermisos := 'SolicitudDeMateriales';
     Application.CreateForm(TfrmSolicitudDeMateriales, frmSolicitudDeMateriales);
     frmSolicitudDeMateriales.show;
   end;
end;

procedure TfrmNoil_SS7.dxBarTransito_ALMClick(Sender: TObject);
begin
   if not MostrarFormChild('frmTransito',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxBarTransito_ALM';
    Application.CreateForm(TfrmTransito, frmTransito);
    frmTransito.show;

  end;
end;

procedure TfrmNoil_SS7.dxBarVerificar_RHClick(Sender: TObject);
var
  pwd : String;
  objNBioBSP    : variant;
begin
   if not MostrarFormChild('FrmVerificarSs7',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnConfiguraMail';
    Application.CreateForm(TFrmVerificarSs7, FrmVerificarSs7);
    FrmVerificarSs7.show;

  end;


//   try
//     UDMConection.ReloadQuerys
//   except
//      ;
//   end;
//  try
//   objNBioBSP := CreateOleObject('NBioBSPCOM.NBioBSP');
//   if not MostrarFormChild('FrmVerificar',global_dxBarManagerPrincipal) then
//   begin
//    global_btnPermisos := '';
//    Application.CreateForm(TFrmVerificar, FrmVerificar);
//    FrmVerificar.showModal;
//   end;
//  except
//   ShowMessage('Verificar conexion de biometrico');
//  end;
end;

procedure TfrmNoil_SS7.dxBarConfMail_CONFClick(Sender: TObject);
begin
  if not MostrarFormChild('frmConfiguraMail_mensajes',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'btnConfiguraMail';
    Application.CreateForm(TfrmConfiguraMail_mensajes, frmConfiguraMail_mensajes);
    frmConfiguraMail_mensajes.show;

  end;
end;

procedure TfrmNoil_SS7.AcoplarDesacoplarClick(Sender: TObject);
begin
  if dxTabbedMDIManager1.Active then   //Si el componente tiene activa la propiedad
    dxTabbedMDIManager1.Active    := false   //Desacopla las ventanas
  else dxTabbedMDIManager1.Active := True; //Si esta desactivado las acopla al mdi
end;

procedure TfrmNoil_SS7.dxEmpresa_RHClick(Sender: TObject);
begin
  If not mostrarFormChild('frm_empresa',global_dxBarManagerPrincipal) Then
   begin
      global_btnPermisos := 'Organizacion1';
      Application.CreateForm(Tfrm_empresa, frm_empresa);
      frm_empresa.show;
   end;
end;

procedure TfrmNoil_SS7.permisosUsuModulos(bandera: byte);
var
  Component : TdxBarLargeButton;
  Component1:      TdxBarButton;
  Component2 : TdxRibbonTab;
  iElemento : Integer;
  gener     : TComponent ;
  sPrograma :  string;
begin
  for iElemento := 0 to frmNoil_SS7.ComponentCount - 1 do
  begin
    if frmNoil_SS7.Components[iElemento].ClassName = 'TdxBarLargeButton' then
     begin
       Component := frmNoil_SS7.Components[iElemento] as TdxBarLargeButton;
       if ((Component.Tag <> 100) ) then
       begin
         Component.Enabled := False ;
         Component.Visible := ivNever;
       end;
     end;

    if frmNoil_SS7.Components[iElemento].ClassName = 'TdxBarButton' then
     begin
       Component1 := frmNoil_SS7.Components[iElemento] as TdxBarButton;
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
        gener := frmNoil_SS7.FindComponent(Connection.zModulosPermisos.FieldByName('sIdPrograma').AsString) ;
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

    for iElemento := 0 to frmNoil_SS7.ComponentCount - 1 do
    begin
      if frmNoil_SS7.Components[iElemento].ClassName = 'TdxRibbonTab' then
       begin

         Component2 := frmNoil_SS7.Components[iElemento] as TdxRibbonTab;
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
procedure TfrmNoil_SS7.FormResize(Sender: TObject);
begin
  if frmNoil_SS7.Height<600 then frmNoil_SS7.Height:=600;
  if frmNoil_SS7.Width<800 then frmNoil_SS7.Width:=800;
end;

procedure TfrmNoil_SS7.InputBoxSetPasswordChar(var Msg: TMessage);
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

procedure TfrmNoil_SS7.sCambiaPClick(Sender: TObject);
begin
   if not MostrarFormChild('frmcambiopassword',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := '';
      Application.CreateForm(TfrmCambioPassword, frmCambioPassword);
      frmcambiopassword.ShowModal
    end;
end;

procedure TfrmNoil_SS7.opPedidosClick(Sender: TObject);
begin
  if not MostrarFormChild('frmPedidos',global_dxBarManagerPrincipal) Then
   begin
     global_btnPermisos := 'opPedidos';
     Application.CreateForm(TfrmPedidos, frmPedidos);
     frmPedidos.show
   end;
end;

procedure TfrmNoil_SS7.TimerNotificadorTimer(Sender: TObject);
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

procedure TfrmNoil_SS7.TimerNotTimer(Sender: TObject);
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

procedure TfrmNoil_SS7.ActivarBiometrico;
var
  tem:TUniquery;
begin
//  tem:=TUniQuery.Create(Self);
//  tem.Connection:=connection.Uconnection;
//  tem.Active:=False;
//  tem.SQL.Text:='SELECT BiometricoActivo FROM configuracion';
//  tem.Open;
//  if tem.FieldByName('BiometricoActivo').AsString <> 'Si' then
//  begin
//    dxBarVerificar_RH.Visible:=ivNever;
//  end
//  else
//  begin
//    dxBarVerificar_RH.Visible:=ivAlways;
//  end;

end;

procedure TfrmNoil_SS7.dxActivos_CONFClick(Sender: TObject);
begin
    if not MostrarFormChild('frmActivos',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := 'adActivos';
      Application.CreateForm(TfrmActivos, frmActivos);
      frmActivos.show;
    end;
end;

procedure TfrmNoil_SS7.MnuSalAlmacenClick(Sender: TObject);
begin
 If not MostrarFormChild('frmSalidaAlmacen',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := 'MnuSalAlmacen';
    Application.CreateForm(TfrmSalidaAlmacen_SS7, frmSalidaAlmacen_SS7);
    frmSalidaAlmacen_SS7.show
  end;
end;

procedure TfrmNoil_SS7.mnuEmpresaClick(Sender: TObject);
begin
  If not mostrarFormChild('frm_empresa',global_dxBarManagerPrincipal) Then
   begin
      global_btnPermisos := 'mnuEmpresa';
      Application.CreateForm(Tfrm_empresa, frm_empresa);
      frm_empresa.show;
   end;
end;

procedure TfrmNoil_SS7.mnuEmpresasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmcontratos',global_dxBarManagerPrincipal) then
  begin
    global_cambioletrero := 20 ;
    global_btnPermisos := '';
    Application.CreateForm(TfrmContratos, frmContratos);
    frmContratos.show;
  end;
end;

procedure TfrmNoil_SS7.AsignacindeAlmacenesaUsuarios1Click(Sender: TObject);
begin
if not MostrarFormChild('frmalmacenesporusuario',global_dxBarManagerPrincipal) Then
   begin
    global_btnPermisos := '';
     Application.CreateForm(Tfrmalmacenesporusuario, frmalmacenesporusuario);
     frmalmacenesporusuario.show;
  end;
end;

procedure TfrmNoil_SS7.mnu2Click(Sender: TObject);
begin
  if not MostrarFormChild('frmAlmacenesPorContrato',global_dxBarManagerPrincipal) Then
   begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmAlmacenesPorContrato, frmAlmacenesPorContrato);
    frmAlmacenesPorContrato.Show;
  end;
end;

procedure TfrmNoil_SS7.mnuAgrupacionPClick(Sender: TObject);
begin
    if not MostrarFormChild('frmGruposPersonal',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := '';
      Application.CreateForm(TfrmGruposPersonal, frmGruposPersonal);
      frmGruposPersonal.Show
    end;
end;

procedure TfrmNoil_SS7.MnuAlmacenClick(Sender: TObject);
begin
   if not MostrarFormChild('frmAlmacenes',global_dxBarManagerPrincipal) Then
    begin
      global_btnPermisos := 'MnuAlmacen';
      Application.CreateForm(TfrmAlmacenes, frmAlmacenes);
      frmAlmacenes.Show;
    end;
end;

procedure TfrmNoil_SS7.dxBarSelecciona_INIClick(Sender: TObject);
begin
  if ValidaChildAbierto(frmNoil_SS7) > 0 then
  begin
    if MSG_YN('Si cambia de empresa se cerraran todas las ventanas desea continuar?') then
    begin
      CierraFormChild(frmNoil_SS7);
    end;
  end;
  adentro  := True;

  frmSeleccion2.fin := False;
  frmSeleccion2.showModal;
  NumNotyfi := 0;

  frmNoil_SS7.permisosUsuModulos(100);
  Notificaciones;

end;

procedure TfrmNoil_SS7.dxModulos_CONFClick(Sender: TObject);
begin
   if not MostrarFormChild('frmCatalogoModulos',global_dxBarManagerPrincipal) Then
   begin
      global_btnPermisos := 'btnModulos';
      Application.CreateForm(TfrmCatalogoModulos, frmCatalogoModulos);
      frmCatalogoModulos.show;
   end;
end;

procedure TfrmNoil_SS7.dxNomina_RHClick(Sender: TObject);
begin
  if not MostrarFormChild('FrmNomina',global_dxBarManagerPrincipal) then
  begin
    global_btnPermisos := 'dxNomina_RH';
    Application.CreateForm(TFrmNomina, FrmNomina);
    FrmNomina.show;
  end;
end;

procedure TfrmNoil_SS7.cascadaClick(Sender: TObject);
begin
  frmNoil_SS7.Cascade;
end;

end.


