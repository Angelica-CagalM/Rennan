unit frm_RevisionesRequisicion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Math, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxDBLookupComboBox, dxBarBuiltInMenu, dxLayoutContainer, dxLayoutControl,
  cxPC, frm_barraH2, cxSplitter, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxProgressBar, Vcl.StdCtrls, cxButtons, cxLabel, frm_barraH1, Vcl.ExtCtrls,
  global, UnitGenerales, MemDS, DBAccess, Uni,
  dxLayoutcxEditAdapters, cxDBEdit, cxCheckBox, cxGroupBox, cxRadioGroup,
  cxMemo, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxMaskEdit, cxCalendar,
  cxTextEdit, frxClass, frxDBSet, UnitValidaTexto, UnitExcepciones,
  Vcl.ComCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.DBCtrls,
  UnitValidacion, Utilerias, ExportaExcel, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, dxLayoutControlAdapters, cxGridChartView, cxGridDBChartView, UnitReportes,
  dxToggleSwitch, dxDBToggleSwitch,  ExcelXP, ComObj, Excel2000, unitExcel,
  frxExportPDF, cxCheckGroup, cxDBCheckGroup, cxCalc, cxCheckListBox,
  cxDBExtLookupComboBox, Vcl.OleServer, frxExportMail, frxExportXLS,
  frxExportXML, frxExportDBF, dxCore, cxDateUtils, cxImageComboBox,
  Winapi.ShlObj, cxShellCommon, dxBreadcrumbEdit, dxShellBreadcrumbEdit,
  cxListView, cxShellListView, cxCurrencyEdit, ShellApi,  UnitEnviarEmail,
  IdAttachmentFile, IdMessage, idSmtp,IdSMTPBase,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,IdSSLOpenSSLHeaders,
  IdExplicitTLSClientServerBase,IdTCPConnection, IdTCPClient,
  IdMessageClient, IdIOHandler,IdComponent;

type
  TFrmRevisionesRequisiciones = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    dsDepartamento: TDataSource;
    zDepartamento: TUniQuery;
    anexo_requisicion: TUniQuery;
    dsRequisicion: TDataSource;
    ds_anexo_prequisicion: TDataSource;
    anexo_prequisicion: TUniQuery;
    PopupPrincipal: TPopupMenu;
    N5: TMenuItem;
    SeguimientoMaterialxPartidasdeAnexo1: TMenuItem;
    N6: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    reporte: TUniQuery;
    frxDBRequisicion: TfrxDBDataset;
    frxEntrada: TfrxReport;
    OpenXLS: TOpenDialog;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
    Qordenes_trabajo: TUniQuery;
    ds_ordenes_trabajo: TDataSource;
    zGrafica: TUniQuery;
    dsGrafica: TDataSource;
    zReporteDetalle: TUniQuery;
    zCentroCosto: TUniQuery;
    dsCentroCosto: TDataSource;
    zRecurso: TUniQuery;
    ds_Recurso: TDataSource;
    ds_firma: TDataSource;
    zFirma: TUniQuery;
    plataforma: TUniQuery;
    ds_plataforma: TDataSource;
    zApruebaRequisicion: TUniQuery;
    dsApruebaRequisicion: TDataSource;
    cxSAP: TcxButton;
    SaveDialog1: TSaveDialog;
    frxPDFExport1: TfrxPDFExport;
    dsPlanta: TDataSource;
    uPlanta: TUniQuery;
    PanelPrincipal: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    tiFolio: TcxDBTextEdit;
    dxDBToggleSwitch1: TdxDBToggleSwitch;
    tsDepartamento: TcxDBLookupComboBox;
    tsNumeroOrden: TcxDBLookupComboBox;
    tdidFecha: TcxDBDateEdit;
    tdIdFecha2: TcxDBDateEdit;
    cxManagerAprobador: TcxDBLookupComboBox;
    cxProcurementSpecialist: TcxDBMemo;
    tmComentarios: TcxDBMemo;
    tsSolicitante: TcxDBTextEdit;
    cbRecurso: TcxDBLookupComboBox;
    cxSAPRelease: TcxDBLookupComboBox;
    tsLugarEntrega: TcxDBLookupComboBox;
    cxUploadingPoint: TcxDBMemo;
    cxQAprobador: TcxDBLookupComboBox;
    cxPreferredSupplier: TcxDBMemo;
    cxPlanta: TcxDBLookupComboBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    cxSplitter1: TcxSplitter;
    grid_requsicion: TcxGrid;
    cxView_Requsicion: TcxGridDBTableView;
    cxView_RequsicionColumn1: TcxGridDBColumn;
    cxView_RequsicionColumn3: TcxGridDBColumn;
    cxView_RequsicionColumn10: TcxGridDBColumn;
    cxView_RequsicionColumn2: TcxGridDBColumn;
    cxView_RequsicionColumn8: TcxGridDBColumn;
    cxView_RequsicionColumn9: TcxGridDBColumn;
    colum_comentarios: TcxGridDBColumn;
    grid_requsicionLevel1: TcxGridLevel;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    cxPageDetalle: TcxPageControl;
    cxTabMaterial: TcxTabSheet;
    cxGridMateriales: TcxGrid;
    cxView_Materiales: TcxGridDBTableView;
    cxView_MaterialesColumn1: TcxGridDBColumn;
    cxView_MaterialesColumn2: TcxGridDBColumn;
    cxView_MaterialesColumn3: TcxGridDBColumn;
    cxView_MaterialesColumn4: TcxGridDBColumn;
    cxView_MaterialesColumn7: TcxGridDBColumn;
    cxGridMaterialesLevel1: TcxGridLevel;
    tabInformes: TcxTabSheet;
    PanelInferiorInforme: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid1Level1: TcxGridLevel;
    cxSplitInforme: TcxSplitter;
    PanelSuperiorInforme: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    opcionImprimir: TcxRadioGroup;
    btnImpInforme: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    cxEliminarDetalle: TcxButton;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    dsGrupoMaterial: TDataSource;
    uGrupoMaterial: TUniQuery;
    uRequerimientosQA: TUniQuery;
    dsRequerimientosQA: TDataSource;
    uGerentes: TUniQuery;
    dsGerentes: TDataSource;
    uOrdenesTrabajo: TUniQuery;
    dsOrdenesTrabajo: TDataSource;
    MarcarcomoConsumible1: TMenuItem;
    AsignarCdigoMaterial1: TMenuItem;
    zdepC: TUniQuery;
    ds_depC: TDataSource;
    cxImportar: TcxButton;
    TsArchivo: TcxTextEdit;
    PanelProgreso: TPanel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;

    cxView_RequsicionColumn11: TcxGridDBColumn;
    cxView_MaterialesColumn5: TcxGridDBColumn;
    cxView_MaterialesColumn6: TcxGridDBColumn;
    ExcelWorksheet1: TExcelWorksheet;
    ExcelWorkbook1: TExcelWorkbook;
    ExcelApplication1: TExcelApplication;
    zApruebaQA: TUniQuery;
    dsApruebaQA: TDataSource;
    IncluyeCodigoMaterial1: TMenuItem;
    OcultarCodigoMaterial1: TMenuItem;
    cxView_RequsicionColumn12: TcxGridDBColumn;
    cxView_RequsicionColumn13: TcxGridDBColumn;
    zPOrdenes_Trabajo: TUniQuery;
    ds_POrdenesTrabajo: TDataSource;
    cxProyecto: TcxDBLookupComboBox;
    dxLayoutItem30: TdxLayoutItem;
    cxOrdenTrabajo: TcxDBLookupComboBox;
    dxLayoutItem24: TdxLayoutItem;
    cxLogistica: TcxDBMemo;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxDBToggleSwitch3: TdxDBToggleSwitch;
    dxLayoutItem32: TdxLayoutItem;
    CopiarGrupoMaterial1: TMenuItem;
    PegarGrupoMaterial1: TMenuItem;
    CopiarQARequirement1: TMenuItem;
    PegarQARequirement1: TMenuItem;
    zNotasGenerales: TUniQuery;
    dsNotasGenerales: TDataSource;
    NoRequiereInspeccionQA1: TMenuItem;
    ActualizaMateriales1: TMenuItem;
    frxMailExport1: TfrxMailExport;
    btnVisualizar: TcxButton;
    btnEnviar5: TcxButton;
    N1: TMenuItem;
    CopiarWorkOrder1: TMenuItem;
    PegarWorkOrder1: TMenuItem;
    ComentarMR1: TMenuItem;
    Panel4: TPanel;
    dxLayoutControl7: TdxLayoutControl;
    btnLimpiarF: TcxButton;
    cxFiltroRequerido: TcxButton;
    cxInicioRequerido: TcxDateEdit;
    cxFinRequerido: TcxDateEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutItem37: TdxLayoutItem;
    cxView_RequsicionColumn5: TcxGridDBColumn;
    cxTabCarpetas: TcxTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    cxVentana: TcxShellListView;
    cxDirectorio: TdxShellBreadcrumbEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    btnAnexo: TcxButton;
    dxLayoutItem21: TdxLayoutItem;
    dlgPDF: TFileOpenDialog;
    btnRevisión: TcxButton;
    cxView_RequsicionColumn6: TcxGridDBColumn;
    cxView_RequsicionColumn7: TcxGridDBColumn;
    PanelMaterial: TPanel;
    dxLayoutControl5: TdxLayoutControl;
    cxGrupoMaterial: TcxDBLookupComboBox;
    cxWbs: TcxDBLookupComboBox;
    cxCantidad: TcxDBCalcEdit;
    cxNumeroMaterial: TcxDBTextEdit;
    cxRequerimientosQA: TcxCheckListBox;
    cxNotas: TcxDBMemo;
    dxDBToggleSwitch2: TdxDBToggleSwitch;
    cxFindGM: TcxButton;
    cxFindWbs: TcxButton;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutItem41: TdxLayoutItem;
    btnAccesorios: TcxButton;
    PanelAccesorio: TPanel;
    cxLabel1: TcxLabel;
    cxGridAccesorios: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxSplitterAccesorio: TcxSplitter;
    Panel5: TPanel;
    cxAgregarAccesorio: TcxButton;
    Panel6: TPanel;
    cxGridAccesoriosColumn1: TcxGridDBColumn;
    cxGridAccesoriosColumn2: TcxGridDBColumn;
    cxGridAccesoriosColumn3: TcxGridDBColumn;
    dsAccesorios: TDataSource;
    zAccesorios: TUniQuery;
    btnEditAccesorio: TcxButton;
    btnEliminaAccesorio: TcxButton;
    frxRequisicion_detalle: TfrxDBDataset;
    cxRevision: TcxDBCurrencyEdit;
    dxLayoutItem20: TdxLayoutItem;
    Panel7: TPanel;
    btnCancerlaAccesorio: TcxButton;
    cxButton3: TcxButton;
    btnTraspaso: TcxButton;
    cxEquipo: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dsEquipos: TDataSource;
    zEquipos: TUniQuery;
    cxSplitter2: TcxSplitter;
    cxSplitter3: TcxSplitter;
    AbrirAnexo1: TMenuItem;
    NuevoServicio: TMenuItem;
    btnPrueba: TcxButton;
    cxView_MaterialesColumn8: TcxGridDBColumn;
    dsDestino: TDataSource;
    zDestino: TUniQuery;
    dsMensaje: TDataSource;
    zMensaje: TUniQuery;
    zCorreo: TUniQuery;
    traerAccesorio: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxView_MaterialesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxView_RequsicionCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxView_RequsicionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure frxEntradaGetValue(const VarName: string; var Value: Variant);
    procedure btnPrinterClick(Sender: TObject);
    procedure SeguimientoMaterialxPartidasdeAnexo1Click(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxView_RequsicionCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tabInformesShow(Sender: TObject);
    procedure btnImpInformeClick(Sender: TObject);
    procedure cxView_RequsicionDataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: string);
    procedure cxView_RequsicionDataControllerFilterChanged(Sender: TObject);
    procedure cxEliminarDetalleClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxPageDetalleClick(Sender: TObject);
    procedure tdidFechaExit(Sender: TObject);
    procedure tdIdFecha2Exit(Sender: TObject);
    procedure tsDepartamentoExit(Sender: TObject);
    procedure cxQAprobadorEnter(Sender: TObject);
    procedure cxManagerAprobadorEnter(Sender: TObject);
    procedure cxSAPClick(Sender: TObject);
    procedure formatoEncabezado();
    procedure MarcarOpcionesQA;
    function MarcarOpcionesQAR():string;
    function GuardarOpcionesQA():string;
    procedure cxGridViewTerceriasCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxOrdenTrabajoEnter(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxGridViewRecursoCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure anexo_prequisicionBeforePost(DataSet: TDataSet);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure MarcarcomoConsumible1Click(Sender: TObject);
    procedure AsignarCdigoMaterial1Click(Sender: TObject);
    procedure VistaDetalleMR;
    procedure cxImportarClick(Sender: TObject);
    procedure OpenXLSFolderChange(Sender: TObject);
    procedure OpenXLSSelectionChange(Sender: TObject);
    procedure OpenXLSClose(Sender: TObject);
    procedure IncluyeCodigoMaterial1Click(Sender: TObject);
    procedure OcultarCodigoMaterial1Click(Sender: TObject);
    procedure PopupPrincipalPopup(Sender: TObject);
    procedure CopiarGrupoMaterial1Click(Sender: TObject);
    procedure PegarGrupoMaterial1Click(Sender: TObject);
    procedure CopiarQARequirement1Click(Sender: TObject);
    procedure PegarQARequirement1Click(Sender: TObject);
    procedure cxView_RequsicionMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxView_MaterialesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NoRequiereInspeccionQA1Click(Sender: TObject);
    procedure ActualizaMateriales1Click(Sender: TObject);
    procedure cxOrdenTrabajoExit(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnEnviar5Click(Sender: TObject);
    procedure cxProyectoExit(Sender: TObject);
    procedure CopiarWorkOrder1Click(Sender: TObject);
    procedure PegarWorkOrder1Click(Sender: TObject);
    procedure selectPlanta;
    procedure ComentarMR1Click(Sender: TObject);
    procedure cxFiltroRequeridoClick(Sender: TObject);
    procedure btnLimpiarFClick(Sender: TObject);
    procedure btnAnexoClick(Sender: TObject);
    procedure btnRevisiónClick(Sender: TObject);
    procedure btnAccesoriosClick(Sender: TObject);
    procedure cxAgregarAccesorioClick(Sender: TObject);
    procedure cxView_MaterialesCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridAccesoriosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure frmBarraH11btnEditClick(Sender: TObject);
    procedure btnEditAccesorioClick(Sender: TObject);
    procedure btnEliminaAccesorioClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure btnCancerlaAccesorioClick(Sender: TObject);
    procedure cxGridAccesoriosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnTraspasoClick(Sender: TObject);
    procedure cxGridAccesoriosColumn2StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxVentanaChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure AbrirAnexo1Click(Sender: TObject);
    procedure NuevoServicioClick(Sender: TObject);
    procedure btnPruebaClick(Sender: TObject);
    procedure EnviaCorreoAvanzado(sParamModulo,sParamProceso,sParamTipoMaterial,sParamComentario,sParamEstatus, sParamFoldiosDoctos :string);
    procedure traerAccesorioClick(Sender: TObject);
    procedure cxGridAccesoriosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
 

  private
    { Private declarations }
     acc: TCollection;
    Mensaje: TIdMessage;
    AdjuntoOtros: TIdAttachmentFile;
    Adjunto: TIdAttachmentFile;
    Botones: TcxButton;
    RutaArchivoAdjunto: string;
    DirPDF :String ;
    procedure validaciones;
    procedure llenarCampos;
    procedure scrollAccesorios;



  public
    { Public declarations }
  end;

var


  FrmRevisionesRequisiciones: TFrmRevisionesRequisiciones;
  titulo         : string;
  titulo2        : string;
  recurso        : string;
  ruta           : String;
//  QAReq          : string;
  isOpen : boolean = False;
  btnPermisos, TipoExplosion : String;
  Valida:boolean;
  MontoTotal : Currency ;
  lExiste    : boolean;
  idAprReq:String;
  AnteriorArray : array[1..12] of string;
  //Variables para el popMovimiento
  lOpcionSelecciona  : boolean;
  sDescripcion, sRequerimientoQA : string;
  lExpandido : boolean;
  IdGMaterialCopia    : Integer;
  MaterialCopia, mComentarioOT,WorkOrderCopia :String;

  //
  Excel, Libro, Hoja: Variant;
  columnas : array[1..260] of String ;
  VistaGrid : TcxGridDBTableView;
implementation
uses frm_connection ,
     frm_pernoctan,
     frm_deptos,
     Func_Genericas,
     frm_agregar_Requisicion,
     UnitMetodos,
     frm_FirmasNota, frm_repositorio,frm_GridFM, frm_valida,
     Frm_Comentarios, frm_requisicion_ss7, frm_agregar_servicios,
     frm_agregar_Accesorios, UFrmConfigCorreo;
{$R *.dfm}

procedure TFrmRevisionesRequisiciones.AbrirAnexo1Click(Sender: TObject);
var
 BlobStream: TMemoField;
begin
  if not anexo_requisicion.FieldByName('RutaArchivo').IsNull then
  begin

//   TBlobField(anexo_requisicion.FieldByName('RutaArchivo')).SaveToFile(ExtractFilePath(Application.ExeName));
    ShellExecute(0, 'open',PChar(anexo_requisicion.FieldByName('RutaArchivo').AsString), '', '', SW_SHOWNORMAL);
  end
  else
  begin
      ShowMessage('No existe archivo del servicio seleccionado!.');
  end;

 end;

procedure TFrmRevisionesRequisiciones.ActualizaMateriales1Click(Sender: TObject);
var
    zActualiza, zBusca : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    SavePlace, SavePlace2 : TBookMark;
    VistaGrid : TcxGridDBTableView;
begin
//    if (anexo_requisicion.FieldValues['sStatus'] <> 'PENDIENTE') then
//    begin
//       messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
//       exit;
//    end;

    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;

    zBusca:=tUniquery.create(nil);
    zBusca.Connection := Connection.uConnection;

    PanelProgreso.Visible := True;
    BarraMostrar(True, progreso, LabelProceso );

    iGrid     := 0;
    if cxPageDetalle.ActivePage = cxTabMaterial then
       VistaGrid := cxView_Materiales;

    indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
    cxView_Materiales.DataController.FocusedRowIndex := indice;

    with cxView_Materiales.DataController.DataSource.DataSet do
    for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
    begin
        indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        cxView_Materiales.DataController.FocusedRowIndex := indice;

        zBusca.SQL.Clear;
        zBusca.SQL.Add('select Material,IdMedida from alm_insumos where IdInsumo =:IdInsumo');
        zBusca.ParamByName('IdInsumo').AsInteger   := cxView_Materiales.DataController.DataSet.FieldByName('IdInsumo').AsInteger;
        zBusca.Open;

        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('update anexo_prequisicion_serv set IdMedida =:IdMedida, mDescripcion =:Descripcion where IdPRequisicion =:IdRequisicion');
        zActualiza.ParamByName('IdRequisicion').AsInteger := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
        zActualiza.ParamByName('IdMedida').AsInteger      := zBusca.FieldByName('IdMedida').AsInteger;
        zActualiza.ParamByName('Descripcion').AsString    := zBusca.FieldByName('Material').AsString;
        zActualiza.ExecSQL;

        BarraProgresoAvance(Progreso, 0,100,100/cxView_Materiales.DataController.GetSelectedCount);
    end;

    anexo_prequisicion.Refresh;

    BarraProgresoAvance(Progreso, 0,100,100);
    cxView_Materiales.DataController.ClearSelection;
    zActualiza.destroy;
    zBusca.Destroy;
    PanelProgreso.Visible := False;

end;

procedure TFrmRevisionesRequisiciones.anexo_prequisicionBeforePost(DataSet: TDataSet);
begin
    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
       if cxView_Materiales.DataController.GetSelectedCount = 0 then
          anexo_requisicion.FieldByName('EspecificacionesQA').AsString := GuardarOpcionesQA;
    end;
end;

procedure TFrmRevisionesRequisiciones.AsignarCdigoMaterial1Click(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    sNotas : string;
    SavePlace, SavePlace2 : TBookMark;
begin
    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;
    iGrid     := 0;
    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
        indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        cxView_Materiales.DataController.FocusedRowIndex := indice;

        with cxView_Materiales.DataController.DataSource.DataSet do
        for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
        begin
            indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
            cxView_Materiales.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update anexo_prequisicion_serv set NumeroMaterial =:Numero '+
                               'where IdPRequisicion =:Id');
            zActualiza.ParamByName('Id').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
            zActualiza.ParamByName('Numero').AsString := autoFolio(anexo_prequisicion,'anexo_prequisicion_serv',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,0);
            zActualiza.ExecSQL;
        end;
    end;

    anexo_prequisicion.Refresh;
    zActualiza.destroy;
    cxCancelarDetalle.Click;

end;

procedure TFrmRevisionesRequisiciones.btnAccesoriosClick(Sender: TObject);
begin

   if PanelAccesorio.Visible then
   begin
     PanelAccesorio.Visible := False;
     cxSplitterAccesorio.Visible := False;
   end
   else
   begin
     PanelAccesorio.Visible := true;
     PanelAccesorio.Width := 800;
     cxSplitterAccesorio.Visible := true;
     PanelMAterial.Visible := False;
     cxSplitter3.Visible :=false;
     scrollAccesorios();
   end;
end;

procedure TFrmRevisionesRequisiciones.btnAddClick(Sender: TObject);
var
zFolios : TUniQuery;
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    cxSplitter1.Visible := False;
    grid_requsicion.Enabled:=False;

    anexo_requisicion.First;

    //Se guardan datos para autollenar al insertar el valor anterior..
    AnteriorArray[1] := IntToStr(anexo_requisicion.FieldByName('IdPlanta').AsInteger);
    AnteriorArray[2] := anexo_requisicion.FieldByName('sSolicito').AsSTring;
    AnteriorArray[3] := IntToStr(anexo_requisicion.FieldByName('IdSAPSolicitante').AsInteger);
    AnteriorArray[4] := anexo_requisicion.FieldByName('sLugarEntrega').AsSTring;
    AnteriorArray[5] := anexo_requisicion.FieldByName('sPuntoCarga').AsSTring;
    AnteriorArray[6] := anexo_requisicion.FieldByName('TelefonoRequisitor').AsSTring;
    AnteriorArray[7] := anexo_requisicion.FieldByName('TelefonoSAPSolicitante').AsSTring;
    AnteriorArray[8] := IntToStr(anexo_requisicion.FieldByName('IdAutorizaManager').AsInteger);
    AnteriorArray[9] := IntToStr(anexo_requisicion.FieldByName('IdAutorizaQA').AsInteger);
    AnteriorArray[10] := anexo_requisicion.FieldByName('sNumeroOrden').AsString;

    anexo_requisicion.AfterScroll := nil;
    zDepartamento.Locate('IdDepartamento',connection.uUsuario.FieldByName('idDepartamento').AsInteger,[]);
    anexo_requisicion.Append;
    anexo_requisicion.FieldValues['IdDepartamento']:= zDepartamento.FieldByName('IdDepartamento').AsInteger;
    anexo_requisicion.FieldValues['sNumFolio']     := autoFolio(anexo_requisicion,'anexo_requisicion',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,tsDepartamento.DataBinding.DataSource.DataSet.FieldByName('IdDepartamento').AsInteger);
    anexo_requisicion.FieldValues['sContrato']     := global_contrato;
    anexo_requisicion.FieldValues['sSolicito']     := GLOBAL_NOMBRE;
    anexo_requisicion.FieldValues['sRequisita']    := GLOBAL_NOMBRE;
    anexo_requisicion.FieldValues['mComentarios']  := '';
    anexo_requisicion.FieldValues['sIdUsuario']    := Global_Usuario;
    anexo_requisicion.FieldValues['sPrioridad']    := 'Normal';
    anexo_requisicion.FieldValues['AplicaLogistica'] := 'No';
    anexo_requisicion.FieldValues['dFechaSolicitado']:= Date;
    anexo_requisicion.FieldValues['dFechaRequerido']:= Date;
    anexo_requisicion.FieldValues['sLugarEntrega'] := '1';
    anexo_requisicion.FieldValues['sNumeroOrden']  :=  AnteriorArray[10];
    anexo_requisicion.FieldValues['sNumeroOrdenCentroC']  := zCentroCosto.FieldByName('sNumeroOrden').AsString;
    //cxFirma2.DataBinding.DataSource.DataSet.FieldByName('IdFirma').AsInteger := zFirma.FieldByName('idFirma').AsInteger;

    //anexo_requisicion.FieldValues['IdPlanta']           := AnteriorArray[1];
    anexo_requisicion.FieldValues['sSolicito']          := global_nombre;//AnteriorArray[2];
//    anexo_requisicion.FieldValues['IdSAPSolicitante']   := StrToInt(AnteriorArray[3]);
    anexo_requisicion.FieldValues['sLugarEntrega']      := AnteriorArray[4];
    anexo_requisicion.FieldValues['sPuntoCarga']        := AnteriorArray[5];
    anexo_requisicion.FieldValues['TelefonoRequisitor'] := AnteriorArray[6];
    anexo_requisicion.FieldValues['TelefonoSAPSolicitante'] := AnteriorArray[7];

    cbRecurso.DataBinding.DataSource.DataSet.FieldByName('IdTipoRecurso').AsInteger := 1;
    cxPlanta.DataBinding.DataSource.DataSet.FieldByName('IdPlanta').AsInteger := 0;

    zApruebaRequisicion.Locate('IdAutorizador', StrToInt(AnteriorArray[8]),[]);
    cxManagerAprobador.DataBinding.DataSource.DataSet.FieldByName('IdAutorizaManager').AsInteger  := zApruebaRequisicion.FieldByName('IdAutorizador').AsInteger;

    cxSAPRelease.DataBinding.DataSource.DataSet.FieldByName('IdSAPSolicitante').AsInteger := 8;

    zApruebaQA.Locate('IdAutorizador', StrToInt(AnteriorArray[9]),[]);
    cxQAprobador.DataBinding.DataSource.DataSet.FieldByName('IdAutorizaQA').AsInteger := zApruebaQA.FieldByName('IdAutorizador').AsInteger;

    connection.uUsuario.Locate('sIdUsuario',global_usuario,[]);
    anexo_requisicion.FieldValues['TelefonoRequisitor'] := connection.uUsuario.FieldByName('Telefono').AsString;

    cxOrdenTrabajo.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrdenOT').AsString := uOrdenesTrabajo.FieldByName('sNumeroOrden').AsString;

    zApruebaRequisicion.Locate('NombreCompleto',cxSAPRelease.Text,[]);
    anexo_requisicion.FieldValues['TelefonoSAPSolicitante'] := zApruebaRequisicion.FieldByName('NumeroPersonal').AsString;
    tsNumeroOrden.DataBinding.DataSource.DataSet.FieldByName('sContratoOT').AsString:=Qordenes_trabajo.FieldByName('sNumeroOrden').AsString;
    anexo_requisicion.FieldByName('mComentarios').AsString:=uOrdenesTrabajo.FieldByName('mComentarios').AsString +' para el día '+DateToStr(anexo_requisicion.FieldByName('dFechaRequerido').AsDateTime)+#13+#13+
                                                            zNotasGenerales.FieldByName('NotasGenerales').AsString;
    anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger := 2;
    anexo_requisicion.FieldByName('Revision').AsInteger := 0;
    cbRecurso.SetFocus;
    cxQAprobador.Enabled:=False;
    cxQAprobador.EditValue:='';
    cxSplitter2.Visible := False;
    PanelDetalle.Visible       := False;
end;

procedure TFrmRevisionesRequisiciones.btnCancelClick(Sender: TObject);
begin
  cxLeyenda.Caption:=titulo;
  Panel2.Visible:=False;
  cxSplitter1.Visible := False;
  frmBarraH11.btnActive;
  grid_requsicion.Enabled:=True;
  anexo_requisicion.Cancel;
end;

procedure TFrmRevisionesRequisiciones.btnDeleteClick(Sender: TObject);
begin
   if cxView_Requsicion.DataController.DataSource.DataSet.IsEmpty=false then
   begin
       if (anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') then
       begin
          If MessageDlg('Desea eliminar el Folio '+anexo_requisicion.FieldValues['sNumFolio']+'?. Se Eliminaran todos los Materiales!', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          Begin
              kardex_almacen('Elimina Requisicion  No. [' + InttoStr(anexo_requisicion.FieldValues['iFolioRequisicion']) + ']', 'Otros Movimientos');

              With connection do
              Begin
                 try
                     zCommand.Sql.Clear ;
                     zcommand.SQL.Add('Delete from anexo_prequisicion_serv where sContrato = :Contrato And iFolioRequisicion = :Folio') ;
                     zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                     zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                     zcommand.Params.ParamByName('Folio').DataType := ftString ;
                     zcommand.Params.ParamByName('Folio').value := anexo_requisicion.FieldValues['iFolioRequisicion'] ;
                     zcommand.ExecSQL() ;

                     zCommand.Sql.Clear ;
                     zcommand.SQL.Add('Delete from anexo_requisicion where sContrato = :Contrato And iFolioRequisicion = :Folio') ;
                     zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                     zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                     zcommand.Params.ParamByName('Folio').DataType := ftString ;
                     zcommand.Params.ParamByName('Folio').value := anexo_requisicion.FieldValues['iFolioRequisicion'] ;
                     zcommand.ExecSQL() ;
                     IsOpen := False;
                     anexo_requisicion.Refresh ;
                     anexo_prequisicion.Active:= False;
                     AsignarSQL(anexo_prequisicion,'anexo_prequisicion_sev',pUpdate);
                     FiltrarDataSet(anexo_prequisicion,'contrato,Folio',[global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString]);
                     anexo_prequisicion.Open;

                     IsOpen := True;
                 Except
                    on e : exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al eliminar registro', 0);
                    end;
                 End
              End
          End;
       end
       else
       begin
          messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
       end;
   end;
end;

procedure TFrmRevisionesRequisiciones.btnDetalleClick(Sender: TObject);
begin
  PanelDown.Visible :=False;
  PanelMaterial.Visible := False;
  cxSplitter3.Visible := False;
  PanelAccesorio.Visible := False;
  cxSplitterAccesorio.Visible := False;
  if PanelDetalle.Visible then
   begin

       PanelDetalle.Visible       := False;
       tabInformes.TabVisible := False;
       cxSplitter1.Visible := False;
   end
   else
   begin
       cxSplitter1.Visible := True;
       PanelDetalle.Visible       := True;
       tabInformes.TabVisible := False;

       llenarCampos();
   end;

end;


procedure TFrmRevisionesRequisiciones.btnEditAccesorioClick(Sender: TObject);
begin
//  Panel7.Visible := true;
//  cxAgregarAccesorio.Enabled := False;
//  btnEditAccesorio.Enabled := False;
//  btnEliminaAccesorio.Enabled := False;
//  cxTabCarpetas.Enabled := False;
//  zAccesorios.Edit;
//  cxGridAccesorios.OptionsData.Editing := true;
//  cxGridAccesoriosColumn2.Options.Editing := True;

end;

procedure TFrmRevisionesRequisiciones.btnEnviar5Click(Sender: TObject);
var
   x: integer;
   cadena, cad, asunto, mnj, sAdjunto, msg :string;
begin
//    frmValida.ImprimeDatosPrepare('frxDBRequisicion', False, anexo_requisicion);
//
//    connection.ExportaPDF.ShowProgress := False;
//    connection.ExportaPDF.ShowDialog   := False;
//    connection.ExportaPDF.FileName := anexo_requisicion.FieldByName('sNumFolio').AsString + '.pdf';
//    DirPDF := anexo_requisicion.FieldByName('sNumFolio').asString+'.pdf';
//    frxEntrada.Export(connection.ExportaPDF);
//    frmValida.DisplayMail(ExtractFilePath(Application.ExeName)+anexo_requisicion.FieldByName('sNumFolio').AsString + '.pdf');
//    if fileexists(DirPDF) then
//     DeleteFile(DirPDF);

    global_frmActivo:='SERVICIO';
    if not MostrarFormChild('FrmComentarios',global_dxBarManagerPrincipal) Then
    begin
      Application.CreateForm(TFrmComentarios, FrmComentarios);
      FrmComentarios.show;
    end;




end;

procedure TFrmRevisionesRequisiciones.EnviaCorreoAvanzado(sParamModulo: string; sParamProceso: string; sParamTipoMaterial: string; sParamComentario : string; sParamEstatus: string; sParamFoldiosDoctos : string);
var
   x: integer;
   cadena, cad, asunto, mnj, sAdjunto, msg :string;
begin

//    if zCorreo.Active then
//        zCorreo.Refresh ;


//    zCorreo.Open;

    zMensaje.Active:=False;
    AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
    FiltrarDataSet(zMensaje,'Clasificacion',['REQUISICION']);
    zMensaje.Open;

    zDestino.Active:=False;
    AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
    FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
    zDestino.Open;

    zDestino.Filtered := False;
    zDestino.Filter   := ' Page ='+QuotedStr('SERVICIO');
    zDestino.Filtered := True;

    x:= 0;
    zDestino.First;
    while not zDestino.Eof do
    begin
      if x=0 then
        cadena:='"'+zDestino.FieldByName('Mail').AsString+'"'
      else
      begin
        if cad='' then
          cadena:='"'+zDestino.FieldByName('Mail').AsString+'"'+','+ cadena ;
      end;
      Inc(x);
      zDestino.Next;
    end;

   asunto := zMensaje.FieldByName('AsuntoServicio').AsString;
   mnj := zMensaje.FieldByName('MensajeServicio').AsString + ' No. ' +anexo_requisicion.FieldByName('sNumFolio').AsString+
   ' '+ anexo_requisicion.FieldByName('ComentarioStatus').AsString ;

   messageDlg('Espere, porfavor', mtInformation, [mbOk],0);

        // para envio de correo
        Mensaje := TIdMessage.Create(nil);
        Mensaje.AttachmentEncoding := 'UUE'  ;
        Mensaje.Clear;
        if ArchivoPath<>' ' then begin
          Mensaje.ContentType := 'multipart/related; type="text/html"';
          RutaArchivoAdjunto := ArchivoPath;
          pdf := ArchivoPath;
        end
        else begin
          if connection.ExportaPDF.FileName <> '' then
          begin
            RutaArchivoAdjunto := connection.ExportaPDF.FileName;
            pdf := connection.ExportaPDF.FileName;
          end;
        end;


        if RutaArchivoAdjunto <>'' then
        begin
           if FileExists(RutaArchivoAdjunto) then
              Adjunto := TIdAttachmentFile.Create(Mensaje.MessageParts, RutaArchivoAdjunto);
        end
        else
          Adjunto := nil;

        if Length(Trim(RutaArchivoAdjunto)) = 0 then
           sAdjunto := ''
        else
          sAdjunto := RutaArchivoAdjunto;

        sAdjunto := RutaArchivoAdjunto;

        if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then
        begin
           msg := Enviar_Email(zCorreo.FieldByName('Correo').AsString,
                 zCorreo.FieldByName('Contrasena').AsString,
                 zCorreo.FieldByName('SMTP').AsString,
                 sAdjunto,
                 asunto,
                 cadena,
                 mnj,
                 zCorreo.FieldByName('Puerto').AsInteger,
                 zCorreo.FieldByName('AplicaTLS').AsString);
        end;

        messageDlg('Estado de envío: '+msg, mtInformation, [mbOk],0);
end;


procedure TFrmRevisionesRequisiciones.btnImpInformeClick(Sender: TObject);
var
  requisicionesGrid : String;
   contReqGrid, j : Integer;
begin
  if opcionImprimir.EditValue = 1 then
  begin
    IsOpen:=False;
    generar_reporte_grid(cxView_Requsicion,'Reporte de Requisiciones');
    IsOpen:=True;
  end  else if opcionImprimir.EditValue = 2 then
  begin
    cxView_Requsicion.DataController.Groups.FullExpand;
    contReqGrid := cxView_Requsicion.ViewData.RecordCount;
    for j := 0 to (contReqGrid - 1) do
    begin
      try
        requisicionesGrid := requisicionesGrid + cxView_Requsicion.ViewData.Rows[j].Values[0] +',';
      except
        ;
      end;
    end;

    zReporteDetalle.Active := False;
    AsignarSQL(zReporteDetalle,'reporte_detalles_requisicion',pUpdate);
    FiltrarDataSet(zReporteDetalle,'Contrato, ListaRequisiciones',[global_contrato,requisicionesGrid]);
    zReporteDetalle.Open;

    IsOpen:=False;
    generar_reporte_grid_detalles(cxView_Requsicion,zReporteDetalle,'Reporte de Requisiciones con Detalles', 'sNumFolio');
    IsOpen:=True;
  end;
end;

procedure TFrmRevisionesRequisiciones.btnLimpiarFClick(Sender: TObject);
begin
   cxView_Requsicion.DataController.Filter.FilterText := '';
   cxView_Requsicion.DataController.Filter.Clear;
   anexo_requisicion.Filtered := False;

   cxInicioRequerido.Style.Font.Color := clNone;
   cxInicioRequerido.Style.Font.Style := [];
   cxFinRequerido.Style.Font.Color := clNone;
   cxFinRequerido.Style.Font.Style := [];
end;

procedure TFrmRevisionesRequisiciones.btnPostClick(Sender: TObject);
var nombres, cadenas : TStringList;
begin
    if tmComentarios.Text ='' then
         tmComentarios.Text := 'S/C' ;

    nombres:=TStringList.Create;
    cadenas:=TStringList.Create;
    nombres.Add('Lugar de entrega');
    nombres.Add('Referencia');
    nombres.Add('Departamento');
    nombres.Add('solicitante');
    nombres.Add('Observaciones');
    cadenas.Add(tsLugarentrega.Text);
    cadenas.Add(tsnumeroorden.Text);
    cadenas.Add(tsdepartamento.Text);
    cadenas.Add(tssolicitante.Text);
    cadenas.Add(tmComentarios.Text);
    if not validaTexto(nombres, cadenas,'','') then
    begin
        MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
        exit;
    end;

    if tdIdFecha2.Date < tdIdFecha.Date then
    begin
        messageDLG('La Fecha de entrega es menor a la Fecha de Requisición', mtInformation, [mbOk],0);
        exit;
    end;

    if anexo_requisicion.State = dsInsert then
    begin
        try
              anexo_requisicion.FieldValues['dIdFecha']         := anexo_requisicion.FieldValues['dFechaSolicitado'];
              anexo_requisicion.FieldValues['sStatus']          := 'PENDIENTE';
              anexo_requisicion.FieldValues['TipoMR']           := 'SERVICIO';
              anexo_requisicion.Post ;

              kardex_almacen('Crea Requisicion  No. [' + anexo_requisicion.FieldValues['sNumFolio'] + ']', 'Otros Movimientos');

              //aqui termino.....
              anexo_requisicion.Refresh ;

        Except
           on e : exception do
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al salvar registro', 0);
        end;
    end;
    if anexo_requisicion.State = dsEdit then
    begin
         try
                  anexo_requisicion.FieldValues['dIdFecha']  := anexo_requisicion.FieldValues['dFechaSolicitado'];
                  anexo_requisicion.Post;

                  kardex_almacen('Modifica Requisicion  No. [' + IntToStr(anexo_requisicion.FieldValues['iFolioRequisicion']) + ']', 'Otros Movimientos');

                  anexo_requisicion.Refresh ;
         except
            on e : exception do
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al salvar registro', 0);

         end;
    end;

  cxLeyenda.Caption:=titulo;
  btnCancelClick(sender);
  grid_requsicion.Enabled:=True;
end;

procedure TFrmRevisionesRequisiciones.btnPrinterClick(Sender: TObject);
begin
  if (cxView_Requsicion.DataController.DataSource.DataSet.IsEmpty) or (cxView_Requsicion.DataController.DataSource.DataSet.RecordCount<=0) then
       exit;


    connection.zUCommand.Active := False;
    AsignarSQL(connection.zUCommand, 'existe_accesorio', pUpdate);
    FiltrarDataSet(connection.zUCommand, 'sIdEquipo, EquipoDetalle, FolioReq, ReqDetalle',
    [-1, -1, cxView_Requsicion.DataController.DataSet.FieldByName('iFolioRequisicion').AsString, -1]);
    connection.zUCommand.Open;

    AsignarSQL(Reporte,'reporte_servicio',pUpdate);
    FiltrarDataSet(Reporte,'Contrato,Folio',[global_contrato,anexo_requisicion.FieldValues['iFolioRequisicion']]);
    Reporte.Open;

    AsignarSQL(zReporteDetalle,'reporte_servicio_accesorio',pUpdate);
    FiltrarDataSet(zReporteDetalle,'Folio',[anexo_requisicion.FieldValues['iFolioRequisicion']]);
    zReporteDetalle.Open;

    frxDBRequisicion.DataSet    := Reporte;
    frxDBRequisicion.FieldAliases.Clear;
    frxEntrada.DataSets.Add(frxDBRequisicion);

    frxRequisicion_detalle.DataSet  := zReporteDetalle;
    frxRequisicion_detalle.FieldAliases.Clear;
    frxEntrada.DataSets.Add(frxRequisicion_detalle);

    frxEntrada.PreviewOptions.MDIChild := False;
    frxEntrada.PreviewOptions.Modal := True;
    frxEntrada.PreviewOptions.ShowCaptions := False;
    frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

    if connection.zUCommand.RecordCount = 0 then
    begin
     frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_MRServicio_NotAccesorio.fr3') ;
     if not FileExists(global_files + global_miReporte + '_ALM_MRServicio_NotAccesorio.fr3') then
       showmessage('El archivo de reporte '+global_miReporte+'_ALM_MRServicio_NotAccesorio.fr3 no existe, notifique al administrador del sistema');
    end
    else
    begin
     frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_Requisicion_Servicio.fr3') ;

     if not FileExists(global_files + global_miReporte + '_ALM_Requisicion_Servicio.fr3') then
       showmessage('El archivo de reporte '+global_miReporte+'_ALM_Requisicion_Servicio.fr3 no existe, notifique al administrador del sistema');
    end;
    frxPDFExport1.FileName := Reporte.FieldByName('sNumFolio').AsString;
    frxentrada.ShowReport;
end;

procedure TFrmRevisionesRequisiciones.btnPruebaClick(Sender: TObject);
var
  zPreq, zRegistroReq, zRegisPreq, zAcceso2, zAcceso : TUniQuery;
  IdInsertPReq: Integer;
begin

  zPreq:=tUniquery.create(nil);
  zPreq.Connection := Connection.uConnection;

  zRegistroReq:=tUniquery.create(nil);
  zRegistroReq.Connection := Connection.uConnection;

  zRegisPreq:=tUniquery.create(nil);
  zRegisPreq.Connection := Connection.uConnection;

  zAcceso2:=tUniquery.create(nil);
  zAcceso2.Connection := Connection.uConnection;

  zAcceso:=tUniquery.create(nil);
  zAcceso.Connection := Connection.uConnection;

  zPreq.Active := False;
  zPreq.SQL.Clear;
  AsignarSQL(zPreq, 'TotalExist_prequisicion_serv', pUpdate);
  FiltrarDataSet(zPreq, 'FolioReq', [cxView_Requsicion.DataController.DataSet.FieldByName('iFolioRequisicion').AsString]);
  zPreq.Open;

  zPreq.First;
  while not zPreq.Eof do
  begin
    zRegisPreq.Active := False;
    zRegisPreq.SQL.Clear;
    AsignarSQL(zRegisPreq, 'inserta_prequisicion_serv', pUpdate);
    FiltrarDataSet(zRegisPreq, 'IdPRequisicion, sContrato, iFolioRequisicion, IdInsumo, '+
    'iItem, mDescripcion, IdMedida, dFechaRequerimiento, dCantidad, sObservacion, sEstado, '+
    'IdTipoRecurso, IdGrupo, sNumeroOrden_WorkOrder, NumeroMaterial, EspecificacionesQA, '+
    'EspecificacionesQAN,  Extraordinario, IncluyeCodigoMat, sIdEquipo, Revision',
    [0,global_contrato, cxView_Requsicion.DataController.DataSet.FieldByName('iFolioRequisicion').AsString,
    zPreq.FieldByName('IdInsumo').AsString, 0,
    zPreq.FieldByName('mDescripcion').AsString,
    zPreq.FieldByName('IdMedida').AsString,
    FechaTimeSQL(zPreq.FieldByName('dFechaRequerimiento').AsDateTime),
    zPreq.FieldByName('dCantidad').AsString,
    zPreq.FieldByName('sObservacion').AsString,
    zPreq.FieldByName('sEstado').AsString,
    zPreq.FieldByName('IdTipoRecurso').AsString,
    zPreq.FieldByName('IdGrupo').AsString,
    zPreq.FieldByName('sNumeroOrden_WorkOrder').AsString,
    zPreq.FieldByName('NumeroMaterial').AsString,
    zPreq.FieldByName('EspecificacionesQA').AsString,
    zPreq.FieldByName('EspecificacionesQAN').AsString,
    zPreq.FieldByName('Extraordinario').AsString,
    zPreq.FieldByName('IncluyeCodigoMat').AsString,
    zPreq.FieldByName('sIdEquipo').AsString,
    (zPreq.FieldByName('MaxRevision').AsInteger + 1)]);
    zRegisPreq.Execute;
    IdInsertPReq := zRegisPreq.LastInsertId;

//    zRegistroreq.Active := False;
//    AsignarSQL(zRegistroReq, 'Consulta_version_ser', pUpdate);
//    FiltrarDataSet(zRegistroReq, 'FolioReq', [zPReq.FieldByName('iFolioRequisicion').AsString]);
//    zRegistroReq.Open;
//
//    zRegistroReq.RecordCount;

//    zRegistroReq.First;
//    while not zRegistroreq.Eof do
//    begin

      zAcceso2.Active := False;
      AsignarSQL(zAcceso2, 'total_exist_accesorios', pUpdate);
      FiltrarDataSet(zAcceso2, 'FolioReq, ReqDetalle',[zPReq.FieldByName('iFolioRequisicion').AsString, zPReq.FieldByName('IdPRequisicion').AsString]);
      zAcceso2.Open;

      zAcceso2.RecordCount;

      zAcceso2.First;
      while not zAcceso2.Eof do
      begin
//        if (zPreq.FieldByName('IdPRequisicion').AsInteger < zRegistroReq.FieldByName('IdPrequisicion').AsInteger) and
//           (zPreq.FieldByName('sIdEquipo').AsString =  zRegistroReq.FieldByName('sIdEquipo').AsString) then
////        if not zAcceso2.Locate('IdPrequisicion,sIdEquipo', VarArrayOf([zRegistroReq.FieldByName('IdPrequisicion').AsString,zRegistroReq.FieldByName('sIdEquipo').AsString]),[]) then
//        begin

//          zAcceso.SQL.Clear;
//          zAcceso.SQL.Text := 'Select * from anexo_prequisicion_acc where iFolioRequisicion =:Folio';
//          zAcceso.ParamByName('Folio').AsString := anexo_requisicion.FieldByName('iFolioRequisicion').AsString;
//          zAcceso.Open;

          zRegisPreq.Active := False;
          zRegisPreq.SQL.Clear;
          AsignarSQL(zRegisPreq, 'inserta_accesorio', pUpdate);
          FiltrarDataSet(zRegisPreq, 'sIdEquipo, EquipoDetalle, FolioReq, ReqDetalle,Medida, Descripcion, Cantidad',
          [zPreq.FieldByName('sIdEquipo').AsString, zAcceso2.FieldByName('IdEquipoDetalle').AsString,
          zAcceso2.FieldByName('iFolioRequisicion').AsString, IdInsertPReq,
          zAcceso2.FieldByName('Medida').AsString,
          zAcceso2.FieldByName('Descripcion').AsString, zAcceso2.FieldByName('Cantidad').AsString]);
          zRegisPreq.Execute;
//        end;

        zAcceso2.Next;
//      end;
//      zRegistroReq.Next;
    end;

    zPreq.Next;
    anexo_prequisicion.Refresh;
    //zAccesorios.Refresh;
  end;


end;

procedure TFrmRevisionesRequisiciones.btnRefreshClick(Sender: TObject);
begin
    anexo_requisicion.Refresh;
    zDepartamento.Refresh;
    Qordenes_trabajo.Refresh;
    zCentroCosto.Refresh;
    zFirma.Refresh;
//   if PanelCentro.Visible = True then
//      anexo_prequisicion.Refresh;

end;

procedure TFrmRevisionesRequisiciones.btnRevisiónClick(Sender: TObject);
var
  zRegistroReq, zPreq, zRegisPreq, zElimina : TUniquery;
   id : Integer;
begin
 if (anexo_requisicion.FieldByName('sStatus').AsString = 'GENERO PR') then
 begin
   zRegistroReq:=tUniquery.create(nil);
   zRegistroReq.Connection := Connection.uConnection;

   AsignarSQL(zRegistroReq, 'anexo_requisicion_max', pUpdate) ;
   FiltrarDataSet(zRegistroReq, 'Folio', [cxView_Requsicion.DataController.DataSet.FieldByName('sNumFolio').AsString]);
   zRegistroReq.Open;

   if  cxView_Requsicion.DataController.DataSet.FieldByName('Revision').AsInteger < zRegistroReq.FieldByName('Revision').AsInteger then
    begin
         ShowMessage('Incorrecto. Genere desde la última Revisión');
         exit;
    end;

    zElimina:=tUniquery.create(nil);
    zElimina.Connection := Connection.uConnection;

    zRegistroReq.Active := False;
    zRegistroReq.SQL.Clear;
    AsignarSQL(zRegistroReq, 'inserta_requisicion', pUpdate);
    FiltrarDataSet(zRegistroReq, 'Contrato,Folio,ContratoOt,Proyecto,CentroCosto,OrdenOT,dIdFecha,FechaSolicitado,' +
    'FechaRequerido,FechaVigencia,Requisita,Solicita,sStatus,Comentarios,Prioridad,Departamento,Recurso,Firma,PuntoCarga,' +
    'TelefonoReq,SAPSolicitante,TelSAPSolicita,Planta, ProcurementS,PreferredS,AutorizaM,AutorizaQA,LugarEntrega,sIdUsuario, '+
    'UValido, FechaValido, UAutorizo, FechaAutorizo, URechazo, FechaRechazo,ComentStatus, '+
    'UCancelo, ULibero, FechaLibero, UAsignoCC,FechaAsignoCC, UGeneroPR, FechaGeneroPR, UCompro, FechaCompro, sUCompra,'+
    'AplicaLog,NotasLog,FechaCancelo, Vista, TipoMR,Revision',
    [Global_Contrato, cxView_Requsicion.DataController.DataSet.FieldByName('sNumFolio').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sContratoOT').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sNumeroOrden').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sNumeroOrdenCentroC').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sNumeroOrdenOT').AsString,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('dIdFecha').AsDateTime),
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('dFechaSolicitado').AsDateTime),
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('dFechaRequerido').AsDateTime),
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('dFechaVigencia').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('sRequisita').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sSolicito').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sStatus').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('mComentarios').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sPrioridad').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('IdDepartamento').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('IdTiporecurso').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('IdFirma').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sPuntoCarga').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('TelefonoRequisitor').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('IdSAPSolicitante').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('TelefonoSAPSolicitante').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('IdPlanta').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('ProcurementSpecialist').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('PreferredSupplier').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('IdAutorizaManager').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('IdAutorizaQA').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sLugarEntrega').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sIdUsuario').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('UsuarioValido').AsString,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('FechaValido').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('UsuarioAutorizo').AsString,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('FechaAutorizo').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('UsuarioRechazo').AsString,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('FechaRechazo').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('ComentarioStatus').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('UsuarioCancelo').AsString ,
    cxView_Requsicion.DataController.DataSet.FieldByName('UsuarioLibero').AsString ,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('FechaLibero').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('UsuarioAsignoCC').AsString,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('FechaAsignoCC').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('UsuarioGeneroPR').AsString,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('FechaGeneroPR').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('UsuarioCompro').AsString,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('FechaCompro').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('sUsuarioCompra').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('AplicaLogistica').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('NotasLogistica').AsString,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('FechaCancelo').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('Vista').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('TipoMR').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('Revision').AsInteger+1]);  //IntTostr(zRegistroReq.RecordCount +1) ;
    zRegistroReq.Execute;

    zPreq:=tUniquery.create(nil);
    zPreq.Connection := Connection.uConnection;

    zRegisPreq:=tUniquery.create(nil);
    zRegisPreq.Connection := Connection.uConnection;

    zPreq.Active := False;
    zPreq.SQL.Clear;
    AsignarSQL(zPreq, 'TotalExist_prequisicion_serv', pUpdate);
    FiltrarDataSet(zPreq, 'FolioReq', [cxView_Requsicion.DataController.DataSet.FieldByName('iFolioRequisicion').AsString]);
    zPreq.Open;

    zRegistroReq.Active := False;
    zRegistroReq.SQL.Clear;
    AsignarSQL(zRegistroReq, 'anexo_requisicion_max', pUpdate);
    zRegistroReq.Open;

    zPreq.First;
    while not zPreq.Eof do
    begin
      zRegisPreq.Active := False;
      zRegisPreq.SQL.Clear;
      AsignarSQL(zRegisPreq, 'inserta_prequisicion_serv', pUpdate);
      FiltrarDataSet(zRegisPreq, 'IdPRequisicion, sContrato, iFolioRequisicion, IdInsumo, '+
      'iItem, mDescripcion, IdMedida, dFechaRequerimiento, dCantidad, sObservacion, sEstado, '+
      'IdTipoRecurso, IdGrupo, sNumeroOrden_WorkOrder, NumeroMaterial, EspecificacionesQA, '+
      'EspecificacionesQAN,  Extraordinario, IncluyeCodigoMat, sIdEquipo, Revision',
      [0,global_contrato, zRegistroReq.FieldByName('iFolioRequisicion').AsString,
      zPreq.FieldByName('IdInsumo').AsString,
      zPreq.FieldByName('iItem').AsString,
      zPreq.FieldByName('mDescripcion').AsString,
      zPreq.FieldByName('IdMedida').AsString,
      FechaTimeSQL(zPreq.FieldByName('dFechaRequerimiento').AsDateTime),
      zPreq.FieldByName('dCantidad').AsString,
      zPreq.FieldByName('sObservacion').AsString,
      zPreq.FieldByName('sEstado').AsString,
      zPreq.FieldByName('IdTipoRecurso').AsString,
      zPreq.FieldByName('IdGrupo').AsString,
      zPreq.FieldByName('sNumeroOrden_WorkOrder').AsString,
      zPreq.FieldByName('NumeroMaterial').AsString,
      zPreq.FieldByName('EspecificacionesQA').AsString,
      zPreq.FieldByName('EspecificacionesQAN').AsString,
      zPreq.FieldByName('Extraordinario').AsString,
      zPreq.FieldByName('IncluyeCodigoMat').AsString,
      zPreq.FieldByName('sIdEquipo').AsString,
      cxView_Requsicion.DataController.DataSet.FieldByName('Revision').AsInteger + 1]);
      zRegisPreq.Execute;

      zPreq.Next;
    end;


    connection.QryUBusca2.Active := False;
    AsignarSQL(connection.QryUBusca2, 'elimina_min_requisicion', pUpdate);
    FiltrarDataSet(connection.QryUBusca2, 'Folio', [cxView_Requsicion.DataController.DataSet.FieldByName('sNumFolio').AsString]);
    connection.QryUBusca2.Open;



    // Esta condición es porque siempre debe quedar visible el penúltimo y último registro
    if connection.QryUBusca2.FieldByName('TotalRevisiones').AsInteger > 2 then
    begin

       //Eliminar Accesorios
       connection.qryUBusca.Active := False;
       AsignarSQL(connection.qryUBusca, 'existe_accesorio', pUpdate);
       FiltrarDataSet(connection.qryUBusca, 'sIdEquipo, EquipoDetalle, FolioReq, ReqDetalle',
       [-1, -1, connection.QryUBusca2.FieldByName('iFolioRequisicion').AsInteger, -1]);
       connection.qryUBusca.Open;

       connection.qryUBusca.First;
        if connection.qryUBusca.RecordCount > 0 then
       while not connection.qryUBusca.Eof do
       begin
          zElimina.Active := False;
          AsignarSQL(zElimina, 'elimina_accesorios_serv', pUpdate);
          FiltrarDataSet(zElimina, 'Folio', [connection.qryUBusca.FieldByName('iFolioRequisicion').AsInteger]);
          zElimina.Execute;

          connection.qryUBusca.Next;
       end;


      //Eliminar Servicios
       connection.qryUBusca.Active := False;
       connection.qryUBusca.SQL.Clear;
       AsignarSQL(connection.qryUBusca, 'anexo_prequisicion_serv', pUpdate);
       FiltrarDataSet(connection.qryUBusca, 'Contrato, Folio, Tipo',
       [ global_contrato, connection.QryUBusca2.FieldByName('iFolioRequisicion').AsInteger, 2]);
       connection.qryUBusca.Open;

       connection.qryUBusca.First;
       if connection.qryUBusca.RecordCount > 0 then
       while not connection.qryUBusca.Eof do
       begin
          zElimina.Active := False;
          AsignarSQL(zElimina, 'delete_prequisicion_serv', pUpdate);
          FiltrarDataSet(zElimina, 'Folio', [connection.qryUBusca.FieldByName('iFolioRequisicion').AsInteger]);
          zElimina.Execute;

          connection.qryUBusca.Next;
       end;

       // Elimina requisicion
       zElimina.Active := False;
       AsignarSQL(zElimina, 'delete_requisicion', pUpdate);
       FiltrarDataSet(zElimina, 'Folio', [connection.QryUBusca2.FieldByName('iFolioRequisicion').AsInteger]);
       zElimina.Execute;

    end;

    // Buscar en la PO la requisición para actualizar el ID del último folio de req generado
      connection.QryUBusca2.Refresh;
      connection.zUCommand.Active := False;
      AsignarSQL(connection.zUCommand, 'consulta_ppedido', pUpdate);
      FiltrarDataSet(connection.zUCommand, 'Folio', [connection.QryUBusca2.FieldByName('iFolioRequisicion').AsString]);
      connection.zUCommand.Open;

//      connection.zUCommand.Filtered := False;
//      connection.zUCommand.Filter := 'iFolioRequisicion =' +QuotedStr(connection.QryUBusca2.FieldByName('iFolioRequisicion').AsString);
//      connection.zUCommand.Filtered := True;
//
//      connection.zUCommand.RecordCount;

//      if connection.zUCommand.RecordCount = 0 then
//      begin
//         ShowMessage('La requisición no esta asociada a una Orden de Compra');
//         anexo_requisicion.Refresh;
//         exit;
//      end;

      zpreq.Active := False;
      AsignarSQL(zpreq, 'consulta_prequisicion_serv', pUpdate);
      FiltrardataSet(zpreq, 'Folio', [connection.QryUBusca2.FieldByName('iFolioRequisicion').AsInteger]);
      zpreq.Open;

      zpreq.FieldByName('Revision').AsInteger;


         connection.zUCommand.First;
         while not connection.zUCommand.Eof do
         begin
          while not zpreq.eof do
          begin
            if connection.zUCommand.Locate('iFolioRequisicion; IdInsumo; iItemReq',
            vararrayof([zpreq.FieldByName('iFolioRequisicion').AsInteger,
            zpreq.FieldByName('IdInsumo').AsInteger,
            zpreq.FieldByName('iItem').AsInteger]),[loCaseInsensitive]) then
            begin
              zRegistroReq.Refresh;
              connection.zValidacion.Active := False;
              AsignarSQL(connection.zValidacion, 'update_folio_ppedido', pUpdate);
              FiltrarDataSet(connection.zValidacion, 'FolioReq, Revision, Insumo, iItem',
              [zRegistroReq.FieldByName('iFolioRequisicion').AsInteger,
              zpreq.FieldByName('Revision').AsInteger + 1,
              zpreq.FieldByName('IdInsumo').AsInteger,
              zpreq.FieldByName('iItem').AsInteger]);
              connection.zValidacion.Execute;
            end
            else
            begin
              zRegistroReq.Refresh;
              connection.zValidacion.Active := False;
              AsignarSQL(connection.zValidacion, 'inserta_ordencompra_det_001', pUpdate);
              FiltrarDataSet(connection.zValidacion,
              'Contrato,IdCompra,Insumo,item,Descripcion,Medida,Cantidad,Costo,Requisicion,iItemReq,Revision',
              [Global_contrato,connection.zUCommand.FieldByName('IdOrdenCompra').AsInteger,
              zpreq.FieldByName('IdInsumo').AsInteger, zpreq.FieldByName('iItem').AsInteger + 1,
              zpreq.FieldByName('mDescripcion').AsString,
              zpreq.FieldByName('IdMedida').AsInteger, zpreq.FieldByName('dCantidad').AsFloat,
              0,zRegistroReq.FieldByName('iFolioRequisicion').AsInteger, zpreq.FieldByName('iItem').AsInteger,
              zpreq.FieldByName('Revision').AsInteger + 1]);
              connection.zValidacion.Execute;

            end;
            zpreq.Next;
          end;

           connection.zUCommand.Next;
         end;


    anexo_requisicion.Refresh;

 end
 else
 begin
   messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus']+#10+'Para crear un nueva revisión deberá estar en estatus: GENERO PR o ASIGNADO. ', mtInformation, [mbOk],0);
 end;

 zRegistroReq.Destroy;
 zRegisPreq.Destroy;
 zPreq.Destroy;
 zElimina.Destroy;
end;

procedure TFrmRevisionesRequisiciones.btnTraspasoClick(Sender: TObject);
var
  zRevision :TUniQuery;
  rev : Integer;
begin
  if (anexo_requisicion.FieldByName('sStatus').AsString = 'GENERO PR') OR (anexo_requisicion.FieldByName('sStatus').AsString = 'ASIGNADO') then
  begin
     anexo_prequisicion.Active:= False;
     AsignarSQL(anexo_prequisicion,'anexo_prequisicion_upt',pUpdate);
     FiltrarDataSet(anexo_prequisicion,'contrato,Folio,Tipo',
     [global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString,anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger]);
     anexo_prequisicion.Open;

     zRevision := tUniquery.create(nil);
     zRevision.Connection := Connection.Uconnection;

//     AsignarSQL(zRevision, 'consulta_revision_serv', pUpdate);
//     FiltrarDataSet(zRevision, 'FolioReq', [anexo_requisicion.FieldByName('iFolioRequisicion').AsString]);
//     zRevision.Open;
//
//     if zRevision.RecordCount = 0 then
//       rev := 0
//     else
//       rev := zRevision.FieldByName('maxRevision').AsInteger;

     anexo_prequisicion.First;
     while not anexo_prequisicion.Eof do
     begin
         Reporte.Active := False;
         Reporte.SQL.Clear;
         AsignarSQL(reporte, 'inserta_prequisicion_serv', pUpdate);
         FiltrarDataSet(reporte, 'IdPRequisicion, sContrato, iFolioRequisicion, IdInsumo, iItem, mDescripcion, '+
         'IdMedida, dFechaRequerimiento, dCantidad, sObservacion, sEstado, IdTipoRecurso, IdGrupo, sNumeroOrden_WorkOrder,  '+
         'NumeroMaterial, EspecificacionesQA, EspecificacionesQAN, Extraordinario, IncluyeCodigoMat, sIdEquipo, Revision ',
         [0, global_contrato, anexo_prequisicion.FieldByName('iFolioRequisicion').AsInteger,
          anexo_prequisicion.FieldByName('IdInsumo').AsInteger,
          anexo_prequisicion.FieldByName('iItem').AsInteger,
          anexo_prequisicion.FieldByName('mDescripcion').AsString,
          anexo_prequisicion.FieldByName('IdMedida').AsInteger,
          FechaTimeSQL(anexo_prequisicion.FieldByName('dFechaRequerimiento').AsDateTime),
          anexo_prequisicion.FieldByName('dCantidad').AsFloat,
          anexo_prequisicion.FieldByName('sObservacion').AsString,
          anexo_prequisicion.FieldByName('sEstado').AsString,
          anexo_prequisicion.FieldByName('IdTipoRecurso').AsInteger,
          anexo_prequisicion.FieldByName('IdGrupo').AsInteger,
          anexo_prequisicion.FieldByName('sNumeroOrden_WorkOrder').AsString,
          anexo_prequisicion.FieldByName('NumeroMaterial').AsString,
          anexo_prequisicion.FieldByName('EspecificacionesQA').AsString,
          anexo_prequisicion.FieldByName('EspecificacionesQAN').AsString,
          anexo_prequisicion.FieldByName('Extraordinario').AsString,
          anexo_prequisicion.FieldByName('IncluyeCodigoMat').AsString,
          anexo_prequisicion.FieldByName('sIdEquipo').AsString,
          anexo_prequisicion.FieldByName('Revision').AsString]);
         reporte.Execute;

      anexo_prequisicion.Next;
     end;

     anexo_prequisicion.Refresh;
  end
  else
  begin
   messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
     exit;
  end;
end;

procedure TFrmRevisionesRequisiciones.btnVisualizarClick(Sender: TObject);
begin
   if (cxView_Requsicion.DataController.DataSource.DataSet.IsEmpty) or (cxView_Requsicion.DataController.DataSource.DataSet.RecordCount<=0) then
       exit;

    connection.zUCommand.Active := False;
    AsignarSQL(connection.zUCommand, 'existe_accesorio', pUpdate);
    FiltrarDataSet(connection.zUCommand, 'sIdEquipo, EquipoDetalle, FolioReq, ReqDetalle',
    [-1, -1, cxView_Requsicion.DataController.DataSet.FieldByName('iFolioRequisicion').AsString, -1]);
    connection.zUCommand.Open;

    AsignarSQL(Reporte,'reporte_servicio',pUpdate);
    FiltrarDataSet(Reporte,'Contrato,Folio',[global_contrato,anexo_requisicion.FieldValues['iFolioRequisicion']]);
    Reporte.Open;

    AsignarSQL(zReporteDetalle,'reporte_servicio_accesorio',pUpdate);
    FiltrarDataSet(zReporteDetalle,'Folio',[anexo_requisicion.FieldValues['iFolioRequisicion']]);
    zReporteDetalle.Open;

    frxDBRequisicion.DataSet    := Reporte;
    frxDBRequisicion.FieldAliases.Clear;
    frxEntrada.DataSets.Add(frxDBRequisicion);

    frxRequisicion_detalle.DataSet  := zReporteDetalle;
    frxRequisicion_detalle.FieldAliases.Clear;
    frxEntrada.DataSets.Add(frxRequisicion_detalle);

    frxEntrada.PreviewOptions.MDIChild := False;
    frxEntrada.PreviewOptions.Modal := True;
    frxEntrada.PreviewOptions.ShowCaptions := False;
    frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

    if connection.zUCommand.RecordCount = 0 then
    begin
     frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_MRServicio_NotAccesorioView.fr3') ;
     if not FileExists(global_files + global_miReporte + '_ALM_MRServicio_NotAccesorioView.fr3') then
       showmessage('El archivo de reporte '+global_miReporte+'_ALM_MRServicio_NotAccesorioView.fr3 no existe, notifique al administrador del sistema');
    end
    else
    begin
      frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_Requisicion_Servicio_View.fr3') ;

    if not FileExists(global_files + global_miReporte + '_ALM_Requisicion_Servicio_View.fr3') then
       showmessage('El archivo de reporte '+global_miReporte+'_ALM_Requisicion_Servicio_View.fr3 no existe, notifique al administrador del sistema');

    end;

    frxPDFExport1.FileName := Reporte.FieldByName('sNumFolio').AsString;
    frxentrada.ShowReport;

//    **********************
//    AsignarSQL(Reporte,'reporte_servicio',pUpdate);
//    FiltrarDataSet(Reporte,'Contrato,Folio',[global_contrato,anexo_requisicion.FieldValues['iFolioRequisicion']]);
//    Reporte.Open;
//
//    AsignarSQL(zReporteDetalle,'reporte_servicio_accesorio',pUpdate);
//    FiltrarDataSet(zReporteDetalle,'Folio',[anexo_requisicion.FieldValues['iFolioRequisicion']]);
//    zReporteDetalle.Open;
//
//    frxDBRequisicion.DataSet    := Reporte;
//    frxDBRequisicion.FieldAliases.Clear;
//    frxEntrada.DataSets.Add(frxDBRequisicion);
//
//    frxRequisicion_detalle.DataSet  := zReporteDetalle;
//    frxRequisicion_detalle.FieldAliases.Clear;
//    frxEntrada.DataSets.Add(frxRequisicion_detalle);
//
//    frxEntrada.PreviewOptions.MDIChild := False;
//    frxEntrada.PreviewOptions.Modal := True;
//    frxEntrada.PreviewOptions.ShowCaptions := False;
//    frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;
//
//    frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_Requisicion_Servicio.fr3') ;
//
//    if not FileExists(global_files + global_miReporte + '_ALM_Requisicion_Servicio.fr3') then
//       showmessage('El archivo de reporte '+global_miReporte+'_ALM_Requisicion_Servicio.fr3 no existe, notifique al administrador del sistema');
//    frxPDFExport1.FileName := Reporte.FieldByName('sNumFolio').AsString;
//    frxentrada.ShowReport;
end;


procedure TFrmRevisionesRequisiciones.ComentarMR1Click(Sender: TObject);
begin
  if(global_grupo='LIDER_AVANZADO') or (global_grupo = 'LIDER_MR') or (global_grupo = 'COMPRAS') then begin
     global_frmActivo:='CComentario';
     Application.CreateForm(TFrmComentarios, FrmComentarios);
     FrmComentarios.show;

  end;
end;

procedure TFrmRevisionesRequisiciones.CopiarGrupoMaterial1Click(Sender: TObject);
var
    indice, iGrid    : integer;
    lcontinua : boolean;
begin
     PegarGrupoMaterial1.Enabled := True;
     CopiarGrupoMaterial1.Enabled := False;
     CopiarQARequirement1.Enabled := False;
     IdGMaterialCopia := anexo_prequisicion.FieldByName('IdGrupo').AsInteger;
     lOpcionSelecciona := True;
     cxView_Materiales.OptionsSelection.MultiSelect := True;
end;

procedure TFrmRevisionesRequisiciones.CopiarQARequirement1Click(Sender: TObject);
var
    indice, iGrid    : integer;
    lcontinua : boolean;
begin
     PegarQARequirement1.Enabled := True;
     CopiarGrupoMaterial1.Enabled := False;
     CopiarQARequirement1.Enabled := False;
     MaterialCopia := anexo_prequisicion.FieldByName('EspecificacionesQA').AsString;
     lOpcionSelecciona := True;
     cxView_Materiales.OptionsSelection.MultiSelect := True;
end;


procedure TFrmRevisionesRequisiciones.btnAnexoClick(Sender: TObject);
var
  BlobStream : TStream;
  FileStream : TFileStream;

  Ext, sArchivo : string;
  Archivo   : string;
  lNoGuardarDocto :boolean;
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

   // if (zCertificado.State = dsEdit) or (zCertificado.State <> dsInsert) then
     //  zCertificado.Edit;

    // zPagoDetalle.FieldByName('Anexo').AsString :=  ExtractFileDir(Archivo)+'\'+ExtractFileName(Archivo);
   //anexo_requisicion.FieldByName('NombreDocto').AsString := ExtractFileName(Archivo);
    TBlobField(anexo_requisicion.FieldByName('Anexo')).LoadfromFile(archivo);
  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
      if anexo_requisicion.state in [dsInsert, dsEdit] then
         lNoGuardarDocto := True;
    end;
  end;
end;

procedure TFrmRevisionesRequisiciones.cxAgregarAccesorioClick(Sender: TObject);
begin
//  Application.CreateForm(TfrmAgregarMasivoAccesorios, frmAgregarMasivoAccesorios);
//  frmAgregarMasivoAccesorios.show;
end;

procedure TFrmRevisionesRequisiciones.btnEliminaAccesorioClick(Sender: TObject);
var
iGrid, indice : integer;
zElimina : TUniQuery;
begin
//  iGrid     := 0;
//   try
//      indice := cxGridAccesorios.DataController.GetSelectedRowIndex(iGrid);
//    Except
//      on e:exception do begin
//          //nothing to do
//      end;
//    end;
//
//   with cxGridAccesorios.DataController.DataSource.DataSet do
//   for iGrid := 0 to cxGridAccesorios.DataController.GetSelectedCount - 1 do
//   begin
//      indice := cxGridAccesorios.DataController.GetSelectedRowIndex(iGrid);
//      cxGridAccesorios.DataController.FocusedRowIndex := indice;
//
//      zElimina := TUniQuery.Create(nil);
//      zElimina.connection := Connection.Uconnection;
//      zElimina.Active := False;
//      zElimina.SQL.Clear;
//      AsignarSQL(zElimina, 'prequisicion_serv_acc_elimina', pUpdate);
//      FiltrarDataSet(zElimina, 'Accesorio', [cxGridAccesorios.DataController.DataSet.FieldByName('IdAccesorio').AsString ]);
//      zElimina.Execute;
//   end;
//
//   zAccesorios.Refresh;


end;

procedure TFrmRevisionesRequisiciones.btnCancerlaAccesorioClick(Sender: TObject);
begin
  zAccesorios.Cancel;

  cxAgregarAccesorio.Enabled := true;
  btnEditAccesorio.Enabled := True;
  btnEliminaAccesorio.Enabled := True;
  cxTabCarpetas.Enabled := True;

  cxGridAccesorios.OptionsData.Editing := False;
  cxGridAccesoriosColumn2.Options.Editing := False;
  panel7.Visible:= False;

end;

procedure TFrmRevisionesRequisiciones.cxButton3Click(Sender: TObject);
begin
  if zAccesorios.State = dsEdit then
    zAccesorios.Post;

  cxAgregarAccesorio.Enabled := True;
  btnEditAccesorio.Enabled := True;
  btnEliminaAccesorio.Enabled := True;
  cxTabCarpetas.Enabled := True;

  Panel7.Visible := False;
  cxGridAccesorios.OptionsData.Editing := False;
  cxGridAccesoriosColumn2.Options.Editing := False;

end;

procedure TFrmRevisionesRequisiciones.cxCancelarDetalleClick(Sender: TObject);
begin
  if cxPageDetalle.ActivePage = cxTabMaterial  then
  begin
    anexo_prequisicion.Cancel;

    cxTabCarpetas.Enabled := True;
    cxEditaDetalle.Enabled := True;
    cxEliminarDetalle.Enabled := True;
    cxNuevoDetalle.Enabled := True;
    btnAccesorios.Enabled := True;

    PanelDown.Visible := False;
    PanelMaterial.Visible := False;
    cxSplitter3.Visible := False;
  end;

  if cxPageDetalle.ActivePage = cxTabCarpetas  then
  begin
    anexo_requisicion.Cancel;

    PanelDown.Visible := False;
    titulo2 := 'Documentos';
    cxTabMAterial.Enabled := True;
    cxNuevoDetalle.Enabled := False;
    cxEditaDetalle.Enabled := True;
    cxEliminarDetalle.Enabled := False;
    btnAccesorios.Enabled := False;

  end;


end;

procedure TFrmRevisionesRequisiciones.cxEditaDetalleClick(Sender: TObject);
begin
//  if cxPageDetalle.ActivePage = cxTabMaterial then
//  begin
//    if (anexo_requisicion.FieldValues['sStatus'] <> 'COMPRADO') then
//    begin
//        If (anexo_prequisicion.RecordCount > 0 ) Then
//        Begin
//            anexo_prequisicion.Edit;
//            MarcarOpcionesQA;
//
//            PanelAccesorio.Visible := False;
//            cxSplitterAccesorio.Visible := False;
//            cxTabCarpetas.Enabled := False;
//            cxEditaDetalle.Enabled := False;
//            cxEliminarDetalle.Enabled := False;
//            cxNuevoDetalle.Enabled := False;
//            btnAccesorios.Enabled := False;
//
//            zEquipos.Active := False;
//            AsignarSQL(zEquipos, 'requisicion_servicios_equipos', pUpdate);
//            FiltrarDataset(zEquipos, 'Contrato, IdEquipo', [anexo_requisicion.FieldByName('Contrato').AsString, '-1']);
//            zEquipos.Open;
//
////            anexo_prequisicion.Edit;
////            MarcarOpcionesQA;
//
//            PanelMaterial.Align := alRight;
//            PanelMaterial.Width := 1000;
//            PanelMaterial.Visible   := True;
//            PanelDown.Visible       := True;
//            cxSplitter3.Visible := True;
//
//            VistaDetalleMR;
//            cxGrupoMaterial.Enabled := True;
//        end;
//    end
//    else
//    begin
//       messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
//    end;
//  end;
//
//  if cxPageDetalle.ActivePage = cxTabCarpetas then
//  begin
//
//    anexo_requisicion.Edit;
//    titulo2 := 'Documentos [Editando]';
//    cxTabMAterial.Enabled := False;
//    cxNuevoDetalle.Enabled := False;
//    cxEditaDetalle.Enabled := False;
//    cxEliminarDetalle.Enabled := False;
//
//     PanelDown.Visible := True;
//  end;

end;

procedure TFrmRevisionesRequisiciones.cxEliminarDetalleClick(Sender: TObject);
var
 zElimina : TUniQuery;
begin
//    if (anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') or (anexo_requisicion.FieldValues['sStatus'] = 'VALIDADO') then
//    begin
//        If anexo_prequisicion.RecordCount > 0 Then
//          If MessageDlg('Desea eliminar el material '+anexo_prequisicion.FieldValues['sIdInsumo']+' de esta Requisición?.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//          Begin
//
//            zElimina := TUniQuery.Create(nil);
//            zElimina.connection := Connection.Uconnection;
//            zElimina.Active := False;
//            zElimina.SQL.Clear;
//            AsignarSQL(zElimina, 'prequisicion_serv_acc_elimina', pUpdate);
//            FiltrarDataSet(zElimina, 'Accesorio, IdPRequisicion', [-1,anexo_prequisicion.FieldByName('IdPRequisicion').AsInteger]);
//            zElimina.Execute;
//
//            anexo_prequisicion.delete;
//            anexo_prequisicion.ApplyUpdates();
//          End;
//
//        if anexo_prequisicion.RecordCount = 0 then
//          btnAccesorios.Enabled := False;
//
//        if PanelAccesorio.Visible = true then
//           zAccesorios.Refresh;
//
//    end
//    else
//    begin
//        messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
//    end;
end;

procedure TFrmRevisionesRequisiciones.cxFiltroRequeridoClick(Sender: TObject);
begin
    anexo_requisicion.Filtered := False;
    anexo_requisicion.Filter   :=' dFechaRequerido >= '+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and dFechaRequerido <= '+QuotedStr(FechaSQL(cxFinRequerido.Date));
    anexo_requisicion.Filtered := True;

    cxInicioRequerido.Style.Font.Color := clBlue;
    cxInicioRequerido.Style.Font.Style := [fsBold];
    cxFinRequerido.Style.Font.Color := clBlue;
    cxFinRequerido.Style.Font.Style := [fsBold];
end;

procedure TFrmRevisionesRequisiciones.cxGridAccesoriosCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 //  zAccesorios.Edit;

end;

procedure TFrmRevisionesRequisiciones.cxGridAccesoriosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if cxGridAccesorios.OptionsView.CellAutoHeight then
      cxGridAccesorios.OptionsView.CellAutoHeight := False
   else
      cxGridAccesorios.OptionsView.CellAutoHeight := True;
end;

procedure TFrmRevisionesRequisiciones.cxGridAccesoriosColumn2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
        AStyle := TcxStyle.Create(nil);
        AStyle.Color:=connection.cxStyleEdicion.Color;
end;

procedure TFrmRevisionesRequisiciones.cxGridAccesoriosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 AbrirAnexo1.Visible := False;
 NuevoServicio.Visible := False;
 traerAccesorio.Visible := False;
 ActualizaMateriales1.Visible := False;
end;

procedure TFrmRevisionesRequisiciones.cxGridViewRecursoCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if PanelMaterial.Visible = true then
    begin
        MarcarOpcionesQA;
    end;
end;

procedure TFrmRevisionesRequisiciones.cxGridViewTerceriasCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    MarcarOpcionesQA;
end;

procedure TFrmRevisionesRequisiciones.cxGuardarDetalleClick(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    sNotas : string;
    SavePlace, SavePlace2 : TBookMark;

    BlobStream : TStream;
    FileStream : TFileStream;

    Ext, sArchivo : string;
    Archivo   : string;
    lNoGuardarDocto :boolean;
begin
    if cxPageDetalle.ActivePage = cxTabMaterial  then
    begin
      zActualiza:=tUniquery.create(nil);
      zActualiza.Connection := Connection.uConnection;
      iGrid     := 0;


      sNotas := cxNotas.Text;

      if cxPageDetalle.ActivePage = cxTabMaterial then
      begin
          indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
          cxView_Materiales.DataController.FocusedRowIndex := indice;

          with cxView_Materiales.DataController.DataSource.DataSet do
          for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
          begin
              indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
              cxView_Materiales.DataController.FocusedRowIndex := indice;

              zActualiza.SQL.Clear;
              zActualiza.SQL.Add('update anexo_prequisicion_serv set IdGrupo =:Grupo, sNumeroOrden_WorkOrder =:CentroCosto, sObservacion =:notas, EspecificacionesQA =:Especificaciones, EspecificacionesQAN=:EspecificN, dCantidad =:Cantidad, sIdEquipo =:Equipo '+
                                 'where IdPRequisicion =:Id');
              zActualiza.ParamByName('Id').AsInteger         := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
              zActualiza.ParamByName('CentroCosto').AsString := '';
              zActualiza.ParamByName('Notas').AsString       := sNotas;
              zActualiza.ParamByName('Especificaciones').AsString := GuardarOpcionesQA;
              zActualiza.ParamByName('EspecificN').AsString := MarcarOpcionesQAR;
              if iGrid = 0 then
                 zActualiza.ParamByName('Cantidad').AsFloat    := cxCantidad.Value
              else
                 zActualiza.ParamByName('Cantidad').AsFloat    := cxView_Materiales.DataController.DataSet.FieldByName('dCantidad').AsFloat;
              zActualiza.ParamByName('Equipo').AsString := cxEquipo.EditValue;
              zActualiza.ExecSQL;

              //Se Actualiza el MAterial Group al insertar.
              if cxView_Materiales.DataController.DataSet.FieldByName('IdGrupoSAP').AsInteger = 0 then
              begin
                 AsignarSQL(zActualiza,'actualiza_requisicion_grupoMat',pUpdate);
                 FiltrarDataSet(zActualiza,'Grupo,Insumo',[uGrupoMaterial.FieldByName('IdGrupo').AsInteger,cxView_Materiales.DataController.DataSet.FieldByName('IdInsumo').AsInteger]);
                 zActualiza.ExecSQL;
              end;

               if cxView_Materiales.DataController.DataSet.FieldByName('IdGrupoSAP').AsInteger = 0 then
              begin
               connection.QryUBusca.Active := false;
               connection.QryUBusca.SQL.Clear;
               AsignarSQL(connection.QryUBusca,'update_insumo_equipo',pUpdate);
               FiltrarDataSet(connection.QryUBusca, 'Equipo, Insumo', [cxEquipo.EditValue, cxView_Materiales.DataController.DataSet.FieldByName('IdInsumo').AsInteger]);
               connection.QryUBusca.ExecSQL;
              end;

          end;
      end;
      ds_anexo_prequisicion.DataSet.Post;
      anexo_prequisicion.Refresh;
      zActualiza.destroy;
      selectPlanta;
      cxCancelarDetalle.Click;
    end ;

    if cxPageDetalle.ActivePage = cxTabCarpetas then
    begin
       if anexo_requisicion.State = dsEdit then
       begin
         anexo_requisicion.FieldByName('RutaArchivo').AsString := ruta;
         anexo_requisicion.Post;
       end;

       cxCancelarDetalle.Click;

    end;

//    else
//    if cxPageDetalle.ActivePage = cxTabCarpetas  then
//    begin
//
//       try
//          dlgPDF.FileName := '';
//          lNoGuardarDocto := False;
//         // cxVentana.OnSelectItem
//          Archivo := cxVentana.Folders.PathName;
//           cxVentana.ScrollContent();
////          if not dlgPDF.Execute() then
////            exit;
//         // cxVentana.Options.GetNamePath.
//         // Archivo := dlgPDF.FileName;
//          Archivo := cxVentana.Options.GetNamePath;
//          if not FileExists(Archivo) then
//            raise exception.Create('No se encontro el archivo especificado');
//
//          Ext := ExtractFileExt(Archivo);
//
//          if ( Ext <> '.PDF' ) and ( Ext <> '.pdf' ) then
//            raise exception.Create('El archivo no es valido');
//
//         // if (zCertificado.State = dsEdit) or (zCertificado.State <> dsInsert) then
//           //  zCertificado.Edit;
//
//          // zPagoDetalle.FieldByName('Anexo').AsString :=  ExtractFileDir(Archivo)+'\'+ExtractFileName(Archivo);
//         //anexo_requisicion.FieldByName('NombreDocto').AsString := ExtractFileName(Archivo);
//          //TBlobField(anexo_requisicion.FieldByName('Anexo')).LoadfromFile(archivo);
//          anexo_requisicion.FieldByName('Anexo').AsString := ExtractFileDir(archivo);
//        except
//          on e:exception do
//          begin
//            MessageDlg(e.Message, mtinformation, [mbOk], 0);
//            if anexo_requisicion.state in [dsInsert, dsEdit] then
//               lNoGuardarDocto := True;
//          end;
//       end;
//    end;


end;

procedure TFrmRevisionesRequisiciones.cxImportarClick(Sender: TObject);
var
   x, y, i : Integer;
begin
    OpenXLS.Title := 'Seleccione Plantilla de MS Excel';
    if OpenXLS.Execute then
    begin
        for x := 1 to 26 do
            columnas[x] := Chr(64 + x);

        i := 27;
        for x := 1 to 9 do
        begin
             for y := 1 to 26 do
             begin
                 columnas[i] := Chr(64+ x) + Chr(64 + y);
                 i := i + 1;
             end;
        end;
    end;
end;

procedure TFrmRevisionesRequisiciones.cxManagerAprobadorEnter(Sender: TObject);
begin
   cxManagerAprobador.Style.Color := global_color_entradaERP;
end;

procedure TFrmRevisionesRequisiciones.cxVentanaChange(Sender: TObject;
  Item: TListItem; Change: TItemChange);
begin
      ruta:=cxVentana.Folders[cxVentana.InnerListView.ItemIndex].PathName;
end;

procedure TFrmRevisionesRequisiciones.cxView_MaterialesCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if panelAccesorio.Visible = true then
    scrollAccesorios();
end;

procedure TFrmRevisionesRequisiciones.cxView_MaterialesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if cxView_Materiales.OptionsView.CellAutoHeight then
       cxView_Materiales.OptionsView.CellAutoHeight := False
    else
       cxView_Materiales.OptionsView.CellAutoHeight := True;
end;

procedure TFrmRevisionesRequisiciones.cxView_MaterialesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ComentarMR1.Visible:=False;
  PegarGrupoMaterial1.Visible := False;
  CopiarGrupoMaterial1.Visible := False;
  Paste1.Visible := False;
  PegarWorkOrder1.Visible := False;
  PegarQARequirement1.Visible := False;
  CopiarWorkOrder1.Visible := False;
  CopiarQARequirement1.Visible := False;
  ActualizaMateriales1.Visible := False;
  AbrirAnexo1.Visible := False;
  traerAccesorio.Visible := False;

  ActualizaMateriales1.Visible := False;
//  if anexo_requisicion.FieldByName('sStatus').AsString = 'GENERO PR' then
    Nuevoservicio.Visible := False;

end;

procedure TFrmRevisionesRequisiciones.cxView_RequsicionCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

  if PanelDetalle.Visible = True then
    llenarCampos();

  if PanelMaterial.Visible then
     VistaDetalleMR;
end;

procedure TFrmRevisionesRequisiciones.cxView_RequsicionCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if cxView_Requsicion.OptionsView.CellAutoHeight then
      cxView_Requsicion.OptionsView.CellAutoHeight := False
   else
      cxView_Requsicion.OptionsView.CellAutoHeight := True;
end;

procedure TFrmRevisionesRequisiciones.cxView_RequsicionDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  IsOpen := False;
end;

procedure TFrmRevisionesRequisiciones.cxView_RequsicionDataControllerFilterChanged(
  Sender: TObject);
begin
  IsOpen := True;
end;

procedure TFrmRevisionesRequisiciones.cxView_RequsicionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if PanelDetalle.Visible = True then
    llenarCampos() ;

  if PanelMaterial.Visible then
     VistaDetalleMR;
end;

procedure TFrmRevisionesRequisiciones.cxView_RequsicionMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  PegarGrupoMaterial1.Visible := False;
  CopiarGrupoMaterial1.Visible := False;
  PegarQARequirement1.Visible := False;
  CopiarQARequirement1.Visible := False;
  NoRequiereInspeccionQA1.Visible:=False;
  PegarWorkOrder1.Visible := False;
  CopiarWorkOrder1.Visible := False;
  ComentarMR1.Visible:=False;
  ActualizaMateriales1.Visible := False;
  nuevoServicio.Visible := False;
  traerAccesorio.Visible := False;
  AbrirAnexo1.Visible := False;


//  if global_grupo = 'LIDER_AVANZADO' then
//  BEGIN
//    //if (global_usuario = '') or (global_usuario = '') or (global_usuario = '') then
    NuevoServicio.Visible := False;
//  END
//  else
//    NuevoServicio.Visible := False;

end;

procedure TFrmRevisionesRequisiciones.selectPlanta;
begin
//  zPOrdenes_Trabajo.Locate('sNumeroOrden', anexo_requisicion.FieldByName('sNumeroOrden').AsString,[]);
//  if (zPOrdenes_Trabajo.FieldByName('sIdFolio').AsString = 'DEPARTAMENTO')   or
//  (zPOrdenes_Trabajo.FieldByName('sIdFolio').AsString = 'FACILITIES') then begin
//
//     if not (cxWbs.EditValue=null) then
//        if  anexo_requisicion.Locate('iFolioRequisicion',cxView_Requsicion.DataController.DataSet.FieldByName('iFolioRequisicion').AsString,[]) then begin
//              anexo_requisicion.Edit;
//              if (anexo_requisicion.State=dsInsert) or (anexo_requisicion.State=dsEdit)  then begin
//                anexo_requisicion.FieldByName('IdPlanta').AsInteger :=  zCentroCosto.FieldByName('IdPlanta').AsInteger;
//                anexo_requisicion.Refresh;
//              end;
//        end;
//      end;

  end;


procedure TFrmRevisionesRequisiciones.EnterControl(Sender: TObject);
begin
     if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;
    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbRadioGroup) then
        tcxDBRadioGroup(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TFrmRevisionesRequisiciones.cxNuevoDetalleClick(Sender: TObject);
begin
//  Try
//     if (anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') then
//     begin
//         global_frmActivo :='Servicios';
//
//         OpcButton := 'New';
//         if cxPageDetalle.ActivePage = cxTabMaterial then
//         begin
//            global_frmActivo:='Servicios';
//         end;
//         Application.CreateForm(TfrmAgregarMasivoServicios, frmAgregarMasivoServicios);
//         frmAgregarMasivoServicios.show;
//     end
//     else
//     begin
//        messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
//     end;
//  except
//   on e : exception do begin
//        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_RequisicionPerf', 'Al agregar registro ', 0);
//   end;
//  end;

end;

procedure TFrmRevisionesRequisiciones.cxOrdenTrabajoEnter(Sender: TObject);
begin
//   uOrdenesTrabajo.Filtered := False;
//   uOrdenesTrabajo.Filter   := ' sCodigo = '+QuotedStr(tsNumeroOrden.Text);
//   uOrdenesTrabajo.Filtered := True;

   mComentarioOT := uOrdenesTrabajo.FieldByName('mComentarios').AsString;

   cxOrdenTrabajo.Style.Color := global_color_entradaERP;
end;

procedure TFrmRevisionesRequisiciones.cxOrdenTrabajoExit(Sender: TObject);
begin
    if pos(mComentarioOT,tmComentarios.Text) > 0 then
    begin
        uOrdenesTrabajo.Locate('sIdFolio',cxOrdenTrabajo.Text,[]);
        anexo_requisicion.FieldByName('mComentarios').AsString := stringreplace(anexo_requisicion.FieldByName('mComentarios').AsString, mComentarioOT, uOrdenesTrabajo.FieldByName('mComentarios').AsString,
                          [rfReplaceAll, rfIgnoreCase]);
    end
    else
    begin
        anexo_requisicion.FieldByName('mComentarios').AsString  := uOrdenesTrabajo.FieldByName('mComentarios').AsString +' para el día '+DateToStr(anexo_requisicion.FieldByName('dFechaRequerido').AsDateTime)+#13+#13+
        tmComentarios.Text;
    end;
    cxOrdenTrabajo.Style.Color := global_color_salidaERP;
end;

procedure TFrmRevisionesRequisiciones.cxPageDetalleClick(Sender: TObject);
begin
  if cxPageDetalle.ActivePage = cxTabMaterial then
   begin
    titulo2:='Servicios';
    cxNuevoDetalle.Enabled := True;
    cxEliminarDetalle.Enabled := True;
    btnAccesorios.Enabled := True;

    anexo_prequisicion.Active:= False;
    AsignarSQL(anexo_prequisicion,'anexo_prequisicion_serv',pUpdate);
    FiltrarDataSet(anexo_prequisicion,'contrato,Folio,Tipo',
    [global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString,anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger]);
    anexo_prequisicion.Open;
   end;

   if cxPageDetalle.ActivePage = tabInformes then
   begin
     titulo2:='Informes';
     cxNuevoDetalle.Enabled:=False;
     cxEditaDetalle.Enabled:=False;
     cxEliminarDetalle.Enabled:=False;
   end ;
   if cxPageDetalle.ActivePage = cxTabCarpetas then
   begin
     titulo2:='Documentos' ;
    PanelMaterial.Visible := False;
    cxSplitter3.Visible := False;
    PanelAccesorio.Visible := False;
    cxSplitterAccesorio.Visible := False;
    cxNuevoDetalle.Enabled := False;
    cxEliminarDetalle.Enabled := False;
    btnAccesorios.Enabled := False;


   end
   else
   begin
     cxNuevoDetalle.Enabled:=True;
     cxEditaDetalle.Enabled:=True;
     cxEliminarDetalle.Enabled:=True;


   end;
   cxLeyenda2.Caption:=titulo2;
end;


procedure TFrmRevisionesRequisiciones.cxProyectoExit(Sender: TObject);
var
zFolios : TUniQuery;
begin
   cxProyecto.Style.Color := global_color_salidaERP;
   zPOrdenes_Trabajo.Locate('sNumeroOrden', anexo_requisicion.FieldByName('sNumeroOrden').AsString,[]);
   if connection.uUsuario.Locate('sIdUsuario',zPOrdenes_Trabajo.FieldByName('sIdUsuario').AsString,[]) = true then
   begin
     cxSAPRelease.DataBinding.DataSource.DataSet.FieldByName('IdSAPSolicitante').AsInteger := connection.uUsuario.FieldByName('IdGerente').AsInteger;
     cxManagerAprobador.DataBinding.DataSource.DataSet.FieldByName('IdAutorizaManager').AsInteger := connection.uUsuario.FieldByName('IdAutorizador').AsInteger;
   end
   else
   begin
    if (cxSAPRelease.DataBinding.DataSource.DataSet.FieldByName('IdSAPSolicitante').AsInteger<>null) then begin
      anexo_requisicion.FieldValues['IdSAPSolicitante']   := 8;
      zApruebaRequisicion.Locate('IdAutorizador', StrToInt(AnteriorArray[8]),[]);
      cxManagerAprobador.DataBinding.DataSource.DataSet.FieldByName('IdAutorizaManager').AsInteger  := zApruebaRequisicion.FieldByName('IdAutorizador').AsInteger;
    end;
   end;

   zPOrdenes_Trabajo.Locate('sNumeroOrden', anexo_requisicion.FieldByName('sNumeroOrden').AsString,[]);

   zFolios:=tUniquery.create(nil);
   zFolios.Connection := Connection.uConnection;
   zFolios.Active := False;
   zFolios.Active:= False;
   AsignarSQL(zFolios,'anexo_requisicion_tracking',pUpDate);
   FiltrarDataSet(zFolios,'Folio',[zPOrdenes_Trabajo.FieldByName('sIdFolio').AsString]);
   zFolios.ExecSQL;

   if (zFolios.FieldByName('Folios').AsString='') then begin

     if (anexo_requisicion.State=dsInsert) or (anexo_requisicion.State=dsEdit)  then
        anexo_requisicion.FieldByName('sNumFolio').AsString:=autoFolio(anexo_requisicion,'anexo_requisicion',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,tsDepartamento.DataBinding.DataSource.DataSet.FieldByName('IdDepartamento').AsInteger);

   end
   else
    if (zFolios.FieldByName('Folios').AsString<> null)then
      if (anexo_requisicion.State=dsInsert)  then
         anexo_requisicion.FieldByName('sNumFolio').AsString:=zFolios.FieldByName('Folios').AsString;

end;


procedure TFrmRevisionesRequisiciones.cxQAprobadorEnter(Sender: TObject);
begin

   cxQAprobador.Style.Color := global_color_entradaERP;
end;

procedure TFrmRevisionesRequisiciones.cxSAPClick(Sender: TObject);
Var
  CadError, OrdenVigencia: String;
//////////////////////////////////// PLANTILAS DE IMPORTACION /////////////////////////////////////
Function GenerarPlantilla: Boolean;
Var
  Resultado: Boolean;
    Procedure DatosPlantilla;
    Var
      CadFecha, tmpNombre, cadena, sColIDName, sId, accesorios : String;
      fs: tStream;
      i,x,n : integer;
    Begin
      // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;

      {$REGION 'PLANTILLA MR SAP'}

            Excel.Columns['A:A'].ColumnWidth := 8.5;
            Excel.Columns['B:B'].ColumnWidth := 8.5;
            Excel.Columns['C:C'].ColumnWidth := 9.1;
            Excel.Columns['D:D'].ColumnWidth := 10.5;
            Excel.Columns['E:E'].ColumnWidth := 11.3;
            Excel.Columns['F:F'].ColumnWidth := 7.3;
            Excel.Columns['G:G'].ColumnWidth := 12.5;
            Excel.Columns['H:H'].ColumnWidth := 41;
            Excel.Columns['I:I'].ColumnWidth := 9.8;
            Excel.Columns['J:J'].ColumnWidth := 10.29;
            Excel.Columns['K:K'].ColumnWidth := 10.7;
            Excel.Columns['L:L'].ColumnWidth := 11.0;
            Excel.Columns['M:M'].ColumnWidth := 8.5;
            Excel.Columns['N:N'].ColumnWidth := 11.2;
            Excel.Columns['O:O'].ColumnWidth := 12.2;
            Excel.Columns['P:P'].ColumnWidth := 9.0;
            Excel.Columns['Q:Q'].ColumnWidth := 11.29;
            Excel.Columns['R:R'].ColumnWidth := 12.29;
            Excel.Columns['S:S'].ColumnWidth := 11.29;
            Excel.Columns['T:T'].ColumnWidth := 15.29;
            Excel.Columns['U:U'].ColumnWidth := 13.29;
            Excel.Columns['V:V'].ColumnWidth := 5.29;
            Excel.Columns['W:W'].ColumnWidth := 6.6;
            Excel.Columns['X:X'].ColumnWidth := 16.43;
            Excel.Columns['Y:Y'].ColumnWidth := 12.29;
            Excel.Columns['Z:Z'].ColumnWidth := 16;
            Excel.Columns['AA:AA'].ColumnWidth := 11.14;
            Excel.Columns['AB:AB'].ColumnWidth := 23.57;
            Excel.Columns['AC:AC'].ColumnWidth := 24.57;
            Excel.Columns['AD:AD'].ColumnWidth := 36.29;
            Excel.Columns['AE:AE'].ColumnWidth := 5.57;
            Excel.Columns['AF:AF'].ColumnWidth := 22.29;

            //Textos Columnas en celeste
            Excel.Range['X1:Z1'].Select;
            Excel.Selection.Value := 'ACCOUNT ASSIGNMENT';
            Excel.Range['AA1:AD1'].Select;
            Excel.Selection.Value := 'TEXTO LARGO';
            Excel.Range['x1:AD1'].Select;

            //Texto Columnas en Gris
            Excel.Cells[2,1].Select;
            Excel.Selection.Value := 'Release Strategy';
            Excel.Cells[2,2].Select;
            Excel.Selection.Value := 'Release indicator';
            Excel.Cells[2,3].Select;
            Excel.Selection.Value := 'Item of Requisition';
            Excel.Cells[2,4].Select;
            Excel.Selection.Value := 'Acct Assignment Cat.';
            Excel.Cells[2,5].Select;
            Excel.Selection.Value := 'Item Category';
            Excel.Cells[2,6].Select;
            Excel.Selection.Value := 'Material';
            Excel.Cells[2,7].Select;
            Excel.Selection.Value := 'Vendor Material Number';
            Excel.Cells[2,8].Select;
            Excel.Selection.Value := 'Text';
            Excel.Cells[2,9].Select;
            Excel.Selection.Value := 'Quantity Requested';
            Excel.Cells[2,10].Select;
            Excel.Selection.Value := 'Unit of Measure';
            Excel.Cells[2,11].Select;
            Excel.Selection.Value := 'Valuation Price';
            Excel.Cells[2,12].Select;
            Excel.Selection.Value := 'Total Value';
            Excel.Cells[2,13].Select;
            Excel.Selection.Value := 'Currency';
            Excel.Cells[2,14].Select;
            Excel.Selection.Value := 'Delivery Date';
            Excel.Cells[2,15].Select;
            Excel.Selection.Value := 'Material Group';
            Excel.Cells[2,16].Select;
            Excel.Selection.Value := 'Plant';
            Excel.Cells[2,17].Select;
            Excel.Selection.Value := 'Purchasing Group';
            Excel.Cells[2,18].Select;
            Excel.Selection.Value := 'Requisitioner';
            Excel.Cells[2,19].Select;
            Excel.Selection.Value := 'Req. Tracking Number';
            Excel.Cells[2,20].Select;
            Excel.Selection.Value := 'Desired Vendor';
            Excel.Cells[2,21].Select;
            Excel.Selection.Value := 'Fixed Vendor';
            Excel.Cells[2,22].Select;
            Excel.Selection.Value := 'Purch. Organization';

            Excel.Cells[2,24].Select;
            Excel.Selection.Value := 'UNLOADING POINT';
            Excel.Cells[2,25].Select;
            Excel.Selection.Value := 'RECIPIENT';
            Excel.Cells[2,26].Select;
            Excel.Selection.Value := 'WBS Code / Network Code / Cost Center No / Work Order No';
            Excel.Cells[2,27].Select;
            Excel.Selection.Value := 'Trazabilidad No';
            Excel.Cells[2,28].Select;
            Excel.Selection.Value := 'QA Req*';
            Excel.Cells[2,29].Select;
            Excel.Selection.Value := 'Nota del uso del material';
            Excel.Cells[2,30].Select;
            Excel.Selection.Value := 'Nota General de la MR';

            Excel.Cells[2,32].Select;
            Excel.Selection.Value := 'Project Manager Approval';

            i:=3;
            x:=1;
            anexo_prequisicion.First;
            while not anexo_prequisicion.Eof do
            begin
              Excel.Cells[i, 1].Select;
              Excel.Selection.Value := 'R1';

              Excel.Cells[i, 2].Select;
              Excel.Selection.Value := 'X';

              Excel.Cells[i, 3].Select;
              Excel.Selection.Value :=x;

              Excel.Cells[i, 4].Select;
              if (anexo_requisicion.FieldByName('Proyecto').AsString = 'DEPARTAMENTO') or (anexo_requisicion.FieldByName('Proyecto').AsString = 'FACILITIES') then
                 Excel.Selection.Value := 'K'
              else
                 Excel.Selection.Value := 'P';

              if anexo_prequisicion.FieldByName('IdTipoRecurso').AsInteger = 2 then
              begin
                  Excel.Cells[i, 5].Select;
                  Excel.Selection.Value := 'D';
              end;

              Excel.Cells[i, 7].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('NumeroMaterial').AsString;

              Excel.Cells[i, 8].Select;
              Excel.Selection.NumberFormat := '@';

              AsignarSQL(zAccesorios, 'existe_accesorio', pUpdate);
              FiltrarDataSet(zAccesorios, 'sIdEquipo, EquipoDetalle, FolioReq, ReqDetalle',
              ['-1', '-1', '-1',anexo_prequisicion.FieldByName('IdPRequisicion').AsString]);
              zAccesorios.Open;

              zAccesorios.First;
              while not zAccesorios.Eof do
              begin
                accesorios := zAccesorios.FieldByName('CantDEscripcion').AsString +#10+accesorios;
                zAccesorios.Next;
              end;

              if anexo_prequisicion.FieldByName('Extraordinario').AsString='' then
                 Excel.Selection.Value := anexo_prequisicion.FieldByName('sIdInsumo').AsString+' '+anexo_prequisicion.FieldByName('sDescripcion').AsString + {CHAR(10)} '     '+ anexo_prequisicion.FieldByName('sObservacion').AsString +#10#10+ accesorios
              else
                 Excel.Selection.Value := anexo_prequisicion.FieldByName('sIdInsumo').AsString+' '+anexo_prequisicion.FieldByName('Extraordinario').AsString+' '+anexo_prequisicion.FieldByName('sDescripcion').AsString + {CHAR(10)}'     '+ anexo_prequisicion.FieldByName('sObservacion').AsString+#10#10+ accesorios;;

              Excel.Cells[i, 9].Select;
              Excel.Selection.NumberFormat := '#,##0.00';
              Excel.Selection.Value := anexo_prequisicion.FieldByName('dCantidad').AsFloat;

              Excel.Cells[i, 10].Select;
              Excel.Selection.NumberFormat := '@';
              Excel.Selection.Value := anexo_prequisicion.FieldByName('MedidaSAP').AsString;

              Excel.Cells[i, 11].Select;
              Excel.Selection.NumberFormat := '#,##0.00';
              Excel.Selection.Value := 1;

              Excel.Cells[i, 12].Select;
              Excel.Selection.NumberFormat := '#,##0.00';
              Excel.Selection.Value := 0;

              Excel.Cells[i, 13].Select;
              Excel.Selection.Value := 'MXN';

              Excel.Cells[i, 14].Select;

              Excel.Selection.NumberFormat := 'd.m.aaaa';
              if anexo_prequisicion.FieldByName('dFechaRequerido').IsNull then
                 Excel.Selection.Value:=''
              else
                Excel.Selection.Value :=anexo_prequisicion.FieldByName('dFechaRequerido').AsDateTime;

              Excel.Cells[i, 15].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('CodigoGrupoMaterial').AsString;

              Excel.Cells[i, 16].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('CodigoPlanta').AsString;

              Excel.Cells[i, 17].Select;
              Excel.Selection.Value := 'R43';

              Excel.Cells[i, 18].Select;
              //Se aplica solo los 12 caracteres
              if length(anexo_prequisicion.FieldByName('sIdInsumo').AsString)> 12 then
              begin
                  sId := anexo_prequisicion.FieldByName('sIdInsumo').AsString;
                  sId := copy(sId,0,pos('-',sId)-1)+copy(sId,pos('-',sId)+1,length(sId));
                  sId := copy(sId,0,pos('-',sId)-1)+copy(sId,pos('-',sId)+1,length(sId));

                  Excel.Selection.Value := sId;
              end
              else
                 Excel.Selection.Value := anexo_prequisicion.FieldByName('sIdInsumo').AsString;

              Excel.Cells[i, 19].Select;
              Excel.Selection.Value := anexo_requisicion.FieldByName('sNumFolio').AsString;

              Excel.Cells[i, 22].Select;
              Excel.Selection.Value := 'GM01';

              Excel.Cells[i, 24].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('sPuntoCarga').AsString;

              Excel.Cells[i, 25].Select;
              Excel.Selection.Value := 'JOSE ZUÑIGA';

              Excel.Cells[i, 26].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('CentroCosto').AsString;

              Excel.Cells[i, 27].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('NumeroMaterial').AsString;

              Excel.Cells[i, 28].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('EspecificacionesQAN').AsString;

              Excel.Cells[i, 29].Select;
              if pos(mComentarioOT,tmComentarios.Text) > 0 then
              begin
                  Excel.Selection.Value := uOrdenesTrabajo.FieldByName('mComentarios').AsString +' para el día '+DateToStr(anexo_requisicion.FieldByName('dFechaRequerido').AsDateTime);
              end
              else
                 Excel.Selection.Value := '';

              Excel.Cells[i, 30].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('mComentarios').AsString;

              Excel.Cells[i, 31].Select;
              Excel.Selection.Value := '';

              Excel.Cells[i, 32].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('AuNombre').AsString;
              anexo_prequisicion.Next;

              Excel.Range['A'+IntToStr(i)+':AF'+IntToStr(i)].Select;
              Excel.Selection.WrapText := False;
              inc(i);
              inc(x);
            end;

            //Color y merge parte superior
            Excel.Range['X1:Z1'].Select;
            Excel.Selection.MergeCells := True;
            Excel.Range['AA1:AD1'].Select;
            Excel.Selection.MergeCells := True;
            Excel.Range['X1:AD1'].Select;
            Excel.Selection.Interior.Color  := $00E6C29B;

            //Color y Merge de las columnas en Gris
            Excel.Rows['1:1'].RowHeight := 15;
            Excel.Rows['2:2'].RowHeight := 63.75;
            Excel.Range['A2:V2,X2:AD2,AF2:AF2'].Select;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Interior.Color      := $00C0C0BF;
            Excel.Selection.Font.Name := 'Arial';
            Excel.Selection.Font.Size := 10;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.WrapText := True;
            Excel.Selection.Borders[xlEdgeTop].LineStyle:= 1;
            Excel.Selection.Borders[xlEdgeTop].Weight:= 2;
            Excel.Selection.Borders[xlEdgeBottom].LineStyle:= 1;
            Excel.Selection.Borders[xlEdgeBottom].Weight:= 2;

            //Formato a las filas de información
            Excel.Range['A3:G'+IntToStr(i)+','+'J3:V'+IntToStr(i)+','+'Y3:AB'+IntToStr(i)+','+'AF3:AF'+IntToStr(i)].Select;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Size := 10;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Arial';
            //Excel.Selection.RowHeight := 24;

            Excel.Range['H3:H'+IntToStr(i)].Select;
            Excel.Selection.VerticalAlignment := xlTop;
            Excel.Selection.Font.Size := 10;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Arial';
            Excel.Selection.WrapText := True;

            Excel.Range['I3:I'+IntToStr(i)].Select;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Size := 10;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Arial';

            Excel.Range['X3:AC'+IntToStr(i)].Select;
            Excel.Selection.Font.Size := 10;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Arial';
            Excel.Selection.VerticalAlignment := xlTop;
            Excel.Selection.WrapText := True;

            Excel.Range['AD3:AD'+IntToStr(i)].Select;
            Excel.Selection.Font.Size := 10;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Arial';
            Excel.Selection.VerticalAlignment := xlTop;
            Excel.Selection.HorizontalAlignment := xlLeft;
            Excel.Selection.WrapText := False;

//            Excel.Cells[2, 4].Select;
//            Excel.Selection.Value := '0';
//            Excel.Range['A1:AD1'].Select;


      {$ENDREGION}


      {$ENDREGION}

      Excel.Range['A1:A1'].Select;

    End;

    Begin
      Resultado := True;
      {$REGION 'OPCIONES DE IMPRESION'}
      Try
        Hoja := Libro.Sheets[1];
        Hoja.Select;
        Hoja.Name := 'FORMATO SAP REQUISICION';


        {$ENDREGION}
        DatosPlantilla;
        Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
        Excel.DisplayAlerts := True;
      Except
        on e:exception do
        Begin
          Resultado := False;
          CadError := 'Se ha producido el siguiente error al generar el Archivo de Excel Exportar a SAP' + #10 + #10 + e.Message;
          Excel.DisplayAlerts := True;
        End;
      End;


      Result := Resultado;

    end;

begin
  if PanelDetalle.Visible = False then
    llenarCampos();

  // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
  If Not SaveDialog1.Execute Then
    Exit;

  // Generar el ambiente de excel
  try
    Excel := CreateOleObject('Excel.Application');
  except
       on e : exception do begin
           FreeAndNil(Excel);
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Exportación de Requisición', 'Al importar datos', 0);
           Exit;
    end;
  end;

  Excel.Visible := True;
  Excel.DisplayAlerts := False;
  Excel.ScreenUpdating := True;

  Libro := Excel.Workbooks.Add;    // Crear el libro sobre el que se ha de trabajar

  // Verificar si cuenta con las hojas necesarias
  while Libro.Sheets.Count < 2 do
    Libro.Sheets.Add;

  // Verificar si se pasa de hojas necesarias
  Libro.Sheets[1].Select;
  while Libro.Sheets.Count > 1 do
    Excel.ActiveWindow.SelectedSheets.Delete;

  // Proceder a generar la hoja REPORTE
  CadError := '';

  GenerarPlantilla;
  Excel := '';

  if CadError <> '' then
    showmessage(CadError)
  else
    tsarchivo.Text:='Formato SAP';
end;

procedure TFrmRevisionesRequisiciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFrmRevisionesRequisiciones.FormShow(Sender: TObject);
var
Cursor: TCursor;
  LocIdEmpresa: String;
begin

  btnPermisos := global_btnPermisos;

   // PanelDetalle.Visible := False;
    Panel2.Visible := False;
    cxSplitter1.Visible := False;
    titulo:='Servicios';
    titulo2:='Informes';
    cxLeyenda.Caption:=titulo;
    cxLeyenda2.Caption:=titulo2;

    cxSplitter2.Visible := False;
    PanelDetalle.Visible       := False;

    zDepartamento.Active:= False;
    AsignarSQL(zDepartamento,'master_departamento',pUpDate);
    zDepartamento.Open;

    uPlanta.Active:= False;
    AsignarSQL(uPlanta,'master_planta',pUpdate);
    FiltrarDataSet(uPlanta,'IdPlanta,Codigo,Activo',[-1,-1,-1]);
    uPlanta.Open;

    zRecurso.Active:=False;
    zRecurso.SQL.Text:='select IdTiporecurso, Nombre from op_tiporecurso; ';
    zRecurso.Open;

    uGerentes.Active:= False;;
    AsignarSQL(uGerentes,'master_departamento_gerente',pUpdate);
    uGerentes.Open;

    qOrdenes_trabajo.Active:= False;
    AsignarSQL(qOrdenes_trabajo,'ordenesdetrabajo_req',pUpdate);
    FiltrarDataSet(qOrdenes_trabajo,'Contrato,Tipo',[global_contrato,'CONTRATO']);
    qOrdenes_trabajo.Open;

    uOrdenesTrabajo.Active:= False;
    AsignarSQL(uOrdenesTrabajo,'ordenesdetrabajo_req',pUpdate);
    FiltrarDataSet(uOrdenesTrabajo,'Contrato,Tipo',[global_contrato,'ORDEN_TRABAJO']);
    uOrdenesTrabajo.Open;

    zPOrdenes_Trabajo.Active:= False;
    AsignarSQL(zPOrdenes_Trabajo,'ordenesdetrabajo_req',pUpdate);
    FiltrarDataSet(zPOrdenes_Trabajo,'Contrato,Tipo',[global_contrato,'PROYECTO']);
    zPOrdenes_Trabajo.Open;

    plataforma.Active:= False;
    AsignarSQL(plataforma,'plataformas',pUpdate);
    FiltrarDataSet(plataforma,'Plataforma',[-1]);
    plataforma.Open;

    zApruebaRequisicion.Active:= False;
    AsignarSQL(zApruebaRequisicion,'alm_aprueba_requisiciones',pUpdate);
    zApruebaRequisicion.Open;

    zApruebaRequisicion.Filtered := False;
    zApruebaRequisicion.Filter   := ' TipoAutorizacion = '+QuotedStr('Req');
    zApruebaRequisicion.Filtered := True;

    zApruebaQA.Active:= False;
    AsignarSQL(zApruebaQA,'alm_aprueba_requisiciones',pUpdate);
    zApruebaQA.Open;

    zApruebaQA.Filtered := False;
    zApruebaQA.Filter   := ' TipoAutorizacion = '+QuotedStr('QA');
    zApruebaQA.Filtered := True;

    AsignarSQL(anexo_requisicion,'consulta_historial_serv',pUpdate);
    FiltrarDataSet(anexo_requisicion,'contrato,IdDepartamento',[global_contrato, -1]);
    anexo_requisicion.Open;

    zGrafica.Active:= False;
    AsignarSQL(zGrafica,'grafica_requisiciones',pUpdate);
    FiltrarDataSet(zGrafica,'years',[anexo_requisicion.FieldByName('Periodo').AsString]);
    zGrafica.Open;

    uGrupoMaterial.Active:= False;
    AsignarSQL(uGrupoMaterial,'alm_grupos',pUpdate);
    FiltrarDataSet(uGrupoMaterial,'Id,Codigo',[-1,-1]);
    uGrupoMaterial.Open;

    zCentroCosto.Active:= False;
    AsignarSQL(zCentroCosto,'ordenesdetrabajo_reqcc',pUpdate);
    FiltrarDataSet(zCentroCosto,'Contrato,Tipo, sIdUsuario',[global_contrato,'CENTRO_COSTO', '-1']);
    zCentroCosto.Open;

    AsignarSQL(uRequerimientosQA,'req_control_calidad',pUpdate);
    FiltrarDataSet(uRequerimientosQA,'IdRequerimiento', ['-1']);
    uRequerimientosQA.Open;

    cxRequerimientosQA.Clear;
    while not uRequerimientosQA.Eof do
    begin
        cxRequerimientosQA.AddItem(IntToStr(uRequerimientosQA.RecNo)+'.-'+uRequerimientosQA.FieldByName('Descripcion').AsString);
        uRequerimientosQA.Next;
    end;

    cxPageDetalle.ActivePageIndex := 7;
    cxGrid1DBChartView1.Categories.DisplayText:='Periodo '+zGrafica.FieldByName('years').AsString;
    if anexo_requisicion.RecordCount > 0 then
      grid_requsicion.SetFocus;

    tsSolicitante.Text  := Global_Nombre ;

    cxView_Requsicion.DataController.Groups.FullExpand;

    IsOpen := True;
    PermisosBotones(FrmRevisionesRequisiciones,btnPermisos);
    frmBarraH11.btnExporta.Visible:=False;

    AsignarSQL(zFirma, 'rd_firmas', pUpdate);
    FiltrarDataSet(zFirma, 'IdFirma, Contrato',[-1, Global_Contrato]);
    zFirma.Open;

    zFirma.Filtered := False;
    zFirma.Filter   := 'VistaUsuario = '+ QuotedStr(self.Caption);
    zFirma.Filtered := True;

     AsignarSQL(zNotasGenerales,'configura_mail_mensaje',pUpdate);
    FiltrarDataSet(zNotasGenerales,'Clasificacion',['REQUISICION']);
    zNotasGenerales.Open;

    AsignarSQL(zdepC,'master_dep_compra',pUpdate);

    cxInicioRequerido.Date := StrToDate('01'+copy(DateToStr(date),3,10));
    cxFinRequerido.Date    := date;

    //Bloqueo de opciones según estado de la MR(requisición)
    if (anexo_requisicion.FieldByName('sStatus').AsString = 'LIBERADO') OR (anexo_requisicion.FieldByName('sStatus').AsString = 'COMPRADO') then
    begin
        cxSap.Enabled := true;
    end;  try
    Cursor := Screen.Cursor;
    try
      if zCorreo.Active then
        zCorreo.Refresh
      else
      begin
        zCorreo.ParamByName('Contrato').AsString  := global_contrato;
        zCorreo.ParamByName('Usuario').AsString  := global_usuario;
        zCorreo.ParamByName('Empresa').AsString  := connection.ucontrato.FieldByName('IdEmpresa').AsString;
        zCorreo.Open;
      end;

//      if zqEnviados.Active then
//        zqEnviados.Refresh
//      else
//      begin
//      //  zqEnviados.ParamByName('Usuario').AsString  := global_usuario;
//      //  zqEnviados.ParamByName('Empresa').AsString := global_contrato;
//        zqEnviados.Open;
//      end;

      if ((zCorreo.RecordCount = 0) and (zCorreo.FieldByName('NotificarAutorizar').AsString='Si'))then
      begin
        if messageDLG('No hay configuración de correo definida para tu empresa. ¿Deseas configurar tu cuenta ahora?', mtInformation, [MbYes, MbNo], 0) = mrYes then
        begin
          Application.CreateForm(TFrmConfigCorreo, FrmConfigCorreo);
          FrmConfigCorreo.ShowModal;
          FormShow(Sender);
       end
       else
          raise Exception.Create('***');
      end;

    finally
      Screen.Cursor := crDefault;
    end;

  except
    on e: exception do
    begin
      if e.Message <> '***' then
        //MsgBox.ShowModal('Error.',pMensajeError + e.Message, cmtError, [cmbOK]);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;



end;

procedure TFrmRevisionesRequisiciones.frmBarraH11btnEditClick(Sender: TObject);
begin
 if cxView_Requsicion.DataController.DataSource.DataSet.IsEmpty=false then
  begin
      try
          if (anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') or (anexo_requisicion.FieldValues['sStatus'] = 'VALIDADO')
          or (anexo_requisicion.FieldValues['sStatus'] = 'AUTORIZADO') or (anexo_requisicion.FieldValues['sStatus'] = 'LIBERADO') then
          begin
              If anexo_requisicion.RecordCount > 0 then
              Begin
                anexo_requisicion.AfterScroll := nil;
                tsDepartamento.Enabled:=false;
                cxPlanta.Enabled:=false;
                cbRecurso.Enabled:=false;
                tsSolicitante.Enabled:=false;
                cxSAPRelease.Enabled:=false;
                tiFolio.Enabled:=false;
                tdidFecha.Enabled:=false;
                tdIdFecha2.Enabled:=false;
                tsNumeroOrden.Enabled:=false;
                cxOrdenTrabajo.Enabled:=false;
                cxUploadingPoint.Enabled:=false;
                tsLugarEntrega.Enabled:=false;
                cxProcurementSpecialist.Enabled:=false;
                cxPreferredSupplier.Enabled:=false;
                tmComentarios.Enabled:=false;
                cxManagerAprobador.Enabled:=false;
                cxQAprobador.Enabled:=false;
                dxDBToggleSwitch1.Enabled:=false;
                dxDBToggleSwitch3.Enabled := false;
                cxProyecto.Enabled := false;
                cxLogistica.Enabled := False;
                cxRevision.Enabled := true;
//                cxRevision.SetFocus;
//
                if (global_grupo='CALIDAD') then
                begin
                   tmComentarios.Enabled:=true;
                   cxQAprobador.Enabled:=true;
                end
                else
                if(global_grupo='CENTRO_COSTO') then
                cxPlanta.Enabled:=true
                else
                if(global_grupo='LIDER_MR') then  begin
                tmComentarios.Enabled:=true;
                tiFolio.Enabled:=true;
                tdIdFecha2.Enabled:=true;
                dxDBToggleSwitch1.Enabled:=true;
                end
                else
                if(anexo_requisicion.FieldByName('sIdUsuario').AsString=global_usuario) or ((anexo_requisicion.FieldByName('sIdUsuario').AsString=global_usuario) and (global_grupo='LIDER_AVANZADO')) then begin
                tsDepartamento.Enabled:=true;
                cxPlanta.Enabled:=False;
                cbRecurso.Enabled:=true;
                tsSolicitante.Enabled:=true;
                cxSAPRelease.Enabled:=true;
                tiFolio.Enabled:=true;
                //Se bloquea para que no puedan editar la fecha de requisicion 19-06-2019
                tdidFecha.Enabled:=False;
                tdIdFecha2.Enabled:=true;
                tsNumeroOrden.Enabled:=true;
                cxOrdenTrabajo.Enabled:=true;
                cxUploadingPoint.Enabled:=true;
                tsLugarEntrega.Enabled:=true;
                cxProcurementSpecialist.Enabled:=true;
                cxPreferredSupplier.Enabled:=true;
                tmComentarios.Enabled:=true;
                cxManagerAprobador.Enabled:=true;
                cxQAprobador.Enabled:=False;
                dxDBToggleSwitch1.Enabled:=true;
                end
                else
                if(global_grupo='LIDER_AVANZADO') and (anexo_requisicion.FieldByName('sIdUsuario').AsString<>global_usuario) then  begin
                cxProyecto.Enabled:=true;
                cxPlanta.Enabled:=true;
                dxDBToggleSwitch3.Enabled:=true;
                tiFolio.Enabled:=true;
                cxLogistica.Enabled:=true;
                end;
                anexo_requisicion.Edit;

                cxLeyenda.Caption:=titulo+'[Editando]';
                frmBarraH11.btnEditClick(Sender);
                Panel2.Visible:=True;
                cxSplitter1.Visible := False;
                grid_requsicion.Enabled:=False;
                cxSplitter2.Visible := False;
                PanelDetalle.Visible       := False;
                cxRevision.SetFocus;
              End;
          end
          else
          if (global_grupo='CALIDAD') or (global_grupo='CENTRO_COSTO') or (global_grupo='COMPRAS') then
          messageDLG('No puede editar la Requisicion. ', mtInformation, [mbOk],0)
          else
          begin
             messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
          end;
      except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Requisicion de Materiales', 'Al editar registro', 0);
        end;
      end;
  end;

end;

procedure TFrmRevisionesRequisiciones.frxEntradaGetValue(const VarName: string;
  var Value: Variant);
  Var
    sCadena : String ;
    iValorNumerico   : LongInt  ;
    Resultado        : Real     ;
begin
  If CompareText(VarName, 'CANTIDAD_LETRA')= 0 Then
    Begin
         iValorNumerico   := Trunc(Montototal) ;
         sCadena := xIntToLletres (iValorNumerico) +' PESOS ';
         Resultado := roundto(Montototal - iValorNumerico, -2) ;
         Resultado := Resultado * 100;
         iValorNumerico := Trunc(Resultado);
         sCadena := sCadena + IntToStr(iValorNumerico)+ '/100 M.N.';
         Value :=   sCadena
    end ;

  if CompareText(VarName, 'FECHA') = 0 then begin
    Value := anexo_requisicion.FieldValues['dIdFecha'];
  end;

end;

procedure TFrmRevisionesRequisiciones.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmRevisionesRequisiciones.IncluyeCodigoMaterial1Click(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    sNotas : string;
    SavePlace, SavePlace2 : TBookMark;
begin
    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;
    iGrid     := 0;
    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
        indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        cxView_Materiales.DataController.FocusedRowIndex := indice;

        with cxView_Materiales.DataController.DataSource.DataSet do
        for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
        begin
            indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
            cxView_Materiales.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update anexo_prequisicion set IncluyeCodigoMat =:Incluye '+
                               'where IdPRequisicion =:Id');
            zActualiza.ParamByName('Id').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
            zActualiza.ParamByName('Incluye').AsString := 'Si';
            zActualiza.ExecSQL;
        end;
    end;

    anexo_prequisicion.Refresh;
    zActualiza.destroy;
    cxCancelarDetalle.Click;

end;

procedure TFrmRevisionesRequisiciones.scrollAccesorios;
begin

   zAccesorios.Active := False;
   AsignarSQL(zAccesorios, 'existe_accesorio', pUpdate);
   FiltrarDataSet(zAccesorios, 'sIdEquipo, EquipoDetalle, FolioReq, ReqDetalle',
   [anexo_prequisicion.FieldByName('sIdEquipo').AsString, '-1', anexo_prequisicion.FieldByName('iFolioRequisicion').AsString,
   anexo_prequisicion.FieldByName('IdPRequisicion').AsString]);
   zAccesorios.Open;

end;

procedure TFrmRevisionesRequisiciones.llenarCampos;
begin
    cxLeyenda2.Caption := anexo_requisicion.FieldByName('Recurso').AsString;
    cxPageDetalle.ActivePageIndex := 0;
    cxTabMaterial.TabVisible:=True;
    cxTabMaterial.Caption := anexo_requisicion.FieldByName('Recurso').AsString;
    uOrdenesTrabajo.Locate('sIdFolio',cxOrdenTrabajo.Text,[]);
    mComentarioOT := uOrdenesTrabajo.FieldByName('mComentarios').AsString;

    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
        anexo_prequisicion.Active:= False;
        AsignarSQL(anexo_prequisicion,'anexo_prequisicion_upt',pUpdate);
        FiltrarDataSet(anexo_prequisicion,'contrato,Folio,Tipo',
        [global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString,anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger]);
        anexo_prequisicion.Open;
        VistaGrid := cxView_Materiales;

        if anexo_prequisicion.RecordCount = 0 then
          btnAccesorios.Enabled := false
        else
          btnAccesorios.Enabled := True;

    end;

//    if global_grupo = 'ADMON' then
//    begin
//        cxView_MaterialesColumn5.Visible := True;
//        cxView_MaterialesColumn6.Visible := True;
//    end
//    else
//    begin
//        cxView_MaterialesColumn5.Visible := False;
//        cxView_MaterialesColumn6.Visible := False;
//    end;
//
//    if global_grupo = 'CALIDAD' then
//    begin
//        cxView_MaterialesColumn5.Visible := True;
//        cxView_MaterialesColumn5.SortOrder;
//    end;
//
//    if global_grupo = 'CENTRO_COSTO' then
//    begin
//        cxView_MaterialesColumn6.Visible := True;
//        cxView_MaterialesColumn6.SortOrder;
//    end;
     cxView_MaterialesColumn5.Visible := False;
     cxView_MaterialesColumn6.Visible := True;
     MarcarOpcionesQA ;
     VistaGrid.DataController.SelectFromAnchor(VistaGrid.DataController.FocusedRecordIndex,True);
     if cxPageDetalle.ActivePage = tabInformes then
     begin
         zGrafica.Active:= False;
         AsignarSQL(zGrafica,'grafica_requisiciones',pUpdate);
         FiltrarDataSet(zGrafica,'years',[anexo_requisicion.FieldByName('Periodo').AsString]);
         zGrafica.Open;
         cxGrid1DBChartView1.Categories.DisplayText:='Periodo '+zGrafica.FieldByName('years').AsString;
     end;

end;

procedure TFrmRevisionesRequisiciones.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbRadioGroup) then
        tcxDBRadioGroup(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TFrmRevisionesRequisiciones.SeguimientoMaterialxPartidasdeAnexo1Click(
  Sender: TObject);
begin
   try
     if (cxView_Requsicion.DataController.DataSource.DataSet.IsEmpty) or (cxView_Requsicion.DataController.DataSource.DataSet.RecordCount<=0) then
 begin
   exit
 end;
    frxEntrada.PreviewOptions.MDIChild := False ;
    frxEntrada.PreviewOptions.Modal := True ;
    frxEntrada.PreviewOptions.Maximized := lCheckMaximized () ;
    frxEntrada.PreviewOptions.ShowCaptions := False ;
    frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;
    frxEntrada.LoadFromFile (global_files + global_miReporte+'_ALM_MaterialxPartida.fr3') ;
    frxEntrada.ShowReport();
    if not FileExists(global_files + global_miReporte+'_ALM_MaterialxPartida.fr3') then
       showmessage('El archivo de reporte '+global_miReporte+'_ALM_MaterialxPartida.fr3 no existe, notifique al administrador del sistema');
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Requisicion de Materiales', 'En el proceso seguimiento Material General', 0);
    end;
  end;
end;

procedure TFrmRevisionesRequisiciones.tabInformesShow(Sender: TObject);
begin
  OpcionImprimir.EditValue := 1;
end;

procedure TFrmRevisionesRequisiciones.tdIdFecha2Exit(Sender: TObject);
begin
  SalidaControl(Sender);
end;

procedure TFrmRevisionesRequisiciones.tdidFechaExit(Sender: TObject);
begin
  tdIdFecha2.Date:=tdidFecha.Date+3;
  SalidaControl(Sender);
end;

procedure TFrmRevisionesRequisiciones.tsDepartamentoExit(Sender: TObject);
begin
    tsDepartamento.Style.Color := global_color_salidaERP;
    if (anexo_requisicion.State = dsInsert) or (anexo_requisicion.State = dsEdit) then
    begin
       anexo_requisicion.FieldValues['sNumFolio'] := autoFolio(anexo_requisicion,'anexo_requisicion',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,tsDepartamento.DataBinding.DataSource.DataSet.FieldByName('IdDepartamento').AsInteger);
       zDepartamento.Locate('Nombre',tsDepartamento.Text,[]);
       uGerentes.Locate('IdDepartamento',zDepartamento.FieldByName('IdDepartamento').AsInteger,[]);
       cxSAPRelease.DataBinding.DataSource.DataSet.FieldByName('IdSAPSolicitante').AsInteger := uGerentes.FieldByName('IdGerente').AsInteger;
    end;
end;

procedure TFrmRevisionesRequisiciones.validaciones;
begin
     valida := False;
     connection.zCommand.Active := False;
     connection.zCommand.SQL.Clear;
     connection.zCommand.SQL.Add('select IdOrdenCompra from anexo_pedidos where sNumeroOrden =:Orden and iFolioRequisicion = :Requisicion  ' +
                                 'and sContrato=:Contrato');
     connection.zCommand.ParamByName('Contrato').AsString    := global_contrato;
     connection.zCommand.ParamByName('Orden').AsString       := anexo_requisicion.FieldValues['sNumeroOrden'];
     connection.zCommand.ParamByName('Requisicion').AsString := anexo_requisicion.FieldValues['iFolioRequisicion'];
     connection.zCommand.Open;
     if connection.zCommand.RecordCount > 0 then
     begin
          messageDLG(' La Requiscion '+anexo_requisicion.FieldValues['sNumFolio']+ ' se encuentra enlazada con una Orden de Compra', mtInformation, [mbOk], 0);
          valida := True;
     end;
end;


procedure TFrmRevisionesRequisiciones.formatoEncabezado;
begin
      Excel.Selection.MergeCells := False;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 12;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.Font.Name := 'Calibri';
      Excel.Selection.WrapText := True;
end;

procedure TFrmRevisionesRequisiciones.MarcarcomoConsumible1Click(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    sNotas : string;
    SavePlace, SavePlace2 : TBookMark;
begin
    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;
    iGrid     := 0;
    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
        indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        cxView_Materiales.DataController.FocusedRowIndex := indice;

        with cxView_Materiales.DataController.DataSource.DataSet do
        for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
        begin
            indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
            cxView_Materiales.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update anexo_prequisicion set NumeroMaterial =:Numero '+
                               'where IdPRequisicion =:Id');
            zActualiza.ParamByName('Id').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
            zActualiza.ParamByName('Numero').AsString := '';
            zActualiza.ExecSQL;
        end;
    end;

    anexo_prequisicion.Refresh;
    zActualiza.destroy;
    cxCancelarDetalle.Click;

end;

procedure TFrmRevisionesRequisiciones.MarcarOpcionesQA;
var
   i : integer;
   Datos, sItem,QAReq : string;
begin
//    for i := 0 to cxRequerimientosQA.Items.Count -1 do
//    begin
//         CxRequerimientosQA.Items[i].Checked := False;
//    end;
//    if anexo_prequisicion.RecordCount > 0 then
//    begin
//        Datos := anexo_prequisicion.FieldByName('EspecificacionesQA').AsString;
//        while Datos <> '' do
//        begin
//            if pos(',',Datos) > 0 then
//            begin
//               sItem := copy(Datos,0,pos(',',Datos)-1);
//               Datos := copy(Datos,pos(',',Datos)+1,length(Datos));
//            end
//            else
//               sItem := Datos;
//            if sItem <> '' then
//              for i := 0 to cxRequerimientosQA.Items.Count -1 do
//              begin
//                  if (pos(sItem+'.-',CxRequerimientosQA.Items[i].Text) > 0) and (StrToInt(sItem) = i+1) then   begin
//                     CxRequerimientosQA.Items[i].Checked := True;
//                      QAReq:= QAReq + CxRequerimientosQA.Items[i].Text+ ', ';
//                  end;
//              end;
//        end;
//    end;

end;

function TFrmRevisionesRequisiciones.MarcarOpcionesQAR():string;
var
   i : integer;
   Datos, sItem,QAReq : string;
begin
//    for i := 0 to cxRequerimientosQA.Items.Count -1 do
//    begin
//         CxRequerimientosQA.Items[i].Checked := False;
//    end;
//    if anexo_prequisicion.RecordCount > 0 then
//    begin
//        //Datos := anexo_prequisicion.FieldByName('EspecificacionesQA').AsString;
//        Datos := sRequerimientoQA;
//        while Datos <> '' do
//        begin
//            if pos(',',Datos) > 0 then
//            begin
//               sItem := copy(Datos,0,pos(',',Datos)-1);
//               Datos := copy(Datos,pos(',',Datos)+1,length(Datos));
//            end
//            else
//               sItem := Datos;
//            if sItem <> '' then
//              for i := 0 to cxRequerimientosQA.Items.Count -1 do
//              begin
//                  if (pos(sItem,CxRequerimientosQA.Items[i].Text) > 0) then
//                  begin
//                      CxRequerimientosQA.Items[i].Checked := True;
//                      QAReq:= QAReq + CxRequerimientosQA.Items[i].Text+ ', ';
//                  end;
//              end;
//        end;
//    end;
//
//    result := QAReq;
end;

procedure TFrmRevisionesRequisiciones.NoRequiereInspeccionQA1Click(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    sNotas : string;
    SavePlace, SavePlace2 : TBookMark;
begin
    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;
    iGrid     := 0;
    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
        indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        cxView_Materiales.DataController.FocusedRowIndex := indice;

        with cxView_Materiales.DataController.DataSource.DataSet do
        for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
        begin
            indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
            cxView_Materiales.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update anexo_prequisicion set EspecificacionesQA =:EspecificacionesQA '+
                               'where IdPRequisicion =:Id');
            zActualiza.ParamByName('Id').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
            zActualiza.ParamByName('EspecificacionesQA').AsString := '11,';
            zActualiza.ExecSQL;
        end;
    end;

    anexo_prequisicion.Refresh;
    zActualiza.destroy;
    cxCancelarDetalle.Click;

end;

procedure TFrmRevisionesRequisiciones.NuevoServicioClick(Sender: TObject);
begin
  Try
     if (anexo_requisicion.FieldValues['sStatus'] = 'GENERO PR') then
     begin
         global_frmActivo :='Nuevo_Servicio';

         OpcButton := 'New';
         if cxPageDetalle.ActivePage = cxTabMaterial then
         begin
            global_frmActivo:='Nuevo_Servicio';
         end;
         Application.CreateForm(TfrmAgregarMasivoServicios, frmAgregarMasivoServicios);
         frmAgregarMasivoServicios.show;
     end
     else
     begin
        messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
     end;
  except
   on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_RequisicionPerf', 'Al agregar registro ', 0);
   end;
  end;
end;

procedure TFrmRevisionesRequisiciones.OcultarCodigoMaterial1Click(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    sNotas : string;
    SavePlace, SavePlace2 : TBookMark;
begin
    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;
    iGrid     := 0;
    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
        indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        cxView_Materiales.DataController.FocusedRowIndex := indice;

        with cxView_Materiales.DataController.DataSource.DataSet do
        for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
        begin
            indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
            cxView_Materiales.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update anexo_prequisicion set IncluyeCodigoMat =:Incluye '+
                               'where IdPRequisicion =:Id');
            zActualiza.ParamByName('Id').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
            zActualiza.ParamByName('Incluye').AsString := 'No';
            zActualiza.ExecSQL;
        end;
    end;

    anexo_prequisicion.Refresh;
    zActualiza.destroy;
    cxCancelarDetalle.Click;

end;

procedure TFrmRevisionesRequisiciones.OpenXLSClose(Sender: TObject);
var
   flcid, Fila,Fila2, x : integer;
   lContinuaAux : boolean;
   sValue2  : string;

   CodErr1, CodErr2 : String;

   //Importacion de Requisicion 2019
   sFolioReq, dFechaReq, dFechaSol, sItem, sExtraordinario, sDescripcion,
   sCodigo, sMedida, dCantidad, sPrecio, sProyecto, sFamilia,
   sFolioOC,sFolioOCAux, sProveedor, sMoneda  :string;

   dCosto : double;
   iFolioReq, IdProveedor, IdMoneda : integer;
   zMateriales, zMedida : tUniquery;
   iCountRegistrosBarra : integer;
begin
   if MessageDlg('Desea Importar el Archivo de Excel seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
       // Verificar si se ha seleccionado algun archivo
       if (tsArchivo.Text = '') or ((tsArchivo.Text <> '') and Not FileExists(tsArchivo.Text)) then
       begin
          MessageDlg('El archivo seleccionado es incorrecto, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0);
          Exit;
       end;

       PanelProgreso.Visible := True;
       try
          //Asignacion de la ruta del archivo de Excel...
          try
            try
              CodErr1 := 'Al generar ambiente de EXCEL para levantamiento de información';
              CodErr2 := 'Al intentar modificar atributos de EXCEL';

              flcid := GetUserDefaultLCID;
              ExcelApplication1.Connect;
              ExcelApplication1.Visible[flcid] := true;
              ExcelApplication1.UserControl := true;

              ExcelWorkbook1.ConnectTo(ExcelApplication1.Workbooks.Open(tsArchivo.Text,
                emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam,
                emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, flcid));

              ExcelWorksheet1.ConnectTo(ExcelWorkbook1.Sheets.Item[1] as ExcelWorkSheet);
              Fila := 1;
              lContinuaAux := True;

              {$REGION 'IMPORTACION DE PARTIDAS REQUISICION SS7'}
              if lContinuaAux then
              begin
                  Fila2 := 1;
                  x := 1;
                  lContinuaAux := True;
//                  sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
//                  while x < 25 do
//                  begin
//                      if sValue2 = 'Orden de compra' then
//                      begin
//                          lContinuaAux := True;
//                      end;
//                      x := x + 1 ;
//                      sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(x)), 'A' + Trim(IntToStr(x))].Value2);
//                  end;

                  if lContinuaAux then
                  begin
                      {$REGION 'DECLRACION DE CONSULTAS A DATOS'}

                      zMateriales := tUniQuery.Create( nil );
                      zMateriales.Connection := connection.uConnection;

                      zMedida := tUniQuery.Create( nil );
                      zMedida.Connection := connection.uConnection;

                      AsignarSQL(zMateriales,'catalogo_agregarmasivo',pUpdate);
                      FiltrarDataSet(zMateriales,'Usuario,Codigo,Contrato,Tipo',[Global_Usuario,'-1',global_contrato,
                      anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger]);
                      zMateriales.Open;

                      AsignarSQL(zMedida,'master_medidas',pUpdate);
                      FiltrarDataSet(zMedida,'Id,Codigo',[-1,-1]);
                      zMedida.Open;

                      {$ENDREGION}

                      //Conteo de registros
                      {$Region 'DATOS PRINCIPALES Y PORCENTAJES'}
                      iCountRegistrosBarra := 0;
                      Fila2 := 5;
                      sFolioOC := '';
                      sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                      while (sValue2 <> '') do
                      begin
                          inc(iCountRegistrosBarra);
                          lContinuaAux := True;

                          //Aqui leemos todas las columnas necesarias para el prier regist
                          sFamilia  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila2)), 'B' + Trim(IntToStr(Fila2))].Value2;
                          sCodigo   := ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila2)), 'H' + Trim(IntToStr(Fila2))].Value2;
                          dCantidad := ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila2)), 'J' + Trim(IntToStr(Fila2))].Value2;
                          sMedida   := ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila2)), 'K' + Trim(IntToStr(Fila2))].Value2;
                          sExtraordinario := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila2)), 'F' + Trim(IntToStr(Fila2))].Value2;
                          sDescripcion    := ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila2)), 'G' + Trim(IntToStr(Fila2))].Value2;

                          //Buscamos el material
                          if zMateriales.Locate('Codigo',sCodigo,[loCaseInsensitive]) then
                          begin
                             iFolioReq := zMateriales.FieldByName('IdInsumo').AsInteger;
                             ExcelApplication1.Range['H' + Trim(IntToStr(Fila2)), 'H' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 2;
                             if anexo_prequisicion.locate('idInsumo',zMateriales.FieldByName('IdInsumo').AsInteger,[]) then
                                lContinuaAux := False;
                          end
                          else
                          begin
                             ExcelApplication1.Range['H' + Trim(IntToStr(Fila2)), 'H' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 6;
                             lContinuaAux := False;
                          end;

                          //Buscamos el extraordinario
                          ExcelApplication1.Range['F' + Trim(IntToStr(Fila2)), 'F' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 2;
                          if trim(sExtraordinario) = '' then
                          begin
                             ExcelApplication1.Range['F' + Trim(IntToStr(Fila2)), 'F' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 6;
                             lContinuaAux := False;
                          end;

                          //Buscamos la moneda
                          ExcelApplication1.Range['K' + Trim(IntToStr(Fila2)), 'K' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 2;
                          if zMedida.Locate('Codigo', sMedida, [loCaseInsensitive]) = False then
                          begin
                             ExcelApplication1.Range['K' + Trim(IntToStr(Fila2)), 'K' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 6;
                             lContinuaAux := False;
                          end;

                          if lContinuaAux then
                          begin
                              //Inserta detalle de Requisicion seleccionada (MR)
                              AsignarSQL(connection.qryUBusca,'inserta_requisicion_det', pUpdate);
                              FiltrarDataSet(connection.qryUBusca, 'sContrato, iFolioRequisicion, IdInsumo, IdMedida, IdTipoRecurso, Descripcion, Fecha, dCantidad, Extraordinario',
                              [Global_contrato,anexo_requisicion.FieldByName('iFolioRequisicion').AsInteger,zMateriales.FieldByName('IdInsumo').AsInteger, zMateriales.FieldByName('IdMedida').AsInteger,
                              anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger, zMateriales.FieldByName('Insumo').AsString,fechaSQL(anexo_requisicion.FieldByName('dFechaRequerido').AsDateTime),StrToFloat(dCantidad),sExtraordinario]);
                              connection.qryUBusca.Execute;
                          end;

                          fila2 := fila2 + 1 ;
                          sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(fila2)), 'A' + Trim(IntToStr(fila2))].Value2);
                      end;
                      {$ENDREGION}
                      zMateriales.Destroy;
                      zMedida.Destroy;
                      anexo_prequisicion.Refresh;
                      if lContinuaAux = False then
                         messageDLG('No se encontraton algunos datos!',mtInformation,[mbOk],0);
                  end
                  else
                    messageDLG('Formato de Importación de Requisicion no Valido!',mtInformation,[mbOk],0);
              end;
              {$ENDREGION}
              if lContinuaAux then
                 MessageDlg('Proceso Terminado con exito...', mtInformation, [mbOk], 0);
            except
                on E: Exception do
                begin
                    PanelProgreso.Visible := False;
                    if (CompareText(e.ClassName, 'Exception') = 0) then
                       MessageDlg(e.ClassName + '   ' + e.Message, mtInformation, [mbOk], 0)
                    else
                       if CodErr1 = '' then
                          MessageDlg(e.Message, mtInformation, [mbOk], 0)
                       else
                          UnitExcepciones.manejarExcep(E.Message, E.ClassName, CodErr1, CodErr2, 0);
                end;
            end;
          Finally
              Try
                ExcelApplication1.Quit;
              Except
                // No Hacer nada, solamente es para evitar los errores cuando excel se encuentre ocupado
              End;
              ExcelApplication1.Disconnect;
              sleep(500);
              PanelProgreso.Visible := False;
          End;


       Except
           PanelProgreso.Visible := False;
       end;
   end;

end;

procedure TFrmRevisionesRequisiciones.OpenXLSFolderChange(Sender: TObject);
begin
    tsArchivo.Text := OpenXLS.FileName;
end;

procedure TFrmRevisionesRequisiciones.OpenXLSSelectionChange(Sender: TObject);
begin
    tsArchivo.Text := OpenXLS.FileName;
end;

procedure TFrmRevisionesRequisiciones.PegarGrupoMaterial1Click(Sender: TObject);
var
   zActualiza : tUniquery;
   indice, iGrid    : integer;
   SavePlace, SavePlace2 : TBookMark;
begin
   try
      zActualiza:=tUniquery.create(nil);
      zActualiza.Connection := Connection.uConnection;

      iGrid     := 0;
      indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
      cxView_Materiales.DataController.FocusedRowIndex := indice;

      with cxView_Materiales.DataController.DataSource.DataSet do
      for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
      begin
          indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
          cxView_Materiales.DataController.FocusedRowIndex := indice;

          zActualiza.SQL.Clear;
          zActualiza.SQL.Add('update anexo_prequisicion_serv set IdGrupo =:IdGrupo where IdPRequisicion =:IdOld');
          zActualiza.ParamByName('IdGrupo').AsInteger := IdGMaterialCopia;
          zActualiza.ParamByName('IdOld').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
          zActualiza.ExecSQL;
      end;

   finally
    PegarGrupoMaterial1.Enabled := False;
    CopiarGrupoMaterial1.Enabled := True;
    CopiarQARequirement1.Enabled := True;
    cxView_Materiales.OptionsSelection.MultiSelect := False;
    lOpcionSelecciona := False;
    anexo_prequisicion.Refresh;
    zActualiza.Destroy;
   end;

end;

procedure TFrmRevisionesRequisiciones.PegarQARequirement1Click(Sender: TObject);
var
   zActualiza : tUniquery;
   indice, iGrid    : integer;
   SavePlace, SavePlace2 : TBookMark;
begin
    try
        zActualiza:=tUniquery.create(nil);
        zActualiza.Connection := Connection.uConnection;

        iGrid     := 0;
        indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        cxView_Materiales.DataController.FocusedRowIndex := indice;

        with cxView_Materiales.DataController.DataSource.DataSet do
        for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
        begin
            indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
            cxView_Materiales.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update anexo_prequisicion_serv set EspecificacionesQA =:EspecificacionesQA where IdPRequisicion =:IdOld');
            zActualiza.ParamByName('EspecificacionesQA').AsString := MaterialCopia;
            zActualiza.ParamByName('IdOld').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
            zActualiza.ExecSQL;
        end;

    finally
       PegarQARequirement1.Enabled := False;
       CopiarGrupoMaterial1.Enabled := True;
       CopiarQARequirement1.Enabled := True;
       cxView_Materiales.OptionsSelection.MultiSelect := False;
       lOpcionSelecciona := False;
       anexo_prequisicion.Refresh;
       zActualiza.Destroy;
    end;
end;

procedure TFrmRevisionesRequisiciones.PegarWorkOrder1Click(Sender: TObject);
var
   zActualiza : tUniquery;
   indice, iGrid    : integer;
   SavePlace, SavePlace2 : TBookMark;
begin
   try
      zActualiza:=tUniquery.create(nil);
      zActualiza.Connection := Connection.uConnection;

      iGrid     := 0;
      indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
      cxView_Materiales.DataController.FocusedRowIndex := indice;

      with cxView_Materiales.DataController.DataSource.DataSet do
      for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
      begin
          indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
          cxView_Materiales.DataController.FocusedRowIndex := indice;

          zActualiza.SQL.Clear;
          zActualiza.SQL.Add('update anexo_prequisicion_serv set sNumeroOrden_WorkOrder =:sNumeroOrden_WorkOrder where IdPRequisicion =:IdOld');
          zActualiza.ParamByName('sNumeroOrden_WorkOrder').AsString := WorkOrderCopia;
          zActualiza.ParamByName('IdOld').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
          zActualiza.ExecSQL;
      end;

   finally
    PegarWorkOrder1.Enabled := False;
    CopiarWorkOrder1.Enabled := True;
    cxView_Materiales.OptionsSelection.MultiSelect := False;
    lOpcionSelecciona := False;
    anexo_prequisicion.Refresh;
    zActualiza.Destroy;
   end;

end;

procedure TFrmRevisionesRequisiciones.PopupPrincipalPopup(Sender: TObject);
begin
//   if (anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') or (anexo_requisicion.FieldValues['sStatus'] = 'VALIDADO') then
//   begin
//       MarcarcomoConsumible1.Enabled := True;
//       AsignarCdigoMaterial1.Enabled := True;
//       IncluyeCodigoMaterial1.Enabled := True;
//       OcultarCodigoMaterial1.Enabled := True;
//   end
//   else
//   begin
//       MarcarcomoConsumible1.Enabled := False;
//       AsignarCdigoMaterial1.Enabled := False;
//       IncluyeCodigoMaterial1.Enabled := False;
//       OcultarCodigoMaterial1.Enabled := False;
//   end;

end;

procedure TFrmRevisionesRequisiciones.traerAccesorioClick(Sender: TObject);
var
  zBusca, zIngresa : tUniquery;

begin

  zBusca:=tUniquery.create(nil);
  zBusca.Connection := Connection.uConnection;

  zIngresa:=tUniquery.create(nil);
  zIngresa.Connection := Connection.uConnection;

  zBusca.Active := False;
  AsignarSQL(zBusca, 'accesorios_penultima_revision', pUpdate);
  FiltrarDataSet(zBusca, 'Revision, Insumo, iItem',
  [cxView_Materiales.DataController.DataSet.FieldByName('Revision').AsInteger,
  cxView_Materiales.DataController.DataSet.FieldByName('IdInsumo').AsInteger,
  cxView_Materiales.DataController.DataSet.FieldByName('iItem').AsInteger]);
  zBusca.Open;

  if zBusca.RecordCount = 0 then
  begin
     ShowMessage('La partida no tiene Accesorios');
     exit;
  end;


  zBusca.First;
  while not zBusca.Eof do
  begin
    zIngresa.Active := False;
    AsignarSQL(zIngresa, 'inserta_accesorio', pUpdate);
    FiltrarDataSet(zIngresa, 'sIdEquipo, EquipoDetalle, FolioReq, ReqDetalle, iItem, Medida, Descripcion, Cantidad, Revision',
    [zBusca.FieldByName('sIdEquipo').AsString,
    zBusca.FieldByName('IdEquipoDetalle').AsString,
    cxView_Materiales.DataController.DataSet.FieldByName('iFolioRequisicion').AsString,
    cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsString,
    cxView_Materiales.DataController.DataSet.FieldByName('iItem').AsInteger,
    zBusca.FieldByName('Medida').AsString,
    zBusca.FieldByName('Descripcion').AsString,
    zBusca.FieldByName('Cantidad').AsString,
    cxView_Materiales.DataController.DataSet.FieldByName('Revision').AsString]);
    zIngresa.ExecSQL;

    zBusca.Next;
  end;

  zAccesorios.Refresh;

end;

function TFrmRevisionesRequisiciones.GuardarOpcionesQA():string;
var
   i : integer;
   Datos : string;
begin
//    Datos := '';
//    sRequerimientoQA := '';
//    for i := 0 to cxRequerimientosQA.Items.Count -1 do
//    begin
//        if CxRequerimientosQA.Items[i].Checked then
//        begin
//           Datos := Datos + IntToStr(i+1)+ ',';
//           sRequerimientoQA := sRequerimientoQA + CxRequerimientosQA.Items[i].text + ',';
//        end;
//
//    end;
//
//    result := Datos;
end;

procedure TFrmRevisionesRequisiciones.VistaDetalleMR;
begin
//
//    cxCantidad.Enabled        := True;
//    cxNotas.Enabled           := True;
//
//
//
//    if (anexo_requisicion.FieldValues['sStatus'] = 'CANCELADO') or
//       (anexo_requisicion.FieldValues['sStatus'] = 'GENERO PR') or
//       (global_grupo= 'OPERACIONES')or (global_grupo= 'ADMON')  then
//    begin
//        //Todas las opciones bloqueadas
//
//        cxCantidad.Enabled        := False;
//        cxNotas.Enabled           := True;
//
//    end;
//
//    if (anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') or (anexo_requisicion.FieldValues['sStatus'] = 'VALIDADO') then
//    begin
//        //Puede editar todas las opciones tando el usuario como el Lider MR
//        if (anexo_requisicion.FieldValues['sIdUsuario'] = global_usuario) OR ((anexo_requisicion.FieldValues['sIdUsuario'] = global_usuario) AND (global_grupo='LIDER_AVANZADO')) then
//        begin
//
//
//            cxCantidad.Enabled        := True;
//            cxNotas.Enabled           := True;
//
//        end
//        else
//         if(global_grupo= 'LIDER_MR') then
//        begin
//
//            cxCantidad.Enabled        := True;
//            cxNotas.Enabled           := True;
//
//        end;
//
//    end;
//
//    if (anexo_requisicion.FieldValues['sStatus'] = 'AUTORIZADO')  then
//    begin
//
//        cxCantidad.Enabled        := False;
//        //Puede editar cxNotas y cxRequerimientosQA
//
////        if global_grupo <> 'CALIDAD' then
////           cxGrupoMaterial.Enabled := False;
//    end;
//
//    if (anexo_requisicion.FieldValues['sStatus'] = 'LIBERADO')  then
//    begin
//
//        cxCantidad.Enabled        := False;
//        cxNotas.Enabled           := False;
//
//        //Puede solo asignar centro de costo cxWbs y acceso al cxFindWbs
//
//        //Seguridad por usuarios los que no tengan derecho a cambiar centro de costo estara bloqueado
//        if global_grupo <> 'CENTRO_COSTO' then
//        begin
//
//        end;
//    end;
//
//    if (anexo_requisicion.FieldValues['sStatus'] = 'ASIGNADO')  then
//    begin
//
//        cxCantidad.Enabled        := False;
//        cxNotas.Enabled           := False;
//        //Puede editar los grupos cxGrupoMaterial
//
////        if global_grupo <> 'COMPRAS' then
////           cxGrupoMaterial.Enabled := False;
//    end;

    cxGrupoMaterial.Enabled   := True;
    cxFindGM.Enabled          := True;
    cxWbs.Enabled             := True;
    cxFindWbs.Enabled         := True;
    cxNumeroMaterial.Enabled  := True;
    cxCantidad.Enabled        := True;
    cxNotas.Enabled           := True;
    cxRequerimientosQA.Enabled:= True;
    dxDBToggleSwitch2.Enabled := True;


    if (anexo_requisicion.FieldValues['sStatus'] = 'CANCELADO') or
       (anexo_requisicion.FieldValues['sStatus'] = 'GENERO PR') or
       (global_grupo= 'OPERACIONES')or (global_grupo= 'ADMON')  then
    begin
        //Todas las opciones bloqueadas
        cxGrupoMaterial.Enabled   := False;
        cxFindGM.Enabled          := False;
        cxWbs.Enabled             := False;
        cxFindWbs.Enabled         := False;
        cxNumeroMaterial.Enabled  := False;
        cxCantidad.Enabled        := False;
        cxNotas.Enabled           := False;
        cxRequerimientosQA.Enabled:= False;
        dxDBToggleSwitch2.Enabled := False;

        if global_grupo = 'LIDER_AVANZADO' then
         cxNotas.Enabled           := TRUE;

    end;

    if (anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') or (anexo_requisicion.FieldValues['sStatus'] = 'VALIDADO') then
    begin
        //Puede editar todas las opciones tando el usuario como el Lider MR
        if (anexo_requisicion.FieldValues['sIdUsuario'] = global_usuario) OR ((anexo_requisicion.FieldValues['sIdUsuario'] = global_usuario) AND (global_grupo='LIDER_AVANZADO')) then
        begin

            cxGrupoMaterial.Enabled   := True;
            cxFindGM.Enabled          := True;
            cxWbs.Enabled             := False;
            cxFindWbs.Enabled         := False;
            cxNumeroMaterial.Enabled  := True;
            cxCantidad.Enabled        := True;
            cxNotas.Enabled           := True;
            cxRequerimientosQA.Enabled:= False;
        end
        else
         if(global_grupo= 'LIDER_MR') then
        begin
            cxGrupoMaterial.Enabled   := True;
            cxFindGM.Enabled          := True;
            cxWbs.Enabled             := False;
            cxFindWbs.Enabled         := False;
            cxNumeroMaterial.Enabled  := True;
            cxCantidad.Enabled        := True;
            cxNotas.Enabled           := True;
            cxRequerimientosQA.Enabled:= False;
        end;

    end;

    if (anexo_requisicion.FieldValues['sStatus'] = 'AUTORIZADO')  then
    begin
        cxGrupoMaterial.Enabled   := False;
        cxFindGM.Enabled          := False;
        cxWbs.Enabled             := False;
        cxFindWbs.Enabled         := False;
        cxNumeroMaterial.Enabled  := False;
        cxCantidad.Enabled        := False;
        //Puede editar cxNotas y cxRequerimientosQA

        if global_grupo <> 'CALIDAD' then
           cxGrupoMaterial.Enabled := False;
    end;

    if (anexo_requisicion.FieldValues['sStatus'] = 'LIBERADO')  then
    begin
        cxGrupoMaterial.Enabled   := False;
        cxNumeroMaterial.Enabled  := False;
        cxCantidad.Enabled        := False;
        cxNotas.Enabled           := False;
        cxRequerimientosQA.Enabled:= False;
        //Puede solo asignar centro de costo cxWbs y acceso al cxFindWbs

        //Seguridad por usuarios los que no tengan derecho a cambiar centro de costo estara bloqueado
        if global_grupo <> 'CENTRO_COSTO' then
        begin
           cxWbs.Enabled         := False;
           cxFindWbs.Enabled     := False;
        end;
    end;

    if (anexo_requisicion.FieldValues['sStatus'] = 'ASIGNADO')  then
    begin
        cxWbs.Enabled             := False;
        cxFindWbs.Enabled         := False;
        cxNumeroMaterial.Enabled  := False;
        cxFindGM.Enabled          := False;
        cxCantidad.Enabled        := False;
        cxNotas.Enabled           := False;
        cxRequerimientosQA.Enabled:= False;
        //Puede editar los grupos cxGrupoMaterial

        if global_grupo <> 'COMPRAS' then
           cxGrupoMaterial.Enabled := False;
    end;
end;

procedure TFrmRevisionesRequisiciones.CopiarWorkOrder1Click(Sender: TObject);
var
    indice, iGrid    : integer;
    lcontinua : boolean;
begin
     PegarWorkOrder1.Enabled := True;
     CopiarWorkOrder1.Enabled := False;
     WorkOrderCopia := anexo_prequisicion.FieldByName('sNumeroOrden_WorkOrder').AsString;
     lOpcionSelecciona := True;
     cxView_Materiales.OptionsSelection.MultiSelect := True;
end;


end.
