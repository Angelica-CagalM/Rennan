unit frm_Pedidos_SAP_Estatus;

interface

uses
  Windows, Messages, Math, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, ADODB, DBCtrls, global, strUtils,Jpeg,
  Mask, OleCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Utilerias,
  Menus, frxClass, frxDBSet, RXDBCtrl, RxLookup, DateUtils, unitactivapop,
  RXCtrls, CheckLst, ToolWin, RxMemDS, ExcelXP, OleServer,  unitExcel, ComObj,
  Excel2000, ZAbstractRODataset, ZDataset, ZAbstractDataset, rxCurrEdit, unitGenerales,
  rxToolEdit,
  unitexcepciones, UnitValidaTexto,
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
  TfrmPedidos_SAP_Estatus = class(TForm)
    ds_anexo_ocompras: TDataSource;
    ds_anexo_pocompras: TDataSource;
    ds_proveedores: TDataSource;
    OpenXLS: TOpenDialog;
    frxEntrada: TfrxReport;
    dtsPartidas: TDataSource;
    ds_insumo: TDataSource;
    ds_moneda: TDataSource;
    frxPrecios: TfrxDBDataset;
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
    Col_Frente: TcxGridDBColumn;
    Col_Moneda: TcxGridDBColumn;
    Col_lugarentrega: TcxGridDBColumn;
    Col_montomn: TcxGridDBColumn;
    cxEstatus: TcxGridDBColumn;
    dbgLevOC: TcxGridLevel;
    zimgfirmas: TUniQuery;
    zqDatos: TUniQuery;
    anexo_pocompras: TUniQuery;
    Proveedores: TUniQuery;
    zqOrdenes: TUniQuery;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    sCodigo: TcxDBTextEdit;
    sLugarEntrega:TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    iIdFecha: TcxDBDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem7:TdxLayoutItem;
    dFechaEntrega: TcxDBDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxProveedor: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
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
    btnProveedores: TcxButton;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    forma_pago: TUniQuery;
    ds_forma_pago: TDataSource;
    Grid_InsumosViewColumn1: TcxGridDBColumn;
    Grid_InsumosViewColumn2: TcxGridDBColumn;
    Cuentas: TUniQuery;
    ds_cuentas: TDataSource;
    frxPDFExport1: TfrxPDFExport;
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
    cxEntrega:TcxDBTextEdit;
    dxLayoutItem11:TdxLayoutItem;
    cxGraficaPresupuesto: TcxButton;
    dxLayoutItem45: TdxLayoutItem;
    cxCheckAgrupa: TcxCheckBox;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl3: TdxLayoutControl;
    cxIva: TcxDBCalcEdit;
    cxRetencion: TcxDBCalcEdit;
    dCambio: TcxDBCurrencyEdit;
    idMoneda: TcxDBLookupComboBox;
    cxButton3: TcxButton;
    cxCuenta: TcxDBLookupComboBox;
    btnCuentas: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxNota: TcxDBMemo;
    dxLayoutItem9: TdxLayoutItem;
    cxFormaPago: TcxDBLookupComboBox;
    cxReferencia: TcxDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    cxImportar: TcxButton;
    OpenDialog1: TOpenDialog;
    TsArchivo: TcxTextEdit;
    PanelProgreso: TPanel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    dsReq: TDataSource;
    zReq: TUniQuery;
    zPlanta: TUniQuery;
    dsPlanta: TDataSource;
    cxPlanta: TcxDBLookupComboBox;
    dxLayoutItem12: TdxLayoutItem;
    cxImportarOC: TcxButton;
    ExcelWorkbook1: TExcelWorkbook;
    ExcelApplication1: TExcelApplication;
    ExcelWorksheet1: TExcelWorksheet;
    zInspeccion: TUniQuery;
    dsInspeccion: TDataSource;
    zInspeccionDetalle: TUniQuery;
    dsInspeccionDetalle: TDataSource;
    zConsult: TUniQuery;
    dsConsult: TDataSource;
    zInspeccionMaterial: TUniQuery;
    dsInspeccionMaterial: TDataSource;
    cxConcentradoOC: TcxButton;
    Panel4: TPanel;
    dxLayoutControl7: TdxLayoutControl;
    btnLimpiarF: TcxButton;
    cxFiltroRequerido: TcxButton;
    cxInicioRequerido: TcxDateEdit;
    cxFinRequerido: TcxDateEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    SaveDialog1: TSaveDialog;
    col_Planta: TcxGridDBColumn;
    col_TipoEstatus: TcxGridDBColumn;
    cxButton2: TcxButton;
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
    procedure cxImportarClick(Sender: TObject);
    procedure OpenXLSClose(Sender: TObject);
    procedure OpenXLSFolderChange(Sender: TObject);
    procedure OpenXLSSelectionChange(Sender: TObject);
    procedure cxImportarOCClick(Sender: TObject);
    procedure Grid_InsumosViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dbg_OCVistaCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxConcentradoOCClick(Sender: TObject);
    procedure cxFiltroRequeridoClick(Sender: TObject);
    procedure btnLimpiarFClick(Sender: TObject);

  private
    sMenuP: string;
    btnPermisos : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidos_SAP_Estatus: TfrmPedidos_SAP_Estatus;
  SavePlace: TBookmark;
  sArchivo      : String ;
  txtAux: string;
  lNuevo: Boolean;
  OpcButton1: string;
  Valida: boolean;
  filtro, buscar: string;
  lValidaReq: boolean;

  AnteriorArray : array[1..5] of string;

  Excel, Libro, Hoja: Variant;
  columnas : array[1..260] of String ;

  Tipo_Moneda: string;

  //ZQuerys de importacion
  zMedida,
  zFases,
  zAnexo,
  zSitio,
  zAlmacen,
  zCiudad,
  zProveedor, zContacto, zRequisicion, zMoneda, zCondiciones,
  zPersonal, zGuardiaDetalle, zGuardiaPersonal  :  tUniquery;
  iCountRegistrosBarra : integer;

  lOpcionImportar,sMensaje : string;

implementation

uses frm_connection, frm_proveedores, Func_Genericas,
  frm_Presupuesto, frm_Empresas, frm_FirmasNota, Frm_Modal, frm_Pedidos;

{$R *.dfm}

procedure TfrmPedidos_SAP_Estatus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  guardar_leer_grid(dbg_OCVista,frmPedidos_SAP_Estatus,1);
  guardar_leer_grid(cxViewDetalleOC,frmPedidos_SAP_Estatus,1);
  guardar_leer_grid(Grid_InsumosView,frmPedidos_SAP_Estatus,1);
  global_frmActivo := '';
  action := cafree;
end;


procedure TfrmPedidos_SAP_Estatus.FormShow(Sender: TObject);
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

    AsignarSQL(forma_pago,'formas_pago',pUpdate);
    FiltrarDataSet(forma_pago,'Id',['-1']);
    forma_pago.Open;

    AsignarSQL(cuentas,'master_cuentas_empresa',pUpdate);
    FiltrarDataSet(cuentas,'IdEmpresa',[connection.ucontrato.FieldByName('IdEmpresa').AsInteger]);
    cuentas.Open;

    zPlanta.Active:= False;
    AsignarSQL(zPlanta,'master_planta',pUpdate);
    FiltrarDataSet(zPlanta,'IdPlanta,Codigo,Activo',[-1,-1,-1]);
    zPlanta.Open;

     AsignarSQL(zInspeccionMaterial,'alm_inspeccion_material',pUpdate);
    FiltrarDataSet(zInspeccionMaterial,'Contrato,IdInspeccion', [global_contrato,-1]);
    zInspeccionMaterial.Open;

    AsignarSQL(zqordenes,'ordenesdetrabajo_presu_val',pUpdate);
    if temE.FieldByName('FK_Titulo').AsString = 'SIANI' then
       FiltrarDataSet(zqordenes,'Contrato,Tipo,Status',[global_contrato,'-1','-1'])
    else
       FiltrarDataSet(zqordenes,'Contrato,Tipo,Estatus',[global_contrato,'PROYECTO','-1']);
    zqOrdenes.Open ;

    IsOpen:=False;
    anexo_ocompras.DisableControls;

    AsignarSQL(anexo_ocompras,'anexo_pedidos',pUpdate);
    FiltrarDataSet(anexo_ocompras,'Contrato,Planta',[global_contrato,'SUBTEC']);
    anexo_ocompras.Open;

    Orden_Compra_scroll;

    anexo_ocompras.EnableControls;
    IsOpen:=true;

    grid_entradas.enabled := true;
    Grid_Entradas.SetFocus;

    AsignarSQL(zFirma, 'rd_firmas', pUpdate);
    FiltrarDataSet(zFirma, 'IdFirma, Contrato',[-1, Global_Contrato]);
    zFirma.Open;

    zFirma.Filtered := False;
    zFirma.Filter   := 'VistaUsuario = '+ QuotedStr(self.Caption);
    zFirma.Filtered := True;

    PanelTopD.Visible:=False;
    PanelDatos.Visible:=False;
    cxSplitter1.Visible:=False;
    cxSplitterD.Visible := False;
    PanelDetalle.Visible := False;

    FechaInicio.Date := Date;
    FechaFin.Date    := Date;

    PermisosBotones(frmPedidos_SAP_Estatus,btnPermisos);

    if connection.uContrato.FieldByName('FK_Titulo').AsString<>'CMMI' then
       cxCreaEntrada.Visible := False;

    dbg_OCVista.DataController.Groups.FullExpand;

    if temE.FieldByName('FK_Titulo').AsString = 'SIANI' then
      tdCostoNuevo.Properties.DisplayFormat:='$,0.00;-$,0.00';

    cxInicioRequerido.Date := StrToDate('01'+copy(DateToStr(date),3,10));
    cxFinRequerido.Date    := date;

    dbg_OCVista.Columns[5].Visible := False;

    cxImportarOC.Visible := False;
    cxImportar.Visible := False;
    cxConcentradoOC.Visible := False;

    frmBarraH11.btnAdd.Visible:=False;
    frmBarraH11.btnEdit.Visible:=False;
    frmBarraH11.btnDelete.Visible:=False;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al iniciar formulario', 0);
    end;
  end;
  guardar_leer_grid(dbg_OCVista,frmPedidos_SAP_Estatus,0);
  guardar_leer_grid(cxViewDetalleOC,frmPedidos_SAP_Estatus,0);
  guardar_leer_grid(Grid_InsumosView,frmPedidos_SAP_Estatus,0);
end;

procedure TfrmPedidos_SAP_Estatus.BtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPedidos_SAP_Estatus.btnExportaClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
  dlgSave : TSaveDialog;
begin
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

procedure TfrmPedidos_SAP_Estatus.btnFirmaClick(Sender: TObject);
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

procedure TfrmPedidos_SAP_Estatus.btnImpInformeClick(Sender: TObject);
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

procedure TfrmPedidos_SAP_Estatus.btnInfoDClick(Sender: TObject);
begin
  cxSplitter1.Visible:=not cxSplitter1.Visible;
  PanelDatos.Visible:= not PanelDatos.Visible;
end;

procedure TfrmPedidos_SAP_Estatus.btnLimpiarFClick(Sender: TObject);
begin
   dbg_OCVista.DataController.Filter.FilterText := '';
   dbg_OCVista.DataController.Filter.Clear;
   anexo_ocompras.Filtered := False;

   cxInicioRequerido.Style.Font.Color := clNone;
   cxInicioRequerido.Style.Font.Style := [];
   cxFinRequerido.Style.Font.Color := clNone;
   cxFinRequerido.Style.Font.Style := [];
end;

procedure TfrmPedidos_SAP_Estatus.btnProveedoresClick(Sender: TObject);
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

procedure TfrmPedidos_SAP_Estatus.frmBarra1btnAddClick(Sender: TObject);
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

procedure TfrmPedidos_SAP_Estatus.frmBarra1btnEditClick(Sender: TObject);
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


procedure TfrmPedidos_SAP_Estatus.frmBarra1btnPostClick(Sender: TObject);
var
  SavePlace: TBookmark;
  dCantidad: Currency;
  conteo: integer;
  indice, iGrid    : integer;
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
        iGrid     := 0;
        if Grid_InsumosView.DataController.GetSelectedCount > 0 then
           indice := Grid_InsumosView.DataController.GetSelectedRowIndex(iGrid)
        else
        begin
            Grid_InsumosView.DataController.SelectRows(Grid_InsumosView.DataController.FocusedRecordIndex,Grid_InsumosView.DataController.FocusedRecordIndex);
            indice := Grid_InsumosView.DataController.GetSelectedRowIndex(iGrid)
        end;
        Grid_InsumosView.DataController.FocusedRowIndex := indice;
        SavePlace := Grid_InsumosView.DataController.DataSource.DataSet.GetBookmark;

        with Grid_InsumosView.DataController.DataSource.DataSet do
        for iGrid := 0 to Grid_InsumosView.DataController.GetSelectedCount - 1 do
        begin
            indice := Grid_InsumosView.DataController.GetSelectedRowIndex(iGrid);
            Grid_InsumosView.DataController.FocusedRowIndex := indice;

//            if Grid_InsumosView.DataController.GetSelectedCount > 0 then
//               tdCantidad.Value := Grid_insumosView.DataController.DataSet.FieldbyName('dRequisicion').AsFloat;

            //Sino existe el registro se inserta
            if not anexo_pocompras.Locate('IdInsumo;iFolioRequisicion; iItemReq',VarArrayOf([Grid_insumosView.DataController.DataSet.FieldByName('IdInsumo').AsInteger,Grid_insumosView.DataController.DataSet.FieldByName('iFolioRequisicion').AsInteger,insumos.FieldByName('iItem').AsInteger]), [loCaseInsensitive]) then
            begin
                AsignarSQL(connection.qryUBusca,'inserta_ordencompra_det_001', pUpdate);
                FiltrarDataSet(connection.qryUBusca, 'Contrato,IdCompra,Insumo,item,Descripcion,Medida,Cantidad,Costo,Requisicion,iItemReq',
                 [Global_contrato,
                  anexo_ocompras.FieldByName('IdOrdenCompra').AsInteger,
                  Grid_insumosView.DataController.DataSet.FieldValues['IdInsumo'],
                  anexo_pocompras.RecordCount+1,
                  Grid_insumosView.DataController.DataSet.FieldValues['Material'],
                  Grid_insumosView.DataController.DataSet.FieldValues['IdMedida'],
                  tdCantidad.Value,
                  tdCostoNuevo.Value,
                  Grid_insumosView.DataController.DataSet.FieldByName('iFolioRequisicion').AsInteger,
                  insumos.FieldByName('iItem').AsInteger]);
                connection.qryUBusca.Execute;
            end
            else
            begin
              if MessageDlg('Se encontro una coincidencia en la orden de compra actual, Desea sumar la cantidad de material?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                Connection.zUCommand.Active := False;
                Connection.zUCommand.SQL.Clear;
                Connection.zUCommand.SQL.Add('UPDATE anexo_ppedido SET  dCantidad =:Cantidad ' +
                  'WHERE IdOrdenCompra =:Folio and IdInsumo =:Insumo and iItem = 1 and iItemReq =: iItemReq ');
                Connection.zUCommand.Params.ParamByName('Folio').AsInteger  := anexo_ocompras.FieldValues['IdOrdenCompra'];
                Connection.zUCommand.Params.ParamByName('Insumo').AsInteger := Grid_insumosView.DataController.DataSet.FieldValues['IdInsumo'];
                Connection.zUCommand.Params.ParamByName('Cantidad').AsFloat := tdCantidad.Value + Grid_insumosView.DataController.DataSet.FieldByName('dSumaCantidad').AsFloat;
                Connection.zUCommand.Params.ParamByName('iItemReq').AsInteger := insumos.FieldByName('iItem').AsInteger;
                Connection.zUCommand.ExecSQL;
              end;
            end;

            //Actualizamos el estatus del material si es una requisicion;
           Connection.zUCommand.Active := False;
           Connection.zUCommand.SQL.Clear;
           Connection.zUCommand.SQL.Add('UPDATE anexo_prequisicion SET sEstado ='+Quotedstr('COMPRADO')+' ' +
            'WHERE FIND_IN_SET(iFolioRequisicion,:Folio) And IdInsumo =:Insumo and iItem =:iItem ');
           Connection.zUCommand.Params.ParamByName('Folio').AsInteger    := Grid_insumosView.DataController.DataSet.FieldByName('iFolioRequisicion').AsInteger;
           Connection.zUCommand.Params.ParamByName('Insumo').AsInteger   := Grid_insumosView.DataController.DataSet.FieldValues['IdInsumo'];
           Connection.zUCommand.Params.ParamByName('iItem').AsInteger   := Grid_insumosView.DataController.DataSet.FieldValues['iItem'];
           Connection.zUCommand.ExecSQL;
        end;

      insumos.Filtered := False;
      insumos.Refresh;


      insumos.Filter   := 'dRequisicion <> dSumaCantidad';
      insumos.Filtered := True;


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

   PermisosBotones(frmPedidos_SAP_Estatus,btnPermisos);
end;

procedure TfrmPedidos_SAP_Estatus.frmBarra1btnDeleteClick(Sender: TObject);
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

procedure TfrmPedidos_SAP_Estatus.InsumosAfterScroll(DataSet: TDataSet);
begin

//  if insumos.RecordCount > 0 then
//  begin
//    if anexo_ocompras.FieldValues['iFolioRequisicion'] > 0 then
//      tdCantidad.Value := insumos.FieldByName('dRequisicion').AsFloat
//    else
//      tdCantidad.Value := 0;
//     tdCostoNuevo.Value := insumos.FieldByName('dCosto').AsFloat;
//  end;
end;

procedure TfrmPedidos_SAP_Estatus.cmdCancelarClick(Sender: TObject);
begin
  Grid_Entradas.Enabled := True;
  Grid_insumos.Enabled := True;
  GridPartidas.Enabled := True;
end;

procedure TfrmPedidos_SAP_Estatus.Col_montomnGetProperties(Sender: TcxCustomGridTableItem;
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

procedure TfrmPedidos_SAP_Estatus.Col_PrecioUnitGetProperties(
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

procedure TfrmPedidos_SAP_Estatus.Col_TotalGetProperties(Sender: TcxCustomGridTableItem;
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

procedure TfrmPedidos_SAP_Estatus.ExportarExcel1Click(Sender: TObject);
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

procedure TfrmPedidos_SAP_Estatus.Imprimir1Click(Sender: TObject);
var
   frxOrdenCompra : TfrxDBDataset;
begin
  try
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

procedure TfrmPedidos_SAP_Estatus.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmPedidos_SAP_Estatus.GridPartidasCellClick(Column: TColumn);
begin
  if anexo_pocompras.RecordCount > 0 then
  begin
    tdCantidad.Value := anexo_pocompras.FieldValues['dCantidad'];
    tDescuentoMat.Value := anexo_pocompras.FieldValues['dDescuento'];
    tdCostoNuevo.Value := anexo_pocompras.FieldValues['dCosto'];
  end;

end;

procedure TfrmPedidos_SAP_Estatus.frmBarra2btnAddClick(Sender: TObject);
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

    anexo_ocompras.FieldByName('sContrato').AsString := global_contrato;
    anexo_ocompras.FieldByName('Codigo').AsString := autofolio(anexo_ocompras,'anexo_pedidos');
    anexo_ocompras.FieldByName('dIdFecha').AsDateTime:= date;
    anexo_ocompras.FieldByName('dFechaEntrega').AsDateTime:= date;
    dFechaEntrega.OnExit(sender);

    cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger := proveedores.FieldByName('IdProveedor').AsInteger;
    idMoneda.DataBinding.DataSource.DataSet.FieldByName('IdMoneda').AsInteger :=  moneda.FieldByName('IdMoneda').AsInteger;
    cxFormaPago.DataBinding.DataSource.DataSet.FieldByName('IdFormaPago').AsInteger :=  forma_pago.FieldByName('IdFormaPago').AsInteger;
    anexo_ocompras.FieldByName('sNumeroOrden').AsString :=  zqOrdenes.FieldByName('sNumeroOrden').AsString;
    cxPlanta.DataBinding.DataSource.DataSet.FieldByName('IdPlanta').AsInteger:=zPlanta.FieldByName('IdPlanta').AsInteger;
    cxCuenta.DataBinding.DataSource.DataSet.FieldByName('IdCuenta').AsInteger               :=  cuentas.FieldByName('IdCuenta').AsInteger;
    cxProveedor.OnExit(sender);
    anexo_ocompras.FieldByName('iPeriodo').AsInteger := connection.uconfiguracion.FieldByName('iEjercicio').AsInteger;
    anexo_ocompras.FieldByName('dIva').AsFloat     := connection.ucontrato.FieldByName('Iva').AsFloat;
    anexo_ocompras.FieldByName('dRetencionIVA').AsFloat := connection.ucontrato.FieldByName('RetencionIva').AsFloat;
    anexo_ocompras.FieldByName('dDescuento').AsFloat := 0;

    sCodigo.SetFocus;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al añadir registro', 0);
    end;
  end;
end;

procedure TfrmPedidos_SAP_Estatus.frmBarra2btnEditClick(Sender: TObject);
begin
  if not dbg_ocVista.DataController.DataSource.DataSet.IsEmpty then begin
    try
      if anexo_ocompras.RecordCount > 0 then
      begin
        if (anexo_ocompras.FieldValues['sStatus'] = 'PENDIENTE') then
        begin
            if not PanelDatos.Visible then
               PanelDatos.Visible:=True;
            PanelTopD.Visible:=True;

            OpcButton1 := 'Edit';
            frmBarraH11.btnEditClick(Sender);
            pgControl.ActivePageIndex := 0;
            anexo_ocompras.edit;
            sCodigo.SetFocus;
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

procedure TfrmPedidos_SAP_Estatus.frmBarra2btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  RequisicionesSeleccionadas: TStringList;
begin

  nombres := TStringList.Create; cadenas := TStringList.Create;
  nombres.Add('Proveedor');
  nombres.Add('Moneda');
  nombres.Add('Notas');
  nombres.Add('Lugar de Entrega');
  nombres.Add('Tiempo Entrega');
  cadenas.Add(cxProveedor.Text);
  cadenas.Add(idMoneda.Text);
  cadenas.Add(cxNota.Text);
  cadenas.Add(sLugarEntrega.Text);
  cadenas.Add(cxEntrega.Text);

  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  //continuainserccion de datos
  try

    anexo_ocompras.FieldByName('iFolioRequisicion').AsInteger := 0;

    if OpcButton1 = 'New' then
    begin
      with connection do
      begin

        try
          connection.uUsuario.Locate('sIdUsuario', global_usuario, []);
          anexo_ocompras.FieldByName('sCondiciones').AsString := cxFormaPago.Text;
          anexo_ocompras.FieldByName('sElaboro').AsString     := connection.uUsuario.FieldByName('sNombre').AsString;
          anexo_ocompras.FieldByName('sStatus').AsString      := 'PENDIENTE';
          anexo_ocompras.FieldByName('sPrecios').AsString     := '';
          anexo_ocompras.FieldByName('sVigencia').AsString    := '';
          anexo_ocompras.FieldByName('sVendedor').AsString    := '';
          anexo_ocompras.FieldByName('sIdUsuario').AsString   := global_usuario;
          anexo_ocompras.FieldByName('sMail').AsString        := connection.uUsuario.FieldByName('sMail').AsString;
          anexo_ocompras.Post;
          creaNotyfi(1,'anexo_pedidos','Codigo',anexo_ocompras.FieldByName('Codigo').AsString,'Estatus','PENDIENTE',anexo_ocompras.FieldByName('dFechaEntrega').AsDateTime,30);
          isOpen := False;
          anexo_ocompras.cancel;
          anexo_ocompras.Refresh;
          anexo_pocompras.Refresh;
          isOPen := True;

          kardex_almacen('Crea Orden de Compra  No. [' + anexo_ocompras.FieldByName('Codigo').AsString + ']', 'Otros Movimientos');
          anexo_ocompras.cancel;
        except
          on e: exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Ordenes de Compra', 'Al salvar registro', 0);
          end;
        end
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
    anexo_pocompras.Refresh;
    try
       dbg_OCVista.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
       anexo_ocompras.Refresh;
       anexo_pocompras.Refresh;
    Except
    Else
       dbg_OCVista.DataController.DataSource.DataSet.FreeBookmark(SavePlace);
       anexo_pocompras.Refresh;
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

procedure TfrmPedidos_SAP_Estatus.frmBarra2btnDeleteClick(Sender: TObject);
begin
  try
    if (anexo_ocompras.FieldValues['sStatus'] = 'PENDIENTE') then
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


procedure TfrmPedidos_SAP_Estatus.frmBarra2btnRefreshClick(Sender: TObject);
begin
  try
    isOpen := False;
    anexo_ocompras.Refresh;
    anexo_pocompras.Refresh;
    isOpen := True;
    Proveedores.Refresh;
    zqOrdenes.Refresh;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al actualizar grid', 0);
    end;
  end;
end;

procedure TfrmPedidos_SAP_Estatus.frmBarra2btnCancelClick(Sender: TObject);
begin
  try
    OpcButton1                := '';
    anexo_ocompras.cancel;
    frmBarraH11.btnActive;
    grid_entradas.enabled     := true;
    btnInfoD.Enabled := True;
    Grid_Entradas.SetFocus;

    cxSplitter1.Visible:= False;
    PanelDatos.Visible := False;

    PanelTopD.Visible:=False;
    global_frmActivo := '';
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al cancelar registro', 0);
    end;
  end;
end;

procedure TfrmPedidos_SAP_Estatus.frmBarra2btnExitClick(Sender: TObject);
begin

  close
end;

procedure TfrmPedidos_SAP_Estatus.Grid_InsumosViewCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    if insumos.RecordCount > 0 then
    begin
        tdCantidad.Value := insumos.FieldByName('dRequisicion').AsFloat;
        tdCostoNuevo.Value := insumos.FieldByName('dCosto').AsFloat;
    end;
end;

procedure TfrmPedidos_SAP_Estatus.Grid_InsumosViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if Grid_InsumosView.OptionsView.CellAutoHeight then
       Grid_InsumosView.OptionsView.CellAutoHeight := False
    else
       Grid_InsumosView.OptionsView.CellAutoHeight := True;
end;

procedure TfrmPedidos_SAP_Estatus.tabInformeShow(Sender: TObject);
begin
  opcionImprimir.EditValue := 1;
end;

procedure TfrmPedidos_SAP_Estatus.GridPartidasGetCellParams(Sender: TObject; Field: TField;
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

procedure TfrmPedidos_SAP_Estatus.pgControlChange(Sender: TObject);
begin
   if (anexo_ocompras.State = dsInsert ) or (anexo_ocompras.State = dsEdit) then
   begin
       anexo_ocompras.Cancel;
       frmBarraH21.btnCancelClick(Sender);
       grid_entradas.enabled     := true;
       Grid_Entradas.SetFocus;
   end;
end;

procedure TfrmPedidos_SAP_Estatus.cxProveedorExit(Sender: TObject);
begin

    if (anexo_ocompras.State = dsInsert ) or (anexo_ocompras.State = dsEdit) then
    begin
       proveedores.Locate('IdProveedor',cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger,[]);
       anexo_ocompras.FieldByName('Correo').AsString    := proveedores.FieldByName('Correo').AsString;
       anexo_ocompras.FieldByName('sVendedor').AsString := proveedores.FieldByName('Contacto').AsString;
    end;
    cxProveedor.Style.Color := global_color_SalidaERP;
    cxReferencia.SetFocus;
end;

procedure TfrmPedidos_SAP_Estatus.cxViewDetalleOCCellClick(Sender: TcxCustomGridTableView;
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

procedure TfrmPedidos_SAP_Estatus.cxViewDetalleOCCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
     if cxViewDetalleOC.OptionsView.CellAutoHeight then
       cxViewDetalleOC.OptionsView.CellAutoHeight := False
    else
       cxViewDetalleOC.OptionsView.CellAutoHeight := True;
end;

procedure TfrmPedidos_SAP_Estatus.dbg_OCVistaCellClick(Sender: TcxCustomGridTableView;
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

procedure TfrmPedidos_SAP_Estatus.dbg_OCVistaCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if dbg_OCVista.OptionsView.CellAutoHeight then
       dbg_OCVista.OptionsView.CellAutoHeight := False
    else
       dbg_OCVista.OptionsView.CellAutoHeight := True;
end;

procedure TfrmPedidos_SAP_Estatus.dbg_OCVistaDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  IsOpen := False;
end;

procedure TfrmPedidos_SAP_Estatus.dbg_OCVistaDataControllerFilterChanged(Sender: TObject);
begin
  IsOpen:=True;
end;

procedure TfrmPedidos_SAP_Estatus.dbg_OCVistaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (Key = VK_UP) or ( Key = VK_DOWN)  then
        if PanelDetalle.Visible then
          Orden_compra_scroll;
end;

procedure TfrmPedidos_SAP_Estatus.cxButton1Click(Sender: TObject);
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

procedure TfrmPedidos_SAP_Estatus.cxComprasxProveedorClick(Sender: TObject);
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

procedure TfrmPedidos_SAP_Estatus.cxConcentradoOCClick(Sender: TObject);
Var
  CadError, CadenaNombre, OrdenVigencia: String;
//////////////////////////////////// PLANTILAS DE IMPORTACION /////////////////////////////////////
Function GenerarPlantilla: Boolean;
Var
  Resultado: Boolean;
    Procedure DatosPlantilla;
    Var
      CadFecha, tmpNombre, cadena, sColIDName, sId : String;
      fs: tStream;
      i,x,n : integer;
    Begin
      // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 83;

      {$REGION 'PLANTILLA MR SAP'}

            Excel.Columns['A:A'].ColumnWidth := 10.9;
            Excel.Columns['B:B'].ColumnWidth := 10.7;
            Excel.Columns['C:C'].ColumnWidth := 14.4;
            Excel.Columns['D:D'].ColumnWidth := 13.3;
            Excel.Columns['E:E'].ColumnWidth := 22;
            Excel.Columns['F:F'].ColumnWidth := 14.4;
            Excel.Columns['G:G'].ColumnWidth := 15;
            Excel.Columns['H:H'].ColumnWidth := 60;
            Excel.Columns['I:I'].ColumnWidth := 32.6;
            Excel.Columns['J:J'].ColumnWidth := 26;
            Excel.Columns['K:K'].ColumnWidth := 20;
            Excel.Columns['L:P'].ColumnWidth := 15;
            Excel.Columns['Q:Q'].ColumnWidth := 10.7;

            //Texto Columnas en Gris
            Excel.Cells[2,1].Select;
            Excel.Selection.Value := 'MR/Tracking Number';
            Excel.Cells[2,2].Select;
            Excel.Selection.Value := 'Cantidad';
            Excel.Cells[2,3].Select;
            Excel.Selection.Value := 'U.M.';
            Excel.Cells[2,4].Select;
            Excel.Selection.Value := 'Traz/Inventory Material Number';
            Excel.Cells[2,5].Select;
            Excel.Selection.Value := 'CC Subsea 7';
            Excel.Cells[2,6].Select;
            Excel.Selection.Value := 'Cod. Material';
            Excel.Cells[2,7].Select;
            Excel.Selection.Value := 'P.U.E.';
            Excel.Cells[2,8].Select;
            Excel.Selection.Value := 'Descrpipción';
            Excel.Cells[2,9].Select;
            Excel.Selection.Value := 'Proyecto';
            Excel.Cells[2,10].Select;
            Excel.Selection.Value := 'ORDEN DE TRABAJO';
            Excel.Cells[2,11].Select;
            Excel.Selection.Value := 'OC Noil';
            Excel.Cells[2,12].Select;
            Excel.Selection.Value := '360';
            Excel.Cells[2,13].Select;
            Excel.Selection.Value := 'Importe';
            Excel.Cells[2,14].Select;
            Excel.Selection.Value := 'Iva';
            Excel.Cells[2,15].Select;
            Excel.Selection.Value := 'Total';
            Excel.Cells[2,16].Select;
            Excel.Selection.Value := 'Fixed Rate MXN';
            Excel.Cells[2,17].Select;
            Excel.Selection.Value := 'Moneda';

            i:=3;
            x:=1;
            zReporteDetalle.First;
            while not zReporteDetalle.Eof do
            begin
              Excel.Cells[i, 1].Select;
              Excel.Selection.Value := zReporteDetalle.FieldByName('sNumFolio').AsString;

              Excel.Cells[i, 2].Select;
              Excel.Selection.NumberFormat := '#,##0.00';
              Excel.Selection.Value := zReporteDetalle.FieldByName('dCantidad').AsFloat;

              Excel.Cells[i, 3].Select;
              Excel.Selection.NumberFormat := '@';
              Excel.Selection.Value := zReporteDetalle.FieldByName('Medida').AsString;

              Excel.Cells[i, 4].Select;
              Excel.Selection.Value := zReporteDetalle.FieldByName('NumeroMaterial').AsString;

              Excel.Cells[i, 5].Select;
              Excel.Selection.Value := zReporteDetalle.FieldByName('CentroCosto').AsString;

              Excel.Cells[i, 6].Select;
              Excel.Selection.Value := zReporteDetalle.FieldByName('sIdInsumo').AsString;

              Excel.Cells[i, 7].Select;
              Excel.Selection.Value := zReporteDetalle.FieldByName('Extraordinario').AsString;

              Excel.Cells[i, 8].Select;
              Excel.Selection.Value := zReporteDetalle.FieldByName('mDescripcion').AsString;

              Excel.Cells[i, 9].Select;
              Excel.Selection.Value := zReporteDetalle.FieldByName('Descripcion_proyecto').AsString;

              Excel.Cells[i, 10].Select;
              Excel.Selection.Value := zReporteDetalle.FieldByName('Descripcion_OT').AsString;

              Excel.Cells[i, 11].Select;
              Excel.Selection.Value := zReporteDetalle.FieldByName('OrdenCompra').AsString;

              Excel.Cells[i, 12].Select;
              Excel.Selection.NumberFormat := '$#,##0.00';
              Excel.Selection.Value := zReporteDetalle.FieldByName('dCosto').AsFloat;

              Excel.Cells[i, 13].Select;
              Excel.Selection.NumberFormat := '$#,##0.00';
              Excel.Selection.Value := zReporteDetalle.FieldByName('dMontoMN').AsFloat;

              Excel.Cells[i, 14].Select;
              Excel.Selection.NumberFormat := '$#,##0.00';
              Excel.Selection.Value := zReporteDetalle.FieldByName('Iva').AsFloat;

              Excel.Cells[i, 15].Select;
              Excel.Selection.NumberFormat := '$#,##0.00';
              Excel.Selection.Value := zReporteDetalle.FieldByName('Total').AsFloat;

              Excel.Cells[i, 16].Select;
              Excel.Selection.NumberFormat := '$#,##0.00';
              Excel.Selection.Value := zReporteDetalle.FieldByName('dMontoMN').AsFloat;

              Excel.Cells[i, 17].Select;
              Excel.Selection.Value := 'MXN';

              zReporteDetalle.Next;

              inc(i);
              inc(x);
            end;

            Excel.Range['A'+IntToStr(3)+':AQ'+IntToStr(i)].Select;
            Excel.Selection.WrapText := False;

            Excel.Range['A1:Q1'].Select;
            Excel.Selection.Value := 'PERIODO DEL '+DateTostr(cxInicioRequerido.Date)+' AL '+ DateTostr(cxFInRequerido.Date);
            //Excel.Selection.HorizontalAlignment := xlleft;
            //Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Interior.Color      := $00C0C0BF;
            Excel.Selection.Font.Name := 'Calibri';
            Excel.Selection.Font.Size := 12;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.WrapText := True;
            Excel.Selection.MergeCells := True;
            Excel.Selection.Borders[xlEdgeTop].LineStyle:= 1;
            Excel.Selection.Borders[xlEdgeTop].Weight:= 2;

            Excel.Range['A2:Q2'].Select;
            Excel.Selection.Interior.Color  := $00E6C29B;;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Name := 'Calibri';
            Excel.Selection.Font.Size := 11;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.WrapText := True;
            Excel.Selection.Borders[xlEdgeTop].LineStyle:= 1;
            Excel.Selection.Borders[xlEdgeTop].Weight:= 2;
            //Excel.Selection.Borders[xlEdgeBottom].LineStyle:= 1;
            //Excel.Selection.Borders[xlEdgeBottom].Weight:= 2;

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
        Hoja.Name := 'ORDENES DE COMPRA';


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

  // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
  If Not SaveDialog1.Execute Then
    Exit;

  // Generar el ambiente de excel
  try
    Excel := CreateOleObject('Excel.Application');
  except
       on e : exception do begin
           FreeAndNil(Excel);
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Exportación de Ordenes de Compra', 'Al importar datos', 0);
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

  zReporteDetalle.Active := False;
  AsignarSQL(zReporteDetalle,'reporte_oc_periodo',pUpdate);
  FiltrarDataSet(zReporteDetalle,'Folio,FechaI,FechaF',[-1,fechaSQL(cxInicioRequerido.Date),FechaSQL(cxFinRequerido.Date)]);
  zReporteDetalle.Open;

  GenerarPlantilla;
  Excel := '';

  if CadError <> '' then
    showmessage(CadError)
  else
    tsarchivo.Text:='OC Perdiodos';

end;

procedure TfrmPedidos_SAP_Estatus.cxCreaEntradaClick(Sender: TObject);
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



procedure TfrmPedidos_SAP_Estatus.cxFiltroRequeridoClick(Sender: TObject);
begin
    anexo_ocompras.Filtered := False;
    anexo_ocompras.Filter   :=' dIdFecha >= '+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and dIdFecha <= '+QuotedStr(FechaSQL(cxFinRequerido.Date));
    anexo_ocompras.Filtered := True;

    cxInicioRequerido.Style.Font.Color := clBlue;
    cxInicioRequerido.Style.Font.Style := [fsBold];
    cxFinRequerido.Style.Font.Color := clBlue;
    cxFinRequerido.Style.Font.Style := [fsBold];
end;

procedure TfrmPedidos_SAP_Estatus.cxCancelaMaterialClick(Sender: TObject);
begin
   anexo_pocompras.Cancel;
   PanelMaterial.Visible := False;
   cxSplitMaterial.Visible := False;
end;

procedure TfrmPedidos_SAP_Estatus.cxCentroCostoxComprasClick(Sender: TObject);
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
      FiltrarDataSet(frmRepositorio.Reporte,'Contrato,filter_by_code,var_by_code1',[global_contrato,sParamFiltroFechaCentroC,sParamFiltroAgrupa]);
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

procedure TfrmPedidos_SAP_Estatus.cxGuardaMaterialClick(Sender: TObject);
begin
   anexo_pocompras.Post;
   cxCancelaMaterial.Click;
end;

procedure TfrmPedidos_SAP_Estatus.cxImportarClick(Sender: TObject);
var
   x, y, i : Integer;
begin
    lOpcionImportar := 'SAPSS7';
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

procedure TfrmPedidos_SAP_Estatus.cxImportarOCClick(Sender: TObject);
var
   x, y, i : Integer;
begin
    lOpcionImportar := 'SUBTEC';
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

procedure TfrmPedidos_SAP_Estatus.cxGraficaPresupuestoClick(Sender: TObject);
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

procedure TfrmPedidos_SAP_Estatus.cxGridDBTableView1StylesGetContentStyle(
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

procedure TfrmPedidos_SAP_Estatus.dFechaEntregaExit(Sender: TObject);
begin
    try
        if ((dFechaEntrega.Date - iIdFecha.Date)) > 0 then
           cxEntrega.Text := FloatToStr((dFechaEntrega.Date - iIdFecha.Date)) + ' DIAS '
        else
           cxEntrega.Text := 'MISMO DIA ' ;

        anexo_ocompras.FieldByName('sEntrega').AsString := cxEntrega.Text;
    Except

    end;
end;

procedure TfrmPedidos_SAP_Estatus.dxToggleSwitch1PropertiesChange(Sender: TObject);
begin
    if True then

end;

procedure TfrmPedidos_SAP_Estatus.btnAddClick(Sender: TObject);
begin
  if (anexo_ocompras.FieldValues['sStatus'] <> 'PENDIENTE') then
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


procedure TfrmPedidos_SAP_Estatus.btnCancelClick(Sender: TObject);
begin
   PanelInsumos.Visible := False;
end;

procedure TfrmPedidos_SAP_Estatus.btnCuentasClick(Sender: TObject);
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

procedure TfrmPedidos_SAP_Estatus.btnDeleteClick(Sender: TObject);
var
  SavePlace: TBookmark;
  indice, iGrid    : integer;
begin
    if (anexo_ocompras.FieldValues['sStatus'] <> 'PENDIENTE') then
    begin
       messageDLG('La Orden de Compra se encuentra en Estatus: '+anexo_ocompras.FieldValues['sStatus'], mtInformation, [mbOk],0);
       exit;
    end;
    anexo_pocompras.Refresh;
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

procedure TfrmPedidos_SAP_Estatus.btnDetalleClick(Sender: TObject);
begin
  cxSplitterD.Visible:=not cxSplitterD.Visible;
  PanelDetalle.Visible:= not PanelDetalle.Visible;

  if PanelDetalle.Visible = False then
     Orden_Compra_scroll;
  anexo_pocompras.Refresh;
end;

procedure TfrmPedidos_SAP_Estatus.btnEditClick(Sender: TObject);
begin
   if (anexo_ocompras.FieldValues['sStatus'] <> 'PENDIENTE') then
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

procedure TfrmPedidos_SAP_Estatus.FormActivate(Sender: TObject);
begin
  Proveedores.Refresh;
end;


procedure TfrmPedidos_SAP_Estatus.validaciones;
begin
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
  end
  else
  valida:=False;
end;

procedure TfrmPedidos_SAP_Estatus.validaPedido;
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


 procedure TfrmPedidos_SAP_Estatus.frxEntradaGetValue(const VarName: string;
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

procedure TfrmPedidos_SAP_Estatus.EnterControl(Sender: TObject);
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

procedure TfrmPedidos_SAP_Estatus.SalidaControl(Sender: TObject);
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

procedure TfrmPedidos_SAP_Estatus.OpenXLSClose(Sender: TObject);
var
   IdInspeccion,flcid, Fila,Fila2, x : integer;
   lDetalle,lContinuaAux : boolean;
   sValue2, sValueAux  : string;

   CodErr1, CodErr2 : String;
   zSelecInsumo: TUniquery;
   //Importacion de Requisicion 2019
   sFolioReq, dFechaReq, dFechaSol, sItem, sLugarEntrega, sFormaPago, sDiasEntrega,
   sCodigo, sMedida, dCantidad, sPrecio, sProyecto,
   sInspeccion,sMat,sFolioOC, sFolioReqAux, sFolioOCAux, sProveedor, sMoneda, sDatos  :string;
   zOC:TUniquery;
   dCosto, dMontoIva : double;
   iFolioReq, IdInsumo,IdProveedor, IdMoneda, IdFormaPago, totalRegistros : integer;
   dFecha : tDate;
   lMoneda, lTerminos, lTiempo :boolean;
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

              //flcid := GetUserDefaultLCID;  Se omite ya que en SS7 no permite la importación.
              flcid := LOCALE_USER_DEFAULT;
              ExcelApplication1.Connect;
              ExcelApplication1.Visible[flcid] := true;
              ExcelApplication1.UserControl := true;

              ExcelWorkbook1.ConnectTo(ExcelApplication1.Workbooks.Open(tsArchivo.Text,
                emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam,
                emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, flcid));

              ExcelWorksheet1.ConnectTo(ExcelWorkbook1.Sheets.Item[1] as ExcelWorkSheet);
              Fila := 1;
              lContinuaAux := True;

              {$REGION 'FORMATO DE ORDEN DE COMPRA SUBTEC'}
              if lOpcionImportar = 'SUBTEC' then
              begin
                  sMensaje  := '';
                  lMoneda   := False;
                  lTerminos := False;
                  lTiempo   := False;
                  if lContinuaAux then
                  begin
                     {$Region 'DATOS PRINCIPALES PARA LA OC SUBTEC'}
                      zRequisicion := tUniQuery.Create( nil );
                      zRequisicion.Connection := connection.uConnection;

                      AsignarSQL(zRequisicion,'Reporte_requisicion',pUpdate);
                      FiltrarDataSet(zRequisicion,'Contrato,Folio',[global_contrato,-1]);
                      zRequisicion.Open;

                      //Conteo de registros
                      iCountRegistrosBarra := 0;
                      Fila2 := 2;
                      sFolioOC := '';
                      sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                      while (trim(sValue2) <> 'Condiciones Comerciales') do
                      begin
                          inc(iCountRegistrosBarra);

                          //Datos de la caratula de la OC
                          if Fila2 = 4 then
                          begin
                             dFechaSol := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila2)), 'F' + Trim(IntToStr(Fila2))].Value2;
                             dFechaSol := FechaLargaCorta(dFechaSol);
                          end;

                          if Fila2 = 5 then
                             sFolioOC  := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila2)), 'F' + Trim(IntToStr(Fila2))].Value2;

                          if sValue2 = trim('DATOS GENERALES') then
                          begin
                              sDatos := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2+1)), 'A' + Trim(IntToStr(Fila2+1))].Value2;

                              sFolioReq  := trim(copy(sDatos,Pos('# de MR:',sDatos)+9,length(sDatos)));
                              sFolioReq  := trim(copy(sFolioReq,1,Pos('Lugar de Entrega:',sFolioReq)-1));

                              ExcelApplication1.Range['A' + Trim(IntToStr(Fila2+1)), 'A' + Trim(IntToStr(Fila2+1))].Interior.ColorIndex := 2;
                              //Buscamos la requisicion
                              if zRequisicion.Locate('sNumFolio',sFolioReq,[loCaseInsensitive]) then
                                 iFolioReq := zRequisicion.FieldByName('iFolioRequisicion').AsInteger
                              else
                              begin
                                 sMensaje := sMensaje +'# de MR No Encontrado'+#13;
                                 ExcelApplication1.Range['A' + Trim(IntToStr(Fila2+1)), 'A' + Trim(IntToStr(Fila2+1))].Interior.ColorIndex := 6;
                                 lContinuaAux := False;
                              end;

                              sProyecto := zRequisicion.FieldByName('sNumeroOrden').AsString;

                              sProveedor := trim(copy(sDatos,Pos('Proveedor:',sDatos)+11,length(sDatos)));
                              sProveedor := trim(copy(sProveedor,1,Pos('N° cotización:',sProveedor)-1));

                              if Proveedores.Locate('RazonSocial', sProveedor, [loCaseInsensitive]) then
                                  IdProveedor := Proveedores.FieldByName('IdProveedor').AsInteger
                              else
                              begin
                                  sMensaje := sMensaje +'Proveedor No encontrado'+#13;
                                  lContinuaAux := False;
                                  ExcelApplication1.Range['A' + Trim(IntToStr(Fila2+1)), 'A' + Trim(IntToStr(Fila2+1))].Interior.ColorIndex := 6;
                              end;
                              sLugarEntrega := trim(copy(sDatos,Pos('Lugar de Entrega:',sDatos)+18,100));
                          end;

                          if pos('Moneda:',sValue2) > 0 then
                          begin
                             sMoneda   := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                             sMoneda   := trim(copy(sMoneda,Pos('Moneda:',sMoneda)+8,20));

                             ExcelApplication1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 2;
                             if Moneda.Locate('Codigo', sMoneda, [loCaseInsensitive]) then
                               IdMoneda := Moneda.FieldByName('IdMoneda').AsInteger
                             else
                             begin
                                sMensaje := sMensaje +'Moneda no Encontrada'+#13;
                                ExcelApplication1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 6;
                                lContinuaAux := False;
                             end;
                             lMoneda := True;
                          end;

                          if pos('Términos de Pago:',sValue2) > 0 then
                          begin
                             sFormaPago   := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                             sFormaPago   := trim(copy(sFormaPago,Pos('Términos de Pago:',sFormaPago)+18,100));

                             ExcelApplication1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 2;
                             if forma_pago.Locate('sDescripcion', sFormaPago, [loCaseInsensitive]) then
                               IdFormaPago := forma_pago.FieldByName('IdFormaPago').AsInteger
                             else
                             begin
                                sMensaje := sMensaje +'Término o Forma de pago no encontrada'+#13;
                                ExcelApplication1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 6;
                                lContinuaAux := False;
                             end;
                             lTerminos := True;
                          end;

                          if pos('Tiempo de entrega:',sValue2) > 0 then
                          begin
                             sDiasEntrega := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                             sDiasEntrega := trim(copy(sDiasEntrega,Pos('Tiempo de entrega:',sDiasEntrega)+19,100));
                             sDiasEntrega := trim(copy(sDiasEntrega,1,pos('DIAS',sDiasEntrega)-1));
                             if sDiasEntrega <> '' then
                             begin
                                 dFecha := StrToDate(dFechaSol) + strToint(sDiasEntrega);
                                 dFechaReq := DateToStr(dFecha);
                             end
                             else
                                sMensaje := sMensaje +'Tiempo de entrega no encontrado'+#13;
                             lTiempo := True;
                          end;

                          fila2 := fila2 + 1 ;
                          sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(fila2)), 'A' + Trim(IntToStr(fila2))].Value2);
                      end;


                      if lMoneda = False then
                      begin
                         sMensaje := sMensaje + 'Campo Moneda No econtrado'+#13;
                         lContinuaAux := False;
                      end;

                      if lTerminos = False then
                      begin
                         sMensaje := sMensaje + 'Campo Términos de Pago No econtrado'+#13;
                         lContinuaAux := False;
                      end;

                      if lTiempo = False then
                      begin
                         sMensaje := sMensaje + 'Campo Tiempo de entrega No econtrado'+#13;
                         lContinuaAux := False;
                      end;

                      if lContinuaAux then
                      begin
                          //Ahora se consulta la ultima requisicion insertada
                          AsignarSQL(connection.qryUBusca2,'consulta_inserta_ordencompra', pUpdate);
                          FiltrarDataSet(connection.qryUBusca2, 'Contrato,FolioOC',[Global_contrato,sFolioOC]);
                          connection.qryUBusca2.Open;

                          if (connection.QryUBusca2.RecordCount = 0) and (lContinuaAux) then
                          begin
                              //Inserta datos de la OC(PO)
                              AsignarSQL(connection.qryUBusca,'inserta_ordencompra_001', pUpdate);
                              FiltrarDataSet(connection.qryUBusca, 'Contrato,Codigo,Periodo,Folio,Proveedor,Proyecto,Fecha,FechaEntrega,Elaboro,FormaPago,PeriodoPago,Moneda,LugarEntrega,CondicionesC,Iva,Retencion,TEntrega,Contacto,correo,Usuario,Notas,Fecha,IdPlanta',
                              [Global_contrato,sFolioOC,FechaSQL(date),iFolioReq,IdProveedor,sProyecto,FechaSQL(strToDate(dFechaSol)),FechaSQL(StrToDate(dFechaReq)),connection.uUsuario.FieldByName('sNombre').AsString,IdFormaPago,0,IdMoneda,sLugarentrega,'',connection.uContrato.FieldByName('Iva').AsFloat,0,'','','',global_usuario,'',FechaSQL(StrToDate(dFechaReq)),zRequisicion.FieldByName('IdPlanta').AsInteger]);
                              connection.qryUBusca.Execute;

                              anexo_ocompras.Refresh;
                          end;

                          AsignarSQL(connection.qryUBusca2,'consulta_inserta_ordencompra', pUpdate);
                          FiltrarDataSet(connection.qryUBusca2, 'Contrato,FolioOC',[Global_contrato,sFolioOC]);
                          connection.qryUBusca2.Open;

                          {$region 'Detalle de OC subtec'}
                          Fila2 := 9;
                          sFolioOC := '';
                          sValueAux := 'Item';
                          sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                          while (sValue2 <> '') do
                          begin
                              inc(iCountRegistrosBarra);

                              sCodigo   := trim(ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila2)), 'D' + Trim(IntToStr(Fila2))].Value2);
                              dCantidad := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila2)), 'B' + Trim(IntToStr(Fila2))].Value2;
                              sPrecio   := ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila2)), 'G' + Trim(IntToStr(Fila2))].Value2;
                              sItem     := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;

                              dCantidad := stringreplace(dCantidad, ' ', '', [rfReplaceAll, rfIgnoreCase]);
                              sPrecio := stringreplace(sPrecio, '$', '', [rfReplaceAll, rfIgnoreCase]);
                              sPrecio := trim(sPrecio);

                              sCodigo := copy(sCodigo,1,pos(' ',sCodigo)-1);

                              ExcelApplication1.Range['D' + Trim(IntToStr(Fila2)), 'D' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 2;
                              //Buscamos la requisicion
                              if zRequisicion.Locate('sNumFolio;Codigo',vararrayof([sFolioReq,sCodigo]),[loCaseInsensitive]) then
                                 IdInsumo := zRequisicion.FieldByName('IdInsumo').AsInteger
                              else
                              begin
                                 ExcelApplication1.Range['D' + Trim(IntToStr(Fila2)), 'D' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 6;
                                 lContinuaAux := False;
                                 sMensaje := sMensaje + 'Códigos de Material No encontrados'+#13;
                              end;

                              AsignarSQL(connection.qryUBusca,'consulta_inserta_ordencompra_det', pUpdate);
                              FiltrarDataSet(connection.qryUBusca, 'Contrato,iFolioOC,IdInsumo',
                              [Global_contrato,connection.qryUBusca2.FieldByName('IdOrdenCompra').AsInteger,IdInsumo]);
                              connection.qryUBusca.Open;

                              if (connection.qryUBusca.RecordCount = 0) and (lContinuaAux) then
                              begin
                                  AsignarSQL(connection.qryUBusca,'inserta_ordencompra_det_001', pUpdate);
                                  FiltrarDataSet(connection.qryUBusca, 'Contrato,IdCompra,Insumo,item,Descripcion,Medida,Cantidad,Costo,Requisicion',
                                  [Global_contrato,connection.qryUBusca2.FieldByName('IdOrdenCompra').AsInteger,IdInsumo,StrToInt(sItem),zRequisicion.FieldByName('mDescripcion').AsString,zRequisicion.FieldByName('IdMedida').AsInteger,StrToFloat(dCantidad),dCosto,zRequisicion.FieldByName('iFolioRequisicion').AsInteger]);
                                  connection.qryUBusca.Execute;
                              end;

                              fila2 := fila2 + 1 ;
                              sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(fila2)), 'A' + Trim(IntToStr(fila2))].Value2);
                          end;
                          {$ENDREGION}

                      end;

                      {$endregion}
                      if lContinuaAux = False then
                         messageDLG('No se encontraton algunos datos!'+#13+sMensaje,mtInformation,[mbOk],0);
                      zRequisicion.Destroy;

                  end;
              end;
              {$ENDREGION}


              {$REGION 'FORMATO DE ORDEN DE COMPRA SS7'}
              if lOpcionImportar = 'SAPSS7' then
              begin
                  if lContinuaAux then
                  begin
                      Fila2 := 1;
                      x := 1;
                      lContinuaAux := True;
                      {$REGION 'IMPORTACION DE DATOS DE CABECERA'}
                      if lContinuaAux then
                      begin
                          Fila2 := 2;
                          totalRegistros := 0;
                          sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                          while (sValue2 <> '') do
                          begin
                              inc(totalRegistros);
                              fila2 := fila2 + 1 ;
                              sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(fila2)), 'A' + Trim(IntToStr(fila2))].Value2);
                          end;

                          zRequisicion := tUniQuery.Create( nil );
                          zRequisicion.Connection := connection.uConnection;

                          PanelProgreso.Visible := True;
                          BarraMostrar(True, progreso, LabelProceso );
                          //Conteo de registros
                          iCountRegistrosBarra := 0;
                          Fila2 := 2;
                          sFolioOC := '';
                          sFolioReqAux := '';
                          sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                          while (sValue2 <> '') do
                          begin
                              inc(iCountRegistrosBarra);
                              lContinuaAux := True;

                              //Aqui leemos todas las columnas necesarias para el prier registro
                              sFolioOC  := ExcelWorksheet1.Range['O' + Trim(IntToStr(Fila2)), 'O' + Trim(IntToStr(Fila2))].Value2;
                              dFechaSol := DateToStr(ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2);
                              dFechaReq := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila2)), 'B' + Trim(IntToStr(Fila2))].Value2;
                              sCodigo   := ExcelWorksheet1.Range['R' + Trim(IntToStr(Fila2)), 'R' + Trim(IntToStr(Fila2))].Value2;
                              dCantidad := ExcelWorksheet1.Range['I' + Trim(IntToStr(Fila2)), 'I' + Trim(IntToStr(Fila2))].Value2;
                              sProveedor := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila2)), 'D' + Trim(IntToStr(Fila2))].Value2;
                              sMoneda   := ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila2)), 'K' + Trim(IntToStr(Fila2))].Value2;
                              sPrecio   := ExcelWorksheet1.Range['L' + Trim(IntToStr(Fila2)), 'L' + Trim(IntToStr(Fila2))].Value2;
                              sFolioReq := ExcelWorksheet1.Range['P' + Trim(IntToStr(Fila2)), 'P' + Trim(IntToStr(Fila2))].Value2;
                              sItem     := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila2)), 'F' + Trim(IntToStr(Fila2))].Value2;
                              sMat      := ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila2)), 'H' + Trim(IntToStr(Fila2))].Value2;

                              if sFolioReqAux <> sFolioReq then
                              begin
                                  sFolioReqAux := sFolioReq;
                                  AsignarSQL(zRequisicion,'importa_oc_consulta_requisicion',pUpdate);
                                  FiltrarDataSet(zRequisicion,'sNumFolio',[sFolioReq]);
                                  zRequisicion.Open;
                              end;

                              if zRequisicion.Locate('sNumFolio;CodigoMaterial',vararrayof([sFolioReq,sCodigo]),[loCaseInsensitive]) then
                              begin
                                 iFolioReq := zRequisicion.FieldByName('iFolioRequisicion').AsInteger ;
                                 IdInsumo :=  zRequisicion.FieldByName('IdInsumo').AsInteger ;
                              end
                              else
                              begin
                                 ExcelApplication1.Range['P' + Trim(IntToStr(Fila2)), 'P' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 6;
                                 ExcelApplication1.Range['R' + Trim(IntToStr(Fila2)), 'R' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 6;
                                 if pos('# de MR ó Material no Encontrado',sMensaje) = 0 then
                                    sMensaje := sMensaje +'# de MR ó Material no Encontrado'+#13;
                                 lContinuaAux := False;
                              end;

                              if Proveedores.Locate('Nombre', sProveedor, [loCaseInsensitive]) then
                                  IdProveedor := Proveedores.FieldByName('IdProveedor').AsInteger
                              else
                              begin
                                  IdProveedor := 0;
                                  lContinuaAux := False;
                                  ExcelApplication1.Range['D' + Trim(IntToStr(Fila2)), 'D' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 6;
                                  if pos('Proveedor no Encontrada',sMensaje) = 0 then
                                     sMensaje := sMensaje +'Proveedor no Encontrada'+#13;
                              end;

                              if Moneda.Locate('Codigo', sMoneda, [loCaseInsensitive]) then
                                  IdMoneda := Moneda.FieldByName('IdMoneda').AsInteger
                              else
                              begin
                                 ExcelApplication1.Range['K' + Trim(IntToStr(Fila2)), 'K' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 6;
                                 if pos('Moneda no Encontrada',sMensaje) = 0 then
                                    sMensaje := sMensaje +'Moneda no Encontrada'+#13;
                                 lContinuaAux := False;
                              end;

                              sProyecto := zRequisicion.FieldByName('sNumeroOrden').AsString;

                              if sFolioOC <> sFolioOCAux  then
                              begin
                                  sFolioOCAux := sFolioOC;
                                  //Ahora se consulta la ultima orden de compra insertada

                                  AsignarSQL(connection.qryUBusca2,'consulta_inserta_ordencompra', pUpdate);
                                  FiltrarDataSet(connection.qryUBusca2, 'Contrato,FolioOC',[Global_contrato,sFolioOC]);
                                  connection.qryUBusca2.Open;

                                  if (connection.QryUBusca2.RecordCount = 0) and  (lContinuaAux)then
                                  begin
                                      //Inserta datos de la OC(PO)
                                      AsignarSQL(connection.qryUBusca,'inserta_ordencompra_001', pUpdate);
                                      FiltrarDataSet(connection.qryUBusca, 'Contrato,Codigo,Periodo,Folio,Proveedor,Proyecto,Fecha,FechaEntrega,Elaboro,FormaPago,PeriodoPago,Moneda,LugarEntrega,CondicionesC,Iva,Retencion,TEntrega,Contacto,correo,Usuario,Notas,Fecha,IdPlanta',
                                      [Global_contrato,sFolioOC,FechaSQL(date),0,IdProveedor,sProyecto,FechaSQL(strToDate(dFechaSol)),FechaSQL(StrToDate(dFechaSol)),connection.uUsuario.FieldByName('sNombre').AsString,8,0,IdMoneda,'','',0,0,'','','',global_usuario,'',FechaSQL(StrToDate(dFechaSol)),zRequisicion.FieldByName('IdPlanta').AsInteger]);
                                      connection.qryUBusca.Execute;

                                      anexo_ocompras.Refresh;

                                      AsignarSQL(connection.qryUBusca2,'consulta_inserta_ordencompra', pUpdate);
                                      FiltrarDataSet(connection.qryUBusca2, 'Contrato,FolioOC',[Global_contrato,sFolioOC]);
                                      connection.qryUBusca2.Open;
                                  end;
                              end;

                              dCosto := StrToFloat(sPrecio)/StrToFLoat(dCantidad);

                              if lContinuaAux then
                              begin
                                  AsignarSQL(connection.qryUBusca,'consulta_inserta_ordencompra_det', pUpdate);
                                  FiltrarDataSet(connection.qryUBusca, 'Contrato,iFolioOC,IdInsumo',
                                  [Global_contrato,connection.qryUBusca2.FieldByName('IdOrdenCompra').AsInteger,IdInsumo]);
                                  connection.qryUBusca.Open;

                                  if (connection.qryUBusca.RecordCount = 0) then
                                  begin
                                      AsignarSQL(connection.qryUBusca,'inserta_ordencompra_det_001', pUpdate);
                                      FiltrarDataSet(connection.qryUBusca, 'Contrato,IdCompra,Insumo,item,Descripcion,Medida,Cantidad,Costo,Requisicion',
                                      [Global_contrato,connection.qryUBusca2.FieldByName('IdOrdenCompra').AsInteger,IdInsumo,StrToInt(sItem),zRequisicion.FieldByName('mDescripcion').AsString,zRequisicion.FieldByName('IdMedida').AsInteger,StrToFloat(dCantidad),dCosto,iFolioReq]);
                                      connection.qryUBusca.Execute;
                                  end;
                              end;

                              BarraProgresoAvance(Progreso, 0,100,100/totalRegistros);
                              fila2 := fila2 + 1 ;
                              sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(fila2)), 'A' + Trim(IntToStr(fila2))].Value2);
                          end;
                      end;
                      {$ENDREGION}
                      zRequisicion.Destroy;
                      PanelProgreso.Visible := False;

                      Orden_Compra_scroll;
                      anexo_ocompras.Refresh;

                      if lContinuaAux = False then
                         messageDLG('No se encontraton algunos datos!'+#13+sMensaje,mtInformation,[mbOk],0);
                      end
                      else
                        messageDLG('Formato de Orden de Compra no Valido!',mtInformation,[mbOk],0);
                  end;
              {$ENDREGION}

              if lContinuaAux then
                 MessageDlg('Proceso Terminado con exito...', mtInformation, [mbOk], 0);
            except
                on E: Exception do
                begin
                    BarraMostrar(True,progreso, LabelProceso);
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
              BarraMostrar(False,progreso, LabelProceso);
          End;


       Except
           PanelProgreso.Visible := True;
       end;
   end;
end;

procedure TfrmPedidos_SAP_Estatus.OpenXLSFolderChange(Sender: TObject);
begin
   tsArchivo.Text := OpenXLS.FileName;
end;

procedure TfrmPedidos_SAP_Estatus.OpenXLSSelectionChange(Sender: TObject);
begin
  tsArchivo.Text := OpenXLS.FileName;
end;

procedure TfrmPedidos_SAP_Estatus.Orden_Compra_scroll;
begin

    if anexo_ocompras.RecordCount > 0 then
    begin
        anexo_pocompras.Active:=false;
        AsignarSQL(anexo_pocompras,'anexo_ppedido',pUpdate);
        FiltrarDataSet(anexo_pocompras,'Folio',[anexo_ocompras.FieldValues['IdOrdenCompra']]);
        anexo_pocompras.Open;

    end;
end;



end.

