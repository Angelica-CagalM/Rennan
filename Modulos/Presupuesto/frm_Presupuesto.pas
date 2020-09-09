unit frm_Presupuesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, global, db, frm_connection, frm_barra, ComCtrls, DateUtils,
  DBCtrls, StdCtrls, Mask, Menus, ADODB,  RXDBCtrl, ZDataset, utilerias, unitGenerales,
  ZAbstractRODataset, ZAbstractDataset, rxToolEdit, unitValidacion, unitMetodos,
  rxCurrEdit, ExtCtrls, unitexcepciones,UnitValidaTexto,
  UnitTablasImpactadas, unitactivapop,  Buttons, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxCurrencyEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxBarBuiltInMenu, frxClass,
  frxDBSet, MemDS, DBAccess, Uni, cxGroupBox, cxRadioGroup, cxGridChartView,
  cxGridDBChartView, cxPC, frm_barraH2, cxDBEdit, dxLayoutContainer,
  cxDropDownEdit, cxCalendar, cxButtons, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMemo, cxTextEdit, dxLayoutControl,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxSplitter, cxProgressBar, cxLabel,
  UnitReportes,
  cxCheckBox, dxToggleSwitch, dxDBToggleSwitch, CxGridExportLink, ShellApi,
  frm_barraH1;

type
  TfrmPresupuesto = class(TForm)
    ds_estatus: TDataSource;
    ds_tiposdeorden: TDataSource;
    ds_ordenesdetrabajo: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    ds_Plataformas: TDataSource;
    ds_Pernoctan: TDataSource;
    Panel3: TPanel;
    Panel4: TPanel;
    cxVistaOrdenes: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_ordenes: TcxGrid;
    cxColId: TcxGridDBColumn;
    cxColCodigo: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    Grid_coloficio: TcxGridDBColumn;
    ds_convenios: TDataSource;
    layoutGroup_Root: TdxLayoutGroup;
    layout: TdxLayoutControl;
    sNumeroOrden: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    sIdFolio: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    mDescripcion: TcxDBMemo;
    dxLayoutItem3: TdxLayoutItem;
    sIdPernocta: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    sIdPlataforma: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cIdStatus: TcxDBLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    sUbicacion: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    btnPlataformas: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    btnPernocta: TcxButton;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    iOrden: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    OrdenesdeTrabajo: TUniQuery;
    cxVistaOrdenesColumn3: TcxGridDBColumn;
    dFechaInicio: TcxDBDateEdit;
    dxLayoutItem18: TdxLayoutItem;
    dFechaFin: TcxDBDateEdit;
    dxLayoutItem19: TdxLayoutItem;
    Panel1: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    cxLabel1: TcxLabel;
    cxProgressBar1: TcxProgressBar;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    Panel5: TPanel;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    cxPageDetalle: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    PanelInferiorInforme: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid1Level1: TcxGridLevel;
    cxSplitInforme: TcxSplitter;
    PanelSuperiorInforme: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    opcionImprimir: TcxRadioGroup;
    btnImpInforme: TcxButton;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    PanelTop: TPanel;
    cxLeyenda2: TcxLabel;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxSplitterOpciones: TcxSplitter;
    edtSolicitante: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    lcbPuesto: TcxDBLookupComboBox;
    dxLayoutItem23: TdxLayoutItem;
    zPuestos: TUniQuery;
    dsPuestos: TDataSource;
    Plataformas: TUniQuery;
    pernoctan: TUniQuery;
    Estatus: TUniQuery;
    TiposdeOrden: TUniQuery;
    zConvenios: TUniQuery;
    PlataformassIdPlataforma: TStringField;
    PlataformassDescripcion: TStringField;
    pernoctansIdPernocta: TStringField;
    pernoctansDescripcion: TStringField;
    EstatuscIdStatus: TStringField;
    EstatussDescripcion: TStringField;
    TiposdeOrdensIdTipoOrden: TStringField;
    TiposdeOrdensDescripcion: TStringField;
    zConveniossContrato: TStringField;
    zConveniossNumeroOrden: TStringField;
    zConveniossIdConvenio: TStringField;
    zConveniossDescripcion: TStringField;
    zConveniosdFecha: TDateField;
    zConveniosdFechaInicio: TDateField;
    zConveniosdFechaFinal: TDateField;
    zConveniosdDuracion: TFloatField;
    zConveniosiNumeroGerencial_inicio: TIntegerField;
    zConveniosiNumeroGerencial_termino: TIntegerField;
    zConveniosiGerencialFinal: TIntegerField;
    zConveniossHorarioInicio: TStringField;
    zConveniosiGerencialInicio: TIntegerField;
    zConveniossHorarioFinal: TStringField;
    zConvenioslAvanceFisico: TStringField;
    zConvenioslAplicaPeriodo: TStringField;
    zConveniosdFechaPeriodo_Inicio: TDateField;
    zConveniosdFechaPeriodo_Fin: TDateField;
    zConveniosdMontoMN: TFloatField;
    zConveniosdMontoDLL: TFloatField;
    zConveniossAnexo: TStringField;
    zConveniosmComentarios: TMemoField;
    dsMoneda: TDataSource;
    zMoneda: TUniQuery;
    zClientes: TUniQuery;
    dsClientes: TDataSource;
    lcbClientes: TcxDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    cxVistaOrdenesColumn2: TcxGridDBColumn;
    edtDescripcionCorta: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxVistaOrdenesColumn4: TcxGridDBColumn;
    cxVistaOrdenesColumn5: TcxGridDBColumn;
    uPersonal: TUniQuery;
    cmbLookResponsable: TcxDBLookupComboBox;
    dxLayoutItem24: TdxLayoutItem;
    ds_personal: TDataSource;
    edtPuestoSolicitante: TcxDBTextEdit;
    dxLayoutItem31: TdxLayoutItem;
    sIdEmbarcacion: TcxDBLookupComboBox;
    dxLayoutItem32: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem33: TdxLayoutItem;
    zEmbarcacion: TUniQuery;
    ds_embarcacion: TDataSource;
    cxComentarios: TcxDBMemo;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem36: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem37: TdxLayoutItem;
    estatus_admin: TUniQuery;
    ds_estatusAdmin: TDataSource;
    cxVistaOrdenesPO: TcxGridDBColumn;
    sPO: TcxDBTextEdit;
    dxLayoutItem39: TdxLayoutItem;
    cxVistaOrdenesEmb: TcxGridDBColumn;
    cxVistaOrdenesResponsable: TcxGridDBColumn;
    cxVistaOrdenesComPres: TcxGridDBColumn;
    cxVistaOrdenesComProy: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxVistaOrdenesColumnDes: TcxGridDBColumn;
    OrdenesdeTrabajosContrato: TStringField;
    OrdenesdeTrabajosIdFolio: TStringField;
    OrdenesdeTrabajosNumeroOrden: TStringField;
    OrdenesdeTrabajosOficioAutorizacion: TStringField;
    OrdenesdeTrabajosDescripcionCorta: TStringField;
    OrdenesdeTrabajomDescripcion: TMemoField;
    OrdenesdeTrabajosIdPlataforma: TStringField;
    OrdenesdeTrabajosIdPernocta: TStringField;
    OrdenesdeTrabajosIdPlataforma_nota: TStringField;
    OrdenesdeTrabajodFiProgramado: TDateField;
    OrdenesdeTrabajodFfProgramado: TDateField;
    OrdenesdeTrabajocIdStatus: TStringField;
    OrdenesdeTrabajomComentarios: TMemoField;
    OrdenesdeTrabajosFormato: TStringField;
    OrdenesdeTrabajoiConsecutivo: TIntegerField;
    OrdenesdeTrabajoiConsecutivoTierra: TIntegerField;
    OrdenesdeTrabajoiJornadas: TIntegerField;
    OrdenesdeTrabajoiOrden: TIntegerField;
    OrdenesdeTrabajosCsu: TStringField;
    OrdenesdeTrabajosUbicacion: TStringField;
    OrdenesdeTrabajolAplicaJornada: TStringField;
    OrdenesdeTrabajosIdConvenio: TStringField;
    OrdenesdeTrabajoTipoProyecto: TStringField;
    OrdenesdeTrabajoNombreResponsable: TStringField;
    OrdenesdeTrabajoIdPuesto: TIntegerField;
    OrdenesdeTrabajoIdMoneda: TIntegerField;
    OrdenesdeTrabajoMargenContribucion: TFloatField;
    OrdenesdeTrabajoCostoFijo: TFloatField;
    OrdenesdeTrabajoFinanciamiento: TFloatField;
    OrdenesdeTrabajoPTU_AntesImpuesto: TFloatField;
    OrdenesdeTrabajoPTU_ISR: TFloatField;
    OrdenesdeTrabajoPTU_Neto: TFloatField;
    OrdenesdeTrabajoIdCliente: TIntegerField;
    OrdenesdeTrabajosIdUsuario: TStringField;
    OrdenesdeTrabajosEstatus: TStringField;
    OrdenesdeTrabajoAutorizaPresupuesto: TStringField;
    OrdenesdeTrabajoIdPersonalResponsable: TIntegerField;
    OrdenesdeTrabajoSolicitante: TStringField;
    OrdenesdeTrabajoPuestoSolicitante: TStringField;
    OrdenesdeTrabajosDossierEntregado: TStringField;
    OrdenesdeTrabajosEstatusAdmin: TIntegerField;
    OrdenesdeTrabajosIdEmbarcacion: TIntegerField;
    OrdenesdeTrabajosPO: TStringField;
    OrdenesdeTrabajoEstatus: TStringField;
    OrdenesdeTrabajoCliente: TStringField;
    OrdenesdeTrabajoEmbarcaciones: TStringField;
    OrdenesdeTrabajoEstatusAdmin: TStringField;
    OrdenesdeTrabajoTotalCosto: TFloatField;
    OrdenesdeTrabajoTotalPrecio: TFloatField;
    OrdenesdeTrabajoNombreCompleto: TStringField;
    cxVistaOrdenesColEstatus: TcxGridDBColumn;
    frxProyecto: TfrxReport;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem42: TdxLayoutItem;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl4: TdxLayoutControl;
    crrMargenContribucion: TcxDBCurrencyEdit;
    crrPTU_Neto: TcxDBCurrencyEdit;
    crrTotal: TcxDBCurrencyEdit;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    crrIVAP: TcxDBCurrencyEdit;
    lcbMonedas: TcxDBLookupComboBox;
    crrFinanciamientoM: TcxDBCurrencyEdit;
    crrIVAM: TcxDBCurrencyEdit;
    crrPTU_ISR: TcxDBCurrencyEdit;
    crrCostoFijoM: TcxDBCurrencyEdit;
    crrCostoFijoP: TcxDBCurrencyEdit;
    crrPTU_ISRP: TcxDBCurrencyEdit;
    crrPTU_antesImp: TcxDBCurrencyEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutItem47: TdxLayoutItem;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    dxLayoutItem48: TdxLayoutItem;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup;
    dxLayoutItem49: TdxLayoutItem;
    dxLayoutItem50: TdxLayoutItem;
    dxLayoutItem51: TdxLayoutItem;
    dxLayoutItem52: TdxLayoutItem;
    dxLayoutItem53: TdxLayoutItem;
    dxLayoutItem54: TdxLayoutItem;
    dxLayoutAutoCreatedGroup18: TdxLayoutAutoCreatedGroup;
    dxLayoutItem55: TdxLayoutItem;
    dxLayoutAutoCreatedGroup19: TdxLayoutAutoCreatedGroup;
    dxLayoutItem56: TdxLayoutItem;
    OrdenesdeTrabajoMargenContribucionM: TFloatField;
    OrdenesdeTrabajoCostoFijoP: TFloatField;
    OrdenesdeTrabajoCostoFijoM: TFloatField;
    OrdenesdeTrabajoCostoAdicional: TFloatField;
    OrdenesdeTrabajoPTUAImpuesto: TFloatField;
    OrdenesdeTrabajoPTUP: TFloatField;
    OrdenesdeTrabajoISR: TFloatField;
    OrdenesdeTrabajoIVAP: TFloatField;
    OrdenesdeTrabajoTotal: TFloatField;
    OrdenesdeTrabajoIVA: TFloatField;
    OrdenesdeTrabajoPTUNet: TFloatField;
    colStatus: TcxGridDBColumn;
    sEstatusAdmin: TcxDBLookupComboBox;
    cxTabSheet2: TcxTabSheet;
    cxGridDocumentos: TcxGrid;
    cxViewDocumento: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxSplit4: TcxSplitter;
    PanelDown4: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    cxCargarDocumento: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    cxCodigo: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxComentariosDocumento: TcxDBMemo;
    dxLayoutItem25: TdxLayoutItem;
    zDocumento: TUniQuery;
    dsDocumento: TDataSource;
    dlgPDF: TFileOpenDialog;
    btnEliminarDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxNuevoDetalle: TcxButton;
    PanelM: TPanel;
    dxLayoutItem7: TdxLayoutItem;
    FechaEstatusOpe: TcxDBDateEdit;
    OrdenesdeTrabajoFechaEstatusOperacion: TDateField;
    FechaEstatusAdm: TcxDBDateEdit;
    dxLayoutItem12: TdxLayoutItem;
    OrdenesdeTrabajoFechaEstatusAdmin: TDateField;
    cxVistaOrdenesColumn1: TcxGridDBColumn;
    OrdenesdeTrabajoPeriodo: TIntegerField;
    dxLayoutItem13: TdxLayoutItem;
    btnEmpleado: TcxButton;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListaPresupuesto;
    procedure FormShow(Sender: TObject);
    procedure grid_ordenesEnter(Sender: TObject);
    procedure grid_ordenesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_ordenesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_ordenesCellClick(Column: TColumn);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure ActualizaReporte(sFrente: string; valor: boolean);
//    procedure AsginaFrenteUsuario(dParamFrente: string);
    function tablasDependientes(idOrig: string): boolean;
    function posibleBorrar(idOrig: string): boolean;
    procedure OrdenesdeTrabajoiConsecutivoSetText(Sender: TField;
      const Text: string);
    procedure OrdenesdeTrabajoiJornadaSetText(Sender: TField;
      const Text: string);
    procedure OrdenesdeTrabajoiConsecutivoTierraSetText(Sender: TField;
      const Text: string);
    procedure btnPlataformasClick(Sender: TObject);
    procedure btnPernoctaClick(Sender: TObject);
    procedure cxVistaOrdenesCellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure OrdenesdeTrabajoCalcFields(DataSet: TDataSet);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnImpInformeClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxVistaOrdenesDblClick(Sender: TObject);
    procedure cxVistaOrdenesStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btnExportaClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure cxVistaOrdenesFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure edtDescripcionCortaExit(Sender: TObject);
    procedure cIdStatusPropertiesChange(Sender: TObject);
    procedure sEstatusAdminPropertiesChange(Sender: TObject);
    procedure cxCargarDocumentoClick(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure btnEliminarDetalleClick(Sender: TObject);
    procedure cxPageDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cIdStatusPropertiesEditValueChanged(Sender: TObject);
    procedure sEstatusAdminPropertiesEditValueChanged(Sender: TObject);
    procedure btnEmpleadoClick(Sender: TObject);




  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPresupuesto: TfrmPresupuesto;
  Opcion, FrentT, formato :String ;
  sTipo, sPlataforma, sPernocta, titulo,sEmbarcacion : String ;
  sIdOrig : string;
  btnPermisos, Tipo : String;
implementation

uses
    frm_pedidos,
    frm_Pernoctan, frm_plataformas, frm_clientes, Frm_Embarcacion,
  frm_repositorio,frm_CostoPresupuesto, Frm_BancosMovimientos, Frm_Modal,frm_catalogo_empleados_SSI;

{$R *.dfm}

procedure TfrmPresupuesto.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmPresupuesto.EnterControl(Sender: TObject);
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

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;

end;

procedure TfrmPresupuesto.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;
end;


procedure TfrmPresupuesto.sEstatusAdminPropertiesChange(Sender: TObject);
var IdEA:String;
begin
  if (OrdenesdeTrabajo.State = dsInsert) or (OrdenesdeTrabajo.State = dsEdit) then
  begin
    if (sEstatusAdmin.ItemIndex > 0 ) then
    begin
      if estatus_admin.Locate('IdEstatusAdmin',IntToStr(sEstatusAdmin.EditValue),[]) then
      begin
        IdEA:= estatus_admin.FieldByName('IdEstatusAdmin').AsString;
      end;
    end;

  end;


  if IdEA = '8' then
  begin
    Estatus.Filtered:=False;
    Estatus.Filter:='cIdStatus ='+ QuotedStr('CP')+ ' or cIdStatus ='+ QuotedStr('CE');
    Estatus.Filtered:=True;
    OrdenesdeTrabajo.FieldByName('cIdStatus').AsString:='CP';
  end;

  if (IdEA = '9') or (IdEA = '1') then
  begin
    Estatus.Filtered:=False;
    Estatus.Filter:='cIdStatus ='+ QuotedStr('ET')+' or cIdStatus ='+ QuotedStr('RT')+' or cIdStatus ='+ QuotedStr('PD')+
    ' or cIdStatus ='+ QuotedStr('PR')+' or cIdStatus ='+ QuotedStr('PE')+ ' or cIdStatus ='+ QuotedStr('PI');
    Estatus.Filtered:=True;
    OrdenesdeTrabajo.FieldByName('cIdStatus').AsString:='PI';
  end;

end;

procedure TfrmPresupuesto.sEstatusAdminPropertiesEditValueChanged(
  Sender: TObject);
begin
if (ds_ordenesdetrabajo.DataSet.State in [dsInsert,dsEdit]) then
 ds_ordenesdetrabajo.dataset.FieldByName('FechaEstatusAdmin').value:=now();
end;

procedure TfrmPresupuesto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    guardar_leer_grid(cxVistaOrdenes,frmPresupuesto,1);
    action := cafree ;
end;

procedure TfrmPresupuesto.ListaPresupuesto;
begin

  OrdenesdeTrabajo.Active := False;
  OrdenesdeTrabajo.SQL.Clear;
  OrdenesdeTrabajo.SQL.Text := ('Select  ot.*, year(ot.dFIProgramado) as Periodo, '+
       '(Select et.sDescripcion from estatus et where et.cIdStatus=ot.cIdStatus) as Estatus,'+
       '(Select c.Nombre from master_clientes c where c.IdCliente=ot.IdCliente) as Cliente, '+
       '(Select e.Embarcacion from master_embarcaciones e where e.IdEmbarcacion=ot.sIdEmbarcacion) as Embarcaciones,'+
       '(Select ea.sDescripcion from estatus_administrativo ea where ea.IdEstatusAdmin=ot.sEstatusAdmin) as EstatusAdmin,'+
       'CalcularTotalPresupuesto( ot.sNumeroOrden, ot.sContrato, '+QuotedStr('TCosto')+' ) as TotalCosto, '+
       'CalcularTotalPresupuesto( ot.sNumeroOrden, ot.sContrato, '+QuotedStr('TPrecio')+') as TotalPrecio,'+
       '(select (PorcentajeRendimientoM/100) from op_presupuesto_detalle_margen where sNumeroOrden=ot.sNumeroOrden and op_presupuesto_detalle_margen.IdTipoRecurso=3 group by sNumeroOrden)as Rendimiento1, '+
       '(select ROUND(sum(costo),2) from op_presupuesto_detalle where sNumeroOrden=ot.sNumeroOrden and IdTipoRecurso=3 group by sNumeroOrden) as Rendimiento2,  '+
       '(select Rendimiento2*Rendimiento1) as TCManoObra, '+
       '(select ROUND(sum(costo),2) from op_presupuesto_detalle where sNumeroOrden=ot.sNumeroOrden and IdTipoRecurso=2 group by sNumeroOrden) as TCMaterial, '+
       '(select ROUND(sum(costo),2) from op_presupuesto_detalle where sNumeroOrden=ot.sNumeroOrden and IdTipoRecurso=4 group by sNumeroOrden) as TCConsumibles,  '+
       '(select ROUND(sum(costo),2) from op_presupuesto_detalle where sNumeroOrden=ot.sNumeroOrden and IdTipoRecurso=5 group by sNumeroOrden) as TCMaquinarias,'+
       '(select ROUND(sum(costo),2) from op_presupuesto_detalle where sNumeroOrden=ot.sNumeroOrden and IdTipoRecurso=6 group by sNumeroOrden) as TCTercerias, '+
       '(select ROUND(sum(costo),2) from op_presupuesto_detalle where sNumeroOrden=ot.sNumeroOrden and IdTipoRecurso=7 group by sNumeroOrden) as TCGastosLogicos,'+
       '(select ifnull(TCManoObra,0)+ifnull(TCMaterial,0)+ifnull(TCConsumibles,0)+ifnull(TCMaquinarias,0)+ifnull(TCTercerias,0)+ifnull(TCGastosLogicos,0))as CostoCotizacion,'+
       '(select TotalCosto - CostoCotizacion)as MargenContribucionM, '+
       '(select IFNULL(TotalCosto,0)*IFNULL((CostoFijoP/100),0))as CostoFijoM, '+
       '(select IFNULL(ROUND(MargenContribucionM,2),0)-IFNULL(ROUND(CostoFijoM,2),0)-IFNULL(ROUND(CostoAdicional,2),0))as PTUAImpuesto,'+
       '(select IFNULL(PTUAImpuesto,0)*IFNULL((PTUP/100),0))as ISR, '+
       '(select IFNULL(ROUND(PTUAImpuesto,2),0)-IFNULL(ROUND(ISR,2),0))as PTUNet, '+
       '(select IFNULL(ROUND(TotalCosto,2),0)+IFNULL(ROUND(CostoAdicional,2),0))as Importe,'+
       '(select IFNULL(ROUND(Importe,2),0)*IFNULL((IVAP/100),0))as IVA,'+
       '(select IFNULL(Importe,0)+IFNULL(IVAM,0))as Total, '+
       '(select concat (Nombre,'+QuotedStr('')+ ',APaterno, '+QuotedStr('')+ ',AMaterno) from master_personal where IdPersonal = ot.IdPersonalResponsable) as NombreCompleto, ot.FechaEstatusOperacion '+
       'from ordenesdetrabajo ot '+
       'Where '+
       'ot.sContrato like :Contrato  AND '+
       '(:TipoProyecto = -1 or(:TipoProyecto <> -1 and ot.TipoProyecto = :TipoProyecto)) and  '+
       '(:sStatus = -1 or (:sStatus<>-1 and :sStatus = sStatus))'+
       'Order By Periodo DESC, sIdFolio');
  OrdenesdeTrabajo.ParamByName('Contrato').AsString := global_contrato;
  OrdenesdeTrabajo.ParamByName('TipoProyecto').AsString := '-1';
  OrdenesdeTrabajo.ParamByName('sStatus').AsString := '-1';
  OrdenesdeTrabajo.Open;

end;

procedure TfrmPresupuesto.FormShow(Sender: TObject);
begin

     btnPermisos := global_btnPermisos;
    try
       OpcButton := '' ;
       sIdOrig := '';

       pnlBtn2.Visible := False;
       Panel4.Visible := False;
       cxSplitter1.Visible := False;


       cxSplitterOpciones.Visible := False;
       PanelDetalle.Visible := False;

       Titulo := 'Listado de Presupuesto' ;
       cxLeyenda.Caption := Titulo;

//       AsignarSQL(OrdenesdeTrabajo, 'lista_presupuesto', pUpdate);
//       FiltrarDataSet(OrdenesdeTrabajo, 'Contrato, TipoProyecto, sStatus', [Global_contrato, '-1', '-1']);
//       OrdenesdeTrabajo.Open;

       ListaPresupuesto;

       AsignarSQL(zPuestos,'master_puesto', pUpdate);
       FiltrarDataSet(zPuestos, 'Empresa',[connection.uContrato.FieldByName('IdEmpresa').asString]);
       zPuestos.Open;

       zMoneda.Active:=False;
       AsignarSQL(zMoneda,'master_moneda',pUpdate);
       FiltrarDataSet(zMoneda,'IdMoneda,Codigo,Activo',[-1,-1,'Si']);
       zMoneda.Open;

       AsignarSql(zClientes, 'master_clientes', pUpdate);
       if ((connection.uContrato.FieldByName('FK_Titulo').AsString = 'SUBSEA 7') or
              (connection.uContrato.FieldByName('FK_Titulo').AsString = 'CMMI')) then
      FiltrarDataSet(zClientes, 'IdCliente',['-1'])
      else
      FiltrarDataSet(zClientes, 'IdCliente,Empresa',['-1',connection.uContrato.FieldByName('IdEmpresa').AsInteger]);
       zClientes.Open;


       AsignarSql(zEmbarcacion, 'master_embarcaciones', pUpdate);
       FiltrarDataSet(zEmbarcacion,'IdEmbarcacion',[-1]);
       zEmbarcacion.Open;

       AsignarSql(Estatus, 'estatus', pUpdate);
       FiltrarDataSet(Estatus,'E1, E2, E3, E4, E5, E6, E7',['-1', '-1', '-1', '-1', '-1', '-1', '-1']);
       Estatus.Open;

       AsignarSql(estatus_admin, 'Estatus_admin', pUpdate);
       estatus_admin.Open;

       uPersonal.Active:=False;
       AsignarSQL(uPersonal,'master_personal_salida',pUpdate);
        if ((connection.uContrato.FieldByName('FK_Titulo').AsString <> 'SUBSEA 7') or
              (connection.uContrato.FieldByName('FK_Titulo').AsString <> 'CMMI')) then
       FiltrarDataSet(uPersonal, 'Empresa',[connection.uContrato.FieldByName('IdEmpresa').AsInteger]);
       uPersonal.Open;

       btnCancelClick(Sender);


       if (global_frmActivo = 'frm_pedidos') then
          btnAddClick(Sender);

       Plataformas.Active := False ;
       Plataformas.Open ;

       pernoctan.Active := False ;
       pernoctan.Open ;


       TiposdeOrden.Active := False ;
       TiposdeOrden.Open ;

       zConvenios.Active := False ;
       zConvenios.ParamByName('Contrato').AsString := global_contrato;
       zConvenios.Open ;


       sTipo := '' ;
       sPlataforma := '' ;
       sPernocta := '' ;
       sEmbarcacion := '';


       cxVistaOrdenes.DataController.Groups.FullExpand;
       PermisosBotones(frmPresupuesto,btnPermisos);

    except
    on e : exception do
    begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al iniciar formulario', 0);
    end;
  end;
  guardar_leer_grid(cxVistaOrdenes,frmPresupuesto,0);
end;

procedure TfrmPresupuesto.grid_ordenesEnter(Sender: TObject);
begin
  If frmBarraH21.btnCancel.Enabled = True then
      frmBarraH21.btnCancel.Click ;

end;

procedure TfrmPresupuesto.grid_ordenesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmBarraH21.btnCancel.Enabled = True then
      frmBarraH21.btnCancel.Click ;
end;

procedure TfrmPresupuesto.grid_ordenesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmBarraH21.btnCancel.Enabled = True then
      frmBarraH21.btnCancel.Click ;

end;

procedure TfrmPresupuesto.grid_ordenesCellClick(Column: TColumn);
begin
  If frmBarraH21.btnCancel.Enabled = True then
      frmBarraH21.btnCancel.Click ;

//  if progreso2.Visible = True then
//     progreso2.Visible := False;
end;

procedure TfrmPresupuesto.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  OrdenesdeTrabajo.Active ;
  OrdenesdeTrabajo.Open ;
  Plataformas.Active := False ;
  Plataformas.Open ;
  Pernoctan.Active := False ;
  Pernoctan.Open ;
//  zClientes.Active := False;
//  zClientes.Open;
  TiposdeOrden.Active := False ;
  TiposdeOrden.Open ;
  Estatus.Active := False ;
  Estatus.Open ;
  TiposdeOrden.Active := False ;
  TiposdeOrden.Open ;
  Estatus.Active := False ;
  Estatus.Open ;

  zConvenios.Active := False ;
  zConvenios.ParamByName('Contrato').AsString := global_contrato;
  zConvenios.Open ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al actualizar grid', 0);
  end;
 end;
end;

procedure TfrmPresupuesto.Insertar1Click(Sender: TObject);
begin
    frmBarraH11.btnAdd.click
end;




procedure TfrmPresupuesto.OrdenesdeTrabajoCalcFields(DataSet: TDataSet);
var
   dDiaSiguiente :tDate;
begin
{  if ordenesdetrabajo.RecordCount > 0 then
    begin
        //Avances Acumulados
        dDiaSiguiente := IncDay(date);
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Text := 'SELECT ROUND(AvancesAnteriores("'+FormatDateTime('yyyy-mm-dd', dDiaSiguiente)+'", :Orden, :Folio), 4) AS dAvanceAcumulado;';
        connection.QryBusca2.ParamByName('Orden').AsString := global_contrato;
        connection.QryBusca2.ParamByName('Folio').AsString := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString;
        connection.QryBusca2.Open;

        ordenesdetrabajo.FieldByName('dAvance').AsFloat := xRound(connection.QryBusca2.FieldByName('dAvanceAcumulado').AsFloat,2);

    end; }
end;

procedure TfrmPresupuesto.OrdenesdeTrabajoiConsecutivoSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmPresupuesto.OrdenesdeTrabajoiConsecutivoTierraSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmPresupuesto.OrdenesdeTrabajoiJornadaSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmPresupuesto.Editar1Click(Sender: TObject);
begin
    frmBarraH11.btnEdit.Click
end;

procedure TfrmPresupuesto.edtDescripcionCortaExit(Sender: TObject);
begin
OrdenesdeTrabajo.FieldByName('mDescripcion').AsString:=edtDescripcionCorta.Text;
SalidaControl(Sender);
end;

procedure TfrmPresupuesto.Registrar1Click(Sender: TObject);
begin
    frmBarraH21.btnPost.Click
end;

procedure TfrmPresupuesto.Can1Click(Sender: TObject);
begin
    frmBarraH21.btnCancel.Click
end;

procedure TfrmPresupuesto.cIdStatusPropertiesChange(Sender: TObject);
var Id:String;
begin

  if Estatus.Locate('cIdStatus',cIdStatus.EditValue,[]) then
  begin
     Id:=Estatus.FieldByName('cIdStatus').AsString;
  end;
  if Id='CR' then
  begin
     estatus_admin.Filtered:=False;
     estatus_admin.Filter:='IdEstatusAdmin ='+QuotedStr('8')+' or IdEstatusAdmin ='+QuotedStr('7');
     estatus_admin.Filtered:=True;
     if (OrdenesdeTrabajo.State = dsInsert) or (OrdenesdeTrabajo.State = dsEdit) then
      OrdenesdeTrabajo.FieldByName ('sEstatusAdmin').AsString:= '7';
  end;
  if Id='CE' then
  begin
     estatus_admin.Filtered:=False;
     estatus_admin.Filter:='IdEstatusAdmin ='+QuotedStr('10')+' or IdEstatusAdmin ='+QuotedStr('9');
     estatus_admin.Filtered:=True;
     if (OrdenesdeTrabajo.State = dsInsert) or (OrdenesdeTrabajo.State = dsEdit) then
       OrdenesdeTrabajo.FieldByName ('sEstatusAdmin').AsString:= '7';
  end;

  if (Id='ET') or (Id='RT') then
  begin
     estatus_admin.Filtered:=False;
     estatus_admin.Filter:='IdEstatusAdmin ='+QuotedStr('13')+
     ' or IdEstatusAdmin ='+QuotedStr('12')+' or IdEstatusAdmin ='+QuotedStr('1');;
     estatus_admin.Filtered:=True;
     if (OrdenesdeTrabajo.State = dsInsert) or (OrdenesdeTrabajo.State = dsEdit) then
      OrdenesdeTrabajo.FieldByName ('sEstatusAdmin').AsString:= '1';
  end;

end;

procedure TfrmPresupuesto.cIdStatusPropertiesEditValueChanged(Sender: TObject);
begin
if (ds_ordenesdetrabajo.DataSet.State in [dsInsert,dsEdit]) then
 ds_ordenesdetrabajo.dataset.FieldByName('FechaEstatusOperacion').value:=now();
end;

procedure TfrmPresupuesto.cxButton1Click(Sender: TObject);
begin
    if not MostrarFormChild('FrmEmbarcacion', global_dxBarManagerPrincipal) then
    begin

        global_frmActivo := 'frmPresupuesto';
        Application.CreateForm(TFrmEmbarcacion, FrmEmbarcacion);
        FrmEmbarcacion.show
    end;
end;

procedure TfrmPresupuesto.cxButton2Click(Sender: TObject);
begin
    if not MostrarFormChild('frmClientes', global_dxBarManagerPrincipal) then
    begin
        global_frmActivo := 'frmPresupuesto';
        Application.CreateForm(TfrmClientes, frmClientes);
        frmClientes.show
    end;
end;





procedure TfrmPresupuesto.cxCancelarDetalleClick(Sender: TObject);
begin
 if cxPageDetalle.ActivePage = cxTabsheet2 then begin
      zDocumento.Cancel;
      paneldown4.Visible:=false;
      paneldown.Visible:=false;
      cxGuardarDetalle.Visible := False;
      cxCancelarDetalle.Visible := False;
      cxNuevoDetalle.Enabled := True;
      cxEditaDetalle.Enabled := True;
      btnEliminarDetalle.Enabled := True;
    end
end;

procedure TfrmPresupuesto.cxCargarDocumentoClick(Sender: TObject);
var
  BlobStream : TStream;
  FileStream : TFileStream;

  Ext, sArchivo : string;
begin
  {$region 'CargarDocumento'}
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

//    if (documentos.State = dsEdit) or (documentos.State <> dsInsert) then
//       documentos.Edit;
//
    zDocumento.FieldByName('NombreDocto').AsString := ExtractFileName(Archivo);
    zDocumento.FieldByName('Direccion').AsString := ExtractFilePath(Archivo) + ExtractFileName(Archivo);


  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
    end;
  end;
  {$endregion}
end;



procedure TfrmPresupuesto.cxEditaDetalleClick(Sender: TObject);
begin
  if cxPageDetalle.ActivePage = cxTabSheet2  then begin
    OpcButton         := 'Edit';
    cxNuevoDetalle.Enabled   := False ;
    cxEditaDetalle.Enabled    := False ;
    btnEliminarDetalle.Enabled  := True ;

    zDocumento.Edit;
    PanelDown4.Visible:=True;
    PanelDown.Visible := True;
    cxSplit4.Visible := True;
  end;

end;

procedure TfrmPresupuesto.cxGuardarDetalleClick(Sender: TObject);
begin
   zDocumento.Post;
   zDocumento.Refresh;
   cxSplit4.Visible := False;
   PanelDown4.Visible := False;
   PanelDown.Visible:=False;
   cxNuevoDetalle.Enabled := True;
   cxEditaDetalle.Enabled := True;
   btnEliminarDetalle.Enabled := True;
end;

procedure TfrmPresupuesto.cxNuevoDetalleClick(Sender: TObject);
begin
  if cxPageDetalle.ActivePage = cxTabSheet2  then begin
    paneldown4.Visible:=true;
    paneldown.Visible:=true;
    cxGuardarDetalle.Visible := True;
    cxCancelarDetalle.Visible := True;
    cxNuevoDetalle.Enabled := False;
    cxEditaDetalle.Enabled := False;
    btnEliminarDetalle.Enabled := False;

    zDocumento.Append;
    zDocumento.FieldByName('Codigo').AsString := autoFolio(zDocumento, 'documentos_presupuesto');
    zDocumento.FieldByName('sNumeroOrden').AsString := OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString
       // zAutorizaciones.FieldByName('sIdUsuario').AsString:=zUsuarios.FieldByName('sIdUsuario').AsString;

  end;
end;

procedure TfrmPresupuesto.cxPageDetalleClick(Sender: TObject);
begin
  if cxPageDetalle.ActivePage = cxTabSheet2  then begin
     PanelM.Visible:=True;
  end
  else begin
     PanelM.Visible:=False;
  end;

end;

procedure TfrmPresupuesto.cxVistaOrdenesCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 if PanelDetalle.Visible then
 begin
//  cxNuevoDetalle.Visible := False;
//  cxEditaDetalle.Visible := False;
//  btnEliminarDetalle.Visible := False;
   if (OrdenesdeTrabajo.FieldByName('Estatus').AsString='EN PROC. DE ELAB. DE COTIZ.') then
     begin
      lcbMonedas.Enabled:=true;
     crrMargenContribucion.Enabled:=true;
     crrCostoFijoP.Enabled:=true;
     crrCostoFijoM.Enabled:=true;
     crrFinanciamientoM.Enabled:=true;
     crrPTU_antesImp.Enabled:=true;
     crrPTU_ISRP.Enabled:=true;
     crrPTU_ISR.Enabled:=true;
     crrPTU_Neto.Enabled:=true;
     crrIVAP.Enabled:=true;
     crrIVAM.Enabled:=true;

     cxPageDetalle.Pages[2].TabVisible := False;
     cxPageDetalle.ActivePageIndex:=0;
     end
     else
     if (OrdenesdeTrabajo.FieldByName('Estatus').AsString='SOLICITUD DE COTIZACION DEL CLIENTE') then
     begin
      lcbMonedas.Enabled:=false;
     crrMargenContribucion.Enabled:=false;
     crrCostoFijoP.Enabled:=false;
     crrCostoFijoM.Enabled:=false;
     crrFinanciamientoM.Enabled:=false;
     crrPTU_antesImp.Enabled:=false;
     crrPTU_ISRP.Enabled:=false;
     crrPTU_ISR.Enabled:=false;
     crrPTU_Neto.Enabled:=false;
     crrIVAP.Enabled:=false;
     crrIVAM.Enabled:=false;

       cxPageDetalle.Pages[2].TabVisible := True;
       AsignarSQL(zDocumento,'documentos_presupuesto', pUpdate);
       FiltrarDataSet(zDocumento, 'sNumeroOrden',[OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString]);
       zDocumento.Open;

     end

     else begin
     lcbMonedas.Enabled:=false;
     crrMargenContribucion.Enabled:=false;
     crrCostoFijoP.Enabled:=false;
     crrCostoFijoM.Enabled:=false;
     crrFinanciamientoM.Enabled:=false;
     crrPTU_antesImp.Enabled:=false;
     crrPTU_ISRP.Enabled:=false;
     crrPTU_ISR.Enabled:=false;
     crrPTU_Neto.Enabled:=false;
     crrIVAP.Enabled:=false;
     crrIVAM.Enabled:=false;
     cxPageDetalle.Pages[2].TabVisible := False;
     cxPageDetalle.ActivePageIndex:=0;
    end;
 end;
{    zConvenios.Filtered := False;
    zConvenios.Filter := 'sNumeroOrden = ' + QuotedStr(ordenesdetrabajo.FieldByName('snumeroorden').AsString) ;
    zConvenios.Filtered := True;}
end;

procedure TfrmPresupuesto.cxVistaOrdenesDblClick(Sender: TObject);
begin
    if cxVistaOrdenes.OptionsView.CellAutoHeight then
       cxVistaOrdenes.OptionsView.CellAutoHeight := False
    else
       cxVistaOrdenes.OptionsView.CellAutoHeight := True;
end;



procedure TfrmPresupuesto.cxVistaOrdenesFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
if PanelDetalle.Visible=true then
 begin
   if (OrdenesdeTrabajo.FieldByName('Estatus').AsString='EN PROC. DE ELAB. DE COTIZ.') then
     begin
  lcbMonedas.Enabled:=true;
     crrMargenContribucion.Enabled:=true;
     crrCostoFijoP.Enabled:=true;
     crrCostoFijoM.Enabled:=true;
     crrFinanciamientoM.Enabled:=true;
     crrPTU_antesImp.Enabled:=true;
     crrPTU_ISRP.Enabled:=true;
     crrPTU_ISR.Enabled:=true;
     crrPTU_Neto.Enabled:=true;
     crrIVAP.Enabled:=true;
     crrIVAM.Enabled:=true;
     end
     else begin
      lcbMonedas.Enabled:=false;
     crrMargenContribucion.Enabled:=false;
     crrCostoFijoP.Enabled:=false;
     crrCostoFijoM.Enabled:=false;
     crrFinanciamientoM.Enabled:=false;
     crrPTU_antesImp.Enabled:=false;
     crrPTU_ISRP.Enabled:=false;
     crrPTU_ISR.Enabled:=false;
     crrPTU_Neto.Enabled:=false;
     crrIVAP.Enabled:=false;
     crrIVAM.Enabled:=false;
    end;
 end;
end;

procedure TfrmPresupuesto.cxVistaOrdenesStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  var
     AColumn : TcxCustomGridTableItem;
begin
    AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('cIdStatus');
    if VarToStr(ARecord.Values[AColumn.Index]) <> '' then
    begin
       if VarToStr(ARecord.Values[AColumn.Index]) = 'CE' then AStyle := connection.cxstylNiv2 ;
       if VarToStr(ARecord.Values[AColumn.Index]) = 'PC' then AStyle := connection.cxstylNiv0 ;
       if VarToStr(ARecord.Values[AColumn.Index]) = 'A' then AStyle := connection.cxstylNiv3 ;
       if VarToStr(ARecord.Values[AColumn.Index]) = 'C' then AStyle := connection.cxstylNiv1 ;
       if VarToStr(ARecord.Values[AColumn.Index]) = 'PE' then AStyle := connection.cxstylNiv4 ;
       if VarToStr(ARecord.Values[AColumn.Index]) = 'SE' then AStyle := connection.cxstylNiv5 ;
    end;
end;

procedure TfrmPresupuesto.Eliminar1Click(Sender: TObject);
begin
    frmBarraH11.btnDelete.Click
end;

function TfrmPresupuesto.tablasDependientes(idOrig: string): boolean;
var
  ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesSET:=TStringList.Create;ParamValuesSET:=TStringList.Create;ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesSET.Add('sNumeroOrden');ParamValuesSET.Add(OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString);
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sNumeroOrden');ParamValuesWHERE.Add(idOrig);
  if not UnitTablasImpactadas.impactar('ordenesdetrabajo',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
  begin
    result := false;
    showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
  end
end;

function TfrmPresupuesto.posibleBorrar(idOrig: string): boolean;
var
  ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sNumeroOrden');ParamValuesWHERE.Add(idOrig);
  result := not UnitTablasImpactadas.hayDependientes('ordenesdetrabajo',ParamNamesWHERE,ParamValuesWHERE);
end;



// Funcion para actualizar todos los consecutivos de los Reportes Diarios...
procedure TfrmPresupuesto.ActualizaReporte(sFrente: string; valor :boolean);
var cad, reporte : string;
var i, x, j : integer;
begin
     //Busqueda de los reportes diarios para cambiar el numero de reporte...
     connection.qryBusca.Active := False ;
     connection.qryBusca.SQL.Clear ;
     connection.qryBusca.SQL.Add('select sNumeroReporte from reportediario where sContrato = :Contrato and sNumeroOrden =:Frente ');
     connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
     connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato ;
     connection.qryBusca.Params.ParamByName('Frente').DataType   := ftString ;
     connection.qryBusca.Params.ParamByName('Frente').Value      := sFrente;
     connection.qryBusca.Open;

     if connection.QryBusca.RecordCount > 0 then
     begin
//         progreso2.Visible  := True;
//         progreso2.Min      := 1;
//         progreso2.Position := 1;
//         progreso2.Max      := connection.QryBusca.RecordCount + 1;
         while not connection.QryBusca.Eof do
         begin
             //Se Forma la Cadena cuando se cambia el nombre de frente...
             i   := length(connection.QryBusca.FieldValues['sNumeroReporte']);
             cad := copy(connection.QryBusca.FieldValues['sNumeroReporte'],(i+1)-3,3);
             if  valor = true then
//                 reporte := tsFormato.Text + cad
             else
                 reporte := sFrente + '-'+ cad;

             //Actualizacion del reporte diario..
             connection.qryBusca2.Active := False ;
             connection.qryBusca2.SQL.Clear ;
             connection.qryBusca2.SQL.Add('update reportediario set  sNumeroReporte = :Nuevo where sContrato = :Contrato and sNumeroOrden =:Frente and sNumeroReporte = :Numero');
             connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
             connection.qryBusca2.Params.ParamByName('Contrato').Value    := global_contrato ;
             connection.qryBusca2.Params.ParamByName('Nuevo').DataType    := ftString ;
             connection.qryBusca2.Params.ParamByName('Nuevo').Value       := reporte;
             connection.qryBusca2.Params.ParamByName('Frente').DataType   := ftString ;
             connection.qryBusca2.Params.ParamByName('Frente').Value      := sFrente;
             connection.qryBusca2.Params.ParamByName('Numero').DataType   := ftString ;
             connection.qryBusca2.Params.ParamByName('Numero').Value      := connection.QryBusca.FieldValues['sNumeroReporte'];
             connection.qryBusca2.ExecSQL ;

             //Actualizacion del FOTOGRAFIAS.. 22 Frebrero de 2011..
             connection.qryBusca2.Active := False ;
             connection.qryBusca2.SQL.Clear ;
             connection.qryBusca2.SQL.Add('update reportefotografico set  sNumeroReporte = :Nuevo where sContrato = :Contrato and sNumeroOrden =:Frente and sNumeroReporte = :Numero');
             connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
             connection.qryBusca2.Params.ParamByName('Contrato').Value    := global_contrato ;
             connection.qryBusca2.Params.ParamByName('Nuevo').DataType    := ftString ;
             connection.qryBusca2.Params.ParamByName('Nuevo').Value       := reporte;
             connection.qryBusca2.Params.ParamByName('Frente').DataType   := ftString ;
             connection.qryBusca2.Params.ParamByName('Frente').Value      := sFrente;
             connection.qryBusca2.Params.ParamByName('Numero').DataType   := ftString ;
             connection.qryBusca2.Params.ParamByName('Numero').Value      := connection.QryBusca.FieldValues['sNumeroReporte'];
             connection.qryBusca2.ExecSQL ;

             connection.QryBusca.Next;
         end;
         if valor = True then
            messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);
     end
     else
        if valor = True then
           messageDLG('No se encontraron Reportes Diarios con el Formato Anterior',mtInformation, [mbOK], 0);

end;


procedure TfrmPresupuesto.btnAddClick(Sender: TObject);
begin
  try
   Opcion := 'Nuevo';
   zConvenios.Filtered := False;
   zConvenios.Filter := 'sNumeroOrden = ' + QuotedStr('__') ;
   zConvenios.Filtered := True;
//   tsConvenio.Text := 'No Asignado';
   FrentT := '';
   cxLeyenda.Caption:=titulo + '[Añadiendo]';
   frmBarraH11.btnAddClick(Sender);
   frmBarraH21.btnActive;

   cxSplitter1.Visible := True;
    Panel4.Visible  :=True;
    pnlBtn2.Visible := True;


   Estatus.Filtered:=False;
   Estatus.Filter:='cIdStatus ='+ QuotedStr('CR')+ ' or cIdStatus ='+ QuotedStr('EP')+
   'or cIdStatus ='+ QuotedStr('SC');
   Estatus.Filtered:=True;

   estatus_admin.Filtered:=False;
   estatus_admin.Filter:='IdEstatusAdmin ='+''' 6 ''';
   estatus_admin.Filtered:=True;


   OrdenesdeTrabajo.Append ;
   OrdenesdeTrabajo.FieldValues [ 'sContrato' ]  := Global_Contrato ;
   OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString := autoFolio(OrdenesdeTrabajo, 'ordenesdetrabajo', connection.uContrato.FieldByName('IdEmpresa').AsInteger, 0,0);
//   OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString := autoFolio(OrdenesdeTrabajo, 'ordenesdetrabajo');
   OrdenesdeTrabajo.FieldValues['dFiProgramado'] := Date ;
   OrdenesdeTrabajo.FieldValues['dFfProgramado'] := Date ;
   OrdenesdeTrabajo.FieldValues['sIdPlataforma'] := sPlataforma ;
   OrdenesdeTrabajo.FieldValues['sIdPernocta']   := sPernocta ;
   OrdenesdeTrabajo.FieldValues['sIdFolio']      := '' ;
   OrdenesdeTrabajo.FieldValues ['sFormato' ]    := '' ;
   OrdenesdeTrabajo.FieldValues ['iJornadas' ]   := 2 ;
   OrdenesdeTrabajo.FieldValues ['iConsecutivo' ] := 1 ;
   OrdenesdeTrabajo.FieldValues ['iConsecutivoTierra' ] := 0 ;
   OrdenesdeTrabajo.FieldValues ['mComentarios' ] := '*' ;
   OrdenesdeTrabajo.FieldByName ('cIdStatus').AsString:= 'SC';
   OrdenesdeTrabajo.FieldByName ('sEstatusAdmin').AsString:= '6';
   OrdenesdeTrabajo.FieldByName('TipoProyecto').AsString := 'PRESUPUESTO';
   OrdenesdeTrabajo.FieldValues['iOrden'] := Noil_maximoId(global_contrato, 'ordenesdetrabajo', 'iOrden');
   OrdenesdeTrabajo.FieldValues['sCsu']   := '000-00-0000';
     OrdenesdeTrabajo.FieldByName('sOficioAutorizacion').AsString := '*';
   sIdFolio.SetFocus;
   sIdEmbarcacion.DataBinding.DataSource.DataSet.FieldByName('sIdEmbarcacion').AsInteger:=zEmbarcacion.FieldByName('IdEmbarcacion').AsInteger;
   lcbClientes.DataBinding.DataSource.DataSet.FieldByName('IdCliente').AsInteger:=zClientes.FieldByName('IdCliente').AsInteger;
   //cIdStatus.DataBinding.DataSource.DataSet.FieldByName('cIdStatus').AsVariant:=Estatus.FieldByName('cIdStatus').AsVariant;
   cmbLookResponsable.DataBinding.DataSource.DataSet.FieldByName('IdPersonalResponsable').AsInteger:=uPersonal.FieldByName('IdPersonal').AsInteger;
   lcbPuesto.DataBinding.DataSource.DataSet.FieldByName('IdPuesto').AsInteger:=zPuestos.FieldByName('IdPuesto').AsInteger;
   lcbMonedas.DataBinding.DataSource.DataSet.FieldByName('IdMoneda').AsInteger:=zMoneda.FieldByName('IdMoneda').AsInteger;
  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al agregar registro', 0);
  end;
  end;

//  frmBarraH11.btnPrinter.Enabled:=false;
  grid_ordenes.Enabled:=false;
  sNumeroOrden.Enabled := False;
end;

procedure TfrmPresupuesto.btnCancelClick(Sender: TObject);
begin
 try
  frmBarraH21.btnCancelClick(Sender);
  frmBarraH11.btnActive;

  OrdenesdeTrabajo.Cancel;
  zConvenios.Filtered := False;
  sNumeroOrden.Enabled := True;

  grid_ordenes.Enabled:=True;

  frmBarraH21.btnActive;
  cxLeyenda.Caption:=titulo;
  cxSplitter1.Visible := False;
  Panel4.Visible  :=False;
  pnlBtn2.Visible := False;

  PermisosBotones(frmPresupuesto,btnPermisos);
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al cancelar', 0);
  end;
 end;
// frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmPresupuesto.btnDeleteClick(Sender: TObject);
var
  cadena: string;
begin

  if OrdenesdeTrabajo.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
       if not posibleBorrar(OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString) then
       begin
          if MessageDlg('Desea eliminar la información reportada en el Programa de Trabjo '+OrdenesdeTrabajo.FieldByName('sIdFolio').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          begin
              exit;
          end;
        end;

        //Llamada a funcion Buscar Frente en la Base de Datos..

        opcion := 'borrar';
        FrentT := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
        kardex_almacen('Elimina Folio Programa  No. [' + FrentT + ']', 'Otros Movimientos');

        OrdenesdeTrabajo.Delete;
//        OrdenesdeTrabajo.ApplyUpdates();

        if global_frmActivo = 'frm_pedidos' then
        begin
            frmPedidos.zqOrdenes.Refresh;

        end;



    end;
end;
procedure TfrmPresupuesto.btnDetalleClick(Sender: TObject);
begin
  cxPageDetalle.ActivePageIndex := 0;
  PanelM.Visible:=False;
  cxGuardarDetalle.Visible := False;
  cxCancelarDetalle.Visible := False;

  PanelDown.Visible :=False;
  if PanelDetalle.Visible then
   begin
       cxSplitterOpciones.Visible := False;
       PanelDetalle.Visible       := False;
   end
   else
   begin
       PanelDetalle.Visible       := True;
       cxSplitterOpciones.Visible := True;
   if (OrdenesdeTrabajo.FieldByName('Estatus').AsString='EN PROC. DE ELAB. DE COTIZ.') then
     begin

     lcbMonedas.Enabled:=true;
     crrMargenContribucion.Enabled:=true;
     crrCostoFijoP.Enabled:=true;
     crrCostoFijoM.Enabled:=true;
     crrFinanciamientoM.Enabled:=true;
     crrPTU_antesImp.Enabled:=true;
     crrPTU_ISRP.Enabled:=true;
     crrPTU_ISR.Enabled:=true;
     crrPTU_Neto.Enabled:=true;
     crrIVAP.Enabled:=true;
     crrIVAM.Enabled:=true;
     cxPageDetalle.Pages[2].TabVisible := False;
     cxPageDetalle.ActivePageIndex:=0;
     end
     else
     if (OrdenesdeTrabajo.FieldByName('Estatus').AsString='SOLICITUD DE COTIZACION DEL CLIENTE') then
     begin
      lcbMonedas.Enabled:=false;
     crrMargenContribucion.Enabled:=false;
     crrCostoFijoP.Enabled:=false;
     crrCostoFijoM.Enabled:=false;
     crrFinanciamientoM.Enabled:=false;
     crrPTU_antesImp.Enabled:=false;
     crrPTU_ISRP.Enabled:=false;
     crrPTU_ISR.Enabled:=false;
     crrPTU_Neto.Enabled:=false;
     crrIVAP.Enabled:=false;
     crrIVAM.Enabled:=false;

     cxPageDetalle.Pages[2].TabVisible := True;

     AsignarSQL(zDocumento,'documentos_presupuesto', pUpdate);
     FiltrarDataSet(zDocumento, 'sNumeroOrden',[OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString]);
     zDocumento.Open;

     end
     else begin

     cxPageDetalle.Pages[2].TabVisible := False;
     cxPageDetalle.ActivePageIndex:=0;
     lcbMonedas.Enabled:=false;
     crrMargenContribucion.Enabled:=false;
     crrCostoFijoP.Enabled:=false;
     crrCostoFijoM.Enabled:=false;
     crrFinanciamientoM.Enabled:=false;
     crrPTU_antesImp.Enabled:=false;
     crrPTU_ISRP.Enabled:=false;
     crrPTU_ISR.Enabled:=false;
     crrPTU_Neto.Enabled:=false;
     crrIVAP.Enabled:=false;
     crrIVAM.Enabled:=false;
    end;
   end;
end;

procedure TfrmPresupuesto.btnEditClick(Sender: TObject);
begin
   cxLeyenda.Caption:=titulo+'[Editando]';
   frmBarraH11.btnEditClick(Sender);
   frmBarraH21.btnActive;

   cxSplitter1.Visible := True;
   Panel4.Visible  :=True;
   pnlBtn2.Visible := True;


   sIdOrig := OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString;
   try
       opcion  := 'actualizar';
       formato := OrdenesdeTrabajo.FieldValues['sFormato'];
       FrentT  := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
       OrdenesdeTrabajo.Edit ;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Frentes de Trabajo', 'Al editar registro', 0);
          frmBarraH21.btnCancel.Click ;
      end;
   end ;

//   frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmPresupuesto.btnEliminarDetalleClick(Sender: TObject);
begin
if MessageDlg('Desea eliminar el Registro?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      zDocumento.Delete;
      zDocumento.applyUpdates();
      end;
end;

procedure TfrmPresupuesto.btnEmpleadoClick(Sender: TObject);
begin
if not MostrarFormChild('frmCatalogoEmpleadosSSI', global_dxBarManagerPrincipal) then
    begin
        global_frmActivo := 'frmPresupuesto';
        Application.CreateForm(TfrmCatalogoEmpleadosSSI, frmCatalogoEmpleadosSSI);
        frmCatalogoEmpleadosSSI.show
    end;
end;

procedure TfrmPresupuesto.btnExportaClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
  dlgSave : TSaveDialog;
begin
  dlgSave := TSaveDialog.Create(nil);
  if global_btnPermisos = 'btnInformePresupuesto' then
     dlgSave.FileName := 'Lista de Prepuestos';

  if global_btnPermisos = 'btnProyectoOper' then
     dlgSave.FileName := 'Lista de Proyectos';

  if dlgSave.Execute then
  begin
    rutaArchivo := dlgSave.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, grid_ordenes);
    dlgSave.Destroy;
    if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TfrmPresupuesto.btnImpInformeClick(Sender: TObject);
begin
  if opcionImprimir.EditValue = 1 then
  begin

    generar_reporte_grid(cxVistaOrdenes,'Reporte de Proyectos');

  end;
end;

procedure TfrmPresupuesto.btnPernoctaClick(Sender: TObject);
begin
    if not MostrarFormChild('frmPernoctan', global_dxBarManagerPrincipal) then
    begin
        global_frmActivo := 'frmPresupuesto';
        Application.CreateForm(TfrmPernoctan, frmPernoctan);
        frmPernoctan.show
    end;
end;

procedure TfrmPresupuesto.btnPlataformasClick(Sender: TObject);
begin
    if not MostrarFormChild('frmPlataformas', global_dxBarManagerPrincipal) then
    begin
        global_frmActivo := 'frmPresupuesto';
        Application.CreateForm(TfrmPlataformas, frmPlataformas);
        frmPlataformas.show
    end;
end;

procedure TfrmPresupuesto.btnPostClick(Sender: TObject);
var
   cadena   : string;
   nombres,
   cadenas  : TStringList;
   lEdita   : boolean;
   indice   : integer;
   lContinua : boolean;
begin
   try
      If (OrdenesdeTrabajo.FieldValues ['sFormato' ] = Null) OR (OrdenesdeTrabajo.FieldValues ['sFormato' ] = '') Then
          OrdenesdeTrabajo.FieldValues ['sFormato' ] := OrdenesdeTrabajo.FieldValues ['sNumeroOrden' ] + '-' ;
      sPlataforma := OrdenesdeTrabajo.FieldValues ['sIdPlataforma' ] ;
      OrdenesdeTrabajo.FieldValues ['sIdPlataforma_nota' ] := sPlataforma ;
    //empieza validacion
      nombres:=TStringList.Create;cadenas:=TStringList.Create;
      nombres.Add('Id Folio');


      nombres.Add('Folio/Proyecto');
      nombres.Add('Titulo');


      nombres.Add('Descripción');

      nombres.Add('Sitio Trabajo');
      nombres.Add('Sitio Pernoctan');
      nombres.Add('Estatus');

      cadenas.Add(sNumeroOrden.Text);

      cadenas.Add(sIdFolio.Text);
      cadenas.Add(edtDescripcionCorta.Text);

      cadenas.Add(mDescripcion.Text);
      cadenas.Add(sIdPlataforma.Text);
      cadenas.Add(sIdPernocta.Text);
      cadenas.Add(cIdStatus.Text);
     // cadenas.Add(sIdEmbarcacion.Text);


      if not validaTexto(nombres, cadenas, '', '') then
      begin
          MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
          exit;
      end;

       if ExisteRegistroBD('ordenesdetrabajo', global_contrato, global_convenio, OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString, 'S/Wbs', OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString, 'S/Descrip', FrentT) = True then
          exit;

      If OrdenesdeTrabajo.State = dsEdit Then Begin
         lEdita := true;
      End
      Else
      Begin
         lEdita := false;
      End;
      lContinua := False;

      if Opcion = 'Nuevo' then
      begin
         FrentT  := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
         OrdenesdeTrabajo.Post ;
         frmBarraH11.btnActive;
      end
      else
      begin

      end;

      if lContinua then
         UpadateActividades('ordenesdetrabajo', global_contrato, global_convenio, OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString, 'S/Wbs', 'S/Act', 'S/Item', 'S/Descip', FrentT,OrdenesdeTrabajo.FieldByName('sIdPlataforma').AsString,OrdenesdeTrabajo.FieldByName('sIdPernocta').AsString, 0,0,-1);

       if global_frmActivo = 'frm_pedidos' then
       begin
           try
              frmPedidos.zqOrdenes.Refresh ;
              frmPedidos.sReferencia.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString := FrentT;
              frmPedidos.sReferencia.SetFocus;
           Except
           end;
       end;

         if global_frmActivo = 'frmBancosMovimientos' then
       begin
           try
              frmBancosMovimientos.zOrdenesdetrabajo.Refresh;
              frmBancosMovimientos.cxProyecto.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString := FrentT;
              frmBancosMovimientos.cxProyecto.SetFocus;
           Except
           end;
       end;

     except
        on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Frentes de Trabajo', 'Al salvar registro', 0);
            frmBarraH21.btnCancel.Click ;
        end;
    end  ;

     frmBarraH21.btnActive;
     cxLeyenda.Caption:=titulo;
      cxSplitter1.Visible := False;
      Panel4.Visible  :=False;
      pnlBtn2.Visible := False;

     grid_ordenes.Enabled         := true;
     sNumeroOrden.Enabled := True;

     if (global_frmActivo = 'frm_pedidos') then
     begin
         global_frmActivo := 'ninguno';
         frmBarraH21.btnCancel.Click;

     end;
  PermisosBotones(frmPresupuesto,btnPermisos);
    OrdenesdeTrabajo.refresh;
//  frmBarraH11.btnPrinter.Enabled := false;
end;


procedure TfrmPresupuesto.btnPrinterClick(Sender: TObject);
var
Db_proyecto : TfrxDBDataset;
begin
  try
      AsignarSQL(frmRepositorio.Reporte,'lista_presupuesto',pUpdate);
       FiltrarDataSet(frmRepositorio.Reporte, 'Contrato, TipoProyecto', [Global_contrato, 'PRESUPUESTO']);
      frmRepositorio.Reporte.Open;

      Db_proyecto := TfrxDBDataset.Create(nil);
      Db_proyecto.DataSet    := frmRepositorio.Reporte;
      Db_proyecto.UserName   := 'Db_proyecto';
      Db_proyecto.FieldAliases.Clear;
      frxProyecto.DataSets.Add(Db_proyecto);

      frxProyecto.PreviewOptions.MDIChild := False;
      frxProyecto.PreviewOptions.Modal := True;
      frxProyecto.PreviewOptions.ShowCaptions := False;
      frxProyecto.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      frxProyecto.LoadFromFile(global_files + global_miReporte + '_OPER_lista_presupuesto.fr3');

     if not FileExists(global_files + global_miReporte + '_OPER_lista_presupuesto.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_OPER_lista_presupuesto.fr3 no existe, notifique al administrador del sistema');
      frxProyecto.ShowReport();
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al imprimir', 0);
      end;
    end;
// ds_proyectos.DataSet    := OrdenesdeTrabajo;
//    ds_proyectos.FieldAliases.Clear;
//    frxProyecto.DataSets.Add(ds_proyectos);
//
//    frxProyecto.PreviewOptions.MDIChild := False;
//    frxProyecto.PreviewOptions.Modal := True;
//    frxProyecto.PreviewOptions.ShowCaptions := False;
//    frxProyecto.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;
//
//    if not FileExists(global_files + global_miReporte + '_OPER_lista_presupuesto.fr3') then
//       showmessage('El archivo de reporte '+global_miReporte+'_OPER_lista_presupuesto.fr3 no existe, notifique al administrador del sistema')
//    else
//       frxProyecto.LoadFromFile (global_files + global_miReporte +'_OPER_lista_presupuesto.fr3') ;
//    frxProyecto.ShowReport;
end;

procedure TfrmPresupuesto.btnRefreshClick(Sender: TObject);
begin
   OrdenesdeTrabajo.Refresh;
end;

end.

