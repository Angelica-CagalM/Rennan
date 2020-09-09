unit frm_ReporteDiarioTurno;

interface

uses
  Windows, Messages, DateUtils, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, DB, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, Mask,
  frm_connection, Buttons, Utilerias, Global, Menus, OleCtrls, ExtCtrls,
  strUtils, frm_barra, Math, frxClass, frxDBSet, Jpeg, RxMemDS, unitMetodos,
  RXDBCtrl, RXCtrls, ExtDlgs, ZAbstractRODataset, ZDataset, rxSpeedbar, ZAbstractDataset,
  masUtilerias,  UnitExcepciones, UnitTablasImpactadas, UnitTBotonesPermisos,
  UnitValidaTexto,UnitPatrick,ComObj,
  UnitTarifa, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons, cxSplitter,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxContainer, cxDateNavigator, frxExportPDF, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

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
    OpenPicture: TOpenPictureDialog;
    ds_ReporteFotografico: TDataSource;
    Label19: TLabel;
    tsTiempoMuertoContrato: TMaskEdit;
    SaveImage: TSaveDialog;
    tsIdTurno: TDBLookupComboBox;
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
    ImprimirReportedeVisita1: TMenuItem;
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
    cbbCriterios: TComboBox;
    grpFactores: TGroupBox;
    mmoFactores: TMemo;
    PnlProgress: TPanel;
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
    PartidasAnexoCDetalle1: TMenuItem;
    AvancesGerencial1: TMenuItem;
    lbl2: TLabel;
    pb1: TProgressBar;
    pbMigracion: TProgressBar;
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
    cxConvenio: TcxStyle;
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
    chkOrdenar: TCheckBox;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
    frxPDFExport1: TfrxPDFExport;

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
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure OrdenarFotos(sParamOrden : string);
    procedure btnUpClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
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
    procedure Grid_ReportesEnter(Sender: TObject);
    procedure cxImportaClick(Sender: TObject);
    procedure cxCuadreClick(Sender: TObject);
    procedure cxActividadesClick(Sender: TObject);
    procedure cxEquiposClick(Sender: TObject);
    procedure cxRecepcionClick(Sender: TObject);
    procedure cxSalidaClick(Sender: TObject);

    private
    sMenuP:String;
    AplicarProrrateo: Boolean;
    sArchivo : string;

    {Procedimientos PDF}
    Procedure GeneraReporteDiario_PDF(RTipo:FtTipo;RImpresion:FtSeccion);Overload;
//    procedure CargarGridFolios(Grid: TnextGrid;RecuerdaPos:Boolean = False);
//    procedure GuardarCambios(Grid: TnextGrid);
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

uses
  UFunctionsGHH, UnitExcel, frm_ImportaExportaActiv,
  frm_SalidaAlmacen;

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
    sSeccion := connection.uconfiguracion.FieldByName('sSeccionImprime').AsString;
    {Clasificacion de secciones a Imprimir..}

//        if pos('Caratula', sSeccion) > 0 then
//           ReportePDF_MovimientosLogisticos2(ReporteDiario,rDiario,RTipo,RImpresion)
//        else
//           ReportePDF_MovimientosLogisticos2(ReporteDiario,rDiario,RTipo,ftsNone);

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
//
//        if pos('Concentrado de Personal', sSeccion) > 0 then
//           ReportePDF_ConcentradoDePersonal2(ReporteDiario,rDiario,RTipo,RImpresion)
//        else
//           ReportePDF_ConcentradoDePersonal2(ReporteDiario,rDiario,RTipo,ftsNone);
//
//        if pos('Concentrado de Tiempo Extra', sSeccion) > 0 then
//           ReportePDF_ConcentradoDeTiempoExtra(ReporteDiario,rDiario,RTipo,RImpresion)
//        else
//           ReportePDF_ConcentradoDeTiempoExtra(ReporteDiario,rDiario,RTipo,ftsNone);
//
//        if pos('Concentrado de Pernoctas', sSeccion) > 0 then
//           ReportePDF_ConcentradoDePernoctas2(ReporteDiario,rDiario,RTipo,RImpresion)
//        else
//           ReportePDF_ConcentradoDePernoctas2(ReporteDiario,rDiario,RTipo,ftsNone);
//
//        if pos('Concentrado de Equipos', sSeccion) > 0 then
//           ReportePDF_DistribucionDeEquipos2(ReporteDiario,rDiario,RTipo,RImpresion)
//        else
//           ReportePDF_DistribucionDeEquipos2(ReporteDiario,rDiario,RTipo,ftsNone);
//
//        if pos('Extraordinaria', sSeccion) > 0 then
//           ReportePDF_PartidasAnexoC_detalleV2(ReporteDiario,rDiario,RTipo,RImpresion)
//        else
//          ReportePDF_PartidasAnexoC_detalleV2(ReporteDiario,rDiario,RTipo,ftsNone);

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
//  Jvlabel1.Visible := connection.ucontrato.FieldValues['sTipoObra'] = 'BARCO';
  cbbCriterios.Visible := connection.ucontrato.FieldValues['sTipoObra'] = 'BARCO';
  grpfactores.Visible := connection.ucontrato.FieldValues['sTipoObra'] = 'BARCO';

  if connection.ucontrato.FieldValues['sTipoObra'] = 'BARCO' then
    cbbCriterios.OnChange(Sender);

  sMenuP:=stMenu;

  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario', PopupPrincipal);

  BotonPermiso1 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario');

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

  ContratoDiario := ReporteDiario.FieldByName('sOrden').AsString;

  QrOt.Active:=False;
  QrOt.Open;

  lIniciado := False ;
  PgDiario.ActivePageIndex := 0 ;
  Turnos.Active := False ;
  Turnos.Params.ParamByName('contrato').DataType := ftString ;
  Turnos.Params.ParamByName('contrato').Value    := global_contrato ;
  Turnos.Open ;

//  tsOTs.KeyValue:=global_contrato;
  ordenesdetrabajo.Active:=False;
//  ordenesdetrabajo.ParamByName('Contrato').AsString:=tsOTs.KeyValue;
  ordenesdetrabajo.ParamByName('Status').AsString:=connection.uconfiguracion.FieldValues [ 'cStatusProceso' ];
  ordenesdetrabajo.Open;

  AbrirDataset;
  Grid_Reportes.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
End;

procedure TfrmDiarioTurno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    global_orden := '' ;
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
//  tdIdFecha.SetFocus ;
end;

procedure TfrmDiarioTurno.tsNumeroReporteKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
      tsTiempo.SetFocus
end;

procedure TfrmDiarioTurno.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
//    If Key = #13 then
//        tdIdFecha.SetFocus
end;



procedure TfrmDiarioTurno.NotasGenerales1Click(Sender: TObject);
begin

    GeneraReporteDiario_PDF(FtAbordo,FtsNGenerales);
end;

procedure TfrmDiarioTurno.optActividadesClick(Sender: TObject);
begin

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
//      tdIdFecha.Enabled := True ;
      tsIdTurno.ReadOnly := False ;
      tsNumeroReporte.ReadOnly := False ;
      tsTiempo.ReadOnly := False ;
      tsTema.ReadOnly := False;
      tsInicioPlatica.ReadOnly := False ;
      tsFinalPlatica.ReadOnly := False ;
      lNuevoDia := True ;
//      tdIdFecha.SetFocus;
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

  IsOpen:=false;
  ReporteDiario.DisableControls;

//  If tsNumeroOrden.Text <> '' Then
//  Begin
//      Connection.QryBusca.Active := False ;
//      Connection.QryBusca.SQL.Clear ;
//      Connection.QryBusca.SQL.Add('Select Count(sNumeroReporte) as iReportes From reportediario Where sContrato = :Contrato and sOrden =:Orden And sNumeroOrden = :Folio And lStatus = "Pendiente" Group By sNumeroOrden') ;
//      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
//      Connection.QryBusca.Params.ParamByName('Contrato').Value    := global_Contrato_Barco;
//      Connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString ;
//      Connection.QryBusca.Params.ParamByName('Orden').Value       := tsOTs.Keyvalue;
//      Connection.QryBusca.Params.ParamByName('Folio').DataType    := ftString ;
//      Connection.QryBusca.Params.ParamByName('Folio').Value       := tsOTs.Keyvalue;
//      Connection.QryBusca.Open ;
//      iReportesSinValid := 0 ;
//      If Connection.QryBusca.RecordCount > 0 Then
//          iReportesSinValid := Connection.QryBusca.FieldValues['iReportes'] ;
//
//          Insertar1.Enabled := False ;
//          Editar1.Enabled := False ;
//          Registrar1.Enabled := True ;
//          Can1.Enabled := True ;
//          Eliminar1.Enabled := False ;
//          Refresh1.Enabled := False ;
//          Salir1.Enabled := False ;
//
//          PgDiario.ActivePageIndex := 0 ;
//          tdIdFecha.Enabled := True ;
//          tsIdTurno.ReadOnly := False ;
//          tsNumeroReporte.ReadOnly := True ;
//          tsTiempo.ReadOnly := False ;
//          tsTema.ReadOnly := False;
//          tsInicioPlatica.ReadOnly := False ;
//          tsFinalPlatica.ReadOnly := False ;
//
//          If ReporteDiario.RecordCount > 0 Then
//          Begin
//              ReporteDiario.First ;
//              tdIdFecha.Date := ReporteDiario.FieldValues['dIdFecha'] + 1
//          End
//          Else
//              tdIdFecha.Date := Date ;
//          tsHoraInicio2.Text := '00:00' ;
//          tsHoraFinal2.Text := '00:00' ;
//          tsInicioPlatica.Text := '00:00' ;
//          tsFinalPlatica.Text := '00:00' ;
//          tsTiempoEfectivo.Text := '00:00' ;
//          tsTema.Text := '';
//          tsTiempoMuerto.Text := '00:00' ;
//
//          tsTiempo.Text := 'BUENO' ;
//          tsTransporte.Text := '' ;
//          tsNumeroReporte.Text := 'Pend. Asignar' ;
//          tsIdTurno.KeyValue := global_turno ;
//          lNuevoDia := True ;
//          tdIdFecha.SetFocus ;
//          cbbFactores.ItemIndex := 0;
//
//          frmBarra1.btnAddClick(Sender);
//
//  End;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmDiarioTurno.frmBarra1btnPrinterClick(Sender: TObject);
Begin

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
//  sKeyTemp:=tsOTs.KeyValue;
//  sKeyTemp2:=tsNumeroOrden.KeyValue;
  QrOt.Refresh;
//  tsOTs.KeyValue:=sKeyTemp;


  OrdenesdeTrabajo.Active := False;
  OrdenesdeTrabajo.Open;

  If OrdenesdeTrabajo.RecordCount > 0 Then
  Begin
//      tsNumeroOrden.KeyValue := sKeyTemp2;//OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
      try
        ReporteDiario.GotoBookmark(RegPos);
      except
        ReporteDiario.FreeBookmark(RegPos);
      end;
      Grid_Reportes.SetFocus
  End
  Else
    try
//      tsNumeroOrden.SetFocus;
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
//            Connection.QryBusca.Params.ParamByName('Orden').value := tsOTs.KeyValue; //global_contrato ;
            Connection.QryBusca.Params.ParamByName('Folio').DataType := ftString ;
//            Connection.QryBusca.Params.ParamByName('Folio').value := tsNumeroOrden.Text ;
            Connection.QryBusca.Params.ParamByName('fecha').DataType := ftDate ;
//            Connection.QryBusca.Params.ParamByName('fecha').value := tdIdFecha.Date ;
            Connection.QryBusca.Params.ParamByName('Turno').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
            Connection.QryBusca.Open ;
            If Connection.QryBusca.RecordCount > 0 Then
                lNuevoDia := False
        End ;
    End ;
//    tdIdFecha.Color := global_color_salida
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
//    tdIdFecha.Color := global_color_entrada
end;

procedure TfrmDiarioTurno.tsNumeroOrdenEnter(Sender: TObject);
begin
//    tsNumeroOrden.Color := global_color_entrada ;
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
//         Connection.QryBusca.Params.ParamByName('Orden').Value    := tsOTs.KeyValue; // global_contrato ;
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
//         connection.zcommand.Params.ParamByName('Orden').value    := tsOTs.KeyValue;
         connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
         connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte + 1 ;
         connection.zCommand.ExecSQL ;

         Connection.QryBusca.Active := False ;
         Connection.QryBusca.SQL.Clear ;
         Connection.QryBusca.SQL.Add('Select sNumeroOrden, dIdFecha, sNumeroReporte From reportediario Where sContrato =:Contrato and sOrden = :Orden And sNumeroReporte = :Reporte') ;
         Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Contrato').Value := global_Contrato_Barco;
         Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
//         Connection.QryBusca.Params.ParamByName('Orden').Value := tsOTs.KeyValue;
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
//                 connection.zcommand.Params.ParamByName('Orden').value := tsOTs.KeyValue; //Global_Contrato ;
                 connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
//                 connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                 connection.zcommand.Params.ParamByName('Folio').DataType := ftString ;
//                 connection.zcommand.Params.ParamByName('Folio').value := tsOTs.KeyValue ;
                 connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Turno').value := turnos.FieldByName('sIdTurno').AsString;
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
//                 connection.zcommand.Params.ParamByName('Orden').Value := tsOTs.KeyValue; //Global_Contrato ;
                 connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
                 connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
                 connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
                 connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
//                 connection.zcommand.Params.ParamByName('Descripcion').Value := 'Creación del Reporte Diario No. ' + tsNumeroReporte.Text + ' del dia ' + DateToStr(tdIdFecha.Date) ;
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
//         connection.zcommand.Params.ParamByName('Orden').Value :=tsOTs.KeyValue;
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
//                 connection.QryBusca.Params.ParamByName('Orden').value := tsOTs.KeyValue; // Global_Contrato ;
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
//                     connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                     connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
//                     connection.zcommand.Params.ParamByName('Orden').value := tsOTs.KeyValue; //Global_Contrato ;
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
//                     connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                     connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
//                     connection.zcommand.Params.ParamByName('Orden').value := tsOTs.KeyValue; // Global_Contrato ;
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
//             connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
             connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
//             connection.zcommand.Params.ParamByName('Orden').value := tsOTs.KeyValue; //Global_Contrato ;
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
//                 connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                 connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
//                 connection.zcommand.Params.ParamByName('Orden').value :=tsOTs.KeyValue; // Global_Contrato ;
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
//                 connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                 connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
//                 connection.zcommand.Params.ParamByName('Orden').value :=tsOTs.KeyValue; // Global_Contrato ;
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
//                 connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                 connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
//                 connection.zcommand.Params.ParamByName('Orden').value := tsOTs.KeyValue; //Global_Contrato ;
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
//             connection.zcommand.Params.ParamByName('Orden').value := tsOTs.KeyValue; //Global_Contrato ;
             connection.zcommand.Params.ParamByName('OldFecha').DataType := ftDate ;
             connection.zcommand.Params.ParamByName('OldFecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
             connection.zcommand.Params.ParamByName('OldOrden').DataType := ftString ;
             connection.zcommand.Params.ParamByName('OldOrden').value := ReporteDiario.FieldValues['sNumeroOrden'] ;
             connection.zcommand.Params.ParamByName('OldTurno').DataType := ftString ;
             connection.zcommand.Params.ParamByName('OldTurno').value := ReporteDiario.FieldValues['sIdTurno'] ;
             connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
             connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
//             connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
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

//  tdIdFecha.Enabled := False ;
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

//  tdIdFecha.Enabled := False ;
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
//  ordenesdetrabajo.ParamByName('Contrato').AsString:=tsOTs.KeyValue;
  ordenesdetrabajo.ParamByName('Status').AsString:=connection.uconfiguracion.FieldValues [ 'cStatusProceso' ];
  ordenesdetrabajo.Open;

  AbrirDataset;
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

procedure TfrmDiarioTurno.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmDiarioTurno.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
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
//      tsOTs.KeyValue := Valor;
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
//          connection.zcommand.Params.ParamByName('Descripcion').Value := 'Creación del Reporte Diario No. ' + sReporte + ' del dia ' + DateToStr(tdIdFecha.Date) ;
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

   If CompareText(VarName, 'FECHA_REPORTE') = 0 then
       Value := global_fecha_barco ;
   If CompareText(VarName, 'DIAS_TRANSCURRIDOS') = 0 then
       Value := global_dias_por_transcurrir ;
   If CompareText(VarName, 'DIAS_POR_TRANSCURRIR') = 0 then
       Value := global_dias_transcurridos ;


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


  If CompareText(VarName, 'FECHA_INICIO') = 0 then
      Value := ReporteDiario.FieldValues['dIdFecha']  ;

  If CompareText(VarName, 'FECHA_FINAL') = 0 then
      Value := ReporteDiario.FieldValues['dIdFecha']  ;

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

  If CompareText(VarName, 'Oficio_Orden') = 0 then
      Value := sFolio  ;

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
   GeneraReporteDiario_PDF(FtAbordo,FtsRRecursos_detalle);
end;

procedure TfrmDiarioTurno.ReporteDiarioAfterScroll(DataSet: TDataSet);
Var
    Valido : Boolean ;
begin
    if isOpen then
    begin
        If Reportediario.RecordCount > 0 then
        Begin

            param_global_contrato := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato;
            global_fecha := ReporteDiario.FieldByName('dIdFecha').AsDateTime ;
            global_orden := ReporteDiario.FieldByName('sNumeroOrden').AsString;
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
            chkOrdenar.Checked := ReporteDiario.FieldByName('lOrdenaxHorario').AsString = 'Si';
            cbbCriterios.OnChange(Self);

            qryFoliosOrdenes.Active := False ;
            qryFoliosOrdenes.Params.ParamByName('Contrato').DataType := ftString ;
            qryFoliosOrdenes.Params.ParamByName('Contrato').Value    := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato ;
            qryFoliosOrdenes.Params.ParamByName('fecha').DataType    := ftDate ;
            qryFoliosOrdenes.Params.ParamByName('fecha').Value       := reportediario.FieldValues['dIdFecha'] ;
            qryFoliosOrdenes.Open ;
        End
        Else
        Begin

            global_orden := '' ;
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
//            Connection.QryBusca.Params.ParamByName('Orden').value := tsOTs.KeyValue; //global_contrato ;
            Connection.QryBusca.Params.ParamByName('Folio').DataType := ftString ;
//            Connection.QryBusca.Params.ParamByName('Folio').value := tsNumeroOrden.Text ;
            Connection.QryBusca.Params.ParamByName('fecha').DataType := ftDate ;
//            Connection.QryBusca.Params.ParamByName('fecha').value := tdIdFecha.Date ;
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
  ;//    global_dxBarManagerPrincipal.opPermisos.Click ;
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
         ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
         ReporteDiario.Params.ParamByName('contrato').Value    := global_Contrato_Barco;
         ReporteDiario.Params.ParamByName('orden').DataType    := ftString ;
         ReporteDiario.Params.ParamByName('orden').Value       := global_contrato;
         ReporteDiario.Open ;

         connection.uconfiguracion.refresh ;
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
//    param_global_contrato := ReporteDiario.FieldByName('sOrden').AsString;
//    If ReporteDiario.RecordCount > 0 Then
//    begin
//      if not MostrarFormChild('frmBitacoraDepartamental_2', global_dxBarManagerPrincipal ) then
//      begin
//         Application.CreateForm(TfrmBitacoraDepartamental_2,frmBitacoraDepartamental_2);
//         frmBitacoraDepartamental_2.show;
//      end;
//    end;
end;

procedure TfrmDiarioTurno.cxSalidaClick(Sender: TObject);
begin
    param_global_contrato := ReporteDiario.FieldValues['sOrden'];
    Application.CreateForm(TfrmSalidaAlmacen, frmSalidaAlmacen);
    frmSalidaAlmacen.ShowModal;
end;

procedure TfrmDiarioTurno.cxRecepcionClick(Sender: TObject);
begin
    If ReporteDiario.RecordCount > 0 Then
    begin
        param_global_contrato := reportediario.FieldValues['sOrden'];
        ;//global_dxBarManagerPrincipal.opAvisodeEmb.Click ;
    end;
end;

procedure TfrmDiarioTurno.cxEquiposClick(Sender: TObject);
begin
//   global_fecha_rd := reportediario.FieldByName('dIdFecha').AsDateTime;
//   param_global_contrato := ReporteDiario.FieldByName('sOrden').AsString;
//
//   if not MostrarFormChild('frmTripulacionConsumos', global_dxBarManagerPrincipal ) then
//   begin
//      Application.CreateForm(TfrmTripulacionConsumos, frmTripulacionConsumos);
//      frmTripulacionConsumos.Show;
//   end;
end;

procedure TfrmDiarioTurno.cxCuadreClick(Sender: TObject);
begin
//    if not MostrarFormChild('frmCuadreNormal',global_dxBarManagerPrincipal ) then
//    begin
//        Application.CreateForm( TfrmCuadreNormal, frmCuadreNormal );
//        frmCuadreNormal.ShowModal;
//    end;
end;

procedure TfrmDiarioTurno.cxImportaClick(Sender: TObject);
begin
//   if not MostrarFormChild('frmimportaexportaactiv',global_dxBarManagerPrincipal ) then
//   begin
//       Application.CreateForm(TFrmImportaExportaActiv, frmimportaexportaactiv);
//       frmimportaexportaactiv.DFecha.Date := ReporteDiario.FieldByName('didfecha').AsDateTime;
//       frmimportaexportaactiv.ShowModal;
//   end;
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
       // global_FormNoilPrincipal.opFirmas.Click
end;

procedure TfrmDiarioTurno.ReporteFotografico1Click(Sender: TObject);
begin
    GeneraReporteDiario_PDF(FtAbordo,FtsFotografico);
end;

procedure TfrmDiarioTurno.ResumendeMaterial1Click(Sender: TObject);
begin
    GeneraReporteDiario_PDF(FtAbordo,FtsRMaterial);
end;

procedure TfrmDiarioTurno.Resumenderecursos1Click(Sender: TObject);
begin

   GeneraReporteDiario_PDF(FtAbordo,FtsRRecursos);
end;

procedure TfrmDiarioTurno.btnDownClick(Sender: TObject);
begin
     OrdenarFotos('Abajo');
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

procedure TfrmDiarioTurno.btnUpClick(Sender: TObject);
begin
     OrdenarFotos('Arriba');
end;

procedure TfrmDiarioTurno.PartidasAnexoCDetalle1Click(Sender: TObject);
begin
   GeneraReporteDiario_PDF(FtAbordo,FtsRRecursos_detalleV2);
end;

procedure TfrmDiarioTurno.Paste1Click(Sender: TObject);
begin
//  UtGrid.AddRowsFromClip;
end;

procedure TfrmDiarioTurno.DiariodeCobro1Click(Sender: TObject);
begin
   GeneraReporteDiario_PDF(FtAbordo,FtsRRecursos_detalleV2);
end;

procedure TfrmDiarioTurno.SpeedItem1Click(Sender: TObject);
begin
//  param_global_contrato := ReporteDiario.FieldByName('sOrden').AsString;
//  frm_ConsumodeCombustible.FechaReporte := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
//  Application.CreateForm(TfrmConsumodeCombustible, frmConsumodeCombustible);
//  frm_ConsumodeCombustible.FechaReporte := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
//  frmConsumodeCombustible.ShowModal;
end;

procedure TfrmDiarioTurno.SpeedItem3Click(Sender: TObject);
begin
//  frm_Condicionesclima.FechaReporte := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
//  Application.CreateForm(TfrmCondicionesclima, frmCondicionesclima);
//  frm_Condicionesclima.FechaReporte := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
//  frmCondicionesclima.Show;
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
  GeneraReporteDiario_PDF(FtAbordo,FtsCEquipos);
end;

procedure TfrmDiarioTurno.ConcentradodePernoctas1Click(Sender: TObject);
begin
    GeneraReporteDiario_PDF(FtAbordo,FtsCPernoctas);
end;

procedure TfrmDiarioTurno.ConcentradodePersonal1Click(Sender: TObject);
begin
    GeneraReporteDiario_PDF(FtAbordo,FtsCPersonal);
end;

procedure TfrmDiarioTurno.ConsumosdeCombustible1Click(Sender: TObject);
begin
    GeneraReporteDiario_PDF(FtAbordo,FtsCCombustible);
end;

procedure TfrmDiarioTurno.Copy1Click(Sender: TObject);
begin
//    UtGrid.CopyRowsToClip;
end;

procedure TfrmDiarioTurno.CrearNotasdeSuspensin1Click(Sender: TObject);

begin
  if MessageDlg('¿Desea crear las notas de suspensión para todos los folios que no fueron reportados', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    CrearSuspension(ReporteDiario.FieldByName('dIdFecha').AsDateTime);
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
//        Connection.zCommand.Params.ParamByName('fecha').value       := tdIdFecha.Date;
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
//        Connection.zCommand.Params.ParamByName('fecha').value       := tdIdFecha.Date;
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
//        Connection.zCommand.Params.ParamByName('fecha').value       := tdIdFecha.Date;
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

//Procedure TfrmDiarioTurno.CargarGridFolios(Grid: TnextGrid;RecuerdaPos:Boolean);
//var RPadre:Integer;
//    OldC:TCursor;
//    Puntero,ScP,posi:Integer;
//  procedure FormatearFila(f:Integer);
//  var c:Integer;
//  ColorR:Tcolor;
//  begin
//
//    case Grid.Row[f].Level of
//      0 : ColorR := clskyblue;
//      1:
//      begin
//        Grid.Row[f].Expanded := Grid.Cells[ClsSimbolo,F] <> '+';
//        ColorR := $00FFFFDD;
//      end;
//      2: ColorR := $00E6FEFF;
//    end;
//
//    for c := 0 to Grid.Columns.Count - 1 do
//    begin
//       Grid.Cell[c,f].Color := ColorR;
//    end;
//
//  end;
//
//  function ObtenerPadre(folio,Actividad:String;UActividad:Boolean):Integer;
//  var r,Resultante:Integer;          Encontrado:Boolean;
//  begin
//    Resultante := -1;
//    encontrado := false;
//    r := 0;
//    while (r < Grid.RowCount) and (not Encontrado) do
//    begin
//      if UActividad then
//      begin
//        if (Grid.Cells[ClsNumeroOrden,r] = folio) and (Grid.Cells[ClsNumeroActividad,r] = Actividad) and (Grid.Cells[ClsIdTipoMovimiento,r] = 'E') then
//        begin
//          encontrado := True;
//          Resultante := r;
//        end
//        else
//          inc(R);
//      end
//      else
//      begin
//        if (Grid.Cells[ClsNumeroOrden,r] = folio)  and (Grid.Cells[ClsIdTipoMovimiento,r] = 'Folio:') then
//        begin
//          encontrado := True;
//          Resultante := r;
//        end
//        else
//          inc(R);
//      end;
//    end;
//    Result := Resultante;
//  end;
//
//begin
//  try
//    OldC := Screen.Cursor;
//    Screen.Cursor := crAppStart;
//    Puntero := Grid.SelectedRow;
//
//    {$REGION 'Consulta'}
//    connection.QryBusca.Active := false;
//    connection.QryBusca.SQL.Clear;
//    connection.QryBusca.sql.text := 'select ba.sContrato,ba.dIdFecha,ba.iIdDiario,ba.sNumeroOrden,ba.sSimbolo,ba.sNumeroActividad,ba.sIdTipoMovimiento,ba.sIdClasificacion, '+
//                              'ba.dAvance,ba.sWbs, ' +
//                              '(ifnull((select sum(ba2.davance) from bitacoradeactividades ba2 where ba2.didfecha < ba.didfecha and ba2.sNumeroActividad = ba.snumeroactividad '+
//                              ' and ba2.sContrato = ba.sContrato and ba2.sIdTipoMovimiento <> "E" and ba2.sIdTurno =ba.sIdTurno and ba2.sIdTipoMovimiento <> "NG" '+
//                              'and ba2.sidclasificacion in ("TE","NP","FC") and ba2.sNumeroOrden = ba.sNumeroOrden ),0))*100 as Anterior  '+
//                              ',(  '+
//                              'ifnull((select sum(ba2.davance) from bitacoradeactividades ba2 where ba2.didfecha < ba.didfecha and ba2.sIdTipoMovimiento <> "E" and '+
//                              'ba2.sNumeroActividad = ba.snumeroactividad and ba2.sContrato = ba.sContrato and ba2.sIdTurno =ba.sIdTurno and ba2.sIdTipoMovimiento <> "NG" '+
//                              ' and ba2.sidclasificacion in ("TE","NP","FC") and ba2.sNumeroOrden = ba.sNumeroOrden),0)   '+
//                              '+ifnull((select sum(ba2.davance) from bitacoradeactividades ba2 where ba2.didfecha = ba.didfecha and ba2.sIdTipoMovimiento <> "E" and '+
//                              'ba2.sNumeroActividad = ba.snumeroactividad and ba2.sContrato = ba.sContrato and ba2.sIdTurno = ba.sIdTurno and ba2.sIdTipoMovimiento <> "NG" '+
//                              ' and ba2.sidclasificacion in ("TE","NP","FC") and ba2.sNumeroOrden = ba.sNumeroOrden),0)  '+
//                              ')*100 as acumulado '+
//                              ' from bitacoradeactividades ba '+
//                              'where ba.sContrato =:Contrato and ba.dIdFecha =:fecha and ba.sIdTurno =:Turno and ba.sIdTipoMovimiento <> "NG" '+
//                              'order by ba.sNumeroOrden, ba.sWbs, ba.sIdTipoMovimiento ';
//    connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
//    connection.QryBusca.Params.ParamByName('Contrato').Value    := ReporteDiario.FieldByName('sOrden').AsString; //global_contrato ;
//    connection.QryBusca.Params.ParamByName('fecha').DataType    := ftDate ;
//    connection.QryBusca.Params.ParamByName('fecha').Value       := reportediario.FieldValues['dIdFecha'] ;
//    connection.QryBusca.Params.ParamByName('turno').DataType    := ftString ;
//    connection.QryBusca.Params.ParamByName('turno').Value       := reportediario.FieldValues['sIdTurno'] ;
//    connection.QryBusca.Open;
//    {$ENDREGION}
//
//    Grid.ClearRows;
//    connection.qrybusca.First;
//
//    {$REGION 'Presentacion de datos'}
//    //Primeramente llenamos los folios Nivel 0 del grid
//    try
//      connection.QryBusca.Filtered := False;
//      connection.QryBusca.filter := ' sidtipomovimiento = '+quotedstr('E');
//      connection.QryBusca.Filtered := True;
//      while not connection.qrybusca.eof do
//      begin
//        if not Grid.SearchNext(ClsNumeroOrden,trim(connection.QryBusca.FieldByName('sNumeroOrden').AsString),true) then
//        begin
//          RPadre := Grid.AddRow(1);
//          Grid.Cells[clsSimbolo,Grid.RowCount-1] := '+';
//          Grid.Cells[CliIdDiario,Grid.RowCount-1] :='';
//          Grid.Cells[ClsNumeroOrden,Grid.RowCount-1] := Trim(connection.QryBusca.FieldByName('sNumeroOrden').AsString);
//          Grid.Cells[ClsNumeroActividad,Grid.RowCount-1] := '';
//          Grid.Cells[ClsIdClasificacion,Grid.RowCount-1] := '';
//          Grid.Cells[CldAvance,Grid.RowCount-1] := '';
//          Grid.Cells[ClsIdTipoMovimiento,Grid.RowCount-1] := 'Folio:';
//          Grid.Cells[ClsContrato,Grid.RowCount-1] := '';
//          Grid.Cells[CldIdFecha,Grid.RowCount-1] := '';
//          Grid.Cells[ClsWbs,Grid.RowCount-1] := '';
//          FormatearFila(RPadre);
//        end;
//        connection.qrybusca.Next;
//      end;
//
//
//      connection.qrybusca.First;
//      //Luego llenamos los movimientos del tipo volumen de obra Nivel 1
//      while not connection.qrybusca.eof do
//      begin
//        RPadre := ObtenerPadre(Trim(connection.QryBusca.FieldByName('sNumeroOrden').AsString),'',False);
//        if  RPadre <> -1then
//        begin
//          Grid.AddChildRow(RPadre);
//          RPadre := Rpadre+ Grid.Row[rpadre].ChildCount;
//          Grid.Cells[clsSimbolo,RPadre] := connection.QryBusca.FieldByName('sSimbolo').AsString;
//          Grid.Cells[CliIdDiario,RPadre] := connection.QryBusca.FieldByName('iIddiario').AsString;
//          Grid.Cells[ClsNumeroOrden,RPadre] := Trim(connection.QryBusca.FieldByName('sNumeroOrden').AsString);
//          Grid.Cells[ClsNumeroActividad,RPadre] := connection.QryBusca.FieldByName('sNumeroActividad').AsString;
//          Grid.Cells[ClsIdClasificacion,RPadre] := connection.QryBusca.FieldByName('sIdClasificacion').AsString;
//          Grid.Cells[CldAvance,RPadre] := FloatToStr((connection.QryBusca.FieldByName('davance').AsFloat*100)/1);
//          Grid.Cells[ClsIdTipoMovimiento,RPadre] := connection.QryBusca.FieldByName('sidtipomovimiento').AsString;
//          Grid.Cells[ClsContrato,RPadre] := connection.QryBusca.FieldByName('sContrato').AsString;
//          Grid.Cells[CldIdFecha,RPadre] := connection.QryBusca.FieldByName('dIdFecha').AsString;
//          Grid.Cells[ClsWbs,RPadre] := connection.QryBusca.FieldByName('swbs').AsString;
//          Grid.Cells[ClAnterior,RPadre] := connection.QryBusca.FieldByName('anterior').AsString;
//          Grid.Cells[ClAcumulado,RPadre] := connection.QryBusca.FieldByName('acumulado').AsString;
//          FormatearFila(RPadre);
//        end;
//        connection.qrybusca.Next;
//      end;
//    finally
//      connection.qrybusca.Filtered := False;
//    end;
//
//    //Posteriormente se añaden los volumenes de obra detalle nivel 2
//    try
//      connection.qrybusca.First;
//      while not connection.qrybusca.eof do
//      begin
//        RPadre := ObtenerPadre(Trim(connection.QryBusca.FieldByName('sNumeroOrden').AsString),connection.QryBusca.FieldByName('sNumeroActividad').AsString,True);
//        if  RPadre <> -1then
//        begin
//          if ((connection.QryBusca.FieldByName('sidclasificacion').AsString = 'TE') or
//             (connection.QryBusca.FieldByName('sidclasificacion').AsString = 'AC') or
//             (connection.QryBusca.FieldByName('sidclasificacion').AsString = 'FP'))then
//          begin
//            Grid.AddChildRow(RPadre);
//            RPadre := Rpadre+ Grid.Row[RPadre].ChildCount;
//            Grid.Cells[clsSimbolo,RPadre] := connection.QryBusca.FieldByName('sSimbolo').AsString;
//            Grid.Cells[CliIdDiario,RPadre] := connection.QryBusca.FieldByName('iIddiario').AsString;
//            Grid.Cells[ClsNumeroOrden,RPadre] := trim(connection.QryBusca.FieldByName('sNumeroOrden').AsString);
//            Grid.Cells[ClsNumeroActividad,RPadre] := connection.QryBusca.FieldByName('sNumeroActividad').AsString;
//            Grid.Cells[ClsIdClasificacion,RPadre] := connection.QryBusca.FieldByName('sIdClasificacion').AsString;
//            Grid.Cells[CldAvance,RPadre] := FloatToStr((connection.QryBusca.FieldByName('davance').AsFloat*100)/1);
//            Grid.Cells[ClsIdTipoMovimiento,RPadre] := connection.QryBusca.FieldByName('sidtipomovimiento').AsString;
//            Grid.Cells[ClsContrato,RPadre] := connection.QryBusca.FieldByName('sContrato').AsString;
//            Grid.Cells[CldIdFecha,RPadre] := connection.QryBusca.FieldByName('dIdFecha').AsString;
//            Grid.Cells[ClsWbs,RPadre] := connection.QryBusca.FieldByName('swbs').AsString;
//            FormatearFila(RPadre);
//          end;
//        end;
//        connection.qrybusca.Next;
//      end;
//    finally
//
//    end;
//
//    {$ENDREGION}
//
//  finally
//    Screen.Cursor := OldC;
//    connection.QryBusca.Active := False;
//    if RecuerdaPos then
//    begin
//      Grid.ClearSelection;
//      Grid.SelectCell(0,puntero, [],true);
//      Grid.ScrollToRow(puntero);
//    end;
//  end;
//
//end;

//Procedure TfrmDiarioTurno.GuardarCambios(Grid:TnextGrid);
//begin
//  //si se altera la columna de valores se debe calcular la dispersion de datods
//
//end;
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

end.
