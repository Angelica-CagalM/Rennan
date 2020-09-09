unit UnitGenerales;

interface
 uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin, Math, masUtilerias,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls, cxProgressBar,
  Buttons, frxClass, frxDBSet,  RXDBCtrl, RxMemDS, utilerias, RXCtrls,
  RXSpin, DateUtils, ZAbstractRODataset, ZDataset, ZAbstractDataset,
  rxCurrEdit, rxToolEdit, UnitExcepciones, cxGridDBTableView,
  CustomizeDlg, unittbotonespermisos, UnitValidaTexto, UnitExcel, ComObj, ZConnection,
  UnitTablasImpactadas, unitactivapop, UFunctionsGHH,strutils, cxLabel,
  DBAccess, Uni,CRAccess, UniDacVcl,MemData, cxGrid, CxGridExportLink, ShellApi,
  cxButtons, Xml.xmldom, Xml.XMLDoc,XMLIntf,cxPC,idSmtp, IdMessage, IdAttachmentFile,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,  IdAttachment,
  IdSSLOpenSSLHeaders, ShlObj;


  type
   TStringArray = array of string;

    TVarGlobal = Class
      sNombre: String;
      sTipo: String;
    Private
      vValor: Variant;
    Public
  End;
  eWarning = class(Exception);
  eException = class(Exception);

  TUDMConection = class(TDataModule)
//   zConsultasSQL: TUniQuery;
//   zValidacion: TZQuery;
//   zTablasImportables: TUniQuery;
//   zFolios: TUniQuery;

   public
    Function setSQL(var Dataset: TUniQuery; QueryName: String; Option: string; AutoApply: Boolean = True; auditar: Boolean = True): Boolean;overload;
    Function setSQL(var Dataset: TUniQuery; QueryName: String; Option: string; Codificacion: String): Boolean;Overload;
    function setParams(var Dataset: TUniQuery; params: string; Values: array of Variant): Boolean;Overload;
    function ReloadQuerys: Boolean;
    procedure gBeforePost(gDataset: TDataSet);
    procedure gBeforeDelete(gDataset: TDataset);
    procedure gAfterDelete(gDataset: TDataset);
    procedure gAfterPost(gDataset: TDataset);
    procedure gBeforeOpen(gDataset: TDataset);
    procedure gBeforeRefresh(gDataset: TDataSet);
    procedure zBeforeOpen(gDataset: TDataset);
    procedure zBeforeRefresh(gDataset: TDataSet);
    procedure reconectarConn;

    function reconecZeos(var Query: TZQuery; sql: String):Boolean;Overload;
    Procedure zReconnect;
    procedure conBdConnectionLost(Sender: TObject; Component: TComponent;
      ConnLostCause: TConnLostCause; var RetryMode: TRetryMode);

   end;

  {busqueda de maximo id ->}      function Noil_maximoId(sParamContrato, sParamTabla, sParamCampo :string) : Integer;
  {Eliminar o actualizar }
  {Contrato, Folio, Wbs o act ->} procedure BuscaElimina_datos(iCaso :integer; sParamTabla, sLlevaEmpresa, sLlevaFolio, sLlevaWbs, sLLevaConvenio, sParamEmpresa, sParamFolio, sParamWbs, sParamConv, sParamNuevaEmpresa, sParamNuevoFolio, sParamNuevaWbs, sParamNuevoConv : string; accion :string; lMensaje :boolean;BarraProgreso :TcxProgressBar);
  function BuscaAntesEliminar_datos(iCaso:integer; sParamTabla, sLlevaEmpresa, sLlevaFolio, sLlevaWbs, sLLevaAct, sParamEmpresa, sParamFolio, sParamWbs, sParamAct, sMensaje : string; lMensaje :boolean; BarraProgreso :TcxProgressBar) : boolean;
  function ValidaExiste(sParamContrato, sParamTabla, sParamCampo, sParamValor, sMsgCampo :string) : Boolean;

  procedure ActualizaDatos_una_tabla_maestra(sParamTabla, sLlave, sCampo1, sCampo2, sCampo3, sValorLlave, sValorNuevoCampo1, sValorNuevoCampo2, sValorNuevoCampo3 : string; accion :string; lMensaje :boolean);

  Procedure procCargaDatosValidaAutoriza(sParamContrato, sParamTabla, sTipo :string; iStateIndex :integer; tOrigen: TComponent; zqDatosParam :tUniquery );
 // Procedure procValidaDatosValidaAutoriza(sParamContrato, sParamTabla, sTipo :string; iParamFolio :integer; tOrigen: TComponent );
 // Procedure procAutorizaDatosValidaAutoriza(sParamContrato, sParamTabla, sTipo :string; iParamFolio :integer; tOrigen: TComponent );
  Procedure procValidaDatosValidaAutoriza(sParamContrato, sParamTabla, sTipo :string; iStateIndex :integer;  iParamFolio :integer; sParamFolio : String; tOrigen: TComponent );
  Procedure procAutorizaDatosValidaAutoriza(sParamContrato, sParamTabla, sTipo :string; iStateIndex :integer; iParamFolio :integer; sParamFolio : String; tOrigen: TComponent );

  function encriptar(aStr: String; aKey: Integer): String;
  function desencriptar(aStr: String; aKey: Integer): String;
  function Obtener_almacen(sParamAlmacen, sParamPrincipal : string): string;
  function EsDuplicateKey(sParamMensaje: string): integer;

  function ObtenerConsecutivoDepto(sParamModulo, sParamCadenaDepto : string; iParamConsecutivoDepto : integer ):string;
  function ObtenerFiltro(sParamPrefijo : string): string;
  procedure EliminarArchivo(sDirArchivo:String);
  procedure kardex_almacen(sParamMensaje: string; sOrigen: string);
  procedure BarraProgresoAvance(Barra : TcxProgressBar; dParamMin, dParamMax, dParamAvance :Extended);
  procedure BarraMostrar(lVisible :boolean; Barra : TcxProgressBar; lEtiqueta : TcxLabel );
  procedure EncriptaFichero(Ori, Dest: string; Clave:integer; EliminaOri:Boolean=False);
  function GetPCName: string;
  function DirDesktop: string;
  Function GetMACAdress: String;
  //funciones y procesimientos 2018
  procedure ExportarToExcel(grid: TcxGrid);
  function fechaSQL(Fecha: TDate): string;
  function fechaTimeSQL(Fecha: TDateTime): string;
  //funcion para guardar o leer estado de grid  0 : lee   1 : Guarda
  procedure guardar_leer_grid(cxGridView :TcxGridDBTableView;form:TForm;op:Integer);

  Function autoFolio(var gDataset: TUniquery; sTabla :string;IdEmpresa:Integer=0;IdEmbarcacion:Integer=0;IdDepartamento:Integer=0): String;
  Function autoFolioCod(var gDataset: TUniquery; sTabla :string;IdEmpresa:Integer=0;IdEmbarcacion:Integer=0;IdDepartamento:Integer=0): String;
  Function autoFolioAviso(var gDataset: TUniquery; sTabla :string;IdEmpresa:Integer=0;IdEmbarcacion:Integer=0;IdDepartamento:Integer=0;Tipo:Integer=0): String;
  Function GeneraPeriodoDocto(dParamFecha:tDate;iParamDocumento:integer):tDate;
  function MsgEliminarMYSQL(msg: String):String;
  function RecargarConsultasSQL: Boolean;
  procedure creaNotyfi(IdMensaje:Integer;Tabla:String;Campo:String;Folio:String;Tipo:String;Estatus:String;Fecha:TDateTime; LimiteDias:Integer);
  function cad_bool(cad:String):Boolean;
  procedure PermisosBotones(Form:TForm; Programa:String);
  Function LetraMontos(sParamCodigo, sParamNombreCheque:string; dParamMonto : double): string;
  function LetrasNumeros(Valor: Real; Prefijo: String; Sufijo: String; NumDec: Integer): String;
  function TraerTotalXML(ArchivoXLM:String;XML:TXMLDocument):Double;
  function TraerUUID_XML(ArchivoXLM:String;XML:TXMLDocument):String;
  function TraerRFC_XML(ArchivoXLM:String;XML:TXMLDocument):String;
  function TraerRS(ArchivoXLM:String;XML:TXMLDocument):String;
  Function EnviarMensaje(sUsuario, sClave, sServidor, sAdjunto, sAsunto, sDestino, sMensaje: String; iPort:Integer; aplicaTLS:String): String;
  Function fReemplazaFiltroSQL(sParamSQL : WideString ; sParamFiltro, sParamVar1, sParamVar2, sParamVar3, sParamVar4, sParamVar5, sParamVar6 :string):WideString;


  {$REGION 'Procedimientos Control de obra}
  procedure CargarProgramadeTrabajo(sParamContrato, sParamFolio, sParamConvenio, sParamTipo, sParamWbsAnt, sParamWbs,
                                  sParamWbsContrato, sParamActividad, sParamItem, sParamDescripcion :string;
                                  dParamFInicio, dParamFFinal : tDate; sParamMedida : string;
                                  dParamVentaMN, dParamVentaDLL, dParamCantidad, dParamPonderado : double;
                                  iParamNivel :integer; sParamTipoA, sParamAnexo, sParamActAnt : string );

  procedure CreaPlazo(sParamContrato, sParamConvenio, sParamFolio: String; dParamFInicio, dParamFFinal :tDate);
  procedure Ponderar(sParamTabla, sParamConvenio, sParamFolioProg: string; BarraProgreso : TcxProgressBar);
  procedure DistribuyeActividades(sParamContrato, sParamFolio, sParamPlazo : string; BarraProgreso : TcxProgressBar );
  procedure DistribuyePrograma(sParamContrato, sParamFolio, sParamPlazo : string; BarraProgreso : TcxProgressBar );
  function AvanceFolio(sParamContrato, sParamFolio, sParamPlazo :string; dParamFecha :tDate) : double;
  procedure ActualizaTablaAvancesFolio(sParamContrato, sParamFolio, sParamPlazo, sParamTurno :string; dParamFecha :tDate; dParamAvance : double);
  Procedure procValidaDatosValidaAutoriza_CO(sParamContrato, sParamConvenio, sParamFolio, sParamTurno : string; dParamFecha :tDate;  sParamTabla, sTipo :string; tOrigen: TComponent );
  Procedure procAutorizaDatosValidaAutoriza_CO(sParamContrato,sParamConvenio, sParamFolio, sParamTurno: string; dParamFecha :tDate; sParamTabla, sTipo :string; tOrigen: TComponent );
  procedure GraficaFisicoProgFinanciero(sParamRango, sParamContrato, sParamConvenio, sParamFolio: string; gParamProgramado, gParamFisico, gParamFinanciero, gParamContrato :tRxMemoryData; BarraProgreso : TcxProgressBar );
  procedure CopiarProgramaAnterior(sParamContrato, sParamConvenio, sParamFolio : string; dParmFecha :tDate; BarraProgreso :TcxProgressBar);
  function ChecarProgPonderado(sParamContrato, sParamConvenio, sParamFolio : string) : double;
  procedure DesplazaPartidasFechas(sParamcontrato, sParamConvenio, sParamFolio : string; dParamFechaI, dParamFechaF : tDate; iParamDias : double; sParamStatus, sParamTipoR : string; BarraProgreso :TcxProgressBar );
  procedure EliminarProgramaSinReportadas(sParamContrato, sParamConvenio, sParamFolio : string);
  procedure ActualizaFechasPaquetes(sParamContrato, sParamConvenio, sParamFolio, sParamTabla, sQlCadena, sQlCantidad : string; iParamPorcentaje : double; BarraProgreso :TcxProgressBar);
  procedure ActualizaPlazoFolioPrograma(sParamContrato, sParamConvenio, sParamFolio : string);
  procedure HomologarWbsPartidas(sParamContrato, sParamConvenio, sParamFolio : string; BarraProgreso :TcxProgressBar);
  procedure OrdenamientosPartidaIJAD(sParamContrato, sParamConvenio, sParamFolio, sParamWbsAnterior, sParamActividad, sParamWbs : string; iParamNivel : integer; BarraProgreso :TcxProgressBar; iParamAvance :integer);

  //Renta Diaria
  function  CrearPaqueteAnexo(sParamContrato, sParamConvenio, sParamOrden, sParamAnexo, sParamAnexoEtiqueta :string) :string;
  function  CrearPaqueteFolio(sParamContrato, sParamConvenio, sParamOrden, sParamAnexo, sParamAnexoEtiqueta, sParamDescripcion :string) :string;

  procedure UpdateMateriales(sParamAnexo, sParamMaterial, sParamDescripcion, sParamOldAnexo, sParamOldMaterial :string; iParamMedida : integer);
  function  DeleteMateriales(sParamAnexo, sParamMaterial :string) : boolean;

  function  ExisteRegistroBD(sParamTabla, sParamContrato, sParamConvenio, sParamFolio, sParamWbs, sParamActividad, sParamDescripcion, sParamOldActividad :string) : boolean;
  procedure UpadateActividades(sParamTabla, sParamContrato, sParamConvenio, sParamFolio, sParamWbs, sParamActividad, sParamItem, sParamDescripcion, sParamOldWbs, sParamPlataforma, sParamPernocta :string; dParamFechaI, dParamFechaF :tDate; iParamIdConsulta : integer);
  function  ReportoActividad(sParamTabla, sParamContrato, sParamConvenio, sParamFolio, sParamWbs, sParamActividad, sParamItem, sParamDescripcion, sParamOldWbs :string) : boolean;

  procedure InsertaPersonalOficio(sParamContrato, sParamFolio :string; dParamFecha :tDate; iParamGerencial: integer; zParamOficio :tzQuery);

  {$ENDREGION}

  Function ObtenerTipoCambio(sParamMoneda :string; dParamFecha :tDate): double;
  Function ObtenerFirmaFicha(sParamTipo :string; dParamFecha :tDate): TStringArray;

  var
  UDMConection: TUDMConection;
  //varGlobal: TGlobales;
   temE, uVerAutorizdas :TUniQuery;
  type
  TStatusWindowHandle = type HWND;
  const
  pReadOnly: string = 'READONLY';
  pUpdate: string = 'UPDATE';
  pMensajeError: String = 'Ha ocurrido un error, informe a su administrador de sistema de lo siguiente: ';
  pErrorConsulta: string = 'No se ha encontrado la consulta SQL en la base de datos ';
  pErrorFiltrar: string = 'Error al filtrar en la consulta SQL usando lo siguientes parametros';
  pANSI: String = 'ANSI';
  function AsignarSQL(var Dataset: TUniQuery; QueryName: String; Option: string; AutoApply: Boolean = True): Boolean;Overload;
  function FiltrarDataset(var Dataset: TUniQuery; params: string; Values: array of Variant): Boolean;
  function MsgError (mensaje, titulo : String) : boolean;
  function Zreconectar(var Query: TZQuery; sql: String):Boolean;Overload;

  function CreateStatusWindow(const Text: string): TStatusWindowHandle;
  procedure RemoveStatusWindow(StatusWindow: TStatusWindowHandle);


  {Crea Filtro de Campo de datos filtrados} function CreaFiltroCampo(sParamCampoFiltro, sParamFiltroConsulta :string; zParamUQuery :tUniQuery) :string;
implementation

uses NB30;

function CreateStatusWindow(const Text: string): TStatusWindowHandle;
var
  FormWidth,
  FormHeight: integer;
begin
  FormWidth := 400;
  FormHeight := 164;
//  result := CreateWindow ('msctls_progress32',
//                            '',
//                            WS_CHILD or WS_VISIBLE,
//                            0,
//                            10,
//                            350,
//                            20,
//                            Application.MainForm.Handle, // HWND de una ventana primaria
//                            0,
//                            hInstance,
//                            nil
//                            );
  result := CreateWindow('STATIC',
                         PChar(Text),
                         WS_OVERLAPPED or WS_POPUPWINDOW or WS_THICKFRAME or SS_CENTER or SS_CENTERIMAGE,
                         (Screen.Width - FormWidth) div 2,
                         (Screen.Height - FormHeight) div 2,
                         FormWidth,
                         FormHeight,
                         Application.MainForm.Handle,
                         0,
                         HInstance,
                         nil);
  ShowWindow(result, SW_SHOWNORMAL);
  UpdateWindow(result);
end;

procedure RemoveStatusWindow(StatusWindow: TStatusWindowHandle);
begin
  DestroyWindow(StatusWindow);
end;

procedure ExportarToExcel(grid: TcxGrid);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
  dlgSave : TSaveDialog;
begin
  dlgSave := TSaveDialog.Create(nil);
  dlgSave.FileName := '';
  if dlgSave.Execute then
  begin
    rutaArchivo := dlgSave.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, grid);
    dlgSave.Destroy;
    if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

function fechaSQL(Fecha: TDate): string;
begin
  Result := IntToStr(YearOf(Fecha)) + '-' + IntToStr(MonthOf(Fecha)) + '-' + IntToStr(DayOf(Fecha));
end;

function fechaTimeSQL(Fecha: TDateTime): string;
var
  wAnyo, wMes, wDia: Word;
  wHora, wMinutos, wSegundos, wMilisegundos: Word;
begin
  DecodeDateTime( Fecha, wAnyo, wMes, wDia, wHora, wMinutos, wSegundos,wMilisegundos );
  Result := IntToStr(YearOf(Fecha)) + '-' + IntToStr(MonthOf(Fecha)) + '-' + IntToStr(DayOf(Fecha))+' '+IntToStr( wHora )+':'+IntToStr( wMinutos ) +':'+IntToStr( wSegundos );
end;

function GetMACAdress: string;
var
  NCB: PNCB;
  Adapter: PAdapterStatus;
  URetCode: PChar;
  RetCode: ansichar;
  I: integer;
  Lenum: PlanaEnum;
  _SystemID: string;
  TMPSTR: string;
begin
  Result    := '';
  _SystemID := '';
  Getmem(NCB, SizeOf(TNCB));
  Fillchar(NCB^, SizeOf(TNCB), 0);
  Getmem(Lenum, SizeOf(TLanaEnum));
  Fillchar(Lenum^, SizeOf(TLanaEnum), 0);
  Getmem(Adapter, SizeOf(TAdapterStatus));
  Fillchar(Adapter^, SizeOf(TAdapterStatus), 0);
  Lenum.Length    := chr(0);
  NCB.ncb_command := chr(NCBENUM);
  NCB.ncb_buffer  := Pointer(Lenum);
  NCB.ncb_length  := SizeOf(Lenum);
  RetCode         := Netbios(NCB);
  i := 0;
  repeat
    Fillchar(NCB^, SizeOf(TNCB), 0);
    Ncb.ncb_command  := chr(NCBRESET);
    Ncb.ncb_lana_num := lenum.lana[i];
   RetCode          := Netbios(Ncb);
    Fillchar(NCB^, SizeOf(TNCB), 0);
    Ncb.ncb_command  := chr(NCBASTAT);
    Ncb.ncb_lana_num := lenum.lana[i];
    // Must be 16
    Ncb.ncb_callname := '*               ';
    Ncb.ncb_buffer := Pointer(Adapter);
    Ncb.ncb_length := SizeOf(TAdapterStatus);
    RetCode        := Netbios(Ncb);
    //---- calc _systemId from mac-address[2-5] XOR mac-address[1]...
    if (RetCode = chr(0)) or (RetCode = chr(6)) then
    begin
      _SystemId := IntToHex(Ord(Adapter.adapter_address[0]), 2) + '-' +
        IntToHex(Ord(Adapter.adapter_address[1]), 2) + '-' +
        IntToHex(Ord(Adapter.adapter_address[2]), 2) + '-' +
        IntToHex(Ord(Adapter.adapter_address[3]), 2) + '-' +
        IntToHex(Ord(Adapter.adapter_address[4]), 2) + '-' +
        IntToHex(Ord(Adapter.adapter_address[5]), 2);
    end;
    Inc(i);
  until (I >= Ord(Lenum.Length)) or (_SystemID <> '00-00-00-00-00-00');
  FreeMem(NCB);
  FreeMem(Adapter);
  FreeMem(Lenum);
  GetMacAdress := _SystemID;
end;

function GetPCName: string;
var
  Buffer: array[0..MAX_COMPUTERNAME_LENGTH] of Char;
  Size: Cardinal;
begin
  FillChar(Buffer,Sizeof(Buffer),0);
  Size:= Sizeof(Buffer);
  if GetComputerName(Buffer,Size) then
    Result:= String(PChar(@Buffer))
  else
    Result:= '';
end;

function DirDesktop: string;
var
  FilePath: array [0..MAX_PATH] of char;
begin
  SHGetFolderPath(0, CSIDL_DESKTOP, 0, 0, FilePath);
  Result := FilePath;
end;

procedure EncriptaFichero(Ori, Dest: string; Clave:integer; EliminaOri:Boolean=False);
{
    Encripta el ficehro 'Ori', depositandolo en el fichero 'Dest'
    usando como clave 'Clave'.
    Una pasada: encripta, otra pasada sobre el fichero encriptado, con la
    misma clave, lo desencripta.
    Ori: Nombre del fichero original (Source filename)
    Dest: Nombre del fichero encriptado (Destination filename) }
const
    MAXBUFFER        = 4096;  //4k de buffer;
var
    Buffer: array[1..MAXBUFFER] of byte;
    Buffer2: array[1..MAXBUFFER] of byte;
    Origen, Destino: TFileStream;
    n, Leidos: integer;
begin
    Origen := TFileStream.Create(Ori,fmOpenReadWrite);
    if EliminaOri=True then
      Destino:= TFileStream.Create(Dest, fmCreate)
    else
      Destino:= TFileStream.Create(Dest, fmOpenReadWrite);
    RandSeed := Clave;
    try
      repeat
        Leidos := Origen.Read( Buffer[1],MAXBUFFER );
        for n := 1 to Leidos do begin
          Buffer[n] := Buffer[n] xor Random(256);
        end;
        Destino.Write(Buffer[1], Leidos);
      until (Leidos < MAXBUFFER);
    finally
      Origen.Free;
      Destino.Free;

      if EliminaOri=True then
        if FileExists(Ori) then
          DeleteFile(Ori);
    end;
end;

procedure procCargaDatosValidaAutoriza(sParamContrato, sParamTabla, sTipo :string; iStateIndex :integer; tOrigen: TComponent; zqDatosParam :tUniquery  );
begin
    zqDatosParam.Active := False;
    zqDatosParam.SQL.Clear;

    uVerAutorizdas := TUniquery.create(nil);
    uVerAutorizdas.Connection := Connection.uConnection;

    temE := TUniquery.create(nil);
    temE.Connection := Connection.uConnection;
    temE.Active:=False;
    temE.SQL.Text:='Select FK_Titulo from master_empresa';
    temE.Open;

    if sTipo = 'Valida' then
    begin
        {$region 'Sqls'}
        if sParamTabla = 'anexo_requisicion' then
        begin
          if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
          begin
             uVerAutorizdas.Active:= False;
             AsignarSQL(uVerAutorizdas,'master_autorizaciones',pUpDate);
             FiltrarDataSet(uVerAutorizdas,'Usuario,Aplicar,Autorizaciones',[global_usuario,'REQUISICIONES', -1]);
             uVerAutorizdas.Open;

             zqDatosParam.Active:= False;
             AsignarSQL(zqDatosParam,'Autoriza_requisicion_usuario',pUpDate);
             if uVerAutorizdas.RecordCount = 0 then
                FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Usuario,Pendiente,EstadoPendiente,Valida,EstadoValida,Autoriza,EstadoAutoriza',[global_contrato,'AUTORIZADO',global_usuario,'No','PENDIENTE','No','VALIDADO','No','AUTORIZADO'])
             else
                FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Usuario,Pendiente,EstadoPendiente,Valida,EstadoValida,Autoriza,EstadoAutoriza',[global_contrato,'AUTORIZADO',global_usuario,uVerAutorizdas.FieldByName('Pendientes').AsString,'PENDIENTE',uVerAutorizdas.FieldByName('Validadas').AsString,'VALIDADO',uVerAutorizdas.FieldByName('Autorizadas').AsString,'AUTORIZADO']);
             zqDatosParam.Open;
          end
          else
          begin
             zqDatosParam.Active:= False;
             AsignarSQL(zqDatosParam,'Autoriza_requisicion',pUpDate);
             FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'AUTORIZADO']);
             zqDatosParam.Open;
          end;
        end;

        if sParamTabla = 'anexo_pedidos' then
        begin
          if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
          begin
             uVerAutorizdas.Active:= False;
             AsignarSQL(uVerAutorizdas,'master_autorizaciones',pUpDate);
             FiltrarDataSet(uVerAutorizdas,'Usuario,Aplicar,Autorizaciones',[global_usuario,'ORDENES DE COMPRA', -1]);
             uVerAutorizdas.Open;

             zqDatosParam.Active:= False;
             AsignarSQL(zqDatosParam,'Autoriza_orden_compra_usuario',pUpDate);
             if uVerAutorizdas.RecordCount = 0 then
                FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Usuario,Pendiente,EstadoPendiente,Valida,EstadoValida,Autoriza,EstadoAutoriza',[global_contrato,'AUTORIZADO',global_usuario,'No','PENDIENTE','No','VALIDADO','No','AUTORIZADO','No','VALIDADO TECNICO'])
             else
                FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Usuario,Pendiente,EstadoPendiente,Valida,EstadoValida,Autoriza,EstadoAutoriza,ValidaTecnica,EstadoValidaTecnica',
                              [global_contrato,'AUTORIZADO',global_usuario,uVerAutorizdas.FieldByName('Pendientes').AsString,'PENDIENTE',
                              uVerAutorizdas.FieldByName('Validadas').AsString,'VALIDADO',
                              uVerAutorizdas.FieldByName('Autorizadas').AsString,'AUTORIZADO',
                              uVerAutorizdas.FieldByName('ValidadasTecnicas').AsString,'VALIDADO TECNICO']);
             zqDatosParam.Open;
          end
          else
          if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
          begin
             zqDatosParam.Active:= False;
             AsignarSQL(zqDatosParam,'Autoriza_orden_compra_ss7',pUpDate);
             FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'AUTORIZADO']);
             zqDatosParam.Open;
          end
          else
          begin
             zqDatosParam.Active:= False;
             AsignarSQL(zqDatosParam,'Autoriza_orden_compra',pUpDate);
             FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'AUTORIZADO']);
             zqDatosParam.Open;
          end;
        end;

        if sParamTabla = 'almacen_entrada' then
        begin
           if iStateIndex = 4 then
           begin
               zqDatosParam.Active:= False;
               AsignarSQL(zqDatosParam,'Autoriza_entrada',pUpDate);
               FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'AUTORIZADO']);
               zqDatosParam.Open;
           end
           else
           if iStateIndex = 9 then
           begin
               zqDatosParam.Active:= False;
               AsignarSQL(zqDatosParam,'Autoriza_recepcion',pUpDate);
               FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'AUTORIZADO']);
               zqDatosParam.Open;
           end;
        end;

        if sParamTabla = 'alm_inspeccion_material' then
        begin
           zqDatosParam.Active:= False;
           AsignarSQL(zqDatosParam,'Autoriza_inspeccion_material',pUpDate);
           FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'AUTORIZADO']);
           zqDatosParam.Open;
        end;

        if sParamTabla = 'almacen_salida' then
        begin
           if iStateIndex = 5 then
           begin
               zqDatosParam.Active:= False;
               AsignarSQL(zqDatosParam,'Autoriza_salida',pUpDate);
               FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'AUTORIZADO']);
               zqDatosParam.Open;
           end
           else
           if iStateIndex = 10 then
           begin
               zqDatosParam.Active:= False;
               AsignarSQL(zqDatosParam,'Autoriza_desembarque',pUpDate);
               FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'AUTORIZADO']);
               zqDatosParam.Open;
           end;
        end;

       if sParamTabla = 'alm_aviso_embarque' then
        begin
           zqDatosParam.Active:= False;
           AsignarSQL(zqDatosParam,'Autoriza_aviso_embarque',pUpDate);
           FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'AUTORIZADO']);
           zqDatosParam.Open;
        end;

        if sParamTabla = 'ordenesdetrabajo' then
        begin
           zqDatosParam.Active:= False;
           AsignarSQL(zqDatosParam,'Autoriza_presupuesto',pUpDate);
           FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'AUTORIZADO']);
           zqDatosParam.Open;
        end;

        if sParamTabla = 'anexo_solicitud_aprobpago' then
        begin
           if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
          begin
             uVerAutorizdas.Active:= False;
             AsignarSQL(uVerAutorizdas,'master_autorizaciones',pUpDate);
             FiltrarDataSet(uVerAutorizdas,'Usuario,Aplicar,Autorizaciones',[global_usuario,'SAP', -1]);
             uVerAutorizdas.Open;

             zqDatosParam.Active:= False;
             AsignarSQL(zqDatosParam,'Autoriza_aprobacion_pago_usuario',pUpDate);
             if uVerAutorizdas.RecordCount = 0 then
                FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Usuario,Pendiente,EstadoPendiente,Valida,EstadoValida,Autoriza,EstadoAutoriza',[global_contrato,'AUTORIZADO',global_usuario,'No','PENDIENTE','No','VALIDADO','No','AUTORIZADO'])
             else
                FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Usuario,Pendiente,EstadoPendiente,Valida,EstadoValida,Autoriza,EstadoAutoriza',[global_contrato,'AUTORIZADO',global_usuario,uVerAutorizdas.FieldByName('Pendientes').AsString,'PENDIENTE',uVerAutorizdas.FieldByName('Validadas').AsString,'VALIDADO',uVerAutorizdas.FieldByName('Autorizadas').AsString,'AUTORIZADO']);
             zqDatosParam.Open;
          end
          else  begin
           zqDatosParam.Active:= False;
           AsignarSQL(zqDatosParam,'Autoriza_aprobacion_pago',pUpDate);
           FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'AUTORIZADO']);
           zqDatosParam.Open;
          end;
        end;

        if sParamTabla = 'anexo_solicitud' then
        begin
            if (temE.FieldByName('FK_Titulo').AsString = 'CMMI') then
          begin
             uVerAutorizdas.Active:= False;
             AsignarSQL(uVerAutorizdas,'master_autorizaciones',pUpDate);
             FiltrarDataSet(uVerAutorizdas,'Usuario,Aplicar,Autorizaciones',[global_usuario,'SOLICITUDES', -1]);
             uVerAutorizdas.Open;

             zqDatosParam.Active:= False;
             AsignarSQL(zqDatosParam,'Autoriza_solicitud_usuario',pUpDate);
             if uVerAutorizdas.RecordCount = 0 then
                FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Usuario,Pendiente,EstadoPendiente,Valida,EstadoValida,Autoriza,EstadoAutoriza',[global_contrato,'AUTORIZADO',global_usuario,'No','PENDIENTE','No','VALIDADO','No','AUTORIZADO'])
             else
                FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Usuario,Pendiente,EstadoPendiente,Valida,EstadoValida,Autoriza,EstadoAutoriza',
                                      [global_contrato,'AUTORIZADO',global_usuario,uVerAutorizdas.FieldByName('Pendientes').AsString,'PENDIENTE',uVerAutorizdas.FieldByName('Validadas').AsString,'VALIDADO',uVerAutorizdas.FieldByName('Autorizadas').AsString,'AUTORIZADO']);
             zqDatosParam.Open;
          end
          else
          begin
            zqDatosParam.Active:= False;
             AsignarSQL(zqDatosParam,'Autoriza_solicitud_usuario',pUpDate);
                FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'AUTORIZADO']) ;
//             else
//                FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Usuario,Pendiente,EstadoPendiente,Valida,EstadoValida,Autoriza,EstadoAutoriza',
//                                      [global_contrato,'AUTORIZADO',global_usuario,uVerAutorizdas.FieldByName('Pendientes').AsString,'PENDIENTE',uVerAutorizdas.FieldByName('Validadas').AsString,'VALIDADO',uVerAutorizdas.FieldByName('Autorizadas').AsString,'AUTORIZADO']);
             zqDatosParam.Open;
          end;
        end;
        {$endregion}
    end
    else
    if sTipo = 'Libera' then
    begin
        {$region 'Sqls'}
        if sParamTabla = 'anexo_requisicion' then
        begin
            zqDatosParam.Active:= False;
            AsignarSQL(zqDatosParam,'Autoriza_requisicion_ss7',pUpDate);
            FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Proceso',[global_contrato,'COMPRADO','AUTORIZA']);
            zqDatosParam.Open;
        end;
        {$endregion}
    end
    else
    if sTipo = 'DLibera' then
    begin
        {$region 'Sqls'}
        if sParamTabla = 'anexo_requisicion' then
        begin
           zqDatosParam.Active:= False;
           AsignarSQL(zqDatosParam,'Autoriza_requisicion_ss7',pUpDate);
           FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Proceso',[global_contrato,'PENDIENTE','DESAUTORIZA']);
           zqDatosParam.Open;
        end;
        {$endregion}
    end
    else
    if sTipo = 'DesValida' then
    begin
        {$region 'Sqls'}
        if sParamTabla = 'anexo_requisicion' then
        begin
          if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
          begin
             uVerAutorizdas.Active:= False;
             AsignarSQL(uVerAutorizdas,'master_autorizaciones',pUpDate);
             FiltrarDataSet(uVerAutorizdas,'Usuario,Aplicar,Autorizaciones',[global_usuario,'REQUISICIONES', -1]);
             uVerAutorizdas.Open;

             zqDatosParam.Active:= False;
             AsignarSQL(zqDatosParam,'Autoriza_requisicion_usuario',pUpDate);
             if uVerAutorizdas.RecordCount = 0 then
                FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Usuario,Pendiente,EstadoPendiente,Valida,EstadoValida,Autoriza,EstadoAutoriza',[global_contrato,'PENDIENTE',global_usuario,'No','AUTORIZADO','No','VALIDADO','No','AUTORIZADO'])
             else
                FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Usuario,Pendiente,EstadoPendiente,Valida,EstadoValida,Autoriza,EstadoAutoriza',[global_contrato,'PENDIENTE',global_usuario,uVerAutorizdas.FieldByName('Pendientes').AsString,'AUTORIZADO',uVerAutorizdas.FieldByName('Validadas').AsString,'VALIDADO',uVerAutorizdas.FieldByName('Autorizadas').AsString,'AUTORIZADO']);
             zqDatosParam.Open;
          end
          else
          begin
             zqDatosParam.Active:= False;
             AsignarSQL(zqDatosParam,'Autoriza_requisicion',pUpDate);
             FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'PENDIENTE']);
             zqDatosParam.Open;
          end;
        end;

        if sParamTabla = 'anexo_pedidos' then
        begin
            if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
            begin
               uVerAutorizdas.Active:= False;
               AsignarSQL(uVerAutorizdas,'master_autorizaciones',pUpDate);
               FiltrarDataSet(uVerAutorizdas,'Usuario,Aplicar,Autorizaciones',[global_usuario,'ORDENES DE COMPRA', -1]);
               uVerAutorizdas.Open;

               zqDatosParam.Active:= False;
               AsignarSQL(zqDatosParam,'Autoriza_orden_compra_usuario',pUpDate);
               if uVerAutorizdas.RecordCount = 0 then
                  FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Usuario,Pendiente,EstadoPendiente,Valida,EstadoValida,Autoriza,EstadoAutoriza,ValidaTecnica,EstadoValidaTecnica',[global_contrato,'PENDIENTE',global_usuario,'No','AUTORIZADO','No','VALIDADO','No','AUTORIZADO'])
               else
                  FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Usuario,Pendiente,EstadoPendiente,Valida,EstadoValida,Autoriza,EstadoAutoriza,ValidaTecnica,EstadoValidaTecnica',[global_contrato,'PENDIENTE',global_usuario,
                                uVerAutorizdas.FieldByName('Pendientes').AsString,'AUTORIZADO',
                                uVerAutorizdas.FieldByName('Validadas').AsString,'VALIDADO',
                                uVerAutorizdas.FieldByName('Autorizadas').AsString,'AUTORIZADO',
                                uVerAutorizdas.FieldByName('ValidadasTecnicas').AsString,'VALIDADO TECNICO']);
               zqDatosParam.Open;
            end
            else
            if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
            begin
               zqDatosParam.Active:= False;
               AsignarSQL(zqDatosParam,'Autoriza_orden_compra_ss7',pUpDate);
               FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'PENDIENTE']);
               zqDatosParam.Open;
            end
            else
            begin
               zqDatosParam.Active:= False;
               AsignarSQL(zqDatosParam,'Autoriza_orden_compra',pUpDate);
               FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'PENDIENTE']);
               zqDatosParam.Open;
            end;
        end;

        if sParamTabla = 'alm_inspeccion_material' then
        begin
           zqDatosParam.Active:= False;
           AsignarSQL(zqDatosParam,'Autoriza_inspeccion_material',pUpDate);
           FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'PENDIENTE']);
           zqDatosParam.Open;
        end;

        if sParamTabla = 'almacen_entrada' then
        begin
           if iStateIndex = 4 then
           begin
               zqDatosParam.Active:= False;
               AsignarSQL(zqDatosParam,'Autoriza_entrada',pUpDate);
               FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'PENDIENTE']);
               zqDatosParam.Open;
           end
           else
           if iStateIndex = 9 then
           begin
               zqDatosParam.Active:= False;
               AsignarSQL(zqDatosParam,'Autoriza_recepcion',pUpDate);
               FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'PENDIENTE']);
               zqDatosParam.Open;
           end;

        end;

        if sParamTabla = 'almacen_salida' then
        begin
           if iStateIndex = 5 then
           begin
               zqDatosParam.Active:= False;
               AsignarSQL(zqDatosParam,'Autoriza_salida',pUpDate);
               FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'PENDIENTE']);
               zqDatosParam.Open;
           end
           else
           if iStateIndex = 10 then
           begin
               zqDatosParam.Active:= False;
               AsignarSQL(zqDatosParam,'Autoriza_desembarque',pUpDate);
               FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'PENDIENTE']);
               zqDatosParam.Open;
           end;
        end;

        if sParamTabla = 'alm_aviso_embarque' then
        begin
           zqDatosParam.Active:= False;
           AsignarSQL(zqDatosParam,'Autoriza_aviso_embarque',pUpDate);
           FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'PENDIENTE']);
           zqDatosParam.Open;
        end;

        if sParamTabla = 'ordenesdetrabajo' then
        begin
           zqDatosParam.Active:= False;
           AsignarSQL(zqDatosParam,'Autoriza_presupuesto',pUpDate);
           FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'PENDIENTE']);
           zqDatosParam.Open;
        end;

        if sParamTabla = 'anexo_solicitud_aprobpago' then
        begin
           zqDatosParam.Active:= False;
           AsignarSQL(zqDatosParam,'Autoriza_aprobacion_pago',pUpDate);
           FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'PENDIENTE']);
           zqDatosParam.Open;
        end;

        if sParamTabla = 'anexo_solicitud' then
        begin
           if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
          begin
             uVerAutorizdas.Active:= False;
             AsignarSQL(uVerAutorizdas,'master_autorizaciones',pUpDate);
             FiltrarDataSet(uVerAutorizdas,'Usuario,Aplicar,Autorizaciones',[global_usuario,'SOLICITUDES', -1]);
             uVerAutorizdas.Open;

             zqDatosParam.Active:= False;
             AsignarSQL(zqDatosParam,'Autoriza_solicitud_usuario',pUpDate);
             if uVerAutorizdas.RecordCount = 0 then
                FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Usuario,Pendiente,EstadoPendiente,Valida,EstadoValida,Autoriza,EstadoAutoriza',[global_contrato,'PENDIENTE',global_usuario,'No','AUTORIZADO','No','VALIDADO','No','AUTORIZADO'])
             else
                FiltrarDataSet(zqDatosParam,'Contrato,Estatus,Usuario,Pendiente,EstadoPendiente,Valida,EstadoValida,Autoriza,EstadoAutoriza',[global_contrato,'PENDIENTE',global_usuario,uVerAutorizdas.FieldByName('Pendientes').AsString,'AUTORIZADO',uVerAutorizdas.FieldByName('Validadas').AsString,'VALIDADO',uVerAutorizdas.FieldByName('Autorizadas').AsString,'AUTORIZADO']);
             zqDatosParam.Open;
          end;

          if connection.uContrato.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
          begin
             zqDatosParam.Active:= False;
             AsignarSQL(zqDatosParam,'Autoriza_solicitud_usuario',pUpDate);
             if uVerAutorizdas.RecordCount = 0 then
                FiltrarDataSet(zqDatosParam,'Contrato,Estatus',[global_contrato,'PENDIENTE']);
             zqDatosParam.Open;
          end;
        end;

        {$endregion}
    end;

    zqDatosParam.ParamByName('Contrato').AsString := sParamContrato;
    zqDatosParam.Open;
end;

procedure procValidaDatosValidaAutoriza(sParamContrato, sParamTabla, sTipo :string; iStateIndex :integer; iParamFolio :integer; sParamFolio :String; tOrigen: TComponent  );
var
    zqValida: tUniquery;
begin
    zqValida := tUniquery.create(nil);
    zqValida.Connection := Connection.uConnection;

    zqValida.Active := False;
    zqValida.SQL.Clear;
    if sTipo = 'Valida' then
    begin
        {$region 'Sqls'}

        if sParamTabla = 'anexo_requisicion' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_valida_requisicion',pUpDate);
        end;

        if sParamTabla = 'anexo_pedidos' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_valida_orden_compra',pUpDate);
        end;

        if sParamTabla = 'almacen_entrada' then
        begin
           if iStateIndex = 4 then
           begin
               zqValida.Active:= False;
               AsignarSQL(zqValida,'Update_valida_entrada',pUpDate);
           end
           else
           if iStateIndex = 9 then
           begin
               zqValida.Active:= False;
               AsignarSQL(zqValida,'Update_valida_recepcion',pUpDate);
           end;
        end;

        if sParamTabla = 'alm_inspeccion_material' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_valida_reporte_inspeccion',pUpDate);
        end;

        if sParamTabla = 'almacen_salida' then
        begin
           if iStateIndex = 5 then
           begin
               zqValida.Active:= False;
               AsignarSQL(zqValida,'Update_valida_salida',pUpDate);
           end
           else
           if iStateIndex = 10 then
           begin
               zqValida.Active:= False;
               AsignarSQL(zqValida,'Update_valida_desembarque',pUpDate);
           end;
        end;

        if sParamTabla = 'alm_aviso_embarque' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_valida_aviso_embarque',pUpDate);
        end;

         if sParamTabla = 'ordenesdetrabajo' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_valida_presupuesto',pUpDate);
        end;

         if sParamTabla = 'anexo_solicitud_aprobpago' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_valida_aprobacion_pag',pUpDate);
        end;

         if (sParamTabla = 'anexo_solicitud')  then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_valida_solicitud',pUpDate);
        end;
        {$endregion}

    end;
    //Nuevo
    if sTipo = 'ValidaTecnico' then
    begin
        {$region 'Sqls'}

        if sParamTabla = 'anexo_pedidos' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_validatecnico_orden_compra',pUpDate);
        end;

        {$endregion}

    end;

    if sTipo = 'DesValida' then
    begin
        {$region 'Sqls'}
      if sParamTabla = 'anexo_requisicion' then
      begin
         zqValida.Active:= False;
         AsignarSQL(zqValida,'Update_valida_requisicion',pUpDate);
      end;

      if sParamTabla = 'anexo_pedidos' then
      begin
         zqValida.Active:= False;
         AsignarSQL(zqValida,'Update_valida_orden_compra',pUpDate);
      end;

      if sParamTabla = 'alm_inspeccion_material' then
      begin
          zqValida.Active:= False;
          AsignarSQL(zqValida,'Update_valida_reporte_inspeccion',pUpDate);
      end;

      if sParamTabla = 'almacen_entrada' then
      begin
         if iStateIndex = 4 then
         begin
             zqValida.Active:= False;
             AsignarSQL(zqValida,'Update_valida_entrada',pUpDate);
         end
         else
         if iStateIndex = 9 then
         begin
             zqValida.Active:= False;
             AsignarSQL(zqValida,'Update_valida_recepcion',pUpDate);
         end;
      end;

      if sParamTabla = 'almacen_salida' then
      begin
         if iStateIndex = 5 then
         begin
             zqValida.Active:= False;
             AsignarSQL(zqValida,'Update_valida_salida',pUpDate);
         end
         else
         if iStateIndex = 10 then
         begin
             zqValida.Active:= False;
             AsignarSQL(zqValida,'Update_valida_desembarque',pUpDate);
         end;
      end;

      if sParamTabla = 'alm_aviso_embarque' then
      begin
         zqValida.Active:= False;
         AsignarSQL(zqValida,'Update_valida_aviso_embarque',pUpDate);
      end;

      if sParamTabla = 'ordenesdetrabajo' then
      begin
         zqValida.Active:= False;
         AsignarSQL(zqValida,'Update_valida_presupuesto',pUpDate);
      end;

      if sParamTabla = 'anexo_solicitud_aprobpago' then
      begin
         zqValida.Active:= False;
         AsignarSQL(zqValida,'Update_valida_aprobacion_pag',pUpDate);
      end;

      if sParamTabla = 'anexo_solicitud' then
      begin
         zqValida.Active:= False;
         AsignarSQL(zqValida,'Update_valida_solicitud',pUpDate);
      end;

      {$endregion}

    end;

    if sTipo = 'DesValidaTecnico' then
    begin
      {$region 'Sqls'}
      if sParamTabla = 'anexo_pedidos' then
      begin
         zqValida.Active:= False;
         AsignarSQL(zqValida,'Update_validatecnico_orden_compra',pUpDate);
      end;

      {$endregion}

    end;

    if  (iParamFolio = null) or (iParamFolio = 0) then
    begin
        if sTipo = 'Valida' then
           FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'VALIDADO',sParamFolio,global_usuario,FechaTimeSQL(Now())]);

        if sTipo = 'ValidaTecnico' then
           FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'VALIDADO TECNICO',sParamFolio,global_usuario,FechaTimeSQL(Now())]);

        if sTipo = 'DesValida' then
           FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'PENDIENTE',sParamFolio,'',Now()]);

        if sTipo = 'DesValidaTecnico' then
           FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'VALIDADO',sParamFolio,'',Now()]);
    end
    else
    begin
        if sTipo = 'Valida' then
           FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'VALIDADO',iParamFolio,global_usuario,FechaTimeSQL(Now())]);

        if sTipo = 'ValidaTecnico' then
           FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'VALIDADO TECNICO',iParamFolio,global_usuario,FechaTimeSQL(Now())]);

        if sTipo = 'DesValida' then
           FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'PENDIENTE',iParamFolio,'',Now()]);

        if sTipo = 'DesValidaTecnico' then
           FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'VALIDADO',iParamFolio,'',Now()]);
    end;

    if sTipo = 'ValidaGerencias' then
    begin
       zqValida.Active:= False;
       AsignarSQL(zqValida,'Update_valida_requisicion',pUpDate);
       FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'VALIDADO',iParamFolio,global_usuario,FechaTimeSQL(Now())]);
       zqValida.ExecSQL;

       zqValida.Active:= False;
       AsignarSQL(zqValida,'Update_autoriza_requisicion',pUpDate);
       FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'AUTORIZADO',iParamFolio,global_usuario,FechaTimeSQL(Now())]);
       zqValida.ExecSQL;

       zqValida.Active:= False;
       AsignarSQL(zqValida,'Update_libera_requisicion',pUpDate);
       FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'LIBERADO',iParamFolio,global_usuario,FechaTimeSQL(Now())]);
       zqValida.ExecSQL;
    end
    else
        zqValida.ExecSQL;
    zqValida.Destroy;
end;

procedure procAutorizaDatosValidaAutoriza(sParamContrato, sParamTabla, sTipo :string; iStateIndex :integer; iParamFolio :integer; sParamFolio : String; tOrigen: TComponent  );
var
    zqValida: tUniquery;
begin
    zqValida := tUniquery.create(nil);
    zqValida.Connection := Connection.uConnection;

    zqValida.Active := False;
    zqValida.SQL.Clear;
    if sTipo = 'Valida' then
    begin
        {$region 'Sqls'}
        if sParamTabla = 'anexo_requisicion' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_autoriza_requisicion',pUpDate);
        end;

        if sParamTabla = 'anexo_pedidos' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_autoriza_orden_compra',pUpDate);
        end;

        if sParamTabla = 'almacen_entrada' then
        begin
            if iStateIndex = 4 then
            begin
               zqValida.Active:= False;
               AsignarSQL(zqValida,'Update_autoriza_entrada',pUpDate);
            end
            else
            if iStateIndex = 9 then
            begin
               zqValida.Active:= False;
               AsignarSQL(zqValida,'Update_autoriza_recepcion',pUpDate);
            end;
        end;

         if sParamTabla = 'alm_inspeccion_material' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_autoriza_reporte_inspeccion',pUpDate);
        end;

        if sParamTabla = 'almacen_salida' then
        begin
           if iStateIndex = 5 then
           begin
               zqValida.Active:= False;
               AsignarSQL(zqValida,'Update_autoriza_salida',pUpDate);
           end
           else
            if iStateIndex = 10 then
           begin
               zqValida.Active:= False;
               AsignarSQL(zqValida,'Update_autoriza_desembarque',pUpDate);
           end;
        end;

        if sParamTabla = 'alm_aviso_embarque' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_autoriza_aviso_embarque',pUpDate);
        end;

        if sParamTabla = 'ordenesdetrabajo' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_autoriza_presupuesto',pUpDate);
        end;

        if sParamTabla = 'anexo_solicitud_aprobpago' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_autoriza_aprobacion_pag',pUpDate);
        end;

        if sParamTabla = 'anexo_solicitud' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_autoriza_solicitud',pUpDate);
        end;

        if  (iParamFolio = null) or (iParamFolio = 0) then
        begin
            if sTipo = 'Valida' then
               FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'AUTORIZADO',sParamFolio,global_usuario,FechaTimeSQL(Now())]);
        end
        else
        begin
            if sTipo = 'Valida' then
               FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'AUTORIZADO',iParamFolio,global_usuario,FechaTimeSQL(Now())]);
        end;
        {$endregion}

    end
    else
      if sTipo = 'Habilita' then
    begin
        {$region 'Sqls'}
        if sParamTabla = 'anexo_requisicion' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_habilitar_requisicion',pUpDate);
        end;

        if sParamTabla = 'anexo_pedidos' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_habilitar_orden_compra',pUpDate);
        end;

        if sParamTabla = 'anexo_solicitud_aprobpago' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_habilitar_aprobacion_pag',pUpDate);
        end;

        if  (iParamFolio = null) or (iParamFolio = 0) then
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'VALIDADO',sParamFolio,global_usuario,FechaTimeSQL(Now())])
        else
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'VALIDADO',iParamFolio,global_usuario,FechaTimeSQL(Now())]);

        {$endregion}

    end
    else
    if sTipo = 'Libera' then
    begin
        {$region 'Sqls'}
        if sParamTabla = 'anexo_requisicion' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_libera_requisicion',pUpDate);
        end;

        if  (iParamFolio = null) or (iParamFolio = 0) then
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'LIBERADO',sParamFolio,global_usuario,FechaTimeSQL(Now())])
        else
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'LIBERADO',iParamFolio,global_usuario,FechaTimeSQL(Now())]);
        {$endregion}

    end
    else
     if sTipo = 'AsignoCC' then
    begin
        {$region 'Sqls'}
         if sParamTabla = 'anexo_requisicion' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_asignaCC_requisicion',pUpDate);
        end;

        if  (iParamFolio = null) or (iParamFolio = 0) then
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'ASIGNADO',sParamFolio,global_usuario,FechaTimeSQL(Now())])
        else
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'ASIGNADO',iParamFolio,global_usuario,FechaTimeSQL(Now())]);
        {$endregion}

    end
    else
      if sTipo = 'GeneroPR' then
    begin
        {$region 'Sqls'}
         if sParamTabla = 'anexo_requisicion' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_asignaPR_requisicion',pUpDate);
        end;

        if  (iParamFolio = null) or (iParamFolio = 0) then
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'GENERO PR',sParamFolio,global_usuario,FechaTimeSQL(Now())])
        else
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'GENERO PR',iParamFolio,global_usuario,FechaTimeSQL(Now())]);

        {$endregion}
    end
    else
      if sTipo = 'Comprado' then
    begin
        {$region 'Sqls'}
        if sParamTabla = 'anexo_requisicion' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_compra_requisicion',pUpDate);
        end;

        if  (iParamFolio = null) or (iParamFolio = 0) then
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'COMPRADO',sParamFolio,global_usuario,FechaTimeSQL(Now())])
        else
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'COMPRADO',iParamFolio,global_usuario,FechaTimeSQL(Now())]);
        {$endregion}

    end
    else
    if sTipo = 'DComprado' then
    begin
        {$region 'Sqls'}
         if sParamTabla = 'anexo_requisicion' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_compra_requisicion',pUpDate);
        end;

        if  (iParamFolio = null) or (iParamFolio = 0) then
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'GENERO PR',sParamFolio,'',Now()])
        else
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'GENERO PR',iParamFolio,'',Now()]);
        {$endregion}

    end
    else
     if sTipo = 'DGeneroPR' then
    begin
        {$region 'Sqls'}
         if sParamTabla = 'anexo_requisicion' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_asignaPR_requisicion',pUpDate);
        end;

        if  (iParamFolio = null) or (iParamFolio = 0) then
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'ASIGNADO',sParamFolio,'',Now()])
        else
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'ASIGNADO',iParamFolio,'',Now()]);
        {$endregion}

    end
    else
    if sTipo = 'DAsignoCC' then
    begin
        {$region 'Sqls'}
         if sParamTabla = 'anexo_requisicion' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_asignaCC_requisicion',pUpDate);
        end;

        if  (iParamFolio = null) or (iParamFolio = 0) then
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'LIBERADO',sParamFolio,'',Now()])
        else
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'LIBERADO',iParamFolio,'',Now()]);
        {$endregion}

    end
    else
      if sTipo = 'DLibero' then
    begin
        {$region 'Sqls'}
         if sParamTabla = 'anexo_requisicion' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_libera_requisicion',pUpDate);
        end;

        if  (iParamFolio = null) or (iParamFolio = 0) then
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'AUTORIZADO',sParamFolio,'',Now()])
        else
            FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'AUTORIZADO',iParamFolio,'',Now()]);
        {$endregion}

    end
    else
    begin
        {$region 'Sqls'}
        if sParamTabla = 'anexo_requisicion' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_autoriza_requisicion',pUpDate);
        end;

        if sParamTabla = 'anexo_pedidos' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_autoriza_orden_compra',pUpDate);
        end;

         if sParamTabla = 'alm_inspeccion_material' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_valida_reporte_inspeccion',pUpDate);
        end;

        if sParamTabla = 'almacen_entrada' then
        begin
            if iStateIndex = 4 then
            begin
               zqValida.Active:= False;
               AsignarSQL(zqValida,'Update_autoriza_entrada',pUpDate);
            end
            else
            if iStateIndex = 9 then
            begin
               zqValida.Active:= False;
               AsignarSQL(zqValida,'Update_autoriza_recepcion',pUpDate);
            end;
        end;

        if sParamTabla = 'almacen_salida' then
        begin
           if iStateIndex = 5 then
           begin
               zqValida.Active:= False;
               AsignarSQL(zqValida,'Update_autoriza_salida',pUpDate);
           end
           else
            if iStateIndex = 10 then
           begin
               zqValida.Active:= False;
               AsignarSQL(zqValida,'Update_autoriza_desembarque',pUpDate);
           end;
        end;

        if sParamTabla = 'alm_aviso_embarque' then
        begin
          zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_autoriza_aviso_embarque',pUpDate);
        end;

        if sParamTabla = 'ordenesdetrabajo' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_autoriza_presupuesto',pUpDate);
        end;

        if sParamTabla = 'anexo_solicitud_aprobpago' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_autoriza_aprobacion_pag',pUpDate);
        end;

        if sParamTabla = 'anexo_solicitud' then
        begin
           zqValida.Active:= False;
           AsignarSQL(zqValida,'Update_autoriza_solicitud',pUpDate);
        end;

        if  (iParamFolio = null) or (iParamFolio = 0) then
        begin
           if sTipo = 'DesValida' then
              FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'VALIDADO',sParamFolio,'',Now()]);
        end
        else
        begin
           if sTipo = 'DesValida' then
              FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'VALIDADO',iParamFolio,'',Now()]);

           if sTipo = 'DesValidaTecnico' then
              FiltrarDataSet(zqValida,'Contrato,Estatus,Folio,Usuario,Fecha',[sParamContrato,'VALIDADO TECNICO',iParamFolio,'',Now()]);
        end;

      {$endregion}

    end;
    zqValida.ExecSQL;
    zqValida.Destroy;
end;

function encriptar(aStr: String; aKey: Integer): String;
begin
  Result:='';
  RandSeed:=aKey;
  for aKey:=1 to Length(aStr) do
    //Result:=Result+AnsiChar(ord(aStr[aKey]) xor (random(254)+1));
     Result:=Result+Chr(Byte(aStr[aKey]) xor random(256));
end;

function desencriptar(aStr: String; aKey: Integer): String;
begin
  Result:='';
  RandSeed:=aKey;
  for aKey:=1 to Length(aStr) do
  //    Result:=Result+AnsiChar(ord(aStr[aKey]) xor (random(254)+1));
  Result:=Result+Chr(Byte(aStr[aKey]) xor random(256));
end;

function Noil_maximoId(sParamContrato, sParamTabla, sParamCampo :string) : Integer;
var
    QryMaximo    : tUniquery;
begin

     QryMaximo:=tUniquery.create(nil);
    Try
      {Creacion de objetos de consulta}
      QryMaximo.Connection := Connection.uConnection;

      QryMaximo.Active := False;
      if trim(sParamContrato) <> '' then
      begin
         QryMaximo.SQL.Add('select max('+sParamCampo+') as Maximo from '+sParamTabla+' where sContrato =:Contrato group by sContrato ');
         QryMaximo.ParamByName('contrato').AsString := sParamContrato;
      end
      else
         QryMaximo.SQL.Add('select max('+sParamCampo+') as Maximo from '+sParamTabla+' ');
      QryMaximo.Open;

      result:= 1;
      if QryMaximo.RecordCount > 0 then
         result := QryMaximo.FieldByName('Maximo').AsInteger + 1;

    Finally
        QryMaximo.Destroy;
    End;
end;


procedure BuscaElimina_datos(iCaso: integer; sParamTabla, sLlevaEmpresa, sLlevaFolio, sLlevaWbs, sLLevaConvenio,
          sParamEmpresa, sParamFolio, sParamWbs, sParamConv, sParamNuevaEmpresa, sParamNuevoFolio, sParamNuevaWbs,
          sParamNuevoConv : string; accion :string; lMensaje :boolean; BarraProgreso :TcxProgressBar);
var
base, tabla, campo, cad : string;
datos : array[ 1..200] of String;
i,x,cuenta_campo : Integer;
QryTablas, QryDatos    : TZQuery;
begin
    QryDatos := TzQuery.create(nil);
    QryDatos.Connection := Connection.zConnection;
    QryTablas:= TzQuery.create(nil);
    QryTablas.Connection := Connection.zConnection;
    try
     QryTablas.Active := False ;
     QryTablas.SQL.Clear ;
     QryTablas.SQL.Add('Show tables') ;
     QryTablas.Open ;
     base := 'Tables_in_'+global_db;
     i := 1;

     while not QryTablas.Eof do
     begin
         tabla :=  QryTablas.FieldValues[base];
         qryDatos.Active := False ;
         qryDatos.SQL.Clear ;
         qryDatos.SQL.Add('describe '+tabla+' ');
         qryDatos.Open ;

         if qryDatos.RecordCount > 0 then
         begin
             cuenta_campo := 0;
             while not qryDatos.Eof do
             begin
                 case iCaso of

                 1: {$REGION 'CASO 1 Frentes de trabajo,Folio,Contrato'}
                     if pos(tabla, sParamTabla) = 0 then
                     begin
                         //Seleccionamos primero los contrato, folio, wbs, plazo
                         if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') and (sLlevaConvenio <> '') then
                         begin
                             If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                inc(cuenta_campo)
                             else
                                If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                   inc(cuenta_campo)
                                else
                                   If qryDatos.FieldValues['Field'] = sLlevaWbs then
                                      inc(cuenta_campo)
                                     else
                                        If qryDatos.FieldValues['Field'] = sLlevaConvenio then
                                           inc(cuenta_campo);

                            if cuenta_campo  = 4 then
                            begin
                                 datos[i] := tabla;
                                 i:= i + 1;
                                 cuenta_campo := 0;
                            end;
                         end
                         else
                             //Seleccionamos primero los contrato, folio, wbs.
                             if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') then
                             begin
                                 If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                    inc(cuenta_campo)
                                 else
                                    If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                       inc(cuenta_campo)
                                    else
                                       If qryDatos.FieldValues['Field'] = sLlevaWbs then
                                          inc(cuenta_campo);

                                if cuenta_campo  = 3 then
                                begin
                                     datos[i] := tabla;
                                     i:= i + 1;
                                     cuenta_campo := 0;
                                end;
                             end
                             else
                                //Seleccionamos primero los contrato, folio..
                               if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') then
                               begin
                                   If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                      inc(cuenta_campo)
                                   else
                                      If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                         inc(cuenta_campo);

                                  if cuenta_campo  = 2 then
                                  begin
                                       datos[i] := tabla;
                                       i:= i + 1;
                                       cuenta_campo := 0;
                                  end;
                               end
                               else
                                 //Seleccionamos primero los contrato
                                 if (sLlevaEmpresa <> '')  then
                                 begin
                                     If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                        inc(cuenta_campo);

                                    if cuenta_campo  = 1 then
                                    begin
                                         datos[i] := tabla;
                                         i:= i + 1;
                                         cuenta_campo := 0;
                                    end;
                                 end;
                     end;
                     {$ENDREGION}

                 2: {$REGION 'CASO 2 Catalogo de conceptos'}
                     if pos(tabla, sParamTabla) = 0 then
                     begin
                         //Seleccionamos primero los contrato, folio, wbs.
                         if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') and (sLlevaWbs <> '') then
                         begin
                             If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                inc(cuenta_campo)
                             else
                                If qryDatos.FieldValues['Field'] = sLlevaConvenio then
                                   inc(cuenta_campo)
                                else
                                   If qryDatos.FieldValues['Field'] = sLlevaWbs then
                                      inc(cuenta_campo);

                            if cuenta_campo  = 3 then
                            begin
                                 datos[i] := tabla;
                                 i:= i + 1;
                                 cuenta_campo := 0;
                            end;
                         end
                         else
                             //Seleccionamos primero los contrato, folio.
                             if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') then
                             begin
                                 If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                    inc(cuenta_campo)
                                 else
                                    If qryDatos.FieldValues['Field'] = sLlevaConvenio then
                                       inc(cuenta_campo);

                                if cuenta_campo  = 2 then
                                begin
                                     datos[i] := tabla;
                                     i:= i + 1;
                                     cuenta_campo := 0;
                                end;
                             end;

                     end;
                     {$ENDREGION}

                 3: {$REGION 'CASO 3 Convenios'}
                     if pos(tabla, sParamTabla) = 0 then
                     begin
                         //Seleccionamos primero los contrato, folio.
                         if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') then
                         begin
                            If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                  inc(cuenta_campo)
                               else
                                  If qryDatos.FieldValues['Field'] = sLlevaConvenio then
                                     inc(cuenta_campo);

                              if cuenta_campo  = 2 then
                              begin
                                   datos[i] := tabla;
                                   i:= i + 1;
                                   cuenta_campo := 0;
                              end;
                         end;

                     end;
                     {$ENDREGION}

                 end;
                 qryDatos.Next;
             end;
         end;
         BarraProgresoAvance(BarraProgreso, 0,100,40/QryTablas.RecordCount);
         QryTablas.Next;
     end;

     //Elimina todos los registros...
     if accion = 'borrar' then
     begin
         x := i-1;
         while x >= 1 do
         begin
             tabla := datos[x];
             QryTablas.Active := False ;
             QryTablas.SQL.Clear ;
             case iCaso of
             1: {$REGION 'Programa de trabajo, Folio, Contrato'}
                 if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '')  and (sLlevaConvenio <> '') then
                 begin
                     QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sIdConvenio =:Plazo and sNumeroOrden =:Folio and sWbs like :Wbs and sTipoAnexo ="PT"');
                     QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                     QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                     QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                     QryTablas.Params.ParamByName('Plazo').AsString     := sParamConv;
                 end
                 else
                     if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') then
                     begin
                         QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sNumeroOrden =:Folio and sWbs like :Wbs and sTipoanexo = "PT"');
                         QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                         QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                         QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                     end
                     else
                         if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') then
                         begin
                             QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sNumeroOrden =:Folio ');
                             QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                             QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                         end
                         else
                             if (sLlevaEmpresa <> '') then
                             begin
                                 QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato ');
                                 QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                             end;
             {$ENDREGION}

             2: {$REGION 'Catalogo de conceptos, Convenio'}
                 if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') and (sLlevaWbs <> '')  then
                 begin
                     QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sIdConvenio =:Plazo and sWbs like :Wbs and sTipoAnexo = "CC"');
                     QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                     QryTablas.Params.ParamByName('Plazo').AsString     := sParamConv;
                     QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                 end
                 else
                     if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') then
                     begin
                         QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sIdConvenio =:Plazo and sTipoAnexo ="CC"');
                         QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                         QryTablas.Params.ParamByName('Plazo').AsString     := sParamConv;
                     end;
                 {$ENDREGION}

             3: {$REGION 'Convenios'}
                 if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') then
                 begin
                     QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sIdConvenio =:Plazo ');
                     QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                     QryTablas.Params.ParamByName('Plazo').AsString     := sParamConv;
                 end;
                 {$ENDREGION}
             end;

             BarraProgresoAvance(BarraProgreso, 0,100,11/i);
             QryTablas.ExecSQL ;
             x := x-1;
         end;

         if BarraProgreso.Position < 100 then
         begin
            BarraProgresoAvance(BarraProgreso, 0,100,50);
            sleep(150);
         end;
     end;
     // Actualiza todos los registros..
     if accion = 'actualizar' then
     begin
         for x := 1 to i -1 do
         begin
             tabla := datos[x];
             QryTablas.Active := False ;
             QryTablas.SQL.Clear ;

             case iCaso of

             1: {$REGION 'Programa de trabajo, Folio, Contrato'}
                 if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') and (sLlevaConvenio <> '') then
                 begin
                     QryTablas.SQL.Add('update ' +tabla+ ' set sWbs =:WbsNueva  where sContrato =:Contrato and sIdConvenio =:Plazo and sNumeroOrden =:Folio and sWbs =:Wbs and sTipoAnexo = "PT" ');
                     QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                     QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                     QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                     QryTablas.Params.ParamByName('Plazo').AsString     := sParamConv;
                     QryTablas.Params.ParamByName('WbsNueva').AsString  := sParamNuevaWbs;
                 end
                 else
                     if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') then
                     begin
                         QryTablas.SQL.Add('update ' +tabla+ ' set sWbs =:WbsNueva where sContrato = :Contrato and sNumeroOrden =:Folio and sWbs =:Wbs and sTipoAnexo = "PT"');
                         QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                         QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                         QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                         QryTablas.Params.ParamByName('WbsNueva').AsString  := sParamNuevaWbs;
                     end
                     else
                         if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') then
                         begin
                             QryTablas.SQL.Add('update ' +tabla+ ' set sNumeroOrden =:NuevoFolio where sContrato = :Contrato and sNumeroOrden =:Folio ');
                             QryTablas.Params.ParamByName('Contrato').AsString   := sParamEmpresa ;
                             QryTablas.Params.ParamByName('Folio').AsString      := sParamFolio;
                             QryTablas.Params.ParamByName('NuevoFolio').AsString := sParamNuevoFolio;
                         end
                         else
                             if (sLlevaEmpresa <> '') then
                             begin
                                 QryTablas.SQL.Add('update ' +tabla+ ' set sContrato =:NuevoContrato where sContrato = :Contrato ');
                                 QryTablas.Params.ParamByName('Contrato').AsString       := sParamEmpresa ;
                                 QryTablas.Params.ParamByName('NuevoContrato').AsString  := sParamNuevaEmpresa ;
                             end;
                   {$ENDREGION}

             2: {$REGION 'Catalogo de conceptos'}
                 if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') and (sLlevaWbs <> '')  then
                 begin
                     QryTablas.SQL.Add('update ' +tabla+ ' set sWbs =:WbsNueva  where sContrato = :Contrato and sIdConvenio =:Plazo and sWbs =:Wbs and sTipoAnexo = "CC"');
                     QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                     QryTablas.Params.ParamByName('Plazo').AsString     := sParamConv;
                     QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                     QryTablas.Params.ParamByName('WbsNueva').AsString  := sParamNuevaWbs;
                 end
                 else
                     if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') then
                     begin
                         QryTablas.SQL.Add('update ' +tabla+ ' set sWbs =:WbsNueva where sContrato = :Contrato and sIdConvenio =:Plazo and sTipoAnexo = "CC"');
                         QryTablas.Params.ParamByName('Contrato').AsString   := sParamEmpresa ;
                         QryTablas.Params.ParamByName('Plazo').AsString      := sParamConv;
                         QryTablas.Params.ParamByName('WbsNueva').AsString   := sParamNuevaWbs;
                     end;
                   {$ENDREGION}

             3: {$REGION 'Convenios'}
                 if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') then
                 begin
                     QryTablas.SQL.Add('update ' +tabla+ ' set sIdConvenio =:NuevoPlazo where sContrato = :Contrato and sIdConvenio =:Plazo ');
                     QryTablas.Params.ParamByName('Contrato').AsString   := sParamEmpresa ;
                     QryTablas.Params.ParamByName('Plazo').AsString      := sParamConv;
                     QryTablas.Params.ParamByName('NuevoPlazo').AsString := sParamNuevoConv;
                 end;
               {$ENDREGION}

             end;
             QryTablas.ExecSQL ;
             BarraProgresoAvance(BarraProgreso, 0,100,11/i);
         end;

         if BarraProgreso.Position < 100 then
         begin
            BarraProgresoAvance(BarraProgreso, 0,100,50);
            sleep(150);
         end;
     end;

     if lMensaje = True then
     begin
        BarraProgresoAvance(BarraProgreso, 0,100,50);
        messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);
     end;

    finally
        QryDatos.destroy;
        QryTablas.destroy;
    end;
end;

function BuscaAntesEliminar_datos(iCaso : integer; sParamTabla, sLlevaEmpresa, sLlevaFolio, sLlevaWbs, sLLevaAct, sParamEmpresa, sParamFolio, sParamWbs, sParamAct, sMensaje : string; lMensaje :boolean; BarraProgreso :TcxProgressBar) : boolean;
var
   base, tabla, campo, cad : string;
   datos : array[ 1..200] of String;
   i,x,cuenta_campo    : Integer;
   QryTablas, QryDatos : TZQuery;
   zNuevaConexion : tzConnection;
begin
    QryDatos := TzQuery.create(nil);
    QryDatos.Connection := Connection.zConnection;
    QryTablas:= TzQuery.create(nil);
    QryTablas.Connection := Connection.zConnection;

    zNuevaConexion:= tzConnection.create(nil);
    zNuevaConexion.Catalog  := connection.zConnection.Catalog;
    zNuevaConexion.Database := connection.zConnection.DataBase;
    zNuevaConexion.HostName := connection.zConnection.HostName;
    zNuevaConexion.PassWord := connection.zConnection.PassWord;
    zNuevaConexion.Port     := connection.zConnection.Port;
    zNuevaConexion.User     := connection.zConnection.User;
    zNuevaConexion.Protocol := connection.zConnection.Protocol;
    zNuevaConexion.Properties := connection.zConnection.Properties;
    zNuevaConexion.TransactIsolationLevel := connection.zConnection.TransactIsolationLevel;
    zNuevaConexion.Connect;

    try
     QryTablas.Active := False ;
     QryTablas.SQL.Clear ;
     QryTablas.SQL.Add('Show tables') ;
     QryTablas.Open ;
     base := 'Tables_in_'+global_db;
     i := 1;
     result := False;
     while not QryTablas.Eof do
     begin
         tabla :=  QryTablas.FieldValues[base];
         qryDatos.Active := False ;
         qryDatos.SQL.Clear ;
         qryDatos.SQL.Add('describe '+tabla+' ');
         qryDatos.Open ;
         {$region 'Busca Campos'}
         if qryDatos.RecordCount > 0 then
         begin
             cuenta_campo := 0;
             while not qryDatos.Eof do
             begin
                 case iCaso of
                  1:{$REGION 'CASE 1 Folios, Programas'}
                     if pos(tabla, sParamTabla) = 0 then
                     begin
                         //Seleccionamos primero los contrato, folio, wbs, act.
                         if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') and (sLlevaAct <> '') then
                         begin
                             If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                inc(cuenta_campo)
                             else
                                If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                   inc(cuenta_campo)
                                else
                                   If qryDatos.FieldValues['Field'] = sLlevaWbs then
                                      inc(cuenta_campo)
                                     else
                                        If qryDatos.FieldValues['Field'] = sLlevaAct then
                                           inc(cuenta_campo);

                            if cuenta_campo  = 4 then
                            begin
                                 datos[i] := tabla;
                                 i:= i + 1;
                                 cuenta_campo := 0;
                            end;
                         end
                         else
                             //Seleccionamos primero los contrato, folio, act.
                             if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaAct <> '') then
                             begin
                                 If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                    inc(cuenta_campo)
                                 else
                                    If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                       inc(cuenta_campo)
                                    else
                                       If qryDatos.FieldValues['Field'] = sLlevaAct then
                                          inc(cuenta_campo);

                                if cuenta_campo  = 3 then
                                begin
                                     datos[i] := tabla;
                                     i:= i + 1;
                                     cuenta_campo := 0;
                                end;
                             end
                             else
                                //Seleccionamos primero los contrato, folio..
                               if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') then
                               begin
                                   If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                      inc(cuenta_campo)
                                   else
                                      If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                         inc(cuenta_campo);

                                  if cuenta_campo  = 2 then
                                  begin
                                       datos[i] := tabla;
                                       i:= i + 1;
                                       cuenta_campo := 0;
                                  end;
                               end
                               else
                                 //Seleccionamos primero los contrato
                                 if (sLlevaEmpresa <> '')  then
                                 begin
                                     If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                        inc(cuenta_campo);

                                    if cuenta_campo  = 1 then
                                    begin
                                         datos[i] := tabla;
                                         i:= i + 1;
                                         cuenta_campo := 0;
                                    end;
                                 end;
                     end;
                 {$ENDREGION}

                  2:{$REGION 'CASE 2 Catalogo de conceptos'}
                     if pos(tabla, sParamTabla) = 0 then
                     begin
                         //Seleccionamos primero los contrato, convenio, wbs.
                         if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') then
                         begin
                             If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                inc(cuenta_campo)
                             else
                                If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                   inc(cuenta_campo)
                                else
                                   If qryDatos.FieldValues['Field'] = sLlevaWbs then
                                      inc(cuenta_campo);

                            if cuenta_campo  = 3 then
                            begin
                                 datos[i] := tabla;
                                 i:= i + 1;
                                 cuenta_campo := 0;
                            end;
                         end
                         else
                             //Seleccionamos primero los contrato, wbs.
                             if (sLlevaEmpresa <> '')  and (sLlevaWbs <> '') then
                             begin
                                 If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                    inc(cuenta_campo)
                                 else
                                    If qryDatos.FieldValues['Field'] = sLlevaWbs then
                                       inc(cuenta_campo);

                                if cuenta_campo  = 2 then
                                begin
                                     datos[i] := tabla;
                                     i:= i + 1;
                                     cuenta_campo := 0;
                                end;
                             end;
                     end;
                 {$ENDREGION}

                  3:{$REGION 'CASE 3 Convenios'}
                     if pos(tabla, sParamTabla) = 0 then
                     begin
                         //Seleccionamos primero los contrato, convenio, wbs.
                         if (sLlevaEmpresa <> '') and (sLlevaFolio <> '')  then
                         begin
                             If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                inc(cuenta_campo)
                             else
                                If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                   inc(cuenta_campo);

                            if cuenta_campo  = 2 then
                            begin
                                 datos[i] := tabla;
                                 i:= i + 1;
                                 cuenta_campo := 0;
                            end;
                         end;
                     end;
                 {$ENDREGION}

                 end;
                 qryDatos.Next;
             end;
         end;
         BarraProgresoAvance(BarraProgreso, 0,100,40/QryTablas.RecordCount);
         {$endregion}
         QryTablas.Next;
     end;

     x := i-1;
     while x >= 1 do
     begin
         tabla := datos[x];
         QryTablas.Active := False ;
         QryTablas.SQL.Clear ;
         case iCaso of
         1: {$REGION 'CASE 1 Folios, Programas'}
             if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') and (sLlevaAct <> '') then
             begin
                 QryTablas.SQL.Add('select sNumeroOrden from ' +tabla+ ' where sContrato = :Contrato and sNumeroOrden =:Folio and sWbs like:Wbs and sNumeroActividad =:Act group by sContrato ');
                 QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                 QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                 QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                 QryTablas.Params.ParamByName('Act').AsString       := sParamAct;
             end
             else
                 if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaAct <> '') then
                 begin
                     QryTablas.SQL.Add('select sNumeroOrden ' +tabla+ ' where sContrato = :Contrato and sNumeroOrden =:Folio and sNumeroActividad =:Act group by sContrato ');
                     QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                     QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                     QryTablas.Params.ParamByName('Act').AsString       := sParamAct;
                 end
                 else
                     if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') then
                     begin
                         QryTablas.SQL.Add('select sNumeroOrden from ' +tabla+ ' where sContrato = :Contrato and sNumeroOrden =:Folio ');
                         QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                         QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                     end
                     else
                         if (sLlevaEmpresa <> '') then
                         begin
                             QryTablas.SQL.Add('select sNumeroOrden from ' +tabla+ ' where sContrato = :Contrato group by sContrato');
                             QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                         end;
            {$ENDREGION}

         2: {$REGION 'CASE 2 Catalogo de conceptos'}
             if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') then
             begin
                 QryTablas.SQL.Add('select sContrato from ' +tabla+ ' where sContrato = :Contrato and sIdConvenio =:Folio and sWbs like :Wbs group by sContrato ');
                 QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                 QryTablas.Params.ParamByName('Convenio').AsString  := sParamFolio;
                 QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
             end
             else
                 if (sLlevaEmpresa <> '') and (sLlevaWbs <> '') then
                 begin
                     QryTablas.SQL.Add('select sContrato from ' +tabla+ ' where sContrato = :Contrato and sWbs like :Wbs group by sContrato ');
                     QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                     QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                 end;
            {$ENDREGION}

         3: {$REGION 'CASE 3 Convenios'}
             if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') then
             begin
                 QryTablas.SQL.Add('select sIdConvenio from ' +tabla+ ' where sContrato = :Contrato and sIdConvenio =:Convenio group by sIdConvenio ');
                 QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                 QryTablas.Params.ParamByName('Convenio').AsString  := sParamFolio;
             end;
            {$ENDREGION}

         end;
         QryTablas.Open;

         if QryTablas.RecordCount > 0 then
         begin
             QryDatos.Connection := zNuevaConexion;

             QryDatos.Active := False;
             QryDatos.SQL.Clear;
             QryDatos.SQL.Add('USE information_schema ; ');

             QryDatos.ExecSQL;

             QryDatos.Active := False;
             QryDatos.SQL.Clear;
             QryDatos.SQL.Add('SELECT TABLE_COMMENT FROM tables WHERE TABLE_SCHEMA = :bd AND TABLE_NAME = :tabla ;');
             QryDatos.ParamByName('bd').AsString    :=  connection.zConnection.Database;
             QryDatos.ParamByName('tabla').AsString :=  tabla;
             QryDatos.Open;

             cad := cad + #13 + QryDatos.FieldByName('TABLE_COMMENT').AsString;
         end;
         BarraProgresoAvance(BarraProgreso, 0,100,11/i);
         x := x-1;
     end;

     if cad <> '' then
     begin
         result := True;
         if lMensaje = True then
         begin
            BarraProgresoAvance(BarraProgreso, 0,100,50);
            messageDLG('No se puede eliminar '+sMensaje+' se encuentra en: '+cad, mtWarning, [mbOk], 0);
         end;
     end;

    finally
        QryDatos.destroy;
        QryTablas.destroy;
        zNuevaConexion.Destroy;
    end;
end;

procedure ActualizaDatos_una_tabla_maestra(sParamTabla, sLlave, sCampo1, sCampo2, sCampo3, sValorLlave, sValorNuevoCampo1, sValorNuevoCampo2, sValorNuevoCampo3 : string; accion :string; lMensaje :boolean);
var
   QryTablas    : TUniquery;
begin

    QryTablas:= TUniquery.create(nil);
    QryTablas.Connection := Connection.uConnection;
    try
     // Actualiza todos los registros..
     if accion = 'actualizar' then
     begin
         QryTablas.Active := False ;
         QryTablas.SQL.Clear ;
         QryTablas.SQL.Add('update ' +sParamTabla+ ' set '+sCampo1+ sValorNuevoCampo1+ sCampo2+ sValorNuevoCampo2+ sCampo3+sValorNuevoCampo3+' where '+sLlave+' = :Llave ');
         QryTablas.Params.ParamByName('Llave').AsString      := sValorLlave ;
         QryTablas.ExecSQL ;
     end;
     if lMensaje = True then
        messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);

    finally
        QryTablas.destroy;
    end;
end;

function Obtener_almacen(sParamAlmacen, sParamPrincipal : string): string;
var
   QryConsulta    : TZQuery;
begin
   QryConsulta:= TzQuery.create(nil);
   QryConsulta.Connection := Connection.zConnection;

   QryConsulta.Active := False;
   QryConsulta.SQL.Add('select sDescripcion from almacenes where sIdAlmacen =:almacen ');
   if sParamPrincipal <> '' then
      QryConsulta.SQL.Add(' and lPrincipal :principal ');
   QryConsulta.ParamByName('almacen').AsString   := sParamAlmacen;
   if sParamPrincipal <> '' then
      QryConsulta.ParamByName('principal').AsString := sParamPrincipal;
   QryConsulta.Open;

   result := QryConsulta.FieldByName('sDescripcion').AsString;
   QryConsulta.Destroy;
end;

function ObtenerConsecutivoDepto(sParamModulo, sParamCadenaDepto : string; iParamConsecutivoDepto : integer ):string;
var
   Aux, Aux2, i, Maximo : integer;
   Numdigitos, FolioR : string;
   QryConfiguracion    : TZQuery;
begin
   QryConfiguracion:= TzQuery.create(nil);
   QryConfiguracion.Connection := Connection.zConnection;

    if sParamModulo = 'Requisicion' then
    begin
        Aux  := Connection.uconfiguracion.fieldByName('iNumReq').AsInteger ;
        Aux2 := iParamConsecutivoDepto ;
        Numdigitos := '';
        for i := 1 to Aux do
          Numdigitos := Numdigitos+'0';

        if Connection.uconfiguracion.FieldByName('sConfConsecutivo').AsString = 'GENERAL' Then
        begin
            Maximo := Noil_maximoId(global_contrato, 'configuracion', 'iAlmConsecutivoReq');
            FolioR := Connection.uconfiguracion.FieldByName('sPrefijoReq').AsString+formatfloat(Numdigitos,Maximo) ;
        end;

        if Connection.uconfiguracion.FieldByName('sConfConsecutivo').AsString = 'DEPARTAMENTOS' Then
        begin
             Aux2   := iParamConsecutivoDepto + 1;
             FolioR := sParamCadenaDepto+formatfloat(Numdigitos,Aux2);
        end;
        result := FolioR;
    end;

    if sParamModulo = 'Orden_compra' then
    begin
        Aux  := Connection.uconfiguracion.fieldByName('iNumOrdCompra').AsInteger ;

        Numdigitos := '';
        for i := 1 to Aux do
          Numdigitos := Numdigitos+'0';

        Maximo := Noil_maximoId(global_contrato, 'configuracion', 'iAlmConsecutivoCom');
        FolioR := Connection.uconfiguracion.FieldByName('sPrefijoOrdCompra').AsString+formatfloat(Numdigitos,Maximo) ;

        result := FolioR;
    end;

    if sParamModulo = 'Recepciones' then
    begin
        Aux  := Connection.uconfiguracion.fieldByName('iNumRecepcion').AsInteger ;

        Numdigitos := '';
        for i := 1 to Aux do
          Numdigitos := Numdigitos+'0';

        Maximo := Noil_maximoId(global_contrato, 'configuracion', 'iAlmConsecutivoRecepcion');
        FolioR := Connection.uconfiguracion.FieldByName('sPrefijoRecepcion').AsString+formatfloat(Numdigitos,Maximo) ;

        result := FolioR;
    end;

    if sParamModulo = 'Entradas' then
    begin
        Aux  := Connection.uconfiguracion.fieldByName('iNumEntrada').AsInteger ;

        Numdigitos := '';
        for i := 1 to Aux do
          Numdigitos := Numdigitos+'0';

        Maximo := Noil_maximoId(global_contrato, 'configuracion', 'iAlmConsecutivoEntrada');
        FolioR := Connection.uconfiguracion.FieldByName('sPrefijoEntrada').AsString+formatfloat(Numdigitos,Maximo) ;

        result := FolioR;
    end;

    if sParamModulo = 'Salidas' then
    begin
        Aux  := Connection.uconfiguracion.fieldByName('iAlmNumSal').AsInteger ;

        Numdigitos := '';
        for i := 1 to Aux do
          Numdigitos := Numdigitos+'0';

        Maximo := Noil_maximoId(global_contrato, 'configuracion', 'iAlmConsecutivoSal');
        FolioR := Connection.uconfiguracion.FieldByName('sAlmPrefijoSal').AsString+formatfloat(Numdigitos,Maximo) ;

        result := FolioR;
    end;

    QryConfiguracion.Destroy;
end;

function ObtenerFiltro(sParamPrefijo : string) : string;
var
   cadena : string;
   num : integer;
begin
    cadena := connection.uconfiguracion.FieldByName('sEjercicioFiltro').AsString;

    if sParamPrefijo <> '' then
       sParamPrefijo := sParamPrefijo + '.';

    if cadena = '' then
       result := '';
    while cadena <> '' do
    begin
         num := pos(',',cadena);
         if num > 0 then
         begin
            if result = '' then
              result := result + ' and ('+sParamPrefijo+'iPeriodo = ' + copy(cadena,1,num-1)
            else
              result := result + ' or '+sParamPrefijo+'iPeriodo = ' + copy(cadena,1,num-1);
            cadena := copy(cadena, num + 1, length(cadena));
         end
         else
         begin
            if result = '' then
               result := result + ' and '+sParamPrefijo+'iPeriodo = ' + cadena
            else
               result := result + ' or '+sParamPrefijo+'iPeriodo = ' + cadena + ' )';
            cadena := '';
         end;
    end;
end;

procedure EliminarArchivo(sDirArchivo:String);
begin
        if FileExists(sDirArchivo) then
          DeleteFile(sDirArchivo);
end;

procedure kardex_almacen(sParamMensaje: string; sOrigen: string);
begin
    {Validacion de requisiciones, ordenes de compra, recepcion de materiales y salidas de materiales.}
    connection.zUCommand.Active := False;
    connection.zUCommand.SQL.Clear;
    connection.zuCommand.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
      'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)');
    connection.zUCommand.Params.ParamByName('Contrato').AsString    := Global_Contrato;
    connection.zUCommand.Params.ParamByName('Usuario').AsString     := Global_Usuario;
    connection.zUCommand.Params.ParamByName('Fecha').AsDate         := Date;
    connection.zUCommand.Params.ParamByName('Hora').AsString        := FormatDateTime('hh:mm:ss.zzz', Now);
    connection.zUCommand.Params.ParamByName('Descripcion').AsString := sParamMensaje ;
    connection.ZUCommand.Params.ParamByName('Origen').AsString      := sOrigen;
    connection.zUCommand.ExecSQL();
end;

procedure CargarProgramadeTrabajo(sParamContrato, sParamFolio, sParamConvenio, sParamTipo, sParamWbsAnt, sParamWbs,
                                  sParamWbsContrato, sParamActividad, sParamItem, sParamDescripcion :string;
                                  dParamFInicio, dParamFFinal : tDate; sParamMedida : string;
                                  dParamVentaMN, dParamVentaDLL, dParamCantidad, dParamPonderado : double;
                                  iParamNivel :integer; sParamTipoA, sParamAnexo, sParamActAnt : string );
var
   sSql : string;
begin

      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      sSQL :='INSERT INTO actividadesxorden ( sContrato , sNumeroOrden, sIdConvenio, sTipoActividad, sWbsAnterior, ' +
             'sWbs, sNumeroActividad, iItemOrden , mDescripcion, dFechaInicio, dDuracion, dFechaFinal, ' +
             'dVentaMN, dVentaDLL, sMedida, dCantidad, dPonderado, iColor, iNivel, ' +
             'sTipoAnexo, sWbsContrato, sAnexo, sActividadAnterior ) ' +
             'VALUES (:contrato, :orden, :convenio, :tipo, :anterior, :wbs, :actividad, :Item, :Descripcion, ' +
             ':Inicio, :Duracion, :Final, :MN, :DLL, :Medida, :CantidadAnexo, :Ponderado, :color, ' +
             ':Nivel, :TipoA, :WbsContrato, :Anexo, :ActividadAnterior)';
      connection.zCommand.SQL.Add(sSQL);
      Connection.zCommand.Params.ParamByName('contrato').AsString       := sParamContrato;
      Connection.zCommand.Params.ParamByName('orden').AsString          := sParamFolio;
      Connection.zCommand.Params.ParamByName('convenio').AsString       := sParamConvenio;
      if sParamTipo = 'Paquete' then
        Connection.zCommand.Params.ParamByName('tipo').AsString         := sParamTipo
      else
        Connection.zCommand.Params.ParamByName('tipo').AsString         := 'Actividad';
      Connection.zCommand.Params.ParamByName('anterior').AsString       := Trim(sParamWbsAnt);
      if Trim(sParamWbsAnt) <> '' then
        Connection.zCommand.Params.ParamByName('wbs').AsString          := sParamWbs
      else
        Connection.zCommand.Params.ParamByName('wbs').AsString          := Trim(sParamActividad);
      Connection.zCommand.Params.ParamByName('WbsContrato').AsString    := sParamWbsContrato;
      Connection.zCommand.Params.ParamByName('actividad').AsString      := Trim(sParamActividad);
      Connection.zCommand.Params.ParamByName('Item').Asstring           := sParamItem;
      Connection.zCommand.Params.ParamByName('Descripcion').AsMemo      := Trim(sParamDescripcion);
      Connection.zCommand.Params.ParamByName('Inicio').AsDate           := dParamFInicio;
      Connection.zCommand.Params.ParamByName('Duracion').AsInteger      := DaysBetween(dParamFInicio,dParamFFinal) + 1;
      Connection.zCommand.Params.ParamByName('Final').AsDate            := dParamFFinal;
      Connection.zCommand.Params.ParamByName('MN').AsFloat              := dParamVentaMN;
      Connection.zCommand.Params.ParamByName('DLL').AsFloat             := dParamVentaDLL;
      Connection.zCommand.Params.ParamByName('Medida').AsString          := Trim(sParamMedida);
      Connection.zCommand.Params.ParamByName('CantidadAnexo').AsFloat    := dParamCantidad;
      Connection.zCommand.Params.ParamByName('Ponderado').AsFloat        := dParamPonderado;
      if sParamTipo = 'Paquete' then
        Connection.zCommand.Params.ParamByName('Color').AsInteger        := 12
      else
        Connection.zCommand.Params.ParamByName('Color').AsInteger        := 0;
      Connection.zCommand.Params.ParamByName('Nivel').AsInteger          := iParamNivel;
      Connection.zCommand.Params.ParamByName('TipoA').AsString           := sParamTipoA;
      Connection.zCommand.Params.ParamByName('Anexo').AsString           := sParamAnexo;
      Connection.zCommand.Params.ParamByName('ActividadAnterior').AsString  := sParamActAnt;
      connection.zCommand.ExecSQL;
end;

procedure CreaPlazo(sParamContrato, sParamConvenio, sParamFolio: String; dParamFInicio, dParamFFinal :tDate);
begin
     try
        //Aquí insertamos el convenio 1 en automático en repogramaciones del contrato
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('insert into convenios (sContrato, sNumeroOrden, sIdConvenio, sDescripcion, dFecha, dFechaInicio, dFechaFinal, mComentarios) '+
                                    'values (:contrato, :orden, :convenio, :descripcion, :Fecha, :fechaI, :fechaF,:comentario)');
        Connection.zCommand.Params.ParamByName('Contrato').AsString  := sParamContrato;
        Connection.zCommand.Params.ParamByName('Convenio').AsString  := sParamConvenio;
        Connection.zCommand.Params.ParamByName('Orden').AsString     := sParamFolio;
        Connection.zCommand.Params.ParamByName('descripcion').AsString := sParamFolio +' PLAZO - 0'+ sParamConvenio;
        Connection.zCommand.Params.ParamByName('fecha').AsDate         := Now();
        Connection.zCommand.Params.ParamByName('fechaI').AsDate        := dParamFInicio;
        Connection.zCommand.Params.ParamByName('fechaF').AsDate        := dParamFFinal;
        Connection.zCommand.Params.ParamByName('comentario').AsString  := 'PLAZO INICIAL';
        connection.zCommand.ExecSQL();

      Except
      end;

end;

procedure Ponderar(sParamTabla, sParamConvenio, sParamFolioProg: string; BarraProgreso : TcxProgressBar);
var
  dMontoContratoMN: Currency;
  dMontoContratoDLL: Currency;
  dPonderadoAjuste,
    Difer, Ponderado,
    decPonderado, Suma: Extended;
  sQlCadenaFolioProg, sQlCantidad : string;
begin
     if sParamFolioProg <> '' then
     begin
        sQlCadenaFolioProg := 'and sNumeroOrden =:Orden ';
        sQlCantidad := 'dCantidad';
     end
     else
     begin
        sQlCadenaFolioProg := 'and :Orden =:Orden';
        sQlCantidad := 'dCantidadAnexo';
     end;

      //Inicia proceso de estructura del proyecto ...
      // Que ponderados se calcularan ?
      // Sumo todos las partidas anexo que tengan en lCalculo <> Si



      Connection.zCommand.Active := False;
      connection.zCommand.Filtered := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('update '+sParamTabla+' SET dPonderado = 0 ' +
        'Where sContrato = :Contrato And sIdConvenio = :Convenio '+ sQlCadenaFolioProg);
      connection.zCommand.Params.ParamByName('Contrato').asString := global_contrato;
      connection.zCommand.Params.ParamByName('Convenio').asString := sParamConvenio;
      connection.zCommand.Params.ParamByName('orden').AsString    := sParamFolioProg;
      connection.zCommand.ExecSQL;

      BarraProgresoAvance(BarraProgreso, 0,100,5);
      dPonderadoAjuste := 100;

      // Actualizacion de Costos ....
      dMontoContrato := 0;
      Connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('Select sum('+sQlCantidad+' * dVentaMN) as dMontoMN From '+sParamTabla+
        ' Where sContrato = :Contrato '+sQlCadenaFolioProg+' And sIdConvenio = :Convenio And sTipoActividad = "Actividad" ' +
        ' and lCalculo="Si" group by sContrato');
      Connection.QryBusca.Params.ParamByName('Contrato').AsString := global_contrato;
      Connection.QryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
      Connection.QryBusca.Params.ParamByName('Orden').AsString    := sParamFolioProg;
      Connection.QryBusca.Open;

      if Connection.QryBusca.RecordCount > 0 then
         dMontoContratoMN := Connection.QryBusca.FieldValues['dMontoMN'];

      if connection.uconfiguracion.FieldValues['lCalculoPonderado'] = 'Financiero' then
      begin
          {$REGION 'Ponderado Financiero'}
          if dMontoContratoMN > 0 then
          begin
            connection.zCommand.Active := False;
            connection.zCommand.Filtered := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('update '+sParamTabla+' SET dPonderado = ((('+sQlCantidad+' * dVentaMN) / :montocontrato) * :miMaximoPonderado) ' +
              'Where sContrato = :Contrato '+sQlCadenaFolioProg+' And sIdConvenio = :Convenio And sTipoActividad = "Actividad" and '+sQlCantidad+' <> 0 ' +
              'and lCalculo="Si"');
            connection.zcommand.params.ParamByName('Contrato').AsString := global_contrato;
            connection.zcommand.params.ParamByName('Convenio').AsString := sParamConvenio;
            connection.zcommand.params.ParamByName('Orden').AsString    := sParamFolioProg;
            connection.zcommand.params.ParamByName('montocontrato').AsFloat     := dMontoContratoMN;
            connection.zcommand.params.ParamByName('miMaximoPonderado').AsFloat := dPonderadoAjuste;
            connection.zCommand.ExecSQL;
          end;
          BarraProgresoAvance(BarraProgreso, 10,00,55);
          {$ENDREGION}
      end
      else
        if connection.uconfiguracion.FieldValues['lCalculoPonderado'] = 'Duracion' then
        begin
           {$REGION 'Ponderado Tiempo'}
            //Calculo duración del programa ...
            Connection.QryBusca.Active := False;
            Connection.QryBusca.Filtered := False;
            Connection.QryBusca.SQL.Clear;
            Connection.QryBusca.SQL.Add('Select sum(dDuracion) as dDuracionTotal From  '+sParamTabla+
              ' Where sContrato = :Contrato '+sQlCadenaFolioProg+' And sIdConvenio = :Convenio And sTipoActividad = "Actividad" ' +
              ' and lcalculo="Si" group by sContrato ');
            Connection.QryBusca.Params.ParamByName('Contrato').AsString := global_contrato;
            Connection.QryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
            Connection.QryBusca.Params.ParamByName('Orden').AsString    := sParamFolioProg;
            Connection.QryBusca.Open;

            if connection.QryBusca.RecordCount > 0 then
            begin
              connection.zCommand.Active := False;
              connection.zCommand.Filtered := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Text := 'select * from '+sParamTabla+' where sContrato = :Contrato And sIdConvenio = :Convenio '+sQlCadenaFolioProg+' And sTipoActividad = "Actividad" and dDuracion <> 0 ' +
                'and lCalculo="Si" order by CONVERT(SUBSTRING(iItemOrden, 6), SIGNED INTEGER)';
              connection.zcommand.params.ParamByName('Contrato').AsString := global_contrato;
              connection.zcommand.params.ParamByName('Convenio').AsString := sParamConvenio;
              connection.zcommand.params.ParamByName('Orden').AsString    := sParamFolioProg;
              connection.zCommand.Open;

              Difer := 0; // Diferencia para ajuste entre partidas
              Ponderado := 0; // Almacenamiento de ponderado total calculado
              Suma := 0;
              while not Connection.zCommand.Eof do
              begin
                Ponderado := (Connection.zCommand.FieldByName('dDuracion').AsFloat / Connection.QryBusca.FieldValues['dDuracionTotal']);
                Ponderado := Ponderado + Difer; // Sumar la diferencia anterior para ajuste automático
                decPonderado := Trunc(Ponderado * 1000000) / 1000000;
                Difer := Ponderado - decPonderado;
                decPonderado := decPonderado * dPonderadoAjuste;

                Suma := Suma + decPonderado;

                if (Connection.zCommand.RecNo = Connection.zCommand.RecordCount) and (Suma <> dPonderadoAjuste) then
                  decPonderado := decPonderado + (dPonderadoAjuste - Suma);

                Connection.zCommand.Edit;
                Connection.zCommand.FieldByName('dPonderado').AsFloat := decPonderado;
                Connection.zCommand.Post;

                BarraProgresoAvance(BarraProgreso, 0,100,55/Connection.zCommand.RecordCount);
                Connection.zCommand.Next;
              end;
            end;
          {$ENDREGION}
      end;

      {$REGION 'Actualiza Fechas'}
       ActualizaFechasPaquetes(global_contrato, sParamConvenio, sParamFolioProg, sParamTabla, sQlCadenaFolioProg, sQlCantidad, 30, BarraProgreso);
      {$ENDREGION}

      dMontoContratoDLL := 0;
      Connection.qryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select sum('+sQlCantidad+' * dVentaDLL) as dMontoDLL From  '+sParamTabla+
        ' Where sContrato = :Contrato '+sQlCadenaFolioProg+' And sIdConvenio = :Convenio And sTipoActividad = "Actividad" ' +
        ' and lcalculo="Si" group by sContrato');
      Connection.qryBusca.Params.ParamByName('Contrato').AsString := global_contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
      Connection.qryBusca.Params.ParamByName('Orden').AsString    := sParamFolioProg;
      Connection.qryBusca.Open;

      if Connection.qryBusca.RecordCount > 0 then
        dMontoContratoDLL := Connection.qryBusca.FieldValues['dMontoDLL'];

      BarraProgresoAvance(BarraProgreso,0,100,5);

      Connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('Select dFechaInicio, dFechaFinal From ' +sParamTabla+
        ' Where sContrato = :Contrato '+sQlCadenaFolioProg+' And sIdConvenio = :Convenio And iNivel = 0');
      Connection.QryBusca.Params.ParamByName('Contrato').AsString := global_contrato;
      Connection.QryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
      Connection.QryBusca.Params.ParamByName('Orden').AsString    := sParamFolioProg;
      Connection.QryBusca.Open;

      if Connection.QryBusca.RecordCount > 0 then
      begin
         //Actualizo el convenio
        connection.zCommand.Active := False;
        connection.zCommand.Filtered := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('Update convenios SET dFechaInicio = :Inicio, dFechaFinal = :Final, dMontoMN = :MontoMN, dMontoDLL = :MontoDLL ' +
          ' Where sContrato = :Contrato '+sQlCadenaFolioProg+' And sIdConvenio = :Convenio');
        connection.zcommand.params.ParamByName('Contrato').AsString := global_contrato;
        connection.zcommand.params.ParamByName('Convenio').AsString := sParamConvenio;
        connection.zcommand.params.ParamByName('Orden').AsString    := sParamFolioProg;
        connection.zcommand.params.ParamByName('Inicio').AsDate     := Connection.QryBusca.FieldValues['dFechaInicio'];
        connection.zcommand.params.ParamByName('Final').AsDate      := Connection.QryBusca.FieldValues['dFechaFinal'];
        connection.zcommand.params.ParamByName('MontoMN').AsFloat   := dMontoContratoMN;
        connection.zcommand.params.ParamByName('MontoDLL').AsFloat  := dMontoContratoDLL;
        Connection.zCommand.ExecSQL;

        BarraProgresoAvance(BarraProgreso, 0,100,5);
      end;
end;

procedure BarraProgresoAvance(Barra : TcxProgressBar; dParamMin, dParamMax, dParamAvance :Extended);
begin
    if Barra.Position = dParamMin then
    begin
       Barra.Position := dParamMin;
       Barra.Properties.Max := dParamMax;
    end;
    Barra.Position := Barra.Position + dParamAvance;
    Barra.Refresh;
end;

procedure BarraMostrar(lVisible :boolean; Barra : TcxProgressBar; lEtiqueta :TcxLabel);
begin
    if lVisible then
    begin
       lEtiqueta.Visible := True;
       Barra.Visible     := True;
       lEtiqueta.Refresh;
       Barra.Position := 0;
    end
    else
    begin
       lEtiqueta.Visible := False;
       Barra.Visible     := False;
       lEtiqueta.Refresh;
    end;
end;

procedure DistribuyeActividades(sParamContrato, sParamFolio, sParamPlazo : string; BarraProgreso : TcxProgressBar );
Var
    iOrden : Byte ;
    dMontoContrato : Currency ;
    dFechaInicial   : tDate ;
    QryActividadesxOrden : TZReadOnlyQuery ;
    QryDistribucion       : TZReadOnlyQuery ;

    sWbs,
    sNumeroActividad     : String;
    dHorasTotales   : Real ;
    dHorasDiarias   : Real ;
    dDistribuido    : Currency ;
    dAjuste         : Currency ;
    dFactorDiario,
    dFactorReal     : Extended ;
    dCantidadEntera : Currency  ;
    txtAux          : String ;

    dPonderadoGlobal : Currency ;
    dPonderadoDia    : Currency ;
    dPonderadoAjuste,
    dPonderadoContrato : currency ;
    lCalculoNormal     : Boolean ;
    lContinua        : Boolean;

    iPosicion: Integer ;
    iPaquete : Integer ;
    sPaquete : String ;
    dPaquete : Extended ;
    dCantidad,
    dDiferencia : Extended ;
    sRaiz     : String ;
    lDistribuyeContinuo : boolean;
begin

    lDistribuyeContinuo := True;
    lCalculoNormal      := True;
          // Distribucion del Programa de Trabajo
          // Inicializo Borrando toda la distribucion anterior
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'DELETE FROM distribuciondeactividades Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden') ;
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
          connection.zCommand.Params.ParamByName('Contrato').Value    := Global_Contrato ;
          connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
          connection.zCommand.Params.ParamByName('Convenio').Value    := sParamPlazo ;
          connection.zCommand.Params.ParamByName('Orden').DataType    := ftString ;
          connection.zCommand.Params.ParamByName('Orden').Value       := sParamFolio;
          connection.zCommand.ExecSQL ;

          QryActividadesxOrden := tzReadOnlyQuery.Create(nil);
          QryActividadesxOrden.Connection := connection.zconnection ;
          If lCalculoNormal Then
          Begin
              // Distribucion de Actividades (Paquete, Partida)
              QryActividadesxOrden.Active := False ;
              QryActividadesxOrden.SQL.Clear ;
              QryActividadesxOrden.SQL.Add('Select sWbs, sNumeroActividad, mDescripcion, dCantidad, sMedida, dFechaInicio, dFechaFinal, sTipoAnexo, lAfectaSuspension, '+
                                           '(select dFechaPeriodo_inicio from convenios where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden = :Orden) as dFechaInicioSuspension, '+
                                           '(select dFechaPeriodo_Fin from convenios where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden = :Orden) as dFechaFinSuspension, '+
                                           '(select lAplicaPeriodo from convenios where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden = :Orden) as lAplicaPeriodo '+
                                           'from actividadesxorden ' +
                                           'where sContrato = :Contrato and sIdConvenio = :Convenio and sNumeroOrden = :Orden And ' +
                                           'sTipoActividad = "Actividad" and dCantidad > 0 order by iItemOrden') ;
              QryActividadesxOrden.Params.ParamByName('contrato').DataType := ftString ;
              QryActividadesxOrden.Params.ParamByName('contrato').Value := global_contrato ;
              QryActividadesxOrden.Params.ParamByName('convenio').DataType := ftString ;
              QryActividadesxOrden.Params.ParamByName('convenio').Value := sParamPlazo ;
              QryActividadesxOrden.Params.ParamByName('Orden').DataType := ftString ;
              QryActividadesxOrden.Params.ParamByName('Orden').Value := sParamFolio;
              QryActividadesxOrden.Open ;
              If QryActividadesxOrden.RecordCount > 0 then
              Begin
                  QryActividadesxOrden.First ;
                  While Not QryActividadesxOrden.Eof Do
                  Begin
                      sWbs := QryActividadesxOrden.FieldValues['sWbs'] ;
                      sNumeroActividad := QryActividadesxOrden.FieldValues['sNumeroActividad'] ;
                      dHorasTotales := 0 ;
                      if QryActividadesxOrden.FieldByName('lAfectaSuspension').AsString = 'Si' then
                      begin
                          if QryActividadesxOrden.FieldByName('lAplicaPeriodo').AsString = 'Si' then
                          begin
                              dHorasTotales := ifnJornadaTotal ( global_contrato, QryActividadesxOrden.FieldValues ['dFechaInicio'], QryActividadesxOrden.FieldValues ['dFechaInicioSuspension'] -1, BarraProgreso ) ;
                              dHorasTotales := dHorasTotales + ifnJornadaTotal ( global_contrato, QryActividadesxOrden.FieldValues ['dFechaFinSuspension']+1, QryActividadesxOrden.FieldValues ['dFechaFinal'], BarraProgreso ) ;
                          end;
                      end
                      else
                          dHorasTotales := ifnJornadaTotal ( global_contrato, QryActividadesxOrden.FieldValues ['dFechaInicio'], QryActividadesxOrden.FieldValues ['dFechaFinal'], BarraProgreso ) ;
                      dFechaInicial := QryActividadesxOrden.FieldValues ['dFechaInicio'] ;

                      If lDistribuyeContinuo then
                      Begin
                          dDistribuido := 0 ;
                          dDiferencia := 0;
                          While dFechaInicial <= QryActividadesxOrden.FieldValues['dFechaFinal'] Do
                          Begin
                              lContinua := False;
                              if QryActividadesxOrden.FieldByName('lAfectaSuspension').AsString = 'Si' then
                              begin
                                  if QryActividadesxOrden.FieldByName('lAplicaPeriodo').AsString = 'Si' then
                                  begin
                                      if (dFechaInicial >= QryActividadesxOrden.FieldByName('dFechaInicioSuspension').AsDateTime) and (QryActividadesxOrden.FieldByName('dFechaFinSuspension').AsDateTime >= dFechaInicial) then
                                         lContinua := False
                                      else
                                         lContinua := True;
                                  end;
                              end
                              else
                                 lContinua := True;

                              if lContinua then
                              begin
                                  dHorasDiarias := ifnJornadaDia ( global_contrato, dFechaInicial, BarraProgreso ) ;
                                  If dHorasDiarias > 0 Then
                                  Begin

                                      dFactorReal   := ((dHorasDiarias / dHorasTotales) * QryActividadesxOrden.FieldByName('dCantidad').AsFloat) + dDiferencia;
                                      dFactorDiario := dFactorReal;
                                      dFactorDiario := Trunc(dFactorDiario * 10000) / 10000;
                                      dDiferencia   := dFactorReal - dFactorDiario;

                                      Try
                                          connection.zCommand.Active := False ;
                                          connection.zCommand.SQL.Clear ;
                                          connection.zCommand.SQL.Add ( 'INSERT INTO distribuciondeactividades ( sContrato , sIdConvenio, sNumeroOrden, dIdFecha, sWbs, sNumeroActividad, dCantidad, sTipoAnexo ) ' +
                                                                        ' VALUES (:contrato, :convenio, :orden, :fecha, :Wbs, :Actividad, :cantidad, :TipoAnexo)') ;
                                          connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                                          connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('convenio').value := sParamPlazo ;
                                          connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('orden').value := sParamFolio;
                                          connection.zCommand.Params.ParamByName('Wbs').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('Wbs').value := sWbs ;
                                          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('Actividad').value := sNumeroActividad ;
                                          connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                          connection.zCommand.Params.ParamByName('fecha').value := dFechaInicial ;
                                          connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat ;
                                          connection.zCommand.Params.ParamByName('cantidad').value := dFactorDiario ;
                                          connection.zCommand.Params.ParamByName('TipoAnexo').AsString :=  QryActividadesxOrden.FieldByName('sTipoAnexo').AsString;
                                          connection.zCommand.ExecSQL ;
                                          dDistribuido := dDistribuido + dFactorDiario ;
                                      Except
                                        on e : exception do begin
                                        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Programa de Trabajo', 'Al actualizar la destribución', 0);
                                        end;
                                      End ;
                                  End ;
                              end;
                              dFechaInicial := dFechaInicial + 1 ;
                          End ;

                          dAjuste := 0 ;
                          If dDistribuido > QryActividadesxOrden.FieldValues ['dCantidad'] then
                              dAjuste := ( dDistribuido - QryActividadesxOrden.FieldValues ['dCantidad'] ) * -1
                          Else
                              If dDistribuido < QryActividadesxOrden.FieldValues ['dCantidad'] then
                                  dAjuste := QryActividadesxOrden.FieldValues ['dCantidad'] -  dDistribuido ;

                          If dAjuste <> 0 then
                          Begin
                               connection.qryBusca.Active := False ;
                               connection.qryBusca.SQL.Clear ;
                               connection.qryBusca.SQL.Add('Select dIdFecha, dCantidad from distribuciondeactividades Where sContrato = :contrato And sIdConvenio = :Convenio and ' +
                                                           'sNumeroOrden = :Orden And sWbs = :wbs And sNumeroActividad = :actividad Order By dIdFecha DESC') ;
                               connection.qryBusca.Params.ParamByName('contrato').DataType := ftString ;
                               connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato ;
                               connection.qryBusca.Params.ParamByName('convenio').DataType := ftString ;
                               connection.qryBusca.Params.ParamByName('convenio').Value := sParamPlazo ;
                               connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
                               connection.qryBusca.Params.ParamByName('Orden').Value := sParamFolio;
                               connection.qryBusca.Params.ParamByName('wbs').DataType := ftString ;
                               connection.qryBusca.Params.ParamByName('wbs').Value := sWbs ;
                               connection.qryBusca.Params.ParamByName('actividad').DataType := ftString ;
                               connection.qryBusca.Params.ParamByName('actividad').Value := sNumeroActividad ;
                               connection.qryBusca.Open ;
                               If connection.qryBusca.RecordCount > 0 Then
                               Begin
                                    Try
                                        connection.zCommand.Active := False ;
                                        connection.zCommand.SQL.Clear ;
                                        connection.zCommand.SQL.Add ( 'UPDATE distribuciondeactividades SET dCantidad = :Cantidad where sContrato = :contrato And ' +
                                                                      'dIdFecha = :fecha And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad') ;
                                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                        connection.zCommand.Params.ParamByName('contrato').Value := global_contrato ;
                                        connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                        connection.zCommand.Params.ParamByName('convenio').Value := sParamPlazo;
                                        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                        connection.zCommand.Params.ParamByName('fecha').Value := Connection.qryBusca.FieldValues ['dIdFecha'] ;
                                        connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                                        connection.zCommand.Params.ParamByName('Orden').Value := sParamFolio;
                                        connection.zCommand.Params.ParamByName('wbs').DataType := ftString ;
                                        connection.zCommand.Params.ParamByName('wbs').Value := sWbs ;
                                        connection.zCommand.Params.ParamByName('actividad').DataType := ftString ;
                                        connection.zCommand.Params.ParamByName('actividad').Value := sNumeroActividad ;
                                        connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat ;
                                        connection.zCommand.Params.ParamByName('Cantidad').value := Connection.qryBusca.FieldValues ['dCantidad'] + dAjuste ;
                                        connection.zCommand.ExecSQL ;
                                    Except
                                        MessageDlg('Ocurrio un error al Actualizar la Distribución de la Partida No. ' + QryActividadesxOrden.FieldValues ['sNumeroActividad'] , mtInformation, [mbOk], 0)
                                    End
                               End
                          End
                      End
                      Else
                      Begin
                          dDistribuido := 0 ;
                          dCantidadEntera := 0 ;
                          While dFechaInicial <= QryActividadesxOrden.FieldValues ['dFechaFinal'] Do
                          Begin
                              dHorasDiarias := ifnJornadaDia ( global_contrato, dFechaInicial, BarraProgreso ) ;
                              If dHorasDiarias > 0 Then
                              Begin
                                  dFactorDiario := ( dHorasDiarias / dHorasTotales ) * QryActividadesxOrden.FieldValues ['dCantidad'] ;
                                  Str(dFactorDiario:8:8, txtAux ) ;
                                  txtAux := Copy ( txtAux , 1 , Pos ( '.', txtAux ) + 5 ) ;
                                  try
                                      dFactorDiario := rfnDecimal(txtAux) ;
                                  except
                                      on e : exception do begin
                                          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Programa de Trabajo', 'Al iniciar proceso, al calcular el factor diario', 0);
                                      end;
                                  end;
                                  dCantidadEntera := dCantidadEntera + dFactorDiario ;
                                  If dFechaInicial = QryActividadesxOrden.FieldValues ['dFechaFinal'] then
                                  Begin
                                      Try
                                          connection.zCommand.Active := False ;
                                          connection.zCommand.SQL.Clear ;
                                          connection.zCommand.SQL.Add ( 'INSERT INTO distribuciondeactividades ( sContrato , sIdConvenio, sNumeroOrden, dIdFecha, sWbs, sNumeroActividad, dCantidad, sTipoAnexo ) ' +
                                                                        ' VALUES (:contrato, :convenio, :orden, :fecha, :Wbs, :Actividad, :cantidad, :TipoAnexo)') ;
                                          connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                                          connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('convenio').value := sParamPlazo;
                                          connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('orden').value := sParamFolio;
                                          connection.zCommand.Params.ParamByName('Wbs').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('Wbs').value := sWbs ;
                                          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('Actividad').value := sNumeroActividad ;
                                          connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                          connection.zCommand.Params.ParamByName('fecha').value := dFechaInicial ;
                                          connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat ;
                                          connection.zCommand.Params.ParamByName('cantidad').value := dCantidadEntera ;
                                          connection.zCommand.Params.ParamByName('TipoAnexo').AsString :=  QryActividadesxOrden.FieldByName('sTipoAnexo').AsString;
                                          connection.zCommand.ExecSQL ;
                                          dDistribuido := dDistribuido + dCantidadEntera ;
                                      Except
                                        on e : exception do begin
                                        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Programa de Trabajo', 'Al actualizar registro', 0);
                                        end;
                                      End ;
                                  end
                                  Else
                                      If Trunc(dCantidadEntera) > 0 then
                                      Begin
                                          Try
                                              connection.zCommand.Active := False ;
                                              connection.zCommand.SQL.Clear ;
                                              connection.zCommand.SQL.Add ( 'INSERT INTO distribuciondeactividades ( sContrato , sIdConvenio, sNumeroOrden, dIdFecha, sWbs, sNumeroActividad, dCantidad, sTipoAnexo ) ' +
                                                                            ' VALUES (:contrato, :convenio, :orden, :fecha, :Wbs, :Actividad, :cantidad, :TipoAnexo)') ;
                                              connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                              connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                                              connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                              connection.zCommand.Params.ParamByName('convenio').value := sParamPlazo;
                                              connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                                              connection.zCommand.Params.ParamByName('orden').value := sParamFolio;
                                              connection.zCommand.Params.ParamByName('Wbs').DataType := ftString ;
                                              connection.zCommand.Params.ParamByName('Wbs').value := sWbs ;
                                              connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                                              connection.zCommand.Params.ParamByName('Actividad').value := sNumeroActividad ;
                                              connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                              connection.zCommand.Params.ParamByName('fecha').value := dFechaInicial ;
                                              connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat ;
                                              connection.zCommand.Params.ParamByName('cantidad').value := Trunc(dCantidadEntera) ;
                                              connection.zCommand.Params.ParamByName('TipoAnexo').AsString :=  QryActividadesxOrden.FieldByName('sTipoAnexo').AsString;
                                              connection.zCommand.ExecSQL ;
                                              dDistribuido := dDistribuido + Trunc(dCantidadEntera) ;
                                              dCantidadEntera := dCantidadEntera - Trunc(dCantidadEntera) ;
                                          Except
                                              MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
                                          End ;
                                      End
                              End ;
                              dFechaInicial := dFechaInicial + + 1 ;
                          End ;

                          dAjuste := 0 ;
                          If dDistribuido > QryActividadesxOrden.FieldValues ['dCantidad'] then
                              dAjuste := ( dDistribuido - QryActividadesxOrden.FieldValues ['dCantidad'] ) * -1
                          Else
                              If dDistribuido < QryActividadesxOrden.FieldValues ['dCantidad'] then
                                  dAjuste := QryActividadesxOrden.FieldValues ['dCantidad'] - dDistribuido ;

                          If dAjuste <> 0 then
                          Begin
                              dFechaInicial := QryActividadesxOrden.FieldValues ['dFechaFinal'] ;
                              connection.qryBusca.Active := False ;
                              connection.qryBusca.SQL.Clear ;
                              connection.qryBusca.SQL.Add('Select dIdFecha, dCantidad from distribuciondeactividades Where sContrato = :contrato And sIdConvenio = :Convenio And ' +
                                                           'sNumeroOrden = :Orden And sWbs = :wbs And sNumeroActividad = :actividad Order By dIdFecha Desc') ;
                              connection.qryBusca.Params.ParamByName('contrato').DataType := ftString ;
                              connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato ;
                              connection.qryBusca.Params.ParamByName('convenio').DataType := ftString ;
                              connection.qryBusca.Params.ParamByName('convenio').Value := sParamPlazo ;
                              connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
                              connection.qryBusca.Params.ParamByName('Orden').Value := sParamFolio;
                              connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString ;
                              connection.qryBusca.Params.ParamByName('Wbs').Value := sWbs ;
                              connection.qryBusca.Params.ParamByName('actividad').DataType := ftString ;
                              connection.qryBusca.Params.ParamByName('actividad').Value := sNumeroActividad ;
                              connection.qryBusca.Open ;
                              If connection.qryBusca.RecordCount > 0 Then
                              Begin
                                  Try
                                       connection.zCommand.Active := False ;
                                       connection.zCommand.SQL.Clear ;
                                       connection.zCommand.SQL.Add ( 'UPDATE distribuciondeactividades SET dCantidad = :Cantidad where sContrato = :contrato And ' +
                                                                     'dIdFecha = :fecha And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad') ;
                                       connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                       connection.zCommand.Params.ParamByName('contrato').Value := global_contrato ;
                                       connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                       connection.zCommand.Params.ParamByName('convenio').Value := sParamPlazo;
                                       connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                       connection.zCommand.Params.ParamByName('fecha').Value := Connection.qryBusca.FieldValues ['dIdFecha'] ;
                                       connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                                       connection.zCommand.Params.ParamByName('Orden').Value := sParamFolio;
                                       connection.zCommand.Params.ParamByName('wbs').DataType := ftString ;
                                       connection.zCommand.Params.ParamByName('wbs').Value := sWbs ;
                                       connection.zCommand.Params.ParamByName('actividad').DataType := ftString ;
                                       connection.zCommand.Params.ParamByName('actividad').Value := sNumeroActividad ;
                                       connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat ;
                                       connection.zCommand.Params.ParamByName('Cantidad').value := Connection.qryBusca.FieldValues ['dCantidad'] + dAjuste ;
                                       connection.zCommand.ExecSQL ;
                                   Except
                                        MessageDlg('Ocurrio un error al Actualizar la Distribución de la Partida No. ' + QryActividadesxOrden.FieldValues ['sNumeroActividad'] , mtInformation, [mbOk], 0)
                                   End
                               End
                          End
                      End ;
                      QryActividadesxOrden.Next;
                      BarraProgresoAvance(BarraProgreso, 0,100,100/QryActividadesxOrden.RecordCount);
                  End
              End
          End;
          QryActividadesxOrden.Destroy ;
end;

procedure DistribuyePrograma(sParamContrato, sParamFolio, sParamPlazo : string; BarraProgreso : TcxProgressBar );
var
    QryDistribucion  : TZReadOnlyQuery ;
    dPonderadoGlobal : Currency ;
    dPonderadoDia    : Currency ;
    dFechaInicial    : tDate;
begin

           QryDistribucion := tzReadOnlyQuery.Create(nil);
           QryDistribucion.Connection := connection.zconnection ;

           Connection.qryBusca2.Active := False ;
           Connection.qryBusca2.SQL.Clear ;
           Connection.qryBusca2.SQL.Add('Select min(dFechaInicio) as dFIProgramado, max(dFechaFinal) as dFFProgramado from actividadesxorden ' +
                                        'Where sContrato = :Contrato And sNumeroOrden = :orden and sIdConvenio = :convenio and sTipoActividad = "Actividad"') ;
           Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
           Connection.qryBusca2.Params.ParamByName('Contrato').Value := sParamContrato;
           Connection.qryBusca2.Params.ParamByName('orden').DataType := ftString ;
           Connection.qryBusca2.Params.ParamByName('orden').Value := sParamFolio;
           Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
           Connection.qryBusca2.Params.ParamByName('Convenio').Value := sParamPlazo;
           Connection.qryBusca2.Open ;


           connection.zCommand.Active := False ;
           connection.zCommand.SQL.Clear ;
           connection.zCommand.SQL.Add ( 'delete from avancesglobales WHERE sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden ');
           connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
           connection.zCommand.Params.ParamByName('Contrato').Value := sParamContrato;
           connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
           connection.zCommand.Params.ParamByName('Convenio').Value := sParamPlazo;
           connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
           connection.zCommand.Params.ParamByName('Orden').Value := sParamFolio;
           connection.zCommand.ExecSQL ;

           dFechaInicial := Connection.qryBusca2.FieldValues['dfiProgramado'] ;
           dPonderadoglobal := 0 ;
           While dFechaInicial <= Connection.qryBusca2.FieldValues['dffProgramado']  Do
           Begin
               QryDistribucion.Active := False ;
               QryDistribucion.SQL.Clear ;
               QryDistribucion.SQL.Add('Select SUM((d.dCantidad/a.dCantidad)* a.dPonderado) as dAvance from distribuciondeactividades d inner join actividadesxorden a on ' +
                                       '(d.sContrato = a.sContrato And d.sIdConvenio = a.sIdConvenio And d.sNumeroOrden = a.sNumeroOrden And d.sWbs = a.sWbs And d.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") Where ' +
                                       'd.sContrato = :contrato And d.sNumeroOrden = :Orden And d.sIdConvenio = :Convenio And d.dIdFecha = :fecha Group By d.dIdFecha') ;
               QryDistribucion.Params.ParamByName('contrato').DataType := ftString ;
               QryDistribucion.Params.ParamByName('contrato').Value := sParamContrato;
               QryDistribucion.Params.ParamByName('convenio').DataType := ftString ;
               QryDistribucion.Params.ParamByName('convenio').Value := sParamPlazo;
               QryDistribucion.Params.ParamByName('orden').DataType := ftString ;
               QryDistribucion.Params.ParamByName('orden').Value := sParamFolio;
               QryDistribucion.Params.ParamByName('fecha').DataType := ftDate ;
               QryDistribucion.Params.ParamByName('fecha').Value := dFechaInicial ;
               QryDistribucion.Open ;
               dPonderadoDia := 0 ;

               If QryDistribucion.RecordCount > 0 Then
                   dPonderadoDia := QryDistribucion.FieldValues['dAvance'] ;

               If dFechaInicial = Connection.qryBusca2.FieldValues['dffProgramado'] then
                  dPonderadoDia := (100 - dPonderadoGlobal);

               dPonderadoGlobal := dPonderadoGlobal + dPonderadoDia ;

               //Ajustes...
               connection.QryBusca.Active := False ;
               connection.QryBusca.SQL.Clear ;
               connection.QryBusca.SQL.Add('Select SUM((d.dCantidad/a.dCantidad)* a.dPonderado) as dAvance from distribuciondeactividades d inner join actividadesxorden a on ' +
                                           '(d.sContrato = a.sContrato And d.sIdConvenio = a.sIdConvenio And d.sNumeroOrden = a.sNumeroOrden And d.sWbs = a.sWbs And d.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") Where ' +
                                           'd.sContrato = :contrato And d.sNumeroOrden = :Orden And d.sIdConvenio = :Convenio And d.dIdFecha >:fecha Group By a.sContrato ') ;
               connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
               connection.QryBusca.Params.ParamByName('contrato').Value    := sParamContrato;
               connection.QryBusca.Params.ParamByName('convenio').DataType := ftString ;
               connection.QryBusca.Params.ParamByName('convenio').Value    := sParamPlazo;
               connection.QryBusca.Params.ParamByName('orden').DataType    := ftString ;
               connection.QryBusca.Params.ParamByName('orden').Value       := sParamFolio;
               connection.QryBusca.Params.ParamByName('fecha').DataType    := ftDate ;
               connection.QryBusca.Params.ParamByName('fecha').Value       := dFechaInicial ;
               connection.QryBusca.Open ;

               if connection.QryBusca.RecordCount > 0 then
                  if (dPonderadoGlobal + connection.QryBusca.FieldByName('dAvance').AsFloat) > 100 then
                      dPonderadoGlobal := dPonderadoGlobal - ((dPonderadoGlobal + connection.QryBusca.FieldByName('dAvance').AsFloat) - 100);

               connection.zCommand.Active := False ;
               connection.zCommand.SQL.Clear ;
               connection.zCommand.SQL.Add ( 'insert into avancesglobales values (:contrato, :convenio, :fecha, :orden, :ponderadodia, :ponderadoglobal, 0)') ;
               connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
               connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato ;
               connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
               connection.zCommand.Params.ParamByName('convenio').Value := sParamPlazo ;
               connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
               connection.zCommand.Params.ParamByName('fecha').Value := dFechaInicial ;
               connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
               connection.zCommand.Params.ParamByName('orden').Value := sParamFolio;
               connection.zCommand.Params.ParamByName('ponderadodia').DataType := ftFloat ;
               connection.zCommand.Params.ParamByName('ponderadodia').Value := dPonderadoDia ;
               connection.zCommand.Params.ParamByName('ponderadoglobal').DataType := ftFloat ;
               connection.zCommand.Params.ParamByName('ponderadoglobal').Value := dPonderadoglobal ;
               connection.zCommand.ExecSQL ;
               dFechaInicial := dFechaInicial + 1 ;
               BarraProgresoAvance(BarraProgreso, 0,100,100/(( Connection.qryBusca2.FieldValues['dffProgramado'] -  Connection.qryBusca2.FieldValues['dfiProgramado'])+1));
           End ;
          QryDistribucion.Destroy ;

end;

function AvanceFolio(sParamContrato, sParamFolio, sParamPlazo :string; dParamFecha :tDate) : double;
var
   dDiaSiguiente  : TDateTime;
   tdAvanceAnterior, tdAvanceAcumulado : double;
   QryAvances1, QryAvances2  : TZReadOnlyQuery ;
begin
    QryAvances1 := tzReadOnlyQuery.Create(nil);
    QryAvances1.Connection := connection.zconnection ;

    QryAvances2 := tzReadOnlyQuery.Create(nil);
    QryAvances2.Connection := connection.zconnection ;

    {Avances anteriores}
    dDiaSiguiente := dParamFecha;
    QryAvances1.SQL.Clear;
    QryAvances1.SQL.Text := 'SELECT ROUND(AvancesAnterioresPlazo("'+FormatDateTime('yyyy-mm-dd', dDiaSiguiente)+'", :Orden, :Folio, :Plazo), 4) AS dAvanceAnterior;';
    QryAvances1.ParamByName('Orden').AsString := sParamContrato;
    QryAvances1.ParamByName('Folio').AsString := sParamFolio;
    QryAvances1.ParamByName('Plazo').AsString := sParamPlazo;
    QryAvances1.Open;

    //Avances Acumulados
    dDiaSiguiente := IncDay(dDiaSiguiente);
    QryAvances2.SQL.Clear;
    QryAvances2.SQL.Text := 'SELECT ROUND(AvancesAnterioresPlazo("'+FormatDateTime('yyyy-mm-dd', dDiaSiguiente)+'", :Orden, :Folio, :Plazo), 4) AS dAvanceAcumulado;';
    QryAvances2.ParamByName('Orden').AsString := sParamContrato;
    QryAvances2.ParamByName('Folio').AsString := sParamFolio;
    QryAvances2.ParamByName('Plazo').AsString := sParamPlazo;
    QryAvances2.Open;

    result := QryAvances2.FieldByName('dAvanceAcumulado').AsFloat -  QryAvances1.FieldByName('dAvanceAnterior').AsFloat;

    QryAvances1.Destroy;
    QryAvances2.Destroy;
end;

procedure ActualizaTablaAvancesFolio(sParamContrato, sParamFolio, sParamPlazo, sParamTurno :string; dParamFecha :tDate; dParamAvance : double);
begin
   //Primero se elimina avance del dia
   connection.zCommand.Active := False ;
   connection.zCommand.SQL.Clear ;
   connection.zCommand.SQL.Add ( 'delete from avancesglobalesxorden where sContrato =:contrato and sIdconvenio =:Plazo and sNumeroOrden =:orden and sIdTurno =:Turno and dIdFecha =:Fecha ') ;
   connection.zCommand.Params.ParamByName('contrato').AsString := sParamContrato ;
   connection.zCommand.Params.ParamByName('Plazo').AsString    := sParamPlazo ;
   connection.zCommand.Params.ParamByName('fecha').AsDate      := dParamFecha ;
   connection.zCommand.Params.ParamByName('orden').AsString    := sParamFolio;
   connection.zCommand.Params.ParamByName('turno').AsString    := sParamTurno;
   connection.zCommand.ExecSQL ;

   //Ahora se inserta
   connection.zCommand.Active := False ;
   connection.zCommand.SQL.Clear ;
   connection.zCommand.SQL.Add ( 'insert into avancesglobalesxorden values (:contrato, :Plazo, :fecha, :orden, :turno, :avance, 0)') ;
   connection.zCommand.Params.ParamByName('contrato').AsString := sParamContrato ;
   connection.zCommand.Params.ParamByName('Plazo').AsString := sParamPlazo ;
   connection.zCommand.Params.ParamByName('fecha').AsDate      := dParamFecha ;
   connection.zCommand.Params.ParamByName('orden').AsString    := sParamFolio;
   connection.zCommand.Params.ParamByName('turno').AsString    := sParamTurno;
   connection.zCommand.Params.ParamByName('Avance').AsFloat    := dParamAvance;
   connection.zCommand.ExecSQL ;
end;

procedure procValidaDatosValidaAutoriza_CO(sParamContrato, sParamConvenio, sParamFolio, sParamTurno :string; dParamFecha :tDate;  sParamTabla, sTipo :string; tOrigen: TComponent );
var
    zqValida: tUniquery;
begin
    zqValida := tUniquery.create(nil);
    zqValida.Connection := Connection.uConnection;

    zqValida.Active := False;
    zqValida.SQL.Clear;
    if sTipo = 'Valida' then
    begin
        {$region 'Sqls'}
        if sParamTabla = 'reportediario' then
        begin
           zqValida.SQL.Add('Update reportediario set lStatus = "VALIDADO" '+
           'where sContrato =:Contrato and sIdConvenio =:Plazo and sNumeroOrden =:Folio and sIdTurno =:Turno and dIdFecha =:Fecha ');

          zqValida.ParamByName('Plazo').AsString := sParamConvenio;
          zqValida.ParamByName('Turno').AsString := sParamTurno;
          zqValida.ParamByName('Fecha').AsDate   := dParamFecha;
        end;

        if sParamTabla = 'estimaciones' then
        begin
           zqValida.SQL.Add('Update estimaciones set lStatus = "VALIDADO" '+
           'where sContrato =:Contrato and sNumeroOrden =:Folio and sNumeroGenerador =:Generador ');

           zqValida.ParamByName('Generador').AsString := sParamConvenio;
        end;
        {$endregion}
    end
    else
    begin
        {$region 'Sqls'}

        if sParamTabla = 'reportediario' then
        begin
           zqValida.SQL.Add('Update reportediario set lStatus = "PENDIENTE", sIdUsuarioValida = null, sTiempoAdicional = "00:00", sTiempoEfectivo = "00:00", sTiempoMuertoReal = "00:00" '+
           'where sContrato =:Contrato and sIdConvenio =:Plazo and sNumeroOrden =:Folio and sIdTurno =:Turno and dIdFecha =:Fecha ');

          zqValida.ParamByName('Plazo').AsString := sParamConvenio;
          zqValida.ParamByName('Turno').AsString := sParamTurno;
          zqValida.ParamByName('Fecha').AsDate   := dParamFecha;
        end;

        if sParamTabla = 'estimaciones' then
        begin
           zqValida.SQL.Add('Update estimaciones set lStatus = "PENDIENTE" '+
           'where sContrato =:Contrato and sNumeroOrden =:Folio and sNumeroGenerador =:Generador ');

           zqValida.ParamByName('Generador').AsString := sParamConvenio;
        end;
      {$endregion}
    end;
    zqValida.ParamByName('Contrato').AsString := sParamContrato;
    zqValida.ParamByName('Folio').AsString   := sParamFolio;
    zqValida.ExecSQL;

    zqValida.Destroy;
end;

procedure procAutorizaDatosValidaAutoriza_CO(sParamContrato,sParamConvenio, sParamFolio, sParamTurno :string; dParamFecha :tDate; sParamTabla, sTipo :string; tOrigen: TComponent );
var
    zqValida: tUniquery;
begin
    zqValida := tUniquery.create(nil);
    zqValida.Connection := Connection.uConnection;

    zqValida.Active := False;
    zqValida.SQL.Clear;
    if sTipo = 'Valida' then
    begin
        {$region 'Sqls'}
        if sParamTabla = 'reportediario' then
        begin
           zqValida.SQL.Add('Update reportediario set lStatus = "AUTORIZADO" '+
           'where sContrato =:Contrato and sIdConvenio =:Plazo and sNumeroOrden =:Folio and sIdTurno =:Turno and dIdFecha =:Fecha ');

          zqValida.ParamByName('Plazo').AsString := sParamConvenio;
          zqValida.ParamByName('Turno').AsString := sParamTurno;
          zqValida.ParamByName('Fecha').AsDate   := dParamFecha;
        end;

        if sParamTabla = 'estimaciones' then
        begin
           zqValida.SQL.Add('Update estimaciones set lStatus = "AUTORIZADO" '+
           'where sContrato =:Contrato and sNumeroOrden =:Folio and sNumeroGenerador =:Generador ');

           zqValida.ParamByName('Generador').AsString := sParamConvenio;
        end;
        {$endregion}

    end
    else
    begin
        {$region 'Sqls'}
        if sParamTabla = 'reportediario' then
        begin
           zqValida.SQL.Add('Update reportediario set lStatus = "VALIDADO" '+
           'where sContrato =:Contrato and sIdConvenio =:Plazo and sNumeroOrden =:Folio and sIdTurno =:Turno and dIdFecha =:Fecha ');

          zqValida.ParamByName('Plazo').AsString := sParamConvenio;
          zqValida.ParamByName('Turno').AsString := sParamTurno;
          zqValida.ParamByName('Fecha').AsDate   := dParamFecha;
        end;

        if sParamTabla = 'estimaciones' then
        begin
           zqValida.SQL.Add('Update estimaciones set lStatus = "VALIDADO" '+
           'where sContrato =:Contrato and sNumeroOrden =:Folio and sNumeroGenerador =:Generador ');

           zqValida.ParamByName('Generador').AsString := sParamConvenio;
        end;
        {$endregion}

    end;
    zqValida.ParamByName('Contrato').AsString := sParamContrato;
    zqValida.ParamByName('Folio').AsInteger   := iParamFolio;
    zqValida.ExecSQL;

    zqValida.Destroy;
end;

procedure GraficaFisicoProgFinanciero(sParamRango, sParamContrato, sParamConvenio, sParamFolio: string; gParamProgramado, gParamFisico, gParamFinanciero, gParamContrato :tRxMemoryData; BarraProgreso : TcxProgressBar );
var
    sQlAgrupa : string;
    dAvance   : double;
begin
    if sParamRango = 'Dia' then
       sQlAgrupa := ' group by a.dIdFecha ';

    if sParamRango = 'Mes' then
       sQlAgrupa := ' group by month(a.dIdFecha) ';

    if sParamRango = 'Semana' then
       sQlAgrupa := ' group by week(a.dIdFecha) ';

       //Programados de la gráfica.
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select a.dIdFecha, a.dAvancePonderadoDia, a.dAvancePonderadoGlobal, ' +
                                  '(select sum(dAvance) as anterior from avancesglobalesxorden where sContrato = a.sContrato and sIdConvenio =a.sIdConvenio and sNumeroOrden = a.sNumeroOrden '+
                                  'and dIdFecha < a.dIdFecha group by sContrato ) as anteriorDia, '+
                                  '(select sum(dAvance) as anterior from avancesglobalesxorden where sContrato = a.sContrato and sIdConvenio =a.sIdConvenio and sNumeroOrden = a.sNumeroOrden '+
                                  'and dIdFecha = a.dIdFecha group by sContrato ) as ActualDia '+
                                  'From avancesglobales a ' +
                                  'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden '+sQlAgrupa+' order by a.dIdFecha');
      Connection.qryBusca.params.ParamByName('Contrato').AsString    := sParamContrato ;
      Connection.qryBusca.params.ParamByName('Convenio').AsString    := sParamConvenio;
      Connection.qryBusca.params.ParamByName('Orden').AsString       := sParamFolio;
      Connection.qryBusca.Open ;

      While NOT Connection.qryBusca.Eof Do
      Begin
          gParamProgramado.Append ;
          gParamProgramado.FieldValues['sDescripcion'] := global_contrato ;
          gParamProgramado.FieldValues['dFecha']       := Connection.qryBusca.FieldByName('dIdFecha').AsDateTime;
          gParamProgramado.FieldValues['dProgramado']  := Connection.qryBusca.FieldByName('dAvancePonderadoGlobal').AsFloat;
          gParamProgramado.Post ;
          BarraProgresoAvance(BarraProgreso, 0,100,30/Connection.qryBusca.RecordCount);
          Connection.qryBusca.Next;
      End ;

      //Avandes Programados y fisicos del Grid
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select a.dIdFecha, a.dAvancePonderadoDia, a.dAvancePonderadoGlobal, ' +
                                  '(select sum(dAvance) as anterior from avancesglobalesxorden where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                                  'and dIdFecha < a.dIdFecha group by sContrato ) as anteriorDia, '+
                                  '(select sum(dAvance) as anterior from avancesglobalesxorden where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                                  'and dIdFecha = a.dIdFecha group by sContrato ) as ActualDia '+
                                  'From avancesglobales a ' +
                                  'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden group by a.dIdFecha order by a.dIdFecha');
      Connection.qryBusca.params.ParamByName('Contrato').AsString    := sParamContrato ;
      Connection.qryBusca.params.ParamByName('Convenio').AsString    := sParamConvenio;
      Connection.qryBusca.params.ParamByName('Orden').AsString       := sParamFolio;
      Connection.qryBusca.Open ;

      While NOT Connection.qryBusca.Eof Do
      Begin
          dAvance := AvanceFolio(sParamContrato, sParamFolio, sParamConvenio, Connection.qryBusca.FieldByName('dIdFecha').AsDateTime);
          if dAvance <> Connection.qryBusca.FieldByName('ActualDia').AsFloat then
             ActualizaTablaAvancesFolio(sParamContrato, sParamFolio, sParamConvenio, 'A', Connection.qryBusca.FieldByName('dIdFecha').AsDateTime, dAvance);
          BarraProgresoAvance(BarraProgreso, 0,100,10/Connection.qryBusca.RecordCount);
          Connection.qryBusca.Next;
      End;

      Connection.qryBusca.Refresh;
      Connection.qryBusca.First;
      While NOT Connection.qryBusca.Eof Do
      Begin
          gParamContrato.Append ;
          gParamContrato.FieldValues['dIdFecha']         := Connection.qryBusca.FieldByName('dIdFecha').AsDateTime ;
          gParamContrato.FieldValues['dProgramadoDia']   := Connection.qryBusca.FieldByName('dAvancePonderadoDia').AsFloat;
          gParamContrato.FieldValues['dProgramadoAcum']  := Connection.qryBusca.FieldByName('dAvancePonderadoGlobal').AsFloat;
          gParamContrato.FieldValues['dFisicoDia']       := Connection.qryBusca.FieldByName('ActualDia').AsFloat;
          gParamContrato.FieldValues['dFisicoAcumulado'] := Connection.qryBusca.FieldByName('anteriorDia').AsFloat + Connection.qryBusca.FieldByName('ActualDia').AsFloat;
          gParamContrato.Post ;
          BarraProgresoAvance(BarraProgreso, 0,100,10/Connection.qryBusca.RecordCount);
          Connection.qryBusca.Next;
      End ;

      // El resto del avance Fisico .....del Grid
      Connection.qryBusca2.Active := False ;
      Connection.qryBusca2.SQL.Clear ;
      Connection.qryBusca2.SQL.Add('Select a.dIdFecha,  ' +
                                  '(select sum(dAvance) as anterior from avancesglobalesxorden where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                                  'and dIdFecha < a.dIdFecha group by sContrato ) as anteriorDia, '+
                                  '(select sum(dAvance) as anterior from avancesglobalesxorden where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                                  'and dIdFecha = a.dIdFecha group by sContrato ) as ActualDia '+
                                  'From avancesglobalesxorden a ' +
                                  'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden and a.dIdFecha > :fecha order by a.dIdFecha' ) ;
      Connection.qryBusca2.params.ParamByName('Contrato').AsString := sParamContrato ;
      Connection.qryBusca2.params.ParamByName('Convenio').AsString := sParamConvenio;
      Connection.qryBusca2.params.ParamByName('Orden').AsString    := sParamFolio;
      Connection.qryBusca2.params.ParamByName('fecha').AsDateTime  := connection.QryBusca.FieldByName('dIdFecha').AsDateTime ;
      Connection.qryBusca2.Open ;
      While NOT Connection.qryBusca2.Eof Do
      Begin
          gParamContrato.Append ;
          gParamContrato.FieldValues['dIdFecha']         := connection.QryBusca2.FieldByName('dIdFecha').AsDateTime;
          gParamContrato.FieldValues['dProgramadoDia']   := 0 ;
          gParamContrato.FieldValues['dProgramadoAcum']  := Connection.qryBusca.FieldByName('dAvancePonderadoGlobal').AsFloat;
          gParamContrato.FieldValues['dFisicoDia']       := Connection.qryBusca2.FieldByName('ActualDia').AsFloat;
          gParamContrato.FieldValues['dFisicoAcumulado'] := Connection.qryBusca2.FieldByName('anteriorDia').AsFloat + Connection.qryBusca2.FieldByName('ActualDia').AsFloat;
          gParamContrato.Post ;
          BarraProgresoAvance(BarraProgreso, 0,100,20/Connection.qryBusca.RecordCount);
          Connection.qryBusca2.Next
      End ;

      // Real ...
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select a.dIdFecha, '+
                                  '(select sum(dAvance) as anterior from avancesglobalesxorden where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                                  'and dIdFecha < a.dIdFecha group by sContrato ) as anteriorDia, '+
                                  '(select sum(dAvance) as anterior from avancesglobalesxorden where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                                  'and dIdFecha = a.dIdFecha group by sContrato ) as ActualDia '+
                                  'From avancesglobalesxorden a Where ' +
                                  'a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden '+sQlAgrupa+ ' order by a.dIdFecha ') ;
      Connection.qryBusca.params.ParamByName('Contrato').AsString := sParamContrato ;
      Connection.qryBusca.params.ParamByName('Convenio').AsString := sParamConvenio;
      Connection.qryBusca.params.ParamByName('Orden').AsString     := sParamFolio;
      Connection.qryBusca.Open ;

      While NOT Connection.qryBusca.Eof Do
      Begin
         gParamFisico.Append ;
         gParamFisico.FieldValues['sDescripcion'] := global_contrato ;
         gParamFisico.FieldValues['dFecha']       := connection.QryBusca.FieldByName('dIdFecha').AsDateTime ;
         gParamFisico.FieldValues['dFisico']      := Connection.QryBusca.FieldByName('anteriorDia').AsFloat + Connection.qryBusca.FieldByName('ActualDia').AsFloat;
         gParamFisico.Post ;
         BarraProgresoAvance(BarraProgreso, 0,100,30/Connection.qryBusca.RecordCount);
         Connection.qryBusca.Next
      End ;

      // Financiero ....     *****Pendiente******
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select year(dFechaFinal) as dAnno , month(dFechaFinal) as dMes From estimaciones Where ' +
                                   'sContrato = :Contrato And sNumeroOrden = :orden Group By Year(dFechaFinal), month(dFechaFinal)' ) ;
      Connection.qryBusca.params.ParamByName('Contrato').DataType := ftString ;
      Connection.qryBusca.params.ParamByName('Contrato').Value := sParamContrato ;
      Connection.qryBusca.params.ParamByName('orden').DataType := ftString ;
      Connection.qryBusca.params.ParamByName('orden').Value := sParamFolio;
      Connection.qryBusca.Open ;
      While NOT Connection.qryBusca.Eof Do
      Begin
          gParamFinanciero.Append ;
          gParamFinanciero.FieldValues['sDescripcion'] := global_contrato ;
          gParamFinanciero.FieldValues['dFecha']       := 0;
          gParamFinanciero.FieldValues['dFinanciero']  := (Connection.qryBusca2.FieldValues['dReal'] / dMontoContrato) * 100 ;
          gParamFinanciero.Post ;

          Connection.qryBusca.Next
       End ;
end;

function EsDuplicateKey(sParamMensaje: string): integer;
var
  error :string;
  cmpres:integer;
begin
    error := sParamMensaje;
    error := copy(error,length(error)-16,length(error)-2);
    cmpres :=CompareStr(LowerCase(error),'for key '+#39+'primary'+#39) ;
    result := cmpres;
end;



procedure EliminarProgramaSinReportadas(sParamcontrato, sParamConvenio, sParamFolio : string);
begin
    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('delete from avancesglobales  Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio ') ;
    Connection.QryBusca.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    Connection.QryBusca.Params.ParamByName('Folio').AsString    := sParamFolio ;
    Connection.QryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
    Connection.QryBusca.ExecSQL;

    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('delete from distribuciondeactividades  Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio ') ;
    Connection.QryBusca.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    Connection.QryBusca.Params.ParamByName('Folio').AsString    := sParamFolio ;
    Connection.QryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
    Connection.QryBusca.ExecSQL;


    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('delete from actividadesxorden  Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio ') ;
    Connection.QryBusca.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    Connection.QryBusca.Params.ParamByName('Folio').AsString    := sParamFolio ;
    Connection.QryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
    Connection.QryBusca.ExecSQL;
end;

procedure CopiarProgramaAnterior(sParamcontrato, sParamConvenio, sParamFolio : string; dParmFecha :tDate; BarraProgreso :TcxProgressBar);
var
   registro   : integer;
   sparametro : string;
begin
    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('Select a.sIdConvenio, '+
              '(select count(sIdConvenio) as total from bitacoradeactividades where sContrato = a.sContrato and sIdConvenio = a.sIdConvenio and sWbs = a.sWbs group by sContrato ) as total '+
              'from actividadesxorden a Where a.sContrato = :Contrato and a.sNumeroOrden =:Folio And a.sIdConvenio =:Convenio ') ;
    Connection.QryBusca.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    Connection.QryBusca.Params.ParamByName('Folio').AsString    := sParamFolio ;
    Connection.QryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
    Connection.QryBusca.Open;

    if connection.QryBusca.RecordCount = 0 then
    begin
        Connection.QryBusca2.Active := False ;
        Connection.QryBusca2.SQL.Clear ;
        Connection.QryBusca2.SQL.Add('Select sIdConvenio from convenios Where sContrato = :Contrato and sNumeroOrden =:Folio And dFechaFinal < :Fecha order by dFechaFinal DESC ') ;
        Connection.QryBusca2.Params.ParamByName('Contrato').AsString := sParamcontrato ;
        Connection.QryBusca2.Params.ParamByName('Folio').AsString    := sParamFolio ;
        Connection.QryBusca2.Params.ParamByName('Fecha').AsDateTime  := dParmFecha ;
        Connection.QryBusca2.Open;

        If Connection.QryBusca2.RecordCount > 0 Then
        Begin
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select * from actividadesxorden Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio') ;
            Connection.QryBusca.Params.ParamByName('Contrato').AsString := sParamcontrato ;
            Connection.QryBusca.Params.ParamByName('Folio').AsString    := sParamFolio ;
            Connection.QryBusca.Params.ParamByName('Convenio').AsString := Connection.QryBusca2.FieldByName('sIdConvenio').AsString;
            Connection.QryBusca.Open;

            While NOT Connection.QryBusca.Eof Do
            Begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( funcsql(Connection.QryBusca , 'actividadesxorden')) ;
                for registro := 0 to Connection.QryBusca.fieldcount - 1 do
                begin
                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                    connection.zCommand.Params.parambyname(sparametro).datatype := Connection.QryBusca.fields[registro].datatype ;
                    If Connection.QryBusca.fields[registro].DisplayName = 'sIdConvenio' Then
                        connection.zCommand.Params.parambyname(sparametro).value := sParamConvenio
                    Else
                       connection.zCommand.Params.parambyname(sparametro).value := Connection.QryBusca.fields[registro].value ;
                end ;
                connection.zCommand.ExecSQL ;
                BarraProgresoAvance(BarraProgreso, 0,100,100/Connection.qryBusca.RecordCount);
                Connection.QryBusca.Next;
            End ;
        End
        else
        begin
            messageDLG('No se encontró un Plazo menor a la Reprogramación Actual!', mtWarning, [mbOK], 0);
        end;
    end
    else
    begin
        if Connection.QryBusca.FieldByName('total').AsInteger = 0 then
        begin
             if MessageDlg('Desea eliminar el Programa de Trabajo del Plazo '+sParamConvenio+'?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
             begin
                EliminarProgramaSinReportadas(sParamcontrato, sParamConvenio, sParamFolio);
             end;
        end
        else
           messageDLG('No se puede realizar la Copia del Programa: '+#13+ 'Existen partidas reportadas.', mtWarning, [mbOk], 0);
    end;
end;

function ChecarProgPonderado(sParamcontrato, sParamConvenio, sParamFolio : string) : double;
begin
   connection.QryBusca.Active := False ;
   connection.QryBusca.SQL.Clear ;
   connection.QryBusca.SQL.Add('Select SUM(dPonderado) as Ponderado from actividadesxorden Where ' +
                               'sContrato = :contrato And sNumeroOrden = :Folio And sIdConvenio = :Plazo group by sContrato ') ;
   connection.QryBusca.Params.ParamByName('contrato').AsString := sParamcontrato;
   connection.QryBusca.Params.ParamByName('Folio').AsString    := sParamFolio;
   connection.QryBusca.Params.ParamByName('Plazo').AsString    := sParamConvenio;
   connection.QryBusca.Open ;

   result := connection.QryBusca.FieldByName('Ponderado').AsFloat;
end;

procedure DesplazaPartidasFechas(sParamcontrato, sParamConvenio, sParamFolio : string; dParamFechaI, dParamFechaF : tDate; iParamDias : double; sParamStatus, sParamTipoR : string; BarraProgreso :TcxProgressBar );
var
    lContinua, lAplica : boolean;
    dFechaMenorPartida : tDate;
begin
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('Select o.sWbs, sum(b.dCantidad) as Cantidad, dFechaInicio, dFechaFinal, o.dCantidad as dCantidadFolio from actividadesxorden o '+
               ' left join bitacoradeactividades b on (b.sContrato = o.sContrato and b.sNumeroOrden = o.sNumeroOrden and b.sWbs = o.sWbs) '+
               ' Where o.sContrato = :contrato And o.sNumeroOrden = :Folio and o.sIdConvenio =:Plazo and o.sTipoActividad = "Actividad" '+
               ' group by o.sWbs') ;
    connection.QryBusca.Params.ParamByName('contrato').AsString := sParamcontrato;
    connection.QryBusca.Params.ParamByName('Folio').AsString    := sParamFolio;
    connection.QryBusca.Params.ParamByName('Plazo').AsString    := sParamConvenio;
    connection.QryBusca.Open ;

    if sParamTipoR = 'Periodo' then
    begin
        dFechaMenorPartida :=  dParamFechaI;
        while not connection.QryBusca.Eof do
        begin
            if sParamStatus = 'Todas' then
            begin
               if (connection.QryBusca.FieldByName('Cantidad').AsFloat <= connection.QryBusca.FieldByName('dCantidadFolio').AsFloat) then
                  if  connection.QryBusca.FieldByName('dFechaInicio').AsDateTime < dFechaMenorPartida then
                      dFechaMenorPartida :=  connection.QryBusca.FieldByName('dFechaInicio').AsDateTime;
            end
            else
            begin
               if sParamStatus = 'Pendiente' then
                  if connection.QryBusca.FieldByName('Cantidad').AsFloat = 0 then
                     if  connection.QryBusca.FieldByName('dFechaInicio').AsDateTime < dFechaMenorPartida then
                         dFechaMenorPartida :=  connection.QryBusca.FieldByName('dFechaInicio').AsDateTime;

               if (sParamStatus = 'Proceso') or (sParamStatus = 'Afectadas') then
                  if (connection.QryBusca.FieldByName('Cantidad').AsFloat < connection.QryBusca.FieldByName('dCantidadFolio').AsFloat) then
                     if  connection.QryBusca.FieldByName('dFechaInicio').AsDateTime < dFechaMenorPartida then
                         dFechaMenorPartida :=  connection.QryBusca.FieldByName('dFechaInicio').AsDateTime;
            end;
            BarraProgresoAvance(BarraProgreso, 0,100,40/Connection.qryBusca.RecordCount);
            connection.QryBusca.Next;
        end;
        connection.QryBusca.First;
    end;

    while not connection.QryBusca.Eof do
    begin
        lContinua := False;
        if sParamStatus = 'Pendiente' then
           if connection.QryBusca.FieldByName('Cantidad').AsFloat = 0 then
              lContinua := True;

        if (sParamStatus = 'Proceso') or (sParamStatus = 'Afectadas') then
           if (connection.QryBusca.FieldByName('Cantidad').AsFloat < connection.QryBusca.FieldByName('dCantidadFolio').AsFloat) then
              lContinua := True;

        if sParamStatus = 'Terminada' then
           if (connection.QryBusca.FieldByName('Cantidad').AsFloat = connection.QryBusca.FieldByName('dCantidadFolio').AsFloat) then
              lContinua := True;

        if sParamStatus = 'Todas' then
           if (connection.QryBusca.FieldByName('Cantidad').AsFloat <= connection.QryBusca.FieldByName('dCantidadFolio').AsFloat) then
              lContinua := True;

        if lContinua then
        begin
            Connection.QryBusca2.Active := False ;
            Connection.QryBusca2.SQL.Clear ;

            if sParamTipoR = 'Periodo' then
            begin
                if sParamStatus = 'Afectadas' then
                begin
                    if (connection.QryBusca.FieldByName('Cantidad').AsFloat < connection.QryBusca.FieldByName('dCantidadFolio').AsFloat) and (connection.QryBusca.FieldByName('Cantidad').AsFloat > 0) then
                    begin
                        if (connection.QryBusca.FieldByName('dFechaInicio').AsDateTime < dParamFechaI) and (connection.QryBusca.FieldByName('dFechaFinal').AsDateTime >= dParamFechaI) and (connection.QryBusca.FieldByName('dFechaFinal').AsDateTime <= dParamFechaF) then
                        begin
                            Connection.QryBusca2.SQL.Add('Update actividadesxorden set dFechaFinal = :FechaF, lAfectaSuspension = "Si" '+
                                       'Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio and sWbs =:Wbs');
                            Connection.QryBusca2.Params.ParamByName('Contrato').AsString := sParamcontrato ;
                            Connection.QryBusca2.Params.ParamByName('Folio').AsString    := sParamFolio ;
                            Connection.QryBusca2.Params.ParamByName('Convenio').AsString := sParamConvenio;
                            Connection.QryBusca2.Params.ParamByName('Wbs').AsString      := connection.QryBusca.FieldByName('sWbs').AsString;
                            Connection.QryBusca2.Params.ParamByName('FechaF').AsDate     := connection.QryBusca.FieldByName('dFechaFinal').AsDateTime  + DaysBetween(dParamFechaI,dParamFechaF)+1;
                            Connection.QryBusca2.ExecSQL;
                        end
                        else
                        if (connection.QryBusca.FieldByName('dFechaInicio').AsDateTime <= dParamFechaI) and (connection.QryBusca.FieldByName('dFechaFinal').AsDateTime >= dParamFechaF) then
                        begin
                            Connection.QryBusca2.SQL.Add('Update actividadesxorden set dFechaFinal = :FechaF, lAfectaSuspension = "Si" '+
                                       'Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio and sWbs =:Wbs');
                            Connection.QryBusca2.Params.ParamByName('Contrato').AsString := sParamcontrato ;
                            Connection.QryBusca2.Params.ParamByName('Folio').AsString    := sParamFolio ;
                            Connection.QryBusca2.Params.ParamByName('Convenio').AsString := sParamConvenio;
                            Connection.QryBusca2.Params.ParamByName('Wbs').AsString      := connection.QryBusca.FieldByName('sWbs').AsString;
                            Connection.QryBusca2.Params.ParamByName('FechaF').AsDate     := connection.QryBusca.FieldByName('dFechaFinal').AsDateTime  + DaysBetween(dParamFechaI,dParamFechaF)+1;
                            Connection.QryBusca2.ExecSQL;
                        end;
                    end;
                end
                else
                begin
                    Connection.QryBusca2.SQL.Add('Update actividadesxorden set dFechaInicio = :FechaI, dFechaFinal = :FechaF '+
                               'Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio and sWbs =:Wbs');
                    Connection.QryBusca2.Params.ParamByName('Contrato').AsString := sParamcontrato ;
                    Connection.QryBusca2.Params.ParamByName('Folio').AsString    := sParamFolio ;
                    Connection.QryBusca2.Params.ParamByName('Convenio').AsString := sParamConvenio;
                    Connection.QryBusca2.Params.ParamByName('Wbs').AsString      := connection.QryBusca.FieldByName('sWbs').AsString;
                    Connection.QryBusca2.Params.ParamByName('FechaI').AsDate     := dParamFechaF + DaysBetween(connection.QryBusca.FieldByName('dFechaInicio').AsDateTime,dFechaMenorPartida) +1;
                    Connection.QryBusca2.Params.ParamByName('FechaF').AsDate     := dParamFechaF + DaysBetween(connection.QryBusca.FieldByName('dFechaFinal').AsDateTime, dFechaMenorPartida) +1;
                    Connection.QryBusca2.ExecSQL;
                end;
            end;

            if sParamTipoR = 'Dias' then
            begin
                Connection.QryBusca2.SQL.Add('Update actividadesxorden set dFechaInicio = DATE_ADD(dFechaInicio,INTERVAL :dias DAY), dFechaFinal = DATE_ADD(dFechaFinal,INTERVAL :dias DAY) '+
                           'Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio and sWbs =:Wbs') ;
                Connection.QryBusca2.Params.ParamByName('Contrato').AsString := sParamcontrato ;
                Connection.QryBusca2.Params.ParamByName('Folio').AsString    := sParamFolio ;
                Connection.QryBusca2.Params.ParamByName('Convenio').AsString := sParamConvenio;
                Connection.QryBusca2.Params.ParamByName('Wbs').AsString      := connection.QryBusca.FieldByName('sWbs').AsString;
                Connection.QryBusca2.Params.ParamByName('Dias').AsFloat      := iParamDias;
                Connection.QryBusca2.ExecSQL;
            end;
        end;

        if sParamTipoR = 'Periodo' then
           BarraProgresoAvance(BarraProgreso, 0,100,40/Connection.qryBusca.RecordCount)
        else
           BarraProgresoAvance(BarraProgreso, 0,100,80/Connection.qryBusca.RecordCount);
        connection.QryBusca.Next;
    end;

    connection.QryBusca.First;
    while not connection.QryBusca.Eof do
    begin
        lContinua := False;

        if (sParamStatus = 'Afectadas') then
           if (connection.QryBusca.FieldByName('Cantidad').AsFloat < connection.QryBusca.FieldByName('dCantidadFolio').AsFloat) then
              lContinua := True;

        if lContinua then
        begin
            Connection.QryBusca2.Active := False ;
            Connection.QryBusca2.SQL.Clear ;

            if sParamTipoR = 'Periodo' then
            begin
                if (connection.QryBusca.FieldByName('Cantidad').AsFloat < connection.QryBusca.FieldByName('dCantidadFolio').AsFloat) and (connection.QryBusca.FieldByName('Cantidad').AsFloat > 0) then
                begin
                    if (connection.QryBusca.FieldByName('dFechaInicio').AsDateTime >= dParamFechaI) and (connection.QryBusca.FieldByName('dFechaFinal').AsDateTime >= dParamFechaI) and (connection.QryBusca.FieldByName('dFechaFinal').AsDateTime <= dParamFechaF) then
                    begin
                        Connection.QryBusca2.SQL.Add('Update actividadesxorden set dFechaInicio = :FechaI, dFechaFinal = :FechaF '+
                                   'Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio and sWbs =:Wbs');
                        Connection.QryBusca2.Params.ParamByName('Contrato').AsString := sParamcontrato ;
                        Connection.QryBusca2.Params.ParamByName('Folio').AsString    := sParamFolio ;
                        Connection.QryBusca2.Params.ParamByName('Convenio').AsString := sParamConvenio;
                        Connection.QryBusca2.Params.ParamByName('Wbs').AsString      := connection.QryBusca.FieldByName('sWbs').AsString;
                        Connection.QryBusca2.Params.ParamByName('FechaI').AsDate     := connection.QryBusca.FieldByName('dFechaInicio').AsDateTime + DaysBetween(dParamFechaF,dParamFechaI)+ 1;
                        Connection.QryBusca2.Params.ParamByName('FechaF').AsDate     := connection.QryBusca.FieldByName('dFechaFinal').AsDateTime + DaysBetween(dParamFechaF,dParamFechaI) + 1;
                        Connection.QryBusca2.ExecSQL;
                    end
                    else
                      if (connection.QryBusca.FieldByName('dFechaInicio').AsDateTime >= dParamFechaF) then
                      begin
                          Connection.QryBusca2.SQL.Add('Update actividadesxorden set dFechaInicio = :FechaI, dFechaFinal = :FechaF '+
                                   'Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio and sWbs =:Wbs');
                          Connection.QryBusca2.Params.ParamByName('Contrato').AsString := sParamcontrato ;
                          Connection.QryBusca2.Params.ParamByName('Folio').AsString    := sParamFolio ;
                          Connection.QryBusca2.Params.ParamByName('Convenio').AsString := sParamConvenio;
                          Connection.QryBusca2.Params.ParamByName('Wbs').AsString      := connection.QryBusca.FieldByName('sWbs').AsString;
                          Connection.QryBusca2.Params.ParamByName('FechaI').AsDate     := connection.QryBusca.FieldByName('dFechaInicio').AsDateTime + DaysBetween(dParamFechaF,dParamFechaI)+ 1;
                          Connection.QryBusca2.Params.ParamByName('FechaF').AsDate     := connection.QryBusca.FieldByName('dFechaFinal').AsDateTime + DaysBetween(dParamFechaF,dParamFechaI) + 1;
                          Connection.QryBusca2.ExecSQL;
                      end;
                end;
            end;
        end;
        connection.QryBusca.Next;
    end;

    ActualizaFechasPaquetes(global_contrato, sParamConvenio, sParamFolio, 'actividadesxorden', 'and sNumeroOrden =:Orden', 'dCantidad', 20, BarraProgreso);
    ActualizaPlazoFolioPrograma(sParamcontrato, sParamConvenio, sParamFolio);
end;

procedure ActualizaFechasPaquetes(sParamcontrato, sParamConvenio, sParamFolio, sParamTabla, sQlCadena, sQlCantidad : string; iParamPorcentaje :double; BarraProgreso :TcxProgressBar);
begin
    Connection.QryBusca2.Active := False;
    Connection.QryBusca2.SQL.Clear;
    Connection.QryBusca2.SQL.Add('Select Distinct sWBS From ' +sParamTabla+
      ' Where sContrato = :Contrato '+sQlCadena+' And sIdConvenio = :Convenio And sTipoActividad = "Paquete" Order By iNivel DESC');
    Connection.QryBusca2.Params.ParamByName('Contrato').AsString := global_contrato;
    Connection.QryBusca2.Params.ParamByName('Convenio').AsString := sParamConvenio;
    Connection.QryBusca2.Params.ParamByName('Orden').AsString    := sParamFolio;
    Connection.QryBusca2.Open;

    while not Connection.QryBusca2.Eof do
    begin
        Connection.QryBusca.Active := False;
        Connection.QryBusca.Filtered := False;
        Connection.QryBusca.SQL.Clear;
        Connection.QryBusca.SQL.Add('Select Min(dFechaInicio) as dFechaInicio, Max(dFechaFinal) as dFechaFinal, sum(dPonderado) as dPonderado, ' +
          ' sum('+sQlCantidad+' * dVentaMN) as dMontoMN, sum('+sQlCantidad+' * dVentaDLL) as dMontoDLL From ' +sParamTabla+
          ' Where sContrato = :Contrato '+sQlCadena+' And sIdConvenio = :Convenio And sWBSAnterior = :Paquete ' +
          ' and lCalculo="Si" Group By sWBSAnterior');
        Connection.QryBusca.Params.ParamByName('Contrato').AsString := global_contrato;
        Connection.QryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
        Connection.QryBusca.Params.ParamByName('Orden').AsString    := sParamFolio;
        Connection.QryBusca.Params.ParamByName('Paquete').AsString  := Connection.QryBusca2.FieldValues['sWBS'];
        Connection.QryBusca.Open;

        if Connection.QryBusca.RecordCount > 0 then
          if (not Connection.QryBusca.FieldByName('dFechaInicio').IsNull) and (not Connection.QryBusca.FieldByName('dFechaFinal').IsNull) then
          begin
            connection.zCommand.Active := False;
            connection.zCommand.Filtered := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('Update '+sParamTabla+' SET dFechaInicio = :Inicio, dFechaFinal = :Final, dPonderado = :Ponderado, dVentaMN = :MontoMN, dVentaDLL = :MontoDLL ' +
              'Where sContrato = :Contrato And sIdConvenio = :Convenio '+sQlCadena+' And ' +
              'sWBS = :Paquete And sTipoActividad = "Paquete"');
            connection.zcommand.params.ParamByName('Contrato').AsString := global_contrato;
            connection.zcommand.params.ParamByName('Convenio').AsString := sParamConvenio;
            connection.zcommand.params.ParamByName('Orden').AsString    := sParamFolio;
            connection.zcommand.params.ParamByName('Paquete').AsString  := Connection.QryBusca2.FieldValues['sWBS'];
            connection.zcommand.params.ParamByName('Inicio').AsDate     := Connection.QryBusca.FieldValues['dFechaInicio'];
            connection.zcommand.params.ParamByName('Final').AsDate      := Connection.QryBusca.FieldValues['dFechaFinal'];
            if roundTo(Connection.QryBusca.FieldValues['dPonderado'], -2) >= 100 then
              connection.zcommand.params.ParamByName('Ponderado').Value := 100
            else
              connection.zcommand.params.ParamByName('Ponderado').AsFloat := Connection.QryBusca.FieldValues['dPonderado'];
            connection.zcommand.params.ParamByName('MontoMN').AsFloat     := Connection.QryBusca.FieldValues['dMontoMN'];
            connection.zcommand.params.ParamByName('MontoDLL').AsFloat    := Connection.QryBusca.FieldValues['dMontoDLL'];
            Connection.zCommand.ExecSQL;
          end;
        Connection.QryBusca2.Next;
        BarraProgresoAvance(BarraProgreso, 0,100, iParamPorcentaje/Connection.QryBusca2.RecordCount);
    end;
end;

procedure ActualizaPlazoFolioPrograma(sParamcontrato, sParamConvenio, sParamFolio : string);
var
    zqPlazo: tzReadOnlyQuery;
begin
    zqPlazo := TzReadOnlyQuery.create(nil);
    zqPlazo.Connection := Connection.zConnection;

    zqPlazo.Active := False ;
    zqPlazo.SQL.Clear ;
    zqPlazo.SQL.Add('update ordenesdetrabajo set sIdConvenio =:Convenio Where sContrato = :Contrato and sNumeroOrden =:Folio ');
    zqPlazo.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    zqPlazo.Params.ParamByName('Folio').AsString    := sParamFolio ;
    zqPlazo.Params.ParamByName('Convenio').AsString := sParamConvenio;
    zqPlazo.ExecSQL;

    zqPlazo.Destroy;
end;

procedure HomologarWbsPartidas(sParamcontrato, sParamConvenio, sParamFolio : string; BarraProgreso :TcxProgressBar);
var
    zqPartidas: tzReadOnlyQuery;
begin
    zqPartidas := TzReadOnlyQuery.create(nil);
    zqPartidas.Connection := Connection.zConnection;

    BarraProgresoAvance(BarraProgreso, 0,100, 15);
    sleep(500);
    zqPartidas.Active := False ;
    zqPartidas.SQL.Clear ;
    zqPartidas.SQL.Add('update actividadesxorden set sWbs = concat(sWbsAnterior,".",sAnexo,".",sNumeroActividad) Where sContrato = :Contrato and sIdConvenio =:convenio and sNumeroOrden =:Folio and sTipoActividad = "Actividad"');
    zqPartidas.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    zqPartidas.Params.ParamByName('Folio').AsString    := sParamFolio ;
    zqPartidas.Params.ParamByName('Convenio').AsString := sParamConvenio;
    zqPartidas.ExecSQL;
    BarraProgresoAvance(BarraProgreso, 0,100, 15);

    zqPartidas.Active := False ;
    zqPartidas.SQL.Clear ;
    zqPartidas.SQL.Add('select sWbs, sWbsAnterior, sNumeroActividad, iNivel from actividadesxorden Where sContrato = :Contrato and sIdConvenio =:convenio and sNumeroOrden =:Folio ');
    zqPartidas.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    zqPartidas.Params.ParamByName('Folio').AsString    := sParamFolio ;
    zqPartidas.Params.ParamByName('Convenio').AsString := sParamConvenio;
    zqPartidas.Open;

    while not zqPartidas.Eof do
    begin
        OrdenamientosPartidaIJAD(sParamContrato, sParamConvenio, sParamFolio, zqPartidas.FieldByName('sWbsAnterior').AsString, zqPartidas.FieldByName('sNumeroActividad').AsString, zqPartidas.FieldByName('sWbs').AsString, zqPartidas.FieldByName('iNivel').AsInteger, BarraProgreso, zqPartidas.RecordCount );
        zqPartidas.Next;
    end;

    zqPartidas.Destroy;
end;

procedure OrdenamientosPartidaIJAD(sParamContrato, sParamConvenio, sParamFolio, sParamWbsAnterior, sParamActividad, sParamWbs : string; iParamNivel : integer; BarraProgreso :TcxProgressBar; iParamAvance :integer);
var
   folio  : longint;
   indice : integer;
   sItem  : string;
   zqOrdenamiento: tzReadOnlyQuery;
   c : char;
begin
    zqOrdenamiento := TzReadOnlyQuery.create(nil);
    zqOrdenamiento.Connection := Connection.zConnection;

    folio := iParamNivel;
    indice := 1;
    while indice <= length(sParamWbsAnterior) do
    begin
       c := sParamWbsAnterior[indice];
       folio := folio + ord(c) ;
       inc(indice);
    end;

    indice := 1;
    while indice <= length(sParamActividad) do
    begin
       c := sParamActividad[indice];
       folio := folio + ord(c) ;
       inc(indice);
    end;

    sItem := intToStr(folio);

    zqOrdenamiento.Active := False ;
    zqOrdenamiento.SQL.Clear ;
    zqOrdenamiento.SQL.Add('update actividadesxorden set iItemOrden = :item Where sContrato = :Contrato and sIdConvenio =:convenio and sNumeroOrden =:Folio and sWbs =:Wbs ');
    zqOrdenamiento.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    zqOrdenamiento.Params.ParamByName('Folio').AsString    := sParamFolio ;
    zqOrdenamiento.Params.ParamByName('Convenio').AsString := sParamConvenio;
    zqOrdenamiento.Params.ParamByName('Wbs').AsString      := sParamWbs;
    zqOrdenamiento.Params.ParamByName('item').AsString     := sItem;
    zqOrdenamiento.ExecSQL;

    if iParamAvance > 0 then
       BarraProgresoAvance(BarraProgreso, 0,100,70/iParamAvance);

end;

function CrearPaqueteAnexo(sParamContrato, sParamConvenio, sParamOrden, sParamAnexo, sParamAnexoEtiqueta :string) : string;
var
   zqPaquete, zMedida: tzReadOnlyQuery;
begin
    zqPaquete := TzReadOnlyQuery.create(nil);
    zqPaquete.Connection := Connection.zConnection;

    zMedida := TzReadOnlyQuery.create(nil);
    zMedida.Connection := Connection.zConnection;

    zMedida.Active := False ;
    zMedida.SQL.Clear ;
    zMedida.SQL.Add('select IdMedida from master_medidas Where Codigo = :Codigo');
    zMedida.Params.ParamByName('codigo').AsString    := 'PQ';
    zMedida.Open;

    zqPaquete.Active := False ;
    zqPaquete.SQL.Clear ;
    zqPaquete.SQL.Add('select sWbs from actividadesxanexo Where sContrato = :Contrato and sIdConvenio =:convenio and sNumeroOrden =:Folio and sAnexo =:Anexo and sTipoActividad ="Paquete" and sWbs =:Anexo');
    zqPaquete.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    zqPaquete.Params.ParamByName('Convenio').AsString := sParamConvenio;
    zqPaquete.Params.ParamByName('Folio').AsString    := sParamOrden ;
    zqPaquete.Params.ParamByName('Anexo').AsString    := sParamAnexo;
    zqPaquete.Open;

    if zqPaquete.RecordCount > 0 then
    begin
       result := zqPaquete.FieldByName('sWbs').AsString;
    end
    else
    begin
        zqPaquete.Active := False ;
        zqPaquete.SQL.Clear ;
        zqPaquete.SQL.Add('INSERT INTO actividadesxanexo (sContrato,sIdConvenio,sNumeroOrden,iNivel,sSimbolo,sWbs,sWbsAnterior,sNumeroActividad,sTipoActividad,sTipoAnexo,sActividadAnterior,iItemOrden,mDescripcion, '+
                                      'dFechaInicio,dDuracion,dFechaFinal,dPonderado,dCostoMN,dCostoDLL,dVentaMN,dVentaDLL,iIdMedida,sIdFase,sAnexo ) '+
                              'VALUES (:Contrato,:Convenio,:Folio,:Nivel,"",:Wbs,:WbsAnterior,:Actividad,:TipoActividad,:TipoAnexo,:ActividadAnt,:Item,:Descripcion, '+
                                       ':FechaI,:Duracion,:FechaF,:Ponderado,0,0,0,0,:Medida,:Fase,:Anexo )');
        zqPaquete.Params.ParamByName('Contrato').AsString := sParamcontrato ;
        zqPaquete.Params.ParamByName('Convenio').AsString := sParamConvenio;
        zqPaquete.Params.ParamByName('Folio').AsString    := sParamOrden ;
        zqPaquete.Params.ParamByName('Nivel').AsInteger   := 1 ;
        zqPaquete.Params.ParamByName('Wbs').AsString      := sParamAnexo ;
        zqPaquete.Params.ParamByName('WbsAnterior').AsString   := 'A' ;
        zqPaquete.Params.ParamByName('Actividad').AsString     := sParamAnexo ;
        zqPaquete.Params.ParamByName('TipoActividad').AsString := 'Paquete' ;
        zqPaquete.Params.ParamByName('TipoAnexo').AsString     := 'CC' ;
        zqPaquete.Params.ParamByName('ActividadAnt').AsString  := '' ;
        zqPaquete.Params.ParamByName('Item').AsString          := '00000001' ;
        zqPaquete.Params.ParamByName('Descripcion').AsString   := 'PARTIDAS DEL '+ sParamAnexoEtiqueta;
        zqPaquete.Params.ParamByName('FechaI').AsDatetime      := Date ;
        zqPaquete.Params.ParamByName('Duracion').AsInteger     := 1 ;
        zqPaquete.Params.ParamByName('FechaF').AsDateTime      := Date ;
        zqPaquete.Params.ParamByName('Ponderado').AsFloat      := 0;
        zqPaquete.Params.ParamByName('Medida').AsInteger       := zMedida.FieldByName('IdMedida').AsInteger;
        zqPaquete.Params.ParamByName('Fase').AsString          := 'PU' ;
        zqPaquete.Params.ParamByName('Anexo').AsString         := sParamAnexo;
        zqPaquete.ExecSQL;

        result := sParamAnexo;
    end;

    zqPaquete.Destroy;
    zMedida.Destroy;
end;

function CrearPaqueteFolio(sParamContrato, sParamConvenio, sParamOrden, sParamAnexo, sParamAnexoEtiqueta, sParamDescripcion :string) : string;
var
   zqPaquete: tzReadOnlyQuery;
begin
    zqPaquete := TzReadOnlyQuery.create(nil);
    zqPaquete.Connection := Connection.zConnection;

    zqPaquete.Active := False ;
    zqPaquete.SQL.Clear ;
    zqPaquete.SQL.Add('select sWbs from actividadesxorden Where sContrato = :Contrato and sIdConvenio =:convenio and sNumeroOrden =:Folio and sTipoActividad ="Paquete" and iNivel = 0');
    zqPaquete.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    zqPaquete.Params.ParamByName('Convenio').AsString := sParamConvenio;
    zqPaquete.Params.ParamByName('Folio').AsString    := sParamOrden ;
    zqPaquete.Open;

    if zqPaquete.RecordCount > 0 then
    begin
       result := zqPaquete.FieldByName('sWbs').AsString;
    end
    else
    begin
        zqPaquete.Active := False ;
        zqPaquete.SQL.Clear ;
        zqPaquete.SQL.Add('INSERT INTO actividadesxorden (sContrato,sIdConvenio,sNumeroOrden,iNivel,sSimbolo,sWbs,sWbsAnterior,sNumeroActividad,sTipoActividad,sTipoAnexo,sActividadAnterior,iItemOrden,mDescripcion, '+
                                      'dFechaInicio,dDuracion,dFechaFinal,dPonderado,dCostoMN,dCostoDLL,dVentaMN,dVentaDLL,sMedida,sIdFase,sAnexo,dCantidad ) '+
                              'VALUES (:Contrato,:Convenio,:Folio,:Nivel,"",:Wbs,:WbsAnterior,:Actividad,:TipoActividad,:TipoAnexo,:ActividadAnt,:Item,:Descripcion, '+
                                       ':FechaI,:Duracion,:FechaF,:Ponderado,0,0,0,0,:Medida,:Fase,:Anexo,1)');
        zqPaquete.Params.ParamByName('Contrato').AsString := sParamcontrato ;
        zqPaquete.Params.ParamByName('Convenio').AsString := sParamConvenio;
        zqPaquete.Params.ParamByName('Folio').AsString    := sParamOrden ;
        zqPaquete.Params.ParamByName('Nivel').AsInteger   := 0 ;
        zqPaquete.Params.ParamByName('Wbs').AsString      := '1' ;
        zqPaquete.Params.ParamByName('WbsAnterior').AsString   := '' ;
        zqPaquete.Params.ParamByName('Actividad').AsString     := '1' ;
        zqPaquete.Params.ParamByName('TipoActividad').AsString := 'Paquete' ;
        zqPaquete.Params.ParamByName('TipoAnexo').AsString     := 'PT' ;
        zqPaquete.Params.ParamByName('ActividadAnt').AsString  := '' ;
        zqPaquete.Params.ParamByName('Item').AsString          := '00000001' ;
        zqPaquete.Params.ParamByName('Descripcion').AsString   := sParamDescripcion;
        zqPaquete.Params.ParamByName('FechaI').AsDatetime      := date;
        zqPaquete.Params.ParamByName('Duracion').AsInteger     := 1 ;
        zqPaquete.Params.ParamByName('FechaF').AsDateTime      :=  date;
        zqPaquete.Params.ParamByName('Ponderado').AsFloat      := 100;
        zqPaquete.Params.ParamByName('Medida').AsString        := '';
        zqPaquete.Params.ParamByName('Fase').AsString          := 'PU' ;
        zqPaquete.Params.ParamByName('Anexo').AsString         := sParamAnexo;
        zqPaquete.ExecSQL;

        CreaPlazo(sParamcontrato, sParamConvenio, sParamOrden, date, date);
        ActualizaPlazoFolioPrograma(sParamcontrato, sParamConvenio, sParamOrden);

        result := '1';
    end;

    zqPaquete.Destroy;
end;


procedure UpdateMateriales(sParamAnexo, sParamMaterial, sParamDescripcion, sParamOldAnexo, sParamOldMaterial :string; iParamMedida : integer);
var
   zqPaquete: tzReadOnlyQuery;
begin
    zqPaquete := TzReadOnlyQuery.create(nil);
    zqPaquete.Connection := Connection.zConnection;

    zqPaquete.Active := False ;
    zqPaquete.SQL.Clear ;
    zqPaquete.SQL.Add('Update bitacorademateriales set sAnexo =:Anexo, sIdMaterial =:Material, mDescripcion =:Descripcion, iIdMedida =:Medida Where sIdMaterial =:OldMaterial ');
    zqPaquete.Params.ParamByName('Anexo').AsString       := sParamAnexo ;
    zqPaquete.Params.ParamByName('Material').AsString    := sParamMaterial;
    zqPaquete.Params.ParamByName('Descripcion').AsString := sParamDescripcion ;
    zqPaquete.Params.ParamByName('Medida').AsInteger     := iParamMedida;
    zqPaquete.Params.ParamByName('OldMaterial').AsString := sParamOldMaterial;
    zqPaquete.ExecSQL;

    zqPaquete.Destroy;
end;

function DeleteMateriales(sParamAnexo, sParamMaterial :string) : boolean;
var
   zqPaquete: tzReadOnlyQuery;
begin
    zqPaquete := TzReadOnlyQuery.create(nil);
    zqPaquete.Connection := Connection.zConnection;

    zqPaquete.Active := False ;
    zqPaquete.SQL.Clear ;
    zqPaquete.SQL.Add('select sIdMaterial from bitacorademateriales Where sAnexo =:Anexo and sIdMaterial =:Material ');
    zqPaquete.Params.ParamByName('Anexo').AsString       := sParamAnexo ;
    zqPaquete.Params.ParamByName('Material').AsString    := sParamMaterial;
    zqPaquete.Open;

    if zqPaquete.RecordCount > 0 then
       result := True
    else
       result := False;

    zqPaquete.Destroy;
end;

Function ObtenerTipoCambio(sParamMoneda :string; dParamFecha :tDate): double;
begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select * from tiposdecambio where sIdMonedaConv =:Moneda and dIdFecha =:Fecha order by dIdFecha DESC ');
    connection.zCommand.ParamByName('Moneda').AsString := sParamMoneda;
    connection.zCommand.ParamByName('Fecha').AsDate    := dParamFecha;
    connection.zCommand.Open;

    if connection.zCommand.RecordCount = 0 then
       result := 0
    else
       result := connection.zCommand.FieldByName('dCambio').AsFloat;
end;

function ValidaExiste(sParamContrato, sParamTabla, sParamCampo, sParamValor, sMsgCampo :string) : Boolean;
var
    QryMaximo    : TUniQuery ;
begin

     QryMaximo:=TUniQuery.create(nil);
    Try
      {Creacion de objetos de consulta}
      QryMaximo.Connection := Connection.Uconnection;

      QryMaximo.Active := False;
      if trim(sParamContrato) <> '' then
      begin
         QryMaximo.SQL.Text := 'select '+sParamCampo+' from '+sParamTabla+' where sContrato =:Contrato and '+sParamCampo+' =:Id ';
         QryMaximo.ParamByName('contrato').AsString := sParamContrato;
         QryMaximo.ParamByName('Id').AsString       := sParamValor;
      end
      else
      begin
         QryMaximo.SQL.Text := ('select '+sParamCampo+' from '+sParamTabla+' where '+sParamCampo+' =:Id ');
         QryMaximo.ParamByName('Id').AsString       := sParamValor;
      end;
      QryMaximo.Open;

      if QryMaximo.RecordCount > 0 then
      begin
          messageDLG(sMsgCampo+' Duplicado', mtInformation, [mbOk], 0);
          result := True;
      end
      else
          result := False;

    Finally
        QryMaximo.Destroy;
    End;

end;

function ObtenerFirmaFicha(sParamTipo :string; dParamFecha :tDate): TStringArray;
var
    QryFirmas    : TZQuery;
begin
   SetLength(result, 12);

    QryFirmas:=TzQuery.create(nil);
    Try
      {Creacion de objetos de consulta}
      QryFirmas.Connection := Connection.zConnection;

      QryFirmas.Active := False;
      QryFirmas.SQL.Add('select * from rd_firmas where  sTipo =:Tipo and :Fecha >=dFecha ');
      QryFirmas.ParamByName('Fecha').AsDate  := dParamFecha;
      QryFirmas.ParamByName('Tipo').AsString := sParamTipo;
      QryFirmas.Open;

      if QryFirmas.RecordCount > 0 then
      begin
        result[0]  := QryFirmas.FieldByName('sFirmante1').AsString ;
        result[1]  := QryFirmas.FieldByName('sPuesto1').AsString ;
        result[2]  := QryFirmas.FieldByName('sFicha1').AsString ;

        result[3]  := QryFirmas.FieldByName('sFirmante2').AsString ;
        result[4]  := QryFirmas.FieldByName('sPuesto2').AsString ;
        result[5]  := QryFirmas.FieldByName('sFicha2').AsString ;

        result[6]  := QryFirmas.FieldByName('sFirmante3').AsString ;
        result[7]  := QryFirmas.FieldByName('sPuesto3').AsString ;
        result[8]  := QryFirmas.FieldByName('sFicha3').AsString ;

        result[9]  := QryFirmas.FieldByName('sFirmante4').AsString ;
        result[10] := QryFirmas.FieldByName('sPuesto4').AsString ;
        result[11] := QryFirmas.FieldByName('sFicha4').AsString ;
      end;

    Finally
        QryFirmas.Destroy;
    End;
end;

procedure UpadateActividades(sParamTabla, sParamContrato, sParamConvenio, sParamFolio, sParamWbs, sParamActividad, sParamItem, sParamDescripcion, sParamOldWbs, sParamPlataforma, sParamPernocta :string; dParamFechaI, dParamFechaF :tDate; iParamIdConsulta : integer);
var
   zqPaquete, tablaMaestra : tzReadOnlyQuery;
begin
    zqPaquete := TzReadOnlyQuery.create(nil);
    zqPaquete.Connection := Connection.zConnection;

    tablaMaestra := TzReadOnlyQuery.create(nil);
    tablaMaestra.Connection := Connection.zConnection;

    tablaMaestra.Active := False ;
    tablaMaestra.SQL.Clear ;
    if iParamIdConsulta = -1 then
       tablaMaestra.SQL.Add('Select * from master_actualiza_tabla where Tabla =:Tabla and Tipo = "Update"')
    else
    begin
       tablaMaestra.SQL.Add('Select * from master_actualiza_tabla where Tabla =:Tabla and Tipo = "Update" and IdActualiza =:Id ');
       tablaMaestra.Params.ParamByName('Id').AsInteger := iParamIdConsulta;
    end;
    tablaMaestra.Params.ParamByName('Tabla').AsString  := sParamTabla;
    tablaMaestra.Open;

    while not tablaMaestra.Eof do
    begin
        {$REGION 'sWbs,sNumeroActividad,mDescripcion -1'}
        if (tablaMaestra.FieldByName('SQLCampos').AsString = 'sWbs,sNumeroActividad,mDescripcion') and (iParamIdConsulta =-1) then
        begin
            zqPaquete.Active := False ;
            zqPaquete.SQL.Clear ;
            zqPaquete.SQL.Add('Update '+tablaMaestra.FieldByName('TablaDependiente').AsString+' set sWbs =:Wbs, sNumeroActividad =:Actividad, mDescripcion =:Descripcion Where '+ tablaMaestra.FieldByName('SQLCondicion').AsString);
            zqPaquete.Params.ParamByName('Contrato').AsString    := sParamContrato ;
            zqPaquete.Params.ParamByName('Convenio').AsString    := sParamConvenio;
            zqPaquete.Params.ParamByName('Folio').AsString       := sParamFolio;
            zqPaquete.Params.ParamByName('Wbs').AsString         := sParamWbs;
            zqPaquete.Params.ParamByName('Descripcion').AsString := sParamDescripcion ;
            zqPaquete.Params.ParamByName('Actividad').AsString   := sParamActividad;
            zqPaquete.Params.ParamByName('OldWbs').AsString      := sParamOldWbs;
            zqPaquete.ExecSQL;
        end;
        {$ENDREGION}

        {$REGION 'sWbs,sNumeroActividad -1'}
        if (tablaMaestra.FieldByName('SQLCampos').AsString = 'sWbs,sNumeroActividad') and (iParamIdConsulta =-1) then
        begin
            zqPaquete.Active := False ;
            zqPaquete.SQL.Clear ;
            zqPaquete.SQL.Add('Update '+tablaMaestra.FieldByName('TablaDependiente').AsString+' set sWbs =:Wbs, sNumeroActividad =:Actividad Where '+ tablaMaestra.FieldByName('SQLCondicion').AsString);
            zqPaquete.Params.ParamByName('Contrato').AsString    := sParamContrato ;

            if (tablaMaestra.FieldByName('Descripcion').AsString <> 'Equipo Reportado') and (tablaMaestra.FieldByName('Descripcion').AsString <> 'Personal Reportado') then
               zqPaquete.Params.ParamByName('Convenio').AsString := sParamConvenio;

            zqPaquete.Params.ParamByName('Folio').AsString       := sParamFolio;
            zqPaquete.Params.ParamByName('Wbs').AsString         := sParamWbs;
            zqPaquete.Params.ParamByName('Actividad').AsString   := sParamActividad;
            zqPaquete.Params.ParamByName('OldWbs').AsString      := sParamOldWbs;
            zqPaquete.ExecSQL;
        end;
        {$ENDREGION}

        {$REGION 'sWbs,iItemOrden -1'}
        if (tablaMaestra.FieldByName('SQLCampos').AsString = 'sWbs,iItemOrden') and (iParamIdConsulta =-1) then
        begin
            zqPaquete.Active := False ;
            zqPaquete.SQL.Clear ;
            zqPaquete.SQL.Add('Update '+tablaMaestra.FieldByName('TablaDependiente').AsString+' set sWbs =:Wbs, iItemOrden =:Item Where '+ tablaMaestra.FieldByName('SQLCondicion').AsString);
            zqPaquete.Params.ParamByName('Contrato').AsString    := sParamContrato ;

            if (tablaMaestra.FieldByName('Descripcion').AsString <> 'Material Reportado') then
               zqPaquete.Params.ParamByName('Convenio').AsString    := sParamConvenio;

            zqPaquete.Params.ParamByName('Folio').AsString       := sParamFolio;
            zqPaquete.Params.ParamByName('Wbs').AsString         := sParamWbs;
            zqPaquete.Params.ParamByName('Item').AsString        := sParamItem;
            zqPaquete.Params.ParamByName('OldWbs').AsString      := sParamOldWbs;
            zqPaquete.ExecSQL;
        end;
        {$ENDREGION}

        {$REGION 'sWbs,iItemOrden (5)'}
        if (tablaMaestra.FieldByName('SQLCampos').AsString = 'sWbs,iItemOrden') and (iParamIdConsulta = 5) then
        begin
            zqPaquete.Active := False ;
            zqPaquete.SQL.Clear ;
            zqPaquete.SQL.Add('Update '+tablaMaestra.FieldByName('TablaDependiente').AsString+' set sWbs =:Wbs, iItemOrden =:Item Where '+ tablaMaestra.FieldByName('SQLCondicion').AsString);
            zqPaquete.Params.ParamByName('Contrato').AsString    := sParamContrato ;
            zqPaquete.Params.ParamByName('Folio').AsString       := sParamFolio;
            zqPaquete.Params.ParamByName('Wbs').AsString         := sParamWbs;
            zqPaquete.Params.ParamByName('Item').AsString        := sParamItem;
            zqPaquete.Params.ParamByName('OldWbs').AsString      := sParamOldWbs;
            zqPaquete.ExecSQL;
        end;
        {$ENDREGION}

        {$REGION 'mDescripcion,dFiProgramado,dFfProgramado (12)'}
        if (tablaMaestra.FieldByName('SQLCampos').AsString = 'mDescripcion,dFiProgramado,dFfProgramado') and (iParamIdConsulta =12) then
        begin
            zqPaquete.Active := False ;
            zqPaquete.SQL.Clear ;
            zqPaquete.SQL.Add('Update '+tablaMaestra.FieldByName('TablaDependiente').AsString+' set mDescripcion =:Descripcion, dfIProgramado =:FechaI, dFfProgramado =:FechaF Where '+ tablaMaestra.FieldByName('SQLCondicion').AsString);
            zqPaquete.Params.ParamByName('Contrato').AsString    := sParamContrato ;
            zqPaquete.Params.ParamByName('Convenio').AsString    := sParamConvenio;
            zqPaquete.Params.ParamByName('Folio').AsString       := sParamFolio;
            zqPaquete.Params.ParamByName('Descripcion').AsString := sParamDescripcion ;
            zqPaquete.Params.ParamByName('FechaI').AsDate        := dParamFechaI;
            zqPaquete.Params.ParamByName('FechaF').AsDate        := dParamFechaF;
            zqPaquete.ExecSQL;
        end;
        {$ENDREGION}

        {$REGION 'sNumeroOrden,sIdPlataforma,sIdPernocta (-1)'}
        if (tablaMaestra.FieldByName('SQLCampos').AsString = 'sNumeroOrden,sIdPlataforma,sIdPernocta') and (iParamIdConsulta =-1) then
        begin
            zqPaquete.Active := False ;
            zqPaquete.SQL.Clear ;
            zqPaquete.SQL.Add('Update '+tablaMaestra.FieldByName('TablaDependiente').AsString+' set sNumeroOrden =:Folio, sIdPlataforma =:Plataforma, sIdPernocta =:Pernocta Where '+ tablaMaestra.FieldByName('SQLCondicion').AsString);
            zqPaquete.Params.ParamByName('Contrato').AsString    := sParamContrato ;

            if (tablaMaestra.FieldByName('Descripcion').AsString <> 'Equipo Reportado') and (tablaMaestra.FieldByName('Descripcion').AsString <> 'Personal Reportado') and
               (tablaMaestra.FieldByName('Descripcion').AsString <> 'Tiempo Extra Reportado')then
                 zqPaquete.Params.ParamByName('Convenio').AsString := sParamConvenio;

            zqPaquete.Params.ParamByName('Folio').AsString       := sParamFolio;
            zqPaquete.Params.ParamByName('FolioOld').AsString    := sParamOldWbs;
            zqPaquete.Params.ParamByName('Plataforma').AsString  := sParamPlataforma;
            zqPaquete.Params.ParamByName('Pernocta').AsString    := sParamPernocta;
            zqPaquete.ExecSQL;
        end;
        {$ENDREGION}

        {$REGION 'sNumeroOrden,sIdPernocta (-1)'}
        if (tablaMaestra.FieldByName('SQLCampos').AsString = 'sNumeroOrden,sIdPernocta') and (iParamIdConsulta =-1) then
        begin
            zqPaquete.Active := False ;
            zqPaquete.SQL.Clear ;
            zqPaquete.SQL.Add('Update '+tablaMaestra.FieldByName('TablaDependiente').AsString+' set sNumeroOrden =:Folio, sIdPernocta =:Pernocta Where '+ tablaMaestra.FieldByName('SQLCondicion').AsString);
            zqPaquete.Params.ParamByName('Contrato').AsString    := sParamContrato ;
            zqPaquete.Params.ParamByName('Folio').AsString       := sParamFolio;
            zqPaquete.Params.ParamByName('FolioOld').AsString    := sParamOldWbs;
            zqPaquete.Params.ParamByName('Pernocta').AsString    := sParamPernocta;
            zqPaquete.ExecSQL;
        end;
        {$ENDREGION}

        {$REGION 'sNumeroOrden (-1)'}
        if (tablaMaestra.FieldByName('SQLCampos').AsString = 'sNumeroOrden') and (iParamIdConsulta =-1) then
        begin
            zqPaquete.Active := False ;
            zqPaquete.SQL.Clear ;
            zqPaquete.SQL.Add('Update '+tablaMaestra.FieldByName('TablaDependiente').AsString+' set sNumeroOrden =:Folio Where '+ tablaMaestra.FieldByName('SQLCondicion').AsString);
            zqPaquete.Params.ParamByName('Contrato').AsString    := sParamContrato ;
            zqPaquete.Params.ParamByName('Folio').AsString       := sParamFolio;
            zqPaquete.Params.ParamByName('FolioOld').AsString    := sParamOldWbs;
            zqPaquete.ExecSQL;
        end;
        {$ENDREGION}

         {$REGION 'sFolio (-1)'}
        if (tablaMaestra.FieldByName('SQLCampos').AsString = 'sFolio') and (iParamIdConsulta =-1) then
        begin
            zqPaquete.Active := False ;
            zqPaquete.SQL.Clear ;
            zqPaquete.SQL.Add('Update '+tablaMaestra.FieldByName('TablaDependiente').AsString+' set sFolio =:Folio Where '+ tablaMaestra.FieldByName('SQLCondicion').AsString);
            zqPaquete.Params.ParamByName('Contrato').AsString    := sParamContrato ;
            zqPaquete.Params.ParamByName('Folio').AsString       := sParamFolio;
            zqPaquete.Params.ParamByName('FolioOld').AsString    := sParamOldWbs;
            zqPaquete.ExecSQL;
        end;
        {$ENDREGION}

        tablaMaestra.Next;
    end;

    tablaMaestra.Destroy;
    zqPaquete.Destroy;
end;

function ExisteRegistroBD(sParamTabla, sParamContrato, sParamConvenio, sParamFolio, sParamWbs, sParamActividad, sParamDescripcion, sParamOldActividad :string) :boolean;
var
   zqPaquete, tablaMaestra : tzReadOnlyQuery;
   cadena : string;
begin
    result := False;
    zqPaquete := TzReadOnlyQuery.create(nil);
    zqPaquete.Connection := Connection.zConnection;

    tablaMaestra := TzReadOnlyQuery.create(nil);
    tablaMaestra.Connection := Connection.zConnection;

    tablaMaestra.Active := False ;
    tablaMaestra.SQL.Clear ;
    tablaMaestra.SQL.Add('Select * from master_actualiza_tabla where Tabla =:Tabla and Tipo = "Existe" ');
    tablaMaestra.Params.ParamByName('Tabla').AsString   := sParamTabla;
    tablaMaestra.Open;

    while not tablaMaestra.Eof do
    begin
        if tablaMaestra.FieldByName('SQLCampos').AsString = 'sNumeroActividad,Folio' then
        begin
            zqPaquete.Active := False ;
            zqPaquete.SQL.Clear ;
            zqPaquete.SQL.Add('Select sContrato from '+tablaMaestra.FieldByName('TablaDependiente').AsString+' Where '+ tablaMaestra.FieldByName('SQLCondicion').AsString);
            zqPaquete.Params.ParamByName('Contrato').AsString    := sParamContrato ;
            zqPaquete.Params.ParamByName('Convenio').AsString    := sParamConvenio;
            zqPaquete.Params.ParamByName('Folio').AsString       := sParamFolio;
            zqPaquete.Params.ParamByName('Actividad').AsString   := sParamActividad;
            zqPaquete.Open;

            if zqPaquete.RecordCount > 0 then
            begin
               if sParamActividad <> sParamOldActividad  then
               begin
                   result := True;
                   cadena := tablaMaestra.FieldByName('Descripcion').AsString;
               end;
            end;
        end;

        if tablaMaestra.FieldByName('SQLCampos').AsString = 'mDescripcion,Folio' then
        begin
            zqPaquete.Active := False ;
            zqPaquete.SQL.Clear ;
            zqPaquete.SQL.Add('Select sContrato from '+tablaMaestra.FieldByName('TablaDependiente').AsString+' Where '+ tablaMaestra.FieldByName('SQLCondicion').AsString);
            zqPaquete.Params.ParamByName('Contrato').AsString    := sParamContrato ;
            zqPaquete.Params.ParamByName('Folio').AsString       := sParamFolio;
            zqPaquete.Params.ParamByName('Convenio').AsString    := sParamConvenio;
            zqPaquete.Params.ParamByName('Descripcion').AsString := sParamDescripcion;
            zqPaquete.Open;

            if zqPaquete.RecordCount > 0 then
            begin
              if sParamActividad <> sParamOldActividad  then
               begin
                  result := True;
                  cadena := tablaMaestra.FieldByName('Descripcion').AsString;
               end;
            end;
        end;

        if tablaMaestra.FieldByName('SQLCampos').AsString = 'sNumeroOrden' then
        begin
            zqPaquete.Active := False ;
            zqPaquete.SQL.Clear ;
            zqPaquete.SQL.Add('Select sContrato from '+tablaMaestra.FieldByName('TablaDependiente').AsString+' Where '+ tablaMaestra.FieldByName('SQLCondicion').AsString);
            zqPaquete.Params.ParamByName('Contrato').AsString    := sParamContrato ;
            zqPaquete.Params.ParamByName('Folio').AsString       := sParamFolio;
            zqPaquete.Open;

            if zqPaquete.RecordCount > 0 then
            begin
              if sParamActividad <> sParamOldActividad  then
               begin
                  result := True;
                  cadena := tablaMaestra.FieldByName('Descripcion').AsString;
               end;
            end;
        end;

        tablaMaestra.Next;
    end;

    if result then
       messageDLG(cadena, mtInformation, [mbOk],0);

    tablaMaestra.Destroy;
    zqPaquete.Destroy;
end;

function ReportoActividad(sParamTabla, sParamContrato, sParamConvenio, sParamFolio, sParamWbs, sParamActividad, sParamItem, sParamDescripcion, sParamOldWbs :string) :boolean;
var
   zqPaquete, tablaMaestra : tzReadOnlyQuery;
   cadena :string;
begin
    result := False;
    zqPaquete := TzReadOnlyQuery.create(nil);
    zqPaquete.Connection := Connection.zConnection;

    tablaMaestra := TzReadOnlyQuery.create(nil);
    tablaMaestra.Connection := Connection.zConnection;

    tablaMaestra.Active := False ;
    tablaMaestra.SQL.Clear ;
    tablaMaestra.SQL.Add('Select * from master_actualiza_tabla where Tabla =:Tabla and Tipo = "Valida" ');
    tablaMaestra.Params.ParamByName('Tabla').AsString   := sParamTabla;
    tablaMaestra.Open;

    while not tablaMaestra.Eof do
    begin
        if tablaMaestra.FieldByName('SQLCampos').AsString = 'sWbs,Folio,Convenio' then
        begin
            zqPaquete.Active := False ;
            zqPaquete.SQL.Clear ;
            zqPaquete.SQL.Add('Select sWbs from '+tablaMaestra.FieldByName('TablaDependiente').AsString+' Where '+ tablaMaestra.FieldByName('SQLCondicion').AsString);
            zqPaquete.Params.ParamByName('Contrato').AsString    := sParamContrato ;
            zqPaquete.Params.ParamByName('Convenio').AsString    := sParamConvenio;
            zqPaquete.Params.ParamByName('Folio').AsString       := sParamFolio;
            zqPaquete.Params.ParamByName('Wbs').AsString         := sParamWbs+'%';
            zqPaquete.Open;

            if zqPaquete.RecordCount > 0 then
            begin
                result := True;
                cadena := cadena +#13+tablaMaestra.FieldByName('Descripcion').AsString;
            end;
        end;

        if tablaMaestra.FieldByName('SQLCampos').AsString = 'sWbs,Folio' then
        begin
            zqPaquete.Active := False ;
            zqPaquete.SQL.Clear ;
            zqPaquete.SQL.Add('Select sWbs from '+tablaMaestra.FieldByName('TablaDependiente').AsString+' Where '+ tablaMaestra.FieldByName('SQLCondicion').AsString);
            zqPaquete.Params.ParamByName('Contrato').AsString    := sParamContrato ;
            zqPaquete.Params.ParamByName('Folio').AsString       := sParamFolio;
            zqPaquete.Params.ParamByName('Wbs').AsString         := sParamWbs+'%';
            zqPaquete.Open;

            if zqPaquete.RecordCount > 0 then
            begin
                result := True;
                cadena := cadena +#13+tablaMaestra.FieldByName('Descripcion').AsString;
            end;
        end;
        tablaMaestra.Next;
    end;

    if result then
       messageDLG('No se puede Eliminar, Reportado en: '+#13+cadena, mtInformation, [mbOk],0);

    tablaMaestra.Destroy;
    zqPaquete.Destroy;
end;

procedure InsertaPersonalOficio(sParamContrato, sParamFolio :string; dParamFecha :tDate; iParamGerencial: integer; zParamOficio :tzQuery);
var
   zqInserta : tzReadOnlyQuery;
begin
    zqInserta := TzReadOnlyQuery.create(nil);
    zqInserta.Connection := Connection.zConnection;

    zParamOficio.First;
    while not zParamOficio.Eof do
    begin
        zqInserta.Active := False;
        zqInserta.SQL.Clear;
        zqInserta.SQL.Add('INSERT INTO g_bitacoradepersonal (sContrato,sNumeroOrden,dIdFecha,IdGerencial,sIdPersonal,dCantidadDiurno,dCantidadNocturno,limprime) '+
                         'VALUES (:Contrato, :Folio, :Fecha, :Gerencial, :Id, 0,0,"Si")');
        zqInserta.ParamByName('Contrato').AsString   := sParamContrato;
        zqInserta.ParamByName('Folio').AsString      := sParamFolio;
        zqInserta.ParamByName('Fecha').AsDate        := dParamFecha;
        zqInserta.ParamByName('Gerencial').AsInteger := iParamGerencial;
        zqInserta.ParamByName('Id').AsString         := zParamOficio.FieldByName('sIdRecurso').AsString;
        zqInserta.ExecSQL;

        zParamOficio.Next;
    end;
    zqInserta.Destroy;
end;

function AsignarSQL(var Dataset: TUniQuery; QueryName: String; Option: string; AutoApply: Boolean = True): Boolean;Overload;
begin
Result := UDMConection.setSQL(Dataset,QueryName,Option,AutoApply);
end;

function FiltrarDataset(var Dataset: TUniQuery; params: string; Values: array of Variant): Boolean;
begin
  Result := UDMConection.setParams(Dataset,params,Values);
end;
{ TUDMConection }

procedure TUDMConection.conBdConnectionLost(Sender: TObject;
  Component: TComponent; ConnLostCause: TConnLostCause;
  var RetryMode: TRetryMode);
begin
case(ConnLostCause) of

      clOpen: RetryMode := rmReconnectExecute;
      clApply: RetryMode := rmReconnectExecute;
      clConnectionApply: RetryMode := rmReconnectExecute;
      clRefresh:     RetryMode := rmReconnectExecute;
      clTransStart :
         RetryMode := rmReconnectExecute;
      clExecute:
         RetryMode := rmReconnectExecute;
  end;
end;

procedure TUDMConection.gAfterDelete(gDataset: TDataset);
begin
//  try
//    connection.pAuditoria.Execute;
//  except
//    ;
//  end;
end;

procedure TUDMConection.gAfterPost(gDataset: TDataset);
var
  insert: string;
  update: string;
  accion, keys, valor, tabla: string;
  idUsuario, idAfectado: Integer;
  SQL,OldSQL, CuerpoSQL, OldCuerpoSQL, ValorSQL: WideString;
  I: Integer;
begin
  Connection.zConnection.Ping;
  TUniquery(gdataset).applyUpdates();

//  try
//    if  connection.pAuditoria.ParamByName('pAccion').AsString = 'Insertar' then
//    begin
//       connection.pAuditoria.ParamByName('pIdAfectado').AsInteger:= TUniQuery(gDataSet).LastInsertId;
//    end;
//
//    if not( connection.pAuditoria.ParamByName('pSQL').AsString='') and not ((connection.pAuditoria.ParamByName('pAccion').AsString <> 'Insertar') and (connection.pAuditoria.ParamByName('poldSQL').AsString='')) then
//      connection.pAuditoria.Execute;
//
//  except
//    ;
//  end;
end;

procedure TUDMConection.gBeforeDelete(gDataset: TDataset);
var
  insert: string;
  update: string;
  accion, keys, valor, tabla: string;
  idUsuario, idAfectado: Integer;
  SQL,OldSQL, CuerpoSQL, OldCuerpoSQL, ValorSQL: String;
  I: Integer;
begin
  try
    SQL := '';
    OldSQL := '';

    CuerpoSQL := '';
    OldCuerpoSQL := '';

    //idUsuario := VarGlobal.Elemento('IdUsuario').asInteger;
//    tabla := TCRFieldDesc(TUniQuery(gDataset).GetFieldDesc(gDataset.Fields[0].FieldNo)).TableInfo.TableName;
//
//    // Obtener el campo llave
//    for I := 0 to gDataset.FieldCount-1 do
//    begin
//      if TCRFieldDesc(TUniQuery(gDataset).GetFieldDesc(gDataset.Fields[i].FieldNo)).IsAutoIncrement and
//        TCRFieldDesc(TUniQuery(gDataset).GetFieldDesc(gDataset.Fields[i].FieldNo)).IsKey then
//        keys := keys + gDataset.Fields[i].FieldName;
//    end;
//
//    accion := 'Eliminar';
//
//     //Campos y valores
//    CuerpoSQL := '(';
//    ValorSQL  := '(';
//    for I := 0 to gDataset.FieldCount-1 do
//    begin
//      try
//        //Campos
//        CuerpoSQL    := CuerpoSQL    + ' ' + gDataset.Fields.Fields[i].FieldName + IfThen(i = gDataset.FieldCount-1, ') ', ', ') ;
//
//        //valores antiguo y nuevorespectivamente
//        ValorSQL := ValorSQL + QuotedStr(VarToStr(gDataset.FieldByName(gDataset.Fields.Fields[i].FieldName).value)) +
//                     IfThen(i = gDataset.FieldCount-1, ') ', ', ');
//      except
//        ;
//      end;
//    end;
//
//    OldSQL    := 'INSERT INTO ' + tabla + CuerpoSQL + ' VALUES ' + ValorSQL;
//
//    IdAfectado := gDataset.FieldByName(keys).AsInteger;
//    SQL := 'DELETE FROM ' + tabla + ' WHERE ' + keys + ' = ' + QuotedStr(IntToStr(idAfectado));
//
//    connection.pAuditoria.ParamByName('pidusuario').AsInteger := idUsuario;
//    connection.pAuditoria.ParamByName('pTabla').AsString      := tabla;
//    connection.pAuditoria.ParamByName('pAccion').AsString     := accion;
//    connection.pAuditoria.ParamByName('pKey').AsString        := keys;
//    connection.pAuditoria.ParamByName('pIdAfectado').AsInteger:= idAfectado;
//    connection.pAuditoria.ParamByName('pSQL').AsString        := SQL;
//    connection.pAuditoria.ParamByName('pOldSQL').AsString     := OldSQL;

  except
    ;
  end;
end;

procedure TUDMConection.gBeforeOpen(gDataset: TDataset);
begin
reconectarConn;
end;

procedure TUDMConection.gBeforePost(gDataset: TDataSet);
var
  zMaxId: TUniQuery;
  hayCambios: Boolean;
  QueryName, FieldName: string;
  I: Integer;
  insert: string;
  update: string;
  accion, keys, valor, tabla: string;
  idUsuario, idAfectado: Integer;

  SQL,OldSQL, CuerpoSQL, OldCuerpoSQL, ValorSQL: String;
begin
  try
    Connection.UConnection.Ping;

    if connection.zValidacion.Active and (connection.zValidacion.RecordCount > 0) then
    begin
      i := 0;
      QueryName := TCRFieldDesc(TUniQuery(gDataset).GetFieldDesc(gDataset.Fields[0].FieldNo)).TableInfo.TableName;
      while i < gDataset.FieldCount do
      begin
        FieldName := gDataset.Fields.Fields[i].FieldName;
        if (UpperCase(FieldName) <> 'ACTIVO') and connection.zValidacion.Locate('TABLE_NAME;COLUMN_NAME', VarArrayOf([QueryName, FieldName]), []) and  ((gDataset.FieldByName(FieldName).IsNull) or (Length(Trim(gDataset.FieldByName(FieldName).asString))= 0)) then
        begin
          if Length(Trim(connection.zValidacion.FieldByName('COLUMN_COMMENT').AsString)) = 0 then
            //raise eWarning.Create('Mensaje de autovalidación no establecido para el campo [' + zValidacion.FieldByName('TABLE_NAME').AsString + '.' + zValidacion.FieldByName('COLUMN_NAME').AsString + ']')
          else
            //raise eWarning.Create(zValidacion.FieldByName('COLUMN_COMMENT').AsString);
        end;
        inc(i);
      end;
    end;



    try
      hayCambios := False;
      SQL := '';
      OldSQL := '';

      CuerpoSQL := '';
      OldCuerpoSQL := '';

    //  idUsuario := VarGlobal.Elemento('IdUsuario').asinteger;
      tabla := TCRFieldDesc(TUniQuery(gDataset).GetFieldDesc(gDataset.Fields[0].FieldNo)).TableInfo.TableName;

      // Obtener el campo llave
      for I := 0 to gDataset.FieldCount-1 do
      begin
        if TCRFieldDesc(TUniQuery(gDataset).GetFieldDesc(gDataset.Fields[i].FieldNo)).IsAutoIncrement and
          TCRFieldDesc(TUniQuery(gDataset).GetFieldDesc(gDataset.Fields[i].FieldNo)).IsKey then
          keys := keys + gDataset.Fields[i].FieldName;
      end;

      if TUniquery(gDataset).State = dsInsert then
      begin
        hayCambios := True;
        accion := 'Insertar';
  //      idAfectado := (TUniquery(Dataset).LastInsertId);

         //Campos y valores
        CuerpoSQL := '(';
        ValorSQL  := '(';
        for I := 0 to gDataset.FieldCount-1 do
        begin
          try
            //Campos
            CuerpoSQL    := CuerpoSQL    + ' ' + gDataset.Fields.Fields[i].FieldName + IfThen(i = gDataset.FieldCount-1, ') ', ', ') ;

            //valores antiguo y nuevorespectivamente
            ValorSQL := ValorSQL + QuotedStr(VarToStr(gDataset.FieldByName(gDataset.Fields.Fields[i].FieldName).value)) +
                         IfThen(i = gDataset.FieldCount-1, ') ', ', ');
          except
            ;
          end;
        end;

        SQL    := 'INSERT INTO ' + tabla + CuerpoSQL + ' VALUES ' + ValorSQL;

      end
      else
      begin

        accion := 'Editar';
        IdAfectado := gDataset.FieldByName(keys).AsInteger;

        //Campos y valores
        for I := 0 to gDataset.FieldCount-1 do
        begin
          try
            if QuotedStr(VarToStr(gDataset.FieldByName(gDataset.Fields.Fields[i].FieldName).OldValue)) <> QuotedStr(VarToStr(gDataset.FieldByName(gDataset.Fields.Fields[i].FieldName).Value)) then
            begin
              HayCambios := True;

              //Campos
              OldCuerpoSQL := OldCuerpoSQL + ' ' + gDataset.Fields.Fields[i].FieldName + ' = ';
              CuerpoSQL    := CuerpoSQL    + ' ' + gDataset.Fields.Fields[i].FieldName + ' = ';

              //valores antiguo y nuevorespectivamente
              OldCuerpoSQL := OldCuerpoSQL + QuotedStr(VarToStr(gDataset.FieldByName(gDataset.Fields.Fields[i].FieldName).OldValue)) +
                           IfThen(i = gDataset.FieldCount-1, ' ', ', ');
              CuerpoSQL := CuerpoSQL + QuotedStr(VarToStr(gDataset.FieldByName(gDataset.Fields.Fields[i].FieldName).value)) +
                          IfThen(i = gDataset.FieldCount-1, ' ', ', ');
            end;
          except
            ;
          end;
        end;

        if hayCambios then
        begin
          if AnsiCompareStr(Copy(CuerpoSQL, Length(CuerpoSQL)-1, Length(CuerpoSQL)),', ') = 0 then
            Delete(CuerpoSQL, Length(CuerpoSQL)-1,1) ;


          if AnsiCompareStr(Copy(oldCuerpoSQL, Length(oldCuerpoSQL)-1, Length(oldCuerpoSQL)),', ')=0 then
            Delete(oldCuerpoSQL, Length(oldCuerpoSQL)-1,1) ;

        end;

        SQL    := 'UPDATE ' + tabla + ' SET ' + CuerpoSQL    + ' WHERE ' + keys + ' = ' + QuotedStr(IntToStr(idAfectado));
        OldSQL := 'UPDATE ' + tabla + ' SET ' + OldCuerpoSQL + ' WHERE ' + keys + ' = ' + QuotedStr(IntToStr(idAfectado));
        if not HayCambios then
        begin
          SQL := '';
          oldSQL := '';
        end;
      end;

      connection.pAuditoria.ParamByName('pidusuario').AsInteger := idUsuario;
      connection.pAuditoria.ParamByName('pTabla').AsString      := tabla;
      connection.pAuditoria.ParamByName('pAccion').AsString     := accion;
      connection.pAuditoria.ParamByName('pKey').AsString        := keys;
      connection.pAuditoria.ParamByName('pIdAfectado').AsInteger:= idAfectado;
      connection.pAuditoria.ParamByName('pSQL').AsString        := SQL;
      connection.pAuditoria.ParamByName('pOldSQL').AsString     := OldSQL;
    except
      ;
    end;

  except
    raise;
  end;

end;

procedure TUDMConection.gBeforeRefresh(gDataset: TDataSet);
begin
  reconectarConn;
end;

procedure TUDMConection.reconectarConn;
begin
try
  try
   connection.Uconnection.Ping;
  finally

  end;
except
  ;
end;
end;

function TUDMConection.reconecZeos(var Query: TZQuery; sql: String): Boolean;
begin
  try
  if not Connection.zConnection.ping then
   begin
    result := False;
    Query.Active := False;
    Query.SQL.Text := sql;
    Query.BeforeOpen := zBeforeOpen;
    Query.BeforeRefresh := zBeforeRefresh;
    Query.Open;
    result := True;
   end;
   result :=False;
  except
    on e: Exception do
      if e.message <> '***' then
      begin
      if msgError('No se pudo conectar debido al siguiente error:  ' + e.Message,'Error de Conexion') = True then
       begin
           //zReconnect;
       end;
      end;
  end;
end;

procedure TUDMConection.zBeforeOpen(gDataset: TDataset);
begin
  zReconnect;
end;

procedure TUDMConection.zBeforeRefresh(gDataset: TDataSet);
begin
  zReconnect;
end;

procedure TUDMConection.zReconnect;
begin
try
   if not Connection.zConnection.ping then
      Connection.zConnection.Reconnect;
finally
end;

end;

function TUDMConection.ReloadQuerys: Boolean;
begin
  try
    Result := False;
    connection.zConsultasSQL.Active := False;
    connection.zConsultasSQL.SQL.Text := 'Select * from master_consultassql';
    connection.zConsultasSQL.BeforeOpen := gBeforeOpen;
    connection.zConsultasSQL.BeforeRefresh := gBeforeRefresh;
    connection.zConsultasSQL.Open;

    Result := True;
  except
    on e: Exception do
      if e.message <> '***' then
      begin
      if msgError('No se pudo conectar debido al siguiente error:  ' + e.Message,'Error de Conexion') = True then
       begin
           reconectarConn;
       end;
      end;
  end;

end;

function TUDMConection.setParams(var Dataset: TUniQuery; params: string;
  Values: array of Variant): Boolean;
var
  i,j: Integer;
  ParamList: TStringList;
  sParamFilter, sParamVar1, sParamVar2, sParamVar3, sParamVar4, sParamVar5,sParamVar6, sParamSentencia : string;
begin
  try
    Result := False;
    Dataset.Close;
    ParamList := TStringList.Create;
    ParamList.Delimiter := ',';
    ParamList.DelimitedText := params;

    if (Length(Trim(Dataset.SQL.Text)) <> 0) and (Dataset.Params.Count > 0) then
    begin

      for j := 0 to ParamList.Count-1 do
        begin
          if (Dataset.Params.FindParam(ParamList[j]) <> nil) then
          begin
             if (ParamList[j] = 'filter_by_code') then
                sParamFilter := Values[j]
             else
                if (ParamList[j] = 'var_by_code1') then
                   sParamVar1 := Values[j]
                else
                    if (ParamList[j] = 'var_by_code2') then
                       sParamVar2 := Values[j]
                    else
                      if (ParamList[j] = 'var_by_code3') then
                         sParamVar3 := Values[j]
                      else
                         if (ParamList[j] = 'var_by_code4') then
                             sParamVar4 := Values[j]
                          else
                             if (ParamList[j] = 'var_by_code5') then
                                 sParamVar5 := Values[j]
                              else
                                 if (ParamList[j] = 'var_by_code6') then
                                 sParamVar6 := Values[j]
                                  else
                                     Dataset.ParamByName(Dataset.Params.FindParam(ParamList[j]).Name).AsString := Values[j];

          end
          else
            raise Exception.Create('Parámetro de Consulta SQL ['+ ParamList[j] +'] no encontrado, verifica tu sentencia');
        end;
    end;

    //:filter_by_name parmetro usado para mandar desde codigo un filtro, recibirlo y reemplazarlo por sentencia SQL
    sParamSentencia := fReemplazaFiltroSQL(Dataset.SQL.Text,sParamFilter, sParamVar1, sPAramVar2, sPAramVar3, sParamVar4, sParamVar5, sParamvar6);

    Dataset.SQL.Text := sParamSentencia;

    Result := True;
  except
    raise;
  end;
end;

function TUDMConection.setSQL(var Dataset: TUniQuery; QueryName, Option,
  Codificacion: String): Boolean;
var
  i: Integer;
begin
  try
    Result := False;
    if Not Assigned(Dataset) then
      raise Exception.Create('El componente no se encuentra creado.');

    if (Not connection.zConsultasSQL.Active) then
      ReloadQuerys;

    if (Not connection.zConsultasSQL.Active) or (connection.zConsultasSQL.Active and (connection.zConsultasSQL.RecordCount = 0)) then
      raise Exception.Create('No se encuentra consultas SQL definidas dentro de la tabla master_ConsultasSql');

    if connection.zConsultasSQL.Locate('NombreConsulta;Tipo', varArrayOf([QueryName,Option]), []) then
    begin
      if Dataset.Active then
        Dataset.Close;


      QueryName := TCRFieldDesc(Dataset.GetFieldDesc(Dataset.Fields[0].FieldNo)).TableInfo.TableName;
      {if Dataset.Properties.Count > 0 then
        Dataset.Properties.Delete(0);

      Dataset.Properties.AddObject(QueryName, TObject(QueryName));}//gettablename
      Dataset.SQL.Text := connection.zConsultasSQL.FieldByName('SQL').AsString;


      if (Length(Trim(Dataset.SQL.Text)) <> 0) and (Dataset.Params.Count > 0) then
      begin
        //Inicializar todos los parámetros con -1
        for i := 0 to Dataset.Params.Count - 1 do
        begin
          Dataset.ParamByName(Dataset.Params.Items[i].Name).AsString := '-1';
        end;
      end;


        Dataset.Connection := connection.Uconnection;

      //En caso de ser tipo update le asignaré el procedimiento Befores post
      //Para manejar el autoincrementable
      if Option = pUpdate then
        Dataset.BeforePost := gBeforePost
      else If Option = pReadOnly then
      begin
        Dataset.BeforePost := nil;
        Dataset.ReadOnly := True;
      end;
      Dataset.BeforeOpen := gBeforeOpen;
      Dataset.BeforeRefresh := gBeforeRefresh;

      Result := True;
    end;
  except
    raise; //Que el programador lo atrape y haga lo que se le antoje
  end;
end;

function cad_bool(cad: String): Boolean;
var valor :Boolean;
begin
  if cad = 'Si' then
    valor := True
  else if cad= 'No' then
    valor := False;

  result := valor;
end;

procedure creaNotyfi(IdMensaje:Integer;Tabla:String;Campo:String;Folio:String;Tipo:String;Estatus:String;Fecha:TDateTime; LimiteDias:Integer);
var sqlInsert:TUniQuery;
begin
  sqlInsert:= TUniQuery.Create(nil);
  sqlInsert.Connection := Connection.uConnection;
  sqlInsert.SQL.Text := 'Select * from master_notificaciones '+
                        'where '+
                        '(:IdNotificacion=-1 or (:IdNotificacion<>-1 and :IdNotificacion=IdNotificacion))';
  sqlInsert.ParamByName('IdNotificacion').AsString := '-9';
  sqlInsert.Open;

  sqlInsert.Append;
  sqlInsert.FieldByName('IdMensaje').AsInteger := IdMensaje;
  sqlInsert.FieldByName('Folio').AsString := Folio;
  sqlInsert.FieldByName('TipoAlerta').AsString := Tipo;
  if Tipo='Estatus' then
    sqlInsert.FieldByName('Estatus').AsString := Estatus
  else if Tipo='Fecha' then
  begin
    sqlInsert.FieldByName('Fecha').AsDateTime := Fecha;
    sqlInsert.FieldByName('LimiteDias').AsInteger := LimiteDias;
  end
  else if Tipo='Documento' then
  begin
    sqlInsert.FieldByName('Tabla').AsString := Tabla;
    sqlInsert.FieldByName('CampoPrincipal').AsString := Campo;
    sqlInsert.FieldByName('LimiteDias').AsInteger := LimiteDias;
  end;

  sqlInsert.FieldByName('sIdUsuario').AsString := global_usuario;
  sqlInsert.FieldByName('Activo').AsString := 'Si';
  sqlInsert.Post;

  sqlInsert.Close;
  sqlInsert.Destroy;
end;

procedure PermisosBotones(Form:TForm; Programa:String);
var
  i : Integer;
  uTmp : TUniQuery;
nm:String;
begin
  uTmp := TUniquery.Create(nil);
  uTmp.Connection := Connection.uConnection;

  if connection.zModulosPermisos.Locate('sIdPrograma',Programa,[]) then
  begin
  i:=0;
  uTmp.SQL.Add('SELECT * FROM master_modulos_detalles WHERE Usuario = :User and Clase = :Clase');
  uTmp.Params.ParamByName('User').AsString:=global_usuario;
  uTmp.Params.ParamByName('Clase').AsString:=Form.ClassName;
  uTmp.Open;
  nm:=Form.ClassName;
  while i < Form.ComponentCount do
  begin
    nm := Form.Components[i].Name;
//    if Form.Components[i].ClassName = 'TcxTabSheet' then
//      if uTmp.Locate('ComponenteDetalle',nm,[]) then
//        TcxTabSheet(Form.Components[i]).TabVisible:=cad_bool(uTmp.FieldByName('Visualizar').AsString)
//      else
//        TcxTabSheet(Form.Components[i]).TabVisible:=False;

    if nm = 'frmBarraH11' then
    begin
        TcxButton(Form.Components[i].Components[1]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Insertar').AsString);
        TcxButton(Form.Components[i].Components[2]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Editar').AsString);
        TcxButton(Form.Components[i].Components[3]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Eliminar').AsString);
        TcxButton(Form.Components[i].Components[4]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Imprimir').AsString);
        TcxButton(Form.Components[i].Components[5]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Imprimir').AsString);
        TcxButton(Form.Components[i].Components[6]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Imprimir').AsString);
        TcxButton(Form.Components[i].Components[7]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Imprimir').AsString);
    end;

    if nm = 'frmBarraH12' then
    begin
        TcxButton(Form.Components[i].Components[1]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Insertar').AsString);
        TcxButton(Form.Components[i].Components[2]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Editar').AsString);
        TcxButton(Form.Components[i].Components[3]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Eliminar').AsString);
        TcxButton(Form.Components[i].Components[4]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Imprimir').AsString);
        TcxButton(Form.Components[i].Components[5]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Imprimir').AsString);
        TcxButton(Form.Components[i].Components[6]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Imprimir').AsString);
        TcxButton(Form.Components[i].Components[7]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Imprimir').AsString);
    end;

    if nm = 'frmBarra1' then
    begin
        TcxButton(Form.Components[i].Components[1]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Insertar').AsString);
        TcxButton(Form.Components[i].Components[2]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Editar').AsString);
        TcxButton(Form.Components[i].Components[5]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Eliminar').AsString);
        TcxButton(Form.Components[i].Components[6]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Imprimir').AsString);
    end;

    if nm = 'frmBarra2' then
    begin
        TcxButton(Form.Components[i].Components[1]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Insertar').AsString);
        TcxButton(Form.Components[i].Components[2]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Editar').AsString);
        TcxButton(Form.Components[i].Components[5]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Eliminar').AsString);
        TcxButton(Form.Components[i].Components[6]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Imprimir').AsString);
    end;


    if Form.Components[i].Tag = 10 then
      TcxButton(Form.Components[i]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Insertar').AsString);

    if Form.Components[i].Tag = 11 then
      TcxButton(Form.Components[i]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Editar').AsString);

    if Form.Components[i].Tag = 12 then
      TcxButton(Form.Components[i]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Eliminar').AsString);

    if Form.Components[i].Tag = 13 then
      TcxButton(Form.Components[i]).Enabled := cad_bool(connection.zModulosPermisos.FieldByName('Imprimir').AsString);

    inc(i);
  end;
  end;
  uTmp.Destroy;
end;

function RecargarConsultasSQL: Boolean;
begin
  try
    Result := UDMConection.ReloadQuerys;
  except
    raise;
  end;
end;

function MsgEliminarMYSQL(msg: String):String;
var
    sl: TStringList;
    separa : Char;
    Tabla, Campo, new_msg: String;
    zSQLTemp:TUniquery;
begin
      {Para registros duplicados}
{#23000Cannot delete or update a parent row: a foreign key constraint fails (`
    siani`.`alm_insumos_precios`, CONSTRAINT `ins_fk_200` FOREIGN KEY (`IdInsumo`) REFERENCES `alm_insumos` (`IdInsumo`) ON DELETE NO ACTION ON UPDATE CASCADE)}

      {Para Llaves foraneas}
     msg := StringReplace(msg, '#23000Cannot delete or update a parent row: a foreign key constraint fails', '', [rfReplaceAll, rfIgnoreCase]);
     msg := StringReplace(msg, 'CONSTRAINT', '', [rfReplaceAll, rfIgnoreCase]);
     msg := StringReplace(msg, 'FOREIGN KEY', '', [rfReplaceAll, rfIgnoreCase]);
     msg := StringReplace(msg, 'REFERENCES', '', [rfReplaceAll, rfIgnoreCase]);
     msg := StringReplace(msg, 'ON DELETE NO ACTION ON UPDATE CASCADE', '', [rfReplaceAll, rfIgnoreCase]);
     msg := StringReplace(msg, '(', '', [rfReplaceAll, rfIgnoreCase]);
     msg := StringReplace(msg, ')', '', [rfReplaceAll, rfIgnoreCase]);
     msg := StringReplace(msg, '`', ',', [rfReplaceAll, rfIgnoreCase]);
     separa := ',';
     sl := TStringList.Create;
     sl.Delimiter := separa;
     sl.DelimitedText := msg;
     Tabla    := sl[3];
     Campo    := sl[8];
     zSQLTemp := TUniquery.Create(nil);
     zSQLTemp.Connection := Connection.uConnection;
     zSQLTemp.SQL.Text := 'Select * from master_cnf_folios where Tabla = :Tabla';
     zSQLTemp.ParamByName('Tabla').AsString := Tabla;
     zSQLTemp.Open;
     if zSQLTemp.RecordCount > 0 then
        new_msg  := 'No se puede eliminar, los datos ya estan asignados a: '+zSQLTemp.FieldByName('TablaNombre').AsString
     else
        new_msg  := 'No se puede eliminar, los datos ya están asinados a: '+Tabla;
     zSQLTemp.Close;
     zSQLTemp.Destroy;
     result :=  new_msg;
end;

function TUDMConection.setSQL(var Dataset: TUniQuery; QueryName, Option: string; AutoApply: Boolean = True; auditar: Boolean = True): Boolean;
var
  i: Integer;
begin

  try
    Result := False;
    if Not Assigned(Dataset) then
      raise Exception.Create('El componente no se encuentra creado.');

    if (Not connection.zConsultasSQL.Active) then
      ReloadQuerys;

    if (Not connection.zConsultasSQL.Active) or (connection.zConsultasSQL.Active and (connection.zConsultasSQL.RecordCount = 0)) then
      raise Exception.Create('No se encuentra consultas SQL definidas dentro de la tabla master_ConsultasSql');

    if connection.zConsultasSQL.Locate('NombreConsulta;Tipo', varArrayOf([QueryName,Option]), []) then
    begin
      if Dataset.Active then
        Dataset.Close;

      Dataset.SQL.Text := connection.zConsultasSQL.FieldByName('SQL').AsString;
      Dataset.Connection := connection.Uconnection;

      if (Length(Trim(Dataset.SQL.Text)) <> 0) and (Dataset.Params.Count > 0) then
      begin

        for i := 0 to Dataset.Params.Count - 1 do
        begin
          Dataset.ParamByName(Dataset.Params.Items[i].Name).AsString := '-1';
        end;
      end;



      Dataset.options.AutoPrepare := True;
      Dataset.Options.LocalMasterDetail := True;



      Dataset.BeforeOpen := gBeforeOpen;
      Dataset.BeforeRefresh := gBeforeRefresh;

      if Option = pUpdate then
      begin

        Dataset.CheckMode := cmRefresh;
        Dataset.CachedUpdates := True;
        Dataset.SpecificOptions.Values['MySQL.FetchAll'] := 'true';
        Dataset.options.StrictUpdate := False;

        Dataset.LockMode := lmPessimistic;


//        if auditar then
//        begin
//          Dataset.BeforePost := gBeforePost;
//          Dataset.AfterDelete := gAfterDelete;
//          Dataset.BeforeDelete := gBeforeDelete;
//        end;

        if AutoApply then
          Dataset.AfterPost := gAfterPost
        else
          Dataset.AfterPost := nil;

      end
      else If Option = pReadOnly then
      begin
        Dataset.BeforePost := nil;
        Dataset.ReadOnly := True;
      end;



      Result := True;
    end;
  except
    raise;
  end;
end;

procedure guardar_leer_grid(cxGridView :TcxGridDBTableView;form:TForm; op:Integer);
var dir :String;
begin
  dir:= ExtractFilePath(Application.ExeName)+'Recursos\'+global_usuario;
  if not DirectoryExists(dir) then
  begin
      CreateDir(dir);
  end;
  {
  0: lee
  1: guarda
  }
  if op=0then
    cxGridView.RestoreFromIniFile(dir+'\'+form.Name+'_'+cxGridView.Name)
  else if op=1 then
  cxGridView.StoreToIniFile(dir+'\'+form.Name+'_'+cxGridView.Name);
end;


function autoFolio(var gDataset: TUniquery; sTabla :string;IdEmpresa:Integer=0;IdEmbarcacion:Integer=0;IdDepartamento:Integer=0): String;
var
  QueryName, FieldName: String;
  i,j: integer;
  Folio, Prefijo, LastCodeInserted: String;
  numid : Integer;
  numdigitos,cadenafolio, aux2, prefijo2 : String;
  aux : Integer;
  zTempMaxCode, zFolios, zEmbarcacion : TUniQuery;
  CodeMax, numcod, Embarcacion, Empresa : String;
  cantVal, cantVal2, Valor : Integer;
  sizePrefijo,sizeCodigo :  Integer;

begin
    Embarcacion:='0';
    if IdEmbarcacion > 0 then
    begin
      zEmbarcacion := TUniquery.create(nil);
      zEmbarcacion.Connection := Connection.uConnection;

      zEmbarcacion.SQL.Text:='select au.*, e.IdEmbarcacion from alm_almacenesporusuario au '+
                      'inner join master_embarcaciones as e on (e.IdAlmacen = au.IdAlmacen) '+
                      'where au.sIdUsuario = :Usuario';
      zEmbarcacion.ParamByName('Usuario').AsString:=global_usuario;
      zEmbarcacion.Open;
      if zEmbarcacion.RecordCount>0 then
         Embarcacion:=zEmbarcacion.FieldByName('IdEmbarcacion').AsString;
      zEmbarcacion.Destroy;
    end;

  // Folio Autoincrementable
  // 1. El valor del codigo debe ir nulo
  // 2. Debe estar previamente configurada en la tabla de folios;
  if IdEmpresa > 0 then
    Empresa := IntToStr(IdEmpresa)
  else
    Empresa := connection.ucontrato.FieldByName('IdEmpresa').AsString;

  zFolios := TUniquery.create(nil);
  zFolios.Connection := Connection.uConnection;

  zFolios.SQL.Add('Select '+
      't.TABLE_SCHEMA,    '+
      't.AUTO_INCREMENT,  '+
      'IF(ISNULL(t.TABLE_COMMENT) OR (t.TABLE_COMMENT=''),t.TABLE_NAME,t.TABLE_COMMENT)	as Leyenda,           '+
      'IF(ISNULL(c.COLUMN_COMMENT) OR (c.COLUMN_COMMENT=''),c.COLUMN_NAME,c.COLUMN_COMMENT)	as LeyendaColumn, '+
      'f.Id,                         '+
      'f.Tabla,                      '+
      'f.Campo,  '+
      'f.IniciarEn, '+
      '(select prefijo from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto limit 1) as Prefijo, '+
      '(select Aplicar from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto limit 1) as Aplicar,  '+
      '(select complemento from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto limit 1) as complemento, '+
      '(select numDig from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto limit 1) as NumDig,       '+
      '(select Aux from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto limit 1) as Aux,                '+
      '(select IniciarEn from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto limit 1) as IniciarEn,  '+
      't.TABLE_COMMENT, '+
      't.TABLE_NAME,    '+
      'c.COLUMN_NAME,   '+
      'c.IS_NULLABLE,   '+
      'c.DATA_TYPE,     '+
      'c.COLUMN_COMMENT '+

    'From                               '+
    '  information_schema.`TABLES` as t '+

    'INNER JOIN '+
    '  information_schema.`COLUMNS` as c '+
    'on (c.TABLE_NAME = t.TABLE_NAME and c.TABLE_NAME =:Tabla) '+

    'LEFT JOIN                   '+
    '  master_cnf_folios as f '+
    'on (f.Tabla = t.TABLE_NAME) AND c.COLUMN_NAME = f.Campo '+

    'WHERE ' +
    '  t.TABLE_SCHEMA = :pBd and ( '+
    '  (UPPER(c.COLUMN_NAME) like '+quotedStr('%Folio%')+' or UPPER(c.COLUMN_NAME) like '+quotedStr('%Codigo%')+' or UPPER(c.COLUMN_NAME) like '+quotedStr('%Plataforma%')+  ' or UPPER(c.COLUMN_NAME) like '+quotedStr('%Actividad%')+  ' or UPPER(c.COLUMN_NAME) like '+quotedStr('%NumeroMaterial%')+
    ' or UPPER(c.COLUMN_NAME) like '+quotedStr('%Orden%')+' or UPPER(c.COLUMN_NAME) like '+quotedStr('%Pernocta%')+' )'+
    '  and ((UPPER(t.TABLE_NAME) not like '+quotedStr('%_detalle%')+' ) or ((UPPER(t.TABLE_NAME) = '+quotedStr('op_presupuesto_detalle')+' ))) '+
    '  and (c.DATA_TYPE = '+quotedStr('varchar')+' ) '+
    '  ) ' +
    'group by TABLE_NAME,COLUMN_NAME');

  zFolios.ParamByName('pBd').asString     := connection.uConnection.Database;
  zFolios.ParamByName('Tabla').asString   := sTabla;
  zFolios.ParamByName('Empresa').asInteger := StrToInt(Empresa);
  zFolios.ParamByName('Barco').asInteger   := StrToInt(Embarcacion);
  zFolios.ParamByName('Depto').asInteger   := IdDepartamento;

  if zFolios.active then
    zFolios.refresh
  else
    zFolios.Open;

  Folio := '';
  LastCodeInserted := Folio;

  if zfolios.active and (zFolios.RecordCount > 0) then
  begin
    i := 0;

    QueryName := sTabla;
    while i < gDataset.FieldCount do
    begin
      FieldName := gDataset.Fields.Fields[i].FieldName;
      if zFolios.locate('TABLE_NAME;COLUMN_NAME', varArrayOf([QueryName,FieldName]), [loCaseInsensitive]) then
      begin
        if (zFolios.FieldByName('Aplicar').AsString = 'Si') and (zFolios.FieldByName('Campo').asString <>'') then
        begin
            //Cantidad de digitos numericcos del codigo ademas del prefijo
            prefijo := zFolios.FieldByName('Prefijo').asString;
            prefijo2 := prefijo + '%';
            Aux := zFolios.FieldByName('NumDig').asInteger;
            numDigitos := '';
            for j := 1 to Aux do
              numDigitos := numDigitos+'0';

            zTempMaxCode := TUniQuery.Create(nil);
            zTempMaxCode.Connection  := connection.uConnection;

            if ((zFolios.FieldByName('Tabla').asString = 'anexo_pedidos') OR (zFolios.FieldByName('Tabla').asString='anexo_requisicion')) then
            begin
              if zFolios.FieldByName('complemento').asString <> '' then
                zTempMaxCode.SQL.Text:= 'Select MAX('+zFolios.FieldByName('Campo').asString + ') as Campo ' +
                                    'from ' + zFolios.FieldByName('Tabla').asString +
                                    ' where ' +zFolios.FieldByName('Campo').asString + ' Like ' +
                                    QuotedStr(prefijo2) +  ' and ' +
                                    zFolios.FieldByName('Campo').asString + ' Like ' +
                                    QuotedStr('%'+zFolios.FieldByName('complemento').asString) +
                                    ' and sContrato=' + QuotedStr(global_contrato)
              else
                zTempMaxCode.SQL.Text:= 'Select MAX('+zFolios.FieldByName('Campo').asString + ') as Campo ' +
                                    'from ' + zFolios.FieldByName('Tabla').asString +
                                    ' where ' +zFolios.FieldByName('Campo').asString + ' Like ' +
                                    QuotedStr(prefijo2) +' and sContrato=' + QuotedStr(global_contrato);
            end
            ELSE
             BEGIN
              if zFolios.FieldByName('complemento').asString <> '' then
                zTempMaxCode.SQL.Text:= 'Select MAX('+zFolios.FieldByName('Campo').asString + ') as Campo ' +
                                    'from ' + zFolios.FieldByName('Tabla').asString +
                                    ' where ' +zFolios.FieldByName('Campo').asString + ' Like ' +
                                    QuotedStr(prefijo2) + ' and ' +
                                    zFolios.FieldByName('Campo').asString + ' Like ' +
                                    QuotedStr('%'+zFolios.FieldByName('complemento').asString)
              Else
                zTempMaxCode.SQL.Text:= 'Select MAX('+zFolios.FieldByName('Campo').asString + ') as Campo ' +
                                    'from ' + zFolios.FieldByName('Tabla').asString +
                                    ' where '+zFolios.FieldByName('Campo').asString + ' Like ' +
                                    QuotedStr(prefijo2);
            END;

            zTempMaxCode.Open;

            CodeMax := zTempMaxCode.FieldByName('Campo').AsString;

            if trim(zFolios.FieldByName('Prefijo').asString) <> '' then
            begin
              sizePrefijo := length(prefijo);

              Delete(CodeMax,1,sizePrefijo);
              //CodeMax := Copy(CodeMax,0,pos(zFolios.FieldByName('Prefijo').asString,CodeMax)-1);

            end;

            if trim(zFolios.FieldByName('complemento').asString) <> '' then
               CodeMax := Copy(CodeMax,0,pos(zFolios.FieldByName('complemento').asString,CodeMax)-1);

            if not (CodeMax = '') then
            begin
             // cantVal := Length(CodeMax) - Aux;
             // Delete(CodeMax,1, cantVal);
              aux2 := CodeMax  ;

              Valor := zFolios.FieldByName('AUTO_INCREMENT').asInteger - StrToInt(aux2) - 1;
              numid := zFolios.FieldByName('AUTO_INCREMENT').asInteger - Valor;
            end  else numId := zFolios.FieldByName('IniciarEn').asInteger;

            zTempMaxCode.Close;
            zTempMaxCode.Destroy;
            LastCodeInserted := prefijo + FormatFloat(numDigitos,numid)+ zFolios.FieldByName('complemento').asString;
        end;
      end;
      inc(i)
    end;
  end;
  zFolios.Close;
  zFolios.Destroy;
  result := LastCodeInserted;
end;

function autoFolioAviso(var gDataset: TUniquery; sTabla :string;IdEmpresa:Integer=0;IdEmbarcacion:Integer=0;IdDepartamento:Integer=0;Tipo:Integer=0): String;
var
  QueryName, FieldName: String;
  i,j: integer;
  Folio, Prefijo, LastCodeInserted: String;
  numid : Integer;
  numdigitos,cadenafolio, aux2, prefijo2 : String;
  aux : Integer;
  zTempMaxCode, zFolios, zEmbarcacion : TUniQuery;
  CodeMax, numcod, Embarcacion, Empresa : String;
  cantVal, cantVal2, Valor : Integer;

begin
    Embarcacion:='0';
    if IdEmbarcacion > 0 then
    begin
      zEmbarcacion := TUniquery.create(nil);
      zEmbarcacion.Connection := Connection.uConnection;

      zEmbarcacion.SQL.Text:='select au.*, e.IdEmbarcacion from alm_almacenesporusuario au '+
                      'inner join master_embarcaciones as e on (e.IdAlmacen = au.IdAlmacen) '+
                      'where au.sIdUsuario = :Usuario';
      zEmbarcacion.ParamByName('Usuario').AsString:=global_usuario;
      zEmbarcacion.Open;
      if zEmbarcacion.RecordCount>0 then
         Embarcacion:=zEmbarcacion.FieldByName('IdEmbarcacion').AsString;
      zEmbarcacion.Destroy;
    end;

  // Folio Autoincrementable
  // 1. El valor del codigo debe ir nulo
  // 2. Debe estar previamente configurada en la tabla de folios;
  if IdEmpresa > 0 then
    Empresa := IntToStr(IdEmpresa)
  else
    Empresa := connection.ucontrato.FieldByName('IdEmpresa').AsString;

  zFolios := TUniquery.create(nil);
  zFolios.Connection := Connection.uConnection;

  zFolios.SQL.Add('Select '+
      't.TABLE_SCHEMA,    '+
      't.AUTO_INCREMENT,  '+
      'IF(ISNULL(t.TABLE_COMMENT) OR (t.TABLE_COMMENT=''),t.TABLE_NAME,t.TABLE_COMMENT)	as Leyenda,           '+
      'IF(ISNULL(c.COLUMN_COMMENT) OR (c.COLUMN_COMMENT=''),c.COLUMN_NAME,c.COLUMN_COMMENT)	as LeyendaColumn, '+
      'f.Id,                         '+
      'f.Tabla,                      '+
      'f.Campo,  '+
      'f.IniciarEn, '+
      '(select prefijo from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto and IdTipoMovimiento =:Tipo) as Prefijo, '+
      '(select Aplicar from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto and IdTipoMovimiento =:Tipo) as Aplicar,  '+
      '(select complemento from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto and IdTipoMovimiento =:Tipo) as complemento, '+
      '(select numDig from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto and IdTipoMovimiento =:Tipo) as NumDig,       '+
      '(select Aux from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto and IdTipoMovimiento =:Tipo) as Aux,                '+
      '(select IniciarEn from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto and IdTipoMovimiento =:Tipo) as IniciarEn,  '+
      't.TABLE_COMMENT, '+
      't.TABLE_NAME,    '+
      'c.COLUMN_NAME,   '+
      'c.IS_NULLABLE,   '+
      'c.DATA_TYPE,     '+
      'c.COLUMN_COMMENT '+

    'From                               '+
    '  information_schema.`TABLES` as t '+

    'INNER JOIN '+
    '  information_schema.`COLUMNS` as c '+
    'on (c.TABLE_NAME = t.TABLE_NAME and c.TABLE_NAME =:Tabla) '+

    'LEFT JOIN                   '+
    '  master_cnf_folios as f '+
    'on (f.Tabla = t.TABLE_NAME) AND c.COLUMN_NAME = f.Campo '+

    'WHERE ' +
    '  t.TABLE_SCHEMA = :pBd and ( '+
    '  (UPPER(c.COLUMN_NAME) like '+quotedStr('%Folio%')+' or UPPER(c.COLUMN_NAME) like '+quotedStr('%Codigo%')+' or UPPER(c.COLUMN_NAME) like '+quotedStr('%Plataforma%')+  ' or UPPER(c.COLUMN_NAME) like '+quotedStr('%Actividad%')+  ' or UPPER(c.COLUMN_NAME) like '+quotedStr('%NumeroMaterial%')+
    ' or UPPER(c.COLUMN_NAME) like '+quotedStr('%Orden%')+' or UPPER(c.COLUMN_NAME) like '+quotedStr('%Pernocta%')+' )'+
    '  and ((UPPER(t.TABLE_NAME) not like '+quotedStr('%_detalle%')+' ) or ((UPPER(t.TABLE_NAME) = '+quotedStr('op_presupuesto_detalle')+' ))) '+
    '  and (c.DATA_TYPE = '+quotedStr('varchar')+' ) '+
    '  ) ' +
    'group by TABLE_NAME,COLUMN_NAME');

  zFolios.ParamByName('pBd').asString     := connection.uConnection.Database;
  zFolios.ParamByName('Tabla').asString   := sTabla;
  zFolios.ParamByName('Empresa').asInteger := StrToInt(Empresa);
  zFolios.ParamByName('Barco').asInteger   := StrToInt(Embarcacion);
  zFolios.ParamByName('Depto').asInteger   := IdDepartamento;
  zFolios.ParamByName('Tipo').asInteger   := Tipo;

  if zFolios.active then
    zFolios.refresh
  else
    zFolios.Open;

  Folio := '';
  LastCodeInserted := Folio;

  if zfolios.active and (zFolios.RecordCount > 0) then
  begin
    i := 0;

    QueryName := sTabla;
    while i < gDataset.FieldCount do
    begin
      FieldName := gDataset.Fields.Fields[i].FieldName;
      if zFolios.locate('TABLE_NAME;COLUMN_NAME', varArrayOf([QueryName,FieldName]), [loCaseInsensitive]) then
      begin
        if (zFolios.FieldByName('Aplicar').AsString = 'Si') and (zFolios.FieldByName('Campo').asString <>'') then
          begin
            //Cantidad de digitos numericcos del codigo ademas del prefijo
            prefijo := zFolios.FieldByName('Prefijo').asString;
            prefijo2 := prefijo + '%';
            Aux := zFolios.FieldByName('NumDig').asInteger;
            numDigitos := '';
            for j := 1 to Aux do
              numDigitos := numDigitos+'0';
            zTempMaxCode := TUniQuery.Create(nil);
            zTempMaxCode.Connection  := connection.uConnection;

            if ((zFolios.FieldByName('Tabla').asString = 'anexo_pedidos') OR (zFolios.FieldByName('Tabla').asString='anexo_requisicion') or (zFolios.FieldByName('Tabla').asString='alm_aviso_embarque')) then
//              zTempMaxCode.SQL.Text:= 'Select MAX('+zFolios.FieldByName('Campo').asString + ') as Campo ' +
//                                    'from ' + zFolios.FieldByName('Tabla').asString +
//                                    ' where ' +zFolios.FieldByName('Campo').asString + ' Like ' +
//                                    QuotedStr(prefijo2) +' and sContrato=' + QuotedStr(global_contrato)
//            ELSE
//              zTempMaxCode.SQL.Text:= 'Select MAX('+zFolios.FieldByName('Campo').asString + ') as Campo ' +
//                                    'from ' + zFolios.FieldByName('Tabla').asString +
//                                    ' where ' +zFolios.FieldByName('Campo').asString + ' Like ' +
//                                    QuotedStr(prefijo2);
            begin
              if zFolios.FieldByName('complemento').asString <> '' then
                zTempMaxCode.SQL.Text:= 'Select MAX('+zFolios.FieldByName('Campo').asString + ') as Campo ' +
                                    'from ' + zFolios.FieldByName('Tabla').asString +
                                    ' where ' +zFolios.FieldByName('Campo').asString + ' Like ' +
                                    QuotedStr(prefijo2) +  ' and ' +
                                    zFolios.FieldByName('Campo').asString + ' Like ' +
                                    QuotedStr('%'+zFolios.FieldByName('complemento').asString) +
                                    ' and sContrato=' + QuotedStr(global_contrato)
              else
                zTempMaxCode.SQL.Text:= 'Select MAX('+zFolios.FieldByName('Campo').asString + ') as Campo ' +
                                    'from ' + zFolios.FieldByName('Tabla').asString +
                                    ' where ' +zFolios.FieldByName('Campo').asString + ' Like ' +
                                    QuotedStr(prefijo2) +' and sContrato=' + QuotedStr(global_contrato);
            end
            ELSE
             BEGIN
              if zFolios.FieldByName('complemento').asString <> '' then
                zTempMaxCode.SQL.Text:= 'Select MAX('+zFolios.FieldByName('Campo').asString + ') as Campo ' +
                                    'from ' + zFolios.FieldByName('Tabla').asString +
                                    ' where ' +zFolios.FieldByName('Campo').asString + ' Like ' +
                                    QuotedStr(prefijo2) + ' and ' +
                                    zFolios.FieldByName('Campo').asString + ' Like ' +
                                    QuotedStr('%'+zFolios.FieldByName('complemento').asString)
              Else
                zTempMaxCode.SQL.Text:= 'Select MAX('+zFolios.FieldByName('Campo').asString + ') as Campo ' +
                                    'from ' + zFolios.FieldByName('Tabla').asString +
                                    ' where ' +zFolios.FieldByName('Campo').asString + ' Like ' +
                                    QuotedStr(prefijo2);
            END;

            zTempMaxCode.Open;

            CodeMax := zTempMaxCode.FieldByName('Campo').AsString;

            if trim(zFolios.FieldByName('complemento').asString) <> '' then
               CodeMax := Copy(CodeMax,0,pos(zFolios.FieldByName('complemento').asString,CodeMax)-1);

            if not (CodeMax = '') then
            begin
              cantVal := Length(CodeMax) - Aux;
              Delete(CodeMax,1, cantVal);
              aux2 := CodeMax  ;

              Valor := zFolios.FieldByName('AUTO_INCREMENT').asInteger - StrToInt(aux2) - 1;
              numid := zFolios.FieldByName('AUTO_INCREMENT').asInteger - Valor;
            end  else numId := zFolios.FieldByName('IniciarEn').asInteger;

            zTempMaxCode.Close;
            zTempMaxCode.Destroy;
            LastCodeInserted := prefijo + FormatFloat(numDigitos,numid)+ zFolios.FieldByName('complemento').asString;
        end;
      end;
      inc(i)
    end;
  end;
  zFolios.Close;
  zFolios.Destroy;
  result := LastCodeInserted;
end;

function autoFolioCod(var gDataset: TUniquery; sTabla :string;IdEmpresa:Integer=0;IdEmbarcacion:Integer=0;IdDepartamento:Integer=0): String;
var
  QueryName, FieldName: String;
  i,j: integer;
  Folio, Prefijo, LastCodeInserted: String;
  numid : Integer;
  numdigitos,cadenafolio, aux2, prefijo2 : String;
  aux : Integer;
  zTempMaxCode, zFolios, zEmbarcacion : TUniQuery;
  CodeMax, numcod, Embarcacion, Empresa : String;
  cantVal, cantVal2, Valor : Integer;

begin
    gDataset.Append;
    Embarcacion:='0';
    if IdEmbarcacion > 0 then
    begin
      zEmbarcacion := TUniquery.create(nil);
      zEmbarcacion.Connection := Connection.uConnection;

      zEmbarcacion.SQL.Text:='select au.*, e.IdEmbarcacion from alm_almacenesporusuario au '+
                      'inner join master_embarcaciones as e on (e.IdAlmacen = au.IdAlmacen) '+
                      'where au.sIdUsuario = :Usuario';
      zEmbarcacion.ParamByName('Usuario').AsString:=global_usuario;
      zEmbarcacion.Open;
      if zEmbarcacion.RecordCount>0 then
         Embarcacion:=zEmbarcacion.FieldByName('IdEmbarcacion').AsString;
      zEmbarcacion.Destroy;
    end;

  // Folio Autoincrementable
  // 1. El valor del codigo debe ir nulo
  // 2. Debe estar previamente configurada en la tabla de folios;
  if IdEmpresa > 0 then
    Empresa := IntToStr(IdEmpresa)
  else
    Empresa := connection.ucontrato.FieldByName('IdEmpresa').AsString;

  zFolios := TUniquery.create(nil);
  zFolios.Connection := Connection.uConnection;

  zFolios.SQL.Add('Select '+
      't.TABLE_SCHEMA,    '+
      't.AUTO_INCREMENT,  '+
      'IF(ISNULL(t.TABLE_COMMENT) OR (t.TABLE_COMMENT=''),t.TABLE_NAME,t.TABLE_COMMENT)	as Leyenda,           '+
      'IF(ISNULL(c.COLUMN_COMMENT) OR (c.COLUMN_COMMENT=''),c.COLUMN_NAME,c.COLUMN_COMMENT)	as LeyendaColumn, '+
      'f.Id,                         '+
      'f.Tabla,                      '+
      'f.Aplicar,                      '+
     // 'f.Prefijo,                      '+
      'f.Campo,  '+
      '(select prefijo from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto LIMIT 1) as Prefijo, '+
      '(select Aplicar from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto LIMIT 1) as Aplicar,  '+
      '(select complemento from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto LIMIT 1) as complemento, '+
      '(select numDig from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto LIMIT 1) as NumDig,       '+
      '(select Aux from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto LIMIT 1) as Aux,                '+
      '(select IniciarEn from master_cnf_folios where tabla =t.TABLE_NAME and IdEmpresa =:Empresa and IdEmbarcacion =:Barco and IdDEpartamento =:Depto LIMIT 1) as IniciarEn,  '+
      't.TABLE_COMMENT, '+
      't.TABLE_NAME,    '+
      'c.COLUMN_NAME,   '+
      'c.IS_NULLABLE,   '+
      'c.DATA_TYPE,     '+
      'c.COLUMN_COMMENT '+

    'From                               '+
    '  information_schema.`TABLES` as t '+

    'INNER JOIN '+
    '  information_schema.`COLUMNS` as c '+
    'on (c.TABLE_NAME = t.TABLE_NAME and c.TABLE_NAME =:Tabla) '+

    'LEFT JOIN                   '+
    '  master_cnf_folios as f '+
    'on (f.Tabla = t.TABLE_NAME) AND c.COLUMN_NAME = f.Campo '+

    'WHERE ' +
    '  t.TABLE_SCHEMA = :pBd and ( '+
    '  (UPPER(c.COLUMN_NAME) like '+quotedStr('%Folio%')+' or UPPER(c.COLUMN_NAME) like '+quotedStr('%Codigo%')+' or UPPER(c.COLUMN_NAME) like '+quotedStr('%Plataforma%')+  ' or UPPER(c.COLUMN_NAME) like '+quotedStr('%Actividad%')+  ' or UPPER(c.COLUMN_NAME) like '+quotedStr('%NumeroMaterial%')+
    ' or UPPER(c.COLUMN_NAME) like '+quotedStr('%Orden%')+' or UPPER(c.COLUMN_NAME) like '+quotedStr('%Pernocta%')+' )'+
    '  and ((UPPER(t.TABLE_NAME) not like '+quotedStr('%_detalle%')+' ) or ((UPPER(t.TABLE_NAME) = '+quotedStr('op_presupuesto_detalle')+' ))) '+
    '  and (c.DATA_TYPE = '+quotedStr('varchar')+' ) '+
    '  ) ' +
    'group by TABLE_NAME,COLUMN_NAME');

  zFolios.ParamByName('pBd').asString     := connection.uConnection.Database;
  zFolios.ParamByName('Tabla').asString   := sTabla;
  zFolios.ParamByName('Empresa').asInteger := StrToInt(Empresa);
  zFolios.ParamByName('Barco').asInteger   := StrToInt(Embarcacion);
  zFolios.ParamByName('Depto').asInteger   := IdDepartamento;

  if zFolios.active then
    zFolios.refresh
  else
    zFolios.Open;

  Folio := '';
  LastCodeInserted := Folio;

  if zfolios.active and (zFolios.RecordCount > 0) then
  begin
    i := 0;

    QueryName := sTabla;
    while i < gDataset.FieldCount do
    begin
      FieldName := gDataset.Fields.Fields[i].FieldName;
      if zFolios.locate('TABLE_NAME;COLUMN_NAME', varArrayOf([QueryName,FieldName]), [loCaseInsensitive]) then
      begin
        if (zFolios.FieldByName('Aplicar').AsString = 'Si') and (zFolios.FieldByName('Campo').asString <>'') then
          begin
            //Cantidad de digitos numericcos del codigo ademas del prefijo
            prefijo := zFolios.FieldByName('Prefijo').asString;
            prefijo2 := prefijo + '%';
            Aux := zFolios.FieldByName('NumDig').asInteger;
            numDigitos := '';
            for j := 1 to Aux do
              numDigitos := numDigitos+'0';

            zTempMaxCode := TUniQuery.Create(nil);
            zTempMaxCode.Connection  := connection.uConnection;

            if ((zFolios.FieldByName('Tabla').asString = 'anexo_pedidos') OR (zFolios.FieldByName('Tabla').asString='anexo_requisicion')) then
              zTempMaxCode.SQL.Text:= 'Select MAX('+zFolios.FieldByName('Campo').asString + ') as Campo ' +
                                    'from ' + zFolios.FieldByName('Tabla').asString +
                                    ' where ' +zFolios.FieldByName('Campo').asString + ' Like ' +
                                    QuotedStr(prefijo2) +' and sContrato=' + QuotedStr(global_contrato)
            ELSE
            BEGIN
              if zFolios.FieldByName('complemento').asString <> '' then
                zTempMaxCode.SQL.Text:= 'Select MAX('+zFolios.FieldByName('Campo').asString + ') as Campo ' +
                                    'from ' + zFolios.FieldByName('Tabla').asString +
                                    ' where ' +zFolios.FieldByName('Campo').asString + ' Like ' +
                                    QuotedStr(prefijo2) + ' and ' + zFolios.FieldByName('Campo').asString + ' Like ' +
                                    QuotedStr('%'+zFolios.FieldByName('complemento').asString)
              Else
                zTempMaxCode.SQL.Text:= 'Select MAX('+zFolios.FieldByName('Campo').asString + ') as Campo ' +
                                    'from ' + zFolios.FieldByName('Tabla').asString +
                                    ' where ' +zFolios.FieldByName('Campo').asString + ' Like ' +
                                    QuotedStr(prefijo2);
            END;
            zTempMaxCode.Open;

            CodeMax := zTempMaxCode.FieldByName('Campo').AsString;

            if trim(zFolios.FieldByName('complemento').asString) <> '' then
               CodeMax := Copy(CodeMax,0,pos(zFolios.FieldByName('complemento').asString,CodeMax)-1);

            if not (CodeMax = '') then
            begin
              cantVal := Length(CodeMax) - Aux;
              Delete(CodeMax,1, cantVal);
              aux2 := CodeMax  ;

              Valor := zFolios.FieldByName('AUTO_INCREMENT').asInteger - StrToInt(aux2) - 1;
              numid := zFolios.FieldByName('AUTO_INCREMENT').asInteger - Valor;
            end  else numId := 1;

            zTempMaxCode.Close;
            zTempMaxCode.Destroy;
            LastCodeInserted := prefijo + FormatFloat(numDigitos,numid)+ zFolios.FieldByName('complemento').asString;
        end;
      end;
      inc(i)
    end;
  end;
  zFolios.Close;
  zFolios.Destroy;
  gDataset.Cancel;
  result := LastCodeInserted;
end;


Function GeneraPeriodoDocto(dParamFecha:tDate;iParamDocumento:integer):tDate;
var
 zDocumento : TUniQuery;

begin
  // Folio Autoincrementable
  // 1. El valor del codigo debe ir nulo
  // 2. Debe estar previamente configurada en la tabla de folios;

  zDocumento := TUniquery.create(nil);
  zDocumento.Connection := Connection.uConnection;

  zDocumento.Active := False;
  zDocumento.SQL.Add('select * from rhu_documento where IdDocumento =:Id');
  zDocumento.ParamByName('Id').asInteger := iParamDocumento;
  zDocumento.Open;

  if zDocumento.FieldByName('Periodo').AsString = 'Dias' then
  begin
      result := IncDay(dParamFecha,zDocumento.FieldByName('Total').AsInteger);
  end;

  if zDocumento.FieldByName('Periodo').AsString = 'Meses' then
  begin
      result := IncMonth(dParamFecha,zDocumento.FieldByName('Total').AsInteger);
  end;

  if zDocumento.FieldByName('Periodo').AsString = 'Anual' then
  begin
     result := IncYear(dParamFecha,zDocumento.FieldByName('Total').AsInteger);
  end;

  zDocumento.Destroy;

end;

function MsgError (mensaje, titulo : String) : boolean;
begin
    if application.MessageBox (pchar(mensaje),
      pchar(titulo), (MB_OKCANCEL + MB_ICONSTOP)) = IDOK then
    result := true
  else
    application.Terminate
//    result := false;
end;

function Zreconectar(var Query: TZQuery; sql: String):Boolean;Overload;
begin
  Result := UDMConection.reconecZeos(Query,sql);
end;


function CreaFiltroCampo(sParamCampoFiltro, sParamFiltroConsulta :string; zParamUQuery :tUniQuery) :string;
var
   Cadena : string;
begin
    zParamUQuery.First;
    while not zParamuQuery.Eof do
    begin
        if Cadena = '' then
           Cadena := Cadena + '(' +sParamCampoFiltro +'='+ IntTostr(zParamUQuery.FieldByName(sParamFiltroConsulta).AsInteger)+') '
        else
           Cadena := Cadena + ' or (' +sParamCampoFiltro +'='+ IntTostr(zParamUQuery.FieldByName(sParamFiltroConsulta).AsInteger)+') ';
        zParamUquery.Next;
    end;

    if Cadena = '' then
       result := '('+sParamCampoFiltro+' = -1 )'
    else
       result := Cadena;
end;

function LetrasNumeros(Valor: Real; Prefijo: String; Sufijo: String; NumDec: Integer): String;
const
  vecNum: Array[1..19] of string = ('UN', 'DOS', 'TRES', 'CUATRO', 'CINCO', 'SEIS', 'SIETE', 'OCHO', 'NUEVE', 'DIEZ', 'ONCE', 'DOCE', 'TRECE', 'CATORCE', 'QUINCE','DIECISEIS','DIECISIETE','DIECIOCHO','DIECINUEVE');
  vecDec: Array[1..9] of string = ('DIEZ', 'VEINTI', 'TREINTA', 'CUARENTA', 'CINCUENTA', 'SESENTA', 'SETENTA', 'OCHENTA', 'NOVENTA');
  vecCen: Array[1..9] of string = ('CIENTO', 'DOSCIENTOS', 'TRESCIENTOS', 'CUATROCIENTOS', 'QUINIENTOS', 'SEISCIENTOS', 'SETECIENTOS', 'OCHOCIENTOS', 'NOVECIENTOS');
  vecLey: Array[1..7] of String = ('', 'MIL', 'MILLON', 'MIL', 'BILLON', 'MIL', 'TRILLON');
var
  CadValor,Decimales: String;
  i: Integer;
  vNum,
  vDec,
  vCen,
  Segmento: Integer;
  SubResult,
  Resultado,
  Agrega, OldResult: String;
begin
  Resultado := '';
  Agrega := '';
  OldResult := '';
  CadValor := FloatToStrF(Trunc(Valor),ffGeneral,16,2);
  Decimales := FloatToStr(Valor);
     ////////////////////////DECIMALES/////////////////////////////////////
    //buscando el los decimales....
  if Pos('.', Decimales) > 0 then
   Decimales := Copy(Decimales, Pos('.', Decimales) + 1, Length(Decimales))
  else
   Decimales := '';
  //llenando con ceros o truncando, los decimales, este es un valor por parametro
  while Length(Decimales) < NumDec do
   Decimales := Decimales + '0';
   Decimales := Copy(Decimales,1,Numdec);

  while Length(CadValor) mod 3 <> 0 do
   CadValor := '0' + CadValor;

  for i := 1 to Trunc(Length(CadValor) / 3) do
  begin
    // Descomponer en dos elementos
    Segmento := StrToInt(Copy(CadValor, Length(CadValor) - ((i * 3) - 1), 3));
    SubResult := '';

    // Obtener el primer elemento de la izquierda
    vCen := Trunc((Segmento - (Segmento Mod 100)) / 100);
    vNum := Segmento - (vCen * 100);
    vDec := 0;

    if (vNum > High(vecNum)) then
    begin
      vDec := Trunc((vNum - (vNum Mod 10)) / 10);
      vNum := vNum Mod 10;
    end;

    if (vNum > 0) and (vNum <= High(VecNum)) then
      if SubResult <> '' then
        SubResult := SubResult + ' ' + VecNum[vNum]
      else
        SubResult := VecNum[vNum];

    if vDec > 0 then
    begin
      if SubResult <> '' then SubResult := ' ' + SubResult;
      if vDec = 2 then
        if vNum = 0 then
          SubResult := 'VEINTE'
        else
          SubResult := VecDec[vDec] + Copy(SubResult,2,length(SubResult))
      else
      begin
        if vNum <> 0 then SubResult := ' Y' + SubResult;
        SubResult := VecDec[vDec] + SubResult
      end;
    end;

    if vCen > 0 then
    begin
      if SubResult <> '' then SubResult := ' ' + SubResult;
      if vCen = 1 then
        if vDec + vNum = 0 then
          SubResult := 'CIEN'
        else
          SubResult := VecCen[vCen] + SubResult
      else
        SubResult := VecCen[vCen] + SubResult
    end;

    if SubResult <> '' then
    begin
      if i > 1 then
      begin
        SubResult := SubResult + ' ' + VecLey[i];
        if Agrega <> '' then
          SubResult := SubResult + ' ' + Agrega;
        if ((i = 3) or (i = 5) or (i = 7)) and (Segmento > 1) then
          SubResult := SubResult + 'ES';
      end;
      if Resultado <> '' then
        Resultado := SubResult + ' ' + Resultado
      else
        Resultado := SubResult;
    end
    else
      if ((i = 3) or (i = 5) or (i = 7)) then
      begin
        if (i +1 <= Trunc(Length(CadValor) / 3)) and (StrToInt(Copy(CadValor, Length(CadValor) - (((i + 1) * 3) - 1), 3)) > 0) then
        begin
          SubResult := SubResult + VecLey[i] + 'ES';
          if Resultado <> '' then
            Resultado := SubResult + ' ' + Resultado
          else
            Resultado := SubResult;
        end;
      end;
    OldResult := SubResult;
  end;

  if Prefijo + Decimales + Sufijo <> '' then
    if Decimales + Sufijo <> '' then
      Result := Resultado + ' ' + Prefijo + ' ' + Decimales + Sufijo
    else
      Result := Resultado + ' ' + Prefijo;
  //Result := Resultado;
end;


Function LetraMontos(sParamCodigo, sParamNombreCheque:string; dParamMonto : double): string;
var
  sCadena: string;
begin
   if sParamCodigo = 'MXN' then
   begin
       result := LetrasNumeros(XRound(dParamMonto,2),sParamNombreCheque,'',2) + '/100 '+ sParamCodigo;
   end
   else
     if sParamCodigo = 'DLL' then
     begin
        result := LetrasNumeros(XRound(dParamMonto,2),sParamNombreCheque,'',2) + '/100 '+ sParamCodigo;
     end
     else
     begin
        result := LetrasNumeros(XRound(dParamMonto,2),sParamNombreCheque,'',2) + '/100 '+ sParamCodigo;
     end
end;

function TraerTotalXML(ArchivoXLM:String; XML:TXMLDocument):Double;
var
    DatosNomina: IXMLNode;
   // XML: IXMLDocument;
    Fichero :String;
    ValorTotal:Double;
begin
//  XML := IXMLDocument.Create(nil);
  XML.Active := False;
  XML.FileName := ArchivoXLM;
  XML.Active := True;
  DatosNomina := XML.DocumentElement;
  ValorTotal := DatosNomina.Attributes['Total'];
  //XML.Free;
  Result := ValorTotal;

end;

function TraerUUID_XML(ArchivoXLM:String; XML:TXMLDocument):String;
var
    DatosNomina: IXMLNode;
    Fichero, UUID :String;
    IndexComplemento, IndexTimbre : Integer;
    Nodo, SubNodo, SubNodo2,
    ComprobanteXML,EmisorXML, ReceptorXML, ConceptosXML,ComplementoXML,
    ImpuestosXML, TimbreFiscal, tfd: IXMLNode;
    i,j:Integer;
begin
//  XML := IXMLDocument.Create(nil);
  XML.Active := False;
  XML.FileName := ArchivoXLM;
  XML.Active := True;
  ComprobanteXML := XML.DocumentElement;
  TRY
    for i := 0 to ComprobanteXML.ChildNodes.Count-1 do
    begin
        Nodo := ComprobanteXML.ChildNodes[i];

        if pos('cfdi:Complemento',Nodo.XML) > 0 then
        begin
          ComplementoXML     := ComprobanteXML.ChildNodes[i];
          for j := 0 to ComplementoXML.ChildNodes.Count-1 do
          begin
            SubNodo := ComplementoXML.ChildNodes[j];
            if pos('tfd:TimbreFiscalDigital',SubNodo.XML) > 0 then
            begin
              TimbreFiscal := ComplementoXML.ChildNodes[j];
              UUID :=  TimbreFiscal.Attributes['UUID'];
            end;
          end;
        end;
    end;



//  try
//    IndexComplemento := DatosNomina.ChildNodes.Count - 1;
//    ComplementoXML  := DatosNomina.ChildNodes[IndexComplemento];
//
//    IndexTimbre := ComplementoXML.ChildNodes.Count - 1;
//    TimbreFiscal := ComplementoXML.ChildNodes[IndexTimbre];
//
//    UUID :=  TimbreFiscal.Attributes['UUID'];

  except
    raise Exception.Create('XML no cuenta con UUID, no ha sido timbrado por el SAT.');
//    ShowMessage('XML no cuenta con UUID, no ha sido timbrado por el SAT.');
    UUID := '';
  end;


  Result := UUID;
end;

function TraerRFC_XML(ArchivoXLM:String; XML:TXMLDocument):String;
var
    DatosNomina: IXMLNode;
    Fichero, RFC :String;
    IndexComplemento, IndexTimbre : Integer;
    ComprobanteXML,EmisorXML, ReceptorXML, ConceptosXML,ComplementoXML,
    ImpuestosXML, TimbreFiscal, tfd: IXMLNode;
begin
//  XML := IXMLDocument.Create(nil);
  XML.Active := False;
  XML.FileName := ArchivoXLM;
  XML.Active := True;
  DatosNomina := XML.DocumentElement;

  try
    EmisorXML     := DatosNomina.ChildNodes[0];
    RFC :=  EmisorXML.Attributes['Rfc'];

  except
    raise Exception.Create('XML no cuenta con UUID, no ha sido timbrado por el SAT.');
//    ShowMessage('XML no cuenta con UUID, no ha sido timbrado por el SAT.');
    RFC := '';
  end;


  Result := RFC;
end;

function TraerRS(ArchivoXLM:String; XML:TXMLDocument):String;
var
    DatosNomina: IXMLNode;
    Fichero, Nombre :String;
    IndexComplemento, IndexTimbre : Integer;
    ComprobanteXML,EmisorXML, ReceptorXML, ConceptosXML,ComplementoXML,
    ImpuestosXML, TimbreFiscal, tfd: IXMLNode;
begin
//  XML := IXMLDocument.Create(nil);
  XML.Active := False;
  XML.FileName := ArchivoXLM;
  XML.Active := True;
  DatosNomina := XML.DocumentElement;

  try
    EmisorXML     := DatosNomina.ChildNodes[0];
    Nombre :=  EmisorXML.Attributes['Nombre'];

  except
    raise Exception.Create('XML no cuenta con UUID, no ha sido timbrado por el SAT.');
//    ShowMessage('XML no cuenta con UUID, no ha sido timbrado por el SAT.');
    Nombre := '';
  end;


  Result := Nombre;
end;

Function fReemplazaFiltroSQL(sParamSQL : WideString; sParamFiltro, sParamVar1, sParamVar2, sParamVar3, sParamVar4, sParamVar5, sParamVar6 :string):WideString;
var
   sCadenaSQL : WideString ;
begin
    sCadenaSQL := sParamSQL;
    if Ansipos(':filter_by_code',sCadenaSQL) > 0 then
      while Ansipos(':filter_by_code',sCadenaSQL) > 0 do
      begin
          if sParamFiltro <> '' then
          begin
             sCadenaSQL := copy(sCadenaSQL,1,pos(':filter_by_code',trim(sCadenaSQL)) -1)+' '+sParamFiltro+' '+
                             copy(sCadenaSQL,pos(':filter_by_code',trim(sCadenaSQL))+length(':filter_by_code')+1, length(trim(sCadenaSQL))) ;
          end
          else
          begin
              sCadenaSQL := copy(sCadenaSQL,1,pos(':filter_by_code',trim(sCadenaSQL)) -5)+' '+
                              copy(sCadenaSQL,pos(':filter_by_code',trim(sCadenaSQL))+length(':filter_by_code')+1, length(trim(sCadenaSQL))) ;
          end;

      end;

    if Ansipos(':var_by_code1',sCadenaSQL) > 0 then
      while Ansipos(':var_by_code1',sCadenaSQL) > 0 do
      begin
          if sParamVar1 <> '' then
          begin
             sCadenaSQL := copy(sCadenaSQL,1,pos(':var_by_code1',trim(sCadenaSQL)) -1)+''+sParamVar1+''+
                             copy(sCadenaSQL,pos(':var_by_code1',trim(sCadenaSQL))+length(':var_by_code1'), length(trim(sCadenaSQL))) ;
          end
          else
          begin
              sCadenaSQL := copy(sCadenaSQL,1,pos(':var_by_code1',trim(sCadenaSQL)) -1)+' '+
                              copy(sCadenaSQL,pos(':var_by_code1',trim(sCadenaSQL))+length(':var_by_code1')+1, length(trim(sCadenaSQL))) ;
          end;

      end;

    if Ansipos(':var_by_code2',sCadenaSQL) > 0 then
      while Ansipos(':var_by_code2',sCadenaSQL) > 0 do
      begin
          if sParamVar2 <> '' then
          begin
             sCadenaSQL := copy(sCadenaSQL,1,pos(':var_by_code2',trim(sCadenaSQL)) -1)+''+sParamVar2+''+
                             copy(sCadenaSQL,pos(':var_by_code2',trim(sCadenaSQL))+length(':var_by_code2'), length(trim(sCadenaSQL))) ;
          end
          else
          begin
              sCadenaSQL := copy(sCadenaSQL,1,pos(':var_by_code2',trim(sCadenaSQL)) -1)+' '+
                              copy(sCadenaSQL,pos(':var_by_code2',trim(sCadenaSQL))+length(':var_by_code2')+1, length(trim(sCadenaSQL))) ;
          end;

      end;

    if Ansipos(':var_by_code3',sCadenaSQL) > 0 then
      while Ansipos(':var_by_code3',sCadenaSQL) > 0 do
      begin
          if sParamVar3 <> '' then
          begin
             sCadenaSQL := copy(sCadenaSQL,1,pos(':var_by_code3',trim(sCadenaSQL)) -1)+''+sParamVar3+''+
                             copy(sCadenaSQL,pos(':var_by_code3',trim(sCadenaSQL))+length(':var_by_code3'), length(trim(sCadenaSQL))) ;
          end
          else
          begin
              sCadenaSQL := copy(sCadenaSQL,1,pos(':var_by_code3',trim(sCadenaSQL)) -1)+' '+
                              copy(sCadenaSQL,pos(':var_by_code3',trim(sCadenaSQL))+length(':var_by_code3')+1, length(trim(sCadenaSQL))) ;
          end;

      end;

    if Ansipos(':var_by_code4',sCadenaSQL) > 0 then
      while Ansipos(':var_by_code4',sCadenaSQL) > 0 do
      begin
          if sParamVar4 <> '' then
          begin
             sCadenaSQL := copy(sCadenaSQL,1,pos(':var_by_code4',trim(sCadenaSQL)) -1)+''+sParamVar4+''+
                             copy(sCadenaSQL,pos(':var_by_code4',trim(sCadenaSQL))+length(':var_by_code4'), length(trim(sCadenaSQL))) ;
          end
          else
          begin
              sCadenaSQL := copy(sCadenaSQL,1,pos(':var_by_code4',trim(sCadenaSQL)) -1)+' '+
                              copy(sCadenaSQL,pos(':var_by_code4',trim(sCadenaSQL))+length(':var_by_code4')+1, length(trim(sCadenaSQL))) ;
          end;

      end;

    if Ansipos(':var_by_code5',sCadenaSQL) > 0 then
      while Ansipos(':var_by_code5',sCadenaSQL) > 0 do
      begin
          if sParamVar5 <> '' then
          begin
             sCadenaSQL := copy(sCadenaSQL,1,pos(':var_by_code5',trim(sCadenaSQL)) -1)+''+sParamVar5+''+
                             copy(sCadenaSQL,pos(':var_by_code5',trim(sCadenaSQL))+length(':var_by_code5'), length(trim(sCadenaSQL))) ;
          end
          else
          begin
              sCadenaSQL := copy(sCadenaSQL,1,pos(':var_by_code5',trim(sCadenaSQL)) -1)+' '+
                              copy(sCadenaSQL,pos(':var_by_code5',trim(sCadenaSQL))+length(':var_by_code5')+1, length(trim(sCadenaSQL))) ;
          end;

      end;

     if Ansipos(':var_by_code6',sCadenaSQL) > 0 then
      while Ansipos(':var_by_code6',sCadenaSQL) > 0 do
      begin
          if sParamVar6 <> '' then
          begin
             sCadenaSQL := copy(sCadenaSQL,1,pos(':var_by_code6',trim(sCadenaSQL)) -1)+''+sParamVar6+''+
                             copy(sCadenaSQL,pos(':var_by_code6',trim(sCadenaSQL))+length(':var_by_code6'), length(trim(sCadenaSQL))) ;
          end
          else
          begin
              sCadenaSQL := copy(sCadenaSQL,1,pos(':var_by_code6',trim(sCadenaSQL)) -1)+' '+
                              copy(sCadenaSQL,pos(':var_by_code6',trim(sCadenaSQL))+length(':var_by_code6')+1, length(trim(sCadenaSQL))) ;
          end;
      end;


    if Ansipos(':filter_by_code',sParamSQL) > 0 then
       result := sCadenaSQL
    else
      if Ansipos(':var_by_code1',sParamSQL) > 0 then
         result := sCadenaSQL
      else
         if Ansipos(':var_by_code2',sParamSQL) > 0 then
            result := sCadenaSQL
         else
            if Ansipos(':var_by_code3',sParamSQL) > 0 then
               result := sCadenaSQL
            else
               if Ansipos(':var_by_code4',sParamSQL) > 0 then
                   result := sCadenaSQL
                else
                   if Ansipos(':var_by_code5',sParamSQL) > 0 then
                       result := sCadenaSQL
                   else
                       if Ansipos(':var_by_code6',sParamSQL) > 0 then
                           result := sCadenaSQL
                        else
                           result := sParamSQL;
end;

function EnviarMensaje(sUsuario, sClave, sServidor, sAdjunto, sAsunto, sDestino, sMensaje: String; iPort: Integer; aplicaTLS:String): String;
  var
  Cursor: TCursor;
  SMTP: TIdSMTP;
  IOHSOSSL :TIdSSLIOHandlerSocketOpenSSL;
  Mensaje: TIdMessage;
  Adjunto: TIdAttachmentFile;
begin
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := crAppStart;

    IdSSLOpenSSLHeaders.Load;
    Result := 'Correo electrónico enviado.';
    if aplicaTLS  = 'Si' then
    begin
      IOHSOSSL := TIdSSLIOHandlerSocketOpenSSL.Create;
      IOHSOSSL.Destination := sServidor+':'+IntToStr(iPort);
      IOHSOSSL.Host := sServidor;
      IOHSOSSL.Port := iPort;
      IOHSOSSL.SSLOptions.Method := sslvTLSv1;
      IOHSOSSL.SSLOptions.VerifyMode := [];
      IOHSOSSL.SSLOptions.VerifyDepth := 0;
    end;
    //Cargar datos para componente de envio de correo.
    SMTP := TIdSMTP.Create(nil);
    if aplicaTLS  = 'Si' then
    begin
     SMTP.IOHandler := IOHSOSSL;
     SMTP.AuthType := satDefault;
     SMTP.UseTLS := utUseRequireTLS;
    end;
    SMTP.Username := sUsuario;
    SMTP.Password := sClave;
    SMTP.Host := sServidor;
    SMTP.Port := iPort;

    Mensaje := TIdMessage.Create( nil );
    Mensaje.Clear;
    if sAdjunto <>'' then
    begin
        Mensaje.AttachmentEncoding := 'UUE'  ;
        Mensaje.Clear;
        Mensaje.ContentType := 'multipart/related; type="text/html"';
        if FileExists(sAdjunto) then
          Adjunto := TIdAttachmentFile.Create(Mensaje.MessageParts, sAdjunto);
    end;




    Mensaje.From.Name := sUsuario;
    Mensaje.From.Address := sUsuario;
    Mensaje.Subject := sAsunto;
    Mensaje.Body.Text := sMensaje;
    Mensaje.Recipients.Add;
    Mensaje.Recipients.Items[0].Address := sDestino;

    try
      SMTP.Connect;
    except
      Result := 'Error al conectar con el servidor.';
    end;

    if SMTP.Connected then
    begin
      try
        SMTP.Send( Mensaje );
      except
        Result := 'Falló en el envio del correo electrónico.';
      end;

      try
        SMTP.Disconnect;
      except
        Result := 'Error al desconectar del servidor.';
      end;
    end;
  finally
    if Adjunto <> nil then
     // FreeAndNil( Adjunto );

    FreeAndNil(Mensaje);
    FreeAndNil(SMTP);
    Screen.Cursor := Cursor;
  end;
end;

end.
