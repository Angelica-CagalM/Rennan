unit frm_connection;

interface

uses
  SysUtils, Classes, DB, ADODB,  frxExportCSV, frxExportText,
  frxExportImage, frxExportPDF, frxExportXML, frxExportRTF, frxExportXLS,
  frxExportHTML, frxClass,  frxDBSet, ImgList, Menus,
  StdActns, ActnList, Controls, ZAbstractRODataset,
  ZDataset, ZConnection, ZAbstractDataset, StrUtils,
  frxRich, frxGZip, frxDMPExport, RxMemDS,global, ExtCtrls,
  IdMessage, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, cxGraphics,
  dxLayoutLookAndFeels, cxClasses, cxStyles, ZAbstractConnection,CRAccess,
  System.ImageList, UniProvider, MySQLUniProvider, DBAccess, Uni, MemDS,Variants,
  cxEdit, cxEditRepositoryItems, SQLServerUniProvider, Vcl.Dialogs, Vcl.ExtDlgs, MemData;
    type
    TStringArray = array of string;

    TVarGlobal = Class
      sNombre: String;
      sTipo: String;
    Private
      vValor: Variant;
    Public
      
  End;

type
  Tconnection = class(TDataModule)
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxGIFExport1: TfrxGIFExport;
    a: TfrxSimpleTextExport;
    frxCSVExport1: TfrxCSVExport;
    QryBusca: TZReadOnlyQuery;
    zCommand: TZQuery;
    rpt_contrato: TfrxDBDataset;
    rpt_setup: TfrxDBDataset;
    QryBusca2: TZReadOnlyQuery;
    zConnection: TZConnection;
    frxRichObject1: TfrxRichObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxReport1: TfrxReport;
    IdSMTP: TIdSMTP;
    IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage: TIdMessage;
    ConnTrx: TZConnection;
    IconosBarra: TcxImageList;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    cxstylActividadesanexo: TcxStyleRepository;
    cxstylNiv0: TcxStyle;
    cxstylNiv1: TcxStyle;
    cxstylNiv2: TcxStyle;
    cxstylNiv3: TcxStyle;
    cxstylNiv4: TcxStyle;
    cxIconos16: TcxImageList;
    cxstylNiv5: TcxStyle;
    cxNormal: TcxStyle;
    cxAjuste: TcxStyle;
    cxNoImprime: TcxStyle;
    Uconnection: TUniConnection;
    zValidacion: TUniQuery;
    zTablasImportables: TUniQuery;
    zConsultasSQL: TUniQuery;
    pAuditoria: TUniStoredProc;
    zUCommand: TUniQuery;
    qryUBusca: TUniQuery;
    uconfiguracion: TUniQuery;
    QryUBusca2: TUniQuery;
    zModulosPermisos: TUniQuery;
    uUsuario: TUniQuery;
    ExportaPDF: TfrxPDFExport;
    uContrato: TUniQuery;
    uContratosLicitacion: TStringField;
    uContratosTitulo: TMemoField;
    uContratosContrato: TStringField;
    uContratosTipoObra: TStringField;
    uContratomDescripcion: TMemoField;
    uContratomCliente: TMemoField;
    uContratobImagen: TBlobField;
    uContratosUbicacion: TStringField;
    uContratosCodigo: TStringField;
    uContratosConvenio: TStringField;
    uContratodFechaInicio: TDateField;
    uContratodFechaFinal: TDateField;
    uContratodMontoMN: TFloatField;
    uContratodMontoDLL: TFloatField;
    uContratosMascara: TStringField;
    uContratoiva: TFloatField;
    uContratoretencionIva: TFloatField;
    uContratodFecha: TDateField;
    uContratoIdEmpresa: TIntegerField;
    uContratosxUsuario: TUniQuery;
    cxstylNiv6: TcxStyle;
    cxReposMonedas: TcxEditRepository;
    cxReposMonedasCurrencyItem1: TcxEditRepositoryCurrencyItem;
    UniConnectionSQLServer: TUniConnection;
    uSQLConsulta: TUniQuery;
    uContratoFK_titulo: TStringField;
    cxActiva: TcxStyle;
    cxBajo: TcxStyle;
    cxPagada: TcxStyle;
    cxstylNiv7: TcxStyle;
    cxStyValido: TcxStyle;
    cxStyAutorizo: TcxStyle;
    cxStyLibero: TcxStyle;
    cxStyAsignoCC: TcxStyle;
    cxStyAsignoPR: TcxStyle;
    cxStyCompro: TcxStyle;
    cxStyRechazo: TcxStyle;
    cxStyCancelo: TcxStyle;
    OpenTextFileDialog1: TOpenTextFileDialog;
    cxStyCondicionado: TcxStyle;
    cxStyleRechazaMat: TcxStyle;
    cxStySolicitado: TcxStyle;
    cxStyleEdicion: TcxStyle;
    procedure rDiarioGetValue(const VarName: string; var Value: Variant);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure zConnectionAfterConnect(Sender: TObject);
    procedure UconnectionConnectionLost(Sender: TObject; Component: TComponent;
      ConnLostCause: TConnLostCause; var RetryMode: TRetryMode);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  connection: Tconnection;

implementation

{$R *.dfm}

procedure Tconnection.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin

  If CompareText(VarName, 'ORDEN') = 0 then
      Value := 'DE LA ORDEN DE TRABAJO ' + global_orden ;

  If CompareText(VarName, 'FECHA_INICIO') = 0 then
      Value := global_fecha  ;

  If CompareText(VarName, 'FECHA_FINAL') = 0 then
      Value := global_fecha  ;

  If CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
      Value := sDiarioComentario ;

  If CompareText(VarName, 'sNewTexto') = 0 then
      Value := sDiarioTitulo ;

  If CompareText(VarName, 'PERIODO') = 0 then
      Value := sDiarioPeriodo ;


  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sSuperIntendente
      Else
          Value := sSuperIntendentePatio ;

  If CompareText(VarName, 'SUPERVISOR') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sSupervisor
      Else
          Value := sSupervisorPatio ;

  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sSupervisorTierra
      Else
          Value := sResidente ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sPuestoSuperIntendente
      Else
          Value := sPuestoSuperIntendentePatio ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sPuestoSupervisor
      Else
          Value := sPuestoSupervisorPatio ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sPuestoSupervisorTierra
      Else
          Value := sPuestoResidente ;


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

end;

procedure Tconnection.rDiarioGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'ORDEN') = 0 then
    Value := 'DE LA ORDEN DE TRABAJO ' + global_orden;

  if CompareText(VarName, 'FECHA_INICIO') = 0 then
    Value := global_fecha;

  if CompareText(VarName, 'FECHA_FINAL') = 0 then
    Value := global_fecha;

  if CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
    Value := sDiarioComentario;

  if CompareText(VarName, 'sNewTexto') = 0 then
    Value := sDiarioTitulo;

  if CompareText(VarName, 'PERIODO') = 0 then
    Value := sDiarioPeriodo;
  if CompareText(VarName, 'SUPERINTENDENTE') = 0 then
    if global_sOrigen_reporte = 'No' then
      Value := sSuperIntendente
    else
      Value := sSuperIntendentePatio;

  if CompareText(VarName, 'SUPERVISOR') = 0 then
    if global_sOrigen_reporte = 'No' then
      Value := sSupervisor
    else
      Value := sSupervisorPatio;

  if CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
    if global_sOrigen_reporte = 'No' then
      Value := sSupervisorTierra
    else
      Value := sResidente;

  if CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
    if global_sOrigen_reporte= 'No' then
      Value := sPuestoSuperIntendente
    else
      Value := sPuestoSuperIntendentePatio;

  if CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
    if global_sOrigen_reporte = 'No' then
      Value := sPuestoSupervisor
    else
      Value := sPuestoSupervisorPatio;

  if CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
    if global_sOrigen_reporte= 'No' then
      Value := sPuestoSupervisorTierra
    else
      Value := sPuestoResidente;

  if CompareText(VarName, 'REAL_ANTERIOR') = 0 then
    Value := dRealGlobalAnterior;
  if CompareText(VarName, 'REAL_ACTUAL') = 0 then
    Value := dRealGlobalActual;
  if CompareText(VarName, 'REAL_ACUMULADO') = 0 then
    Value := dRealGlobalAcumulado;
  if CompareText(VarName, 'PROGRAMADO_ANTERIOR') = 0 then
    Value := dProgramadoGlobalAnterior;
  if CompareText(VarName, 'PROGRAMADO_ACTUAL') = 0 then
    Value := dProgramadoGlobalActual;
  if CompareText(VarName, 'PROGRAMADO_ACUMULADO') = 0 then
    Value := dProgramadoGlobalAcumulado;


  if CompareText(VarName, 'REAL_ANTERIOR_MULTIPLE') = 0 then
    Value := dRealOrdenAnterior;
  if CompareText(VarName, 'REAL_ACTUAL_MULTIPLE') = 0 then
    Value := dRealOrdenActual;
  if CompareText(VarName, 'REAL_ACUMULADO_MULTIPLE') = 0 then
    Value := dRealOrdenAcumulado;
  if CompareText(VarName, 'PROGRAMADO_ANTERIOR_MULTIPLE') = 0 then
    Value := dProgramadoOrdenAnterior;
  if CompareText(VarName, 'PROGRAMADO_ACTUAL_MULTIPLE') = 0 then
    Value := dProgramadoOrdenActual;
  if CompareText(VarName, 'PROGRAMADO_ACUMULADO_MULTIPLE') = 0 then
    Value := dProgramadoOrdenAcumulado;


    //;


end;

procedure Tconnection.UconnectionConnectionLost(Sender: TObject;
  Component: TComponent; ConnLostCause: TConnLostCause;
  var RetryMode: TRetryMode);
begin
    RetryMode := rmReconnectExecute;
  case(ConnLostCause) of

      clOpen: RetryMode := rmReconnectExecute;
      //Connection loss detected during DataSet.ApplyUpdates
      clApply: RetryMode := rmReconnectExecute;
      // Connection loss detected during Connection.ApplyUpdates
      clConnectionApply: RetryMode := rmReconnectExecute;
      // Connection loss detected during query opening
      clRefresh:     RetryMode := rmReconnectExecute;
//      // Connection loss detected during service information request
//      clServiceQuery:
      // Connection loss detected during transaction start
      clTransStart :
         RetryMode := rmReconnectExecute;
      clExecute:
         RetryMode := rmReconnectExecute;
  end;
end;

procedure Tconnection.zConnectionAfterConnect(Sender: TObject);
begin
  // Connectar la base de datos alterna con los datos de la base original
  if ConnTrx.Connected then
    ConnTrx.Disconnect;
  ConnTrx.Catalog  := zConnection.Catalog;
  ConnTrx.Database := zConnection.DataBase;
  ConnTrx.HostName := zConnection.HostName;
  ConnTrx.PassWord := zConnection.PassWord;
  ConnTrx.Port     := zConnection.Port;
  ConnTrx.User     := zConnection.User;
  ConnTrx.Connect;

  if Uconnection.Connected then
    Uconnection.Disconnect;
  Uconnection.Database := zConnection.DataBase;
  Uconnection.Server := zConnection.HostName;
  Uconnection.PassWord := zConnection.PassWord;
  Uconnection.Port     := zConnection.Port;
  Uconnection.Username := zConnection.User;
  Uconnection.Connect;

end;


{ TVarGlobal }

end.









