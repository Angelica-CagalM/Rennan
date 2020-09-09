unit frm_materiales_SS7;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_barra, global, db, StdCtrls, unitGenerales,
  Mask, DBCtrls, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones, unittbotonespermisos,UnitValidaTexto,
  unitactivapop,StrUtils, UnitValidacion, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ExportaExcel, dxBarBuiltInMenu, cxPC, cxButtons,masUtilerias,
  cxPCdxBarPopupMenu, utilerias, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxLayoutcxEditAdapters, frm_barraH2, frm_barraH1, MemDS, DBAccess, Uni,
  dxLayoutContainer, cxDBEdit, cxGroupBox, dxLayoutControl, cxSplitter, cxLabel,
  dxLayoutControlAdapters, cxCheckBox, dxToggleSwitch, dxDBToggleSwitch,
  cxCalendar, frxClass, cxImage, Vcl.ExtDlgs,jpeg, cxCurrencyEdit,
  cxImageComboBox, cxMemo, Vcl.OleCtrls, AcroPDFLib_TLB, UnitMetodos, UnitReportes,
  cxRadioGroup, cxCalc, frxDBSet, CxGridExportLink, ShellApi, cxProgressBar,
  ExcelXP, Vcl.OleServer, ComObj, Excel2000, unitExcel,IdAttachmentFile, IdMessage,
  IdSMTP, IdEMailAddress,IdSSLOpenSSL,IdSSLOpenSSLHeaders,IdExplicitTLSClientServerBase;

type
  TfrmMateriales_SS7 = class(TForm)
    ds_Insumos: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    Panel3: TPanel;
    ds_TipoSub: TDataSource;
    zqInsumos: TUniQuery;
    zqTipoSub: TUniQuery;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    PanelPrincipal: TPanel;
    PanelTipo: TPanel;
    cxSplitTipo: TcxSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxSplitter1: TcxSplitter;
    grid_materiales: TcxGrid;
    cxView_Materiales: TcxGridDBTableView;
    grid_materialesLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
    PanelDetalle: TPanel;
    Grid_Bitacora: TcxGrid;
    BView_filtro: TcxGridDBTableView;
    Grid_BitacoraLevel1: TcxGridLevel;
    ds_subfamilia: TDataSource;
    zqSubfamilia: TUniQuery;
    ds_catalogo: TDataSource;
    catalogo: TUniQuery;
    ds_familia: TDataSource;
    zqFamilia: TUniQuery;
    ds_medida: TDataSource;
    zqMedida: TUniQuery;
    PanelCentro: TPanel;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxPageDetalle: TcxPageControl;
    cxPageImagen: TcxTabSheet;
    PanelDown2: TPanel;
    dxLayoutControl6: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    cxSplit2: TcxSplitter;
    cxGridImagen: TcxGrid;
    cxGridViewImagen: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    frxReport1: TfrxReport;
    ds_filtro: TDataSource;
    filtro: TUniQuery;
    ds_marca: TDataSource;
    zqMarca: TUniQuery;
    cxView_MaterialesColumn1: TcxGridDBColumn;
    cxView_MaterialesColumn2: TcxGridDBColumn;
    cxView_MaterialesColumn3: TcxGridDBColumn;
    cxView_MaterialesColumn4: TcxGridDBColumn;
    BView_filtroColumn1: TcxGridDBColumn;
    BView_filtroColumn2: TcxGridDBColumn;
    cxVisualizarImg: TcxButton;
    dxLayoutItem17: TdxLayoutItem;
    cxPageCertificados: TcxTabSheet;
    cxPageExistencia: TcxTabSheet;
    cxPageCostos: TcxTabSheet;
    cxPageSerie: TcxTabSheet;
    cxPageMovimientos: TcxTabSheet;
    Proveedores: TUniQuery;
    dsProveedores: TDataSource;
    OpenPicture: TOpenPictureDialog;
    QryBusca: TUniQuery;
    zProducto: TUniQuery;
    dsProducto: TDataSource;
    zImagen: TUniQuery;
    dxLayoutItem9: TdxLayoutItem;
    bImagen: TImage;
    cxGridViewImagenColumn1: TcxGridDBColumn;
    btnAgregar: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxGridCertificados: TcxGridDBTableView;
    cxGridCertificadoLevel1: TcxGridLevel;
    cxGridCertificado: TcxGrid;
    colCodigo: TcxGridDBColumn;
    colNombre: TcxGridDBColumn;
    colActivo: TcxGridDBColumn;
    cxGridMovimientos: TcxGridDBTableView;
    cxGridMovimientoLevel1: TcxGridLevel;
    cxGridMovimiento: TcxGrid;
    colDescripcion: TcxGridDBColumn;
    colTipo: TcxGridDBColumn;
    zMovimientos: TUniQuery;
    dsMovimientos: TDataSource;
    cxSplitter2: TcxSplitter;
    Panel4: TPanel;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cbClasificacion: TcxDBComboBox;
    dxLayoutItem19: TdxLayoutItem;
    edtDescripcion: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    cxGridSerieDBTableView1: TcxGridDBTableView;
    cxGridSerieLevel1: TcxGridLevel;
    cxGridSerie: TcxGrid;
    cxSplitter3: TcxSplitter;
    PanelDown5: TPanel;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    zSerie: TUniQuery;
    dsSerie: TDataSource;
    colAlmacen: TcxGridDBColumn;
    colLote: TcxGridDBColumn;
    colNumSerie: TcxGridDBColumn;
    colObservacion: TcxGridDBColumn;
    edtNumSerie: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    edtLote: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    zAlmacen: TUniQuery;
    dsAlmacen: TDataSource;
    lcbAlmaceb: TcxDBLookupComboBox;
    dxLayoutItem22: TdxLayoutItem;
    cxGridCostosDBTableView1: TcxGridDBTableView;
    cxGridCostosLevel1: TcxGridLevel;
    cxGridCostos: TcxGrid;
    cxSplitter4: TcxSplitter;
    PanelDonw6: TPanel;
    zCostos: TUniQuery;
    dsCostos: TDataSource;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem25: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutItem23: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutItem26: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutItem27: TdxLayoutItem;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutItem28: TdxLayoutItem;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    dxLayoutItem31: TdxLayoutItem;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    dxLayoutItem32: TdxLayoutItem;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    dxLayoutItem33: TdxLayoutItem;
    colOrdenCompra: TcxGridDBColumn;
    ColPrecio: TcxGridDBColumn;
    ColFecha: TcxGridDBColumn;
    cxGridExistenciaDBTableView1: TcxGridDBTableView;
    cxGridExistenciaLevel1: TcxGridLevel;
    cxGridExistencia: TcxGrid;
    ColMaterial: TcxGridDBColumn;
    ColExist: TcxGridDBColumn;
    zExistencia: TUniQuery;
    dsExistencia: TDataSource;
    cxSplitter5: TcxSplitter;
    PanelDown7: TPanel;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    cxDocumento: TcxDBLookupComboBox;
    edtFecha: TcxDBDateEdit;
    dxLayoutItem35: TdxLayoutItem;
    cxActivoDocumento: TdxDBToggleSwitch;
    dxLayoutItem36: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem37: TdxLayoutItem;
    zCatalogo_docto: TUniQuery;
    dsCatalogo_docto: TDataSource;
    zCertificado: TUniQuery;
    dsCertificado: TDataSource;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dlgSavePDF: TSaveDialog;
    dlgPDF: TFileOpenDialog;
    cxView_MaterialesColumn5: TcxGridDBColumn;
    cxView_MaterialesColumn6: TcxGridDBColumn;
    cxView_MaterialesColumn7: TcxGridDBColumn;
    cxView_MaterialesColumn8: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxFecha: TcxDBDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxCodigo: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxMaterial: TcxDBMemo;
    dxLayoutItem3: TdxLayoutItem;
    cxProducto: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxMedida: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cxFamilia: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxSubFamilia: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cxMarca: TcxDBLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    cxModelo: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxTalla: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    cxGridViewImagenColumn2: TcxGridDBColumn;
    zImagenes: TUniQuery;
    ds_imagenes: TDataSource;
    cxImgActivo: TdxDBToggleSwitch;
    dxLayoutItem12: TdxLayoutItem;
    zImagenesNombre: TStringField;
    zImagenesIdInsumoImg: TIntegerField;
    zImagenesIdInsumo: TIntegerField;
    zImagenesFechaRegistro: TDateField;
    zImagenesActivo: TStringField;
    zUpImg: TUniQuery;
    cxGridMovimientosColumn1: TcxGridDBColumn;
    cxGridMovimientosColumn2: TcxGridDBColumn;
    vPDF: TcxGroupBox;
    mCerts: TPopupMenu;
    btnDescargar: TMenuItem;
    VerDocumento1: TMenuItem;
    ColMoneda: TcxGridDBColumn;
    dxLayoutItem13: TdxLayoutItem;
    cxAgregaMedida: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    cxAgregaFamilia: TcxButton;
    dxLayoutItem15: TdxLayoutItem;
    cxAgregaSubFamilia: TcxButton;
    zCertVP: TUniQuery;
    dsCertVP: TDataSource;
    btnAgregarDocto: TcxButton;
    dxLayoutItem38: TdxLayoutItem;
    edtNumEconomico: TcxDBTextEdit;
    dxLayoutItem39: TdxLayoutItem;
    lcbFabricante: TcxDBLookupComboBox;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    zFabricante: TUniQuery;
    dsFabricante: TDataSource;
    dxLayoutItem41: TdxLayoutItem;
    btnAgregaMarca: TcxButton;
    dxLayoutItem42: TdxLayoutItem;
    btnAgregarFabricante: TcxButton;
    cxTabInforme: TcxTabSheet;
    PanelSuperiorInforme: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    opcionImprimir: TcxRadioGroup;
    btnImpInforme: TcxButton;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutItem45: TdxLayoutItem;
    zReporteDetalle: TUniQuery;
    cbAlm: TcxLookupComboBox;
    cbTipoMov: TcxLookupComboBox;
    zComboReporte: TUniQuery;
    dsComboReporte: TDataSource;
    cxView_MaterialesColumn9: TcxGridDBColumn;
    cxView_MaterialesColumn10: TcxGridDBColumn;
    PopupMovimientos: TPopupMenu;
    popmenuAplica: TMenuItem;
    popmenuSelecciona: TMenuItem;
    Panel5: TPanel;
    dxLayoutControl8: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    cxSplitter6: TcxSplitter;
    cxMaximo: TcxDBCalcEdit;
    dxLayoutItem43: TdxLayoutItem;
    cxMinimo: TcxDBCalcEdit;
    dxLayoutItem47: TdxLayoutItem;
    cxAlmacen: TcxDBLookupComboBox;
    dxLayoutItem48: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    colMaximo: TcxGridDBColumn;
    colMinimo: TcxGridDBColumn;
    cxImprimeInventario: TcxButton;
    dxLayoutItem46: TdxLayoutItem;
    cxImprimeMaximos: TcxButton;
    dxLayoutItem49: TdxLayoutItem;
    frxDatos: TfrxDBDataset;
    cxView_MaterialesColumn11: TcxGridDBColumn;
    cxDescription: TcxDBMemo;
    dxLayoutItem50: TdxLayoutItem;
    btnAgregarServicio: TcxButton;
    dxLayoutItem51: TdxLayoutItem;
    Moneda: TUniQuery;
    ds_moneda: TDataSource;
    cxView_MaterialesColumn12: TcxGridDBColumn;
    PanelProgreso: TPanel;
    progreso: TcxProgressBar;
    LabelProceso: TcxLabel;
    colProveedor: TcxGridDBColumn;
    cxView_MaterialesColumnTR: TcxGridDBColumn;
    Panel6: TPanel;
    dxLayoutControl9: TdxLayoutControl;
    btnExpandir: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem54: TdxLayoutItem;
    dxLayoutItem52: TdxLayoutItem;
    cxImportar: TcxButton;
    dxLayoutItem53: TdxLayoutItem;
    btnRefresh: TcxButton;
    CopiarMedida: TMenuItem;
    CopiarFamilia: TMenuItem;
    PegarMedida: TMenuItem;
    PegarFamilia: TMenuItem;
    OpenXLS: TOpenDialog;
    ExcelWorkbook1: TExcelWorkbook;
    ExcelApplication1: TExcelApplication;
    ExcelWorksheet1: TExcelWorksheet;
    Opcionesespeciales1: TMenuItem;
    SeleccionarMovimientosMat: TMenuItem;
    PegarMovimientosMat: TMenuItem;
    dxLayoutItem55: TdxLayoutItem;
    cxRepetidos: TcxButton;
    cxEliminar: TcxButton;
    cxPageTransitos: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridMovimientosColumn3: TcxGridDBColumn;
    zCorreo: TUniQuery;
    zqEnviados: TUniQuery;
    zMensaje: TUniQuery;
    ds_mensaje: TDataSource;
    zDestino: TUniQuery;
    ds_destino: TDataSource;
    cxView_MaterialesColumn13: TcxGridDBColumn;
    cxGridMovimientosColumn4: TcxGridDBColumn;
    PopupMateriales: TPopupMenu;
    btnExistencia: TMenuItem;
    cxPageExistenciasCC: TcxTabSheet;
    gridExistenciaCCDBTableView1: TcxGridDBTableView;
    gridExistenciaCCLevel1: TcxGridLevel;
    gridExistenciaCC: TcxGrid;
    gridCentroCosto: TcxGridDBColumn;
    gridExistencia: TcxGridDBColumn;
    zExistenciaCC: TUniQuery;
    dsExisenciaCC: TDataSource;
    colCentroCosto: TcxGridDBColumn;
    mObservaciones: TcxDBMemo;
    dxLayoutItem34: TdxLayoutItem;
    lcbSerie: TcxDBLookupComboBox;
    dxLayoutItem56: TdxLayoutItem;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dFechaCertificacion: TcxDBDateEdit;
    dxLayoutItem57: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dFechaVigencia: TcxDBDateEdit;
    dxLayoutItem58: TdxLayoutItem;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    colAct: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid_proveedoresCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure cxView_MaterialesCellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Copiar1Click(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure BView_empresaDataControllerFilterRecord(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var Accept: Boolean);
    procedure cxView_MaterialesCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxPageDetalleChange(Sender: TObject);
    procedure BView_filtroCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnAgregarClick(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxVisualizarImgClick(Sender: TObject);
    procedure muestraImagen();
    procedure cxButton1Click(Sender: TObject);
    procedure cxGridCertificadosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridViewImagenCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure zImagenesCalcFields(DataSet: TDataSet);

    procedure btnDescargarClick(Sender: TObject);
    procedure cxFamiliaExit(Sender: TObject);
    procedure VerDocumento1Click(Sender: TObject);
    procedure cxAgregaMedidaClick(Sender: TObject);
    procedure cxAgregaFamiliaClick(Sender: TObject);
    procedure cxAgregaSubFamiliaClick(Sender: TObject);
    procedure btnAgregarDoctoClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);

    procedure cxView_MaterialesDataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: string);
    procedure cxView_MaterialesDataControllerFilterChanged(Sender: TObject);
    procedure btnAgregaMarcaClick(Sender: TObject);
    procedure btnAgregarFabricanteClick(Sender: TObject);
    procedure btnImpInformeClick(Sender: TObject);
    procedure opcionImprimirPropertiesChange(Sender: TObject);
    procedure cxTabInformeShow(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure popmenuSeleccionaClick(Sender: TObject);
    procedure PopupMovimientosPopup(Sender: TObject);
    procedure popmenuAplicaClick(Sender: TObject);
    procedure cxImprimeMaximosClick(Sender: TObject);
    procedure cxImprimeInventarioClick(Sender: TObject);
    procedure btnAgregarServicioClick(Sender: TObject);
    procedure btnExportaClick(Sender: TObject);
    procedure cxView_MaterialesColumn10GetProperties(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure ColPrecioGetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure cxView_MaterialesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxImportarClick(Sender: TObject);
    procedure btnExpandirClick(Sender: TObject);
    procedure OpenXLSClose(Sender: TObject);
    procedure OpenXLSFolderChange(Sender: TObject);
    procedure OpenXLSSelectionChange(Sender: TObject);
    procedure CopiarMedidaClick(Sender: TObject);
    procedure CopiarFamiliaClick(Sender: TObject);
    procedure PegarMedidaClick(Sender: TObject);
    procedure PegarFamiliaClick(Sender: TObject);
    procedure SeleccionarMovimientosMatClick(Sender: TObject);
    procedure PegarMovimientosMatClick(Sender: TObject);
    procedure cxRepetidosClick(Sender: TObject);
    procedure cxEliminarClick(Sender: TObject);
    procedure btnExistenciaClick(Sender: TObject);  private
    procedure EnviaCorreo(sParamModulo,sParamProceso,sParamTipoMaterial,sParamEstatus, sParamFoldiosDoctos :string);
    procedure Orden_Compra_scroll;
    { Private declarations }
  private
   acc: TCollection;
    Mensaje: TIdMessage;
    AdjuntoOtros: TIdAttachmentFile;
    Adjunto: TIdAttachmentFile;
    Botones: TcxButton;
    RutaArchivoAdjunto: string;
    DirPDF :String ;

  public
    CompDocumento: TAcroPDF;
    sTipoMaterial, sFoliosDoctos, sUsuarioReq : string;
    Function EnviarMensaje(sUsuario, sClave, sServidor, sAdjunto, sAsunto, sDestino, sMensaje: String; iPort:Integer; aplicaTLS:String): String;
//    procedure DisplayMail(Attachment: TFileName);
    { Public declarations }
  end;

var
  frmMateriales_SS7 : TfrmMateriales_SS7;
  Opcion         : String ;
  banderaAgregar : Boolean;
  scuentabanco   : string;
  bCuentasBanco  : boolean;
  titulo         : string;
  sArc           : String;
  titulo2        : string;
  bImagenDefault: boolean;
  Archivo   : string;
  lNoGuardarDocto :boolean;
  isOpen : boolean;
  btnPermisos : String;
  temE: TUniQuery;
  pdf:String;
  btnBand:Boolean=False;
  bNoMostrar:Integer=0;
  //Variables para el popMovimiento
  lOpcionSelecciona  : boolean;
  sDescripcion : string;
  lExpandido : boolean;
  IdFamilia, IdMaterialCopia    : Integer;

  Excel, Libro, Hoja: Variant;
  columnas : array[1..260] of String ;
  tsArchivo : string;

implementation
uses
    frm_connection,
    frm_pedidos, Frm_RequisicionMaterial, frm_VerPDF,
    Func_Genericas,
    frm_catalogos_almacen, frm_Catalogos_rh_tipos,
    UFrmConfigCorreo, frm_Existencia;
{$R *.dfm}

procedure TfrmMateriales_SS7.EnterControl(Sender: TObject);
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

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookUpComboBox) then
        tcxDBLookUpComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmMateriales_SS7.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookUpComboBox) then
        tcxDBLookUpComboBox(sender).Style.Color := global_color_salidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmMateriales_SS7.SeleccionarMovimientosMatClick(Sender: TObject);
var
    conteo:Integer;
    sMensaje : string;
    Movimientos, Consulta : TUniQuery;
begin

    Movimientos:=tUniquery.create(nil);
    Movimientos.Connection := Connection.uConnection;

    Consulta:=tUniquery.create(nil);
    Consulta.Connection := Connection.uConnection;

    AsignarSQL(Movimientos,'busca_idInsumo_tablas',pUpdate);
    FiltrarDataSet(Movimientos,'bd',[connection.Uconnection.Database]);
    Movimientos.Open;

    sMensaje := '';
    PanelProgreso.Visible := True;
    while not Movimientos.Eof do
    begin
       AsignarSQL(Consulta,'antes_elimina_requisicion',pUpdate);
       FiltrarDataSet(Consulta, 'filter_by_code,IdInsumo',[Movimientos.FieldByName('Tabla').AsString, zqInsumos.FieldByName('IdInsumo').AsInteger]);
       Consulta.Open;

       if Consulta.RecordCount > 0 then
          sMensaje := sMensaje +#13+' - '+Movimientos.FieldByName('TablaMovimiento').AsString;

       BarraProgresoAvance(Progreso, 0,100,100/Movimientos.RecordCount);
       Movimientos.Next;
    end;

    PanelProgreso.Visible := False;
    if sMensaje <> '' then
    begin
       if MessageDlg('Desea Mover: '+sMensaje+#13+' A otro Material?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       begin
           PegarMovimientosMat.Enabled := True;
           SeleccionarMovimientosMat.Enabled := False;
           CopiarMedida.Enabled := False;
           CopiarFamilia.Enabled := False;
           IdMaterialCopia := zqInsumos.FieldByName('IdInsumo').AsInteger;
           lOpcionSelecciona := True;
       end;
    end
    else
       messageDLG('No se encontraron movimientos!', mtInformation, [mbOk],0);

    Movimientos.Destroy;
    Consulta.Destroy;
end;

procedure TfrmMateriales_SS7.FormShow(Sender: TObject);
begin
    btnPermisos := global_btnPermisos;
   try
       // PanelDetalle.Visible := False;
  //      cxSplitterDetalle.

        cxRepetidos.Visible := False;
        Panel2.Visible := False;
        cxSplitter1.Visible := False;
        titulo:='Materiales ';
        titulo2:='Imagen';
        cxLeyenda.Caption:=titulo;
        cxLeyenda2.Caption:=titulo2;

        cxSplitterOpciones.Visible := False;
        PanelDetalle.Visible       := False;

        dxLayoutItem16.Visible:=False;

        frmBarraH21.btnCancel.Click;

        Proveedores.Active := False ;
        AsignarSQL(Proveedores,'master_proveedores',pUpdate);
        FiltrarDataSet(Proveedores, 'IdProveedor',['-1']);
        Proveedores.Open;

        AsignarSQL(Moneda,'master_moneda',pUpdate);
        Moneda.Open;

        if global_btnPermisos = 'dxBarEPP' then
        begin
          zqInsumos.Active:=False;
          AsignarSQL(zqInsumos,'alm_insumos_epp',pUpdate);
          FiltrarDataSet(zqInsumos,'Usuario,Codigo',[global_usuario,'-1']);
          zqInsumos.Open;
        end
        else
        begin
         zqInsumos.Active:=False;
         AsignarSQL(zqInsumos,'alm_insumos',pUpdate);
         FiltrarDataSet(zqInsumos,'Usuario,Codigo',[global_usuario,'-1']);
         zqInsumos.Open;
        end;


        zFabricante.Active:=False;
        AsignarSQL(zFabricante,'alm_fabricante',pUpdate);
        FiltrarDataSet(zFabricante,'IdFabricante',['-1']);
        zFabricante.Open;

        zqMarca.Active:=False;
        AsignarSQL(zqMarca,'alm_marcas',pUpdate);
        FiltrarDataSet(zqMarca,'Id,Codigo',['-1','-1']);
        zqMarca.Open;

        zqMedida.Active:=False;
        AsignarSQL(zqMedida,'master_medidas_sap',pUpdate);
        FiltrarDataSet(zqMedida,'Id,Codigo',['-1','-1']);
        zqMedida.Open;

        zqFamilia.Active:=False;
        AsignarSQL(zqFamilia,'alm_familias',pUpdate);
//        if global_AplicaMto = 'Si' then
//            FiltrarDataSet(zqFamilia,'Id,Codigo, Mto',['-1','-1', global_AplicaMto])
//        else
        FiltrarDataSet(zqFamilia,'Id,Codigo',['-1','-1']);
        zqFamilia.Open;

        zqSubFamilia.Active:=False;
        AsignarSQL(zqSubfamilia,'alm_subfamilia',pUpdate);
        FiltrarDataSet(zqSubfamilia,'Id,Codigo,IdFamilia',['-1','-1','-1']);
        zqSubFamilia.Open;

        catalogo.Active := False ;
        AsignarSQL(catalogo,'master_producto_servicio',pUpdate);
        FiltrarDataSet(catalogo, 'Activo',['Si']);
        catalogo.Open;

        filtro.Active := False ;
        AsignarSQL(filtro,'filtro_master_proveedor_producto',pUpdate);
        FiltrarDataSet(filtro, 'Activo',['Si']);
        filtro.Open;

        zCatalogo_docto.Active := False ;
        AsignarSQL(zCatalogo_docto,'catalogo_documentos_proveedor',pUpdate);
        FiltrarDataSet(zCatalogo_docto, 'Tipo',['Material']);
        zCatalogo_docto.Open;

        zproducto.Active := False ;
        zproducto.SQL.Clear;
        zproducto.SQL.Text:='select * from master_producto_servicio order by Nombre';
        zproducto.Open;

        connection.qryUBusca2.Active:=False;
        connection.QryUBusca2.SQL.Clear;
        connection.qryUBusca2.SQL.Text:='select FK_Titulo from master_empresa';
        connection.qryUBusca2.Open;
        cxGridMovimientosColumn4.Visible:=False;
        cxImportar.Visible := False;
        if connection.qryUBusca2.FieldByName('FK_Titulo').AsString='SUBSEA 7' then
        begin
           cxImportar.Visible := True;
           cxGridMovimientosColumn4.Visible:=True;
           cxGridMovimientos.Columns[2].Caption;
           cxGridMovimientos.Columns[2].DataBinding.FieldName:='NumeroMaterial';
           cxAgregaMedida.Enabled := False;
        end;
        if connection.UContrato.FieldByName('FK_Titulo').AsString = 'CMMI' then
        begin
          cxView_Materiales.PopupMenu :=  PopupMateriales;
        end;
        if connection.qryUBusca2.FieldByName('FK_Titulo').AsString='TYPHOON' then
        begin
         cxView_Materiales.Columns[7].Caption:='Alias';
         dxLayoutItem11.Caption:='Alias';
         dxLayoutItem35.Caption:='Fecha Vigencia';
         dxLayoutItem40.Visible:=False;
         dxLayoutItem42.Visible:=False;

         cxView_Materiales.FindPanel.DisplayMode := fpdmAlways;
         cxView_Materiales.FindPanel.InfoText := 'Buscar...' ;
         cxView_Materiales.FilterRow.Visible := False;
         cxView_MaterialesColumn13.Visible:=False;
         cxView_Materiales.FindPanel.ShowClearButton := False;
         cxView_Materiales.FindPanel.ShowCloseButton := False;
         cxView_Materiales.FindPanel.ShowFindButton := False;
         cxView_MaterialesColumn10.OnGetProperties := nil;
        end;

        IsOpen := True;
        PermisosBotones(frmMateriales_SS7,btnPermisos);
        lOpcionSelecciona := False;

      except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al iniciar el formulario', 0);
      end;
   end;

   // envio correo
    try
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

      if zqEnviados.Active then
        zqEnviados.Refresh
      else
      begin
      //  zqEnviados.ParamByName('Usuario').AsString  := global_usuario;
      //  zqEnviados.ParamByName('Empresa').AsString := global_contrato;
        zqEnviados.Open;
      end;

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

  guardar_leer_grid(BView_filtro,frmMateriales_SS7,0);
  guardar_leer_grid(cxView_Materiales,frmMateriales_SS7,0);
  guardar_leer_grid(cxGridViewImagen,frmMateriales_SS7,0);
  guardar_leer_grid(cxGridCertificados,frmMateriales_SS7,0);
  guardar_leer_grid(cxGridExistenciaDBTableView1,frmMateriales_SS7,0);
  guardar_leer_grid(cxGridCostosDBTableView1,frmMateriales_SS7,0);
  guardar_leer_grid(cxGridSerieDBTableView1,frmMateriales_SS7,0);
  guardar_leer_grid(cxGridMovimientos,frmMateriales_SS7,0);
end;

procedure TfrmMateriales_SS7.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  guardar_leer_grid(BView_filtro,frmMateriales_SS7,1);
  guardar_leer_grid(cxView_Materiales,frmMateriales_SS7,1);
  guardar_leer_grid(cxGridViewImagen,frmMateriales_SS7,1);
  guardar_leer_grid(cxGridCertificados,frmMateriales_SS7,1);
  guardar_leer_grid(cxGridExistenciaDBTableView1,frmMateriales_SS7,1);
  guardar_leer_grid(cxGridCostosDBTableView1,frmMateriales_SS7,1);
  guardar_leer_grid(cxGridSerieDBTableView1,frmMateriales_SS7,1);
  guardar_leer_grid(cxGridMovimientos,frmMateriales_SS7,1);
  zqInsumos.Cancel ;
  action := cafree ;
end;

procedure TfrmMateriales_SS7.grid_proveedoresCellClick(Column: TColumn);
begin
  if frmBarraH21.btnCancel.Enabled = True then
    frmBarraH21.btnCancel.Click ;

  PermisosBotones(frmMateriales_SS7,btnPermisos);
end;

procedure TfrmMateriales_SS7.cxView_MaterialesCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
     if frmBarraH21.btnCancel.Enabled = True then
     begin
      frmBarraH21.btnCancel.Click;
      PermisosBotones(frmMateriales_SS7,btnPermisos);
     end;
        cxPageDetalleChange(sender);
     if zqInsumos.RecordCount > 0 then
        if zExistencia.RecordCount = 0 then
           if PanelDetalle.Visible then
              cxPageDetalleChange(sender);
end;

procedure TfrmMateriales_SS7.cxView_MaterialesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if cxView_Materiales.OptionsView.CellAutoHeight then
       cxView_Materiales.OptionsView.CellAutoHeight := False
    else
       cxView_Materiales.OptionsView.CellAutoHeight := True;
end;

procedure TfrmMateriales_SS7.cxView_MaterialesColumn10GetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
var
  AColumn: TcxGridDBColumn;
begin
  with TcxGridDBTableView(Sender.GridView) do
      AColumn := GetColumnByFieldName('Moneda');

  if zqInsumos.RecordCount > 0 then
  begin
      if AColumn = nil then
      begin
        Exit;
      end
      else
      begin
          moneda.Locate('Codigo', ARecord.Values[AColumn.Index],[] );
          AProperties := connection.cxReposMonedas[moneda.RecNo-1].Properties;
      end;
  end;

end;

procedure TfrmMateriales_SS7.cxView_MaterialesDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  IsOpen := False;
end;

procedure TfrmMateriales_SS7.cxView_MaterialesDataControllerFilterChanged(
  Sender: TObject);
begin
  IsOpen:=True;
end;

procedure TfrmMateriales_SS7.cxView_MaterialesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = VK_UP) or ( Key = VK_DOWN)  then
        if PanelDetalle.Visible then
          Orden_compra_scroll;
end;

procedure TfrmMateriales_SS7.frmBarra1btnAddClick(Sender: TObject);
begin
  try
       frmBarraH11.btnAddClick(Sender);
       grid_Materiales.Enabled:=false;
       zqInsumos.Append ;
       zqInsumos.FieldValues['Calle'] := '-';
       zqInsumos.FieldValues['Interior'] := '0';
       zqInsumos.FieldValues['Exterior'] := '0';
       zqInsumos.FieldValues['Colonia'] := '-';
       zqInsumos.FieldValues['CodigoPostal'] := '00000';
       zqInsumos.FieldValues['IdCiudad']    := '0';
       zqInsumos.FieldValues['IdEstado']    := '0';
       zqInsumos.FieldValues['Rfc']         := '-';
       zqInsumos.FieldValues['Telefono']   := '(000)0000000';
      // cxCiudad.DataBinding.DataSource.DataSet.FieldByName('IdCiudad').AsInteger := zqCiudades.FieldByName('IdCiudad').AsInteger;
       //zqInsumos.FieldByName('idciudad').AsInteger := 12;
     except
     on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al agregar registro ', 0);
     end;
  end;
  frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmMateriales_SS7.frmBarra1btnEditClick(Sender: TObject);
begin

   banderaAgregar:=false;
   frmBarraH11.btnEditClick(Sender);

   try
      zqInsumos.Edit ;
      grid_Materiales.Enabled:=false;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al editar registro', 0);
          frmBarraH21.btnCancel.Click ;
      end;
   end ;
     frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmMateriales_SS7.frmBarra1btnPostClick(Sender: TObject);
var
    nombres, cadenas: TStringList;
    sId : string;
begin
    //empieza validacion
    nombres:=TStringList.Create;  cadenas:=TStringList.Create;

    nombres.Add('Nombre');
    nombres.Add('Razon Social');
    nombres.Add('RFC');
    nombres.Add('Calle');
    nombres.Add('No. Interior');
    nombres.Add('No. Exterior');
    nombres.Add('Colonia');
    nombres.Add('C.P.');
    nombres.Add('Ciudad');
    //cadenas.Add(cxCiudad.Text);

     if zqInsumos.State = dsInsert then
       if ValidaExiste('', 'master_pais', 'Codigo', zqInsumos.FieldByName('Codigo').AsString, 'Código') then
          exit;

    //continuainserccion de datos
     try
        if not validaTexto(nombres, cadenas, 'Codigo', cxCodigo.Text) then
        begin
            MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
            exit;
        end;
        sId := zqInsumos.FieldByName('Codigo').AsString;
        zqInsumos.Post ;

        zqInsumos.Locate('codigo', sId,[]);

        try
//          frmOrdenes_compra.zqProveedores.Refresh;
//          frmOrdenes_compra.cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger := zqInsumos.FieldByName('IdProveedor').AsInteger;
        Except
        end;

     except
       on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al salvar registro', 0);
          frmBarraH21.btnCancel.Click ;
       end;
     end;

     grid_Materiales.Enabled:=True;
     frmBarraH21.btnCancel.Click;
     frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmMateriales_SS7.frmBarra1btnCancelClick(Sender: TObject);
begin
 try
  frmBarraH21.btnCancelClick(Sender);
  zqInsumos.Cancel ;
  grid_Materiales.Enabled:=True;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al cancelar', 0);
  end;
 end;
 frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmMateriales_SS7.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if cxView_Materiales.DataController.DataSource.DataSet.IsEmpty=false then
  begin
    if cxView_Materiales.DataController.DataSource.DataSet.RecordCount>0 then
    begin

      if MessageDlg('Desea eliminar el Registro Activo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        begin


            try
              zqInsumos.Delete ;

              if (global_frmActivo = 'frm_pedidos') then
              begin
                //frmPedidos.zqInsumos.Refresh;
//                frmPedidos.tsIdProveedor.SetFocus;
              end;

            except
              on e : exception do
              begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al eliminar registro', 0);
              end;
            end

        end;
      end;
    end;
  end;
  if (global_frmActivo = 'frm_consumibles') or (global_frmActivo = 'frm_pedidos') then
  begin
   global_frmActivo := 'ninguno';
   frmBarraH21.btnCancel.Click;
  end;
end;

procedure TfrmMateriales_SS7.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  zqInsumos.Active := False ;
  zqInsumos.Open
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al actualizar grid', 0);
  end;
 end;
end;

//procedure TfrmProveedores.frmBarra1btnExitClick(Sender: TObject);
//begin
//   frmBarraH11.btnExitClick(Sender);
//   close
//end;

procedure TfrmMateriales_SS7.Insertar1Click(Sender: TObject);
begin
    frmBarraH11.btnAdd.Click
end;

procedure TfrmMateriales_SS7.muestraImagen;
var
  bS: TStream;
  Pic: TJPEGImage;
  BlobField: tField;
  QryBusca: TuniQuery;
  str:String;
begin
   QryBusca := TuniQuery.Create(Self);
   QryBusca.Connection := connection.Uconnection;
   QryBusca.Active:=False;
   QryBusca.SQL.Clear;
   QryBusca.SQL.Text:='select bImagen from configuracion where sContrato = :Contrato';
   QryBusca.Params.ParamByName('Contrato').AsString := zqInsumos.FieldByName('sContrato').AsString;
   QryBusca.Open;
   str:=zqInsumos.FieldByName('sContrato').AsString;
   bImagen.Picture.Bitmap := nil;

   BlobField := QryBusca.FieldByName('bImagen');
   BS := QryBusca.CreateBlobStream(BlobField, bmRead);
   if QryBusca.RecordCount > 0 then
    begin
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
      end;
    end;
end;

procedure TfrmMateriales_SS7.opcionImprimirPropertiesChange(Sender: TObject);
begin
  if opcionImprimir.EditValue = 1 then
  begin
    cbAlm.Visible := False;
    cbTipoMov.Visible := False;
  end else if opcionImprimir.EditValue = 2 then
  begin
    cbAlm.Visible := False;
    cbTipoMov.Visible := False;
  end else if opcionImprimir.EditValue = 3 then
  begin
    zComboReporte.Active := False;
    zComboReporte.SQL.Text := '(Select -1 as Id,'+QuotedStr('TODOS LOS ALMACENES')+' as Nombre) union '+
                              '(Select IdAlmacen as Id, sDescripcion as Nombre from alm_almacenes)';
    zComboReporte.Open;

    if zComboReporte.RecordCount > 0 then
      cbAlm.ItemIndex := 0;

    cbAlm.Visible := True;
    cbTipoMov.Visible := False;
  end else if opcionImprimir.EditValue = 4 then
  begin
    zComboReporte.Active := False;
    zComboReporte.SQL.Text := '(Select -1 as Id, '+QuotedStr('TODOS LOS MOVIMIENTOS')+' as Nombre) UNION '+
                              '(SELECT IdTipo AS Id, sDescripcion as Nombre FROM movimientosdealmacen)';
    zComboReporte.Open;

    if zComboReporte.RecordCount > 0 then
      cbTipoMov.ItemIndex := 0;

    cbAlm.Visible := False;
    cbTipoMov.Visible := True;
  end;
end;

procedure TfrmMateriales_SS7.Editar1Click(Sender: TObject);
begin
    frmBarraH11.btnEdit.Click
end;

procedure TfrmMateriales_SS7.Registrar1Click(Sender: TObject);
begin
    frmBarraH21.btnPost.Click
end;

procedure TfrmMateriales_SS7.btnAddClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    cxSplitter1.Visible := False;
    grid_Materiales.Enabled:=False;

    zqInsumos.Append;
    zqInsumos.FieldByName('Codigo').AsString := autoFolio(zqInsumos, 'alm_insumos');
    zqInsumos.FieldByName('sContrato').AsString:=global_contrato;
    cxProducto.DataBinding.DataSource.DataSet.FieldByName('IdProducto').AsInteger := zProducto.FieldByName('IdProducto').AsInteger;
    cxMedida.DataBinding.DataSource.DataSet.FieldByName('IdMedida').AsInteger := zqMedida.FieldByName('IdMedida').AsInteger;
    cxFamilia.DataBinding.DataSource.DataSet.FieldByName('IdFamilia').AsInteger := zqFamilia.FieldByName('IdFamilia').AsInteger;

    cxSubFamilia.DataBinding.DataSource.DataSet.FieldByName('IdSubFamilia').AsInteger := zqSubfamilia.FieldByName('IdSubFamilia').AsInteger;
    cxMarca.DataBinding.DataSource.DataSet.FieldByName('IdMarca').AsInteger := zqMarca.FieldByName('IdMarca').AsInteger;
    zqInsumos.FieldByName('dTalla').AsInteger := 0;
    zqInsumos.FieldByName('dCantidad').AsInteger := 0;
    cxProducto.SetFocus;
    cxCodigo.Properties.ReadOnly := True;

    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;
    if connection.qryUBusca2.FieldByName('FK_Titulo').AsString='CMMI' then
      btnBand:=True;
end;

procedure TfrmMateriales_SS7.btnCancelClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    cxSplitter1.Visible := False;
    frmBarraH11.btnActive;
    grid_Materiales.Enabled:=True;
    ds_insumos.DataSet.Cancel;
end;

procedure TfrmMateriales_SS7.btnDeleteClick(Sender: TObject);
var
   conteo:Integer;
   sMensaje : string;
   Requisicion, Movimientos, Consulta : TUniQuery;
begin
  Requisicion:=tUniquery.create(nil);
  Requisicion.Connection := Connection.uConnection;

  If zqInsumos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
       Movimientos:=tUniquery.create(nil);
       Movimientos.Connection := Connection.uConnection;

       Consulta:=tUniquery.create(nil);
       Consulta.Connection := Connection.uConnection;

       AsignarSQL(Movimientos,'busca_idInsumo_tablas',pUpdate);
       FiltrarDataSet(Movimientos,'bd',[connection.Uconnection.Database]);
       Movimientos.Open;

       sMensaje := '';
       PanelProgreso.Visible := True;
       while not Movimientos.Eof do
       begin
         AsignarSQL(Consulta,'antes_elimina_requisicion',pUpdate);
         FiltrarDataSet(Consulta, 'filter_by_code,IdInsumo',[Movimientos.FieldByName('Tabla').AsString, zqInsumos.FieldByName('IdInsumo').AsInteger]);
         Consulta.Open;

         if (Consulta.RecordCount > 0) and (Movimientos.FieldByName('TablaMovimiento').AsString <> 'Stock de Materiales') then
            sMensaje := sMensaje +#13+' - '+Movimientos.FieldByName('TablaMovimiento').AsString ;
//         else
//            if (Consulta.RecordCount > 0) and (Movimientos.FieldByName('TablaMovimiento').AsString <> 'alm_insumos_maximos') then
//                sMensaje := sMensaje +#13+' - '+Movimientos.FieldByName('TablaMovimiento').AsString;

         BarraProgresoAvance(Progreso, 0,100,100/Movimientos.RecordCount);
         Movimientos.Next;
       end;

       PanelProgreso.Visible := False;
       if sMensaje = '' then
       begin
          try
            isOpen := False;
            try
              //Eliminar los amaximos y minimos del almacen
              connection.qryUBusca.Active := False;
              connection.qryUBusca.SQL.Clear;
              connection.qryUBusca.SQL.Add('delete from alm_insumos_maximos where IdInsumo =:Id');
              connection.qryUBusca.ParamByName('Id').AsInteger := zqInsumos.FieldByName('IdInsumo').AsInteger;
              connection.qryUBusca.ExecSQL;

              connection.qryUBusca.Active := False;
              connection.qryUBusca.SQL.Clear;
              connection.qryUBusca.SQL.Add('delete from alm_insumos where IdInsumo =:Id');
              connection.qryUBusca.ParamByName('Id').AsInteger := zqInsumos.FieldByName('IdInsumo').AsInteger;
              connection.qryUBusca.ExecSQL;

              //zqInsumos.Prior;
              SavePlace := cxView_Materiales.DataController.DataSource.DataSet.GetBookmark;
              zqInsumos.Refresh;
              try
                 cxView_Materiales.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
              except
                 cxView_Materiales.DataController.DataSet.FreeBookmark(SavePlace);
              end;
            except
              on E : Exception do begin
                if EUniError(E).ErrorCode = 1451 then
                  MessageDlg(MsgEliminarMYSQL(e.Message), mtWarning, [mbOk], 0)
                else
                  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Insumos', 'Al eliminar registro',0);
              end;
            end
          finally
             isOpen := True;
             PermisosBotones(frmMateriales_SS7,btnPermisos);
          end;
      end
      else
        ShowMessage('No se puede eliminar, Contiene datos en:'+sMensaje);

      Requisicion.destroy;
      Movimientos.Destroy;
      Consulta.destroy;
    end;
end;

procedure TfrmMateriales_SS7.btnDescargarClick(Sender: TObject);
var
   wideChars   : array[0..11] of WideChar;
begin

  dlgSavePDF.FileName := proveedores.FieldByName('Codigo').AsString +'_'+  zCertificado.FieldByName('Documento').AsString+'.pdf';

  dlgSavePDF.filter := 'Documento PDF (*.pdf)';
  if dlgSavePDF.Execute() then
  begin
    if not FileExists( dlgSavePDF.filename ) then
    begin
      TBlobField(zCertificado.FieldByName('DocumentoDigital')).SaveToFile( dlgSavePDF.FileName );
      //ShellExecute(0, 'explore', nil, nil,pchar(dlgSavePDF.FileName), SW_SHOW);
    end
    else
    begin
      if MessageDlg('¿Desea reemplazar el archivo?', mtconfirmation, [mbyes, mbno], 0) = mryes then
      begin
        try
          DeleteFile( dlgSavePDF.FileName );

          TBlobField(zCertificado.FieldByName('DocumentoDigital')).SaveToFile( dlgSavePDF.FileName);
          //ShellExecute(0, 'explore', nil, nil,pchar(dlgSavePDF.FileName), SW_SHOW);
        except
          on e:exception do
            ShowMessage('No se puede tener acceso a '+ dlgSavePDF.FileName + 'verifique que el documento no este abierto');
        end;
      end;
    end;
    messageDLG('Archivo descargado', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmMateriales_SS7.btnDetalleClick(Sender: TObject);
begin
   cxPageDetalle.ActivePageIndex := 0;
   PanelDown.Visible :=False;
   dxLayoutItem16.Visible:=False;
   if PanelDetalle.Visible then
   begin
       cxSplitterOpciones.Visible := False;
       PanelDetalle.Visible       := False;
   end
   else
   begin
       PanelDetalle.Visible       := True;
       cxSplitterOpciones.Visible := True;
   end;

   cxPageDetalle.OnChange(sender);
end;

procedure TfrmMateriales_SS7.btnEditClick(Sender: TObject);
var
Result : Integer;
begin
  Result := Pos('CON-',zqInsumos.FieldByName('Codigo').AsString);
  if Result > 0 then begin

    cxLeyenda.Caption:=titulo+'[Editando]';
    frmBarraH11.btnEditClick(Sender);
    Panel2.Visible:=True;
    cxSplitter1.Visible := False;
    grid_Materiales.Enabled:=False;
    zqInsumos.Edit;
    cxMaterial.SetFocus;
    cxCodigo.Properties.ReadOnly := False;
    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;
  end
  else
  messagedlg('No se puede editar este material.',mtInformation,[mbok],0);
end;

procedure TfrmMateriales_SS7.btnExistenciaClick(Sender: TObject);
begin
  if connection.UContrato.FieldByName('FK_Titulo').AsString = 'CMMI' then
  begin
    global_frmActivo:='Materiales';
     Application.CreateForm(TfrmExistencia, frmExistencia);
    frmExistencia.show;

  end;
end;

procedure TfrmMateriales_SS7.btnExpandirClick(Sender: TObject);
begin
   if lExpandido then
   begin
      cxView_Materiales.DataController.Groups.FullCollapse;
      lExpandido := False;
   end
   else
   begin
      cxView_Materiales.DataController.Groups.FullExpand;
      lExpandido := True;
   end;
end;

procedure TfrmMateriales_SS7.btnExportaClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
  dlgSave : TSaveDialog;
begin
  dlgSave := TSaveDialog.Create(nil);
  dlgSave.FileName := 'Partidas de Anexo';
  if dlgSave.Execute then
  begin
    rutaArchivo := dlgSave.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, grid_materiales);
    dlgSave.Destroy;
    if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;

end;

procedure TfrmMateriales_SS7.btnImpInformeClick(Sender: TObject);
var
  MaterialGrid : String;
   contMatGrid, j : Integer;
begin
  if opcionImprimir.EditValue = 1 then
  begin
    IsOpen:=False;
    generar_reporte_grid(cxView_Materiales,'Reporte General de Materiales.');
    IsOpen:=True;
  end
  else if opcionImprimir.EditValue = 2 then
  begin
    cxView_Materiales.DataController.Groups.FullExpand;
    contMatGrid := cxView_Materiales.ViewData.RecordCount;
    for j := 0 to (contMatGrid - 1) do
    begin
      try
        MaterialGrid := MaterialGrid + cxView_Materiales.ViewData.Rows[j].Values[0] +',';
      except
        ;
      end;
    end;

    zReporteDetalle.Active := False;
    AsignarSQL(zReporteDetalle,'almacen_precios',pUpdate);
    FiltrarDataSet(zReporteDetalle,'CodMat',[MaterialGrid]);
    zReporteDetalle.Open;
    zReporteDetalle.recordCount;
    IsOpen:=False;
    generar_reporte_grid_MaterialDetalles(cxView_Materiales,zReporteDetalle,'Reporte de Materiales con Precios', 'IdInsumo', 2,0);
    IsOpen:=True;
  end else if opcionImprimir.EditValue = 3 then
  begin
    zReporteDetalle.SQL.Text := 'Select 0 as IdInsumo, '+ QuotedStr('') +' as Almacen, 0 as Existencia';
    zReporteDetalle.Open;
    IsOpen:=False;
    generar_reporte_grid_MaterialDetalles(cxView_Materiales,zReporteDetalle,'Reporte de Materiales con Existencias', 'IdInsumo', 3, cbAlm.EditValue);
    IsOpen:=True;
  end else if opcionImprimir.EditValue = 4 then
  begin
    cxView_Materiales.DataController.Groups.FullExpand;
    contMatGrid := cxView_Materiales.ViewData.RecordCount;
    for j := 0 to (contMatGrid - 1) do
    begin
      try
        MaterialGrid := MaterialGrid + cxView_Materiales.ViewData.Rows[j].Values[0] +',';
      except
        ;
      end;
    end;

    zReporteDetalle.Active := False;
    AsignarSQL(zReporteDetalle,'almacen_movimientos',pUpdate);
    FiltrarDataSet(zReporteDetalle,'CodMat, TipoMov',[MaterialGrid, cbTipoMov.EditValue]);
    zReporteDetalle.Open;
    zReporteDetalle.recordCount;
    IsOpen:=False;
    generar_reporte_grid_MaterialDetalles(cxView_Materiales,zReporteDetalle,'Reporte de Materiales con Movimientos', 'IdInsumo', 4, cbTipoMov.EditValue);
    IsOpen:=True;
  end;
end;

procedure TfrmMateriales_SS7.btnPostClick(Sender: TObject);
var
     SavePlace     : TBookmark;
     zUpt: TUniquery;
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    frmBarraH11.Visible:=True;
    grid_Materiales.Enabled:=True;

    if zqInsumos.State = dsInsert then
    zqInsumos.FieldByName('Codigo').AsString := autoFolio(zqInsumos, 'alm_insumos');

    if zqInsumos.State = dsEdit then
    begin
      zUpt:= TUniquery.Create(nil);
      zUpt.Connection := connection.Uconnection;
      zUpt.SQL.Clear;
      zUpt.SQL.Text := 'Update anexo_prequisicion Set mDescripcion=:Descripcion where IdInsumo= :Insumo';
      zUpt.ParamByName('Descripcion').AsString := cxMaterial.Text;
      zUpt.ParamByName('Insumo').AsInteger := zqInsumos.FieldByName('IdInsumo').AsInteger;
      zUpt.ExecSQL;

      zUpt:= TUniquery.Create(nil);
      zUpt.Connection := connection.Uconnection;
      zUpt.SQL.Clear;
      zUpt.SQL.Text := 'Update anexo_ppedido Set mDescripcion=:Descripcion where IdInsumo= :Insumo';
      zUpt.ParamByName('Descripcion').AsString := cxMaterial.Text;
      zUpt.ParamByName('Insumo').AsInteger :=  zqInsumos.FieldByName('IdInsumo').AsInteger;
      zUpt.ExecSQL;
    end;
    zqInsumos.FieldByName('dFecha').AsDatetime := now();
    ds_insumos.DataSet.Post;

     if connection.qryUBusca2.FieldByName('FK_Titulo').AsString='CMMI' then begin
       if btnBand then begin
        EnviaCorreo('MATERIAL_NUEVO', '', sTipoMaterial, 'CREADO',sFoliosDoctos);
       end;
       btnBand:=False;
     end;

    SavePlace := cxView_Materiales.DataController.DataSource.DataSet.GetBookmark;
    zqInsumos.Refresh;
    try
       cxView_Materiales.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
    except
       cxView_Materiales.DataController.DataSet.FreeBookmark(SavePlace);
    end;

    PermisosBotones(frmMateriales_SS7,btnPermisos);
end;

procedure TfrmMateriales_SS7.btnPrinterClick(Sender: TObject);
begin
    IsOpen:=False;
    generar_reporte_grid(cxView_Materiales,'Reporte General de Materiales.');
    IsOpen:=True;
end;

procedure TfrmMateriales_SS7.btnRefreshClick(Sender: TObject);
var
   iTotal,IdMedida : integer;
begin
  { if connection.uconfiguracion.FieldByName('ConexionRefresh').AsString = 'Si' then
   begin
       if connection.UniConnectionSQLServer.Connected = False then
          connection.UniConnectionSQLServer.Connected := True;

       PanelProgreso.Visible := True;
       BarraMostrar(True,progreso, LabelProceso);
       connection.uSQLConsulta.Active := False;
       connection.uSQLConsulta.SQL.Clear;
       connection.uSQLConsulta.SQL.Add('select * from tablaMaterial');
       connection.uSQLConsulta.Open;

       while not connection.uSQLConsulta.Eof do
       begin
           if zqInsumos.Locate('Codigo',connection.uSQLConsulta.FieldByName('Codigo').AsString,[]) = False then
           begin
              if zqMedida.Locate('Codigo',connection.uSQLConsulta.FieldByName('Unidad').AsString,[]) then
                 IdMedida := zqMedida.FieldByName('IdMedida').AsInteger
              else
              begin
                 AsignarSQL(connection.qryUBusca,'inserta_medidas', pUpdate);
                 FiltrarDataSet(connection.qryUBusca, 'Codigo', [connection.uSQLConsulta.FieldByName('Unidad').AsString]);
                 connection.qryUBusca.Execute;

                 zqMedida.Refresh;
                 zqMedida.Locate('Codigo', connection.uSQLConsulta.FieldByName('Unidad').AsString, [loCaseInsensitive]);
                 IdMedida := zqMedida.FieldByName('IdMedida').AsInteger;
              end;

              AsignarSQL(connection.qryUBusca,'Inserta_material_SQLServer',pUpdate);
              FiltrarDataSet(connection.qryUBusca,'Contrato,Codigo,Descripcion,Medida,Fecha',[global_contrato,
              connection.uSQLConsulta.FieldByName('Codigo').AsString,
              connection.uSQLConsulta.FieldByName('Descripcion').AsString, IdMedida, connection.uSQLConsulta.FieldByName('Fecha').AsDateTime]);
              connection.qryUBusca.ExecSQL;

              inc(iTotal);
           end;
           BarraProgresoAvance(Progreso, 0,100,100/connection.uSQLConsulta.RecordCount);
           connection.uSQLConsulta.Next;
       end;
       BarraMostrar(False,progreso, LabelProceso);
       PanelProgreso.Visible := False;
   end; }

   IsOpen := False;
   zqInsumos.Refresh;
   IsOpen := True;

end;

procedure TfrmMateriales_SS7.BView_empresaDataControllerFilterRecord(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var Accept: Boolean);
begin
    if BView_filtro.DataController.Filter.FilterText <> '' then
    begin
      if global_lock_filter <>  BView_filtro.DataController.Filter.FilterText then
      begin
          filtro.Filtered := False;
          filtro.Filter   := BView_filtro.DataController.Filter.FilterText;
          filtro.FilterOptions:=[foCaseInsensitive];
          filtro.Filtered := True;

          zqInsumos.Filtered := False;
          zqInsumos.Filter   := CreaFiltroCampo('IdProducto','IdProducto',filtro);
          zqInsumos.Filtered := True;

          global_lock_filter := BView_filtro.DataController.Filter.FilterText;
      end;
    end;
end;

procedure TfrmMateriales_SS7.BView_filtroCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    if BView_filtro.DataController.Filter.FilterText = '' then
    begin
        zqInsumos.Filtered := False;
    end;

end;

procedure TfrmMateriales_SS7.Can1Click(Sender: TObject);
begin
    frmBarraH21.btnCancel.Click
end;

procedure TfrmMateriales_SS7.Eliminar1Click(Sender: TObject);
begin
    frmBarraH11.btnDelete.Click
end;

procedure TfrmMateriales_SS7.Imprimir1Click(Sender: TObject);
begin
    frmBarraH11.btnPrinter.Click
end;

procedure TfrmMateriales_SS7.popmenuAplicaClick(Sender: TObject);
var
   zActualiza : tUniquery;
begin
    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;

    if IdMaterialCopia = zqInsumos.FieldByName('IdInsumo').AsInteger then
    begin
        messageDLG('No se puede Continuar: Movimientos en el mismo Material', mtInformation, [mbOk], 0);
        lOpcionSelecciona := False;
        exit;
    end;

    if sDescripcion <> zqInsumos.FieldByName('Material').AsString then
    begin
        messageDLG('No se puede Continuar: Material con diferente Descripcion.', mtInformation, [mbOk], 0);
        lOpcionSelecciona := False;
        exit;
    end;

    if IdFamilia <> zqInsumos.FieldByName('IdFamilia').AsInteger then
    begin
        messageDLG('No se puede Continuar: Material con diferente Familia.', mtInformation, [mbOk], 0);
        lOpcionSelecciona := False;
        exit;
    end;

    zActualiza.SQL.Clear;
    zActualiza.SQL.Add('update bitacoradeentrada set IdInsumo =:IdInsumo where IdInsumo =:IdOld');
    zActualiza.ParamByName('IdInsumo').AsInteger := zqInsumos.FieldByName('IdInsumo').AsInteger;
    zActualiza.ParamByName('IdOld').AsInteger    := IdMaterialCopia;
    zActualiza.ExecSQL;

    zActualiza.SQL.Clear;
    zActualiza.SQL.Add('update bitacoradesalida set IdInsumo =:IdInsumo where IdInsumo =:IdOld');
    zActualiza.ParamByName('IdInsumo').AsInteger := zqInsumos.FieldByName('IdInsumo').AsInteger;
    zActualiza.ParamByName('IdOld').AsInteger    := IdMaterialCopia;
    zActualiza.ExecSQL;

    zActualiza.SQL.Clear;
    zActualiza.SQL.Add('update anexo_ppedido set IdInsumo =:IdInsumo where IdInsumo =:IdOld');
    zActualiza.ParamByName('IdInsumo').AsInteger := zqInsumos.FieldByName('IdInsumo').AsInteger;
    zActualiza.ParamByName('IdOld').AsInteger    := IdMaterialCopia;
    zActualiza.ExecSQL;

    lOpcionSelecciona := False;
    zMovimientos.Refresh;
    zActualiza.Destroy;
end;

procedure TfrmMateriales_SS7.popmenuSeleccionaClick(Sender: TObject);
var
    indice, iGrid    : integer;
    lcontinua : boolean;
begin

    if cxGridMovimientos.DataController.GetSelectedCount > 1 then
      If MessageDlg('Desea Llevar a otro Material los ('+IntToStr(zMovimientos.RecordCount)+') Movimiento(s) Seleccionados ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         lcontinua := True;

    if lContinua then
    begin
       IdMaterialCopia := zqInsumos.FieldByName('IdInsumo').AsInteger;
       lOpcionSelecciona := True;
       sDescripcion := zqInsumos.FieldByName('Material').AsString;
       IdFamilia    := zqInsumos.FieldByName('IdFamilia').AsInteger;
    end;

end;

procedure TfrmMateriales_SS7.PopupMovimientosPopup(Sender: TObject);
begin
    if lOpcionSelecciona then
    begin
        popmenuSelecciona.Enabled := False;
        popmenuAplica.Enabled     := True;
    end
    else
    begin
        popmenuSelecciona.Enabled := True;
        popmenuAplica.Enabled     := False;
    end;
end;

procedure TfrmMateriales_SS7.VerDocumento1Click(Sender: TObject);
begin
  if zCertificado.RecordCount > 0 then
  begin
    AsignarSQL(zCertVP,'documentos_insumos_VP',pUpdate);
    FiltrarDataSet(zCertVP,'IdDocto',[zCertificado.FieldByName('IdDoctoInsumo').AsInteger]);
    zCertVP.Open;

    if not zCertVP.FieldByName('DocumentoDigital').IsNull then
    begin
      if not zCertVP.FieldByName('NombreDocto').IsNull then
        global_Temp := zCertVP.FieldByName('NombreDocto').AsString
      else
        global_Temp := 'cert_'+zqInsumos.FieldByName('Codigo').AsString+'.pdf';

      TBlobField(zCertVP.FieldByName('DocumentoDigital')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp);
      Application.CreateForm(TFrmVerPDF, FrmVerPDF);
      FrmVerPDF.Caption := global_Temp;
      FrmVerPDF.ShowModal;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;
end;

procedure TfrmMateriales_SS7.zImagenesCalcFields(DataSet: TDataSet);
begin
   if zImagenes.RecordCount > 0 then
      zImagenes.FieldByName('Nombre').AsString := 'Imagen ' + IntTostr(zImagenes.RecNo);
end;

procedure TfrmMateriales_SS7.ColPrecioGetProperties(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
var
  AColumn: TcxGridDBColumn;
begin
  with TcxGridDBTableView(Sender.GridView) do
      AColumn := GetColumnByFieldName('Moneda');

  if zCostos.RecordCount > 0 then
  begin
      if AColumn = nil then
      begin
        Exit;
      end
      else
      begin
          moneda.Locate('Codigo', ARecord.Values[AColumn.Index],[] );
          AProperties := connection.cxReposMonedas[moneda.RecNo-1].Properties;
      end;
  end;

end;

procedure TfrmMateriales_SS7.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmMateriales_SS7.CopiarFamiliaClick(Sender: TObject);
var
    indice, iGrid    : integer;
    lcontinua : boolean;
begin
     PegarFamilia.Enabled := True;
     CopiarMedida.Enabled := False;
     CopiarFamilia.Enabled := False;
     IdMaterialCopia := zqInsumos.FieldByName('IdFamilia').AsInteger;
     lOpcionSelecciona := True;
     cxView_Materiales.OptionsSelection.MultiSelect := True;
end;

procedure TfrmMateriales_SS7.CopiarMedidaClick(Sender: TObject);
var
    indice, iGrid    : integer;
    lcontinua : boolean;
begin
     PegarMedida.Enabled := True;
     CopiarMedida.Enabled := False;
     CopiarFamilia.Enabled := False;
     IdMaterialCopia := zqInsumos.FieldByName('IdMedida').AsInteger;
     lOpcionSelecciona := True;
     cxView_Materiales.OptionsSelection.MultiSelect := True;
end;

procedure TfrmMateriales_SS7.btnAgregaMarcaClick(Sender: TObject);
begin
      GLOBAL_FRMACTIVO:='frmMateriales';
      global_indexactivo := 3;
    if not MostrarFormChild('frmCatalogosAlmacen', global_dxBarManagerPrincipal) then
     begin

        Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
        frmCatalogosAlmacen.show;

     end;
end;

procedure TfrmMateriales_SS7.btnAgregarClick(Sender: TObject);
var
  size: Real;
begin
  sOpcion := 'New';
  bImagen.Picture.Bitmap := nil;
  OpenPicture.Title := 'Inserta Imagen';
  sArc := '';
  try
      if OpenPicture.Execute then
      begin
        try
          sArc := RedimensionarJPG(OpenPicture.FileName);
          size := Tamanyo(sArc);
          if size <= 350 then
           begin
            bImagen.Picture.LoadFromFile(OpenPicture.FileName);
            zUpImg.Active := False;
            zUpImg.SQL.Text := 'Insert Into alm_insumos_imagen (IdInsumo,FechaRegistro,Imagen,Activo) VALUES (:IdInsumo,:FechaR,:img,:Activo)';
            zUpImg.ParamByName('IdInsumo').AsInteger       := zqInsumos.FieldByName('IdInsumo').AsInteger;
            zUpImg.ParamByName('FechaR').AsDateTime       := date;
            zUPImg.ParamByName('img').LoadFromFile(sArc, ftGraphic);
            zUpImg.ParamByName('Activo').AsString:='Si';
            //zImagenes.FieldByName('FechaR').AsDateTime := date;
//            zUpImg.Params.ParamByName('img').LoadFromFile(sArc, ftGraphic);
//            cxGuardarDetalle.OnClick(Sender);
            if fileexists(sArc) then
            DeleteFile(sArc);
           end
          else
            MessageDlg('La imagen a adjuntar no debe ser mayor a 350 kb.', mtInformation, [mbOk], 0);
        except
          bImagen.Picture.LoadFromFile('');
        end
      end  ;
  finally
     cxVisualizarImg.Enabled := True;
     dxLayoutItem16.Visible:=True;
  end;

end;

procedure TfrmMateriales_SS7.btnAgregarDoctoClick(Sender: TObject);
begin
  if (zCertVP.State = dsInsert ) or (zCertVP.State = dsEdit) then
   begin
       global_frmActivo := 'frmMateriales';

       if not MostrarFormChild('frmCatalogosRHTipos', global_dxBarManagerPrincipal) then
       begin
          global_indexactivo:= 15;
          Application.CreateForm(TfrmCatalogosRHTipos, frmCatalogosRHTipos);
          frmCatalogosRHTipos.show;
       end;
   end;
end;

procedure TfrmMateriales_SS7.btnAgregarFabricanteClick(Sender: TObject);
begin
    GLOBAL_FRMACTIVO:='frmMateriales';
    global_indexactivo := 10;
    if not MostrarFormChild('frmCatalogosAlmacen', global_dxBarManagerPrincipal) then
     begin

        Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
        frmCatalogosAlmacen.show;

     end;
end;

procedure TfrmMateriales_SS7.btnAgregarServicioClick(Sender: TObject);
begin
   GLOBAL_FRMACTIVO:='frmMateriales';
   global_indexactivo:= 8;
  if not MostrarFormChild('frmCatalogosAlmacen', global_dxBarManagerPrincipal) then
   begin
      Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
      frmCatalogosAlmacen.show;
   end;
end;

procedure TfrmMateriales_SS7.cxAgregaFamiliaClick(Sender: TObject);
begin
     global_indexactivo := 1;
     GLOBAL_FRMACTIVO:='frmMateriales';
    if not MostrarFormChild('frmCatalogosAlmacen', global_dxBarManagerPrincipal) then
     begin

        Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
        frmCatalogosAlmacen.show;
     end;
end;

procedure TfrmMateriales_SS7.cxAgregaMedidaClick(Sender: TObject);
begin
    GLOBAL_FRMACTIVO:='frmMateriales';
        global_indexactivo := 7;
    if not MostrarFormChild('frmCatalogosAlmacen', global_dxBarManagerPrincipal) then
     begin

        Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
        frmCatalogosAlmacen.show;

     end;
end;

procedure TfrmMateriales_SS7.cxAgregaSubFamiliaClick(Sender: TObject);
begin
     GLOBAL_FRMACTIVO:='frmMateriales';
     global_indexactivo:= 2;
    if not MostrarFormChild('frmCatalogosAlmacen', global_dxBarManagerPrincipal) then
     begin
        Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
        frmCatalogosAlmacen.show;
     end;
end;

procedure TfrmMateriales_SS7.cxButton1Click(Sender: TObject);
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

   // if (zCertificado.State = dsEdit) or (zCertificado.State <> dsInsert) then
     //  zCertificado.Edit;

    zCertVP.FieldByName('NombreDocto').AsString := ExtractFileName(Archivo);
    TBlobField(zCertVP.FieldByName('DocumentoDigital')).LoadfromFile(archivo);

  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
      if zCertVP.state in [dsInsert, dsEdit] then
         lNoGuardarDocto := True;
    end;
  end;

end;

procedure TfrmMateriales_SS7.cxEliminarClick(Sender: TObject);
begin
  if cxPageDetalle.ActivePage = cxPageCertificados then
   begin

       if MessageDlg('Desea eliminar el Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       begin
          cxPageDetalleChange(sender);
          zCertVP.Delete;
          zCertVP.ApplyUpdates();
          cxPageDetalleChange(sender);
       end;

   end;
   if cxPageDetalle.ActivePage = cxPageImagen then
   begin
      if MessageDlg('Desea eliminar el Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       begin
          cxPageDetalleChange(sender);
          zImagenes.Delete;
          zImagenes.ApplyUpdates();
          cxPageDetalleChange(sender);
       end;
   end;
   if cxPageDetalle.ActivePage = cxPageSerie then
   begin
      if MessageDlg('Desea eliminar el Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       begin
          cxPageDetalleChange(sender);
          zSerie.Delete;
          zSerie.ApplyUpdates();
          cxPageDetalleChange(sender);
       end;
   end;

end;

procedure TfrmMateriales_SS7.cxVisualizarImgClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJPEGImage;
  BlobField: tField;
  bMostrar: boolean;
  IdImagen:String;
//  bNoMostrar:Integer;
begin
    QryBusca.Active := False;
    QryBusca.SQL.Clear;
    QryBusca.SQL.Add('select Imagen from alm_insumos_imagen where IdInsumoImg = :id');
    QryBusca.Params.ParamByName('id').AsInteger := zImagenes.FieldByName('IdInsumoImg').AsInteger;
    QryBusca.Open;
    bMostrar:=False;
    if Sender=cxVisualizarImg then
    bNoMostrar:=bNomostrar+1;
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
    muestraImagen;
    bImagenDefault := False;
  end;
  cxVisualizarImg.Caption:='Ocultar Imagen';
  if bNoMostrar > 1 then
  begin
    bImagen.Picture.Bitmap := nil;
    bNoMostrar:=0;
    cxVisualizarImg.Caption:='Visualizar Imagen';
  end;

end;

procedure TfrmMateriales_SS7.cxCancelarDetalleClick(Sender: TObject);
begin
   cxEliminar.Enabled := True;
   cxEditaDetalle.Enabled := True;
   cxNuevoDetalle.Enabled := True;

  if cxPageDetalle.ActivePage = cxPageImagen then
   begin
     cxLeyenda2.Caption:=titulo2;
     zqInsumos.Cancel;
     dxLayoutItem16.Visible:=False;
     cxVisualizarImg.Enabled := True;
     cxImgActivo.Visible     := False;
     bImagen.Picture.Bitmap := nil;
   end;

   if cxPageDetalle.ActivePage = cxPageCertificados then
   begin
       cxLeyenda2.Caption:=titulo2;
       cxSplitter5.Visible:= False;
       PanelDown7.Visible:=False;
       zCertificado.Cancel;
   end;

   if cxPageDetalle.ActivePage = cxPageExistencia then
   begin
       cxLeyenda2.Caption:=titulo2;
       cxSplitter6.Visible:= False;
       Panel5.Visible:=False;
       zExistencia.Cancel;
   end;

  if cxPageDetalle.ActivePage = cxPageCostos then
   begin
       cxLeyenda2.Caption:=titulo2;
       cxSplitter4.Visible:= False;
       panelDonw6.Visible:=False;
       zCostos.Cancel;
   end;

  if cxPageDetalle.ActivePage = cxPageSerie then
   begin
       zSerie.Cancel;
       cxLeyenda2.Caption:=titulo2;
       cxSplitter3.Visible:= False;
       panelDown5.Visible:=False;
   end;

  if cxPageDetalle.ActivePage = cxPageMovimientos then
   begin
       cxLeyenda2.Caption:=titulo2;
       cxSplitter2.Visible:= False;
       panel4.Visible:=False;
       zMovimientos.Cancel;
   end;
      grid_materiales.Enabled := True;
   cxGridCertificado.Enabled := True;
  PanelDown.Visible := False;
end;

procedure TfrmMateriales_SS7.cxEditaDetalleClick(Sender: TObject);
begin
   PanelDown.Visible := True;
   cxNuevoDetalle.Enabled := False;
   cxEditaDetalle.Enabled := False;
   cxEliminar.Enabled := False;

    if cxPageDetalle.ActivePage = cxPageImagen then
   begin
//       cxLeyenda2.Caption:=titulo2+'[Editando]';
//       cxSplit2.Visible   := True;
//       cxVisualizarImg.Enabled := False;
//       cxImgActivo.Visible := True;
//       zImagenes.Edit;

       cxLeyenda2.Caption:=titulo2 +'[Agregando]';
       cxSplit2.Visible   := True;
       dxLayoutItem16.Visible := False;

       if zImagenes.Active = False then
       begin
           zImagenes.Edit;
       end;

      // btnAgregar.OnClick(sender);
       cxVisualizarImg.Enabled := False;
//       cxImgActivo.Visible := True;
       PanelDown.Visible := True;
   end;

   if cxPageDetalle.ActivePage = cxPageCertificados then
   begin

       cxLeyenda2.Caption:=titulo2+'[Editando]';
       cxSplitter5.Visible:= True;
       vPDF.Visible := false;
       panelDown7.Visible:=True;
       AsignarSQL(zCertVP,'documentos_insumos_VP',pUpdate);
       FiltrarDataSet(zCertVP,'IdDocto',[zCertificado.FieldByName('IdDoctoInsumo').AsInteger]);
       zCertVP.Open;

       zCertVP.Edit;
   end;

   if cxPageDetalle.ActivePage = cxPageExistencia then
   begin
       cxLeyenda2.Caption:=titulo2+'[Editando]';
       cxSplitter6.Visible:= True;
       Panel5.Visible:=True;

       zExistencia.Edit;
       cxMaximo.SetFocus;
   end;

    if cxPageDetalle.ActivePage = cxPageCostos then
   begin
       MessageDlg('Los costos se agregan al crear órdenes de compra', mtWarning, [mbOk], 0);
       {cxLeyenda2.Caption:=titulo2 +'[Editando]';
       cxSplitter4.Visible:= True;
       panelDonw6.Visible:=True;
       zCostos.Edit;}
   end;

  if cxPageDetalle.ActivePage = cxPageSerie then
   begin
       zSerie.Edit;
       cxLeyenda2.Caption:=titulo2+'[Editando]';
       cxSplitter3.Visible:= True;
       panelDown5.Visible:=True;
   end;

  if cxPageDetalle.ActivePage = cxPageMovimientos then
   begin
       cxLeyenda2.Caption:=titulo2 +'[Editando]';
       cxSplitter2.Visible:= True;
       panel4.Visible:=True;
       zMovimientos.Edit;
   end;


end;

procedure TfrmMateriales_SS7.cxFamiliaExit(Sender: TObject);
begin
    if (zqInsumos.State = dsInsert) or (zqInsumos.State = dsEdit) then
    begin
        zqSubfamilia.Filtered := False;
        zqSubfamilia.Filter   := 'IdFamilia = '+IntToStr(zqInsumos.FieldByName('IdFamilia').AsInteger);
        zqSubfamilia.Filtered := True;
    end;
    SalidaControl(Sender);
end;

procedure TfrmMateriales_SS7.cxGridCertificadosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if zCertificado.RecordCount > 0 then
  begin
    AsignarSQL(zCertVP,'documentos_insumos_VP',pUpdate);
    FiltrarDataSet(zCertVP,'IdDocto',[zCertificado.FieldByName('IdDoctoInsumo').AsInteger]);
    zCertVP.Open;

    if not zCertVP.FieldByName('DocumentoDigital').IsNull then
    begin
      if not zCertVP.FieldByName('NombreDocto').IsNull then
        global_Temp := zCertVP.FieldByName('NombreDocto').AsString
      else
        global_Temp := 'cert_'+zqInsumos.FieldByName('Codigo').AsString+'.pdf';

      TBlobField(zCertVP.FieldByName('DocumentoDigital')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp);
      Application.CreateForm(TFrmVerPDF, FrmVerPDF);
      FrmVerPDF.Caption := global_Temp;
      FrmVerPDF.ShowModal;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;
end;

procedure TfrmMateriales_SS7.cxGridViewImagenCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if bImagenDefault = True then
    cxVisualizarImg.Click;
end;

procedure TfrmMateriales_SS7.cxGuardarDetalleClick(Sender: TObject);
var
   lContinua : boolean;
begin
   lContinua := True;

   if cxPageDetalle.ActivePage = cxPageImagen then
   begin
       zUpImg.ExecSQL;
       zImagenes.Refresh;
       cxVisualizarImg.Enabled := True;
       cxImgActivo.Visible     := False;

   end;

   if cxPageDetalle.ActivePage = cxPageCertificados then
   begin
       zCertVP.Post;
       zCertificado.Refresh;
   end;

   if cxPageDetalle.ActivePage = cxPageExistencia then
   begin
       zExistencia.Post;
       zExistencia.Refresh;
   end;

   if cxPageDetalle.ActivePage = cxPageCostos then
   begin
       zCostos.Post;
       zCostos.Refresh;
   end;

   if cxPageDetalle.ActivePage = cxPageSerie then
   begin
       zSerie.Post;
       zSerie.Refresh;
       if zSerie.RecordCount > 0 then
         cxPageCertificados.Enabled := True;
   end;

  if cxPageDetalle.ActivePage = cxPageMovimientos then
   begin
       zMovimientos.Post;
       zMovimientos.Refresh;
   end;

   grid_materiales.Enabled := True;
   cxGridCertificado.Enabled := True;
  cxCancelarDetalle.OnClick(sender);
end;

procedure TfrmMateriales_SS7.cxImportarClick(Sender: TObject);
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

procedure TfrmMateriales_SS7.cxImprimeInventarioClick(Sender: TObject);
begin
    AsignarSQL(zReporteDetalle,'reporte_maximos',pUpdate);
    FiltrarDataSet(zReporteDetalle,'IdFiltro',[-1]);
    zReporteDetalle.Open;

    if cxView_Materiales.DataController.Filter.FilterText <> '' then
    begin
        zReporteDetalle.Filtered := False;
        zReporteDetalle.Filter   := cxView_Materiales.DataController.Filter.FilterText;
        zReporteDetalle.FilterOptions:=[foCaseInsensitive];
        zReporteDetalle.Filtered := True;
    end;

    frxDatos.DataSet := zReporteDetalle;

    //frxReport1.LoadFromFile(global_files + global_miReporte+empleados.FieldByName('NombreReporteContrato').AsString);
    frxReport1.LoadFromFile(global_files + global_miReporte+'_ALM_inventario_fisico.fr3');
    frxReport1.ShowReport();
end;

procedure TfrmMateriales_SS7.cxImprimeMaximosClick(Sender: TObject);
begin
    AsignarSQL(zReporteDetalle,'reporte_maximos',pUpdate);
    FiltrarDataSet(zReporteDetalle,'IdFiltro',[-1]);
    zReporteDetalle.Open;

    if cxView_Materiales.DataController.Filter.FilterText <> '' then
    begin
        zReporteDetalle.Filtered := False;
        zReporteDetalle.Filter   := cxView_Materiales.DataController.Filter.FilterText;
        zReporteDetalle.FilterOptions:=[foCaseInsensitive];
        zReporteDetalle.Filtered := True;
    end;

    frxDatos.DataSet := zReporteDetalle;

    //frxReport1.LoadFromFile(global_files + global_miReporte+empleados.FieldByName('NombreReporteContrato').AsString);
    frxReport1.LoadFromFile(global_files + global_miReporte+'_ALM_almacen_maximos.fr3');
    frxReport1.ShowReport();
end;

procedure TfrmMateriales_SS7.cxNuevoDetalleClick(Sender: TObject);
begin
   PanelDown.Visible := True;
   cxNuevoDetalle.Enabled := False;
   cxEditaDetalle.Enabled := False;
   cxEliminar.Enabled := False;
   vPDF.Visible := False;

   if cxPageDetalle.ActivePage = cxPageImagen then
   begin
       cxLeyenda2.Caption:=titulo2 +'[Agregando]';
       cxSplit2.Visible   := True;
       dxLayoutItem16.Visible := False;

       if zImagenes.Active = False then
       begin
          AsignarSQL(zImagenes,'alm_insumos_imagen',pUpdate);
          FiltrarDataSet(zImagenes,'IdInsumo',[zqInsumos.FieldByName('IdInsumo').AsInteger]);
          zImagenes.Open;
       end;

       btnAgregar.OnClick(sender);
       cxVisualizarImg.Enabled := False;
//       cxImgActivo.Visible := True;
       PanelDown.Visible := True;
   end;

   if cxPageDetalle.ActivePage = cxPageCertificados then
   begin
       cxLeyenda2.Caption:=titulo2 +'[Agregando]';
       cxSplitter5.Visible:= True;
       PanelDown7.Visible:=True;

       AsignarSQL(zCertVP,'documentos_insumos_VP',pUpdate);
       FiltrarDataSet(zCertVP,'IdDocto',[-9]);
       zCertVP.Open;

       zCertVP.Append;
       cxDocumento.DataBinding.DataSource.DataSet.FieldByName('IdDocumento').AsInteger := zCatalogo_docto.fieldByName('IdDocumento').asInteger;
       lcbSerie.DataBinding.DataSource.DataSet.FieldByName('IdSerie').AsInteger  := zSerie.FieldByName('IdSerie').AsInteger;
       zCertVP.FieldByName('FechaRegistro').AsDateTime := date;
       zCertVP.FieldByName('Activo').AsString := 'Si';
       zCertVP.FieldByName('IdInsumo').AsInteger:=zqInsumos.FieldByName('IdInsumo').AsInteger;
       cxdocumento.SetFocus;
   end;

   if cxPageDetalle.ActivePage = cxPageExistencia then
   begin
       cxLeyenda2.Caption:=titulo2 +'[Agregando]';
   end;

    if cxPageDetalle.ActivePage = cxPageCostos then
   begin
       MessageDlg('Los costos se agregan al crear órdenes de compra', mtWarning, [mbOk], 0);
       {cxLeyenda2.Caption:=titulo2 +'[Agregando]';
       cxSplitter4.Visible:= True;
       panelDonw6.Visible:=True;
       zCostos.Append;
       zCostos.FieldByName('sContrato').AsString:=zqInsumos.FieldByName('sContrato').AsString;
       zCostos.FieldByName('IdInsumo').AsInteger:=zqInsumos.FieldByName('IdInsumo').AsInteger;
       zCostos.FieldByName('dCostoBaseMN').AsFloat:=0.0;
       zCostos.FieldByName('dFleteMN').AsFloat:=0.0;
       zCostos.FieldByName('dDerechosMN').AsFloat:=0.0;
       zCostos.FieldByName('dMermasMN').AsFloat:=0.0;
       zCostos.FieldByName('dPrecioMN').AsFloat:=0.0;
       zCostos.FieldByName('dCostoBaseDLL').AsFloat:=0.0;
       zCostos.FieldByName('dFleteDLL').AsFloat:=0.0;
       zCostos.FieldByName('dDerechosDLL').AsFloat:=0.0;
       zCostos.FieldByName('dMermasDLL').AsFloat:=0.0;
       zCostos.FieldByName('dPrecioDLL').AsFloat:=0.0;}
   end;

  if cxPageDetalle.ActivePage = cxPageSerie then
   begin
       cxLeyenda2.Caption:=titulo2 +'[Agregando]';
       cxSplitter3.Visible:= True;
       panelDown5.Visible:=True;
       zAlmacen.Open;
       zSerie.Append;
       zSerie.FieldByName('IdInsumo').AsInteger:=zqInsumos.FieldByName('IdInsumo').AsInteger;
   end;

  if cxPageDetalle.ActivePage = cxPageMovimientos then
   begin
       cxLeyenda2.Caption:=titulo2 +'[Agregando]';
       cxSplitter2.Visible:= True;
       panel4.Visible:=True;
       zMovimientos.Append;
   end;

   grid_materiales.Enabled := False;
   cxGridCertificado.Enabled := False;
end;

procedure TfrmMateriales_SS7.cxPageDetalleChange(Sender: TObject);
var
   zInsertaMaximos : tUniquery;
begin
    cxCancelarDetalle.OnClick(sender);

    AsignarSQL(zSerie,'almacen_series',pUpdate);
    FiltrarDataSet(zserie,'IdSerie',[zqInsumos.FieldByName('IdInsumo').AsString]);
    zSerie.Open;

    if zSerie.RecordCount > 0 then
      cxPageCertificados.Enabled := True
    else
      cxPageCertificados.Enabled := False;


    if cxPageDetalle.ActivePage = cxPageImagen then
    begin
        titulo2 := 'Imagen';
        cxLeyenda2.Caption:=titulo2;
        dxLayoutItem16.Visible:=False;
        cxEditaDetalle.Visible:=True;
        cxEliminar.Visible := True;
        cxNuevoDetalle.Visible:=True;

        AsignarSQL(zImagenes,'alm_insumos_imagen',pUpdate);
        FiltrarDataSet(zImagenes,'IdInsumo',[zqInsumos.FieldByName('IdInsumo').AsInteger]);
        zImagenes.Open;
    end;

    if cxPageDetalle.ActivePage = cxPageCertificados then
    begin
        titulo2 := 'Certificados';
        cxLeyenda2.Caption:=titulo2;
        cxEliminar.Visible := True;
        cxEditaDetalle.Visible:=True;
        cxNuevoDetalle.Visible:=True;

        vPDF.Visible := False;
        AsignarSQL(zCertificado,'documentos_insumos',pUpdate);
        FiltrarDataSet(zCertificado,'IdInsumo',[zqInsumos.FieldByName('IdInsumo').AsInteger]);
        zCertificado.Open;

    end;

    if cxPageDetalle.ActivePage = cxPageExistencia then
    begin
        titulo2 := 'Existencias';
        cxLeyenda2.Caption:=titulo2;
        cxEliminar.Enabled := False;
        cxEditaDetalle.Visible:=True;
        cxNuevoDetalle.Enabled:=False;

        zInsertaMaximos:=tUniquery.create(nil);
        zInsertaMaximos.Connection := Connection.uConnection;

        AsignarSQL(zExistencia,'alm_insumos_existencias',pUpdate);
        FiltrarDataSet(zExistencia,'IdInsumo',[zqInsumos.FieldByName('IdInsumo').AsInteger]);
        zExistencia.Open;

        if zAlmacen.Active = False then
           zAlmacen.Open;

        zAlmacen.First;
        while not zAlmacen.Eof do
        begin
            if zExistencia.Locate('IdAlmacen', zAlmacen.FieldByName('IdAlmacen').AsInteger,[] ) = False then
            begin
                zInsertaMaximos.SQL.Clear;
                zInsertaMaximos.SQL.Add('insert into alm_insumos_maximos(IdInsumo,IdAlmacen,Maximo,Minimo) '+
                                   'values (:IdInsumo,:IdAlmacen,:Maximo,:Minimo)');
                zInsertaMaximos.ParamByName('IdInsumo').AsInteger  := zqInsumos.FieldByName('IdInsumo').AsInteger;
                zInsertaMaximos.ParamByName('IdAlmacen').AsInteger := zAlmacen.FieldByName('IdAlmacen').AsInteger;
                zInsertaMaximos.ParamByName('Maximo').AsFloat := 0;
                zInsertaMaximos.ParamByName('Minimo').Asfloat := 0;
                zInsertaMaximos.ExecSQL;
            end;
            zAlmacen.Next;
        end;

        zInsertaMaximos.Destroy;
        zExistencia.Refresh;
    end;

    if cxPageDetalle.ActivePage = cxPageTransitos then
    begin
        titulo2 := 'Tránsitos';
        cxLeyenda2.Caption:=titulo2;
        cxEliminar.Enabled := False;
        cxEditaDetalle.Enabled:=False;
        cxNuevoDetalle.Enabled:=False;


        AsignarSQL(zExistencia,'alm_insumos_transitos',pUpdate);
        FiltrarDataSet(zExistencia,'IdInsumo',[zqInsumos.FieldByName('IdInsumo').AsInteger]);
        zExistencia.Open;

        zExistencia.Refresh;
    end;

    if cxPageDetalle.ActivePage = cxPageCostos then
    begin
        titulo2 := 'Costos';
        cxLeyenda2.Caption:=titulo2;
        cxEliminar.Enabled := False;
        cxEditaDetalle.Enabled:=True;
        cxNuevoDetalle.Enabled:=True;


        AsignarSQL(zCostos,'almacen_precios',pUpdate);
        FiltrarDataSet(zCostos,'IdInsumo',[zqInsumos.FieldByName('IdInsumo').AsString]);
        zCostos.Open;
    end;
    if cxPageDetalle.ActivePage = cxPageSerie then
    begin
        titulo2 := 'No.Serie';
        cxLeyenda2.Caption:=titulo2;
        cxEliminar.Visible := True;
        cxEditaDetalle.Visible:=True;
        cxNuevoDetalle.Visible:=True;

        AsignarSQL(zSerie,'almacen_series',pUpdate);
        FiltrarDataSet(zserie,'IdSerie',[zqInsumos.FieldByName('IdInsumo').AsString]);
        zSerie.Open;
    end;
    if cxPageDetalle.ActivePage = cxPageMovimientos then
    begin
        titulo2 := 'Movimientos';
        cxLeyenda2.Caption:=titulo2;
        cxEditaDetalle.Enabled:=False;
        cxNuevoDetalle.Enabled:=False;
        cxEliminar.Enabled := False;
        AsignarSQL(zMovimientos,'almacen_movimientos',pUpDate);
        FiltrarDataSet(zMovimientos,'IdInsumo',[zqInsumos.FieldByName('IdInsumo').AsString]);
        zMovimientos.Open;
        cxGridMovimientos.Columns[4].Visible:=False;
        if connection.uContrato.FieldByName('FK_Titulo').AsString='CMMI' then  begin
         cxGridMovimientos.Columns[4].Visible:=True;
        cxGridMovimientos.Columns[4].DataBinding.FieldName:='Destino';
      end;
    end;

    if cxPageDetalle.ActivePage = cxPageExistenciasCC  then
    begin
        titulo2 := 'Existencia C.C.';
        cxLeyenda2.Caption:=titulo2;
        cxEliminar.Enabled := False;
        cxEditaDetalle.Enabled:=False;
        cxNuevoDetalle.Enabled:=False;

        AsignarSQL(zExistenciaCC,'existencia_cc_partida',pUpdate);
        FiltrarDataSet(zExistenciaCC,'Insumo',[zqInsumos.FieldByName('IdInsumo').AsString]);
        zExistenciaCC.Open;

    end;

    if cxPageDetalle.ActivePage = cxTabInforme then
    begin
      cxEliminar.Enabled := False;
      cxEditaDetalle.Enabled:=False;
      cxNuevoDetalle.Enabled:=False;
    end;


end;

procedure TfrmMateriales_SS7.cxRepetidosClick(Sender: TObject);
var
   zActualiza, zConsulta : tUniQuery;
   sCodigo :string;
   i : integer;
begin
    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;

    zConsulta:=tUniquery.create(nil);
    zConsulta.Connection := Connection.uConnection;

    PanelProgreso.Visible := True;
    i := 0;
    sCodigo := zqInsumos.FieldByName('Codigo').AsString;
    while not zqInsumos.Eof do
    begin
       if sCodigo = zqInsumos.FieldByName('Codigo').AsString then
       begin
          inc(i)
       end
       else
       begin
          i := 1;
          sCodigo := zqInsumos.FieldByName('Codigo').AsString;
       end;

       if i > 1 then
       begin
          zConsulta.Active := False;
          zConsulta.SQL.Clear;
          zConsulta.SQL.Add('select IdInsumo from anexo_prequisicion where IdInsumo =:IdInsumo');
          zConsulta.ParamByName('IdInsumo').AsInteger := zqInsumos.FieldByName('IdInsumo').AsInteger;
          zConsulta.Open;

          if zConsulta.RecordCount = 0 then
          begin
              zConsulta.Active := False;
              zConsulta.SQL.Clear;
              zConsulta.SQL.Add('delete from alm_insumos where IdInsumo =:IdInsumo');
              zConsulta.ParamByName('IdInsumo').AsInteger := zqInsumos.FieldByName('IdInsumo').AsInteger;
              zConsulta.ExecSQL;
          end;
       end;
       BarraProgresoAvance(Progreso, 0,100,100/zqInsumos.RecordCount);
       zqInsumos.Next;
    end;
    PanelProgreso.Visible := False;
    zActualiza.Destroy;
end;

procedure TfrmMateriales_SS7.cxTabInformeShow(Sender: TObject);
begin
  opcionImprimir.EditValue := 1;
end;

procedure TfrmMateriales_SS7.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmMateriales_SS7.OpenXLSClose(Sender: TObject);
var
   flcid, Fila,Fila2, x : integer;
   lContinuaAux : boolean;
   sValue2  : string;

   CodErr1, CodErr2 : String;

   //Importacion de Requisicion 2019
   sExtraordinario, sDescripcion,
   sCodigo, sMedida, dCantidad, sProyecto, sFamilia :string;

   IdMedida, IdFamilia : integer;
   zMateriales, zMedida : tUniquery;
   iCountRegistrosBarra : integer;
   lCuadro : boolean;
begin
   if MessageDlg('Desea Importar el Archivo de Excel seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
       // Verificar si se ha seleccionado algun archivo
       if (tsArchivo = '') or ((tsArchivo <> '') and Not FileExists(tsArchivo)) then
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

              ExcelWorkbook1.ConnectTo(ExcelApplication1.Workbooks.Open(tsArchivo,
                emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam,
                emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, flcid));

              ExcelWorksheet1.ConnectTo(ExcelWorkbook1.Sheets.Item[1] as ExcelWorkSheet);
              Fila := 1;
              lContinuaAux := True;
              lCuadro := True;

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
                      FiltrarDataSet(zMateriales,'Usuario,Codigo,Contrato,Tipo',[Global_Usuario,'-1',global_contrato,-1]);
                      zMateriales.Open;

                      AsignarSQL(zMedida,'master_medidas',pUpdate);
                      FiltrarDataSet(zMedida,'Id,Codigo',[-1,-1]);
                      zMedida.Open;

                      {$ENDREGION}

                      ExcelApplication1.Range['D' + Trim(IntToStr(2)), 'D' + Trim(IntToStr(2))].Interior.ColorIndex := 2;
                      ExcelApplication1.Range['E' + Trim(IntToStr(2)), 'E' + Trim(IntToStr(2))].Value := '';
                      ExcelApplication1.Range['D' + Trim(IntToStr(3)), 'D' + Trim(IntToStr(3))].Interior.ColorIndex := 2;
                      ExcelApplication1.Range['E' + Trim(IntToStr(3)), 'E' + Trim(IntToStr(3))].Value := '';

                      //Conteo de registros
                      {$Region 'DATOS PRINCIPALES Y PORCENTAJES'}
                      iCountRegistrosBarra := 0;
                      Fila2 := 2;
                      sValue2 := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila2)), 'B' + Trim(IntToStr(Fila2))].Value2;
                      while (sValue2 <> '') do
                      begin
                          inc(iCountRegistrosBarra);
                          lContinuaAux := True;

                          //Aqui leemos todas las columnas necesarias para el prier regist
                          sCodigo   := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                          sDescripcion    := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila2)), 'B' + Trim(IntToStr(Fila2))].Value2;
                          sMedida   := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila2)), 'C' + Trim(IntToStr(Fila2))].Value2;

                          ExcelApplication1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 2;
                          ExcelApplication1.Range['B' + Trim(IntToStr(Fila2)), 'B' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 2;
                          ExcelApplication1.Range['C' + Trim(IntToStr(Fila2)), 'C' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 2;

                          //Buscamos el material
                          if trim(sCodigo) = '' then
                          begin
                             if zMateriales.Locate('Insumo',trim(sDescripcion),[loCaseInsensitive]) then
                             begin
                                ExcelApplication1.Range['B' + Trim(IntToStr(Fila2)), 'B' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 6;
                                lContinuaAux := False;
                             end
                             else
                             begin
                                sCodigo := autoFolio(zMateriales, 'alm_insumos');
                                IdFamilia := 114;
                             end;
                          end
                          else
                          begin
                              if zMateriales.Locate('Codigo',trim(sCodigo),[loCaseInsensitive]) then
                              begin
                                 ExcelApplication1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 6;
                                 lContinuaAux := False;
                              end
                              else
                              begin
                                  IdFamilia := 114;
                              end;
                          end;

                          //Buscamos la medida
                          if zMedida.Locate('Codigo', trim(sMedida), [loCaseInsensitive]) = False then
                          begin
                             ExcelApplication1.Range['C' + Trim(IntToStr(Fila2)), 'C' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 23;
                             lContinuaAux := False;
                          end
                          else
                             IdMedida := zMedida.FieldByName('IdMedida').AsInteger;

                          if lContinuaAux then
                          begin
                              //Inserta detalle de Requisicion seleccionada (MR)
                              AsignarSQL(connection.qryUBusca,'Inserta_material_SQLServer',pUpdate);
                              FiltrarDataSet(connection.qryUBusca,'Contrato,Codigo,IdMaterial,Descripcion,Descripcion,Medida,Fecha,Familia',[
                              global_contrato, trim(sCodigo), 0, trim(sDescripcion), trim(sDescripcion), IdMedida, FechaSQL(date), IdFamilia]);
                              connection.qryUBusca.ExecSQL;

                              zMateriales.Refresh;
                          end
                          else
                             lCuadro := False;

                          fila2 := fila2 + 1 ;
                          sValue2 := trim(ExcelWorksheet1.Range['B' + Trim(IntToStr(fila2)), 'B' + Trim(IntToStr(fila2))].Value2);
                      end;
                      {$ENDREGION}
                      zMateriales.Destroy;
                      zMedida.Destroy;
                      zqInsumos.Refresh;
                      if lCuadro = False then
                      begin
                         ExcelApplication1.Range['D' + Trim(IntToStr(2)), 'D' + Trim(IntToStr(2))].Interior.ColorIndex := 6;
                         ExcelApplication1.Range['E' + Trim(IntToStr(2)), 'E' + Trim(IntToStr(2))].Value := 'Material Duplicado';
                         ExcelApplication1.Range['D' + Trim(IntToStr(3)), 'D' + Trim(IntToStr(3))].Interior.ColorIndex := 23;
                         ExcelApplication1.Range['E' + Trim(IntToStr(3)), 'E' + Trim(IntToStr(3))].Value := 'No existe en Catálogo';
                         messageDLG('No se importaron Materiales, Ver Detalles!',mtInformation,[mbOk],0);
                      end;
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

procedure TfrmMateriales_SS7.OpenXLSFolderChange(Sender: TObject);
begin
   tsArchivo := OpenXLS.FileName;
end;

procedure TfrmMateriales_SS7.OpenXLSSelectionChange(Sender: TObject);
begin
   tsArchivo := OpenXLS.FileName;
end;

procedure TfrmMateriales_SS7.Orden_Compra_scroll;
begin
     if PanelDetalle.Visible then
     begin
         if cxPageDetalle.ActivePage = cxPageImagen then
         begin

          AsignarSQL(zImagenes,'alm_insumos_imagen',pUpdate);
          FiltrarDataSet(zImagenes,'IdInsumo',[zqInsumos.FieldByName('IdInsumo').AsInteger]);
          zImagenes.Open;

          bImagen.Picture.Bitmap := nil;
         end;

         if cxPageDetalle.ActivePage = cxPageCertificados then
         begin
          AsignarSQL(zCertificado,'documentos_insumos',pUpdate);
          FiltrarDataSet(zCertificado,'IdInsumo',[zqInsumos.FieldByName('IdInsumo').AsInteger]);
          zCertificado.Open;
         end;

         if cxPageDetalle.ActivePage = cxPageExistencia then
         begin
          AsignarSQL(zExistencia,'alm_insumos_existencias',pUpdate);
          FiltrarDataSet(zExistencia,'IdInsumo',[zqInsumos.FieldByName('IdInsumo').AsString]);
          zExistencia.Open;
         end;

         if cxPageDetalle.ActivePage = cxPageCostos then
         begin
            AsignarSQL(zCostos,'almacen_precios',pUpdate);
            FiltrarDataSet(zCostos,'IdInsumo',[zqInsumos.FieldByName('IdInsumo').AsString]);
            zCostos.Open;
         end;
        if cxPageDetalle.ActivePage = cxPageSerie then
         begin
            AsignarSQL(zSerie,'almacen_series',pUpdate);
            FiltrarDataSet(zserie,'IdSerie',[zqInsumos.FieldByName('IdInsumo').AsString]);
            zSerie.Open;
         end;
         if cxPageDetalle.ActivePage = cxPageMovimientos then
         begin
            AsignarSQL(zMovimientos,'almacen_movimientos',pUpdate);
            FiltrarDataSet(zMovimientos,'IdInsumo',[zqInsumos.FieldByName('IdInsumo').AsString]);
            zMovimientos.Open;
         end
     end;

end;

procedure TfrmMateriales_SS7.PegarFamiliaClick(Sender: TObject);
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
            zActualiza.SQL.Add('update alm_insumos set IdFamilia =:IdFamilia where IdInsumo =:IdOld');
            zActualiza.ParamByName('IdFamilia').AsInteger := IdMaterialCopia;
            zActualiza.ParamByName('IdOld').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdInsumo').AsInteger;
            zActualiza.ExecSQL;
        end;

    finally
       PegarFamilia.Enabled := False;
       CopiarMedida.Enabled := True;
       CopiarFamilia.Enabled := True;
       cxView_Materiales.OptionsSelection.MultiSelect := False;
       lOpcionSelecciona := False;
       zqInsumos.Refresh;
       zActualiza.Destroy;
    end;
end;

procedure TfrmMateriales_SS7.PegarMedidaClick(Sender: TObject);
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
          zActualiza.SQL.Add('update alm_insumos set IdMedida =:IdMedida where IdInsumo =:IdOld');
          zActualiza.ParamByName('IdMedida').AsInteger := IdMaterialCopia;
          zActualiza.ParamByName('IdOld').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdInsumo').AsInteger;
          zActualiza.ExecSQL;
      end;

   finally
    PegarMedida.Enabled := False;
    CopiarMedida.Enabled := True;
    CopiarFamilia.Enabled := True;
    cxView_Materiales.OptionsSelection.MultiSelect := False;
    lOpcionSelecciona := False;
    zqInsumos.Refresh;
    zActualiza.Destroy;
   end;

end;

procedure TfrmMateriales_SS7.PegarMovimientosMatClick(Sender: TObject);
var
   zActualiza : tUniquery;
   Movimientos : TUniQuery;
begin
    Movimientos:=tUniquery.create(nil);
    Movimientos.Connection := Connection.uConnection;

    AsignarSQL(Movimientos,'busca_idInsumo_tablas',pUpdate);
    FiltrarDataSet(Movimientos,'bd',[connection.Uconnection.Database]);
    Movimientos.Open;

    try
      zActualiza:=tUniquery.create(nil);
      zActualiza.Connection := Connection.uConnection;

      PanelProgreso.Visible := True;
      while not Movimientos.Eof do
      begin
          zActualiza.SQL.Clear;
          zActualiza.SQL.Add('update '+Movimientos.FieldByName('Tabla').AsString+' set IdInsumo =:IdInsumo where IdInsumo =:IdOld');
          zActualiza.ParamByName('IdInsumo').AsInteger := zqInsumos.FieldByName('IdInsumo').AsInteger;
          zActualiza.ParamByName('IdOld').AsInteger    := IdMaterialCopia;
          zActualiza.ExecSQL;
          BarraProgresoAvance(Progreso, 0,100,100/Movimientos.RecordCount);
          Movimientos.Next;
      end;

    finally
      PegarMovimientosMat.Enabled := False;
      PegarMedida.Enabled := False;
      CopiarMedida.Enabled := True;
      CopiarFamilia.Enabled := True;
      SeleccionarMovimientosMat.Enabled := True;
      lOpcionSelecciona := False;
      PanelProgreso.Visible := False;
      if zqInsumos.RecordCount > 0 then
         if PanelDetalle.Visible then
            cxPageDetalleChange(sender);
      zActualiza.Destroy;
      Movimientos.Destroy;
    end;

end;

function TfrmMateriales_SS7.EnviarMensaje(sUsuario, sClave, sServidor, sAdjunto,
  sAsunto, sDestino, sMensaje: String; iPort: Integer; aplicaTLS:String): String;
var
  Cursor: TCursor;
  SMTP: TIdSMTP;
  IOHSOSSL :TIdSSLIOHandlerSocketOpenSSL;
 s: String;
 sl: TStringList;
 i: integer;
begin
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := crAppStart;

   IdSSLOpenSSLHeaders.Load;
    Result := 'Correo electrónico enviado.';
    if aplicaTLS  = 'Si' then
    begin
      IOHSOSSL := TIdSSLIOHandlerSocketOpenSSL.Create;
      IOHSOSSL.Destination := sServidor+':'+IntToStr(iPort);
      IOHSOSSL.Host := sServidor;
      IOHSOSSL.Port := iPort;
      IOHSOSSL.SSLOptions.Method := sslvTLSv1;
      IOHSOSSL.SSLOptions.VerifyMode := [];
      IOHSOSSL.SSLOptions.VerifyDepth := 0;
    end;
    //Cargar datos para componente de envio de correo.
    SMTP := TIdSMTP.Create(nil);
    if aplicaTLS  = 'Si' then
    begin
     SMTP.IOHandler := IOHSOSSL;
     SMTP.AuthType := satDefault;
     SMTP.UseTLS := utUseRequireTLS;
    end;
    SMTP.Username := sUsuario;
    SMTP.Password := sClave;
    SMTP.Host := sServidor;
    SMTP.Port := iPort;

    Mensaje.From.Name := sUsuario;
    Mensaje.From.Address := sUsuario;
    Mensaje.Subject := sAsunto;
    Mensaje.Body.Text := sMensaje;
    //Correos destino
    sl :=  TStringList.Create;
    s:= sDestino;
    sl.Delimiter := ';';
    sl.DelimitedText := s;
    for i := 0 to sl.Count -1  do
    BEGIN
      if sl[i] <> '' then
      begin
        Mensaje.Recipients.Add;
        Mensaje.Recipients.Items[i].Address := sl[i];
      end;
    END;


    try
      SMTP.Connect;
    except
      Result := 'Error al conectar con el servidor.';
    end;

    if SMTP.Connected then
    begin
      try
        SMTP.Send( Mensaje );
      except
        Result := 'Falló en el envio del correo electrónico.';
      end;

      try
        SMTP.Disconnect;
      except
        Result := 'Error al desconectar del servidor.';
      end;
    end;
  finally
    if Adjunto <> nil then
      FreeAndNil( Adjunto );

    FreeAndNil(Mensaje);
    FreeAndNil(SMTP);
    Screen.Cursor := Cursor;
//    Self.Close;
  end;
end;

procedure TfrmMateriales_SS7.EnviaCorreo(sParamModulo: string; sParamProceso: string; sParamTipoMaterial: string; sParamEstatus: string; sParamFoldiosDoctos : string);
var
   cadena, asunto, mnj, sAdjunto, msg :string;
begin

     zMensaje.Active:=False;
     AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
     FiltrarDataSet(zMensaje,'Clasificacion',[sParamModulo]);
     zMensaje.Open;



        if ((zMensaje.FieldByName('EnviarAlCrearMateriales').AsString = 'Si') and (sParamModulo= 'MATERIAL_NUEVO'))then
        begin

         zDestino.Active:=False;
         AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
         FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
         zDestino.Open;

         zDestino.First;
         while not zDestino.Eof do
         begin
             cadena:=zDestino.FieldByName('Mail').AsString+';'+ cadena;
             zDestino.Next;
         end;

         messageDlg('Espere, porfavor', mtInformation, [mbOk],0);

          // para envio de correo
          Mensaje := TIdMessage.Create(nil);
          Mensaje.AttachmentEncoding := 'UUE'  ;
          Mensaje.Clear;
//          Mensaje.ContentType := 'multipart/related; type="text/html"';

          if connection.ExportaPDF.FileName <> '' then
          begin
             RutaArchivoAdjunto := connection.ExportaPDF.FileName;
             pdf := connection.ExportaPDF.FileName;
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

            asunto := zMensaje.FieldByName('AsuntoCrearMateriales').AsString+' Con Código: '+cxView_Materiales.DataController.DataSet.FieldByName('Codigo').AsString+' '+sParamEstatus;
            mnj := zMensaje.FieldByName('MensajeCrearMateriales').AsString+' Con Codigo: '+cxView_Materiales.DataController.DataSet.FieldByName('Codigo').AsString+
                      ' Nombre: '+cxView_Materiales.DataController.DataSet.FieldByName('Material').AsString+
                      ' Creado Por: '+global_nombre;

            msg := EnviarMensaje(zCorreo.FieldByName('Correo').AsString,
                      zCorreo.FieldByName('Contrasena').AsString,
                      zCorreo.FieldByName('SMTP').AsString,
                      sAdjunto,
                      asunto,
                      cadena,
                      mnj,
                      zCorreo.FieldByName('Puerto').AsInteger,
                      zCorreo.FieldByName('AplicaTLS').AsString);


                if fileexists(RutaArchivoAdjunto) then
               DeleteFile(RutaArchivoAdjunto);
              messageDlg('Estado de envío: '+msg, mtInformation, [mbOk],0);

              zqInsumos.Refresh;
              try
                cxView_Materiales.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
              except
              else
                 cxView_Materiales.DataController.DataSet.FreeBookmark(SavePlace);
              end;
        end;

//    else begin
//    if ((zMensaje.FieldByName('EnviarAlValidar').AsString = 'No') or
//        (zMensaje.FieldByName('EnviarAlAutorizar').AsString = 'No') or
//        (zMensaje.FieldByName('EnviarAlRequisitor').AsString = 'No')or
//        (zMensaje.FieldByName('EnviarAlComprador').AsString = 'No')or
//        (zMensaje.FieldByName('EnviarAGerencia').AsString = 'No'))then
//        begin
//            zqDatos.Refresh;
//            try
//              grid_datosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
//            except
//            else
//               grid_datosView.DataController.DataSet.FreeBookmark(SavePlace);
//            end;
//           MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
//        end;

end;


end.
