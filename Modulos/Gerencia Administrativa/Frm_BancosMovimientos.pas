unit Frm_BancosMovimientos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,System.StrUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCurrencyEdit,
  cxContainer, cxSplitter, frm_barraH1, cxLabel, cxImage, cxDBEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, unitgenerales, frm_connection, global,
  MemDS, DBAccess, Uni, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, dxLayoutControl, ExportaExcel, cxGridExportLink, ShellApi,
  cxCalc, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, frxClass,
  frxDBSet, Vcl.CheckLst, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGroupBox, cxRadioGroup, dxBarBuiltInMenu, cxMemo, cxCalendar, cxPC, Math,
  Vcl.ComCtrls, dxCore, cxDateUtils, frm_barraH2, cxCheckBox, dxToggleSwitch,
  dxDBToggleSwitch, unitexcepciones, UnitMetodos, Vcl.DBCtrls, cxDBLabel,
  dxLayoutLookAndFeels, frxExportPDF, cxProgressBar;

type
  TfrmBancosMovimientos = class(TForm)
    PanelPresupuesto: TPanel;
    PanelTop: TPanel;
    cxLeyenda: TcxLabel;
    frmBarraH11: TfrmBarraH1;
    PanelCentral: TPanel;
    cxSplitterLateral: TcxSplitter;
    zBancos: TUniQuery;
    dsBancos: TDataSource;
    Reporte: TfrxReport;
    ds_Presupuesto: TfrxDBDataset;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    ds_otPresupuesto: TfrxDBDataset;
    PanelDatos: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxFormaPago: TcxDBLookupComboBox;
    cxTipoMovimiento: TcxDBLookupComboBox;
    cxProveedor: TcxDBLookupComboBox;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    PanelSuperior: TPanel;
    PanelCentralGrid: TPanel;
    cxTransaccion: TcxDBComboBox;
    cxSaldo: TcxDBCurrencyEdit;
    cxCambioDia: TcxDBCurrencyEdit;
    cxCantidad: TcxDBCurrencyEdit;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxReferencia: TcxDBTextEdit;
    dxCorreo: TdxDBToggleSwitch;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    cxMovimiento: TcxDBTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    dsMovimiento: TDataSource;
    zMovimiento: TUniQuery;
    Clientes: TUniQuery;
    dsClientes: TDataSource;
    Proveedores: TUniQuery;
    dsProveedores: TDataSource;
    dsFormasPago: TDataSource;
    zFormasPago: TUniQuery;
    cxSplitterDetalle: TcxSplitter;
    PanelDetalle: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabCFDI: TcxTabSheet;
    cxTabIndicadores: TcxTabSheet;
    cxTabPagoDetalle: TcxTabSheet;
    cxGridIndicadorDBTableView1: TcxGridDBTableView;
    cxGridIndicadorLevel1: TcxGridLevel;
    cxGridIndicador: TcxGrid;
    PanelMedioDetalle: TPanel;
    cxSplitterMedioDetalle: TcxSplitter;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    btnTipoMovimiento: TcxButton;
    btnProveedor: TcxButton;
    btnCliente: TcxButton;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    cxGridCFDIDBTableView1: TcxGridDBTableView;
    cxGridCFDILevel1: TcxGridLevel;
    cxGridCFDI: TcxGrid;
    cxClase: TcxDBLookupComboBox;
    cxOC: TcxDBLookupComboBox;
    cxDivision: TcxDBComboBox;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutItem32: TdxLayoutItem;
    dsOrdenesdetrabajo: TDataSource;
    zOrdenesdetrabajo: TUniQuery;
    zPedidos: TUniQuery;
    dsPedidos: TDataSource;
    zClase: TUniQuery;
    dsClase: TDataSource;
    btnClase: TcxButton;
    btnOC: TcxButton;
    btnProyectos: TcxButton;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    cxProyecto: TcxDBLookupComboBox;
    dxLayoutItem29: TdxLayoutItem;
    cxGridCFDIFecha: TcxGridDBColumn;
    cxGridCFDISerie: TcxGridDBColumn;
    cxGridCFDIFolio: TcxGridDBColumn;
    cxGridCFDIRFC: TcxGridDBColumn;
    cxGridCFDIDenominacion: TcxGridDBColumn;
    cxGridCFDITotal: TcxGridDBColumn;
    PanelDetalleT: TPanel;
    cxEliminarDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxNuevoDetalle: TcxButton;
    zIndicador: TUniQuery;
    dsIndicador: TDataSource;
    cxGridIndicadorProyecto: TcxGridDBColumn;
    cxGridIndicadorCotizacion: TcxGridDBColumn;
    cxGridIndicadorOC: TcxGridDBColumn;
    cxGridIndicadorClase: TcxGridDBColumn;
    cxGridIndicadorDivision: TcxGridDBColumn;
    zTipoMov: TUniQuery;
    dsTipoMov: TDataSource;
    cxFecha: TcxDBDateEdit;
    dxLayoutItem37: TdxLayoutItem;
    cxEmpleado: TcxDBLookupComboBox;
    cxMonto: TcxDBCurrencyEdit;
    dxLayoutItem39: TdxLayoutItem;
    cxMon: TdxLayoutItem;
    dsPersonal: TDataSource;
    zPersonal: TUniQuery;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxLayoutOfficeLookAndFeel1: TdxLayoutOfficeLookAndFeel;
    cxView_Movimiento: TcxGridDBTableView;
    grid_MovimientoLevel1: TcxGridLevel;
    grid_Movimiento: TcxGrid;
    cxView_MovNoMovimiento: TcxGridDBColumn;
    cxView_MovFecha: TcxGridDBColumn;
    cxView_MovTipoMov: TcxGridDBColumn;
    cxView_MovRFC: TcxGridDBColumn;
    cxView_MovRazonSocial: TcxGridDBColumn;
    cxView_MovComprobante: TcxGridDBColumn;
    cxView_MovFormaPago: TcxGridDBColumn;
    cxView_MovTipoCambio: TcxGridDBColumn;
    cxView_MovIngreso: TcxGridDBColumn;
    cxView_MovEgresoTraslado: TcxGridDBColumn;
    cxView_MovSaldo: TcxGridDBColumn;
    cxView_MovReferencia: TcxGridDBColumn;
    cxView_MovCorreoEnviado: TcxGridDBColumn;
    cxGridIndicadorResponsable: TcxGridDBColumn;
    cxGridIndicadorSaldo: TcxGridDBColumn;
    cxView_Detalle: TcxGridDBTableView;
    cxGridDetalleLevel1: TcxGridLevel;
    cxGridDetalle: TcxGrid;
    PanelDetallePago: TPanel;
    mComentarios: TcxDBMemo;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutItem38: TdxLayoutItem;
    cxUbicacion: TcxDBTextEdit;
    dxLayoutItem45: TdxLayoutItem;
    cxUbicar: TcxButton;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxView_DetalleBancoReceptor: TcxGridDBColumn;
    cxView_DetalleCuenta: TcxGridDBColumn;
    cxView_DetalleBeneficiario: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    zDetalleBanco: TUniQuery;
    dsDetalleBanco: TDataSource;
    zMoneda: TUniQuery;
    dsMoneda: TDataSource;
    zPagoDetalle: TUniQuery;
    dsPagoDetalle: TDataSource;
    cxView_DetalleComentarios: TcxGridDBColumn;
    View_movBanco: TcxGridDBTableView;
    cxGridBancoLevel1: TcxGridLevel;
    cxGridBanco: TcxGrid;
    View_movBancoBancos: TcxGridDBColumn;
    View_movBancoPeriodo: TcxGridDBColumn;
    frxEntrada: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxCambio: TcxDBCurrencyEdit;
    dxLayoutItem41: TdxLayoutItem;
    cxMonedaMov: TcxDBLookupComboBox;
    dxLayoutItem14: TdxLayoutItem;
    cxBancoMov: TcxDBLookupComboBox;
    dxLayoutItem43: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    PanelContiene: TPanel;
    cxSplitterDatos: TcxSplitter;
    dxLayoutControl1: TdxLayoutControl;
    cxEgresos: TcxCurrencyEdit;
    cxPeriodo: TcxComboBox;
    cxSaldoFinal: TcxCurrencyEdit;
    cxEjercicio: TcxComboBox;
    cxLabel1: TcxLabel;
    lBanco: TcxLabel;
    cxHostPing: TcxDBTextEdit;
    cxDispositivo: TcxDBTextEdit;
    cxBancaNet: TcxDBTextEdit;
    cxPassword: TcxDBTextEdit;
    cxTipoCambio: TcxDBCurrencyEdit;
    cxSaldoanterior: TcxCurrencyEdit;
    cxCorreo: TcxDBTextEdit;
    cxIngresos: TcxCurrencyEdit;
    cxCliente: TcxDBTextEdit;
    cxCLABE: TcxDBTextEdit;
    cxSucursal: TcxDBTextEdit;
    cxCuenta: TcxDBTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutItem51: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem48: TdxLayoutItem;
    dxLayoutItem49: TdxLayoutItem;
    dxLayoutItem50: TdxLayoutItem;
    dxLayoutItem54: TdxLayoutItem;
    cxMoneda: TcxDBLookupComboBox;
    dxLayoutItem52: TdxLayoutItem;
    View_movBancoCuentas: TcxGridDBColumn;
    btnBanco: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    Bancos2: TUniQuery;
    dsBancos2: TDataSource;
    mComprobante: TcxDBMemo;
    dxLayoutItem42: TdxLayoutItem;
    cxIdCliente: TcxDBLookupComboBox;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    IEgreso: TUniQuery;
    cxSaldoApertura: TcxDBCurrencyEdit;
    dxLayoutItem33: TdxLayoutItem;
    cxSplitter1: TcxSplitter;
    cxBeneficiario: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxCuentas: TcxDBCurrencyEdit;
    dxLayoutItem53: TdxLayoutItem;
    cxBanco: TcxDBTextEdit;
    dxLayoutItem56: TdxLayoutItem;
    cxCotizacion: TcxDBTextEdit;
    dxLayoutItem57: TdxLayoutItem;
    dlgPDF: TFileOpenDialog;
    cxButton1: TcxButton;
    dxLayoutItem47: TdxLayoutItem;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    zCfdi: TUniQuery;
    dsCfdi: TDataSource;
    dxLayoutItem55: TdxLayoutItem;
    cCheque: TcxDBCurrencyEdit;
    zcProveedor: TUniQuery;
    ds_cProveedor: TDataSource;
    cxCuentaBP: TcxDBLookupComboBox;
    dxLayoutItem58: TdxLayoutItem;
    cxGridCFDITipoCambio: TcxGridDBColumn;
    cxGridCFDITotalMXN: TcxGridDBColumn;
    cxGridCFDIProyecto: TcxGridDBColumn;
    cxGridCFDICotizacion: TcxGridDBColumn;
    cxGridCFDIOrdenCompra: TcxGridDBColumn;
    Panel1: TPanel;
    cxBajar: TcxButton;
    cxSubir: TcxButton;
    cxGridCFDIAbonos: TcxGridDBColumn;
    dxLayoutItem59: TdxLayoutItem;
    btnCotizacion: TcxButton;
    dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup;
    cxsgrid: TcxSplitter;
    PopupMenu2: TPopupMenu;
    CopiarRegistro: TMenuItem;
    InsertarRegistro1: TMenuItem;
    MoverRegistro1: TMenuItem;
    MoverAlFinal1: TMenuItem;
    dxLayoutControl5: TdxLayoutControl;
    btnFormCFDI: TcxButton;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutItem61: TdxLayoutItem;
    progreso: TcxProgressBar;
    LabelProceso: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnExportaClick(Sender: TObject);
    procedure cxView_MovimientoCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure View_movBancoCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BView_movBancoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxView_MovimientoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure cxComboTipoPropertiesChange(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure btnProveedorClick(Sender: TObject);
    procedure btnProyectosClick(Sender: TObject);
    procedure inicio;
    procedure pages;
    procedure PostBanco;
    procedure resultadoSaldo;
    procedure TraspasoEntreCuentas;
    procedure ChangeEjercicioPeriodo;
    procedure btnTipoMovimientoClick(Sender: TObject);
    procedure btnClaseClick(Sender: TObject);
    procedure btnOCClick(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure frmBarraH11btnAddClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxView_MovimientoCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxEliminarDetalleClick(Sender: TObject);
    procedure cxPageControl1Click(Sender: TObject);
    procedure banco_scroll;
    procedure movimiento_scroll;
    procedure frxEntradaGetValue(const VarName: string; var Value: Variant);
    procedure ComboTransacccion;
    procedure cxClienteExit(Sender: TObject);
    procedure cxMonedaMovPropertiesChange(Sender: TObject);
    procedure btnBancoClick(Sender: TObject);
    procedure cxPeriodoPropertiesChange(Sender: TObject);
    procedure cxEjercicioPropertiesChange(Sender: TObject);
    procedure cxCambioPropertiesChange(Sender: TObject);
    procedure cxSucursalExit(Sender: TObject);
    procedure cxCuentaExit(Sender: TObject);
    procedure cxCLABEExit(Sender: TObject);
    procedure cxSaldoAperturaExit(Sender: TObject);
    procedure cxMonedaExit(Sender: TObject);
    procedure cxTipoCambioExit(Sender: TObject);
    procedure cxCorreoExit(Sender: TObject);
    procedure cxBancaNetExit(Sender: TObject);
    procedure cxPasswordExit(Sender: TObject);
    procedure cxDispositivoExit(Sender: TObject);
    procedure cxHostPingExit(Sender: TObject);
    procedure zBancosBeforeEdit(DataSet: TDataSet);
    procedure zBancosAfterPost(DataSet: TDataSet);
    procedure cxCantidadPropertiesChange(Sender: TObject);
    procedure cxSaldoAperturaEnter(Sender: TObject);
    procedure zMovimientoBeforeEdit(DataSet: TDataSet);
    procedure zMovimientoAfterPost(DataSet: TDataSet);
    procedure cxUbicarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure mComprobanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mComprobantePropertiesEditValueChanged(Sender: TObject);
    procedure mComprobanteClick(Sender: TObject);
    procedure cxCuentaBPPropertiesChange(Sender: TObject);
    procedure cxSubirClick(Sender: TObject);
    procedure cxBajarClick(Sender: TObject);
    procedure cxView_MovNoMovimientoGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxEmpleadoPropertiesChange(Sender: TObject);
    procedure btnCotizacionClick(Sender: TObject);
    procedure CopiarRegistroClick(Sender: TObject);
    procedure InsertarRegistro1Click(Sender: TObject);
    procedure MoverRegistro1Click(Sender: TObject);
    procedure MoverAlFinal1Click(Sender: TObject);
    procedure cxProyectoPropertiesChange(Sender: TObject);
    procedure btnFormCFDIClick(Sender: TObject);


  private
    { Private declarations }
    dragBoxFromMouseDown : TRect;
    rowIndexFromMouseDown : Integer;
    rowIndexOfItemUnderMouseToDrop : Integer ;

  public
    { Public declarations }
        CFinanciamiento:Variant;
        IdOpen,IdMov : Integer;
        AbreComprobante : String;
        btnCotiz,btnNuevo,btnEditar:Boolean;
        rfc,FolioCotizacion,NombreDocto,Direccion : String;
        lCont,ComB,btnAg:Boolean;
        comp: String;
        slist: TStringList;
  end;

var
  frmBancosMovimientos: TfrmBancosMovimientos;
  btnPermisos, titulo, titulo2:String;
  IsOpen : Boolean = False;
  saldoInicial,diferencia, saldoAnterior : Double;
  salAnterior, dif, saldo : Double;
  //insercion en bancos movimientos
  IdComprobante,Codigo,FolioComprobante,Transaccion,Referencia,CorreoEnviado:String;
  IdMBanco,Folio,IdProveedor,IdCliente,IdBanco,IdTipoMovimiento,IdFormaPago,IdMoneda,IMovimiento:Integer;
  Monto,TotalCambio,TipoCambio,Saldos:Double;
  Fecha:TDateTime;
  AnteriorArray : array[1..12] of string;


implementation
  uses frm_agregar_masivoOP,Frm_Modal,frm_Presupuesto, UFrmCopiarPartidas,
  Frm_CostoPresupuesto, frm_clientes, frm_proveedores, frm_catalogos_almacen,
  frm_Pedidos, frm_repositorio, frm_Buscar, frm_ComprobantesFiscalesD,frm_VisualizaComprobanteFD;
{$R *.dfm}

procedure TfrmBancosMovimientos.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmBancosMovimientos.EnterControl(Sender: TObject);
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

procedure TfrmBancosMovimientos.SalidaControl(Sender: TObject);
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

    resultadoSaldo;
end;



procedure TfrmBancosMovimientos.btnAddClick(Sender: TObject);
begin
   if cxPageControl1.ActivePage = cxTabIndicadores then
   begin

     paneldown.Visible := True;
     cxSplitterMedioDetalle.Visible := True;
     PanelMedioDetalle.Visible := True;
   end;

end;

procedure TfrmBancosMovimientos.btnBancoClick(Sender: TObject);
begin
    if (zmovimiento.State = dsInsert ) or (zmovimiento.State = dsEdit) then
   begin
     global_frmActivo := 'frmBancosMovimientos';
     if not MostrarFormChild('frmBuscar', global_dxBarManagerPrincipal) then
     begin
       Application.CreateForm(TFrmBuscar, frmBuscar);
       frmBuscar.IdOpen := 3;
       frmBuscar.cxTabCliente.TabVisible:=False;
       frmBuscar.cxTabProveedor.TabVisible:=False;
       frmBuscar.cxTabBanco.TabVisible:=True;
       frmBuscar.cxTabBanco.Show;
       frmBuscar.Caption:='Búsqueda de bancos';
       if frmBuscar.ShowModal = mrOk then
       begin
         cxProveedor.Properties.ListSource := frmBuscar.dsBanco;
         dsMovimiento.DataSet.FieldByName('IdBanco').AsInteger:= frmBuscar.IdResult;
       end;
     end;
   end;
end;

procedure TfrmBancosMovimientos.btnCancelClick(Sender: TObject);
var
iValorNumerico   : LongInt  ;
Resultado        : Real     ;
monto:Double;
begin

  cxLeyenda.Caption:=titulo + '[Añadiendo]';
  frmBarraH11.btnAddClick(Sender);
  panelContiene.Visible:=False;
  cxSplitterDatos.Visible := False;
  grid_movimiento.Enabled:=False;

  cxLeyenda.Caption:=titulo;


  panelContiene.Visible:=False;
  cxSplitterDatos.Visible := False;
  frmBarraH11.btnActive;
  grid_movimiento.Enabled:=True;
  panel1.Visible:=True;
  cxsgrid.Visible:=True;
  try

    if zmovimiento.State = dsInsert then
    begin

      connection.qryUBusca2.Active:=False;
      AsignarSQL(connection.qryUBusca2,'cont_comprobantes_sa', pUpdate);
      FiltrarDataSet(connection.qryUBusca2, 'SerieFolio',[mComprobante.Text]);
      connection.qryUBusca2.Open;


      while not connection.qryUBusca2.Eof do
      begin
        connection.zUCommand.Active := False ;
        connection.zUCommand.SQL.Clear ;
        connection.zUCommand.SQL.Add ('update cont_comprobantes set Seleccionado = :Res where IdComprobanteFiscal = :Comprobante ') ;
        connection.zUCommand.Params.ParamByName('Res').AsString := 'No';
        connection.zUCommand.Params.ParamByName('Comprobante').AsInteger := connection.qryUBusca2.FieldByName('IdComprobanteFiscal').AsInteger;
        connection.zUCommand.ExecSQL  ;
        connection.qryUBusca2.Next;
      end;

    end;

    zmovimiento.Cancel;



      PermisosBotones(frmBancosMovimientos, btnPermisos);
   except
    on e : exception do
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimiento', 'Al cancelar', 0);
  end;
end;

procedure TfrmBancosMovimientos.btnClaseClick(Sender: TObject);
begin
   if (zIndicador.State = dsInsert ) or (zIndicador.State = dsEdit) then
   begin
       global_frmActivo := 'frmBancosMovimientos';
       if not MostrarFormChild('frmCatalogosAlmacen', global_dxBarManagerPrincipal) then
       begin
          Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
          frmCatalogosAlmacen.show;

       end;
   end;
end;

procedure TfrmBancosMovimientos.btnClienteClick(Sender: TObject);
begin

   global_frmActivo := 'frmBancosMovimientos';
   if not MostrarFormChild('frmBuscar', global_dxBarManagerPrincipal) then
   begin
     Application.CreateForm(TFrmBuscar, frmBuscar);
     frmBuscar.IdOpen := 1;
     frmBuscar.cxTabCliente.TabVisible:=True;
     frmBuscar.cxTabProveedor.TabVisible:=False;
     frmBuscar.cxTabBanco.TabVisible:=False;
     frmBuscar.cxTabCliente.Show;
     frmBuscar.Caption:='Búsqueda de Clientes';
     if frmBuscar.ShowModal = mrOk then
     begin
       cxIdCliente.Properties.ListSource := frmBuscar.dsCliente;
       dsMovimiento.DataSet.FieldByName('IdCliente').AsInteger:= frmBuscar.IdResult;

     end;
   end;

end;

procedure TfrmBancosMovimientos.btnCotizacionClick(Sender: TObject);
begin
  Application.CreateForm(TFrmModal, FrmModal);
  frmModal.Caption := 'Editar Cotizacion';
  frmModal.cxPageModal.ActivePage:=frmModal.cxTabCotDoc;
  frmModal.cxPageModal.HideTabs:=True;
  FrmModal.show;
  btnCotiz:=True;
end;

procedure TfrmBancosMovimientos.btnDeleteClick(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid,i    : integer;
    lContinua, lContratado : boolean;
    idEliminado, id : Integer;
    cantAnterior, idAnterior : Variant;
    SaldoActual:Double;
begin

  //buscamos que este
  lContratado := False;
  iGrid     := 0;
//  indice := cxView_Movimiento.DataController.GetSelectedRowIndex(iGrid);
//  cxView_Movimiento.DataController.FocusedRowIndex := indice;


  lcontinua := False;

   if cxView_Movimiento.DataController.GetSelectedCount > 0 then
   begin
    If MessageDlg('Desea eliminar  ('+IntToStr(cxView_Movimiento.DataController.GetSelectedCount)+') Registro(s) seleccionados del banco '+ zBancos.FieldByName('Banco').AsString+'?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       lcontinua := True;
   end
   else
      MessageDlg('Para eliminar, seleccione un registro del grid.',mtInformation, [mbOk],0);

   if lContinua then
   begin
      zActualiza:=tUniquery.create(nil);
      zActualiza.Connection := Connection.uConnection;

      iGrid     := 0;
//      // guardamos el id eliminado
//      idEliminado := zMovimiento.FieldByName('IdMovimiento').AsInteger ;
//
//      // guardamos el id del registro anterior al emilimado
//      idAnterior := zMovimiento.FieldByName('IdMovimiento').AsVariant - 1;


      with cxView_Movimiento.DataController.DataSource.DataSet do
      for iGrid := 0 to cxView_Movimiento.DataController.GetSelectedCount - 1 do
      begin
          indice := cxView_Movimiento.DataController.GetSelectedRowIndex(iGrid);
          cxView_Movimiento.DataController.FocusedRowIndex := indice;

        connection.qryUBusca2.Active:=False;
        AsignarSQL(connection.qryUBusca2,'cont_comprobantes_sa', pUpdate);
        FiltrarDataSet(connection.qryUBusca2, 'SerieFolio',[cxView_Movimiento.DataController.DataSet.FieldByName('FolioComprobante').AsString]);
        connection.qryUBusca2.Open;


        while not connection.qryUBusca2.Eof do
        begin
          connection.zUCommand.Active := False ;
          connection.zUCommand.SQL.Clear ;
          connection.zUCommand.SQL.Add ('update cont_comprobantes set Seleccionado = :Res where IdComprobanteFiscal = :Comprobante ') ;
          connection.zUCommand.Params.ParamByName('Res').AsString := 'No';
          connection.zUCommand.Params.ParamByName('Comprobante').AsInteger := connection.qryUBusca2.FieldByName('IdComprobanteFiscal').AsInteger;
          connection.zUCommand.ExecSQL  ;
          connection.qryUBusca2.Next;
        end;

          zActualiza.SQL.Clear;
          zActualiza.SQL.Add('delete from master_bancosmovimientos where IdMovimiento =:IdMovimiento');
          zActualiza.ParamByName('IdMovimiento').AsInteger := cxView_Movimiento.DataController.DataSet.FieldByName('IdMovimiento').AsInteger;
          zActualiza.ExecSQL;

//          zActualiza.SQL.Clear;
//          zActualiza.Active := False;
//          zActualiza.SQL.Text := ('select saldo from master_bancosmovimientos where idMovimiento =:Movimiento');
//          zActualiza.ParamByName('Movimiento').AsInteger:= idAnterior;
//          zactualiza.Open;
////        if (zMovimiento.FieldByName('IdMovimiento').AsInteger - 1) = idAnterior then begin
////          cantAnterior  := zactualiza.FieldByName('Saldo').AsFloat;
//
//          Id := zMovimiento.FieldByName('IdMovimiento').AsInteger + 2;
//
//          while (not zmovimiento.Eof) do
//          begin
//
//            if Id > zMovimiento.FieldByName('IdMovimiento').AsInteger then begin
//
//              zMovimiento.Edit;
//
//              zmovimiento.FieldByName('Saldo').AsFloat := zMovimiento.FieldByName('Saldo').AsFloat + zMovimiento.FieldByName('TotalCambio').AsFloat;
//
//              zmovimiento.Post;
//              zMovimiento.Next;
//            end;
//          end;


      end;

      cxView_Movimiento.DataController.ClearSelection;

      zMovimiento.Refresh;
      zMovimiento.ApplyUpdates();
      IEgreso.Refresh;

      zMovimiento.First;
      i:=1;
      while Not zMovimiento.Eof do
      begin

          if zMovimiento.FieldByName('Folio').AsInteger <> i then
          begin
            zMovimiento.Edit;
            zMovimiento.FieldByName('Folio').AsInteger := i;
            zMovimiento.Post;
          end;
        inc(i);
        zMovimiento.Next;
      end;
   end;

    zMovimiento.First;
  while Not zMovimiento.Eof do
  begin

    if zMovimiento.FieldByName('Folio').AsInteger = 1 then
    begin
      zMovimiento.Edit;
      zMovimiento.FieldByName('Saldo').AsFloat := (cxSaldoApertura.EditValue + zMovimiento.FieldByName('SaldoCliente').AsFloat) - zMovimiento.FieldByName('SaldoProv').AsFloat;
      zMovimiento.Post;
     SaldoActual:=zMovimiento.FieldByName('Saldo').AsFloat;
    end
    else begin
      zMovimiento.Edit;
      zMovimiento.FieldByName('Saldo').AsFloat := (SaldoActual + zMovimiento.FieldByName('SaldoCliente').AsFloat) - zMovimiento.FieldByName('SaldoProv').AsFloat;
      zMovimiento.Post;
      SaldoActual:=zMovimiento.FieldByName('Saldo').AsFloat;

    end;

      zMovimiento.Next;
  end;

end;

procedure TfrmBancosMovimientos.btnDetalleClick(Sender: TObject);
begin

  PanelDetalle.Visible:= not PanelDetalle.Visible;
  cxSplitterDetalle.Visible:=not cxSplitterDetalle.Visible;
  if PanelDetalle.Visible = True then
  begin
   pages;
  end;

end;

procedure TfrmBancosMovimientos.btnEditClick(Sender: TObject);
begin
    try

      zMovimiento.Edit;
      cxLeyenda.Caption:=titulo+'[Editando]';
      grid_movimiento.Enabled := True;
      frmBarraH11.btnActive;
      panel1.Visible:=False;
      cxsgrid.Visible:=False;
      panelContiene.Visible:=True;
      cxSplitterDatos.Visible := True;
      cxTransaccion.SetFocus;

    except
      on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos', 'Al editar registro', 0);
      end;
    end;
end;

procedure TfrmBancosMovimientos.btnExportaClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
  dlgSave : TSaveDialog;
begin

end;


procedure TfrmBancosMovimientos.btnFormCFDIClick(Sender: TObject);
begin
 Application.CreateForm(TfrmVisualizaComprobanteFD, frmVisualizaComprobanteFD);
 ComB:=true;
 frmVisualizaComprobanteFD.show;
end;

procedure TfrmBancosMovimientos.pages;
var
sal, sal2:Double;
salI:Integer;
begin

   if cxPageControl1.ActivePage = cxTabIndicadores then
   begin
     cxEliminarDetalle.Visible := True;
     cxEditaDetalle.Visible := True;
     cxNuevoDetalle.Visible := True;

     panelDown.Visible := False;
     if cxSplitterMedioDetalle.Visible then
     cxSplitterMedioDetalle.Visible := False
     else
     cxSplitterMedioDetalle.Visible := True;
     PanelMedioDetalle.Visible := False;

     zIndicador.Active := False;
     AsignarSQL(zIndicador,'movimiento_indicadores',pUpdate);
      FiltrarDataSet(zIndicador,'IdComprobanteCPP, Movimiento',[-1, cxView_Movimiento.DataController.DataSet.FieldByName('IdMovimiento').AsInteger]);
//     FiltrarDataSet(zIndicador,'IdIndicador, Movimiento',[-1, zMovimiento.FieldByName('IdMovimiento').AsInteger]);
     zIndicador.Open;

     zPersonal.Active := False;
     AsignarSQL(zPersonal,'master_personal_salida',pupdate);
     zPersonal.Open;

     zPedidos.Active := False ;
     AsignarSQL(zPedidos,'anexo_pedidos_indicadores',pUpdate);
     filtrarDataSet(zPedidos, 'Proveedor',[cxView_Movimiento.DataController.DataSet.FieldByName('IdProveedor').AsString]);
     zPedidos.Open;


   end
   else
   if cxPageControl1.ActivePage = cxTabPagoDetalle then
   begin
     cxEliminarDetalle.Visible := True;
     cxEditaDetalle.Visible := True;
     cxNuevoDetalle.Visible := True;

     panelDown.Visible := False;
     if cxSplitter1.Visible then
     cxSplitter1.Visible := False
     else
     cxSplitter1.Visible := True;
     PanelDetallePago.Visible := False;

     zPagoDetalle.Active := False;
     AsignarSQL(zPagoDetalle, 'movimiento_detallePago', pUpdate);
     FiltrarDataSet(zPagoDetalle,'DetallePago, Movimiento',[-1, zMovimiento.FieldByName('IdMovimiento').AsInteger]);
     zPagoDetalle.Open;

     zcProveedor.Active := False;
     AsignarSQL(zcProveedor,'master_proveedor_bancos',pupdate);
     FiltrarDataSet(zcProveedor, 'Activo,IdProveedor',['Si',cxView_Movimiento.DataController.DataSet.FieldByName('IdProveedor').AsString]);
     zcProveedor.Open;


//     panelDown.Visible := False;
//     PanelDetallePago.Visible := False;


   end
   else
   if cxPageControl1.ActivePage =  cxTabCFDI then
   begin
     cxNuevoDetalle.Visible := false;
     cxEditaDetalle.Visible := false;
     cxEliminarDetalle.Visible := false;

     panelDown.Visible := False;

     zCfdi.Active := False;
     AsignarSQL(zCfdi, 'cont_cfdi_detalle', pUpdate);
     FiltrarDataSet(zCfdi, 'IdComprobante,Movimiento',[zMovimiento.FieldByName('IdComprobante').AsString, zMovimiento.FieldByName('IdMovimiento').AsInteger]);
     zCfdi.Open;

   end;

end;


procedure TfrmBancosMovimientos.btnOCClick(Sender: TObject);
var
   frxOrdenCompra : TfrxDBDataset;
begin

end;

procedure TfrmBancosMovimientos.btnPostClick(Sender: TObject);
var
  Id  : Integer;
  ie, siCantMenor : String;
  zIdCompr,zInsert,zActualizar:TUniquery;
begin

  try
    cxLeyenda.Caption:=titulo;
    grid_movimiento.Enabled := True;
    frmBarraH11.btnActive;
    panelContiene.Visible := False;
    cxSplitterDatos.Visible := False;
    panel1.Visible:=True;
    cxsgrid.Visible:=True;
    zIdCompr:=tUniquery.create(nil);
    zIdCompr.Connection := connection.uConnection;

    labelProceso.Caption := 'Proceso: Guardando';
    BarraMostrar(True,progreso, LabelProceso);
    BarraProgresoAvance(Progreso, 0,0,0);
      zInsert:=tUniquery.create(nil);
      zInsert.Connection := connection.uConnection;

      zActualizar:=tUniquery.create(nil);
      zActualizar.Connection := connection.uConnection;

    if zMovimiento.State = dsEdit then begin

      if cxTransaccion.Text = 'Ingreso' then
        ie := 'i'
      else
        ie := 'e' ;

      if cxCambio.Value > saldo then  begin
        dif := cxCambio.Value - saldo;
        siCantMenor := 'Mayor';
      end
      else begin
        dif := saldo - cxCambio.Value;
        siCantMenor := 'Menor';
      end;

      zIdCompr.Active:=False;
      AsignarSQL(zIdCompr,'comprobante_movimiento_indicadores', pUpdate);
      FiltrarDataSet(zIdCompr,'Comprobante',[cxView_Movimiento.DataController.DataSource.DataSet.FieldByName('IdComprobante').AsString]);
      zIdCompr.Open;

      if zIdCompr.RecordCount>0 then  begin
        while (not zIdCompr.Eof) do
          begin
            zActualizar.Active:=False;
            AsignarSQL(zActualizar,'umovimiento_indicadores_id', pUpdate);
            FiltrarDataSet(zActualizar,'IdMovimiento,IdComprobante',[cxView_Movimiento.DataController.DataSource.DataSet.FieldByName('IdMovimiento').AsInteger,zIdCompr.FieldByName('IdComprobante').AsInteger]);
            zActualizar.ExecSQL;

            zIdCompr.Next;
          end;


      end
      else begin

        zIdCompr.Active:=False;
        AsignarSQL(zIdCompr,'idcomp_movimiento_indicadores', pUpdate);
        FiltrarDataSet(zIdCompr,'Comprobante',[cxView_Movimiento.DataController.DataSource.DataSet.FieldByName('IdComprobante').AsString]);
        zIdCompr.Open;
          if zIdCompr.RecordCount>0 then  begin
          while (not zIdCompr.Eof) do
            begin

              zInsert.Active:=False;
              AsignarSQL(zInsert,'ins_movimiento_indicadores_id', pUpdate);
              FiltrarDataSet(zInsert,'IdMovimiento,IdComprobante',[cxView_Movimiento.DataController.DataSet.FieldByName('IdMovimiento').AsInteger,zIdCompr.FieldByName('IdComprobanteFiscal').AsString]);
              zInsert.ExecSQL;

              zIdCompr.Next;
            end;
        end

      end;

      while (not zmovimiento.Eof) do
      begin
          Id := zMovimiento.FieldByName('IdMovimiento').AsInteger + 1;

          if Id > zMovimiento.FieldByName('IdMovimiento').AsInteger then begin

            zMovimiento.Edit;

            if (ie = 'i') and (siCantMenor = 'Mayor') then
              zmovimiento.FieldByName('Saldo').AsFloat := zMovimiento.FieldByName('Saldo').AsFloat + dif;

            if (ie = 'e') and (siCantMenor = 'Mayor')  then
              zmovimiento.FieldByName('Saldo').AsFloat := zMovimiento.FieldByName('Saldo').AsFloat - dif ;

            if (ie = 'i') and (siCantMenor = 'Menor') then
              zmovimiento.FieldByName('Saldo').AsFloat := zMovimiento.FieldByName('Saldo').AsFloat - dif ;

            if  (ie = 'e') and (siCantMenor = 'Menor')then
              zmovimiento.FieldByName('Saldo').AsFloat := zMovimiento.FieldByName('Saldo').AsFloat + dif ;

            zmovimiento.Post;
            zMovimiento.Next;
          end;
      end;
    end;

    BarraProgresoAvance(Progreso, 0,100,50);

    if (zMovimiento.State = dsInsert) or (zMovimiento.State = dsEdit) then begin
      zMovimiento.Post;
      zMovimiento.Refresh;

      zIdCompr.Active:=False;
      AsignarSQL(zIdCompr,'comprobante_movimiento_indicadores', pUpdate);
      FiltrarDataSet(zIdCompr,'Comprobante',[cxView_Movimiento.DataController.DataSource.DataSet.FieldByName('IdComprobante').AsString]);
      zIdCompr.Open;

      if zIdCompr.RecordCount>0 then  begin
        while (not zIdCompr.Eof) do
          begin
            zActualizar.Active:=False;
            AsignarSQL(zActualizar,'umovimiento_indicadores_id', pUpdate);
            FiltrarDataSet(zActualizar,'IdMovimiento,IdComprobante',[cxView_Movimiento.DataController.DataSource.DataSet.FieldByName('IdMovimiento').AsInteger,zIdCompr.FieldByName('IdComprobanteFiscal').AsInteger]);
            zActualizar.ExecSQL;

            zIdCompr.Next;
          end;


      end
      else begin

        zIdCompr.Active:=False;
        AsignarSQL(zIdCompr,'idcomp_movimiento_indicadores', pUpdate);
        FiltrarDataSet(zIdCompr,'Comprobante',[cxView_Movimiento.DataController.DataSource.DataSet.FieldByName('IdComprobante').AsString]);
        zIdCompr.Open;
          if zIdCompr.RecordCount>0 then  begin
          while (not zIdCompr.Eof) do
            begin

              zInsert.Active:=False;
              AsignarSQL(zInsert,'ins_movimiento_indicadores_id', pUpdate);
              FiltrarDataSet(zInsert,'IdMovimiento,IdComprobante',[cxView_Movimiento.DataController.DataSet.FieldByName('IdMovimiento').AsInteger,zIdCompr.FieldByName('IdComprobanteFiscal').AsString]);
              zInsert.ExecSQL;

              zIdCompr.Next;
            end;
        end

      end;
    end;

    BarraProgresoAvance(Progreso, 0,100,100);
    BarraMostrar(False,progreso, LabelProceso);
    IEgreso.Refresh;


    TraspasoEntreCuentas;
    zMovimiento.Refresh;
    BarraMostrar(False,progreso, LabelProceso);
    PermisosBotones(frmBancosMovimientos,btnPermisos);

  except
    on E : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimiento', 'Al guardar registro', 0);
    end;
  end;

end;

procedure TfrmBancosMovimientos.TraspasoEntreCuentas;
var
  traspaso, zFolios, zSaldo : TUniQuery;
  id : Integer;
begin

    traspaso := tUniQuery.Create(Self);
    traspaso.Connection := connection.uConnection;

    zSaldo := tUniQuery.Create(Self);
    zSaldo.Connection := connection.uConnection;

    zFolios:=tUniquery.create(nil);
    zFolios.Connection := Connection.uConnection;
    zFolios.Active := False;
    zFolios.SQL.Text := 'select IfNull((max(Folio)),0)+1  as Folios'+
    ' from master_bancosmovimientos '+
    'where IdMBanco = :Banco';
    zFolios.ParamByName('Banco').AsInteger :=  zMovimiento.FieldByName('IdBanco').AsInteger;//zBancos.FieldByName('IdMBanco').AsInteger;
    zFolios.Open;

    if cxTransaccion.Text = 'Traspaso' then begin

        traspaso.Active := False;
        traspaso.SQL.Clear;
        traspaso.SQL.Add('INSERT INTO master_bancosmovimientos (IdMovimiento,IdMBanco,Codigo,Folio,IdProveedor,IdCliente,IdBanco,'+
        ' IdTipoMovimiento, IdFormaPago, IdMoneda, TipoCambio, Comprobante,Transaccion, Fecha, Monto, TotalCambio,'+
        'Saldo, Referencia, CorreoEnviado)'+
        'VALUES(0,:IdMBanco,:Codigo,:Folio,0,0, :IdBanco, :IdTipoMovimiento, :IdFormaPago, :IdMoneda,'+
        ':TipoCambio,:Comprobante, :Transaccion, :Fecha, :Monto, :TotalCambio, :Saldo, :Referencia, :CorreoEnviado)');

        traspaso.ParamByName('IdMBanco').AsInteger := zMovimiento.FieldByName('IdBanco').AsInteger;
        Id := traspaso.ParamByName('IdMBanco').AsInteger;
        traspaso.ParamByName('Codigo').AsString := autoFolio(zMovimiento,'master_bancosmovimientos',0,0);

        traspaso.ParamByName('Folio').AsInteger:= zFolios.FieldByName('Folios').AsInteger;
        if zBancos.Locate('IdMBanco',zMovimiento.FieldByName('IdMBanco').AsInteger,[]) then
          traspaso.ParamByName('IdBanco').AsInteger := zBancos.FieldByName('IdMBanco').AsInteger;
        if zTipoMov.Locate('IdTipoMovimiento',zMovimiento.FieldByName('IdTipoMovimiento').AsInteger,[]) then
          traspaso.ParamByName('IdTipoMovimiento').AsInteger := zTipoMov.FieldByName('IdTipoMovimiento').AsInteger;
        if zFormasPago.Locate('IdFormaPago',zMovimiento.FieldByName('IdFormaPago').AsInteger,[]) then
          traspaso.ParamByName('IdFormaPago').AsInteger := zFormasPago.FieldByName('IdFormaPago').AsInteger;
        if zMoneda.Locate('IdMoneda',zBancos.FieldByName('IdMoneda').AsInteger,[]) then
          traspaso.ParamByName('IdMoneda').AsInteger := zMoneda.FieldByName('IdMoneda').AsInteger;
        if zBancos.Locate('TipoCambio',cxCambioDia.EditingValue,[]) then
          traspaso.ParamByName('TipoCambio').AsFloat := zBancos.FieldByName('TipoCambio').AsFloat;
        traspaso.ParamByName('Comprobante').AsString := '';
        traspaso.ParamByName('Transaccion').AsString := 'Ingreso';
        traspaso.ParamByName('Fecha').AsDate:= now();
        traspaso.ParamByName('Monto').AsFloat := cxCantidad.Value;
        if zMoneda.Locate('IdMoneda', cxMonedaMov.EditValue,[]) then
        begin
        if  zMoneda.FieldByName('IdMoneda').AsInteger = 1 then
           traspaso.ParamByName('TotalCambio').AsFloat  := zMovimiento.FieldByName('Monto').AsFloat/zMovimiento.FieldByName('TipoCambio').AsFloat;

        if zMoneda.FieldByName('IdMoneda').AsInteger = 2 then
           traspaso.ParamByName('TotalCambio').AsFloat  := zMovimiento.FieldByName('Monto').AsFloat*zMovimiento.FieldByName('TipoCambio').AsFloat;
        end;

        zSaldo.Active := False;
        zSaldo.SQL.Clear;
        zSaldo.SQL.Text := ('Select mb.Saldo, IFNULL((select sum(m.totalCambio) from master_bancosmovimientos m '+
        'inner join rh_master_bancos hb on (hb.IdMBanco = m.IdMBanco) '+
        'where m.IdMBanco = :Banco and m.Transaccion = '+Quotedstr('Ingreso')+'),0) as Ingreso, '+
        'if(mb.Saldo is not null, mb.Saldo,0)as SaldoB, '+
        '(select SaldoB + Ingreso) as TIngreso, '+
        'IFNULL((select sum(m.totalCambio)as total from master_bancosmovimientos m '+
        'inner join rh_master_bancos hb on (hb.IdMBanco = m.IdMBanco) '+
        'where m.IdMBanco = :Banco and (m.Transaccion = '+Quotedstr('Egreso')+' or m.Transaccion = '+Quotedstr('Traspaso')+')),0) as TEgreso, '+
        'if((select TIngreso - TEgreso)<0, 0, (select TIngreso - TEgreso))  as SaldoFinal '+
        'from master_bancosmovimientos as bm '+
        'inner join rh_master_bancos mb on (mb.IdMBanco = :Banco) '+
        ' where (:Banco = -1 or (:Banco <> -1 and bm.IdMBanco = :Banco))');
        zSaldo.ParamByName('Banco').AsInteger := Id;
        zSaldo.Open;

        zFolios.SQL.Clear;
        zFolios.SQL.Text := 'select saldo from rh_master_bancos '+
        'where (:Banco = -1 or (:Banco <> -1 and IdMBanco = :Banco))';
        zFolios.ParamByName('Banco').AsInteger := id;
        zFolios.Open;

        if zFolios.ParamByName('Banco').AsInteger =  zMovimiento.FieldByName('IdBanco').AsInteger then begin
            if zSaldo.RecordCount = 0 then
              traspaso.ParamByName('Saldo').AsFloat := zFolios.FieldByName('Saldo').AsFloat + cxCambio.Value
            else
              traspaso.ParamByName('Saldo').AsFloat := zSaldo.FieldByName('SaldoFinal').AsFloat + cxCambio.Value;

        end;
        traspaso.ParamByName('Referencia').AsString := '';
        traspaso.ParamByName('CorreoEnviado').AsString := 'No';
        traspaso.ExecSQL;

    end;
    traspaso.Destroy;
    zSaldo.Destroy;
    zFolios.Destroy;
end;

procedure TfrmBancosMovimientos.btnProveedorClick(Sender: TObject);
begin
 if not MostrarFormChild('frmBuscar', global_dxBarManagerPrincipal) then
     begin
       Application.CreateForm(TFrmBuscar, frmBuscar);
       frmBuscar.IdOpen := 2;
       frmBuscar.cxTabCliente.TabVisible:=False;
       frmBuscar.cxTabProveedor.TabVisible:=True;
       frmBuscar.cxTabBanco.TabVisible:=False;
       frmBuscar.cxTabProveedor.Show;
       frmBuscar.Caption:='Búsqueda de Proveedores';
       frmBuscar. showmodal;
       if (zmovimiento.State = dsInsert ) or (zmovimiento.State = dsEdit) then
       begin

           if btnAg then
           begin
             cxProveedor.Properties.ListSource := frmBuscar.dsProveedor;
             dsMovimiento.DataSet.FieldByName('IdProveedor').AsInteger:= frmBuscar.IdResult;

           end;

       end;
     end;
end;

procedure TfrmBancosMovimientos.btnProyectosClick(Sender: TObject);
begin
   if (zIndicador.State = dsInsert ) or (zIndicador.State = dsEdit) then
   begin
       global_frmActivo := 'frmBancosMovimientos';
       if not MostrarFormChild('frmPresupuesto', global_dxBarManagerPrincipal) then
       begin
          Application.CreateForm(TfrmPresupuesto, frmPresupuesto);
          frmPresupuesto.show;
       end;
   end;
end;

procedure TfrmBancosMovimientos.btnRefreshClick(Sender: TObject);
begin

  // zDetalle.Refresh;
   zbancos.Refresh;
   zMovimiento.Refresh;
   Clientes.Refresh;
   proveedores.Refresh;

end;



procedure TfrmBancosMovimientos.btnTipoMovimientoClick(Sender: TObject);
begin
   if (zmovimiento.State = dsInsert ) or (zmovimiento.State = dsEdit) then
   begin
       global_frmActivo := 'frmBancosMovimientos';
       if not MostrarFormChild('frmCatalogosAlmacen', global_dxBarManagerPrincipal) then
       begin
          Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
          frmCatalogosAlmacen.show;
       end;
   end;
end;

procedure TfrmBancosMovimientos.View_movBancoCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

   if zbancos.RecordCount > 0 then
   begin
     inicio;
     banco_scroll;
   end;
end;

procedure TfrmBancosMovimientos.zBancosAfterPost(DataSet: TDataSet);
begin
  diferencia := zBancos.FieldByName('Saldo').AsFloat - SaldoInicial ;
  zMovimiento.First;
  while (not zmovimiento.Eof) do
  begin
    zMovimiento.Edit;
    zmovimiento.FieldByName('Saldo').AsFloat := zMovimiento.FieldByName('Saldo').AsFloat + diferencia;

    zmovimiento.Post;
     zMovimiento.Next;
  end;


end;

procedure TfrmBancosMovimientos.zBancosBeforeEdit(DataSet: TDataSet);
begin
  SaldoInicial := zbancos.FieldByName('Saldo').AsFloat;
end;

procedure TfrmBancosMovimientos.zMovimientoAfterPost(DataSet: TDataSet);
begin
//  dif := zMovimiento.FieldByName('Saldo').AsFloat - saldo;
//  zMovimiento.First;
//  while (not zmovimiento.Eof) do
//  begin
//    zMovimiento.Edit;
//    zmovimiento.FieldByName('Saldo').AsFloat := zMovimiento.FieldByName('Saldo').AsFloat + dif;
//
//    zmovimiento.Post;
//     zMovimiento.Next;
//  end;
end;

procedure TfrmBancosMovimientos.zMovimientoBeforeEdit(DataSet: TDataSet);
begin
  saldo := zMovimiento.FieldByName('Monto').AsFloat;
end;

procedure TfrmBancosMovimientos.BView_movBancoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Key = VK_UP) or ( Key = VK_DOWN)  then
       banco_scroll;

end;


procedure TfrmBancosMovimientos.cxView_MovimientoCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
//   movimiento_scroll;
pages;

end;

Procedure TfrmBancosMovimientos.banco_scroll;
begin
   zMovimiento.Active := False;
   AsignarSQL(zMovimiento, 'master_bancosmovimientos', pUpdate);
   FiltrarDataSet(zMovimiento, 'Movimiento,Banco', [-1,zbancos.FieldByName('IdMBanco').AsInteger]);
   zMovimiento.Open;

   IEgreso.Active := False ;
   AsignarSQL(IEgreso,'ingreso-egreso',pUpdate);
   filtrarDataSet(IEgreso, 'Movimiento,Banco,FMes',['-1',zbancos.FieldByName('IdMBanco').AsInteger,cxPeriodo.Text]);
   IEgreso.Open;
   cxView_Movimiento.ViewData.GridView;
end;

function SelectWordUnderCaret(AMemo:TcxDBMemo):string;
var
   Line    : Integer;
   Column  : Integer;
   LineText: string;
   InitPos : Integer;
   EndPos  : Integer;
begin
   //Get the caret position
   //Line   := AMemo.Perform(AMemo.Handle,AMemo.SelStart, 0) ;
   Line   := AMemo.Perform(EM_LINEFROMCHAR,AMemo.SelStart, 0) ;
   Column := AMemo.SelStart - AMemo.Perform(EM_LINEINDEX, Line, 0);
   //Validate the line number
   if AMemo.Lines.Count-1 < Line then Exit;

   //Get the text of the line
   LineText := AMemo.Lines[Line];

   Inc(Column);
   InitPos := Column;
   //search the initial position using the space symbol as separator
   while (InitPos > 0) and ( (LineText[InitPos] <> ','))do
   Dec(InitPos);
   Inc(Column);

   EndPos := Column;
   //search the final position using the space symbol as separator
   while (EndPos <= Length(LineText)) and (LineText[EndPos] <> ',') do
   Inc(EndPos);

   //Get the text
   Result := Trim(Copy(LineText, InitPos, EndPos - InitPos));

   //Finally select the text in the Memo
   AMemo.SelStart  := AMemo.Perform(EM_LINEINDEX, Line, 0)+InitPos;
   AMemo.SelLength := Length(Result);
end;

procedure TfrmBancosMovimientos.mComprobanteClick(Sender: TObject);
var
  Caption:String;
begin
 Caption := SelectWordUnderCaret(mComprobante) ;
end;

procedure TfrmBancosMovimientos.mComprobanteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var
  i,j, LineStart, LineLen: Integer;
  dl,sl, ResultList: TStringList;

   Str: ansistring;
   Found: Boolean;
   Text:String;
   iValorNumerico   : LongInt  ;
   Resultado        : Real     ;
   monto:Double;
begin
   if key = 8 then  begin
          if (mComprobante.SelText <> '') then BEGIN
           Text:=mComprobante.SelText;
           mComprobante.SelText:=''
          END;
//        mComprobante.SelText:=''
           if Text <> '' then begin

             connection.qryUBusca2.Active:=False;
             AsignarSQL(connection.qryUBusca2,'cont_comprobantes_sa', pUpdate);
             FiltrarDataSet(connection.qryUBusca2, 'SerieFolio',[Text]);
             connection.qryUBusca2.Open;

             connection.qryUBusca.Active:=False;
             AsignarSQL(connection.qryUBusca,'cont_comprobantes_sa', pUpdate);
             FiltrarDataSet(connection.qryUBusca, 'SerieFolio',[mComprobante.Text]);
             connection.qryUBusca.Open;


             while not connection.qryUBusca2.Eof do
             begin
                 connection.zUCommand.Active := False ;
                 connection.zUCommand.SQL.Clear ;
                 connection.zUCommand.SQL.Add ('update cont_comprobantes set Seleccionado = :Res where IdComprobanteFiscal = :Comprobante ') ;
                 connection.zUCommand.Params.ParamByName('Res').AsString := 'No';
                 connection.zUCommand.Params.ParamByName('Comprobante').AsInteger := connection.qryUBusca2.FieldByName('IdComprobanteFiscal').AsInteger;
                 connection.zUCommand.ExecSQL  ;
                 connection.qryUBusca2.Next;
             end;

              while not connection.qryUBusca.Eof do
             begin
                 iValorNumerico   := Trunc(connection.qryUBusca.FieldByName('Saldo').AsFloat) ;
                 Resultado := roundto(connection.qryUBusca.FieldByName('Saldo').AsFloat - iValorNumerico, -2) ;
                 Resultado := Resultado + iValorNumerico;

                 monto:=monto + abs(Resultado);
                 //monto:=cxCantidad.EditValue - Resultado;

                connection.qryUBusca.Next;
             end;

           end;
           if (zMovimiento.State = dsInsert ) or (zMovimiento.State = dsEdit) then
           zMovimiento.FieldByName('Monto').AsFloat:= monto;
      end;






  end;




procedure TfrmBancosMovimientos.mComprobantePropertiesEditValueChanged(
  Sender: TObject);
var
  i: Integer;
  sl: TStringList;
begin
//  sl := TStringList.Create;
//  slist := TStringList.Create;
//  try
//    sl.Text := mComprobante.Text;
//    for i := 0 to sl.Count - 1 do
//    sl[i] := Copy(sl[i], 1, Length(sl[i]));
//     // sl[i] := Copy(sl[i], 1, Length(sl[i]) - 4);
//   // mComprobante.Text := sl.Text;
//
//   sl.Text;
//   slist.Text:=sl.Text;
//  finally
//    sl.Free;
//  end;


end;

procedure TfrmBancosMovimientos.MoverAlFinal1Click(Sender: TObject);
var
  posActual,i: Integer;
  posIntercambio: Integer;
  lastPos: Integer;
  bm: TBookmark;
  zFolios,zActualizar,zInsert,zIdCompr:TUniquery;
  Int,Int2:Integer;
  SaldoActual:Double;
begin

  zIdCompr:=tUniquery.create(nil);
  zIdCompr.Connection := connection.uConnection;
  zIdCompr.Active:=False;
  AsignarSQL(zIdCompr,'copiar_bancos_movimientos', pUpdate);
  FiltrarDataSet(zIdCompr,'Movimiento',[cxView_Movimiento.DataController.DataSource.DataSet.FieldByName('IdMovimiento').AsInteger]);
  zIdCompr.Open;

  IdMBanco:=zIdCompr.FieldByName('IdMBanco').AsInteger;
  IdComprobante:=zIdCompr.FieldByName('IdComprobante').AsString;
  Codigo:=zIdCompr.FieldByName('Codigo').AsString;
//  Folio:=zIdCompr.FieldByName('Folio').AsInteger;
  IdProveedor:=zIdCompr.FieldByName('IdProveedor').AsInteger;
  IdCliente:=zIdCompr.FieldByName('IdCliente').AsInteger;
  IdBanco:=zIdCompr.FieldByName('IdBanco').AsInteger;
  IdTipoMovimiento:=zIdCompr.FieldByName('IdTipoMovimiento').AsInteger;
  IdFormaPago:=zIdCompr.FieldByName('IdFormaPago').AsInteger;
  IdMoneda:=zIdCompr.FieldByName('IdMoneda').AsInteger;
  FolioComprobante:=zIdCompr.FieldByName('FolioComprobante').AsString;
  TipoCambio:=zIdCompr.FieldByName('TipoCambio').AsInteger;
  Transaccion:=zIdCompr.FieldByName('Transaccion').AsString;
  Fecha:=zIdCompr.FieldByName('Fecha').AsDateTime;
  Monto:=zIdCompr.FieldByName('Monto').AsFloat;
  TotalCambio:=zIdCompr.FieldByName('TotalCambio').AsFloat;
  Saldos:=zIdCompr.FieldByName('Saldo').AsFloat;
  Referencia:=zIdCompr.FieldByName('Referencia').AsString;
  CorreoEnviado:=zIdCompr.FieldByName('CorreoEnviado').AsString;
  IMovimiento:=cxView_Movimiento.DataController.DataSet.FieldByName('IdMovimiento').AsInteger;

  zFolios:=tUniquery.create(nil);
  zFolios.Connection := Connection.uConnection;
  zFolios.Active := False;
  zFolios.SQL.Text := 'select IfNull((max(Folio)),0)+1  as Folios from master_bancosmovimientos '+
  'where IdMBanco = :Banco';
  zFolios.ParamByName('Banco').AsInteger := zBancos.FieldByName('IdMBanco').AsInteger;
  zFolios.Open;
  Folio:=zFolios.FieldByName('Folios').asInteger;
  Int:=cxView_Movimiento.Controller.FocusedRow.Values[cxView_MovNoMovimiento.Index];
//  IdMBanco:= zBancos.FieldByName('IdMBanco').AsInteger;
//  Int;
  zActualizar:=tUniquery.create(nil);
  zActualizar.Connection := connection.uConnection;
  cxView_Movimiento.NavigatorButtons.Insert.Click;
  cxView_Movimiento.NavigatorButtons.Post.Click;

  zActualizar.Active:=False;
  AsignarSQL(zActualizar,'copiamover_bancos_movimientos', pUpdate);
  FiltrarDataSet(zActualizar,'IdMBanco,IdComprobante,Codigo,Folio,IdProveedor,IdCliente,IdBanco,IdTipoMovimiento,IdFormaPago,IdMoneda,FolioComprobante,TipoCambio,Transaccion,Fecha,Monto,TotalCambio,Saldo,Referencia,CorreoEnviado,Movimiento',
  [IdMBanco,IdComprobante,Codigo,Folio,IdProveedor,IdCliente,IdBanco,IdTipoMovimiento,IdFormaPago,IdMoneda,FolioComprobante,TipoCambio,Transaccion,FechaSQL(Fecha),Monto,TotalCambio,Saldos,Referencia,CorreoEnviado,zMovimiento.FieldByName('IdMovimiento').AsInteger]);
  zActualizar.ExecSQL;

  zMovimiento.Refresh;
  zMovimiento.Last;
  Int2:=cxView_Movimiento.Controller.FocusedRow.Values[cxView_MovNoMovimiento.Index];

  zActualizar.Active:=False;
  zActualizar.SQL.Clear;
  zActualizar.SQL.Add('delete from master_bancosmovimientos where IdMovimiento =:IdMovimiento');
  zActualizar.ParamByName('IdMovimiento').AsInteger := IMovimiento;
  zActualizar.ExecSQL;

 if zMovimiento.RecordCount > 1 then
  begin
//    posActual := zMovimiento.FieldByName('Folio').AsInteger;
//    posActual := Int2;
//    if posActual > 1 then
//    begin
//      zMovimiento.IndexFieldNames := '';
//      zMovimiento.Refresh;
//      zMovimiento.First;
//      while Not zMovimiento.Eof do
//      begin
//        if zMovimiento.FieldByName('Folio').AsInteger = Int then
//        begin
//          zMovimiento.Edit;
//          zMovimiento.FieldByName('Folio').AsInteger := Int+1;
//          zMovimiento.Post;
//        end
//        else if zMovimiento.FieldByName('Folio').AsInteger = posActual then
//        begin
//          zMovimiento.Edit;
//          zMovimiento.FieldByName('Folio').AsInteger := Int;
//          zMovimiento.Post;
//        end;
//
//        zMovimiento.Next;
//      end;
//      zMovimiento.IndexFieldNames := 'Folio ASC';
      zMovimiento.Refresh;

      zMovimiento.First;
      i:=1;
      while Not zMovimiento.Eof do
      begin
        if zMovimiento.FieldByName('Folio').AsInteger = Int then
        begin
          bm := zMovimiento.GetBookmark;
          if zMovimiento.FieldByName('Folio').AsInteger <> i then
          begin
            zMovimiento.Edit;
            zMovimiento.FieldByName('Folio').AsInteger := i;
            zMovimiento.Post;
          end;
        end
        else begin
          if zMovimiento.FieldByName('Folio').AsInteger <> i then
          begin
            zMovimiento.Edit;
            zMovimiento.FieldByName('Folio').AsInteger := i;
            zMovimiento.Post;
          end;
        end;
        inc(i);
        zMovimiento.Next;
      end;
      zMovimiento.GotoBookmark(bm);

//    end

  end;

  zMovimiento.First;
  while Not zMovimiento.Eof do
  begin

    if zMovimiento.FieldByName('Folio').AsInteger = 1 then
    begin
      zMovimiento.Edit;
      zMovimiento.FieldByName('Saldo').AsFloat := (cxSaldoApertura.EditValue + zMovimiento.FieldByName('SaldoCliente').AsFloat) - zMovimiento.FieldByName('SaldoProv').AsFloat;
      zMovimiento.Post;
      SaldoActual:=zMovimiento.FieldByName('Saldo').AsFloat;
    end
    else begin
      zMovimiento.Edit;
      zMovimiento.FieldByName('Saldo').AsFloat := (SaldoActual + zMovimiento.FieldByName('SaldoCliente').AsFloat) - zMovimiento.FieldByName('SaldoProv').AsFloat;
      zMovimiento.Post;
      SaldoActual:=zMovimiento.FieldByName('Saldo').AsFloat;
    end;

      zMovimiento.Next;
  end;

end;

procedure TfrmBancosMovimientos.MoverRegistro1Click(Sender: TObject);
var
  posActual,i: Integer;
  posIntercambio: Integer;
  lastPos: Integer;
  bm: TBookmark;
  zFolios,zActualizar,zInsert:TUniquery;
  Int,Int2:Integer;
  SaldoActual:Double;
begin
  zFolios:=tUniquery.create(nil);
  zFolios.Connection := Connection.uConnection;
  zFolios.Active := False;
  zFolios.SQL.Text := 'select IfNull((max(Folio)),0)+1  as Folios from master_bancosmovimientos '+
  'where IdMBanco = :Banco';
  zFolios.ParamByName('Banco').AsInteger := zBancos.FieldByName('IdMBanco').AsInteger;
  zFolios.Open;
  Folio:=zFolios.FieldByName('Folios').asInteger;
  Int:=cxView_Movimiento.Controller.FocusedRow.Values[cxView_MovNoMovimiento.Index];
//  IdMBanco:= zBancos.FieldByName('IdMBanco').AsInteger;
//  Int;
  zActualizar:=tUniquery.create(nil);
  zActualizar.Connection := connection.uConnection;
  cxView_Movimiento.NavigatorButtons.Insert.Click;
  cxView_Movimiento.NavigatorButtons.Post.Click;

  zActualizar.Active:=False;
  AsignarSQL(zActualizar,'copiamover_bancos_movimientos', pUpdate);
  FiltrarDataSet(zActualizar,'IdMBanco,IdComprobante,Codigo,Folio,IdProveedor,IdCliente,IdBanco,IdTipoMovimiento,IdFormaPago,IdMoneda,FolioComprobante,TipoCambio,Transaccion,Fecha,Monto,TotalCambio,Saldo,Referencia,CorreoEnviado,Movimiento',
  [IdMBanco,IdComprobante,Codigo,Folio,IdProveedor,IdCliente,IdBanco,IdTipoMovimiento,IdFormaPago,IdMoneda,FolioComprobante,TipoCambio,Transaccion,FechaSQL(Fecha),Monto,TotalCambio,Saldos,Referencia,CorreoEnviado,zMovimiento.FieldByName('IdMovimiento').AsInteger]);
  zActualizar.ExecSQL;

  zMovimiento.Refresh;
  zMovimiento.Last;
  Int2:=cxView_Movimiento.Controller.FocusedRow.Values[cxView_MovNoMovimiento.Index];

  zActualizar.Active:=False;
  zActualizar.SQL.Clear;
  zActualizar.SQL.Add('delete from master_bancosmovimientos where IdMovimiento =:IdMovimiento');
  zActualizar.ParamByName('IdMovimiento').AsInteger := IMovimiento;
  zActualizar.ExecSQL;

 if zMovimiento.RecordCount > 1 then
  begin
//    posActual := zMovimiento.FieldByName('Folio').AsInteger;
    posActual := Int2;
    if posActual > 1 then
    begin
      zMovimiento.IndexFieldNames := '';
      zMovimiento.Refresh;
      zMovimiento.First;
      while Not zMovimiento.Eof do
      begin
        if zMovimiento.FieldByName('Folio').AsInteger = Int then
        begin
          zMovimiento.Edit;
          zMovimiento.FieldByName('Folio').AsInteger := Int+1;
          zMovimiento.Post;
        end
        else if zMovimiento.FieldByName('Folio').AsInteger = posActual then
        begin
          zMovimiento.Edit;
          zMovimiento.FieldByName('Folio').AsInteger := Int;
          zMovimiento.Post;
        end;

        zMovimiento.Next;
      end;
      zMovimiento.IndexFieldNames := 'Folio ASC';
      zMovimiento.Refresh;

      zMovimiento.First;
      i:=1;
      while Not zMovimiento.Eof do
      begin
        if zMovimiento.FieldByName('Folio').AsInteger = Int then
        begin
          bm := zMovimiento.GetBookmark;
          if zMovimiento.FieldByName('Folio').AsInteger <> i then
          begin
            zMovimiento.Edit;
            zMovimiento.FieldByName('Folio').AsInteger := i;
            zMovimiento.Post;
          end;
        end
        else begin
          if zMovimiento.FieldByName('Folio').AsInteger <> i then
          begin
            zMovimiento.Edit;
            zMovimiento.FieldByName('Folio').AsInteger := i;
            zMovimiento.Post;
          end;
        end;
        inc(i);
        zMovimiento.Next;
      end;
      zMovimiento.GotoBookmark(bm);

    end

  end;

  zMovimiento.First;
  while Not zMovimiento.Eof do
  begin

    if zMovimiento.FieldByName('Folio').AsInteger = 1 then
    begin
      zMovimiento.Edit;
      zMovimiento.FieldByName('Saldo').AsFloat := (cxSaldoApertura.EditValue + zMovimiento.FieldByName('SaldoCliente').AsFloat) - zMovimiento.FieldByName('SaldoProv').AsFloat;
      zMovimiento.Post;
      SaldoActual:=zMovimiento.FieldByName('Saldo').AsFloat;
    end
    else begin
      zMovimiento.Edit;
      zMovimiento.FieldByName('Saldo').AsFloat := (SaldoActual + zMovimiento.FieldByName('SaldoCliente').AsFloat) - zMovimiento.FieldByName('SaldoProv').AsFloat;
      zMovimiento.Post;
      SaldoActual:=zMovimiento.FieldByName('Saldo').AsFloat;
    end;

      zMovimiento.Next;
  end;

end;

procedure TfrmBancosMovimientos.movimiento_scroll;
begin
   if cxPageControl1.ActivePage = cxTabIndicadores then
   begin
    zIndicador.Active:= False;
    AsignarSQL(zIndicador,'movimiento_indicadores',pUpdate);
    FiltrarDataSet(zIndicador,'Movimiento',[zMovimiento.FieldByName('IdMovimiento').AsInteger]);
    zIndicador.Open;
   end
   else
   if cxPageControl1.ActivePage = cxTabPagoDetalle then
   begin
    zPagoDetalle.Active:= False;
    AsignarSQL(zPagoDetalle,'movimiento_detallePago',pUpdate);
    FiltrarDataSet(zPagoDetalle,'DetallePago, Movimiento',[-1, zMovimiento.FieldByName('IdMovimiento').AsInteger]);
    zPagoDetalle.Open;
   end
   else
   if cxPageControl1.ActivePage = cxTabCFDI then
   begin
    zCfdi.Active := False;
    AsignarSQL(zCfdi, 'cont_cfdi_detallemovimiento', pUpdate);
    FiltrarDataSet(zCfdi, 'Comprobante, Movimiento',[zMovimiento.FieldByName('IdComprobante').AsInteger, zMovimiento.FieldByName('IdMovimiento').AsInteger]);
    zCfdi.Open;
   end;


end;

procedure TfrmBancosMovimientos.cxView_MovimientoCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if cxView_Movimiento.OptionsView.CellAutoHeight then
      cxView_Movimiento.OptionsView.CellAutoHeight := False
   else
      cxView_Movimiento.OptionsView.CellAutoHeight := True;
end;

procedure TfrmBancosMovimientos.cxView_MovimientoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Key = VK_UP) or ( Key = VK_DOWN)  then
     movimiento_scroll;
end;

procedure TfrmBancosMovimientos.cxView_MovNoMovimientoGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
//  AText := IntToStr(ARecord.Index + 1);
end;

procedure TfrmBancosMovimientos.cxBajarClick(Sender: TObject);
var
  lastPos,i: Integer;
  posActual: Integer;
  bm: TBookmark;
  SaldoActual:Double;
begin
  if zMovimiento.RecordCount > 1 then
  begin
    posActual := zMovimiento.FieldByName('Folio').AsInteger;

    zMovimiento.IndexFieldNames := 'Folio ASC';
    zMovimiento.Refresh;
    zMovimiento.Last;
    lastPos := zMovimiento.FieldByName('Folio').AsInteger;

    if posActual < lastPos then
    begin
      zMovimiento.IndexFieldNames := '';
      zMovimiento.Refresh;
      zMovimiento.First;
      while Not zMovimiento.Eof do
      begin
        if zMovimiento.FieldByName('Folio').AsInteger = posActual then
        begin
          zMovimiento.Edit;
          zMovimiento.FieldByName('Folio').AsInteger := posActual + 1;
          zMovimiento.Post;
        end
        else if zMovimiento.FieldByName('Folio').AsInteger = posActual + 1 then
        begin
          zMovimiento.Edit;
          zMovimiento.FieldByName('Folio').AsInteger := posActual;
          zMovimiento.Post;
        end;

        zMovimiento.Next;
      end;
      zMovimiento.IndexFieldNames := 'Folio ASC';
      zMovimiento.Refresh;

      zMovimiento.First;
      i:=1;
      while Not zMovimiento.Eof do
      begin
        if zMovimiento.FieldByName('Folio').AsInteger = posActual + 1 then
        begin
          bm := zMovimiento.GetBookmark;
        end
         else begin
          if zMovimiento.FieldByName('Folio').AsInteger <> i then
          begin
            zMovimiento.Edit;
            zMovimiento.FieldByName('Folio').AsInteger := i;
            zMovimiento.Post;
          end;
        end;
        inc(i);
        zMovimiento.Next;
      end;
      zMovimiento.GotoBookmark(bm);

    end;
  end;

  zMovimiento.First;
  while Not zMovimiento.Eof do
  begin

    if zMovimiento.FieldByName('Folio').AsInteger = 1 then
    begin
      zMovimiento.Edit;
      zMovimiento.FieldByName('Saldo').AsFloat := (cxSaldoApertura.EditValue + zMovimiento.FieldByName('SaldoCliente').AsFloat) - zMovimiento.FieldByName('SaldoProv').AsFloat;
      zMovimiento.Post;
      SaldoActual:=zMovimiento.FieldByName('Saldo').AsFloat;
    end
    else begin
      zMovimiento.Edit;
      zMovimiento.FieldByName('Saldo').AsFloat := (SaldoActual + zMovimiento.FieldByName('SaldoCliente').AsFloat) - zMovimiento.FieldByName('SaldoProv').AsFloat;
      zMovimiento.Post;
      SaldoActual:=zMovimiento.FieldByName('Saldo').AsFloat;
    end;

      zMovimiento.Next;
  end;

end;

procedure TfrmBancosMovimientos.cxBancaNetExit(Sender: TObject);
begin
  PostBanco;
end;

procedure TfrmBancosMovimientos.cxButton1Click(Sender: TObject);
var
  Formcomprobante : TfrmComprobantesFiscalesD;
  lContinua:Boolean;
begin
  if (zmovimiento.State = dsInsert ) or (zmovimiento.State = dsEdit) then
   begin

        global_frmActivo := 'Movimientos';
        abreComprobante := 'AbrirComprobante';

//        if cxProveedor.Visible = true then
//        if proveedores.Locate('IdProveedor',cxProveedor.EditValue,[]) then
//          rfc := proveedores.FieldByName('RFC').AsString;
//
//        if cxIdCliente.Visible = true then
//        if Clientes.Locate('IdCliente',cxIdCliente.EditValue,[]) then
//          rfc := Clientes.FieldByName('RFC').AsString;
        lCont:=True;
        if proveedores.Locate('IdProveedor',cxProveedor.EditValue,[]) then
        proveedores.FieldByName('RFC').AsString;

        Application.CreateForm(TfrmComprobantesFiscalesD, frmComprobantesFiscalesD);

        FrmComprobantesFiscalesD.ShowModal;
       // proveedores.Filtered:=False;
       lCont:=False;

   end;
end;


procedure TfrmBancosMovimientos.cxCambioPropertiesChange(Sender: TObject);
var
  acumula : Double;
begin
  resultadoSaldo;
end;

procedure TfrmBancosMovimientos.resultadoSaldo;
var
 salAnterior,SaldoAnterior, dif : double;
zMonto : TUniQuery;
begin
    if (zMovimiento.State = dsInsert)  then
  begin
       if zMoneda.Locate('IdMoneda', cxMonedaMov.EditValue,[]) then
     begin
      if  zMoneda.FieldByName('IdMoneda').AsInteger = 1 then
       zMovimiento.FieldByName('TotalCambio').AsFloat := zMovimiento.FieldByName('Monto').AsFloat/zMovimiento.FieldByName('TipoCambio').AsFloat;

     if zMoneda.FieldByName('IdMoneda').AsInteger = 2 then
       zMovimiento.FieldByName('TotalCambio').AsFloat := zMovimiento.FieldByName('Monto').AsFloat*zMovimiento.FieldByName('TipoCambio').AsFloat;
     end;

       if zMovimiento.RecordCount= 0 then begin
          if zMovimiento.FieldByName('IdMBanco').AsInteger = zBancos.FieldByName('IdMBanco').AsInteger then begin
         if (cxTransaccion.Text = 'Ingreso') then
//            zMovimiento.FieldByName('Saldo').AsFloat := cxSaldoApertura.EditValue + cxCambio.EditValue
           zMovimiento.FieldByName('Saldo').AsFloat := zBancos.FieldByName('Saldo').AsVariant + cxCambio.Value
         else
         if (cxTransaccion.Text = 'Egreso') or (cxTransaccion.Text = 'Traspaso')  then
//            zMovimiento.FieldByName('Saldo').AsFloat := cxSaldoApertura.EditValue - cxCambio.EditValue
           zMovimiento.FieldByName('Saldo').AsFloat  := zBancos.FieldByName('Saldo').AsVariant - cxCambio.Value;
         end;
       end
       else begin
           if zMovimiento.FieldByName('IdMBanco').AsInteger = zBancos.FieldByName('IdMBanco').AsInteger then begin
//           zMovimiento.Last;
//           SaldoAnterior:=cxView_Movimiento.Controller.FocusedRow.Values[cxView_MovSaldo.Index-1];
           if (cxTransaccion.Text = 'Ingreso') then
//            zMovimiento.FieldByName('Saldo').AsFloat:=SaldoAnterior + cxCambio.Value
            zMovimiento.FieldByName('Saldo').AsFloat  := IEgreso.FieldByName('SaldoFinal').AsFloat + cxCambio.Value
           else
           if (cxTransaccion.Text = 'Egreso') or (cxTransaccion.Text = 'Traspaso') then  begin
//            zMovimiento.FieldByName('Saldo').AsFloat:=SaldoAnterior - cxCambio.Value;
             zMovimiento.FieldByName('Saldo').AsFloat := IEgreso.FieldByName('SaldoFinal').AsFloat - cxCambio.Value;
              if zMovimiento.FieldByName('Saldo').AsFloat <= 0 then begin
               zMovimiento.FieldByName('Saldo').AsFloat := 0;
               messageDLG('No se puede realizar la operación, el Egreso es mayor al saldo', mtInformation, [mbOk], 0);
               cxCantidad.setFocus;
              end;
           end;
         end;
       end;
  end
  else
  if zMovimiento.State = dsEdit then begin

     salAnterior := cxCambio.Value;

     if zMoneda.Locate('IdMoneda', cxMonedaMov.EditValue,[]) then
     begin
      if  zMoneda.FieldByName('IdMoneda').AsInteger = 1 then
       zMovimiento.FieldByName('TotalCambio').AsFloat := zMovimiento.FieldByName('Monto').AsFloat/zMovimiento.FieldByName('TipoCambio').AsFloat;

     if zMoneda.FieldByName('IdMoneda').AsInteger = 2 then
       zMovimiento.FieldByName('TotalCambio').AsFloat := zMovimiento.FieldByName('Monto').AsFloat*zMovimiento.FieldByName('TipoCambio').AsFloat;
     end;

//    if zMovimiento.RecordCount > 0 then begin
//      if cxTransaccion.Text = 'Ingreso' then begin
//        calculo  :=  cxSaldo.Value + cxCambio.Value;
//        zMovimiento.FieldByName('Saldo').AsFloat := calculo ;
//      end
//      else
//      if cxTransaccion.Text = 'Egreso' then begin
//        calculo  :=  cxSaldo.Value - cxCambio.Value;
//        zMovimiento.FieldByName('Saldo').AsFloat := calculo ;
//      end;
//    end;

    zMonto:=tUniquery.create(nil);
    zMonto.Connection := Connection.uConnection;

    zMonto.Active:=False;
    zMonto.SQL.Clear;


      zMonto.SQL.Add('update master_bancosmovimientos set  Monto=:Monto, Saldo =:Saldo '+
                      'where IdMBanco =:Banco and IdMovimiento =:Movimiento');
      zMonto.ParamByName('Monto').AsFloat := cxCantidad.Value;
      if cxTransaccion.Text = 'Ingreso' then
        zMonto.ParamByName('Saldo').AsFloat :=  zMovimiento.FieldByName('Saldo').AsFloat + cxCambio.Value
      else
      if cxTransaccion.Text = 'Egreso' then
        zMonto.ParamByName('Saldo').AsFloat :=  zMovimiento.FieldByName('Saldo').AsFloat - cxCambio.Value;
      zMonto.ParamByName('Banco').AsInteger := zBancos.FieldByName('IdMBanco').AsInteger;
      zMonto.ParamByName('Movimiento').AsInteger := zMovimiento.FieldByName('IdMovimiento').AsInteger;
      zMonto.ExecSQL;

    zMonto.Destroy;
  end;


end;




procedure TfrmBancosMovimientos.cxCancelarDetalleClick(Sender: TObject);
begin
 // cxLeyenda.Caption:=titulo + '[Añadiendo]';
 // frmBarraH11.btnAddClick(Sender);

  panelContiene.Visible:=False;
  cxSplitterDatos.Visible := False ;
  cxgridIndicador.Enabled:=False;

 // cxLeyenda.Caption:=titulo;


  try
    if cxPageControl1.ActivePage = cxTabIndicadores then
    begin



      PanelDown.Visible := False;
      panelMedioDetalle.Visible:=False;
     //frmBarraH11.btnActive;
      cxgridIndicador.Enabled:=True;
      cxSplitterMedioDetalle.Visible := False;
      cxEliminarDetalle.Enabled := True;
      cxEditaDetalle.Enabled := True;
      cxNuevoDetalle.Enabled := True;

       zIndicador.Cancel;
       btnNuevo:=False;
       btnEditar:=False;
    end;

    if cxPageControl1.ActivePage = cxTabPagoDetalle then
    begin
      PanelDown.Visible := False;
      cxSplitter1.Visible := False;
      PanelDetallePago.Visible := False;

      cxEliminarDetalle.Enabled := True;
      cxEditaDetalle.Enabled := True;
      cxNuevoDetalle.Enabled := True;
      zPagoDetalle.Cancel;
    end;

      PermisosBotones(frmBancosMovimientos, btnPermisos);
   except
    on e : exception do
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Indicador', 'Al cancelar', 0);
  end;
end;

procedure TfrmBancosMovimientos.cxCantidadPropertiesChange(Sender: TObject);
begin

 if (zMovimiento.State = dsInsert) then
  begin
     if zMovimiento.RecordCount= 0 then begin
        if zMovimiento.FieldByName('IdMBanco').AsInteger = zBancos.FieldByName('IdMBanco').AsInteger then begin
         if (cxTransaccion.Text = 'Ingreso') then
           zMovimiento.FieldByName('Saldo').AsFloat := zBancos.FieldByName('Saldo').AsVariant + cxCambio.Value
         else
         if (cxTransaccion.Text = 'Egreso') or (cxTransaccion.Text ='Traspaso') then
           zMovimiento.FieldByName('Saldo').AsFloat  := zBancos.FieldByName('Saldo').AsVariant - cxCambio.Value;
       end;
     end
     else begin
       if zMovimiento.FieldByName('IdMBanco').AsInteger = zBancos.FieldByName('IdMBanco').AsInteger then begin
         if (cxTransaccion.Text = 'Ingreso') then begin
          zMovimiento.FieldByName('Saldo').AsFloat  := IEgreso.FieldByName('SaldoFinal').AsFloat + cxCambio.Value ;
         end
         else
           if (cxTransaccion.Text = 'Egreso') or (cxTransaccion.Text ='Traspaso') then begin
            zMovimiento.FieldByName('Saldo').AsFloat := IEgreso.FieldByName('SaldoFinal').AsFloat - cxCambio.Value;
           end;
       end;
     end;
  end;

     resultadoSaldo;
//
//  if zMovimiento.State = dsEdit then begin
//    if zMovimiento.RecordCount > 0 then begin
//      if cxTransaccion.Text = 'Ingreso' then
//        zMovimiento.FieldByName('Saldo').AsFloat := zMovimiento.FieldByName('Saldo').AsFloat - cxCambio.Value
//      else
//      if cxTransaccion.Text = 'Egreso' then
//        zMovimiento.FieldByName('Saldo').AsFloat := zMovimiento.FieldByName('Saldo').AsFloat - cxCambio.Value;
//    end;
//
//  end;
end;

procedure TfrmBancosMovimientos.cxCLABEExit(Sender: TObject);
begin
  PostBanco;
end;

procedure TfrmBancosMovimientos.cxComboTipoPropertiesChange(Sender: TObject);
begin
  ComboTransacccion;
  if (zMovimiento.State = dsInsert) then
  begin
     if zMovimiento.RecordCount= 0 then begin
      if zMovimiento.FieldByName('IdMBanco').AsInteger = zBancos.FieldByName('IdMBanco').AsInteger then begin
     if (cxTransaccion.Text = 'Ingreso') then
       zMovimiento.FieldByName('Saldo').AsFloat := zBancos.FieldByName('Saldo').AsVariant + cxCambio.Value
     else
     if (cxTransaccion.Text = 'Egreso') or (cxTransaccion.Text ='Traspaso') then
       zMovimiento.FieldByName('Saldo').AsFloat  := zBancos.FieldByName('Saldo').AsVariant - cxCambio.Value;
     end;
     end
     else begin
     if zMovimiento.FieldByName('IdMBanco').AsInteger = zBancos.FieldByName('IdMBanco').AsInteger then begin
     if (cxTransaccion.Text = 'Ingreso') then
      zMovimiento.FieldByName('Saldo').AsFloat  := IEgreso.FieldByName('SaldoFinal').AsFloat + cxCambio.Value
     else
     if (cxTransaccion.Text = 'Egreso') or (cxTransaccion.Text ='Traspaso') then
       zMovimiento.FieldByName('Saldo').AsFloat := IEgreso.FieldByName('SaldoFinal').AsFloat - cxCambio.Value;
     end;
     end;
  end;


end;

procedure TfrmBancosMovimientos.cxCorreoExit(Sender: TObject);
begin
  PostBanco;
end;



procedure TfrmBancosMovimientos.cxCuentaBPPropertiesChange(Sender: TObject);

begin
  if (zPagoDetalle.State = dsInsert ) or (zPagoDetalle.State = dsEdit) then
   begin
    zPagoDetalle.FieldByName('Cuentas').AsString := cxCuentaBP.Properties.ListSource.DataSet.FieldByName('Cuenta').AsString;
    zPagoDetalle.FieldByName('BancoReceptor').AsString := cxCuentaBP.Properties.ListSource.DataSet.FieldByName('Banco').AsString;
   end;
end;

procedure TfrmBancosMovimientos.cxCuentaExit(Sender: TObject);
begin
  PostBanco;
end;

procedure TfrmBancosMovimientos.cxDispositivoExit(Sender: TObject);
begin
  PostBanco;
end;

procedure TfrmBancosMovimientos.cxClienteExit(Sender: TObject);
begin
  PostBanco;
end;

procedure TfrmBancosMovimientos.cxEditaDetalleClick(Sender: TObject);
begin
  if cxPageControl1.ActivePage = cxTabIndicadores then
  begin
   If (zIndicador.RecordCount > 0 ) Then
   Begin

     zIndicador.Edit;
     btnEditar:=True;
     cxSplitterMedioDetalle.Visible := True;
     PanelMedioDetalle.Visible   := True;
     PanelDown.Visible       := True;
//     cxEliminarDetalle.Enabled := False;
//     cxEditaDetalle.Enabled := False;
//     cxNuevoDetalle.Enabled := False;
   end
  end;

  if cxPageControl1.ActivePage = cxTabPagoDetalle then
  begin
    PanelDown.Visible       := True;
    PanelDetallePago.Visible := True;
//    cxEliminarDetalle.Enabled := False;
//    cxEditaDetalle.Enabled := False;
//    cxNuevoDetalle.Enabled := False;
  end;
end;



procedure TfrmBancosMovimientos.cxEjercicioPropertiesChange(Sender: TObject);
begin
     ChangeEjercicioPeriodo;
end;

procedure TfrmBancosMovimientos.ChangeEjercicioPeriodo;
begin
      AsignarSQL(zMovimiento, 'master_bancosmovimientos', pUpdate);
  if ((cxEjercicio.Text = 'TODOS') and (cxPeriodo.Text = 'TODOS')) then
     FiltrarDataSet(zMovimiento,'Movimiento,Banco,Mes,Ejercicio', [-1,View_movBanco.DataController.DataSet.FieldByName('IdMBanco').AsInteger,-1,-1])
    ELSE
    if (cxEjercicio.Text <> 'TODOS') AND (cxPeriodo.Text = 'TODOS') then
       FiltrarDataSet(zMovimiento,'Movimiento,Banco,Mes,Ejercicio', [-1,View_movBanco.DataController.DataSet.FieldByName('IdMBanco').AsInteger,-1,cxEjercicio.Text])
    else
    if (cxEjercicio.Text = 'TODOS') AND (cxPeriodo.Text <> 'TODOS') then
       FiltrarDataSet(zMovimiento,'Movimiento,Banco,Mes,Ejercicio', [-1,View_movBanco.DataController.DataSet.FieldByName('IdMBanco').AsInteger,cxPeriodo.Text,-1])
    ELSE
       FiltrarDataSet(zMovimiento,'Movimiento,Banco,Mes,Ejercicio', [-1,View_movBanco.DataController.DataSet.FieldByName('IdMBanco').AsInteger,cxPeriodo.Text,cxEjercicio.Text]) ;
    zMovimiento.Open;
end;

procedure TfrmBancosMovimientos.cxEliminarDetalleClick(Sender: TObject);
var
zElimina:TUniquery;
begin
    if cxPageControl1.ActivePage = cxTabIndicadores then
  begin
   if MessageDlg('¿Desea eliminar el registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
//      zElimina:=tUniquery.create(nil);
//      zElimina.Connection := connection.uConnection;
//      zElimina.Active:=False;
//      AsignarSQL(zElimina,'elimina_cot_movimiento', pUpdate);
//      FiltrarDataSet(zElimina,'IdIndicador',[zIndicador.FieldByName('IdIndicador').AsInteger]);
//      zElimina.ExecSQL;
      zIndicador.Delete;
      zIndicador.ApplyUpdates();
      zIndicador.Refresh;
    end;
  end;

    if cxPageControl1.ActivePage = cxTabPagoDetalle then
  begin
   if MessageDlg('¿Desea eliminar el registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      zPagoDetalle.Delete;
      zPagoDetalle.ApplyUpdates();
      zPagoDetalle.Refresh;
    end;
  end;
end;

procedure TfrmBancosMovimientos.cxEmpleadoPropertiesChange(Sender: TObject);
begin
zIndicador.FieldByName('IdPersonal').AsString;
end;

procedure TfrmBancosMovimientos.cxGuardarDetalleClick(Sender: TObject);
var
zInsert,zActualizar:TUniquery;
begin

 try

    if  cxPageControl1.ActivePage = cxTabIndicadores then
    begin
      cxCotizacion.Text;

      zInsert:=tUniquery.create(nil);
      zInsert.Connection := connection.uConnection;
//      zActualizar:=tUniquery.create(nil);
//      zActualizar.Connection := connection.uConnection;
//      zIndicador.FieldByName('FolioCotizacion').AsString:=FolioCotizacion;
//      zIndicador.FieldByName('NombreDocto').AsString:=NombreDocto;
//      zIndicador.FieldByName('Direccion').AsString:=Direccion;
      zIndicador.FieldByName('IdMovimiento').AsInteger:=cxView_Movimiento.DataController.DataSource.DataSet.FieldByName('IdMovimiento').AsInteger;
      zIndicador.Post;

//      if btnNuevo then begin
//        zIndicador.FieldByName('IdIndicador').AsInteger;
//        zInsert.Active:=False;
//        AsignarSQL(zInsert,'mov_insert_cotiz_doc', pUpdate);
//        FiltrarDataSet(zInsert,'FolioCotizacion, NombreDocto, Direccion, IdMovimiento,IdIndicador',[FolioCotizacion,NombreDocto,Direccion,cxView_Movimiento.DataController.DataSource.DataSet.FieldByName('IdMovimiento').AsInteger,zIndicador.FieldByName('IdIndicador').AsInteger]);
//        zInsert.ExecSQL;
//        btnNuevo:=False;
//      end;
//
//       if btnEditar then begin
//        zInsert.Active:=False;
//        AsignarSQL(zInsert,'ucot_doc_movimiento', pUpdate);
//        FiltrarDataSet(zInsert,'Folio, Nombre, Direccion, IdIndicador',[FolioCotizacion,NombreDocto,Direccion,zIndicador.FieldByName('IdIndicador').AsInteger]);
//        zInsert.ExecSQL;
//        btnEditar:=False;
//      end;

      zIndicador.Refresh;
      grid_movimiento.Enabled := True;
      frmBarraH11.btnActive;
      cxSplitterMedioDetalle.Visible := False;
      panelMedioDetalle.Visible := False;
      panelDown.Visible := False;
      cxEliminarDetalle.Enabled := True;
      cxEditaDetalle.Enabled := True;
      cxNuevoDetalle.Enabled := True;
//      PermisosBotones(frmBancosMovimientos,btnPermisos);
    end;

   if  cxPageControl1.ActivePage = cxTabPagoDetalle then
    begin
      zPagoDetalle.Post;
      zPagoDetalle.Refresh;
      grid_movimiento.Enabled := True;
      frmBarraH11.btnActive;
      cxSplitter1.Visible := False;
      panelDetallePago.Visible := False;
      panelDown.Visible := False;
      cxEliminarDetalle.Enabled := True;
      cxEditaDetalle.Enabled := True;
      cxNuevoDetalle.Enabled := True;
    end;

    PermisosBotones(frmBancosMovimientos,btnPermisos);
    except
      on E : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimiento', 'Al guardar registro', 0);
      end;
 end;

end;

procedure TfrmBancosMovimientos.cxHostPingExit(Sender: TObject);
begin
  PostBanco;
end;

procedure TfrmBancosMovimientos.cxMonedaExit(Sender: TObject);
begin
  PostBanco;
end;

procedure TfrmBancosMovimientos.cxMonedaMovPropertiesChange(Sender: TObject);
begin
 resultadoSaldo;
end;


procedure TfrmBancosMovimientos.cxNuevoDetalleClick(Sender: TObject);
begin
   if cxPageControl1.ActivePage = cxTabIndicadores then
   begin

     panelDown.Visible := True;
     cxSplitterMedioDetalle.Visible := True;
     PanelMedioDetalle.Visible := True;
     btnNuevo:=True;

//     cxEliminarDetalle.Enabled := False;
//     cxEditaDetalle.Enabled := False;
//     cxNuevoDetalle.Enabled := False;

     zIndicador.Append;
     zIndicador.FieldByName('IdPersonal').AsInteger := zPersonal.FieldByName('IdPersonal').AsInteger;
     zIndicador.FieldByName('sNumeroOrden').AsString := zOrdenesdetrabajo.FieldByName('sNumeroOrden').AsString;
     zIndicador.FieldByName('IdOrdenCompra').AsInteger := zPedidos.FieldByName('IdOrdenCompra').AsInteger;
     zIndicador.FieldByName('IdClase').AsInteger := zClase.FieldByName('IdClase').AsInteger;
     zIndicador.FieldByName('Division').AsString := 'Principal';
     zIndicador.FieldByName('IdMovimiento').AsInteger := cxView_Movimiento.DataController.DataSet.FieldByName('IdMovimiento').AsInteger;
     zIndicador.FieldByName('Total').AsFloat := cxView_Movimiento.DataController.DataSet.FieldByName('Monto').AsFloat;
     cxEmpleado.SetFocus;

   end;

   if cxPageControl1.ActivePage = cxTabPagoDetalle then
   begin
     panelDown.Visible := True;
     cxSplitter1.Visible := True;
     PanelDetallePago.Visible := True;

//     cxEliminarDetalle.Enabled := False;
//     cxEditaDetalle.Enabled := False;
//     cxNuevoDetalle.Enabled := False;
                          //   zcProveedor
     zPagoDetalle.Append;
     zPagoDetalle.FieldByName('IdMovimiento').AsInteger := cxView_Movimiento.DataController.DataSet.FieldByName('IdMovimiento').AsInteger;
     cxBeneficiario.DataBinding.DataSource.DataSet.FieldByName('Beneficiario').AsString:= cxView_Movimiento.DataController.DataSet.FieldByName('RazonSocialCP').AsString;
    // cxBanco.SetFocus;
   end;

end;



procedure TfrmBancosMovimientos.cxPageControl1Click(Sender: TObject);
begin
  pages;
end;

procedure TfrmBancosMovimientos.cxPasswordExit(Sender: TObject);
begin
  PostBanco;
end;

procedure TfrmBancosMovimientos.cxPeriodoPropertiesChange(Sender: TObject);
begin
    ChangeEjercicioPeriodo;
    IEgreso.Active := False ;
    AsignarSQL(IEgreso,'ingreso-egreso',pUpdate);
    filtrarDataSet(IEgreso, 'Movimiento,Banco,FMes',['-1',zbancos.FieldByName('IdMBanco').AsInteger, cxPeriodo.Text]);
    IEgreso.Open;
    if (IEgreso.FieldByName('IngresosPeriodo').AsFloat = 0) and (IEgreso.FieldByName('EgresosPeriodo').AsFloat = 0) then
    begin
       cxIngresos.Value := 0;
       cxEgresos.Value :=  0;
       cxSaldoanterior.Value := zBancos.FieldByName('Saldo').AsFloat;
    end
    else begin
       cxIngresos.Value := IEgreso.FieldByName('IngresosPeriodo').AsFloat;
       cxEgresos.Value :=  IEgreso.FieldByName('EgresosPeriodo').AsFloat;
       cxSaldoanterior.Value := IEgreso.FieldByName('TotalAnterior').AsFloat;
    end;
    cxSaldoFinal.Value := IEgreso.FieldByName('TotalAnterior').AsFloat + IEgreso.FieldByName('IngresosPeriodo').AsFloat - IEgreso.FieldByName('EgresosPeriodo').AsFloat;


end;

procedure TfrmBancosMovimientos.cxProyectoPropertiesChange(Sender: TObject);
var
  AValue: Variant;
begin
AValue := TcxLookupComboBox(Sender).EditValue;
//   AValue:= cxView_Comprobantes.Controller.FocusedRow.Values[cxView_Proyecto.Index];

    if (AValue <> null) then begin

       zPedidos.Active:=False;
       AsignarSQL(zPedidos,'anexo_pedidos_indicadores',pUpdate);
       filtrarDataSet(zPedidos, 'Contrato,NumeroOrden,Proveedor',[global_contrato,AValue,cxView_Movimiento.DataController.DataSet.FieldByName('IdProveedor').AsString]);
//       AsignarSQL(zPedidos,'anexo_pedidos_cuentas_pp', pUpdate);
//       FiltrarDataSet(zPedidos,'Contrato,NumeroOrden',[global_contrato,AValue]);
       zPedidos.Open;



    end;
end;

procedure TfrmBancosMovimientos.cxSaldoAperturaEnter(Sender: TObject);
begin
  SaldoInicial := zbancos.FieldByName('Saldo').AsFloat;
end;

procedure TfrmBancosMovimientos.cxSaldoAperturaExit(Sender: TObject);
var
SaldoActual:Double;
begin
//  if zBancos.State = dsEdit then     begin
//    zBancos.FieldByName('SaldoAnterior').AsFloat := saldoInicial;
//    zBancos.Post;
//
//  diferencia := zBancos.FieldByName('Saldo').AsFloat - SaldoInicial ;
//  zMovimiento.First;
//    while (not zmovimiento.Eof) do
//    begin
//      zMovimiento.Edit;
//      zmovimiento.FieldByName('Saldo').AsFloat := zMovimiento.FieldByName('Saldo').AsFloat + diferencia;
//
//      zmovimiento.Post;
//
//       zMovimiento.Next;
//    end;

    zMovimiento.First;
    while Not zMovimiento.Eof do
    begin

      if zMovimiento.FieldByName('Folio').AsInteger = 1 then
      begin
        zMovimiento.Edit;
        zMovimiento.FieldByName('Saldo').AsFloat := (cxSaldoApertura.EditValue + zMovimiento.FieldByName('SaldoCliente').AsFloat) - zMovimiento.FieldByName('SaldoProv').AsFloat;
        zMovimiento.Post;
       SaldoActual:=zMovimiento.FieldByName('Saldo').AsFloat;
      end
      else begin
        zMovimiento.Edit;
        zMovimiento.FieldByName('Saldo').AsFloat := (SaldoActual + zMovimiento.FieldByName('SaldoCliente').AsFloat) - zMovimiento.FieldByName('SaldoProv').AsFloat;
        zMovimiento.Post;
        SaldoActual:=zMovimiento.FieldByName('Saldo').AsFloat;

      end;

        zMovimiento.Next;
    end;

// end;
end;


procedure TfrmBancosMovimientos.PostBanco;
begin
     if zBancos.State = dsEdit then
     zBancos.Post;
end;


procedure TfrmBancosMovimientos.cxSubirClick(Sender: TObject);
var
  posActual,i: Integer;
  posIntercambio: Integer;
  bm: TBookmark;
  zFolios:TUniquery;
  SaldoActual:Double;
begin
  if zMovimiento.RecordCount > 1 then
  begin
    posActual := zMovimiento.FieldByName('Folio').AsInteger;
    if posActual > 1 then
    begin
      zMovimiento.IndexFieldNames := '';
      zMovimiento.Refresh;
      zMovimiento.First;
      while Not zMovimiento.Eof do
      begin
        if zMovimiento.FieldByName('Folio').AsInteger = posActual - 1 then
        begin
          zMovimiento.Edit;
          zMovimiento.FieldByName('Folio').AsInteger := posActual;
          zMovimiento.Post;
        end
        else if zMovimiento.FieldByName('Folio').AsInteger = posActual then
        begin
          zMovimiento.Edit;
          zMovimiento.FieldByName('Folio').AsInteger := posActual - 1;
          zMovimiento.Post;
        end;

        zMovimiento.Next;
      end;
      zMovimiento.IndexFieldNames := 'Folio ASC';
      zMovimiento.Refresh;

      zMovimiento.First;
      i:=1;
      while Not zMovimiento.Eof do
      begin
        if zMovimiento.FieldByName('Folio').AsInteger = posActual - 1 then
        begin
          bm := zMovimiento.GetBookmark;
        end
        else begin
          if zMovimiento.FieldByName('Folio').AsInteger <> i then
          begin
            zMovimiento.Edit;
            zMovimiento.FieldByName('Folio').AsInteger := i;
            zMovimiento.Post;
          end;
        end;
        inc(i);
        zMovimiento.Next;
      end;
       zMovimiento.GotoBookmark(bm);

    end;
  end;

  zMovimiento.First;
  while Not zMovimiento.Eof do
  begin

    if zMovimiento.FieldByName('Folio').AsInteger = 1 then
    begin
      zMovimiento.Edit;
      zMovimiento.FieldByName('Saldo').AsFloat := (cxSaldoApertura.EditValue + zMovimiento.FieldByName('SaldoCliente').AsFloat) - zMovimiento.FieldByName('SaldoProv').AsFloat;
      zMovimiento.Post;
      SaldoActual:=zMovimiento.FieldByName('Saldo').AsFloat;
    end
    else begin
      zMovimiento.Edit;
      zMovimiento.FieldByName('Saldo').AsFloat := (SaldoActual + zMovimiento.FieldByName('SaldoCliente').AsFloat) - zMovimiento.FieldByName('SaldoProv').AsFloat;
      zMovimiento.Post;
      SaldoActual:=zMovimiento.FieldByName('Saldo').AsFloat;
    end;

      zMovimiento.Next;
  end;
end;

procedure TfrmBancosMovimientos.cxSucursalExit(Sender: TObject);
begin
  PostBanco;
end;

procedure TfrmBancosMovimientos.cxTipoCambioExit(Sender: TObject);
begin
  PostBanco;
end;

procedure TfrmBancosMovimientos.cxUbicarClick(Sender: TObject);
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

    zPagoDetalle.FieldByName('UbicacionComprobante').AsString :=  ExtractFileDir(Archivo)+'\'+ExtractFileName(Archivo);

  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
      if zPagoDetalle.state in [dsInsert, dsEdit] then
         lNoGuardarDocto := True;
    end;
  end;

end;

procedure TfrmBancosMovimientos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if zBancos.State = dsEdit then
     zBancos.Post;
  guardar_leer_grid(View_movBanco,frmBancosMovimientos,1);
  guardar_leer_grid(cxView_Movimiento,frmBancosMovimientos,1);
  Action := caFree;
end;

procedure TfrmBancosMovimientos.FormShow(Sender: TObject);
begin

  btnPermisos := global_btnPermisos;

  Titulo := 'Movimientos';
  cxLeyenda.Caption := Titulo;
  btnPermisos := global_btnPermisos;

  IsOpen := False;

  cxSplitterDatos.Visible := False;
  PanelContiene.Visible := False;
  panelDetalle.Visible := False;
  cxSplitterDetalle.Visible := False;

  zbancos.Active := False ;
  AsignarSQL(zbancos,'rh_master_bancos',pUpdate);
  filtrarDataSet(zbancos, 'Banco',[-1]);
  zbancos.Open;

  zMovimiento.Active := False;
  AsignarSQL(zMovimiento, 'master_bancosmovimientos', pUpdate);
  FiltrarDataSet(zMovimiento, 'Movimiento,Banco,Mes, Ejercicio', [-1,zbancos.FieldByName('IdMBanco').AsInteger, -1,-1]);
  zMovimiento.Open;


  Clientes.Active := False ;
  AsignarSQL(Clientes,'master_clientes',pUpdate);
  FiltrarDataSet(Clientes, 'IdCliente',['-1']);
  Clientes.Open;

  Proveedores.Active := False ;
  AsignarSQL(Proveedores,'master_proveedores',pUpdate);
  FiltrarDataSet(Proveedores, 'IdProveedor',['-1']);
  Proveedores.Open;

  zFormasPago.Active := False ;
  AsignarSQL(zFormasPago,'cfdi_formapago',pUpdate);
  FiltrarDataSet(zFormasPago, 'IdFormaPago',['-1']);
  zFormasPago.Open;

//  zIndicador.Active := False ;
//  AsignarSQL(zIndicador,'movimiento_indicadores',pUpdate);
//  FiltrarDataSet(zIndicador, 'IdIndicador',['-1']);
//  zIndicador.Open;

//    zPedidos.Active:=False;
//    zPedidos.SQL.Text:='select IdOrdenCompra, Codigo from anexo_pedidos union Select -1 ,'+QuotedStr('S/N')+'  as Todos';
//    zPedidos.Open;

  zOrdenesdetrabajo.Active := False ;
  AsignarSQL(zOrdenesdetrabajo,'ordenesdetrabajo',pUpdate);
  filtrarDataSet(zOrdenesdetrabajo, 'Contrato,TProyecto',[global_contrato,'Presupuesto']);
  zOrdenesdetrabajo.Open;
  zOrdenesdetrabajo.Fieldbyname('sNumeroOrden').AsString;


//  zPedidos.Active := False ;
//  AsignarSQL(zPedidos,'anexo_pedidos',pUpdate);
//  filtrarDataSet(zPedidos, 'Contrato',[global_contrato]);
//  zPedidos.Open;

  zClase.Active := False ;
  AsignarSQL(zClase,'master_clases',pUpdate);
  filtrarDataSet(zClase, 'Clase',['-1']);
  zClase.Open;

//  zPagoDetalle.Active := False;
//  AsignarSQL(zPagoDetalle, 'movimiento_detallePago', pUpdate);
//  zPagoDetalle.Open;


  zTipoMov.Active := False ;
  AsignarSQL(zTipoMov,'master_tipomovimiento',pUpdate);
  filtrarDataSet(zTipoMov, 'TipoMov',['-1']);
  zTipoMov.Open;

  zMoneda.Active := False ;
  AsignarSQL(zMoneda,'master_moneda',pUpdate);
  filtrarDataSet(zMoneda, 'IdMoneda, Codigo, Activo',['-1', '-1','Si']);
  zMoneda.Open;

//  Bancos2.Active := False ;
//  AsignarSQL(Bancos2,'rh_master_bancos',pUpdate);
//  filtrarDataSet(Bancos2, 'Banco',[-1]);
//  Bancos2.Open;

  inicio;

  IsOpen:= True;
  View_movBanco.DataController.Groups.FullExpand;

  PermisosBotones(frmBancosMovimientos,btnPermisos);

  guardar_leer_grid(View_movBanco,frmBancosMovimientos,0);
  guardar_leer_grid(cxView_movimiento,frmBancosMovimientos,0);
end;

procedure TfrmBancosMovimientos.frmBarraH11btnAddClick(Sender: TObject);
var
  zFolios : TUniQuery;
begin

  try
    panel1.Visible:=False;
    cxsgrid.Visible:=False;
    zFolios:=tUniquery.create(nil);
    zFolios.Connection := Connection.uConnection;
    zFolios.Active := False;
    zFolios.SQL.Text := 'select IfNull((max(Folio)),0)+1  as Folios from master_bancosmovimientos '+
    'where IdMBanco = :Banco';
    zFolios.ParamByName('Banco').AsInteger := zBancos.FieldByName('IdMBanco').AsInteger;
    zFolios.Open;

    if (zBancos.FieldByName('TipoCambio').AsVariant = 0) or (zBancos.FieldByName('TipoCambio').AsVariant = null)or
       (zBancos.FieldByName('IdMoneda').AsVariant = 0) or (zBancos.FieldByName('IdMoneda').AsVariant = null)then
    begin
      ShowMessage('Es necesario ingresar el Tipo de Cambio o Moneda');
      cxTipoCambio.SetFocus;
    end
    else begin
      cxLeyenda.Caption:=titulo + '[Añadiendo]';
      frmBarraH11.btnAddClick(Sender);
      panelContiene.Visible:=True;
      cxSplitterDatos.Visible := True;
      grid_movimiento.Enabled:=False;
      panel1.Visible:=False;
      cxsgrid.Visible:=False;

      zMovimiento.First;

      //Se guardan datos para autollenar al insertar el valor anterior..
      AnteriorArray[1] := floattostr(zMovimiento.FieldByName('Saldo').AsFloat);

      zMovimiento.Append;
      zMovimiento.FieldValues['Codigo']     := autoFolio(zMovimiento,'master_bancosmovimientos');
      zMovimiento.FieldValues['IdMBanco']  := zBancos.FieldByName('IdMBanco').AsInteger;
     //zMovimiento.FieldValues['Transaccion']     := 'Ingreso';
     ComboTransacccion;

      zMovimiento.FieldValues['IdTipoMovimiento']  := zTipoMov.FieldByName('IdTipoMovimiento').AsInteger;
      zMovimiento.FieldValues['CorreoEnviado']    := 'No';
      zMovimiento.FieldValues['IdFormaPago']:= zFormasPago.FieldByName('IdFormaPago').AsInteger;
      zMovimiento.FieldValues['Monto'] := 0;
      zMovimiento.FieldValues['TipoCambio']:= zBancos.FieldByName('TipoCambio').AsFloat;
      zMovimiento.FieldValues['Fecha'] := Now();
      zMovimiento.FieldValues['IdMoneda']:= zBancos.FieldByName('IdMoneda').AsString;
      zMovimiento.FieldByName('Folio').AsInteger := zFolios.FieldByName('Folios').asInteger;
      zMovimiento.FieldValues['Saldo']  :=  AnteriorArray[1];

      cxTransaccion.SetFocus;



      cxSplitterDetalle.Visible := False;
      PanelDetalle.Visible       := False;
    end;
   zFolios.Destroy;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos', 'Al añadir registro', 0);
    end;
  end;

end;

procedure TfrmBancosMovimientos.frxEntradaGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'CANTIDAD_LETRA') = 0 then
  begin
     zmoneda.Locate('IdMoneda',zpedidos.FieldByName('IdMoneda').AsInteger,[]);
     Value := LetraMontos(zmoneda.FieldByName('Codigo').AsString, zmoneda.FieldByName('MonedaCheque').AsString, zPedidos.FieldByName('dMontoMN').AsFloat );
  end;
end;

procedure TfrmBancosMovimientos.inicio;
begin
  lBanco.Caption := zbancos.FieldByName('RazonSocial').AsString;
  cxCliente.EditValue := zbancos.FieldByName('Cliente').AsString;
  cxSucursal.EditValue := zbancos.FieldByName('Sucursal').AsString;
  cxCuenta.EditValue := zbancos.FieldByName('Cuenta').AsString;
  cxCLABE.EditValue := zbancos.FieldByName('CLABE').AsString;
  cxSaldoApertura.EditValue := zbancos.FieldByName('Saldo').AsFloat;
  cxMoneda.EditValue := zBancos.FieldByName('IdMoneda').AsInteger;
  cxTipoCambio.EditValue := zBancos.FieldByName('TipoCambio').AsFloat;
  cxCorreo.EditValue := zBancos.FieldByName('CorreoAcceso').AsString;
  cxBancaNet.EditValue := zBancos.FieldByName('BancaNet').AsString;
  cxPassword.EditValue := zBancos.FieldByName('Password').AsString;
  cxDispositivo.EditValue := zBancos.FieldByName('PingDispositivo').AsString;
  cxHostPing.EditValue   := zBancos.FieldByName('HostPing').AsString;


  cxEjercicio.Text := 'TODOS';
  cxPeriodo.Text := 'TODOS';
  cxSaldoAnterior.Value := 0;
  cxEgresos.Value := 0;
  cxIngresos.Value := 0;
  cxSaldoFinal.Value := 0;

  ComboTransacccion;
end;

procedure TfrmBancosMovimientos.InsertarRegistro1Click(Sender: TObject);
var
  posActual,i: Integer;
  posIntercambio: Integer;
  lastPos: Integer;
  bm: TBookmark;
  zFolios,zActualizar,zInsert:TUniquery;
  Int,Int2:Integer;
  SaldoActual:Double;
begin
  zFolios:=tUniquery.create(nil);
  zFolios.Connection := Connection.uConnection;
  zFolios.Active := False;
  zFolios.SQL.Text := 'select IfNull((max(Folio)),0)+1  as Folios from master_bancosmovimientos '+
  'where IdMBanco = :Banco';
  zFolios.ParamByName('Banco').AsInteger := zBancos.FieldByName('IdMBanco').AsInteger;
  zFolios.Open;
  Folio:=zFolios.FieldByName('Folios').asInteger;
  Int:=cxView_Movimiento.Controller.FocusedRow.Values[cxView_MovNoMovimiento.Index];

//  Int;
  zInsert:=tUniquery.create(nil);
  zInsert.Connection := connection.uConnection;

  IdMBanco:= zBancos.FieldByName('IdMBanco').AsInteger;
  IdTipoMovimiento:= zTipoMov.FieldByName('IdTipoMovimiento').AsInteger;
  CorreoEnviado   := 'No';
  IdFormaPago:= zFormasPago.FieldByName('IdFormaPago').AsInteger;
  TipoCambio:= zBancos.FieldByName('TipoCambio').AsFloat;
  IdMoneda:= zBancos.FieldByName('IdMoneda').AsInteger;
  Codigo:= autoFolio(zMovimiento,'master_bancosmovimientos');
  zInsert.Active:=False;
  AsignarSQL(zInsert,'insertar_bancos_movimientos', pUpdate);
  FiltrarDataSet(zInsert,'IdMBanco,Codigo,Folio,IdTipoMovimiento,IdFormaPago,IdMoneda,TipoCambio,CorreoEnviado',
  [IdMBanco,Codigo,Folio,IdTipoMovimiento,IdFormaPago,IdMoneda,TipoCambio,CorreoEnviado]);
  zInsert.ExecSQL;
//  AsignarSQL(zActualizar,'copiamover_bancos_movimientos', pUpdate);
//  FiltrarDataSet(zActualizar,'IdMBanco,Codigo,Folio,IdProveedor,IdCliente,IdBanco,IdTipoMovimiento,IdFormaPago,IdMoneda,TipoCambio,Transaccion,Saldo,Referencia,CorreoEnviado,Movimiento',
//  [IdMBanco,Codigo,Folio,IdProveedor,IdCliente,IdBanco,IdTipoMovimiento,IdFormaPago,IdMoneda,TipoCambio,Transaccion,Saldos,Referencia,CorreoEnviado,zMovimiento.FieldByName('IdMovimiento').AsInteger]);
//  zActualizar.ExecSQL;

  zMovimiento.Refresh;
  zMovimiento.Last;
  Int2:=cxView_Movimiento.Controller.FocusedRow.Values[cxView_MovNoMovimiento.Index];
 // cxView_Movimiento.DataController.SelectRows(int2);
//  Int2:=cxView_Movimiento.Controller.FocusedRow.Values[cxView_MovNoMovimiento.Index];
//
 if zMovimiento.RecordCount > 1 then
  begin
//    posActual := zMovimiento.FieldByName('Folio').AsInteger;
    posActual := Int2;
    if posActual > 1 then
    begin
      zMovimiento.IndexFieldNames := '';
      zMovimiento.Refresh;
      zMovimiento.First;
      while Not zMovimiento.Eof do
      begin
        if zMovimiento.FieldByName('Folio').AsInteger = Int then
        begin
          zMovimiento.Edit;
          zMovimiento.FieldByName('Folio').AsInteger := Int+1;
          zMovimiento.Post;
        end
        else if zMovimiento.FieldByName('Folio').AsInteger = posActual then
        begin
          zMovimiento.Edit;
          zMovimiento.FieldByName('Folio').AsInteger := Int;
          zMovimiento.Post;
        end;

        zMovimiento.Next;
      end;
      zMovimiento.IndexFieldNames := 'Folio ASC';
      zMovimiento.Refresh;

      zMovimiento.First;
      i:=1;
      while Not zMovimiento.Eof do
      begin
        if zMovimiento.FieldByName('Folio').AsInteger = Int then
        begin
          bm := zMovimiento.GetBookmark;
        end
        else begin
          if zMovimiento.FieldByName('Folio').AsInteger <> i then
          begin
            zMovimiento.Edit;
            zMovimiento.FieldByName('Folio').AsInteger := i;
            zMovimiento.Post;
          end
        end;
        inc(i);
        zMovimiento.Next;
      end;
      zMovimiento.GotoBookmark(bm);

    end;
  end;

  zMovimiento.First;
  while Not zMovimiento.Eof do
  begin

    if zMovimiento.FieldByName('Folio').AsInteger = 1 then
    begin
      zMovimiento.Edit;
      zMovimiento.FieldByName('Saldo').AsFloat := (cxSaldoApertura.EditValue + zMovimiento.FieldByName('SaldoCliente').AsFloat) - zMovimiento.FieldByName('SaldoProv').AsFloat;
      zMovimiento.Post;
     SaldoActual:=zMovimiento.FieldByName('Saldo').AsFloat;
    end
    else begin
      zMovimiento.Edit;
      zMovimiento.FieldByName('Saldo').AsFloat := (SaldoActual + zMovimiento.FieldByName('SaldoCliente').AsFloat) - zMovimiento.FieldByName('SaldoProv').AsFloat;
      zMovimiento.Post;
      SaldoActual:=zMovimiento.FieldByName('Saldo').AsFloat;

    end;

      zMovimiento.Next;
  end;


end;

procedure TfrmBancosMovimientos.ComboTransacccion;
begin
      if cxTransaccion.Text =  'Ingreso' then
    begin
       dxLayoutItem17.Visible := True;
       dxLayoutItem15.Visible := True;
       dxLayoutItem18.Visible := False;
       dxLayoutItem27.Visible := False;
       dxLayoutItem43.Visible := False;
       dxLayoutItem1.Visible := False;
    end
    else
     if cxTransaccion.Text =  'Egreso' then
     begin
       dxLayoutItem18.Visible := True;
       dxLayoutItem27.Visible := True;
       dxLayoutItem17.Visible := False;
       dxLayoutItem15.Visible := False;
       dxLayoutItem43.Visible := False;
       dxLayoutItem1.Visible := False;
    end
    else
    if cxTransaccion.Text =  'Traspaso' then begin
       dxLayoutItem18.Visible := False;
       dxLayoutItem27.Visible := False;
       dxLayoutItem17.Visible := False;
       dxLayoutItem15.Visible := False;
       dxLayoutItem43.Visible := True;
       dxLayoutItem1.Visible := True;
    end
    else begin
       dxLayoutItem18.Visible := False;
       dxLayoutItem27.Visible := False;
       dxLayoutItem17.Visible := False;
       dxLayoutItem15.Visible := False;
       dxLayoutItem43.Visible := False;
       dxLayoutItem1.Visible := False;
    end;

  if (zMovimiento.State = dsInsert) or (zMovimiento.State = dsEdit) then
  begin
        if cxTransaccion.Text = 'Ingreso' then begin
        zMovimiento.FieldValues['IdCliente']     := Clientes.FieldByName('IdCliente').AsInteger;
        zMovimiento.FieldValues['IdProveedor']    := 0;
        zMovimiento.FieldValues['IdBanco']  := 0;
      end
      else
      if cxTransaccion.Text = 'Egreso' then
       begin
        zMovimiento.FieldValues['IdProveedor']    := Proveedores.FieldByName('IdProveedor').AsInteger;
        zMovimiento.FieldValues['IdCliente']     := 0;
        zMovimiento.FieldValues['IdBanco']  := 0;
      end
      else
      if cxTransaccion.Text = 'Traspaso' then begin
        zMovimiento.FieldValues['IdProveedor']    := 0;
        zMovimiento.FieldValues['IdCliente']     := 0;
        zMovimiento.FieldValues['IdBanco']  := zbancos.FieldByName('IdBanco').AsInteger;
      end;
  end;


end;

procedure TfrmBancosMovimientos.CopiarRegistroClick(Sender: TObject);
var
zIdCompr,zInsert,zActualizar:TUniquery;
begin
//  InsertarRegistro1.Enabled := True;
//  CopiarRegistro.Enabled := False;
  zIdCompr:=tUniquery.create(nil);
  zIdCompr.Connection := connection.uConnection;
  zIdCompr.Active:=False;
  AsignarSQL(zIdCompr,'copiar_bancos_movimientos', pUpdate);
  FiltrarDataSet(zIdCompr,'Movimiento',[cxView_Movimiento.DataController.DataSource.DataSet.FieldByName('IdMovimiento').AsInteger]);
  zIdCompr.Open;

  IdMBanco:=zIdCompr.FieldByName('IdMBanco').AsInteger;
  IdComprobante:=zIdCompr.FieldByName('IdComprobante').AsString;
  Codigo:=zIdCompr.FieldByName('Codigo').AsString;
//  Folio:=zIdCompr.FieldByName('Folio').AsInteger;
  IdProveedor:=zIdCompr.FieldByName('IdProveedor').AsInteger;
  IdCliente:=zIdCompr.FieldByName('IdCliente').AsInteger;
  IdBanco:=zIdCompr.FieldByName('IdBanco').AsInteger;
  IdTipoMovimiento:=zIdCompr.FieldByName('IdTipoMovimiento').AsInteger;
  IdFormaPago:=zIdCompr.FieldByName('IdFormaPago').AsInteger;
  IdMoneda:=zIdCompr.FieldByName('IdMoneda').AsInteger;
  FolioComprobante:=zIdCompr.FieldByName('FolioComprobante').AsString;
  TipoCambio:=zIdCompr.FieldByName('TipoCambio').AsInteger;
  Transaccion:=zIdCompr.FieldByName('Transaccion').AsString;
  Fecha:=zIdCompr.FieldByName('Fecha').AsDateTime;
  Monto:=zIdCompr.FieldByName('Monto').AsFloat;
  TotalCambio:=zIdCompr.FieldByName('TotalCambio').AsFloat;
  Saldos:=zIdCompr.FieldByName('Saldo').AsFloat;
  Referencia:=zIdCompr.FieldByName('Referencia').AsString;
  CorreoEnviado:=zIdCompr.FieldByName('CorreoEnviado').AsString;
  IMovimiento:=cxView_Movimiento.DataController.DataSet.FieldByName('IdMovimiento').AsInteger;



end;

end.
