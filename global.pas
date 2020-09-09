unit global;
interface

uses windows, SysUtils, controls, classes, Graphics, dxRibbonForm, Forms, Uni, dxBar;

const

  NoilPass = '';
  IntelUser = '';
  Global_TamOrden = 10;
  Global_SepOrden = '.';
  EsBkColor: array[1..6] of tColor = ($00FEC6BA, $00FEE7BA, $00D7FDBB, $00BAFEC9, $00BBFDF4, $00BAE1FE);
  LongNivel = 10;
  Fondo = '$00CAD5EC';
  EleCondicionTexto = 3;
  EleCondicionNumero = 6;
  EleCondicionFecha = 6;
  OptCondicionTexto: array[1..3] of string = ('IGUAL', 'DIFERENTE DE', 'CONTIENE');
  AccCondicionTexto: array[1..3] of string = (' = ', ' <> ', ' LIKE');
  OptCondicionNumero: array[1..6] of string = ('IGUAL', 'MAYOR', 'MAYOR QUE', 'MENOR', 'MENOR QUE', 'DIFERENTE');
  AccCondicionNumero: array[1..6] of string = (' = ', ' > ', ' >= ', ' < ', ' <= ', ' <> ');
  OptCondicionFecha: array[1..6] of string = ('IGUAL', 'MAYOR', 'MAYOR QUE', 'MENOR', 'MENOR QUE', 'DIFERENTE');
  AccCondicionFecha: array[1..6] of string = (' = ', ' > ', ' >= ', ' < ', ' <= ', ' <> ');
  //ANALISIS DE PRECIOS...     iv@n...
  folio: array[1..5] of string = ('sIdPersonal', 'sIdEquipo', 'sIdHerramientas', 'IdInsumo', 'sIdBasico');
  tipo: array[1..5] of string = ('PERSONAL', 'EQUIPO', 'HERRAMIENTAS', 'MATERIAL', 'BASICOS');
  tablas: array[1..5] of string = ('recursospersonal', 'recursosequipo', 'recursosherramientas', 'recursosanexo', 'recursosbasicos');
  tablas_2: array[1..5] of string = ('recursospersonalnuevos', 'recursosequiposnuevos', 'recursosherramientasnuevos', 'recursosanexosnuevos', 'recursosbasicosnuevos');
  catalogo: array[1..5] of string = ('personal', 'equipos', 'herramientas', 'alm_insumos', 'basicos');
var
  global_btnPermisos:String;

  AccionVisor :string;
  global_barco,
    global_ipServer,
    global_ruta,
    global_archivoini,
    global_usuario, global_password, global_notificaoc,global_notificaocMail,
    global_nombre,
    global_activo,
    global_ip, global_contrato,
    global_Contrato_Barco,
    param_global_contrato,
    global_Pernocta,     //**
    global_turno : string;

  global_convenio: string;
  global_inicio : Integer;
  global_AplicaMto : String;
  global_grupo: string;
  OpcButton: string;
  global_dias: Integer;
  global_db,
  global_menu : string;

  global_orden: string;
  global_fecha: tDate;

  global_turno_reporte: string; //**

  global_Puerto: Integer;

  licencia: string;
  sTipoOrden: string;


  global_server: string;
  global_files: string;

  sFolio: string;

  stMenu: string;


  global_cambioletrero : Byte ;   //**

  global_fecha_barco: tDate;
  global_dias_por_transcurrir: Integer;
  global_dias_transcurridos: Integer;


   sCapitan,
  sSuperIntendente,
    sSuperIntendentePatio,
    sSupervisor,
    sSupervisorPatio,
    sSupervisorGenerador,
    sSupervisorEstimacion,
    sSupervisorTierra,
    sResidente,
    sPuestoSuperintendente,
    sPuestoSuperintendentePatio,
    sPuestoSupervisor,
    sPuestoSupervisorPatio,
    sPuestoSupervisorGenerador,
    sPuestoSupervisorEstimacion,
    sPuestoSupervisorTierra,
    sPuestoResidente,
    sRepresentanteTecnico,
    sPuestoRepresentanteTecnico: string;
  sSupervisorSubContratista,
    sPuestoSupervisorSubContratista: string;

    sDiarioComentario,
    sDiarioPeriodo,
    sDiarioTitulo : string;

  dProgramadoGlobalAnterior,
    dProgramadoGlobalActual,
    dProgramadoGlobalAcumulado: Currency;
  dRealGlobalAnterior,
    dRealGlobalActual,
    dRealGlobalAcumulado: Currency;

  dProgramadoOrdenAnterior,
    dProgramadoOrdenActual,
    dProgramadoOrdenAcumulado: Currency;
  dRealOrdenAnterior,
    dRealOrdenActual,
    dRealOrdenAcumulado: Currency;

  sPoliza, sFianza: string;
  dMontoModificado: Currency;
  dMontoContrato: Currency;

  sFechaReporte, sConvenioInicio, sConvenioFinal, sActa, sNuevoInicio, sNuevoFinal: string;
  StringPuesto: TStrings;
  StringNombre: TStrings;

  global_opcion_window: string;
  Global_fsr: string;

  global_sOrigen_reporte: string;
  global_iIdDiario: Integer;
  global_PendientesOculto: Boolean;

  {ivan}
  global_FrenteTrabajo,
  global_miFecha,
  global_OptGrafica,
  global_miReporte,
  global_editor, global_Temp: string;
  global_RefrescaPU: boolean;
  global_ErrorItem: boolean;
  global_EnviaMail: string;
  mUserMail: array[1..5] of string;
  global_TempPath,
  global_EditorNew: array[0..MAX_PATH - 1] of Char;
  global_RepDirC17: string;
  global_frmActivo: string;

  global_indexactivo : integer;



   {Cambio de Password...}
  global_bdpass, global_bduser, Global_ServAcceso: string;
  Global_PortAcceso: Integer;

  global_idioma     : String;
  global_idiomaDesc : string ;

   sParamTipo : string;

   dParamFecha, dParamFechaI,
   dParamFechaF          : tDate ;

   iParamFolio     : Integer ;
   dParamMonto     : Currency ;
   sTitleFecha           : String ;


   sModulo               : String ;
   guardiasn: Integer;   //Para definir las guardias
   bandera, bandera_formulario:string;
   ProcesarContrato: Boolean;
   Global_Factura : string;

   isOpen : boolean;

   {subsea}
   global_fecha_rd  :tdate;
   global_fecha_act :tdate;
   global_activa_close : boolean;

   {ERP GENERAL NOIL}
   global_lock_filter : string;

   global_RobbonNoilPrincial: TdxRibbonForm;
   global_FormNoilPrincipal : TForm;
   global_dxBarManagerPrincipal : TdxBarManager;
   global_zScanner: TUniQuery;
   global_resultModal : boolean;
   global_frmEntradas : TForm;
   lErrorIniciar : boolean;

   {Precio Unitario}
   global_Caratula : string;

const
  global_color_entrada = $0001E1E7;
  global_color_salida = $00E6FEFF;
  global_color_entradaPU = clGradientActiveCaption;
  global_color_salidaPU = $00FFFFFF;


  global_color_pantalla = $00DEB78F;
  global_color_text = $00E6FEFF;
  global_color_entradaERP = clGradientActiveCaption;
  global_color_salidaERP  = clWhite;
  //global_color_salidaPU = $00FFFFFF;

implementation

end.

