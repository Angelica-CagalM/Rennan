unit frm_valida_ss7;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, frm_connection, StdCtrls, Buttons, global,
  DBCtrls, StrUtils, Mask, utilerias, masUtilerias,
  frxClass, Menus, ZAbstractRODataset, ZDataset, Gauges, UnitGenerales,
  ExtCtrls, ZAbstractDataset, Math, ComCtrls, frm_repositorio,
  frxExportPDF, UnitExcepciones,  DateUtils,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxCheckBox, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxListView, cxImageComboBox,
  cxLabel, cxTextEdit, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,  idSmtp,IdSMTPBase,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,IdSSLOpenSSLHeaders,
  IdExplicitTLSClientServerBase,IdTCPConnection, IdTCPClient,
  IdMessageClient, IdIOHandler,IdComponent,cxButtons, IdAttachment,
  dxSkinVisualStudio2013Light, MemDS, DBAccess, Uni, frxDBSet, IdAttachmentFile, IdMessage,
  UnitEnviarEmail, cxCurrencyEdit,ComObj;

type
  TfrmValida_ss7 = class(TForm)
    ds_datos: TDataSource;
    rDiarioValida: TfrxReport;
    ds_salida: TDataSource;
    cxLista: TcxListView;
    grid_datos: TcxGrid;
    grid_datosView: TcxGridDBTableView;
    col_id: TcxGridDBColumn;
    Col_Referencia: TcxGridDBColumn;
    Col_Solicitado: TcxGridDBColumn;
    grid_datosLevel: TcxGridLevel;
    col_entrega: TcxGridDBColumn;
    col_usuario: TcxGridDBColumn;
    col_estatus: TcxGridDBColumn;
    col_correo: TcxGridDBColumn;
    col_ImgEstado: TcxGridDBColumn;
    Panel1: TPanel;
    btnAutoriza: TcxButton;
    btnValida: TcxButton;
    zqDatos: TUniQuery;
    QrySalida: TUniQuery;
    cxVisualizar: TcxButton;
    ds_moneda: TDataSource;
    Moneda: TUniQuery;
    grid_datosViewColumn1: TcxGridDBColumn;
    zDatos: TUniQuery;
    zValida: TUniQuery;
    btnRechazar: TcxButton;
    btnEnviar: TcxButton;
    zDestino: TUniQuery;
    ds_destino: TDataSource;
    ds_mensaje: TDataSource;
    zMensaje: TUniQuery;
    zCorreo: TUniQuery;
    zqEnviados: TUniQuery;
    frxDBLista: TfrxDBDataset;
    btncancelar: TcxButton;
    col_est: TcxGridDBColumn;
    grid_datosViewColumn3: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    grid_datosViewColumn2: TcxGridDBColumn;
    btnLiberar: TcxButton;
    btnAsignarCC: TcxButton;
    btnComprar: TcxButton;
    grid_datosViewColumn4: TcxGridDBColumn;
    grid_datosViewColumn5: TcxGridDBColumn;
    Panel2: TPanel;
    btnAutoriza2: TcxButton;
    btnValida2: TcxButton;
    btnEnviar2: TcxButton;
    cxVisualizar2: TcxButton;
    Panel3: TPanel;
    btnAutoriza3: TcxButton;
    btnValida3: TcxButton;
    btncancelar3: TcxButton;
    btnEnviar3: TcxButton;
    cxVisualizar3: TcxButton;
    Panel4: TPanel;
    Panel5: TPanel;
    btnAutoriza5: TcxButton;
    btnValida5: TcxButton;
    btncancelar5: TcxButton;
    btnEnviar5: TcxButton;
    btnRechazar5: TcxButton;
    cxVisualizar5: TcxButton;
    grid_datosViewColumn6: TcxGridDBColumn;
    zDestinoSAP: TUniQuery;
    dsDestinoSAP: TDataSource;
    btnPR: TcxButton;
    cxRefrescar: TcxButton;
    cxRefrescar1: TcxButton;
    cxRefrescar2: TcxButton;
    cxRefrescar3: TcxButton;
    zCorreosValidar: TUniQuery;
    dsCorreosValidar: TDataSource;
    zDestinoReq: TUniQuery;
    dsDestinoReq: TDataSource;
    OpenDialog1: TOpenDialog;
    btnMateriales: TcxButton;
    zMaterialesR: TUniQuery;
    zActualizar: TUniQuery;
    Folio: TUniQuery;
    zMR: TUniQuery;
    dsMR: TDataSource;
    zCorreoUsuario: TUniQuery;
    ds_correoUsuario: TDataSource;
    dsPOrdenes_trabajo: TDataSource;
    zPOrdenes_Trabajo: TUniQuery;
    procedure btnValidaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAutorizaClick(Sender: TObject);
    procedure cxListaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEnviarClick(Sender: TObject);
    procedure BonotesVal();
    procedure ImprimeDatosPrepare(sParamUser : string; lVisualiza :boolean; uniQ_param: tUniQuery);
    procedure cxVisualizarClick(Sender: TObject);
    procedure btnRechazarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure grid_datosViewStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btnComprarClick(Sender: TObject);
    procedure btnAsignarCCClick(Sender: TObject);
    procedure btnLiberarClick(Sender: TObject);
    procedure grid_datosViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grid_datosViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnPRClick(Sender: TObject);

    procedure MuestraColumnas(iParamInicio,iParamFin : integer; lTipo :boolean);
    procedure EnviaCorreoAvanzado(sParamModulo,sParamProceso,sParamTipoMaterial,sParamComentario,sParamEstatus, sParamFoldiosDoctos :string);
    procedure EnviaCorreo(sParamModulo,sParamProceso,sParamTipoMaterial,sParamEstatus, sParamFoldiosDoctos :string);
    procedure ConcatenaTipoFolios(iParamPuntero : integer);
    procedure cxRefrescarClick(Sender: TObject);
    procedure GetValueReporte(rReporteParametro : TfrxReport);
    procedure btnMaterialesClick(Sender: TObject);

  private
    { Private declarations }
    acc: TCollection;
    Mensaje: TIdMessage;
    AdjuntoOtros: TIdAttachmentFile;
    Adjunto: TIdAttachmentFile;
    Botones: TcxButton;
    RutaArchivoAdjunto: string;
    DirPDF :String ;

  public
    { Public declarations }
     btnR:Boolean;
     sTipoMaterial, sFoliosDoctos, sUsuarioReq, sCC : string;
     Function EnviarMensaje(sUsuario, sClave, sServidor, sAdjunto, sAsunto, sDestino, sMensaje: String; iPort:Integer; aplicaTLS:String): String;
     procedure DisplayMail(Attachment: TFileName);
     procedure FolioRequisicion;
  end;

const
  iPausa = 1000;
var
  frmValida_ss7: TfrmValida_ss7;
  dMonto: Currency;
  sJornada, ant : string;
  lRecordChange, lContinua, creoMR: Boolean;
  iRecord: Integer;
  SavePlace2 : TBookmark;
  temE:TUniQuery;
  btnPermisos:String;
  pdf:String;
  iIndiceSeleccionado : integer;
  Continua:Boolean;
  ArchivoPath:String;
  NoGuardaCotizacion:Boolean;
  cod : String;
  Depto : Integer;
implementation

uses
  frm_ReporteDiarioTurno, frm_EntradaAlmacen, UFrmEnviarCorreo,Frm_Comentarios,UnitMetodos, UFrmConfigCorreo, Frm_Modal,
  frm_VerDetalle_MR;

{$R *.dfm}


procedure TfrmValida_ss7.DisplayMail(Attachment: TFileName);
var
  ns,mi,ol,fdInbox,fsync, fdOutbox:OleVariant;
  MyItems: Variant;
const
 olMailItem = 0;
 olByValue = 1;
 olFolderSentMail =	5;
 olFolderInbox	=6;
begin
    ol := CreateOleObject('Outlook.Application');
    ns := ol.GetNamespace('MAPI');
    fdInbox := ns.GetDefaultFolder(olFolderInbox);
    fdInbox.Display;
    MyItems:= fdInbox.Items;
    MyItems:= ol.CreateItem(olMailItem);
    if Attachment <> '' then
    MyItems.Attachments.Add(Attachment);
    MyItems.Display;

end;

procedure TfrmValida_ss7.btnEnviarClick(Sender: TObject);
begin
    cxLista.Items[iIndiceSeleccionado].Selected := True;
    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
      ImprimeDatosPrepare('frxDBRequisicion', False, zqDatos);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2 then
      ImprimeDatosPrepare('frxOrdenCompra', False, zqDatos);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4 then
       ImprimeDatosPrepare('frxDBEntrada', False, zqDatos);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5 then
        ImprimeDatosPrepare('frxDBEntradas', False, zqDatos);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6 then
       ImprimeDatosPrepare('frxDBAvisoEmbarque', False, zqDatos);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 7 then
       ImprimeDatosPrepare('Db_proyecto', False, zqDatos);


    connection.ExportaPDF.ShowProgress := False;
    connection.ExportaPDF.ShowDialog   := False;
    connection.ExportaPDF.FileName := zqDatos.FieldByName('Folio').AsString + '.pdf';
    DirPDF := zqDatos.FieldByName('Folio').asString+'.pdf';
    rDiarioValida.Export(connection.ExportaPDF);
    DisplayMail(ExtractFilePath(Application.ExeName)+zqDatos.FieldByName('Folio').AsString + '.pdf');
    if fileexists(DirPDF) then
     DeleteFile(DirPDF);

//    connection.ExportaPDF.ShowProgress := False;
//    connection.ExportaPDF.ShowDialog   := False;
//    connection.ExportaPDF.FileName := zqDatos.FieldByName('Folio').AsString + '.pdf';
//    DirPDF := zqDatos.FieldByName('Folio').asString+'.pdf';
//
//    rDiario.Export(connection.ExportaPDF);
//    Application.CreateForm(TFrmEnviarCorreo, FrmEnviarCorreo);
//    FrmEnviarCorreo.FrmAnterior:= 'frmValida';
//    FrmEnviarCorreo.ShowModal;

end;


procedure TfrmValida_ss7.btnLiberarClick(Sender: TObject);
var
  lPoder, lFilaGrid: Boolean;
  iGrid, indice, x: Integer;
  SavePlace: TBookmark;
begin
   cxLista.Items[iIndiceSeleccionado].Selected := True;
   sTipoMaterial := '';
   sFoliosDoctos := '';
   if zqDatos.RecordCount > 0 then
      if grid_DatosView.DataController.GetSelectedCount > 0 then
      begin
          lPoder := True;
      end;

      if lPoder then
      begin
        lRecordChange := False;

        SavePlace := grid_DatosView.DataController.DataSource.DataSet.GetBookmark;
        iGrid     := 0;
        with grid_DatosView.DataController.DataSource.DataSet do
          for iGrid := 0 to grid_DatosView.DataController.GetSelectedCount - 1 do
          begin

            indice := grid_DatosView.DataController.GetSelectedRowIndex(iGrid);
            grid_DatosView.DataController.FocusedRowIndex := indice;

            if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'AUTORIZADO' then
            begin
                 lRecordChange := True;

                 if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1) then
                     procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'Libera',1, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );

                 //Procedimiento para concatenar Tipo de Material y Folios documentos
                 ConcatenaTipoFolios(iGrid);

                 kardex_almacen('Liberado '+cxLista.Items[cxLista.ItemIndex].Caption+' No. [' + grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString + '].', 'Otros Movimientos');
             end
            else
            begin
               MessageDlg('No de puede realizar el proceso: '+#13+' -> '+cxLista.Items[cxLista.ItemIndex].Caption+' en Estatus '+grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString, mtInformation, [mbOk], 0);
               exit;
            end;

          end;
          grid_DatosView.DataController.ClearSelection;

          if lRecordChange then
          begin
             try
               SavePlace2 := grid_DatosView.DataController.DataSource.DataSet.GetBookmark;

               zqDatos.Refresh;
               try
                   Grid_DatosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace2);
               Except
                   Grid_DatosView.DataController.DataSource.DataSet.FreeBookmark(SavePlace2);
               end;
               Except
             end;

             if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
             begin
                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
                    EnviaCorreoAvanzado('REQUISICION', 'LIBERAR', sTipoMaterial,'', 'LIBERADA',sFoliosDoctos);
             end
          end;
      end;
end;

procedure TfrmValida_ss7.btnMaterialesClick(Sender: TObject);
begin
    global_frmActivo := 'Materiales_MR';
    Application.CreateForm(TfrmVerDetalleMR, frmVerDetalleMR);
    frmVerDetalleMR.show;



end;

procedure  TfrmValida_ss7.FolioRequisicion;
var zFolios : TUniQuery;
begin

   zPOrdenes_Trabajo.Active:= False;
   AsignarSQL(zPOrdenes_Trabajo,'ordenesdetrabajo_req',pUpdate);
   FiltrarDataSet(zPOrdenes_Trabajo,'Contrato,Tipo',[global_contrato,'PROYECTO']);
   zPOrdenes_Trabajo.Open;


    zPOrdenes_Trabajo.Locate('sNumeroOrden', grid_DatosView.DataController.DataSet.FieldByName('sNumeroOrden').AsString,[]);

   zFolios:=tUniquery.create(nil);
   zFolios.Connection := Connection.uConnection;
   zFolios.Active := False;
   zFolios.Active:= False;
   AsignarSQL(zFolios,'anexo_requisicion_tracking',pUpDate);
   FiltrarDataSet(zFolios,'Folio',[zPOrdenes_Trabajo.FieldByName('sIdFolio').AsString]);
   zFolios.ExecSQL;

   if (zFolios.FieldByName('Folios').AsString='') then begin
        //cod:=autoFolio(zqDatos,'Autoriza_requisicion_ss7',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,grid_DatosView.DataController.DataSet.FieldByName('IdDepartamento').AsInteger);
         folio.Open;
         folio.Append;
         cod:=autoFolio(folio,'anexo_requisicion',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,Depto);
         folio.Cancel;
   end
   else
    if (zFolios.FieldByName('Folios').AsString<> null)then
         cod:=zFolios.FieldByName('Folios').AsString;


end;

procedure TfrmValida_ss7.btnPRClick(Sender: TObject);
var
  lPoder, lFilaGrid: Boolean;
  iGrid, indice, x: Integer;
  SavePlace: TBookmark;
  lastId,Id:Integer;
  comentario:String;
  zConsulta:TUniquery;
begin
   cxLista.Items[iIndiceSeleccionado].Selected := True;
   sTipoMaterial := '';
   sFoliosDoctos := '';
   if zqDatos.RecordCount > 0 then
      if grid_DatosView.DataController.GetSelectedCount > 0 then
      begin
          lPoder := True;
      end;

      if lPoder then
      begin

        lRecordChange := False;
        SavePlace := grid_DatosView.DataController.DataSource.DataSet.GetBookmark;
        iGrid     := 0;
        with grid_DatosView.DataController.DataSource.DataSet do
          for iGrid := 0 to grid_DatosView.DataController.GetSelectedCount - 1 do
          begin

            indice := grid_DatosView.DataController.GetSelectedRowIndex(iGrid);
            grid_DatosView.DataController.FocusedRowIndex := indice;

            if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'ASIGNADO' then
            begin
                zMR.Active := False;
                AsignarSQL(zMR,'autoriza_detalleMR2',pUpdate);
                FiltrarDataSet(zMR,'contrato,Folio,Tipo',
                [global_contrato, zqDatos.FieldByName('iFolio').AsString,zqDatos.FieldByName('TipoRecurso').AsInteger]);
                zMR.Open;

             if zMR.RecordCount = 0 then
               //;
             else
             begin
               comentario:='';
               zMaterialesR.Active:=False;
               zMaterialesR.SQL.Clear;
               zMaterialesR.SQL.Text := 'SELECT * from anexo_prequisicion where iFolioRequisicion = :iFolioRequisicion and sEstado = :sEstado';
               zMaterialesR.ParamByName('iFolioRequisicion').AsInteger:=grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger;
               zMaterialesR.ParamByName('sEstado').AsString:='RECHAZADO';
               zMaterialesR.Open;
               Id:=grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger;
               if zMaterialesR.RecordCount > 0 then
               begin
                  zConsulta := TUniQuery.Create(self);
                  zConsulta.Connection := connection.uConnection;
                  zConsulta.Active := False;
                  zConsulta.SQL.Clear;
                  zConsulta.SQL.Add('SELECT sNombre, IdDepartamento FROM usuarios WHERE sIdUsuario = :Usuario');
                  zConsulta.Params.ParamByName('Usuario').DataType := ftString;
                  zConsulta.Params.ParamByName('Usuario').value := global_usuario;
                  zConsulta.Open;

                  Depto :=zConsulta.FieldByName('IdDepartamento').AsInteger;

//                  folio.Open;
//                  folio.Append;
//                  cod:=autoFolio(folio,'anexo_requisicion',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,zConsulta.FieldByName('IdDepartamento').AsInteger);
//                  folio.Cancel;

                  FolioRequisicion;

                  zActualizar.Active:=False;
                  zActualizar.SQL.Clear;
                  zActualizar.SQL.Text := 'INSERT INTO anexo_requisicion (sContrato, iFolioRequisicion, sNumFolio, sContratoOT, sNumeroOrden, '+
                  'sNumeroOrdenCentroC, sNumeroOrdenOT, dIdFecha, dFechaSolicitado, dFechaRequerido, dFechaVigencia, sRequisita, sSolicito, '+
                  'sStatus, mComentarios, sPrioridad, IdDepartamento, IdTiporecurso, IdFirma, sPuntoCarga, TelefonoRequisitor, IdSAPSolicitante, '+
                  'TelefonoSAPSolicitante, IdPlanta, ProcurementSpecialist, PreferredSupplier, IdAutorizaManager, IdAutorizaQA, sLugarEntrega, '+
                  'sIdUsuario, UsuarioValido, FechaValido, UsuarioAutorizo, FechaAutorizo, UsuarioRechazo, FechaRechazo, ComentarioStatus, '+
                  'UsuarioCancelo, UsuarioLibero, FechaLibero, UsuarioAsignoCC, FechaAsignoCC, UsuarioGeneroPR, FechaGeneroPR, UsuarioCompro, FechaCompro, sUsuarioCompra, AplicaLogistica, NotasLogistica, FechaCancelo, Vista, Revision) '+
                  'SELECT sContrato, 0, :folio, sContratoOT, sNumeroOrden, sNumeroOrdenCentroC, sNumeroOrdenOT, :dIdFecha, :dFechaSolicitado, '+
                  ':dFechaRequerido, dFechaVigencia, sRequisita, sSolicito, :sStatus, mComentarios, sPrioridad, IdDepartamento, IdTiporecurso, '+
                  'IdFirma, sPuntoCarga, TelefonoRequisitor, IdSAPSolicitante, TelefonoSAPSolicitante, IdPlanta, ProcurementSpecialist, '+
                  'PreferredSupplier, IdAutorizaManager, IdAutorizaQA, sLugarEntrega, sIdUsuario, :UsuarioValido, :FechaValido, :UsuarioAutorizo, '+
                  ':FechaAutorizo, UsuarioRechazo, FechaRechazo, ComentarioStatus, UsuarioCancelo, :UsuarioLibero, :FechaLibero, :UsuarioAsignoCC, '+
                  ':FechaAsignoCC, UsuarioGeneroPR, FechaGeneroPR, UsuarioCompro, FechaCompro, sUsuarioCompra, AplicaLogistica, NotasLogistica, FechaCancelo, Vista, 0 ' +
                  'FROM anexo_requisicion WHERE iFolioRequisicion=:iFolioRequisicion';
                  zActualizar.ParamByName('iFolioRequisicion').AsInteger:=Id;
                  zActualizar.ParamByName('folio').AsString:= cod;
                  zActualizar.ParamByName('UsuarioValido').AsString := '';
                  zActualizar.ParamByName('FechaValido').AsString := '';
                  zActualizar.ParamByName('UsuarioAutorizo').AsString := '';
                  zActualizar.ParamByName('FechaAutorizo').AsString := '';
                  zActualizar.ParamByName('UsuarioLibero').AsString := '';
                  zActualizar.ParamByName('FechaLibero').AsString := '';
                  zActualizar.ParamByName('UsuarioAsignoCC').AsString := '';
                  zActualizar.ParamByName('FechaAsignoCC').AsString := '';
                  zActualizar.ParamByName('dIdFecha').AsDate := zMaterialesR.FieldValues['dFechaRechazo'];
                  zActualizar.ParamByName('dFechaSolicitado').AsDate := zMaterialesR.FieldValues['dFechaRechazo'];
                  zActualizar.ParamByName('dFechaRequerido').AsDate := IncDay(zMaterialesR.FieldByName('dFechaRechazo').AsDateTime, 7) ;
                  zActualizar.ParamByName('sStatus').AsString:='PENDIENTE';
                  zActualizar.ExecSQL;
                  zqDatos.Refresh;

                  lastId:=zActualizar.LastInsertId;
                  zMaterialesR.First;

                  zActualizar.Active:=False;
                  zActualizar.SQL.Clear;
                  zActualizar.SQL.Text := 'UPDATE anexo_prequisicion SET iFolioRequisicion= :actual WHERE iFolioRequisicion = :anterior and sEstado=:sEstado';
                  zActualizar.ParamByName('anterior').AsInteger:=Id;
                  zActualizar.ParamByName('actual').AsInteger:=lastId;
                  zActualizar.ParamByName('sEstado').AsString:='RECHAZADO';
                  zActualizar.ExecSQL;

                  zActualizar.Active:=False;
                  zActualizar.SQL.Clear;
                  zActualizar.SQL.Text := 'UPDATE anexo_prequisicion SET sEstado=:Estado, dFechaRequerimiento=:Fecha WHERE iFolioRequisicion = :actual';
                  zActualizar.ParamByName('actual').AsInteger:=lastId;
                  zActualizar.ParamByName('Fecha').AsDate:= zMaterialesR.FieldValues['dFechaRechazo'];
                  zActualizar.ParamByName('Estado').AsString:='PENDIENTE';
                  zActualizar.ExecSQL;

                  comentario:= 'Se creo nueva requisicion con el folio '+cod;
                  creoMR := True;
               end;
             end;
                 lRecordChange := True;
                  //***  verificar que la mr no contenga materiales para cambia estatus PENDIENTE y no ASIGNAR PR
//                  zMaterialesR.Active := False;
//                  AsignarSQL(zMaterialesR,'autoriza_detalleMR',pUpdate);
//                  FiltrarDataSet(zMaterialesR,'contrato,Folio,Tipo',
//                  [global_contrato, zqDatos.FieldByName('iFolio').AsString,zqDatos.FieldByName('TipoRecurso').AsInteger]);
//                  zMaterialesR.Open;

                 if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1) then
                   if zMR.RecordCount = 0 then
                   begin
                     zConsulta := TUniQuery.Create(self);
                     zConsulta.Connection := connection.uConnection;

                     zConsulta.Active := False;
                     zConsulta.SQL.Clear;
                     zConsulta.SQL.Text := 'UPDATE anexo_requisicion SET sStatus=:status WHERE iFolioRequisicion = :Folio';
                     zConsulta.Params.ParamByName('Folio').value := zqDatos.FieldByName('iFolio').AsInteger;
                     zConsulta.Params.ParamByName('status').value := 'PENDIENTE';
                     zConsulta.ExecSQL;

                     zActualizar.Active:=False;
                     zActualizar.SQL.Clear;
                     zActualizar.SQL.Text := 'UPDATE anexo_prequisicion SET sEstado=:Estado WHERE iFolioRequisicion = :Folio';
                     zActualizar.ParamByName('Folio').AsInteger:=zqDatos.FieldByName('iFolio').AsInteger;
                     zActualizar.ParamByName('Estado').AsString:='PENDIENTE';
                     zActualizar.ExecSQL;
                   end
                   else
                    procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'GeneroPR',1, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );

                 //Procedimiento para concatenar Tipo de Material y Folios documentos
                 ConcatenaTipoFolios(iGrid);

                 kardex_almacen('GENERO PR '+cxLista.Items[cxLista.ItemIndex].Caption+' No. [' + grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString + '].', 'Otros Movimientos');
             end
            else
            begin
               MessageDlg('No de puede realizar el proceso: '+#13+' -> '+cxLista.Items[cxLista.ItemIndex].Caption+' en Estatus '+grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString, mtInformation, [mbOk], 0);
               exit;
            end;

          end;
          grid_DatosView.DataController.ClearSelection;

          if lRecordChange then
          begin
             try
               SavePlace2 := grid_DatosView.DataController.DataSource.DataSet.GetBookmark;
               zqDatos.Refresh;

               try
                   Grid_DatosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace2);
               Except
                   Grid_DatosView.DataController.DataSource.DataSet.FreeBookmark(SavePlace2);
               end;
               Except
             end;

             if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
             begin
                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
                    EnviaCorreoAvanzado('REQUISICION', 'GENERARPR', sTipoMaterial,comentario, ' GENERO P.R.',sFoliosDoctos);
             end
          end;
      end;


end;

procedure TfrmValida_ss7.btnRechazarClick(Sender: TObject);
var
  iGrid, indice,x: Integer;
begin
   cxLista.Items[iIndiceSeleccionado].Selected := True;
   sFoliosDoctos := '';
   if zqDatos.RecordCount > 0 then
   begin
      if grid_DatosView.DataController.GetSelectedCount > 1 then
      begin
         messageDLG('No es posible Rechazar múltiples registos!',mtInformation,[mbOk],0);
         exit;
      end;

      if grid_DatosView.DataController.GetSelectedCount > 0 then
      begin
           if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
           begin
               if  (UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'PENDIENTE') {OR (UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'AUTORIZADO') }
                   OR (UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'CANCELADO')OR (UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'RECHAZADO')then

                   messageDLG('No se puede Rechazar con Estatus '+UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString), mtInformation, [mbOk], 0)
               else
               if not MostrarFormChild('FrmComentarios',global_dxBarManagerPrincipal) Then
               begin
                  global_frmActivo:='RECHAZADO';
                  btnR:=true;
//                  btnRechazar.Enabled:=false;
                  Application.CreateForm(TFrmComentarios, FrmComentarios);
                  FrmComentarios.show;
               end;
           end
           else
           if not MostrarFormChild('FrmComentarios',global_dxBarManagerPrincipal) Then
           begin
              global_frmActivo:='RECHAZADO';
              Application.CreateForm(TFrmComentarios, FrmComentarios);
              FrmComentarios.show;
           end;
      end;
   end;
end;


procedure TfrmValida_ss7.btnValidaClick(Sender: TObject);
var
  iGrid, indice, i,x: Integer;
  lPoder,lNotificaCotizacion : Boolean;
  SavePlace : TBookmark;
  BlobStream : TStream;
  FileStream : TFileStream;
  Ext, sArchivo : string;
  tempString : TStringList;
  Memo1:TMemo;
  zConsulta, zMontoValida, zprequisicion : tUniQuery;
  lCancela  : boolean;
begin
    cxLista.Items[iIndiceSeleccionado].Selected := True;
    sTipoMaterial := '';
    sFoliosDoctos := '';
    if zqDatos.RecordCount > 0 then
      if grid_DatosView.DataController.GetSelectedCount > 0 then
      begin
          lPoder := True;
      end;

      if lPoder then
      begin
        lRecordChange := False;
        SavePlace := grid_DatosView.DataController.DataSource.DataSet.GetBookmark;
        iGrid     := 0;

        with grid_DatosView.DataController.DataSource.DataSet do
          for iGrid := 0 to grid_DatosView.DataController.GetSelectedCount - 1 do
          begin
              indice := grid_DatosView.DataController.GetSelectedRowIndex(iGrid);
              grid_DatosView.DataController.FocusedRowIndex := indice;

              lCancela := False;
              //grid_DatosView.DataController.SelectRows[iGrid];
              if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'PENDIENTE' then
              begin
                if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
                begin
                   if (temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7') then
                   begin
                      //Validamos si la MR tiene todos sus materiales el material Group.
                      zConsulta := tUniQuery.Create(nil);
                      zConsulta.Connection := connection.Uconnection;
                      AsignarSQL(zConsulta,'validar_requisicion_grupo',pUpdate);
                      FiltrarDataSet(zConsulta,'Folio',[grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger]);
                      zConsulta.Open;

                      if zConsulta.RecordCount > 0 then
                      begin
                         messageDLg('No se puede validar, existen materiales sin Grupo de Material asignado!',mtInformation,[mbOk],0);
                         lCancela := True;
                      end;

                      zConsulta.Destroy;

                      if grid_DatosView.DataController.DataSet.FieldByName('TipoMR').AsString = 'SERVICIO' then
                      begin
                        zprequisicion := Tuniquery.Create(nil);
                        AsignarSQL(zprequisicion , 'anexo_prequisicion_serv',  pUpdate);
                        FiltrarDataSet(zprequisicion, 'Contrato, Folio, Tipo',
                        [global_contrato, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,
                        grid_DatosView.DataController.DataSet.FieldByName('Tiporecurso').AsInteger]);
                        zprequisicion.Open;

                        if zprequisicion.RecordCount = 0 then
                        begin
                          messageDLg('No se puede validar, falta agregar el servicio!',mtInformation,[mbOk],0);
                           lCancela := True;
                        end;
                      end;


                   end;
                end;


                if lCancela = False then
                begin
                  lRecordChange := True;
                  if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
                  begin
                     if (temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7') then
                     begin
                         if grid_DatosView.DataController.DataSet.FieldByName('IdGerente').AsInteger > 0 then
                            procValidaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'ValidaGerencias',1, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 )
                         else
                            procValidaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'Valida',1, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );
                     end
                     else
                        procValidaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'Valida',1, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );
                  end;

                  if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2 then begin
                      if (temE.FieldByName('FK_Titulo').AsString = 'CMMI') then
                      begin
                        zMontoValida := TUniQuery.Create(nil);
                        AsignarSQL(zMontoValida,'autorizaciones_VALIDA_monto',pUpdate);
                        FiltrarDataSet(zMontoValida,'Valor,Tipo,Page,Grupo',[
                                        grid_DatosView.DataController.DataSet.FieldByName('dMontoMN').AsString,
                                        'Compras','VALIDAR',global_grupo]);
                        zMontoValida.Open;

                        if zMontoValida.RecordCount > 0 then
                        begin
                          if grid_DatosView.DataController.DataSet.FieldByName('MontoTope').AsFloat = 0 then
                          begin
                            if grid_DatosView.DataController.DataSet.FieldByName('dMontoMN').AsFloat <= 10000.00 then
                            begin
                              procValidaDatosValidaAutoriza(global_contrato, 'anexo_pedidos', 'Valida',2, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7)
                            end
                            else
                            begin
                              MessageDlg('Permiso denegado para realizar la validación de O.C., el proveedor no cuenta con todos los documentos necesarios.', mtWarning,[mbOk],0);
                              Exit
                            end;

                          end
                          else if grid_DatosView.DataController.DataSet.FieldByName('MontoTope').AsFloat = 10000.00 then
                          begin
                            if ((grid_DatosView.DataController.DataSet.FieldByName('dMontoMN').AsFloat <= 300000.00) and (grid_DatosView.DataController.DataSet.FieldByName('TotalProveedorOC').AsFloat < 500000.00)) then
                            begin
                              procValidaDatosValidaAutoriza(global_contrato, 'anexo_pedidos', 'Valida',2, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7)
                            end
                            else
                            begin
                              MessageDlg('Permiso denegado para realizar la validación de O.C., el proveedor no cuenta con todos los documentos necesarios.', mtWarning,[mbOk],0);
                              Exit
                            end;
                          end
                          else if grid_DatosView.DataController.DataSet.FieldByName('MontoTope').AsFloat = 300000.00 then
                          begin

                              procValidaDatosValidaAutoriza(global_contrato, 'anexo_pedidos', 'Valida',2, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7)
//                            end
//                            else
//                            begin
//                              MessageDlg('Permiso denegado para realizar la validación de O.C., el proveedor no cuenta con todos los documentos necesarios.', mtWarning,[mbOk],0);
//                              Exit
//                            end;

                          end;
//                          procValidaDatosValidaAutoriza(global_contrato, 'anexo_pedidos', 'Valida',2, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida)
                        end
                        else
                        begin
                          MessageDlg('Permiso denegado para realizar la validación de O.C., su monto esta fuera del Rango Asignado.', mtWarning,[mbOk],0);
                          exit
                        end;
                      end
                      else
                        procValidaDatosValidaAutoriza(global_contrato, 'anexo_pedidos', 'Valida',2, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );
                        if (temE.FieldByName('FK_Titulo').AsString = 'CMMI') then begin
                          ImprimeDatosPrepare('frxOrdenCompra', False ,zqDatos);
                          connection.ExportaPDF.ShowProgress := False;
                          connection.ExportaPDF.ShowDialog   := False;
                          connection.ExportaPDF.FileName := zqDatos.FieldByName('Folio').AsString + '.pdf';
                          DirPDF := zqDatos.FieldByName('Folio').asString+'.pdf';
                          rDiarioValida.Export(connection.ExportaPDF);
                        end;
                  end;
                  if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 3 then
                     procValidaDatosValidaAutoriza(global_contrato, 'alm_inspeccion_material', 'Valida',3, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7);

                  if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4 then begin
                     procValidaDatosValidaAutoriza(global_contrato, 'almacen_entrada', 'Valida',4, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );
                       if (temE.FieldByName('FK_Titulo').AsString = 'CMMI') then begin
                          ImprimeDatosPrepare('frxDBEntradas', False ,zqDatos);
                          connection.ExportaPDF.ShowProgress := False;
                          connection.ExportaPDF.ShowDialog   := False;
                          connection.ExportaPDF.FileName := zqDatos.FieldByName('Folio').AsString + '.pdf';
                          DirPDF := zqDatos.FieldByName('Folio').asString+'.pdf';
                          rDiarioValida.Export(connection.ExportaPDF);
                       end;
                  end;
                  if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5 then begin
                     procValidaDatosValidaAutoriza(global_contrato, 'almacen_salida', 'Valida',5, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7);
                      if (temE.FieldByName('FK_Titulo').AsString = 'CMMI') then begin
                        ImprimeDatosPrepare('frxDBEntrada', False ,zqDatos);
                        connection.ExportaPDF.ShowProgress := False;
                        connection.ExportaPDF.ShowDialog   := False;
                        connection.ExportaPDF.FileName := zqDatos.FieldByName('Folio').AsString + '.pdf';
                        DirPDF := zqDatos.FieldByName('Folio').asString+'.pdf';
                        rDiarioValida.Export(connection.ExportaPDF);
                      end;
                  end;
                  if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6 then
                     procValidaDatosValidaAutoriza(global_contrato, 'alm_aviso_embarque', 'Valida',6, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );

                  if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 7 then
                     procValidaDatosValidaAutoriza(global_contrato, 'ordenesdetrabajo', 'Valida', 7, 0, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString, frmValida_ss7 );

                  if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 8 then
                  begin
                    if (temE.FieldByName('FK_Titulo').AsString = 'CMMI') then
                      begin
                        zMontoValida := TUniQuery.Create(nil);
                        AsignarSQL(zMontoValida,'autorizaciones_VALIDA_monto',pUpdate);
                        FiltrarDataSet(zMontoValida,'Valor,Tipo,Page,Grupo',[
                                        grid_DatosView.DataController.DataSet.FieldByName('dMonto').AsString,
                                        'SAP','VALIDAR',global_grupo]);
                        zMontoValida.Open;

                        if zMontoValida.RecordCount > 0 then
                          procValidaDatosValidaAutoriza(global_contrato, 'anexo_solicitud_aprobpago', 'Valida',8, 0, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString, frmValida_ss7 )
                        else
                        begin
                          MessageDlg('Permiso denegado para realizar la validación de S.A.P, su monto esta fuera del Rango Asignado', mtWarning,[mbOk],0);
                          exit
                        end;
                      end
                      else
                        procValidaDatosValidaAutoriza(global_contrato, 'anexo_solicitud_aprobpago', 'Valida',8, 0, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString, frmValida_ss7 );

                  end;
                  if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 9 then
                     procValidaDatosValidaAutoriza(global_contrato, 'almacen_entrada', 'Valida',9, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7);

                  if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 10 then
                     procValidaDatosValidaAutoriza(global_contrato, 'almacen_salida', 'Valida',10, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7);

                  if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 11 then
                    procValidaDatosValidaAutoriza(global_contrato, 'anexo_solicitud', 'Valida',11, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7);

                  //Procedimiento para concatenar Tipo de Material y Folios documentos
                  ConcatenaTipoFolios(iGrid);

                  kardex_almacen('Valida '+cxLista.Items[cxLista.ItemIndex].Caption+' No. [' + grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString + '].', 'Otros Movimientos');

                end;
              end
              else
              begin
                  MessageDlg('No se puede realizar el proceso: '+#13+' -> '+cxLista.Items[cxLista.ItemIndex].Caption+' en Estatus '+grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString, mtInformation, [mbOk], 0);
                  exit;
              end;
          end;

          SavePlace2 := grid_DatosView.DataController.DataSource.DataSet.GetBookmark;
          grid_DatosView.DataController.ClearSelection;
      end;

      if lRecordChange then
      begin
         zqDatos.Refresh;
         if (Assigned( global_frmEntradas ) and (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4) ) then
                 begin
                   frmEntradaAlmacen.frmBarraH11.btnRefresh.Click;
                 end;
         try
             Grid_DatosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace2);
         Except
             Grid_DatosView.DataController.DataSource.DataSet.FreeBookmark(SavePlace2);
         end;


         lContinua := True;
         if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
         begin
             if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
             begin
                if grid_DatosView.DataController.DataSet.FieldByName('IdGerente').AsInteger > 0 then begin
                  if (grid_DatosView.DataController.DataSet.FieldByName('Referencia').AsString = 'DEPARTAMENTO') or
                     (grid_DatosView.DataController.DataSet.FieldByName('Referencia').AsString = 'FACILITIES') then
                     begin
//
                        lNotificaCotizacion:=True;
                        If MessageDlg('¿Desea agregar una cotización?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then  begin
                         lNotificaCotizacion := False;
                         EnviaCorreoAvanzado('REQUISICION', 'LIBERAR_GERENTE', sTipoMaterial,'', 'VALIDADA',sFoliosDoctos);
                        end;

                        if lNotificaCotizacion then
                        begin
                          OpenDialog1.FileName := '';
                          NoGuardaCotizacion := False;

                          if not OpenDialog1.Execute() then
                            exit;

                          global_Temp := OpenDialog1.FileName;

                          if not FileExists(global_Temp) then
                            raise exception.Create('No se encontro el archivo especificado');

                          Ext := ExtractFileExt(global_Temp);

                          if ( Ext <> '.PDF' ) and ( Ext <> '.pdf' ) then
                            raise exception.Create('El archivo no es valido');

                          global_Temp:= ExtractFileName(OpenDialog1.FileName);
                          CopyFile(PChar(OpenDialog1.FileName), PChar(ExtractFilePath(Application.ExeName)+global_Temp), false);
                          ArchivoPath:=ExtractFilePath(Application.ExeName)+global_Temp;
                          EnviaCorreoAvanzado('REQUISICION', 'LIBERAR_GERENTE', sTipoMaterial,'', 'VALIDADA',sFoliosDoctos);
                           end;
                         end
                     else
                     EnviaCorreoAvanzado('REQUISICION', 'LIBERAR_GERENTE', sTipoMaterial,'', 'VALIDADA',sFoliosDoctos);
                end
                else
                   EnviaCorreoAvanzado('REQUISICION', 'VALIDAR', sTipoMaterial,'', 'VALIDADA',sFoliosDoctos);
             end;

             if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4 then
              EnviaCorreoAvanzado('ENTRADAS', 'VALIDAR', sTipoMaterial,'', 'VALIDADA',sFoliosDoctos);

             if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5 then
              EnviaCorreoAvanzado('SALIDAS', 'VALIDAR', sTipoMaterial,'', 'VALIDADA',sFoliosDoctos);


             if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6 then
              EnviaCorreoAvanzado('AVISO_EMBARQUE', 'VALIDAR', sTipoMaterial,'', 'VALIDADO',sFoliosDoctos);

              lContinua := False;
         end;

         if lContinua then
         begin
             if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
                EnviaCorreo('REQUISICION', '', sTipoMaterial, 'VALIDADA',sFoliosDoctos);

             if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2 then
                EnviaCorreo('ORDEN_COMPRA', 'VALIDAR', sTipoMaterial, '',sFoliosDoctos);

             if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 3 then
                EnviaCorreo('RIM', 'VALIDAR', sTipoMaterial, '',sFoliosDoctos);

             if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4 then
                EnviaCorreo('ENTRADAS', 'VALIDAR', sTipoMaterial, '',sFoliosDoctos);

             if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5 then
                EnviaCorreo('SALIDAS', 'VALIDAR', sTipoMaterial, '',sFoliosDoctos);

             if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6 then
                EnviaCorreo('AVISO_EMBARQUE', 'VALIDAR', sTipoMaterial, '',sFoliosDoctos);

             if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 7 then
                EnviaCorreo('VALIDA_PRESUPUESTO', '', '', '',sFoliosDoctos);

             if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 9 then
                EnviaCorreo('RECEPCION', 'VALIDAR', sTipoMaterial, '',sFoliosDoctos);

             if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 10 then
                EnviaCorreo('DESEMBARQUE', 'VALIDAR', sTipoMaterial, '',sFoliosDoctos);
         end;

      end;


end;


procedure TfrmValida_ss7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action := cafree;
end;

procedure TfrmValida_ss7.FormShow(Sender: TObject);
var
Cursor: TCursor;
  LocIdEmpresa: String;
begin

   btnPermisos := global_btnPermisos;
   AsignarSQL(Moneda,'master_moneda',pUpdate);
   Moneda.Open;

   temE := TUniquery.create(nil);
   temE.Connection := Connection.uConnection;
   temE.Active:=False;
   temE.SQL.Text:='Select IdEmpresa, FK_Titulo from master_empresa';
   temE.Open;

   if temE.FieldByName('FK_Titulo').AsString = 'TYPHOON' then
   begin
      cxLista.Items.Item[9].Delete;
      cxLista.Items.Item[8].Delete;
      cxLista.Items.Item[7].Delete;
      cxLista.Items.Item[6].Delete;
      cxLista.Items.Item[2].Delete;
   end
   else
   if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
   begin
      cxLista.Items.Item[9].Delete;
      cxLista.Items.Item[8].Delete;
      cxLista.Items.Item[6].Delete;
      cxLista.Items.Item[2].Delete;
      global_frmActivo:='Si';
   end
   else
   if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
   begin
      cxLista.Items.Item[7].Delete;
      cxLista.Items.Item[6].Delete;
      btnR:= False;
   end
   else
   if temE.FieldByName('FK_Titulo').AsString = 'SIANI' then
   begin
      global_frmActivo:='No';
      cxLista.Items.Item[9].Delete;
      cxLista.Items.Item[8].Delete;
      cxLista.Items.Item[7].Delete;
      cxLista.Items.Item[2].Delete;
   end;

   cxLista.ItemIndex := 0;
   iIndiceSeleccionado := 0;
   cxLista.Items[iIndiceSeleccionado].Selected := True;
   cxLista.OnClick(sender);

   grid_datosView.DataController.Groups.FullExpand;
//  guardar_leer_grid(grid_datosView,frmValida,0);
   PermisosBotones(frmValida_ss7,btnPermisos);

  // envio correo
    try
    Cursor := Screen.Cursor;
    try
      if zCorreo.Active then
        zCorreo.Refresh
      else
      begin
        zCorreo.ParamByName('Contrato').AsString  := global_contrato;
        zCorreo.ParamByName('Usuario').AsString  := global_usuario;
        zCorreo.ParamByName('Empresa').AsString  := connection.ucontrato.FieldByName('IdEmpresa').AsString;
        zCorreo.Open;
      end;

      if zqEnviados.Active then
        zqEnviados.Refresh
      else
      begin
      //  zqEnviados.ParamByName('Usuario').AsString  := global_usuario;
      //  zqEnviados.ParamByName('Empresa').AsString := global_contrato;
        zqEnviados.Open;
      end;

      if ((zCorreo.RecordCount = 0) and (zCorreo.FieldByName('NotificarAutorizar').AsString='Si'))then
      begin
        if messageDLG('No hay configuración de correo definida para tu empresa. ¿Deseas configurar tu cuenta ahora?', mtInformation, [MbYes, MbNo], 0) = mrYes then
        begin
          Application.CreateForm(TFrmConfigCorreo, FrmConfigCorreo);
          FrmConfigCorreo.ShowModal;
          FormShow(Sender);
       end
       else
          raise Exception.Create('***');
      end;

    finally
      Screen.Cursor := crDefault;
    end;

  except
    on e: exception do
    begin
      if e.Message <> '***' then
        //MsgBox.ShowModal('Error.',pMensajeError + e.Message, cmtError, [cmbOK]);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;

end;

procedure TfrmValida_ss7.grid_datosViewCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  global_frmActivo := 'Si';
  if ((connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7') and (cxLista.ItemIndex = 0))
  or ((connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7') and (cxLista.ItemIndex = 1))
  or ((connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7') and (cxLista.ItemIndex = 2)) then
  ant:=grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString;

  if ((connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7') and (cxLista.ItemIndex = 0)) then
     if (grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString = 'ASIGNADO') then
       btnMateriales.Enabled := True
      else 
       btnMateriales.Enabled := False;

  if (temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7') and ((global_grupo = 'LIDER_AVANZADO') or (global_grupo = 'COMPRAS')) and (cxLista.ItemIndex = 0) then
  begin
     if ((global_usuario = 'ctadeo') AND (grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString = 'SUBTEC')) OR
     ((global_usuario = 'jabarucho') AND (grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString = 'SUBTEC'))  OR
     ((global_usuario = 'carlos') AND (grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString = 'SUBTEC')) or
     ((global_usuario = 'ange') AND (grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString = 'SUBTEC')) or
     ((global_grupo = 'COMPRAS')) then
        btnRechazar.Enabled := TRUE
     ELSE
       btnRechazar.Enabled:= false;
  end;

end;

procedure TfrmValida_ss7.grid_datosViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if grid_datosView.OptionsView.CellAutoHeight then
      grid_datosView.OptionsView.CellAutoHeight := False
   else
      grid_datosView.OptionsView.CellAutoHeight := True;
end;

procedure TfrmValida_ss7.grid_datosViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
 begin
      //Estatus
      if (ARecord.Values[grid_datosViewColumn2.Index] = 'VALIDADO') or (ARecord.Values[grid_datosViewColumn3.Index] = 'VALIDADO') or
         (ARecord.Values[Col_estatus.Index] = 'VALIDADO') or (ARecord.Values[Col_ImgEstado.Index] = 'VALIDADO') or
         (ARecord.Values[Col_correo.Index] = 'VALIDADO')  then
      begin
        AStyle := TcxStyle.Create(nil);
        AStyle.Color:=connection.cxStyValido.Color;
      end
      else
      if (ARecord.Values[grid_datosViewColumn2.Index] = 'AUTORIZADO') or (ARecord.Values[grid_datosViewColumn3.Index] = 'AUTORIZADO') or
         (ARecord.Values[Col_estatus.Index] = 'AUTORIZADO') or (ARecord.Values[Col_ImgEstado.Index] = 'AUTORIZADO') or
         (ARecord.Values[Col_correo.Index] = 'AUTORIZADO')  then
      begin
        AStyle := TcxStyle.Create(nil);
        AStyle.Color:=connection.cxStyAutorizo.Color;
      end
      else
      if (ARecord.Values[grid_datosViewColumn2.Index] = 'LIBERADO')  then
      begin
        AStyle := TcxStyle.Create(nil);
        AStyle.Color:=connection.cxStyLibero.Color;
      end
      else
      if (ARecord.Values[grid_datosViewColumn2.Index] = 'ASIGNADO')  then
      begin
        AStyle := TcxStyle.Create(nil);
        AStyle.Color:=connection.cxStyAsignoCC.Color;
      end
      else
      if (ARecord.Values[grid_datosViewColumn2.Index] = 'COMPRADO')  then
      begin
        AStyle := TcxStyle.Create(nil);
        AStyle.Color:=connection.cxStyCompro.Color;
      end
      else
      if (ARecord.Values[grid_datosViewColumn2.Index] = 'GENERO PR')  then
      begin
        AStyle := TcxStyle.Create(nil);
        AStyle.Color:=connection.cxStyAsignoPR.Color;
      end
      else
      if (ARecord.Values[grid_datosViewColumn2.Index] = 'CANCELADO') or (ARecord.Values[grid_datosViewColumn3.Index] = 'CANCELADO') or
         (ARecord.Values[col_estatus.Index] = 'CANCELADO') or (ARecord.Values[Col_ImgEstado.Index] = 'CANCELADO') or
         (ARecord.Values[Col_correo.Index] = 'CANCELADO') then
      begin
        AStyle := TcxStyle.Create(nil);
        AStyle.Color:=connection.cxStyCancelo.Color;
      end
      else
      if (ARecord.Values[grid_datosViewColumn2.Index] = 'RECHAZADO') or (ARecord.Values[grid_datosViewColumn3.Index] = 'RECHAZADO') or
         (ARecord.Values[Col_estatus.Index] = 'RECHAZADO') or (ARecord.Values[Col_ImgEstado.Index] = 'RECHAZADO') or
         (ARecord.Values[Col_correo.Index] = 'RECHAZADO')  then
      begin
        AStyle := TcxStyle.Create(nil);
        AStyle.Color:=connection.cxStyRechazo.Color;
      end;
 end;


procedure TfrmValida_ss7.BonotesVal;
begin
  if Connection.qryUBusca.FieldByName('sPuesto').AsString = 'COMPRAS' then
  begin
     btnValida.Enabled:=False;
     btnAutoriza.Enabled:=False;
  end;

  if Connection.qryUBusca.FieldByName('sPuesto').AsString = 'SUPER INTENENDE ABORDO' then
  begin
      btnValida.Enabled:=False;
  end;

  if Connection.qryUBusca.FieldByName('sPuesto').AsString = 'REPRESENTANTE TECNICO T' then
  begin
     btnAutoriza.Enabled:=False;
  end;

end;

procedure TfrmValida_ss7.btnAsignarCCClick(Sender: TObject);
var
  lPoder, lFilaGrid: Boolean;
  iGrid, indice, x: Integer;
  SavePlace: TBookmark;
  zConsulta, zPlanta : tUniQuery;
  lCancela  : boolean;
begin
   cxLista.Items[iIndiceSeleccionado].Selected := True;
   sTipoMaterial := '';
   sFoliosDoctos := '';
   if zqDatos.RecordCount > 0 then
      if grid_DatosView.DataController.GetSelectedCount > 0 then
      begin
          lPoder := True;
      end;

      if lPoder then
      begin
        lRecordChange := False;
        SavePlace := grid_DatosView.DataController.DataSource.DataSet.GetBookmark;

        iGrid     := 0;
        with grid_DatosView.DataController.DataSource.DataSet do
          for iGrid := 0 to grid_DatosView.DataController.GetSelectedCount - 1 do
          begin

            indice := grid_DatosView.DataController.GetSelectedRowIndex(iGrid);
            grid_DatosView.DataController.FocusedRowIndex := indice;

            lCancela := False;
            if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'LIBERADO' then
            begin
                 //Validamos si la MR tiene todos sus materiales el material Group y si la MR tiene la planta.
                 zConsulta := tUniQuery.Create(nil);
                 zConsulta.Connection := connection.Uconnection;
                 AsignarSQL(zConsulta,'validar_requisicion_centroCosto',pUpdate);
                 FiltrarDataSet(zConsulta,'Folio',[grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger]);
                 zConsulta.Open;

                 zPlanta := tUniQuery.Create(nil);
                 zPlanta.Connection := connection.Uconnection;
                 AsignarSQL(zPlanta,'validar_requisicion_planta',pUpdate);
                 FiltrarDataSet(zPlanta,'Folio',[grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger]);
                 zPlanta.Open;

                 if (zConsulta.RecordCount > 0) and (zPlanta.RecordCount > 0) then
                 begin
                    messageDLg('No se puede Asignar CC, MR sin planta asignada y existen materiales sin Centro de Costo asignado!',mtInformation,[mbOk],0);
                    lCancela := True;
                 end
                 else
                 if zConsulta.RecordCount > 0 then
                 begin
                    messageDLg('No se puede Asignar CC, existen materiales sin Centro de Costo asignado!',mtInformation,[mbOk],0);
                    lCancela := True;
                 end
                 else
                 if zPlanta.RecordCount > 0 then
                 begin
                    messageDLg('No se puede Asignar CC, MR sin planta asignada!',mtInformation,[mbOk],0);
                    lCancela := True;
                 end;

                 zConsulta.Destroy;
                 zPlanta.Destroy;

                 if lCancela = False then
                 begin
                     lRecordChange := True;

                     if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1) then
                         procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'AsignoCC',1, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );

                     //Procedimiento para concatenar Tipo de Material y Folios documentos
                     ConcatenaTipoFolios(iGrid);

                     kardex_almacen('Asignado '+cxLista.Items[cxLista.ItemIndex].Caption+' No. [' + grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString + '].', 'Otros Movimientos');
                 end;
             end
            else
            begin
               MessageDlg('No de puede realizar el proceso: '+#13+' -> '+cxLista.Items[cxLista.ItemIndex].Caption+' en Estatus '+grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString, mtInformation, [mbOk], 0);
               exit;
            end;

          end;
          grid_DatosView.DataController.ClearSelection;

          if lRecordChange then
          begin
             try
               SavePlace2 := grid_DatosView.DataController.DataSource.DataSet.GetBookmark;
               zqDatos.Refresh;
               try
                   Grid_DatosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace2);
               Except
                   Grid_DatosView.DataController.DataSource.DataSet.FreeBookmark(SavePlace2);
               end;
               Except
             end;

             if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
             begin
                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
                    EnviaCorreoAvanzado('REQUISICION', 'ASIGNAR', sTipoMaterial,'', 'ASIGNADA',sFoliosDoctos);
             end
          end;
      end;
end;

procedure TfrmValida_ss7.btnAutorizaClick(Sender: TObject);
var
  lPoder, lFilaGrid, lNotifica: Boolean;
  iGrid, indice,x: Integer;
  SavePlace: TBookmark;
  zValida1,zDatos1, zMontoValida: tUniquery;
begin
   cxLista.Items[iIndiceSeleccionado].Selected := True;
   sTipoMaterial := '';
   sFoliosDoctos := '';
   sUsuarioReq:='';

   if zqDatos.RecordCount > 0 then
      if grid_DatosView.DataController.GetSelectedCount > 0 then
      begin
          lPoder := True;
      end;
      //Asignar compradro desde autorizar orden de compra.
      if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1) and (temE.FieldByName('FK_Titulo').AsString = 'CMMI' ) then
      begin
          if global_frmActivo = 'Si' then
          begin
            Application.CreateForm(TFrmModal, FrmModal);
            frmModal.cxPageModal.ActivePage:=frmModal.cxTabFirma;
            frmModal.cxPageModal.HideTabs:=True;
            FrmModal.show;
            exit;
          end;
      end;

      if lPoder then
      begin
        lRecordChange := False;

        SavePlace := grid_DatosView.DataController.DataSource.DataSet.GetBookmark;
        iGrid     := 0;
        with grid_DatosView.DataController.DataSource.DataSet do
          for iGrid := 0 to grid_DatosView.DataController.GetSelectedCount - 1 do
          begin
             indice := grid_DatosView.DataController.GetSelectedRowIndex(iGrid);
             grid_DatosView.DataController.FocusedRowIndex := indice;

             if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'VALIDADO' then
             begin
                 lRecordChange := True;

                 if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1) then
                     procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'Valida',1, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );

                 if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2) then
                 begin
                    if (temE.FieldByName('FK_Titulo').AsString = 'CMMI') then
                      begin
                        zMontoValida := TUniQuery.Create(nil);
                        AsignarSQL(zMontoValida,'autorizaciones_VALIDA_monto',pUpdate);
                        FiltrarDataSet(zMontoValida,'Valor,Tipo,Page,Grupo',[
                                        grid_DatosView.DataController.DataSet.FieldByName('dMontoMN').AsString,
                                        'Compras','AUTORIZAR',global_grupo]);
                        zMontoValida.Open;

                        if zMontoValida.RecordCount > 0 then
                          procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_pedidos', 'Valida',2, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 )
                        else
                        begin
                          MessageDlg('Permiso denegado para realizar la autorización de O.C., su monto esta fuera del Rango Asignado.', mtWarning,[mbOk],0);
                          exit
                        end;
                      end
                      else
                        procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_pedidos', 'Valida',2, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );
                 end;

                 if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 3) then
                    procAutorizaDatosValidaAutoriza(global_contrato, 'alm_inspeccion_material', 'Valida',3, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7);

                 if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4) then
                 begin
                    procAutorizaDatosValidaAutoriza(global_contrato, 'almacen_entrada', 'Valida',4, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7);
                    if (temE.FieldByName('FK_Titulo').AsString = 'CMMI') then begin
                      ImprimeDatosPrepare('frxDBEntradas', False, zqDatos);
                      connection.ExportaPDF.ShowProgress := False;
                      connection.ExportaPDF.ShowDialog   := False;
                      connection.ExportaPDF.FileName := zqDatos.FieldByName('Folio').AsString + '.pdf';
                      DirPDF := zqDatos.FieldByName('Folio').asString+'.pdf';
                      rDiarioValida.Export(connection.ExportaPDF);
                    end;
                 end;
                 if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5) then
                 begin
                    procAutorizaDatosValidaAutoriza(global_contrato, 'almacen_salida', 'Valida',5, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );
                     if (temE.FieldByName('FK_Titulo').AsString = 'CMMI') then begin
                       ImprimeDatosPrepare('frxDBEntrada', False, zqDatos);
                       connection.ExportaPDF.ShowProgress := False;
                       connection.ExportaPDF.ShowDialog   := False;
                       connection.ExportaPDF.FileName := zqDatos.FieldByName('Folio').AsString + '.pdf';
                       DirPDF := zqDatos.FieldByName('Folio').asString+'.pdf';
                       rDiarioValida.Export(connection.ExportaPDF);
                     end;
                 end;
                 if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6) then
                    procAutorizaDatosValidaAutoriza(global_contrato, 'alm_aviso_embarque', 'Valida',6, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );

                 if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 7) then
                    procAutorizaDatosValidaAutoriza(global_contrato, 'ordenesdetrabajo', 'Valida', 7, 0, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString, frmValida_ss7 );

                 if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 8) then
                 begin
                    if (temE.FieldByName('FK_Titulo').AsString = 'CMMI') then
                      begin
                        zMontoValida := TUniQuery.Create(nil);
                        AsignarSQL(zMontoValida,'autorizaciones_VALIDA_monto',pUpdate);
                        FiltrarDataSet(zMontoValida,'Valor,Tipo,Page,Grupo',[
                                        grid_DatosView.DataController.DataSet.FieldByName('dMontos').AsString,
                                        'SAP','AUTORIZAR',global_grupo]);
                        zMontoValida.Open;

                        if zMontoValida.RecordCount > 0 then
                          procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_solicitud_aprobpago', 'Valida',8, 0, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString, frmValida_ss7 )
                        else
                        begin
                          MessageDlg('Permiso denegado para realizar la autorización de S.A.P., su monto esta fuera del Rango Asignado.', mtWarning,[mbOk],0);
                          exit
                        end;
                      end
                      else
                        procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_solicitud_aprobpago', 'Valida',8, 0, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString, frmValida_ss7 );
                 end;

                 if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 9) then
                    procAutorizaDatosValidaAutoriza(global_contrato, 'almacen_entrada', 'Valida',9, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );

                 if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 10) then
                    procAutorizaDatosValidaAutoriza(global_contrato, 'almacen_salida', 'Valida',10, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );

                 if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 11) then
                 begin
                    procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_solicitud', 'Valida',11, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );
                    if (temE.FieldByName('FK_Titulo').AsString = 'CMMI') then begin
                      sCC := zqDatos.FieldByName('sNumeroOrdenCentroC').AsString;
                      ImprimeDatosPrepare('frxSolicitudes', False, zqDatos);
                      connection.ExportaPDF.ShowProgress := False;
                      connection.ExportaPDF.ShowDialog   := False;
                      connection.ExportaPDF.FileName := zqDatos.FieldByName('Folio').AsString + '.pdf';
                      DirPDF := zqDatos.FieldByName('Folio').asString+'.pdf';
                      rDiarioValida.Export(connection.ExportaPDF);
                    end;
                 end;
                 //Procedimiento para concatenar Tipo de Material y Folios documentos
                 ConcatenaTipoFolios(iGrid);

                 kardex_almacen('Autoriza '+cxLista.Items[cxLista.ItemIndex].Caption+' No. [' + grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString + '].', 'Otros Movimientos');
             end
             else
             begin
               MessageDlg('No de puede realizar el proceso: '+#13+' -> '+cxLista.Items[cxLista.ItemIndex].Caption+' en Estatus de '+grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString, mtInformation, [mbOk], 0);
               exit;
            end;
          end;

          if lRecordChange then
          begin
             zqDatos.Refresh;
             try
                 Grid_DatosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace2);
             Except
                 Grid_DatosView.DataController.DataSource.DataSet.FreeBookmark(SavePlace2);
             end;

             lNotifica := True;
             //Esto solo aplica cuando los materiales no requieren inspección de calidad
             if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
                 if UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'AUTORIZADO' then
                 begin

                    If MessageDlg('Requiere inspección de QA M.R. No. '+grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString+'?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                       lNotifica := False;
                 end;


             if lNotifica then
             begin
                 grid_DatosView.DataController.ClearSelection;
                 lContinua := True;
                 if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
                 begin
                     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
                        EnviaCorreoAvanzado('REQUISICION', 'AUTORIZAR', sTipoMaterial, '', 'AUTORIZADA',sFoliosDoctos);

                     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2 then
                        EnviaCorreoAvanzado('ORDEN_COMPRA', 'AUTORIZAR', sTipoMaterial,'', 'AUTORIZADA',sFoliosDoctos);

                     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 3 then
                        EnviaCorreoAvanzado('RIM', 'AUTORIZAR', sTipoMaterial,'', 'AUTORIZADO',sFoliosDoctos);

                     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4 then
                        EnviaCorreoAvanzado('ENTRADAS', 'AUTORIZAR', sTipoMaterial,'', 'AUTORIZADA',sFoliosDoctos);

                     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5 then
                        EnviaCorreoAvanzado('SALIDAS', 'AUTORIZAR', sTipoMaterial,'', 'AUTORIZADA',sFoliosDoctos);

                     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6 then
                        EnviaCorreoAvanzado('AVISO_EMBARQUE', 'AUTORIZAR', sTipoMaterial,'', 'AUTORIZADO',sFoliosDoctos);

                     lContinua := False;
                 end;

                 if lContinua then
                 begin
                     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
                        EnviaCorreo('REQUISICION', '', '', '',sFoliosDoctos);

                     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2 then
                        EnviaCorreo('ORDEN_COMPRA', 'AUTORIZAR', sTipoMaterial, '',sFoliosDoctos);

                     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 3 then
                        EnviaCorreo('RIM', 'AUTORIZAR', sTipoMaterial, '',sFoliosDoctos);

                     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4 then
                        EnviaCorreo('ENTRADAS', 'AUTORIZAR', sTipoMaterial, '',sFoliosDoctos);

                     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5 then
                        EnviaCorreo('SALIDAS', 'AUTORIZAR', sTipoMaterial, '',sFoliosDoctos);

                     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6 then
                        EnviaCorreo('AVISO_EMBARQUE', 'AUTORIZAR', sTipoMaterial, '',sFoliosDoctos);

                     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 7 then
                        EnviaCorreo('PRESUPUESTO', '', '', '',sFoliosDoctos);

                     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 8 then
                        EnviaCorreo('SAP', '', '', '',sFoliosDoctos);

                     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 9 then
                        EnviaCorreo('RECEPCION', 'AUTORIZAR', sTipoMaterial, '',sFoliosDoctos);

                     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 10 then
                        EnviaCorreo('DESEMBARQUE', 'AUTORIZAR', sTipoMaterial, '',sFoliosDoctos);

                      if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 11 then
                        EnviaCorreo('SOLICITUDES', 'AUTORIZAR', sTipoMaterial, '',sFoliosDoctos);

              end;
             end
             else
             begin
                //En caso de no requerir insleccion de calidad se liberan automaticamente y pasa a centro de costo
                SavePlace := grid_DatosView.DataController.DataSource.DataSet.GetBookmark;
                iGrid     := 0;
                with grid_DatosView.DataController.DataSource.DataSet do
                  for iGrid := 0 to grid_DatosView.DataController.GetSelectedCount - 1 do
                  begin

                     indice := grid_DatosView.DataController.GetSelectedRowIndex(iGrid);
                     grid_DatosView.DataController.FocusedRowIndex := indice;

                     if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'AUTORIZADO' then
                     begin
                         lRecordChange := True;

                         if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1) then
                             procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'Libera',1, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );

                         //Procedimiento para concatenar Tipo de Material y Folios documentos
                         ConcatenaTipoFolios(iGrid);

                         kardex_almacen('Autoriza '+cxLista.Items[cxLista.ItemIndex].Caption+' No. [' + grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString + '].', 'Otros Movimientos');
                     end;
                  end;
                  grid_DatosView.DataController.ClearSelection;

                  if lRecordChange then
                  begin
                     try
                       SavePlace := grid_DatosView.DataController.DataSource.DataSet.GetBookmark;
                       zqDatos.Refresh;
                       try
                           Grid_DatosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
                       Except
                           Grid_DatosView.DataController.DataSource.DataSet.FreeBookmark(SavePlace);
                       end;
                       Except
                     end;

                     if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
                     begin
                         if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
                            EnviaCorreoAvanzado('REQUISICION', 'LIBERAR', sTipoMaterial,'', 'LIBERADA',sFoliosDoctos);
                     end
                  end;
             end;
          end;
      end;
end;

procedure TfrmValida_ss7.btncancelarClick(Sender: TObject);
var
  iGrid, indice,x: Integer;
begin
  cxLista.Items[iIndiceSeleccionado].Selected := True;
  sTipoMaterial := '';
  sFoliosDoctos := '';
  if zqDatos.RecordCount > 0 then
  begin
      if grid_DatosView.DataController.GetSelectedCount > 1 then
      begin
         messageDLG('No es posible Rechazar múltiples registos!',mtInformation,[mbOk],0);
         exit;
      end;

      if grid_DatosView.DataController.GetSelectedCount > 0 then
      begin
         if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
         begin

            if  (UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'VALIDADO') OR (UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'PENDIENTE')
                OR (UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'RECHAZADO') OR (UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'CANCELADO')
                OR (UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'LIBERADO') OR (UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'ASIGNADO')
                OR (UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'COMPRADO') then
                  messageDLG('No se puede Cancelar con Estatus '+UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString), mtInformation, [mbOk], 0)
            else
            if not MostrarFormChild('FrmComentarios',global_dxBarManagerPrincipal) Then
            begin
                 global_frmActivo:='CANCELADO';
                 Application.CreateForm(TFrmComentarios, FrmComentarios);
                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
                 begin
                     FrmComentarios.sParamTabla:='anexo_requisicion';
                 end
                 else
                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2 then
                 begin
                     FrmComentarios.sParamTabla:='anexo_pedidos';
                 end
                 else
                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 8 then
                 begin
                     FrmComentarios.sParamTabla:='anexo_solicitud_aprobpago';
                 end;
                 FrmComentarios.showModal;
             end;

         end
         else
           if not MostrarFormChild('FrmComentarios',global_dxBarManagerPrincipal) Then
           begin
               global_frmActivo:='CANCELADO';
               Application.CreateForm(TFrmComentarios, FrmComentarios);
               if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
               begin
                    FrmComentarios.sParamTabla:='anexo_requisicion';
               end
               else
               if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2 then
               begin
                  FrmComentarios.sParamTabla:='anexo_pedidos';
               end
               else
               if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 8 then
               begin
                  FrmComentarios.sParamTabla:='anexo_solicitud_aprobpago';
               end;
              FrmComentarios.showModal;
           end;
      end;
  end;
end;

procedure TfrmValida_ss7.btnComprarClick(Sender: TObject);
var
  lPoder, lFilaGrid: Boolean;
  iGrid, indice, x: Integer;
  SavePlace: TBookmark;
begin
   cxLista.Items[iIndiceSeleccionado].Selected := True;
   sTipoMaterial := '';
   sFoliosDoctos := '';
   if zqDatos.RecordCount > 0 then
      if grid_DatosView.DataController.GetSelectedCount > 0 then
      begin
          lPoder := True;
      end;

      if lPoder then
      begin
        lRecordChange := False;
        SavePlace := grid_DatosView.DataController.DataSource.DataSet.GetBookmark;
        iGrid     := 0;

        with grid_DatosView.DataController.DataSource.DataSet do
          for iGrid := 0 to grid_DatosView.DataController.GetSelectedCount - 1 do
          begin

            indice := grid_DatosView.DataController.GetSelectedRowIndex(iGrid);
            grid_DatosView.DataController.FocusedRowIndex := indice;

            if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'GENERO PR' then
            begin
                 lRecordChange := True;

                 if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1) then
                    procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'Comprado',1, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida_ss7 );

                 //Procedimiento para concatenar Tipo de Material y Folios documentos
                 ConcatenaTipoFolios(iGrid);

                 kardex_almacen('Autoriza '+cxLista.Items[cxLista.ItemIndex].Caption+' No. [' + grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString + '].', 'Otros Movimientos');
             end
            else
            begin
               MessageDlg('No de puede realizar el proceso: '+#13+' -> '+cxLista.Items[cxLista.ItemIndex].Caption+' en Estatus '+grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString, mtInformation, [mbOk], 0);
               exit;
            end;

          end;
          grid_DatosView.DataController.ClearSelection;

          if lRecordChange then
          begin
             try
               SavePlace2 := grid_DatosView.DataController.DataSource.DataSet.GetBookmark;
               zqDatos.Refresh;
               try
                   Grid_DatosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace2);
               Except
                   Grid_DatosView.DataController.DataSource.DataSet.FreeBookmark(SavePlace2);
               end;
               Except
             end;

             if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
             begin
                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
                    EnviaCorreoAvanzado('REQUISICION', 'COMPRAR', sTipoMaterial,'', 'GENERO P.O.',sFoliosDoctos);
             end
          end;
      end;
end;



procedure TfrmValida_ss7.cxListaClick(Sender: TObject);
begin
   grid_datosView.DataController.Groups.FullExpand;
   if cxLista.ItemIndex = -1 then
   begin
      cxLista.Items[iIndiceSeleccionado].Selected := True;
      exit;
   end;
   iIndiceSeleccionado := cxLista.ItemIndex;
   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
   begin
      {$Region 'Requisición de Materiales'}

      if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
      begin

          grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
          grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
          grid_datosView.Columns[2].DataBinding.FieldName:='UsuarioReq';
          grid_datosView.Columns[3].DataBinding.FieldName:='NombrePlanta';
          grid_datosView.Columns[4].DataBinding.FieldName:='Solicitado';
          grid_datosView.Columns[5].DataBinding.FieldName:='UsuarioValido_Vista';
          grid_datosView.Columns[6].DataBinding.FieldName:='UsuarioAutorizo_Vista';
          grid_datosView.Columns[7].DataBinding.FieldName:='UsuarioLibero_vista';
          grid_datosView.Columns[8].DataBinding.FieldName:='UsuarioAsignoCC_Vista';
          grid_datosView.Columns[9].DataBinding.FieldName:='UsuarioGeneroPR_Vista';
          grid_datosView.Columns[10].DataBinding.FieldName:='UsuarioRechazo_Vista';
          grid_datosView.Columns[11].DataBinding.FieldName:='UsuarioCancelo_Vista';
          grid_datosView.Columns[12].DataBinding.FieldName:='sStatus';
          grid_datosView.Columns[13].DataBinding.FieldName:='Revision';

          //Captions
          grid_datosView.Columns[0].Caption :='Código';
          grid_datosView.Columns[1].Caption :='Proyecto';
          grid_datosView.Columns[2].Caption :='Usuario';
          grid_datosView.Columns[3].Caption :='Planta';
          grid_datosView.Columns[4].Caption :='Fecha Requisición';
          grid_datosView.Columns[5].Caption :='Usuario Validó';
          grid_datosView.Columns[6].Caption :='Usuario Autorizó';
          grid_datosView.Columns[7].Caption :='Usuario Liberó';
          grid_datosView.Columns[8].Caption :='Usuario Asignó CC';
          grid_datosView.Columns[8].HeaderHint :='Asignación de Centros de Costos';
          grid_datosView.Columns[9].Caption :='Usuario Generó PR';
          grid_datosView.Columns[9].HeaderHint :='Asignación de Purchase Requisition (Solicitud de Compra)';
          grid_datosView.Columns[10].Caption :='Usuario Rechazó';
          grid_datosView.Columns[11].Caption:='Usuario Canceló';
          grid_datosView.Columns[12].Caption:='Estatus';
          grid_datosView.Columns[13].Caption:='Revisión';

          panel1.Visible:=true;
          panel2.Visible:=false;
          panel3.Visible:=false;
          panel5.Visible:=false;

          MuestraColumnas(0,13,True);
          MuestraColumnas(14,14,False);

          btnValida.Enabled:=false;
          btnAutoriza.Enabled:=false;
          btnPR.Enabled:=false;
          btnComprar.Enabled:=false;
          btnAsignarCC.Enabled:=false;
          btnLiberar.Enabled:=false;
          btnRechazar.Enabled:=false;
          btncancelar.Enabled:=false;
          btnRechazar.Enabled := False;

          if global_grupo = 'LIDER_AVANZADO' then begin
            btnValida.Enabled:=true;
            btnAutoriza.Enabled:=true;
            btncancelar.Enabled:=true;
            //btnRechazar.Enabled:=true;

//            if ((global_usuario = 'ctadeo') and (grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString = 'SUBTEC')) OR
//            ((global_usuario = 'jabarucho') and (grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString = 'SUBTEC')) OR
//            ((global_usuario = 'carlos') and (grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString = 'SUBTEC')) then
//              btnRechazar.Visible := TRUE
//            ELSE
//              btnRechazar.Enabled:= false;

          end
          else
          if global_grupo = 'LIDER_MR' then begin
            btnAutoriza.Enabled:=true;
            btncancelar.Enabled:=true;
            btnRechazar.Visible := False;
          end
          else
          if global_grupo = 'CALIDAD' then begin
            btnValida.Enabled:=true;
            btnLiberar.Enabled:=true;
            btnRechazar.Enabled:=true;
            btnRechazar.Visible := True;
          end
          else
          if global_grupo = 'CENTRO_COSTO' then begin
            btnAsignarCC.Enabled:=true;
            btnRechazar.Enabled:=true;
            btnRechazar.Visible := True;
          end
          else
          if global_grupo = 'COMPRAS' then begin
             if (global_usuario = 'SS7A1067') or (global_usuario = 'dolores') then
               btnValida.Enabled:=true;
             btnComprar.Enabled:=true;
             btnRechazar.Enabled:=true;
             btnPR.Enabled:=true;
             btnRechazar.Visible := True;
          end
          else
          begin
            btnValida.Enabled:=true;
            btnRechazar.Enabled:=true;
            btnRechazar.Visible := False;
          end;
          procCargaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'Libera',1, frmValida_ss7, zqDatos );
      end
      else
      if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
      begin
          grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
          grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
          grid_datosView.Columns[2].DataBinding.FieldName:='CentroCosto';
          grid_datosView.Columns[3].DataBinding.FieldName:='Solicitado';
          grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido';
          grid_datosView.Columns[5].DataBinding.FieldName:='FechaValido_A';
          grid_datosView.Columns[6].DataBinding.FieldName:='UsuarioRechazo';
          grid_datosView.Columns[7].DataBinding.FieldName:='FechaRechazo_A';
          grid_datosView.Columns[8].DataBinding.FieldName:='UsuarioCancelo';
          grid_datosView.Columns[9].DataBinding.FieldName:='FechaCancelo_A';
          grid_datosView.Columns[10].DataBinding.FieldName:='sStatus';

          //Captions
          grid_datosView.Columns[0].Caption:='Código';
          grid_datosView.Columns[1].Caption:='Proyecto';
          grid_datosView.Columns[2].Caption:='Centro de Costo';
          grid_datosView.Columns[3].Caption:='Fecha Requisición';
          grid_datosView.Columns[4].Caption:='Usuario Validó';
          grid_datosView.Columns[5].Caption:='Fecha Validó';
          grid_datosView.Columns[6].Caption:='Usuario Rechazó';
          grid_datosView.Columns[7].Caption:='Fecha Rechazó';
          grid_datosView.Columns[8].Caption:='Usuario Canceló';
          grid_datosView.Columns[9].Caption:='Fecha Canceló';
          grid_datosView.Columns[10].Caption:='Estatus';

          panel1.Visible:=false;
          panel2.Visible:=false;
          panel3.Visible:=false;
          panel5.Visible:=true;

          MuestraColumnas(0,10,True);
          MuestraColumnas(11,14,False);

          procCargaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'Valida',1, frmValida_ss7, zqDatos );
      end
      else
       begin
          grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
          grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
          grid_datosView.Columns[2].DataBinding.FieldName:='CentroCosto';
          grid_datosView.Columns[3].DataBinding.FieldName:='Solicitado';
          grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido_Vista';
          grid_datosView.Columns[5].DataBinding.FieldName:='UsuarioRechazo_Vista';
          grid_datosView.Columns[6].DataBinding.FieldName:='UsuarioCancelo_Vista';
          grid_datosView.Columns[7].DataBinding.FieldName:='sStatus';

          //Captions
          grid_datosView.Columns[0].Caption:='Código';
          grid_datosView.Columns[1].Caption:='Proyecto';
          grid_datosView.Columns[2].Caption:='Centro de Costo';
          grid_datosView.Columns[3].Caption:='Fecha Requisición';
          grid_datosView.Columns[4].Caption:='Usuario Validó';
          grid_datosView.Columns[5].Caption:='Usuario Rechazó';
          grid_datosView.Columns[6].Caption:='Usuario Canceló';
          grid_datosView.Columns[7].Caption:='Estatus';

          panel1.Visible:=false;
          panel2.Visible:=false;
          panel3.Visible:=false;
          panel5.Visible:=true;

          MuestraColumnas(0,7,True);
          MuestraColumnas(8,14,False);

          procCargaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'Valida',1, frmValida_ss7, zqDatos );
      end;
      {$endregion}
   end;

   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2 then
   begin
      {$Region 'Ordenes de Compra'}
      if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
      begin
          grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
          grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
          grid_datosView.Columns[2].DataBinding.FieldName:='UsuarioReq';
          grid_datosView.Columns[3].DataBinding.FieldName:='NombrePlanta';
          grid_datosView.Columns[4].DataBinding.FieldName:='Solicitado';
          grid_datosView.Columns[5].DataBinding.FieldName:='UsuarioValido_vista';
          grid_datosView.Columns[6].DataBinding.FieldName:='UsuarioCancelo_vista';
          grid_datosView.Columns[7].DataBinding.FieldName:='sStatus';

          //Captions
          grid_datosView.Columns[0].Caption:='Código';
          grid_datosView.Columns[1].Caption:='Proyecto';
          grid_datosView.Columns[2].Caption:='Usuario';
          grid_datosView.Columns[3].Caption:='Planta';
          grid_datosView.Columns[4].Caption:='Fecha Compra';
          grid_datosView.Columns[5].Caption:='Usuario Validó';
          grid_datosView.Columns[6].Caption:='Usuario Canceló';
          grid_datosView.Columns[7].Caption:='Estatus';

          MuestraColumnas(0,7,True);
          MuestraColumnas(8,14,False);

          panel1.Visible:=false;
          panel2.Visible:=false;
          panel3.Visible:=true;
          panel5.Visible:=false;

          btnValida.Enabled:=true;
          btnAutoriza.Enabled:=true;
          btncancelar.Enabled:=False;
      end
      else
      if temE.FieldByName('FK_Titulo').AsString = 'CMMI'  then
      begin
          grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
          grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
          grid_datosView.Columns[2].DataBinding.FieldName:='Solicitado';
          grid_datosView.Columns[3].DataBinding.FieldName:='UsuarioValido';
          grid_datosView.Columns[4].DataBinding.FieldName:='FechaValido_A';
          grid_datosView.Columns[5].DataBinding.FieldName:='UsuarioCancelo';
          grid_datosView.Columns[6].DataBinding.FieldName:='FechaCancelo_A';
          grid_datosView.Columns[7].DataBinding.FieldName:='sStatus';
          grid_datosView.Columns[8].DataBinding.FieldName :='dMontoMN';
          grid_datosView.Columns[9].DataBinding.FieldName := 'Ahorro' ;

          //Captions
          grid_datosView.Columns[0].Caption:='Código';
          grid_datosView.Columns[1].Caption:='Proyecto';
          grid_datosView.Columns[2].Caption:='Fecha Compra';
          grid_datosView.Columns[3].Caption:='Usuario Validó';
          grid_datosView.Columns[4].Caption:='Fecha Validó';
          grid_datosView.Columns[5].Caption:='Usuario Canceló';
          grid_datosView.Columns[6].Caption:='Fecha Canceló';
          grid_datosView.Columns[7].Caption:='Estatus';
          grid_datosView.Columns[8].Caption := 'Total O.C';
          grid_datosView.Columns[9].Caption := 'Ahorro';
          grid_datosView.Columns[8].PropertiesClassName := 'TcxCurrencyEditProperties';
          grid_datosView.Columns[9].PropertiesClassName := 'TcxCurrencyEditProperties';

          MuestraColumnas(0,9,True);
          MuestraColumnas(10,14,False);

          panel1.Visible:=false;
          panel2.Visible:=false;
          panel3.Visible:=true;
          panel5.Visible:=false;

          btnValida.Enabled:=true;
          btnAutoriza.Enabled:=true;
          btncancelar.Enabled:=true;
      end
      else
      begin
          grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
          grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
          grid_datosView.Columns[2].DataBinding.FieldName:='Solicitado';
          grid_datosView.Columns[3].DataBinding.FieldName:='UsuarioValido_vista';
          grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioCancelo_vista';
          grid_datosView.Columns[5].DataBinding.FieldName:='sStatus';
          //Captions
          grid_datosView.Columns[0].Caption:='Código';
          grid_datosView.Columns[1].Caption:='Proyecto';
          grid_datosView.Columns[2].Caption:='Fecha Compra';
          grid_datosView.Columns[3].Caption:='Usuario Validó';
          grid_datosView.Columns[4].Caption:='Usuario Canceló';
          grid_datosView.Columns[5].Caption:='Estatus';

          MuestraColumnas(0,5,True);
          MuestraColumnas(6,14,False);

          panel1.Visible:=false;
          panel2.Visible:=false;
          panel3.Visible:=true;
          panel5.Visible:=false;

          btnValida.Enabled:=true;
          btnAutoriza.Enabled:=true;
          btncancelar.Enabled:=true;
      end;
      procCargaDatosValidaAutoriza(global_contrato, 'anexo_pedidos', 'Valida',2, frmValida_ss7, zqDatos );
      {$Endregion}
   end;

   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 3 then
   begin
      {$Region 'RIMs'}
      grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
      grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
      grid_datosView.Columns[2].DataBinding.FieldName:='UsuarioReq';
      grid_datosView.Columns[3].DataBinding.FieldName:='NombrePlanta';
      grid_datosView.Columns[4].DataBinding.FieldName:='Entrega';
      grid_datosView.Columns[5].DataBinding.FieldName:='UsuarioValido_vista';
      grid_datosView.Columns[6].DataBinding.FieldName:='sStatus';

      //Captions
      grid_datosView.Columns[0].Caption:='Código';
      grid_datosView.Columns[1].Caption:='Proyecto';
      grid_datosView.Columns[2].Caption:='Usuario';
      grid_datosView.Columns[3].Caption:='Planta';
      grid_datosView.Columns[4].Caption:='Fecha RIM';
      grid_datosView.Columns[5].Caption:='Usuario Validó';
      grid_datosView.Columns[6].Caption:='Estatus';

      panel1.Visible:=false;
      panel2.Visible:=true;
      panel3.Visible:=false;
      panel5.Visible:=false;
      btnValida.Enabled:=true;
      btnAutoriza.Enabled:=true;
      if temE.FieldByName('FK_Titulo').AsString = 'CMMI'  then
      begin
      btnValida2.Visible := False;
      btnAutoriza2.Visible := True;
      btnValida2.Visible := True;
      end;
      MuestraColumnas(0,6,True);
      MuestraColumnas(7,14,False);

      procCargaDatosValidaAutoriza(global_contrato, 'alm_inspeccion_material', 'Valida',3, frmValida_ss7, zqDatos );
      {$EndRegion}
   end;

   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4 then
   begin
      {$Region 'Entradas de materiales'}
      grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
      grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
      grid_datosView.Columns[2].DataBinding.FieldName:='UsuarioReq';
      grid_datosView.Columns[3].DataBinding.FieldName:='Entrega';
      grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido_vista';
      grid_datosView.Columns[5].DataBinding.FieldName:='sStatus';

      //Captions
      grid_datosView.Columns[0].Caption:='Código';
      grid_datosView.Columns[1].Caption:='Proyecto';
      grid_datosView.Columns[2].Caption:='Usuario';
      grid_datosView.Columns[3].Caption:='Fecha Entrada';
      grid_datosView.Columns[4].Caption:='Usuario Validó';
      grid_datosView.Columns[5].Caption:='Estatus';

      panel1.Visible:=false;
      panel2.Visible:=true;
      panel3.Visible:=false;
      panel5.Visible:=false;
      if temE.FieldByName('FK_Titulo').AsString = 'CMMI'  then
      btnAutoriza2.Visible := fALSE;
      btnValida.Enabled:=true;
      btnAutoriza.Enabled:=true;


      MuestraColumnas(0,5,True);
      MuestraColumnas(6,14,False);

      procCargaDatosValidaAutoriza(global_contrato, 'almacen_entrada', 'Valida',4, frmValida_ss7, zqDatos );
      {$EndRegion}
   end;

   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5 then
   begin
      {$Region 'Salida de Material'}
      grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
      grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
      grid_datosView.Columns[2].DataBinding.FieldName:='UsuarioReq';
      grid_datosView.Columns[3].DataBinding.FieldName:='Entrega';
      grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido_vista';
      grid_datosView.Columns[5].DataBinding.FieldName:='sStatus';

      //Captions
      grid_datosView.Columns[0].Caption:='Código';
      grid_datosView.Columns[1].Caption:='Proyecto';
      grid_datosView.Columns[2].Caption:='Usuario';
      grid_datosView.Columns[3].Caption:='Fecha Salida';
      grid_datosView.Columns[4].Caption:='Usuario Validó';
      grid_datosView.Columns[5].Caption:='Estatus';

      panel1.Visible:=false;
      panel2.Visible:=true;
      panel3.Visible:=false;
      panel5.Visible:=false;
      btnValida.Enabled:=true;
      btnAutoriza.Enabled:=true;
      if temE.FieldByName('FK_Titulo').AsString = 'CMMI'  then
      begin
      btnValida2.Visible := False;
      btnAutoriza2.Visible := True;
      btnValida2.Visible := True;
      end;
      MuestraColumnas(0,5,True);
      MuestraColumnas(6,14,False);

      procCargaDatosValidaAutoriza(global_contrato, 'almacen_salida', 'Valida',5, frmValida_ss7, zqDatos );
      {$EndRegion}
   end;

   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6 then
   begin
      {$Region 'Aviso de Embarque'}
      grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
      grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
      grid_datosView.Columns[2].DataBinding.FieldName:='UsuarioReq';
      grid_datosView.Columns[3].DataBinding.FieldName:='Entrega';
      grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido_vista';
      grid_datosView.Columns[5].DataBinding.FieldName:='sStatus';

       //Captions
      grid_datosView.Columns[0].Caption:='Código';
      grid_datosView.Columns[1].Caption:='Proyecto';
      grid_datosView.Columns[2].Caption:='Usuario';
      grid_datosView.Columns[3].Caption:='Fecha Aviso Embarque';
      grid_datosView.Columns[4].Caption:='Usuario Validó';
      grid_datosView.Columns[5].Caption:='Estatus';

      panel1.Visible:=false;
      panel2.Visible:=true;
      panel3.Visible:=false;
      panel5.Visible:=false;
      btnValida.Enabled:=true;
      btnAutoriza.Enabled:=true;
      if temE.FieldByName('FK_Titulo').AsString = 'CMMI'  then
      begin
      btnValida2.Visible := False;
      btnAutoriza2.Visible := True;
      btnValida2.Visible := True;
      end;

      MuestraColumnas(0,5,True);
      MuestraColumnas(6,14,False);

      procCargaDatosValidaAutoriza(global_contrato, 'alm_aviso_embarque', 'Valida',6, frmValida_ss7, zqDatos );
      {$EndRegion}
   end;

   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 7 then
   begin
      {$Region 'Presupuesto'}
      grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
      grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
      grid_datosView.Columns[3].DataBinding.FieldName:='Entrega';
      grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido_vista';
      grid_datosView.Columns[5].DataBinding.FieldName:='sStatus';

      //Captions
      grid_datosView.Columns[0].Caption:='Código';
      grid_datosView.Columns[1].Caption:='Proyecto';
      grid_datosView.Columns[3].Caption:='Fecha Presupuesto';
      grid_datosView.Columns[4].Caption:='Usuario Validó';
      grid_datosView.Columns[5].Caption:='Estatus';

      panel1.Visible:=false;
      panel2.Visible:=true;
      panel3.Visible:=false;
      panel5.Visible:=false;
      if temE.FieldByName('FK_Titulo').AsString = 'CMMI'  then
      begin
      btnValida2.Visible := False;
      btnAutoriza2.Visible := True;
      btnValida2.Visible := True;
      end;

      MuestraColumnas(0,5,True);
      MuestraColumnas(6,14,False);

      procCargaDatosValidaAutoriza(global_contrato, 'ordenesdetrabajo', 'Valida',7, frmValida_ss7, zqDatos);
      {$EndRegion}
   end;

   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 8 then
   begin
      {$Region 'SAP'}
      grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
      grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
      grid_datosView.Columns[3].DataBinding.FieldName:='Solicitado';
      grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido';
      grid_datosView.Columns[5].DataBinding.FieldName:='FechaValido';
      grid_datosView.Columns[6].DataBinding.FieldName:='UsuarioCancelo';
      grid_datosView.Columns[7].DataBinding.FieldName:='FechaCancelo';
      grid_datosView.Columns[8].DataBinding.FieldName:='Proveedor';
      grid_datosView.Columns[9].DataBinding.FieldName:='dMonto';
      grid_datosView.Columns[10].DataBinding.FieldName:='sStatus';


      //Captions
      grid_datosView.Columns[0].Caption:='Código';
      grid_datosView.Columns[1].Caption:='Proyecto';
      grid_datosView.Columns[3].Caption:='Fecha SAP';
      grid_datosView.Columns[4].Caption:='Usuario Validó';
      grid_datosView.Columns[5].Caption:='Fecha Validó';
      grid_datosView.Columns[6].Caption:='Usuario Canceló';
      grid_datosView.Columns[7].Caption:='Fecha Canceló';
      grid_datosView.Columns[8].Caption:='Proveedor';
      grid_datosView.Columns[9].Caption:='Monto';
      grid_datosView.Columns[10].Caption:='Estatus';
      grid_datosView.Columns[9].PropertiesClassName := 'TcxCurrencyEditProperties';

      panel1.Visible:=false;
      panel2.Visible:=false;
      panel3.Visible:=true;
      panel5.Visible:=false;

      MuestraColumnas(0,10,True);
      MuestraColumnas(11,14,False);

      procCargaDatosValidaAutoriza(global_contrato, 'anexo_solicitud_aprobpago', 'Valida',8, frmValida_ss7, zqDatos);
      {$EndRegion}
   end;

   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 9 then
   begin
      {$Region 'Recepcion'}
      grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
      grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
      grid_datosView.Columns[2].DataBinding.FieldName:='UsuarioReq';
      grid_datosView.Columns[3].DataBinding.FieldName:='Entrega';
      grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido_vista';
      grid_datosView.Columns[5].DataBinding.FieldName:='sStatus';

      //Captions
      grid_datosView.Columns[0].Caption:='Código';
      grid_datosView.Columns[1].Caption:='Proyecto';
      grid_datosView.Columns[2].Caption:='Usuario';
      grid_datosView.Columns[3].Caption:='Fecha Recepción';
      grid_datosView.Columns[4].Caption:='Usuario Validó';
      grid_datosView.Columns[5].Caption:='Estatus';

      panel1.Visible:=false;
      panel2.Visible:=true;
      panel3.Visible:=false;
      panel5.Visible:=false;
      btnValida.Enabled:=true;
      btnAutoriza.Enabled:=true;
      if temE.FieldByName('FK_Titulo').AsString = 'CMMI'  then
      begin
      btnValida2.Visible := False;
      btnAutoriza2.Visible := True;
      btnValida2.Visible := True;
      end;

      MuestraColumnas(0,5,True);
      MuestraColumnas(6,14,False);

      procCargaDatosValidaAutoriza(global_contrato, 'almacen_entrada', 'Valida',9, frmValida_ss7, zqDatos );
      {$EndRegion}
   end;

   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 10 then
   begin
      {$Region 'Desembarque'}
      grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
      grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
      grid_datosView.Columns[2].DataBinding.FieldName:='UsuarioReq';
      grid_datosView.Columns[3].DataBinding.FieldName:='Entrega';
      grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido_vista';
      grid_datosView.Columns[5].DataBinding.FieldName:='sStatus';

      //Captions
      grid_datosView.Columns[0].Caption:='Código';
      grid_datosView.Columns[1].Caption:='Proyecto';
      grid_datosView.Columns[2].Caption:='Usuario';
      grid_datosView.Columns[3].Caption:='Fecha Desembarque';
      grid_datosView.Columns[4].Caption:='Usuario Validó';
      grid_datosView.Columns[5].Caption:='Estatus';

      panel1.Visible:=false;
      panel2.Visible:=true;
      panel3.Visible:=false;
      panel5.Visible:=false;
      btnValida.Enabled:=true;
      btnAutoriza.Enabled:=true;
      if temE.FieldByName('FK_Titulo').AsString = 'CMMI'  then
      begin
      btnValida2.Visible := False;
      btnAutoriza2.Visible := True;
      btnValida2.Visible := True;
      end;

      MuestraColumnas(0,5,True);
      MuestraColumnas(6,14,False);

      procCargaDatosValidaAutoriza(global_contrato, 'almacen_salida', 'Valida',10, frmValida_ss7, zqDatos );
      {$EndRegion}
   end;

   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 11 then
   begin
      {$Region 'Solicitudes'}
      if (temE.FieldByName('FK_Titulo').AsString = 'CMMI')  then
      begin
          grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
          grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
          grid_datosView.Columns[2].DataBinding.FieldName:='CentroCosto';
          grid_datosView.Columns[3].DataBinding.FieldName:='Solicitado';
          grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido';
          grid_datosView.Columns[5].DataBinding.FieldName:='FechaValido_A';
          grid_datosView.Columns[6].DataBinding.FieldName:='sStatus';

          //Captions
          grid_datosView.Columns[0].Caption:='Código';
          grid_datosView.Columns[1].Caption:='Proyecto';
          grid_datosView.Columns[2].Caption:='Centro de Costo';
          grid_datosView.Columns[3].Caption:='Fecha Solicitud';
          grid_datosView.Columns[4].Caption:='Usuario Validó';
          grid_datosView.Columns[5].Caption:='Fecha Validó';
          grid_datosView.Columns[6].Caption:='Estatus';

          panel1.Visible:=false;
          panel2.Visible:=true;
          panel3.Visible:=false;
          panel5.Visible:=false;
          btnValida.Enabled:=true;
          btnAutoriza.Enabled:=true;

          btnValida2.Visible := False;
          btnAutoriza2.Visible := True;
          btnValida2.Visible := True;

          MuestraColumnas(0,6,True);
          MuestraColumnas(7,14,False);
      end;

      if (connection.uContrato.FieldByName('FK_Titulo').AsString = 'SUBSEA 7') then
      begin
          grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
          grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
          grid_datosView.Columns[2].DataBinding.FieldName:='Solicitado';
          grid_datosView.Columns[3].DataBinding.FieldName:='UsuarioValido';
          grid_datosView.Columns[4].DataBinding.FieldName:='FechaValido_A';
          grid_datosView.Columns[5].DataBinding.FieldName:='sStatus';

          //Captions
          grid_datosView.Columns[0].Caption:='Código';
          grid_datosView.Columns[1].Caption:='Proyecto';
          grid_datosView.Columns[2].Caption:='Fecha Solicitud';
          grid_datosView.Columns[3].Caption:='Usuario Validó';
          grid_datosView.Columns[4].Caption:='Fecha Validó';
          grid_datosView.Columns[5].Caption:='Estatus';

          panel1.Visible:=false;
          panel2.Visible:=true;
          panel3.Visible:=false;
          panel5.Visible:=false;
          btnValida.Enabled:=true;
          btnAutoriza.Enabled:=true;

          MuestraColumnas(0,5,True);
          MuestraColumnas(6,14,False);
      end;

      procCargaDatosValidaAutoriza(global_contrato, 'anexo_solicitud', 'Valida',11, frmValida_ss7, zqDatos );

      {$EndRegion}
   end;
   grid_datosView.DataController.Groups.FullExpand;
end;

procedure TfrmValida_ss7.cxRefrescarClick(Sender: TObject);
begin
   SavePlace2 := grid_DatosView.DataController.DataSource.DataSet.GetBookmark;
   zqDatos.Refresh;
   try
       Grid_DatosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace2);
   Except
       Grid_DatosView.DataController.DataSource.DataSet.FreeBookmark(SavePlace2);
   end;
end;

procedure TfrmValida_ss7.cxVisualizarClick(Sender: TObject);
begin
    cxLista.Items[iIndiceSeleccionado].Selected := True;
    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
       ImprimeDatosPrepare('frxDBRequisicion', True, zqDatos);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2 then
       ImprimeDatosPrepare('frxOrdenCompra', True, zqDatos);

     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 3 then
       ImprimeDatosPrepare('frxInspeccion', True, zqDatos);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4 then
       ImprimeDatosPrepare('frxDBEntradas', True, zqDatos);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5 then
       ImprimeDatosPrepare('frxDBEntrada', True, zqDatos);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6 then
       ImprimeDatosPrepare('frxDBAvisoEmbarque', True, zqDatos);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 7 then
       ImprimeDatosPrepare('Db_proyecto', True, zqDatos);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 8 then
       ImprimeDatosPrepare('frxOrdenCompras', True, zqDatos);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 11 then
       ImprimeDatosPrepare('frxSolicitudes', True, zqDatos);
end;

procedure TfrmValida_ss7.ImprimeDatosPrepare(sParamUser :string; lVisualiza :boolean; uniQ_param: tUniQuery);
var
  ArchivoPDF : String;
  i : integer;
  frxDBDatos : TfrxDBDataset;
//  rDiario : tfrxReport;
begin
    if sParamUser = 'frxDBRequisicion' then
    begin
       AsignarSQL(frmRepositorio.reporte,'Reporte_requisicion',pUpdate);
       FiltrarDataSet(frmRepositorio.reporte,'Contrato,Folio',[global_contrato,uniQ_param.FieldByName('iFolio').AsInteger]);
       frmRepositorio.reporte.Open;
    end;

    if sParamUser = 'frxOrdenCompra' then
    begin
       AsignarSQL(frmRepositorio.reporte,'Reporte_OrdenCompra',pUpdate);
       FiltrarDataSet(frmRepositorio.reporte,'Contrato,Folio,IdEmpresa',[global_contrato,uniQ_param.FieldByName('iFolio').AsInteger, connection.ucontrato.FieldByName('IdEmpresa').AsInteger]);
       frmRepositorio.reporte.Open;
    end;

    if sParamUser = 'frxInspeccion' then
    begin
       AsignarSQL(frmRepositorio.reporte,'Reporte_inspeccion',pUpdate);
       FiltrarDataSet(frmRepositorio.reporte,'IdInspeccion', [uniQ_param.FieldByName('iFolio').AsInteger]);
       frmRepositorio.reporte.Open;
    end;


    if sParamUser = 'frxDBEntrada' then   //frmRepositorio.reporte para las salidas [tiene "frxDBEntrada" por alguna razon del destino]
    begin
       AsignarSQL(frmRepositorio.reporte,'reporte_salida_material',pUpdate);
       FiltrarDataSet(frmRepositorio.reporte,'Contrato,Folio',[global_contrato,uniQ_param.FieldValues['iFolio']]);
       frmRepositorio.reporte.Open;
    end;

    if sParamUser = 'frxDBEntradas' then begin //las entradas
       AsignarSQL(frmRepositorio.reporte,'reporte_entrada_material_oc',pUpdate);
       FiltrarDataSet(frmRepositorio.reporte,'Folio',[uniQ_param.FieldValues['iFolio']]);
       frmRepositorio.reporte.Open;
    end;

    if sParamUser = 'frxDBAvisoEmbarque' then begin //las entradas
        AsignarSQL( frmRepositorio.Reporte,'reporte_aviso_embarque',pUpdate);
      FiltrarDataSet(frmRepositorio.reporte,'IdAvisoEmbarque',[uniQ_param.FieldValues['iFolio']]);
       frmRepositorio.Reporte.Open;
    end;

    if sParamUser = 'Db_proyecto' then begin //las entradas
        AsignarSQL(frmRepositorio.Reporte, 'lista_presupuesto', pUpdate);
       FiltrarDataSet(frmRepositorio.Reporte, 'Contrato, TipoProyecto', [Global_contrato, 'PRESUPUESTO']);
       frmRepositorio.Reporte.Open;
    end;

    if sParamUser = 'frxOrdenCompras' then begin //las entradas
      AsignarSQL(frmRepositorio.Reporte,'reporte_solicitud_aprobpag',pUpdate);
      FiltrarDataSet(frmRepositorio.Reporte,'Contrato,Empresa,Folio',[global_contrato,connection.uContrato.FieldByName('IdEmpresa').AsInteger,uniQ_param.FieldValues['iFolio']]);
      frmRepositorio.Reporte.Open;
    end;

    if sParamUser = 'frxSolicitudes' then
    begin
       AsignarSQL(frmRepositorio.reporte,'reporte_solicitud',pUpdate);
       FiltrarDataSet(frmRepositorio.reporte,'Contrato,Folio',[global_contrato,uniQ_param.FieldValues['iFolio']]);
       frmRepositorio.reporte.Open;
    end;

    try
      frxDBDatos := TfrxDBDataset.Create(nil);
      frxDBDatos.UserName := sParamUser;
      frxDBDatos.DataSet  := frmRepositorio.reporte;
      rDiarioValida    := TfrxReport.Create(nil);
      rDiarioValida.DataSets.Add(frxDBDatos);
      //Aqui toma el Evento OnGetValue del Original
      GetValueReporte(rDiarioValida);

      rDiarioValida.PreviewOptions.MDIChild := False;
      rDiarioValida.PreviewOptions.Modal := True;
      rDiarioValida.PreviewOptions.ShowCaptions := False;
      rDiarioValida.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      if sParamUser = 'frxDBRequisicion' then
      begin
          rDiarioValida.LoadFromFile (global_files + global_miReporte +'_ALM_Requisicion.fr3') ;
          if not FileExists(global_files + global_miReporte + '_ALM_Requisicion.fr3') then
             showmessage('El archivo de reporte '+global_miReporte+'_ALM_requisicion.fr3 no existe, notifique al administrador del sistema');
      end;

      if sParamUser = 'frxOrdenCompra' then
      begin
          rDiarioValida.LoadFromFile(global_files + global_miReporte + '_COMP_OrdenCompra.fr3');
          if not FileExists(global_files + global_miReporte + '_COMP_OrdenCompra.fr3') then
          showmessage('El archivo de reporte '+global_Mireporte+'_COMP_OrdenCompra.fr3 no existe, notifique al administrador del sistema');
      end;

      if sParamUser = 'frxInspeccion' then
      begin
          rDiarioValida.LoadFromFile(global_files + global_miReporte + '_ALM_RIM.fr3');
          if not FileExists(global_files + global_miReporte + '_ALM_RIM.fr3') then
          showmessage('El archivo de reporte '+global_Mireporte+'_ALM_RIM.fr3 no existe, notifique al administrador del sistema');
      end;

      if sParamUser = 'frxDBEntrada' then
      begin
          rDiarioValida.PreviewOptions.MDIChild := False ;
          rDiarioValida.LoadFromFile (global_files + global_miReporte+'_ALM_ValeSalida.fr3') ;
          if not FileExists(global_files + global_miReporte + '_ALM_ValeSalida.fr3') then
          showmessage('El archivo de reporte '+global_Mireporte+'_ALM_ValeSalida.fr3 no existe, notifique al administrador del sistema');
      end;

        if sParamUser = 'frxDBEntradas' then
      begin
          rDiarioValida.PreviewOptions.MDIChild := False ;
          rDiarioValida.LoadFromFile (global_files + global_miReporte+'_ALM_Entrada.fr3') ;
          if not FileExists(global_files + global_miReporte + '_ALM_Entrada.fr3') then
          showmessage('El archivo de reporte '+global_Mireporte+'_ALM_Entrada.fr3 no existe, notifique al administrador del sistema');
      end;

      if sParamUser = 'frxDBAvisoEmbarque' then begin //las entradas
          rDiarioValida.PreviewOptions.MDIChild := False ;
          rDiarioValida.LoadFromFile (global_files + global_miReporte+'_ALM_AvisoEmbarque.fr3') ;
          if not FileExists(global_files + global_miReporte + '_ALM_AvisoEmbarque.fr3') then
          showmessage('El archivo de reporte '+global_Mireporte+'_ALM_AvisoEmbarque.fr3 no existe, notifique al administrador del sistema');
      end;

      if sParamUser = 'Db_proyecto' then begin //las entradas
          rDiarioValida.PreviewOptions.MDIChild := False ;
          rDiarioValida.LoadFromFile (global_files + global_miReporte+'_OPER_lista_presupuesto.fr3') ;
          if not FileExists(global_files + global_miReporte + '_OPER_lista_presupuesto.fr3') then
          showmessage('El archivo de reporte '+global_Mireporte+'_OPER_lista_presupuesto.fr3 no existe, notifique al administrador del sistema');
      end;

      if sParamUser = 'frxOrdenCompras' then begin //las entradas
        rDiarioValida.PreviewOptions.MDIChild := False ;
          rDiarioValida.LoadFromFile (global_files + global_miReporte+'_COMP_SolicitudAprobacionPago.fr3') ;
          if not FileExists(global_files + global_miReporte + '_COMP_SolicitudAprobacionPago.fr3') then
          showmessage('El archivo de reporte '+global_Mireporte+'_COMP_SolicitudAprobacionPago.fr3 no existe, notifique al administrador del sistema');
      end;

      if sParamUser = 'frxSolicitudes' then
      begin
          rDiarioValida.PreviewOptions.MDIChild := False ;
          rDiarioValida.LoadFromFile (global_files + global_miReporte+'_ALM_Solicitud.fr3') ;
          if not FileExists(global_files + global_miReporte + '_ALM_Solicitud.fr3') then
          showmessage('El archivo de reporte '+global_Mireporte+'_ALM_Solicitud.fr3 no existe, notifique al administrador del sistema');
      end;


      if lVisualiza then
         rDiarioValida.ShowReport()
      else
         rDiarioValida.PrepareReport(true);


    finally
      frxDBDatos.Destroy;
//      rDiarioValida.Destroy;
    end;

end;


function TfrmValida_ss7.EnviarMensaje(sUsuario, sClave, sServidor, sAdjunto,
  sAsunto, sDestino, sMensaje: String; iPort: Integer; aplicaTLS:String): String;
var
  Cursor: TCursor;
  SMTP: TIdSMTP;
  IOHSOSSL :TIdSSLIOHandlerSocketOpenSSL;
 s: String;
 sl: TStringList;
 i: integer;
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

    Mensaje.From.Name := sUsuario;
    Mensaje.From.Address := sUsuario;
    Mensaje.Subject := sAsunto;
    Mensaje.Body.Text := sMensaje;
    //Correos destino
    sl :=  TStringList.Create;
    s:= sDestino;
    sl.Delimiter := ';';
    sl.DelimitedText := s;
    for i := 0 to sl.Count -1  do
    BEGIN
      if sl[i] <> '' then
      begin
        Mensaje.Recipients.Add;
        Mensaje.Recipients.Items[i].Address := sl[i];
      end;
    END;


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
      FreeAndNil( Adjunto );

    FreeAndNil(Mensaje);
    FreeAndNil(SMTP);
    Screen.Cursor := Cursor;
//    Self.Close;
  end;
end;


procedure TfrmValida_ss7.MuestraColumnas(iParamInicio,iParamFin : integer; lTipo :boolean);
var
  i : integer;
begin
   for i := iParamInicio to iParamFin do
   begin
      grid_datosView.Columns[i].Visible:=lTipo;
   end;
end;

procedure TfrmValida_ss7.EnviaCorreoAvanzado(sParamModulo: string; sParamProceso: string; sParamTipoMaterial: string; sParamComentario : string; sParamEstatus: string; sParamFoldiosDoctos : string);
var
   x: integer;
   cadena, cad, asunto, mnj, sAdjunto, msg :string;
begin
    zMensaje.Active:=False;
    AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
    FiltrarDataSet(zMensaje,'Clasificacion',[sParamModulo]);
    zMensaje.Open;

    zDestino.Active:=False;
    AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
    FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
    zDestino.Open;

    zDestino.Filtered := False;
    zDestino.Filter   := ' Page ='+QuotedStr(sParamProceso);
    zDestino.Filtered := True;

    if global_frmActivo = 'Materiales_MR' then
    begin
      zCorreoUsuario.Active:=False;
      AsignarSQL(zCorreoUsuario,'mail_x_usuario',pUpdate);
      FiltrarDataSet(zCorreoUsuario,'Usuario',[global_usuario]);
      zCorreoUsuario.Open;
    end;

    x:= 0;
    zDestino.First;
    while not zDestino.Eof do
    begin
        if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then
        begin
          if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1) and (grid_datosView.DataController.DataSource.DataSet.FieldByName('AplicaLogistica').AsString = 'Si')then
            cad := '"'+'guillermo.diaz@subsea7.com'+'"';

          if x=0 then
              cadena:='"'+zDestino.FieldByName('Mail').AsString+'"'
          else
          begin
            if cad='' then
              cadena:='"'+zDestino.FieldByName('Mail').AsString+'"'+','+ cadena
            else
              cadena:='"'+zDestino.FieldByName('Mail').AsString+'"'+','+ cadena + ','+cad;
          end;
          Inc(x);
        end
        ELSE
          cadena:=zDestino.FieldByName('Mail').AsString+';'+ cadena;
        zDestino.Next;
    end;

    if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1)or
       (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2)or
       (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 3)or
       (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4)or
       (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5)or
       (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6) then
    begin
        if sParamProceso = 'VALIDAR' then
        begin
          if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1) then begin
            asunto := zMensaje.FieldByName('AsuntoValidar').AsString+' No. '+sFoliosDoctos+' ( '+sParamTipoMaterial+' ) ' +sParamEstatus;
            mnj := zMensaje.FieldByName('MensajeValidar').AsString +' No. '+sFoliosDoctos +' '+grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString+
            ' Tipo de Material: '+sParamTipoMaterial+' VALIDADO POR: '+UpperCase(GLOBAL_NOMBRE);

          end;
          if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4) then begin
            asunto := zMensaje.FieldByName('AsuntoValidar').AsString+' No. '+sFoliosDoctos+' '+sParamEstatus;
            mnj := zMensaje.FieldByName('MensajeValidar').AsString +' No. '+sFoliosDoctos+
            ' VALIDADA POR: '+UpperCase(GLOBAL_NOMBRE);


             //Correo del LIDER_MR, CALIDAD
              zCorreosValidar.Active:=False;
              AsignarSQL(zCorreosValidar,'correo_entrada_validar',pUpdate);
              if (zMensaje.FieldByName('EnviarAlLider_MR').AsString = 'Si') then
                  FiltrarDataSet(zCorreosValidar,'Grupo',['LIDER_MR']);
              if (zMensaje.FieldByName('EnviarACalidad').AsString = 'Si') then
                  FiltrarDataSet(zCorreosValidar,'Grupo',['CALIDAD']);
              if (zMensaje.FieldByName('EnviarAlLider_MR').AsString = 'Si') and
                 (zMensaje.FieldByName('EnviarACalidad').AsString = 'Si') then
                  FiltrarDataSet(zCorreosValidar,'Grupo',[-1]);
              if (zMensaje.FieldByName('EnviarAlLider_MR').AsString = 'No') and
                 (zMensaje.FieldByName('EnviarACalidad').AsString = 'No') then
                  FiltrarDataSet(zCorreosValidar,'Grupo',[-9]);
                zCorreosValidar.Open;
              if zCorreosValidar.FieldByName('sMail').AsString <> '' then
                  cadena:= zCorreosValidar.FieldByName('sMail').AsString+','+cadena;

          end;

          if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5)or
             (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6) then begin
            asunto := zMensaje.FieldByName('AsuntoValidar').AsString+' No. '+sFoliosDoctos+' ' +sParamEstatus;
            mnj := zMensaje.FieldByName('MensajeValidar').AsString +' No. '+sFoliosDoctos+
            ' VALIDADA POR: '+UpperCase(GLOBAL_NOMBRE);

          end;

        end;

        if sParamProceso = 'AUTORIZAR'  then
        begin
          if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1) then begin
            asunto := zMensaje.FieldByName('AsuntoAutorizar').AsString+' No. '+sFoliosDoctos+' ( '+sParamTipoMaterial+' ) ' +sParamEstatus;
            mnj := zMensaje.FieldByName('MensajeAutorizar').AsString +' No. '+sFoliosDoctos+' '+grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString+
            ' Tipo de Material: '+sParamTipoMaterial;
          end;

          if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2) then begin
            asunto := zMensaje.FieldByName('AsuntoAutorizar').AsString+' No. '+sFoliosDoctos+' ' +sParamEstatus;
            mnj := zMensaje.FieldByName('MensajeAutorizar').AsString +' No. '+sFoliosDoctos+' '+grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString;
          end;

          if(cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 3) then begin
            asunto := zMensaje.FieldByName('AsuntoAutorizar').AsString+' No. '+sFoliosDoctos+' ' +sParamEstatus;
            mnj := zMensaje.FieldByName('MensajeAutorizar').AsString +' No. '+sFoliosDoctos+' '+grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString+
            ' AUTORIZADO POR: '+UpperCase(GLOBAL_NOMBRE);;
            //Correo del LIDER_MR, REQUISITOR
              zCorreosValidar.Active:=False;
              AsignarSQL(zCorreosValidar,'correo_entrada_validar',pUpdate);
              if (zMensaje.FieldByName('EnviarAlLider_MR').AsString = 'Si') then
                  FiltrarDataSet(zCorreosValidar,'Grupo',['LIDER_MR'])
              else
                  FiltrarDataSet(zCorreosValidar,'Grupo',[-9]);
                  zCorreosValidar.Open;

              zDestinoReq.Active:=False;
              AsignarSQL(zDestinoReq,'master_cnf_correoRech',pUpdate);
              if (zMensaje.FieldByName('EnviarAlRequisitor').AsString = 'Si') then
                  FiltrarDataSet(zDestinoReq,'UsuarioC',[sUsuarioReq])
              else
                  FiltrarDataSet(zDestinoReq,'UsuarioC',[-1]);
              zDestinoReq.Open;

              if zCorreosValidar.FieldByName('sMail').AsString <> '' then
                  cadena:= zCorreosValidar.FieldByName('sMail').AsString+','+cadena;

              if zDestinoReq.RecordCount > 0 then
                  cadena:= '"'+zDestinoReq.FieldByName('Mail').AsString+'"'+','+cadena;

          end;


          if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4) OR
             (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5) OR
             (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6) then begin
            asunto := zMensaje.FieldByName('AsuntoAutorizar').AsString+' No. '+sFoliosDoctos+' ' +sParamEstatus;
            mnj := zMensaje.FieldByName('MensajeAutorizar').AsString +' No. '+sFoliosDoctos+
            ' AUTORIZADA POR: '+UpperCase(GLOBAL_NOMBRE);

          end;
        end;

        if sParamProceso = 'LIBERAR_GERENTE'  then
        begin
           asunto := zMensaje.FieldByName('AsuntoValidar').AsString+' No. '+sFoliosDoctos+' ( '+sParamTipoMaterial+' ) ' +sParamEstatus;
           mnj := zMensaje.FieldByName('MensajeValidar').AsString +' No. '+sFoliosDoctos +' '+grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString+
           ' Tipo de Material: '+sParamTipoMaterial+' VALIDADO POR: '+UpperCase(GLOBAL_NOMBRE);

            //Correo del gerente en tabla de gerentes SAP
            zDestinoSAP.Active:=False;
            AsignarSQL(zDestinoSAP,'correo_gerente',pUpdate);
            FiltrarDataSet(zDestinoSAP,'Solicitante',[grid_DatosView.DataController.DataSet.FieldByName('IdSAPSolicitante').AsInteger]);
            zDestinoSAP.Open;

            cadena:= '"'+zDestinoSAP.FieldByName('Correo').AsString+'"';
            Continua:=True;
        end;

        if sParamProceso = 'LIBERAR'  then
        begin
           asunto := zMensaje.FieldByName('AsuntoLiberar').AsString+' No. '+sFoliosDoctos+' ( '+sParamTipoMaterial+' ) ' +sParamEstatus;
                    mnj := zMensaje.FieldByName('MensajeLiberar').AsString +' No. '+sFoliosDoctos+' '+grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString+
                    ' Tipo de Material: '+sParamTipoMaterial;
        end;

        if sParamProceso = 'ASIGNAR'  then
        begin
           asunto := zMensaje.FieldByName('AsuntoAsignar').AsString+' No. '+sFoliosDoctos+' ( '+sParamTipoMaterial+' ) ' +sParamEstatus;
                    mnj := zMensaje.FieldByName('MensajeAsignar').AsString +' No. '+sFoliosDoctos+' '+grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString+
                    ' Tipo de Material: '+sParamTipoMaterial;

              zDestinoReq.Active:=False;
              AsignarSQL(zDestinoReq,'master_cnf_correoRech',pUpdate);
              if (zMensaje.FieldByName('EnviarAlSolicitante').AsString = 'Si') then
                  FiltrarDataSet(zDestinoReq,'UsuarioC',[sUsuarioReq])
              else
                  FiltrarDataSet(zDestinoReq,'UsuarioC',[-1]);
              zDestinoReq.Open;

              if (zDestinoReq.RecordCount > 0) and (zMensaje.FieldByName('EnviarAlAsignar').AsString = 'Si') then
              begin
                if Cadena = '' then
                  cadena:= '"'+zDestinoReq.FieldByName('Mail').AsString+'"'
                else
                  cadena:= '"'+zDestinoReq.FieldByName('Mail').AsString+'"'+','+cadena
              end
              else
              if (zDestinoReq.RecordCount > 0) then
                cadena:= '"'+zDestinoReq.FieldByName('Mail').AsString+'"';

        end;

        if sParamProceso = 'GENERARPR'  then
        begin
          if zMR.RecordCount = 0 then
          begin
            zCorreoUsuario.Active:=False;
            AsignarSQL(zCorreoUsuario,'mail_x_usuario',pUpdate);
            FiltrarDataSet(zCorreoUsuario,'Usuario',[grid_DatosView.DataController.DataSet.FieldByName('Usuario').AsString]);
            zCorreoUsuario.Open;

            if zCorreoUsuario.RecordCount > 0 then
               cadena := zCorreoUsuario.FieldByName('sMail').AsString+','+cadena;

            asunto := zMensaje.FieldByName('AsuntoGenerarPR').AsString+' No. '+sFoliosDoctos+' ( '+sParamTipoMaterial+' ) ' +sParamEstatus;
            mnj := 'La MR '+' No. '+sFoliosDoctos+' '+grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString+
            ' ha quedado con estatus de PENDIENTE';
          end
          else if zMaterialesR.RecordCount = 0 then
          begin
            asunto := zMensaje.FieldByName('AsuntoGenerarPR').AsString+' No. '+sFoliosDoctos+' ( '+sParamTipoMaterial+' ) ' +sParamEstatus;
                    mnj := zMensaje.FieldByName('MensajeGenerarPR').AsString +' No. '+sFoliosDoctos+' '+grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString+
                    ' Tipo de Material: '+sParamTipoMaterial;
          end
          else begin
            zCorreoUsuario.Active:=False;
            AsignarSQL(zCorreoUsuario,'mail_x_usuario',pUpdate);
            FiltrarDataSet(zCorreoUsuario,'Usuario',[grid_DatosView.DataController.DataSet.FieldByName('Usuario').AsString]);
            zCorreoUsuario.Open;

            if zCorreoUsuario.RecordCount > 0 then
               cadena := zCorreoUsuario.FieldByName('sMail').AsString+','+cadena;

           asunto := zMensaje.FieldByName('AsuntoGenerarPR').AsString+' No. '+sFoliosDoctos+' ( '+sParamTipoMaterial+' ) ' +sParamEstatus;
                    mnj := zMensaje.FieldByName('MensajeGenerarPR').AsString +' No. '+sFoliosDoctos+' '+grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString+
                    ' Tipo de Material: '+sParamTipoMaterial+'. Se creó la MR No. '+cod+' con los materiales rechazados';
          end;
        end;

        if sParamProceso = 'COMPRAR'  then
        begin
           asunto := zMensaje.FieldByName('AsuntoComprar').AsString+' No. '+sFoliosDoctos+' ( '+sParamTipoMaterial+' ) ' +sParamEstatus;
                    mnj := zMensaje.FieldByName('MensajeComprar').AsString +' No. '+sFoliosDoctos+' '+grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString+
                    ' Tipo de Material: '+sParamTipoMaterial;
        end;

        if sParamProceso = 'RECHAZAR'  then
        begin
                    zDestino.RecordCount;
//           if (frmVerDetalleMr.partidasRechazadas = true)  then
           if  global_frmActivo = 'Materiales_MR' then
           begin
//             zCorreoUsuario.Active:=False;
             AsignarSQL(zCorreoUsuario,'mail_x_usuario',pUpdate);
             FiltrarDataSet(zCorreoUsuario,'Usuario',[grid_DatosView.DataController.DataSet.FieldByName('Usuario').AsString]);
             zCorreoUsuario.Open;

             if zCorreoUsuario.RecordCount > 0 then
               cadena := zCorreoUsuario.FieldByName('sMail').AsString+','+cadena;


             asunto := zMensaje.FieldByName('AsuntoRechazar').AsString+' No. '+grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString+' ( '+grid_DatosView.DataController.DataSet.FieldByName('Recurso').AsString+' ) ' +' PARTIDAS RECHAZADAS';
                    mnj := 'REQUISICION '+' No. '+grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString+' '+grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString+
                    ' Tipo de Material: '+grid_DatosView.DataController.DataSet.FieldByName('Recurso').AsString+'.'+
                    ' Motivo Rechazo: '+ sParamComentario;
           end
           else
           begin
             asunto := zMensaje.FieldByName('AsuntoRechazar').AsString+' No. '+sFoliosDoctos+' ( '+sParamTipoMaterial+' ) ' +sParamEstatus;
                    mnj := zMensaje.FieldByName('MensajeRechazar').AsString +' No. '+sFoliosDoctos+' '+grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString+
                    ' Tipo de Material: '+sParamTipoMaterial+
                    ' Motivo Rechazo: '+ sParamComentario;
           end;
        end;

        if sParamProceso = 'CANCELAR'  then
        begin
           asunto := zMensaje.FieldByName('AsuntoCancelar').AsString+' No. '+sFoliosDoctos+' ( '+sParamTipoMaterial+' ) ' +sParamEstatus;
                    mnj := zMensaje.FieldByName('MensajeCancelar').AsString +' No. '+sFoliosDoctos+' '+grid_DatosView.DataController.DataSet.FieldByName('NombrePlanta').AsString+
                    ' Tipo de Material: '+sParamTipoMaterial+
                    ' Motivo Cancelación: '+ sParamComentario;
        end;

    end
    else
    begin
        asunto := zMensaje.FieldByName('AsuntoValidar').AsString;
        mnj := zMensaje.FieldByName('MensajeValidar').AsString +' No. '+sFoliosDoctos;
    end;

    if ((zMensaje.FieldByName('EnviarAlValidar').AsString = 'Si'))or
    ((sParamProceso = 'LIBERAR_GERENTE')and(cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1) and (zDestinoSAP.FieldByName('lAutoriza').AsString = 'Si'))or
    ((zMensaje.FieldByName('EnviarAlAutorizar').AsString = 'Si'))or
    ((sParamProceso = 'LIBERAR_GERENTE')and(zMensaje.FieldByName('EnviarAlSolicitante').AsString = 'Si')) or
    ((sParamProceso = 'ASIGNAR') and(zMensaje.FieldByName('EnviarAlAsignar').AsString = 'Si'))or
    ((sParamProceso = 'RECHAZAR') and (zMensaje.FieldByName('EnviarAlRechazar').AsString = 'Si'))  then
    begin
        messageDlg('Espere, porfavor', mtInformation, [mbOk],0);

        // para envio de correo
        Mensaje := TIdMessage.Create(nil);
        Mensaje.AttachmentEncoding := 'UUE'  ;
        Mensaje.Clear;
        if ArchivoPath<>' ' then begin
          Mensaje.ContentType := 'multipart/related; type="text/html"';
          RutaArchivoAdjunto := ArchivoPath;
          pdf := ArchivoPath;
        end
        else begin
          if connection.ExportaPDF.FileName <> '' then
          begin
            RutaArchivoAdjunto := connection.ExportaPDF.FileName;
            pdf := connection.ExportaPDF.FileName;
          end;
        end;


        if RutaArchivoAdjunto <>'' then
        begin
           if FileExists(RutaArchivoAdjunto) then
              Adjunto := TIdAttachmentFile.Create(Mensaje.MessageParts, RutaArchivoAdjunto);
        end
        else
          Adjunto := nil;

        if Length(Trim(RutaArchivoAdjunto)) = 0 then
           sAdjunto := ''
        else
          sAdjunto := RutaArchivoAdjunto;

        sAdjunto := RutaArchivoAdjunto;

        if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then
        begin
           msg := Enviar_Email(zCorreo.FieldByName('Correo').AsString,
                 zCorreo.FieldByName('Contrasena').AsString,
                 zCorreo.FieldByName('SMTP').AsString,
                 sAdjunto,
                 asunto,
                 cadena,
                 mnj,
                 zCorreo.FieldByName('Puerto').AsInteger,
                 zCorreo.FieldByName('AplicaTLS').AsString);
        end
        else
         msg := EnviarMensaje(zCorreo.FieldByName('Correo').AsString,
                 zCorreo.FieldByName('Contrasena').AsString,
                 zCorreo.FieldByName('SMTP').AsString,
                 sAdjunto,
                 asunto,
                 cadena,
                 mnj+' : '+grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString+#13+'POR: '+grid_DatosView.DataController.DataSet.FieldByName('UsuarioValido').AsString+' - '+grid_DatosView.DataController.DataSet.FieldByName('FechaValido').AsString,
                 zCorreo.FieldByName('Puerto').AsInteger,
                 zCorreo.FieldByName('AplicaTLS').AsString);

        messageDlg('Estado de envío: '+msg, mtInformation, [mbOk],0);
        if fileexists(RutaArchivoAdjunto) then
          DeleteFile(RutaArchivoAdjunto);
        EliminarArchivo(DirPDF);

        zqDatos.Refresh;
        try
          grid_datosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
        except
        else
           grid_datosView.DataController.DataSet.FreeBookmark(SavePlace);
        end;
    end;
//    if (zMensaje.FieldByName('EnviarAlValidar').AsString = 'No') or
//        (zMensaje.FieldByName('EnviarAlValidar').AsString = '') then
//    begin
//        EliminarArchivo(DirPDF);
//        zqDatos.Refresh;
//      try
//        grid_datosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
//      except
//      else
//         grid_datosView.DataController.DataSet.FreeBookmark(SavePlace);
//      end;
//      MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
//    end;
end;

procedure TfrmValida_ss7.EnviaCorreo(sParamModulo: string; sParamProceso: string; sParamTipoMaterial: string; sParamEstatus: string; sParamFoldiosDoctos : string);
var
   cadena, asunto, mnj, sAdjunto, msg :string;
   MContinua,EContinua:Boolean;
begin
     MContinua:=False;
     EContinua:=False;
     zMensaje.Active:=False;
     AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
     FiltrarDataSet(zMensaje,'Clasificacion',[sParamModulo]);
     zMensaje.Open;

     if ((zMensaje.FieldByName('EnviarAlValidar').AsString = 'Si') and (sParamProceso = 'VALIDAR'))or
       ((zMensaje.FieldByName('EnviarAlAutorizar').AsString = 'Si')and (sParamProceso = 'AUTORIZAR'))then
        begin

       zDestino.Active:=False;
       AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        if sParamModulo='SOLICITUDES' then
          FiltrarDataSet(zDestino,'IdConfiguracion,sCC,Proceso',[zMensaje.FieldByName('IdConfiguracion').AsString,sCC,sParamProceso])
        else
          FiltrarDataSet(zDestino,'IdConfiguracion,sCC,Proceso',[zMensaje.FieldByName('IdConfiguracion').AsString,'-1',sParamProceso]);
       zDestino.Open;

       zDestino.First;
       while not zDestino.Eof do
       begin
           cadena:=zDestino.FieldByName('Mail').AsString+';'+ cadena;
           zDestino.Next;
       end;
       if (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2)or
        (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4)or
        (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5)or
        (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 11) then begin


             MContinua:=True;

          // para envio de correo
          Mensaje := TIdMessage.Create(nil);
          Mensaje.AttachmentEncoding := 'UUE'  ;
          Mensaje.Clear;
          Mensaje.ContentType := 'multipart/related; type="text/html"';

          if connection.ExportaPDF.FileName <> '' then
          begin
             RutaArchivoAdjunto := connection.ExportaPDF.FileName;
             pdf := connection.ExportaPDF.FileName;
          end;

          if RutaArchivoAdjunto <>'' then
          begin
             if FileExists(RutaArchivoAdjunto) then
                Adjunto := TIdAttachmentFile.Create(Mensaje.MessageParts, RutaArchivoAdjunto);
          end
          else
            Adjunto := nil;

           if Length(Trim(RutaArchivoAdjunto)) = 0 then
             sAdjunto := ''
           else
                 sAdjunto := RutaArchivoAdjunto;

            sAdjunto := RutaArchivoAdjunto;

            if sParamProceso = 'VALIDAR' then
             begin
             msg := EnviarMensaje(zCorreo.FieldByName('Correo').AsString,
                      zCorreo.FieldByName('Contrasena').AsString,
                      zCorreo.FieldByName('SMTP').AsString,
                      sAdjunto,
                      asunto+zMensaje.FieldByName('AsuntoValidar').AsString+' No. '+sFoliosDoctos,
                      cadena,
                      mnj+zMensaje.FieldByName('MensajeValidar').AsString+' No. '+sFoliosDoctos,
                      zCorreo.FieldByName('Puerto').AsInteger,
                      zCorreo.FieldByName('AplicaTLS').AsString);
             end;

             if sParamProceso = 'AUTORIZAR'  then
             begin
             msg := EnviarMensaje(zCorreo.FieldByName('Correo').AsString,
                      zCorreo.FieldByName('Contrasena').AsString,
                      zCorreo.FieldByName('SMTP').AsString,
                      sAdjunto,
                      asunto+zMensaje.FieldByName('AsuntoAutorizar').AsString+' No. '+sFoliosDoctos,
                      cadena,
                      mnj+zMensaje.FieldByName('MensajeAutorizar').AsString+' No. '+sFoliosDoctos,
                      zCorreo.FieldByName('Puerto').AsInteger,
                      zCorreo.FieldByName('AplicaTLS').AsString);
             end;
              if fileexists(RutaArchivoAdjunto) then
               DeleteFile(RutaArchivoAdjunto);
              EContinua:=True;

              zqDatos.Refresh;
              try
                grid_datosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
              except
              else
                 grid_datosView.DataController.DataSet.FreeBookmark(SavePlace);
              end;
        end
      end;
      if (zMensaje.FieldByName('EnviarAlRequisitor').AsString = 'Si')
      and (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4){(sParamProceso = 'AUTORIZAR')}then
        begin

          zDestino.Active:=False;
         AsignarSQL(zDestino,'master_cnf_correoRech',pUpdate);
         FiltrarDataSet(zDestino,'UsuarioC',[sUsuarioReq]);
         zDestino.Open;

         zDestino.First;
         while not zDestino.Eof do
         begin
             cadena:=zDestino.FieldByName('Mail').AsString+';'+ cadena;
             zDestino.Next;
         end;

          MContinua:=True;

          // para envio de correo
          Mensaje := TIdMessage.Create(nil);
          Mensaje.AttachmentEncoding := 'UUE'  ;
          Mensaje.Clear;
          Mensaje.ContentType := 'multipart/related; type="text/html"';

          if connection.ExportaPDF.FileName <> '' then
          begin
             RutaArchivoAdjunto := connection.ExportaPDF.FileName;
             pdf := connection.ExportaPDF.FileName;
          end;

          if RutaArchivoAdjunto <>'' then
          begin
             if FileExists(RutaArchivoAdjunto) then
                Adjunto := TIdAttachmentFile.Create(Mensaje.MessageParts, RutaArchivoAdjunto);
          end
          else
            Adjunto := nil;

           if Length(Trim(RutaArchivoAdjunto)) = 0 then
             sAdjunto := ''
           else
                 sAdjunto := RutaArchivoAdjunto;

            sAdjunto := RutaArchivoAdjunto;

            if sParamProceso = 'AUTORIZAR' then begin
            msg := EnviarMensaje(zCorreo.FieldByName('Correo').AsString,
                      zCorreo.FieldByName('Contrasena').AsString,
                      zCorreo.FieldByName('SMTP').AsString,
                      sAdjunto,
                      asunto+zMensaje.FieldByName('AsuntoAutorizar').AsString+' No. '+sFoliosDoctos,
                      cadena,
                      mnj+zMensaje.FieldByName('MensajeAutorizar').AsString+' No. '+sFoliosDoctos,
                      zCorreo.FieldByName('Puerto').AsInteger,
                      zCorreo.FieldByName('AplicaTLS').AsString);
            end;

             if sParamProceso = 'VALIDAR' then begin
            msg := EnviarMensaje(zCorreo.FieldByName('Correo').AsString,
                      zCorreo.FieldByName('Contrasena').AsString,
                      zCorreo.FieldByName('SMTP').AsString,
                      sAdjunto,
                      asunto+zMensaje.FieldByName('AsuntoValidar').AsString+' No. '+sFoliosDoctos,
                      cadena,
                      mnj+zMensaje.FieldByName('MensajeValidar').AsString+' No. '+sFoliosDoctos,
                      zCorreo.FieldByName('Puerto').AsInteger,
                      zCorreo.FieldByName('AplicaTLS').AsString);
            end;

               if fileexists(RutaArchivoAdjunto) then
               DeleteFile(RutaArchivoAdjunto);
              EContinua:=True;

              zqDatos.Refresh;
              try
                grid_datosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
              except
              else
                 grid_datosView.DataController.DataSet.FreeBookmark(SavePlace);
              end;
        end;
        if (zMensaje.FieldByName('EnviarAlComprador').AsString = 'Si')
      and (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4){(sParamProceso = 'AUTORIZAR')}then
        begin

         zDestino.Active:=False;
         AsignarSQL(zDestino,'master_cnf_correoComp',pUpdate);
         FiltrarDataSet(zDestino,'UsuarioC',[sUsuarioReq]);
         zDestino.Open;

         zDestino.First;
         while not zDestino.Eof do
         begin
             cadena:=zDestino.FieldByName('Mail').AsString+';'+ cadena;
             zDestino.Next;
         end;

             MContinua:=True;

          // para envio de correo
          Mensaje := TIdMessage.Create(nil);
          Mensaje.AttachmentEncoding := 'UUE'  ;
          Mensaje.Clear;
          Mensaje.ContentType := 'multipart/related; type="text/html"';

          if connection.ExportaPDF.FileName <> '' then
          begin
             RutaArchivoAdjunto := connection.ExportaPDF.FileName;
             pdf := connection.ExportaPDF.FileName;
          end;

          if RutaArchivoAdjunto <>'' then
          begin
             if FileExists(RutaArchivoAdjunto) then
                Adjunto := TIdAttachmentFile.Create(Mensaje.MessageParts, RutaArchivoAdjunto);
          end
          else
            Adjunto := nil;

           if Length(Trim(RutaArchivoAdjunto)) = 0 then
             sAdjunto := ''
           else
                 sAdjunto := RutaArchivoAdjunto;

            sAdjunto := RutaArchivoAdjunto;

             if sParamProceso = 'AUTORIZAR' then begin
            msg := EnviarMensaje(zCorreo.FieldByName('Correo').AsString,
                      zCorreo.FieldByName('Contrasena').AsString,
                      zCorreo.FieldByName('SMTP').AsString,
                      sAdjunto,
                      asunto+zMensaje.FieldByName('AsuntoAutorizar').AsString+' No. '+sFoliosDoctos,
                      cadena,
                      mnj+zMensaje.FieldByName('MensajeAutorizar').AsString+' No. '+sFoliosDoctos,
                      zCorreo.FieldByName('Puerto').AsInteger,
                      zCorreo.FieldByName('AplicaTLS').AsString);
            end;
             if sParamProceso = 'VALIDAR' then begin
            msg := EnviarMensaje(zCorreo.FieldByName('Correo').AsString,
                      zCorreo.FieldByName('Contrasena').AsString,
                      zCorreo.FieldByName('SMTP').AsString,
                      sAdjunto,
                      asunto+zMensaje.FieldByName('AsuntoValidar').AsString+' No. '+sFoliosDoctos,
                      cadena,
                      mnj+zMensaje.FieldByName('MensajeValidar').AsString+' No. '+sFoliosDoctos,
                      zCorreo.FieldByName('Puerto').AsInteger,
                      zCorreo.FieldByName('AplicaTLS').AsString);
            end;

                if fileexists(RutaArchivoAdjunto) then
               DeleteFile(RutaArchivoAdjunto);
             EContinua:=True;

              zqDatos.Refresh;
              try
                grid_datosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
              except
              else
                 grid_datosView.DataController.DataSet.FreeBookmark(SavePlace);
              end;
        end;
        if (zMensaje.FieldByName('EnviarAGerencia').AsString = 'Si')
      and (cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4){(sParamProceso = 'AUTORIZAR')}then
        begin
         zDestino.Active:=False;
         AsignarSQL(zDestino,'master_cnf_correoGerencia',pUpdate);
         FiltrarDataSet(zDestino,'UsuarioC',[sUsuarioReq]);
         zDestino.Open;

         zDestino.First;
         while not zDestino.Eof do
         begin
             cadena:=zDestino.FieldByName('Mail').AsString+';'+ cadena;
             zDestino.Next;
         end;

          MContinua:=True;

          // para envio de correo
          Mensaje := TIdMessage.Create(nil);
          Mensaje.AttachmentEncoding := 'UUE'  ;
          Mensaje.Clear;
          Mensaje.ContentType := 'multipart/related; type="text/html"';

          if connection.ExportaPDF.FileName <> '' then
          begin
             RutaArchivoAdjunto := connection.ExportaPDF.FileName;
             pdf := connection.ExportaPDF.FileName;
          end;

          if RutaArchivoAdjunto <>'' then
          begin
             if FileExists(RutaArchivoAdjunto) then
                Adjunto := TIdAttachmentFile.Create(Mensaje.MessageParts, RutaArchivoAdjunto);
          end
          else
            Adjunto := nil;

           if Length(Trim(RutaArchivoAdjunto)) = 0 then
             sAdjunto := ''
           else
                 sAdjunto := RutaArchivoAdjunto;

            sAdjunto := RutaArchivoAdjunto;
             if sParamProceso = 'AUTORIZAR' then begin
            msg := EnviarMensaje(zCorreo.FieldByName('Correo').AsString,
                      zCorreo.FieldByName('Contrasena').AsString,
                      zCorreo.FieldByName('SMTP').AsString,
                      sAdjunto,
                      asunto+zMensaje.FieldByName('AsuntoAutorizar').AsString+' No. '+sFoliosDoctos,
                      cadena,
                      mnj+zMensaje.FieldByName('MensajeAutorizar').AsString+' No. '+sFoliosDoctos,
                      zCorreo.FieldByName('Puerto').AsInteger,
                      zCorreo.FieldByName('AplicaTLS').AsString);
            end;

             if sParamProceso = 'VALIDAR' then begin
            msg := EnviarMensaje(zCorreo.FieldByName('Correo').AsString,
                      zCorreo.FieldByName('Contrasena').AsString,
                      zCorreo.FieldByName('SMTP').AsString,
                      sAdjunto,
                      asunto+zMensaje.FieldByName('AsuntoValidar').AsString+' No. '+sFoliosDoctos,
                      cadena,
                      mnj+zMensaje.FieldByName('MensajeValidar').AsString+' No. '+sFoliosDoctos,
                      zCorreo.FieldByName('Puerto').AsInteger,
                      zCorreo.FieldByName('AplicaTLS').AsString);
            end;

                   if fileexists(RutaArchivoAdjunto) then
               DeleteFile(RutaArchivoAdjunto);
                EContinua:=True;

              zqDatos.Refresh;
              try
                grid_datosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
              except
              else
                 grid_datosView.DataController.DataSet.FreeBookmark(SavePlace);
              end;
        end;
        if  MContinua then
        messageDlg('Espere, porfavor', mtInformation, [mbOk],0);
        if EContinua then
        messageDlg('Estado de envío: '+msg, mtInformation, [mbOk],0);

//    else begin
//    if ((zMensaje.FieldByName('EnviarAlValidar').AsString = 'No') or
//        (zMensaje.FieldByName('EnviarAlAutorizar').AsString = 'No') or
//        (zMensaje.FieldByName('EnviarAlRequisitor').AsString = 'No')or
//        (zMensaje.FieldByName('EnviarAlComprador').AsString = 'No')or
//        (zMensaje.FieldByName('EnviarAGerencia').AsString = 'No'))then
//        begin
//            zqDatos.Refresh;
//            try
//              grid_datosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
//            except
//            else
//               grid_datosView.DataController.DataSet.FreeBookmark(SavePlace);
//            end;
//           MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
//        end;

end;

procedure TfrmValida_ss7.ConcatenaTipoFolios(iParamPuntero : integer);
begin
//    sTipoMaterial := '';
//    sFoliosDoctos := '';
//    sUsuarioReq:='';
    //Concatenar los tipos de material
    if grid_DatosView.DataController.DataSet.FieldByName('TipoMaterial').AsString='Material' then
       sTipoMaterial:=  grid_DatosView.DataController.DataSet.FieldByName('TipoMaterial').AsString + ' Permanente'
    else
       sTipoMaterial:= grid_DatosView.DataController.DataSet.FieldByName('TipoMaterial').AsString ;

    if iParamPuntero < (grid_DatosView.DataController.GetSelectedCount - 1) then
       sTipoMaterial := sTipoMaterial +',';

    //Concatenar los Folios o Codigos de documentos
    if(cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4) then
    sFoliosDoctos:= sFoliosDoctos + grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString+' PO: '+
    grid_DatosView.DataController.DataSet.FieldByName('PO').AsString
    else
    sFoliosDoctos:= sFoliosDoctos + grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString;
    sUsuarioReq:=sUsuarioReq + grid_DatosView.DataController.DataSet.FieldByName('UsuarioReq').AsString;
    if iParamPuntero < (grid_DatosView.DataController.GetSelectedCount - 1) then
       sFoliosDoctos := sFoliosDoctos +',';
end;

procedure TfrmValida_ss7.GetValueReporte(rReporteParametro: TfrxReport);
var
   zConsulta,zFirmas: TUniQuery;
   sSQL: string;
begin
  rReporteParametro.Script.Variables['IMPRIME_AVANCES'] := sDiarioComentario;
  rReporteParametro.Script.Variables['sNewTexto'] := sDiarioTitulo;
  rReporteParametro.Script.Variables['PERIODO'] := sDiarioPeriodo;

  if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2 then
  begin
     moneda.Locate('IdMoneda',frmRepositorio.reporte.FieldByName('IdMoneda').AsInteger,[]);
     rReporteParametro.Script.Variables['CANTIDAD_LETRA'] := LetraMontos(moneda.FieldByName('Codigo').AsString, moneda.FieldByName('MonedaCheque').AsString, frmRepositorio.reporte.FieldByName('Monto').AsFloat );
  end;

  if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 3 then
  begin
      zConsulta := TUniQuery.Create(self);
      zConsulta.Connection := connection.uConnection;
      zConsulta.Active := False;
      zConsulta.SQL.Clear;
      zConsulta.SQL.Add('SELECT sNombre FROM usuarios WHERE sIdUsuario = :Usuario');
      zConsulta.Params.ParamByName('Usuario').DataType := ftString;
      zConsulta.Params.ParamByName('Usuario').value := global_usuario;
      zConsulta.Open;

      if zConsulta.RecordCount > 0 then
      begin
         rReporteParametro.Script.Variables['ENTREGA_FIRMA'] := zConsulta.FieldValues['sNombre'];
         rReporteParametro.Script.Variables['RECIBE_FIRMA'] := zConsulta.FieldValues['sNombre'];
      end;
  end;

  if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5 then
  begin
      zConsulta := TUniQuery.Create(self);
      zConsulta.Connection := connection.uConnection;
      zConsulta.Active := False;
      zConsulta.SQL.Clear;
      zConsulta.SQL.Add('SELECT sNombre FROM usuarios WHERE sIdUsuario = :Usuario');
      zConsulta.Params.ParamByName('Usuario').DataType := ftString;
      zConsulta.Params.ParamByName('Usuario').value := global_usuario;
      zConsulta.Open;

      rReporteParametro.Script.Variables['FECHA'] := zqDatos.FieldByName('Entrega').AsDateTime;
      rReporteParametro.Script.Variables['ENTREGA_FIRMA'] := 'Sin puesto';
      rReporteParametro.Script.Variables['RECIBE_FIRMA'] := zConsulta.FieldByNAme('sNombre').AsString;
  end;

  if temE.FieldByName('FK_Titulo').AsString <> 'SIANI' then
  begin
      if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 8 then
      begin
         moneda.Locate('IdMoneda',frmRepositorio.reporte.FieldByName('IdMoneda').AsInteger,[]);
         rReporteParametro.Script.Variables['CANTIDAD_LETRA'] := LetraMontos(moneda.FieldByName('Codigo').AsString, moneda.FieldByName('MonedaCheque').AsString, frmRepositorio.reporte.FieldByName('dMontoMN').AsFloat );
      end;
  end;

  if temE.FieldByName('FK_Titulo').AsString = 'TYPHOON' then
  begin
      if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
      begin
          rReporteParametro.Script.Variables['Fecha'] := frmRepositorio.reporte.FieldByName('dIdFecha').AsDateTime;

      end;
  end;


end;

end.

