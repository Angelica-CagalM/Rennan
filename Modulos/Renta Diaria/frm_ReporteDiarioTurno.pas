unit frm_ReporteDiarioTurno;

interface

uses
  Windows, Messages, DateUtils, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, DB, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, Mask,
  frm_connection, Buttons, Utilerias, Global, Menus, OleCtrls, ExtCtrls,
  strUtils, frm_barra, Math, frxClass, frxDBSet, Jpeg, RxMemDS,
  RXDBCtrl, RXCtrls, ExtDlgs, ZAbstractRODataset, ZDataset, rxSpeedbar, UReporteDiarioMix, ZAbstractDataset,
  masUtilerias,  UnitExcepciones, udbgrid, UnitTablasImpactadas, UnitTBotonesPermisos,

  UnitValidaTexto, DBDateTimePicker, Newpanel, NxCollection,
  JvExControls, JvLabel, UnitPatrick, 
  AdvDateTimePicker, JvDBLookup,ComObj,
  frm_Condicionesclima, AdvCircularProgress,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid

  , UnitTarifa, FormAutoScaler, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons, CurvyControls;

function IsDate(ADate: string): Boolean;
type TequiposU = class
  private
  ULinea:Integer;
  UColumna:Integer;
  UFormula:String;
end;
type
  TUnificacion= class
    private
      Idu:Integer;
      Count:Integer;
      Act:Integer;
  end;
type
  TPersTotal = class
    private
      sIdentificador:string;
      CellC:Integer;
      CellR:Integer;
      CellVal:string;
  end;
type
  TmovPartida = class
    private
    Linea,
    Columna:Integer;
    Formula: string;
  end;
type
  TfrmDiarioTurno = class(TForm)
    ds_ordenesdetrabajo: TDataSource;
    frmBarra1: TfrmBarra;
    PgDiario: TPageControl;
    TabRDiario: TTabSheet;
    ds_reportediario: TDataSource;
    ds_turnos: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    tsNumeroReporte: TEdit;
    tsTiempo: TEdit;
    tsTransporte: TEdit;
    tsHoraInicio2: TMaskEdit;
    tsTiempoEfectivo: TMaskEdit;
    tsTiempoMuerto: TMaskEdit;
    tsInicioPlatica: TMaskEdit;
    tsFinalPlatica: TMaskEdit;
    Label11: TLabel;
    tsHoraFinal2: TMaskEdit;
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
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N3: TMenuItem;
    TabFotografico: TTabSheet;
    Grid_Imagenes: TRxDBGrid;
    OpenPicture: TOpenPictureDialog;
    ds_ReporteFotografico: TDataSource;
    tsDescripcion: TMemo;
    btnGrabar: TBitBtn;
    btnEliminar: TBitBtn;
    Label19: TLabel;
    tsTiempoMuertoContrato: TMaskEdit;
    btnExaminar: TBitBtn;
    btnEditar: TBitBtn;
    btnCancelar: TBitBtn;
    GroupBox1: TGroupBox;
    bImagen: TImage;
    btnSaveImage: TBitBtn;
    SaveImage: TSaveDialog;
    tsIdTurno: TDBLookupComboBox;
    Label13: TLabel;
    ReporteFotografico: TZReadOnlyQuery;
    Turnos: TZReadOnlyQuery;
    ReporteDiario: TZReadOnlyQuery;
    QryBk: TZReadOnlyQuery;
    ordenesdetrabajo: TZReadOnlyQuery;
    impAnalisis: TMenuItem;
    dsApoyo: TfrxDBDataset;
    rDiario: TfrxReport;
    QryReporteFotografico: TZQuery;
    PanelProgress: TPanel;    ProgressBar1: TProgressBar;    Label15: TLabel;    Label16: TLabel;    Label17: TLabel;    Label18: TLabel;
    reporteHistorialRep: TfrxReport;
    dsHistorialRep: TfrxDBDataset;
    tdIdFecha: TDBDateTimePicker;
    ImprimirReportedeVisita1: TMenuItem;
    btnUp: TBitBtn;
    btnDown: TBitBtn;
    Label20: TLabel;
    Label21: TLabel;
    Panel: TNxFlipPanel;
    mReporte: TMemo;
    cmdAceptar: TButton;
    cmdCancelar: TButton;
    btnPreview: TBitBtn;
    CheckIncluye: TCheckBox;
    Label22: TLabel;
    btnComentarios: TBitBtn;
    GroupBox2: TGroupBox;
    chkInicio: TCheckBox;
    chkDesarrollo: TCheckBox;
    chkConclusion: TCheckBox;
    cbPartida: TDBLookupComboBox;
    ds_partidas: TDataSource;
    QrOt: TZReadOnlyQuery;
    dsOt: TDataSource;
    SdgExcel: TSaveDialog;
    ImprimirBloque1: TMenuItem;
    Cartula1: TMenuItem;
    NotasGenerales1: TMenuItem;
    ConcentradodePersonal1: TMenuItem;
    ConcentradodeEquipos1: TMenuItem;
    otaldePersonal1: TMenuItem;
    ResumendeMaterial1: TMenuItem;
    ConsumosdeCombustible1: TMenuItem;
    BalanceGeneral1: TMenuItem;
    ImportarPlantilladeActividades1: TMenuItem;
    dlgOpen1: TOpenDialog;
    dlgOpen2: TOpenDialog;
    dlgOpenOpenXLS: TOpenDialog;
    CrearNotasdeSuspensin1: TMenuItem;
    ConcentradodePernoctas1: TMenuItem;
    qryFoliosOrdenes: TZReadOnlyQuery;
    ds_folios: TDataSource;
    JvLabel1: TJvLabel;
    cbbCriterios: TComboBox;
    grpFactores: TGroupBox;
    mmoFactores: TMemo;
    PnlProgress: TPanel;
    AdvCircularProgress1: TAdvCircularProgress;
    Label8: TLabel;
    cbbFactores: TComboBox;
    GuardaReporte: TSaveDialog;
    optActividades: TMenuItem;
    Listadepersonal1: TMenuItem;
    Resumenderecursos1: TMenuItem;
    tsTema: TEdit;
    Label23: TLabel;
    ReporteFotografico1: TMenuItem;
    DiariodeCobro1: TMenuItem;
    FormAutoScaler1: TFormAutoScaler;
    PartidasAnexoCDetalle1: TMenuItem;
    AvancesGerencial1: TMenuItem;
    lbl2: TLabel;
    pb1: TProgressBar;
    pbMigracion: TProgressBar;
    lblMigracion: TLabel;
    tsNumeroOrden: TJvDBLookupCombo;
    tsOTs: TJvDBLookupCombo;
    Label1: TLabel;
    chkAplicaCuadre: TCheckBox;
    BitacoraPartidas1: TMenuItem;
    Grid_Reportes: TcxGrid;
    BView_ReporteDiario: TcxGridDBTableView;
    Grid_BitacoraLevel1: TcxGridLevel;
    BView_dIdFecha: TcxGridDBColumn;
    BView_sOrden: TcxGridDBColumn;
    BView_sNumeroReporte: TcxGridDBColumn;
    BView_lStatus: TcxGridDBColumn;
    BView_sIdUsuario: TcxGridDBColumn;
    BView_sIdUsuarioAutoriza: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxFecha: TcxStyle;
    cxEstado: TcxStyle;
    partidas: TZReadOnlyQuery;
    cxConvenio: TcxStyle;
    chkOrdenar: TCheckBox;
    cxImporta: TcxButton;
    cxActividades: TcxButton;
    cxCuadre: TcxButton;
    cxMovimientosBarco: TcxButton;
    cxEquipos: TcxButton;
    cxNotas: TcxButton;
    cxGrid_Folios: TcxGrid;
    BView_Folios: TcxGridDBTableView;
    BView_sNumeroOrden: TcxGridDBColumn;
    BView_sIdConvenio: TcxGridDBColumn;
    BView_dFechaInicio: TcxGridDBColumn;
    BView_dFechaFinal: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;

    function Tamanyo (Archivo : String): Real ;

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraFinal2KeyPress(Sender: TObject; var Key: Char);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure btnAddClick(Sender: TObject);
    procedure tsNumeroReporteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraInicio2KeyPress(Sender: TObject; var Key: Char);
    procedure tsTiempoKeyPress(Sender: TObject; var Key: Char);
    procedure tsTransporteKeyPress(Sender: TObject; var Key: Char);
    procedure tsInicioPlaticaKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraFinal2Exit(Sender: TObject);
    procedure tsTiempoEfectivoKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tsTemaKeyPress(Sender: TObject; var Key: Char);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroReporteEnter(Sender: TObject);
    procedure tsNumeroReporteExit(Sender: TObject);
    procedure tsTiempoEnter(Sender: TObject);
    procedure tsTiempoExit(Sender: TObject);
    procedure tsTransporteEnter(Sender: TObject);
    procedure tsTransporteExit(Sender: TObject);
    procedure tsInicioPlaticaEnter(Sender: TObject);
    procedure tsInicioPlaticaExit(Sender: TObject);
    procedure tsFinalPlaticaEnter(Sender: TObject);
    procedure tsFinalPlaticaExit(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure DiarioGetValue(const VarName: String;
      var Value: Variant);
    procedure ReporteDiarioAfterScroll(DataSet: TDataSet);
    procedure tsIdTurnoEnter(Sender: TObject);
    procedure tsIdTurnoExit(Sender: TObject);
    procedure tsIdTurnoKeyPress(Sender: TObject; var Key: Char);
    procedure btnPermisosClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Cut2Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure btnFirmasClick(Sender: TObject);
    procedure btnExaminarClick(Sender: TObject);
    procedure ReporteFotograficoAfterScroll(DataSet: TDataSet);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure TabFotograficoShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure bImagenClick(Sender: TObject);
    procedure btnSaveImageClick(Sender: TObject);
    procedure Grid_ImagenesEnter(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure impAnalisisClick(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure ImprimirReportedeVisita1Click(Sender: TObject);
    procedure OrdenarFotos(sParamOrden : string);
    procedure btnUpClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure btnComentariosClick(Sender: TObject);
    procedure cmdCancelarClick(Sender: TObject);
    procedure tBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure cbPartidaEnter(Sender: TObject);
    procedure cbPartidaExit(Sender: TObject);
    procedure chkInicioClick(Sender: TObject);
    procedure chkDesarrolloClick(Sender: TObject);
    procedure chkConclusionClick(Sender: TObject);
    procedure PgDiarioChange(Sender: TObject);
    procedure cbbCriteriosChange(Sender: TObject);
    procedure tsOTsChange(Sender: TObject);
    procedure AbrirDataset;
    procedure SdgExcelTypeChange(Sender: TObject);
    procedure SpeedItem1Click(Sender: TObject);
    procedure Cartula1Click(Sender: TObject);
    procedure NotasGenerales1Click(Sender: TObject);
    procedure ConcentradodePersonal1Click(Sender: TObject);
    procedure ConcentradodeEquipos1Click(Sender: TObject);
    procedure otaldePersonal1Click(Sender: TObject);
    procedure ResumendeMaterial1Click(Sender: TObject);
    procedure ConsumosdeCombustible1Click(Sender: TObject);
    procedure SpeedItem3Click(Sender: TObject);
    procedure BalanceGeneral1Click(Sender: TObject);
    procedure ImportarPlantilladeActividades1Click(Sender: TObject);

    function ExisteReporteDiario(Fecha: TDateTime; sContratoD, sOrden, sFolioP: String): String;
    procedure CrearNotasdeSuspensin1Click(Sender: TObject);
    procedure ConcentradodePernoctas1Click(Sender: TObject);
    procedure AvDtpFechaFExit(Sender: TObject);
    procedure optActividadesClick(Sender: TObject);
    procedure Listadepersonal1Click(Sender: TObject);
    procedure Resumenderecursos1Click(Sender: TObject);
    procedure tsFinalPlaticaKeyPress(Sender: TObject; var Key: Char);
    procedure tsTemaEnter(Sender: TObject);
    procedure tsTemaExit(Sender: TObject);
    procedure ReporteFotografico1Click(Sender: TObject);
    procedure DirariodeCobro1Click(Sender: TObject);
    procedure DiariodeCobro1Click(Sender: TObject);
    procedure PartidasAnexoCDetalle1Click(Sender: TObject);
    procedure AvancesGerencial1Click(Sender: TObject);
    procedure BitacoraPartidas1Click(Sender: TObject);
    procedure Grid_ReportesEnter(Sender: TObject);
    procedure BView_ReporteDiarioCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxImportaClick(Sender: TObject);
    procedure cxCuadreClick(Sender: TObject);
    procedure cxActividadesClick(Sender: TObject);
    procedure cxEquiposClick(Sender: TObject);
    procedure cxRecepcionClick(Sender: TObject);
    procedure cxNotasClick(Sender: TObject);
    procedure cxMovimientosBarcoClick(Sender: TObject);
    procedure cxSalidaClick(Sender: TObject);

    private
    sMenuP:String;
    AplicarProrrateo: Boolean;
    sArchivo : string;

    {Procedimientos EXCEL}
    procedure AjustarTexto(var rangoE:Variant;TotalR:Integer); overload;
    procedure AjustarTexto(var rangoE:Variant;TotalR:Integer;AddHeight:Extended); overload;
    procedure AjustarTexto(var rangoE:Variant;TotalR:Integer;AddHeight:Extended;ISduoCol:Boolean); overload;
    Procedure AjustarFila(Var Excel: Variant); overload;
    Procedure AjustarFila(Var Excel: Variant;TTexto,CLetras:Integer); overload;
    Procedure FormatoSubEncabezado(var Excel: Variant;Cadena:string; Align: Integer);
    Procedure ImprimeActividad(Sender: TObject);
    Procedure GeneraReporteDiario_Excel(sTipo: String = '03'; Caratula: Boolean = True; BalanceGeneral: Boolean = True; Actividades: Boolean = True; Notas: Boolean = True; ConcentradoPersonal: Boolean = True; ConcentradoEquipos: Boolean = True; ConcentradoPernoctas: Boolean = True; TotalPersonal: Boolean = True; ResumenMaterial: Boolean = True; Diesel: Boolean = True; sFolio: String = '<Todos>'; lista_personal : boolean = True; ResumenRecursos : boolean = True);
    Procedure ReporteExcel_CabeceraVertical(Libro, Excel: Variant; iFila: Integer; RepetirEncabezado: Boolean = True; FilaFinal: Integer = 14);
    Procedure ReporteExcel_CabeceraHorizontal(Libro, Excel: Variant; iFila: Integer; RepetirEncabezado: Boolean = True; FilaFinal: Integer = 14);
    Procedure ReporteExcel_CabeceraHorizontal2(Libro, Excel: Variant; iFila: Integer; RepetirEncabezado: Boolean = True; FilaFinal: Integer = 14);
    Procedure ReporteExcel_MovimientosLogisticos2(Excel: Variant; iFila: Integer);
    Procedure ReporteExcel_BalanceGeneral(Excel: Variant; iFila: Integer);
    Procedure ReporteExcel_ActividadesPorFolio(Excel: Variant; iFila: Integer; sIdFolio: String);
    Procedure ReporteExcel_NotasGenerales(Excel:Variant; iFila: Integer);
    Procedure ReporteExcel_ConcentradoDePersonal2(Libro, Hoja, Excel: Variant; iFila: Integer);
    Procedure ReporteExcel_ConcentradoDeEquipos2(Hoja, Excel: Variant; iFila: Integer);
    Procedure ReporteExcel_TotalDePersonal2(Excel: Variant; iFila: Integer);
    Procedure ReporteExcel_ResumenMaterial2(Excel: Variant; iFila: Integer);
    Procedure ReporteExcel_ConsumosDiesel(Excel: Variant; iFila: Integer);
    Procedure ReporteExcel_Listadepersonal(Excel: Variant; iFila: Integer);
    Procedure ReporteExcel_DistribucionDeEquipos2(Hoja, Excel: Variant; iFila: Integer);
    procedure ReporteExcel_ResumenDeRecursos(var Excel: Variant);
    Procedure FormatosExcel_EstablecerPropiedadesDeHoja(Excel, Hoja: Variant; PageZoom: Integer = 145);

    {Procedimientos PDF}
    Procedure GeneraReporteDiario_PDF(sTipo: String = '03'; Caratula: Boolean = True; BalanceGeneral: Boolean = True; Actividades: Boolean = True; Notas: Boolean = True; ConcentradoPersonal: Boolean = True; ConcentradoEquipos: Boolean = True; ConcentradoPernoctas: Boolean = True; TotalPersonal: Boolean = True; ResumenMaterial: Boolean = True; Diesel: Boolean = True; sFolio: String = '<Todos>'; lista_personal : boolean = True; ResumenRecursos : boolean = True);Overload;

    Procedure GeneraReporteDiario_PDF(RTipo:FtTipo;RImpresion:FtSeccion);Overload;

    procedure CargarGridFolios(Grid: TnextGrid;RecuerdaPos:Boolean = False);
    procedure GuardarCambios(Grid: TnextGrid);
    procedure CrearSuspension(Fecha: TDateTime);
    function GuardarFormato(reporte : string) : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

const
  iSpace=20;
  //columnas del grid folios
  ClArbol = 0;
  ClsSimbolo = 1;
  CliIdDiario = 2;
  ClsNumeroActividad = 4;
  ClsNumeroOrden = 3;
  ClsIdClasificacion = 5;
  CldAvance = 6;
  ClsIdTipoMovimiento = 7;
  ClsContrato = 8;
  CldIdFecha = 9;
  ClsWbs = 10;
  ClAnterior = 11;
  ClAcumulado = 12;

var
  frmDiarioTurno: TfrmDiarioTurno;
  sReporte : String ;
  iReporte : Integer ;
  lNuevoDia : Boolean ;
  dAvanceAnterior, dCantidadAnterior : Double ;
  dAvanceDiario, dAvanceAcumulado    : Double ;
  dPAnterior, dPDiario, dPAcumulado,
  dRAnterior, dRDiario, dRAcumulado : Real ;
  sArchivo      : String ;
  sOpcion       : String ;
  lIniciado     : Boolean ;
  SavePlace     : TBookmark;
  BotonPermiso: TBotonesPermisos;
  BotonPermiso1: TBotonesPermisos;
  iTotalLandscape:Integer;
  nHoja:Integer;
  tmpNombre,tmpNombreC: String;
  QryReporteDiario,
  QryEmbarcacionPrincipal,
  QryMovimientosLogisticos,
  QryFolios,
  QryFrentePrincipal : TZQuery;
  iFilaGlobal: Integer;
  iColumnaGlobal,
  iHojasAux,
  iFilaIniciaProrrateos: Integer;
  ContratoDiario :String;

  //****
  ArregloFolios, ArregloFoliosPernoctas: Array Of Real;
  PersonalPorHorario,
  TotalProrrateo,
  dProrrateo: Real;
  SLFolios,
  FoliosReportados: TStringList;
  iFilaProrrateos: Integer;
  FoliosProrrateados,
  FoliosProrrateadosAux,
  ProrrateoAux: String;

  OrdenInicial: Boolean;
  dPorcionDia: Real;
  local_iIdDiario, local_iIndice : integer;

  dDiferenciaFactor : Real;
  isOpen : boolean;

  function GetTempDir: string;
  function NombreAleatorio(Longitud: Integer):String;
  procedure Split(Delimiter: Char; Str: string; ListOfStrings: TStrings);
implementation

uses frm_noil, frm_bitacoradepartamental_2,
  UFunctionsGHH, UnitExcel, frm_ConsumodeCombustible,Frm_ImportaExportaActiv,
  frm_SalidaAlmacen,
  frm_cuadre,frm_cuadre_Normal,
  frm_NotasGenerales, frm_tripulacion_consumos , frm_AdmonyTiempos;

{$R *.dfm}

procedure Split(Delimiter: Char; Str: string; ListOfStrings: TStrings);
begin
   ListOfStrings.Clear;
   ListOfStrings.Delimiter     := Delimiter;
   ListOfStrings.DelimitedText := Str;
end;

function GetTempDir: string;
var
    Buffer : Array[0..Max_path] of char;
begin
    FillChar(Buffer,Max_Path + 1, 0);
    GetTempPath(Max_path, Buffer);
    Result := String(Buffer);
    if Result[Length(Result)] <> '\' then Result := Result + '\';
end;

function NombreAleatorio(Longitud: Integer):String;
const
  Chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ';
var
  S: string;
  i, N: integer;
begin
  Randomize;
  S := '';
  for i := 1 to Longitud do begin
    N := Random(Length(Chars)) + 1;
    S := S + Chars[N];
  end;
  Result := S;
end;


Procedure TfrmDiarioTurno.GeneraReporteDiario_PDF(RTipo:FtTipo;RImpresion:FtSeccion);
var
   sSeccion: string;
begin
    EncabezadoPDF_Horizontal(ReporteDiario,rDiario,FtAbordo);
    FirmasPDF_Generales(ReporteDiario,     rDiario,FtAbordo);
    sSeccion := connection.configuracion.FieldByName('sSeccionImprime').AsString;
    {Clasificacion de secciones a Imprimir..}

        if pos('Caratula', sSeccion) > 0 then
           ReportePDF_MovimientosLogisticos2(ReporteDiario,rDiario,RTipo,RImpresion)
        else
           ReportePDF_MovimientosLogisticos2(ReporteDiario,rDiario,RTipo,ftsNone);

        if pos('Balance General', sSeccion) > 0 then
           ReportePDF_BalanceGeneral(ReporteDiario,        rDiario,RTipo,RImpresion)
        else
           ReportePDF_BalanceGeneral(ReporteDiario,        rDiario,RTipo,ftsNone);

        if pos('Avance Global', sSeccion) > 0 then
           ReportePDF_ActividadesPorFolio('%', ReporteDiario,   rDiario,RTipo,RImpresion)
        else
           ReportePDF_ActividadesPorFolio('%', ReporteDiario,   rDiario,RTipo,ftsNone);

        if pos('Notas Generales', sSeccion) > 0 then
           ReportePDF_NotasGenerales(ReporteDiario,        rDiario,RTipo,RImpresion)
        else
           ReportePDF_NotasGenerales(ReporteDiario,        rDiario,RTipo,ftsNone);

        if pos('Concentrado de Personal', sSeccion) > 0 then
           ReportePDF_ConcentradoDePersonal2(ReporteDiario,rDiario,RTipo,RImpresion)
        else
           ReportePDF_ConcentradoDePersonal2(ReporteDiario,rDiario,RTipo,ftsNone);

        if pos('Concentrado de Pernoctas', sSeccion) > 0 then
           ReportePDF_ConcentradoDePernoctas2(ReporteDiario,rDiario,RTipo,RImpresion)
        else
           ReportePDF_ConcentradoDePernoctas2(ReporteDiario,rDiario,RTipo,ftsNone);

        if pos('Concentrado de Equipos', sSeccion) > 0 then
           ReportePDF_DistribucionDeEquipos2(ReporteDiario,rDiario,RTipo,RImpresion)
        else
           ReportePDF_DistribucionDeEquipos2(ReporteDiario,rDiario,RTipo,ftsNone);

        if pos('Extraordinaria', sSeccion) > 0 then
           ReportePDF_PartidasAnexoC_detalleV2(ReporteDiario,rDiario,RTipo,RImpresion)
        else
          ReportePDF_PartidasAnexoC_detalleV2(ReporteDiario,rDiario,RTipo,ftsNone);

        if pos('Total de Personal', sSeccion) > 0 then
           ReportePDF_TotalDePersonal2(ReporteDiario,      rDiario,RTipo,RImpresion)
        else
           ReportePDF_TotalDePersonal2(ReporteDiario,      rDiario,RTipo,ftsNone);

        if pos('Reporte Fotografico', sSeccion) > 0 then
           ReportePDF_ReporteFotografico(ReporteDiario,    rDiario,RTipo,RImpresion)
        else
           ReportePDF_ReporteFotografico(ReporteDiario,    rDiario,RTipo,ftsNone);

    rDiario.LoadFromFile(global_files + global_Mireporte + '_TDReporteDiario.fr3') ;
    rDiario.ShowReport();
    ReportePDF_ClearDataset(rDiario);
end;

procedure TfrmDiarioTurno.AbrirDataset;
begin
   try
     IsOpen:=false;
     ReporteDiario.DisableControls;

     ReporteDiario.Active := False ;
     ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
     ReporteDiario.Params.ParamByName('contrato').Value    := global_Contrato_Barco;
     ReporteDiario.Params.ParamByName('orden').DataType    := ftString ;
     ReporteDiario.Params.ParamByName('orden').Value       := global_contrato;
     ReporteDiario.Open ;

   finally
     ReporteDiario.EnableControls;
     IsOpen:=true;
     ReporteDiarioAfterScroll(ReporteDiario);
   end;

end;

procedure TfrmDiarioTurno.FormShow(Sender: TObject);
begin
  Jvlabel1.Visible := connection.contrato.FieldValues['sTipoObra'] = 'BARCO';
  cbbCriterios.Visible := connection.contrato.FieldValues['sTipoObra'] = 'BARCO';
  grpfactores.Visible := connection.contrato.FieldValues['sTipoObra'] = 'BARCO';

  if connection.contrato.FieldValues['sTipoObra'] = 'BARCO' then
    cbbCriterios.OnChange(Sender);

  sMenuP:=stMenu;

  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario', PopupPrincipal);

  BotonPermiso1 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario');

  try
     IsOpen:=false;
     ReporteDiario.DisableControls;

     ReporteDiario.Active := False ;
     ReporteDiario.Open ;

   finally
     ReporteDiario.EnableControls;
     IsOpen:=true;
     ReporteDiarioAfterScroll(ReporteDiario);
   end;

  ContratoDiario := ReporteDiario.FieldByName('sOrden').AsString;

  QrOt.Active:=False;
  QrOt.Open;

  lIniciado := False ;
  PgDiario.ActivePageIndex := 0 ;
  Turnos.Active := False ;
  Turnos.Params.ParamByName('contrato').DataType := ftString ;
  Turnos.Params.ParamByName('contrato').Value    := global_contrato ;
  Turnos.Open ;

  tsOTs.KeyValue:=global_contrato;
  ordenesdetrabajo.Active:=False;
  ordenesdetrabajo.ParamByName('Contrato').AsString:=tsOTs.KeyValue;
  ordenesdetrabajo.ParamByName('Status').AsString:=connection.configuracion.FieldValues [ 'cStatusProceso' ];
  ordenesdetrabajo.Open;

  AbrirDataset;
  Grid_Reportes.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
  BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
End;

procedure TfrmDiarioTurno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    convenio_reporte := '' ;
    global_orden := '' ;
    global_turno_reporte := '' ;
    BotonPermiso1.Free;
    BotonPermiso.free;
  finally
    action := cafree ;
  end;

end;

procedure TfrmDiarioTurno.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        Grid_Reportes.SetFocus
end;

procedure TfrmDiarioTurno.tsHoraFinal2KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
       tsTiempo.SetFocus
end;

procedure TfrmDiarioTurno.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
      tsIdturno.SetFocus
end;

procedure TfrmDiarioTurno.btnAddClick(Sender: TObject);
begin
  tdIdFecha.SetFocus ;
end;

procedure TfrmDiarioTurno.tsNumeroReporteKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
      tsTiempo.SetFocus
end;

procedure TfrmDiarioTurno.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
        tdIdFecha.SetFocus
end;



procedure TfrmDiarioTurno.NotasGenerales1Click(Sender: TObject);
begin
    //local_iIndice := 5;
    //GeneraReporteDiario_Excel(Connection.Contrato.FieldByName('sIdResidencia').AsString, False, False, False, True, False, False, False, False, False, False, '', False, False);
    GeneraReporteDiario_PDF(FtAbordo,FtsNGenerales);
end;

procedure TfrmDiarioTurno.optActividadesClick(Sender: TObject);
begin
   //local_iIndice := 2;
   //GeneraReporteDiario_Excel(Connection.Contrato.FieldByName('sIdResidencia').AsString, False, False, True, False, False, False, False, False, False, False, '', False, False);
    GeneraReporteDiario_PDF(FtAbordo,FtsActividades);
end;

procedure TfrmDiarioTurno.tsHoraInicio2KeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsHoraFinal2.SetFocus
end;

procedure TfrmDiarioTurno.tsTiempoKeyPress(Sender: TObject; var Key: Char);
Begin
    If Key = #13 then
      tsInicioPlatica.SetFocus
end;

procedure TfrmDiarioTurno.tsTransporteKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
      tsInicioPlatica.SetFocus
end;

procedure TfrmDiarioTurno.tsInicioPlaticaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsFinalPlatica.SetFocus
end;

procedure TfrmDiarioTurno.tsHoraFinal2Exit(Sender: TObject);
begin
    tsHoraFinal2.Color := global_color_salida
end;

procedure TfrmDiarioTurno.tsTiempoEfectivoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsTiempo.SetFocus
end;

procedure TfrmDiarioTurno.frmBarra1btnEditClick(Sender: TObject);
begin
  If ReporteDiario.RecordCount > 0 then
    If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
    Begin
      frmBarra1.btnEditClick(Sender);
      Insertar1.Enabled := False ;
      Editar1.Enabled := False ;
      Registrar1.Enabled := True ;
      Can1.Enabled := True ;
      Eliminar1.Enabled := False ;
      Refresh1.Enabled := False ;
      Salir1.Enabled := False ;

      PgDiario.ActivePageIndex := 0 ;
      tdIdFecha.Enabled := True ;
      tsIdTurno.ReadOnly := False ;
      tsNumeroReporte.ReadOnly := False ;
      tsTiempo.ReadOnly := False ;
      tsTema.ReadOnly := False;
      tsInicioPlatica.ReadOnly := False ;
      tsFinalPlatica.ReadOnly := False ;
      lNuevoDia := True ;
      tdIdFecha.SetFocus;
    End
    Else
      MessageDlg('El Reporte ha sido Autorizado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);
          
   BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmDiarioTurno.frmBarra1btnDeleteClick(Sender: TObject);
Var
    iReporte  : Integer ;
    sTexto    : WideString ;
    lValido   : Boolean ;
    lOrdenTierra : Boolean ;
begin
    If ReporteDiario.RecordCount > 0 then
      If (ReporteDiario.FieldValues['lStatus'] = 'Pendiente') Then
      Begin
          // Veo que existe asociado al reporte ...
          //  Actualizo la Bitacora
          sTexto := '' ;
          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sContrato From tramitedepermisos Where sContrato = :Orden And sNumeroOrden = :Folio And dIdFecha = :Fecha And sIdTurno = :Turno') ;
          Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Orden').Value := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato ;
          Connection.QryBusca.Params.ParamByName('Folio').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Folio').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
          Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
          Connection.QryBusca.Params.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
          Connection.QryBusca.Params.ParamByName('Turno').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 then
              sTexto := sTexto + 'Modulo: Tramite de Permisos' + chr(13) ;

          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sContrato From bitacoradealcances Where sContrato = :Orden And dIdFecha = :Fecha And sIdTurno = :Turno') ;
          Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Orden').Value := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato ;
          Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
          Connection.QryBusca.Params.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
          Connection.QryBusca.Params.ParamByName('Turno').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 then
              sTexto := sTexto + 'Modulo: Bitacora de Alcances' + chr(13) ;

          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sContrato From bitacoradeactividades Where sContrato = :Orden And dIdFecha = :Fecha And sIdTurno = :Turno') ;
          Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Orden').Value := ReporteDiario.FieldByName('sContrato').AsString; //global_contrato ;
          Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
          Connection.QryBusca.Params.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
          Connection.QryBusca.Params.ParamByName('Turno').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 then
              sTexto := sTexto + 'Modulo: Bitacora de Actividades' + chr(13) ;

          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sContrato From reportefotografico Where sContrato = :Orden And sNumeroReporte = :reporte') ;
          Connection.QryBusca.Params.ParamByName('Orden').DataType   := ftString ;
          Connection.QryBusca.Params.ParamByName('Orden').Value      := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato ;
          Connection.QryBusca.Params.ParamByName('reporte').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('reporte').Value    := ReporteDiario.FieldValues['sNumeroReporte'] ;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 then
              sTexto := sTexto + 'Modulo: Reporte Fotografico' + chr(13) ;

          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sContrato From jornadasdiarias Where sContrato = :Orden And dIdFecha = :Fecha And sIdTurno = :Turno') ;
          Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Orden').Value := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato ;
          Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
          Connection.QryBusca.Params.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
          Connection.QryBusca.Params.ParamByName('Turno').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 then
              sTexto := sTexto + 'Modulo: Jornadas y Tiempos' + chr(13) ;

         // Si no hay nada, continuo ..
         lValido := False ;
         If sTexto = '' Then
              If (ReporteDiario.FieldValues['sIdUsuario'] <> global_usuario) Then
                  If (global_grupo = 'ADMINISTRADORES') or (global_grupo = 'INTEL-CODE') Then
                        lValido := True
                  Else
                        lValido := False
              Else
                  lValido := True
         Else
             MessageDlg('Existen movimientos registrados al reporte diario : ' + chr(13) + sTexto + 'Proceda a eliminarlos y posteriormente eliminar el reporte diario', mtInformation, [mbOk], 0);


         If lValido Then
             If MessageDlg('Desea eliminar el reporte diario No. ' + ReporteDiario.FieldValues ['sNumeroReporte'] + '?' , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
             Begin
                // Actualizo Kardex del Sistema ....
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zcommand.SQL.Add ('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                              'Values (:Orden, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)')  ;
                connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                connection.zcommand.Params.ParamByName('Orden').Value := ReporteDiario.FieldByName('sOrden').AsString; //Global_Contrato ;
                connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
                connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
                connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
                connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
                connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
                connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
                connection.zcommand.Params.ParamByName('Descripcion').Value := 'Eliminación del Reporte Diario No. ' + ReporteDiario.FieldValues ['sNumeroReporte'] + ' del dia ' + ReporteDiario.fieldByName('dIdFecha').AsString  ;
                connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
                connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
                connection.zCommand.ExecSQL ;


                 If ReporteDiario.RecNo = 1 Then
                     If MessageDlg('Desea reconfigurar el folio automatico de reportes diarios?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                     Begin
                          iReporte := Length(Trim(ReporteDiario.FieldValues['sNumeroReporte'])) - 2 ;
                          iReporte := StrToInt(MidStr(Trim(ReporteDiario.FieldValues['sNumeroReporte']) , iReporte , 3)) ;

                          connection.zCommand.Active := False ;
                          connection.zCommand.SQL.Clear ;
                          connection.zcommand.SQL.Add ('Update configuracion SET iConsecutivo = :Consecutivo where sContrato = :Orden') ;
                          connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                          connection.zcommand.Params.ParamByName('Orden').value := ReporteDiario.FieldByName('sOrden').AsString; //Global_Contrato ;
                          connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
                          connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte ;
                          connection.zCommand.ExecSQL ;

                     End ;
                 try
                     connection.zCommand.Active := False ;
                     connection.zCommand.SQL.Clear ;
                     connection.zcommand.SQL.Add ('Delete from reportediario where sContrato =:contrato and sOrden = :Orden and dIdFecha = :Fecha And sIdTurno = :Turno') ;
                     connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                     connection.zcommand.Params.ParamByName('Contrato').value := ReporteDiario.FieldByName('sContrato').AsString; //Global_Contrato ;
                     connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                     connection.zcommand.Params.ParamByName('Orden').value := ReporteDiario.FieldByName('sOrden').AsString; //Global_Contrato ;
                     connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                     connection.zcommand.Params.ParamByName('Fecha').value := ReporteDiario.FieldValues ['dIdFecha'];
                     connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
                     connection.zcommand.Params.ParamByName('Turno').value := ReporteDiario.FieldValues ['sIdTurno'];
                     connection.zCommand.ExecSQL ;

                     SavePlace := BView_ReporteDiario.DataController.DataSource.DataSet.GetBookmark;

                     try
                       IsOpen:=false;
                       ReporteDiario.DisableControls;

                       ReporteDiario.Active := False ;
                       ReporteDiario.Open ;
                       try
                          BView_ReporteDiario.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
                       except
                       else
                           BView_ReporteDiario.DataController.DataSet.FreeBookmark(SavePlace);
                       end;
                     finally
                       ReporteDiario.EnableControls;
                       IsOpen:=true;
                       ReporteDiarioAfterScroll(ReporteDiario);
                     end;

                     Grid_Reportes.SetFocus
                 Except
                     on e : exception do begin
                         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al eliminar registro', 0);
                     end;
                 End ;
             End
      End
      Else
         MessageDlg('El Reporte ha sido Autorizado o fue creado por un usuario distinto por lo tanto no puede eliminarse.', mtInformation, [mbOk], 0);

end;

procedure TfrmDiarioTurno.frmBarra1btnAddClick(Sender: TObject);
Var
    lContinua  : Boolean ;
    iReportesSinValid : Integer ;
begin
  if tsOTs.KeyValue='' then
  begin
      MessageDlg('SELECCIONE UNA ORDEN DE TRABAJO!',mtWarning,[mbOK],0);
      Exit;
  end;

  IsOpen:=false;
  ReporteDiario.DisableControls;

  If tsNumeroOrden.Text <> '' Then
  Begin
      // Busco cuantos reportes sin validar existen ...
      Connection.QryBusca.Active := False ;
      Connection.QryBusca.SQL.Clear ;
      Connection.QryBusca.SQL.Add('Select Count(sNumeroReporte) as iReportes From reportediario Where sContrato = :Contrato and sOrden =:Orden And sNumeroOrden = :Folio And lStatus = "Pendiente" Group By sNumeroOrden') ;
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.QryBusca.Params.ParamByName('Contrato').Value    := global_Contrato_Barco;
      Connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString ;
      Connection.QryBusca.Params.ParamByName('Orden').Value       := tsOTs.Keyvalue;//global_contrato ;
      Connection.QryBusca.Params.ParamByName('Folio').DataType    := ftString ;
      Connection.QryBusca.Params.ParamByName('Folio').Value       := tsOTs.Keyvalue;//nombre de la OT
      Connection.QryBusca.Open ;
      iReportesSinValid := 0 ;
      If Connection.QryBusca.RecordCount > 0 Then
          iReportesSinValid := Connection.QryBusca.FieldValues['iReportes'] ;

      If iReportesSinValid < Connection.configuracion.FieldValues['iReportesSinValid'] Then
      Begin
          Insertar1.Enabled := False ;
          Editar1.Enabled := False ;
          Registrar1.Enabled := True ;
          Can1.Enabled := True ;
          Eliminar1.Enabled := False ;
          Refresh1.Enabled := False ;
          Salir1.Enabled := False ;

          PgDiario.ActivePageIndex := 0 ;
          tdIdFecha.Enabled := True ;
          tsIdTurno.ReadOnly := False ;
          tsNumeroReporte.ReadOnly := True ;
          tsTiempo.ReadOnly := False ;
          tsTema.ReadOnly := False;
          tsInicioPlatica.ReadOnly := False ;
          tsFinalPlatica.ReadOnly := False ;

          If ReporteDiario.RecordCount > 0 Then
          Begin
              ReporteDiario.First ;
              tdIdFecha.Date := ReporteDiario.FieldValues['dIdFecha'] + 1
          End
          Else
              tdIdFecha.Date := Date ;
          tsHoraInicio2.Text := '00:00' ;
          tsHoraFinal2.Text := '00:00' ;
          tsInicioPlatica.Text := '00:00' ;
          tsFinalPlatica.Text := '00:00' ;
          tsTiempoEfectivo.Text := '00:00' ;
          tsTema.Text := '';
          tsTiempoMuerto.Text := '00:00' ;

          tsTiempo.Text := 'BUENO' ;
          tsTransporte.Text := '' ;
          tsNumeroReporte.Text := 'Pend. Asignar' ;
          tsIdTurno.KeyValue := global_turno ;
          lNuevoDia := True ;
          tdIdFecha.SetFocus ;
          chkAplicaCuadre.Checked := True;
          chkOrdenar.Checked  := False;

          frmBarra1.btnAddClick(Sender);

      End
      Else
          MessageDlg('El numero de reportes pendientes de validar existentes en la orden de trabajo seleccionada exceden a lo permitido por el sistema [' + Connection.configuracion.FieldByName('iReportesSinValid').AsString + '], ' +
                     'proceda a validar los reportes pendientes para poder generar un reporte nuevo', mtWarning, [mbOk], 0);
  End;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmDiarioTurno.frmBarra1btnPrinterClick(Sender: TObject);
Begin
    //local_iIndice := 1;
    //GeneraReporteDiario_Excel(Connection.Contrato.FieldByName('sIdResidencia').AsString);
    if QrOt.FieldByName('eLugarOT').AsString='Abordo' then
      GeneraReporteDiario_PDF(FtAbordo,FtsAll);

    if QrOt.FieldByName('eLugarOT').AsString='Tierra' then
      GeneraReporteDiario_PDF(FtTierra,FtsAll);


end;

procedure TfrmDiarioTurno.frmBarra1btnRefreshClick(Sender: TObject);
Var
    sTiempoComida : String ;
    dBalanceMuerto  : Real ;
    lBalance  : Boolean ;                      
    sBalance  : String  ;
    sTiempoMuerto : String ;
    sKeyTemp,sKeyTemp2:string;
    RegPos:TBookmark;
begin
  RegPos:=ReporteDiario.GetBookmark;
  sKeyTemp:=tsOTs.KeyValue;
  sKeyTemp2:=tsNumeroOrden.KeyValue;
  QrOt.Refresh;
  tsOTs.KeyValue:=sKeyTemp;


  OrdenesdeTrabajo.Active := False;
  OrdenesdeTrabajo.Open;

  If OrdenesdeTrabajo.RecordCount > 0 Then
  Begin
      tsNumeroOrden.KeyValue := sKeyTemp2;//OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
      try
        ReporteDiario.GotoBookmark(RegPos);
      except
        ReporteDiario.FreeBookmark(RegPos);
      end;
      Grid_Reportes.SetFocus
  End
  Else
    try
      tsNumeroOrden.SetFocus;
    except
    end;

    SavePlace := BView_ReporteDiario.DataController.DataSource.DataSet.GetBookmark;
    try
       IsOpen:=false;
       ReporteDiario.DisableControls;

       ReporteDiario.Active := False ;
       ReporteDiario.Open ;
       try
          BView_ReporteDiario.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
       except
       else
           BView_ReporteDiario.DataController.DataSet.FreeBookmark(SavePlace);
       end;
     finally
       ReporteDiario.EnableControls;
       IsOpen:=true;
       ReporteDiarioAfterScroll(ReporteDiario);
    end;
end;

procedure TfrmDiarioTurno.frmBarra1btnExitClick(Sender: TObject);
begin
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   close ;
end;

procedure TfrmDiarioTurno.tdIdFechaExit(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
    Begin
        If OpcButton = 'New' Then
        Begin
            lNuevoDia := True ;
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select sContrato from reportediario Where sContrato = :Contrato and sOrden =:Orden And sNumeroOrden = :Folio And ' +
                                        'dIdFecha = :fecha And sIdTurno = :Turno') ;
            Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Contrato').value := global_Contrato_Barco ;
            Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Orden').value := tsOTs.KeyValue; //global_contrato ;
            Connection.QryBusca.Params.ParamByName('Folio').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Folio').value := tsNumeroOrden.Text ;
            Connection.QryBusca.Params.ParamByName('fecha').DataType := ftDate ;
            Connection.QryBusca.Params.ParamByName('fecha').value := tdIdFecha.Date ;
            Connection.QryBusca.Params.ParamByName('Turno').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
            Connection.QryBusca.Open ;
            If Connection.QryBusca.RecordCount > 0 Then
                lNuevoDia := False
        End ;
    End ;
    tdIdFecha.Color := global_color_salida
end;

procedure TfrmDiarioTurno.tsTemaEnter(Sender: TObject);
begin
    tsTema.Color := global_color_entrada
end;

procedure TfrmDiarioTurno.tsTemaExit(Sender: TObject);
begin
    tsTema.Color := global_color_salida
end;

procedure TfrmDiarioTurno.tsTemaKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        cbbFactores.SetFocus
end;

procedure TfrmDiarioTurno.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entrada
end;

procedure TfrmDiarioTurno.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entrada ;
    frmBarra1.btnCancel.Click ;
end;

procedure TfrmDiarioTurno.tsNumeroReporteEnter(Sender: TObject);
begin
    tsNumeroReporte.Color := global_color_entrada ;
end;

procedure TfrmDiarioTurno.tsNumeroReporteExit(Sender: TObject);
begin
    tsNumeroReporte.Color := global_color_salida
end;

procedure TfrmDiarioTurno.tsTiempoEnter(Sender: TObject);
begin
    tsTiempo.Color := global_color_entrada
end;

procedure TfrmDiarioTurno.tsTiempoExit(Sender: TObject);
begin
    tsTiempo.Color := global_color_salida
end;

procedure TfrmDiarioTurno.tsTransporteEnter(Sender: TObject);
begin
    tsTransporte.Color := global_color_entrada
end;

procedure TfrmDiarioTurno.tsTransporteExit(Sender: TObject);
begin
    tsTransporte.Color := global_color_salida
end;

procedure TfrmDiarioTurno.tsInicioPlaticaEnter(Sender: TObject);
begin
    tsInicioPlatica.Color := global_color_entrada
end;

procedure TfrmDiarioTurno.tsInicioPlaticaExit(Sender: TObject);
begin
    tsInicioPlatica.Color := global_color_salida ;
end;

procedure TfrmDiarioTurno.tsFinalPlaticaEnter(Sender: TObject);
begin
    tsFinalPlatica.Color := global_color_entrada
end;

procedure TfrmDiarioTurno.tsFinalPlaticaExit(Sender: TObject);
begin
    tsFinalPlatica.Color := global_color_salida ;
end;

procedure TfrmDiarioTurno.tsFinalPlaticaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key =#13 then
       tsTema.SetFocus;
end;

function IsDate(ADate: string): Boolean;
var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;

procedure TfrmDiarioTurno.frmBarra1btnPostClick(Sender: TObject);
Var
    sReporte      : String ;
    txtAux        : String ;
    iReporte      : Real ;
    Caracteres    : Byte ;
    sConvenio     : String ;
    lOrdenTierra   : Boolean ;
    sParametro     : String ;
    Registro       : Integer ;
    strCadena      : string;
    dFechaAvance   : tDate;
    Q_Ordenes,
    Q_Fechas       : TZReadOnlyQuery;
    lRelacional: boolean;
    cadenas, nombres: TStringList;
begin
 //verificacion de campos vacios
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Número Folio');  cadenas.Add(tsNumeroReporte.Text);
  nombres.Add('Edo. del Tiempo');  cadenas.Add(tsTiempo.Text);

  if not validaTexto(nombres, cadenas, '', '') then
  begin
      MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
      exit;
  end;
  //continua el post

  {Creacion de los Objetos..}
  Q_Ordenes := TZReadOnlyQuery.Create(self);
  Q_Ordenes.Connection := connection.zConnection;

  Q_Fechas  := TZReadOnlyQuery.Create(self);
  Q_Fechas.Connection := connection.zConnection;

  If lNuevoDia Then
  Begin
      If OpcButton = 'New' then
      Begin
         lOrdenTierra := False ;

         Connection.QryBusca.Active := False ;
         Connection.QryBusca.SQL.Clear ;
         Connection.QryBusca.SQL.Add('Select sFormato, iConsecutivo from configuracion where sContrato = :Orden') ;
         Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Orden').Value    := tsOTs.KeyValue; // global_contrato ;
         Connection.QryBusca.Open ;
         iReporte := Connection.QryBusca.FieldValues['iConsecutivo'] ;
         sReporte := Trim ( Connection.QryBusca.FieldValues ['sFormato'] ) + sReporte ;

         Str( iReporte:3:0 , txtAux );
         txtAux := Trim( txtAux ) ;
         For Caracteres := 1 to ( 3 - strLen ( pchar(txtAux) ) ) Do
              txtAux := '0' + txtAux ;
         sReporte := sReporte + txtAux ;
         tsNumeroReporte.Text := sReporte ;

         connection.zCommand.Active := False ;
         connection.zCommand.SQL.Clear ;
         connection.zcommand.SQL.Add ('UPDATE configuracion Set iConsecutivo = :Consecutivo Where sContrato = :Orden');
         connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
         connection.zcommand.Params.ParamByName('Orden').value    := tsOTs.KeyValue; // Global_Contrato ;
         connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
         connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte + 1 ;
         connection.zCommand.ExecSQL ;

         Connection.QryBusca.Active := False ;
         Connection.QryBusca.SQL.Clear ;
         Connection.QryBusca.SQL.Add('Select sNumeroOrden, dIdFecha, sNumeroReporte From reportediario Where sContrato =:Contrato and sOrden = :Orden And sNumeroReporte = :Reporte') ;
         Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Contrato').Value := global_Contrato_Barco;
         Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Orden').Value := tsOTs.KeyValue; //global_contrato ;
         Connection.QryBusca.Params.ParamByName('Reporte').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Reporte').Value := sReporte ;
         Connection.QryBusca.Open ;

         If Connection.QryBusca.RecordCount > 0 Then
         Begin
              MessageDlg('El folio a asignar al reporte diario actual existe [' + Connection.QryBusca.FieldValues['sNumeroReporte'] + '] Modifique la configuración de folios.'  , mtWarning, [mbOk], 0) ;
              sReporte := '--FOLIO DUPLICADO--' ;
         End ;

         tsNumeroReporte.Text := sReporte ;

         With connection do
         Begin
             try
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ('INSERT INTO reportediario ( sContrato , sOrden, dIdFecha, sNumeroOrden, sIdTurno, sIdConvenio, sNumeroReporte, iPersonal, ' +
                                              'sOperacionInicio, sOperacionFinal, sTiempoEfectivo, sTiempoMuerto, sTiempoMuertoReal, sTiempo, sTransporte, sTema, ' +
                                              'sInicioPlatica, sFinalPlatica, lStatus, sIdUsuario, '+
                                              'lAplicaComida, dAvProgAnteriorOrden, dAvProgActualOrden, dAvProgAnteriorContrato, dAvProgActualContrato, dAvRealAnteriorOrden, ' +
                                              'dAvRealActualOrden, dAvRealAnteriorContrato, dAvRealActualContrato, TipoAjuste, iFactorAjuste, eAplicaNuevoCuadre, lOrdenaxHorario )' +
                                              'VALUES (:Contrato, :Orden, :Fecha, :Folio, :Turno, :Convenio, :Reporte, :Personal, :HoraI, :HoraF, :Efectivo, :Muerto, :Real, ' +
                                              ':Tiempo, :Transporte, :Tema, :InicioP, :FinalP, :Status, :Usuario,"No", 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, :TipoAjuste, :AjusteFactor, :aplicaCuadre, :Ordenar )') ;
                 connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Contrato').value := global_Contrato_Barco;
                 connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Orden').value := tsOTs.KeyValue; //Global_Contrato ;
                 connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                 connection.zcommand.Params.ParamByName('Folio').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Folio').value := tsOTs.KeyValue ;
                 connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
                 connection.zcommand.Params.ParamByName('Convenio').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Convenio').value := global_convenio ;
                 connection.zcommand.Params.ParamByName('Reporte').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Reporte').value := tsNumeroReporte.Text ;
                 connection.zcommand.Params.ParamByName('Personal').DataType := ftInteger ;
                 connection.zcommand.Params.ParamByName('Personal').value := 0 ;
                 connection.zcommand.Params.ParamByName('HoraI').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('HoraI').value := tsHoraInicio2.Text ;
                 connection.zcommand.Params.ParamByName('HoraF').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('HoraF').value := tsHoraFinal2.Text ;
                 connection.zcommand.Params.ParamByName('Efectivo').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Efectivo').value := '00:00' ;
                 connection.zcommand.Params.ParamByName('Muerto').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Muerto').value := '00:00' ;
                 connection.zcommand.Params.ParamByName('Real').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Real').value := '00:00' ;
                 connection.zcommand.Params.ParamByName('Tiempo').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Tiempo').value := tsTiempo.Text ;
                 connection.zcommand.Params.ParamByName('Tema').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Tema').value := tsTema.Text ;
                 connection.zcommand.Params.ParamByName('Transporte').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Transporte').value := tsTransporte.Text ;
                 connection.zcommand.Params.ParamByName('InicioP').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('InicioP').value := tsInicioPlatica.Text ;
                 connection.zcommand.Params.ParamByName('FinalP').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('FinalP').value := tsFinalPlatica.Text ;
                 connection.zcommand.Params.ParamByName('Status').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Status').value := 'Pendiente' ;
                 connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Usuario').value := global_usuario ;
                 connection.zcommand.Params.ParamByName('tipoajuste').DataType := ftInteger;
                 connection.zcommand.Params.ParamByName('tipoajuste').value := cbbCriterios.ItemIndex;
                 connection.zcommand.Params.ParamByName('Ajustefactor').DataType := ftInteger;
                 connection.zcommand.Params.ParamByName('AjusteFactor').value := cbbFactores.ItemIndex;
                 connection.zcommand.ParamByName( 'aplicaCuadre' ).AsString := 'No';

                 if chkAplicaCuadre.Checked then
                  connection.zcommand.ParamByName( 'aplicaCuadre' ).AsString := 'Si';

                 connection.zcommand.ParamByName( 'ordenar' ).AsString := 'No';

                 if chkOrdenar.Checked then
                  connection.zcommand.ParamByName( 'ordenar' ).AsString := 'Si';

                 connection.zCommand.ExecSQL ;

                 // Actualizo Kardex del Sistema ....
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                              'Values (:Orden, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
                 connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Orden').Value := tsOTs.KeyValue; //Global_Contrato ;
                 connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
                 connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
                 connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
                 connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Descripcion').Value := 'Creación del Reporte Diario No. ' + tsNumeroReporte.Text + ' del dia ' + DateToStr(tdIdFecha.Date) ;
                 connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
                 connection.zCommand.ExecSQL ;

                 SavePlace := BView_ReporteDiario.DataController.DataSource.DataSet.GetBookmark;
                 try
                     IsOpen:=false;
                     ReporteDiario.DisableControls;

                     ReporteDiario.Active := False ;
                     ReporteDiario.Open ;
                     try
                        BView_ReporteDiario.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
                     except
                     else
                         BView_ReporteDiario.DataController.DataSet.FreeBookmark(SavePlace);
                     end;
                 finally
                     ReporteDiario.EnableControls;
                     IsOpen:=true;
                     ReporteDiarioAfterScroll(ReporteDiario);
                 end;

                 ReporteDiario.first ;
             except
                 on e : exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al salvar nuevo registro', 0);
                 end;
             end
         End
      End
      Else
      Begin
         // Actualizo Kardex del Sistema ....
         connection.zCommand.Active := False ;
         connection.zCommand.SQL.Clear ;
         connection.zcommand.SQL.Add ( 'Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                       'Values (:Orden, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
         connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
         connection.zcommand.Params.ParamByName('Orden').Value :=tsOTs.KeyValue; // Global_Contrato ;
         connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
         connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
         connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
         connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
         connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
         connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
         connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
         connection.zcommand.Params.ParamByName('Descripcion').Value := 'Modificación del Reporte Diario Original No. ' + ReporteDiario.FieldValues ['sNumeroReporte'] + ' del dia ' + ReporteDiario.fieldByName('dIdFecha').AsString + ', Reporte Diario Final [' + tsNumeroReporte.Text + '] Usuario : ' + global_usuario  ;
         connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
         connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
         connection.zCommand.ExecSQL ;

         try
             //***********************BRITO****21/04/11*************************
             lRelacional := UnitTablasImpactadas.boolRelaciones(connection.zConnection);
             if not lRelacional then
             begin
                 // Actualizo equipos ....
                 // Saco los IdDiarios del dia ...
                 connection.QryBusca.Active := False ;
                 connection.QryBusca.SQL.Clear ;
                 connection.QryBusca.SQL.Add('select iIdDiario from bitacoradeactividades ' +
                                             'Where sContrato = :Orden And dIdFecha = :Fecha And sIdTurno = :Turno') ;
                 connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
                 connection.QryBusca.Params.ParamByName('Orden').value := tsOTs.KeyValue; // Global_Contrato ;
                 connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
                 connection.QryBusca.Params.ParamByName('Fecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
                 connection.QryBusca.Params.ParamByName('Turno').DataType := ftString ;
                 connection.QryBusca.Params.ParamByName('Turno').value := ReporteDiario.FieldValues['sIdTurno'] ;
                 connection.QryBusca.Open ;
                 While NOT connection.QryBusca.Eof Do
                 Begin
                     // Actualizo el personal del dia a la nueva fecha ...
                     connection.zCommand.Active := False ;
                     connection.zCommand.SQL.Clear ;
                     connection.zcommand.SQL.Add ('UPDATE bitacoradepersonal Set dIdFecha = :Fecha ' +
                                                  'Where sContrato = :Orden And dIdFecha = :OldFecha And iIdDiario = :Diario') ;
                     connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                     connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                     connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                     connection.zcommand.Params.ParamByName('Orden').value := tsOTs.KeyValue; //Global_Contrato ;
                     connection.zcommand.Params.ParamByName('OldFecha').DataType := ftDate ;
                     connection.zcommand.Params.ParamByName('OldFecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
                     connection.zcommand.Params.ParamByName('Diario').DataType := ftString ;
                     connection.zcommand.Params.ParamByName('Diario').value := connection.QryBusca.FieldValues['iIdDiario'] ;
                     connection.zCommand.ExecSQL ;

                     // Actualizo el equipo del dia a la nueva fecha ...
                     connection.zCommand.Active := False ;
                     connection.zCommand.SQL.Clear ;
                     connection.zcommand.SQL.Add ('UPDATE bitacoradeequipos Set dIdFecha = :Fecha ' +
                                                  'Where sContrato = :Orden And dIdFecha = :OldFecha And iIdDiario = :Diario') ;
                     connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                     connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                     connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                     connection.zcommand.Params.ParamByName('Orden').value := tsOTs.KeyValue; // Global_Contrato ;
                     connection.zcommand.Params.ParamByName('OldFecha').DataType := ftDate ;
                     connection.zcommand.Params.ParamByName('OldFecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
                     connection.zcommand.Params.ParamByName('Diario').DataType := ftString ;
                     connection.zcommand.Params.ParamByName('Diario').value := connection.QryBusca.FieldValues['iIdDiario'] ;
                     connection.zCommand.ExecSQL ;

                     connection.QryBusca.Next
                 End ;
             end;

             // Bitacora de Actividades
             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zcommand.SQL.Add ('UPDATE bitacoradeactividades Set sIdTurno = :Turno, dIdFecha = :Fecha ' +
                                          'Where sContrato = :Orden And dIdFecha = :OldFecha And sIdTurno = :OldTurno') ;
             connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
             connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
             connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
             connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Orden').value := tsOTs.KeyValue; //Global_Contrato ;
             connection.zcommand.Params.ParamByName('OldFecha').DataType := ftDate ;
             connection.zcommand.Params.ParamByName('OldFecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
             connection.zcommand.Params.ParamByName('OldTurno').DataType := ftString ;
             connection.zcommand.Params.ParamByName('OldTurno').value := ReporteDiario.FieldValues['sIdTurno'] ;
             connection.zCommand.ExecSQL ;

             if not lRelacional then
             begin
                 // Bitacora de Alcances
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ('UPDATE bitacoradealcances Set sIdTurno = :Turno, dIdFecha = :Fecha ' +
                                              'Where sContrato = :Orden And dIdFecha = :OldFecha And sIdTurno = :OldTurno') ;
                 connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
                 connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                 connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Orden').value :=tsOTs.KeyValue; // Global_Contrato ;
                 connection.zcommand.Params.ParamByName('OldFecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('OldFecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
                 connection.zcommand.Params.ParamByName('OldTurno').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('OldTurno').value := ReporteDiario.FieldValues['sIdTurno'] ;
                 connection.zCommand.ExecSQL ;

                 // Tramite de Permisos
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ('UPDATE tramitedepermisos Set sIdTurno = :Turno, dIdFecha = :Fecha ' +
                                              'Where sContrato = :Orden And dIdFecha = :OldFecha And sIdTurno = :OldTurno') ;
                 connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
                 connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                 connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Orden').value :=tsOTs.KeyValue; // Global_Contrato ;
                 connection.zcommand.Params.ParamByName('OldFecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('OldFecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
                 connection.zcommand.Params.ParamByName('OldTurno').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('OldTurno').value := ReporteDiario.FieldValues['sIdTurno'] ;
                 connection.zCommand.ExecSQL ;

                 // Jornadas Diarias
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ('UPDATE jornadasdiarias Set sIdTurno = :Turno , dIdFecha = :Fecha ' +
                                              'Where sContrato = :Orden And dIdFecha = :OldFecha And sIdTurno = :OldTurno') ;
                 connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
                 connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                 connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Orden').value := tsOTs.KeyValue; //Global_Contrato ;
                 connection.zcommand.Params.ParamByName('OldFecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('OldFecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
                 connection.zcommand.Params.ParamByName('OldTurno').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('OldTurno').value := ReporteDiario.FieldValues['sIdTurno'] ;
                 connection.zCommand.ExecSQL ;

             end;

             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zcommand.SQL.Add ( 'UPDATE reportediario Set dIdFecha = :Fecha, sIdConvenio = :Convenio, sNumeroReporte = :Reporte, iPersonal = :Personal, ' +
                                           'sIdTurno = :Turno, sOperacionInicio = :HoraI, sOperacionFinal = :HoraF, sTema =:Tema, ' +
                                           'sTiempoEfectivo = :Efectivo, sTiempoMuerto = :Muerto, sTiempo = :Tiempo, sTransporte= :Transporte, ' +
                                           'sInicioPlatica = :InicioP, sFinalPlatica = :FinalP, TipoAjuste = :TipoAjuste, iFactorAjuste =:AjusteFactor, eAplicaNuevoCuadre = :aplicaCuadre, lOrdenaxHorario =:Ordenar ' +
                                           'Where sContrato = :Contrato and sOrden =:orden And dIdFecha = :OldFecha And sNumeroOrden = :OldOrden And sIdTurno = :OldTurno') ;
             connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Contrato').value := global_Contrato_Barco;
             connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Orden').value := tsOTs.KeyValue; //Global_Contrato ;
             connection.zcommand.Params.ParamByName('OldFecha').DataType := ftDate ;
             connection.zcommand.Params.ParamByName('OldFecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
             connection.zcommand.Params.ParamByName('OldOrden').DataType := ftString ;
             connection.zcommand.Params.ParamByName('OldOrden').value := ReporteDiario.FieldValues['sNumeroOrden'] ;
             connection.zcommand.Params.ParamByName('OldTurno').DataType := ftString ;
             connection.zcommand.Params.ParamByName('OldTurno').value := ReporteDiario.FieldValues['sIdTurno'] ;
             connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
             connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
             connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
             connection.zcommand.Params.ParamByName('Convenio').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Convenio').value := global_convenio ;
             connection.zcommand.Params.ParamByName('Reporte').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Reporte').value := tsNumeroReporte.Text ;
             connection.zcommand.Params.ParamByName('Personal').DataType := ftInteger ;
             connection.zcommand.Params.ParamByName('Personal').value := 0 ;
             connection.zcommand.Params.ParamByName('HoraI').DataType := ftString ;
             connection.zcommand.Params.ParamByName('HoraI').value := tsHoraInicio2.Text ;
             connection.zcommand.Params.ParamByName('HoraF').DataType := ftString ;
             connection.zcommand.Params.ParamByName('HoraF').value := tsHoraFinal2.Text ;
             connection.zcommand.Params.ParamByName('Efectivo').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Efectivo').value := '00:00' ;
             connection.zcommand.Params.ParamByName('Muerto').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Muerto').value := '00:00' ;
             connection.zcommand.Params.ParamByName('Tiempo').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Tiempo').value := tsTiempo.Text ;
             connection.zcommand.Params.ParamByName('Tema').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Tema').value := tsTema.Text ;
             connection.zcommand.Params.ParamByName('Transporte').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Transporte').value := tsTransporte.Text ;
             connection.zcommand.Params.ParamByName('InicioP').DataType := ftString ;
             connection.zcommand.Params.ParamByName('InicioP').value := tsInicioPlatica.Text ;
             connection.zcommand.Params.ParamByName('FinalP').DataType := ftString ;
             connection.zcommand.Params.ParamByName('FinalP').value := tsFinalPlatica.Text ;
             connection.zcommand.Params.ParamByName('TipoAjuste').DataType := ftInteger;
             connection.zcommand.Params.ParamByName('TipoAjuste').Value := cbbCriterios.ItemIndex;
             connection.zcommand.Params.ParamByName('AjusteFactor').DataType := ftInteger;
             connection.zcommand.Params.ParamByName('AjusteFactor').Value := cbbFactores.ItemIndex;
             connection.zCommand.ParamByName( 'aplicaCuadre' ).AsString := 'No';

             if chkAplicaCuadre.Checked then
               connection.zCommand.ParamByName( 'aplicaCuadre' ).AsString := 'Si';

             connection.zcommand.ParamByName( 'ordenar' ).AsString := 'No';
             if chkOrdenar.Checked then
                connection.zcommand.ParamByName( 'ordenar' ).AsString := 'Si';

             connection.zCommand.ExecSQL ;

             SavePlace := BView_ReporteDiario.DataController.DataSource.DataSet.GetBookmark;
             try
               IsOpen:=false;
               ReporteDiario.DisableControls;

               ReporteDiario.Active := False ;
               ReporteDiario.Open ;
               try
                  BView_ReporteDiario.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
               except
               else
                   BView_ReporteDiario.DataController.DataSet.FreeBookmark(SavePlace);
               end;
             finally
               ReporteDiario.EnableControls;
               IsOpen:=true;
               ReporteDiarioAfterScroll(ReporteDiario);
             end;
         except
             on e : exception do begin
                 UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al salvar cambios en registro', 0);
             end;
         End
      End
  End ;

  // Termino de verificar la existencia de reportes diario ...
  OpcButton := '' ;
  frmBarra1.btnPostClick(Sender);

  ReporteDiario.EnableControls;
  IsOpen:=true;
  ReporteDiarioAfterScroll(ReporteDiario);

  tdIdFecha.Enabled := False ;
  tsIdTurno.ReadOnly := True ;
  tsNumeroReporte.ReadOnly := True ;
  tsTiempo.ReadOnly := True ;
  tsTema.ReadOnly := True;
  tsInicioPlatica.ReadOnly := True ;
  tsFinalPlatica.ReadOnly := True ;

  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  Grid_Reportes.SetFocus ;

  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmDiarioTurno.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);

  ReporteDiario.EnableControls;
  IsOpen:=true;
  ReporteDiarioAfterScroll(ReporteDiario);

  tdIdFecha.Enabled := False ;
  tsIdTurno.ReadOnly := True ;
  tsNumeroReporte.ReadOnly := True ;
  tsTiempo.ReadOnly := True ;
  tsTema.ReadOnly := True;
  tsInicioPlatica.ReadOnly := True ;
  tsFinalPlatica.ReadOnly := True ;
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmDiarioTurno.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmDiarioTurno.Listadepersonal1Click(Sender: TObject);
begin
    GeneraReporteDiario_PDF(FtAbordo,FtsLPersonal);
end;

procedure TfrmDiarioTurno.tsOTsChange(Sender: TObject);
begin
  ordenesdetrabajo.Active:=False;
  ordenesdetrabajo.ParamByName('Contrato').AsString:=tsOTs.KeyValue;
  ordenesdetrabajo.ParamByName('Status').AsString:=connection.configuracion.FieldValues [ 'cStatusProceso' ];
  ordenesdetrabajo.Open;

  AbrirDataset;
end;

procedure TfrmDiarioTurno.tBuscarKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       cmdAceptar.SetFocus;
end;

procedure TfrmDiarioTurno.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmDiarioTurno.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmDiarioTurno.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmDiarioTurno.Cartula1Click(Sender: TObject);
begin
    GeneraReporteDiario_PDF(FtAbordo,FtsCaratula);
end;

procedure TfrmDiarioTurno.cbPartidaEnter(Sender: TObject);
begin
    cbPartida.Color := global_color_entrada;
end;

procedure TfrmDiarioTurno.cbPartidaExit(Sender: TObject);
begin
    cbPartida.Color    := global_color_salida;
    if trim(tsDescripcion.Text) = '' then
       tsDescripcion.Text := partidas.FieldByName('mDescripcion').AsString;
end;

procedure TfrmDiarioTurno.chkConclusionClick(Sender: TObject);
begin
    if chkConclusion.Checked then
    begin
        chkDesarrollo.Checked := False;
        chkInicio.Checked := False;
    end;
end;

procedure TfrmDiarioTurno.chkDesarrolloClick(Sender: TObject);
begin
    if chkDesarrollo.Checked then
    begin
        chkInicio.Checked := False;
        chkConclusion.Checked := False;
    end;
end;

procedure TfrmDiarioTurno.chkInicioClick(Sender: TObject);
begin
    if chkInicio.Checked then
    begin
        chkDesarrollo.Checked := False;
        chkConclusion.Checked := False;
    end;
end;

procedure TfrmDiarioTurno.cmdCancelarClick(Sender: TObject);
begin
    Panel.Visible := False;
end;

procedure TfrmDiarioTurno.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmDiarioTurno.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmDiarioTurno.ImprimirReportedeVisita1Click(Sender: TObject);
begin

     procReporteVisitadeObra(ReporteDiario.FieldValues['sContrato'], ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sNumeroReporte'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['sIdConvenio'], ReporteDiario.FieldValues['dIdFecha'], frmDiarioTurno, rDiario.OnGetValue);
end;

Procedure TfrmDiarioTurno.FormatoSubEncabezado(var Excel: Variant;Cadena:string; Align: Integer);
begin

  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment :=Align ;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size :=TamFont+3;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Font.Name := 'Arial';
  Excel.Selection.Value :=Cadena;
  Excel.Selection.Interior.Pattern := xlSolid;
  Excel.Selection.Interior.PatternColorIndex := xlAutomatic;
  Excel.Selection.Interior.ThemeColor := xlThemeColorLight2;
  Excel.Selection.Interior.TintAndShade := 0.799981688894314;
  Excel.Selection.Interior.PatternTintAndShade := 0;
  application.ProcessMessages;
end;

procedure TfrmDiarioTurno.AjustarTexto(var rangoE:Variant;TotalR:Integer;AddHeight:Extended);
var
  sngAnchoTotal,sngAnchoCelda,sngAlto:Extended;
  n:Integer;
begin
  sngAnchoTotal:=0;
  For n := 1 To TotalR do
    sngAnchoTotal := sngAnchoTotal + rangoE.columns.columns[n].ColumnWidth;

  sngAnchoCelda :=rangoE.columns.columns[1].ColumnWidth;
  rangoE.HorizontalAlignment := xlJustify;
  rangoE.VerticalAlignment := xlcenter;
  rangoE.MergeCells := False;

  if sngAnchoTotal>255 then
    rangoE.columns.columns[1].ColumnWidth :=255
  else
    rangoE.columns.columns[1].ColumnWidth := sngAnchoTotal;

  rangoE.parent.rows[rangoE.row].Autofit;
  sngAlto :=rangoE.RowHeight;

  rangoE.Merge;
  rangoE.Columns[1].EntireColumn.ColumnWidth := sngAnchoCelda;
  if sngAlto+AddHeight>409 then
    rangoE.Columns[1].RowHeight :=409
  else
  rangoE.Columns[1].RowHeight := sngAlto+AddHeight;
  application.ProcessMessages;
end;

procedure TfrmDiarioTurno.AjustarTexto(var rangoE: Variant;TotalR:Integer;AddHeight:Extended;ISduoCol:Boolean);
var
  sngAnchoTotal,tmpAlto,sngAnchoCelda,sngAlto:Extended;
  n:Integer;
begin

  tmpAlto:= rangoE.Columns[1].RowHeight;// := 23;
  sngAnchoTotal:=0;
  For n := 1 To TotalR do
    sngAnchoTotal := sngAnchoTotal + rangoE.columns.columns[n].ColumnWidth;

  sngAnchoCelda :=rangoE.columns.columns[1].ColumnWidth;
  rangoE.HorizontalAlignment := xlJustify;
  rangoE.VerticalAlignment := xlcenter;
  rangoE.MergeCells := False;

  if sngAnchoTotal>255 then
    rangoE.columns.columns[1].ColumnWidth :=255
  else
    rangoE.columns.columns[1].ColumnWidth := sngAnchoTotal;

  rangoE.parent.rows[rangoE.row].Autofit;
  sngAlto :=rangoE.RowHeight;

  rangoE.Merge;
  rangoE.Columns[1].EntireColumn.ColumnWidth := sngAnchoCelda;
  if sngAlto+AddHeight>409 then
    rangoE.Columns[1].RowHeight :=409
  else
    if tmpAlto<(sngAlto+AddHeight) then
      rangoE.Columns[1].RowHeight := sngAlto+AddHeight
    else
      rangoE.Columns[1].RowHeight :=tmpAlto;
  application.ProcessMessages;
end;

procedure TfrmDiarioTurno.AjustarTexto(var rangoE: Variant;TotalR:Integer);
var
  sngAnchoTotal,sngAnchoCelda,sngAlto:Extended;
  n:Integer;
begin
  sngAnchoTotal:=0;
  For n := 1 To TotalR do
    sngAnchoTotal := sngAnchoTotal + rangoE.columns.columns[n].ColumnWidth;

  sngAnchoCelda :=rangoE.columns.columns[1].ColumnWidth;
  rangoE.MergeCells := False;

  if sngAnchoTotal>255 then
    rangoE.columns.columns[1].ColumnWidth :=255
  else
    rangoE.columns.columns[1].ColumnWidth := sngAnchoTotal;

  rangoE.parent.rows[rangoE.row].Autofit;
  sngAlto :=rangoE.RowHeight;

  rangoE.Merge;
  rangoE.Columns[1].EntireColumn.ColumnWidth := sngAnchoCelda;
  if sngAlto>409 then
    rangoE.Columns[1].RowHeight :=409
  else
  rangoE.Columns[1].RowHeight := sngAlto;
  application.ProcessMessages;
end;

procedure TfrmDiarioTurno.AvancesGerencial1Click(Sender: TObject);
begin
   GeneraReporteDiario_PDF(FtAbordo,FtsAvancesCortes);
end;

procedure TfrmDiarioTurno.AvDtpFechaFExit(Sender: TObject);
begin
    AbrirDataset
end;

procedure TfrmDiarioTurno.BalanceGeneral1Click(Sender: TObject);
begin
    //local_iIndice := 4;
    //GeneraReporteDiario_Excel(Connection.Contrato.FieldByName('sIdResidencia').AsString, False, True, False, False, False, False, False, False, False, False, '', False, False);
    GeneraReporteDiario_PDF(FtAbordo,FtsBGeneral);
end;

procedure TfrmDiarioTurno.ImportarPlantilladeActividades1Click(Sender: TObject);
Var
  Excel,
  Libro,
  Hoja: Variant;

  iCounter,
  iFila,
  iColumna: Integer;

  ArchivoExcel,
  Valor,
  Folio,
  Actividad,
  sWbs,
  DescAct,
  Hora,
  sIdConvenioP: String;

  dFechaP: TDateTime;

  dAvanceP, PSumaDeAvance: Real;

  Splitter: TStringList;

  Qry, Query: TZQuery;

  Function ExcelCloseWorkBooks(Excel : Variant; SaveAll: Boolean): Boolean;
  var
    loop: byte;
  Begin
    Result := True;
    Try
      For loop := 1 to Excel.Workbooks.Count Do
        Excel.Workbooks[1].Close[SaveAll];
    Except
      Result := False;
    End;
  End;
  Function ExcelClose(Excel : Variant; SaveAll: Boolean): Boolean;
  Begin
    Result := True;
    Try
      ExcelCloseWorkBooks(Excel, SaveAll);
      Excel.Quit;
    Except
      MessageDlg('Unable to Close Excel', mtError, [mbOK], 0);
      Result := False;
    End;
  End;
begin
  Try
//    Connection.zConnection.AutoCommit := False;

//    Connection.zConnection.StartTransaction;
    Try
      Query := TZQuery.Create(Self);
      Query.Connection := Connection.zConnection;

      Qry := TZQuery.Create(Self);
      Qry.Connection := Connection.zConnection;

      Query.SQL.Text := 'START TRANSACTION;';
      Query.ExecSQL;
      Splitter := TStringList.Create;
      Try
        Excel := CreateOleObject('Excel.Application');
      Except
        On E: Exception do begin
          FreeAndNil(Excel);
          ShowMessage(E.Message);
          Exit;
        end;
      End;

      if dlgOpenOpenXLS.Execute then begin
        ArchivoExcel := dlgOpenOpenXLS.FileName;
        Libro := Excel.WorkBooks.Open(ArchivoExcel);
      end else begin
        exit;
      end;

      Excel.Visible := False;
      Excel.DisplayAlerts:= False;
      iFila := 2;

      Libro.Sheets[1].Select;
      Valor := Excel.Cells[(iFila), (1)].Text;
      iCounter := 400;

      lbl2.Caption := 'Importando';
      lbl2.Visible := True;
      pb1.Visible := True;

      pb1.Max := Excel.Rows.CurrentRegion.Rows.Count;
      pb1.Position := 0;

      while Excel.Cells[(iFila), (1)].Text <> '' do
      begin
        pb1.Position := pb1.Position + 1;
        Valor := Excel.Cells[(iFila), (1)].Text;
        Actividad := Excel.Cells[(iFila), (4)].Text;
        Folio := Excel.Cells[(iFila), (3)].Text;

        Qry.SQL.Text := 'SELECT sWbs, mDescripcion FROM actividadesxorden WHERE sNumeroActividad = ' + QuotedStr(Actividad) + ' AND sNumeroOrden = ' + QuotedStr(Folio) + ' AND sContrato = ' + QuotedStr(Valor);
        Qry.Open;
        if Qry.RecordCount > 0 then begin
          sWbs := Qry.FieldByName('sWbs').AsString;
          DescAct := Qry.FieldByName('mDescripcion').AsString;

          Qry.SQL.Text := 'SELECT MAX(iIdDiario) AS MaxDiario FROM bitacoradeactividades WHERE sContrato = :Contrato AND dIdFecha = :Fecha';
          Qry.Params.ParamByName('Contrato').AsString := Valor;
          Qry.Params.ParamByName('Fecha').AsString := Excel.Cells[(iFila), (2)].Text;
          Qry.Open;

          if Qry.FieldByName('MaxDiario').AsInteger < 400 then begin
            iCounter := 400;
          end else begin
            iCounter := Qry.FieldByName('MaxDiario').AsInteger + 1;
          end;

          Try
            dFechaP := Excel.Cells[(iFila), (2)].Value;
          Except
            Splitter.Clear;
            Split('-', Excel.Cells[(iFila), (2)].Text, Splitter);
            dFechaP := EncodeDate(StrToInt(Splitter[0]), StrToInt(Splitter[1]), StrToInt(Splitter[2]));
          End;

          sIdConvenioP := ExisteReporteDiario(dFechaP, global_Contrato_Barco, Valor, Excel.Cells[(iFila), (3)].Text);
          if (Excel.Cells[(iFila), (5)].Text = 'TE') or (Excel.Cells[(iFila), (5)].Text = 'AC') or (Excel.Cells[(iFila), (5)].Text = 'FP') then
              dAvanceP := Excel.Cells[(iFila), (8)].Value
          else
             dAvanceP := 0;

          Qry.SQL.Text := 'SELECT * FROM bitacoradeactividades WHERE sContrato = :Contrato AND sWbs = :Wbs AND dIdFecha = :Fecha AND sNumeroOrden = :Folio AND sIdTipoMovimiento = "E"';
          Qry.Params.ParamByName('Contrato').AsString := Valor;
          Qry.Params.ParamByName('Fecha').AsString := Excel.Cells[(iFila), (2)].Text;
          Qry.Params.ParamByName('Folio').AsString := Excel.Cells[(iFila), (3)].Text;
          Qry.Params.ParamByName('Wbs').AsString := sWbs;
          Qry.Open;
        
          if Qry.RecordCount < 1 then begin
            Query.SQL.Text := 'INSERT INTO bitacoradeactividades ' + 
                            '(sContrato, dIdFecha, iIdDiario, sIdTurno, sNumeroOrden, sWbs, sPaquete, sNumeroActividad, sIdTipoMovimiento, sIdClasificacion, sHoraInicio, sHoraFinal, dCantidad, dAvance, mDescripcion) VALUES ' +
                            '(:Contrato, :Fecha, :IdDiario, "A", :Folio, :Wbs, "", :Actividad, "E", "", "", "", 0, 0, :Descripcion)';
            Query.Params.ParamByName('Contrato').AsString := Valor;
            Query.Params.ParamByName('Fecha').AsString := Excel.Cells[(iFila), (2)].Text;
            Query.Params.ParamByName('IdDiario').AsInteger := iCounter;
            Query.Params.ParamByName('Folio').AsString := Excel.Cells[(iFila), (3)].Text;
            Query.Params.ParamByName('Wbs').AsString := sWbs;
            Query.Params.ParamByName('Actividad').AsString := Actividad;
            Query.Params.ParamByName('Descripcion').AsString := DescAct;
            Query.ExecSQL;
            Inc(iCounter);

          end;

          Hora := Excel.Cells[(iFila), (7)].Text;

          if Hora = '00:00' then begin
            Hora := '24:00';
          end;

          Query.Active := False;
          Query.SQL.Text := 'SELECT * FROM bitacoradeactividades WHERE sContrato = :Contrato AND dIdFecha = :Fecha AND sNumeroOrden = :Folio AND sWbs = :Wbs AND sIdClasificacion = :Clasificacion AND sHoraInicio = :HoraInicio AND sHoraFinal = :HoraFinal';
          Query.Params.ParamByName('Contrato').AsString := Valor;
          Query.Params.ParamByName('Fecha').AsDateTime := dFechaP;
          Query.Params.ParamByName('Folio').AsString := Excel.Cells[(iFila), (3)].Text;
          Query.Params.ParamByName('Wbs').AsString := sWbs;
          Query.Params.ParamByName('Clasificacion').AsString := Excel.Cells[(iFila), (5)].Text;
          Query.Params.ParamByName('HoraInicio').AsString := Excel.Cells[(iFila), (6)].Text;
          Query.Params.ParamByName('HoraFinal').AsString := Hora;
          Query.Open;

          if Query.RecordCount > 0 then begin
            if MessageDlg('La actividad ' + Actividad + ' del folio '+Excel.Cells[(iFila), (3)].Text+' ya fue reportada con el horario de ' + Excel.Cells[(iFila), (6)].Text + ' a ' + Hora + ' el día ' + Excel.Cells[(iFila), (2)].Text + ' ¿desea volver a insertarla? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
              Inc(iFila);
              Continue;
            end;
          end;

          if dAvanceP > 0 then begin
            Query.Active := False;
            Query.SQL.Text := '' +
                              'SELECT ' +
                              '	SUM(dAvance) AS AvanceAnterior ' +
                              'FROM ' +
                              '	bitacoradeactividades ' +
                              'WHERE ' +
                              '	sContrato = :Contrato ' +
                              'AND sNumeroOrden = :Folio ' +
                              'AND sWbs = :Wbs ' +
                              'AND sIdTipoMovimiento = "ED"; ';
            Query.Params.ParamByName('Contrato').AsString := Valor;
            Query.Params.ParamByName('Folio').AsString := Excel.Cells[(iFila), (3)].Text;
            Query.Params.ParamByName('Wbs').AsString := sWbs;
            Query.Open;
            if Query.RecordCount > 0 then begin
              PSumaDeAvance := Query.FieldByName('AvanceAnterior').AsFloat + dAvanceP;
              if PSumaDeAvance > 1 then begin
                if MessageDlg('La suma de avances de la partida ' + Actividad + ' en el folio ' + Folio + ' con la importación del día ' + Excel.Cells[(iFila), (2)].Text + ' da un total de ' + FloatToStr(PSumaDeAvance * 100) + #10#13 + ' esta actividad será ignorada, ¿desea continuar a la siguiente cronología? - Si elige "No" el proceso de importación se cancelará.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
                  Inc(iFila);
                  Continue;
                end else begin
                  Raise Exception.Create('La importación fue cancelada por un exceso de avance en la partida ' + Actividad + ' del folio ' + Folio);
                end;
              end;
            end;
          end;

          Query.Active := False;
          Query.SQL.Text := 'INSERT IGNORE INTO bitacoradeactividades ' +
                            '(sContrato, dIdFecha, iIdDiario, sIdTurno, sNumeroOrden, sWbs, sPaquete, sNumeroActividad, sIdTipoMovimiento, sIdClasificacion, sHoraInicio, sHoraFinal, dCantidad, dAvance, mDescripcion) VALUES ' +
                            '(:Contrato, :Fecha, :IdDiario, "A", :Folio, :Wbs, "", :Actividad, "ED", :Clasificacion, :HoraInicio, :HoraFin, :Cantidad, :Cantidad, :Descripcion) ';
          Query.Params.ParamByName('Contrato').AsString := Valor;
          Query.Params.ParamByName('Fecha').AsDateTime := dFechaP;//Excel.Cells[(iFila), (2)].Text;
          Query.Params.ParamByName('IdDiario').AsInteger := iCounter;
          Query.Params.ParamByName('Folio').AsString := Excel.Cells[(iFila), (3)].Text;
          Query.Params.ParamByName('Wbs').AsString := sWbs;
          Query.Params.ParamByName('Actividad').AsString := Actividad;
          Query.Params.ParamByName('Clasificacion').AsString := Excel.Cells[(iFila), (5)].Text;
          Query.Params.ParamByName('HoraInicio').AsString := Excel.Cells[(iFila), (6)].Text;
          Query.Params.ParamByName('HoraFin').AsString := Hora; //Excel.Cells[(iFila), (7)].Text;
          Query.Params.ParamByName('Cantidad').AsFloat := dAvanceP; //Excel.Cells[(iFila), (8)].Value;
          Query.Params.ParamByName('Descripcion').AsString := Excel.Cells[(iFila), (9)].Text;
          Query.ExecSQL;

          Query.SQL.Text := '' +
                            'SELECT ' +
                            '	@AvanceTotal := SUM(dCantidad), ' +
                            '	@HoraInicial := MIN(sHoraInicio), ' +
                            '	@HoraFinal := MAX(sHoraFinal) ' +
                            'FROM ' +
                            '	bitacoradeactividades ' +
                            'WHERE ' +
                            '	sNumeroOrden = ' + QuotedStr(Folio) + ' ' +
                            '	AND sContrato = '+QuotedStr(Valor)+' ' +
                            '	AND dIdFecha = '+QuotedStr(Excel.Cells[(iFila), (2)].Text)+' ' +
                            '	AND sWbs = '+QuotedStr(sWbs)+' ' +
                            '	AND sIdTipoMovimiento = "ED";';
          Query.Open;

          Query.SQL.Text := '' +
                            'UPDATE bitacoradeactividades SET dCantidad = @AvanceTotal, dAvance = @AvanceTotal, sHoraInicio = @HoraInicial, sHoraFinal = @HoraFinal ' +
                            'WHERE ' +
                            '	sNumeroOrden = ' + QuotedStr(Folio) + ' ' +
                            '	AND sContrato = '+QuotedStr(Valor)+' ' +
                            '	AND dIdFecha = '+QuotedStr(Excel.Cells[(iFila), (2)].Text)+' ' +
                            '	AND sWbs = '+QuotedStr(sWbs)+' ' +
                            '	AND sIdTipoMovimiento = "E";';
          Query.ExecSQL;

          Inc(iCounter);

        end else begin
          ShowMessage('No se encontró la actividad ' + Actividad + ' en el folio ' + Folio + ' la importación será cancelada. ' +#10+#13 + 'Advertencia: Ningún cambio será guardado.');

          raise Exception.Create('La importación fue cancelada.');
        end;
        Inc(iFila);
      end;
      pb1.Max := Excel.Rows.CurrentRegion.Rows.Count;
      pb1.Position := 0;
      tsOTs.KeyValue := Valor;
    Except
      On E: Exception do begin
        ShowMessage(E.Message);
        Query.SQL.Text := 'ROLLBACK;';
        Query.ExecSQL;
      end;
    End;
  Finally
    Query.SQL.Text := 'COMMIT;';
    Query.ExecSQL;
    lbl2.Caption := '¡Listo!';
    Splitter.Free;
    pb1.Visible := False;
    lbl2.Caption := '¡Listo!';
    lbl2.Visible := False;
    ExcelClose(Excel, False);
  End;
end;

Procedure TfrmDiarioTurno.ImprimeActividad(Sender: TObject);
Var
  Folio: TMenuItem;
  sFolio: String;
begin
  Folio := TMenuItem(Sender);
  sFolio := '<Todos>';
  if sFolio = '<Todos>' then begin
    GeneraReporteDiario_Excel(Connection.Contrato.FieldByName('sIdResidencia').AsString, False, False, True, False, False, False, False, False, False, False, sFolio, False);
  end;
end;

function TfrmDiarioTurno.ExisteReporteDiario(Fecha: TDateTime; sContratoD, sOrden, sFolioP: String): String;
Var
  sContrato,
  sReporte,
  txtAux: string;
  iReporte,
  Caracteres: Integer;
  lOrdenTierra,
  bContinue: Boolean;
begin
    connection.QryBusca2.Active:=False;
    connection.QryBusca2.Filtered:=False;
    connection.QryBusca2.SQL.Text:='select sNumeroReporte,sIdConvenio,sIdTurno from reportediario where sContrato=:Contrato and sOrden =:Orden and dIdFecha=:Fecha';
    connection.QryBusca2.ParamByName('Contrato').AsString := global_Contrato_Barco;
    connection.QryBusca2.ParamByName('Orden').AsString    := sOrden;
    connection.QryBusca2.ParamByName('Fecha').AsDate      := Fecha;
    connection.QryBusca2.Open;
    
    if connection.QryBusca2.Recordcount = 0 then
    begin
         Connection.QryBusca.Active := False ;
         Connection.QryBusca.SQL.Clear ;
         Connection.QryBusca.SQL.Add('Select sFormato, iConsecutivo from configuracion where sContrato = :Orden') ;
         Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Orden').Value    := sOrden; // global_contrato ;
         Connection.QryBusca.Open ;
         iReporte := Connection.QryBusca.FieldValues['iConsecutivo'] ;
         sReporte := Trim ( Connection.QryBusca.FieldValues ['sFormato'] ) + sReporte ;

         txtAux := IntToStr(iReporte);
         txtAux := Trim( txtAux ) ;
         For Caracteres := 1 to ( 3 - strLen ( pchar(txtAux) ) ) Do
              txtAux := '0' + txtAux ;
         sReporte := sReporte + txtAux ;
         tsNumeroReporte.Text := sReporte ;

         connection.zCommand.Active := False ;
         connection.zCommand.SQL.Clear ;
         connection.zcommand.SQL.Add ('UPDATE configuracion Set iConsecutivo = :Consecutivo Where sContrato = :Orden');
         connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
         connection.zcommand.Params.ParamByName('Orden').value    := sOrden; // Global_Contrato ;
         connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
         connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte + 1 ;
         connection.zCommand.ExecSQL ;

         Connection.QryBusca.Active := False ;
         Connection.QryBusca.SQL.Clear ;
         Connection.QryBusca.SQL.Add('Select sNumeroOrden, dIdFecha, sNumeroReporte From reportediario Where sContrato =:Contrato and sOrden = :Orden And sNumeroReporte = :Reporte') ;
         Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Contrato').Value := global_Contrato_Barco;
         Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Orden').Value := sOrden; //global_contrato ;
         Connection.QryBusca.Params.ParamByName('Reporte').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Reporte').Value := sReporte ;
         Connection.QryBusca.Open ;

         If Connection.QryBusca.RecordCount > 0 Then
         Begin
              MessageDlg('El folio a asignar al reporte diario actual existe [' + Connection.QryBusca.FieldValues['sNumeroReporte'] + '] Modifique la configuración de folios.'  , mtWarning, [mbOk], 0) ;
              sReporte := '--FOLIO DUPLICADO--' ;
         End ;

      With connection do
      Begin
        try
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zcommand.SQL.Add ('INSERT IGNORE INTO reportediario ( sContrato , sOrden, dIdFecha, sNumeroOrden, sIdTurno, sIdConvenio, sNumeroReporte, iPersonal, ' +
                                    'sTiempoEfectivo, sTiempoMuerto, sTiempoMuertoReal, ' +
                                    'lStatus, sIdUsuario, '+
                                    'lAplicaComida, dAvProgAnteriorOrden, dAvProgActualOrden, dAvProgAnteriorContrato, dAvProgActualContrato, dAvRealAnteriorOrden, ' +
                                    'dAvRealActualOrden, dAvRealAnteriorContrato, dAvRealActualContrato )' +
                                    'VALUES (:Contrato, :Orden, :Fecha, :Folio, :Turno, :Convenio, :Reporte, :Personal,:Efectivo, :Muerto, :Real, ' +
                                    ':Status, :Usuario,"No", 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00)') ;
          connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Contrato').value := global_Contrato_Barco;
          connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Orden').value := sOrden ; //Global_Contrato ;
          connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
          connection.zcommand.Params.ParamByName('Fecha').value := Fecha ;
          connection.zcommand.Params.ParamByName('Folio').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Folio').value := sOrden;
          connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Turno').value := global_turno ;
          connection.zcommand.Params.ParamByName('Convenio').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Convenio').value := global_convenio ;
          connection.zcommand.Params.ParamByName('Reporte').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Reporte').value := sReporte ;
          connection.zcommand.Params.ParamByName('Personal').DataType := ftInteger ;
          connection.zcommand.Params.ParamByName('Personal').value := 0 ;
          connection.zcommand.Params.ParamByName('Efectivo').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Efectivo').value := '00:00' ;
          connection.zcommand.Params.ParamByName('Muerto').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Muerto').value := '00:00' ;
          connection.zcommand.Params.ParamByName('Real').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Real').value := '00:00' ;
          connection.zcommand.Params.ParamByName('Status').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Status').value := 'Pendiente' ;
          connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Usuario').value := global_usuario ;
          connection.zCommand.ExecSQL ;

          // Actualizo Kardex del Sistema ....
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zcommand.SQL.Add ('Insert IGNORE Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                    'Values (:Orden, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
          connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Orden').Value := sContratoD; //Global_Contrato ;
          connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
          connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
          connection.zcommand.Params.ParamByName('Fecha').Value := Fecha ;
          connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
          connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Descripcion').Value := 'Creación del Reporte Diario No. ' + sReporte + ' del dia ' + DateToStr(tdIdFecha.Date) ;
          connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
          connection.zCommand.ExecSQL ;
          ExisteReporteDiario := global_convenio;


        except
          on e : exception do
          begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al salvar nuevo registro', 0);
          end;
        end
      End;

    end else begin
      if connection.QryBusca2.Recordcount = 1 then
      begin
        ExisteReporteDiario:=connection.QryBusca2.FieldByName('sIdConvenio').AsString;
        bContinue:=True;
      end;
    end;
end;

Procedure TfrmDiarioTurno.AjustarFila(var Excel: Variant);
Var
  n, 
  Columnas,
  AnchoTotal,
  AnchoDeCelda,
  Alto, 
  Filas: Integer;
  AnchoReal,
  AnchoTotalReal,
  AnchoCeldaReal: Real;
  Wraped: Boolean;
begin
  n := 0;
  Columnas := Excel.Selection.Columns.Count;
  Wraped := Excel.Selection.WrapText;
//  Excel.Selection.WrapText := True;
  for n := 1 to Columnas do begin
    AnchoTotal := AnchoTotal + Excel.Selection.Columns.Columns[n].ColumnWidth;
  end;
  AnchoReal := Excel.Selection.Width;
//  AnchoTotal := Excel.Selection.Width;
  AnchoDeCelda := Excel.Selection.Columns.Columns[1].ColumnWidth;

  Excel.Selection.MergeCells := False;
//  AnchoTotal := Excel.Selection.Width;

  if AnchoTotal > 255 then begin
    Excel.Selection.Columns.Columns[1].ColumnWidth := 255;
  end else begin
    Excel.Selection.Columns.Columns[1].ColumnWidth := AnchoTotal ;
  end;
  AnchoCeldaReal := Excel.Selection.Columns.Columns[1].Width;

  AnchoTotalReal := (AnchoTotal * AnchoReal) / AnchoCeldaReal;
  AnchoTotalReal := Trunc(AnchoTotalReal);

  if AnchoTotal > 255 then begin
    Excel.Selection.Columns.Columns[1].ColumnWidth := 255;
  end else begin
    Excel.Selection.Columns.Columns[1].ColumnWidth := AnchoTotalReal;
  end;
//  Excel.Selection.Columns.Columns(1).Width := AnchoTotal;
//  Excel.Selection.Columns[1].EntireColumn.ColumnWidth := AnchoTotal;

  Excel.Selection.Parent.Rows[Excel.Selection.Row].AutoFit;
  try
     Alto := (Excel.Selection.RowHeight + 3);
  Except
      Alto := 12;
  end;

  Excel.Selection.MergeCells := True;
  Excel.Selection.Columns[1].EntireColumn.ColumnWidth := AnchoDeCelda;

//  Filas := Excel.Selection.Parent.Rows.Count;

  if Alto > 409 then begin
    Excel.Selection.RowHeight := 409
  end else begin
    Excel.Selection.RowHeight := Alto;
  end;

  Application.ProcessMessages;


end;

Procedure TfrmDiarioTurno.AjustarFila(var Excel: Variant;TTexto,CLetras:Integer);
Var
  n,
  Columnas,
  AnchoTotal,
  AnchoDeCelda,
  Alto,
  Filas,FilasAct: Integer;
  AnchoReal,
  AnchoTotalReal,
  AnchoCeldaReal: Real;
  Wraped: Boolean;
begin
  n := 0;
  Columnas := Excel.Selection.Columns.Count;
  Wraped := Excel.Selection.WrapText;
  for n := 1 to Columnas do begin
    AnchoTotal := AnchoTotal + Excel.Selection.Columns.Columns[n].ColumnWidth;
  end;
  AnchoReal := Excel.Selection.Width;
  AnchoDeCelda := Excel.Selection.Columns.Columns[1].ColumnWidth;

  Excel.Selection.MergeCells := False;

  if AnchoTotal > 255 then begin
    Excel.Selection.Columns.Columns[1].ColumnWidth := 255;
  end else begin
    Excel.Selection.Columns.Columns[1].ColumnWidth := AnchoTotal;
  end;
  AnchoCeldaReal := Excel.Selection.Columns.Columns[1].Width;

  AnchoTotalReal := (AnchoTotal * AnchoReal) / AnchoCeldaReal;
  AnchoTotalReal := Trunc(AnchoTotalReal);

  if AnchoTotal > 255 then begin
    Excel.Selection.Columns.Columns[1].ColumnWidth := 255;
  end else begin
    Excel.Selection.Columns.Columns[1].ColumnWidth := AnchoTotalReal;
  end;

  Excel.Selection.Parent.Rows[Excel.Selection.Row].AutoFit;
  FilasAct := Excel.Selection.Rows.Count;
  try
    Alto := (((TTexto div CLetras)+1)*9 ) div FilasAct;
  Except
    Alto := 12;
  end;

  if (FilasAct > 1) AND (ALTO < 7) then
    ALTO := 8;

  Excel.Selection.MergeCells := True;
  Excel.Selection.Columns[1].EntireColumn.ColumnWidth := AnchoDeCelda;

  if Alto > 409 then begin
    Excel.Selection.RowHeight := 409
  end else begin
    Excel.Selection.RowHeight := Alto;
  end;

  Application.ProcessMessages;
end;

Procedure TfrmDiarioTurno.GeneraReporteDiario_Excel(sTipo: String = '03'; Caratula: Boolean = True; BalanceGeneral: Boolean = True; Actividades: Boolean = True; Notas: Boolean = True; ConcentradoPersonal: Boolean = True; ConcentradoEquipos: Boolean = True; ConcentradoPernoctas: Boolean = True; TotalPersonal: Boolean = True; ResumenMaterial: Boolean = True; Diesel: Boolean = True; sFolio: String = '<Todos>'; lista_personal : boolean = True; ResumenRecursos : boolean = True );
Var
  Libro, Excel, Hoja, iHojas: Variant;
  x, iFila, iCounter, iLoop, iColumnaProrrateo, ItemMayor, iIndice: Integer;
  NombreDelExcel, SQLExtra, StrAux: String;

  QryFactor, QryPersonal, QryAjuste, QryMaximo : TZQuery;

  SumaTotal, dDiferencia, SumaPorHorario, dMaximoValor: Real;

  sDiferencia : string;

  ValoresProrrateados: Array Of Real;

  {$REGION 'GUARDAR ARCHIVO EXCEL'}
  function GuardarComo:Boolean;
  var
     Correcto,Cancelar:Boolean;
  begin
      GuardaReporte.Filter     := 'Excel(*.xlsx)|*.xlsx';
      GuardaReporte.DefaultExt := '.xlsx';
      Correcto := False;
      Cancelar := False;
      repeat
         GuardaReporte.FileName := 'ReporteDiario '+ reportediario.FieldValues['sOrden'] +' '+ formatdatetime('dd-mm-yyyy', reportediario.FieldValues['dIdFecha']);
         if GuardaReporte.Execute then
         begin
            SArchivo := GuardaReporte.FileName;
            if (AnsiEndsText('.xlsx',SArchivo)) then
            begin
                if FileExists(SArchivo) then
                begin
                  if MessageDlg('¿El archivo ya existe, desea sobreescribirlo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                  begin
                    Correcto := True;
                  end
                  else
                    ShowMessage('Intente con otro nombre porfavor.');
                end
                else
                  Correcto := True;
            end
            else
               ShowMessage('El archivo que quiere generar debe tener el formato "XLSX", intente de nuevo por favor o cancele.')
         end
         else
           Cancelar := True;
      until (Correcto) or Cancelar;
      Result := Correcto;
  end;
  {$ENDREGION}

  {$REGION 'CERRAR EL EXCEL'}
  Function ExcelCloseWorkBooks(Excel : Variant; SaveAll: Boolean): Boolean;
  var
    loop: byte;
  Begin
    Result := True;
    Try
      For loop := 1 to Excel.Workbooks.Count Do
        Excel.Workbooks[1].Close[SaveAll];
    Except
      Result := False;
    End;
  End;

  Function ExcelClose(Excel : Variant; SaveAll: Boolean): Boolean;
  Begin
    Result := True;
    Try
      ExcelCloseWorkBooks(Excel, SaveAll);
      Excel.Quit;
    Except
      MessageDlg('Unable to Close Excel', mtError, [mbOK], 0);
      Result := False;
    End;
  End;
  {$ENDREGION}

begin
  try
    if not GuardarComo then
       raise exception.Create('Proceso cancelado por el usuario.');

    if not DescargaReporte(sArchivo,'Reporte diario') then
       raise Exception.Create('No se puede obtener el archivo de reporte, favor de informar al administrador de base de datos. Reporte: Orden de servicio');

    try
      excel := CreateOleObject('Excel.Application');
    except
      On E: Exception do
      begin
        FreeAndNil(excel);
        ShowMessage(E.Message);
        Exit;
      end;
    end;

    excel.Visible := True;
    excel.DisplayAlerts := False;

    Libro := excel.workbooks.open(SArchivo);

    {$REGION 'CONSULTAS'}
    QryReporteDiario := TZQuery.Create(Self);
    QryReporteDiario.Connection := Connection.zConnection;
    QryReporteDiario.SQL.Add( '' +
                        'SELECT ' +
                        '	r.sLocalizacion ' +
                        'FROM condicionesclimatologicas AS r ' +
                        'WHERE ' +
                        '	r.dIdFecha = :Fecha ' +
                        '	AND sContrato = :Contrato ');
    QryReporteDiario.ParamByName('Contrato').AsString := global_Contrato_Barco;
    QryReporteDiario.ParamByName('Fecha').AsDateTime  := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
    QryReporteDiario.Open;

    QryEmbarcacionPrincipal := TZQuery.Create(Self);
    QryEmbarcacionPrincipal.Connection := Connection.zConnection;
    QryEmbarcacionPrincipal.SQL.Add( '' +
                        'SELECT ' +
                        '	ev.*, ' +
                        '	e.sDescripcion ' +
                        'FROM embarcacion_vigencia AS ev ' +
                        '	INNER JOIN embarcaciones e ON (e.scontrato=ev.scontrato AND ev.sidembarcacion=e.sIdembarcacion) ' +
                        'WHERE ' +
                        '	ev.scontrato= :ContratoBarco ' +
                        '	AND ev.dFechaInicio=( ' +
                        '						SELECT ' +
                        '							MAX(dFechaInicio) ' +
                        '						FROM embarcacion_vigencia ' +
                        '						WHERE scontrato= :ContratoBarco ' +
                        '						AND dFechaInicio<= :FechaInicio ' +
                        '						); ');
    QryEmbarcacionPrincipal.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;//Global_Contrato_Barco;
    QryEmbarcacionPrincipal.ParamByName('FechaInicio').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
    QryEmbarcacionPrincipal.Open;

    {Antes de consultar los movimientos logisticos ajustamos los factores de barco en dado caso que no cierren a la unidad "1"}
    {* hcp by iv@n 23 Enero de 2014}
    {Comsultamos los movimientos del día seleccionado.}

    {Consultamos el mayor factor..}
    QryMaximo := TZQuery.Create (Self);
    QryMaximo.connection := connection.zConnection;
    QryMaximo.Active := False;
    QryMaximo.SQL.Clear;
    QryMaximo.SQL.Add('select iIdDiario, sFactor, sHoraInicio, sHoraFinal from movimientosdeembarcacion where sContrato =:contrato and dIdFecha =:fecha order by sFactor DESC limit 1 ');
    QryMaximo.ParamByName('contrato').AsString := global_Contrato_Barco;
    QryMaximo.ParamByName('fecha').AsDate      := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
    QryMaximo.Open;

    if QryMaximo.RecordCount > 0 then
    begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select sum(sFactor) as sFactor, (1 -sum(sFactor)) as dDiferencia from movimientosdeembarcacion where sContrato =:contrato and dIdFecha =:fecha ');
        connection.zCommand.ParamByName('contrato').AsString := global_Contrato_Barco;
        connection.zCommand.ParamByName('fecha').AsDate      := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        connection.zCommand.Open;

        if connection.zCommand.RecordCount > 0 then
        begin
            if connection.zCommand.FieldValues['dDiferencia'] <> 0 then
            begin
                sDiferencia := formatFloat('0.000000', 1.0 - connection.zCommand.FieldByName('sFactor').AsFloat);
                dDiferenciaFactor := StrToFloat(sDiferencia);

                {Primero actualizamos los movimientos de embarcaicon de acuerdo al criterio del reporte..}
                QryAjuste := TZQuery.Create (Self);
                QryAjuste.connection:= connection.zConnection;
                QryAjuste.Active := False;
                QryAjuste.SQL.Clear;
                if connection.zCommand.FieldValues['dDiferencia'] > 0  then
                   QryAjuste.SQL.Add('Update movimientosdeembarcacion set sFactor = :factor where sContrato =:contrato and dIdFecha =:fecha and iIdDiario =:diario ')
                else
                   QryAjuste.SQL.Add('Update movimientosdeembarcacion set sFactor = :factor where sContrato =:contrato and dIdFecha =:fecha and iIdDiario =:diario ');
                QryAjuste.ParamByName('contrato').AsString := global_Contrato_Barco;
                QryAjuste.ParamByName('fecha').AsDate      := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                QryAjuste.ParamByName('diario').AsInteger  := QryMaximo.FieldByName('iIdDiario').AsInteger;
                QryAjuste.ParamByName('Factor').AsFloat    := QryMaximo.FieldValues['sFactor'] + dDiferenciaFactor;
                QryAjuste.ExecSQL;

                local_iIdDiario := QryMaximo.FieldByName('iIdDiario').AsInteger;

                QryAjuste.Destroy;
                QryMaximo.Destroy;
            end;
        end;
    end;

    {Consultamos los movimientos logisticos}
    QryMovimientosLogisticos := TZQuery.Create(Self);
    QryMovimientosLogisticos.Connection := Connection.zConnection;
    QryMovimientosLogisticos.SQL.Add( ' '+
                                      'SELECT '+
                                      '	me.sContrato, '+
                                      '	me.sClasificacion, '+
                                      '	me.sIdFase, '+
                                      '	tm.sTipo, '+
                                      '	e.sDescripcion AS embarcacion, '+
                                      '	me.mDescripcion, '+
                                      '	me.sHoraInicio, '+
                                      '	me.sHoraFinal, '+
                                      '	me.dIdFecha, '+
                                      '	me.sFactor, '+
                                      '	me.iIdDiario, '+
                                      ' me.sNumeroActividad, '+
                                      ' tm.sIdTipoMovimiento '+
                                      'FROM movimientosdeembarcacion AS me '+
                                      '	INNER JOIN embarcaciones e ON (e.sContrato = me.sContrato AND e.sIdEmbarcacion = me.sIdEmbarcacion) '+
                                      '	INNER JOIN tiposdemovimiento AS tm ON (tm.sContrato = me.sContrato AND tm.sIdTipoMovimiento = me.sClasificacion AND tm.sMedida = "DIA") ' +
                                      'WHERE '+
                                      '	me.sContrato= :Contrato '+
                                      ' AND me.sOrden = :ContratoNormal ' +
                                      '	AND me.dIdFecha= :Fecha '+
                                      '	AND me.sIdEmbarcacion = :IdEmbarcacion '+
                                      '	AND me.sIdFase = "OPER" '+
                                      'ORDER BY '+
                                      '	me.sHoraInicio, '+
                                      '	me.sContrato');
    QryMovimientosLogisticos.ParamByName('Contrato').AsString       := Global_Contrato_Barco;
    QryMovimientosLogisticos.ParamByName('ContratoNormal').AsString := ReporteDiario.FieldByName('sOrden').AsString;
    QryMovimientosLogisticos.ParamByName('Fecha').AsDateTime        := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
    QryMovimientosLogisticos.ParamByName('IdEmbarcacion').AsString  := QryEmbarcacionPrincipal.FieldByName('sIdEmbarcacion').AsString;
    QryMovimientosLogisticos.Open;
    SQLExtra := '';
   // if sFolio = '<Todos>' then begin
      SQLExtra := '';
   // end else begin
   //   SQLExtra := ' AND ot.sNumeroOrden = ' + QuotedStr(sFolio) +  ' ';
   // end;

    QryFolios := TZQuery.Create(Self);
    QryFolios.Connection := Connection.zConnection;
    QryFolios.SQL.Add(' ' +
                      'SELECT ' +
                      '	ot.* ' +
                      'FROM ordenesdetrabajo AS ot ' +
                      '	INNER JOIN contratos AS c ' +
                      '		ON (ot.sContrato=c.sContrato) ' +
                      '	INNER JOIN bitacoradeactividades AS ba ' +
                      '		ON (ba.sContrato=c.sContrato AND ba.sNumeroOrden=ot.sNumeroOrden) ' +
                      '	INNER JOIN tiposdemovimiento AS tm ' +
                      '		ON (tm.sContrato= :ContratoBarco AND tm.sIdTipoMovimiento=ba.sIdTipoMovimiento AND tm.sClasificacion="Tarifa Diaria") ' +
                      'WHERE ' +
                      '	(c.sContrato= :Orden) ' +
                      '	AND ba.dIdFecha= :Fecha ' +
                      SQLExtra +
                      'GROUP BY ' +
                      '	ot.sContrato, ' +
                      '	ot.sNumeroorden');
    QryFolios.ParamByName('Orden').AsString := ReporteDiario.FieldByName('sOrden').AsString;
    QryFolios.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
    QryFolios.ParamByName('Fecha').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
    QryFolios.Open;

    //Pido los firmantes.
    rDiarioFirmas(Global_Contrato, reportediario.FieldByName('sNumeroOrden').AsString, reportediario.FieldByName('dIdFecha').AsDateTime, Self);
    {$ENDREGION}

    iFila := 1;
    iHojas := 1;

    AplicarProrrateo := False;

    iCounter := QryFolios.RecordCount + 10;
    iIndice := local_iIndice;

    if Caratula then
    begin
      {$REGION 'CARATULA'}
        if sTipo = '04' then
        begin
            Libro.sheets[iIndice].Select; {1}
            Hoja := libro.sheets[iIndice];

            ReporteExcel_CabeceraHorizontal(Hoja, Excel, iFila, True, 15);
            ReporteExcel_MovimientosLogisticos2(Excel, iFila);
            FormatosExcel_EstablecerPropiedadesDeHoja(Excel, Hoja);

            Inc(iHojas);
            inc(iIndice)
        end
        else
           Libro.sheets[iIndice].Delete;

      {$ENDREGION}
    end;

    if Actividades then
    begin
      {$REGION 'ACTIVIDADES'}
        Libro.sheets[iIndice].Select;  {2}
        Hoja := libro.sheets[iIndice];
        iFilaGlobal := 15;
        while Not QryFolios.Eof do
        begin
           ReporteExcel_CabeceraVertical(Hoja, Excel, iFila, True, 15);

           ReporteExcel_ActividadesPorFolio(Excel, iFila, QryFolios.FieldByName('sNumeroOrden').AsString);
           FormatosExcel_EstablecerPropiedadesDeHoja(Excel, Hoja);

           Inc(iHojas);
           QryFolios.Next;
        end;
        inc(iIndice);
        {$ENDREGION}
    end;

    if ResumenMaterial then
    begin
      {$REGION 'RESUMEN DE MATERIALES'}
        Libro.sheets[iIndice].Select;    {3}
        Hoja := libro.sheets[iIndice];

        ReporteExcel_CabeceraVertical(Hoja, Excel, iFila, True, iFila);
        ReporteExcel_ResumenMaterial2(Excel, iFila);

        FormatosExcel_EstablecerPropiedadesDeHoja(Excel, Hoja);
        Excel.Cutcopymode := false;
        Inc(iHojas);
        inc(iIndice);
      {$ENDREGION}
    end;

     if (BalanceGeneral) then
     begin
      {$REGION 'BALANCE GENERAL'}
        if sTipo = '04' then
        begin
            Libro.sheets[iIndice].Select;
            Hoja := libro.sheets[iIndice]; {4}

            ReporteExcel_CabeceraVertical(Hoja, Excel, iFila, True, 15);
            ReporteExcel_BalanceGeneral(Excel, iFila);

            FormatosExcel_EstablecerPropiedadesDeHoja(Excel, Hoja);
            Inc(iHojas);
            inc(iIndice);
        end
        else
            Libro.sheets[iIndice].delete;
      {$ENDREGION}
    end;

    if Notas then
    begin
      {$REGION 'NOTAS'}
        Libro.sheets[iIndice].Select;
        Hoja := libro.sheets[iIndice];  {5}

        if sTipo = '04' then
           ReporteExcel_CabeceraVertical(Hoja, Excel, iFila, True, 15)
        else
           ReporteExcel_CabeceraVertical(Hoja, Excel, iFila, True, 15);
        ReporteExcel_NotasGenerales(Excel, iFila);

        FormatosExcel_EstablecerPropiedadesDeHoja(Excel, Hoja);
        Inc(iHojas);
        inc(iIndice);
      {$ENDREGION}
    end;

    if (lista_personal) then
    begin
      {$REGION 'LISTADO DE PERSONAL'}
        if (sTipo = '04')  then
        begin
            Libro.sheets[iIndice].Select;
            Hoja := libro.sheets[iIndice]; {6}

            ReporteExcel_CabeceraVertical(Hoja, Excel, iFila, True, iFila);
            ReporteExcel_Listadepersonal(Excel, iFila);

            FormatosExcel_EstablecerPropiedadesDeHoja(Excel, Hoja);
            Inc(iHojas);
            inc(iIndice);
        end
        else
            Libro.sheets[iIndice].delete;
      {$ENDREGION}
    end;

    if (Diesel)  then
    begin
      {$REGION 'CONSUMO DE EQUIPOS'}
        if (sTipo = '04')  then
        begin
            Libro.sheets[iIndice].Select;
            Hoja := libro.sheets[iIndice];  {7}

            ReporteExcel_CabeceraVertical(Hoja, Excel, iFila, True, iFila);
            ReporteExcel_ConsumosDiesel(Excel, iFila);

            FormatosExcel_EstablecerPropiedadesDeHoja(Excel, Hoja);
            Inc(iHojas);
            inc(iIndice);
        end
        else
           Libro.sheets[iIndice].Delete;

      {$ENDREGION}
    end;

    if ConcentradoEquipos then
    begin
      {$REGION 'CONCENTRADO DE EQUIPOS'}
        Hoja := Excel.WorkBooks[1].WorkSheets[iIndice];
        Libro.Sheets[iIndice].Select;     {8}
        Hoja.PageSetup.Zoom := 65;
        ReporteExcel_CabeceraHorizontal2(Hoja, Excel, iFila, True, 15);
        ReporteExcel_DistribucionDeEquipos2(Hoja, Excel, 14);
        FormatosExcel_EstablecerPropiedadesDeHoja(Excel, Hoja);

        Inc(iHojas);
        inc(iIndice);
      {$ENDREGION}
    end;

    if ConcentradoPersonal then
    begin
      {$REGION 'CONCENTRADO DE PERSONAL'}
        Hoja := Excel.WorkBooks[1].WorkSheets[iIndice];
        Libro.Sheets[iIndice].Select;  {9}
        Hoja.PageSetup.Zoom := 65;

        ReporteExcel_CabeceraHorizontal2(Hoja, Excel, iFila, True, 15);
        ReporteExcel_ConcentradoDePersonal2(Libro, Hoja, Excel, 14);
        FormatosExcel_EstablecerPropiedadesDeHoja(Excel, Hoja);

        Inc(iHojas);
        inc(iIndice);
      {$ENDREGION}
    end;

    if TotalPersonal then
    begin
      {$REGION 'TOTAL DE PERSONAL'}
        if (sTipo = '04')  then
        begin
            Libro.sheets[12].Select;
            Hoja := libro.sheets[12];

            ReporteExcel_CabeceraVertical(Hoja, Excel, iFila, True, iFila);
            ReporteExcel_TotalDePersonal2(Excel, iFila);

            FormatosExcel_EstablecerPropiedadesDeHoja(Excel, Hoja, 130);
            Inc(iHojas);
        end
        else
           Libro.sheets[iIndice].Delete;
      {$ENDREGION}
    end;


    if (ConcentradoPernoctas) then
    begin
      {$REGION 'CONCENTRADO DE PERNOCTAS'}
//        if (sTipo = '03') AND (Not Caratula) then begin
//          if Libro.Sheets.Count < iHojas then begin
//            Libro.Sheets.Add;
//          end;
//          Excel.WorkBooks[1].WorkSheets[iHojas].Name := 'CONCENTRADO DE PERNOCTAS';
//          Hoja := Excel.WorkBooks[1].WorkSheets[iHojas];
//          Libro.Sheets[iHojas].Select;
//          Hoja.PageSetup.Zoom := 67;
//
//          ReporteExcel_ConcentradoDePernoctas(Hoja, Excel, 14);
//
//          FormatosExcel_EstablecerPropiedadesDeHoja(Excel, Hoja);
//          Hoja.PageSetup.RightHeader := '&8'+#10+''+#10+'&11'+#10+'&8HOJA &"Arial,Negrita"&P&"Arial,Normal" DE &"Arial,Negrita"&#'+#10;
//          Hoja.PageSetup.Zoom := 67;
//          Hoja.PageSetup.PrintTitleRows := '$1:$16';
//          Hoja.PageSetup.PrintArea := '$' + ColumnaNombre(1) + '$' + IntToStr(1) + ':' + '$' + ColumnaNombre(iColumnaGlobal) + '$' + IntToStr(iFilaGlobal);
//          Hoja.PageSetup.Orientation := xlLandscape;
//          Excel.ActiveSheet.PageSetup.FooterMargin := Excel.InchesToPoints(0.39);
//        
//          Inc(iHojas);
//        end;
//
//        if sTipo = '04' then begin
//          if Libro.Sheets.Count < iHojas then begin
//            Libro.Sheets.Add;
//          end;
//          Excel.WorkBooks[1].WorkSheets[iHojas].Name := 'CONCENTRADO DE PERNOCTAS';
//          Hoja := Excel.WorkBooks[1].WorkSheets[iHojas];
//          Libro.Sheets[iHojas].Select;
//
//          ReporteExcel_ConcentradoDePernoctas(Hoja, Excel, 14);
//
//          iFilaGlobal := 21;
//          FormatosExcel_EstablecerPropiedadesDeHoja(Excel, Hoja);
//          if sTipo = '03' then begin
//            Hoja.PageSetup.RightHeader := #10 + '&8 HOJA   '+#10+'&"-,Negrita"&P '+#10+'&"-,Normal"  DE  '+#10+'&"-,Negrita"&#';
//            Hoja.PageSetup.Zoom := 67;
//            Hoja.PageSetup.PrintTitleRows := '$1:$9';
//          end else begin
//
//           Hoja.PageSetup.RightHeader := '&8'+#10+''+#10+'&11'+#10+'&8HOJA &"Arial,Negrita"&P&"Arial,Normal" DE &"Arial,Negrita"&#'+#10;
//           Hoja.PageSetup.Zoom := 67;
//           Hoja.PageSetup.PrintTitleRows := '$1:$16';
//          end;
//          Hoja.PageSetup.PrintArea := '$' + ColumnaNombre(1) + '$' + IntToStr(1) + ':' + '$' + ColumnaNombre(iColumnaGlobal) + '$' + IntToStr(iFilaGlobal);
//          Hoja.PageSetup.Orientation := xlLandscape;
//          Excel.ActiveSheet.PageSetup.FooterMargin := Excel.InchesToPoints(0.39);
//
//          Inc(iHojas);
//        end;
      {$ENDREGION}
    end;

    if (ResumenRecursos) then
    begin
      {$REGION 'RESUMEN DE RECURSOS'}
        If (sTipo = '04')  then
        begin
           Libro.sheets[13].Select;
           Hoja := libro.sheets[13];
           ReporteExcel_CabeceraHorizontal2(Hoja, Excel, iFila, True, 15);
           ReporteExcel_ResumenDeRecursos(Excel);
           FormatosExcel_EstablecerPropiedadesDeHoja(Excel, Hoja);
        end
        else
           Libro.sheets[iIndice].Delete;
      {$ENDREGION}
    end;

    If (sTipo <> '04')  then
    begin
        Libro.sheets[iIndice].Delete;
        Libro.sheets[iIndice].Delete;
    end;


  Finally                                        
//    ExcelClose(Excel, False);
//    DeleteFile(Archivo);
  End;
end;

Procedure TfrmDiarioTurno.GeneraReporteDiario_PDF(sTipo: String = '03'; Caratula: Boolean = True; BalanceGeneral: Boolean = True; Actividades: Boolean = True; Notas: Boolean = True; ConcentradoPersonal: Boolean = True; ConcentradoEquipos: Boolean = True; ConcentradoPernoctas: Boolean = True; TotalPersonal: Boolean = True; ResumenMaterial: Boolean = True; Diesel: Boolean = True; sFolio: String = '<Todos>'; lista_personal : boolean = True; ResumenRecursos : boolean = True );
Var
  x, iCounter, iLoop, iColumnaProrrateo, ItemMayor, iIndice: Integer;
  NombreDelExcel, SQLExtra, StrAux: String;

  QryFactor, QryPersonal, QryAjuste, QryMaximo : TZQuery;

  SumaTotal, dDiferencia, SumaPorHorario, dMaximoValor: Real;

  sDiferencia : string;

  ValoresProrrateados: Array Of Real;
begin
   try
    {$REGION 'CONSULTAS'}
    QryReporteDiario := TZQuery.Create(Self);
    QryReporteDiario.Connection := Connection.zConnection;
    QryReporteDiario.SQL.Add( '' +
                        'SELECT ' +
                        '	r.sLocalizacion ' +
                        'FROM condicionesclimatologicas AS r ' +
                        'WHERE ' +
                        '	r.dIdFecha = :Fecha ' +
                        '	AND sContrato = :Contrato ');
    QryReporteDiario.ParamByName('Contrato').AsString := global_Contrato_Barco;
    QryReporteDiario.ParamByName('Fecha').AsDateTime  := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
    QryReporteDiario.Open;

    QryEmbarcacionPrincipal := TZQuery.Create(Self);
    QryEmbarcacionPrincipal.Connection := Connection.zConnection;
    QryEmbarcacionPrincipal.SQL.Add( '' +
                        'SELECT ' +
                        '	ev.*, ' +
                        '	e.sDescripcion ' +
                        'FROM embarcacion_vigencia AS ev ' +
                        '	INNER JOIN embarcaciones e ON (e.scontrato=ev.scontrato AND ev.sidembarcacion=e.sIdembarcacion) ' +
                        'WHERE ' +
                        '	ev.scontrato= :ContratoBarco ' +
                        '	AND ev.dFechaInicio=( ' +
                        '						SELECT ' +
                        '							MAX(dFechaInicio) ' +
                        '						FROM embarcacion_vigencia ' +
                        '						WHERE scontrato= :ContratoBarco ' +
                        '						AND dFechaInicio<= :FechaInicio ' +
                        '						); ');
    QryEmbarcacionPrincipal.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;//Global_Contrato_Barco;
    QryEmbarcacionPrincipal.ParamByName('FechaInicio').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
    QryEmbarcacionPrincipal.Open;

    {Antes de consultar los movimientos logisticos ajustamos los factores de barco en dado caso que no cierren a la unidad "1"}
    {* hcp by iv@n 23 Enero de 2014}
    {Comsultamos los movimientos del día seleccionado.}

    {Consultamos el mayor factor..}
    QryMaximo := TZQuery.Create (Self);
    QryMaximo.connection := connection.zConnection;
    QryMaximo.Active := False;
    QryMaximo.SQL.Clear;
    QryMaximo.SQL.Add('select iIdDiario, sFactor, sHoraInicio, sHoraFinal from movimientosdeembarcacion where sContrato =:contrato and dIdFecha =:fecha order by sFactor DESC limit 1 ');
    QryMaximo.ParamByName('contrato').AsString := global_Contrato_Barco;
    QryMaximo.ParamByName('fecha').AsDate      := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
    QryMaximo.Open;

    if QryMaximo.RecordCount > 0 then
    begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select sum(sFactor) as sFactor, (1 -sum(sFactor)) as dDiferencia from movimientosdeembarcacion where sContrato =:contrato and dIdFecha =:fecha ');
        connection.zCommand.ParamByName('contrato').AsString := global_Contrato_Barco;
        connection.zCommand.ParamByName('fecha').AsDate      := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        connection.zCommand.Open;

        if connection.zCommand.RecordCount > 0 then
        begin
            if connection.zCommand.FieldValues['dDiferencia'] <> 0 then
            begin
                sDiferencia := formatFloat('0.000000', 1.0 - connection.zCommand.FieldByName('sFactor').AsFloat);
                dDiferenciaFactor := StrToFloat(sDiferencia);

                {Primero actualizamos los movimientos de embarcaicon de acuerdo al criterio del reporte..}
                QryAjuste := TZQuery.Create (Self);
                QryAjuste.connection:= connection.zConnection;
                QryAjuste.Active := False;
                QryAjuste.SQL.Clear;
                if connection.zCommand.FieldValues['dDiferencia'] > 0  then
                   QryAjuste.SQL.Add('Update movimientosdeembarcacion set sFactor = :factor where sContrato =:contrato and dIdFecha =:fecha and iIdDiario =:diario ')
                else
                   QryAjuste.SQL.Add('Update movimientosdeembarcacion set sFactor = :factor where sContrato =:contrato and dIdFecha =:fecha and iIdDiario =:diario ');
                QryAjuste.ParamByName('contrato').AsString := global_Contrato_Barco;
                QryAjuste.ParamByName('fecha').AsDate      := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                QryAjuste.ParamByName('diario').AsInteger  := QryMaximo.FieldByName('iIdDiario').AsInteger;
                QryAjuste.ParamByName('Factor').AsFloat    := QryMaximo.FieldValues['sFactor'] + dDiferenciaFactor;
                QryAjuste.ExecSQL;

                local_iIdDiario := QryMaximo.FieldByName('iIdDiario').AsInteger;

                QryAjuste.Destroy;
                QryMaximo.Destroy;
            end;
        end;
    end;

    {Consultamos los movimientos logisticos}
    QryMovimientosLogisticos := TZQuery.Create(Self);
    QryMovimientosLogisticos.Connection := Connection.zConnection;
    QryMovimientosLogisticos.SQL.Add( ' '+
                                      'SELECT '+
                                      '	me.sContrato, '+
                                      '	me.sClasificacion, '+
                                      '	me.sIdFase, '+
                                      '	tm.sTipo, '+
                                      '	e.sDescripcion AS embarcacion, '+
                                      '	me.mDescripcion, '+
                                      '	me.sHoraInicio, '+
                                      '	me.sHoraFinal, '+
                                      '	me.dIdFecha, '+
                                      '	me.sFactor, '+
                                      '	me.iIdDiario, '+
                                      ' me.sNumeroActividad, '+
                                      ' tm.sIdTipoMovimiento '+
                                      'FROM movimientosdeembarcacion AS me '+
                                      '	INNER JOIN embarcaciones e ON (e.sContrato = me.sContrato AND e.sIdEmbarcacion = me.sIdEmbarcacion) '+
                                      '	INNER JOIN tiposdemovimiento AS tm ON (tm.sContrato = me.sContrato AND tm.sIdTipoMovimiento = me.sClasificacion AND tm.sMedida = "DIA") ' +
                                      'WHERE '+
                                      '	me.sContrato= :Contrato '+
                                      ' AND me.sOrden = :ContratoNormal ' +
                                      '	AND me.dIdFecha= :Fecha '+
                                      '	AND me.sIdEmbarcacion = :IdEmbarcacion '+
                                      '	AND me.sIdFase = "OPER" '+
                                      'ORDER BY '+
                                      '	me.sHoraInicio, '+
                                      '	me.sContrato');
    QryMovimientosLogisticos.ParamByName('Contrato').AsString       := Global_Contrato_Barco;
    QryMovimientosLogisticos.ParamByName('ContratoNormal').AsString := ReporteDiario.FieldByName('sOrden').AsString;
    QryMovimientosLogisticos.ParamByName('Fecha').AsDateTime        := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
    QryMovimientosLogisticos.ParamByName('IdEmbarcacion').AsString  := QryEmbarcacionPrincipal.FieldByName('sIdEmbarcacion').AsString;
    QryMovimientosLogisticos.Open;
    SQLExtra := '';
   // if sFolio = '<Todos>' then begin
      SQLExtra := '';
   // end else begin
   //   SQLExtra := ' AND ot.sNumeroOrden = ' + QuotedStr(sFolio) +  ' ';
   // end;

    QryFolios := TZQuery.Create(Self);
    QryFolios.Connection := Connection.zConnection;
    QryFolios.SQL.Add(' ' +
                      'SELECT ' +
                      '	ot.* ' +
                      'FROM ordenesdetrabajo AS ot ' +
                      '	INNER JOIN contratos AS c ' +
                      '		ON (ot.sContrato=c.sContrato) ' +
                      '	INNER JOIN bitacoradeactividades AS ba ' +
                      '		ON (ba.sContrato=c.sContrato AND ba.sNumeroOrden=ot.sNumeroOrden) ' +
                      '	INNER JOIN tiposdemovimiento AS tm ' +
                      '		ON (tm.sContrato= :ContratoBarco AND tm.sIdTipoMovimiento=ba.sIdTipoMovimiento AND tm.sClasificacion="Tarifa Diaria") ' +
                      'WHERE ' +
                      '	(c.sContrato= :Orden) ' +
                      '	AND ba.dIdFecha= :Fecha ' +
                      SQLExtra +
                      'GROUP BY ' +
                      '	ot.sContrato, ' +
                      '	ot.sNumeroorden');
    QryFolios.ParamByName('Orden').AsString := ReporteDiario.FieldByName('sOrden').AsString;
    QryFolios.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
    QryFolios.ParamByName('Fecha').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
    QryFolios.Open;

    //Pido los firmantes.
    rDiarioFirmas(Global_Contrato, reportediario.FieldByName('sNumeroOrden').AsString, reportediario.FieldByName('dIdFecha').AsDateTime, Self);
    {$ENDREGION}

    AplicarProrrateo := False;

    if Caratula then
    begin
      {$REGION 'CARATULA'}
        if sTipo = '04' then
         //   ReportePDF_MovimientosLogisticos2;

      {$ENDREGION}
    end;

    if Actividades then
    begin
      {$REGION 'ACTIVIDADES'}
        while Not QryFolios.Eof do
        begin
           //ReportePDF_ActividadesPorFolio(QryFolios.FieldByName('sNumeroOrden').AsString);
           QryFolios.Next;
        end;
        {$ENDREGION}
    end;

    if ResumenMaterial then
    begin
      {$REGION 'RESUMEN DE MATERIALES'}
        //ReportePDF_ResumenMaterial2;
      {$ENDREGION}
    end;

     if (BalanceGeneral) then
     begin
      {$REGION 'BALANCE GENERAL'}
        if sTipo = '04' then
           //ReportePDF_BalanceGeneral;
      {$ENDREGION}
    end;

    if Notas then
    begin
      {$REGION 'NOTAS'}
        //ReportePDF_NotasGenerales;
      {$ENDREGION}
    end;

    if (lista_personal) then
    begin
      {$REGION 'LISTADO DE PERSONAL'}
        if (sTipo = '04')  then
            //ReportePDF_Listadepersonal;
      {$ENDREGION}
    end;

    if (Diesel)  then
    begin
      {$REGION 'CONSUMO DE EQUIPOS'}
        if (sTipo = '04')  then
            //ReportePDF_ConsumosDiesel;
      {$ENDREGION}
    end;

    if ConcentradoEquipos then
    begin
      {$REGION 'CONCENTRADO DE EQUIPOS'}
        //ReportePDF_DistribucionDeEquipos2;
      {$ENDREGION}
    end;

    if ConcentradoPersonal then
    begin
      {$REGION 'CONCENTRADO DE PERSONAL'}
       // ReportePDF_ConcentradoDePersonal2;
      {$ENDREGION}
    end;

    if TotalPersonal then
    begin
      {$REGION 'TOTAL DE PERSONAL'}
        if (sTipo = '04')  then
          //  ReportePDF_TotalDePersonal2;
      {$ENDREGION}
    end;


    if (ConcentradoPernoctas) then
    begin
      {$REGION 'CONCENTRADO DE PERNOCTAS'}
      {$ENDREGION}
    end;

    if (ResumenRecursos) then
    begin
      {$REGION 'RESUMEN DE RECURSOS'}
        If (sTipo = '04')  then
           // ReportePDF_ResumenDeRecursos;
      {$ENDREGION}
    end;

  Finally

  End;
end;


Procedure TfrmDiarioTurno.FormatosExcel_EstablecerPropiedadesDeHoja(Excel, Hoja: Variant; PageZoom: Integer = 145);
Var
  Valor: Real;

  tmp,
  tmp2 : string;
begin
    sPuestoSupervisor := AnsiReplaceStr(sPuestoSupervisor, '\N', #10);
    sSupervisor       := AnsiReplaceStr(sSupervisor, '\N', #10);
    sPuestoSuperintendente := AnsiReplaceStr(sPuestoSuperintendente, '\N', #10);
    sSuperintendente       := AnsiReplaceStr(sSuperintendente, '\N', #10);
    //Hoja.PageSetup.LeftFooter  := '----------------------------'+#10+'&6'+ char(09)+ ' ' + char(09) + sSuperintendente + #10 + sPuestoSuperintendente;
    Hoja.PageSetup.LeftFooter  := AjustarCadena('____________________',22,false)+#10+ '&6'+ char(09)+
                                  AjustarCadena(sSuperintendente) + #10 +
                                  AjustarCadena(sPuestoSuperintendente);

    Hoja.PageSetup.RightFooter  := AjustarCadena('____________________',22,true)+#10+ '&6'+ char(09)+
                                  AjustarCadena(sSupervisorTierra) + #10 +
                                  AjustarCadena(sPuestoSupervisorTierra);

    //Hoja.PageSetup.RightFooter := '----------------------------       .'+#10+'&6'+ sSupervisor+ char(09)+ '           '+ char(09) + '.' + #10 + sPuestoSupervisor + char(09)+ '           '+ char(09) + '.';
end;

Procedure TfrmDiarioTurno.ReporteExcel_CabeceraVertical(Libro, Excel: Variant; iFila: Integer; RepetirEncabezado: Boolean = True; FilaFinal: Integer = 14);
Var
  TmpName: String;
  TempPath: String;
  Fs: TStream;
  Pic : TJpegImage;
  imgAux: TImage;
  dContrato_Inicio,
  dContrato_Final: TDateTime;
  QryEmbarcacion: TZquery;
  sDia : string;
begin

  Excel.Columns[ColumnaNombre(1)+':'+ColumnaNombre(55)].ColumnWidth := 1;
  {$REGION 'IMAGENES DE CABECERA'}
  {Imagen Izquierda}
  Try
    TmpName := '';
    imgAux := TImage.Create(nil);
    if TmpName='' then
    begin
        TempPath := ExtractFilePath(Application.Exename);
        TmpName:=TempPath +'ImgTempCIA.jpg';
        fs := Connection.configuracion.CreateBlobStream(Connection.configuracion.FieldByName('bImagen'), bmRead);
        If fs.Size > 1 Then
        Begin
           try
              Pic:=TJpegImage.Create;
              try
                Pic.LoadFromStream(fs);
                imgAux.Picture.Graphic := Pic;
              finally
                Pic.Free;
              end;
           finally
              fs.Free;
           End;
           imgAux.Picture.SaveToFile(TmpName);
        End;
    end;
  Finally
    imgAux.Free;
  End;
  Libro.Shapes.AddPicture(TmpName, True, True, 7, 2, 50, 30);    //
  {Imagen Derecha}
  Try
    TmpName := '';
    imgAux := TImage.Create(nil);
    if TmpName='' then begin
      TempPath := ExtractFilePath(Application.Exename);
      TmpName:=TempPath +'ImgTempCliente.jpg';
      fs := Connection.contrato.CreateBlobStream(Connection.contrato.FieldByName('bImagen'), bmRead);
      If fs.Size > 1 Then Begin
        try
          Pic:=TJpegImage.Create;
          try
            Pic.LoadFromStream(fs);
            imgAux.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          fs.Free;
        End;
        imgAux.Picture.SaveToFile(TmpName);
      End;
    end;
  Finally
    imgAux.Free;
  End;
  //Libro.Shapes.AddPicture(TmpName, True, True, 430, 2, 45, 33);
  Libro.Shapes.AddPicture(TmpName, True, True, 430, 2, 60, 31);
  {$ENDREGION}

  {$REGION 'INFORMACION DE CABECERA'}

  {DATOS DE CABECERA DEL REPORTE}
  Excel.Range['A2'].Select;
  Excel.Selection.Value := Connection.configuracion.FieldByName('sNombre').AsString;

  {Creacion y conexciones de obejtos}
  QryEmbarcacion:= TZQuery.Create(Self);
  QryEmbarcacion.Connection := Connection.zConnection;

  {Busqueda de la embarcacion}
  QryEmbarcacion.SQL.Add(  'SELECT em.sDescripcion,em.sContrato,	em.sIdEmbarcacion '+
            'FROM embarcacion_vigencia AS ev '+
            'INNER JOIN embarcaciones AS em ON (em.sIdEmbarcacion = ev.sIdEmbarcacion) '+
            'WHERE ev.sContrato = :Contrato and ev.dFechaInicio = (Select max(ev2.dfechainicio) '+
            'from embarcacion_vigencia ev2 where ev.sContrato = em.sContrato and ev2.dfechainicio <= :fecha)');
  QryEmbarcacion.ParamByName('Contrato').AsString := Global_Contrato_Barco;
  QryEmbarcacion.ParamByName('fecha').AsDateTime  := reportediario.FieldByName('didfecha').AsDateTime;
  QryEmbarcacion.Open;

  {Consulto los días de contrato y de vigencia}
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('SELECT ' +
              '	MIN(dFechaInicio) AS dInicioDeContrato, ' +
              '	MAX(dFechaFinal) AS dFinalDeContrato,   ' +
              '	DATEDIFF(MAX(dFechaFinal),MIN(dFechaInicio)) + 1 AS dDiasDeContrato, ' +
              '	DATEDIFF(MAX(dFechaFinal), :Hoy) + 1 AS dDiasRestantes,     ' +
              '	DATEDIFF(:Hoy, MIN(dFechaInicio)) + 1 AS dDiasTranscurridos ' +
              ' FROM convenios WHERE sContrato = :Orden');
  Connection.QryBusca.ParamByName('Hoy').AsDateTime  := Reportediario.FieldByName('dIdFecha').AsDateTime;
  connection.QryBusca.ParamByName('Orden').AsString  := ReporteDiario.FieldByName('sOrden').AsString;
  connection.QryBusca.Open;

  dContrato_Inicio := Connection.QryBusca.FieldByName('dInicioDeContrato').AsDateTime;
  dContrato_Final  := Connection.QryBusca.FieldByName('dFinalDeContrato').AsDateTime;

  {Consultar informacion del contraro principal}
  connection.QryBusca2.Active := False;
  connection.QryBusca2.SQL.Clear;
  connection.QryBusca2.SQL.Add('select c.sContrato, c.mDescripcion, con.sDescripcion, con.dFechaInicio, con.dFechaFinal '+
              'from contratos c '+
              'inner join convenios con on (c.sContrato = con.sContrato) '+
              'where con.sContrato = :contrato ');
  connection.QryBusca2.ParamByName('contrato').AsString  := connection.contrato.FieldByName('sCodigo').AsString;
  connection.QryBusca2.Open;

  {Insercion de Informacion al Excel}
  Excel.Range['J5'].Select;
  Excel.Selection.Value := QryEmbarcacion.FieldByName('sDescripcion').AsString;
  Excel.Range['J6'].Select;
  Excel.Selection.Value := Global_Contrato_Barco;
  Excel.Range['AJ5'].Select;
  Excel.Selection.Value := Connection.QryBusca.FieldByName('dDiasTranscurridos').AsString;
  Excel.Range['AJ6'].Select;
  Excel.Selection.Value := Connection.QryBusca.FieldByName('dDiasDeContrato').AsFloat - Connection.QryBusca.FieldByName('dDiasTranscurridos').AsFloat;
  Excel.Range['AT5'].Select;
  Excel.Selection.Value := reportediario.FieldByName('dIdFecha').AsDateTime;
  Excel.Range['AT6'].Select;
  Excel.Selection.Value := reportediario.FieldByName('dIdFecha').AsDateTime;
  sDia := excel.activeworkbook.activesheet.Cells[6, 46].text;
  sDia := UpperCase(sDia);
  Excel.Selection.Value := sDia;
  Excel.Range['J7'].Select;
  Excel.Selection.Value := connection.QryBusca2.FieldByName('mDescripcion').AsString;
  Excel.Range['J8'].Select;
  Excel.Selection.Value := Connection.contrato.FieldByName('mCliente').AsString;
  Excel.Range['AJ8'].Select;
  Excel.Selection.Value := Connection.contrato.FieldByName('sLabelContrato').AsString;

  {Destruye y conexciones de obejtos}
  QryEmbarcacion.Destroy;
  {$ENDREGION}

  if RepetirEncabezado then
    Excel.ActiveSheet.PageSetup.PrintTitleRows := '$1:$13';
end;

Procedure TfrmDiarioTurno.ReporteExcel_CabeceraHorizontal(Libro, Excel: Variant; iFila: Integer; RepetirEncabezado: Boolean = True; FilaFinal: Integer = 14);
Var
  TmpName, sDia: String;
  TempPath: String;
  Fs: TStream;
  Pic : TJpegImage;
  imgAux: TImage;
  dContrato_Inicio,
  dContrato_Final: TDateTime;
  QryCondiciones : TZQuery;
  QryEmbarcacion: TZquery;

begin
  
  {$REGION 'IMAGENES DE CABECERA'}
  //Imagen Izquierda
  Try
    TmpName := '';
    imgAux := TImage.Create(nil);
    if TmpName='' then
    begin
      TempPath := ExtractFilePath(Application.Exename);
      TmpName:=TempPath +'ImgTempCliente.jpg';
      fs := Connection.configuracion.CreateBlobStream(Connection.configuracion.FieldByName('bImagen'), bmRead); //QrDatos.CreateBlobStream(QrDatos.FieldByName('bImagenpep'), bmRead);
      If fs.Size > 1 Then Begin
        try
          Pic:=TJpegImage.Create;
          try
            Pic.LoadFromStream(fs);
            imgAux.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          fs.Free;
        End;
        imgAux.Picture.SaveToFile(TmpName);
      End;
    end;
  Finally
    imgAux.Free;
  End;
  Libro.Shapes.AddPicture(TmpName, True, True, 7, 7, 70, 35);
  //Imagen Derecha
  Try
    TmpName := '';
    imgAux := TImage.Create(nil);
    if TmpName='' then
    begin
      TempPath := ExtractFilePath(Application.Exename);
      TmpName:=TempPath +'ImgTempCIA.jpg';
      fs := Connection.contrato.CreateBlobStream(Connection.contrato.FieldByName('bImagen'), bmRead); //QrDatos.CreateBlobStream(QrDatos.FieldByName('bImagenpep'), bmRead);
      If fs.Size > 1 Then Begin
        try
          Pic:=TJpegImage.Create;
          try
            Pic.LoadFromStream(fs);
            imgAux.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          fs.Free;
        End;
        imgAux.Picture.SaveToFile(TmpName);
      End;
    end;
  Finally
    imgAux.Free;
  End;
  //Libro.Shapes.AddPicture(TmpName, True, True, 650, 7, 45, 33);  Abby
  Libro.Shapes.AddPicture(TmpName, True, True, 715, 7, 80, 38);

  //Texto de Cabecera

  Excel.Range['A2'].Select;
  Excel.Selection.Value := Connection.configuracion.FieldByName('sNombre').AsString;

  {$ENDREGION}

  iFila := 6;

  QryEmbarcacion:= TZQuery.Create(Self);
  QryEmbarcacion.Connection := Connection.zConnection;
  QryEmbarcacion.SQL.text:= 'SELECT em.sDescripcion,em.sContrato, em.sIdEmbarcacion, c.sTitulo, c.sLabelContrato '+
          'FROM embarcacion_vigencia AS ev INNER JOIN embarcaciones AS em '+
          'ON (em.sIdEmbarcacion = ev.sIdEmbarcacion) '+
          'INNER JOIN contratos c '+
          'ON (c.sContrato = ev.sContrato )'+
          'WHERE ev.sContrato = :Contrato and ev.dFechaInicio = (Select max(ev2.dfechainicio) '+
          'from embarcacion_vigencia ev2 where ev.sContrato = em.sContrato and ev2.dfechainicio <= :fecha)';
  QryEmbarcacion.ParamByName('Contrato').AsString := Global_Contrato_Barco;
  QryEmbarcacion.ParamByName('fecha').AsDateTime := reportediario.FieldByName('didfecha').AsDateTime;
  QryEmbarcacion.Open;

  Excel.Range['H5'].Select;
  Excel.Selection.Value := QryEmbarcacion.FieldByName('sDescripcion').AsString;
  Inc(iFila);

  Excel.Range['L7'].select;
  Excel.Selection.Value := connection.contrato.fieldbyname('mdescripcion').asstring;
                                                                           
  Excel.Range['AG9'].select;
  Excel.selection.value := connection.contrato.fieldbyname('sLabelContrato').AsString;

  Excel.Range['H9'].Select;
  Excel.Selection.Value := Connection.contrato.FieldByName('mCliente').AsString;
  Inc(iFila);

  Excel.Range['I11'].Select;
  Excel.Selection.Value := QryReporteDiario.FieldByName('sLocalizacion').AsString;
  Inc(iFila);

  //Consulto los días de contrato y de vigencia:
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add(' ' +
                              'SELECT ' +
                              ' sDescripcion, '+
                              ' MIN(dFechaInicio) AS dInicioDeContrato, ' +
                              ' MAX(dFechaFinal) AS dFinalDeContrato, ' +
                              ' DATEDIFF(MAX(dFechaFinal),MIN(dFechaInicio)) + 1 AS dDiasDeContrato, ' +
                              ' DATEDIFF(MAX(dFechaFinal), :Hoy) + 1 AS dDiasRestantes, ' +
                              ' DATEDIFF(:Hoy, MIN(dFechaInicio)) + 1 AS dDiasTranscurridos ' +
                              'FROM convenios ' +
                              'WHERE sContrato = :Orden');
  Connection.QryBusca.ParamByName('Hoy').AsDateTime := reportediario.FieldByName('dIdFecha').AsDateTime;
  connection.QryBusca.ParamByName('Orden').AsString  := ReporteDiario.FieldByName('sOrden').AsString;
  connection.QryBusca.Open;

  dContrato_Inicio := Connection.QryBusca.FieldByName('dInicioDeContrato').AsDateTime;
  dContrato_Final := Connection.QryBusca.FieldByName('dFinalDeContrato').AsDateTime;

  Excel.Range['AD5'].Select;
  Excel.Selection.Value := Connection.QryBusca.FieldByName('dDiasTranscurridos').AsFloat;

  Excel.Range['AD6'].Select;
  Excel.Selection.Value := Connection.QryBusca.FieldByName('dDiasDeContrato').AsFloat - Connection.QryBusca.FieldByName('dDiasTranscurridos').AsFloat;

  Excel.Range['H6'].select;
  Excel.Selection.Value := global_contrato_barco;
  
  QryCondiciones:=TZQuery.Create (Self);
  QryCondiciones.connection:= connection.zConnection;
  QryCondiciones.SQL.Clear;
  QryCondiciones.SQL.Add(' SELECT c.*, con.sDescripcion, con.sMedida, d.sDescripcion as direccion '+
                         ' FROM condicionesclimatologicas c  '+
                         ' inner join condiciones con on (con.iIdCondicion = c.iIdCondicion) '+
                         ' inner join direcciones d on (d.iIdDireccion = c.iIdDireccion) '+
                         ' WHERE sContrato = :Contrato AND dIdFecha = :Fecha');
  QryCondiciones.ParamByName('Fecha').AsDateTime  := ReporteDiario.Fieldbyname('dIdFecha').AsDateTime;
  QryCondiciones.ParamByName('Contrato').AsString := global_contrato_barco;
  QryCondiciones.Open;

  Excel.Range['AS5'].select;
  Excel.selection.Value := reportediario.FieldByName('dIdFecha').AsDateTime;

  Excel.Range['AS6'].Select;
  Excel.Selection.Value := reportediario.FieldByName('dIdFecha').AsDateTime;
  //Excel.Selection.NumberFormat := '[$-80A]dddd(angry)';
  sDia := excel.activeworkbook.activesheet.Cells[6, 45].text;
  sDia := UpperCase(sDia);
  Excel.Selection.Value := sDia;

  Excel.Range['AG10'].Select;
  Excel.Selection.Value := QryCondiciones.FieldByName('direccion').AsString + ' ' + QryCondiciones.FieldByName('sCantidad').AsString;
  
  QryCondiciones.Next;

  Excel.Range['I10'].select;
  Excel.Selection.Value := QryCondiciones.FieldByName('direccion').AsString + ' ' + QryCondiciones.FieldByName('sCantidad').AsString;

  Excel.Range['L1'].Select;

  if RepetirEncabezado then
    Excel.ActiveSheet.PageSetup.PrintTitleRows := '$1:$12';

  QryEmbarcacion.Destroy;
  QryCondiciones.Destroy;
end;

Procedure TfrmDiarioTurno.ReporteExcel_MovimientosLogisticos2(Excel: Variant; iFila: Integer);
Var
  sFolios: String;
  iFilaIniciaMovimientos,
  RowSize,
  RowSizeAux: Integer;
  QryProrrateoBarco,
  QryPersonal,
  QryAjuste : TZQuery;
  QryFactor : TZQuery;
  QryFolios : TZQuery;
  sProrrateoHorario: Double;
  totalFilas : Integer;

  zqMovimientos : TZReadOnlyQuery;
  qrFactor      : TZQuery;

  TotalFolios, CantPersonalFolio : double;

  //Variables para ajuste de Prorrateo
  iFilaAux : integer;
  sFolioFactor : string;

  //Solucion temporal
  LstMovtosEnc:TStringList;
  ObjMovBarco :TmovPartida;
  VarAux:string;
  IRaux,ICaux,x:Integer;

  movimientos : tstringlist;
  movimientoanterior : string;
  suma, sAux : double;

begin
  LstMovtosEnc:= TStringList.Create;

  Try
    iFila := 14;
    dPorcionDia := 0;

    qrFactor := TZQuery.Create(nil);
    qrFactor.Connection := connection.zConnection;


      {$REGION 'CONSULTA'}
        QryProrrateoBarco := TZQuery.Create(Self);
        QryProrrateoBarco.Connection := Connection.zConnection;
        QryProrrateoBarco.SQL.Text := '' +
                                      'SELECT ' +
                                      '  tm.sIdTipoMovimiento, ' +
                                      '  tm.sDescripcion, ' +
                                      '  tm.sTipo, ' +
                                      '  ( ' +
                                      '    SELECT ' +
                                      '      ifnull(SUM( me.sFactor ),0) ' +
                                      '    FROM movimientosdeembarcacion AS me ' +
                                      '    WHERE me.sContrato = tm.sContrato ' +
                                      '    AND me.sOrden = :Orden ' +
                                      '    AND me.dIdFecha = :Fecha ' +
                                      '    AND me.sIdFase = "OPER" ' +
                                      '    AND me.sClasificacion = tm.sIdTipoMovimiento ' +
                                      '  ) AS sFactor ' +
                                      'FROM tiposdemovimiento AS tm ' +
                                      'WHERE ' +
                                      '  tm.sContrato = :ContratoBarco ' +
                                      '  AND tm.sMedida = "DIA" ' +
                                      '  AND tm.sClasificacion = "Movimiento de Barco" ' +
                                      ';';
        QryProrrateoBarco.ParamByName('Fecha').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        QryProrrateoBarco.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
        QryProrrateoBarco.ParamByName('Orden').AsString := ReporteDiario.FieldByName('sOrden').AsString;
        QryProrrateoBarco.Open;
      {$ENDREGION}


      {$REGION 'DETALLES'}

        if QryProrrateoBarco.RecordCount > 0 then
        begin
          iFila := 15;
          while Not QryProrrateoBarco.Eof do
          begin
            excel.ActiveSheet.Rows[ifila].Insert;

            excel.Rows[inttostr(ifila+1)+':'+inttostr(ifila+1)].select;
            Excel.Selection.Copy;
            excel.Rows[inttostr(ifila)+':'+inttostr(ifila)].select;
            Excel.Selection.PasteSpecial;

            Excel.Range['B'+IntToStr(iFila)].Select;
            Excel.Selection.Value := QryProrrateoBarco.FieldByName('sIdTipoMovimiento').AsString;

            Excel.Range['I'+IntToStr(iFila)].Select;
            Excel.Selection.Value := QryProrrateoBarco.FieldByName('sDescripcion').AsString;

            Excel.Range['AN'+IntToStr(iFila)].Select;
            Excel.Selection.Value := QryProrrateoBarco.FieldByName('sFactor').AsString;
            Excel.Selection.NumberFormat := '0.000000';
            
            Inc(iFila);
            
            QryProrrateoBarco.Next;
          end;
          Excel.Rows[inttostr(ifila)+':'+inttostr(ifila)].select;
          Excel.Selection.Delete;

        end;
      {$ENDREGION}

    Inc(iFila);

    {$REGION 'MOVIMIENTOS DE BARCO'}

    zqMovimientos := TZReadOnlyQuery.Create(nil);
    zqMovimientos.Connection := connection.zconnection;

    with zqMovimientos do
    begin
      Active := False;
      SQL.Text := 'select me.shorainicio, me.shorafinal, concat(me.sHoraInicio, " - " ,  me.sHoraFinal) as sHorario, '+
                         'me.mDescripcion, tm.sIdTipoMovimiento , me.sClasificacion, ot.sIdFolio, '+
                         'me.sFactor, me.iiddiario, '+
                         'p.sIdPlataforma, p.sdescripcion '+
                  'from movimientosdeembarcacion me '+
                  'inner join tiposdemovimiento tm '+
                  'on (me.sContrato = tm.sContrato and me.sClasificacion = tm.sIdTipoMovimiento) '+
                  'inner join movimientosxfolios mf '+
                  'on (me.sContrato = mf.sContrato and me.iIdDiario = mf.iIdDiario) '+
                  'inner join ordenesdetrabajo ot '+
                  'on (ot.sContrato = mf.sNumeroOrden and mf.sFolio = ot.sIdFolio) '+
                  'inner join plataformas p '+
                  'on (p.sIdPlataforma = ot.sIdPlataforma) '+
                  'where me.sContrato = :contratoBarco '+
                  'and me.dIdFecha = :fecha '+
                  'and me.sClasificacion <> "" order by tm.sIdTipoMovimiento, me.shorainicio';
      ParamByName('contratoBarco').AsString := global_contrato_barco;
      ParamByName('fecha').AsString := IntToStr( YearOf( ReporteDiario.FieldByName('dIdFecha').AsDateTime ) )+'-'+
                                       IntTostr( MonthOf( ReporteDiario.FieldByName('dIdFecha').AsDateTime ) )+'-'+
                                       IntToStr( DayOf( ReporteDiario.FieldByName('dIdFecha').AsDateTime ) );
      Open;
    end;

    movimientos := tstringlist.Create;

    if zqMovimientos.RecordCount > 0 then
    begin
      with zqMovimientos do
      begin
        First;
        Inc(ifila, 2);
        movimientoanterior := fieldbyname('sIdTipoMovimiento').asstring;
        suma := 0;
        while not Eof do
        begin
          excel.ActiveSheet.Rows[ifila].Insert;

          excel.Rows[inttostr(ifila+1)+':'+inttostr(ifila+1)].select;
          Excel.Selection.Copy;
          excel.Rows[inttostr(ifila)+':'+inttostr(ifila)].select;
          Excel.Selection.PasteSpecial;

          excel.range['B'+inttostr(ifila)].select;
          excel.selection.value := FieldByName('sHorario').AsString;
          excel.range['I'+inttostr(ifila)].select;
          excel.selection.value := FieldByName('mDescripcion').AsString;
          excel.range['AN'+inttostr(ifila)].select;
          excel.selection.value := FieldByName('sIdTipoMovimiento').AsString;
          excel.range['AS'+inttostr(ifila)].select;
          excel.selection.value := FieldByName('sIdFolio').AsString;
          excel.range['BK'+inttostr(ifila)].select;
          excel.selection.value := fieldbyname('shorainicio').asstring;
          excel.range['BL'+inttostr(ifila)].select;
          excel.selection.value := fieldbyname('shorafinal').asstring;
          excel.range['BB'+inttostr(ifila)].select;
          excel.selection.formula := '=BL'+inttostr(ifila)+'-BK'+inttostr(ifila);
          sAux := excel.cells[ifila, 54].text;
          excel.selection.value := sAux;

          qrFactor.Active := False;
          qrFactor.SQL.Text := 'update movimientosdeembarcacion '+
                                'set sfactor = :factor '+
                                'where scontrato = :contratobarco '+
                                'and didfecha = :fecha '+
                                'and iiddiario = :diario '+
                                'and sclasificacion = :clasificacion '+
                                'and shorainicio = :inicio '+
                                'and sorden = :contrato';
          qrFactor.parambyname('factor').asstring := floattostr(sAux);
          qrFactor.parambyname('contratobarco').asstring := global_contrato_barco;
          qrFactor.parambyname('fecha').AsDate := reportediario.fieldbyname('didfecha').asdatetime;
          qrFactor.parambyname('diario').asinteger := fieldbyname('iiddiario').asinteger;
          qrFactor.parambyname('clasificacion').asstring := fieldbyname('sIdTipoMovimiento').asstring;
          qrFactor.parambyname('inicio').asstring := fieldbyname('shorainicio').asstring;
          qrFactor.parambyname('contrato').asstring := global_contrato;
          qrFactor.execsql;

          Excel.range['BK'+inttostr(ifila)].select;
          Excel.selection.value := '';
          Excel.range['BL'+inttostr(ifila)].select;
          Excel.selection.value := '';

          if fieldbyname('sIdTipoMovimiento').asstring = movimientoanterior then
          begin
            suma := suma + excel.cells[ifila, 54].text;
          end
          else
          begin
            movimientos.Add( floattostr( suma ) );
            suma := 0;
          end;

          Next;
          Inc(iFila);
          if eof and (movimientos.Count = 0) then
            movimientos.add( floattostr( suma ) );
        end;

        ifilaaux := 15;
        for x := 0 to movimientos.Count - 1 do
        begin
          excel.range['AN'+inttostr(ifilaaux)].select;
          excel.selection.value := movimientos[x];
          inc(ifilaaux);
        end;

        Excel.Rows[inttostr(ifila)+':'+inttostr(ifila)].select;
        Excel.Selection.Delete;
      end;
    end;

    with zqMovimientos do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select concat( me.sHoraInicio , " - ", me.sHoraFinal ) as sHorario, '+
                     'me.mDescripcion '+
              'from movimientosdeembarcacion me '+
              'where me.sContrato = :contratoBarco '+
              'and me.dIdFecha = :fecha '+
              'and me.sClasificacion = "" '+
              'order by me.sHoraInicio');
      ParamByName('contratoBarco').AsString := global_contrato_barco;
      ParamByName('fecha').AsDate := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
      Open;
    end;

    if zqMovimientos.RecordCount > 0 then
    begin
      with zqMovimientos do
      begin
        First;
        Inc(ifila, 3);
        while not Eof do
        begin
          excel.ActiveSheet.Rows[ifila].Insert;

          excel.Rows[inttostr(ifila+1)+':'+inttostr(ifila+1)].select;
          Excel.Selection.Copy;
          excel.Rows[inttostr(ifila)+':'+inttostr(ifila)].select;
          Excel.Selection.PasteSpecial;

          excel.range['B'+inttostr(ifila)].select;
          excel.selection.value := FieldByName('sHorario').AsString;
          excel.range['I'+inttostr(ifila)].select;
          excel.selection.value := FieldByName('mDescripcion').AsString;

          Next;
          Inc(ifila);
        end;

        Excel.Rows[inttostr(ifila)+':'+inttostr(ifila)].select;
        Excel.Selection.Delete;

      end;
    end;

    {$ENDREGION}

    {$REGION 'FIRMAS'}
    {if zqMovimientos.RecordCount = 0 then
    begin
       inc(iFila, 13);
       ReporteExcel_Firmantes(Excel, 'B', 'AN', iFila, iFila+1);
    end
    else
    begin
       inc(iFila, 7);
       ReporteExcel_Firmantes(Excel, 'B', 'AN', iFila, iFila+1);
    end;
    inc(iFila);]
    {$ENDREGION}
    
    zqMovimientos.Destroy;
    iFilaGlobal := iFila;

    excel.ActiveSheet.PageSetup.PrintArea := '$A:$BI';
  Finally
    QryProrrateoBarco.Free;
    qrFactor.Free;
  End;
end;

Procedure TfrmDiarioTurno.ReporteExcel_BalanceGeneral(Excel: Variant; iFila: Integer);
Var
  sFolios: String;

  iFilaIniciaMovimientos: Integer;

  dExistenciaAnteriorAux,
  dConsumoTotal,
  dConsumoSinEquipos,
  dRecibido,
  dConsumoCIA,
  dConsumoSDP,
  dConsumoCDP,
  dConsumoEquipos,
  dPrestamo,
  dProduccion : Real;

  lProducido, lTrasiego, lRecibido : Boolean;

  QryArribos,
  QryConsumos,
  QryCondiciones,
  QryEquipos,
  QryConsumoEmbarcaciones,
  QryProrrateoBarco: TZQuery;
  QrySinEquipos: TZQuery;
  QryProrratipo: TZQuery;
  QryOrdenamiento: TZQuery;

  ConsumosAnt: array[1..5,1..2] of double;
  indice,
  iFilaAnt : integer;
begin

  Try
    QryConsumoEmbarcaciones:= TZQuery.Create(Self);
    QryConsumoEmbarcaciones.Connection := Connection.zConnection;

    QryProrrateoBarco:= TZQuery.Create(Self);
    QryProrrateoBarco.Connection := Connection.zConnection;

    QryEquipos:= TZQuery.Create (Self);
    QryEquipos.connection:= Connection.zConnection;

    {$REGION 'FIRMAS'}

      //ReporteExcel_Firmantes(Excel, 'F', 'AF', 24, 25);

    {$ENDREGION}

    {$REGION 'CONSULTA DE EMBARCACIONES'}
    QryConsumoEmbarcaciones.Active := False;
    QryConsumoEmbarcaciones.SQL.Add('SELECT e.sContrato, r.sIdEmbarcacion, 	e.sDescripcion '+
                                    'FROM recursos AS r ' +
                                    'INNER JOIN embarcaciones AS e ON(e.sIdEmbarcacion = r.sIdEmbarcacion) ' +
                                    'WHERE r.dIdFecha = :Fecha GROUP BY r.sIdEmbarcacion order by e.sTipo, e.sIdEmbarcacion ');
    QryConsumoEmbarcaciones.Params.ParamByName('Fecha').AsDateTime := reportediario.FieldByName('dIdFecha').AsDateTime;
    QryConsumoEmbarcaciones.Open;
    {$ENDREGION}

    {$REGION 'CONSULTA DE APLICA O NO PRODUCIDO, TRAIEGO, RECIBIDO AGUA, DIESEL'}
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select * from recursosordenados_orden where dIdFecha =:Fecha ');
    connection.QryBusca.Params.ParamByName('Fecha').AsDate := reportediario.FieldValues['dIdFecha'];
    connection.QryBusca.Open;

    lProducido := False;
    lTrasiego  := False;
    lRecibido  := False;
    while not connection.QryBusca.Eof do
    begin
         if lProducido = False then
            if connection.QryBusca.FieldValues['lAplicaProducidoAgua'] = 'Si' then
               lProducido := True;

         if lTrasiego = False then
            if connection.QryBusca.FieldValues['lAplicaTrasiegoAgua'] = 'Si' then
               lTrasiego := True;

         if lRecibido = False then
            if connection.QryBusca.FieldValues['lAplicaRecibidoAgua'] = 'Si' then
               lRecibido := True;

         connection.QryBusca.Next;
    end;    
    {$ENDREGION}

    if QryConsumoEmbarcaciones.RecordCount > 0 then
    begin
  
        Excel.Selection.Value := QryConsumoEmbarcaciones.FieldByName('sDescripcion').AsString; 

        {$REGION 'CONSULTA DE CONSUMOS POR EMBARCACION'}
        QryOrdenamiento:=TZQuery.Create (Self);
        QryOrdenamiento.connection:= connection.zConnection;
        QryOrdenamiento.SQL.Clear;
        QryOrdenamiento.SQL.Add('select * from recursosordenados_orden where dIdFecha =:fecha order by iIdOrden ');
        QryOrdenamiento.ParamByName('Fecha').AsDateTime  := Reportediario.FieldByName('dIdFecha').AsDateTime;
        QryOrdenamiento.Open;
        {$ENDREGION}

        while not QryOrdenamiento.Eof do
        begin
            QryConsumoEmbarcaciones.First;
            iFila := 10;
            while Not QryConsumoEmbarcaciones.Eof do
            begin
                {$REGION 'CONSULTA DE CONSUMOS POR EMBARCACION'}
                QryConsumos:=TZQuery.Create (Self);
                QryConsumos.connection:= connection.zConnection;
                QryConsumos.SQL.Clear;
                QryConsumos.SQL.Add('SELECT re.iIdRecursoExistencia, re.lCombustible, re.sDescripcion, re.sMedida, r.dExistenciaAnterior, r.dRecibido, r.dPrestamos, r.dConsumo AS dConsumoReal, ' +
                                    'IFNULL(SUM(ce.dCantidad), 0) AS dConsumoEquipos, '+
                                    '(r.dConsumo - IFNULL(SUM(ce.dCantidad), 0)) AS dConsumo, r.dProduccion, ' +
                                    '(select sum(dCantidad) from consumosdecombustibleporequipo where dIdFecha =:Fecha) as dConsumoTotalEquipos '+
                                    'FROM  recursos AS r '+
                                    'INNER JOIN recursosdeexistencias AS re ON (re.iIdRecursoExistencia = r.iIdRecursoExistencia) ' +
                                    'LEFT JOIN consumosdecombustibleporequipo AS ce ON (ce.dIdFecha = r.dIdFecha AND ce.iIdTipoConsumo = r.iIdRecursoExistencia AND ce.sContrato = :Contrato) ' +
                                    'WHERE 	r.dIdFecha = :Fecha AND r.sIdEmbarcacion = :Embarcacion GROUP BY re.iIdRecursoExistencia ');
                QryConsumos.ParamByName('Contrato').AsString    := QryOrdenamiento.FieldByName('sOrden').AsString;
                QryConsumos.ParamByName('Embarcacion').AsString := QryConsumoEmbarcaciones.FieldByName('sIdEmbarcacion').AsString;
                QryConsumos.ParamByName('Fecha').AsDateTime     := Reportediario.FieldByName('dIdFecha').AsDateTime;
                QryConsumos.Open;
                {$ENDREGION}

                {$REGION 'IMPRESIÓN DE REGISTROS'}
                if iFila <> 10 then
                begin
                    Excel.Range['A'+ IntToStr(iFila + 3) +':'+'BC'+ IntToStr(iFila + 3)].Select;
                    Excel.Selection.Copy;
                    Excel.Range['A'+ IntToStr(iFila + 4) +':'+'BC'+ IntToStr(iFila + 4)].Select;
                    Excel.Selection.PasteSpecial;
                    Excel.ActiveSheet.Rows[ifila + 6].Insert;
                    Excel.Rows[intTostr(10)+':'+intTostr(14)].select;
                    Excel.Selection.Copy;
                    Excel.ActiveSheet.Rows[ifila + 1].Insert;
                    Excel.Rows[inttostr(iFila+1)+':'+inttostr(iFila+5)].select;
                    Excel.Selection.PasteSpecial;
                    Excel.Range['A'+ IntToStr(iFila + 1)].Select;
                    Excel.Selection.Value := QryConsumoEmbarcaciones.FieldByName('sDescripcion').AsString;
                    Excel.ActiveSheet.Rows[ifila + 6].Insert;
                    Excel.Rows[intTostr(iFila + 4)+':'+intTostr(iFila + 4)].select;
                    Excel.Selection.Copy;

                    Inc(ifila, 3);
                end
                else
                begin
                    Excel.Range['A'+ IntToStr(iFila)].Select;
                    Excel.Selection.Value := QryConsumoEmbarcaciones.FieldByName('sDescripcion').AsString;
                    inc(iFila, 2);
                end;

                if QryConsumos.RecordCount > 0 then
                begin
                    indice := 1;
                    while not QryConsumos.Eof do
                    begin
                        ConsumosAnt[indice, 1] := QryConsumos.FieldValues['iIdRecursoExistencia'];
                        inc(indice);
                        QryConsumos.Next;
                    end;

                    QryConsumos.First;
                    indice := 1;
                    while Not QryConsumos.Eof do
                    begin
                        dConsumoTotal := QryConsumos.FieldByName('dConsumoReal').AsFloat;
                        dConsumoTotal := RoundTo(dConsumoTotal, -3);
                        if QryConsumos.FieldValues['lCombustible'] = 'Si' then {Estos son recursos que son combustibles..}
                        begin
                           if QryOrdenamiento.FieldValues['lAplicaRecibidoDiesel'] = 'Si' then
                              dRecibido := QryConsumos.FieldByName('dRecibido').AsFloat
                           else
                              dRecibido := 0;
                        end
                        else
                        begin
                            dRecibido   := 0;
                            dProduccion := 0;
                            dPrestamo   := 0;
                            if QryOrdenamiento.FieldValues['lAplicaRecibidoAgua'] = 'Si' then
                               dRecibido := QryConsumos.FieldByName('dRecibido').AsFloat;

                            if QryOrdenamiento.FieldValues['lAplicaTrasiegoAgua'] = 'Si' then
                               dPrestamo := QryConsumos.FieldByName('dPrestamos').AsFloat;

                            if QryOrdenamiento.FieldValues['lAplicaProducidoAgua'] = 'Si' then
                               dProduccion := QryConsumos.FieldByName('dProduccion').AsFloat;
                        end;

                        if ConsumosAnt[indice, 1] = QryConsumos.FieldValues['iIdRecursoExistencia'] then
                           if ConsumosAnt[indice, 2] = 0 then
                              dExistenciaAnteriorAux := QryConsumos.FieldByName('dExistenciaAnterior').AsFloat
                           else
                              dExistenciaAnteriorAux := ConsumosAnt[indice, 2];

                        //Estos son los datos iniciales anterior, recibido y las descripciones..
                        if QryOrdenamiento.FieldValues['sOrden'] = Reportediario.FieldValues['sOrden'] then
                        begin
                            Excel.Range['A'+ IntToStr(iFila)].Select;
                            Excel.Selection.Value := QryConsumos.FieldByName('sDescripcion').AsString;
                            Excel.Range['H'+ IntToStr(iFila)].Select;                            
                            Excel.Selection.Value := QryConsumos.FieldByName('sMedida').AsString;
                            Excel.Range['L'+ IntToStr(iFila)].Select;                       
                            Excel.Selection.Value := dExistenciaAnteriorAux;
                        end;

                        {$REGION 'PRORRATEA LOS CONSUMOS DE EMBARCACION'}

                        {$REGION 'CONSULTA PRORRATEOS'}
                        QryProrrateoBarco.Connection := Connection.zConnection;
                        QryProrrateoBarco.SQL.Clear;
                        QryProrrateoBarco.SQL.Add('SELECT tm.sIdTipoMovimiento, tm.sDescripcion, tm.sTipo, '+
                                                  'IFNULL(( SELECT SUM( me.sFactor ) FROM movimientosdeembarcacion AS me ' +
                                                  'WHERE me.sContrato = tm.sContrato AND me.dIdFecha = :Fecha  AND me.sIdFase = "OPER" AND me.sClasificacion = tm.sIdTipoMovimiento ), 0.000000) AS sFactor ' +
                                                  'FROM tiposdemovimiento AS tm '+
                                                  'WHERE tm.sContrato = :ContratoBarco AND tm.sMedida = "DIA" AND tm.sClasificacion = "Movimiento de Barco" ');
                        QryProrrateoBarco.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                        QryProrrateoBarco.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
                        QryProrrateoBarco.Open;
                        {$ENDREGION}

                        if QryConsumos.FieldValues['lCombustible'] = 'Si' then
                           dConsumoSinEquipos := QryConsumos.FieldByName('dConsumoReal').AsFloat - QryConsumos.FieldByName('dConsumoTotalEquipos').AsFloat
                        else
                           dConsumoSinEquipos := QryConsumos.FieldByName('dConsumoReal').AsFloat;
                        dConsumoEquipos    := QryConsumos.FieldByName('dConsumoEquipos').AsFloat;

                         {$REGION 'CONSULTA MOVIMIENTOS POR OT'}
                        // Consulta Para sacar valores CIA, SDP, CDP  y aqui mismo se hace el guardado de valores
                        QryProrratipo := TZQuery.Create(Self);
                        QryProrratipo.Connection := Connection.zConnection;
                        QryProrratipo.SQL.Clear;
                        QryProrratipo.SQL.Add('SELECT tm.sIdTipoMovimiento, tm.sDescripcion, tm.sTipo, ' +
                                              ' (SELECT SUM( me.sFactor ) FROM movimientosdeembarcacion AS me '+
                                              '  WHERE me.sContrato = tm.sContrato AND me.sOrden = :Contrato AND me.dIdFecha = :Fecha '+
                                              '  AND me.sIdFase = "OPER" AND me.sClasificacion = tm.sIdTipoMovimiento) AS sFactor ' +
                                              'FROM tiposdemovimiento AS tm '+
                                              'WHERE tm.sContrato = :ContratoBarco AND tm.sMedida = "DIA" AND tm.sClasificacion = "Movimiento de Barco" ');
                        QryProrratipo.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
                        QryProrratipo.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
                        QryProrratipo.ParamByName('Contrato').AsString      := QryOrdenamiento.FieldByName('sOrden').AsString;
                        QryProrratipo.Open;
                        {$ENDREGION}

                        dConsumoCIA := 0;
                        dConsumoSDP := 0;
                        dConsumoCDP := 0;
                        QryProrratipo.First;
                        while Not QryProrratipo.Eof do
                        begin
                            if QryProrratipo.FieldByName('sTipo').AsString = 'CIA' then
                            begin
                                Try
                                   dConsumoCIA := (QryProrratipo.FieldByName('sFactor').AsFloat * dConsumoSinEquipos) ;
                                Except
                                End;
                            end;

                            if (QryProrratipo.FieldByName('sTipo').AsString = 'SDP') OR (QryProrratipo.FieldByName('sTipo').AsString = 'ESP') then
                            begin
                                Try
                                   dConsumoSDP := (QryProrratipo.FieldByName('sFactor').AsFloat * dConsumoSinEquipos);
                                Except
                                End;
                            end;

                            if (QryProrratipo.FieldByName('sTipo').AsString = 'CDP')
                                OR (QryProrratipo.FieldByName('sTipo').AsString = 'OPE')then
                            begin
                               Try
                                  dConsumoCDP := dConsumoCDP + (QryProrratipo.FieldByName('sFactor').AsFloat * dConsumoSinEquipos);
                               Except
                               End;
                            end;
                            QryProrratipo.Next;
                        end;
                       {$ENDREGION}

                        {$REGION 'IMPRESIÓN EN EXCEL'}
                        if QryOrdenamiento.FieldValues['sOrden'] = Reportediario.FieldValues['sOrden'] then
                        begin
                            //Esta condicion es cuando la OT no tiene movimientos de barco y solo se va a descontar los equipos JJF by ivan. 28 oct 2013
                             Excel.Range['T'+ IntToStr(iFila)].Select;
                            if (dConsumoCIA + dConsumoSDP + dConsumoCDP) = 0 then
                                Excel.Selection.Value := 0
                            else
                            begin
                                {Aqui prorratemos la cantidad de Agua recibida por el factor del barco. JJF by ivan 18 Nov 2013}
                                if lRecibido = False then
                                   dRecibido := (QryConsumos.FieldByName('dRecibido').AsFloat / 100) * (dPorcionDia * 100)
                                else
                                begin
                                    if QryOrdenamiento.FieldValues['lAplicaRecibidoAgua'] = 'Si' then
                                        dRecibido := QryConsumos.FieldByName('dRecibido').AsFloat
                                end;
                                Excel.Selection.Value := dRecibido;
                            end;
                            Excel.Range['AA'+ IntToStr(iFila)].Select;
                            Excel.Selection.Value := dProduccion;

                            Excel.Range['AH'+ IntToStr(iFila)].Select;
                            if (dConsumoCIA + dConsumoSDP + dConsumoCDP) = 0 then
                                Excel.Selection.Value := 0
                            else
                            begin
                                {Aqui prorratemos la cantidad de Agua producida por el factor del barco. JJF by ivan 18 Nov 2013}
                                if lTrasiego = False then
                                   dPrestamo := (QryConsumos.FieldByName('dPrestamos').AsFloat / 100) * (dPorcionDia * 100)
                                else
                                begin
                                    if QryOrdenamiento.FieldValues['lAplicaTrasiegoAgua'] = 'Si' then
                                       dPrestamo := QryConsumos.FieldByName('dPrestamos').AsFloat
                                end;
                                Excel.Selection.Value := dPrestamo;
                            end;

                            Excel.Range['AO'+ IntToStr(iFila)].Select;
                            if (dConsumoCIA + dConsumoSDP + dConsumoCDP) = 0 then
                               Excel.Selection.Formula := dExistenciaAnteriorAux - dConsumoEquipos
                            else
                               Excel.Selection.Value := dConsumoCDP + dConsumoCIA + dConsumoSDP;
                        end;

                        Excel.Range['AV'+ IntToStr(iFila)].Select;
                        if (dConsumoCIA + dConsumoSDP + dConsumoCDP) = 0 then
                            Excel.Selection.Value := dExistenciaAnteriorAux - dConsumoEquipos
                        else
                            Excel.Selection.Value := (dExistenciaAnteriorAux + dRecibido + dProduccion) - (dConsumoCIA + dConsumoSDP + dConsumoCDP + dConsumoEquipos + dPrestamo);

                        {Ahora llenamos el desgloce de consumo de diesel.}
                        if QryConsumos.FieldValues['lCombustible'] = 'Si' then
                        begin
                            Excel.Range['A'+ IntToStr(iFila + 7)].Select;
                            Excel.Selection.Value := QryConsumoEmbarcaciones.FieldByName('sDescripcion').AsString;
                            Excel.Range['T'+ IntToStr(iFila + 7)].Select;
                            Excel.Selection.Value := dConsumoCDP;
                            Excel.Range['AA'+ IntToStr(iFila + 7)].Select;
                            Excel.Selection.Value := dConsumoSDP;
                            Excel.Range['AH'+ IntToStr(iFila + 7)].Select;
                            Excel.Selection.Value := 0;
                            Excel.Range['AO'+ IntToStr(iFila + 7)].Select;
                            Excel.Selection.Value := dConsumoCIA;
                            Excel.Range['AV'+ IntToStr(iFila + 7)].Select;
                            Excel.Selection.Value := dConsumoCDP + dConsumoCIA + dConsumoSDP;
                        end;

                        {$ENDREGION}

                        Inc (indice);
                        Inc (iFila);

                        QryConsumos.Next;
                    end;
                end;
                {$ENDREGION}
                Inc(iFila);

                QryConsumoEmbarcaciones.Next;
            end;
            QryOrdenamiento.Next;
        end;
    end;
    Excel.Range['A'+ IntToStr(iFila)].Select;
    Excel.Selection.Copy;
    Excel.ActiveSheet.Rows[ifila].Insert;

    inc(iFila, 10)
    {$ENDREGION}

  Finally
    QryConsumoEmbarcaciones.Free;
    QryProrrateoBarco.Free;
    QryEquipos.Free;
  End;
  iFilaGlobal := iFila + 1;
end;

Procedure TfrmDiarioTurno.ReporteExcel_ActividadesPorFolio(Excel: Variant; iFila: Integer; sIdFolio: string);
Var
  QryInfoFolio,
  QryPartidas,
  QryDetallePartidas,
  QryConsultaAvanceAnterior,
  QryConsultaAvancesAcumulados,
  QryPersonal,
  QryEquipo,
  QryMateriales: TZQuery;

  Rango: Variant;
  iFilaClave: Integer;
  dDiaSiguiente: TDateTime;
  lInsertar, lSeleccionaP : boolean;
  iFilaInsertaP, iFilaInsertaE, iFilaIniciaPEQ, iFilaInsertaPAux, iTotalPartidas : integer;
begin
  Excel.Rows['13:14'].RowHeight := 9;
  iFila := 15;

    Try
      {Creacion de objetos de consulta}
      QryConsultaAvancesAcumulados := TZQuery.Create(Self);
      QryConsultaAvancesAcumulados.Connection := Connection.zConnection;
      QryConsultaAvanceAnterior := TZQuery.Create(Self);
      QryConsultaAvanceAnterior.Connection := connection.zConnection;
      QryInfoFolio := TZQuery.Create(Self);
      QryInfoFolio.Connection := Connection.zConnection;
      QryPersonal := TZQuery.Create(Self);
      QryPersonal.Connection := Connection.zConnection;
      QryEquipo := TZQuery.Create(Self);
      QryEquipo.Connection := Connection.zConnection;
      QryMateriales := TZQuery.Create(Self);
      QryMateriales.Connection := Connection.zConnection;

      {$REGION 'FIRMAS'}

       //ReporteExcel_Firmantes(Excel, 'F', 'AF', 36, 36);

      {$ENDREGION}

      {$REGION 'CABECERA DE CONTRATOS'}
        QryInfoFolio.SQL.Add( 'SELECT ' +
                              '	c.sContrato, ' +
                              ' c.sLabelContrato, ' +
                              '	c.mDescripcion AS sDescripcionContrato, ' +
                              '	ot.sNumeroOrden AS sFolio, ' +
                              '	ot.mDescripcion AS sDescripcionFolio, ' +
                              '	p.sDescripcion as plataforma ' +
                              'FROM contratos AS c ' +
                              '	INNER JOIN ordenesdetrabajo AS ot ' +
                              '		ON (ot.sNumeroOrden = :IdFolio AND ot.sContrato = c.sContrato) ' +
                              ' inner join plataformas p on (p.sIdPlataforma = ot.sIdPlataforma) '+
                              'WHERE c.sContrato = :Orden ');
        QryInfoFolio.ParamByName('Orden').AsString   := ReporteDiario.FieldByName('sOrden').AsString;
        QryInfoFolio.ParamByName('IdFolio').AsString := sIdFolio;
        QryInfoFolio.Open;

        QryConsultaAvanceAnterior.SQL.Clear;
        QryConsultaAvanceAnterior.SQL.Text := 'SELECT ROUND(AvancesAnteriores(:Fecha, :Orden, :Folio), 4) AS dAvanceAnterior;';
        QryConsultaAvanceAnterior.ParamByName('Fecha').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        QryConsultaAvanceAnterior.ParamByName('Orden').AsString   := ReporteDiario.FieldByName('sOrden').AsString;
        QryConsultaAvanceAnterior.ParamByName('Folio').AsString   := sIdFolio;
        QryConsultaAvanceAnterior.Open;

        Excel.Range['M12'].Select;
        Excel.Selection.Value := QryInfoFolio.FieldByName('sFolio').AsString;
        Excel.Range['AE12'].Select;
        Excel.Selection.Value := QryInfoFolio.FieldByName('plataforma').AsString;
        Excel.Range['D13'].Select;
        Excel.Selection.Value := QryInfoFolio.FieldByName('sDescripcionFolio').AsString;

        {$REGION 'AVANCES ANTERIOR, ACTUAL Y ACUMULADO}
        {Avances anteriores}
        QryConsultaAvanceAnterior.SQL.Clear;                                               //'yyyy-mm-dd'
        QryConsultaAvanceAnterior.SQL.Text := 'SELECT ROUND(AvancesAnteriores("'+FormatDateTime('yyyy-mm-dd', incday(ReporteDiario.FieldByName('dIdFecha').AsDateTime,-1))+'", :Orden, :Folio), 4) AS dAvanceAnterior;';
        QryConsultaAvanceAnterior.ParamByName('Orden').AsString := ReporteDiario.FieldByName('sOrden').AsString;
        QryConsultaAvanceAnterior.ParamByName('Folio').AsString := QryFolios.FieldByName('sNumeroOrden').AsString;
        QryConsultaAvanceAnterior.Open;

        {Avances Acumulados}
        QryConsultaAvancesAcumulados.SQL.Clear;
        dDiaSiguiente := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        //dDiaSiguiente := IncDay(dDiaSiguiente);
        QryConsultaAvancesAcumulados.SQL.Text := 'SELECT ROUND(AvancesAnteriores("'+FormatDateTime('yyyy-mm-dd', dDiaSiguiente)+'", :Orden, :Folio), 4) AS dAvanceAcumulado;';
        QryConsultaAvancesAcumulados.ParamByName('Orden').AsString := ReporteDiario.FieldByName('sOrden').AsString;
        QryConsultaAvancesAcumulados.ParamByName('Folio').AsString := QryFolios.FieldByName('sNumeroOrden').AsString;
        QryConsultaAvancesAcumulados.Open;

        Excel.Range['AR12'].Select;
        Excel.Selection.Value   := (QryConsultaAvanceAnterior.FieldByName('dAvanceAnterior').AsFloat ) * 100;
        Excel.Range['AV12'].Select;
        Excel.Selection.Formula := (QryConsultaAvancesAcumulados.FieldByName('dAvanceAcumulado').AsFloat - QryConsultaAvanceAnterior.FieldByName('dAvanceAnterior').AsFloat) * 100;
        Excel.Range['AZ12'].Select;
        Excel.Selection.Formula := (QryConsultaAvancesAcumulados.FieldByName('dAvanceAcumulado').AsFloat) * 100;

        {$ENDREGION}

        {$REGION 'CONSULTA - PARTIDAS REPORTADAS'}
        QryPartidas := TZQuery.Create(Self);
        QryPartidas.Connection := Connection.zConnection;
        QryPartidas.SQL.Add('' +
                            'SELECT ' +
                            '	a.sContrato, ' +
                            '	a.iIdDiario, ' +
                            '	a.sNumeroActividad, ' +
                            ' o.dPonderado, ' +
                            ' a.sWbs, '+
                            ' (SELECT ' +
                            '   SUM(dAvance) ' +
                            ' FROM bitacoradeactividades ' +
                            ' WHERE ' +
                            '   dIdFecha < a.dIdFecha ' +
                            '   AND sIdTipoMovimiento = "ED" ' +
                            '   AND sWbs = a.sWbs ' +
                            '   AND sContrato = a.sContrato ' +
                            '   AND sNumeroOrden = a.sNumeroOrden) AS dAvanceAnterior_GeneralPartida, ' +

                            ' (SELECT ' +
                            '   SUM(dAvance) ' +
                            ' FROM bitacoradeactividades ' +
                            ' WHERE ' +
                            '   dIdFecha = a.dIdFecha ' +
                            '   AND sIdTipoMovimiento = "ED" ' +
                            '   AND sWbs = a.sWbs ' +
                            '   AND sContrato = a.sContrato ' +
                            '   AND sNumeroOrden = a.sNumeroOrden) AS dAvanceActual_GeneralPartida, ' +

                            '	CONCAT(a.sHoraInicio,"-",a.sHoraFinal)  AS Horario, ' +
                            '	a.sIdClasificacion, ' +
                            '	a.sHoraInicio, ' +
                            '	a.sHorafinal, ' +
                            '	o.mdescripcion as sDescripcionActividad ' +
                            'FROM bitacoradeactividades a ' +
                            'INNER JOIN actividadesxorden o ' +
                            '		ON (o.sContrato = a.sContrato AND o.sIdConvenio = :Convenio AND o.sNumeroOrden = a.sNumeroOrden AND a.sWbs = o.sWbs AND o.sNumeroActividad = a.sNumeroActividad AND o.sTipoActividad = "Actividad") ' +
                            'WHERE a.sContrato = :Orden AND a.dIdFecha = :Fecha AND a.sNumeroOrden = :Folio AND a.sIdTurno = :Turno AND a.sIdTipoMovimiento = "ED" ' +
                            'GROUP BY ' +
                            '	a.sNumeroActividad ' +
                            'ORDER BY ' +
                            '	a.sContrato, ' +
                            ' o.iItemOrden, ' +
                            '	a.sNumeroActividad, ' +
                            '	a.sHoraInicio ');
        QryPartidas.ParamByName('Convenio').AsString := ReporteDiario.FieldByName('sIdConvenio').AsString;
        QryPartidas.ParamByName('Orden').AsString := ReporteDiario.FieldByName('sOrden').AsString;
        QryPartidas.ParamByName('Fecha').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        QryPartidas.ParamByName('Folio').AsString := sIdFolio;
        QryPartidas.ParamByName('Turno').AsString := ReporteDiario.FieldByName('sIdTurno').AsString;
        QryPartidas.Open;
      {$ENDREGION}
        iFila := iFilaGlobal;
        lSeleccionaP := False;
        while Not QryPartidas.Eof do
        begin
            if iFila > 15 then
            begin
                Excel.Rows[inttostr(14)+':'+inttostr(17)].select;
                Excel.Selection.Copy;
                Excel.ActiveSheet.Rows[ifila + 1].Insert;
                Excel.Rows[inttostr(iFila+1)+':'+inttostr(iFila+3)].select;
                Excel.Selection.PasteSpecial;
                inc(iFila,4);
            end
            else
                inc(iFila,2);

            Excel.Range['A'+ IntToStr(iFila)].Select;
            Excel.Selection.Value := QryInfoFolio.FieldByName('sFolio').AsString + ' ' +QryPartidas.FieldByName('sNumeroActividad').AsString;
            Excel.Range['K'+ IntToStr(iFila)].Select;
            Excel.Selection.Value := QryPartidas.FieldByName('sDescripcionActividad').AsString;
            Excel.Range['AR'+ IntToStr(iFila)].Select;
            Excel.Selection.Value := (QryPartidas.FieldByName('dAvanceAnterior_GeneralPartida').AsFloat ) * 100;
            Excel.Range['AV'+ IntToStr(iFila)].Select;
            Excel.Selection.Value := (QryPartidas.FieldByName('dAvanceActual_GeneralPartida').AsFloat) * 100;
            Excel.Range['AZ'+ IntToStr(iFila)].Select;
            Excel.Selection.Value := (QryPartidas.FieldByName('dAvanceAnterior_GeneralPartida').AsFloat + QryPartidas.FieldByName('dAvanceActual_GeneralPartida').AsFloat) * 100;

            {$REGION 'CONSULTA - DETALLE DE PARTIDAS'}
            QryDetallePartidas := TZQuery.Create(Self);
            QryDetallePartidas.Connection := Connection.zConnection;
            QryDetallePartidas.SQL.Add(     'SELECT ' +
                                            '	b.dIdFecha, ' +
                                            '	b.sIdClasificacion, ' +
                                            ' b.sHoraInicio, ' + 
                                            '	b.sHoraFinal, '+
                                            ' b.iIdDiario, '+
                                            '	( ' +
                                            '		SELECT ' +
                                            '			(ifnull(sum(ba.dAvance), 0)) ' +
                                            '		FROM ' +
                                            '			bitacoradeactividades AS ba ' +
                                            '		WHERE ' +
                                            '			ba.sContrato = b.sContrato ' +
                                            '		AND ba.sNumeroOrden = b.sNumeroOrden ' +
                                            '		AND ba.sIdTipoMovimiento = b.sIdTipoMovimiento ' +
                                            '		AND ba.swbs = b.swbs ' +
                                            '		AND ba.sNumeroActividad = b.sNumeroActividad ' +
                                            '		AND ( ' +
                                            '			ba.didfecha < b.didfecha ' +
                                            '			OR ( ' +
                                            '				ba.didfecha = b.didfecha ' +
                                            '				AND cast(ba.sHoraInicio AS Time) < cast(b.sHoraInicio AS Time) ' +
                                            '			) ' +
                                            '		) ' +
                                            '	) AS dAvanceAnterior, ' +
                                            '	b.dAvance, ' +
                                            ' b.mDescripcion AS descAct ' +
                                            'FROM ' +
                                            '	bitacoradeactividades b ' +
                                            'INNER JOIN tiposdemovimiento tm ON ( ' +
                                            '	tm.sContrato = :ContratoBarco ' +
                                            '	AND tm.sIdTipoMovimiento = b.sIdClasificacion ' +
                                            ') ' +
                                            'WHERE ' +
                                            '	b.sContrato = :Orden ' +
                                            'AND b.sNumeroOrden = :Folio ' +
                                            'AND b.sIdTipoMovimiento = "ED" ' +
                                            'AND b.sNumeroActividad = :Actividad ' +
                                            'AND dIdFecha = :Fecha ' +
                                            'AND lImprime = "Si" ' +
                                            'ORDER BY ' +
                                            '	b.didFecha, ' +
                                            '	Time(sHoraInicio) ');
            QryDetallePartidas.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
            QryDetallePartidas.ParamByName('Orden').AsString         := ReporteDiario.FieldByName('sOrden').AsString;
            QryDetallePartidas.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
            QryDetallePartidas.ParamByName('Folio').AsString         := sIdFolio;
            QryDetallePartidas.ParamByName('Actividad').AsString     := QryPartidas.FieldByName('sNumeroActividad').AsString;
            QryDetallePartidas.Open;
            {$ENDREGION}

            {$REGION 'INSERCIÓN DE DATOS'}
            Inc(iFila,2);
            iTotalPartidas := 0;
            while Not QryDetallePartidas.Eof do
            begin
                Excel.Rows[inttostr(19)+':'+inttostr(21)].select;
                Excel.Selection.Copy;
                if iTotalPartidas > 0 then
                   Inc(iFila);
                Excel.ActiveSheet.Rows[ifila].Insert;
                Excel.Rows[inttostr(iFila)+':'+inttostr(iFila + 2)].select;
                Excel.Selection.PasteSpecial;

                Inc(iFila,2);
                Excel.Range['A'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryDetallePartidas.FieldByName('sHoraInicio').AsString;
                Excel.Range['D'+IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryDetallePartidas.FieldByName('sHoraFinal').AsString;
                Excel.Range['A'+IntToSTr(iFila -2)].Select;
                Excel.Selection.Value := QryDetallePartidas.FieldByName('sHoraFinal').AsString;
                Excel.Range['K'+IntToSTr(iFila)].Select;
                Excel.Selection.Value := Trim(QryDetallePartidas.FieldByName('descAct').AsString);

                Inc(iFila);
                Inc(iTotalPartidas);
                QryDetallePartidas.Next;
            end;
            {$ENDREGION}

            {$REGION 'PERSONAL X HORARIOS'}
            {Ahora insertamos el personal..}
            QryPersonal.SQL.Clear;
            QryPersonal.SQL.Add('select * from bitacoradepersonal where sContrato =:Orden '+
                                'and dIdFecha =:fecha and iIdDiario = :Id');
            QryPersonal.ParamByName('Fecha').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
            QryPersonal.ParamByName('Orden').AsString   := ReporteDiario.FieldByName('sOrden').AsString;
            QryPersonal.ParamByName('Id').AsInteger     := QryPartidas.FieldValues['iIdDiario'];
            QryPersonal.Open;

            lInsertar := False;
            if QryPersonal.RecordCount > 0 then
            begin
                Inc(iFila);
                if lSeleccionaP = False then
                   Excel.Rows[inttostr(iFila + 4)+':'+inttostr(iFila + 7)].select
                else
                begin
                   Excel.Rows[inttostr(iFila + 1)+':'+inttostr(iFila + 4)].select;
                   Excel.Rows[IntToStr(iFila + 1)+':'+ InttoStr(iFila + 1)].RowHeight := 4.5;
                end;
                Excel.Selection.Copy;
                Excel.ActiveSheet.Rows[ifila].Insert;
                Excel.Rows[inttostr(iFila)+':'+inttostr(iFila + 4)].select;
                Excel.Selection.PasteSpecial;
                Excel.Rows[IntToStr(iFila + 1)+':'+ InttoStr(iFila + 2)].RowHeight := 7.5;
                inc(iFila, 3);
                iFilaIniciaPEQ := iFila;
            end;

            iFilaInsertaP := 0;
            {P E R S O N A L...}
            while not QryPersonal.Eof do
            begin
                if lInsertar then
                begin
                    Excel.Rows[IntToStr(iFila)+':'+ InttoStr(iFila)].RowHeight := 7.5;
                    Excel.Range['A'+ IntToStr(ifila+1) +':'+ 'AB'+ IntToStr(iFila+1)].Select;
                    Excel.Selection.Insert;
                    Excel.Range['A'+ IntToStr(iFila)   +':'+ 'AB'+ IntToStr(iFila)].select;
                    Excel.Selection.Copy;
                    Excel.Range['A'+ IntToStr(iFila+ 1)+':'+ 'AB'+ IntToStr(iFila+1)].select;
                    Excel.Selection.PasteSpecial;
                    inc(iFilaInsertaP);
                    inc(iFila);
                    Excel.Range['A'+ IntToStr(iFila+ 1)+':'+ 'BC'+ IntToStr(iFila+1)].select;
                    Excel.Rows[IntToStr(iFila+1)+':'+ InttoStr(iFila+1)].RowHeight := 7.5;
                    Excel.Selection.Insert;
                end
                else
                begin
                    if lSeleccionaP = False then
                    begin
                        Excel.Range['A'+ IntToStr(iFila+ 2)+':'+ 'BD'+ IntToStr(iFila+4)].Select;
                        Excel.Selection.Delete;
                        lSeleccionaP := True;
                    end;
                end;

                lInsertar := True;
                Excel.Range['A'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryPersonal.FieldByName('sHoraInicio').AsString;
                Excel.Range['C'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryPersonal.FieldByName('sHoraFinal').AsString;
                Excel.Range['E'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryPersonal.FieldByName('sIdPersonal').AsString;
                Excel.Range['H'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryPersonal.FieldByName('dCantidad').AsFloat;
                Excel.Range['J'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryPersonal.FieldByName('dCantHH').AsFloat;
                Excel.Range['M'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryPersonal.FieldByName('sDescripcion').AsString;

                QryPersonal.Next;
            end;
            if iFilaInsertaP > 0 then
            begin
                Excel.Range['A'+ IntToStr(iFila+ 3)+':'+ 'AB'+ IntToStr(iFila+iFilaInsertaP + 2)].Select;
                Excel.Selection.Delete;
            end
            else
            begin
                if QryPersonal.RecordCount > 1 then
                begin
                    Excel.Range['A'+ IntToStr(iFila+ 2)+':'+ 'BC'+ IntToStr(iFila+ 2)].Select;
                    Excel.Selection.Delete;
                end;
            end;
            {$ENDREGION}

            {$REGION 'EQUIPO X HORARIOS'}
            {Ahora insertamos el equipo..}
            QryEquipo.SQL.Clear;
            QryEquipo.SQL.Add('select * from bitacoradeequipos where sContrato =:Orden '+
                              'and dIdFecha =:fecha and iIdDiario = :Id');
            QryEquipo.ParamByName('Fecha').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
            QryEquipo.ParamByName('Orden').AsString   := ReporteDiario.FieldByName('sOrden').AsString;
            QryEquipo.ParamByName('Id').AsInteger     := QryPartidas.FieldValues['iIdDiario'];
            QryEquipo.Open;

            lInsertar := False;
            iFilaInsertaE := 0;
            if QryPersonal.RecordCount > 0 then
               if iFilaIniciaPEQ > 0 then
                  iFila := iFilaIniciaPEQ;
            {E Q U I P O...}
            while not QryEquipo.Eof do
            begin
                if lInsertar then
                begin
                    if iFilaInsertaE > iFilaInsertaP then
                    begin
                        Excel.Rows[IntToStr(iFila)+':'+ InttoStr(iFila)].RowHeight := 7.5;
                        Excel.Range['AC'+ IntToStr(ifila+1) +':'+ 'BC'+ IntToStr(iFila+1)].Select;
                        Excel.Selection.Insert;  
                    end;
                    Excel.Range['AC'+ IntToStr(iFila)   +':'+ 'BC'+ IntToStr(iFila)].select;
                    Excel.Selection.Copy;
                    Excel.Range['AC'+ IntToStr(iFila+ 1)+':'+ 'BC'+ IntToStr(iFila+1)].select;
                    Excel.Selection.PasteSpecial;
                    inc(iFila);
                    inc(iFilaInsertaE);
                    Excel.Range['AC'+ IntToStr(iFila+ 1)+':'+ 'BC'+ IntToStr(iFila+1)].select;
                    Excel.Rows[IntToStr(iFila+1)+':'+ InttoStr(iFila+1)].RowHeight := 7.5;

                    if iFilaInsertaE > iFilaInsertaP then
                    begin
                        Excel.Range['A'+ IntToStr(ifila) +':'+ 'AB'+ IntToStr(iFila)].Select;
                        Excel.Selection.Insert;
                        inc(iFilaInsertaPAux);
                    end;
                end;

                lInsertar := True;
                Excel.Range['AC'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryEquipo.FieldByName('sHoraInicio').AsString;
                Excel.Range['AE'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryEquipo.FieldByName('sHoraFinal').AsString;
                Excel.Range['AG'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryEquipo.FieldByName('sIdEquipo').AsString;
                Excel.Range['AJ'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryEquipo.FieldByName('dCantidad').AsFloat;
                Excel.Range['AL'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryEquipo.FieldByName('dCantHH').AsFloat;
                Excel.Range['AO'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryEquipo.FieldByName('sDescripcion').AsString;

                QryEquipo.Next;
            end;

            if iFilaInsertaPAux  > 0 then
            begin
                Excel.Rows[IntToStr(iFila)+':'+ InttoStr(iFila)].RowHeight := 7.5;
                Excel.Range['AC'+ IntToStr(ifila+1) +':'+ 'BC'+ IntToStr(iFila+1)].Select;
                Excel.Selection.Insert;
                iFilaInsertaPAux := 0;
            end;
            if iFilaInsertaE < iFilaInsertaP  then
               iFila := iFilaIniciaPEQ + iFilaInsertaP;
            {$ENDREGION}

            {$REGION 'MATERIAL X PARTIDA'}
            {Ahora insertamos el material..}
            QryMateriales.SQL.Clear;
            QryMateriales.SQL.Add('select b.sIdInsumo, s.sNumeroOrden, s.sNumeroActividad, b.sTrazabilidad, i.mDescripcion, i.sMedida, sum(b.dCantidad) as dCantidad, i.sIdProveedor from almacen_salida s '+
                              'inner join bitacoradesalida b '+
                              'on(b.sContrato = s.sContrato and b.iFolioSalida = s.iFolioSalida and b.sext = s.sext) '+
                              'inner join insumos i '+
                              'on (i.sContrato =:Contrato and i.sIdInsumo = b.sIdInsumo and i.sTrazabilidad = b.sTrazabilidad ) '+
                              'where s.sContrato =:orden and b.dFechaSalida =:fecha and b.sNumeroActividad =:actividad '+
                              'group by b.sNumeroOrden, b.sNumeroActividad, b.sIdInsumo, b.sTrazabilidad Order by b.sNumeroOrden, b.sNumeroActividad, b.sTrazabilidad');
            QryMateriales.ParamByName('Fecha').AsDateTime   := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
            QryMateriales.ParamByName('Orden').AsString     := ReporteDiario.FieldByName('sOrden').AsString;
            QryMateriales.ParamByName('actividad').AsString := QryPartidas.FieldValues['sNumeroActividad'];
            QryMateriales.ParamByName('Contrato').AsString  := global_Contrato_Barco;
            QryMateriales.Open;

            lInsertar := False;
            if QryMateriales.RecordCount > 0 then
            begin
                Inc(iFila);                             
                Excel.Rows[inttostr(iFila + 6)+':'+inttostr(iFila + 8)].select;
                Excel.Selection.Copy;
                Excel.ActiveSheet.Rows[ifila].Insert;
                Excel.Rows[IntToStr(iFila)+':'+ InttoStr(iFila + 2)].RowHeight := 7.5;
                Excel.Range['S'+ IntToStr(iFila+ 1)+':'+ 'BC'+ IntToStr(iFila+1)].select;
                Excel.Selection.MergeCells := True;
                Excel.Range['S'+ IntToStr(iFila+ 2)+':'+ 'BC'+ IntToStr(iFila+2)].select;
                Excel.Selection.MergeCells := True;
                inc(iFila, 2);
            end;            

            {M A T E R I A L...}
            while not QryMateriales.Eof do
            begin
                if lInsertar then
                begin
                    Excel.Rows[IntToStr(iFila)+':'+ InttoStr(iFila)].RowHeight := 7.5;
                    Excel.Range['A'+ IntToStr(ifila+1) +':'+ 'BC'+ IntToStr(iFila+1)].Select;
                    Excel.Selection.Insert;                       
                    Excel.Range['A'+ IntToStr(iFila)   +':'+ 'BC'+ IntToStr(iFila)].select;
                    Excel.Selection.Copy;
                    Excel.Range['A'+ IntToStr(iFila+ 1)+':'+ 'BC'+ IntToStr(iFila+1)].select;
                    Excel.Selection.PasteSpecial;
                    inc(iFila);
                end;

                lInsertar := True;
                Excel.Range['A'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryMateriales.FieldByName('sTrazabilidad').AsString;
                Excel.Range['F'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryMateriales.FieldByName('dCantidad').AsFloat;
                Excel.Range['J'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryMateriales.FieldByName('sMedida').AsString;
                Excel.Range['N'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryMateriales.FieldByName('sIdProveedor').AsString;
                Excel.Range['S'+ IntToSTr(iFila)].Select;
                Excel.Selection.Value := QryMateriales.FieldByName('mDescripcion').AsString;

                QryMateriales.Next;
            end;

            {$ENDREGION}

           QryPartidas.Next;
        end;

        Inc(iFila, 3);

//        Excel.Range['A'+ IntToStr(iFila)+':'+ 'BC'+ IntToStr(iFila+9)].Select;
//        Excel.Selection.Delete;
//        Inc(iFila, 4);

    {$ENDREGION}
    Finally
      iFilaGlobal := iFila;
      QryInfoFolio.Free;
      QryPartidas.Free;
      QryDetallePartidas.Free;
    End;

end;

Procedure TfrmDiarioTurno.ReporteExcel_NotasGenerales(Excel: Variant; iFila: Integer);
Var
  QryNotas: TZQuery;
  QryNotasGenerales: TZQuery;
  QryFoliosConNotas: TZQuery;
  iNotaConsecutiva: Integer;
  NotaGeneral, FechaCompleta: String;
begin
  iFila := 15;
  iNotaConsecutiva := 1;

  {$REGION 'NOTAS'}
  Try

    QryNotas := TZQuery.Create(Self);
    QryNotas.Connection := Connection.zConnection;
    QryFoliosConNotas := TZQuery.Create(Self);
    QryFoliosConNotas.Connection := Connection.zConnection;
    QryNotasGenerales := TZQuery.Create(Self);
    QryNotasGenerales.Connection := Connection.zConnection;

    {$REGION 'FIRMAS'}

     //ReporteExcel_Firmantes(Excel, 'F', 'AF', 25, 26);

    {$ENDREGION}

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select sLabelContrato from contratos where sContrato =:Orden');
    connection.zCommand.ParamByName('Orden').AsString := reportediario.FieldValues['sOrden'];
    connection.zCommand.Open;

    QryNotasGenerales.SQL.Add('SELECT * FROM notas_generales WHERE sContrato = :Orden AND dIdFecha = :Fecha ORDER BY iOrden ASC');
    QryNotasGenerales.ParamByName('Orden').AsString := ReporteDiario.FieldByName('sOrden').AsString;
    QryNotasGenerales.ParamByName('Fecha').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
    QryNotasGenerales.Open;

    iFila := 11;
    Excel.Range['B'+ IntToStr(iFila)].Select;
    Excel.Selection.Value := connection.zCommand.FieldValues['sLabelContrato'];
    inc(iFila, 2);
    while Not QryNotasGenerales.Eof do
    begin
        NotaGeneral := AnsiReplaceStr(QryNotasGenerales.FieldByName('sNotaGeneral').AsString, '$FECHA', FechaCompleta);
        Excel.Range['B'+ IntToStr(iFila)+':'+'BB'+ IntToStr(iFila)].Select;
        Excel.Selection.Value := NotaGeneral;
        Excel.ActiveSheet.Rows[ifila + 1].Insert;
        Excel.Range['B'+ IntToStr(iFila)+':'+'BB'+ IntToStr(iFila)].Select;
        AjustarFila(Excel);

        Inc(iFila);
        QryNotasGenerales.Next;
    end;

    QryFolios.First;

    QryFoliosConNotas.Active := False;
    QryFoliosConNotas.SQL.Text := 'SELECT ba.sContrato, ba.iIdDiario, ba.dIdFecha, '+
                                  'ba.sHoraInicio, ba.sHoraFinal, ba.sNumeroOrden, '+
                                  'ba.mDescripcion, ot.mComentarios '+
                                  'FROM bitacoradeactividades ba '+
                                  'inner join ordenesdetrabajo ot '+
                                  'on (ot.sContrato = ba.sContrato and ot.sNumeroOrden = ba.sNumeroOrden) '+
                                  'WHERE ba.dIdFecha = :Fecha '+
                                  'AND ba.sContrato = :Orden '+
                                  'AND (ba.sIdTipoMovimiento in ("NG","S")) '+
                                  'AND ba.lImprime = "Si" '+
                                  'ORDER BY ba.sNumeroOrden ASC, ba.didfecha,ba.sHoraInicio,ba.iIdDiario ';
    QryFoliosConNotas.Params.ParamByName('Fecha').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
    QryFoliosConNotas.Params.ParamByName('Orden').AsString   := ReporteDiario.FieldByName('sOrden').AsString;
    QryFoliosConNotas.Open;

    while Not QryFoliosConNotas.Eof do
    begin
        NotaGeneral := AnsiReplaceStr(QryFoliosConNotas.FieldByName('mDescripcion').AsString, '$FECHA', FechaCompleta);
        Excel.Range['B'+ IntToStr(iFila)+':'+'BB'+ IntToStr(iFila)].Select;
        Excel.Selection.Value := NotaGeneral;
        Excel.ActiveSheet.Rows[ifila + 1].Insert;
        Excel.Range['B'+ IntToStr(iFila)+':'+'BB'+ IntToStr(iFila)].Select;
        AjustarFila(Excel);

        Inc(iFila);
        QryFoliosConNotas.Next;
    end;

  Finally

    QryNotas.Free;
    QryNotasGenerales.Free;
  End;
  inc(iFila,4);
  {$ENDREGION}
  iFilaGlobal := iFila;
end;

Procedure TfrmDiarioTurno.ReporteExcel_TotalDePersonal2(Excel: Variant; iFila: Integer);
Var
  QryTotalPersonal,
  QryPersonalDetallado: TZQuery;
  FilaInicial, iFilaAux, iFilaFinalTotal: Integer;
  QryAbordo: TZQuery;

  LstTipoPersonal:TStringList;
  TPersonal:TPersTotal;
  Obji,Columna,Fila:Integer;


  //
  qrCategorias,
  qrPersonal, qrPersonal2, qrNotas : TZReadOnlyQuery;
  iFilaAux1, iRows, iTables : Integer;
  sSQLMoe, sSQLPersonal : string;
  sTablasVacias : TStringList;
  x: TObject;
  iSubtotal : Double;

begin
    LstTipoPersonal := TStringList.Create;
    sTablasVacias := TStringList.Create;
    iFila := 10;

    qrCategorias := TZReadOnlyQuery.Create(nil);
    qrCategorias.Connection := connection.zconnection;
    qrPersonal := TZReadOnlyQuery.Create(nil);
    qrPersonal.connection := connection.zconnection;
    qrPersonal2 := TZReadOnlyQuery.Create(nil);
    qrPersonal2.connection := connection.zconnection;
    qrNotas := TZReadOnlyQuery.Create(nil);
    qrNotas.connection := connection.zConnection;

    {$REGION 'FIRMAS'}

     //ReporteExcel_Firmantes(Excel, 'C', 'AF', 22, 22);

    {$ENDREGION}

    sSQLMoe := 'SELECT p.iId_AgrupadorPersonal, '+
             'gp.sGrupo AS sDescripcion, '+
             'if(SUM(bp.dCantHH) > 0, SUM(bp.dCantHH), SUM(bp.dCantidad)) AS dCantidad, '+
             '( SELECT SUM(mr.dCantidad) '+
             '  FROM moerecursos AS mr '+
             '  INNER JOIN personal AS per '+
             '  ON (per.sIdPersonal = mr.sIdRecurso AND per.sContrato = :Orden) '+
             '  WHERE mr.eTipoRecurso = "Personal" '+
             '  AND mr.iIdMoe = m.iIdMoe '+
             '  AND per.iId_AgrupadorPersonal = p.iId_AgrupadorPersonal '+
             '  AND per.lSumaSolicitado = "Si" '+
             ') AS dCantidadSolicitada '+
             'FROM bitacoradepersonal_cuadre AS bp '+
             'INNER JOIN personal AS p '+
             'ON (p.sIdPersonal = bp.sIdPersonal AND p.sContrato = :Orden) '+
             'INNER JOIN gruposdepersonal AS gp '+
             'ON (gp.iId = p.iId_AgrupadorPersonal) '+
             'INNER JOIN moe AS m '+
             'ON (m.dIdFecha = (SELECT max(dIdFecha) FROM moe WHERE dIdFecha <= :fecha AND sContrato = :Orden) AND m.sContrato = :Orden) '+
             'WHERE bp.dIdFecha = :fecha '+
             'AND bp.sContrato = :Orden '+
             'GROUP BY gp.sGrupo '+
             'ORDER BY p.iItemOrden ASC';

    sSQLPersonal := 'select p.sDescripcion, sum(bpc.dCantidad) as dCantidad '+
                  'from bitacoradepersonal_cuadre bpc '+
                  'inner join personal p '+
                  'on ( p.sContrato = :contratoBarco and bpc.sIdPersonal = p.sIdPersonal ) '+
                  'inner join tiposdepersonal tp '+
                  'on (tp.sIdTipoPersonal = p.sIdTipoPersonal ) '+
                  'where bpc.sContrato = :contratoNormal '+
                  'and bpc.dIdFecha = :fecha '+
                  'and tp.sIdTipoPersonal = :tipo '+
                  'group by p.sIdPersonal '+
                  'order by tp.sIdTipoPersonal, bpc.sIdPersonal';

  with qrCategorias do
  begin
    Active := False;
    SQL.Text := 'select tp.sIdTipoPersonal, tp.sDescripcion '+
                'from tiposdepersonal tp '+
                'inner join personal p '+
                'on (p.sContrato = :contratoBarco and  p.sIdTipoPersonal = tp.sIdTipoPersonal) '+
                'inner join bitacoradepersonal_cuadre bpc ' +
                'on (bpc.sContrato = :contratoNormal and bpc.sIdPersonal = p.sIdPersonal) '+
                'where bpc.dIdFecha = :fecha '+
                'group by tp.sIdTipoPersonal '+
                'order by tp.sIdTipoPersonal';
    ParamByName('contratoBarco').AsString := global_contrato_barco;
    ParamByName('contratoNormal').AsString := ReporteDiario.FieldByName('sOrden').AsString;
    ParamByName('fecha').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
    Open;

    iFilaAux := 1;
    iTables := 0;
    if RecordCount > 0 then
    begin
      while not Eof do
      begin
        excel.range['A'+inttostr(ifila)].select;
        excel.selection.value := FieldByName('sDescripcion').AsString;
        Inc(iTables);

        Next;

        if (RecNo = RecordCount) and (iTables = RecordCount) then
        begin
          excel.range['AD'+inttostr(ifila-1)+':BB'+inttostr(ifila+2)].select;
          excel.selection.interior.colorindex := 0;
          excel.selection.borders.color := clNone;
          excel.selection.value := '';
          excel.CutCopyMode := False;
          Break;
        end;


        excel.range['AD'+inttostr(ifila)].select;
        excel.selection.value := FieldByName('sDescripcion').AsString;
        Inc(iTables);

        Next;

        if (RecNo = RecordCount) and (iTables = RecordCount) then
          Break;

        excel.Rows[inttostr(ifila)+':'+inttostr(ifila+2)].select;
        Excel.Selection.Copy;
        Inc(iFila, 3);
        excel.ActiveSheet.Rows[ifila].Insert;
        Excel.Rows[inttostr(ifila+1)+':'+inttostr(ifila+3)].select;
        excel.ActiveSheet.Rows[ifila].Insert;
        Inc(iFila);
      end;
    end;
  end;

  if qrCategorias.Recordcount > 0 then
  begin
    qrCategorias.First;
    ifila := 11;
    iFilaAux1 := 11;
    iTables := 0;
    while not qrCategorias.Eof do
    begin
      with qrPersonal do
      begin
        Active := False;
        if qrCategorias.FieldByName('sIdTipoPersonal').AsString <> 'PU' then
        begin
          SQL.Text := sSQLPersonal;
           ParamByName('contratoBarco').AsString := global_contrato_barco;
           ParamByName('contratoNormal').AsString := global_contrato;
           ParamByName('tipo').AsString := qrCategorias.FieldByName('sIdTipoPersonal').AsString;
           ParamByName('fecha').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        end
        else
        begin
          SQL.Text := sSQLMoe;
          ParamByName('Orden').AsString := ReporteDiario.FieldByName('sOrden').AsString;
          ParamByName('fecha').AsString := ReporteDiario.FieldByName('dIdFecha').AsString;
        end;

        Open;

        if RecordCount > 0 then
        begin
          iSubtotal := 0;
          while not Eof do
          begin
            excel.range['A'+inttostr(ifila)+':Z'+inttostr(ifila)].select;
            excel.selection.insert;
            excel.range['A'+inttostr(ifila+1)+':Z'+inttostr(ifila+1)].select;
            Excel.Selection.Copy;
            excel.range['A'+inttostr(ifila)+':AB'+inttostr(ifila)].select;
            excel.selection.pastespecial;
            excel.CutCopyMode := False;

            excel.range['A'+inttostr(ifila)].select;
            excel.selection.value := FieldByName('sDescripcion').AsString;
            excel.range['Z'+inttostr(ifila)].select;
            excel.selection.value := FieldByName('dCantidad').AsFloat;
            excel.rows[inttostr(ifila)].rowheight := 15;

            iSubtotal := iSubtotal + FieldByName('dCantidad').AsFloat;

            Next;
            Inc(iFila);
          end;
        end
        else
          sTablasVacias.Add('A'+inttostr(ifilaAux1)+':Z'+inttostr(ifilaAux1+3));

        Inc(iTables);
      end;
      excel.range['A'+inttostr(ifila)+':AB'+inttostr(ifila)].select;
      excel.selection.delete;
      excel.range['W'+inttostr(ifila)].select;
      excel.selection.value := iSubtotal;
      Inc(iFila, 3);
      qrCategorias.Next;

      if (qrCategorias.RecNo = qrCategorias.RecordCount) and (iTables = qrCategorias.RecordCount) then
        Break;
      

      with qrPersonal2 do
      begin
        Active := False;
        if qrCategorias.FieldByName('sIdTipoPersonal').AsString <> 'PU' then
        begin
          SQL.Text := sSQLPersonal;
           ParamByName('contratoBarco').AsString := global_contrato_barco;
           ParamByName('contratoNormal').AsString := global_contrato;
           ParamByName('tipo').AsString := qrCategorias.FieldByName('sIdTipoPersonal').AsString;
           ParamByName('fecha').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        end
        else
        begin
          SQL.Text := sSQLMoe;
          ParamByName('Orden').AsString := ReporteDiario.FieldByName('sOrden').AsString;
          ParamByName('fecha').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        end;
        Open;

        if RecordCount > 0 then
        begin
          iSubtotal := 0;
          while not Eof do
          begin
            excel.range['AC'+inttostr(ifilaAux1)+':BB'+inttostr(ifilaAux1)].select;
            excel.selection.insert;
            excel.range['AD'+inttostr(ifilaAux1+1)+':BB'+inttostr(ifilaAux1+1)].select;
            Excel.Selection.Copy;
            excel.range['AD'+inttostr(ifilaAux1)+':bb'+inttostr(ifilaAux1)].select;
            excel.selection.pastespecial;
            excel.CutCopyMode := False;

            excel.range['AD'+inttostr(ifilaAux1)].select;
            excel.selection.value := FieldByName('sDescripcion').AsString;
            excel.range['AZ'+inttostr(ifilaAux1)].select;
            excel.selection.value := FieldByName('dCantidad').AsFloat;
            excel.rows[inttostr(ifila)].rowheight := 15;
            iSubtotal := iSubtotal + FieldByName('dCantidad').AsFloat;
            Next;
            Inc(ifilaAux1);
          end;
        end
        else
          sTablasVacias.Add('AC'+inttostr(ifilaAux1-1)+':BB'+inttostr(ifilaAux1+2));

        if RecordCount > 0 then
        begin
          excel.range['AD'+inttostr(ifilaAux1)+':BB'+inttostr(ifilaAux1)].select;
          excel.selection.delete;
          excel.range['AW'+inttostr(ifilaAux1)].select;
          excel.selection.value := iSubtotal;
          Inc(ifilaAux1, 3);
        end;

        Inc(iTables);

        qrCategorias.Next;
      end;

      if (qrCategorias.RecNo = qrCategorias.RecordCount) and (iTables = qrCategorias.RecordCount) then
        Break;
    end;

    //        SUBTOTALES
      

    //        NOTAS GENERALES
    excel.range['A10:AB10'].select;
    excel.selection.copy;
    excel.range['A'+inttostr(ifila)+':AB'+inttostr(ifila)].select;
    excel.selection.pastespecial;
    excel.selection.value := 'NOTAS GENERALES';
    Inc(iFila);
    excel.range['A'+inttostr(ifila)+':AB'+inttostr(ifila)].select;
    excel.selection.mergecells := true;
    excel.selection.wraptext := true;

    with qrNotas do
    begin
      Active := False;
      SQL.Text := 'select ba.mDescripcion '+
                  'from bitacoradeactividades ba '+
                  'inner join tiposdemovimiento tm '+
                  'on ( tm.sContrato = ba.sContrato and tm.sIdTipoMovimiento = ba.sIdTipoMovimiento) '+
                  'where ba.sContrato = :contratoBarco '+
                  'and tm.sIdTipoMovimiento = "B"';
      ParamByName('contratoBarco').AsString := global_contrato_barco;
      Open;

      if RecordCount > 0 then
      begin
        First;
        while not Eof do
        begin
          excel.range['A'+inttostr(ifila)].select;
          excel.selection.insert;
          excel.range['A'+inttostr(ifila+1)].select;
          excel.selection.copy;
          excel.range['A'+inttostr(ifila)+':AB'+inttostr(ifila)].select;
          excel.selection.pastespecial;
          excel.cutcopymode := False;

          excel.range['A'+inttostr(ifila)].select;
          excel.selection.value := FieldByName('mDescripcion').AsString;
          excel.selection.borders.color := clwhite;
          Next;
          Inc(iFila);
        end;
      end;
    end;

    for iRows := 0 to sTablasVacias.Count - 1 do
    begin
      excel.range[sTablasVacias[iRows]].select;
      excel.selection.delete;
    end;

    if (qrCategorias.Recordcount mod 2) = 1 then
      Inc(ifilaAux1, 3);
    

    if iFilaAux1 < iFila then
    begin
      for iFilaAux1 := iFilaAux1 to iFila - 3 do
      begin
        excel.range['AC'+inttostr(ifilaAux1)+':BB'+inttostr(ifilaAux1)].select;
        excel.selection.insert;
      end;
    end;

    if iFila < iFilaAux1 then
    begin
      for iFila := iFila to iFilaAux1 - 1 do
      begin
        excel.range['A'+inttostr(ifilaAux1)+':AB'+inttostr(ifilaAux1)].select;
        excel.selection.insert;
      end;
    end;

    Inc(iFila, 3);
    excel.range['A'+inttostr(iFila)+':BB'+inttostr(ifila + 2)].select;
    Excel.Selection.Borders[xlEdgeLeft].LineStyle         := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].Weight            := xlThin;
    Excel.Selection.Borders[xlEdgeTop].LineStyle          := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].Weight             := xlThin;
    Excel.Selection.Borders[xlEdgeBottom].LineStyle       := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight          := xlThin;
    Excel.Selection.Borders[xlEdgeRight].LineStyle        := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].Weight           := xlThin;
  end;
  qrCategorias.Destroy;
  qrPersonal.Destroy;
  qrPersonal2.Destroy;

end;

Procedure TfrmDiarioTurno.ReporteExcel_ResumenMaterial2(Excel: Variant; iFila: Integer);
Var
   QryResumenMaterial: TZQuery;
   lInsertar : boolean;
   sFolio : string;
begin
   Try

    {$REGION 'FIRMAS'}

     //ReporteExcel_Firmantes(Excel, 'F', 'AF', 16, 17);

    {$ENDREGION}

    {$REGION 'CONSULTA MATERIALES'}
      QryResumenMaterial := TZQuery.Create(Self);
      QryResumenMaterial.Connection := Connection.zConnection;
      QryResumenMaterial.SQL.Add( 'select s.sNumeroOrden, s.sNumeroActividad, b.sTrazabilidad, i.mDescripcion, i.sMedida, sum(b.dCantidad) as dCantidad, i.sIdProveedor from almacen_salida s '+
                        'inner join bitacoradesalida b '+
                        'on(b.sContrato = s.sContrato and b.iFolioSalida = s.iFolioSalida and b.sext = s.sext) '+
                        'inner join insumos i '+
                        'on (i.sContrato =:Contrato and i.sIdInsumo = b.sIdInsumo and i.sTrazabilidad = b.sTrazabilidad ) '+
                        'where s.sContrato =:orden and b.dFechaSalida =:fecha '+
                        'group by b.sNumeroOrden, b.sNumeroActividad, b.sIdInsumo, b.sTrazabilidad Order by b.sNumeroOrden, b.sNumeroActividad, b.sTrazabilidad');
      QryResumenMaterial.ParamByName('Fecha').AsDateTime  := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
      QryResumenMaterial.ParamByName('Orden').AsString    := ReporteDiario.FieldByName('sOrden').AsString;
      QryResumenMaterial.ParamByName('Contrato').AsString := global_Contrato_Barco;
      QryResumenMaterial.Open;

      lInsertar := False;
      iFila := 11;           
      sFolio := '';
      {M A T E R I A L...}
      while not QryResumenMaterial.Eof do
      begin
          if lInsertar then
          begin
              Excel.Rows[IntToStr(iFila)+':'+ InttoStr(iFila)].RowHeight := 7.5;
              Excel.Range['A'+ IntToStr(ifila+1) +':'+ 'BC'+ IntToStr(iFila+1)].Select;
              Excel.Selection.Insert;
              Excel.Range['A'+ IntToStr(iFila-1)   +':'+ 'BC'+ IntToStr(iFila-1)].select;
              Excel.Selection.Copy;
              Excel.Range['A'+ IntToStr(iFila)+':'+ 'BC'+ IntToStr(iFila)].select;
              Excel.Selection.PasteSpecial;
          end;           
          
          lInsertar := True;
          Excel.Range['A'+ IntToSTr(iFila)].Select;
          if sFolio = (QryResumenMaterial.FieldByName('sNumeroOrden').AsString +'-'+QryResumenMaterial.FieldByName('sNumeroActividad').AsString) then          
             Excel.Selection.Value := ''
          else   
          begin          
              sFolio := QryResumenMaterial.FieldByName('sNumeroOrden').AsString +'-'+QryResumenMaterial.FieldByName('sNumeroActividad').AsString;
              Excel.Selection.Value := sFolio;
          end;
          Excel.Range['J'+ IntToSTr(iFila)].Select;
          if Trim(QryResumenMaterial.FieldByName('sTrazabilidad').AsString) = '' then begin
            Excel.Selection.Value := 'S/T';
          end else begin
            Excel.Selection.Value := QryResumenMaterial.FieldByName('sTrazabilidad').AsString;
          end;
          Excel.Range['N'+ IntToSTr(iFila)].Select;
          Excel.Selection.Value := QryResumenMaterial.FieldByName('dCantidad').AsFloat;
          Excel.Range['R'+ IntToSTr(iFila)].Select;
          Excel.Selection.Value := QryResumenMaterial.FieldByName('sMedida').AsString;
          Excel.Range['V'+ IntToSTr(iFila)].Select;
          Excel.Selection.Value := QryResumenMaterial.FieldByName('sIdProveedor').AsString;
          Excel.Range['AA'+ IntToSTr(iFila)].Select;
          Excel.Selection.Value := QryResumenMaterial.FieldByName('mDescripcion').AsString;

          inc(iFila);
          QryResumenMaterial.Next;
      end;         
      inc(iFila, 6);
    {$ENDREGION}

  Finally
    QryResumenMaterial.Free;
  End;
  
  iFilaGlobal := iFila;
end;


Procedure TfrmDiarioTurno.ReporteExcel_ConsumosDiesel(Excel: Variant; iFila: Integer);
Var
  QryConsumosDiesel: TZQuery;
  iFilaInicial: Integer;
  dSumaConsumos : double;
begin
    iFila := 11;

    {$REGION 'FIRMAS'}

     //ReporteExcel_Firmantes(Excel, 'F', 'AF', 22, 23);

    {$ENDREGION}

    {$REGION 'INSERCION DE DATOS'}
    Try
      QryConsumosDiesel := TZQuery.Create(Self);
      QryConsumosDiesel.Connection := Connection.zConnection;
      QryConsumosDiesel.SQL.Add('SELECT ' +
                                '	eq.sDescripcionDiesel AS sDescripcion, ' +
                                '	ce.sNumerosDeSerie, ' +
                                '	re.sDescripcion AS sConsumible, ' +
                                '	ce.sMedida, ' +
                                '	ce.dCantidad, ' +
                                ' ce.sNumeroOrden, '+
                                ' ce.sIdPlataforma '+
                                'FROM consumosdecombustibleporequipo AS ce ' +
                                '	INNER JOIN equipos AS eq ' +
                                '		ON (eq.sIdEquipo = ce.sIdEquipo AND eq.sContrato = :ContratoBarco) ' +
                                '	INNER JOIN recursosdeexistencias AS re ' +
                                '		ON (re.iIdRecursoExistencia = ce.iIdTipoConsumo) ' +
                                'WHERE ' +
                                '	ce.dIdFecha = :Fecha ' +
                                '	AND ce.sContrato = :Orden;');
      QryConsumosDiesel.ParamByName('Fecha').AsDateTime       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
      QryConsumosDiesel.ParamByName('ContratoBarco').AsString := Global_Contrato_Barco;
      QryConsumosDiesel.ParamByName('Orden').AsString         := ReporteDiario.FieldByName('sOrden').AsString;
      QryConsumosDiesel.Open;

      iFilaInicial := iFila;
      dSumaConsumos := 0;
      while Not QryConsumosDiesel.Eof do
      begin
          Excel.Range['A'+ IntToSTr(iFila)].Select;
          Excel.Selection.Value := iFila - 10;
          Excel.Range['D'+ IntToSTr(iFila)].Select;
          Excel.Selection.Value := QryConsumosDiesel.FieldByName('sDescripcion').AsString;
          Excel.Range['AA'+ IntToSTr(iFila)].Select;
          Excel.Selection.Value := QryConsumosDiesel.FieldByName('sNumeroOrden').AsString;
          Excel.Range['AM'+ IntToSTr(iFila)].Select;
          Excel.Selection.Value := QryConsumosDiesel.FieldByName('sIdPlataforma').AsString;
          Excel.Range['AW'+ IntToSTr(iFila)].Select;
          Excel.Selection.Value := QryConsumosDiesel.FieldByName('dCantidad').AsFloat;
          dSumaConsumos := dSumaConsumos + QryConsumosDiesel.FieldByName('dCantidad').AsFloat;
          Inc(iFila);
          Excel.Range['A'+ IntToStr(ifila) +':'+ 'BC'+ IntToStr(iFila)].Select;
          Excel.Selection.Insert;
          Excel.Range['A'+ IntToStr(iFila-1)   +':'+ 'BC'+ IntToStr(iFila-1)].select;
          Excel.Selection.Copy;
          Excel.Range['A'+ IntToStr(iFila)+':'+ 'BC'+ IntToStr(iFila)].select;
          Excel.Selection.PasteSpecial;

          QryConsumosDiesel.Next;
      end;

      if QryConsumosDiesel.RecordCount > 0 then
      begin
          Excel.Range['A'+ IntToStr(ifila) +':'+ 'BC'+ IntToStr(iFila)].Select;
          Excel.Selection.Delete;
          Excel.Range['AW'+ IntToSTr(iFila)].Select;
          Excel.Selection.Value := dSumaConsumos;
      end;

      Inc(iFila, 11);

    Finally
      QryConsumosDiesel.Free;
    End;
  {$ENDREGION}

  iFilaGlobal := iFila;

end;

Procedure TfrmDiarioTurno.ReporteExcel_ConcentradoDePersonal2(Libro, Hoja, Excel: Variant; iFila: Integer);
Var
  TmpName,
  CeldasSubTotales,
  TextoCant,
  ColumnaTotales,
  CeldasEnOperacion,
  CeldasEnOperacionAux,
  CeldasEnEspera,
  CeldasEnEsperaAux,sUnidad: String;

  TempPath: String;
  Fs: TStream;
  Pic : TJpegImage;
  imgAux: TImage;

  i, x,y,
  iFilaInicial,
  iColumna,
  RenAux,
  iFilaAux,
  AltoFilas,
  iFilaIniciaSubTotal,
  TotalPaginas,
  CeldasPorSumar,
  dCantidadAnterior: Integer;

  SumaCeldas: TStringList;

  dTotalDePersonal: Real;


  QryConsulta,
  QrMoe,
  QrColumnas,
  QrRecursos,
  QryCondiciones,
  QryEmbarcacion,
  QryOtroPersonal: TZQuery;
  QryAgrupador: TZQuery;

  rangoE: Variant;

  dContrato_Inicio,
  dContrato_Final: TDateTime;

  Lista: TStringList;

  Pernoctan: array[1..25, 1..3] of String;
  Suma: array [1..2] of String;
  indiceA : Integer;
  indiceP : Integer;
  aux : integer;

  Pim:real;

  sSuma,sHoras : string;
begin
  iFilaInicial := iFila;
  TamFont := 13;
  Excel.ActiveWindow.Zoom := 88;
  //Excel.Columns[ColumnaNombre(1)+':'+ColumnaNombre(6)].ColumnWidth := 1;
  Excel.Columns[ColumnaNombre(10)+':'+ColumnaNombre(23)].ColumnWidth := 1;
  FoliosReportados := TStringList.Create;
  iFila := 17;

  {$REGION 'FIRMAS'}

   //ReporteExcel_Firmantes(Excel, 'B', 'BJ', 25, 26);

  {$ENDREGION}

  connection.qrybusca.active := false;
  connection.qrybusca.sql.text := 'select sDescripcion from anexos where sTipo = "PERSONAL" ';
  connection.qrybusca.open;

  excel.range['A16'].select;
  excel.selection.value := connection.qrybusca.fieldbyname('sdescripcion').asstring;

  {$REGION 'CONSULTAS - TODO EL PERSONAL SOLICITADO QUE SE REGISTRA EN EL MOE'}
    QrMoe := TZQuery.Create(Self);
    QrMoe.Connection := Connection.zConnection;
    QrMoe.Active := False;
    QrMoe.SQL.Clear;
    QrMoe.SQL.Add('SELECT p.sDescripcion,	mr.*, p.lSumaSolicitado, p.sMedida ' +
                  'FROM moe AS m ' +
                  'INNER JOIN moerecursos AS mr ON (mr.iidMoe=m.iidMoe) ' +
                  'INNER JOIN personal AS p ON (p.scontrato=:Contrato AND p.sidpersonal=mr.sidRecurso) ' +
                  'WHERE m.didfecha = (SELECT max(didfecha) FROM moe WHERE didfecha <=:Fecha AND sContrato = :OT) ' +
                  'AND m.sContrato = :OT AND mr.eTipoRecurso = "Personal" ORDER BY p.iItemOrden');
    QrMoe.ParamByName('Contrato').AsString := Global_Contrato_Barco;
    QrMoe.ParamByName('OT').AsString       := ReporteDiario.FieldByName('sOrden').AsString;
    QrMoe.ParamByName('Fecha').AsDateTime  := reportediario.FieldByName('dIdFecha').AsDateTime;
    QrMoe.Open;
   {$ENDREGION}

  {$REGION 'INSERTA EL MOE'}

  with qrMoe do
  begin
    if RecordCount > 0 then
    begin
      while not eof do
      begin
        excel.activesheet.rows[ifila].insert;
        excel.range['A'+inttostr(ifila+1)+':DB'+inttostr(ifila+1)].select;
        excel.selection.copy;
        excel.range['A'+inttostr(ifila)+':DB'+inttostr(ifila)].select;
        excel.selection.pastespecial;
        excel.cutcopymode := false;

        excel.range['A'+inttostr(ifila)].select;
        excel.selection.value := FieldByName('sidrecurso').asstring;
        excel.range['F'+inttostr(ifila)].select;
        excel.selection.value := fieldbyname('sdescripcion').asstring;
        excel.range['T'+inttostr(ifila)].select;
        excel.selection.value := fieldbyname('smedida').asstring;
        excel.range['AF'+inttostr(ifila)].select;
        excel.selection.value := fieldbyname('dcantidad').AsFloat;
        inc(ifila);
        next;
      end;
      iFilaAux := iFila;
      excel.range['A'+inttostr(ifila)+':DB'+inttostr(ifila)].select;
      excel.selection.delete;
    end;
  end;

  {$ENDREGION}

  {$REGION 'CONSULTAS - PARTIDAS'}
    QrColumnas := TZQuery.Create(Self);
    QrColumnas.Connection := Connection.zConnection;
    QrColumnas.SQL.Add( 'SELECT ot.sContrato, ot.sNumeroOrden, p.sDescripcion AS pernocta, p.sDescripcion AS pernocta, pf.sDescripcion AS plataforma, '+
                        'bp.sIdpernocta AS PernoctaP, bp.sIdPlataforma AS idPlataforma ' +
                        'FROM ordenesdetrabajo ot ' +
                        'INNER JOIN contratos AS c ON (ot.sContrato=c.sContrato) ' +
                        'INNER JOIN bitacoradepersonal AS bp ON (bp.scontrato=:OT AND bp.sNumeroOrden = ot.sNumeroOrden ) ' +
                        'INNER JOIN pernoctan AS p ON (p.sidPernocta=bp.sIdpernocta) ' +
                        'INNER JOIN plataformas AS pf ON (pf.sidPlataforma=bp.sIdPlataforma) ' +
                        'WHERE (c.sContrato=:OT OR c.sCodigo=:OT)	AND bp.dIdFecha= :Fecha ' +
                        'GROUP BY	ot.sContrato, ot.sNumeroorden, bp.sidPernocta, bp.sIdPlataforma');
    QrColumnas.ParamByName('OT').AsString       := ReporteDiario.FieldByName('sOrden').AsString;
    QrColumnas.ParamByName('Fecha').AsDate      := reportediario.FieldByName('dIdFecha').AsDateTime;
    QrColumnas.Open;
  {$ENDREGION}

  QrRecursos := TZQuery.Create(Self);
  QrRecursos.Connection := Connection.zConnection;

  if QrColumnas.RecordCount > 0 then
  begin
    iColumna := 24;
    QrColumnas.First;
    while not QrColumnas.Eof do
    begin

      {$REGION 'CREA FILAS'}
      excel.range[columnanombre(icolumna)+'12:'+columnanombre(icolumna)+inttostr(ifilaaux+1)].select;
      excel.selection.insert(xltoright);
      excel.range[columnanombre(icolumna+4)+'12:'+columnanombre(icolumna+5)+inttostr(ifilaaux+1)].select;
      excel.selection.copy;
      excel.range[columnanombre(icolumna)+'12:'+columnanombre(icolumna+3)+inttostr(ifilaaux+1)].select;
      excel.selection.pastespecial;
      excel.cutcopymode := false;
      {$ENDREGION}

      {$REGION 'DATOS DE CABECERA'}
      excel.range[columnanombre(icolumna)+'12'].select;
      excel.selection.value := qrColumnas.FieldbyName('sNumeroOrden').AsString;
      excel.range[columnanombre(icolumna)+'13'].select;
      excel.selection.value := QrColumnas.Fieldbyname('Pernocta').asstring;
      excel.range[columnanombre(icolumna)+'14'].select;
      excel.selection.value := QrColumnas.Fieldbyname('Plataforma').Asstring;
      {$ENDREGION}

      {$REGION 'CONSULTA CUADRE'}
      QrRecursos.Active := False;
      QrRecursos.SQL.Clear;
      QrRecursos.SQL.Add('SELECT bp.sIdPersonal, bp.sDescripcion, SUM(bp.dAjuste) AS Ajuste, ' +
                         ' IF(SUM(bp.dCanthh) > 0, ROUND(SUM(bp.dCanthh), 2), SUM(bp.dCantidad)) AS Total ' +
                         'FROM bitacoradepersonal bp ' +
                         'WHERE bp.scontrato = :Orden AND bp.sNumeroOrden = :Folio AND bp.didfecha = :Fecha ' +
                         'AND bp.sidPernocta = :Pernocta AND bp.sidplataforma = :Plataforma GROUP BY bp.sIdPersonal ');
      QrRecursos.ParamByName('Orden').AsString      := QrColumnas.FieldByName('sContrato').AsString;
      QrRecursos.ParamByName('Folio').AsString      := QrColumnas.FieldByName('sNumeroOrden').AsString;
      QrRecursos.ParamByName('Fecha').AsDate        := reportediario.FieldByName('dIdFecha').AsDateTime;
      QrRecursos.ParamByName('Pernocta').AsString   := QrColumnas.FieldByName('PernoctaP').AsString;
      QrRecursos.ParamByName('Plataforma').AsString := QrColumnas.FieldByName('idPlataforma').AsString;
      QrRecursos.Open;
      {$ENDREGION}

      {$REGION 'INSERTA CANTIDADES'}
      qrMoe.First;
      iFila := 17;
      while not QrMoe.Eof do
      begin
        excel.range[columnanombre(icolumna)+inttostr(ifila)].select;
        excel.selection.value := 0;
       if QrRecursos.Locate('sIdPersonal', QrMoe.FieldByName('sIdRecurso').AsString, []) then
         excel.selection.value := (QrRecursos.FieldByName('Total').AsFloat + QrRecursos.FieldByName('Ajuste').AsFloat);

       qrMoe.Next;
       inc(ifila);

      end;
      {$ENDREGION}

      inc(icolumna, 4);
      qrColumnas.next;
    end;

    {$REGION 'COLUMNAS EXTRA - APLICA SI HAY POCAS COLUMNAS'}
    if iColumna <= 71 then
    begin
      while iColumna <= 71 do
      begin
        excel.range[columnanombre(icolumna)+'12:'+columnanombre(icolumna)+inttostr(ifilaaux+1)].select;
        excel.selection.insert(xltoright);
        excel.range[columnanombre(icolumna+4)+'12:'+columnanombre(icolumna+5)+inttostr(ifilaaux+1)].select;
        excel.selection.copy;
        excel.range[columnanombre(icolumna)+'12:'+columnanombre(icolumna+3)+inttostr(ifilaaux+1)].select;
        excel.selection.pastespecial;
        excel.cutcopymode := false;
        Inc(icolumna, 4)
      end;
    end;
    {$ENDREGION}

    {$REGION 'TOTALES'}
    //VERTICALES
    Inc(iColumna, 4);
    for aux := 17 to iFila - 1 do
    begin
      excel.range[columnanombre(icolumna)+inttostr(aux)].select;
      excel.selection.formula := '=SUM(X'+inttostr(aux)+':'+columnanombre(icolumna-4)+inttostr(aux)+')';
    end;
    //HORIZONTALES
    aux := 24;
    while aux <= iColumna - 4 do
    begin
      //sSuma := 'SUM('+columnanombre(aux)+'17:'+columnanombre(aux)+inttostr(ifila-1)+')';
      sSuma:='';
      sHoras:='';
      for x := 17 to iFila - 1 do
      begin
        excel.range[columnanombre(23)+inttostr(x)].select;
        sUnidad:=Excel.Cells[x,20].value;//excel.selection.value;

        //Excel.Cells[(iFila), (1)].Value;
        if AnsiPos('HORA',uppercase(sUnidad))>0 then
        begin
          if sHoras='' then
            sHoras:=columnanombre(aux)+inttostr(x)
          else
            sHoras:=sHoras + ','  + columnanombre(aux)+inttostr(x);
        end
        else
        begin
          if sSuma='' then
            sSuma:=columnanombre(aux)+inttostr(x)
          else
            sSuma:=sSuma + ','  + columnanombre(aux)+inttostr(x);
        end;

      end;
      if sSuma<>'' then
      begin
        excel.range[columnanombre(aux)+inttostr(ifila)].select;
        excel.selection.formula := '=IF(sum('+sSuma+')>0,sum('+sSuma+'),"")';
      end;

      if sHoras<>'' then
      begin
        excel.range[columnanombre(aux)+inttostr(ifila+1)].select;
        excel.selection.formula := '=IF(sum('+sHoras+')>0,sum('+sHoras+'),"")';
      end;



      inc(aux, 4);
    end;
//    excel.range[columnanombre(icolumna)+inttostr(ifila)].select;
//    excel.selection.formula := '=SUM('+columnanombre(icolumna)+'17:'+columnanombre(icolumna)+inttostr(ifila-1)+')';


    ////////

      //sSuma := 'SUM('+columnanombre(aux)+'17:'+columnanombre(aux)+inttostr(ifila-1)+')';
      sSuma:='';
      sHoras:='';
      for x := 17 to iFila - 1 do
      begin
        //excel.range[columnanombre(23)+inttostr(x)].select;
        sUnidad:=Excel.Cells[x,20].value;//excel.selection.value;

        //Excel.Cells[(iFila), (1)].Value;
        if AnsiPos('HORA',uppercase(sUnidad))>0 then
        begin
          if sHoras='' then
            sHoras:=columnanombre(iColumna)+inttostr(x)
          else
            sHoras:=sHoras + ','  + columnanombre(iColumna)+inttostr(x);
        end
        else
        begin
          if sSuma='' then
            sSuma:=columnanombre(iColumna)+inttostr(x)
          else
            sSuma:=sSuma + ','  + columnanombre(iColumna)+inttostr(x);
        end;

      end;
      if sSuma<>'' then
      begin
        excel.range[columnanombre(iColumna)+inttostr(ifila)].select;
        excel.selection.formula := '=IF(sum('+sSuma+')>0,sum('+sSuma+'),"")';
      end;

      if sHoras<>'' then
      begin
        excel.range[columnanombre(iColumna)+inttostr(ifila+1)].select;
        excel.selection.formula := '=IF(sum('+sHoras+')>0,sum('+sHoras+'),"")';
      end;









    /////////////

    excel.range[columnanombre(icolumna+4)+inttostr(ifila)].select;
    excel.selection.formula := '=SUM('+columnanombre(icolumna+4)+'17:'+columnanombre(icolumna+4)+inttostr(ifila-1)+')';
    {$ENDREGION}

  end;

  excel.range['A16:CE16'].select;
  excel.selection.mergecells := true;

end;

Procedure TfrmDiarioTurno.ReporteExcel_ConcentradoDeEquipos2(Hoja: Variant; Excel: Variant; iFila: Integer);
var
  iColumna : Integer;

  QrMoe,
  QrColumnas,
  QrRecursos,
  QryEmbarcacion: TZQuery;

  ZqEqBarcos : tzreadonlyquery;

  i,x,z,y,
  iFilaInicial,
  Colum,
  iGrupoAnterior: Integer;

  prueba :Variant;
  rangoE: Variant;

  dContrato_Inicio,
  dContrato_Final: TDateTime;
  aux, aux2 : integer;

  sSuma : string;
begin
  ZqEqBarcos := TZReadOnlyQuery.Create(nil);
  ZqEqBarcos.Connection := connection.zConnection;
  ZqEqBarcos.Active := False;
  ZqEqBarcos.SQL.Clear;
  ZqEqBarcos.SQL.Text := ' Select sidequipo,iunificador from equipos '+
                         ' where scontrato = :contrato and Length(iunificador) > 0  ';
  ZqEqBarcos.ParamByName('contrato').AsString := global_Contrato_Barco;
  ZqEqBarcos.Open;

  iFilaInicial := iFila;
  TamFont := 13;
  Excel.ActiveWindow.Zoom := 147;
  Excel.Columns[ColumnaNombre(1)+':'+ColumnaNombre(23)].ColumnWidth := 1;

  {$REGION 'FIRMAS'}

    //ReporteExcel_Firmantes(Excel, 'B', 'AU', 25, 26);

  {$ENDREGION}

  Try

    {$REGION 'CONSULTAS - TODOS LOS EQUIPOS REGISTRADOS EN MOE'}
      QrMoe := TZQuery.Create(Self);
      QrMoe.Connection := Connection.zConnection;
      QrMoe.Active := False;
      QrMoe.SQL.Clear;
      QrMoe.SQL.Add('SELECT p.lSumaSolicitado, p.iId_AgrupadorEquipo, ge.sGrupo, p.sDescripcion, p.iUnificador ,mr.*, p.sMedida ' +
                    'FROM moerecursos AS mr ' +
                    'INNER JOIN moe AS m ' +
                    'ON (m.iidMoe=mr.iidMoe) ' +
                    'INNER JOIN equipos AS p ' +
                    'ON (p.sContrato=:Contrato AND p.sIdEquipo=mr.sidRecurso) ' +
                    'LEFT JOIN gruposdeequipo AS ge ' +
                    'ON (ge.iId = p.iId_AgrupadorEquipo) ' +
                    'WHERE ' +
                    'dIdFecha = (SELECT max(didfecha) FROM moe WHERE didfecha <=:Fecha AND sContrato = :ContratoNormal) ' +
                    'AND m.sContrato = :ContratoNormal ' +
                    'AND mr.eTipoRecurso="Equipo" ' +
                    'ORDER BY p.iItemOrden');
      QrMoe.ParamByName('Contrato').AsString := Global_Contrato_Barco;
      QrMoe.ParamByName('ContratoNormal').AsString := ReporteDiario.FieldByName('sOrden').AsString;
      QrMoe.ParamByName('Fecha').AsDateTime := reportediario.FieldByName('dIdFecha').AsDateTime;
      QrMoe.Open;

    {$ENDREGION}

    {$REGION 'INSERCION DE DATOS - INFORMACIÓN DEL EQUIPO'}
    ifila := 17;

    while Not QrMoe.Eof do
    begin
      excel.activesheet.rows[ifila].insert;
      excel.range['A'+inttostr(ifila+1)+':AC'+inttostr(ifila+1)].select;
      excel.selection.copy;
      excel.range['A'+inttostr(ifila)+':AC'+inttostr(ifila)].select;
      excel.selection.pastespecial;
      excel.cutcopymode := false;

      excel.range['A'+inttostr(ifila)].select;
      excel.selection.value := QrMoe.FieldbyName('sIdRecurso').asstring;
      excel.range['C'+inttostr(ifila)].select;
      excel.selection.value := QrMoe.Fieldbyname('sDescripcion').asstring;
      excel.range['T'+inttostr(ifila)].select;
      excel.selection.value := QrMoe.fieldbyname('sMedida').asstring;
      excel.range['AC'+inttostr(ifila)].select;
      excel.selection.value := QrMoe.FieldByName('dCantidad').asfloat;

      Inc(ifila);
      QrMoe.Next;
    end;                        

    excel.range['A'+inttostr(ifila)+':AC'+inttostr(ifila)].select;
    excel.selection.delete;

    {$ENDREGION}

    {$REGION 'CONSULTAS - PARTIDAS'}
      QrColumnas := TZQuery.Create(Self);
      QrColumnas.Connection := Connection.zConnection;
      QrColumnas.SQL.Add( '' +
                          'SELECT ' +
                          '	ot.*, ' +
                          '	p.sDescripcion AS pernocta, ' +
                          '	pf.sDescripcion AS plataforma, ' +
                          '	bp.sIdpernocta AS PernoctaP ' +
                          'FROM ordenesdetrabajo AS ot ' +
                          ' INNER JOIN contratos AS c ' +
                          '	  ON (ot.sContrato=c.sContrato) ' +
                          ' INNER JOIN bitacoradeequipos AS bp ' +
                          '		ON (bp.scontrato=:OT AND bp.sNumeroOrden = ot.sNumeroOrden) ' +
                          ' INNER JOIN pernoctan AS p ' +
                          '	  ON (p.sidPernocta=bp.sIdpernocta) ' +
                          ' INNER JOIN plataformas AS pf ' +
                          '	  ON (pf.sidPlataforma=ot.sIdPlataforma) ' +
                          'WHERE ' +
                          '	(c.sContrato=:Contrato OR c.sCodigo=:Contrato) ' +
                          '	AND bp.dIdFecha= :Fecha ' +
                          'GROUP BY ' +
                          '	ot.sContrato, ' +
                          '	ot.sNumeroorden, ' +
                          '	bp.sidPernocta;');
      QrColumnas.ParamByName('OT').AsString:= ReporteDiario.FieldByName('sOrden').AsString;
      QrColumnas.ParamByName('Contrato').AsString:= ReporteDiario.FieldByName('sOrden').AsString;
      QrColumnas.ParamByName('Fecha').AsDate:=reportediario.FieldByName('dIdFecha').AsDateTime;
      QrColumnas.Open;
    {$ENDREGION}

    {$REGION 'INSERCION DE DATOS - PARTIDAS'}
      iColumna := 23;
      QrRecursos := TZQuery.Create(Self);
      QrRecursos.Connection := Connection.zConnection;
      while Not QrColumnas.Eof do
      begin

        {$REGION 'CREAR COLUMNAS'}
        excel.range[columnanombre(icolumna)+'11:'+columnanombre(icolumna)+inttostr(ifila)].select;
        excel.selection.insert(xlToright);
        excel.range[columnanombre(icolumna+4)+'11:'+columnanombre(icolumna+5)+inttostr(ifila)].select;
        excel.selection.copy;
        excel.range[columnanombre(icolumna)+'11:'+columnanombre(icolumna+2)+inttostr(ifila)].select;
        excel.selection.pastespecial;
        excel.cutcopymode := false;
        {$ENDREGION}

        {$REGION 'CABECERA'}
        excel.range[columnanombre(icolumna)+'11'].select;
        excel.selection.value := qrColumnas.fieldbyname('snumeroorden').asstring;
        excel.range[columnanombre(icolumna)+'12'].select;
        excel.selection.value := qrcolumnas.fieldbyname('pernocta').asstring;
        excel.range[columnanombre(icolumna)+'13'].select;
        excel.selection.value := qrColumnas.FieldByName('plataforma').asstring;
        excel.cutcopymode := false;
        {$ENDREGION}

        {$REGION 'CONSULTA CUADRE'}
          QrRecursos.Active := False;
          QrRecursos.SQL.Clear;
          QrRecursos.SQL.Add( '' +
                              'SELECT ' +
                              '	bp.sIdEquipo, ' +
                              '	bp.sDescripcion, ' +
                              '	IF(SUM(bp.dCanthh) > 0, ROUND(SUM(bp.dCanthh), 2), SUM(bp.dCantidad)) AS Total, ' +
                              ' SUM(bp.dAjuste) AS Ajuste ' +
                              'FROM bitacoradeequipos bp ' +
                              'WHERE ' +
                              '	bp.scontrato = :Orden ' +
                              '	AND bp.snumeroorden = :Folio ' +
                              '	AND bp.didfecha = :Fecha ' +
                              '	AND bp.sidPernocta = :Pernocta ' +
                              'GROUP BY bp.sIdEquipo ');
          QrRecursos.ParamByName('Orden').AsString := QrColumnas.FieldByName('sContrato').AsString;
          QrRecursos.ParamByName('Folio').AsString := QrColumnas.FieldByName('sNumeroOrden').AsString;
          QrRecursos.ParamByName('Fecha').AsDate := reportediario.FieldByName('dIdFecha').AsDateTime;
          QrRecursos.ParamByName('Pernocta').AsString := QrColumnas.FieldByName('PernoctaP').AsString;
          QrRecursos.Open;
        {$ENDREGION}

        ifila := 17;

        {$REGION 'INSERTA EL CUADRE'}
          QrMoe.First;
          while Not QrMoe.Eof do
          begin
            Excel.Range[ColumnaNombre(iColumna)+IntToStr(iFila)+':'+ColumnaNombre(iColumna)+IntToStr(iFila)].Select;
            Excel.Selection.Value := 0;
            if QrRecursos.Locate('sIdEquipo', QrMoe.FieldByName('sIdRecurso').AsString, []) then
              Excel.Selection.Value := RoundTo(QrRecursos.FieldByName('Total').AsFloat + QrRecursos.FieldByName('Ajuste').AsFloat, -2);

            Inc(iFila);
            QrMoe.Next;
          end;
        {$ENDREGION}

        Inc(iColumna, 3);
        QrColumnas.Next;
      end;      
    {$ENDREGION}

    {$REGION 'GENERA LOS CUADROS SIGUIENTES SI NO SE GENERARON - ESTILO'}
      if iColumna < 58 then
      begin
        aux := iColumna;
        while iColumna <= 58 do
        begin
          excel.range[columnanombre(aux)+'11:'+columnanombre(aux)+inttostr(ifila)].select;
          excel.selection.insert(xlToright);
          excel.range[columnanombre(aux+4)+'11:'+columnanombre(aux+5)+inttostr(ifila)].select;
          excel.selection.copy;
          excel.range[columnanombre(aux)+'11:'+columnanombre(aux+2)+inttostr(ifila)].select;
          excel.selection.pastespecial;
          excel.cutcopymode := false;
          Inc(iColumna, 3);
        end;
      end;
    {$ENDREGION}

    {$REGION 'TOTALES'}
    //HORIZONTALES
    aux2 := 23;
    inc(icolumna,6);
    for aux := 1 to qrColumnas.Recordcount do
    begin
      excel.range[columnanombre(aux2)+inttostr(ifila)].select;
      sSuma := 'SUM('+columnanombre(aux2)+'17:'+columnanombre(aux2)+inttostr(ifila-1)+')';
      excel.selection.formula := '=IF('+sSuma+'>0, '+sSuma+', "")';
      Inc(aux2, 3);
    end;
    //VERTICALES
    for aux := 17 to iFila - 1 do
    begin
      excel.range[columnanombre(icolumna-3)+inttostr(aux)].select;
      excel.selection.formula := '=SUM(W'+inttostr(aux)+':'+columnanombre(icolumna-5)+inttostr(aux)+')';
    end;

    excel.range[columnanombre(icolumna-3)+inttostr(ifila)].select;
    excel.selection.formula := '=SUM('+columnanombre(icolumna-3)+'17:'+columnanombre(icolumna-3)+inttostr(ifila-1)+')';
    excel.range[columnanombre(icolumna)+inttostr(ifila)].select;
    excel.selection.formula := '=SUM('+columnanombre(icolumna)+'17:'+columnanombre(icolumna)+inttostr(ifila-1)+')';
    {$ENDREGION}

    excel.range['A'+inttostr(ifila+3)+':AE'+inttostr(ifila+3)].select;
    excel.selection.insert;

    {$REGION 'ITUTLO DE LA CABECERA'}
    with connection.qrybusca do
    begin
      active := false;
      sql.text := 'select sdescripcion from anexos where stipo = "EQUIPO"';
      open;

      excel.range['A15:AB16'].select;
      excel.selection.mergecells := true;
      excel.selection.value := fieldbyname('sdescripcion').asstring;
    end;
    {$ENDREGION}

    excel.activewindow.zoom := 100;
    excel.range['A1'].select;

  Finally
    QrMoe.Free;
    QrRecursos.Free;
  End;
end;

procedure TfrmDiarioTurno.Salir1Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click
end;

procedure TfrmDiarioTurno.SdgExcelTypeChange(Sender: TObject);
begin
  case SdgExcel.FilterIndex of
    1 : SdgExcel.DefaultExt := 'xls';
    2 : SdgExcel.DefaultExt := 'xlsx';
  else
    SdgExcel.DefaultExt := '';
  end;
end;

procedure TfrmDiarioTurno.DiarioGetValue(const VarName: String;
  var Value: Variant);

begin

   if CompareText(VarName, 'Avance_Patio') = 0 then
      Value := ReporteDiario.FieldByName('AvancePatio').AsString;

   if CompareText(VarName, 'CAD_ANEXOS') = 0 then
      Value := CadAnexos;

   If CompareText(VarName, 'FECHA_REPORTECONS') = 0 then
       Value := global_fecha_reportecons ;
   If CompareText(VarName, 'FECHA_REPORTE') = 0 then
       Value := global_fecha_barco ;
   If CompareText(VarName, 'DIAS_TRANSCURRIDOS') = 0 then
       Value := global_dias_por_transcurrir ;
   If CompareText(VarName, 'DIAS_POR_TRANSCURRIR') = 0 then
       Value := global_dias_transcurridos ;
   If CompareText(VarName, 'EMBARCACION') = 0 then
       Value := global_nombre_Embarcacion ;

  If CompareText(VarName, 'TANEXO_PERSONAL') = 0 then
  begin
    connection.qrybusca.active := false;
    connection.qrybusca.sql.text := 'select sDescripcion from anexos where sTipo = "PERSONAL" ';
    connection.qrybusca.open;
    if connection.qrybusca.recordcount>0 then
      Value :=connection.qrybusca.fieldbyname('sdescripcion').asstring;
  end;

  If CompareText(VarName, 'TANEXO_EQUIPO') = 0 then
  begin
    connection.qrybusca.active := false;
    connection.qrybusca.sql.text := 'select sDescripcion from anexos where sTipo = "EQUIPO" ';
    connection.qrybusca.open;
    if connection.qrybusca.recordcount>0 then
      Value :=connection.qrybusca.fieldbyname('sdescripcion').asstring;
  end;


  If CompareText(VarName, 'TITULO_CENTRO') = 0 then
      Value := sTituloCentro ;

  If CompareText(VarName, 'ORDEN') = 0 then
      Value := 'DE LA ORDEN DE TRABAJO ' + tsNumeroOrden.Text ;

  If CompareText(VarName, 'FECHA_INICIO') = 0 then
      Value := ReporteDiario.FieldValues['dIdFecha']  ;

  If CompareText(VarName, 'FECHA_FINAL') = 0 then
      Value := ReporteDiario.FieldValues['dIdFecha']  ;

  If CompareText(VarName, 'DESCRIPCION_CORTA') = 0 then
      Value := sDiarioDescripcionCorta ;

  If CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
      Value := sDiarioComentario ;

  If CompareText(VarName, 'sNewTexto') = 0 then
      Value := sDiarioTitulo ;

  if CompareText(VarName, 'sTexto') = 0 then
    If uppercase(ReporteDiario.FieldByname('lstatus').asstring) = 'AUTORIZADO' Then
      Value := ' ';

  If CompareText(VarName, 'PERIODO') = 0 then
      Value := sDiarioPeriodo ;

  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSuperIntendente
      Else
          Value := sSuperIntendentePatio ;

  If CompareText(VarName, 'SUPERVISOR') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSupervisor
      Else
          Value := sSupervisorPatio ;

  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSupervisorTierra
      Else
          Value := sResidente ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
      begin
          if pos('#', sPuestoSuperIntendente) > 0 then
             Value := copy(sPuestoSuperIntendente,0, pos('#', sPuestoSuperIntendente)-1) +#13+ copy(sPuestoSuperIntendente,pos('#', sPuestoSuperIntendente)+1, length(sPuestoSuperIntendente))
          else
             Value := sPuestoSuperIntendente
      end
      Else
          Value := sPuestoSuperIntendentePatio ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
      begin
          if pos('#', sPuestoSupervisor) > 0 then
             Value := copy(sPuestoSupervisor,0, pos('#', sPuestoSupervisor)-1) +#13+ copy(sPuestoSupervisor,pos('#', sPuestoSupervisor)+1, length(sPuestoSupervisor))
          else
             Value := sPuestoSupervisor
      end
      Else
          Value := sPuestoSupervisorPatio ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
      begin
          if pos('#', sPuestoSupervisorTierra) > 0 then
             Value := copy(sPuestoSupervisorTierra,0, pos('#', sPuestoSupervisorTierra)-1) +#13+ copy(sPuestoSupervisorTierra,pos('#', sPuestoSupervisorTierra)+1, length(sPuestoSupervisorTierra))
          else
             Value := sPuestoSupervisorTierra
      end
      Else
          Value := sPuestoResidente ;

  If CompareText(VarName, 'CAPITAN') = 0 then
      Value := sCapitan ;

  If CompareText(VarName, 'DESCRIPCION_ORDEN') = 0 then
      Value := mDescripcionOrden  ;

  If CompareText(VarName, 'Oficio_Orden') = 0 then
      Value := sFolio  ;

  If CompareText(VarName, 'PLATAFORMA') = 0 then
      Value := sPlataformaOrden  ;

  If CompareText(VarName, 'JORNADAS_SUSPENDIDAS') = 0 then
      Value := sJornadasSuspendidas  ;

  If CompareText(VarName, 'TURNO') = 0 then
      Value := sDescripcionTurno ;

  If CompareText(VarName, 'REAL_ANTERIOR') = 0 then
      Value := dRealGlobalAnterior ;
  If CompareText(VarName, 'REAL_ACTUAL') = 0 then
      Value := dRealGlobalActual ;
  If CompareText(VarName, 'REAL_ACUMULADO') = 0 then
      Value := dRealGlobalAcumulado ;
  If CompareText(VarName, 'PROGRAMADO_ANTERIOR') = 0 then
      Value := dProgramadoGlobalAnterior ;
  If CompareText(VarName, 'PROGRAMADO_ACTUAL') = 0 then
      Value := dProgramadoGlobalActual ;
  If CompareText(VarName, 'PROGRAMADO_ACUMULADO') = 0 then
      Value := dProgramadoGlobalAcumulado;
    If CompareText(VarName, 'SUMPERSONAL') = 0 then
      Value := SumaPersonal ;
  If CompareText(VarName, 'SUMEQUIPOS') = 0 then
      Value := SumaEquipos ;


  If CompareText(VarName, 'REAL_ANTERIOR_MULTIPLE') = 0 then
      Value := dRealOrdenAnterior ;
  If CompareText(VarName, 'REAL_ACTUAL_MULTIPLE') = 0 then
      Value := dRealOrdenActual ;
  If CompareText(VarName, 'REAL_ACUMULADO_MULTIPLE') = 0 then
      Value := dRealOrdenAcumulado ;
  If CompareText(VarName, 'PROGRAMADO_ANTERIOR_MULTIPLE') = 0 then
      Value := dProgramadoOrdenAnterior ;
  If CompareText(VarName, 'PROGRAMADO_ACTUAL_MULTIPLE') = 0 then
      Value := dProgramadoOrdenActual ;
  If CompareText(VarName, 'PROGRAMADO_ACUMULADO_MULTIPLE') = 0 then
      Value := dProgramadoOrdenAcumulado ;
  If CompareText(VarName, 'FECHA_REPSOL') = 0 then
      Value := sFechaReporte ;

  If CompareText(VarName, 'NOM_PLATAFORMA1') = 0 then
      Value := sPlataforma1 ;
  If CompareText(VarName, 'NOM_PLATAFORMA2') = 0 then
      Value := sPlataforma2 ;
  If CompareText(VarName, 'NOM_PLATAFORMA3') = 0 then
      Value := sPlataforma3 ;
  If CompareText(VarName, 'NOM_PLATAFORMA4') = 0 then
      Value := sPlataforma4 ;
  If CompareText(VarName, 'NOM_PLATAFORMA5') = 0 then
      Value := sPlataforma5 ;
  If CompareText(VarName, 'NOM_PLATAFORMA6') = 0 then
      Value := sPlataforma6 ;
  If CompareText(VarName, 'NOM_PLATAFORMA7') = 0 then
      Value := sPlataforma7 ;

  if QryReporteFotografico.Active then begin
    if QryReporteFotografico.RecordCount > 0 then begin
      If CompareText(VarName, 'HAYFOTOS') = 0 then
        Value := 'SI' ;
    end
    else begin
      If CompareText(VarName, 'HAYFOTOS') = 0 then
        Value := 'NO' ;
    end;
  end;

  If CompareText(VarName, 'REPDIRC17') = 0 then
      Value := global_RepDirC17 ;

  //Aqui consultamos que las ordenes esten autorizadas
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select * from reportediario where dIdFecha =:fecha and lStatus  <> "Autorizado" '+
                              'and sContrato <> :Contrato');
  connection.QryBusca.ParamByName('Contrato').AsString := global_contrato_barco;
  connection.QryBusca.ParamByName('Fecha').AsDate      := reporteDiario.FieldValues['dIdFecha'];
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
  begin
      if CompareText(VarName, 'REPORTES_AUTORIZADOS') = 0 then
         Value := 'No';
  end
  else
  begin
      if CompareText(VarName, 'REPORTES_AUTORIZADOS') = 0 then
         Value := 'Si';
  end;

end;

procedure TfrmDiarioTurno.DirariodeCobro1Click(Sender: TObject);
begin
   //local_iIndice := 13;
   //GeneraReporteDiario_Excel(Connection.Contrato.FieldByName('sIdResidencia').AsString, False, False, False, False, False, False, False, False, False, False, '', False, True);
   GeneraReporteDiario_PDF(FtAbordo,FtsRRecursos_detalle);
end;

procedure TfrmDiarioTurno.ReporteDiarioAfterScroll(DataSet: TDataSet);
Var
    Valido : Boolean ;
begin
    if isOpen then
    begin
        convenio_reporte := '' ;

        bImagen.Picture.Bitmap := Nil ;

        tsDescripcion.ReadOnly := True ;
        CheckIncluye.Enabled := False ;
        tsDescripcion.Text := '' ;
        btnGrabar.Enabled := False ;
        btnCancelar.Enabled := False ;
        btnExaminar.Enabled := True ;
        btnEditar.Enabled := True ;
        btnSaveImage.Enabled := False ;
        btnEliminar.Enabled := False ;
        BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
        If Reportediario.RecordCount > 0 then
        Begin
            tsDescripcion.Text := '' ;
            param_global_contrato := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato;
            global_fecha := ReporteDiario.FieldByName('dIdFecha').AsDateTime ;
            global_orden := ReporteDiario.FieldByName('sNumeroOrden').AsString;
            global_turno_reporte := ReporteDiario.FieldByName('sIdTurno').AsString;
            convenio_reporte := ReporteDiario.FieldByName('sIdConvenio').AsString;
            tdIdFecha.Date := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
            tsIdTurno.KeyValue := ReporteDiario.FieldByName('sIdTurno').AsString;
            tsNumeroReporte.Text := ReporteDiario.FieldByName('sNumeroReporte').AsString;
            tsHoraInicio2.Text := ReporteDiario.FieldByName('sOperacionInicio').AsString;
            tsHoraFinal2.Text := ReporteDiario.FieldByName('sOperacionFinal').AsString;
            tsTiempoEfectivo.Text := ReporteDiario.FieldByName('sTiempoEfectivo').AsString;
            tsTema.Text := ReporteDiario.FieldByName('sTema').AsString;
            tsTiempoMuerto.Text := ReporteDiario.FieldByName('sTiempoMuerto').AsString;
            tsTiempoMuertoContrato.Text := ReporteDiario.FieldByName('sTiempoMuertoReal').AsString;
            tsTiempo.Text := ReporteDiario.FieldByName('sTiempo').AsString;
            tsTransporte.Text := ReporteDiario.FieldByName('sTransporte').AsString;
            tsInicioPlatica.Text := ReporteDiario.FieldByName('sInicioPlatica').AsString;
            tsFinalPlatica.Text := ReporteDiario.FieldByName('sFinalPlatica').AsString;
            cbbCriterios.ItemIndex := ReporteDiario.FieldByName('TipoAjuste').AsInteger;
            cbbFactores.ItemIndex := ReporteDiario.FieldByName('iFactorAjuste').AsInteger;
            chkAplicaCuadre.Checked := ReporteDiario.FieldByName( 'eAplicaNuevoCuadre' ).AsString = 'Si';
            chkOrdenar.Checked := ReporteDiario.FieldByName('lOrdenaxHorario').AsString = 'Si';
            global_estado_reporte := ReporteDiario.FieldByName( 'lStatus' ).AsString;
            cbbCriterios.OnChange(Self);

            qryFoliosOrdenes.Active := False ;
            qryFoliosOrdenes.Params.ParamByName('Contrato').DataType := ftString ;
            qryFoliosOrdenes.Params.ParamByName('Contrato').Value    := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato ;
            qryFoliosOrdenes.Params.ParamByName('fecha').DataType    := ftDate ;
            qryFoliosOrdenes.Params.ParamByName('fecha').Value       := reportediario.FieldValues['dIdFecha'] ;
            qryFoliosOrdenes.Open ;

           // CargarGridFolios(NgFolios);

            if pgDiario.ActivePageIndex = 1 then
            begin
                ReporteFotografico.Active := False ;
                ReporteFotografico.Params.ParamByName('contrato').DataType := ftString ;
                ReporteFotografico.Params.ParamByName('contrato').Value := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato ;
                ReporteFotografico.Params.ParamByName('Reporte').DataType := ftString ;
                ReporteFotografico.Params.ParamByName('Reporte').Value := ReporteDiario.FieldValues['sNumeroReporte'] ;
                ReporteFotografico.Open ;

                If ReporteFotografico.State <> dsInactive Then
                   If ReporteFotografico.RecordCount > 0 Then
                   Begin
                       btnSaveImage.Enabled := True ;
                       btnEliminar.Enabled := True;
                       BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
                   End ;

                 //Consultamos las partidas afectadas en el Reporte Diario..
                partidas.Active := False ;
                partidas.Params.ParamByName('Contrato').DataType := ftString ;
                partidas.Params.ParamByName('Contrato').Value    := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato ;
                partidas.Params.ParamByName('fecha').DataType    := ftDate ;
                partidas.Params.ParamByName('fecha').Value       := reportediario.FieldValues['dIdFecha'] ;
                partidas.Params.ParamByName('turno').DataType    := ftString ;
                partidas.Params.ParamByName('turno').Value       := reportediario.FieldValues['sIdTurno'] ;
                partidas.Open ;
            end;
        End
        Else
        Begin
            ReporteFotografico.Active := False ;
            ReporteFotografico.Params.ParamByName('contrato').DataType := ftString ;
            ReporteFotografico.Params.ParamByName('contrato').Value := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato ;
            ReporteFotografico.Params.ParamByName('Reporte').DataType := ftString ;
            ReporteFotografico.Params.ParamByName('Reporte').Value := '' ;
            ReporteFotografico.Open ;

            global_orden := '' ;
            global_turno_reporte := '' ;
            tdIdFecha.Date := Date ;
            tsIdTurno.KeyValue := '' ;
            tsNumeroReporte.Text := '' ;
            tsHoraInicio2.Text := '00:00' ;
            tsHoraFinal2.Text := '00:00' ;
            tsTiempoEfectivo.Text := '00:00' ;
            tsTema.Text := '';
            tsTiempoMuerto.Text := '00:00' ;
            tsTiempoMuertoContrato.Text := '00:00' ;
            tsTiempo.Text := '' ;
            tsTransporte.Text := '' ;
            tsInicioPlatica.Text := '00:00' ;
            tsFinalPlatica.Text := '00:00' ;
            cbbCriterios.ItemIndex := -1;
            cbbCriterios.OnChange(Self);
        End ;
    end;
end;

procedure TfrmDiarioTurno.tsIdTurnoEnter(Sender: TObject);
begin
    tsIdTurno.Color := global_color_entrada
end;

procedure TfrmDiarioTurno.tsIdTurnoExit(Sender: TObject);
begin
    If OpcButton <> '' Then
        If OpcButton = 'New' Then
        Begin
            lNuevoDia := True ;
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select sContrato from reportediario Where sContrato = :contrato and sOrden =:Orden And sNumeroOrden = :Folio And ' +
                                        'dIdFecha = :fecha And sIdTurno = :Turno') ;
            Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Contrato').value := global_Contrato_Barco;
            Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Orden').value := tsOTs.KeyValue; //global_contrato ;
            Connection.QryBusca.Params.ParamByName('Folio').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Folio').value := tsNumeroOrden.Text ;
            Connection.QryBusca.Params.ParamByName('fecha').DataType := ftDate ;
            Connection.QryBusca.Params.ParamByName('fecha').value := tdIdFecha.Date ;
            Connection.QryBusca.Params.ParamByName('turno').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
            Connection.QryBusca.Open ;
            If Connection.QryBusca.RecordCount > 0 Then
                lNuevoDia := False
        End ;
    tsIdTurno.Color := global_color_salida
end;

procedure TfrmDiarioTurno.tsIdTurnoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
      tsTiempo.SetFocus
end;

procedure TfrmDiarioTurno.btnPermisosClick(Sender: TObject);
begin
  If ReporteDiario.RecordCount > 0 Then
      frmNoil.opPermisos.Click ;
end;

procedure TfrmDiarioTurno.FormActivate(Sender: TObject);
begin
    If lIniciado Then
    Begin
       try
         SavePlace := BView_ReporteDiario.DataController.DataSource.DataSet.GetBookmark;
         IsOpen:=false;
         ReporteDiario.DisableControls;

         ReporteDiario.Active := False ;
         ReporteDiario.Open ;

         connection.configuracion.refresh ;
         try
            BView_ReporteDiario.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
         except
         else
            BView_ReporteDiario.DataController.DataSet.FreeBookmark(SavePlace);
         end;
      Finally
       ReporteDiario.EnableControls;
       IsOpen:=true;
       ReporteDiarioAfterScroll(ReporteDiario);
      end;
    End ;
    lIniciado := True
end;

procedure TfrmDiarioTurno.Cut2Click(Sender: TObject);
begin
    MessageDlg('El Reporte ha sido Autorizado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);

end;

procedure TfrmDiarioTurno.cxActividadesClick(Sender: TObject);
begin
    param_global_contrato := ReporteDiario.FieldByName('sOrden').AsString;
    If ReporteDiario.RecordCount > 0 Then
    try
      Application.CreateForm(TfrmBitacoraDepartamental_2,frmBitacoraDepartamental_2);
      frmBitacoraDepartamental_2.showmodal;
    finally
      ;
    end;
end;

procedure TfrmDiarioTurno.cxSalidaClick(Sender: TObject);
begin
    param_global_contrato := ReporteDiario.FieldValues['sOrden'];
    Application.CreateForm(TfrmSalidaAlmacen, frmSalidaAlmacen);
    frmSalidaAlmacen.ShowModal;
end;

procedure TfrmDiarioTurno.cxMovimientosBarcoClick(Sender: TObject);
begin
  global_fecha_rd := reportediario.FieldByName('dIdFecha').AsDateTime;
  Application.CreateForm(TfrmAdmonyTiempos, frmAdmonyTiempos);
  frmAdmonyTiempos.Show;
end;

procedure TfrmDiarioTurno.cxNotasClick(Sender: TObject);
begin
   frm_NotasGenerales.FechaReporte := reportediario.FieldByName('dIdFecha').AsDateTime;
   Application.CreateForm(TfrmNotasGenerales, frmNotasGenerales);
   frmNotasGenerales.ShowModal;
end;

procedure TfrmDiarioTurno.cxRecepcionClick(Sender: TObject);
begin
    If ReporteDiario.RecordCount > 0 Then
    begin
        param_global_contrato := reportediario.FieldValues['sOrden'];
        frmNoil.opAvisodeEmb.Click ;
    end;
end;

procedure TfrmDiarioTurno.cxEquiposClick(Sender: TObject);
begin
  global_fecha_rd := reportediario.FieldByName('dIdFecha').AsDateTime;
  param_global_contrato := ReporteDiario.FieldByName('sOrden').AsString;

  Application.CreateForm(TfrmTripulacionConsumos, frmTripulacionConsumos);
  frmTripulacionConsumos.ShowModal;
end;

procedure TfrmDiarioTurno.cxCuadreClick(Sender: TObject);
begin
  if ReporteDiario.FieldByName( 'eAplicaNuevoCuadre' ).AsString = 'Si' then
  begin
    Application.CreateForm( TfrmCuadreNormal, frmCuadreNormal );
    frmCuadreNormal.ShowModal;
  end
  else
  begin
     Application.CreateForm( Tfrmcuadre, frmcuadre );
     frmcuadre.ShowModal;
  end;
end;

procedure TfrmDiarioTurno.cxImportaClick(Sender: TObject);
begin
   Application.CreateForm(TFrmImportaExportaActiv, frmimportaexportaactiv);
   frmimportaexportaactiv.DFecha.Date := ReporteDiario.FieldByName('didfecha').AsDateTime;
   frmimportaexportaactiv.ShowModal;
end;

procedure TfrmDiarioTurno.Grid_ReportesEnter(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
       frmBarra1.btnCancel.Click ;
end;

procedure TfrmDiarioTurno.Cut1Click(Sender: TObject);
begin
    MessageDlg('El Reporte ha sido Autorizado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);
end;

procedure TfrmDiarioTurno.btnFirmasClick(Sender: TObject);
begin
    If ReporteDiario.RecordCount > 0 Then
        frmNoil.opFirmas.Click
end;

procedure TfrmDiarioTurno.btnExaminarClick(Sender: TObject);
Var
   size: Real ;
   indice   : integer;
   lTamanio : boolean;
begin
  If ReporteDiario.RecordCount > 0 Then
     If frmBarra1.btnCancel.Enabled = False Then
       //If ReporteDiario.FieldValues['lStatus'] <> 'Autorizado' then
       Begin
          btnPreview.Enabled :=False;
          sOpcion := 'New' ;
          bImagen.Picture.Bitmap := Nil ;
          btnGrabar.Enabled := True ;
          btnCancelar.Enabled := True ;
          btnSaveImage.Enabled := False ;
          btnExaminar.Enabled := False ;
          btnEditar.Enabled := False ;
          tsDescripcion.ReadOnly := False ;
          CheckIncluye.Checked := True ;
          CheckIncluye.Enabled := True ;
          OpenPicture.Title := 'Inserta Imagen';
          sArchivo := '' ;
          tsDescripcion.Text := '' ;
          lTamanio := True;

          BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
          If OpenPicture.Execute then
          begin
              indice := 0;
              OpenPicture.Files.Count;
              while indice < OpenPicture.Files.Count  do
              begin
                  try
                      sArchivo := ResizeImage(OpenPicture.Files.Strings[indice]) ;
                      size := Tamanyo (sArchivo) ;
                      If size <= 350 Then
                          bImagen.Picture.LoadFromFile(sArchivo)
                      Else
                      begin
                          MessageDlg('La imagen a adjuntar no debe ser mayor a 350 kb.', mtInformation, [mbOk], 0);
                          lTamanio := False;
                      end;
                  except
//                      bImagen.Picture.LoadFromFile('') ;
                  end;
                  inc(indice);
              end;
              if lTamanio = False then
                 sArchivo := '';
          end
       end;
      // Else
      //    MessageDlg('El Reporte ha sido Autorizado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);

end;

procedure TfrmDiarioTurno.ReporteFotografico1Click(Sender: TObject);
begin
    GeneraReporteDiario_PDF(FtAbordo,FtsFotografico);
end;

procedure TfrmDiarioTurno.ReporteFotograficoAfterScroll(
  DataSet: TDataSet);
begin
//    bImagen.Picture.LoadFromFile('') ;
    bImagen.Picture.Bitmap := Nil ;
    If btnGrabar.Enabled = False Then
        If ReporteFotografico.RecordCount > 0 then
        Begin
            tsDescripcion.Text := ReporteFotografico.FieldValues['sDescripcion'] ;
            If ReporteFotografico.FieldValues['lIncluye'] = 'Si' Then
                CheckIncluye.Checked := True
            Else
                CheckIncluye.Checked := False;

            if reportefotografico.FieldValues['sWbs'] = '*' then
               cbPartida.KeyValue := Null
            else
               cbPartida.KeyValue := reportefotografico.FieldValues['sWbs'];

            chkInicio.Checked     := false;
            chkDesarrollo.Checked := false;
            chkConclusion.Checked := false;
            if reportefotografico.FieldValues['sFasePartida'] = 'Inicio' then
               chkInicio.Checked := True;
            if reportefotografico.FieldValues['sFasePartida'] = 'Desarrollo' then
               chkDesarrollo.Checked := True;
            if reportefotografico.FieldValues['sFasePartida'] = 'Conclusion' then
               chkConclusion.Checked := True;
            btnPreview.Click;
        End
end;

procedure TfrmDiarioTurno.ResumendeMaterial1Click(Sender: TObject);
begin
    //local_iIndice := 3;
    //GeneraReporteDiario_Excel(Connection.Contrato.FieldByName('sIdResidencia').AsString, False, False, False, False, False, False, False, False, True, False, '', False, False);
    GeneraReporteDiario_PDF(FtAbordo,FtsRMaterial);
end;

procedure TfrmDiarioTurno.Resumenderecursos1Click(Sender: TObject);
begin
   //local_iIndice := 13;
   //GeneraReporteDiario_Excel(Connection.Contrato.FieldByName('sIdResidencia').AsString, False, False, False, False, False, False, False, False, False, False, '', False, True);
   GeneraReporteDiario_PDF(FtAbordo,FtsRRecursos);
end;

procedure TfrmDiarioTurno.btnGrabarClick(Sender: TObject);
Var
  iItem    : Integer ;
  indice   : integer;
Begin
  If ReporteDiario.RecordCount > 0 Then
      //If ReporteDiario.FieldValues['lStatus'] <> 'Autorizado' then
          If sOpcion = 'New' Then
          Begin
              If sArchivo <> '' Then
              Begin
                  btnPreview.Enabled := True ;
                  iItem  := 1 ;
                  indice := 0;
                  while indice < OpenPicture.Files.Count  do
                  begin
                      sArchivo := OpenPicture.Files.Strings[indice];

                      connection.zCommand.Active := False;
                      connection.zCommand.SQL.Clear;
                      connection.zCommand.SQL.Add('select max(iImagen) as iImagen from reportefotografico '+
                                                  'where sContrato =:Contrato and sNumeroOrden =:Orden and dIdFecha =:Fecha and sIdTurno =:Turno group by sContrato');
                      connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                      connection.zcommand.Params.ParamByName('Contrato').Value    := ReporteDiario.FieldByName('sOrden').AsString;//  Global_Contrato ;
                      connection.zcommand.Params.ParamByName('Orden').DataType    := ftString ;
                      connection.zcommand.Params.ParamByName('Orden').Value       := ReporteDiario.FieldValues['sNumeroOrden'] ;
                      connection.zcommand.Params.ParamByName('Turno').DataType    := ftString ;
                      connection.zcommand.Params.ParamByName('Turno').Value       := ReporteDiario.FieldValues['sIdTurno'] ;
                      connection.zcommand.Params.ParamByName('Fecha').DataType    := ftDate ;
                      connection.zcommand.Params.ParamByName('Fecha').Value       := ReporteDiario.FieldValues['dIdFecha'] ;
                      connection.zCommand.Open;

                      if connection.zCommand.RecordCount > 0 then
                         iItem := connection.zCommand.FieldValues['iImagen'] + 1;

                      connection.zCommand.Active := False ;
                      connection.zCommand.SQL.Clear ;
                      connection.zcommand.SQL.Add ( 'Insert Into reportefotografico (sContrato, sNumeroReporte, sIdTurno, dIdFecha, iImagen, bImagen, sDescripcion, lIncluye, sNumeroOrden, sWbs, sNumeroActividad, sFasePartida) ' +
                                                    'Values (:Contrato, :Reporte, :Turno, :Fecha, :Item, :Imagen, :Descripcion, :Incluye, :Orden, :Wbs, :Actividad, :Fase)') ;
                      connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                      connection.zcommand.Params.ParamByName('Contrato').Value    := ReporteDiario.FieldByName('sOrden').AsString;//Global_Contrato ;
                      connection.zcommand.Params.ParamByName('Reporte').DataType  := ftString ;
                      connection.zcommand.Params.ParamByName('Reporte').Value     := ReporteDiario.FieldValues['sNumeroReporte'] ;
                      connection.zcommand.Params.ParamByName('Turno').DataType    := ftString ;
                      connection.zcommand.Params.ParamByName('Turno').Value       := ReporteDiario.FieldValues['sIdTurno'] ;
                      connection.zcommand.Params.ParamByName('Fecha').DataType    := ftDate ;
                      connection.zcommand.Params.ParamByName('Fecha').Value       := ReporteDiario.FieldValues['dIdFecha'] ;
                      connection.zcommand.Params.ParamByName('Item').DataType     := ftInteger ;
                      connection.zcommand.Params.ParamByName('Item').Value        := iItem ;
                      connection.zcommand.Params.ParamByName('Imagen').LoadFromFile(sArchivo, ftGraphic) ;
                      connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo ;
                      connection.zcommand.Params.ParamByName('Descripcion').Value    := tsDescripcion.Text ;
                      connection.zcommand.Params.ParamByName('Orden').DataType       := ftString ;
                      connection.zcommand.Params.ParamByName('Orden').Value          := ReporteDiario.FieldValues['sNumeroOrden'] ;
                      connection.zcommand.Params.ParamByName('Incluye').DataType     := ftString ;
                      If CheckIncluye.Checked  Then
                         connection.zcommand.Params.ParamByName('Incluye').Value     := 'Si'
                      Else
                         connection.zcommand.Params.ParamByName('Incluye').Value     := 'No' ;

                      connection.zcommand.Params.ParamByName('Wbs').DataType         := ftString ;
                      if cbPartida.KeyValue <> Null then
                         connection.zcommand.Params.ParamByName('Wbs').Value         := Partidas.FieldValues['sWbs'];

                      connection.zcommand.Params.ParamByName('Actividad').DataType  := ftString ;
                      if cbPartida.KeyValue <> Null then
                         connection.zcommand.Params.ParamByName('Actividad').Value   := Partidas.FieldValues['sNumeroActividad'];

                      connection.zcommand.Params.ParamByName('Fase').DataType        := ftString ;
                      connection.zcommand.Params.ParamByName('Fase').Value           := 'Ninguno';
                      if chkInicio.Checked then
                         connection.zcommand.Params.ParamByName('Fase').Value        := 'Inicio';
                      if chkDesarrollo.Checked then
                         connection.zcommand.Params.ParamByName('Fase').Value        := 'Desarrollo';
                      if chkConclusion.Checked then
                         connection.zcommand.Params.ParamByName('Fase').Value        := 'Conclusion';
                      connection.zCommand.ExecSQL ();
                      inc(indice);
                  end;
                  // Actualizo Kardex del Sistema ....
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zcommand.SQL.Add ('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                               'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
                  connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Contrato').Value := ReporteDiario.FieldByName('sOrden').AsString;//Global_Contrato ;
                  connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
                  connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                  connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
                  connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
                  connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Descripcion').Value := 'Agrega Fotografias a Reporte Diario ' + tsNumeroReporte.Text + ' del dia ' + DateToStr(tdIdFecha.Date) ;
                  connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
                  connection.zCommand.ExecSQL ;

              End
          End
          Else
          Begin
              If sArchivo <> '' Then
              Begin
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zcommand.SQL.Add ( 'Update reportefotografico SET bImagen = :Imagen, sDescripcion = :Descripcion, sIdTurno = :Turno, dIdFecha = :Fecha, lIncluye = :Incluye, sWbs =:Wbs, sNumeroActividad =:Actividad, sFasePartida =:Fase ' +
                                                'Where sContrato = :contrato and sNumeroOrden =:Orden And sNumeroReporte = :Reporte And iImagen = :Item') ;
                  connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Contrato').Value    := ReporteDiario.FieldByName('sOrden').AsString;//Global_Contrato ;
                  connection.zcommand.Params.ParamByName('Reporte').DataType  := ftString ;
                  connection.zcommand.Params.ParamByName('Reporte').Value     := ReporteFotografico.FieldValues['sNumeroReporte'] ;
                  connection.zcommand.Params.ParamByName('Turno').DataType    := ftString ;
                  connection.zcommand.Params.ParamByName('Turno').Value       := ReporteDiario.FieldValues['sIdTurno'] ;
                  connection.zcommand.Params.ParamByName('Fecha').DataType    := ftDate ;
                  connection.zcommand.Params.ParamByName('Fecha').Value       := ReporteDiario.FieldValues['dIdFecha'] ;
                  connection.zcommand.Params.ParamByName('Item').DataType     := ftInteger ;
                  connection.zcommand.Params.ParamByName('Item').Value        := ReporteFotografico.FieldValues['iImagen'] ;
                  connection.zcommand.Params.ParamByName('Imagen').LoadFromFile(sArchivo, ftGraphic) ;
                  connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo ;
                  connection.zcommand.Params.ParamByName('Descripcion').Value    := tsDescripcion.Text ;
                  connection.zcommand.Params.ParamByName('Orden').DataType       := ftString ;
                  connection.zcommand.Params.ParamByName('Orden').Value          := ReporteDiario.FieldValues['sNumeroOrden'] ;
                  connection.zcommand.Params.ParamByName('Incluye').DataType     := ftString ;
                  If CheckIncluye.Checked  Then
                      connection.zcommand.Params.ParamByName('Incluye').Value := 'Si'
                  Else
                      connection.zcommand.Params.ParamByName('Incluye').Value := 'No' ;

                  connection.zcommand.Params.ParamByName('Wbs').DataType         := ftString ;
                  if cbPartida.KeyValue <> Null then
                     connection.zcommand.Params.ParamByName('Wbs').Value         := Partidas.FieldValues['sWbs'];

                  connection.zcommand.Params.ParamByName('Actividad').DataType  := ftString ;
                  if cbPartida.KeyValue <> Null then
                     connection.zcommand.Params.ParamByName('Actividad').Value   := Partidas.FieldValues['sNumeroActividad'];

                  connection.zcommand.Params.ParamByName('Fase').DataType        := ftString ;
                  connection.zcommand.Params.ParamByName('Fase').Value           := 'Ninguno';
                  if chkInicio.Checked then
                     connection.zcommand.Params.ParamByName('Fase').Value        := 'Inicio';
                  if chkDesarrollo.Checked then
                     connection.zcommand.Params.ParamByName('Fase').Value        := 'Desarrollo';
                  if chkConclusion.Checked then
                     connection.zcommand.Params.ParamByName('Fase').Value        := 'Conclusion';
                  connection.zCommand.ExecSQL ();

                  // Actualizo Kardex del Sistema ....
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zcommand.SQL.Add ('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                               'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
                  connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Contrato').Value := ReporteDiario.FieldByName('sOrden').AsString;//Global_Contrato ;
                  connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
                  connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                  connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
                  connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
                  connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Descripcion').Value := 'Actualiza Fotografias No. '+ IntToStr(reportefotografico.FieldValues['iImagen'])+' de Reporte Diario ' + tsNumeroReporte.Text + ' del dia ' + DateToStr(tdIdFecha.Date) ;
                  connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
                  connection.zCommand.ExecSQL ;
              End
              Else
              Begin
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zcommand.SQL.Add ( 'Update reportefotografico SET sDescripcion = :Descripcion, sIdTurno = :Turno, dIdFecha = :Fecha, lIncluye = :Incluye, sWbs =:Wbs, sNumeroActividad =:Actividad, sFasePartida =:Fase ' +
                                                'Where sContrato = :contrato and sNumeroOrden =:Orden And sNumeroReporte = :Reporte And iImagen = :Item') ;
                  connection.zcommand.Params.ParamByName('Contrato').DataType    := ftString ;
                  connection.zcommand.Params.ParamByName('Contrato').Value       := ReporteDiario.FieldByName('sOrden').AsString;//Global_Contrato ;
                  connection.zcommand.Params.ParamByName('Reporte').DataType     := ftString ;
                  connection.zcommand.Params.ParamByName('Reporte').Value        := ReporteFotografico.FieldValues['sNumeroReporte'] ;
                  connection.zcommand.Params.ParamByName('Turno').DataType       := ftString ;
                  connection.zcommand.Params.ParamByName('Turno').Value          := ReporteDiario.FieldValues['sIdTurno'] ;
                  connection.zcommand.Params.ParamByName('Fecha').DataType       := ftDate ;
                  connection.zcommand.Params.ParamByName('Fecha').Value          := ReporteDiario.FieldValues['dIdFecha'] ;
                  connection.zcommand.Params.ParamByName('Item').DataType        := ftInteger ;
                  connection.zcommand.Params.ParamByName('Item').Value           := ReporteFotografico.FieldValues['iImagen'] ;
                  connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo ;
                  connection.zcommand.Params.ParamByName('Descripcion').Value    := tsDescripcion.Text ;
                  connection.zcommand.Params.ParamByName('Orden').DataType       := ftString ;
                  connection.zcommand.Params.ParamByName('Orden').Value          := ReporteDiario.FieldValues['sNumeroOrden'] ;
                  connection.zcommand.Params.ParamByName('Incluye').DataType     := ftString ;
                  If CheckIncluye.Checked  Then
                      connection.zcommand.Params.ParamByName('Incluye').Value := 'Si'
                  Else
                      connection.zcommand.Params.ParamByName('Incluye').Value := 'No' ;

                  connection.zcommand.Params.ParamByName('Wbs').DataType         := ftString ;
                  if cbPartida.KeyValue <> Null then
                     connection.zcommand.Params.ParamByName('Wbs').Value         := Partidas.FieldValues['sWbs'];

                  connection.zcommand.Params.ParamByName('Actividad').DataType  := ftString ;
                  if cbPartida.KeyValue <> Null then
                     connection.zcommand.Params.ParamByName('Actividad').Value   := Partidas.FieldValues['sNumeroActividad'];

                  connection.zcommand.Params.ParamByName('Fase').DataType        := ftString ;
                  connection.zcommand.Params.ParamByName('Fase').Value           := 'Ninguno';
                  if chkInicio.Checked then
                     connection.zcommand.Params.ParamByName('Fase').Value        := 'Inicio';
                  if chkDesarrollo.Checked then
                     connection.zcommand.Params.ParamByName('Fase').Value        := 'Desarrollo';
                  if chkConclusion.Checked then
                     connection.zcommand.Params.ParamByName('Fase').Value        := 'Conclusion';
                  connection.zCommand.ExecSQL ();

                  // Actualizo Kardex del Sistema ....
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zcommand.SQL.Add ('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                               'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
                  connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Contrato').Value := ReporteDiario.FieldByName('sOrden').AsString;//Global_Contrato ;
                  connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
                  connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                  connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
                  connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
                  connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Descripcion').Value := 'Agrega Fotografias No. '+ IntToStr(reportefotografico.FieldValues['iImagen'])+' de Reporte Diario ' + tsNumeroReporte.Text + ' del dia ' + DateToStr(tdIdFecha.Date) ;
                  connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
                  connection.zCommand.ExecSQL ;
              End
          End ;
          ReporteFotografico.Active := False ;
          ReporteFotografico.Open ;
          btnGrabar.Enabled := False ;
          btnCancelar.Enabled := False ;
          btnSaveImage.Enabled := True ;
          btnExaminar.Enabled := True ;
          btnEditar.Enabled := True ;
          btnEliminar.Enabled := True ;
          btnPreview.Enabled := True ;
          tsDescripcion.ReadOnly := True ;
          CheckIncluye.Enabled := False ;
          sOpcion := '';
          BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
end;

procedure TfrmDiarioTurno.btnEliminarClick(Sender: TObject);
begin
  If ReporteDiario.RecordCount > 0 Then
     If frmBarra1.btnCancel.Enabled = False Then
       //If ReporteDiario.FieldValues['lStatus'] <> 'Autorizado' then
       begin
           If ReporteFotografico.RecordCount > 0 Then
           Begin
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zcommand.SQL.Add ( 'Delete From reportefotografico Where sContrato = :Contrato and dIdFecha =:Fecha And sNumeroReporte = :Reporte And iImagen = :Item') ;
              connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
              connection.zcommand.Params.ParamByName('Contrato').Value    := ReporteDiario.FieldValues['sOrden'] ;
              connection.zcommand.Params.ParamByName('Fecha').DataType    := ftDate;
              connection.zcommand.Params.ParamByName('Fecha').Value       := ReporteDiario.FieldValues['dIdFecha'] ;
              connection.zcommand.Params.ParamByName('Reporte').DataType  := ftString ;
              connection.zcommand.Params.ParamByName('Reporte').Value     := ReporteFotografico.FieldValues['sNumeroReporte'] ;
              connection.zcommand.Params.ParamByName('Item').DataType     := ftInteger ;
              connection.zcommand.Params.ParamByName('Item').Value        := ReporteFotografico.FieldValues['iImagen'] ;
              connection.zCommand.ExecSQL ;

              // Actualizo Kardex del Sistema ....
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zcommand.SQL.Add ('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                           'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
              connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
              connection.zcommand.Params.ParamByName('Contrato').Value := ReporteDiario.FieldByName('sOrden').AsString;//Global_Contrato ;
              connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
              connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
              connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
              connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
              connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
              connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
              connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
              connection.zcommand.Params.ParamByName('Descripcion').Value := 'Elimina Fotografia No. '+ IntToStr(reportefotografico.FieldValues['iImagen'])+' de Reporte Diario ' + tsNumeroReporte.Text + ' del dia ' + DateToStr(tdIdFecha.Date) ;
              connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
              connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
              connection.zCommand.ExecSQL ;

              bImagen.Picture.Bitmap := Nil ;
//              bImagen.Picture.LoadFromFile('') ;
              tsDescripcion.Text := '' ;
              CheckIncluye.Checked := False ;
              ReporteFotografico.Refresh ;
              BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
              If ReporteFotografico.RecordCount > 0 Then
              begin
                   btnEliminar.Enabled := True;
                   BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
              end
              Else
              begin
                   btnEliminar.Enabled := False ;
                   BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
              end;
          End;
       end ;
       //else
       //    MessageDlg('El Reporte ha sido Autorizado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);
end;

procedure TfrmDiarioTurno.TabFotograficoShow(Sender: TObject);
begin
    btnGrabar.Enabled := False ;
    btnCancelar.Enabled := False ;
    btnExaminar.Enabled := True ;
    btnEditar.Enabled := True ;
    If ReporteFotografico.State <> dsInactive Then
        If ReporteFotografico.RecordCount > 0 Then
        Begin
            btnSaveImage.Enabled := True ;
            btnEliminar.Enabled := True;
        End
        Else
        Begin
            btnSaveImage.Enabled := False ;
            btnEliminar.Enabled := False ;
        End;
    if Assigned(BotonPermiso1) then
      BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
end;

procedure TfrmDiarioTurno.btnCancelarClick(Sender: TObject);
begin
    btnPreview.Enabled := True ;
    tsDescripcion.ReadOnly := True ;
    CheckIncluye.Enabled := False ;
    btnCancelar.Enabled := False ;
    btnExaminar.Enabled := True ;
    btnEditar.Enabled := True ;
    btnGrabar.Enabled := False ;
    BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
    If ReporteFotografico.State <> dsInactive Then
        If ReporteFotografico.RecordCount > 0 Then
         Begin
             btnSaveImage.Enabled := True ;
             btnEliminar.Enabled := True ;
             BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
             Grid_Imagenes.SetFocus
         End
         Else
         Begin
             btnSaveImage.Enabled := False ;
             btnEliminar.Enabled := False ;
             BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
         End;
    sOpcion := '' ;
end;

procedure TfrmDiarioTurno.btnComentariosClick(Sender: TObject);
begin

   connection.QryBusca.Active := False ;
   connection.QryBusca.SQL.Clear ;
   connection.QryBusca.SQL.Add('select mDescripcion from bitacoradeactividades '+
                               'where sContrato =:Contrato and dIdFecha =:fecha and sIdTurno =:Turno and sNumeroOrden =:orden '+
                               'and sIdTipoMovimiento = "N" and mDescripcion <> ""') ;
   connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
   connection.QryBusca.Params.ParamByName('Contrato').Value := ReporteDiario.FieldByName('sOrden').AsString;//global_contrato ;
   connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
   connection.QryBusca.Params.ParamByName('orden').Value := reportediario.FieldValues['sNumeroOrden'] ;
   connection.QryBusca.Params.ParamByName('fecha').DataType := ftDate ;
   connection.QryBusca.Params.ParamByName('fecha').Value := reportediario.FieldValues['dIdFecha'] ;
   connection.QryBusca.Params.ParamByName('turno').DataType := ftString ;
   connection.QryBusca.Params.ParamByName('turno').Value := reportediario.FieldValues['sIdTurno'] ;
   connection.QryBusca.Open ;

   while not connection.QryBusca.Eof do
   begin
       mReporte.Text := mReporte.Text + connection.QryBusca.FieldValues['mDescripcion'];
       connection.QryBusca.Next;
   end;       
   Panel.Visible := True;

end;

procedure TfrmDiarioTurno.btnDownClick(Sender: TObject);
begin
     OrdenarFotos('Abajo');
end;

procedure TfrmDiarioTurno.btnEditarClick(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = False Then
      If ReporteFotografico.RecordCount > 0 Then
      Begin
          //If ReporteDiario.FieldValues['lStatus'] <> 'Autorizado' then
          //Begin
              btnPreview.Enabled := False ;
              sOpcion := 'Edit' ;
              sArchivo := '' ;
              btnGrabar.Enabled := True ;
              btnCancelar.Enabled := True ;
              btnExaminar.Enabled := False ;
              btnEditar.Enabled := False ;
              btnSaveImage.Enabled := False ;
              btnEliminar.Enabled := False ;
              tsDescripcion.ReadOnly := False ;
              CheckIncluye.Enabled := True ;
              //buscamos la partida en el comentario si existe..
              if cbPartida.KeyValue = Null then
              begin
                  partidas.First;
                  while not partidas.Eof do
                  begin
                      if pos(partidas.FieldValues['sNumeroActividad'], tsDescripcion.Text) > 0 then
                      begin
                          cbPartida.KeyValue := partidas.FieldValues['sWbs'];
                          partidas.Last;
                      end;
                      partidas.Next;
                  end;
              end;
//              BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
//          End
//          else
//             MessageDlg('El Reporte ha sido Autorizado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);
      End
end;

procedure TfrmDiarioTurno.bImagenClick(Sender: TObject);
Var
   size: Real ;
begin
    If btnExaminar.Enabled = False Then
    Begin
        OpenPicture.Title := 'Inserta Imagen';
        sArchivo := '' ;
        If OpenPicture.Execute then
        begin
            try
                sArchivo := OpenPicture.FileName ;
                size := Tamanyo (sArchivo) ;
                If size <= 350 Then
                Begin
                      bImagen.Picture.LoadFromFile(OpenPicture.FileName)
                End
                Else
                      MessageDlg('La imagen a adjuntar no debe ser mayor a 350 kb.', mtInformation, [mbOk], 0);
             except
//                bImagen.Picture.LoadFromFile('') ;
             end
        end
    End
end;

procedure TfrmDiarioTurno.BitacoraPartidas1Click(Sender: TObject);
begin
    EncabezadoPDF_Horizontal(ReporteDiario,rDiario,FtAbordo);
    ReportePDF_ActividadesBitacora(ReporteDiario,   rDiario);
    rDiario.LoadFromFile(global_files + global_Mireporte + '_TDReporteBitacora.fr3') ;
    rDiario.ShowReport();
    ReportePDF_ClearDataset(rDiario);
end;

Function TfrmDiarioTurno.Tamanyo (Archivo : String): Real;
Var
   Busca : TsearchRec;
Begin
   if  FindFirst ( Archivo , faAnyFile, Busca )  = 0 then
      Result := Busca.size / 1024
   Else
      Result:=0;
End;

procedure TfrmDiarioTurno.btnSaveImageClick(Sender: TObject);
begin
    If ReporteDiario.RecordCount > 0 Then
      If ReporteFotografico.RecordCount > 0 Then
      Begin
          btnPreview.Click ;
          SaveImage.Title := 'Respaldar Imagen';
          BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
          SaveImage.FileName := ReporteDiario.FieldValues['sNumeroReporte'] + '-' + ReporteFotografico.FieldByName('iImagen').AsString ;
          If SaveImage.Execute Then
              bImagen.Picture.SaveToFile(SaveImage.FileName)
      End
end;

procedure TfrmDiarioTurno.Grid_ImagenesEnter(Sender: TObject);
begin
    If ReporteFotoGrafico.RecordCount > 0 then
//        bImagen.Picture.LoadFromFile('') ;
    Panel.Visible := False;
end;

procedure TfrmDiarioTurno.btnPreviewClick(Sender: TObject);
var
   bS  : TStream;
   Pic : TJpegImage;
   BlobField : tField ;
begin
    If ReporteFotoGrafico.RecordCount > 0 then
    Begin
//        bImagen.Picture.LoadFromFile('') ;
        If btnGrabar.Enabled = False Then
            If ReporteFotografico.RecordCount > 0 then
            Begin
                Connection.QryBusca.Active := False ;
                Connection.QryBusca.SQL.Clear ;
                Connection.QryBusca.SQL.Add('Select bImagen from reportefotografico Where sContrato = :Contrato And sNumeroReporte = :Reporte and iImagen = :imagen') ;
                Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                Connection.QryBusca.Params.ParamByName('Contrato').Value := ReporteDiario.FieldByName('sOrden').AsString;//global_contrato ;
                Connection.QryBusca.Params.ParamByName('Reporte').DataType := ftString ;
                Connection.QryBusca.Params.ParamByName('Reporte').Value := ReporteDiario.FieldValues['sNumeroReporte'] ;
                Connection.QryBusca.Params.ParamByName('imagen').DataType := ftInteger ;
                Connection.QryBusca.Params.ParamByName('imagen').Value := ReporteFotografico.FieldValues['iImagen'] ;
                Connection.QryBusca.Open ;
                If Connection.QryBusca.RecordCount > 0 Then
                Begin
                    BlobField := Connection.QryBusca.FieldByName('bImagen') ;
                    BS := Connection.QryBusca.CreateBlobStream(BlobField, bmRead) ;
                      //.CreateBlobStream ( BlobField , bmRead ) ;
                    If bs.Size > 1 Then
                    Begin
                        try
                            Pic:=TJpegImage.Create;
                            try
                               Pic.LoadFromStream(bS);
                               bImagen.Picture.Graphic := Pic;
                            finally
                               Pic.Free;
                            end;
                        finally
                            bS.Free
                        End
                    End
                End ;
                tsDescripcion.Text := ReporteFotografico.FieldValues['sDescripcion'] ;
                If ReporteFotografico.FieldValues['lIncluye'] = 'Si' Then
                    CheckIncluye.Checked := True
                Else
                    CheckIncluye.Checked := False

            End
    End
end;

procedure TfrmDiarioTurno.BView_ReporteDiarioCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    try
      if reportefotografico.Active = true then
      begin                               
          if reportefotografico.RecordCount = 0 then
          begin
              if pgDiario.ActivePageIndex = 1 then
              begin
                  ReporteFotografico.Active := False ;
                  ReporteFotografico.Params.ParamByName('contrato').DataType := ftString ;
                  ReporteFotografico.Params.ParamByName('contrato').Value := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato ;
                  ReporteFotografico.Params.ParamByName('Reporte').DataType := ftString ;
                  ReporteFotografico.Params.ParamByName('Reporte').Value := ReporteDiario.FieldValues['sNumeroReporte'] ;
                  ReporteFotografico.Open ;

                  If ReporteFotografico.State <> dsInactive Then
                     If ReporteFotografico.RecordCount > 0 Then
                     Begin
                         btnSaveImage.Enabled := True ;
                         btnEliminar.Enabled := True;
                         BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
                     End ;
                  //Consultamos las partidas afectadas en el Reporte Diario..   
                  partidas.Active := False ;
                  partidas.Params.ParamByName('Contrato').DataType := ftString ;
                  partidas.Params.ParamByName('Contrato').Value    := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato ;
                  partidas.Params.ParamByName('orden').DataType    := ftString ;
                  partidas.Params.ParamByName('orden').Value       := reportediario.FieldValues['sNumeroOrden'] ;
                  partidas.Params.ParamByName('fecha').DataType    := ftDate ;
                  partidas.Params.ParamByName('fecha').Value       := reportediario.FieldValues['dIdFecha'] ;
                  partidas.Params.ParamByName('turno').DataType    := ftString ;
                  partidas.Params.ParamByName('turno').Value       := reportediario.FieldValues['sIdTurno'] ;
                  partidas.Open ;
              end;
          end;
      end;
    Except
    end;
end;

procedure TfrmDiarioTurno.btnUpClick(Sender: TObject);
begin
     OrdenarFotos('Arriba');
end;

procedure TfrmDiarioTurno.impAnalisisClick(Sender: TObject);
begin
    try
        procAnalisisFinanciero (ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'] , ReporteDiario.FieldValues['sIdConvenio'] , ReporteDiario.FieldValues['dIdFecha'], ReporteDiario.FieldValues['dIdFecha'] , frmDiarioTurno, rDiario.OnGETValue, connection.configuracion.fieldbyname('sFormatos').AsString,PermisosExportar(connection.zConnection,global_grupo,sMenuP))
    except
        on e:exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al imprimir analisis financiero', 0);
        end;
    end;
end;

procedure TfrmDiarioTurno.PartidasAnexoCDetalle1Click(Sender: TObject);
begin
   GeneraReporteDiario_PDF(FtAbordo,FtsRRecursos_detalleV2);
end;

procedure TfrmDiarioTurno.Paste1Click(Sender: TObject);
begin
UtGrid.AddRowsFromClip;
end;

procedure TfrmDiarioTurno.PgDiarioChange(Sender: TObject);
begin
  if pgDiario.ActivePageIndex = 1 then
  begin
      ReporteFotografico.Active := False ;
      ReporteFotografico.Params.ParamByName('contrato').DataType := ftString ;
      ReporteFotografico.Params.ParamByName('contrato').Value := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato ;
      ReporteFotografico.Params.ParamByName('Reporte').DataType := ftString ;
      ReporteFotografico.Params.ParamByName('Reporte').Value := ReporteDiario.FieldValues['sNumeroReporte'] ;
      ReporteFotografico.Open ;

      If ReporteFotografico.State <> dsInactive Then
         If ReporteFotografico.RecordCount > 0 Then
         Begin
             btnSaveImage.Enabled := True ;
             btnEliminar.Enabled := True;
             BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
         End ;

      //Consultamos las partidas afectadas en el Reporte Diario..
      partidas.Active := False ;
      partidas.Params.ParamByName('Contrato').DataType := ftString ;
      partidas.Params.ParamByName('Contrato').Value    := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato ;
      partidas.Params.ParamByName('fecha').DataType    := ftDate ;
      partidas.Params.ParamByName('fecha').Value       := reportediario.FieldValues['dIdFecha'] ;
      partidas.Params.ParamByName('turno').DataType    := ftString ;
      partidas.Params.ParamByName('turno').Value       := reportediario.FieldValues['sIdTurno'] ;
      partidas.Open ;
  end;
end;


procedure TfrmDiarioTurno.DiariodeCobro1Click(Sender: TObject);
begin
   GeneraReporteDiario_PDF(FtAbordo,FtsRRecursos_detalleV2);
end;

procedure TfrmDiarioTurno.SpeedItem1Click(Sender: TObject);
begin
  param_global_contrato := ReporteDiario.FieldByName('sOrden').AsString;
  frm_ConsumodeCombustible.FechaReporte := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
  Application.CreateForm(TfrmConsumodeCombustible, frmConsumodeCombustible);
  frm_ConsumodeCombustible.FechaReporte := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
  frmConsumodeCombustible.ShowModal;
end;

procedure TfrmDiarioTurno.SpeedItem3Click(Sender: TObject);
begin
  frm_Condicionesclima.FechaReporte := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
  Application.CreateForm(TfrmCondicionesclima, frmCondicionesclima);
  frm_Condicionesclima.FechaReporte := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
  frmCondicionesclima.Show;
end;

procedure TfrmDiarioTurno.cbbCriteriosChange(Sender: TObject);
begin
  mmoFactores.Lines.Clear;
  mmoFactores.Lines.Add('La diferencia resultante después del cálculo de distribución de tiempos de barco se ajustará de manera automática de la siguiente manera:');
  mmoFactores.Lines.Add('');

  case cbbCriterios.ItemIndex of
    0: mmoFactores.Lines.Add('El total de la diferencia se cargará en el factor de tiempo encontrado más grande.');
    1: mmoFactores.Lines.Add('El total de la diferencia se cargará en el factor de tiempo encontrado más chico.');
    2: mmoFactores.Lines.Add('Cuando la diferencia sea positiva se cargará al factor de tiempo más chico y en caso de ser negativo en el factor más grande.');
    3: mmoFactores.Lines.Add('Cuando la diferencia sea positiva se cargará al factor de tiempo más grande y en caso de ser negativo en el factor más chico.');
    4: mmoFactores.Lines.Add('El total de la diferencia se cargará al primero corte de tiempo de manera directa.');
    5: mmoFactores.Lines.Add('El total de la diferencia se cargará al último corte de tiempo de manera directa.');
    6: mmoFactores.Lines.Add('Al final del cálculo se mostrará una lista con los cortes de tiempo para que el usuario indique en cual desea aplicar el ajuste necesario.');
  end;
end;

procedure TfrmDiarioTurno.ConcentradodeEquipos1Click(Sender: TObject);
begin
    //local_iIndice := 8;
    //GeneraReporteDiario_Excel(Connection.Contrato.FieldByName('sIdResidencia').AsString, False, False, False, False, False, True, False, False, False, False, '', False, False);
  GeneraReporteDiario_PDF(FtAbordo,FtsCEquipos);


end;

procedure TfrmDiarioTurno.ConcentradodePernoctas1Click(Sender: TObject);
begin
    //local_iIndice := 10;
    //GeneraReporteDiario_Excel(Connection.Contrato.FieldByName('sIdResidencia').AsString, False, False, False, False, True, False, True, False, False, False, '', False, False);
    GeneraReporteDiario_PDF(FtAbordo,FtsCPernoctas);
end;

procedure TfrmDiarioTurno.ConcentradodePersonal1Click(Sender: TObject);
begin
    //local_iIndice := 9;
    //GeneraReporteDiario_Excel(Connection.Contrato.FieldByName('sIdResidencia').AsString, False, False, False, False, True, False, False, False, False, False, '', False, False);
    GeneraReporteDiario_PDF(FtAbordo,FtsCPersonal);
end;

procedure TfrmDiarioTurno.ConsumosdeCombustible1Click(Sender: TObject);
begin
    //local_iIndice := 7;
    //GeneraReporteDiario_Excel(Connection.Contrato.FieldByName('sIdResidencia').AsString, False, False, False, False, False, False, False, False, False, True, '', False, False);
    GeneraReporteDiario_PDF(FtAbordo,FtsCCombustible);
end;

procedure TfrmDiarioTurno.Copy1Click(Sender: TObject);
begin
    UtGrid.CopyRowsToClip;
end;

procedure TfrmDiarioTurno.CrearNotasdeSuspensin1Click(Sender: TObject);
{Var
  ListaFolios, ListaFolios2, IgnorarFolios, FoliosDeAyer: TStringList;
  FolioActual: String;
  IdNota: Integer; }
begin
  if MessageDlg('¿Desea crear las notas de suspensión para todos los folios que no fueron reportados', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    CrearSuspension(ReporteDiario.FieldByName('dIdFecha').AsDateTime);
    {Try
      ListaFolios := TStringList.Create;
      ListaFolios2 := TStringList.Create;
      IgnorarFolios := TStringList.Create;
      FoliosDeAyer := TStringList.Create;
      //Obtenemos los folios de hoy
      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Text := '' +
                                      'SELECT ' +
                                      '	sNumeroOrden ' +
                                      'FROM ' +
                                      '	bitacoradeactividades ' +
                                      'WHERE ' +
                                      '	dIdFecha = :Fecha ' +
                                      'AND sContrato = :Contrato ' +
                                      'GROUP BY ' +
                                      '	sNumeroOrden ' +
                                      'ORDER BY sNumeroOrden ASC; ';
      Connection.QryBusca.ParamByName('Fecha').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
      Connection.QryBusca.ParamByName('Contrato').AsString := ReporteDiario.FieldByName('sOrden').AsString;;
      Connection.QryBusca.Open;

      while Not Connection.QryBusca.Eof do begin
        ListaFolios.Add(QuotedStr(Connection.QryBusca.FieldByName('sNumeroOrden').AsString));
        ListaFolios2.Add(Connection.QryBusca.FieldByName('sNumeroOrden').AsString);
        Connection.QryBusca.Next;
      end;
      //obtenemos todos los folios existentes
      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Text := '' +
                                      'SELECT ' +
                                      '	ot.sNumeroOrden, ' +
                                      '	ao.sNumeroActividad, ' +
                                      '	SUM(ba.dAvance) AS AvancePartida, ' +
                                      '	ao.dPonderado ' +
                                      'FROM ordenesdetrabajo AS ot ' +
                                      '	INNER JOIN actividadesxorden AS ao ' +
                                      '		ON (ao.sContrato = ot.sContrato AND ao.sNumeroOrden = ot.sNumeroOrden AND ao.lCalculo = "Si") ' +
                                      '	INNER JOIN bitacoradeactividades AS ba ' +
                                      '		ON (ba.sContrato = ot.sContrato AND ba.sNumeroOrden = ot.sNumeroOrden AND ba.dIdFecha < :Fecha AND ba.sIdTipoMovimiento = "ED" AND ba.sWbs = ao.sWbs) ' +
                                      'WHERE ' +
                                      '	ot.sContrato = :Contrato ' +
                                      '	AND ao.sNumeroOrden NOT IN ('+quotedstr(ListaFolios.CommaText)+') ' +
                                      ' AND ot.dFiProgramado < :Fecha ' +
                                      ' AND ot.cIdStatus = "P" ' +
                                      'GROUP BY ' +
                                      '	ot.sNumeroOrden, ao.sNumeroActividad ' +
                                      'HAVING ' +
                                      '	AvancePartida < 1 ';
      Connection.QryBusca.Params.ParamByName('Fecha').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
      Connection.QryBusca.Params.ParamByName('Contrato').AsString := ReporteDiario.FieldByName('sOrden').AsString;;
      connection.QryBusca.Open;
      //obtenemos los folios anteriores
      Connection.QryBusca2.Active := False;
      Connection.QryBusca2.SQL.Text :=  '' +
                                        'SELECT ' +
                                        '	sNumeroOrden ' +
                                        'FROM ' +
                                        '	bitacoradeactividades ' +
                                        'WHERE ' +
                                        '	dIdFecha = :Fecha ' +
                                        'AND sContrato = :Contrato ' +
                                        'GROUP BY ' +
                                        '	sNumeroOrden ' +
                                        'ORDER BY sNumeroOrden ASC; ';
      Connection.QryBusca2.ParamByName('Fecha').AsDateTime := IncDay(ReporteDiario.FieldByName('dIdFecha').AsDateTime, -1);
      Connection.QryBusca2.ParamByName('Contrato').AsString := ReporteDiario.FieldByName('sOrden').AsString;;
      Connection.QryBusca2.Open;

      while Not Connection.QryBusca2.Eof do begin
        FoliosDeAyer.Add(Connection.QryBusca2.FieldByName('sNumeroOrden').AsString);
        Connection.QryBusca2.Next;
      end;

      IdNota := 200;

      while Not Connection.QryBusca.Eof do begin
        if (Not BuscarCadena(IgnorarFolios, Connection.QryBusca.FieldByName('sNumeroOrden').AsString)) AND (Not BuscarCadena(ListaFolios2, Connection.QryBusca.FieldByName('sNumeroOrden').AsString) ) then begin
          Connection.zCommand.Active := False;
          Connection.zCommand.SQL.Text := 'INSERT INTO bitacoradeactividades (sContrato, dIdFecha, iIdDiario, sIdTurno, sNumeroOrden, sIdTipoMovimiento, sHoraInicio, sHoraFinal, mDescripcion, mDescripcion_Gerencial, lImprime_Gerencial) VALUES ' +
                                          ' (:Contrato, :Fecha, :IdNota, "A", :Orden, "NG", "00:00", "00:00", :Descripcion, :Descripcion, "No") ';
          Connection.zCommand.ParamByName('Contrato').AsString := ReporteDiario.FieldByName('sOrden').AsString;;
          Connection.zCommand.ParamByName('Fecha').AsDateTime := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
          Connection.zCommand.ParamByName('Orden').AsString := Connection.QryBusca.FieldByName('sNumeroOrden').AsString;
          Connection.zCommand.ParamByName('IdNota').AsInteger := IdNota; //Connection.QryBusca.FieldByName('sNumeroOrden').AsString;
          if BuscarCadena(FoliosDeAyer, Connection.QryBusca.FieldByName('sNumeroOrden').AsString) then
          begin
            if True then

            Connection.zCommand.ParamByName('Descripcion').AsString := 'CON ESTA FECHA $FECHA, SE SUSPENDEN LAS ACTIVIDADES DE ESTE FOLIO; POR DAR PRIORIDAD A OTROS FRENTES.';
          end else begin
            Connection.zCommand.ParamByName('Descripcion').AsString := 'CON ESTA FECHA $FECHA, CONTINÚAN SUSPENDIDAS LAS ACTIVIDADES DE ESTE FOLIO; POR DAR PRIORIDAD A OTROS FRENTES.';
          end;
          Connection.zCommand.ExecSQL;
          IgnorarFolios.Add(Connection.QryBusca.FieldByName('sNumeroOrden').AsString);
          Inc(IdNota);
        end;

        Connection.QryBusca.Next;
      end;

      ShowMessage('Terminó el proceso de los folios no reportados, se aplicaron las notas a los siguientes Folios: ' + #10 + IgnorarFolios.CommaText);
      
    Finally 
      ListaFolios.Free;
      ListaFolios2.Free;
      IgnorarFolios.Free;
      FoliosDeAyer.Free;
    End;  }
  end;
end;

procedure TfrmDiarioTurno.OrdenarFotos(sParamOrden: string);
var
   idAuxiliar, idAuxiliar2 : integer;
   SavePlace   : TBookmark;
begin
    if ReporteFotografico.RecordCount > 0 then
    begin
        if sParamOrden = 'Arriba' then
        begin
            idAuxiliar2 := ReporteFotografico.FieldValues['iImagen'];
            ReporteFotografico.Prior;

            idAuxiliar  := ReporteFotografico.FieldValues['iImagen'];
            ReporteFotografico.Next;
        end;

        if sParamOrden = 'Abajo' then
        begin
            idAuxiliar2 := ReporteFotografico.FieldValues['iImagen'];
            ReporteFotografico.Next;

            idAuxiliar  := ReporteFotografico.FieldValues['iImagen'];
            ReporteFotografico.Prior;
        end;
        //Colocamos un id mayor para evitar duplicidad..
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE reportefotografico SET iImagen = :DiarioNuevo ' +
                                    'where sContrato = :contrato And dIdFecha = :fecha and sNumeroReporte =:Reporte And iImagen = :diario ');
        Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value    := ReporteDiario.FieldByName('sOrden').AsString; //Global_Contrato;
        Connection.zCommand.Params.ParamByName('fecha').DataType    := ftDate;
        Connection.zCommand.Params.ParamByName('fecha').value       := tdIdFecha.Date;
        Connection.zCommand.Params.ParamByName('reporte').DataType  := ftString;
        Connection.zCommand.Params.ParamByName('reporte').value     := reportediario.FieldValues['sNumeroReporte'];
        Connection.zCommand.Params.ParamByName('diario').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value      := idAuxiliar2;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value    := idAuxiliar + 500;
        connection.zCommand.ExecSQL;

        //Ahora actualizamos el item mayor
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE reportefotografico SET iImagen = :DiarioNuevo ' +
                                    'where sContrato = :contrato And dIdFecha = :fecha and sNumeroReporte =:Reporte And iImagen = :diario ');
        Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value    := ReporteDiario.FieldByName('sOrden').AsString; //Global_Contrato;
        Connection.zCommand.Params.ParamByName('fecha').DataType    := ftDate;
        Connection.zCommand.Params.ParamByName('fecha').value       := tdIdFecha.Date;
        Connection.zCommand.Params.ParamByName('reporte').DataType  := ftString;
        Connection.zCommand.Params.ParamByName('reporte').value     := reportediario.FieldValues['sNumeroReporte'];
        Connection.zCommand.Params.ParamByName('diario').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value      := idAuxiliar;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value    := idAuxiliar2;
        connection.zCommand.ExecSQL;

         //Ahora actualizamos el item alterado
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE reportefotografico SET iImagen = :DiarioNuevo ' +
                                    'where sContrato = :contrato And dIdFecha = :fecha and sNumeroReporte =:Reporte And iImagen = :diario ');
        Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value    := ReporteDiario.FieldByName('sOrden').AsString; //Global_Contrato;
        Connection.zCommand.Params.ParamByName('fecha').DataType    := ftDate;
        Connection.zCommand.Params.ParamByName('fecha').value       := tdIdFecha.Date;
        Connection.zCommand.Params.ParamByName('reporte').DataType  := ftString;
        Connection.zCommand.Params.ParamByName('reporte').value     := reportediario.FieldValues['sNumeroReporte'];
        Connection.zCommand.Params.ParamByName('diario').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value      := idAuxiliar + 500;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value    := idAuxiliar;
        connection.zCommand.ExecSQL;

        if sParamOrden = 'Arriba' then
           ReporteFotografico.Prior
        else
           ReporteFotografico.Next;

        SavePlace := ReporteFotografico.GetBookmark;
        ReporteFotografico.Refresh;
        ReporteFotografico.GotoBookmark(SavePlace);
        ReporteFotografico.FreeBookmark(SavePlace);

    end;
end;

procedure TfrmDiarioTurno.otaldePersonal1Click(Sender: TObject);
begin
    //local_iIndice := 12;
    //GeneraReporteDiario_Excel(Connection.Contrato.FieldByName('sIdResidencia').AsString, False, False, False, False, False, False, False, True, False, False, '', False, False);
    GeneraReporteDiario_PDF(FtAbordo,FtsTPersonal);
end;

Procedure TfrmDiarioTurno.CrearSuspension(Fecha:TDateTime);
var
  ZqrFolios,ZqrHoy,ZqrPasado:TZReadOnlyQuery;
  ZqUpdate:TZQuery;
  CFolios,CHoy,CFxF:string;
  YaExiste:Boolean;
  IdNota,x :Integer;

  LstAgregados,LstAlterados:TStringList;
  CadAux,MsgFinal:string;
begin
  ZqrFolios := TZReadOnlyQuery.Create(nil);
  ZqrFolios.Connection := connection.zConnection;
  LstAgregados := TStringList.Create;
  LstAlterados := TStringList.Create;
  LstAgregados.Clear;
  LstAlterados.Clear;
  try
    ZqrHoy:= TZReadOnlyQuery.Create(nil);
    ZqrHoy.Connection := connection.zConnection;
    try
      ZqrPasado:= TZReadOnlyQuery.Create(nil);
      ZqrPasado.Connection := connection.zConnection;
      try
        {$REGION 'Consultas'}
        //Obtener el listado de folios para procesar
        CFolios :=  'SELECT  ot.sNumeroOrden  '+
                    'FROM ordenesdetrabajo AS ot '+
                    '	INNER JOIN actividadesxorden AS ao '+
                    '		ON (ao.sContrato = ot.sContrato AND ao.snumeroOrden = ot.sNumeroOrden AND ao.lCalculo = "Si")  '+
                    'WHERE '+
                    '	ot.sContrato = :sContrato '+
                    ' AND ot.cIdStatus = "P" '+
                    'GROUP BY  '+
                    '	ot.sNumeroOrden ';

        //Obtener los folios de hoy
        CHoy := 'SELECT snumeroorden,sidtipomovimiento FROM bitacoradeactividades WHERE scontrato = :scontrato AND dIdFecha = :didfecha group by sNumeroOrden order by sNumeroOrden';
        //Ir verificando folio por folio
        CFxF := 'select DATEDIFF(:didfecha , didfecha)as dias,didfecha,snumeroorden,sidtipomovimiento from bitacoradeactividades where dIdFecha < :didfecha and sContrato = :scontrato and sNumeroOrden = :snumeroorden order by dIdFecha desc limit 1';
        {$ENDREGION}

        ZqrFolios.Active := False;
        ZqrFolios.SQL.Clear;
        ZqrFolios.SQL.Text := CFolios;
        ZqrFolios.ParamByName('sContrato').AsString := global_contrato;
        ZqrFolios.Open;

        ZqrHoy.Active := False;
        ZqrHoy.SQL.Clear;
        ZqrHoy.SQL.Text := CHoy;
        ZqrHoy.ParamByName('sContrato').AsString := global_contrato;
        ZqrHoy.ParamByName('didfecha').AsDateTime := fecha;
        ZqrHoy.Open;

        ZqrPasado.SQL.text := CFxF;

        ZqrFolios.First;
        while not ZqrFolios.Eof do
        begin
          YaExiste := False;
          ZqrPasado.Active := False;
          //si no se uso el folio hoy revisar cuando fué
          if not ZqrHoy.Locate('snumeroorden',ZqrFolios.FieldByName('snumeroorden').AsString,[]) then
          begin
            ZqrPasado.ParamByName('didfecha').AsDateTime := Fecha;
            ZqrPasado.ParamByName('scontrato').AsString := global_contrato;
            ZqrPasado.ParamByName('snumeroorden').AsString := ZqrFolios.FieldByName('snumeroorden').AsString;
            ZqrPasado.Open;
          end
          else
          begin
            if ZqrHoy.FieldByName('sidtipomovimiento').AsString = 'S' then
            begin
              ZqrPasado.ParamByName('didfecha').AsDateTime := Fecha;
              ZqrPasado.ParamByName('scontrato').AsString := global_contrato;
              ZqrPasado.ParamByName('snumeroorden').AsString := ZqrFolios.FieldByName('snumeroorden').AsString;
              ZqrPasado.Open;
              YaExiste := True;
            end;
          end;

          if (ZqrPasado.State = dsBrowse) then
          begin
            //pueden ocurrir 2 cosas es el primer dia del contrato o bien es un dia normal
            ZqUpdate:=TZQuery.Create(nil);
            ZqUpdate.Connection := connection.zConnection;
            try
              IdNota := 200;
              if YaExiste then
              begin
                //si existe hoy se tendra que editar el registro
                ZqUpdate.Active := False;
                ZqUpdate.SQL.Text := 'UPDATE bitacoradeactividades SET mDescripcion = :sDescripcion, mDescripcion_Gerencial = :sDescripcion, sidtipomovimiento = "S" where sContrato = :sContrato and didfecha = :didfecha AND snumeroorden = :snumeroorden  ';
                ZqUpdate.ParamByName('sContrato').AsString := global_contrato;
                ZqUpdate.ParamByName('didFecha').AsDateTime := Fecha;
                ZqUpdate.ParamByName('snumeroOrden').AsString := ZqrFolios.FieldByName('sNumeroOrden').AsString;
                if ZqrPasado.fieldbyname('dias').AsInteger <= 1 then
                begin  //si fue ayer verificar si fue suspension en caso de ser asi poner que se continua
                  if ZqrPasado.recordcount = 0 then
                      ZqUpdate.ParamByName('sDescripcion').AsString := 'CON ESTA FECHA $FECHA, SE SUSPENDEN LAS ACTIVIDADES DE ESTE FOLIO; POR DAR PRIORIDAD A OTROS FRENTES.'
                  else
                    if  ZqrPasado.fieldbyname('sidtipomovimiento').AsString = 'S' then
                      ZqUpdate.ParamByName('sDescripcion').AsString := 'CON ESTA FECHA $FECHA, CONTINÚAN SUSPENDIDAS LAS ACTIVIDADES DE ESTE FOLIO; POR DAR PRIORIDAD A OTROS FRENTES.'
                    else //si fue de otro tipo suspender
                      ZqUpdate.ParamByName('sDescripcion').AsString := 'CON ESTA FECHA $FECHA, SE SUSPENDEN LAS ACTIVIDADES DE ESTE FOLIO; POR DAR PRIORIDAD A OTROS FRENTES.';
                end
                else
                begin
                  //si lleva varios dias entonces continua
                  ZqUpdate.ParamByName('sDescripcion').AsString := 'CON ESTA FECHA $FECHA, CONTINÚAN SUSPENDIDAS LAS ACTIVIDADES DE ESTE FOLIO; POR DAR PRIORIDAD A OTROS FRENTES.';
                end;
                ZqUpdate.ExecSQL;
                LstAlterados.Add(ZqrFolios.FieldByName('snumeroorden').AsString);
              end
              else
              begin
                //Si no existe hoy crear el registro
                ZqUpdate.Active := False;
                ZqUpdate.SQL.Text := 'INSERT INTO bitacoradeactividades (sContrato, dIdFecha, iIdDiario, sIdTurno, sNumeroOrden, sIdTipoMovimiento, sHoraInicio, sHoraFinal, mDescripcion, mDescripcion_Gerencial, lImprime_Gerencial) VALUES ' +
                                                ' (:sContrato, :didFecha, (select max(x.iiddiario)+1 from bitacoradeactividades x where x.scontrato = :scontrato and x.didfecha = :didfecha), "A", :snumeroOrden, "S", "00:00", "00:00", :sDescripcion, :Descripcion, "No") ';
                ZqUpdate.ParamByName('sContrato').AsString :=global_contrato ;
                ZqUpdate.ParamByName('didFecha').AsDateTime := Fecha;
                ZqUpdate.ParamByName('snumeroOrden').AsString := ZqrFolios.FieldByName('sNumeroOrden').AsString;
                //ZqUpdate.ParamByName('IdNota').AsInteger := IdNota; //Connection.QryBusca.FieldByName('sNumeroOrden').AsString;
                if ZqrPasado.fieldbyname('dias').AsInteger <= 1 then
                begin  //si fue ayer verificar si fue suspension en caso de ser asi poner que se continua
                  if ZqrPasado.recordcount = 0 then
                      ZqUpdate.ParamByName('sDescripcion').AsString := 'CON ESTA FECHA $FECHA, SE SUSPENDEN LAS ACTIVIDADES DE ESTE FOLIO; POR DAR PRIORIDAD A OTROS FRENTES.'
                  else
                    if  ZqrPasado.fieldbyname('sidtipomovimiento').AsString = 'S' then
                      ZqUpdate.ParamByName('sDescripcion').AsString := 'CON ESTA FECHA $FECHA, CONTINÚAN SUSPENDIDAS LAS ACTIVIDADES DE ESTE FOLIO; POR DAR PRIORIDAD A OTROS FRENTES.'
                    else //si fue de otro tipo suspender
                      ZqUpdate.ParamByName('sDescripcion').AsString := 'CON ESTA FECHA $FECHA, SE SUSPENDEN LAS ACTIVIDADES DE ESTE FOLIO; POR DAR PRIORIDAD A OTROS FRENTES.';
                end
                else
                begin
                  //si lleva varios dias entonces continua
                  ZqUpdate.ParamByName('sDescripcion').AsString := 'CON ESTA FECHA $FECHA, CONTINÚAN SUSPENDIDAS LAS ACTIVIDADES DE ESTE FOLIO; POR DAR PRIORIDAD A OTROS FRENTES.';
                end;
                ZqUpdate.ExecSQL;
                LstAgregados.Add(ZqrFolios.FieldByName('snumeroorden').AsString);
              end;
            finally
              ZqUpdate.Free;
            end;
          end;
          ZqrFolios.Next;
        end;
      finally
        ZqrPasado.Free;
      end;
    finally
      ZqrHoy.Free;
    end;
  finally
    CadAux := '';
    MsgFinal := '';
    if LstAlterados.Count > 0 then
    begin
      for x := 0 to LstAlterados.Count - 1 do
      begin
        CadAux := CadAux+LstAlterados[x];
        if x < LstAlterados.Count -1 then
          CadAux := CadAux + ',';
        if ((x mod 7) = 0) and  (x>0)  then
          CadAux := CadAux+#10;
      end;
      MsgFinal := 'Fólios alterados del día de hoy:'+#10+CadAux;
    end;
    CadAux := '';
    if LstAgregados.Count > 0 then
    begin
      for x := 0 to LstAgregados.Count - 1 do
      begin
        CadAux := CadAux+LstAgregados[x];
        if x < LstAgregados.Count -1 then
          CadAux := CadAux + ',';
        if ((x mod 7) = 0) and (x>0) then
          CadAux := CadAux+#10;
      end;
      if LstAlterados.Count > 0 then
        Msgfinal := Msgfinal + #10;
      MsgFinal :=MsgFinal+ 'Fólios agregados al día de hoy:'+#10+CadAux;
    end;
    if (LstAlterados.Count > 0) or (LstAgregados.Count > 0) then
      ShowMessage(MsgFinal)
    else
      ShowMessage('No fué necesario crear ninguna nota de suspensión.');
    ZqrFolios.Free;
    LstAgregados.Free;
    LstAlterados.Free;
  end;
end;

  {$REGION 'Grid Folios'}

Procedure TfrmDiarioTurno.CargarGridFolios(Grid: TnextGrid;RecuerdaPos:Boolean);
var RPadre:Integer;
    OldC:TCursor;
    Puntero,ScP,posi:Integer;
  procedure FormatearFila(f:Integer);
  var c:Integer;
  ColorR:Tcolor;
  begin

    case Grid.Row[f].Level of
      0 : ColorR := clskyblue;
      1:
      begin
        Grid.Row[f].Expanded := Grid.Cells[ClsSimbolo,F] <> '+';
        ColorR := $00FFFFDD;
      end;
      2: ColorR := $00E6FEFF;
    end;

    for c := 0 to Grid.Columns.Count - 1 do
    begin
       Grid.Cell[c,f].Color := ColorR;
    end;

  end;

  function ObtenerPadre(folio,Actividad:String;UActividad:Boolean):Integer;
  var r,Resultante:Integer;          Encontrado:Boolean;
  begin
    Resultante := -1;
    encontrado := false;
    r := 0;
    while (r < Grid.RowCount) and (not Encontrado) do
    begin
      if UActividad then
      begin
        if (Grid.Cells[ClsNumeroOrden,r] = folio) and (Grid.Cells[ClsNumeroActividad,r] = Actividad) and (Grid.Cells[ClsIdTipoMovimiento,r] = 'E') then
        begin
          encontrado := True;
          Resultante := r;
        end
        else
          inc(R);
      end
      else
      begin
        if (Grid.Cells[ClsNumeroOrden,r] = folio)  and (Grid.Cells[ClsIdTipoMovimiento,r] = 'Folio:') then
        begin
          encontrado := True;
          Resultante := r;
        end
        else
          inc(R);
      end;
    end;
    Result := Resultante;
  end;

begin
  try
    OldC := Screen.Cursor;
    Screen.Cursor := crAppStart;
    Puntero := Grid.SelectedRow;

    {$REGION 'Consulta'}
    connection.QryBusca.Active := false;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.sql.text := 'select ba.sContrato,ba.dIdFecha,ba.iIdDiario,ba.sNumeroOrden,ba.sSimbolo,ba.sNumeroActividad,ba.sIdTipoMovimiento,ba.sIdClasificacion, '+
                              'ba.dAvance,ba.sWbs, ' +
                              '(ifnull((select sum(ba2.davance) from bitacoradeactividades ba2 where ba2.didfecha < ba.didfecha and ba2.sNumeroActividad = ba.snumeroactividad '+
                              ' and ba2.sContrato = ba.sContrato and ba2.sIdTipoMovimiento <> "E" and ba2.sIdTurno =ba.sIdTurno and ba2.sIdTipoMovimiento <> "NG" '+
                              'and ba2.sidclasificacion in ("TE","NP","FC") and ba2.sNumeroOrden = ba.sNumeroOrden ),0))*100 as Anterior  '+
                              ',(  '+
                              'ifnull((select sum(ba2.davance) from bitacoradeactividades ba2 where ba2.didfecha < ba.didfecha and ba2.sIdTipoMovimiento <> "E" and '+
                              'ba2.sNumeroActividad = ba.snumeroactividad and ba2.sContrato = ba.sContrato and ba2.sIdTurno =ba.sIdTurno and ba2.sIdTipoMovimiento <> "NG" '+
                              ' and ba2.sidclasificacion in ("TE","NP","FC") and ba2.sNumeroOrden = ba.sNumeroOrden),0)   '+
                              '+ifnull((select sum(ba2.davance) from bitacoradeactividades ba2 where ba2.didfecha = ba.didfecha and ba2.sIdTipoMovimiento <> "E" and '+
                              'ba2.sNumeroActividad = ba.snumeroactividad and ba2.sContrato = ba.sContrato and ba2.sIdTurno = ba.sIdTurno and ba2.sIdTipoMovimiento <> "NG" '+
                              ' and ba2.sidclasificacion in ("TE","NP","FC") and ba2.sNumeroOrden = ba.sNumeroOrden),0)  '+
                              ')*100 as acumulado '+
                              ' from bitacoradeactividades ba '+
                              'where ba.sContrato =:Contrato and ba.dIdFecha =:fecha and ba.sIdTurno =:Turno and ba.sIdTipoMovimiento <> "NG" '+
                              'order by ba.sNumeroOrden, ba.sWbs, ba.sIdTipoMovimiento ';
    connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('Contrato').Value    := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato ;
    connection.QryBusca.Params.ParamByName('fecha').DataType    := ftDate ;
    connection.QryBusca.Params.ParamByName('fecha').Value       := reportediario.FieldValues['dIdFecha'] ;
    connection.QryBusca.Params.ParamByName('turno').DataType    := ftString ;
    connection.QryBusca.Params.ParamByName('turno').Value       := reportediario.FieldValues['sIdTurno'] ;
    connection.QryBusca.Open;
    {$ENDREGION}

    Grid.ClearRows;
    connection.qrybusca.First;

    {$REGION 'Presentacion de datos'}
    //Primeramente llenamos los folios Nivel 0 del grid
    try
      connection.QryBusca.Filtered := False;
      connection.QryBusca.filter := ' sidtipomovimiento = '+quotedstr('E');
      connection.QryBusca.Filtered := True;
      while not connection.qrybusca.eof do
      begin
        if not Grid.SearchNext(ClsNumeroOrden,trim(connection.QryBusca.FieldByName('sNumeroOrden').AsString),true) then
        begin
          RPadre := Grid.AddRow(1);
          Grid.Cells[clsSimbolo,Grid.RowCount-1] := '+';
          Grid.Cells[CliIdDiario,Grid.RowCount-1] :='';
          Grid.Cells[ClsNumeroOrden,Grid.RowCount-1] := Trim(connection.QryBusca.FieldByName('sNumeroOrden').AsString);
          Grid.Cells[ClsNumeroActividad,Grid.RowCount-1] := '';
          Grid.Cells[ClsIdClasificacion,Grid.RowCount-1] := '';
          Grid.Cells[CldAvance,Grid.RowCount-1] := '';
          Grid.Cells[ClsIdTipoMovimiento,Grid.RowCount-1] := 'Folio:';
          Grid.Cells[ClsContrato,Grid.RowCount-1] := '';
          Grid.Cells[CldIdFecha,Grid.RowCount-1] := '';
          Grid.Cells[ClsWbs,Grid.RowCount-1] := '';
          FormatearFila(RPadre);
        end;
        connection.qrybusca.Next;
      end;


      connection.qrybusca.First;
      //Luego llenamos los movimientos del tipo volumen de obra Nivel 1
      while not connection.qrybusca.eof do
      begin
        RPadre := ObtenerPadre(Trim(connection.QryBusca.FieldByName('sNumeroOrden').AsString),'',False);
        if  RPadre <> -1then
        begin
          Grid.AddChildRow(RPadre);
          RPadre := Rpadre+ Grid.Row[rpadre].ChildCount;
          Grid.Cells[clsSimbolo,RPadre] := connection.QryBusca.FieldByName('sSimbolo').AsString;
          Grid.Cells[CliIdDiario,RPadre] := connection.QryBusca.FieldByName('iIddiario').AsString;
          Grid.Cells[ClsNumeroOrden,RPadre] := Trim(connection.QryBusca.FieldByName('sNumeroOrden').AsString);
          Grid.Cells[ClsNumeroActividad,RPadre] := connection.QryBusca.FieldByName('sNumeroActividad').AsString;
          Grid.Cells[ClsIdClasificacion,RPadre] := connection.QryBusca.FieldByName('sIdClasificacion').AsString;
          Grid.Cells[CldAvance,RPadre] := FloatToStr((connection.QryBusca.FieldByName('davance').AsFloat*100)/1);
          Grid.Cells[ClsIdTipoMovimiento,RPadre] := connection.QryBusca.FieldByName('sidtipomovimiento').AsString;
          Grid.Cells[ClsContrato,RPadre] := connection.QryBusca.FieldByName('sContrato').AsString;
          Grid.Cells[CldIdFecha,RPadre] := connection.QryBusca.FieldByName('dIdFecha').AsString;
          Grid.Cells[ClsWbs,RPadre] := connection.QryBusca.FieldByName('swbs').AsString;
          Grid.Cells[ClAnterior,RPadre] := connection.QryBusca.FieldByName('anterior').AsString;
          Grid.Cells[ClAcumulado,RPadre] := connection.QryBusca.FieldByName('acumulado').AsString;
          FormatearFila(RPadre);
        end;
        connection.qrybusca.Next;
      end;
    finally
      connection.qrybusca.Filtered := False;
    end;

    //Posteriormente se añaden los volumenes de obra detalle nivel 2
    try
      connection.qrybusca.First;
      while not connection.qrybusca.eof do
      begin
        RPadre := ObtenerPadre(Trim(connection.QryBusca.FieldByName('sNumeroOrden').AsString),connection.QryBusca.FieldByName('sNumeroActividad').AsString,True);
        if  RPadre <> -1then
        begin
          if ((connection.QryBusca.FieldByName('sidclasificacion').AsString = 'TE') or
             (connection.QryBusca.FieldByName('sidclasificacion').AsString = 'AC') or
             (connection.QryBusca.FieldByName('sidclasificacion').AsString = 'FP'))then
          begin
            Grid.AddChildRow(RPadre);
            RPadre := Rpadre+ Grid.Row[RPadre].ChildCount;
            Grid.Cells[clsSimbolo,RPadre] := connection.QryBusca.FieldByName('sSimbolo').AsString;
            Grid.Cells[CliIdDiario,RPadre] := connection.QryBusca.FieldByName('iIddiario').AsString;
            Grid.Cells[ClsNumeroOrden,RPadre] := trim(connection.QryBusca.FieldByName('sNumeroOrden').AsString);
            Grid.Cells[ClsNumeroActividad,RPadre] := connection.QryBusca.FieldByName('sNumeroActividad').AsString;
            Grid.Cells[ClsIdClasificacion,RPadre] := connection.QryBusca.FieldByName('sIdClasificacion').AsString;
            Grid.Cells[CldAvance,RPadre] := FloatToStr((connection.QryBusca.FieldByName('davance').AsFloat*100)/1);
            Grid.Cells[ClsIdTipoMovimiento,RPadre] := connection.QryBusca.FieldByName('sidtipomovimiento').AsString;
            Grid.Cells[ClsContrato,RPadre] := connection.QryBusca.FieldByName('sContrato').AsString;
            Grid.Cells[CldIdFecha,RPadre] := connection.QryBusca.FieldByName('dIdFecha').AsString;
            Grid.Cells[ClsWbs,RPadre] := connection.QryBusca.FieldByName('swbs').AsString;
            FormatearFila(RPadre);
          end;
        end;
        connection.qrybusca.Next;
      end;
    finally

    end;

    {$ENDREGION}

  finally
    Screen.Cursor := OldC;
    connection.QryBusca.Active := False;
    if RecuerdaPos then
    begin
      Grid.ClearSelection;
      Grid.SelectCell(0,puntero, [],true);
      Grid.ScrollToRow(puntero);
    end;
  end;

end;

Procedure TfrmDiarioTurno.GuardarCambios(Grid:TnextGrid);
begin
  //si se altera la columna de valores se debe calcular la dispersion de datods

end;
 {$ENDREGION}


function TfrmDiarioTurno.GuardarFormato(reporte : string) : Boolean;
var
  Correcto,Cancelar:Boolean;
  Guardar : TSaveDialog;
  zqExt : TZReadOnlyQuery;
  extencion : string;
begin
  zqExt := TZReadOnlyQuery.Create(nil);
  zqExt.connection := connection.zconnection;
  zqExt.Active := false;
  zqExt.SQL.Text := 'select sTipo from tarifa_formatos where sContrato = :contrato and sTitulo = :reporte limit 1';
  zqExt.ParamByName('contrato').AsString := global_contrato;
  zqExt.ParamByName('reporte').AsString := reporte;
  zqExt.Open;

  extencion := zqExt.FieldByName('sTipo').AsString;
  
  Guardar := TSaveDialog.Create(nil);
  Guardar.Filter := 'Excel(*'+extencion+')|*'+extencion;
  Guardar.DefaultExt := extencion;
  Guardar.FileName := Reporte;

  Correcto := False;
  Cancelar := False;
  repeat
    if Guardar.Execute then
    begin
      sArchivo := Guardar.FileName;
      if (AnsiEndsText(extencion,sArchivo)) then
      begin
        if FileExists(SArchivo) then
        begin
          if MessageDlg('¿El archivo ya existe, desea sobreescribirlo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            Correcto := True;
          end
          else
            ShowMessage('Intente con otro nombre porfavor.');
        end
        else
          Correcto := True;
      end;

    end
    else
      Cancelar := True;
  until (Correcto) or Cancelar;
  Result := Correcto;
end;

procedure TfrmDiarioTurno.ReporteExcel_CabeceraHorizontal2(Libro, Excel: Variant; iFila: Integer; RepetirEncabezado: Boolean = True; FilaFinal: Integer = 14);
Var
  TmpName, sDia: String;
  TempPath: String;
  Fs: TStream;
  Pic : TJpegImage;
  imgAux: TImage;
  dContrato_Inicio,
  dContrato_Final: TDateTime;
  QryCondiciones : TZQuery;
  QryEmbarcacion: TZquery;

begin
  
 {$REGION 'IMAGENES DE CABECERA'}
  //Imagen Izquierda
  Try
    TmpName := '';
    imgAux := TImage.Create(nil);
    if TmpName='' then
    begin
      TempPath := ExtractFilePath(Application.Exename);
      TmpName:=TempPath +'ImgTempCliente.jpg';
      fs := Connection.configuracion.CreateBlobStream(Connection.configuracion.FieldByName('bImagen'), bmRead); //QrDatos.CreateBlobStream(QrDatos.FieldByName('bImagenpep'), bmRead);
      If fs.Size > 1 Then Begin
        try
          Pic:=TJpegImage.Create;
          try
            Pic.LoadFromStream(fs);
            imgAux.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          fs.Free;
        End;
        imgAux.Picture.SaveToFile(TmpName);
      End;
    end;
  Finally
    imgAux.Free;
  End;

  if excel.activesheet.name = 'Distribucion p.' then
    Libro.Shapes.AddPicture(TmpName, True, True, 10, 20, 110, 55)
  else
    Libro.Shapes.AddPicture(TmpName, True, True, 7, 7, 70, 35);
  //Imagen Derecha
  Try
    TmpName := '';
    imgAux := TImage.Create(nil);
    if TmpName='' then
    begin
      TempPath := ExtractFilePath(Application.Exename);
      TmpName:=TempPath +'ImgTempCIA.jpg';
      fs := Connection.contrato.CreateBlobStream(Connection.contrato.FieldByName('bImagen'), bmRead); //QrDatos.CreateBlobStream(QrDatos.FieldByName('bImagenpep'), bmRead);
      If fs.Size > 1 Then Begin
        try
          Pic:=TJpegImage.Create;
          try
            Pic.LoadFromStream(fs);
            imgAux.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          fs.Free;
        End;
        imgAux.Picture.SaveToFile(TmpName);
      End;
    end;
  Finally
    imgAux.Free;
  End;
  if excel.activesheet.name = 'Distribucion Eq.' then
   Libro.Shapes.AddPicture(TmpName, True, True, 1010, 4, 84, 40)// Libro.Shapes.AddPicture(TmpName, True, True, 620, 0, 70, 40)
  else if excel.activesheet.name = 'Resumen r.' then
    Libro.Shapes.AddPicture(TmpName, True, True, 1070, 2, 90, 45)
  else
    if excel.activesheet.name = 'Distribucion p.' then
      Libro.Shapes.AddPicture(TmpName, True, True, 1030, 20, 110, 55)//Abby
    else
       Libro.Shapes.AddPicture(TmpName, True, True, 990, 20, 110, 55);
  //Texto de Cabecera

  Excel.Range['A2'].Select;
  Excel.Selection.Value := Connection.configuracion.FieldByName('sNombre').AsString;

  {$ENDREGION}


  iFila := 6;

  QryEmbarcacion:= TZQuery.Create(Self);
  QryEmbarcacion.Connection := Connection.zConnection;
  QryEmbarcacion.SQL.text:= 'SELECT em.sDescripcion,em.sContrato, c.mDescripcion as sContratoDescripcion, em.sIdEmbarcacion, c.sTitulo, c.sLabelContrato '+
          'FROM embarcacion_vigencia AS ev INNER JOIN embarcaciones AS em '+
          'ON (em.sIdEmbarcacion = ev.sIdEmbarcacion) '+
          'INNER JOIN contratos c '+
          'ON (c.sContrato = ev.sContrato )'+
          'WHERE ev.sContrato = :Contrato and ev.dFechaInicio = (Select max(ev2.dfechainicio) '+
          'from embarcacion_vigencia ev2 where ev.sContrato = em.sContrato and ev2.dfechainicio <= :fecha)';
  QryEmbarcacion.ParamByName('Contrato').AsString := Global_Contrato_Barco;
  QryEmbarcacion.ParamByName('fecha').AsDateTime := reportediario.FieldByName('didfecha').AsDateTime;
  QryEmbarcacion.Open;

  Excel.Range['H5'].Select;
  Excel.Selection.Value := QryEmbarcacion.FieldByName('sDescripcion').AsString;
  Inc(iFila);

  excel.range['t7'].select;
  excel.selection.value := QryEmbarcacion.Fieldbyname('sContratoDescripcion').AsString;
  
  Excel.Range['H7'].Select;
  Excel.Selection.Value := Connection.contrato.FieldByName('mCliente').AsString;
  Inc(iFila);

  excel.range['H8'].select;
  excel.selection.value := connection.contrato.FieldByName('sLabelcontrato').asstring;

  //Consulto los días de contrato y de vigencia:
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add(' ' +
                              'SELECT ' +
                              ' sDescripcion, '+
                              ' MIN(dFechaInicio) AS dInicioDeContrato, ' +
                              ' MAX(dFechaFinal) AS dFinalDeContrato, ' +
                              ' DATEDIFF(MAX(dFechaFinal),MIN(dFechaInicio)) + 1 AS dDiasDeContrato, ' +
                              ' DATEDIFF(MAX(dFechaFinal), :Hoy) + 1 AS dDiasRestantes, ' +
                              ' DATEDIFF(:Hoy, MIN(dFechaInicio)) + 1 AS dDiasTranscurridos ' +
                              'FROM convenios ' +
                              'WHERE sContrato = :Orden');
  Connection.QryBusca.ParamByName('Hoy').AsDateTime := reportediario.FieldByName('dIdFecha').AsDateTime;
  connection.QryBusca.ParamByName('Orden').AsString  := ReporteDiario.FieldByName('sOrden').AsString;
  connection.QryBusca.Open;

  dContrato_Inicio := Connection.QryBusca.FieldByName('dInicioDeContrato').AsDateTime;
  dContrato_Final := Connection.QryBusca.FieldByName('dFinalDeContrato').AsDateTime;

  if excel.activesheet.name = 'Distribucion Eq.' then
    Excel.Range['AD5'].Select
  else if excel.activesheet.name = 'Resumen r.' then
    excel.range['AD5'].select
  else
    Excel.Range['AM5'].Select;
  Excel.Selection.Value := Connection.QryBusca.FieldByName('dDiasTranscurridos').AsFloat;

  if excel.activesheet.name = 'Distribucion Eq.' then
    Excel.Range['AD6'].Select
  else if excel.activesheet.name = 'Resumen r.' then
    Excel.Range['AD6'].Select
  else
    Excel.Range['AM6'].Select;
  Excel.Selection.Value := Connection.QryBusca.FieldByName('dDiasDeContrato').AsFloat - Connection.QryBusca.FieldByName('dDiasTranscurridos').AsFloat;

  Excel.Range['H6'].select;
  Excel.Selection.Value := global_contrato_barco;
  
  QryCondiciones:=TZQuery.Create (Self);
  QryCondiciones.connection:= connection.zConnection;
  QryCondiciones.SQL.Clear;
  QryCondiciones.SQL.Add(' SELECT c.*, con.sDescripcion, con.sMedida, d.sDescripcion as direccion '+
                         ' FROM condicionesclimatologicas c  '+
                         ' inner join condiciones con on (con.iIdCondicion = c.iIdCondicion) '+
                         ' inner join direcciones d on (d.iIdDireccion = c.iIdDireccion) '+
                         ' WHERE sContrato = :Contrato AND dIdFecha = :Fecha');
  QryCondiciones.ParamByName('Fecha').AsDateTime  := ReporteDiario.Fieldbyname('dIdFecha').AsDateTime;
  QryCondiciones.ParamByName('Contrato').AsString := global_contrato_barco;
  QryCondiciones.Open;

  Excel.Range['BL5'].select;
  Excel.selection.Value := reportediario.FieldByName('dIdFecha').AsDateTime;

  if excel.activesheet.name = 'Distribucion Eq.' then
    excel.range['AS6'].select
  else if excel.activesheet.name = 'Resumen r.' then
    Excel.Range['AS6'].Select
  else
    Excel.Range['BL6'].Select;
    
  Excel.Selection.Value := reportediario.FieldByName('dIdFecha').AsDateTime;
  if ( excel.activesheet.name = 'Distribucion Eq.' ) or ( excel.activesheet.name = 'Resumen r.' ) then
    sDia := excel.activeworkbook.activesheet.Cells[6, 45].text
  else
    sDia := excel.activeworkbook.activesheet.Cells[6, 64].text;
  sDia := UpperCase(sDia);
  Excel.Selection.Value := sDia;

  QryCondiciones.Next;

  Excel.Range['L1'].Select;

  if RepetirEncabezado then
    Excel.ActiveSheet.PageSetup.PrintTitleRows := '$1:$12';

  QryEmbarcacion.Destroy;
  QryCondiciones.Destroy;
end;


Procedure TfrmDiarioTurno.ReporteExcel_Listadepersonal(Excel: Variant; iFila: Integer);
Var
  lista_personal: TZQuery;
  dSubtotal, dTotal : double;
  sCategoria : string;
  i : integer;
begin
  iFila := 15;

  Try
    {$REGION 'FIRMAS'}

     //ReporteExcel_Firmantes(Excel, 'F', 'AF', 23, 24);

    {$ENDREGION}

    {$REGION 'CONSULTA'}
      lista_personal := TZQuery.Create(Self);
      lista_personal.Connection := Connection.zConnection;

      lista_personal.Active := False;
      lista_personal.Sql.Clear;
      lista_personal.Sql.Add('select td.*, cat.sDescripcion as categoria from tripulaciondiaria_listado td '+
                    'inner join categorias cat on (cat.sIdCategoria = td.sIdCategoria and cat.dFechaVigencia <= td.dIdFecha) '+
                    'where td.sContrato=:contrato and td.dIdFecha=:fecha '+
                    'and td.sIdTurno =:turno order by cat.sIdCategoria, td.sOrden, td.sDescripcion');
      lista_personal.ParamByName('Contrato').DataType := ftString;
      lista_personal.ParamByName('Contrato').Value    := global_Contrato_Barco;
      lista_personal.ParamByName('Turno').DataType    := ftString;
      lista_personal.ParamByName('Turno').Value       := ReporteDiario.FieldByName('sIdTurno').AsString;
      lista_personal.ParamByName('Fecha').DataType    := ftDate;
      lista_personal.ParamByName('Fecha').Value       := ReporteDiario.FieldByName('dIdFecha').AsDateTime;;
      lista_personal.Open;
    {$ENDREGION}

    {$REGION 'INSERCIÓN DE DATOS'}
      dSubtotal  := 0;
      dTotal     := 0;
      iFila      := 10;
      sCategoria := '';
      while Not lista_personal.Eof do
      begin
         if sCategoria <> lista_personal.FieldByName('categoria').AsString then
         begin
             if sCategoria <> '' then
             begin
                 inc(iFila);
                 Excel.Range['AX'+ IntToSTr(iFila)].Select;
                 Excel.Selection.Value := dSubtotal;
                 dSubtotal := 0;
                 inc(iFila);
                 Excel.Rows[IntToSTr(iFila)+':'+IntToStr(iFila)].RowHeight := 5;
                 Excel.Range['A'+ IntToStr(ifila) +':'+ 'BC'+ IntToStr(iFila)].Select;
                 for i := 1 to 5 do
                    Excel.Selection.Insert;
                 inc(iFila);
                 Excel.Range['A'+ IntToStr(iFila+4)   +':'+ 'BC'+ IntToStr(iFila+7)].select;
                 Excel.Selection.Copy;
                 Excel.Range['A'+ IntToStr(iFila)+':'+ 'BC'+ IntToStr(iFila + 3)].select;
                 Excel.Selection.PasteSpecial;
             end
             else
             begin
               Excel.Range['A'+ IntToStr(ifila) +':'+ 'BC'+ IntToStr(iFila)].Select;
               for i := 1 to 4 do
                  Excel.Selection.Insert;
               Excel.Range['A'+ IntToStr(iFila+4)   +':'+ 'BC'+ IntToStr(iFila+7)].select;
               Excel.Selection.Copy;
               Excel.Range['A'+ IntToStr(iFila)+':'+ 'BC'+ IntToStr(iFila + 3)].select;
               Excel.Selection.PasteSpecial;
             end;

             Excel.Rows[IntToSTr(iFila)+':'+IntToStr(iFila + 3)].RowHeight := 10;
             Excel.Range['A'+ IntToSTr(iFila)].Select;
             Excel.Selection.Value := lista_personal.FieldByName('categoria').AsString;
             inc(iFila, 2);
             sCategoria := lista_personal.FieldByName('categoria').AsString ;
         end;
         Excel.Range['A'+ IntToSTr(iFila)].Select;
         Excel.Selection.Value := lista_personal.FieldByName('sIdTripulacion').AsString;
         Excel.Range['E'+ IntToSTr(iFila)].Select;
         Excel.Selection.Value := lista_personal.FieldByName('sNombre').AsString;
         Excel.Range['U'+ IntToSTr(iFila)].Select;
         Excel.Selection.Value := lista_personal.FieldByName('sDescripcion').AsString;
         Excel.Range['AJ'+ IntToSTr(iFila)].Select;
         Excel.Selection.Value := '';
         Excel.Range['AQ'+ IntToSTr(iFila)].Select;
         Excel.Selection.Value := '';
         Excel.Range['AX'+ IntToSTr(iFila)].Select;
         Excel.Selection.Value := lista_personal.FieldByName('sNumeroCabina').AsString;
         dSubtotal := dSubtotal + 1;
         dTotal    := dTotal + 1;

         Inc(iFila);
         Excel.Range['A'+ IntToStr(ifila) +':'+ 'BC'+ IntToStr(iFila)].Select;
         Excel.Selection.Insert;
         Excel.Range['A'+ IntToStr(iFila-1)   +':'+ 'BC'+ IntToStr(iFila-1)].select;
         Excel.Selection.Copy;
         Excel.Range['A'+ IntToStr(iFila)+':'+ 'BC'+ IntToStr(iFila)].select;
         Excel.Selection.PasteSpecial;
         Excel.Rows[IntToSTr(iFila)+':'+IntToStr(iFila + 3)].RowHeight := 10;

         lista_personal.Next;
      end;

      if lista_personal.RecordCount > 0 then
      begin
          inc(iFila);
          Excel.Range['AX'+ IntToSTr(iFila)].Select;
          Excel.Selection.Value := dSubtotal;
          inc(iFila);
          Excel.Range['A'+ IntToStr(iFila)   +':'+ 'BC'+ IntToStr(iFila+3)].select;
          Excel.Selection.delete;
          Excel.Range['A'+ IntToStr(iFila-1)   +':'+ 'BC'+ IntToStr(iFila-1)].select;
          Excel.Selection.Copy;
          Excel.Range['A'+ IntToStr(iFila)+':'+ 'BC'+ IntToStr(iFila)].select;
          Excel.Selection.PasteSpecial;
          Excel.Rows[IntToSTr(iFila)+':'+IntToStr(iFila)].RowHeight := 10;
          Excel.Range['AQ'+ IntToSTr(iFila)].Select;
          Excel.Selection.Value := 'TOTAL';
          Excel.Range['AX'+ IntToSTr(iFila)].Select;
          Excel.Selection.Value := dTotal;
      end;

      Inc(iFila, 11);


    {$ENDREGION}

  Finally
    lista_personal.Free;
  End;

  iFilaGlobal := iFila;
end;

Procedure TfrmDiarioTurno.ReporteExcel_DistribucionDeEquipos2(Hoja: Variant; Excel: Variant; iFila: Integer);
var
  iColumna : Integer;

  QrMoe,
  QrColumnas,
  QrRecursos,
  QryEmbarcacion: TZQuery;

  ZqEqBarcos : tzreadonlyquery;

  i,x,z,y,
  iFilaInicial,
  Colum,
  iGrupoAnterior: Integer;

  prueba :Variant;
  rangoE: Variant;

  dContrato_Inicio,
  dContrato_Final: TDateTime;
  aux, aux2 : integer;

  sSuma : string;
begin
  ZqEqBarcos := TZReadOnlyQuery.Create(nil);
  ZqEqBarcos.Connection := connection.zConnection;
  ZqEqBarcos.Active := False;
  ZqEqBarcos.SQL.Clear;
  ZqEqBarcos.SQL.Text := ' Select sidequipo,iunificador from equipos '+
                         ' where scontrato = :contrato and Length(iunificador) > 0  ';
  ZqEqBarcos.ParamByName('contrato').AsString := global_Contrato_Barco;
  ZqEqBarcos.Open;

  iFilaInicial := iFila;
  TamFont := 13;
  Excel.ActiveWindow.Zoom := 88;
  Excel.Columns[ColumnaNombre(10)+':'+ColumnaNombre(23)].ColumnWidth := 1;

  Try

    {$REGION 'CONSULTAS - TODOS LOS EQUIPOS REGISTRADOS EN MOE'}
      QrMoe := TZQuery.Create(Self);
      QrMoe.Connection := Connection.zConnection;
      QrMoe.Active := False;
      QrMoe.SQL.Clear;
      QrMoe.SQL.Add('select mr.sIdRecurso, e.sDescripcion, e.sMedida, mr.dCantidad '+
                    'from moe m '+
                    'inner join moerecursos mr '+
                    'on ( mr.iIdMoe = m.iIdMoe ) '+
                    'inner join equipos e '+
                    'on ( e.sContrato = :contratobarco and e.sIdEquipo = mr.sIdRecurso ) '+
                    'where m.dIdFecha = (select max(didfecha) from moe where didfecha <=:Fecha and sContrato = :contrato) '+
                    'and m.sContrato = :contrato '+
                    'and mr.eTipoRecurso = "Equipo" '+
                    'order by e.iItemOrden');
      QrMoe.ParamByName('contratobarco').AsString := Global_Contrato_Barco;
      QrMoe.ParamByName('contrato').AsString := ReporteDiario.FieldByName('sOrden').AsString;
      QrMoe.ParamByName('Fecha').AsDateTime := reportediario.FieldByName('dIdFecha').AsDateTime;
      QrMoe.Open;

    {$ENDREGION}

    {$REGION 'INSERCION DE DATOS - INFORMACIÓN DEL EQUIPO'}
    ifila := 17;

    while Not QrMoe.Eof do
    begin
      excel.activesheet.rows[ifila].insert;
      excel.range['A'+inttostr(ifila+1)+':AC'+inttostr(ifila+1)].select;
      excel.selection.copy;
      excel.range['A'+inttostr(ifila)+':AC'+inttostr(ifila)].select;
      excel.selection.pastespecial;
      excel.cutcopymode := false;

      excel.range['A'+inttostr(ifila)].select;
      excel.selection.value := QrMoe.FieldbyName('sIdRecurso').asstring;
      excel.range['C'+inttostr(ifila)].select;
      excel.selection.value := QrMoe.Fieldbyname('sDescripcion').asstring;
      AjustarFila(excel);
      excel.range['T'+inttostr(ifila)].select;
      excel.selection.value := QrMoe.fieldbyname('sMedida').asstring;
      excel.range['AC'+inttostr(ifila)].select;
      excel.selection.value := QrMoe.FieldByName('dCantidad').asfloat;

      Inc(ifila);
      QrMoe.Next;
    end;                        

    excel.range['A'+inttostr(ifila)+':AC'+inttostr(ifila)].select;
    excel.selection.delete;

    {$ENDREGION}

    {$REGION 'CONSULTAS - PARTIDAS'}
      QrColumnas := TZQuery.Create(Self);
      QrColumnas.Connection := Connection.zConnection;
      QrColumnas.SQL.Add( 'select ot.sIdFolio, '+
                                 'ot.sNumeroOrden, '+
                                 'ot.sIdPernocta, '+
                                 'ot.sIdPlataforma, '+
                                 'p.sDescripcion as sPernocta, '+
                                 'pt.sDescripcion as sPlataforma '+
                          'from ordenesdetrabajo ot '+
                          'inner join contratos c '+
                          'on ( c.sContrato = ot.sContrato ) '+
                          'inner join bitacoradeequipos be '+
                          'on ( be.sContrato = ot.sContrato and be.sNumeroOrden = ot.sNumeroOrden ) '+
                          'inner join pernoctan p '+
                          'on ( ot.sIdPernocta = p.sIdPernocta) '+
                          'inner join plataformas pt '+
                          'on ( ot.sIdPlataforma = pt.sIdPlataforma ) '+
                          'where c.sContrato = :contrato '+
                          'and be.dIdFecha = :fecha '+
                          'group by ot.sIdFolio, p.sIdPernocta' );
      QrColumnas.ParamByName('Contrato').AsString:= ReporteDiario.FieldByName('sOrden').AsString;
      QrColumnas.ParamByName('Fecha').AsDate:=reportediario.FieldByName('dIdFecha').AsDateTime;
      QrColumnas.Open;
    {$ENDREGION}

    {$REGION 'INSERCION DE DATOS - PARTIDAS'}
      iColumna := 23;
      QrRecursos := TZQuery.Create(Self);
      QrRecursos.Connection := Connection.zConnection;
      while Not QrColumnas.Eof do
      begin

        {$REGION 'CREAR COLUMNAS'}
        excel.range[columnanombre(icolumna)+'11:'+columnanombre(icolumna)+inttostr(ifila)].select;
        excel.selection.insert(xlToright);
        excel.range[columnanombre(icolumna+4)+'11:'+columnanombre(icolumna+5)+inttostr(ifila)].select;
        excel.selection.copy;
        excel.range[columnanombre(icolumna)+'11:'+columnanombre(icolumna+2)+inttostr(ifila)].select;
        excel.selection.pastespecial;
        excel.cutcopymode := false;
        {$ENDREGION}

        {$REGION 'CABECERA'}
        excel.range[columnanombre(icolumna)+'11'].select;
        excel.selection.value := qrColumnas.fieldbyname('snumeroorden').asstring;
        excel.range[columnanombre(icolumna)+'12'].select;
        excel.selection.value := qrcolumnas.fieldbyname('spernocta').asstring;
        excel.range[columnanombre(icolumna)+'13'].select;
        excel.selection.value := qrColumnas.FieldByName('splataforma').asstring;
        excel.cutcopymode := false;
        {$ENDREGION}

        {$REGION 'CONSULTA CUADRE'}
          QrRecursos.Active := False;
          QrRecursos.SQL.Clear;
          QrRecursos.SQL.Add( 'select be.sIdEquipo, sum(be.dCantHH) as dCantidad '+
                              'from bitacoradeequipos be '+
                              'inner join equipos e '+
                              'on ( e.sIdEquipo = be.sIdEquipo ) '+
                              'inner join bitacoradeactividades ba '+
                              'on ( ba.sContrato = :contrato and ba.dIdFecha = :fecha '+
                                   'and ba.sNumeroOrden = :folio '+
                                   'and ba.iIdDiario = be.iIdDiario ) '+
                              'where e.sContrato = :contratoBarco '+
                              'and be.sContrato = :contrato '+
                              'and be.sNumeroOrden = :folio '+
                              'and be.sIdPernocta = :pernocta '+
                              'and be.dIdFecha = :fecha '+
                              'group by e.sIdEquipo '+
                              'order by e.iItemOrden');
          QrRecursos.ParamByName('contratoBarco').AsString := global_contrato_barco;
          QrRecursos.ParamByName('contrato').AsString := ReporteDiario.FieldByName('sOrden').AsString;
          QrRecursos.ParamByName('folio').AsString := QrColumnas.FieldByName('sNumeroOrden').AsString;
          QrRecursos.ParamByName('fecha').AsDate := reportediario.FieldByName('dIdFecha').AsDateTime;
          QrRecursos.ParamByName('pernocta').AsString := QrColumnas.FieldByName('sIdPernocta').AsString;
          QrRecursos.Open;
        {$ENDREGION}

        ifila := 17;

        {$REGION 'INSERTA EL CUADRE'}
          QrMoe.First;
          while Not QrMoe.Eof do
          begin
            Excel.Range[ColumnaNombre(iColumna)+IntToStr(iFila)+':'+ColumnaNombre(iColumna)+IntToStr(iFila)].Select;
//            Excel.Selection.Value := 0;
            if QrRecursos.Locate('sIdEquipo', QrMoe.FieldByName('sIdRecurso').AsString, []) then
              Excel.Selection.Value := QrRecursos.FieldByName('dCantidad').AsFloat;

            Inc(iFila);
            QrMoe.Next;
          end;
        {$ENDREGION}

        Inc(iColumna, 3);
        QrColumnas.Next;
      end;      
    {$ENDREGION}

    {$REGION 'GENERA LOS CUADROS SIGUIENTES SI NO SE GENERARON - ESTILO'}
      if iColumna < 58 then
      begin
        aux := iColumna;
        while iColumna <= 58 do
        begin
          excel.range[columnanombre(aux)+'11:'+columnanombre(aux)+inttostr(ifila)].select;
          excel.selection.insert(xlToright);
          excel.range[columnanombre(aux+4)+'11:'+columnanombre(aux+5)+inttostr(ifila)].select;
          excel.selection.copy;
          excel.range[columnanombre(aux)+'11:'+columnanombre(aux+2)+inttostr(ifila)].select;
          excel.selection.pastespecial;
          excel.cutcopymode := false;
          Inc(iColumna, 3);
        end;
      end;
    {$ENDREGION}

    {$REGION 'TOTALES'}
    //HORIZONTALES
    aux2 := 23;
    inc(icolumna,6);
    for aux := 1 to qrColumnas.Recordcount do
    begin
      excel.range[columnanombre(aux2)+inttostr(ifila)].select;
      sSuma := 'SUM('+columnanombre(aux2)+'17:'+columnanombre(aux2)+inttostr(ifila-1)+')';
      excel.selection.formula := '=IF('+sSuma+'>0, '+sSuma+', "")';
      Inc(aux2, 3);
    end;
    //VERTICALES
    for aux := 17 to iFila - 1 do
    begin
      excel.range[columnanombre(icolumna-3)+inttostr(aux)].select;
      excel.selection.formula := '=SUM(W'+inttostr(aux)+':'+columnanombre(icolumna-5)+inttostr(aux)+')';
    end;

    excel.range[columnanombre(icolumna-3)+inttostr(ifila)].select;
    excel.selection.formula := '=SUM('+columnanombre(icolumna-3)+'17:'+columnanombre(icolumna-3)+inttostr(ifila-1)+')';
    excel.range[columnanombre(icolumna)+inttostr(ifila)].select;
    excel.selection.formula := '=SUM('+columnanombre(icolumna)+'17:'+columnanombre(icolumna)+inttostr(ifila-1)+')';
    {$ENDREGION}

    excel.range['A'+inttostr(ifila+3)+':AE'+inttostr(ifila+3)].select;
    excel.selection.insert;

    {$REGION 'ITUTLO DE LA CABECERA'}
    with connection.qrybusca do
    begin
      active := false;
      sql.text := 'select sdescripcion from anexos where stipo = "EQUIPO"';
      open;

      excel.range['A15:AB16'].select;
      excel.selection.mergecells := true;
      excel.selection.value := fieldbyname('sdescripcion').asstring;
    end;
    {$ENDREGION}

    excel.activewindow.zoom := 100;
    excel.range['A1'].select;

  Finally
    QrMoe.Free;
    QrRecursos.Free;
  End;
end;

procedure TfrmDiarioTurno.ReporteExcel_ResumenDeRecursos(var Excel: Variant);
var
  QrMoeP,         //Moe Personal
  QrMoeE,         //Moe Equipo
  QrColumnas,     //Folios, Pernoctas, Plataformas
  QrMovBarco,     //Movimientos del barco
  QrPersonal,     //Personal
  QrEquipo,       //Equipo
  QrPernoctas     //Pernoctas
  : TZReadOnlyQuery;

  iFilaM,   //Moe
  iFilaP,   //Personal
  iFilaE,   //Equipo
  iFilaPr,  //Pernoctas
  iColumna,
  x : Integer;
begin
  //Sam
  try
    try
      {$REGION 'CREA TZREADQUERY'}
      QrMovBarco := TZReadOnlyQuery.Create(nil);
      QrMovBarco.connection := connection.zconnection;
      QrColumnas := TZReadOnlyQuery.Create(nil);
      QrColumnas.connection := connection.zconnection;
      QrMoeP := TZReadOnlyQuery.Create(nil);
      QrMoeP.connection := connection.zconnection;
      QrMoeE := TZReadOnlyQuery.Create(nil);
      QrMoeE.connection := connection.zconnection;
      QrPersonal := TZReadOnlyQuery.Create(nil);
      QrPersonal.connection := connection.zconnection;
      QrEquipo := TZReadOnLyQuery.Create(nil);
      QrEquipo.connection := connection.zconnection;
      QrPernoctas := TZReadOnlyQuery.Create(nil);
      QrPernoctas.Connection := connection.zconnection;
      {$ENDREGION}

      {FILIOS DEL DIA}
      {$REGION 'CONSULTA COLUMNAS - FOLIOS LABORADOS'}
      with QrColumnas do
      begin
        active := false;
        sql.text := 'select ot.sIdFolio, '+
                           'ot.sIdPernocta, '+
                           'ot.sIdPlataforma, '+
                           'p.sDescripcion as sPernocta, '+
                           'pt.sDescripcion as sPlataforma '+
                    'from ordenesdetrabajo ot '+
                    'inner join contratos c '+
                    'on ( c.sContrato = ot.sContrato ) '+
                    'inner join bitacoradeequipos be '+
                    'on ( be.sContrato = ot.sContrato and be.sNumeroOrden = ot.sNumeroOrden ) '+
                    'inner join pernoctan p '+
                    'on ( ot.sIdPernocta = p.sIdPernocta) '+
                    'inner join plataformas pt '+
                    'on ( ot.sIdPlataforma = pt.sIdPlataforma ) '+
                    'where c.sContrato = :contrato '+
                    'and be.dIdFecha = :fecha '+
                    'group by ot.sIdFolio, p.sIdPernocta';
        parambyname('contrato').asstring := ReporteDiario.fieldbyname('sOrden').asstring;
        parambyname('fecha').asdate      := reportediario.fieldbyname('didfecha').asdatetime;
        open;
      end;
      {$ENDREGION}

      if QrColumnas.RecordCount > 0 then
      begin
        {COLUMNAS TIENEN QUE ESTAR ALINEADAS CON EL LOGO
        EN CASO QUE NO EXISTAN SUFICIENTES DEBERAN CREARSE}
        {$REGION 'CREA COLUMNAS'}
        with QrColumnas do
        begin
          iColumna := 25;
          first;
          x := 25;
          if ( RecordCount * 4 ) <= 63 then
          begin
            while x <= 63 do
            begin
              excel.range[columnanombre(icolumna)+'12:'+columnanombre(icolumna)+'28'].select;
              excel.selection.insert(xlToRight);
              excel.range[columnanombre(icolumna+4)+'12:'+columnanombre(icolumna+4)+'28'].select;
              excel.selection.copy;
              excel.range[columnanombre(icolumna)+'12:'+columnanombre(icolumna)+'28'].select;
              excel.selection.pastespecial;
              inc(x, 4);
            end;
          end
          else
          begin
            while not Eof do
            begin
              excel.range[columnanombre(icolumna)+'12:'+columnanombre(icolumna)+'28'].select;
              excel.selection.insert(xlToRight);
              excel.range[columnanombre(icolumna+4)+'12:'+columnanombre(icolumna+4)+'28'].select;
              excel.selection.copy;
              excel.range[columnanombre(icolumna)+'12:'+columnanombre(icolumna)+'28'].select;
              excel.selection.pastespecial;
              Next;
            end;
          end;
        end;
        {$ENDREGION}

        {CREAR CAMPOS DE TOTALES}
        {$REGION 'TOTALES'}
        {excel.range[columnanombre(x+4)+'16'].formula := '=SUM(Y16:'+columnanombre(x)+'16)';
        excel.range[columnanombre(x+4)+'20'].formula := '=SUM(Y20:'+columnanombre(x)+'20)';
        excel.range[columnanombre(x+4)+'24'].formula := '=SUM(Y24:'+columnanombre(x)+'20)';
        excel.range[columnanombre(x+4)+'28'].formula := '=SUM(Y28:'+columnanombre(x)+'28)';}
        {$ENDREGION}

        {CONSULTA MOVIMIENTOS DEL BARCO}
        {$REGION 'CONSULTA MOVIMIENTOS DEL BARCO YA CON SU FACTOR POR FOLIO'}
        with QrMovBarco do
        begin
          active := false;
          sql.text := 'select tm.sIdTipoMovimiento, '+
                             'tm.sDescripcion, '+
                             'tm.sMedida, '+
                             ' ot.sIdFolio, '+
                             'ot.sIdPernocta, '+
                             'ot.sIdPlataforma, '+
                             'sum( me.sFactor ) as sFactor '+
                      'from movimientosdeembarcacion me '+
                      'inner join tiposdemovimiento tm '+
                        'on ( me.sContrato = tm.sContrato '+
                           'and me.sClasificacion = tm.sIdTipoMovimiento) '+
                      'inner join movimientosxfolios mf '+
                        'on ( mf.sContrato = me.sContrato '+
                           'and mf.dIdFecha = me.dIdFecha '+
                           'and mf.iIdDiario = me.iIdDiario) '+
                      'inner join ordenesdetrabajo ot '+
                      'on ( ot.sContrato = :contrato '+
                           'and ot.sIdFolio = mf.sFolio)'+
                      'where tm.sContrato = :contratoBarco '+
                      'and tm.sMedida = "DIA" '+
                      'and tm.sClasificacion = "Movimiento de Barco" '+
                      'and me.dIdFecha = :fecha '+
                      'group by tm.sIdTipoMovimiento';
          parambyname('contratobarco').asstring := global_contrato_barco;
          parambyname('contrato').asstring := reportediario.FieldByName('sOrden').asstring;
          parambyname('fecha').AsDate := reportediario.fieldbyname('didfecha').asdatetime;
          open;
        end;
        {$ENDREGION}

        iFilaM := 16;
        {TRABAJA EN EXCEL LOS MOVIMIENTOS}
        {$REGION 'ESCRIBE LOS MOV BARCO'}
        excel.range[columnanombre(x+4)+inttostr(ifilaM)].formula := '=SUM(Y'+inttostr(ifilam)+':'+columnanombre(x)+inttostr(ifilam)+')';
        if QrMovBarco.RecordCount > 0 then
        begin
          with QrMovBarco do
          begin
            while not Eof do
            begin
              excel.rows[ifilaM].insert;
              excel.rows[ifilaM+1].select;
              excel.selection.copy;
              excel.rows[ifilaM].select;
              excel.selection.pastespecial;
              excel.cutcopymode := false;

              excel.range['A'+inttostr(ifilam)].value := fieldbyname('sidtipomovimiento').asstring;
              excel.range['D'+inttostr(ifilam)].value := fieldbyname('sdescripcion').asstring;
              excel.range['D'+inttostr(ifilam)].select;
              ajustarfila(excel);
              excel.range['U'+inttostr(ifilam)].value := fieldbyname('smedida').asstring;
              inc(ifilaM);
              next;
            end;
          end;
          excel.rows[ifilaM].delete;
        end
        else
           inc(iFilaM);
        {$ENDREGION}

        ifilaP := iFilaM + 3;
        {PERSONAL REGISTRADO EN EL MOE}
        {$REGION 'CONSULTA Y ESCRIBE PERSONAL SOLICITADO EN EL ULTIMO MOE VIGENTE'}
        excel.range[columnanombre(x+4)+inttostr(ifilap)].formula := '=SUM(Y'+inttostr(ifilap)+':'+columnanombre(x)+inttostr(ifilap)+')';
        with QrMoeP do
        begin
          active := false;    
          sql.text := 'select p.sDescripcion, '+
                             'mr.*, p.lSumaSolicitado, '+
                             'p.sMedida, m.iidmoe '+
                      'from moe AS m '+
                      'inner join moerecursos as mr '+
                        'on (mr.iidMoe=m.iidMoe) '+
                      'inner join personal as p '+
                        'ON (p.scontrato=:contratoBarco '+
                            'and p.sidpersonal=mr.sidRecurso) '+
                      'where m.didfecha = (select max(didfecha) '+
                                          'from moe where didfecha <=:Fecha '+
                                          'and sContrato = :contrato) '+
                      'and m.sContrato = :contrato '+
                      'and mr.eTipoRecurso = "Personal" '+
                      'order by p.iItemOrden';
          parambyname('contratoBarco').asstring := global_contrato_barco;
          parambyname('contrato').asstring := reportediario.fieldbyname('sOrden').asstring;
          parambyname('fecha').asdate := reportediario.fieldbyname('didfecha').asdatetime;
          open;

          if recordcount > 0 then
          begin
            first;
            while not Eof do
            begin
              excel.rows[ifilap].insert;
              excel.rows[ifilap+1].select;
              excel.selection.copy;
              excel.rows[ifilap].select;
              excel.selection.pastespecial;
              excel.cutcopymode := false;

              excel.range['A'+inttostr(ifilap)].value := fieldbyname('sidrecurso').AsString;
              excel.range['D'+inttostr(ifilap)].value := fieldbyname('sdescripcion').asstring;
              excel.range['D'+inttostr(ifilap)].select;
              ajustarfila(excel);
              excel.range['U'+inttostr(ifilap)].value := fieldbyname('smedida').asstring;
              inc(ifilap);
              next;
            end;
            excel.rows[ifilap].delete;
          end;
        end;
        {$ENDREGION}

        iFilaE := ifilap + 3;
        {EQUIPO REGISTRADO EN EL MOE}
        {$REGION 'CONSULTA Y ESCRIBE EL EQUIPO SOLICITADO EN EL ULTIMO MOE VIGENTE'}
        excel.range[columnanombre(x+4)+inttostr(ifilae)].formula := '=SUM(Y'+inttostr(ifilae)+':'+columnanombre(x)+inttostr(ifilae)+')';
        with QrMoeE do
        begin
          active := false;
          sql.Text := 'SELECT p.sidequipo, p.sDescripcion, p.sMedida ' +
                      'FROM moerecursos AS mr ' +
                      'INNER JOIN moe AS m ' +
                      'ON (m.iidMoe=mr.iidMoe) ' +
                      'INNER JOIN equipos AS p ' +
                      'ON (p.sContrato=:Contrato AND p.sIdEquipo=mr.sidRecurso) ' +
                      'LEFT JOIN gruposdeequipo AS ge ' +
                      'ON (ge.iId = p.iId_AgrupadorEquipo) ' +
                      'WHERE ' +
                      'dIdFecha = (SELECT max(didfecha) FROM moe WHERE didfecha <=:Fecha AND sContrato = :ContratoNormal) ' +
                      'AND m.sContrato = :ContratoNormal ' +
                      'AND mr.eTipoRecurso="Equipo" ' +
                      'ORDER BY p.iItemOrden';
          parambyname('contrato').asstring := global_contrato_barco;
          parambyname('contratoNormal').asstring := reportediario.fieldbyname('sOrden').asstring;
          parambyname('fecha').asdate := reportediario.fieldbyname('didfecha').asdatetime;
          open;

          if recordcount > 0 then
          begin
            first;
            while not eof do
            begin
              excel.rows[ifilae].insert;
              excel.rows[ifilae+1].select;
              excel.selection.copy;
              excel.rows[ifilae].select;
              excel.selection.pastespecial;
              excel.cutcopymode := false;

              excel.range['A'+inttostr(ifilae)].value := fieldbyname('sidequipo').AsString;
              excel.range['D'+inttostr(ifilae)].value := fieldbyname('sdescripcion').asstring;
              excel.range['D'+inttostr(ifilae)].select;
              ajustarfila(excel);
              excel.range['U'+inttostr(ifilae)].value := fieldbyname('smedida').asstring;
              inc(ifilae);
              next;
            end;
            excel.rows[ifilae].delete;
          end;
        end;
        {$ENDREGION}

        iColumna := 25;
        qrColumnas.First;
        while not QrColumnas.Eof do
        begin
          {DATOS DE LA COLUMNA}
          {$REGION 'COLUMNAS'}
          excel.range[columnanombre(icolumna)+'12'].value := QrColumnas.FieldByName('sidfolio').asstring;
          excel.range[columnanombre(icolumna)+'13'].value := QrColumnas.FieldByName('splataforma').asstring;
          {$ENDREGION}

          {BARCO ANEXO C}
          {$REGION 'INSERTA BARCO'}
          iFilaM := 16;
          try
            try
              QrMovBarco.Filtered := False;
              QrMovBarco.Filter := 'sIdFolio = '+QuotedStr(QrColumnas.FieldByName('sIdFolio').AsString);
              QrMovBarco.Filtered := true;
            except
              ;
            end;

            while excel.cells[ifilam, 1].text <> '' do
            begin
              if ( QrMovBarco.Locate('sIdPlataforma', qrColumnas.FieldByName('sIdPlataforma').asstring, []) )
                  and ( QrMovBarco.fieldByName('sIdTipoMovimiento').asstring =  excel.cells[ifilam, 1].text) then
                excel.range[columnanombre(icolumna)+inttostr(ifilam)].value := QrMovBarco.FieldByName('sFactor').AsString;
              inc(ifilam);
            end;
          finally
            QrMovBarco.Filtered := False;
          end;
          {$ENDREGION}

          {PERSONAL ANEXO C-1}
          {$REGION 'CONSULTA PERSONAL REPORTADO'}
          iFilaP := iFilaM + 3;
          with QrPersonal do
          begin
            active  := false;
            sql.text := 'SELECT bp.sIdPersonal, bp.sDescripcion, SUM(bp.dAjuste) AS Ajuste, ' +
                        'IF(SUM(bp.dCanthh) > 0, ROUND(SUM(bp.dCanthh), 2), SUM(bp.dCantidad)) AS Total ' +
                        'FROM bitacoradepersonal bp ' +
                        'WHERE bp.scontrato = :contrato AND bp.sNumeroOrden = :Folio AND bp.didfecha = :fecha ' +
                        'AND bp.sidPernocta = :Pernocta AND bp.sidplataforma = :Plataforma GROUP BY bp.sIdPersonal';
            parambyname('contrato').asstring := reportediario.FieldByName('sOrden').asstring;
            parambyname('folio').asstring := QrColumnas.fieldbyname('sidfolio').asstring;
            parambyname('fecha').asdate := reportediario.fieldbyname('didfecha').asdatetime;
            parambyname('pernocta').asstring := QrColumnas.fieldbyname('sidpernocta').asstring;
            parambyname('plataforma').AsString := QrColumnas.FieldByName('sidplataforma').asstring;
            open;

            if recordcount > 0 then
            begin
              first;
              while excel.cells[ifilap, 1].text <> '' do
              begin
                if QrMoeP.Locate( 'sIdRecurso', excel.cells[ifilap, 1].text ,[]) then
                begin
                  if Locate('sIdPersonal', QrMoeP.FieldByName('sidrecurso').AsString, []) then
                    excel.range[columnanombre(icolumna)+inttostr(ifilap)].value := fieldbyname('total').asfloat;
                end;
                inc(ifilap);
              end;
            end;
          end;
          {$ENDREGION}

          {EQUIPO ANEXO C-2}
          {$REGION 'CONSULTA EQUIPO REPORTADO'}
          ifilaE := ifilap + 3;
          with QrEquipo do
          begin
            active := false;
            sql.text := 'select be.sIdEquipo, sum(be.dCantHH) as dCantidad '+
                              'from bitacoradeequipos be '+
                              'inner join equipos e '+
                              'on ( e.sIdEquipo = be.sIdEquipo ) '+
                              'inner join bitacoradeactividades ba '+
                              'on ( ba.sContrato = :contrato and ba.dIdFecha = :fecha '+
                                   'and ba.sNumeroOrden = :folio '+
                                   'and ba.iIdDiario = be.iIdDiario ) '+
                              'where e.sContrato = :contratoBarco '+
                              'and be.sContrato = :contrato '+
                              'and be.sNumeroOrden = :folio '+
                              'and be.sIdPernocta = :pernocta '+
                              'and be.dIdFecha = :fecha '+
                              'group by e.sIdEquipo '+
                              'order by e.iItemOrden';
            parambyname('contratoBarco').asstring := global_contrato_barco;
            parambyname('contrato').asstring := reportediario.fieldbyname('sOrden').asstring;
            parambyname('folio').asstring := QrColumnas.fieldbyname('sidfolio').asstring;
            parambyname('pernocta').asstring := QrColumnas.fieldbyname('sidpernocta').asstring;
            parambyname('fecha').asdate := reportediario.fieldbyname('didfecha').asdatetime;
            open;

            if recordcount > 0 then
            begin
              first;
              while excel.cells[ifilae, 1].text <> '' do
              begin
                if QrMoeE.Locate( 'sidequipo', excel.cells[ifilae, 1].text ,[]) then
                begin
                  if Locate('sidequipo', QrMoeE.FieldByName('sidequipo').AsString, []) then
                    excel.range[columnanombre(icolumna)+inttostr(ifilae)].value := fieldbyname('dCantidad').asfloat;
                end;
                inc(ifilae);
              end;
            end;
          end;
          {$ENDREGION}

          inc(icolumna, 4);
          QrColumnas.Next;
        end;

        {CONSULTA E INSERTA PERNOCTAS
        PD: LAS PERNOCTAS SON POR OT NO POR FOLIO}
        {$REGION 'CONSULTA PERNOCTAS'}
        with qrPernoctas do
        begin
          active := false;
          sql.text := 'select c.sIdPernocta, '+
                             'c.sDescripcion, '+
                             'c.sMedida, '+
                             '@dAjuste := ( select ifnull( bpr.dCantidad, 0) '+
                                                     'from bitacoradepernocta bpr '+
                                                     'where bpr.sContrato = :contrato '+
                                                     'and bpr.dIdFecha = :fecha '+
                                                     'and bpr.sNumeroOrden <> "@" ) as dAjuste, '+
                             '@dCantidad := sum( bp.dCantHH ) as dCantidadHH, '+

                             '(if( @dAjuste < @dCantidad, '+
                               '( @dCantidad - @dAjuste ), '+
                               '( if( @dAjuste = @dCantidad, '+
                                     '@dCantidad, '+
                                     '( @dCantidad + @dAjuste ) '+
                                 ') '+
                               ') '+
                             ') ) as dCantidadAjuste, '+
       
                       '( sum( bp.dCantHH ) - ( select ifnull( bpr.dCantidad, 0) '+
                                               'from bitacoradepernocta bpr '+
                                               'where bpr.sContrato = :contrato '+
                                               'and bpr.dIdFecha = :fecha '+
                                               'and bpr.sNumeroOrden <> "@" ) ) as dCantidad '+

                      'from cuentas c '+
                      'inner join bitacoradepersonal bp '+
                        'on ( bp.lAplicaPernocta = "Si" '+
                          'and bp.sTipoPernocta = c.sIdPernocta) '+

                      'inner join moerecursos mr '+
                        'on ( mr.sIdRecurso = bp.sIdPersonal '+
                          'and mr.eTipoRecurso = "Personal" '+
                          'and mr.iIdMoe = ( select m.iIdMoe from moe m where m.sContrato = :contrato '+
                                            'and m.dIdFecha <= :fecha order by m.dIdFecha desc limit 1) ) '+

                      'inner join personal p '+
                        'on ( p.sContrato = :contratoBarco '+
                          'and p.sIdPersonal = bp.sIdPersonal ) '+

                      'inner join tiposdepersonal tp '+
                        'on ( p.sIdTipoPersonal = tp.sIdTipoPersonal ) '+

                      'inner join bitacoradeactividades ba '+
                        'on ( ba.sNumeroActividad = bp.sNumeroActividad '+
                          'and ba.dIdFecha = bp.dIdFecha '+
                          'and ba.sIdTipoMovimiento = "E" ) '+

                      'inner join ordenesdetrabajo ot '+
                        'on ( ot.sContrato = :contrato and ot.sNumeroOrden = ba.sNumeroOrden ) '+

                      'inner join pernoctan pr '+
                        'on ( pr.sIdPernocta = ot.sIdPernocta ) '+

                      'inner join plataformas pl '+
                        'on ( pl.sIdPlataforma = ot.sIdPlataforma ) '+

                      'where bp.sContrato = :contrato '+
                      'and bp.dIdFecha = :fecha '+

                      'group by c.sIdPernocta '+
                      'order by c.sIdPernocta';
          parambyname('contrato').asstring := ReporteDiario.FieldByName('sOrden').asstring;
          parambyname('fecha').asdate := ReporteDiario.FieldByName('dIdFecha').asDatetime;
          parambyname('contratoBarco').asstring := global_contrato_barco;
          open;
        end;

        if qrPernoctas.recordcount > 0 then
        begin
          ifilaPr := iFilaE + 3;
          qrPernoctas.first;
          excel.range[columnanombre(x+4)+inttostr(ifilapr)].formula := '=SUM(Y'+inttostr(ifilapr)+':'+columnanombre(x)+inttostr(ifilapr)+')';
          while not qrPernoctas.eof do
          begin
            excel.rows[ifilapr].insert;
            excel.rows[ifilapr + 1].copy;
            excel.rows[ifilapr].pastespecial;
            excel.cutcopymode := false;
            excel.range['A'+inttostr(ifilapr)].value := qrPernoctas.fieldbyname('sIdPernocta').asstring;
            excel.range['D'+inttostr(ifilapr)].value := qrPernoctas.fieldbyname('sDescripcion').asstring;
            excel.range['D'+inttostr(ifilapr)].select;
            ajustarfila(excel);
            excel.range['U'+inttostr(ifilapr)].value := qrPernoctas.fieldbyname('smedida').asstring;
            excel.range['Y'+inttostr(ifilapr)].value := qrPernoctas.fieldbyname('dCantidad').AsFloat;
            inc(ifilapr);
            qrpernoctas.next;
          end;
          excel.rows[ifilapr].delete;
        end;

        {$ENDREGION}


        try
          excel.activesheet.VPageBreaks[1].DragOff(xlToRight, 1);
        except
          ;
        end;
      end;
    except
      on e:exception do
      begin
        MessageDlg('No se puede imprimir el reporte diario: '+e.Message, mtInformation, [mbOk], 0);
      end;
    end;
  finally
    QrMovBarco.Free;
    QrColumnas.Free;
    QrMoeP.Free;
    QrMoeE.Free;
    QrPersonal.Free;
    QrEquipo.Free;
    QrPernoctas.Free;
  end;
end;

end.
