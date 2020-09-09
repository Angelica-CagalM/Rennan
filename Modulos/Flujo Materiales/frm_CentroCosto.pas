unit frm_CentroCosto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, global, db, frm_connection, frm_barra, ComCtrls, DateUtils,
  DBCtrls, StdCtrls, Mask, Menus, ADODB,  RXDBCtrl, ZDataset, utilerias, unitGenerales,
  ZAbstractRODataset, ZAbstractDataset, rxToolEdit, unitValidacion, unitMetodos,
  rxCurrEdit, ExtCtrls, unitexcepciones,UnitValidaTexto,
  UnitTablasImpactadas, unitactivapop,  Buttons, cxGraphics,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxProgressBar,
  cxLabel, cxCurrencyEdit, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, cxMemo, cxGroupBox, dxLayoutControlAdapters, cxButtons,
  MemDS, DBAccess, Uni, frm_barraH2, frm_barraH1, cxSplitter, dxBarBuiltInMenu,
  cxRadioGroup, cxGridChartView, cxGridDBChartView, cxPC, UnitReportes,
  cxCheckBox, dxToggleSwitch, dxDBToggleSwitch, CxGridExportLink, ShellApi,
  frxClass, frxDBSet;

type
  TfrmCentroCosto = class(TForm)
    ds_estatus: TDataSource;
    ds_tiposdeorden: TDataSource;
    ds_ordenesdetrabajo: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
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
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cIdStatus: TcxDBLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
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
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxSplitterOpciones: TcxSplitter;
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
    cxGroupBox2: TcxGroupBox;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dsMoneda: TDataSource;
    zMoneda: TUniQuery;
    lcbMonedas: TcxDBLookupComboBox;
    zClientes: TUniQuery;
    dsClientes: TDataSource;
    cxVistaOrdenesColumn2: TcxGridDBColumn;
    edtDescripcionCorta: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxVistaOrdenesColumn4: TcxGridDBColumn;
    cxVistaOrdenesColumn5: TcxGridDBColumn;
    uPersonal: TUniQuery;
    ds_personal: TDataSource;
    zEmbarcacion: TUniQuery;
    ds_embarcacion: TDataSource;
    cxComentarios: TcxDBMemo;
    dxLayoutItem34: TdxLayoutItem;
    estatus_admin: TUniQuery;
    ds_estatusAdmin: TDataSource;
    cxVistaOrdenesPO: TcxGridDBColumn;
    cxVistaOrdenesEmb: TcxGridDBColumn;
    cxVistaOrdenesResponsable: TcxGridDBColumn;
    cxVistaOrdenesComPres: TcxGridDBColumn;
    cxVistaOrdenesComProy: TcxGridDBColumn;
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
    ds_proyectos: TfrxDBDataset;
    Reporte: TUniQuery;
    cxTipoProyecto: TcxDBComboBox;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxGridMontoDBTable: TcxGridDBTableView;
    cxGridMontoLevel1: TcxGridLevel;
    cxGridMonto: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    colMonto: TcxGridDBColumn;
    colFechaInicio: TcxGridDBColumn;
    dxLayoutItem5: TdxLayoutItem;
    PanelDetalleT: TPanel;
    cxEliminar: TcxButton;
    cxEdita: TcxButton;
    cxNuevo: TcxButton;
    labelSeleccion: TcxLabel;
    ds_monto: TDataSource;
    zMonto: TUniQuery;
    dxLayoutItem9: TdxLayoutItem;
    Panel6: TPanel;
    cxCancelar: TcxButton;
    cxGuarda: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    col_fechaTermino: TcxGridDBColumn;
    cMonto: TcxGridDBColumn;
    OrdenesdeTrabajocMonto: TFloatField;
    col_Homologado: TcxGridDBColumn;
    N5: TMenuItem;
    N1: TMenuItem;
    Activo1: TMenuItem;
    Inactivo1: TMenuItem;
    cxUsuario: TcxDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    dsUsuario: TDataSource;
    zUsuario: TUniQuery;
    dxLayoutItem12: TdxLayoutItem;
    cxPlanta: TcxDBLookupComboBox;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    zqPlanta: TUniQuery;
    dsPlanta: TDataSource;
    OrdenesdeTrabajoIdPlanta: TIntegerField;
    OrdenesdeTrabajoPeriodo: TIntegerField;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure cxEditClick(Sender: TObject);
    procedure cxVistaOrdenesDblClick(Sender: TObject);
    procedure cxVistaOrdenesStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btnExportaClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure cxNuevoClick(Sender: TObject);
    procedure cxEliminarClick(Sender: TObject);
    procedure cxGuardaClick(Sender: TObject);
    procedure cxCancelarClick(Sender: TObject);
    procedure cxEditaClick(Sender: TObject);
    procedure zMontoAfterInsert(DataSet: TDataSet);
    procedure Activo1Click(Sender: TObject);
    procedure Inactivo1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCentroCosto: TfrmCentroCosto;
  Opcion, FrentT, formato :String ;
  sTipo, sPlataforma, sPernocta, titulo,sEmbarcacion : String ;
  sIdOrig : string;
  btnPermisos, Tipo : String;
implementation

uses
    frm_pedidos,
    frm_Pernoctan, frm_plataformas, frm_clientes, Frm_Embarcacion,
  frm_Presupuesto, frm_Proyectos;

{$R *.dfm}

procedure TfrmCentroCosto.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmCentroCosto.EnterControl(Sender: TObject);
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

procedure TfrmCentroCosto.SalidaControl(Sender: TObject);
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


procedure TfrmCentroCosto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    guardar_leer_grid(cxVistaOrdenes,frmCentroCosto,1);
    guardar_leer_grid(cxGridMontoDBTable,frmCentroCosto,1);
    action := cafree ;
end;

procedure TfrmCentroCosto.FormShow(Sender: TObject);
begin

     btnPermisos := global_btnPermisos;
    try
       OpcButton := '' ;
       sIdOrig := '';

       Titulo := 'Listado de Centro de Costo' ;
       cxLeyenda.Caption := Titulo;

       AsignarSQL(OrdenesdeTrabajo,'lista_presupuesto', pUpdate);
       FiltrarDataSet(OrdenesdeTrabajo, 'Contrato, TipoProyecto', [Global_contrato, 'CENTRO_COSTO']);
       ordenesdeTrabajo.Open;

       AsignarSQL(zPuestos,'master_puesto', pUpdate);
       FiltrarDataSet(zPuestos, 'Empresa',[connection.uContrato.FieldByName('IdEmpresa').asString]);
       zPuestos.Open;

       zMoneda.Active:=False;
       AsignarSQL(zMoneda,'master_moneda',pUpdate);
       FiltrarDataSet(zMoneda,'IdMoneda,Codigo,Activo',[-1,-1,'Si']);
       zMoneda.Open;

       AsignarSql(zClientes, 'master_clientes', pUpdate);
       FiltrarDataSet(zClientes,'IdCliente',[-1]);
       zClientes.Open;

       AsignarSql(zUsuario, 'usuarios_proyectos', pUpdate);
       FiltrarDataSet(zUsuario,'Usuario',[-1]);
       zUsuario.Open;

       AsignarSql(zEmbarcacion, 'master_embarcaciones', pUpdate);
       FiltrarDataSet(zEmbarcacion,'IdEmbarcacion',[-1]);
       zEmbarcacion.Open;

       AsignarSql(Estatus, 'estatus', pUpdate);
       if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then
        FiltrarDataSet(Estatus,'E1, E2, E3, E4, E5, E6, E7',['C', 'P', 'T', 'NA','NA', 'NA', 'NA'])
        else
       FiltrarDataSet(Estatus,'E1, E2, E3, E4, E5, E6, E7, E8',['C', 'PE', 'T', 'NA','NA', 'NA', 'NA','I']);
       Estatus.Open;


       AsignarSql(estatus_admin, 'Estatus_admin', pUpdate);
       estatus_admin.Open;

       AsignarSQL(Plataformas, 'plataformas', pUpdate);
       FiltrarDataSet(Plataformas, 'Plataforma', [-1]);
       Plataformas.Open;

       AsignarSQL(Pernoctan, 'pernocta', pUpdate);
       FiltrarDataSet(Pernoctan, 'Pernocta', [-1]);
       Pernoctan.Open;

       uPersonal.Active:=False;
       AsignarSQL(uPersonal,'master_personal_salida',pUpdate);
       uPersonal.Open;

       AsignarSQL(zMonto,'ordentrabajo_monto',pUpdate);
       FiltrarDataSet(zMonto, 'sNumeroOrden', [OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString]);
       zMonto.Open;



       Panel4.Visible := False;
       cxSplitter1.Visible := False;
       pnlBtn2.Visible := False;

       cxSplitterOpciones.Visible := False;
       PanelDetalle.Visible := False;

       cxGuarda.Enabled := False;
       cxCancelar.Enabled := False;

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

       if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then
       BEGIN
          cxVistaOrdenes.Columns[15].Visible:=false;
          dxLayoutItem10.Visible := True;

          AsignarSQL(zqPlanta,'master_planta',pUpdate);
          FiltrarDataSet(zqPlanta, 'IdPlanta,Codigo',['-1','-1']);
          zqPlanta.Open;

          dxLayoutItem12.Visible := True;
          cxPlanta.DataBinding.DataField:='IdPlanta';
       END
       else
       dxLayoutItem12.Visible := False;
       sTipo := '' ;
       sPlataforma := '' ;
       sPernocta := '' ;
       sEmbarcacion := '';
       cxVistaOrdenes.DataController.Groups.FullExpand;
       PermisosBotones(frmCentroCosto,btnPermisos);


    except
    on e : exception do
    begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al iniciar formulario', 0);
    end;
  end;
 guardar_leer_grid(cxVistaOrdenes,frmCentroCosto,0);
 guardar_leer_grid(cxGridMontoDBTable,frmCentroCosto,0);
end;

procedure TfrmCentroCosto.grid_ordenesEnter(Sender: TObject);
begin
  If frmBarraH21.btnCancel.Enabled = True then
      frmBarraH21.btnCancel.Click ;

end;

procedure TfrmCentroCosto.grid_ordenesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmBarraH21.btnCancel.Enabled = True then
      frmBarraH21.btnCancel.Click ;
end;

procedure TfrmCentroCosto.grid_ordenesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmBarraH21.btnCancel.Enabled = True then
      frmBarraH21.btnCancel.Click ;

end;

procedure TfrmCentroCosto.grid_ordenesCellClick(Column: TColumn);
begin
  If frmBarraH21.btnCancel.Enabled = True then
      frmBarraH21.btnCancel.Click ;

//  if progreso2.Visible = True then
//     progreso2.Visible := False;
end;

procedure TfrmCentroCosto.frmBarra1btnRefreshClick(Sender: TObject);
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

procedure TfrmCentroCosto.Inactivo1Click(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    sNotas : string;
    SavePlace, SavePlace2 : TBookMark;
begin
  if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then BEGIN
    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;
    iGrid     := 0;

        indice := cxVistaOrdenes.DataController.GetSelectedRowIndex(iGrid);
        cxVistaOrdenes.DataController.FocusedRowIndex := indice;

        with cxVistaOrdenes.DataController.DataSource.DataSet do
        for iGrid := 0 to cxVistaOrdenes.DataController.GetSelectedCount - 1 do
        begin
            indice := cxVistaOrdenes.DataController.GetSelectedRowIndex(iGrid);
            cxVistaOrdenes.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update ordenesdetrabajo set cIdStatus =:cIdStatus '+
                               'where sContrato=:Contrato and sNumeroOrden =:Id');
            zActualiza.ParamByName('Contrato').AsString    := cxVistaOrdenes.DataController.DataSet.FieldByName('sContrato').AsString;
            zActualiza.ParamByName('Id').AsString    := cxVistaOrdenes.DataController.DataSet.FieldByName('sNumeroOrden').AsString;
            zActualiza.ParamByName('cIdStatus').AsString := 'I';
            zActualiza.ExecSQL;
        end;

    OrdenesdeTrabajo.Refresh;
    zActualiza.destroy;
    cxCancelarDetalle.Click;
  END;
end;

procedure TfrmCentroCosto.Insertar1Click(Sender: TObject);
begin
    frmBarraH11.btnAdd.click
end;

procedure TfrmCentroCosto.OrdenesdeTrabajoCalcFields(DataSet: TDataSet);
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

procedure TfrmCentroCosto.OrdenesdeTrabajoiConsecutivoSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmCentroCosto.OrdenesdeTrabajoiConsecutivoTierraSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmCentroCosto.OrdenesdeTrabajoiJornadaSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmCentroCosto.Editar1Click(Sender: TObject);
begin
    frmBarraH11.btnEdit.Click
end;

procedure TfrmCentroCosto.Registrar1Click(Sender: TObject);
begin
    frmBarraH21.btnPost.Click
end;

procedure TfrmCentroCosto.Can1Click(Sender: TObject);
begin
    frmBarraH21.btnCancel.Click
end;

procedure TfrmCentroCosto.cxEditaClick(Sender: TObject);
begin
   labelSeleccion.Caption := 'Editando';
   cxGridMontoDBTable.OptionsData.Editing := True;

   cxGuarda.Enabled := True;
   cxCancelar.Enabled := True;

   cxNuevo.Enabled := False;
   cxEdita.Enabled := False;
   cxEliminar.Enabled := False;

   zMonto.Edit;
end;

procedure TfrmCentroCosto.cxEditClick(Sender: TObject);
begin
    if not MostrarFormChild('FrmEmbarcacion', global_dxBarManagerPrincipal) then
    begin
       // global_frmActivo := 'frmPresupuesto';
       global_frmActivo := 'frmCentroCosto';
        Application.CreateForm(TFrmEmbarcacion, FrmEmbarcacion);
        FrmEmbarcacion.show
    end;
end;

procedure TfrmCentroCosto.cxButton2Click(Sender: TObject);
begin
    if not MostrarFormChild('frmClientes', global_dxBarManagerPrincipal) then
    begin
       //global_frmActivo := 'frmPresupuesto';
        global_frmActivo := 'frmCentroCosto';
        Application.CreateForm(TfrmClientes, frmClientes);
        frmClientes.show
    end;
end;

procedure TfrmCentroCosto.cxCancelarClick(Sender: TObject);
begin
  zMonto.Cancel;
  labelSeleccion.Caption := '';
  cxGridMontoDBTable.OptionsData.Appending := False;
  cxGridMontoDBTable.OptionsData.Editing  := False;

  cxGuarda.Enabled := False;
  cxCancelar.Enabled := False;

  cxNuevo.Enabled := True;
  cxEdita.Enabled := True;
  cxEliminar.Enabled := True;
end;

procedure TfrmCentroCosto.cxEliminarClick(Sender: TObject);
begin

    if MessageDlg('Desea eliminar el Registro Activo?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      zMonto.Delete;
      zMonto.applyUpdates();
      end;


end;

procedure TfrmCentroCosto.cxGuardaClick(Sender: TObject);
begin

      if (zMonto.State = dsInsert) or  (zMonto.State = dsEdit) then
          zMonto.Post;


          cxGridMontoDBTable.OptionsData.Appending := False;
          cxGridMontoDBTable.OptionsData.Editing := False;

          labelSeleccion.Caption :='';

          cxGuarda.Enabled := False;
          cxCancelar.Enabled := False;

          cxNuevo.Enabled := True;
          cxEdita.Enabled := True;
          cxEliminar.Enabled := True;

end;

procedure TfrmCentroCosto.cxNuevoClick(Sender: TObject);
begin
   labelSeleccion.Caption := 'Añadiendo';
   cxGridMontoDBTable.OptionsData.Appending := True;
   cxGridMontoDBTable.OptionsData.Editing := True;

   cxGuarda.Enabled := True;
   cxCancelar.Enabled := True;

   cxNuevo.Enabled := False;
   cxEdita.Enabled := False;
   cxEliminar.Enabled := False;

   zMonto.Append;
   zMonto.FieldByName('sContrato').AsString := Global_contrato;
   zMonto.FieldByName('sNumeroOrden').AsString := sNumeroOrden.Text;
   zMonto.FieldByName('Monto').AsFloat := 0;
   if dFechaInicio.Date < 0 then
   zMonto.FieldByName('FechaInicio').AsDateTime := now()
   else
   zMonto.FieldByName('FechaInicio').AsDateTime := dFechaInicio.Date;
   if dFechaFin.Date < 0 then
   zMonto.FieldByName('FechaTermino').AsDateTime := now()
   else
   zMonto.FieldByName('FechaTermino').AsDateTime := dFechaFin.Date;
   zMonto.FieldByName('Homologado').AsFloat := 0;
end;

procedure TfrmCentroCosto.cxVistaOrdenesCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
{    zConvenios.Filtered := False;
    zConvenios.Filter := 'sNumeroOrden = ' + QuotedStr(ordenesdetrabajo.FieldByName('snumeroorden').AsString) ;
    zConvenios.Filtered := True;}
end;

procedure TfrmCentroCosto.cxVistaOrdenesDblClick(Sender: TObject);
begin
    if cxVistaOrdenes.OptionsView.CellAutoHeight then
       cxVistaOrdenes.OptionsView.CellAutoHeight := False
    else
       cxVistaOrdenes.OptionsView.CellAutoHeight := True;
end;

procedure TfrmCentroCosto.cxVistaOrdenesStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  var
     AColumn : TcxCustomGridTableItem;
begin
    AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('cIdStatus');
    if VarToStr(ARecord.Values[AColumn.Index]) <> '' then
    begin
       if VarToStr(ARecord.Values[AColumn.Index]) = 'A' then AStyle := connection.cxstylNiv0 ;
       if VarToStr(ARecord.Values[AColumn.Index]) = 'C' then AStyle := connection.cxstylNiv1 ;
       if VarToStr(ARecord.Values[AColumn.Index]) = 'PE' then AStyle := connection.cxstylNiv2 ;
    end;
end;

procedure TfrmCentroCosto.Eliminar1Click(Sender: TObject);
begin
    frmBarraH11.btnDelete.Click
end;

function TfrmCentroCosto.tablasDependientes(idOrig: string): boolean;
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

procedure TfrmCentroCosto.zMontoAfterInsert(DataSet: TDataSet);
begin
  zMonto.FieldByName('sNumeroOrden').AsString := '';
end;

function TfrmCentroCosto.posibleBorrar(idOrig: string): boolean;
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
procedure TfrmCentroCosto.Activo1Click(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    sNotas : string;
    SavePlace, SavePlace2 : TBookMark;
begin
if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then BEGIN
    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;
    iGrid     := 0;

        indice := cxVistaOrdenes.DataController.GetSelectedRowIndex(iGrid);
        cxVistaOrdenes.DataController.FocusedRowIndex := indice;

        with cxVistaOrdenes.DataController.DataSource.DataSet do
        for iGrid := 0 to cxVistaOrdenes.DataController.GetSelectedCount - 1 do
        begin
            indice := cxVistaOrdenes.DataController.GetSelectedRowIndex(iGrid);
            cxVistaOrdenes.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update ordenesdetrabajo set cIdStatus =:cIdStatus '+
                               'where sContrato=:Contrato and sNumeroOrden =:Id');
            zActualiza.ParamByName('Contrato').AsString    := cxVistaOrdenes.DataController.DataSet.FieldByName('sContrato').AsString;
            zActualiza.ParamByName('Id').AsString    := cxVistaOrdenes.DataController.DataSet.FieldByName('sNumeroOrden').AsString;
            zActualiza.ParamByName('cIdStatus').AsString := 'A';
            zActualiza.ExecSQL;
        end;

    OrdenesdeTrabajo.Refresh;
    zActualiza.destroy;
    cxCancelarDetalle.Click;
  END;
end;

procedure TfrmCentroCosto.ActualizaReporte(sFrente: string; valor :boolean);
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


procedure TfrmCentroCosto.btnAddClick(Sender: TObject);
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

   OrdenesdeTrabajo.Append ;
   OrdenesdeTrabajo.FieldValues ['sContrato']  := Global_Contrato ;
   //OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString := autoFolio(OrdenesdeTrabajo, 'ordenesdetrabajo', connection.uContrato.FieldByName('IdEmpresa').AsInteger, 0,0);
   ordenesdetrabajo.FieldValues['sNumeroOrden']  := autoFolio(OrdenesdeTrabajo, 'ordenesdetrabajo', connection.uContrato.FieldByName('IdEmpresa').AsInteger, 0,0);
   OrdenesdeTrabajo.FieldValues['dFiProgramado'] := Date ;
   OrdenesdeTrabajo.FieldValues['dFfProgramado'] := Date ;
   OrdenesdeTrabajo.FieldValues['sIdPlataforma'] := 'PL-005';
   OrdenesdeTrabajo.FieldValues['sIdPernocta']   := 'P-003';
   OrdenesdeTrabajo.FieldValues['sIdFolio']      := '' ;
   OrdenesdeTrabajo.FieldValues ['sFormato' ]    := '' ;
   OrdenesdeTrabajo.FieldValues ['iJornadas' ]   := 2 ;
   OrdenesdeTrabajo.FieldValues ['iConsecutivo' ] := 1 ;
   OrdenesdeTrabajo.FieldValues ['iConsecutivoTierra' ] := 0 ;
   OrdenesdeTrabajo.FieldValues ['mComentarios' ] := '*' ;
   OrdenesdeTrabajo.FieldValues ['cIdStatus']     := 'PE';
   OrdenesdeTrabajo.FieldByName('TipoProyecto').AsString := 'CENTRO_COSTO';
   OrdenesdeTrabajo.FieldValues['iOrden'] := Noil_maximoId(global_contrato, 'ordenesdetrabajo', 'iOrden');
   OrdenesdeTrabajo.FieldValues['sCsu']   := '000-00-0000';
   OrdenesdeTrabajo.FieldByName('sOficioAutorizacion').AsString := '*';
   cxUsuario.DataBinding.DataSource.DataSet.FieldByName('sIdUsuario').AsString := global_usuario;
   sIdFolio.SetFocus ;
   lcbMonedas.DataBinding.DataSource.DataSet.FieldByName('IdMoneda').AsInteger:=zMoneda.FieldByName('IdMoneda').AsInteger;

   FiltrarDataset(zMonto, 'sNumeroOrden',['-9']);
   zMonto.Open;
  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al agregar registro', 0);
  end;
  end;

  grid_ordenes.Enabled:=false;
  sNumeroOrden.Enabled := False;
end;

procedure TfrmCentroCosto.btnCancelClick(Sender: TObject);
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

  PermisosBotones(frmCentroCosto,btnPermisos);
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al cancelar', 0);
  end;
 end;

end;

procedure TfrmCentroCosto.btnDeleteClick(Sender: TObject);
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
        ordenesdetrabajo.ApplyUpdates();

        if global_frmActivo = 'frm_pedidos' then
        begin
            frmPedidos.zqOrdenes.Refresh;

        end;



    end;
end;
procedure TfrmCentroCosto.btnDetalleClick(Sender: TObject);
begin
//  cxPageDetalle.ActivePageIndex := 0;
//  PanelDown.Visible :=False;
//  if PanelDetalle.Visible then
//   begin
//       cxSplitterOpciones.Visible := False;
//       PanelDetalle.Visible       := False;
//   end
//   else
//   begin
//       PanelDetalle.Visible       := True;
//       cxSplitterOpciones.Visible := True;
//   end;
end;

procedure TfrmCentroCosto.btnEditClick(Sender: TObject);
begin
   cxLeyenda.Caption:=titulo+'[Editando]';
//   frmBarraH11.btnEditClick(Sender);
//   frmBarraH21.btnActive;

   cxSplitter1.Visible := True;
   Panel4.Visible  :=True;
   pnlBtn2.Visible := True;


   sIdOrig := OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString;
   try
       opcion  := 'actualizar';
       formato := OrdenesdeTrabajo.FieldValues['sFormato'];
       FrentT  := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];

       ordenesdetrabajo.edit;
       OrdenesdeTrabajo.FieldValues['sIdPlataforma'] := 'PL-005';
       OrdenesdeTrabajo.FieldValues['sIdPernocta']   := 'P-003';

       FiltrarDataset(zMonto, 'sNumeroOrden',[FrentT]);
       zMonto.Open;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Frentes de Trabajo', 'Al editar registro', 0);
          frmBarraH21.btnCancel.Click ;
      end;
   end ;

end;

procedure TfrmCentroCosto.btnExportaClick(Sender: TObject);
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

procedure TfrmCentroCosto.btnImpInformeClick(Sender: TObject);
begin
  if opcionImprimir.EditValue = 1 then
  begin

    generar_reporte_grid(cxVistaOrdenes,'Reporte de Proyectos');

  end;
end;

procedure TfrmCentroCosto.btnPernoctaClick(Sender: TObject);
begin
    if not MostrarFormChild('frmPernoctan', global_dxBarManagerPrincipal) then
    begin
       // global_frmActivo := 'frmPresupuesto';
       global_frmActivo := 'frmCentroCosto';
        Application.CreateForm(TfrmPernoctan, frmPernoctan);
        frmPernoctan.show
    end;
end;

procedure TfrmCentroCosto.btnPlataformasClick(Sender: TObject);
begin
    if not MostrarFormChild('frmPlataformas', global_dxBarManagerPrincipal) then
    begin
        //global_frmActivo := 'ffrmPresupuesto';
        global_frmActivo := 'frmCentroCosto';
        Application.CreateForm(TfrmPlataformas, frmPlataformas);
        frmPlataformas.show
    end;
end;

procedure TfrmCentroCosto.btnPostClick(Sender: TObject);
var
   cadena, textp   : string;
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

      nombres.Add('Centro de Costo');
      nombres.Add('Titulo');
      nombres.Add('Descripción');
      if Connection.uContrato.FieldByName('sMascara').AsString <> 'SUBSEA 7' then
      nombres.Add('Estatus');

      cadenas.Add(sIdFolio.Text);
      cadenas.Add(edtDescripcionCorta.Text);
      cadenas.Add(mDescripcion.Text);
      cadenas.Add(cIdStatus.Text);

      if not validaTexto(nombres, cadenas, '', '') then
      begin
          MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
          exit;
      end;

       if ExisteRegistroBD('ordenesdetrabajo', global_contrato, global_convenio, ordenesdetrabajo.FieldByName('sNumeroOrden').AsString, 'S/Wbs', ordenesdetrabajo.FieldByName('sNumeroOrden').AsString, 'S/Descrip', FrentT) = True then
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
         zMonto.First;
         while not zMonto.Eof do
         begin
           zMonto.Edit;
           zMonto.FieldByName('sNumeroOrden').AsString := FrentT;
           zMonto.Post;
           zMonto.Next;
         end;


         frmBarraH11.btnActive;
      end
      else
      begin

      end;

      if lContinua then
         UpadateActividades('ordenesdetrabajo', global_contrato, global_convenio, ordenesdetrabajo.FieldByName('sNumeroOrden').AsString, 'S/Wbs', 'S/Act', 'S/Item', 'S/Descip', FrentT,ordenesdetrabajo.FieldByName('sIdPlataforma').AsString,ordenesdetrabajo.FieldByName('sIdPernocta').AsString, 0,0,-1);

       if global_frmActivo = 'frm_pedidos' then
       begin
           try
              frmPedidos.zqOrdenes.Refresh ;
              frmPedidos.sReferencia.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString := FrentT;
              frmPedidos.sReferencia.SetFocus;
           Except
           end;
       end;

     except
        on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Frentes de Trabajo', 'Al salvar registro', 0);
            frmBarraH21.btnCancel.Click ;
        end;
    end  ;

     connection.Uconnection.Ping;
     frmBarraH21.btnActive;
     frmBarraH11.btnActive;
     cxLeyenda.Caption:=titulo;

      cxSplitter1.Visible := False;
      Panel4.Visible  :=False;
      pnlBtn2.Visible := False;

     grid_ordenes.Enabled         := true;
     sNumeroOrden.Enabled := True;
     OrdenesdeTrabajo.Refresh;
     if (global_frmActivo = 'frm_pedidos') then
     begin
         global_frmActivo := 'ninguno';
         frmBarraH21.btnCancel.Click;

     end;

  PermisosBotones(frmCentroCosto,btnPermisos);

end;


procedure TfrmCentroCosto.btnPrinterClick(Sender: TObject);
begin

    ds_proyectos.DataSet    := OrdenesdeTrabajo;
    ds_proyectos.FieldAliases.Clear;
    frxProyecto.DataSets.Add(ds_proyectos);

    frxProyecto.PreviewOptions.MDIChild := False;
    frxProyecto.PreviewOptions.Modal := True;
    frxProyecto.PreviewOptions.ShowCaptions := False;
    frxProyecto.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

    if not FileExists(global_files + global_miReporte + '_MAS_lista_proyectos.fr3') then
       showmessage('El archivo de reporte '+global_miReporte+'_MAS_lista_proyectos.fr3 no existe, notifique al administrador del sistema')
    else
       frxProyecto.LoadFromFile (global_files + global_miReporte +'_MAS_lista_proyectos.fr3') ;
    frxProyecto.ShowReport;
end;

procedure TfrmCentroCosto.btnRefreshClick(Sender: TObject);
begin
   OrdenesdeTrabajo.Refresh;
end;

end.

