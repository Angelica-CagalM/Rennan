unit frm_ReporteDiarioTurno2;

interface
                 
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, Grids, DBGrids,
  StdCtrls, DBCtrls, Mask, frm_connection, Buttons, Utilerias, Global,
  Menus, OleCtrls, ExtCtrls, ShellApi, strUtils, frm_barra, Math, frxClass,
  frxDBSet, Jpeg, RxMemDS, rxToolEdit, rxCurrEdit, ZAbstractRODataset, ZDataset,
  ZAbstractDataset, MemDS, DBAccess, Uni;
  //sSkinProvider, ZAbstractDataset;

type
  TfrmDiarioTurno2 = class(TForm)
    ds_ordenesdetrabajo: TDataSource;
    ordenesdetrabajo: TADOQuery;
    ReporteDiario: TADOQuery;
    ds_reportediario: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    Imprimir1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    dsPersonal: TfrxDBDataset;
    dsEquipos: TfrxDBDataset;
    Imprimir2: TMenuItem;
    dsOrden: TfrxDBDataset;
    dsReporteDiario: TfrxDBDataset;
    mMovimientos: TRxMemoryData;
    mMovimientossIdPernocta: TStringField;
    mMovimientossIdPlataforma: TStringField;
    mMovimientossIdEmbarcacion: TStringField;
    mMovimientossRenglon: TStringField;
    mMovimientossHora: TStringField;
    dsmMovimientos: TfrxDBDataset;
    mMovimientosiCampo: TIntegerField;
    ImprimirExcel1: TMenuItem;
    dsConfiguracion: TfrxDBDataset;
    QryReporteFotografico: TZReadOnlyQuery;
    dsReporteFotografico: TfrxDBDataset;
    rDiarioGeneral: TfrxReport;
    rDiario: TfrxReport;
    qryConfiguracionOrden: TZReadOnlyQuery;
    dsConfiguracionOrden: TfrxDBDataset;
    qryOrdenes: TZReadOnlyQuery;
    qryOrdenessNumeroOrden: TStringField;
    qryOrdenesmDescripcion: TMemoField;
    Ordenes: TfrxDBDataset;
    qryClimaReporte: TZReadOnlyQuery;
    qryClimaReportemaximo: TFloatField;
    qryClimaReportesDescripcionTiempo: TStringField;
    qryClimaReporteDireccion: TStringField;
    qryClimaReportesMedida: TStringField;
    qryArribos: TZReadOnlyQuery;
    dsClimaReporte: TfrxDBDataset;
    dsArribosReporte: TfrxDBDataset;
    qryNotasGenerales: TZReadOnlyQuery;
    dsNotasGenerales: TfrxDBDataset;
    dsTitulos: TfrxDBDataset;
    rxTitulos: TRxMemoryData;
    rxTitulossPartida: TStringField;
    rxTitulossDescripcion: TStringField;
    dsGenerador: TfrxDBDataset;
    generadores: TZReadOnlyQuery;
    embarcacion: TZReadOnlyQuery;
    dsEmbarcacion: TfrxDBDataset;
    embarcacionsDescripcion: TStringField;
    dsResumenRecursos: TfrxDBDataset;
    dsRecursosEmbarcacion: TfrxDBDataset;
    mNotas: TRxMemoryData;
    mNotassContrato: TStringField;
    mNotasiOrden: TIntegerField;
    mNotasiItemOrden: TStringField;
    mNotassIdComentario: TStringField;
    mNotasmDescripcion: TMemoField;
    dsmNotas: TfrxDBDataset;
    dsAvancesAcum: TfrxDBDataset;
    AvancesAcum: TRxMemoryData;
    AvancesAcumdAvanceGeneralAnterior: TFloatField;
    AvancesAcumdAvanceGeneralDiario: TFloatField;
    AvancesAcumdAvanceAnterior: TFloatField;
    AvancesAcumdAvanceDiario: TFloatField;
    AvancesAcumdAvanceProgGeneralAnterior: TFloatField;
    AvancesAcumdAvanceProgGeneralDiario: TFloatField;
    AvancesAcumdAvanceProgAnterior: TFloatField;
    AvancesAcumdAvanceProgDiario: TFloatField;
    dsPersonalPU: TfrxDBDataset;
    dsEquiposPU: TfrxDBDataset;
    dsPernoctas: TfrxDBDataset;
    generadoressNumeroActividad: TStringField;
    generadoressWbsAnterior: TStringField;
    generadoressMedida: TStringField;
    generadoresdCantidadAnexo: TFloatField;
    generadoresmDescripcion: TMemoField;
    generadoresnPiezas: TIntegerField;
    generadoressMarcaRev: TStringField;
    generadoressSubMca: TStringField;
    generadoressLongArea: TStringField;
    generadoressLongAreaTotal: TStringField;
    generadoressPesoxUnidad: TStringField;
    generadoresdPesoTotal: TFloatField;
    generadoressContrato: TStringField;
    generadoressNumeroOrden: TStringField;
    generadoressNumeroGenerador: TStringField;
    generadoresiConsecutivo: TIntegerField;
    generadoressFaseObra: TStringField;
    generadoresdFechaInicio: TDateField;
    generadoresdFechaFinal: TDateField;
    generadoresmComentarios: TMemoField;
    generadoresiSemana: TIntegerField;
    generadoressIdUsuarioValida: TStringField;
    generadoressIdUsuarioAutoriza: TStringField;
    generadoressIsometricoReferencia: TStringField;
    generadoressIsometrico: TStringField;
    generadoressPrefijo: TStringField;
    generadoresdCantidad: TFloatField;
    generadoresiNumeroEstimacion: TStringField;
    generadoressMoneda: TStringField;
    generadoresdFechaInicioEst: TDateField;
    generadoresdFechaFinalEst: TDateField;
    dsArribosReporteVuelo: TfrxDBDataset;
    qryArribosVuelo: TZReadOnlyQuery;
    dsTiempoExtra: TfrxDBDataset;
    qryTiempoExtra: TZReadOnlyQuery;
    ResumenPersonal: TZQuery;
    ResumenPersonalsContrato: TStringField;
    ResumenPersonalsPernocta: TStringField;
    ResumenPersonalsPersonal: TStringField;
    ResumenPersonaldCantidad: TFloatField;
    ResumenPersonalsIdPersonal: TStringField;
    ResumenEquipos: TZQuery;
    ResumenEquipossIdEquipo: TStringField;
    ResumenEquipossContrato: TStringField;
    ResumenEquipossPernocta: TStringField;
    ResumenEquipossEquipo: TStringField;
    ResumenEquiposdCantidad: TFloatField;
    generadoressIdFolio: TStringField;
    generadoressDescripcionCorta: TStringField;
    generadoresdConstante: TFloatField;
    dsPernoctaBarco: TfrxDBDataset;
    dsMaterialxPartida: TfrxDBDataset;
    frPrinter: TfrxDBDataset;
    frtmpQuery: TfrxDBDataset;
    fr_Grafica: TfrxDBDataset;
    qrGrafica: TZQuery;
    qrGraficasIdEgreso: TStringField;
    qrGraficasTipoEgreso: TStringField;
    qrGraficasDescripcion: TStringField;
    qrGraficamDescripcion: TMemoField;
    qrGraficadImporte: TFloatField;
    qrGraficadIdFecha: TDateField;
    dsMateriales: TfrxDBDataset;
    dsImpReporteFotografico: TfrxDBDataset;
    Td_CImpDistribucionTExtra: TfrxDBDataset;
    Td_CDistribucionTExtra: TfrxDBDataset;
    dsActaFolio: TfrxDBDataset;
    dsDatosFolio: TfrxDBDataset;
    dsCampo: TfrxDBDataset;
    dsCampoRecursos: TfrxDBDataset;
    dsDesglose: TfrxDBDataset;
    dsPartidas: TfrxDBDataset;
    dsResumen: TfrxDBDataset;
    dsConceptos: TfrxDBDataset;
    BalanceGerencial: TZReadOnlyQuery;
    Td_balance: TfrxDBDataset;
    ArribosGerencial: TZReadOnlyQuery;
    Td_Arribos: TfrxDBDataset;
    MovimientosGerencial: TZReadOnlyQuery;
    Td_Movimientos: TfrxDBDataset;
    NotasGerencial: TZReadOnlyQuery;
    Td_NotasGrales: TfrxDBDataset;
    PartidasGerencial: TZReadOnlyQuery;
    Td_Partidas: TfrxDBDataset;
    PersonalGerencial: TZReadOnlyQuery;
    Td_Personal: TfrxDBDataset;
    Td_CDistribucionE: TfrxDBDataset;
    Label1: TLabel;
    Label2: TLabel;
    td_ProrrateoBarco: TfrxDBDataset;
    td_ArribosMov: TfrxDBDataset;
    td_MovFolios: TfrxDBDataset;
    Td_consumoEquipos: TfrxDBDataset;
    Td_ClasificacionTiempo: TfrxDBDataset;
    Td_CDistribucionP: TfrxDBDataset;
    Td_CDistribucionPer: TfrxDBDataset;
    Td_Distribucion_detalle2: TfrxDBDataset;
    ds_duracion: TfrxDBDataset;
    td_contrato: TfrxDBDataset;
    Label3: TLabel;
    dsNotasDiesel: TfrxDBDataset;
    dsGeneradorFolio: TfrxDBDataset;
    dsEmpleados: TfrxDBDataset;
    QryConfiguracion: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiarioTurno2: TfrmDiarioTurno2;
  sSuperintendente, sSupervisor : String ;
  sPuestoSuperintendente, sPuestoSupervisor : String ;
  sSupervisorTierra, sPuestoSupervisorTierra : String ;
  sReporte : String ;
  iReporte : Integer ;
  iMuerto : Real ;
  dMuerto : Real ;
  sMuerto, sHoras, sMinutos : String ;
  lNuevoDia : Boolean ;
  dAvanceAnterior, dCantidadAnterior : Double ;

  implementation

{$R *.dfm}


procedure TfrmDiarioTurno2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
end;



end.
