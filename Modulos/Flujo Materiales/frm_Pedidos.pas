unit frm_Pedidos;

interface

uses
  Windows, Messages, Math, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, ADODB, DBCtrls, global, strUtils,Jpeg,
  Mask, OleCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Utilerias,
  Menus, frxClass, frxDBSet, RXDBCtrl, RxLookup, DateUtils, unitactivapop,
  RXCtrls, CheckLst, ToolWin, RxMemDS, ExcelXP, OleServer,
  Excel2000, ZAbstractRODataset, ZDataset, ZAbstractDataset, rxCurrEdit, unitGenerales,
  rxToolEdit, ComObj, unitExcel,unitexcepciones, UnitValidaTexto,
  UFunctionsGHH, UnitValidacion,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxGridCustomView, cxGrid, cxButtons, ExportaExcel,masUtilerias, cxContainer,
  cxImage, ImgList, ExtDlgs, cxTextEdit, cxLabel, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, cxSplitter, cxGroupBox, cxMemo,
  cxRichEdit, frm_repositorio, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList, MemDS, DBAccess, Uni,
  dxLayoutcxEditAdapters, dxBarBuiltInMenu, cxPC, dxLayoutContainer, cxCalendar,
  cxDBEdit, dxLayoutControl, dxLayoutControlAdapters, cxCalc, unitMetodos,
  frxExportPDF, cxRadioGroup, UnitReportes, frm_barraH1, frm_barraH2,
  dxLayoutLookAndFeels, CxGridExportLink, ShellApi, cxCheckBox, dxToggleSwitch,
  dxCore, cxDateUtils, frxExportMail, cxProgressBar;

type
  TfrmPedidos = class(TForm)
    ds_anexo_ocompras: TDataSource;
    ds_anexo_pocompras: TDataSource;
    ds_proveedores: TDataSource;
    OpenXLS: TOpenDialog;
    frxEntrada: TfrxReport;
    ds_requisiciones: TDataSource;
    dtsPartidas: TDataSource;
    ds_insumo: TDataSource;
    ds_moneda: TDataSource;
    rxPrecios: TRxMemoryData;
    rxPreciossContrato: TStringField;
    rxPreciossIdInsumo: TStringField;
    rxPreciosmDescripcion: TMemoField;
    rxPreciossIdProveedor: TStringField;
    rxPreciosdFecha1: TDateField;
    rxPreciosdFecha2: TDateField;
    rxPreciosdFecha3: TDateField;
    rxPreciosdFecha4: TDateField;
    rxPreciosdFecha5: TDateField;
    rxPreciosdFecha6: TDateField;
    rxPreciosdFecha7: TDateField;
    rxPreciosdFecha8: TDateField;
    rxPreciosdCosto1: TFloatField;
    rxPreciosdCosto2: TFloatField;
    rxPreciosdCosto3: TFloatField;
    rxPreciosdCosto4: TFloatField;
    rxPreciosdCosto5: TFloatField;
    rxPreciosdCosto6: TFloatField;
    rxPreciosdCosto7: TFloatField;
    rxPreciosdCosto8: TFloatField;
    frxPrecios: TfrxDBDataset;
    rxPreciosItem: TIntegerField;
    rxPreciossOrdenCompra1: TStringField;
    rxPreciossOrdenCompra2: TStringField;
    rxPreciossOrdenCompra3: TStringField;
    rxPreciossOrdenCompra4: TStringField;
    rxPreciossOrdenCompra5: TStringField;
    rxPreciossOrdenCompra6: TStringField;
    rxPreciossOrdenCompra7: TStringField;
    rxPreciossOrdenCompra8: TStringField;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    Imprimir1: TMenuItem;
    cxmglst1: TcxImageList;
    OpenPicture: TOpenPictureDialog;
    datasetfrximgfirmas: TfrxDBDataset;
    dsOrdenes: TDataSource;
    panelInsumos: TPanel;
    Grid_Insumos: TcxGrid;
    Grid_InsumosView: TcxGridDBTableView;
    Col_dbgGrid_InsumosViewColumn1: TcxGridDBColumn;
    Col_dbgGrid_InsumosViewColumn3: TcxGridDBColumn;
    Col_dbgGrid_InsumosViewColumn4: TcxGridDBColumn;
    Col_dbgGrid_InsumosViewColumn5: TcxGridDBColumn;
    Col_dbgGrid_InsumosViewColumn6: TcxGridDBColumn;
    dbgGrid_InsumosLevel1: TcxGridLevel;
    Moneda: TUniQuery;
    Insumos: TUniQuery;
    Partidas: TUniQuery;
    anexo_ocompras: TUniQuery;
    Grid_Entradas: TcxGrid;
    dbg_OCVista: TcxGridDBTableView;
    Col_ordenCompra: TcxGridDBColumn;
    Col_fecha: TcxGridDBColumn;
    Col_fechasuministro: TcxGridDBColumn;
    Col_folio: TcxGridDBColumn;
    Col_Frente: TcxGridDBColumn;
    Col_Moneda: TcxGridDBColumn;
    Col_lugarentrega: TcxGridDBColumn;
    Col_montomn: TcxGridDBColumn;
    cxEstatus: TcxGridDBColumn;
    dbgLevOC: TcxGridLevel;
    zimgfirmas: TUniQuery;
    zqDatos: TUniQuery;
    requisiciones: TUniQuery;
    anexo_pocompras: TUniQuery;
    Proveedores: TUniQuery;
    zqOrdenes: TUniQuery;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    sCodigo: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    iIdFecha: TcxDBDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    dFechaEntrega: TcxDBDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxRequisicion: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxProveedor: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    sReferencia: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    sLugarEntrega: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxGroupBox1: TcxGroupBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    pgControl: TcxPageControl;
    ts1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    GridPartidas: TcxGrid;
    cxViewDetalleOC: TcxGridDBTableView;
    Col_Partida: TcxGridDBColumn;
    Col_idInsumo: TcxGridDBColumn;
    Col_Descripcion: TcxGridDBColumn;
    Col_Medida: TcxGridDBColumn;
    Col_Cantidad: TcxGridDBColumn;
    Col_PrecioUnit: TcxGridDBColumn;
    Col_Total: TcxGridDBColumn;
    Col_Estatus: TcxGridDBColumn;
    Col_Descuento: TcxGridDBColumn;
    dbg2: TcxGridLevel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    sPrecios: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    sVigencia: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxGroupBox2: TcxGroupBox;
    dxLayoutItem13: TdxLayoutItem;
    idMoneda: TcxDBLookupComboBox;
    dxLayoutItem14: TdxLayoutItem;
    dCambio: TcxDBCurrencyEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    sMail: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    sVendedor: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    btnProveedores: TcxButton;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    cxButton1: TcxButton;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    cxNota: TcxDBMemo;
    dxLayoutItem17: TdxLayoutItem;
    cxIva: TcxDBCalcEdit;
    dxLayoutItem18: TdxLayoutItem;
    cxRetencion: TcxDBCalcEdit;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxFormaPago: TcxDBLookupComboBox;
    dxLayoutItem16: TdxLayoutItem;
    forma_pago: TUniQuery;
    ds_forma_pago: TDataSource;
    cxEntrega: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    cxButton3: TcxButton;
    Grid_InsumosViewColumn1: TcxGridDBColumn;
    cxUsoCFDI: TcxDBLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    cxMetodoPagoCFDI: TcxDBLookupComboBox;
    dxLayoutItem27: TdxLayoutItem;
    cxFormaPagoCFDI: TcxDBLookupComboBox;
    dxLayoutItem28: TdxLayoutItem;
    UsoCFDI: TUniQuery;
    ds_usocfdi: TDataSource;
    MetodoPagoCFDI: TUniQuery;
    ds_metodopago_cfdi: TDataSource;
    FormaPagoCFDI: TUniQuery;
    ds_formapago_cfdi: TDataSource;
    Grid_InsumosViewColumn2: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxCuenta: TcxDBLookupComboBox;
    dxLayoutItem22: TdxLayoutItem;
    Cuentas: TUniQuery;
    ds_cuentas: TDataSource;
    frxPDFExport1: TfrxPDFExport;
    btnCuentas: TcxButton;
    dxLayoutItem25: TdxLayoutItem;
    tabInforme: TcxTabSheet;
    PanelSuperiorInforme: TPanel;
    dxLayoutControl4: TdxLayoutControl;
    opcionImprimir: TcxRadioGroup;
    btnImpInforme: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    zReporteDetalle: TUniQuery;
    PanelTop: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLabel1: TcxLabel;
    PanelDatos: TPanel;
    PanelTopD: TPanel;
    frmBarraH21: TfrmBarraH2;
    PanelPrincipal: TPanel;
    PanelDetalle: TPanel;
    cxSplitterD: TcxSplitter;
    PanelDetalleT: TPanel;
    pgControlDetalle: TcxPageControl;
    cxEliminarDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxNuevoDetalle: TcxButton;
    cxSplitter1: TcxSplitter;
    btnInfoD: TcxButton;
    PanelTopDD: TPanel;
    labelSeleccion: TcxLabel;
    ListaPanelGuardar: TPanel;
    btnPost: TcxButton;
    btnCancel: TcxButton;
    PanelListaTitulo: TPanel;
    cxLeyenda2: TcxLabel;
    PaneListaDatos: TPanel;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    tdCantidad: TcxCalcEdit;
    dxLayoutItem29: TdxLayoutItem;
    tdCostoNuevo: TcxCurrencyEdit;
    dxLayoutItem32: TdxLayoutItem;
    tDescuentoMat: TcxCurrencyEdit;
    dxLayoutItem33: TdxLayoutItem;
    Col_requisicion: TcxGridDBColumn;
    cxMultipleReq: TdxToggleSwitch;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    cxSplitMaterial: TcxSplitter;
    PanelMaterial: TPanel;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    cxCancelaMaterial: TcxButton;
    dxLayoutItem36: TdxLayoutItem;
    cxGuardaMaterial: TcxButton;
    dxLayoutItem37: TdxLayoutItem;
    cxFirma: TcxDBLookupComboBox;
    dxLayoutItem38: TdxLayoutItem;
    btnFirma: TcxButton;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    ds_firma: TDataSource;
    zFirma: TUniQuery;
    cxFechaEntregaMat: TcxDBDateEdit;
    dxLayoutItem40: TdxLayoutItem;
    cxComprasxProveedor: TcxButton;
    dxLayoutItem41: TdxLayoutItem;
    cxCentroCostoxCompras: TcxButton;
    dxLayoutItem42: TdxLayoutItem;
    col_CentroCosto: TcxGridDBColumn;
    FechaInicio: TcxDateEdit;
    FechaFin: TcxDateEdit;
    dxLayoutItem43: TdxLayoutItem;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    cxEntregaMaterial: TcxDBMemo;
    dxLayoutItem35: TdxLayoutItem;
    frxMailExport1: TfrxMailExport;
    cxCreaEntrada: TcxButton;
    cxGraficaPresupuesto: TcxButton;
    dxLayoutItem45: TdxLayoutItem;
    cxCheckAgrupa: TcxCheckBox;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    col_Comprador: TcxGridDBColumn;
    col_sap: TcxGridDBColumn;
    cxOtrosCargos: TcxDBCurrencyEdit;
    dxLayoutItem47: TdxLayoutItem;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    cxCotizacionInicial: TcxDBCurrencyEdit;
    dxLayoutItem48: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    col_CotizacionInicial: TcxGridDBColumn;
    col_estatuscompra: TcxGridDBColumn;
    col_porcentajeCantidad: TcxGridDBColumn;
    Col_Prioridad: TcxGridDBColumn;
    dxLayoutItem49: TdxLayoutItem;
    cxTipoCambio: TcxDBCurrencyEdit;
    dtFechaVencimientoCredito: TcxDBDateEdit;
    dxLayoutItem50: TdxLayoutItem;
    cbCategoria: TcxDBComboBox;
    dxLayoutItemCategoria: TdxLayoutItem;
    dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup;
    Col_Categoria: TcxGridDBColumn;
    SaveDialog1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure GridPartidasCellClick(Column: TColumn);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure frmBarra2btnDeleteClick(Sender: TObject);
    procedure frmBarra2btnRefreshClick(Sender: TObject);
    procedure frmBarra2btnCancelClick(Sender: TObject);
    procedure frmBarra2btnExitClick(Sender: TObject);
    procedure frxEntradaGetValue(const VarName: string;
      var Value: Variant);

    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure resultadoSaldo;
    procedure FormActivate(Sender: TObject);
    procedure validaciones();
    procedure InsumosAfterScroll(DataSet: TDataSet);
    procedure validaPedido();
    procedure GridPartidasGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure cmdCancelarClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);

    procedure ExportarExcel1Click(Sender: TObject);
    procedure Grid_InsumosViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dFechaEntregaExit(Sender: TObject);
    procedure btnProveedoresClick(Sender: TObject);
    procedure cxProveedorExit(Sender: TObject);
    procedure pgControlChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure dbg_OCVistaCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnCuentasClick(Sender: TObject);
    procedure tabInformeShow(Sender: TObject);
    procedure btnImpInformeClick(Sender: TObject);
    procedure dbg_OCVistaDataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: string);
    procedure dbg_OCVistaDataControllerFilterChanged(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnInfoDClick(Sender: TObject);
    procedure Orden_Compra_scroll;
    procedure dbg_OCVistaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelClick(Sender: TObject);
    procedure btnExportaClick(Sender: TObject);
    procedure cxViewDetalleOCCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Col_montomnGetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure Col_PrecioUnitGetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure Col_TotalGetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure dxToggleSwitch1PropertiesChange(Sender: TObject);
    procedure cxMultipleReqPropertiesChange(Sender: TObject);
    procedure cxRequisicionExit(Sender: TObject);
    procedure cxGuardaMaterialClick(Sender: TObject);
    procedure cxCancelaMaterialClick(Sender: TObject);
    procedure cxViewDetalleOCCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnFirmaClick(Sender: TObject);
    procedure cxComprasxProveedorClick(Sender: TObject);
    procedure cxCreaEntradaClick(Sender: TObject);
    procedure cxCentroCostoxComprasClick(Sender: TObject);
    procedure cxGraficaPresupuestoClick(Sender: TObject);
    procedure cxRequisicionPropertiesChange(Sender: TObject);
    procedure idMonedaPropertiesChange(Sender: TObject);

  private
    sMenuP: string;
    btnPermisos : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidos: TfrmPedidos;
  SavePlace: TBookmark;
  sDescripcion: string;
  sArchivo      : String ;
  txtAux: string;
  lNuevo: Boolean;
  OpcButton1: string;
  Valida: boolean;
  filtro, buscar: string;
  iFolio: integer;
  CadenaOrden, CadenaOrden2, cadenaReq: string;
  lValidaReq: boolean;
  CadenaReporte, CadenaReporte2: string;

  sSuperintendente, sSupervisor: string;
  sPuestoSuperintendente, sPuestoSupervisor: string;
  sSupervisorTierra, sPuestoSupervisorTierra: string;
  sBackup: string;
  MontoTotal: Currency;
  TipoExplosion: string;
  AnteriorArray : array[1..5] of string;


  Tipo_Moneda: string;
Excel, Libro, Hoja: Variant;
columnas : array[1..260] of String ;
SaveDialog1 : TSaveDialog;
implementation

uses frm_connection, frm_proveedores, Func_Genericas,
  frm_Presupuesto, frm_Empresas, frm_FirmasNota, Frm_Modal,
  Frm_BancosMovimientos;

{$R *.dfm}

procedure TfrmPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  guardar_leer_grid(dbg_OCVista,frmPedidos,1);
//  guardar_leer_grid(cxViewDetalleOC,frmPedidos,1);
//  guardar_leer_grid(Grid_InsumosView,frmPedidos,1);
  global_frmActivo := '';
  action := cafree;
end;


procedure TfrmPedidos.FormShow(Sender: TObject);
var x: integer;
 temE:TUniQuery;
begin
  btnPermisos := global_btnPermisos;
  try

    sMenuP := stMenu;

    pgControl.ActivePageIndex := 0;

    temE := TUniquery.create(nil);
    temE.Connection := Connection.uConnection;
    temE.Active:=False;
    temE.SQL.Text:='Select FK_Titulo from master_empresa';
    temE.Open;

    AsignarSQL(Proveedores, 'master_proveedores',pUpdate);
    Proveedores.Open;

    AsignarSQL(Moneda,'master_moneda',pUpdate);
    Moneda.Open;

    AsignarSQL(UsoCFDI,'cfdi_uso',pUpdate);
    UsoCFDI.Open;

    AsignarSQL(MetodoPagoCFDI,'cfdi_metodopago',pUpdate);
    MetodoPagoCFDI.Open;

    AsignarSQL(FormaPagoCFDI,'cfdi_formapago',pUpdate);
    FormaPagoCFDI.Open;

    AsignarSQL(forma_pago,'formas_pago',pUpdate);
    FiltrarDataSet(forma_pago,'Id',['-1']);
    forma_pago.Open;

    AsignarSQL(cuentas,'master_cuentas_empresa',pUpdate);
    FiltrarDataSet(cuentas,'IdEmpresa',[connection.ucontrato.FieldByName('IdEmpresa').AsInteger]);
    cuentas.Open;

    AsignarSQL(zqordenes,'ordenesdetrabajo_presu_val',pUpdate);
    if temE.FieldByName('FK_Titulo').AsString = 'SIANI' then  begin
       FiltrarDataSet(zqordenes,'Contrato,Tipo,Status',[global_contrato,'-1','-1']);
       col_Comprador.Visible := False;
    end
    else begin
       FiltrarDataSet(zqordenes,'Contrato,Tipo,Estatus',[global_contrato,'PROYECTO','-1']);
       col_Comprador.Visible := True;
       col_porcentajeCantidad.Visible := False;
       col_estatuscompra.Visible := False;
    end;
    zqOrdenes.Open ;

    IsOpen:=False;
    anexo_ocompras.DisableControls;

    AsignarSQL(anexo_ocompras,'anexo_pedidos',pUpdate);
    FiltrarDataSet(anexo_ocompras,'Contrato',[global_contrato]);
    anexo_ocompras.Open;
  //  if (connection.uContrato.FieldByName('FK_Titulo').AsString<>'CMMI') then
      Col_Prioridad.Visible := False;
    Orden_Compra_scroll;

    anexo_ocompras.EnableControls;
    IsOpen:=true;

    grid_entradas.enabled := true;
    Grid_Entradas.SetFocus;

    AsignarSQL(requisiciones,'anexo_requisicion',pUpdate);
    FiltrarDataSet(requisiciones,'Contrato',[global_contrato]);
    requisiciones.Open;

    AsignarSQL(zFirma, 'rd_firmas', pUpdate);
    FiltrarDataSet(zFirma, 'IdFirma, Contrato',[-1, Global_Contrato]);
    zFirma.Open;

    zFirma.Filtered := False;
    zFirma.Filter   := 'VistaUsuario = '+ QuotedStr(self.Caption);
    zFirma.Filtered := True;

    PanelTopD.Visible:=False;
    PanelDatos.Visible:=False;
    cxSplitter1.Visible:=False;
    PanelDetalle.Visible := False;
    cxSplitterD.Visible := False;

    FechaInicio.Date := Date;
    FechaFin.Date    := Date;
    cxTipoCambio.Visible:=False;
    PermisosBotones(frmPedidos,btnPermisos);

    if connection.uContrato.FieldByName('FK_Titulo').AsString<>'CMMI' then
    begin
       cxCreaEntrada.Visible := False;
       dxLayoutItem49.Visible := True;
       dxLayoutItem50.Visible := False;
       dxLayoutItemCategoria.Visible := False;
       Col_Categoria.Visible := False;
    end
    else
    begin
      dxLayoutItem49.Visible:= False;
      dxLayoutItemCategoria.Visible := True;
      Col_Categoria.Visible := True;
    end;

    dbg_OCVista.DataController.Groups.FullExpand;

    if temE.FieldByName('FK_Titulo').AsString = 'SIANI' then   begin
      tdCostoNuevo.Properties.DisplayFormat:='$,0.00;-$,0.00';
      col_Comprador.Visible := False;
      col_sap.Visible := False;
      col_CotizacionInicial.Visible := False;
      col_CentroCosto.Visible := False;
      cxTipoCambio.Visible:=True;
      cxTipoCambio.DataBinding.DataField:='TipoCambio';
    end;

    IF temE.FieldByName('FK_Titulo').AsString = 'TYPHOON' then  begin
      col_Comprador.Visible := False;
      col_sap.Visible := False;
      col_CotizacionInicial.Visible := False;

    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al iniciar formulario', 0);
    end;
  end;
//  guardar_leer_grid(dbg_OCVista,frmPedidos,0);
//  guardar_leer_grid(cxViewDetalleOC,frmPedidos,0);
//  guardar_leer_grid(Grid_InsumosView,frmPedidos,0);
end;

procedure TfrmPedidos.BtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPedidos.btnExportaClick(Sender: TObject);
Var
  CadError, OrdenVigencia: String;
  zExporta : TUniQuery;
  rutaArchivo: string;
  Excel, Sheet: Variant;
  dlgSave : TSaveDialog;
//////////////////////////////////// PLANTILAS DE EXPORTACION /////////////////////////////////////
Function GenerarPlantilla: Boolean;
Var
  Resultado: Boolean;
    Procedure DatosPlantilla;
    Var
      CadFecha, tmpNombre, cadena, sColIDName, sId : String;
      fs: tStream;
      i,x,n,z : integer;
    Begin
      // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;

      {$REGION 'PLANTILLA ORDENES DE COMPRA'}

            ///
            Excel.Columns['A:A'].ColumnWidth := 12.5;
            Excel.Columns['B:B'].ColumnWidth := 13.5;
            Excel.Columns['C:C'].ColumnWidth := 10.5;
            Excel.Columns['D:D'].ColumnWidth := 54;
            Excel.Columns['E:E'].ColumnWidth := 30;
            Excel.Columns['F:F'].ColumnWidth := 30;
            Excel.Columns['G:G'].ColumnWidth := 54;
            Excel.Columns['H:H'].ColumnWidth := 12.5;
            Excel.Columns['I:I'].ColumnWidth := 12.5;
            Excel.Columns['J:J'].ColumnWidth := 13.29;
            Excel.Columns['K:K'].ColumnWidth := 13.29;
//            Excel.Columns['L:L'].ColumnWidth := 40.0;
//            Excel.Columns['M:M'].ColumnWidth := 10.5;



//            // Encabezado principal
//            Excel.Range['A1:C1'].Select;
//            Excel.Selection.MergeCells := True ;
//            Excel.Selection.Value := '  ';
//
//            Excel.Range['D1:D1'].Select;
//            Excel.Selection.MergeCells := True ;
//            Excel.Selection.Value := zExporta.RecordCount;
//
//            Excel.Range['E1:K1'].Select;
//            Excel.Selection.MergeCells := True ;
//            Excel.Selection.Value := 'SUBSEA 7 MEXICO, S. DE R.L. DE C.V. STATUS DE REQUISICIONES DE MANTENIMIENTO'+
//                                     '“Mantenimiento a Instalaciones costa fuera de la región marina No. Contrato:  648236801';
//            Excel.Range['E1:K1'].Font.Color := clWhite;
//
//            Excel.Range['L1:M1'].Select;
//            Excel.Selection.MergeCells := True ;
//            Excel.Selection.Value := ' ';

            //Texto Columnas en blanco
            Excel.Cells[1,1].Select;
            Excel.Selection.Value := 'CC';
            Excel.Cells[1,2].Select;
            Excel.Selection.Value := 'No. ORDEN';
            Excel.Cells[1,3].Select;
            Excel.Selection.Value := 'FECHA';
            Excel.Cells[1,4].Select;
            Excel.Selection.Value := 'FAMILIA';
            Excel.Cells[1,5].Select;
            Excel.Selection.Value := 'SUBFAMILIA';
            Excel.Cells[1,6].Select;
            Excel.Selection.Value := 'FOLIO';
            Excel.Cells[1,7].Select;
            Excel.Selection.Value := 'DESCRIPCION DEL MATERIAL';
            Excel.Cells[1,8].Select;
            Excel.Selection.Value := 'CANTIDAD';
            Excel.Cells[1,9].Select;
            Excel.Selection.Value := 'PU';
            Excel.Cells[1,10].Select;
            Excel.Selection.Value := 'SUBTOTAL';
            Excel.Cells[1,11].Select;
            Excel.Selection.Value := 'MONEDA';
            Excel.Range['A1'+':K1'].Select;
                Excel.Range['A1','A1'].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['B1','B1'].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['C1','C1'].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['D1','D1'].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['E1','E1'].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['F1','F1'].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['G1','G1'].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['H1','H1'].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['I1','I1'].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['J1','J1'].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['K1','K1'].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);

            i:=2;
            x:=1;
             anexo_ocompras.First;
             while not anexo_ocompras.eof do
             begin
                AsignarSQL(zExporta, 'anexo_ppedido', pUpdate);
                FiltrarDataSet(zExporta,'Folio',[anexo_ocompras.FieldValues['IdOrdenCompra']]);
                zExporta.Open;

              zExporta.First;

              Excel.Cells[i, 1].Select;
              Excel.Range['A'+IntToStr(i)+':K'+IntToStr(i)].MergeCells:= True;
              Excel.Range['A'+IntToStr(i),'K'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
              Excel.Selection.Interior.Color:=RGB(230,245,250);
              Excel.Selection.Value := 'Orden Compra: '+zExporta.FieldByName('OC').AsString;
              inc(i);
              while not zExporta.Eof do
              begin

                Excel.Cells[i, 1].Select;
                Excel.Selection.Value := zExporta.FieldByName('CentroCosto').AsString;

                Excel.Cells[i, 2].Select;
                Excel.Selection.Value := zExporta.FieldByName('NumeroOrden').AsString;

                Excel.Cells[i, 3].Select;
                Excel.Selection.NumberFormat := 'd-m-aaaa';
                if zExporta.FieldByName('FechaOC').IsNull then
                   Excel.Selection.Value:=''
                else
                  Excel.Selection.Value :=zExporta.FieldByName('FechaOC').AsDateTime;

                Excel.Cells[i, 4].Select;
                Excel.Selection.Value := zExporta.FieldByName('Familia').AsString;

                Excel.Cells[i, 5].Select;
                Excel.Selection.Value := zExporta.FieldByName('SubFamilia').AsString;

                Excel.Cells[i, 6].Select;
                Excel.Selection.Value := zExporta.FieldByName('OC').AsString;

                Excel.Cells[i, 7].Select;
                Excel.Selection.Value := zExporta.FieldByName('mDescripcion').AsString;

                Excel.Cells[i, 8].Select;
                Excel.Selection.NumberFormat := '#,##0.00';
                Excel.Selection.Value := zExporta.FieldByName('dCantidad').AsFloat;

                Excel.Cells[i, 9].Select;
                Excel.Selection.NumberFormat := '#,##0.00';
                Excel.Selection.Value := zExporta.FieldByName('dCosto').AsFloat;

                Excel.Cells[i, 10].Select;
                Excel.Selection.NumberFormat := '#,##0.00';
                Excel.Selection.Value := zExporta.FieldByName('dMontoMN').AsFloat;

                Excel.Cells[i, 11].Select;
                Excel.Selection.Value := zExporta.FieldByName('Moneda').AsString;


                zExporta.Next;

                //  para crear las líneas de los bordes
                Excel.Range['A'+IntToStr(i)+':K'+IntToStr(i)].Select;
                Excel.Range['A'+IntToStr(i),'A'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['B'+IntToStr(i),'B'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['C'+IntToStr(i),'C'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['D'+IntToStr(i),'D'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['E'+IntToStr(i),'E'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['F'+IntToStr(i),'F'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['G'+IntToStr(i),'G'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['H'+IntToStr(i),'H'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['I'+IntToStr(i),'I'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['J'+IntToStr(i),'J'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Range['K'+IntToStr(i),'K'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
                Excel.Selection.WrapText := False;
                inc(i);
                inc(x);


              end;
                anexo_ocompras.Next;
            end;

            //Color y Merge de las columnas en blanco
            Excel.Rows['1:1'].RowHeight := 50.75;
            Excel.Range['A1:K1'].Select;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Interior.Color:=RGB(236,236,236);
            Excel.Selection.Font.Name := 'Calibri';
            Excel.Selection.Font.Size := 11;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.WrapText := True;
            Excel.Selection.Borders[xlEdgeTop].LineStyle:= 1;
            Excel.Selection.Borders[xlEdgeTop].Weight:= 2;

//            //Formato a las filas de información
//            Excel.Range['A2:K'+IntToStr(i)].Select;
//            Excel.Selection.HorizontalAlignment := xlCenter;
//            Excel.Selection.VerticalAlignment := xlCenter;
//            Excel.Selection.Interior.Color := clWhite;
//            Excel.Selection.Font.Size := 10;
//            Excel.Selection.Font.Bold := False;
//            Excel.Selection.Font.Name := 'Calibri';
//            Excel.Selection.WrapText := True;

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
        Hoja.Name := 'Ordenes de Compra';


        {$ENDREGION}
        DatosPlantilla;
        Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
        Excel.DisplayAlerts := True;
      Except
        on e:exception do
        Begin
          Resultado := False;
          CadError := 'Se ha producido el siguiente error al generar el Archivo de Excel Ordenes de Compra' + #10 + #10 + e.Message;
          Excel.DisplayAlerts := True;
        End;
      End;


      Result := Resultado;

    end;

begin
    if  connection.uContrato.FieldByName('FK_Titulo').AsString = 'SIANI' then begin

    zExporta:=tUniquery.create(nil);
    zExporta.Connection := Connection.uConnection;

       // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
    If Not SaveDialog1.Execute Then
      Exit;

        // Generar el ambiente de excel
    try
      Excel := CreateOleObject('Excel.Application');
        except
          on e : exception do begin
            FreeAndNil(Excel);
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Exportación de Ordenes de Compra', 'Al exportar datos', 0);
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
        showmessage(CadError);
  end
  else begin

    dlgSave := TSaveDialog.Create(nil);
    dlgSave.FileName := 'Ordenes de Compra';
    if dlgSave.Execute then
    begin
      rutaArchivo := dlgSave.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, Grid_Entradas);
      dlgSave.Destroy;
      if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
    end;
  end;
end;

procedure TfrmPedidos.btnFirmaClick(Sender: TObject);
begin
  if (anexo_ocompras.State = dsInsert ) or (anexo_ocompras.State = dsEdit) then
   begin
       global_frmActivo := 'frm_Pedidos';
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
end;

procedure TfrmPedidos.btnImpInformeClick(Sender: TObject);
var
  ordenescompraGrid : String;
   contOCGrid, j : Integer;
begin
  if opcionImprimir.EditValue = 1 then
  begin
    IsOpen:=False;
    generar_reporte_grid(dbg_OCVista,'Reporte de Ordenes de Compra');
    IsOpen:=True;
  end  else if opcionImprimir.EditValue = 2 then
  begin
    dbg_OCVista.DataController.Groups.FullExpand;
    contOCGrid := dbg_OCVista.ViewData.RecordCount;
    for j := 0 to (contOCGrid - 1) do
    begin
      try
        ordenescompraGrid := ordenescompraGrid + dbg_OCVista.ViewData.Rows[j].Values[1] +',';
      except
        ;
      end;
    end;

    zReporteDetalle.Active := False;
    AsignarSQL(zReporteDetalle,'reporte_detalles_ordencompra',pUpdate);
    FiltrarDataSet(zReporteDetalle,'Contrato, ListaOC',[global_contrato,ordenescompraGrid]);
    zReporteDetalle.Open;

    IsOpen:=False;
    generar_reporte_grid_detalles(dbg_OCVista,zReporteDetalle,'Reporte de Ordenes de Compra con Detalles', 'Codigo');
    IsOpen:=True;
  end;
end;

procedure TfrmPedidos.btnInfoDClick(Sender: TObject);
begin
  cxSplitter1.Visible:=not cxSplitter1.Visible;
  PanelDatos.Visible:= not PanelDatos.Visible;
end;

procedure TfrmPedidos.btnProveedoresClick(Sender: TObject);
begin
   if (anexo_ocompras.State = dsInsert ) or (anexo_ocompras.State = dsEdit) then
   begin
       global_frmActivo := 'frm_pedidos';
       if not MostrarFormChild('frmProveedores', global_dxBarManagerPrincipal) then
       begin
          Application.CreateForm(TfrmProveedores, frmProveedores);
          frmProveedores.show;
       end;
   end;
end;

procedure TfrmPedidos.frmBarra1btnAddClick(Sender: TObject);
begin
  validaciones;

  if valida then
  begin
    cxNuevoDetalle.Enabled := true;
    cxEditaDetalle.Enabled := True;
    cxEliminarDetalle.Enabled := True;

    exit;
  end;

  if anexo_ocompras.FieldValues['iFolioRequisicion'] <> '' then
  begin
    AsignarSQL(Partidas,'anexo_prequisicion',pUpdate);
    FiltrarDataSet(Partidas,'Contrato,Convenio,Folio',[global_contrato,global_convenio,anexo_ocompras.FieldValues['iFolioRequisicion']]);
    Partidas.Open;
  end
  else
  begin
    insumos.Active := False;
    insumos.SQL.Clear;
    insumos.SQL.Add('SELECT a.sIdInsumo, a.sIdAlmacen, a.sMedida, a.mDescripcion, a.dVentaDLL, a.dVentaMN, a.dCantidad, a.dNuevoPrecio, ');
    insumos.SQL.Add('SubStr(mDescripcion, 1, 255) as sDescripcion, '+''' '''+' as Requisicion , b.sDescripcion as Almacen, a.dExistencia ');
    insumos.SQL.Add('FROM insumos AS a ');
    insumos.SQL.Add('INNER JOIN almacenes AS b ON (a.sIdAlmacen = b.sIdAlmacen) ');
    insumos.SQL.Add('WHERE (:contrato=-1 or (:contrato<>-1 and a.sContrato = :contrato)) ' +
                    'and (:Principal=-1 or (:Principal<>-1 and b.lPrincipal=:Principal))');

    frmRepositorio.Reporte.ParamByName('Principal').AsString:='Si';
    insumos.ParamByName('Contrato').AsInteger:=-1;
    insumos.Open;

    if insumos.RecordCount = 0 then
      messageDLG('No existen Materiales para el Almacen principal', mtInformation, [mbOk], 0);
  end;

  if (anexo_ocompras.RecordCount > 0) then
  begin
    tdCantidad.Value := 0;
  end;
  tDescuentoMat.Value := 0;

  Grid_Insumos.Enabled:=True;
  Crear_Form(PanelInsumos, 'Catalogo de Materiales', 430, 1010, []);
end;

procedure TfrmPedidos.frmBarra1btnEditClick(Sender: TObject);
begin
  if anexo_pocompras.FieldValues['sStatus'] = 'Entregado' then
  begin
    messageDLG('No se puede modificar el Material ya fue Entregado!', mtWarning, [mbOk], 0);
    exit;
  end;

  validaciones;
  if valida then
  begin
    //frmBarraH11.btnCancel.Click;
    exit;
  end;

  if anexo_ocompras.RecordCount > 0 then
  begin
    Grid_Insumos.Enabled:=False;
    Crear_Form(PanelInsumos, 'Catalogo de Materiales', 430, 1010, []);
  end;

end;


procedure TfrmPedidos.frmBarra1btnPostClick(Sender: TObject);
var
  SavePlace: TBookmark;
  dCantidad: Currency;
  conteo: integer;
begin
    if tDescuentoMat.Value > (tdCantidad.Value * tdCostoNuevo.Value) then
    begin
      messageDLG('El Descuento Applicado es Mayor al Costo Total, Favor de verificar! ', mtInformation, [mbOk], 0);
      exit;
    end;

    //Verificamos si la requisicion pertenece al mismo centro de costo
    if (anexo_ocompras.FieldByName('iFolioRequisicion').AsInteger = 0) or (anexo_ocompras.FieldByName('iFolioRequisicion').AsInteger = null) then
    begin
      AsignarSQL(Connection.zUCommand,'OC_total_centros_costo',pUpdate);
      FiltrarDataSet(Connection.zUCommand,'Folio',[anexo_ocompras.FieldByName('IdOrdenCompra').AsInteger]);
      Connection.zUCommand.Open ;

      if Connection.zUCommand.FieldByName('TotalCentroC').AsInteger > 1 then
      begin
        messageDLG('No se puede Comprar con dos Centros de Costo diferentes'+#13+insumos.FieldByName('sNumeroOrdenCentroC').AsString +#13+connection.zUCommand.FieldByName('sNumeroOrdenCentroC').AsString, mtInformation, [mbOk], 0);
        exit;
      end;
    end;


    if OpcButton = 'New' then
    begin
      //Sino existe el registro se inserta
      if not anexo_pocompras.Locate('IdInsumo;iFolioRequisicion',VarArrayOf([insumos.FieldByName('IdInsumo').AsInteger,insumos.FieldByName('iFolioRequisicion').AsInteger]), [loCaseInsensitive]) then
      begin
        Connection.Uconnection.Ping;
        Connection.zUCommand.Active := False;
        Connection.zUCommand.SQL.Clear;
        Connection.zUCommand.SQL.Add('INSERT INTO anexo_ppedido ( sContrato, IdOrdenCompra, IdInsumo, iItem, mDescripcion, IdMedida, dCantidad, dCosto, ' +
                                   'sStatus, dDescuento, IdAlmacen, iFolioRequisicion, FechaEntrega ) ' +
          'VALUES (:Contrato, :Folio, :Insumo, 1, :Descripcion, :Medida, :Cantidad, :Costo,  '+
          '''Pendiente'''+', :Descuento, :Almacen, :iFolioReq,:FechaEntrega) ');
        Connection.zUCommand.Params.ParamByName('Contrato').AsString    := Global_Contrato;
        Connection.zUCommand.Params.ParamByName('Folio').AsInteger      := anexo_ocompras.FieldValues['IdOrdenCompra'];
        Connection.zUCommand.Params.ParamByName('Insumo').AsInteger     := insumos.FieldValues['IdInsumo'];
        Connection.zUCommand.Params.ParamByName('Descripcion').AsString := insumos.FieldValues['Material'];
        Connection.zUCommand.Params.ParamByName('Medida').AsInteger     := insumos.FieldValues['IdMedida'];
        if tdCantidad.Value > insumos.FieldValues['dRequisicion']  then
        begin
          messageDLG('La cantidad tecleada es mayor a la cantidad requisitada', mtInformation, [mbOk], 0);
          exit;
        end
        else if (tdCantidad.Value = 0) then
        begin
          messageDLG('La cantidad esta en 0', mtInformation, [mbOk], 0);
          exit;
        end
        else
          Connection.zUCommand.Params.ParamByName('Cantidad').AsFloat     := tdCantidad.Value;
        Connection.zUCommand.Params.ParamByName('Costo').AsFloat        := tdCostoNuevo.Value;
        Connection.zUCommand.Params.ParamByName('Descuento').AsFloat    := tDescuentoMat.Value;
        Connection.zUCommand.Params.ParamByName('Almacen').AsInteger    := 1;
        Connection.zUCommand.Params.ParamByName('iFolioReq').AsInteger  := insumos.FieldByName('iFolioRequisicion').AsInteger;
        Connection.zUCommand.Params.ParamByName('FechaEntrega').AsDate  := anexo_ocompras.FieldValues['dFechaEntrega'];
        Connection.zUCommand.ExecSQL;

      end
      else
      begin
        if MessageDlg('Se encontro una coincidencia en la orden de compra actual, Desea sumar la cantidad de material?. (Si) De Acuerdo, (No) Registro independiente.', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
            Connection.Uconnection.Ping;
            Connection.zUCommand.Active := False;
            Connection.zUCommand.SQL.Clear;
            Connection.zUCommand.SQL.Add('INSERT INTO anexo_ppedido (sContrato, IdOrdenCompra, IdInsumo, iItem, mDescripcion, IdMedida, dCantidad, ' +
                                        'dCosto, sStatus, IdAlmacen, dDescuento, iFolioRequisicion, FechaEntrega ) ' +
                                        'VALUES (:Contrato, :Folio, :Insumo, :Item, :Descripcion, :Medida, :Cantidad, :Costo, '+'''Pendiente'''+', ' +
                                       ':Almacen, :Descuento, :iFolioReq, :FechaEntrega) ');
            Connection.zUCommand.Params.ParamByName('Contrato').AsString    := Global_Contrato;
            Connection.zUCommand.Params.ParamByName('Folio').AsInteger      := anexo_ocompras.FieldValues['IdOrdenCompra'];
            Connection.zUCommand.Params.ParamByName('Insumo').AsInteger     := insumos.FieldValues['IdInsumo'];
            Connection.zUCommand.Params.ParamByName('Descripcion').AsString := insumos.FieldValues['Material'];
            Connection.zUCommand.Params.ParamByName('Medida').AsInteger     := insumos.FieldValues['IdMedida'];
            if (tdCantidad.Value + insumos.FieldValues['dSumaCantidad']) > insumos.FieldValues['dRequisicion'] then
            begin
              messageDLG('La suma de las cantidades del material '+#13#10+'('+ insumos.FieldValues['Material']+'), '+#13+' es mayor a la cantidad requisitada', mtInformation, [mbOk], 0);
              exit;
            end
            else if (tdCantidad.Value = 0) then
            begin
              messageDLG('La cantidad esta en 0', mtInformation, [mbOk], 0);
              exit;
            end
            else
            Connection.zUCommand.Params.ParamByName('Cantidad').AsFloat     := tdCantidad.Value;
            Connection.zUCommand.Params.ParamByName('Descuento').AsFloat    := tDescuentoMat.Value;
            Connection.zUCommand.Params.ParamByName('Almacen').AsInteger    := 1;
            Connection.zUCommand.Params.ParamByName('Item').AsInteger       := insumos.FieldByName('Maximo').AsInteger + 1;
            if tdCostoNuevo.Value <> insumos.FieldValues['dCosto'] then
               Connection.zUCommand.Params.ParamByName('Costo').AsFloat     := tdCostoNuevo.Value
            else
                Connection.zUCommand.Params.ParamByName('Costo').AsFloat    := insumos.FieldValues['dCosto'];
            Connection.zUCommand.Params.ParamByName('iFolioReq').AsInteger  := insumos.FieldByName('iFolioRequisicion').AsInteger;
            Connection.zUCommand.Params.ParamByName('FechaEntrega').AsDate  := anexo_ocompras.FieldValues['dFechaEntrega'];
            Connection.zUCommand.ExecSQL;
            MessageDlg('Se inserto correctemente el Material ' + insumos.FieldValues['Codigo'] + ' en el CPT #' + IntToStr(insumos.FieldByName('Maximo').AsInteger + 1), mtInformation, [mbOk], 0);
        end
        else
        begin
          Connection.Uconnection.Ping;
          Connection.zUCommand.Active := False;
          Connection.zUCommand.SQL.Clear;
          Connection.zUCommand.SQL.Add('UPDATE anexo_ppedido SET  dCantidad =:Cantidad ' +
            'WHERE IdOrdenCompra =:Folio and IdInsumo =:Insumo and iItem = 1 ');
          Connection.zUCommand.Params.ParamByName('Folio').AsInteger  := anexo_ocompras.FieldValues['IdOrdenCompra'];
          Connection.zUCommand.Params.ParamByName('Insumo').AsInteger := insumos.FieldValues['IdInsumo'];
          if (tdCantidad.Value + insumos.FieldValues['dSumaCantidad']) > insumos.FieldValues['dRequisicion'] then
            begin
              messageDLG('La suma de las cantidades del material '+#13#10+'('+ insumos.FieldValues['Material']+'), '+#13+' es mayor a la cantidad requisitada', mtInformation, [mbOk], 0);
              exit;
            end
            else if (tdCantidad.Value = 0) then
            begin
              messageDLG('La cantidad esta en 0', mtInformation, [mbOk], 0);
              exit;
            end
            else
          Connection.zUCommand.Params.ParamByName('Cantidad').AsFloat := tdCantidad.Value + insumos.FieldByName('dSumaCantidad').AsFloat;
          Connection.zUCommand.ExecSQL;
        end;
      end;

      //Actualizamos el estatus del material si es una requisicion;
     Connection.Uconnection.Ping;
     Connection.zUCommand.Active := False;
     Connection.zUCommand.SQL.Clear;
     Connection.zUCommand.SQL.Add('UPDATE anexo_prequisicion SET sEstado ='+Quotedstr('COMPRADO')+' ' +
      'WHERE FIND_IN_SET(iFolioRequisicion,:Folio) And IdInsumo =:Insumo ');
     Connection.zUCommand.Params.ParamByName('Folio').AsInteger    := insumos.FieldByName('iFolioRequisicion').AsInteger;
     Connection.zUCommand.Params.ParamByName('Insumo').AsInteger   := insumos.FieldValues['IdInsumo'];
     Connection.zUCommand.ExecSQL;
      Connection.Uconnection.Ping;
      insumos.Filtered := False;
      insumos.Refresh;

      insumos.Filter   := 'dRequisicion <> dSumaCantidad ';
      insumos.Filtered := True;

      Connection.Uconnection.Ping;
      SavePlace := anexo_ocompras.GetBookmark;
      anexo_pocompras.Refresh;

      try
        anexo_pocompras.GotoBookmark(SavePlace);
      except
      else
        anexo_pocompras.FreeBookmark(SavePlace);
      end;
    end;

    try
      try
         IsOpen:=False;
         SavePlace := anexo_ocompras.GetBookmark;
         anexo_ocompras.Refresh;
         try
           anexo_ocompras.GotoBookmark(SavePlace);
         except
           anexo_ocompras.FreeBookmark(SavePlace);
         end;
      finally
          IsOpen:=True;
      end;
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Ordenes de Compra', 'Al actualizar registro', 0);
      end;
    end;

   Requisiciones.Refresh;
   PermisosBotones(frmPedidos,btnPermisos);
end;

procedure TfrmPedidos.frmBarra1btnDeleteClick(Sender: TObject);
var
  SavePlace: TBookmark;
begin
  if anexo_pocompras.FieldValues['sStatus'] = 'Entregado' then
  begin
    messageDLG('No se puede modificar el Material ya fue Entregado!', mtWarning, [mbOk], 0);
    exit;
  end;

  validaciones;
  if valida then
  begin
    //frmBarra1.btnCancel.Click;
    exit;
  end;
  if anexo_pocompras.RecordCount > 0 then
  begin
    with connection do
    begin
      try
        SavePlace := anexo_pocompras.GetBookmark;
        zUCommand.Active := False;
        zUCommand.SQL.Clear;
        zUCommand.SQL.Add('Delete from anexo_ppedido where sContrato = :Contrato And ' +
          'IdOrdenCompra = :Folio and sIdInsumo =:Insumo And iItem = :Item');
        zUCommand.Params.ParamByName('Contrato').DataType := ftString;
        zUCommand.Params.ParamByName('Contrato').value := Global_Contrato;
        zUCommand.Params.ParamByName('Folio').DataType := ftInteger;
        zUCommand.Params.ParamByName('Folio').value := anexo_pocompras.FieldValues['IdOrdenCompra'];
        zUCommand.Params.ParamByName('Insumo').DataType := ftString;
        zUCommand.Params.ParamByName('Insumo').value := anexo_pocompras.FieldValues['sIdInsumo'];
        zUCommand.Params.ParamByName('Item').DataType := ftInteger;
        zUCommand.Params.ParamByName('Item').value := anexo_pocompras.FieldValues['iItem'];
        zUCommand.ExecSQL;

        SavePlace := anexo_ocompras.GetBookmark;
        anexo_pocompras.Refresh;

        try
          anexo_pocompras.GotoBookmark(SavePlace);
        except
        else
          anexo_pocompras.FreeBookmark(SavePlace);
        end;
      except
        on e: exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Ordenes de Compra', 'Al eliminar registro', 0);
        end;
      end;
      GridPartidas.SetFocus
    end
  end
end;

procedure TfrmPedidos.InsumosAfterScroll(DataSet: TDataSet);
begin

  if insumos.RecordCount > 0 then
  begin
    if anexo_ocompras.FieldValues['iFolioRequisicion'] > 0 then
      tdCantidad.Value := insumos.FieldByName('dRequisicion').AsFloat
    else
      tdCantidad.Value := 0;
     tdCostoNuevo.Value := insumos.FieldByName('dCosto').AsFloat;
  end;
end;

procedure TfrmPedidos.cmdCancelarClick(Sender: TObject);
begin
  Grid_Entradas.Enabled := True;
  Grid_insumos.Enabled := True;
  GridPartidas.Enabled := True;
end;

procedure TfrmPedidos.Col_montomnGetProperties(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
var
  AColumn: TcxGridDBColumn;
begin
  with TcxGridDBTableView(Sender.GridView) do
      AColumn := GetColumnByFieldName('TituloMoneda');

  if anexo_ocompras.RecordCount > 0 then
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

procedure TfrmPedidos.Col_PrecioUnitGetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
var
  AColumn: TcxGridDBColumn;
begin
  with TcxGridDBTableView(Sender.GridView) do
      AColumn := GetColumnByFieldName('dCosto');

  if anexo_ocompras.RecordCount > 0 then
  begin
      if AColumn = nil then
      begin
        Exit;
      end
      else
      begin
          moneda.Locate('Codigo', anexo_ocompras.FieldByName('TituloMoneda').AsString,[] );
          AProperties := connection.cxReposMonedas[moneda.RecNo-1].Properties;
      end;
  end;

end;

procedure TfrmPedidos.Col_TotalGetProperties(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
var
  AColumn: TcxGridDBColumn;
begin
  with TcxGridDBTableView(Sender.GridView) do
      AColumn := GetColumnByFieldName('dMontoMN');

  if anexo_ocompras.RecordCount > 0 then
  begin
      if AColumn = nil then
      begin
        Exit;
      end
      else
      begin
          moneda.Locate('Codigo', anexo_ocompras.FieldByName('TituloMoneda').AsString,[] );
          AProperties := connection.cxReposMonedas[moneda.RecNo-1].Properties;
      end;
  end;

end;

procedure TfrmPedidos.ExportarExcel1Click(Sender: TObject);
var
   QueryImagen: TZQuery;
begin
  try
    QueryImagen := TZQuery.Create(Self);

    QueryImagen.Connection := connection.ZConnection;
    QueryImagen.Active:=False;
    QueryImagen.SQL.Clear;
    QueryImagen.SQL.Add('SELECT bImagen FROM configuracion WHERE sContrato=:sContrato');
    QueryImagen.ParamByName('sContrato').AsString:=global_contrato;
    QueryImagen.Open;
    ExportExcelPersonalizado(QueryImagen,dbg_OcVista,'Ordenes de Materiales','Ordenes de Compra de Materiales');
  finally
    QueryImagen.Destroy;
  end;

end;

procedure TfrmPedidos.Imprimir1Click(Sender: TObject);
var
   frxOrdenCompra : TfrxDBDataset;
begin
  try
     frmrepositorio.frxOrdenCompra.Clear;
      AsignarSQL(frmRepositorio.Reporte,'Reporte_OrdenCompra',pUpdate);
      FiltrarDataSet(frmRepositorio.Reporte,'Contrato,Folio,IdEmpresa',[global_contrato,anexo_ocompras.FieldValues['IdOrdenCompra'],connection.ucontrato.FieldByName('IdEmpresa').AsString]);
      frmRepositorio.Reporte.Open;

      frxOrdenCompra := TfrxDBDataset.Create(nil);
      frxOrdenCompra.DataSet    := frmRepositorio.Reporte;
      frxOrdenCompra.UserName   := 'frxOrdenCompra';
      frxOrdenCompra.FieldAliases.Clear;
      frxEntrada.DataSets.Add(frxOrdenCompra);

      frxEntrada.PreviewOptions.MDIChild := False;
      frxEntrada.PreviewOptions.Modal := True;
      frxEntrada.PreviewOptions.ShowCaptions := False;
      frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      frxEntrada.LoadFromFile(global_files + global_miReporte + '_COMP_OrdenCompra.fr3');

     if not FileExists(global_files + global_miReporte + '_COMP_OrdenCompra.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_COMP_OrdenCompra.fr3 no existe, notifique al administrador del sistema');
      frxPDFExport1.FileName := frmRepositorio.Reporte.FieldByName('Codigo').AsString;
      frxentrada.ShowReport();

    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al imprimir', 0);
      end;
    end;
end;

procedure TfrmPedidos.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmPedidos.GridPartidasCellClick(Column: TColumn);
begin
  if anexo_pocompras.RecordCount > 0 then
  begin
    tdCantidad.Value := anexo_pocompras.FieldValues['dCantidad'];
    tDescuentoMat.Value := anexo_pocompras.FieldValues['dDescuento'];
    tdCostoNuevo.Value := anexo_pocompras.FieldValues['dCosto'];
  end;

end;

procedure TfrmPedidos.frmBarra2btnAddClick(Sender: TObject);
var
  dFechaFinal: tDate;
begin
  try
    if not PanelDatos.Visible then
      PanelDatos.Visible:=True;
    PanelTopD.Visible:=True;

    OpcButton1 := 'New';

    frmBarraH11.btnAddClick(Sender);
    btnInfoD.Enabled := False;
    pgControl.ActivePageIndex := 0;
    cxSplitterD.Visible  := False;
    PanelDetalle.Visible := False;

    iIdFecha.SetFocus;
    Grid_Entradas.Enabled := False;
    anexo_ocompras.append;

    //Se inicializan datos del Array
    if AnteriorArray[1] <> '' then
    begin
        proveedores.Locate('IdProveedor', StrToInt(AnteriorArray[1]),[] );
        zqOrdenes.Locate('sNumeroOrden', AnteriorArray[2],[] );
        anexo_ocompras.FieldByName('sLugarEntrega').AsString :=AnteriorArray[3];
        anexo_ocompras.FieldByName('sPrecios').AsString      :=AnteriorArray[4];
        anexo_ocompras.FieldByName('sVigencia').AsString     :=AnteriorArray[5];
    end;

    requisiciones.Filtered := False;
    requisiciones.Filter := 'sStatus = "AUTORIZADO" ' ;
    requisiciones.Filtered := True;

    anexo_ocompras.FieldByName('sContrato').AsString := global_contrato;
    anexo_ocompras.FieldByName('Codigo').AsString := autofolio(anexo_ocompras,'anexo_pedidos');
    anexo_ocompras.FieldByName('dIdFecha').AsDateTime:= date;
    anexo_ocompras.FieldByName('dFechaEntrega').AsDateTime:= date;
    dFechaEntrega.OnExit(sender);
    cxRequisicion.DataBinding.DataSource.DataSet.FieldByName('iFolioRequisicion').AsInteger := requisiciones.FieldByName('iFolioRequisicion').AsInteger;
    cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger := proveedores.FieldByName('IdProveedor').AsInteger;
    idMoneda.DataBinding.DataSource.DataSet.FieldByName('IdMoneda').AsInteger :=  moneda.FieldByName('IdMoneda').AsInteger;

    cxFormaPago.DataBinding.DataSource.DataSet.FieldByName('IdFormaPago').AsInteger :=  forma_pago.FieldByName('IdFormaPago').AsInteger;
    sReferencia.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString :=  zqOrdenes.FieldByName('sNumeroOrden').AsString;

    cxCuenta.DataBinding.DataSource.DataSet.FieldByName('IdCuenta').AsInteger               :=  cuentas.FieldByName('IdCuenta').AsInteger;
    cxUsoCFDI.DataBinding.DataSource.DataSet.FieldByName('IdUso').AsInteger                 :=  UsoCFDI.FieldByName('IdUso').AsInteger;
    cxFormaPagoCFDI.DataBinding.DataSource.DataSet.FieldByName('IdFormaPagoCFDI').AsInteger :=  FormaPagoCFDI.FieldByName('IdFormaPago').AsInteger;
    cxFormaPagoCFDI.DataBinding.DataSource.DataSet.FieldByName('IdMetodoPago').AsInteger    :=  MetodoPagoCFDI.FieldByName('IdMetodoPago').AsInteger;

    cxProveedor.OnExit(sender);
    anexo_ocompras.FieldByName('iPeriodo').AsInteger := connection.uconfiguracion.FieldByName('iEjercicio').AsInteger;
    anexo_ocompras.FieldByName('dIva').AsFloat     := connection.ucontrato.FieldByName('Iva').AsFloat;
    anexo_ocompras.FieldByName('dRetencionIVA').AsFloat := connection.ucontrato.FieldByName('RetencionIva').AsFloat;
    anexo_ocompras.FieldByName('dDescuento').AsFloat := 0;
    anexo_ocompras.FieldByName('OtrosCargos').AsFloat := 0;
    anexo_ocompras.FieldByName('CotizacionInicial').AsFloat := 0;
    cxMultipleReq.Properties.ValueChecked := False;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al añadir registro', 0);
    end;
  end;
end;

procedure TfrmPedidos.frmBarra2btnEditClick(Sender: TObject);
begin
  if not dbg_ocVista.DataController.DataSource.DataSet.IsEmpty then begin
    try
      if anexo_ocompras.RecordCount > 0 then
      begin
        anexo_ocompras.RefreshRecord;
        if ((anexo_ocompras.FieldValues['sStatus'] = 'PENDIENTE') or (anexo_ocompras.FieldValues['sStatus'] = 'CANCELADO')) then
        begin
            if not PanelDatos.Visible then
               PanelDatos.Visible:=True;
            PanelTopD.Visible:=True;

            requisiciones.Filtered := False;
            requisiciones.Filter := 'sStatus = "AUTORIZADO" ' ;
            requisiciones.Filtered := True;

            OpcButton1 := 'Edit';
            frmBarraH11.btnEditClick(Sender);
            pgControl.ActivePageIndex := 0;
            anexo_ocompras.edit;
            cxRequisicion.SetFocus;
        end
        else
        begin
           messageDLG('La Orden de Compra se encuentra en Estatus: '+anexo_ocompras.FieldValues['sStatus'], mtInformation, [mbOk],0);
        end;
      end;
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al editar registro', 0);
      end;
    end;
  end;
end;

procedure TfrmPedidos.frmBarra2btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  RequisicionesSeleccionadas: TStringList;
begin

  nombres := TStringList.Create; cadenas := TStringList.Create;
  nombres.Add('Proveedor');
  nombres.Add('Referencia');
  nombres.Add('Moneda');
  nombres.Add('Lugar de Entrega');
  nombres.Add('Precio');
  nombres.Add('Vigencia');
  nombres.Add('Notas');
  nombres.Add('Proyecto');

  cadenas.Add(cxProveedor.Text);
  cadenas.Add(sReferencia.Text);
  cadenas.Add(idMoneda.Text);
  cadenas.Add(sLugarEntrega.Text);
  cadenas.Add(sPrecios.Text);
  cadenas.Add(sVigencia.Text);
  cadenas.Add(cxNota.Text);
  cadenas.Add(sReferencia.Text);

  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  //continuainserccion de datos
  try

    if cxRequisicion.Text = '' then
       anexo_ocompras.FieldByName('iFolioRequisicion').AsInteger := 0;

    if OpcButton1 = 'New' then
    begin
      with connection do
      begin

//        try
          connection.uUsuario.Locate('sIdUsuario', global_usuario, []);
          anexo_ocompras.FieldByName('sCondiciones').AsString := cxFormaPago.Text;
          anexo_ocompras.FieldByName('sElaboro').AsString     := global_usuario;
          anexo_ocompras.FieldByName('sStatus').AsString      := 'PENDIENTE';
          anexo_ocompras.FieldByName('sMail').AsString        := connection.uUsuario.FieldByName('sMail').AsString;
          anexo_ocompras.Post;
          creaNotyfi(1,'anexo_pedidos','Codigo',anexo_ocompras.FieldByName('Codigo').AsString,'Estatus','PENDIENTE',anexo_ocompras.FieldByName('dFechaEntrega').AsDateTime,30);
          isOpen := False;
          anexo_ocompras.cancel;
          anexo_ocompras.Refresh;
          isOPen := True;

          kardex_almacen('Crea Orden de Compra  No. [' + anexo_ocompras.FieldByName('Codigo').AsString + ']', 'Otros Movimientos');
          if TUniQuery(anexo_ocompras).Connection.InTransaction then
          begin
            TUniQuery(anexo_ocompras).Connection.Commit;
            TUniQuery(anexo_ocompras).Connection.AutoCommit := True;
          end;
          anexo_ocompras.cancel;
//        except
//          on e: exception do begin
//            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Ordenes de Compra', 'Al salvar registro', 0);
//          end;
//        end

         if global_frmActivo = 'frmBancosMovimientos' then
         begin
           try
             frmBancosMovimientos.zPedidos.Refresh;
             frmBancosMovimientos.cxOC.DataBinding.DataSource.DataSet.FieldByName('IdOrdenCompra').AsInteger := anexo_ocompras.FieldByName('IdOrdenCompra').AsInteger;
             frmBancosMovimientos.cxOC.SetFocus;
           Except
           end;

         end;
      end
    end
    else
      if OpcButton1 = 'Edit' then
      begin
        with connection do
        begin
          try
            anexo_ocompras.Post;

           kardex_almacen('Modifica Orden de Compra  No. [' +anexo_ocompras.FieldByName('Codigo').AsString + ']', 'Otros Movimientos');
           if TUniQuery(anexo_ocompras).Connection.InTransaction then
           begin
            TUniQuery(anexo_ocompras).Connection.Commit;
            TUniQuery(anexo_ocompras).Connection.AutoCommit := True;
           end;

          except
            on e: exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Ordenes de Compra', 'Al actualizar registro', 0);
            end;
          end
        end
      end;

    IsOpen := False;
    anexo_ocompras.cancel;
    anexo_ocompras.Refresh;
    SavePlace := dbg_ocVista.DataController.DataSource.DataSet.GetBookmark ;
    anexo_ocompras.Refresh;
    try
       dbg_OCVista.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
       requisiciones.Filtered := False;
       anexo_ocompras.Refresh;
    Except
    Else
       dbg_OCVista.DataController.DataSource.DataSet.FreeBookmark(SavePlace);
    end ;
    IsOpen := True;

    OpcButton1 := '';
    PanelTopD.Visible:=False;
    frmBarraH21.btnCancel.Click;
    global_frmActivo := '';



  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al salvar registro', 0);
    end;
  end;
  Grid_Entradas.Enabled := True;
end;

procedure TfrmPedidos.frmBarra2btnDeleteClick(Sender: TObject);
begin
  try
    anexo_ocompras.RefreshRecord;
    if ((anexo_ocompras.FieldValues['sStatus'] = 'PENDIENTE') or (anexo_ocompras.FieldValues['sStatus'] = 'CANCELADO')) then
    begin
      validaciones;
      if valida then
      begin
        exit;
      end;
      if anexo_ocompras.RecordCount > 0 then
        if MessageDlg('Desea eliminar la Orden de Compra seleccionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          kardex_almacen('Elimina Orden de Compra  No. [' + anexo_ocompras.FieldValues['Codigo'] + ']', 'Otros Movimientos');

          with connection do
          begin
            try

              //Eliminamos la orden de compraa..
              zUCommand.Active := False;
              zUCommand.SQL.Clear;
              zUCommand.SQL.Add('Delete from anexo_pedidos where sContrato = :Contrato And IdOrdenCompra = :Folio');
              zUCommand.Params.ParamByName('Contrato').DataType := ftString;
              zUCommand.Params.ParamByName('Contrato').value := Global_Contrato;
              zUCommand.Params.ParamByName('Folio').DataType := ftInteger;
              zUCommand.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['IdOrdenCompra'];
              zUCommand.ExecSQL;

              isOpen := False;
              SavePlace := anexo_ocompras.GetBookmark;
              anexo_ocompras.Refresh;

              try
                anexo_ocompras.GotoBookmark(SavePlace);
              except
              else
                anexo_ocompras.FreeBookmark(SavePlace);
              end;
              isOpen := True;
            except
              on e: exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Ordenes de Compra', 'Al eliminar registro', 0);
              end;
                       //MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
            end
          end
        end
    end
    else
    begin
        messageDLG('La Orden de Compra se encuentra en Estatus: '+anexo_ocompras.FieldValues['sStatus'], mtInformation, [mbOk],0);
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al eliminar registro', 0);
    end;
  end;
end;


procedure TfrmPedidos.frmBarra2btnRefreshClick(Sender: TObject);
begin
  try
    isOpen := False;
    anexo_ocompras.Refresh;
    anexo_pocompras.Refresh;
    isOpen := True;
    Proveedores.Refresh;
    zqOrdenes.Refresh;

    requisiciones.Params.ParamByName('Contrato').DataType := ftString;
    requisiciones.Params.ParamByName('Contrato').Value := global_contrato;
    requisiciones.Open;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al actualizar grid', 0);
    end;
  end;
end;

procedure TfrmPedidos.frmBarra2btnCancelClick(Sender: TObject);
begin
  try
    OpcButton1                := '';
    anexo_ocompras.cancel;
    frmBarraH11.btnActive;
    grid_entradas.enabled     := true;
    btnInfoD.Enabled := True;
    Grid_Entradas.SetFocus;

    requisiciones.Filtered := False;

    cxSplitter1.Visible:= False;
    PanelDatos.Visible := False;

    PanelTopD.Visible:=False;
    global_frmActivo := '';
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al cancelar registro', 0);
      requisiciones.Filtered := False;
    end;
  end;
end;

procedure TfrmPedidos.frmBarra2btnExitClick(Sender: TObject);
begin

  close
end;

procedure TfrmPedidos.Grid_InsumosViewCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    if insumos.RecordCount > 0 then
    begin
      if anexo_ocompras.FieldValues['iFolioRequisicion'] > 0 then
        tdCantidad.Value := insumos.FieldValues['dRequisicion']
      else
         tdCantidad.Value := 0;
      tdCostoNuevo.Value := insumos.FieldValues['dCosto'];
    end;
end;

procedure TfrmPedidos.idMonedaPropertiesChange(Sender: TObject);
begin
    resultadoSaldo;
end;

procedure TfrmPedidos.resultadoSaldo;
var
 salAnterior, dif : double;
zMonto : TUniQuery;
begin
    if (anexo_ocompras.State = dsInsert) or  (anexo_ocompras.State = dsEdit)then
  begin
       if Moneda.Locate('IdMoneda', idMoneda.EditValue,[]) then
     begin
      if  Moneda.FieldByName('IdMoneda').AsInteger = 1 then
       anexo_ocompras.FieldByName('TipoCambio').AsFloat :=Moneda.FieldByName('TipoCambio').AsFloat;

     if Moneda.FieldByName('IdMoneda').AsInteger = 2 then
       anexo_ocompras.FieldByName('TipoCambio').AsFloat := Moneda.FieldByName('TipoCambio').AsFloat;
     end;
  end;
end;

procedure TfrmPedidos.tabInformeShow(Sender: TObject);
begin
  opcionImprimir.EditValue := 1;
end;

procedure TfrmPedidos.GridPartidasGetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
    if anexo_pocompras.RecordCount > 0 then
    begin

      Afont.Style := [fsBold];
      AFont.Color := clBlue;

      if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'Pendiente' then
      begin
        Afont.Style := [];
        AFont.Color := clRed;
      end;
    end;
end;

procedure TfrmPedidos.pgControlChange(Sender: TObject);
begin
   if (anexo_ocompras.State = dsInsert ) or (anexo_ocompras.State = dsEdit) then
   begin
       anexo_ocompras.Cancel;
       frmBarraH21.btnCancelClick(Sender);
       grid_entradas.enabled     := true;
       Grid_Entradas.SetFocus;
   end;
end;

procedure TfrmPedidos.cxProveedorExit(Sender: TObject);
begin
    if (anexo_ocompras.State = dsInsert ) or (anexo_ocompras.State = dsEdit) then
    begin
       proveedores.Locate('IdProveedor',cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger,[]);
       anexo_ocompras.FieldByName('Correo').AsString    := proveedores.FieldByName('Correo').AsString;
       anexo_ocompras.FieldByName('sVendedor').AsString := proveedores.FieldByName('Contacto').AsString;
    end;
    cxProveedor.Style.Color := global_color_SalidaERP;
end;

procedure TfrmPedidos.cxRequisicionExit(Sender: TObject);
begin
   cxRequisicion.style.color := global_color_salidaERP;
   if anexo_ocompras.State = dsInsert then
   sReferencia.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString := requisiciones.FieldByName('sNumeroOrden').AsString;
end;

procedure TfrmPedidos.cxRequisicionPropertiesChange(Sender: TObject);
begin
   if not (cxRequisicion.EditValue=null) then
      if (anexo_ocompras.State=dsInsert)  then begin

        if  requisiciones.Locate('iFolioRequisicion',cxRequisicion.EditValue,[]) then
          anexo_ocompras.FieldByName('sNumeroOrden').AsString :=  requisiciones.FieldByName('sNumeroOrden').AsString;
      end;
end;



procedure TfrmPedidos.cxViewDetalleOCCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    if PanelMaterial.Visible = true then
    begin
        if anexo_pocompras.RecordCount > 0 then
           if anexo_pocompras.FieldByName('sStatus').AsString = 'Pendiente' then
              anexo_pocompras.Edit
           else
              messageDLG('No se puede modificar, el material se encuentra "Entregado"',mtInformation, [mbOk],0);
    end;
end;

procedure TfrmPedidos.cxViewDetalleOCCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
     if cxViewDetalleOC.OptionsView.CellAutoHeight then
       cxViewDetalleOC.OptionsView.CellAutoHeight := False
    else
       cxViewDetalleOC.OptionsView.CellAutoHeight := True;
end;

procedure TfrmPedidos.dbg_OCVistaCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   if anexo_ocompras.RecordCount > 0 then
   begin
       if isOpen then
          labelSeleccion.Caption:='Seleccionado: '+anexo_ocompras.FieldByName('Codigo').AsString;

       if PanelDetalle.Visible then
          orden_compra_scroll;

       //Se guardan datos para autollenar al insertar el valor anterior..
       AnteriorArray[1] := Inttostr(anexo_ocompras.FieldByName('IdProveedor').AsInteger);
       AnteriorArray[2] := anexo_ocompras.FieldByName('sNumeroOrden').AsSTring;
       AnteriorArray[3] := anexo_ocompras.FieldByName('sLugarEntrega').AsSTring;
       AnteriorArray[4] := anexo_ocompras.FieldByName('sPrecios').AsSTring;
       AnteriorArray[5] := anexo_ocompras.FieldByName('sVigencia').AsSTring;
   end;
   anexo_pocompras.Refresh;
end;

procedure TfrmPedidos.dbg_OCVistaDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  IsOpen := False;
end;

procedure TfrmPedidos.dbg_OCVistaDataControllerFilterChanged(Sender: TObject);
begin
  IsOpen:=True;
end;

procedure TfrmPedidos.dbg_OCVistaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (Key = VK_UP) or ( Key = VK_DOWN)  then
        if PanelDetalle.Visible then
          Orden_compra_scroll;
end;

procedure TfrmPedidos.cxButton1Click(Sender: TObject);
begin
   if (anexo_ocompras.State = dsInsert ) or (anexo_ocompras.State = dsEdit) then
   begin
       global_frmActivo := 'frm_pedidos';
       if not MostrarFormChild('frmPresupuesto', global_dxBarManagerPrincipal) then
       begin
           Application.CreateForm(TfrmPresupuesto, frmPresupuesto);
           frmPresupuesto.show;
       end;
   end;
end;

procedure TfrmPedidos.cxComprasxProveedorClick(Sender: TObject);
 var
   listaProv : String;
   frxOrdenCompra : TfrxDBDataset;
begin
    try
      AsignarSQL(frmRepositorio.Reporte,'reporte_comprasxproveedor',pUpdate);
      FiltrarDataSet(frmRepositorio.Reporte,'Contrato',[global_contrato]);
      frmRepositorio.Reporte.Open;

      frmRepositorio.Reporte.Filtered := False;
      if dbg_OCVista.DataController.Filter.FilterText <> '' then
         frmRepositorio.Reporte.Filter   := dbg_OCVista.DataController.Filter.FilterText + ' and (dIdFecha >='+QuotedStr(FechaSQL(FechaInicio.Date))+' and dIdFecha<= '+QuotedStr(FechaSQL(FechaFin.Date))+')'
      else
         frmRepositorio.Reporte.Filter   := ' (dIdFecha >='+QuotedStr(FechaSQL(FechaInicio.Date))+' and dIdFecha<= '+QuotedStr(FechaSQL(FechaFin.Date))+')';;
      frmRepositorio.Reporte.Filtered := True;

      frxOrdenCompra := TfrxDBDataset.Create(nil);
      frxOrdenCompra.DataSet    := frmRepositorio.Reporte;
      frxOrdenCompra.FieldAliases.Clear;
      frxEntrada.DataSets.Add(frxOrdenCompra);

      frxEntrada.PreviewOptions.MDIChild := False;
      frxEntrada.PreviewOptions.Modal := True;
      frxEntrada.PreviewOptions.ShowCaptions := False;
      frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      frxEntrada.LoadFromFile(global_files + global_miReporte + '_COMP_OCxProveedor.fr3');

     if not FileExists(global_files + global_miReporte + '_COMP_OCxProveedor.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_COMP_OCxProveedor.fr3 no existe, notifique al administrador del sistema');
      frxentrada.ShowReport();
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al imprimir', 0);
      end;
    end;

end;

procedure TfrmPedidos.cxCreaEntradaClick(Sender: TObject);
begin
    if anexo_ocompras.FieldByName('sStatus').AsString = 'AUTORIZADO' then
    begin
        Application.CreateForm(TFrmModal, FrmModal);
        frmModal.cxPageModal.ActivePage:=frmModal.cxTabEntrada;
        frmModal.cxPageModal.HideTabs:=True;
        FrmModal.show
    end
    else
       messageDLG('La Orden de Compra no está AUTORIZADA', mtInformation,[mbOk],0);
end;

procedure TfrmPedidos.cxCancelaMaterialClick(Sender: TObject);
begin
   anexo_pocompras.Cancel;
   PanelMaterial.Visible := False;
   cxSplitMaterial.Visible := False;
end;

procedure TfrmPedidos.cxCentroCostoxComprasClick(Sender: TObject);
 var
   listaProv : String;
   frxOrdenCompra : TfrxDBDataset;
   sParamFiltroFechaCentroC, sParamFiltroAgrupa : string;
begin
    try
      sParamFiltroFechaCentroC   := ' (FechaInicio >='+QuotedStr(FechaSQL(FechaInicio.Date))+' and FechaTermino<= '+QuotedStr(FechaSQL(FechaFin.Date))+')';;

      if cxCheckAgrupa.Checked then
         sParamFiltroAgrupa := ' sNumeroOrdenCentroC,NombreProveedor '
      else
         sParamFiltroAgrupa := ' sNumeroOrdenCentroC,NombreProveedor,IdOrdenCompra '  ;

      AsignarSQL(frmRepositorio.Reporte,'reporte_comprasxcentrocosto',pUpdate);
 //     FiltrarDataSet(frmRepositorio.Reporte,'Contrato,filter_by_code,var_by_code1',[global_contrato,sParamFiltroFechaCentroC,sParamFiltroAgrupa]);
      FiltrarDataSet(frmRepositorio.Reporte,'Contrato,var_by_code1',[global_contrato,sParamFiltroAgrupa]);
      frmRepositorio.Reporte.Open;

      frmRepositorio.Reporte.Filtered := False;
      if dbg_OCVista.DataController.Filter.FilterText <> '' then
         frmRepositorio.Reporte.Filter   := dbg_OCVista.DataController.Filter.FilterText + ' and (dIdFecha >='+QuotedStr(FechaSQL(FechaInicio.Date))+' and dIdFecha<= '+QuotedStr(FechaSQL(FechaFin.Date))+')'
      else
         frmRepositorio.Reporte.Filter   := ' (dIdFecha >='+QuotedStr(FechaSQL(FechaInicio.Date))+' and dIdFecha<= '+QuotedStr(FechaSQL(FechaFin.Date))+')';;
      frmRepositorio.Reporte.Filtered := True;


      frxOrdenCompra := TfrxDBDataset.Create(nil);
      frxOrdenCompra.DataSet    := frmRepositorio.Reporte;
      frxOrdenCompra.FieldAliases.Clear;
      frxEntrada.DataSets.Add(frxOrdenCompra);

      frxEntrada.PreviewOptions.MDIChild := False;
      frxEntrada.PreviewOptions.Modal := True;
      frxEntrada.PreviewOptions.ShowCaptions := False;
      frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      frxEntrada.LoadFromFile(global_files + global_miReporte + '_COMP_OCxCentroCosto.fr3');

     if not FileExists(global_files + global_miReporte + '_COMP_OCxCentroCosto.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_COMP_OCxCentroCosto.fr3 no existe, notifique al administrador del sistema');
      frxentrada.ShowReport();
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al imprimir', 0);
      end;
    end;

end;

procedure TfrmPedidos.cxGuardaMaterialClick(Sender: TObject);
begin
   anexo_pocompras.Post;
   cxCancelaMaterial.Click;
end;

procedure TfrmPedidos.cxGraficaPresupuestoClick(Sender: TObject);
var
   listaProv : String;
   frxOrdenCompra : TfrxDBDataset;
   sParamFiltroFechaCentroC : string;
begin
    try
      sParamFiltroFechaCentroC   := ' (FechaInicio >='+QuotedStr(FechaSQL(FechaInicio.Date))+' and FechaTermino<= '+QuotedStr(FechaSQL(FechaFin.Date))+')';;

      AsignarSQL(frmRepositorio.Reporte,'reporte_grafica_comprasxcentrocosto',pUpdate);
      FiltrarDataSet(frmRepositorio.Reporte,'Contrato,filter_by_code',[global_contrato,sParamFiltroFechaCentroC]);
      frmRepositorio.Reporte.Open;

      frmRepositorio.Reporte.Filtered := False;
      if dbg_OCVista.DataController.Filter.FilterText <> '' then
         frmRepositorio.Reporte.Filter   := dbg_OCVista.DataController.Filter.FilterText + ' and (dIdFecha >='+QuotedStr(FechaSQL(FechaInicio.Date))+' and dIdFecha<= '+QuotedStr(FechaSQL(FechaFin.Date))+')'
      else
         frmRepositorio.Reporte.Filter   := ' (dIdFecha >='+QuotedStr(FechaSQL(FechaInicio.Date))+' and dIdFecha<= '+QuotedStr(FechaSQL(FechaFin.Date))+')';;
      frmRepositorio.Reporte.Filtered := True;

      frxOrdenCompra := TfrxDBDataset.Create(nil);
      frxOrdenCompra.DataSet    := frmRepositorio.Reporte;
      frxOrdenCompra.FieldAliases.Clear;
      frxEntrada.DataSets.Add(frxOrdenCompra);

      frxEntrada.PreviewOptions.MDIChild := False;
      frxEntrada.PreviewOptions.Modal := True;
      frxEntrada.PreviewOptions.ShowCaptions := False;
      frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      frxEntrada.LoadFromFile(global_files + global_miReporte + '_COMP_GraficaOCxCentroCosto.fr3');

     if not FileExists(global_files + global_miReporte + '_COMP_GraficaOCxCentroCosto.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_COMP_GraficaOCxCentroCosto.fr3 no existe, notifique al administrador del sistema');
      frxentrada.ShowReport();
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al imprimir', 0);
      end;
    end;

end;

procedure TfrmPedidos.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  var
     AColumn : TcxCustomGridTableItem;
begin
    AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('sStatus');
    if VarToStr(ARecord.Values[AColumn.Index]) <> '' then
    begin
       if VarToStr(ARecord.Values[AColumn.Index]) = 'Entregado' then AStyle := connection.cxstylNiv3 ;
    end;
end;

procedure TfrmPedidos.cxMultipleReqPropertiesChange(Sender: TObject);
begin
    if cxMultipleReq.Properties.ValueChecked  then
    begin

     if anexo_ocompras.State = dsInsert then  begin
        anexo_pocompras.Filtered := false;
       end
       else begin
       if anexo_pocompras.FieldByName('TotalReqs').AsInteger = 1 then
       begin
          messageDLG('No se puede asignar una requisición, la Orden de Compra contiene multiples requisiciones', mtInformation, [mbOk],0);
          cxMultipleReq.Checked := False;
       end
       else
       begin
           cxRequisicion.DataBinding.DataSource.DataSet.FieldByName('iFolioRequisicion').AsInteger := 0;
       end;
       end;
    end;

end;

procedure TfrmPedidos.dFechaEntregaExit(Sender: TObject);
begin
    try
        if ((dFechaEntrega.Date - iIdFecha.Date)) > 0 then
        BEGIN
           cxEntrega.Text := FloatToStr((dFechaEntrega.Date - iIdFecha.Date)) + ' DIAS ';
           if ((anexo_ocompras.State in [dsInsert, dsEdit]) and (connection.uContrato.FieldByName('FK_Titulo').AsString='CMMI')) then
           anexo_ocompras.FieldByName('Prioridad').AsString := 'Normal';
        END
        else
        BEGIN
           cxEntrega.Text := 'MISMO DIA ' ;
           if ((anexo_ocompras.State in [dsInsert, dsEdit]) and (connection.uContrato.FieldByName('FK_Titulo').AsString='CMMI'))  then
           anexo_ocompras.FieldByName('Prioridad').AsString := 'Critica';

        END;
        anexo_ocompras.FieldByName('sEntrega').AsString := cxEntrega.Text;
    Except

    end;
end;

procedure TfrmPedidos.dxToggleSwitch1PropertiesChange(Sender: TObject);
begin
    if True then

end;

procedure TfrmPedidos.btnAddClick(Sender: TObject);
begin
  if ((anexo_ocompras.FieldValues['sStatus'] <> 'PENDIENTE') and (anexo_ocompras.FieldValues['sStatus'] <> 'CANCELADO')) then
  begin
     messageDLG('La Orden de Compra se encuentra en Estatus: '+anexo_ocompras.FieldValues['sStatus'], mtInformation, [mbOk],0);
     exit;
  end;
  validaciones;
  OpcButton := 'New';
  if valida then
  begin
    frmBarraH21.btnCancel.Click;
    exit;
  end;

  cxSplitter1.Visible:=False;
  PanelDatos.Visible:= False;

  if anexo_ocompras.FieldByName('iFolioRequisicion').AsInteger > 0 then
  begin
    AsignarSQL(insumos,'OC_lista_materiales_req',pUpdate);
    FiltrarDataSet(insumos,'Contrato,FolioReq',[global_contrato,anexo_ocompras.FieldValues['iFolioRequisicion']]);
    insumos.Open;
  end
  else
  begin
    AsignarSQL(insumos,'OC_lista_materiales_todos',pUpdate);
    FiltrarDataSet(insumos,'Contrato',[global_contrato]);
    insumos.Open;

    if insumos.RecordCount = 0 then
      messageDLG('No existen Materiales En el Catálogo', mtInformation, [mbOk], 0);
  end;

  insumos.Filtered := False;
  insumos.Filter   := 'dRequisicion <> dSumaCantidad ';
  insumos.Filtered := True;


  if (anexo_ocompras.RecordCount > 0) then
  begin
    tdCantidad.Value := 0;

    moneda.LocateEx('IdMoneda',anexo_ocompras.FieldByName('IdMoneda').AsInteger,[]);
    dxLayoutItem32.Caption := 'Precio '+moneda.FieldByName('Codigo').AsString;

  end;

  if anexo_pocompras.RecordCount > 0 then
  begin
    tdCantidad.Value := anexo_pocompras.FieldValues['dCantidad'];
    tDescuentoMat.Value := anexo_pocompras.FieldValues['dDescuento'];
    tdCostoNuevo.Value := anexo_pocompras.FieldValues['dCosto'];
  end
  else
  begin
    tdCantidad.Value := 0;
    tDescuentoMat.Value := 0;
    tdCostoNuevo.Value := 0;
  end;

  Grid_Insumos.Enabled:=True;
  Crear_Form(PanelInsumos, 'Catalogo de Materiales', 430, 1010, []);
end;


procedure TfrmPedidos.btnCancelClick(Sender: TObject);
begin
   PanelInsumos.Visible := False;
end;

procedure TfrmPedidos.btnCuentasClick(Sender: TObject);
begin
  if (anexo_ocompras.State = dsInsert ) or (anexo_ocompras.State = dsEdit) then
  begin
    GLOBAL_FRMACTIVO:='frmPedidos';

    if not MostrarFormChild('frmCatalogosAlmacen', global_dxBarManagerPrincipal) then
     begin
        Application.CreateForm(Tfrm_Empresa, frm_Empresa);
        frm_Empresa.show;
        frm_Empresa.btnEditClick(Sender);
        frm_Empresa.cxPageControl1.ActivePageIndex := 4;
     end;
  end;
end;

procedure TfrmPedidos.btnDeleteClick(Sender: TObject);
var
  SavePlace: TBookmark;
  indice, iGrid    : integer;
begin
    if ((anexo_ocompras.FieldValues['sStatus'] <> 'PENDIENTE') and (anexo_ocompras.FieldValues['sStatus'] <> 'CANCELADO')) then
    begin
       messageDLG('La Orden de Compra se encuentra en Estatus: '+anexo_ocompras.FieldValues['sStatus'], mtInformation, [mbOk],0);
       exit;
    end;
    if anexo_pocompras.FieldValues['sStatus'] = 'Entregado' then
    begin
      messageDLG('No se puede modificar el Material ya fue Entregado!', mtWarning, [mbOk], 0);
      exit;
    end;
    if connection.uContrato.FieldByName('FK_Titulo').AsString<>'CMMI' then
      validaciones;
    if valida then
    begin
      frmBarraH21.btnCancel.Click;
      exit;
    end;

    if anexo_pocompras.RecordCount > 0 then
    begin
        try
          iGrid     := 0;
          indice := cxViewDetalleOC.DataController.GetSelectedRowIndex(iGrid);
          cxViewDetalleOC.DataController.FocusedRowIndex := indice;
          SavePlace := anexo_pocompras.GetBookmark;

          with cxViewDetalleOC.DataController.DataSource.DataSet do
          for iGrid := 0 to cxViewDetalleOC.DataController.GetSelectedCount - 1 do
          begin
              indice := cxViewDetalleOC.DataController.GetSelectedRowIndex(iGrid);
              cxViewDetalleOC.DataController.FocusedRowIndex := indice;
              with connection do
              begin
                  zUCommand.Active := False;
                  zUCommand.SQL.Clear;
                  zUCommand.SQL.Add('Delete from anexo_ppedido where IdOrdenCompraDetalle =:Id');
                  zUCommand.Params.ParamByName('Id').AsInteger := cxViewDetalleOC.DataController.DataSet.FieldByName('IdOrdenCompraDetalle').AsInteger;
                  zUCommand.ExecSQL;

                  Connection.zUCommand.Active := False;
                  Connection.zUCommand.SQL.Clear;
                  Connection.zUCommand.SQL.Add('Update anexo_prequisicion set sEstado ='+Quotedstr( 'PENDIENTE')+' ' +
                    'WHERE  FIND_IN_SET(iFolioRequisicion,:Folio) and IdInsumo =:Insumo ');
                  Connection.zUCommand.Params.ParamByName('Folio').asInteger   := anexo_ocompras.FieldValues['iFolioRequisicion'];
                  Connection.zUCommand.Params.ParamByName('Insumo').AsInteger  := cxViewDetalleOC.DataController.DataSet.FieldByName('IdInsumo').AsInteger;
                  Connection.zUCommand.ExecSQL;

                  Requisiciones.Refresh;

              end
          end;
          anexo_pocompras.Refresh;

          try
            anexo_pocompras.GotoBookmark(SavePlace);
          except
          else
            anexo_pocompras.FreeBookmark(SavePlace);
          end;
       except
         on e: exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Ordenes de Compra', 'Al eliminar registro', 0);
         end;
       end;
    end;
    GridPartidas.SetFocus;

end;

procedure TfrmPedidos.btnDetalleClick(Sender: TObject);
begin
  cxSplitterD.Visible:=not cxSplitterD.Visible;
  PanelDetalle.Visible:= not PanelDetalle.Visible;


  if PanelDetalle.Visible = true then
     Orden_Compra_scroll;
  anexo_pocompras.Refresh;
end;

procedure TfrmPedidos.btnEditClick(Sender: TObject);
begin
  if ((anexo_ocompras.FieldValues['sStatus'] <> 'PENDIENTE') and (anexo_ocompras.FieldValues['sStatus'] <> 'CANCELADO')) then
  begin
     messageDLG('La Orden de Compra se encuentra en Estatus: '+anexo_ocompras.FieldValues['sStatus'], mtInformation, [mbOk],0);
     exit;
  end;


  if anexo_pocompras.FieldValues['sStatus'] = 'Entregado' then
  begin
    messageDLG('No se puede modificar el Material ya fue Entregado!', mtWarning, [mbOk], 0);
    exit;
  end;

  validaciones;
  if valida then
  begin
    frmBarraH21.btnCancel.Click;
    exit;
  end;

  cxSplitter1.Visible:=False;
  PanelDatos.Visible:= False;

  anexo_pocompras.Edit;

  PanelMaterial.Visible := True;
  cxSplitMaterial.Visible := True;
  cxEntregaMaterial.SetFocus;
end;

procedure TfrmPedidos.FormActivate(Sender: TObject);
begin
  Proveedores.Refresh;
end;


procedure TfrmPedidos.validaciones;
begin
  valida := False;
  connection.zUCommand.Active := False;
  connection.zUCommand.SQL.Clear;
  connection.zUCommand.SQL.Add('select iFolioEntrada from almacen_entrada where IdTipo=6 and iFolioMovimiento=:Odc and sContrato=:Contrato');
  connection.zUCommand.ParamByName('Contrato').AsString := global_contrato;
  connection.zUCommand.ParamByName('Odc').AsString := anexo_ocompras.FieldValues['IdOrdenCompra'];
  connection.zUCommand.Open;

  if connection.zUCommand.RecordCount > 0 then
  begin
    messageDLG(' La Orden de Compra ' + anexo_ocompras.FieldValues['Codigo'] + ' se encuentra enlazada a una Entrada', mtInformation, [mbOk], 0);
    valida := True;
  end;
end;

procedure TfrmPedidos.validaPedido;
begin
  connection.qryUBusca.Active := False;
  connection.qryUBusca.SQL.Clear;
  connection.qryUBusca.SQL.Add('select IdOrdenCompra from anexo_ppedido where sContrato =:Contrato and IdOrdenCompra =:Folio ');
  connection.qryUBusca.ParamByName('Contrato').AsString := global_contrato;
  connection.qryUBusca.ParamByName('Folio').AsInteger := iFolio;
  connection.qryUBusca.Open;

  if connection.qryUBusca.RecordCount > 0 then
    lValidaReq := True
  else
    lValidaReq := False;
end;


 procedure TfrmPedidos.frxEntradaGetValue(const VarName: string;
  var Value: Variant);
begin

  if CompareText(VarName, 'CANTIDAD_LETRA') = 0 then
  begin
     moneda.Locate('IdMoneda',anexo_ocompras.FieldByName('IdMoneda').AsInteger,[]);
     Value := LetraMontos(moneda.FieldByName('Codigo').AsString, moneda.FieldByName('MonedaCheque').AsString, anexo_ocompras.FieldByName('dMontoMN').AsFloat );
  end;

   if CompareText(VarName, 'FECHA_I') = 0 then
   begin
       Value := FechaInicio.Date
   end;

   if CompareText(VarName, 'FECHA_F') = 0 then
   begin
       Value := FechaFin.Date
   end;
end;

procedure TfrmPedidos.EnterControl(Sender: TObject);
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

procedure TfrmPedidos.SalidaControl(Sender: TObject);
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

procedure TfrmPedidos.Orden_Compra_scroll;
begin

    if anexo_ocompras.RecordCount > 0 then
    begin
        AsignarSQL(anexo_pocompras,'anexo_ppedido',pUpdate);
        FiltrarDataSet(anexo_pocompras,'Folio',[anexo_ocompras.FieldValues['IdOrdenCompra']]);
        anexo_pocompras.Open;

        if anexo_ocompras.FieldByName('iFolioRequisicion').AsInteger > 0 then
           cxMultipleReq.Properties.ValueChecked := True
        else
           cxMultipleReq.Properties.ValueChecked := False;
    end;
end;



end.

