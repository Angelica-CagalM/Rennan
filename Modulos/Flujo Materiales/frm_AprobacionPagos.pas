unit frm_AprobacionPagos;

interface

uses
  Windows, Messages, Math, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, ADODB, DBCtrls, global, strUtils,Jpeg,
  Mask, OleCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Utilerias,
  Menus, frxClass, frxDBSet, RXDBCtrl, RxLookup, DateUtils, unitactivapop,
  RXCtrls, CheckLst, ToolWin, RxMemDS, ExcelXP, OleServer,
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
  dxLayoutLookAndFeels, CxGridExportLink, ShellApi, dxCore, cxDateUtils;

type
  TfrmAprobacionP = class(TForm)
    OpenXLS: TOpenDialog;
    frxEntrada: TfrxReport;
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
    ComentariosAdicionales: TMenuItem;
    cxmglst1: TcxImageList;
    OpenPicture: TOpenPictureDialog;
    datasetfrximgfirmas: TfrxDBDataset;
    pm1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    Grid_Entradas: TcxGrid;
    dbg_OCVista: TcxGridDBTableView;
    Col_ordenCompra: TcxGridDBColumn;
    Col_fecha: TcxGridDBColumn;
    Col_Proyecto: TcxGridDBColumn;
    Col_Requisicion: TcxGridDBColumn;
    Col_Proveedor: TcxGridDBColumn;
    Col_Monto: TcxGridDBColumn;
    Col_Banco: TcxGridDBColumn;
    Col_Cuenta: TcxGridDBColumn;
    cxEstatus: TcxGridDBColumn;
    dbgLevOC: TcxGridLevel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxCodigo: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxFecha: TcxDBDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxRequisicion: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxProveedor: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cxProyecto: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxSolicita: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    btnProveedores: TcxButton;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    cxButton1: TcxButton;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dbg_Codigo: TcxGridDBColumn;
    frxPDFExport1: TfrxPDFExport;
    PanelTop: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    PanelDatos: TPanel;
    PanelTopD: TPanel;
    frmBarraH21: TfrmBarraH2;
    PanelPrincipal: TPanel;
    cxSplitter1: TcxSplitter;
    PanelTopDD: TPanel;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxConcepto: TcxDBMemo;
    dxLayoutItem10: TdxLayoutItem;
    cxFormaPago: TcxDBLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    cxEstado: TcxDBComboBox;
    dxLayoutItem12: TdxLayoutItem;
    cxObservaciones: TcxDBMemo;
    dxLayoutItem13: TdxLayoutItem;
    ds_aprobacionPago: TDataSource;
    ds_ordenTrabajo: TDataSource;
    ds_Pedidos: TDataSource;
    zAprobacionPago: TUniQuery;
    zOrdenTrabajo: TUniQuery;
    zPedidos: TUniQuery;
    ds_requisicion: TDataSource;
    ds_cuentaBanco: TDataSource;
    zRequisicion: TUniQuery;
    zCuentaBanco: TUniQuery;
    ds_FormaPago: TDataSource;
    zFormaPago: TUniQuery;
    ds_Proveedor: TDataSource;
    zProveedor: TUniQuery;
    cxOrdenCompra: TcxDBLookupComboBox;
    dxLayoutItem14: TdxLayoutItem;
    zDepartamento: TUniQuery;
    Moneda: TUniQuery;
    ds_moneda: TDataSource;
    cxMonto: TcxDBCurrencyEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxFirma: TcxDBLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    btnFirma: TcxButton;
    dxLayoutItem15: TdxLayoutItem;
    ds_firma: TDataSource;
    zFirma: TUniQuery;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    zExistencia: TUniQuery;
    dsExistencia: TDataSource;
    cxMetodoPago: TcxDBComboBox;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    PanelDetalle: TPanel;
    PanelDetalleT: TPanel;
    cxEliminarDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxNuevoDetalle: TcxButton;
    labelSeleccion: TcxLabel;
    pgControlDetalle: TcxPageControl;
    tabInforme: TcxTabSheet;
    PanelSuperiorInforme: TPanel;
    dxLayoutControl4: TdxLayoutControl;
    opcionImprimir: TcxRadioGroup;
    btnImpInforme: TcxButton;
    cxButton2: TcxButton;
    FechaInicio: TcxDateEdit;
    FechaFin: TcxDateEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutItem43: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    cxSplitterD: TcxSplitter;
    frxPag: TfrxDBDataset;
    frxReportPag: TfrxReport;
    reporte2: TUniQuery;
    zCentroC: TUniQuery;
    dsCentroC: TDataSource;
    cxCentroC: TcxDBLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    cxPagar: TcxButton;
    Col_MontoPagado: TcxGridDBColumn;
    Col_MontoPorPagar: TcxGridDBColumn;
    Col_moneda: TcxGridDBColumn;
    Col_Comprador: TcxGridDBColumn;
    tabParcialidad: TcxTabSheet;
    cxGridParcialidad: TcxGrid;
    cxGridViewParcialidad: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridParcialidadLevel: TcxGridLevel;
    dsParcialidad: TDataSource;
    zParcialidad: TUniQuery;
    dbg_OCVistaColumn1: TcxGridDBColumn;
    zCuentasProveedor: TUniQuery;
    dsCuentasProveedor: TDataSource;
    cbCuentaBancaria: TcxDBLookupComboBox;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    Col_CentroCosto: TcxGridDBColumn;
    dbg_OCVistaColumn2: TcxGridDBColumn;
    dxLayoutItem19: TdxLayoutItem;
    btnPagosProyectos: TcxButton;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    Col_CondicionPago: TcxGridDBColumn;
    crTipoCambio: TcxCurrencyEdit;
    dxLayoutItem20: TdxLayoutItem;
    edtNoFactura: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    lcbCentroCosto: TcxLookupComboBox;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    zComboCC: TUniQuery;
    dsComboCC: TDataSource;
    dxLayoutItem22: TdxLayoutItem;
    btnReporteAuxiliares: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure frmBarra2btnExitClick(Sender: TObject);
    procedure frxEntradaGetValue(const VarName: string;
      var Value: Variant);

    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure validaciones;

    procedure ExportarExcel1Click(Sender: TObject);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnProveedoresClick(Sender: TObject);
    procedure btnImpInformeClick(Sender: TObject);
    procedure dbg_OCVistaDataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: string);
    procedure dbg_OCVistaDataControllerFilterChanged(Sender: TObject);
    procedure btnInfoDClick(Sender: TObject);
    procedure dbg_OCVistaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExportaClick(Sender: TObject);
    procedure Col_CuentaGetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure Col_PrecioUnitGetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure Col_TotalGetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure btnCancelClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure btnFirmaClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure frxReportPagGetValue(const VarName: string; var Value: Variant);
    procedure cxCentroCPropertiesChange(Sender: TObject);
    procedure cxPagarClick(Sender: TObject);
    procedure pgControlDetalleClick(Sender: TObject);
    procedure dbg_OCVistaCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxEstadoPropertiesChange(Sender: TObject);
    procedure cxOrdenCompraPropertiesEditValueChanged(Sender: TObject);
    procedure cxProveedorPropertiesEditValueChanged(Sender: TObject);
    procedure btnPagosProyectosClick(Sender: TObject);
    procedure btnReporteAuxiliaresClick(Sender: TObject);

  private
    sMenuP: string;
    btnPermisos : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAprobacionP: TfrmAprobacionP;
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

implementation

uses frm_connection, frm_proveedores, Func_Genericas,
  frm_Presupuesto, frm_Empresas, frm_Pedidos, frm_firmasNota,Frm_Modal;

{$R *.dfm}

procedure TfrmAprobacionP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  guardar_leer_grid(dbg_OCVista,frmAprobacionP,1);
  global_frmActivo := '';
  action := cafree;
end;


procedure TfrmAprobacionP.FormShow(Sender: TObject);
var x: integer;
begin
  btnPermisos := global_btnPermisos;
  try

    titulo:='Solicitud de Aprobación de Pago';

    AsignarSQL(zRequisicion, 'anexo_requisicion', pUpdate);
    zRequisicion.Open;

    AsignarSQL(zPedidos, 'anexo_pedidos_pag', pUpdate);
    FiltrarDataSet(zPedidos, 'Contrato',[Global_Contrato]);
    zPedidos.Open;

    AsignarSQL(zProveedor, 'master_proveedores', pUpdate);
    zProveedor.Open;

    AsignarSQL(zOrdenTrabajo, 'ordenesdetrabajo', pUpdate);
    FiltrarDataSet(zOrdenTrabajo,'Contrato, TProyecto', [Global_Contrato, 'PROYECTO']) ;
    zOrdenTrabajo.Open;

    AsignarSQL(zCuentaBanco, 'con_cuentabanco', pUpdate);
    zCuentaBanco.Open;

    AsignarSQL(zFormaPago, 'formas_pago', pUpdate);
    zFormaPago.Open;

    AsignarSQL(zDepartamento, 'master_departamento', pUpdate);
    zDepartamento.Open;

    AsignarSQL(Moneda,'master_moneda',pUpdate);
    Moneda.Open;

    AsignarSQL(zFirma, 'rd_firmas', pUpdate);
    FiltrarDataSet(zFirma, 'IdFirma, Contrato',[-1, Global_Contrato]);
    zFirma.Open;

    zFirma.Filtered := False;
    zFirma.Filter   := 'VistaUsuario = '+ QuotedStr(self.Caption);
    zFirma.Filtered := True;

    AsignarSQL(zExistencia, 'aprobacionPago_pag', pUpdate);

    AsignarSQL(zAprobacionPago, 'aprobacionPago', pUpdate);
    zAProbacionPago.Open;

//    AsignarSQL(zCentroC, 'lista_presupuesto', pUpdate);
//    FiltrarDataSet(zCentroC, 'Contrato, TipoProyecto', [Global_contrato, 'CENTRO_COSTO']);
    zCentroC.Active := False;
    AsignarSQL(zCentroC,'ordenesdetrabajo_req',pUpdate);
    FiltrarDataSet(zCentroC,'Contrato,Tipo',[global_contrato,'CENTRO_COSTO']);
    zCentroC.Open;

    AsignarSQL(zComboCC, 'centros_costo', pUpdate);
    FiltrarDataSet(zComboCC, 'Contrato,CC', [Global_contrato, '-1']);
    zComboCC.Open;

    lcbCentroCosto.ItemIndex:= 0;

    PanelTopD.Visible:=False;
    PanelDatos.Visible:=False;
    cxSplitter1.Visible:=False;
    PanelDetalle.Visible := False;
    cxSplitterD.Visible := False;

    FechaInicio.Date := Date;
    FechaFin.Date    := Date;
    crTipoCambio.EditValue := 20.00;
    PermisosBotones(frmAprobacionP,btnPermisos);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al iniciar formulario', 0);
    end;
  end;
  guardar_leer_grid(dbg_OCVista,frmAprobacionP,0);

  col_banco.Visible := False;
  Col_cuenta.Visible:= False;


end;

procedure TfrmAprobacionP.BtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAprobacionP.btnExportaClick(Sender: TObject);
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

procedure TfrmAprobacionP.btnImpInformeClick(Sender: TObject);
var
  ordenescompraGrid : String;
   contOCGrid, j : Integer;
begin

end;

procedure TfrmAprobacionP.btnInfoDClick(Sender: TObject);
begin
  cxSplitter1.Visible:=not cxSplitter1.Visible;
  PanelDatos.Visible:= not PanelDatos.Visible;
end;

procedure TfrmAprobacionP.btnPagosProyectosClick(Sender: TObject);
begin
    try
      Reporte2.Active := False;
      Reporte2.Filtered := False;
      AsignarSQL(Reporte2,'Reporte_MontosPorCC',pUpdate);
      FiltrarDataSet(Reporte2,'FechaI,FechaF,Contrato,TipoCambio,NumeroOrdenCC',[FechaSQL(FechaInicio.Date),FechaSQL(FechaFin.Date),global_contrato, crTipoCambio.EditValue,lcbCentroCosto.EditValue]);
      Reporte2.Open;
      frxPag.DataSet    := Reporte2;
      frxPag.FieldAliases.Clear;
      frxReportPag.DataSets.Add(frxPag);

      frxReportPag.PreviewOptions.MDIChild := False;
      frxReportPag.PreviewOptions.Modal := True;
      frxReportPag.PreviewOptions.ShowCaptions := False;
      frxReportPag.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      frxReportPag.LoadFromFile(global_files + global_miReporte + '_COMP_PAGxProyecto.fr3');

     if not FileExists(global_files + global_miReporte + '_COMP_PAGxProyecto.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_COMP_PAGxProyecto.fr3 no existe, notifique al administrador del sistema');
      frxReportPag.ShowReport();
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reporte por Proyectos', 'Al imprimir', 0);
      end;
    end;



end;

procedure TfrmAprobacionP.btnPrinterClick(Sender: TObject);
var
   frxOrdenCompras : TfrxDBDataset;
begin
   try
      frmrepositorio.frxOrdenCompras.Clear;
      AsignarSQL(frmRepositorio.Reporte,'reporte_solicitud_aprobpag',pUpdate);
      FiltrarDataSet(frmRepositorio.Reporte,'Contrato,Empresa,Folio',[global_contrato,connection.uContrato.FieldByName('IdEmpresa').AsInteger,zAprobacionPago.FieldByName('IdSolicitudPago').AsInteger]);
      frmRepositorio.Reporte.Open;

      frxOrdenCompras := TfrxDBDataset.Create(nil);
      frxOrdenCompras.DataSet    := frmRepositorio.Reporte;
      frxOrdenCompras.UserName   := 'frxOrdenCompras';
      frxOrdenCompras.FieldAliases.Clear;
      frxEntrada.DataSets.Add(frxOrdenCompras);

      frxEntrada.PreviewOptions.MDIChild := False;
      frxEntrada.PreviewOptions.Modal := True;
      frxEntrada.PreviewOptions.ShowCaptions := False;
      frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      frxEntrada.LoadFromFile(global_files + global_miReporte + '_COMP_SolicitudAprobacionPago.fr3');

     if not FileExists(global_files + global_miReporte + '_COMP_SolicitudAprobacionPago.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_COMP_SolicitudAprobacionPago.fr3 no existe, notifique al administrador del sistema');
      frxentrada.ShowReport();
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al imprimir', 0);
      end;
    end;
end;

procedure TfrmAprobacionP.btnProveedoresClick(Sender: TObject);
begin
   if (zAprobacionPago.State = dsInsert ) or (zAprobacionPago.State = dsEdit) then
   begin
       global_frmActivo := 'frm_AprobacionPagos';
       if not MostrarFormChild('frmProveedores', global_dxBarManagerPrincipal) then
       begin
          Application.CreateForm(TfrmProveedores, frmProveedores);
          frmProveedores.show;
       end;
   end;
end;

procedure TfrmAprobacionP.btnRefreshClick(Sender: TObject);
begin
 zAprobacionPago.Refresh
end;

procedure TfrmAprobacionP.btnReporteAuxiliaresClick(Sender: TObject);
begin
      try
      Reporte2.Active := False;
      Reporte2.Filtered := False;
      AsignarSQL(Reporte2,'ReporteCargoAbonoCC',pUpdate);
      FiltrarDataSet(Reporte2,'FechaI,FechaF,Contrato,CC,TipoCambio',[FechaSQL(FechaInicio.Date),FechaSQL(FechaFin.Date),global_contrato,lcbCentroCosto.EditValue,crTipoCambio.EditValue]);
      Reporte2.Open;
      frxPag.DataSet    := Reporte2;
      frxPag.FieldAliases.Clear;
      frxReportPag.DataSets.Add(frxPag);

      frxReportPag.PreviewOptions.MDIChild := False;
      frxReportPag.PreviewOptions.Modal := True;
      frxReportPag.PreviewOptions.ShowCaptions := False;
      frxReportPag.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      frxReportPag.LoadFromFile(global_files + global_miReporte + '_COMP_AuxiliaresCC.fr3');

     if not FileExists(global_files + global_miReporte + '_COMP_AuxiliaresCC.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_COMP_AuxiliaresCC.fr3 no existe, notifique al administrador del sistema');

      frxReportPag.ShowReport();
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reporte por Proyectos', 'Al imprimir', 0);
      end;
    end;

end;

procedure TfrmAprobacionP.frmBarra1btnPostClick(Sender: TObject);
var
  SavePlace: TBookmark;
  dCantidad: Currency;
  conteo: integer;
begin

end;

procedure TfrmAprobacionP.frmBarra1btnDeleteClick(Sender: TObject);
var
  SavePlace: TBookmark;
begin

end;

procedure TfrmAprobacionP.Col_CuentaGetProperties(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
var
  AColumn: TcxGridDBColumn;
begin


end;

procedure TfrmAprobacionP.Col_PrecioUnitGetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
var
  AColumn: TcxGridDBColumn;
begin

end;

procedure TfrmAprobacionP.Col_TotalGetProperties(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
var
  AColumn: TcxGridDBColumn;
begin

end;

procedure TfrmAprobacionP.ExportarExcel1Click(Sender: TObject);
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

procedure TfrmAprobacionP.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmAprobacionP.pgControlDetalleClick(Sender: TObject);
begin
if pgControlDetalle.ActivePage = tabParcialidad then
   begin
    zParcialidad.Active:= False;
    AsignarSQL(zParcialidad,'SolicitudPago_detalle',pUpdate);
    FiltrarDataSet(zParcialidad,'Solicitud',[zAprobacionPago.FieldByName('IdSolicitudPago').AsInteger]);
    zParcialidad.Open;
   end;
end;

procedure TfrmAprobacionP.frmBarra2btnAddClick(Sender: TObject);
var
  dFechaFinal: tDate;
begin
  try

    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    PanelTopD.Visible:=True;
    panelDatos.Visible:=True;
    cxSplitter1.Visible := False;
    grid_entradas.Enabled:=False;

    AnteriorArray[1] := IntToStr(zAprobacionPago.FieldByName('IdProveedor').AsInteger);
    zAprobacionPago.Append;
    zAprobacionPago.FieldValues['Codigo']  := autoFolio(zAprobacionPago,'anexo_solicitud_aprobpago');
    //zAprobacionPago.FieldByName('Codigo').AsString := autofolio(zAprobacionPago,'anexo_solicitud_aprobpago');
    cxOrdenCompra.DataBinding.DataSource.DataSet.FieldByName('IdOrdenCompra').AsInteger := zPedidos.FieldByName('IdOrdenCompra').AsInteger;
    cxRequisicion.DataBinding.DataSource.DataSet.FieldByName('iFolioRequisicion').AsInteger := zRequisicion.FieldByName('iFolioRequisicion').AsInteger;
    zAprobacionPago.FieldByName('Fecha').AsDateTime:= date;
    cxProyecto.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString := zOrdenTrabajo.FieldByName('sNumeroOrden').AsString;
    cxCentroC.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrdenCC').AsString := zCentroC.FieldByName('sNumeroOrden').AsString;
//    cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger := zProveedor.FieldByName('IdProveedor').AsInteger;
    zProveedor.Locate('IdProveedor', StrToInt(AnteriorArray[1]),[]);
    cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger := zProveedor.FieldByName('IdProveedor').AsInteger;
    cxFormaPago.DataBinding.DataSource.DataSet.FieldByName('IdFormaPago').AsInteger := zFormaPago.FieldByName('IdFormaPago').AsInteger;
    //cxCuentaBanco.DataBinding.DataSource.DataSet.FieldByName('IdCuentaBanco').AsInteger := zCuentaBanco.FieldByName('IdCuentaBanco').AsInteger;
    zAprobacionPago.FieldByName('Estado').AsString := 'POR PAGAR';
    zAprobacionPago.FieldByName('Solicita').AsString := Global_nombre;
    zAprobacionPago.FieldByName('sContrato').AsString := Global_Contrato;
 cxMetodoPago.ItemIndex:=0;
  zAprobacionPago.FieldByName('MetodoPago').AsVariant:=cxMetodoPago.EditValue;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Aprobación de Pago', 'Al añadir registro', 0);
    end;
  end;

   grid_entradas.Enabled:=false;
end;

procedure TfrmAprobacionP.frmBarra2btnEditClick(Sender: TObject);
begin

//   cxLeyenda.Caption:=titulo+'[Editando]';
//   frmBarraH11.btnEditClick(Sender);
//   frmBarraH21.btnActive;
//
//   cxSplitter1.Visible := True;
//   PanelDatos.Visible  :=True;
//   panelTopD.Visible := True;
//
//    try
//        zAprobacionPago.Edit;
//    except
//      on e: exception do begin
//        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al editar registro', 0);
//        frmBarraH21.btnCancel.Click ;
//      end;
//    end;
   if (zAprobacionPago.FieldValues['sStatus'] <> 'PENDIENTE') then
      begin
         messageDLG('SAP se encuentra en Estatus: '+zAprobacionPago.FieldValues['sStatus'], mtInformation, [mbOk],0);
         exit;
      end;
   try
   cxLeyenda.Caption:=titulo+'[Editando]';
   if (Global_usuario = 'JESSICA') or (global_usuario = 'jessica')then
      validaciones;
   frmBarraH11.btnEditClick(Sender);
   panelTopD.Visible :=True;
   panelDatos.Visible :=TRue;
   cxSplitter1.Visible :=False;
   zAprobacionPago.Edit;
//   if  zCentroC.Locate('sNumeroOrden',cxCentroC.EditValue,[]) then
//       cxDescrip.Text :=  zCentroC.FieldByName('mDescripcion').AsString;

     except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al editar registro', 0);
      end;
    end;




end;

procedure TfrmAprobacionP.frmBarra2btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  RequisicionesSeleccionadas: TStringList;
begin

     frmBarraH21.btnActive;
     cxLeyenda.Caption:=titulo;
      cxSplitter1.Visible := False;
      PanelDatos.Visible  :=False;
      panelTopD.Visible := False;
      grid_entradas.enabled:= True;
      ds_AprobacionPago.DataSet.Post;
      if TUniQuery(zAprobacionPago).Connection.InTransaction then
      begin
        TUniQuery(zAprobacionPago).Connection.Commit;
        TUniQuery(zAprobacionPago).Connection.AutoCommit := True;
      end;
    SavePlace := dbg_OCVista.DataController.DataSource.DataSet.GetBookmark;
    zAprobacionPago.Refresh;
    try
       dbg_OCVista.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
    except
       dbg_OCVista.DataController.DataSet.FreeBookmark(SavePlace);
    end;

  PermisosBotones(frmAprobacionP,btnPermisos);
end;

procedure TfrmAprobacionP.frmBarra2btnExitClick(Sender: TObject);
begin

  close
end;

procedure TfrmAprobacionP.dbg_OCVistaCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
if pgControlDetalle.ActivePage = tabParcialidad then
   begin
    zParcialidad.Active:= False;
    AsignarSQL(zParcialidad,'SolicitudPago_detalle',pUpdate);
    FiltrarDataSet(zParcialidad,'Solicitud',[zAprobacionPago.FieldByName('IdSolicitudPago').AsInteger]);
    zParcialidad.Open;
   end;
end;

procedure TfrmAprobacionP.dbg_OCVistaDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  IsOpen := False;
end;

procedure TfrmAprobacionP.dbg_OCVistaDataControllerFilterChanged(Sender: TObject);
begin
  IsOpen:=True;
end;

procedure TfrmAprobacionP.dbg_OCVistaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (Key = VK_UP) or ( Key = VK_DOWN)  then


end;


procedure TfrmAprobacionP.cxButton1Click(Sender: TObject);
begin
   if (zAprobacionPago.State = dsInsert ) or (zAprobacionPago.State = dsEdit) then
   begin
       global_frmActivo := 'frm_AprobacionPagos';
       if not MostrarFormChild('frmProyectos', global_dxBarManagerPrincipal) then
       begin
           Application.CreateForm(TfrmPresupuesto, frmPresupuesto);
           frmPresupuesto.show;
       end;
   end
end;

procedure TfrmAprobacionP.cxButton2Click(Sender: TObject);
var
 listaProv : String;
begin
    try
      AsignarSQL(Reporte2,'reporte_pagosxproveedor',pUpdate);
      FiltrarDataSet(Reporte2,'Contrato',[global_contrato]);
      Reporte2.Open;

      Reporte2.Filtered := False;
      if dbg_OCVista.DataController.Filter.FilterText <> '' then
         Reporte2.Filter   := dbg_OCVista.DataController.Filter.FilterText + ' and (dIdFecha >='+QuotedStr(FechaSQL(FechaInicio.Date))+' and dIdFecha<= '+QuotedStr(FechaSQL(FechaFin.Date))+')'
      else
         Reporte2.Filter   := ' (dIdFecha >='+QuotedStr(FechaSQL(FechaInicio.Date))+' and dIdFecha<= '+QuotedStr(FechaSQL(FechaFin.Date))+')';;
      Reporte2.Filtered := True;
//      reporte2.recordcount;

      frxPag.DataSet    := Reporte2;
      frxPag.FieldAliases.Clear;
      frxReportPag.DataSets.Add(frxPag);

      frxReportPag.PreviewOptions.MDIChild := False;
      frxReportPag.PreviewOptions.Modal := True;
      frxReportPag.PreviewOptions.ShowCaptions := False;
      frxReportPag.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      frxReportPag.LoadFromFile(global_files + global_miReporte + '_COMP_PAGxProveedor.fr3');

     if not FileExists(global_files + global_miReporte + '_COMP_PAGxProveedor.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_COMP_PAGxProveedor.fr3 no existe, notifique al administrador del sistema');
      frxReportPag.ShowReport();
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al imprimir', 0);
      end;
    end;

end;



procedure TfrmAprobacionP.cxCentroCPropertiesChange(Sender: TObject);
begin
   if not (cxCentroC.EditValue=null) then
      if (zAprobacionPago.State=dsInsert) or (zAprobacionPago.State=dsEdit)  then begin

//        if  zCentroC.Locate('sNumeroOrden',cxCentroC.EditValue,[]) then
//          cxDescrip.Text :=  zCentroC.FieldByName('mDescripcion').AsString;
      end;
end;



procedure TfrmAprobacionP.cxEstadoPropertiesChange(Sender: TObject);
begin
  if zAprobacionPago.State = dsInsert then begin

    if cxEstado.Text = 'POR PAGAR' then
     zAprobacionPago.FieldByName('MontoParcial').AsFloat := 0;

  end;
end;

procedure TfrmAprobacionP.btnFirmaClick(Sender: TObject);
begin
    if (zAprobacionPago.State = dsInsert ) or (zAprobacionPago.State = dsEdit) then
   begin
       global_frmActivo := 'frm_AprobacionPagos';
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

procedure TfrmAprobacionP.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn, BColumn, CColumn: TcxCustomGridTableItem;
begin

  AStyle := cxstylBlue;
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('sStatus');
  if VarToStr(ARecord.Values[AColumn.Index]) = 'Pendiente' then AStyle := cxstylRed;
end;

procedure TfrmAprobacionP.cxOrdenCompraPropertiesEditValueChanged(
  Sender: TObject);
begin
    if not (cxOrdenCompra.EditValue=null) then
  if (zAprobacionPago.State=dsInsert) or (zAprobacionPago.State=dsEdit)  then begin

    if  zPedidos.Locate('IdOrdenCompra',cxOrdenCompra.EditValue,[]) then
      zAprobacionPago.FieldByName('iFolioRequisicion').AsInteger :=  zPedidos.FieldByName('iFolioRequisicion').AsInteger;
      zAprobacionPago.FieldByName('IdProveedor').AsInteger :=  zPedidos.FieldByName('IdProveedor').AsInteger;
     zAprobacionPago.FieldByName('sNumeroOrden').asString :=  zPedidos.FieldByName('sNumeroOrden').AsString;

       //cxMonto.Enabled:=True;
  end;

  if(zAprobacionPago.State=dsInsert) or (zAprobacionPago.State=dsEdit) then
  begin
    FiltrarDataSet(zExistencia, 'IdOrdenCompra',[zPedidos.FieldByName('IdOrdenCompra').AsInteger]);
    zExistencia.Open;

    if not(zPedidos.FieldByName('dMontoMN').AsFloat=zExistencia.FieldByName('RESTO').AsFloat)then
    begin
      zAprobacionPago.FieldByName('dMonto').AsFloat:=zPedidos.FieldByName('dMontoMN').AsFloat-zExistencia.FieldByName('RESTO').AsFloat;
      cxMonto.Enabled:=True;
     end
    else
    if (zPedidos.FieldByName('dMontoMN').AsFloat=zExistencia.FieldByName('RESTO').AsFloat)then
    begin
      cxMonto.Enabled:=False;
      cxMonto.EditValue:=0;
    end;

  end
else
            cxMonto.EditValue:= zAprobacionPago.FieldByName('dMonto').AsFloat;
end;

procedure TfrmAprobacionP.cxPagarClick(Sender: TObject);
begin
//   PanelEstatus.Visible := True;
//        Col_MontoPagado.Properties.ReadOnly := True;
  Application.CreateForm(TFrmModal, FrmModal);
  frmModal.cxPageModal.ActivePage:=frmModal.cxTabPago;
  frmModal.cxPageModal.HideTabs:=True;
  FrmModal.show
end;

procedure TfrmAprobacionP.cxProveedorPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxProveedor.ItemIndex <> -1 then
  begin
    AsignarSQL(zCuentasProveedor,'master_proveedor_bancos',pUpdate);
    FiltrarDataSet(zCuentasProveedor,'Activo,IdProveedor',['Si',cxProveedor.EditValue]);
    zCuentasProveedor.Open;
  end;



end;

procedure TfrmAprobacionP.btnCancelClick(Sender: TObject);
begin
  try

    zAprobacionPago.cancel;
    cxLeyenda.Caption:=Titulo;
    frmBarraH11.btnActive;
    grid_entradas.enabled     := true;

    Grid_Entradas.SetFocus;


    panelDatos.Visible := False;
    PanelTopD.Visible:=False;

    PermisosBotones(frmAprobacionP, btnPermisos);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al cancelar registro', 0);
    end;
  end;
end;

procedure TfrmAprobacionP.btnDeleteClick(Sender: TObject);
var
  SavePlace: TBookmark;
  indice, iGrid    : integer;
begin
    If zAprobacionPago.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        ds_aprobacionPago.DataSet.Delete;
        zAprobacionPago.ApplyUpdates();
      except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Almacenes', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmAprobacionP.btnDetalleClick(Sender: TObject);
begin
cxSplitterD.Visible:=not cxSplitterD.Visible;
  PanelDetalle.Visible:= not PanelDetalle.Visible;

end;

procedure TfrmAprobacionP.validaciones;
begin

     cxCodigo.Enabled :=  False;
     cxOrdenCompra.Enabled := False;
     cxFecha.Enabled := False;
     cxRequisicion.Enabled := False;
     cxProveedor.Enabled := False;
     cxProyecto.Enabled := False;
     cxCentroC.Enabled := False;
     //cxDescrip.Enabled := False;
     cxSolicita.Enabled := False;
     cxButton1.Enabled := False;
     btnProveedores.Enabled := False;
     cxConcepto.Enabled := False;
     cxMetodoPago.Enabled := False;
     cxFormaPago.Enabled :=False;
     cxObservaciones.Enabled := False;
     cxFirma.Enabled := False;
     btnFirma.Enabled := False;

end;

procedure TfrmAprobacionP.frxEntradaGetValue(const VarName: string;
  var Value: Variant);
begin

  if CompareText(VarName, 'CANTIDAD_LETRA') = 0 then
  begin
     moneda.Locate('IdMoneda',frmRepositorio.Reporte.FieldByName('IdMoneda').AsInteger,[]);
     Value := LetraMontos(moneda.FieldByName('Codigo').AsString, moneda.FieldByName('MonedaCheque').AsString, zAprobacionPago.FieldByName('dMonto').AsFloat );
  end;

end;

procedure TfrmAprobacionP.frxReportPagGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'FECHA_I') = 0 then
   begin
       Value := FechaInicio.Date
   end;

   if CompareText(VarName, 'FECHA_F') = 0 then
   begin
       Value := FechaFin.Date
   end;
end;

procedure TfrmAprobacionP.EnterControl(Sender: TObject);
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

procedure TfrmAprobacionP.SalidaControl(Sender: TObject);
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



end.


