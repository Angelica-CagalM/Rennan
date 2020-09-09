unit frm_importaciondedatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, unitGenerales,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin, ZDataset, Math, 
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls, ZAbstractRODataset, ZAbstractDataset,
  frxClass, frxDBSet, Buttons, OleServer, ExcelXP, ComObj, Excel2000, unitExcel, StrUtils, Utilerias,
  masUtilerias, RxMemDS, UnitExcepciones, frm_PopUpImportacion, frm_PopUpImportacionC,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxLabel,
  cxProgressBar, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, Uni;

type
  TfrmImportaciondeDatos = class(TForm)
    btnResumido: TBitBtn;
    btnGenerar: TBitBtn;
    Label1: TLabel;
    OpenXLS: TOpenDialog;
    btnFiles: TBitBtn;
    chkBorrar: TCheckBox;
    SaveDialog1: TSaveDialog;
    ds_Marcas: TDataSource;
    qryMarcas: TZQuery;
    ArchivoMsP: TFileOpenDialog;
    zq_Esp: TZQuery;
    cxLabel1: TcxLabel;
    cxOpcion: TcxComboBox;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    TsArchivo: TcxTextEdit;
    ExcelApplication1: TExcelApplication;
    ExcelWorkbook1: TExcelWorkbook;
    ExcelWorksheet1: TExcelWorksheet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFilesClick(Sender: TObject);
    procedure tnResumidoClick(Sender: TObject);
    procedure btnGenerarClick(Sender: TObject);
    procedure formatoEncabezado();
    procedure tsArchivoEnter(Sender: TObject);
    procedure tsArchivoExit(Sender: TObject);
    function ValidaAnexosDT(dParamTipo :string) :boolean;
    function ValidaAnexosDME(dParamTipo, dParamTabla, dParamId : string) :boolean;
    function ValidaAnexosInsumo() :boolean;
    function ValidaAnexosPE(dParamTipo :string) :boolean;
    function ValidaAnexosBasicos(dParamTipo :string) :boolean;
    function ValidaAnexosPERxP(dParamTipo, sParamTabla, dParamCampo :string)   :boolean;
    function ValidaAnexosA() :boolean;
    function ValidaProveedor() :boolean;
    function ValidaAnexosC(dParamAnexo : string) :boolean;
    function ValidaDeleteAnexosP(dParamTabla, dParamId, dParamBuscaTabla, dParamBuscaTabla2 : string): boolean;
    procedure ColoresErrorExcel(sFila,sColumna :string; iTipo :integer; sMensaje : string);
    procedure ValidaCampo(sTipo, Columna : string; fila : integer; Campo : string; lFechas : boolean; sColAnt : string);
    procedure CuadroColores(sCodigoC1, sCodigoC2, sErrorC1, sErrorC2 : string);
    procedure EliminaCuadro(sPosicion : string; iIndice : integer);
    procedure ConstruyeExplosion();
    function PartidasRepetidas(sParamTipo : string) :boolean;
    procedure FormShow(Sender: TObject);
    procedure cxOpcionPropertiesChange(Sender: TObject);
  private
    Procedure ImportOTProject(sFileProject:TFileName;PgbAvance: TProgressBar=nil);
  public
    { Public declarations }
  end;

var
  frmImportaciondeDatos: TfrmImportaciondeDatos;
  Excel, Libro, Hoja: Variant;
  columnas : array[1..260] of String ;
  MensajePartidas, sDatoNivel   : string;
  lContratoActual : boolean;
  flcid : integer;
  CodigoColor  : array[1..4] of string;

  recursos : array[1..25000,1..6 ] of String;
  registro : integer;

  //ZQuerys de importacion
  zMedida,
  zFases,
  zAnexo,
  zSitio,
  zAlmacen,
  zCiudad,
  zProveedor, zContacto, zRequisicion, zMoneda, zCondiciones,
  zPersonal, zGuardiaDetalle, zGuardiaPersonal  :  tUniquery;
  iCountRegistrosBarra : integer;

implementation

uses Frm_PopUpImportacionPP,UFunctionsGHH;

{$R *.dfm}

procedure TfrmImportaciondeDatos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmImportaciondeDatos.FormShow(Sender: TObject);
begin
   cxOpcion.ItemIndex := 2;
end;

procedure TfrmImportaciondeDatos.btnFilesClick(Sender: TObject);
var
   x, y, i : Integer;
begin
  if cxOpcion.ItemIndex = 5 then
  begin
    if ArchivoMsP.Execute then
      TsArchivo.Text:=ArchivoMsP.FileName;
  end
  else
  begin
      OpenXLS.Title := 'Seleccione Plantilla de MS Excel';
      if OpenXLS.Execute then
      begin
          tsArchivo.Text := OpenXLS.FileName;

         // soad - > Llenado del array..
          for x := 1 to 26 do
              columnas[x] := Chr(64 + x);

          i := 27;
          for x := 1 to 9 do
          begin
               for y := 1 to 26 do
               begin
                   columnas[i] := Chr(64+ x) + Chr(64 + y);
                   i := i + 1;
               end;
          end;
      end;
  end;
end;


procedure TfrmImportaciondeDatos.tnResumidoClick(Sender: TObject);
var
  flcid, Fila,Fila2: Integer;
  sValue,sValue2, ImpsContrato, ImpsWbs, ImpsActAnterior, ImpsAnexo, ImpsWbsAnterior, ImpsGrupo,
  ImpsNumeroActividad, ImpdCantidadAnexo, ImpsWbsContrato,
  ImpdFechaInicio, ImpdFechaFinal, ImpsMedida, ImpdPonderado,
  ImpsPaquete, ImpsTipo, ImpiItemOrden,  ImpsNumeroOrden , sTipoActividad, ImpsConvenio,
  sItemOrdenAnterior, sTipo, sWbs, sSQL  : string;

  //Importacion de Requisicion 2018
  sFolioReq, sSolicito,sRequisito, sProyecto, sCentroCosto, sNotas, dFechaReq, dFechaSol, sIdProyecto,
  sMaterial, sCodigo, sMedida, dCantidad,
  sFolioOC, sNombreCorto, sRazonSocial, sRfc, sContacto,sTelefono,sCorreo, sMoneda, dIva, dRetencion,
  sTEntrega, sLab, sCComercial, dCosto,
  sGuardia, sEntrada, sSalida, dFechaInicio, dFechaFinal, sTipoGuardia :string;

  IdMaterial, IdMedida, IdProveedor, IdContacto, IdMoneda : integer;

  arrFechas  : array[1..1000] of string;
  paquete    : array[1..3000,1..3 ] of String;
  letras     : array of array of String;
  ImpmDescripcion: WideString;
  I, x, t, y, BotonSelec, Id, iFechaI, iFechaF  : Integer ;
  iNivel: Byte;

  //Ordenamiento.. item..
  lMsExcel, lOrdenInteligent : boolean;

  CodErr1, CodErr2, sMsReqs: String;
  PasoValor: Real;
  SobreTodos: Boolean;

  Resp: Integer;

  lInserta, lContinua, lContinuaAux : boolean;

  NuevaFechaInicial,
  NuevaFechaFinal: TDateTime;

  const
     Impuestos: array[1..31] of string = ('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','24','26','27','28','29','30');
begin
   {cODIGOC COLORES}
   CodigoColor[1] := '';
   CodigoColor[2] := '';
   CodigoColor[3] := '';
   CodigoColor[4] := '';

   // Verificar si se ha seleccionado algun archivo
   if (tsArchivo.Text = '') or ((tsArchivo.Text <> '') and Not FileExists(tsArchivo.Text)) then
   begin
      MessageDlg('El archivo seleccionado es incorrecto, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0);
      Exit;
   end;

   {$REGION 'Importa Archivos de Microsoft Excel'}
   if cxOpcion.ItemIndex <> 1 then
   begin
        //Asignacion de la ruta del archivo de Excel...
        try
          try
            CodErr1 := 'Al generar ambiente de EXCEL para levantamiento de información';
            CodErr2 := 'Al intentar modificar atributos de EXCEL';

            flcid := GetUserDefaultLCID;
            ExcelApplication1.Connect;
            ExcelApplication1.Visible[flcid] := true;
            ExcelApplication1.UserControl := true;

            ExcelWorkbook1.ConnectTo(ExcelApplication1.Workbooks.Open(tsArchivo.Text,
              emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam,
              emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, flcid));

            {Antes de iniciar peguntamos al Usuraio si Tomamos Datos del Contrato Actual o el de Excel..}
            lContratoActual := False;
            Resp := MessageDlg('¿Desea Importar los Datos con el nombre del Proyecto "'+global_contrato+'" ?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
            case Resp of
                mrYes: lContratoActual := True;
                mrCancel: Raise Exception.Create('Proceso Cancelado por el Usuario.');
            end;

            ExcelWorksheet1.ConnectTo(ExcelWorkbook1.Sheets.Item[1] as ExcelWorkSheet);
            Fila := 1;
              SobreTodos := False;

            {$REGION 'FORMATO DE REQUICION 001 CMMI'}
            if cxOpcion.ItemIndex = 2 then
            begin
                Fila2 := 1;
                x := 1;
                lContinuaAux := False;
                sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                while x < 25 do
                begin
                    if trim(sValue2) = 'Requisición de materiales y/o servicios' then
                    begin
                        lContinuaAux := True;
                    end;
                    x := x + 1 ;
                    sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(x)), 'A' + Trim(IntToStr(x))].Value2);
                end;

                if lContinuaAux then
                begin
                    //Conteo de registros
                    iCountRegistrosBarra := 0;
                    Fila2 := 1;
                    lContinua := True;
                    sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                    while lContinua do
                    begin
                        inc(iCountRegistrosBarra);
                        if (sValue2 = 'Elaboro.') or (sValue2 = 'Elaboró.')  then
                           lContinua := False;
                        fila2 := fila2 + 1 ;
                        sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(fila2)), 'A' + Trim(IntToStr(fila2))].Value2);
                    end;

                    zSitio := tUniQuery.Create( nil );
                    zSitio.Connection := connection.uConnection;

                    zSitio.Active := False;
                    zSitio.SQL.Clear;
                    zSitio.SQL.Add('select sNumeroOrden, sIdFolio, sIdConvenio, TipoProyecto from ordenesdetrabajo where sContrato =:Contrato ');
                    zSitio.Params.ParamByName('Contrato').DataType := ftString;
                    zSitio.Params.ParamByName('Contrato').Value    := global_contrato;
                    zSitio.Open;

                    //obtener las notas
                    Fila2 := 1;
                    sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                    while (sValue2 <> 'Fecha:') do
                    begin
                        if trim(sValue2) = 'Solicitado por:' then
                        begin
                            sFolioReq  := ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila2-1)), 'J' + Trim(IntToStr(Fila2-1))].Value2;
                        end;
                        fila2 := fila2 + 1 ;
                        sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(fila2)), 'A' + Trim(IntToStr(fila2))].Value2);
                    end;

                     //Ahora se consulta si la requisicion existe
                    AsignarSQL(connection.qryUBusca2,'consulta_inserta_requisicion', pUpdate);
                    FiltrarDataSet(connection.qryUBusca2, 'Contrato,FolioReq',[Global_contrato,sFolioReq]);
                    connection.qryUBusca2.Open;

                    if connection.QryUBusca2.RecordCount = 0 then
                    begin
                        Fila := 1;

                        sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
                        BarraMostrar(True,progreso, LabelProceso);

                        lInserta := False;
                        lContinua := True;
                        while lContinua do
                        begin
                            if (sValue = 'Elaboro.') or (sValue = 'Elaboró.')  then
                               lContinua := False;
                            if trim(sValue) = 'Solicitado por:' then
                            begin
                                zSitio.Filtered := False;
                                zSitio.Filter   := 'TipoProyecto = "PROYECTO" ';
                                zSitio.Filtered := True;

                                sProyecto := trim(ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila+2)), 'C' + Trim(IntToStr(Fila+2))].Value2);
                                if zSitio.Locate('sIdFolio', sProyecto, [loCaseInsensitive]) then
                                    sProyecto := zSitio.FieldByName('sNumeroOrden').AsString
                                else
                                begin
                                   sIdProyecto := autoFolio(zSitio, 'ordenesdetrabajo');
                                   AsignarSQL(connection.qryUBusca,'inserta_ordenesdetrabajo', pUpdate);
                                   FiltrarDataSet(connection.qryUBusca, 'Contrato,ProyectoId,Proyecto,FechaI,FechaF,Ordenamiento,TipoProyecto', [Global_contrato,sIdProyecto,sProyecto,FechaSQL(date),FechaSQL(date),zSitio.RecordCount+1,'PROYECTO']);
                                   connection.qryUBusca.Execute;

                                   zSitio.Refresh;
                                   zSitio.Locate('sIdFolio', sProyecto, [loCaseInsensitive]);
                                   sProyecto := zSitio.FieldByName('sNumeroOrden').AsString
                                end;

                                zSitio.Filtered := False;
                                zSitio.Filter   := 'TipoProyecto = "CENTRO_COSTO" ';
                                zSitio.Filtered := True;

                                sCentroCosto := Trim(ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila+2)), 'J' + Trim(IntToStr(Fila+2))].Value2);
                                if zSitio.Locate('sIdFolio', sCentroCosto, [loCaseInsensitive]) then
                                    sCentroCosto := zSitio.FieldByName('sNumeroOrden').AsString
                                else
                                begin
                                   sIdProyecto := autoFolio(zSitio, 'ordenesdetrabajo');
                                   AsignarSQL(connection.qryUBusca,'inserta_ordenesdetrabajo', pUpdate);
                                   FiltrarDataSet(connection.qryUBusca, 'Contrato,ProyectoId,Proyecto,FechaI,FechaF,Ordenamiento,TipoProyecto', [Global_contrato,sIdProyecto,sCentroCosto,FechaSQL(date),FechaSQL(date),zSitio.RecordCount+1,'CENTRO_COSTO']);
                                   connection.qryUBusca.Execute;

                                   zSitio.Refresh;
                                   zSitio.Locate('sIdFolio', sCentroCosto, [loCaseInsensitive]);
                                   sCentroCosto := zSitio.FieldByName('sNumeroOrden').AsString
                                end;

                                sFolioReq  := Trim(ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila-1)), 'J' + Trim(IntToStr(Fila-1))].Value2);
                                sSolicito  := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
                                sRequisito := ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila)), 'J' + Trim(IntToStr(Fila))].Value2;
                                dFechaReq  := DateToStr(ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila+1)), 'J' + Trim(IntToStr(Fila+1))].Value2);
                                dFechaSol  := DateToStr(ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila+1)), 'C' + Trim(IntToStr(Fila+1))].Value2);

                                //obtener las notas
                                Fila2 := 1;
                                sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                                lContinuaAux := True;
                                while lContinuaAux do
                                begin
                                    if (sValue2 = 'Elaboro.') or (sValue2 = 'Elaboró.')  then
                                       lContinuaAux := False;
                                    if trim(sValue2) = 'Observaciones:' then
                                    begin
                                        sNotas := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila2)), 'C' + Trim(IntToStr(Fila2))].Value2;
                                    end;
                                    fila2 := fila2 + 1 ;
                                    sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(fila2)), 'A' + Trim(IntToStr(fila2))].Value2);
                                end;
                                AsignarSQL(connection.qryUBusca,'inserta_requisicion_001', pUpdate);
                                FiltrarDataSet(connection.qryUBusca, 'Contrato,Folio,Periodo,FechaSol,Proyecto,CC,Fecha,FechaReq,Requisita,Solicita,Notas,Usuario',
                                [Global_contrato,sFolioReq,copy(DateToStr(date),9,2),FechaSQL(StrToDate(dFechaSol)),sProyecto,sCentroCosto,FechaSQL(date),FechaSQL(StrToDate(dFechaReq)),sRequisito,sSolicito,sNotas,global_usuario]);
                                connection.qryUBusca.Execute;

                                //Ahora se consulta la ultima requisicion insertada
                                AsignarSQL(connection.qryUBusca2,'consulta_inserta_requisicion', pUpdate);
                                FiltrarDataSet(connection.qryUBusca2, 'Contrato,FolioReq',[Global_contrato,sFolioReq]);
                                connection.qryUBusca2.Open;

                            end ;

                            if trim(sValue) = 'Observaciones:' then
                               lInserta := False;

                            //Detalle de requisiciones
                            if lInserta then
                            begin
                                if sValue <> '' then
                                begin
                                    sMaterial := Trim(ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2);
                                    if sMaterial <> '' then
                                    begin
                                        sMedida := Trim(ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila)), 'H' + Trim(IntToStr(Fila))].Value2);
                                        if zMedida.Locate('Codigo', sMedida, [loCaseInsensitive]) then
                                            IdMedida := zMedida.FieldByName('IdMedida').AsInteger
                                        else
                                        begin
                                           AsignarSQL(connection.qryUBusca,'inserta_medidas', pUpdate);
                                           FiltrarDataSet(connection.qryUBusca, 'Codigo', [sMedida]);
                                           connection.qryUBusca.Execute;

                                           zMedida.Refresh;
                                           zMedida.Locate('Codigo', sMedida, [loCaseInsensitive]);
                                           IdMedida := zMedida.FieldByName('IdMedida').AsInteger
                                        end;

                                        sCodigo := trim(ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2);
                                        if (trim(sCodigo) = 'N/A') or (trim(sCodigo) = '') then
                                        begin
                                            if zAnexo.Locate('Material', sMaterial, [loCaseInsensitive]) then
                                                IdMaterial := zAnexo.FieldByName('IdInsumo').AsInteger
                                            else
                                            begin
                                               sCodigo := autoFolio(zAnexo, 'alm_insumos');
                                               AsignarSQL(connection.qryUBusca,'inserta_materiales', pUpdate);
                                               FiltrarDataSet(connection.qryUBusca, 'Contrato,Codigo,Material,Medida,Fecha', [Global_contrato,sCodigo,sMaterial,IdMedida,FechaSQL(date)]);
                                               connection.qryUBusca.Execute;

                                               zAnexo.Refresh;
                                               zAnexo.Locate('Codigo', sCodigo, [loCaseInsensitive]);
                                               IdMaterial := zAnexo.FieldByName('IdInsumo').AsInteger
                                            end;
                                        end;

                                        dCantidad  := ExcelWorksheet1.Range['I' + Trim(IntToStr(Fila)), 'I' + Trim(IntToStr(Fila))].Value2;
                                        if dCantidad = '' then
                                           dCantidad := '0';

                                        AsignarSQL(connection.qryUBusca,'inserta_requisicion_det_001', pUpdate);
                                        FiltrarDataSet(connection.qryUBusca, 'Contrato,FolioReq,Periodo,Insumo,Material,IdMedida,FechaReq,Cantidad',
                                        [Global_contrato,connection.qryUBusca2.FieldByName('iFolioRequisicion').AsInteger,copy(DateToStr(date),9,2),IdMaterial,sMaterial,IdMedida,FechaSQL(connection.qryUBusca2.FieldByName('dFechaRequerido').AsDateTime),strToFloat(dCantidad)]);
                                        connection.qryUBusca.Execute;
                                    end;
                                end;

                            end ;

                            if trim(sValue) = 'Part.' then
                            begin
                                lInserta := True;

                                zAnexo := tUniQuery.Create( nil );
                                zAnexo.Connection := connection.uConnection;

                                zAnexo.Active := False;
                                zAnexo.SQL.Clear;
                                zAnexo.SQL.Add('select * from alm_insumos where sContrato =:Contrato ');
                                zAnexo.Params.ParamByName('Contrato').DataType := ftString;
                                zAnexo.Params.ParamByName('Contrato').Value    := global_contrato;
                                zAnexo.Open;

                                zMedida := tUniQuery.Create( nil );
                                zMedida.Connection := connection.uConnection;

                                zMedida.Active := False;
                                zMedida.SQL.Clear;
                                zMedida.SQL.Add('select * from master_medidas ');
                                zMedida.Open;

                            end;

                            BarraProgresoAvance(Progreso, 0,100,100/iCountRegistrosBarra);
                            fila := fila + 1 ;
                            sValue := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2);

                        end;
                    end
                    else
                       messageDLG('EL No. de Requisicion '+sFolioReq+' Ya se encuentra registrado',mtInformation,[mbOk],0);
                    zSitio.Destroy;
                    zAnexo.Destroy;
                    zMedida.Destroy;
                end
                else
                  messageDLG('Formato de Requisicion no Valido!',mtInformation,[mbOk],0);
            end;

            {$ENDREGION}

            {$REGION 'FORMATO DE ORDEN DE COMPRA 001 CMMI'}
            if cxOpcion.ItemIndex = 3 then
            begin
                Fila2 := 1;
                x := 1;
                lContinuaAux := False;
                sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                while x < 25 do
                begin
                    if sValue2 = 'Orden de compra' then
                    begin
                        lContinuaAux := True;
                    end;
                    x := x + 1 ;
                    sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(x)), 'A' + Trim(IntToStr(x))].Value2);
                end;

                if lContinuaAux then
                begin
                    {$REGION 'DECLRACION DE CONSULTAS A DATOS'}
                    zSitio := tUniQuery.Create( nil );
                    zSitio.Connection := connection.uConnection;

                    zSitio.Active := False;
                    zSitio.SQL.Clear;
                    zSitio.SQL.Add('select sNumeroOrden, sIdFolio, sIdConvenio, TipoProyecto from ordenesdetrabajo where sContrato =:Contrato ');
                    zSitio.Params.ParamByName('Contrato').DataType := ftString;
                    zSitio.Params.ParamByName('Contrato').Value    := global_contrato;
                    zSitio.Open;

                    zProveedor := tUniQuery.Create( nil );
                    zProveedor.Connection := connection.uConnection;

                    zProveedor.Active := False;
                    zProveedor.SQL.Clear;
                    zProveedor.SQL.Add('select * from master_proveedores ');
                    zProveedor.Open;

                    zContacto := tUniQuery.Create( nil );
                    zContacto.Connection := connection.uConnection;

                    zContacto.Active := False;
                    zContacto.SQL.Clear;
                    zContacto.SQL.Add('select * from master_proveedor_contacto ');
                    zContacto.Open;

                    zRequisicion := tUniQuery.Create( nil );
                    zRequisicion.Connection := connection.uConnection;

                    zRequisicion.Active := False;
                    zRequisicion.SQL.Clear;
                    zRequisicion.SQL.Add('select * from anexo_requisicion ');
                    zRequisicion.Open;

                    zMoneda := tUniQuery.Create( nil );
                    zMoneda.Connection := connection.uConnection;

                    zMoneda.Active := False;
                    zMoneda.SQL.Clear;
                    zMoneda.SQL.Add('select * from master_moneda ');
                    zMoneda.Open;

                    zCondiciones := tUniQuery.Create( nil );
                    zCondiciones.Connection := connection.uConnection;

                    zCondiciones.Active := False;
                    zCondiciones.SQL.Clear;
                    zCondiciones.SQL.Add('select * from formas_pago ');
                    zCondiciones.Open;
                    {$ENDREGION}

                    //Conteo de registros
                    {$Region 'DATOS PRINCIPALES Y PORCENTAJES'}
                    iCountRegistrosBarra := 0;
                    Fila2 := 1;
                    sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                    while (sValue2 <> 'Datos de la facturación:') do
                    begin
                        inc(iCountRegistrosBarra);

                        if sValue2 = 'Moneda:' then
                        begin
                            sMoneda  := Trim(ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila2)), 'B' + Trim(IntToStr(Fila2))].Value2);
                            if zMoneda.Locate('Codigo', sMoneda, [loCaseInsensitive]) then
                                IdMoneda := zMoneda.FieldByName('IdMoneda').AsInteger
                            else
                            begin
                               AsignarSQL(connection.qryUBusca,'inserta_moneda', pUpdate);
                               FiltrarDataSet(connection.qryUBusca, 'Codigo,Moneda,MonedaCheque',
                               [sMoneda,sMoneda,sMoneda]);
                               connection.qryUBusca.Execute;

                               zMoneda.Refresh;
                               zMoneda.Locate('Codigo', sMoneda, [loCaseInsensitive]);
                               IdMoneda := zMoneda.FieldByName('IdMoneda').AsInteger;
                            end;

                            sNotas := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila2+2)), 'D' + Trim(IntToStr(Fila2+2))].Value2;
                        end;

                        if sValue2 = 'Importe con letras:' then
                        begin
                            i := 1;
                            dIva := '16';
                            dRetencion := '0';
                            while i < 4 do
                            begin
                                sValue := Trim(ExcelWorksheet1.Range['I' + Trim(IntToStr(Fila2+i)), 'I' + Trim(IntToStr(Fila2+i))].Value2);
                                //Porcentaje de IVA
                                if (pos('I.V.A.',sValue) > 0) OR (pos('IVA',sValue) > 0) then
                                begin
                                    y := 1;
                                    while y < 32 do
                                    begin
                                       if pos(Impuestos[y],sValue) > 0 then
                                          dIva := Impuestos[y];
                                       inc(y);
                                    end;
                                end;
                                //Porcentaje de retencion
                                if (pos('Retención',sValue) > 0) OR (pos('Retencion',sValue) > 0) then
                                begin
                                    y := 1;
                                    while y < 32 do
                                    begin
                                       if pos(Impuestos[y],sValue) > 0 then
                                          dRetencion := Impuestos[y];
                                       inc(y);
                                    end;
                                end;
                                sValue := ExcelWorksheet1.Range['I' + Trim(IntToStr(Fila2+i)), 'I' + Trim(IntToStr(Fila2+i))].Value2;
                                inc(i);
                            end;
                        end;

                        fila2 := fila2 + 1 ;
                        sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(fila2)), 'A' + Trim(IntToStr(fila2))].Value2);
                    end;
                    {$ENDREGION}

                    //Obtener el folio de Requisiciones
                    Fila2 := 1;
                    sFolioReq := '-1';
                    sMsReqs := '';
                    sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                    while (sValue2 <> 'Datos de la facturación:') do
                    begin
                        if trim(sValue2) = 'Importe con letras:' then
                           lInserta := False;

                        if lInserta then
                        begin
                            if sFolioReq <> '' then
                            begin
                               sFolioReq  := Trim(ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila2)), 'H' + Trim(IntToStr(Fila2))].Value2);

                               if sFolioReq <> '' then
                               begin
                                   if zRequisicion.Locate('sNumFolio',sFolioReq,[loCaseInsensitive])= False then
                                   begin
                                      if pos(sFolioReq,sMsReqs)= 0 then
                                         sMsReqs := sMsReqs + sFolioReq+ #13;
                                   end
                                   else
                                      sFolioReq := zRequisicion.FieldByName('sNumFolio').AsString;
                               end;
                            end;
                        end;

                        if trim(sValue2) = 'Part.' then
                           lInserta := True;

                        fila2 := fila2 + 1 ;
                        sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(fila2)), 'A' + Trim(IntToStr(fila2))].Value2);
                    end;

                    if sFolioReq <> '-1' then
                    begin
                        if sMsReqs = '' then
                        begin
                            //obtener el folio de compra
                            Fila2 := 1;
                            sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                            while (sValue2 <> 'RFC') do
                            begin
                                if trim(sValue2) = 'Proveedor' then
                                begin
                                    sFolioOC  := Trim(ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila2)), 'K' + Trim(IntToStr(Fila2))].Value2);
                                end;
                                fila2 := fila2 + 1 ;
                                sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(fila2)), 'A' + Trim(IntToStr(fila2))].Value2);
                            end;

                             //Ahora se consulta si la orden de compra existe
                            AsignarSQL(connection.qryUBusca2,'consulta_inserta_ordencompra', pUpdate);
                            FiltrarDataSet(connection.qryUBusca2, 'Contrato,FolioOC',[Global_contrato,sFolioOC]);
                            connection.qryUBusca2.Open;

                            if connection.QryUBusca2.RecordCount = 0 then
                            begin
                                Fila := 1;

                                sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
                                BarraMostrar(True,progreso, LabelProceso);

                                lInserta := False;
                                while (sValue <> 'Datos de la facturación:') do
                                begin
                                    if trim(sValue) = 'Proveedor' then
                                    begin
                                        {$REGION 'DATOS DE PROVEEDORES'}
                                        sRazonSocial  := Trim(ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2);
                                        if zProveedor.Locate('RazonSocial', sRazonSocial, [loCaseInsensitive]) then
                                            IdProveedor := zProveedor.FieldByName('IdProveedor').AsInteger
                                        else
                                        begin
                                           sCodigo := autoFolio(zProveedor, 'master_proveedores');
                                           sRfc := Trim(ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila+1)), 'B' + Trim(IntToStr(Fila+1))].Value2);

                                           sNombreCorto := sRazonSocial;
                                           if pos('S.',sRazonSocial)> 0 then
                                              sNombreCorto := copy(sRazonSocial,1,pos('S.',sRazonSocial)-1);

                                           if pos(' SA ',sRazonSocial)> 0 then
                                              sNombreCorto := copy(sRazonSocial,1,pos(' SA ',sRazonSocial)-1);

                                           if pos('S DE',sRazonSocial)> 0 then
                                              sNombreCorto := copy(sRazonSocial,1,pos('S DE',sRazonSocial)-1);

                                           if pos(' SR ',sRazonSocial)> 0 then
                                              sNombreCorto := copy(sRazonSocial,1,pos(' SR ',sRazonSocial)-1);

                                           if pos(' SC ',sRazonSocial)> 0 then
                                              sNombreCorto := copy(sRazonSocial,1,pos(' SC ',sRazonSocial)-1);

                                           AsignarSQL(connection.qryUBusca,'inserta_proveedor', pUpdate);
                                           FiltrarDataSet(connection.qryUBusca, 'Codigo,Nombre,Razon,Rfc,Calle,Interior,Exterior,Colonia',
                                           [sCodigo,sNombreCorto,sRazonSocial,sRfc,'',0,0,'']);
                                           connection.qryUBusca.Execute;

                                           zProveedor.Refresh;
                                           zProveedor.Locate('RazonSocial', sRazonSocial, [loCaseInsensitive]);
                                           IdProveedor := zProveedor.FieldByName('IdProveedor').AsInteger
                                        end;

                                        sContacto := Trim(ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila+4)), 'B' + Trim(IntToStr(Fila+4))].Value2);
                                        sTelefono := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila+3)), 'B' + Trim(IntToStr(Fila+3))].Value2;
                                        sCorreo   := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila+5)), 'B' + Trim(IntToStr(Fila+5))].Value2;
                                        if zContacto.Locate('Contacto', sContacto, [loCaseInsensitive]) then
                                            sContacto := zContacto.FieldByName('Contacto').AsString
                                        else
                                        begin
                                           AsignarSQL(connection.qryUBusca,'inserta_proveedor_contacto', pUpdate);
                                           FiltrarDataSet(connection.qryUBusca, 'Proveedor,Contacto,Puesto,Telefono,Correo,Fecha',
                                           [IdProveedor,sContacto,'',sTelefono,sCorreo,FechaSQL(date)]);
                                           connection.qryUBusca.Execute;

                                           zContacto.Refresh;
                                           zContacto.Locate('Contacto', sContacto, [loCaseInsensitive]);
                                           IdContacto := zContacto.FieldByName('IdContacto').AsInteger;
                                        end;
                                        {$ENDREGION}

                                        dFechaSol  := DateToStr(ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila+1)), 'K' + Trim(IntToStr(Fila+1))].Value2);
                                        sCentroCosto := Trim(ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila+3)), 'K' + Trim(IntToStr(Fila+3))].Value2);
                                        sTEntrega    := ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila+4)), 'K' + Trim(IntToStr(Fila+4))].Value2;
                                        sLab         := ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila+5)), 'K' + Trim(IntToStr(Fila+5))].Value2;
                                        sCComercial  := Trim(ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila+6)), 'K' + Trim(IntToStr(Fila+6))].Value2);

                                        sProyecto := zRequisicion.FieldByName('sNumeroOrden').AsString;
                                        zCondiciones.Locate('sDescripcion',sCComercial,[loCaseInsensitive]);
                                        sContacto  := zContacto.FieldByName('Contacto').AsString;
                                        sCorreo    := zContacto.FieldByName('Correo').AsString;

                                        AsignarSQL(connection.qryUBusca,'inserta_ordencompra_001', pUpdate);
                                        FiltrarDataSet(connection.qryUBusca, 'Contrato,Codigo,Periodo,Proveedor,Proyecto,Fecha,FechaEntrega,Elaboro,FormaPago,PeriodoPago,Moneda,LugarEntrega,CondicionesC,Iva,Retencion,TEntrega,Contacto,correo,Usuario,Notas,Fecha',
                                        [Global_contrato,sFolioOC,FechaSQL(date),IdProveedor,sProyecto,FechaSQL(date),FechaSQL(StrToDate(dFechaSol)),connection.uUsuario.FieldByName('sNombre').AsString,zCondiciones.FieldByName('IdFormaPago').AsInteger,0,IdMoneda,sLab,sCComercial,dIva,dRetencion,sTEntrega,sContacto,sCorreo,global_usuario,sNotas,FechaSQL(StrToDate(dFechaSol))]);
                                        connection.qryUBusca.Execute;

                                        //Ahora se consulta la ultima requisicion insertada
                                        AsignarSQL(connection.qryUBusca2,'consulta_inserta_ordencompra', pUpdate);
                                        FiltrarDataSet(connection.qryUBusca2, 'Contrato,FolioOC',[Global_contrato,sFolioOC]);
                                        connection.qryUBusca2.Open;

                                    end ;

                                    if trim(sValue) = 'Importe con letras:' then
                                       lInserta := False;

                                    //Detalle de requisiciones
                                    if lInserta then
                                    begin
                                        if sValue <> '' then
                                        begin
                                            sMedida := Trim(ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2);
                                            sFolioReq := Trim(ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila)), 'H' + Trim(IntToStr(Fila))].Value2);
                                            sMaterial := Trim(ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2);
                                            if sMaterial <> '' then
                                            begin
                                                if zMedida.Locate('Codigo', sMedida, [loCaseInsensitive]) then
                                                    IdMedida := zMedida.FieldByName('IdMedida').AsInteger
                                                else
                                                begin
                                                   AsignarSQL(connection.qryUBusca,'inserta_medidas', pUpdate);
                                                   FiltrarDataSet(connection.qryUBusca, 'Codigo', [sMedida]);
                                                   connection.qryUBusca.Execute;

                                                   zMedida.Refresh;
                                                   zMedida.Locate('Codigo', sMedida, [loCaseInsensitive]);
                                                   IdMedida := zMedida.FieldByName('IdMedida').AsInteger
                                                end;

                                                if zAnexo.Locate('Material', sMaterial, [loCaseInsensitive]) then
                                                    IdMaterial := zAnexo.FieldByName('IdInsumo').AsInteger
                                                else
                                                begin
                                                   sCodigo := autoFolio(zAnexo, 'alm_insumos');
                                                   AsignarSQL(connection.qryUBusca,'inserta_materiales', pUpdate);
                                                   FiltrarDataSet(connection.qryUBusca, 'Contrato,Codigo,Material,Medida,Fecha', [Global_contrato,sCodigo,sMaterial,IdMedida,FechaSQL(date)]);
                                                   connection.qryUBusca.Execute;

                                                   zAnexo.Refresh;
                                                   zAnexo.Locate('Codigo', sCodigo, [loCaseInsensitive]);
                                                   IdMaterial := zAnexo.FieldByName('IdInsumo').AsInteger
                                                end;

                                                zRequisicion.Locate('sNumFolio',sFolioReq,[loCaseInsensitive]);
                                                dCantidad  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
                                                if dCantidad = '' then
                                                   dCantidad := '0';
                                                dCosto  := ExcelWorksheet1.Range['I' + Trim(IntToStr(Fila)), 'I' + Trim(IntToStr(Fila))].Value2;
                                                if dCosto = '' then
                                                   dCosto := '0';

                                                AsignarSQL(connection.qryUBusca,'inserta_ordencompra_det_001', pUpdate);
                                                FiltrarDataSet(connection.qryUBusca, 'Contrato,IdCompra,Insumo,item,Descripcion,Medida,Cantidad,Costo,Requisicion',
                                                [Global_contrato,connection.qryUBusca2.FieldByName('IdOrdenCompra').AsInteger,IdMaterial,0,sMaterial,IdMedida,StrToFloat(dCantidad),dCosto,zRequisicion.FieldByName('iFolioRequisicion').AsInteger]);
                                                connection.qryUBusca.Execute;
                                            end;
                                        end;

                                    end ;

                                    if trim(sValue) = 'Part.' then
                                    begin
                                        lInserta := True;

                                        zAnexo := tUniQuery.Create( nil );
                                        zAnexo.Connection := connection.uConnection;

                                        zAnexo.Active := False;
                                        zAnexo.SQL.Clear;
                                        zAnexo.SQL.Add('select * from alm_insumos where sContrato =:Contrato ');
                                        zAnexo.Params.ParamByName('Contrato').DataType := ftString;
                                        zAnexo.Params.ParamByName('Contrato').Value    := global_contrato;
                                        zAnexo.Open;

                                        zMedida := tUniQuery.Create( nil );
                                        zMedida.Connection := connection.uConnection;

                                        zMedida.Active := False;
                                        zMedida.SQL.Clear;
                                        zMedida.SQL.Add('select * from master_medidas ');
                                        zMedida.Open;

                                    end;

                                    BarraProgresoAvance(Progreso, 0,100,100/iCountRegistrosBarra);
                                    fila := fila + 1 ;
                                    sValue := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2);

                                    if fila > 5000 then
                                    begin
                                        sValue := 'Datos de la facturación:';
                                        messageDLG('No se encontró Campo Delimitador "Datos de la facturación:"',mtInformation,[mbOk],0);
                                    end;
                                end;
                            end
                            else
                               messageDLG('EL No. de Requisicion '+sFolioReq+' Ya se encuentra registrado',mtInformation,[mbOk],0);
                            zSitio.Destroy;
                            zAnexo.Destroy;
                            zMedida.Destroy;
                        end
                        else
                          messageDLG('No se encontraton las siguientes Requisiciones: '+sMsReqs+' Cargar para continuar.',mtInformation,[mbOk],0);
                    end
                    else
                       messageDLG('La Orden de compra no contine requisiciones asignadas.',mtInformation,[mbOk],0);
                end
                else
                  messageDLG('Formato de Orden de Compra no Valido!',mtInformation,[mbOk],0);
            end;
            {$ENDREGION}

            {$REGION 'REGISTRO DE HUELLA'}
            if cxOpcion.ItemIndex = 5 then
            begin
                Fila2 := 1;
                x := 1;
                lContinuaAux := False;
                sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                while x < 25 do
                begin
                    if trim(sValue2) = 'Codigo' then
                    begin
                        lContinuaAux := True;
                    end;
                    x := x + 1 ;
                    sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(x)), 'A' + Trim(IntToStr(x))].Value2);
                end;

                if lContinuaAux then
                begin
                    //Conteo de registros
                    iCountRegistrosBarra := 0;
                    Fila2 := 1;
                    lContinua := True;
                    sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                    while lContinua do
                    begin
                        inc(iCountRegistrosBarra);
                        if trim(sValue2) = ''  then
                           lContinua := False;
                        fila2 := fila2 + 1 ;
                        sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(fila2)), 'A' + Trim(IntToStr(fila2))].Value2);
                    end;

                    zPersonal := tUniQuery.Create( nil );
                    zPersonal.Connection := connection.uConnection;

                    zPersonal.Active := False;
                    zPersonal.SQL.Clear;
                    zPersonal.SQL.Add('select * from master_personal  ');
                    zPersonal.Open;

                    zGuardiaDetalle := tUniQuery.Create( nil );
                    zGuardiaDetalle.Connection := connection.uConnection;

                    zGuardiaPersonal := tUniQuery.Create( nil );
                    zGuardiaPersonal.Connection := connection.uConnection;

                    //Ahora se consultan todas las guardias
                    AsignarSQL(zGuardiaDetalle,'consulta_guardia_detalle', pUpdate);
                    zGuardiaDetalle.Open;

                    AsignarSQL(zGuardiaPersonal,'consulta_guardia_personal', pUpdate);
                    zGuardiaPersonal.Open;

                    if zGuardiaDetalle.RecordCount > 0 then
                    begin
                        Fila := 2;

                        sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
                        BarraMostrar(True,progreso, LabelProceso);

                        while sValue <> '' do
                        begin
                            sGuardia := trim(ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila)), 'G' + Trim(IntToStr(Fila))].Value2);
                            sCodigo  := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2);
                            dFechaInicio := DateToStr(ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2);
                            dFechaFinal  := DateToStr(ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2);
                            iFechaI  := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
                            iFechaF  := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
                            sEntrada  := trim(ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2);
                            sSalida   := trim(ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2);
                            sTipoGuardia := trim(ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila)), 'H' + Trim(IntToStr(Fila))].Value2);
                            if zGuardiaDetalle.Locate('Codigo', sGuardia ,[loCaseInsensitive]) = True then
                            begin
                                zPersonal.Locate('CodigoPersonal', sCodigo ,[loCaseInsensitive]);
                                zGuardiaPersonal.Filtered := False;
                                zGuardiaPersonal.Filter   := 'IdGuardiaDetalle = '+IntToStr(zGuardiaDetalle.FieldByName('IdGuardiaDetalle').AsInteger) + ' and IdPersonal = '+IntToStr(zPersonal.FieldByName('IdPersonal').AsInteger);
                                zGuardiaPersonal.Filtered := True;

                                while not zGuardiaPersonal.Eof do
                                begin
                                    //Primero se eliminan los datos en el rango
                                    AsignarSQL(connection.qryUBusca,'elimina_guardia_personal_diario', pUpdate);
                                    FiltrarDataSet(connection.qryUBusca, 'GuardiaP,FechaInicio,FechaFinal', [zGuardiaPersonal.FieldByName('IdGuardiaPersonal').AsInteger,FechaSQL(StrToDate(dFechaInicio)),FechaSQL(StrToDate(dFechaFinal))]);
                                    connection.qryUBusca.Execute;
                                    zGuardiaPersonal.Next;
                                end;

                                for I := iFechaI to iFechaF do
                                begin
                                    dFechaReq := DateTimeToStr(strtodatetime(DateToStr(i)+' '+sEntrada));
                                    //Ahora se inseta la hora de entrada
                                    AsignarSQL(connection.qryUBusca,'inserta_guardia_personal_diario', pUpdate);
                                    FiltrarDataSet(connection.qryUBusca, 'GuardiaP,IdGerencial,FechaHora', [zGuardiaPersonal.FieldByName('IdGuardiaPersonal').AsInteger,1,dFechaReq]);
                                    connection.qryUBusca.Execute;

                                    if sTipoGuardia = '2' then
                                    begin
                                      dFechaReq := DateTimeToStr(strtodatetime(DateToStr(i)+ ' '+sSalida));
                                      //Ahora se inserta la hora se salida
                                      AsignarSQL(connection.qryUBusca,'inserta_guardia_personal_diario', pUpdate);
                                      FiltrarDataSet(connection.qryUBusca, 'GuardiaP,IdGerencial,FechaHora', [zGuardiaPersonal.FieldByName('IdGuardiaPersonal').AsInteger,2,dFechaReq]);
                                      connection.qryUBusca.Execute;
                                    end;
                                end;
                            end ;

                            BarraProgresoAvance(Progreso, 0,100,100/iCountRegistrosBarra);
                            fila := fila + 1 ;
                            sValue := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2);

                        end;
                    end
                    else
                       messageDLG('No existen guardias Registradas',mtInformation,[mbOk],0);
                    zPersonal.Destroy;
                    zGuardiaDetalle.Destroy;
                    zGuardiaPersonal.Destroy;
                end
                else
                  messageDLG('Formato de Importacion de Huellas no Valido!',mtInformation,[mbOk],0);
            end;

            {$ENDREGION}


            {$REGION 'PROGRAMA DE TRABAJO'}
            if cxOpcion.ItemIndex = 0 then
            begin
                CodErr1 := '';
                CodErr2 := '';

                zSitio := tUniquery.Create( nil );
                zSitio.Connection := connection.uConnection;

                zSitio.Active := False;
                zSitio.SQL.Clear;
                zSitio.SQL.Add('select sNumeroOrden, sIdFolio, sIdConvenio from ordenesdetrabajo where sContrato =:Contrato ');
                zSitio.Params.ParamByName('Contrato').DataType := ftString;
                zSitio.Params.ParamByName('Contrato').Value    := global_contrato;
                zSitio.Open;

                zAnexo := tUniquery.Create( nil );
                zAnexo.Connection := connection.uConnection;

                zAnexo.Active := False;
                zAnexo.SQL.Add('select * from anexos');
                zAnexo.Open;

                if ValidaAnexosC('Programa') then
                  Raise Exception.Create('Proceso Cancelado por el Sistema');

                Fila := 2;
                sValue          := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
                ImpsConvenio    := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;;
                ImpsNumeroOrden := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;

                zSitio.Locate('sIdFolio', ImpsNumeroOrden, [loCaseInsensitive]);
                ImpsNumeroOrden := zSitio.FieldByName('sNumeroOrden').AsString;

               // if zSitio.FieldByName('sIdConvenio').AsString = '' then
                   ImpsConvenio := 'P-0'+ImpsConvenio;
               // else
               //    ImpsConvenio := zSitio.FieldByName('sIdConvenio').AsString;

                BotonSelec :=  MessageDlg('Desea remplazar el Programa de trabajo existente?', mtConfirmation, [mbYes, mbNo], 0);
                // Se elimina el catalogo de Anexo..
                if BotonSelec = mrYes then
                begin
//                    BarraMostrar(True,progreso, LabelProceso);
//                   {Ahora llamamos la funcion que verifica si se puede eliminar el programa..}
//                   if BuscaAntesEliminar_datos(1,'actividadesxorden,ordenesdetrabajo,convenios,ordenesxusuario,reportediario', 'sContrato', 'sNumeroOrden', 'sWbs', '', global_contrato, ImpsNumeroOrden, 'A.%', '',
//                     ' el Programa de Trabajo '+ImpsNumeroOrden,  True, progreso) then
//                   begin
//                       BarraMostrar(False,progreso, LabelProceso);
//                       exit;
//                   end
//                   else
//                      //Sino se encontraron datos se procede a eliminar..
//                      chkBorrar.Checked := True;
                end;

//                if chkBorrar.Checked then
//                begin
//                    iNivel              := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
//                    ImpsNumeroActividad := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;
//
//                    {procedure BuscaElimina_datos(sParamTabla, sLlevaContrato, sLlevaFolio, sLlevaWbs, sLLevaAct, sParamContrato, sParamFolio, sParamWbs, sParamPlazo, sParamNuevoContrato, sParamNuevoFolio, sParamNuevaWbs, sParamNuevaAct : string; accion :string);}
//                    BuscaElimina_datos(1,'ordenesdetrabajo,convenios,ordenesxusuario', 'sContrato', 'sNumeroOrden', 'sWbs', 'sIdConvenio', global_contrato, ImpsNumeroOrden, '%', ImpsConvenio, '', '', '', '', 'borrar', False, progreso);
//                end;
//                BarraMostrar(False,progreso, LabelProceso);

                //Preguntamos al usuario dese subir las partidas de acuerdo a Excel o que inteligent las ordene,,
                Application.CreateForm(TFrmPopUpImportacionC, FrmPopUpImportacionC);
                FrmPopUpImportacionC.Left := trunc((Screen.Width)/2)-trunc((FrmPopUpImportacionC.Width)/2);
                FrmPopUpImportacionC.Top := trunc((screen.Height)/2)-trunc((FrmPopUpImportacionC.Height)/2);
                FrmPopUpImportacionC.Caption  := 'Importando Programa de Trabajo';

                if FrmPopUpImportacionC.ShowModal = mrOk then
                begin
                  lMsExcel         := FrmPopUpImportacionC.chkExcel.Checked;
                  lOrdenInteligent := FrmPopUpImportacionC.chkInteligent.Checked;
                end
                else
                  Raise Exception.Create('Proceso cancelado por el usuario.');

                sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
                BarraMostrar(True,progreso, LabelProceso);

                t := 1;
                while (sValue <> '') do
                begin
                    CodErr1 := '';
                    CodErr2 := '';

                    if lContratoActual then
                      ImpsContrato := global_contrato
                    else
                      ImpsContrato    := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
                    ImpsNumeroOrden := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
                    zSitio.Locate('sIdFolio', ImpsNumeroOrden, [loCaseInsensitive]);
                    ImpsNumeroOrden := zSitio.FieldByName('sNumeroOrden').AsString;

                    iNivel              := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
                    ImpsNumeroActividad := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;
                    ImpmDescripcion     := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
                    ImpsMedida          := ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila)), 'G' + Trim(IntToStr(Fila))].Value2;
                    ImpdCantidadAnexo   := ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila)), 'H' + Trim(IntToStr(Fila))].Value2;
                    ImpdPonderado       := ExcelWorksheet1.Range['I' + Trim(IntToStr(Fila)), 'I' + Trim(IntToStr(Fila))].Value2;
                    ImpdFechaInicio     := DateToStr(ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila)), 'J' + Trim(IntToStr(Fila))].Value2);
                    ImpdFechaFinal      := DateToStr(ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila))].Value2);
                    ImpsTipo            := ExcelWorksheet1.Range['L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila))].Value2;
                    ImpsAnexo           := ExcelWorksheet1.Range['M' + Trim(IntToStr(Fila)), 'M' + Trim(IntToStr(Fila))].Value2;
                    zAnexo.Locate('sDescripcion', ImpsAnexo, [loCaseInsensitive]);
                    ImpsAnexo := zAnexo.FieldByName('sAnexo').AsString;

                    NuevaFechaInicial :=           ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila)), 'J' + Trim(IntToStr(Fila))].Value;
                    NuevaFechaFinal   :=           ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila))].Value;

                    if Trim(ImpsMedida) = '' then
                       sTipo := 'Paquete'
                    else
                       sTipo := 'Actividad' ;

                    sWbs := '';
                    if iNivel <> 0 then
                    begin
                        for x := 1 to t - 1 do
                        begin
                           if iNivel - 1 >= strToint(paquete[x][1]) then
                           begin
                                if (sTipo = 'Actividad') and (ImpsAnexo <> '') then
                                  sWbs := paquete[x][2] + '.' + ImpsAnexo + '.'
                                else
                                  sWbs := paquete[x][2] + '.' ;
                                  ImpsWbsAnterior := paquete[x][2];
                            end;
                        end;

                        {Obtenemos la Wbs Anterior si selccionamos la Opcion ordenar x inteligent..}
                        if lOrdenInteligent then
                        begin
                            connection.QryBusca.Active := False ;
                            connection.QryBusca.SQL.Clear ;
                            connection.QryBusca.SQL.Add ('select iItemOrden from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and iNivel =:Nivel and sWbs =:WbsAnt order by iItemOrden ') ;
                            connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                            connection.QryBusca.Params.ParamByName('Contrato').value    := global_contrato ;
                            connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
                            connection.QryBusca.Params.ParamByName('Convenio').value    := ImpsConvenio ;
                            connection.QryBusca.Params.ParamByName('WbsAnt').DataType   := ftString ;
                            if (sTipo = 'Actividad') and (ImpsAnexo <> '') then
                                connection.QryBusca.Params.ParamByName('WbsAnt').value    := copy(sWbs, 1, length(sWbs) -(length(ImpsAnexo)+2))
                            else
                                connection.QryBusca.Params.ParamByName('WbsAnt').value    := copy(sWbs, 1, length(sWbs) -1) ;
                            connection.QryBusca.Params.ParamByName('Nivel').DataType    := ftInteger ;
                            connection.QryBusca.Params.ParamByName('Nivel').value       := iNivel - 1;
                            connection.QryBusca.Open ;

                            if connection.QryBusca.RecordCount > 0 then
                               sItemOrdenAnterior := connection.QryBusca.FieldValues['iItemOrden']
                            else
                               sItemOrdenAnterior := '';
                        end;

                        sWbs := sWbs + ImpsNumeroActividad;
                        if lMsExcel then
                           ImpiItemOrden :=  sFnInsertaItem(ImpsConvenio, ImpsNumeroActividad, ImpsWbsAnterior, '', sTipo, 'actividadesxorden', ImpsNumeroOrden, '', iNivel);

                        if lOrdenInteligent then
                           ImpiItemOrden :=  sItemOrdenAnterior + sFnBuscaItem(ImpsConvenio,ImpsNumeroActividad, ImpsWbsAnterior, sItemOrdenAnterior, sTipo, '', 'actividadesxorden', iNivel);
                    end
                    else
                    begin
                        if lMsExcel then
                          ImpiItemOrden := sFnInsertaItem(ImpsConvenio, ImpsNumeroActividad,
                                                          ImpsWbsAnterior, '', sTipo,'actividadesxorden', ImpsNumeroOrden, '', iNivel);
                        if lOrdenInteligent then
                          ImpiItemOrden  :=  sFnBuscaItem(ImpsConvenio,ImpsNumeroActividad, ImpsWbsAnterior, sItemOrdenAnterior, sTipo, '', 'actividadesxorden', iNivel);

                        ImpsWbsAnterior := '';
                        sWbs            :=  ImpsNumeroActividad;
                    end;

                    if  sTipo = 'Paquete' then
                    begin
                      paquete[t][1] := inttostr(iNivel);
                      paquete[t][2] := sWbs;
                      paquete[t][3] := ImpiItemOrden ;
                      t := t + 1 ;
                    end;

                    {$REGION 'Wbs Anterior '}
                    if sTipo = 'Actividad' then
                    begin
                        Connection.qryBusca.Active := False;
                        Connection.qryBusca.SQL.Clear;
                        Connection.qryBusca.SQL.Add('Select sWbs, sActividadAnterior, mDescripcion, dVentaMN, dVentaDLL, sMedida, dCantidadAnexo, dFechaInicio, dFechaFinal, sAnexo, sTipoAnexo ' +
                                                    'From actividadesxanexo Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad ' +
                                                    'and sTipoActividad = "Actividad" and sAnexo=:anexo ');
                        Connection.qryBusca.Params.ParamByName('Contrato').DataType  := ftString;
                        Connection.qryBusca.Params.ParamByName('Contrato').Value     := global_contrato;
                        Connection.qryBusca.Params.ParamByName('Convenio').DataType  := ftString;
                        Connection.qryBusca.Params.ParamByName('Convenio').Value     := global_convenio;
                        Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
                        Connection.qryBusca.Params.ParamByName('Actividad').Value    := ImpsNumeroActividad;
                        Connection.qryBusca.Params.ParamByName('anexo').DataType     := ftString;
                        Connection.qryBusca.Params.ParamByName('anexo').Value        := ImpsAnexo;
                        Connection.qryBusca.Open;

                        if Connection.qryBusca.RecordCount > 0 then
                           ImpsWbsContrato := Connection.qryBusca.FieldValues['sWbs'];
                    end
                    else
                    begin
                        {Para el caso de la integirdad de datos.. tomamos la sWbs del Paquete principal..}
                        Connection.qryBusca.Active := False;
                        Connection.qryBusca.SQL.Clear;
                        Connection.qryBusca.SQL.Add('Select sWbs From actividadesxanexo Where sContrato = :Contrato And sIdConvenio =:Convenio and sTipoActividad = "Paquete" and iNivel = 0');
                        Connection.qryBusca.Params.ParamByName('Contrato').DataType  := ftString;
                        Connection.qryBusca.Params.ParamByName('Contrato').Value     := global_contrato;
                        Connection.qryBusca.Params.ParamByName('Convenio').DataType  := ftString;
                        Connection.qryBusca.Params.ParamByName('Convenio').Value     := global_convenio;
                        Connection.qryBusca.Open;

                        if connection.QryBusca.RecordCount > 0 then
                           ImpsWbsContrato := Connection.qryBusca.FieldValues['sWbs']
                        else
                           ImpsWbsContrato := '';

                    end;
                    {$ENDREGION}

//                    Try
                        // Inserto Datos a la Tabla .....
                        CodErr1 := 'Al importar información del programa de trabajo desde EXCEL';
                        CodErr2 := 'Al insertar registros de actividadesxorden';

                        lInserta := True;
                        if iNivel = 0 then
                        begin
                            Connection.qryBusca.Active := False;
                            Connection.qryBusca.SQL.Clear;
                            Connection.qryBusca.SQL.Add('Select sWbs From actividadesxorden Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio and sTipoActividad = "Paquete" and iNivel = 0');
                            Connection.qryBusca.Params.ParamByName('Contrato').AsString  := global_contrato;
                            Connection.qryBusca.Params.ParamByName('Folio').AsString     := ImpsNumeroOrden;
                            Connection.qryBusca.Params.ParamByName('Convenio').AsString  := global_convenio;
                            Connection.qryBusca.Open;

                            if connection.QryBusca.RecordCount > 0 then
                               lInserta := False;
                        end;


                        if lInserta then
                            CargarProgramadeTrabajo(ImpsContrato, ImpsNumeroOrden, ImpsConvenio, sTipo, ImpsWbsAnterior, sWbs,
                                      ImpsWbsContrato, ImpsNumeroActividad, ImpiItemOrden, ImpmDescripcion,
                                      StrToDate(ImpdFechaInicio), StrToDate(ImpdFechaFinal), ImpsMedida,
                                      0, 0, StrToFloat(ImpdCantidadAnexo), StrToFloat(ImpdPonderado),
                                      iNivel, ImpsTipo, ImpsAnexo, ImpsActAnterior);

//                    Except
//                      on e:exception do
//                      begin
//                       end;
//                    End ;
                    BarraProgresoAvance(Progreso, 0,100,100/iCountRegistrosBarra);
                    fila := fila + 1 ;
                    sValue := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2);
                end;// Termino del While

                zSitio.Destroy;

                CreaPlazo(ImpsContrato, ImpsConvenio, ImpsNumeroOrden, StrToDate(ImpdFechaInicio), StrToDate(ImpdFechaFinal));

                if BotonSelec = mrYes then
                begin
                    try
                      kardex_almacen('Importa Programa de Trabajo No. ['+ImpsNumeroOrden+'] Proyecto No. [' + global_contrato + ']', 'Otros Movimientos');
                    except
                        on e : exception do
                        begin
                          // Aquí si se debe dejar independiente esta excepción debido a que si no se puede registrar el kardex tampoco se quiere que se cancele todo el proceso.
                          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Importación de Plantillas', 'Al registrar en kardex Importacion de Programa de Trabajo', 0);
                        end;
                    end;
                end;
            end;
            {$ENDREGION}

            {$REGION 'CATALOGO DE PROVEEDORES'}
            //ANEXO DE PROVEEDORES..
            If cxOpcion.ItemIndex = 4 then
            begin
              CodErr1 := '';
              CodErr2 := '';

              if ValidaProveedor then
              begin
                Raise Exception.Create('Proceso Cancelado por el Sistema');
              end
              else
              begin
                  Fila := 2 ;
                  sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

                  //if MessageDlg('Desea remplazar el catalogo de Proveedores existente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                  begin
                    //if ValidaDeleteAnexosP('personal', 'sIdPersonal', 'bitacoradepersonal', 'recursospersonal') then
                    //   Raise Exception.Create('Proceso Cancelado por el Sistema');

                    zCiudad := tUniquery.Create( nil );
                    zCiudad.Connection := connection.uConnection;

                    zCiudad.Active := False;
                    zCiudad.SQL.Add('select c.IdCiudad, concat(c.FK_Ciudad,", ",e.Estado) as FK_Ciudad, c.IdEstado from master_ciudad c '+
                                    'inner join master_estado e on (e.IdEstado = c.IdEstado) ');
                    zCiudad.Open;

                    {Se insertan los datos de personal..}
                    connection.zCommand.Active := False;
                    connection.zCommand.SQL.Clear;
                    connection.zCommand.SQL.Add('INSERT INTO master_proveedores ( Codigo, Nombre, RazonSocial, RFC, Calle, Interior, Exterior, ' +
                                                'Colonia, CodigoPostal, IdCiudad, IdEstado, Correo, Contacto, Telefono ) ' +
                                                ' VALUES (:Codigo, :Nombre, :Razon, "", :Calle, "0", "0", "", :CP, :Ciudad, :Estado, "", "", "" )');

                    while (sValue <> '') do
                    begin
                      CodErr1 := '';
                      CodErr2 := '';

                      ImpsNumeroActividad := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
                      ImpsTipo            := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
                      ImpmDescripcion     := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
                      ImpsMedida          := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
                      ImpsGrupo           := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;
                      ImpiItemOrden       := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;

                      zCiudad.Locate('FK_Ciudad', ImpsGrupo, [loCaseInsensitive]);
                      Id := zCiudad.FieldByName('IdCiudad').AsInteger;

                      //Try
                        connection.zCommand.Active := False;
                        Connection.zCommand.Params.ParamByName('Codigo').AsString  := ImpsNumeroActividad;
                        Connection.zCommand.Params.ParamByName('Nombre').AsString  := ImpsTipo;
                        Connection.zCommand.Params.ParamByName('Razon').AsString   := ImpmDescripcion;
                        Connection.zCommand.Params.ParamByName('Calle').AsString   := ImpsMedida;
                        Connection.zCommand.Params.ParamByName('Ciudad').AsInteger := Id;
                        Connection.zCommand.Params.ParamByName('Estado').AsInteger := zCiudad.FieldByName('IdEstado').AsInteger;
                        Connection.zCommand.Params.ParamByName('CP').AsString      := ImpiItemOrden;
                        Connection.zCommand.ExecSQL;
                      //Except

                      //End;

                      BarraProgresoAvance(Progreso, 0,100,1);
                      Fila := Fila + 1;
                      sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
                    end;

                  end
              end;
            end;
            {$ENDREGION}

            MessageDlg('Proceso Terminado con exito...', mtInformation, [mbOk], 0);
          except
              on E: Exception do
              begin
                  BarraMostrar(True,progreso, LabelProceso);
                  if (CompareText(e.ClassName, 'Exception') = 0) then
                     MessageDlg(e.ClassName + '   ' + e.Message, mtInformation, [mbOk], 0)
                  else
                     if CodErr1 = '' then
                        MessageDlg(e.Message, mtInformation, [mbOk], 0)
                     else
                        UnitExcepciones.manejarExcep(E.Message, E.ClassName, CodErr1, CodErr2, 0);
              end;
          end;
        Finally
            Try
              ExcelApplication1.Quit;
            Except
              // No Hacer nada, solamente es para evitar los errores cuando excel se encuentre ocupado
            End;
            ExcelApplication1.Disconnect;
            sleep(500);
            BarraMostrar(False,progreso, LabelProceso);
        End;
   end
   {$ENDREGION}
   else
   begin
      try
        ImportOTProject(TsArchivo.Text);
        //Connection.uConnection.Commit;
      finally
         sleep(500);
         BarraMostrar(False,progreso, LabelProceso);
      end;
   end;
end;

procedure TfrmImportaciondeDatos.tsArchivoEnter(Sender: TObject);
begin
  tsarchivo.Style.Color:=global_color_entradaERP;
end;

procedure TfrmImportaciondeDatos.tsArchivoExit(Sender: TObject);
begin
  tsarchivo.Style.Color:=global_color_salidaERP;
end;

procedure TfrmImportaciondeDatos.btnGenerarClick(Sender: TObject);
Var
  CadError, OrdenVigencia: String;
//////////////////////////////////// PLANTILAS DE IMPORTACION /////////////////////////////////////
Function GenerarPlantilla: Boolean;
Var
  Resultado: Boolean;

    Procedure createComboExcel(Var Hoja: Variant; NombreHoja: String; PosCol: String; ListaDatos:string);
    begin
      Hoja.Sheets[NombreHoja].Select;
      Hoja.Range[PosCol].Select;
      hoja.Selection.Validation.Delete;
      hoja.Selection.Validation.add(xlValidateList,xlValidAlertStop,xlBetween,ListaDatos);
      hoja.Selection.Validation.IgnoreBlank := True;
      hoja.Selection.Validation.InCellDropdown := True;
      hoja.Selection.Validation.InputTitle := '';
      hoja.Selection.Validation.ErrorTitle := '';
      hoja.Selection.Validation.ErrorMessage := '';
      hoja.Selection.Validation.ShowInput := True;
      hoja.Selection.Validation.ShowError := True;
    end;
    Procedure AsignaFormulas(var Hoja: Variant; NombreHoja: string; Celda: String; Formula: String; Rango_AutoFill: string;
                             sLocked: Boolean; sFormulaOculta: Boolean; OcultarColumna: String);
    begin
      Hoja.Sheets[NombreHoja].Select;
      Hoja.Range[Celda].Select;
      Hoja.Selection.FormulaR1C1 := Formula;
      if Length(Trim(Rango_AutoFill)) > 0 then
        Hoja.Selection.Autofill(Hoja.range[Rango_AutoFill], xlFillDefault);
      if Length(Trim(OcultarColumna)) > 0 then
      begin
        Hoja.Columns[OcultarColumna].select;
        Hoja.Selection.Locked := sLocked;
        Hoja.Selection.FormulaHidden := sFormulaOculta;
        Hoja.Selection.EntireColumn.hidden := sFormulaOculta;
      end;
    end;

Procedure DatosPlantilla;
Var
  CadFecha, tmpNombre, cadena, sColIDName : String;
  fs: tStream;
  i,x,n : integer;
Begin
  // Realizar los ajustes visuales y de formato de hoja
  Excel.ActiveWindow.Zoom := 100;

  x := 1;

  {$REGION 'PLANTILLA PROGRAMA DE TRABAJO'}
  if cxOpcion.ItemIndex = 0 then
  begin
        zq_Esp.Active:=False;
        zq_Esp.SQL.Clear;
        zq_Esp.SQL.Add('select sNumeroOrden, sIdFolio from ordenesdetrabajo where sContrato =:contrato ');
        zq_Esp.ParamByName('Contrato').AsString:=global_contrato;
        zq_Esp.Open;

        Excel.sheets.add;
        Excel.ActiveSheet.Name := LeftStr('Folios_Proceso',31);
        Excel.Sheets['Folios_Proceso'].Select;
        zq_Esp.First;
        while Not zq_Esp.Eof do
        begin
          Excel.Cells[zq_Esp.RecNo,1] := zq_Esp.FieldByName('sNumeroOrden').AsString;
          Excel.Cells[zq_Esp.RecNo,2] := zq_Esp.FieldByName('sIdFolio').AsString;
          zq_Esp.Next;
        end;

        //Anexos
        zq_Esp.Active:=False;
        zq_Esp.SQL.Clear;
        zq_Esp.SQL.Add('select * from anexos');
        zq_Esp.Open;

        Excel.sheets.add;
        Excel.ActiveSheet.Name := LeftStr('Anexos',31);
        Excel.Sheets['Anexos'].Select;

        zq_Esp.First;
        while Not zq_Esp.Eof do
        begin
          Excel.Cells[zq_Esp.RecNo,1] := zq_Esp.FieldByName('sAnexo').AsString;
          Excel.Cells[zq_Esp.RecNo,2] := zq_Esp.FieldByName('sDescripcion').AsString;
          zq_Esp.Next;
        end;

        Excel.sheets.add;
        Excel.ActiveSheet.Name := LeftStr('PROGRAMA DE TRABAJO',31);
        Excel.Sheets['PROGRAMA DE TRABAJO'].Select;

        for i := 0 to 12 do
        begin
            createComboExcel(Excel, 'PROGRAMA DE TRABAJO', 'C' + IntToStr(i + 1), '=Folios_Proceso!$B:$B');
            createComboExcel(Excel, 'PROGRAMA DE TRABAJO', 'M' + IntToStr(i + 1), '=Anexos!$B:$B');
        end;

        Excel.Sheets['PROGRAMA TRABAJO'].delete;
        Excel.Sheets['Folios_Proceso'].visible := False;
        Excel.Sheets['Anexos'].visible := False;

        Excel.Columns['A:A'].ColumnWidth := 15;
        Excel.Columns['B:B'].ColumnWidth := 10.71;
        Excel.Columns['C:C'].ColumnWidth := 20;
        Excel.Columns['D:D'].ColumnWidth := 8;
        Excel.Columns['E:E'].ColumnWidth := 10;
        Excel.Columns['F:F'].ColumnWidth := 40;
        Excel.Columns['G:G'].ColumnWidth := 5.57;
        Excel.Columns['H:K'].ColumnWidth := 12;
        Excel.Columns['L:M'].ColumnWidth := 0;

        // Colocar los encabezados de la plantilla...
        Excel.Cells[1,1].Select;
        Excel.Selection.Value := 'Proyecto';
        FormatoEncabezado;
        Excel.Cells[1,2].Select;
        Excel.Selection.Value := 'Plazo';
        FormatoEncabezado;
        Excel.Cells[1,3].Select;
        Excel.Selection.Value := 'Folio. Prog.';
        FormatoEncabezado;
        Excel.Cells[1,4].Select;
        Excel.Selection.Value := 'Nivel';
        FormatoEncabezado;
        Excel.Cells[1,5].Select;
        Excel.Selection.Value := 'Partida';
        FormatoEncabezado;
        Excel.Cells[1,6].Select;
        Excel.Selection.Value := 'Descripcion';
        FormatoEncabezado;
        Excel.Cells[1,7].Select;
        Excel.Selection.Value := 'Tipo';
        FormatoEncabezado;
        Excel.Cells[1,8].Select;
        Excel.Selection.Value := 'Cantidad';
        FormatoEncabezado;
        Excel.Cells[1,9].Select;
        Excel.Selection.Value := 'Ponderado';
        FormatoEncabezado;
        Excel.Cells[1,10].Select;
        Excel.Selection.Value := 'Fecha_Inicio';
        FormatoEncabezado;
        Excel.Cells[1,11].Select;
        Excel.Selection.Value := 'Fecha_Final';
        FormatoEncabezado;
        Excel.Cells[1,12].Select;
        Excel.Selection.Value := 'Tipo';
        FormatoEncabezado;
        Excel.Cells[1,13].Select;
        Excel.Selection.Value := 'Anexo';
        FormatoEncabezado;

        for i := 2 to 12 do
        begin
          Excel.Cells[i, 1].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := global_contrato;
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Size := 12;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.Name := 'Calibri';

          Excel.Cells[i, 2].Select;
          Excel.Selection.Value := '1';
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Size := 12;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.Name := 'Calibri';

          Excel.Cells[i, 7].Select;
          if i= 2 then
             Excel.Selection.Value := ''
          else
             Excel.Selection.Value := 'Part.';
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Size := 12;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.Name := 'Calibri';

          Excel.Cells[i, 8].Select;
          Excel.Selection.Value := '1';
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Size := 12;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.Name := 'Calibri';

          Excel.Cells[i, 12].Select;
          Excel.Selection.Value := 'PT';
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Size := 12;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.Name := 'Calibri';

          Excel.Cells[i, 13].Select;
          Excel.Selection.Value := zq_Esp.FieldByName('sDescripcion').AsString;
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Size := 12;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.Name := 'Calibri';
        end;
        Excel.Cells[2, 4].Select;
        Excel.Selection.Value := '0';
        Excel.Range['A1:M1'].Select;
  end;
  {$ENDREGION}

  if (cxOpcion.ItemIndex = 4)  then
  begin
      zq_Esp.Active:=False;
      zq_Esp.SQL.Clear;
      zq_Esp.SQL.Add('select c.IdCiudad, concat(c.FK_Ciudad,", ",e.Estado) as FK_Ciudad from master_ciudad c '+
                     'inner join master_estado e on (e.IdEstado = c.IdEstado)  ');
      zq_Esp.Open;

      Excel.sheets.add;
      Excel.ActiveSheet.Name := LeftStr('Ciudades',31);
      Excel.Sheets['Ciudades'].Select;
      zq_Esp.First;
      while Not zq_Esp.Eof do
      begin
        Excel.Cells[zq_Esp.RecNo,1] := zq_Esp.FieldByName('IdCiudad').AsInteger;
        Excel.Cells[zq_Esp.RecNo,2] := zq_Esp.FieldByName('FK_Ciudad').AsString;
        zq_Esp.Next;
      end;

      Excel.sheets.add;
      Excel.ActiveSheet.Name := LeftStr('CATALOGO PROVEEDORES',31);
      Excel.Sheets['CATALOGO PROVEEDORES'].Select;

      for i := 0 to 12 do
      begin
          createComboExcel(Excel, 'CATALOGO PROVEEDORES', 'E' + IntToStr(i + 1), '=Ciudades!$B:$B');
      end;
      Excel.Sheets['PROVEEDORES'].delete;
      Excel.Sheets['Ciudades'].visible := False;


      Excel.Columns['A:A'].ColumnWidth := 15;
      Excel.Columns['B:B'].ColumnWidth := 25;
      Excel.Columns['C:C'].ColumnWidth := 40;
      Excel.Columns['D:D'].ColumnWidth := 40;
      Excel.Columns['E:E'].ColumnWidth := 25;
      Excel.Columns['F:F'].ColumnWidth := 15;

      // Colocar los encabezados de la plantilla...
      Excel.Cells[1,1].Select;
      Excel.Selection.Value := 'Codigo SAP';
      FormatoEncabezado;
      Excel.Cells[1,2].Select;
      Excel.Selection.Value := 'Nombre Corto' ;
      FormatoEncabezado;
      Excel.Cells[1,3].Select;
      Excel.Selection.Value := 'Razon Social';
      FormatoEncabezado;
      Excel.Cells[1,4].Select;
      Excel.Selection.Value := 'Calle';
      FormatoEncabezado;
      Excel.Cells[1,5].Select;
      Excel.Selection.Value := 'Ciudad';
      FormatoEncabezado;
      Excel.Cells[1,6].Select;
      Excel.Selection.Value := 'C.P.';
      FormatoEncabezado;

      Excel.Range['A1:F1'].Select;
  end;
  {$ENDREGION}

  Excel.Columns['AA:AA'].ColumnWidth := 111.86;
  Excel.Columns['AA:AA'].WrapText := True;
  Excel.Columns['AA:AA'].Font.Name := 'Calibri';
  Excel.Columns['AA:AA'].Font.Size := 9;

  // Formato general de encabezado de datos..
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment   := xlCenter;
  Excel.Selection.Interior.Color      := $00D58D53;
  Excel.Selection.Font.Color          := clWhite;
  Excel.Selection.Interior.Pattern    := xlSolid;

End;

Begin
  Resultado := True;
  {$REGION 'OPCIONES DE IMPRESION'}
  Try
    Hoja := Libro.Sheets[1];
    Hoja.Select;

   if cxOpcion.ItemIndex = 0 then
      Hoja.Name := 'PROGRAMA TRABAJO'
   else
   if cxOpcion.ItemIndex = 2 then
      Hoja.Name := 'REQUISICION'
   else
   if cxOpcion.ItemIndex = 3 then
      Hoja.Name := 'ORDEN DE COMPRA'
   else
   if cxOpcion.ItemIndex = 4 then
      Hoja.Name := 'PROVEEDORES';



    {$ENDREGION}
    DatosPlantilla;
    Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
    Excel.DisplayAlerts := True;
  Except
    on e:exception do
    Begin
      Resultado := False;
      CadError := 'Se ha producido el siguiente error al generar la hoja de movimientos de EXISTENCIAS:' + #10 + #10 + e.Message;
      Excel.DisplayAlerts := True;
    End;
  End;

  Result := Resultado;
End;

begin
  if (cxOpcion.ItemIndex = 5) or  ( cxOpcion.ItemIndex = 15) then
  begin
      messageDLG('No se puede generar la plantilla para esta Opción!', mtInformation, [mbOk], 0);
      exit;
  end;

  // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
  If Not SaveDialog1.Execute Then
    Exit;

  // Generar el ambiente de excel
  try
    Excel := CreateOleObject('Excel.Application');
  except
       on e : exception do begin
           FreeAndNil(Excel);
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Importación de Plantilla de Anexos', 'Al importar datos', 0);
           Exit;
    end;
  end;

  Excel.Visible := True;
  Excel.DisplayAlerts := False;
  Excel.ScreenUpdating := True;

  Libro := Excel.Workbooks.Add;    // Crear el libro sobre el que se ha de trabajar

  // Verificar si cuenta con las hojas necesarias
  while Libro.Sheets.Count < 2 do
    Libro.Sheets.Add;

  // Verificar si se pasa de hojas necesarias
  Libro.Sheets[1].Select;
  while Libro.Sheets.Count > 1 do
    Excel.ActiveWindow.SelectedSheets.Delete;

  // Proceder a generar la hoja REPORTE
  CadError := '';

  GenerarPlantilla;
  Excel := '';

  if CadError <> '' then
    showmessage(CadError)
  else
    tsarchivo.Text:=SaveDialog1.FileName;
end;



                             
procedure TfrmImportaciondeDatos.formatoEncabezado;
begin
      Excel.Selection.MergeCells := False;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 12;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.Font.Name := 'Calibri';
end;

{$REGION 'ANEXO DT,DE MN, DE DLL (VALIDA)'}

function TfrmImportaciondedatos.ValidaAnexosDT(dParamTipo :string): boolean;
var
   Fila, iColumna : integer;
   Contrato, ContratoExcel,
   AnexoExcel, campo  : string;
   lContinua, lExiste,
   lEncuentra, lEncuentraAnexo : boolean;
   cadena, cadena2,
   Cadena3, cadena4   : string;
   Actividad, Anexo,
   AnexoAux,
   sFecha, TipoDato   : string;
   CantidadDT         : currency;
   dTotalDT           : currency;
   dIdFecha           : tDate;
   dTotalAnexo        : currency;

   {Decalracion de Querys,,}
   zAnexos, zAnexosC : tUniquery;
begin
    {Primero las validaciones de las Columnas de Fehcas..}
    ValidaAnexosDT := False;
    iColumna := 4;

    zAnexos := tUniquery.Create(self);
    zAnexos.Connection := connection.uConnection;

    zAnexosC := tUniquery.Create(self);
    zAnexosC.Connection := connection.uConnection;

    {Si se elige contrato de Excel o contrato actual..}
    if lContratoActual then
       Contrato := global_contrato
    else
       Contrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

    zAnexosC.Active := False;
    zAnexosC.SQL.Clear;
    zAnexosC.SQL.Add('select min(dFechaInicio) as dFechaInicio, max(dFechaFinal) as dFechaFinal from actividadesxanexo Where sContrato = :contrato and sIdConvenio =:Convenio group by sContrato');
    zAnexosC.Params.ParamByName('Contrato').DataType  := ftString;
    zAnexosC.Params.ParamByName('Contrato').Value     := Contrato;
    zAnexosC.Params.ParamByName('Convenio').DataType  := ftString;
    zAnexosC.Params.ParamByName('Convenio').Value     := Global_Convenio;
    zAnexosC.Open;

    Fila := 1;
    try
       sFecha := DateToStr(ExcelWorksheet1.Range[columnas[iColumna] + '1', columnas[iColumna] + '1'].Value2);
    Except
        ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'fIncorrecto');
    end;

    while (sFecha <> '') and (sFecha <> '30/12/1899') do
    begin
         cadena   := columnas[iColumna];

         TipoDato := 'Fecha';
         try            
            if (sFecha <> '') and (sFecha <> '30/12/1899') then
                dIdFecha := StrToDate(sFecha);
         Except
             ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'fIncorrecto');
         end;

         if zAnexosC.RecordCount > 0 then
         begin
             {Primero los años..}           
             if ((StrToInt(copy(sFecha,7,4))) < (StrToInt(copy(dateToStr(zAnexosC.FieldValues['dFechaInicio']),7,4)))) then
                ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'dtFechaMayor')
             else
             begin  {Ahora por meses..}
                 if ((StrToInt(copy(sFecha,7,4))) = (StrToInt(copy(dateToStr(zAnexosC.FieldValues['dFechaInicio']),7,4)))) then
                     if ((StrToInt(copy(sFecha,4,2))) < (StrToInt(copy(dateToStr(zAnexosC.FieldValues['dFechaInicio']),4,2)))) then
                         ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'dtFechaMayor');
             end;
             {Cotinuamos con los años.}
             if ((StrToInt(copy(sFecha,7,4))) > (StrToInt(copy(dateToStr(zAnexosC.FieldValues['dFechaFinal']),7,4)))) then
                 ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'dtFechaMayor')
             else
             begin {Continuamos con los meses..}
                 if ((StrToInt(copy(sFecha,7,4))) = (StrToInt(copy(dateToStr(zAnexosC.FieldValues['dFechaFinal']),7,4))))  then
                    if ((StrToInt(copy(sFecha,4,2))) > (StrToInt(copy(dateToStr(zAnexosC.FieldValues['dFechaFinal']),4,2)))) then
                       ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'dtFechaMayor');
             end;
         end;
         Inc(iColumna);
         try
            sFecha := DateToStr(ExcelWorksheet1.Range[columnas[iColumna] + '1', columnas[iColumna] + '1'].Value2);
         Except
            ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'fIncorrecto');
         end;
    end;
    {Verificamos si existen los grupos en fasesxproyecto}
    zAnexos.Active := False;
    zAnexos.SQL.Clear;
    zAnexos.SQL.Add('select sAnexo from anexos ');
    zAnexos.Open;

    zAnexosC.Active := False;
    zAnexosC.SQL.Clear;
    zAnexosC.SQL.Add('select sNumeroActividad, sAnexo, dCantidadAnexo, dVentaMN, dVentaDLL from actividadesxanexo Where sContrato = :contrato and sIdConvenio =:Convenio and sTipoActividad = "Actividad"');
    zAnexosC.Params.ParamByName('Contrato').DataType  := ftString;
    zAnexosC.Params.ParamByName('Contrato').Value     := Contrato;
    zAnexosC.Params.ParamByName('Convenio').DataType  := ftString;
    zAnexosC.Params.ParamByName('Convenio').Value     := Global_Convenio;
    zAnexosC.Open;

    {Validacione de Contrato..}
    Fila           := 2;
    Contrato       := global_contrato;
    ContratoExcel  := global_contrato;
    lContinua      := False;
    lExiste        := False;
    AnexoExcel  := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;

    {Borramos Cuadro de Colores..}
    EliminaCuadro(columnas[iColumna], iColumna);

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin
            {Existen datos..}
            lExiste := True;

            if contrato <> ContratoExcel then
               ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila)), 2, 'Contrato');

            TipoDato := 'Texto';
            campo    := 'Anexo';
            cadena   := 'C' ;
            Anexo    := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;

            campo      := 'Actividad';
            cadena     := 'B' ;
            Actividad  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            iColumna := 4;
            dTotalAnexo := 0;
            sFecha := ExcelWorksheet1.Range[columnas[iColumna] +'1', columnas[iColumna] + '1'].Value2;
            while (trim(sFecha) <> '') and (sFecha <> '30/12/1899') and (sFecha <> '34425') do
            begin
                cadena     := columnas[iColumna];
                campo      := 'Cantidad DT';
                TipoDato   := 'Decimal';
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');
                try
                    CantidadDT  := ExcelWorksheet1.Range[columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila))].Value2;
                    dTotalAnexo := dTotalAnexo + CantidadDT;
                Except
                end;
                Inc(iColumna);
                try
                    sFecha := ExcelWorksheet1.Range[columnas[iColumna] +'1', columnas[iColumna] + '1'].Value2;
                Except
                end;
            end;

            {Verificamos si existe las partidas en el anexo C}
            zAnexosC.First;
            lEncuentra := False;
            {Buscamos los partidas en Catalogo..}
            while not zAnexosC.Eof do
            begin
                if (Anexo = zAnexosC.FieldValues['sAnexo']) and (Actividad = zAnexosC.FieldValues['sNumeroActividad']) then
                begin
                    lEncuentra := True;

                    {Registramos las cantidades de Anexo Diferentes..}
                    if dParamTipo = 'AnexoDT' then
                       if RoundTo(dTotalAnexo, -5) <> RoundTo(zAnexosC.FieldValues['dCantidadAnexo'],-5) then
                          ColoresErrorExcel('B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila)), 3, 'DT');

                    if dParamTipo = 'AnexoDEMN' then
                       if (dTotalAnexo) <> (zAnexosC.FieldValues['dCantidadAnexo'] * zAnexosC.FieldValues['dVentaMN']) then
                          ColoresErrorExcel('B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila)), 3, 'DT');

                    if dParamTipo = 'AnexoDEDLL' then
                       if (dTotalAnexo) <> (zAnexosC.FieldValues['dCantidadAnexo'] * zAnexosC.FieldValues['dVentaDLL']) then
                          ColoresErrorExcel('B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila)), 3, 'DT');
                end;
                zAnexosC.Next;
                if lEncuentra  then
                   zAnexosC.Last;
            end;

            {Validamos los anexos}
            zAnexos.First;
            lEncuentraAnexo := False;
            {Buscamos los anexos..}
            while not zAnexos.Eof do
            begin
                if Anexo = zAnexos.FieldValues['sAnexo'] then
                   lEncuentraAnexo := True;
                zAnexos.Next;
            end;

            if lEncuentraAnexo = False then
               ColoresErrorExcel('C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila)), 2, 'Anexo');

            if lEncuentraAnexo = True then
               if lEncuentra = False then
                  ColoresErrorExcel('B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila)), 2, 'Actividad');

        end;
        Fila := Fila + 1;
    end;

    CuadroColores (columnas[iColumna + 1],columnas[iColumna + 2],columnas[iColumna + 3],columnas[iColumna + 6]);

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
        ValidaAnexosDT := True;
        ExcelApplication1.UserControl       := False;
        ExcelApplication1.Interactive[flcid]:= True;
        ExcelApplication1.Disconnect;
    end;
    {Temrina Validacion contrato..}
end;

{$REGION 'ANEXOS DME, DMO, MDA (VALIDACION)'}

function TfrmImportaciondedatos.ValidaAnexosDME(dParamTipo: string; dParamTabla: string; dParamId: string) : boolean;
var
   Fila, iColumna : integer;
   Contrato, ContratoExcel,
   AnexoExcel, campo : string;
   lContinua, lExiste, lEncuentra : boolean;
   cadena          : string;
   Actividad, Anexo,
   AnexoAux,
   sFecha, TipoDato : string;
   CantidadDT       : double;
   dIdFecha         : tDate;
   dTotalAnexo      : double;

   {Decalracion de Querys,,}
   zRecurso : tUniquery;
begin
    {Primero las validaciones de las Columnas de Fehcas..}
    zRecurso := tUniquery.Create(self);
    zRecurso.Connection := connection.uConnection;

    {Si se elige contrato de Excel o contrato actual..}
    if lContratoActual then
       Contrato := global_contrato
    else
       Contrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

    zRecurso.Active := False;
    zRecurso.SQL.Clear;
    zRecurso.SQL.Add('select min(dFechaInicio) as dFechaInicio, max(dFechaFinal) as dFechaFinal from actividadesxanexo Where sContrato = :contrato and sIdConvenio =:Convenio group by sContrato');
    zRecurso.Params.ParamByName('Contrato').DataType  := ftString;
    zRecurso.Params.ParamByName('Contrato').Value     := Contrato;
    zRecurso.Params.ParamByName('Convenio').DataType  := ftString;
    zRecurso.Params.ParamByName('Convenio').Value     := Global_Convenio;
    zRecurso.Open;

    ValidaAnexosDME := False;
    Fila := 1;
    iColumna := 3;
    try
       sFecha := DateToStr(ExcelWorksheet1.Range[columnas[iColumna] + '1', columnas[iColumna] + '1'].Value2);
    Except
        ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'fIncorrecto');
    end;
    
    while (sFecha <> '') and (sFecha <> '30/12/1899') do
    begin
         cadena   := columnas[iColumna];

         TipoDato := 'Fecha';
         try
            if (sFecha <> '') and (sFecha <> '30/12/1899') then
                dIdFecha := StrToDate(sFecha);
         Except
            ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'fIncorrecto');
         end;
         if zRecurso.RecordCount > 0 then
         begin
             {Primero los años..}           
             if ((StrToInt(copy(sFecha,7,4))) < (StrToInt(copy(dateToStr(zRecurso.FieldValues['dFechaInicio']),7,4)))) then
                ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'dtFechaMayor')
             else
             begin  {Ahora por meses..}
                 if ((StrToInt(copy(sFecha,7,4))) = (StrToInt(copy(dateToStr(zRecurso.FieldValues['dFechaInicio']),7,4)))) then
                     if ((StrToInt(copy(sFecha,4,2))) < (StrToInt(copy(dateToStr(zRecurso.FieldValues['dFechaInicio']),4,2)))) then
                         ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'dtFechaMayor');
             end;
             {Cotinuamos con los años.}
             if ((StrToInt(copy(sFecha,7,4))) > (StrToInt(copy(dateToStr(zRecurso.FieldValues['dFechaFinal']),7,4)))) then
                 ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'dtFechaMayor')
             else
             begin {Continuamos con los meses..}
                 if ((StrToInt(copy(sFecha,7,4))) = (StrToInt(copy(dateToStr(zRecurso.FieldValues['dFechaFinal']),7,4))))  then
                    if ((StrToInt(copy(sFecha,4,2))) > (StrToInt(copy(dateToStr(zRecurso.FieldValues['dFechaFinal']),4,2)))) then
                       ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'dtFechaMayor');
             end;
         end;
         Inc(iColumna);
         try
            sFecha := DateToStr(ExcelWorksheet1.Range[columnas[iColumna] + '1', columnas[iColumna] + '1'].Value2);
         Except
            ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'fIncorrecto');
         end;
    end;

    {Verificamos si existen los grupos en fasesxproyecto}
    zRecurso.Active := False;
    zRecurso.SQL.Clear;
    zRecurso.SQL.Add('select '+dParamId+', dCantidad from '+dParamTabla+' Where sContrato = :contrato ');
    zRecurso.ParamByName('Contrato').AsString := contrato;
    zRecurso.Open;

    {Validacione de Contrato..}
    Fila       := 2;
    ContratoExcel  := global_contrato;
    lContinua := False;
    AnexoExcel  := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;

    {Borramos Cuadro de Colores..}
    EliminaCuadro(columnas[iColumna], iColumna);

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin                                             
            if contrato <> ContratoExcel then
               ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila)), 2, 'Contrato');

            {Validaciones de Campos..}
            TipoDato   := 'Texto';
            cadena := 'B' ;
            Actividad  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            iColumna    := 3;
            dTotalAnexo := 0;
            sFecha := ExcelWorksheet1.Range[columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila))].Value2;
            if sFecha = '' then
              sFecha := '0';
            while (sFecha <> '') and (sFecha <> '30/12/1899') do
            begin
                cadena     := columnas[iColumna];
                TipoDato   := 'Decimal';
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');
                try
                   CantidadDT  := StrToFloat(ExcelWorksheet1.Range[columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila))].Value2);
                   dTotalAnexo := dTotalAnexo + CantidadDT;
                except
                end;
                Inc(iColumna);
                try
                    sFecha := DateToStr(ExcelWorksheet1.Range[columnas[iColumna] + '1', columnas[iColumna] + '1'].Value2);
                except
                end;
            end;

            {Validamos los recursos}
            zRecurso.First;
            lEncuentra := False;
            {Buscamos los recursos..}
            while not zRecurso.Eof do
            begin
                if Actividad = zRecurso.FieldValues[dParamId] then
                begin
                   lEncuentra := True;
                   if comparevalue(dTotalAnexo,zRecurso.Fieldbyname('dCantidad').AsFloat,0.02)<>0 then
                   //if (dTotalAnexo) <> (zRecurso.FieldValues['dCantidad']) then    //lobo
                       ColoresErrorExcel('B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila)), 3, 'DMOEA');
                end;
                zRecurso.Next;
            end;

            if lEncuentra = False then
               ColoresErrorExcel('B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila)), 2, dParamTipo);
        end;

        Fila := Fila + 1;
    end;

    CuadroColores (columnas[iColumna + 1],columnas[iColumna + 2],columnas[iColumna + 3],columnas[iColumna + 6]);

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
       ValidaAnexosDME := True;

       ExcelApplication1.UserControl       := False;
       ExcelApplication1.Interactive[flcid]:= True;
       ExcelApplication1.Disconnect;
    end;
    {Temrina Validacion contrato..}
end;

{$REGION 'MATERIALES (VALIDACION)'}

function TfrmImportaciondedatos.ValidaAnexosInsumo(): boolean;
var
   Fila, iColumna : integer;
   Contrato, ContratoExcel,
   AnexoExcel : string;
   lContinua, lExiste, lEncuentra : boolean;
   cadena, campo   : string;
   Actividad, Anexo, Familia,
   AnexoAux, sValue,
   sFecha, TipoDato : string;
   CantidadDT       : double;
   dIdFecha         : tDate;
   //Datos
   DatosCadena      : string;
   Cantidad, Costos : double;
   zFamilias        : tUniquery;
begin

    ValidaAnexosInsumo := False;

    Fila     := 1;
    iColumna := 0;
    sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
    while sValue <> '' do
    begin
         sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
         if (sValue <> '') then
            Inc(iColumna);

         Fila := Fila + 1;
    end;

    if iColumna <> 12 then
    begin
        MessageDlG('El Archivo de Excel Seleccionado no Corresponde al Formato (Plantilla) para Importar el Anexo de Materiales.', mtInformation, [mbOk], 0);
        ValidaAnexosInsumo := True;
        exit;
    end;

    zFamilias := tUniquery.Create(self);
    zFamilias.Connection := connection.uConnection;

    zFamilias.Active := False;
    zFamilias.SQL.Clear;
    zFamilias.SQL.Add('select * from almacenes');
    zFamilias.Open;

    {Validaciones de Datos..}
    Fila       := 2;
    Contrato       := global_contrato;
    ContratoExcel  := global_contrato;
    lContinua := False;
    lExiste     := False;
    lContinua   := True;

    {Borramos Cuadro de Colores..}
    EliminaCuadro('R', 0);
    iCountRegistrosBarra := 0;

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin
            lExiste := True;
            {Validaciones de Campos..}

            TipoDato    := 'Texto';
            Campo       := 'Insumo';
            cadena      := 'A' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'B' ;
            TipoDato    := 'Cadena';
            Campo       := 'Tipo';
            DatosCadena := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
            if (DatosCadena <> 'Material') and (DatosCadena <> 'Consumible') and (DatosCadena <> 'Auxiliares') then
                ColoresErrorExcel(cadena + Trim(IntToStr(Fila)), cadena + Trim(IntToStr(Fila)), 2, 'Tipo');

            if connection.uContrato.FieldByName('sTipoObra').AsString <> 'NINGUNA' then
               if (DatosCadena <> 'Consumible') then
                  ColoresErrorExcel(cadena + Trim(IntToStr(Fila)), cadena + Trim(IntToStr(Fila)), 2, 'TipoMaterial');              

            cadena      := 'E' ;
            TipoDato    := 'Decimal';
            Campo       := 'Cantidad';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'F' ;
            Campo       := 'Cantidad Inst.';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            TipoDato    := 'Texto';
            cadena      := 'C' ;
            Campo       := 'Descripcion';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'D' ;
            Campo       := 'Medida';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'G' ;
            TipoDato    := 'Fecha';
            Campo       := 'Fecha';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'H' ;
            TipoDato    := 'Decimal';
            Campo       := 'Costo MN';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'I' ;
            Campo       := 'Costo DLL';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'J' ;
            Campo       := 'Venta MN';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'K' ;
            Campo       := 'Venta DLL';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            Familia     := ExcelWorksheet1.Range['L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila))].Value2;

            {Buscamos las Familias de Materiales..}
            lEncuentra  := False;
            zFamilias.First;
            while not zFamilias.Eof do
            begin
                if Familia = zFamilias.FieldValues['sDescripcion'] then
                   lEncuentra := True;
                zFamilias.Next;
            end;

            if lEncuentra = False then
               ColoresErrorExcel('L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila)), 2, 'Almacen');

        end;
        Fila := Fila + 1;
        inc(iCountRegistrosBarra,1);
    end;
    CuadroColores ('R', 'S', 'T', 'W');

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
        ValidaAnexosInsumo := True;
        ExcelApplication1.UserControl       := False;
        ExcelApplication1.Interactive[flcid]:= True;
        ExcelApplication1.Disconnect;
    end;


    //freeandnil(QrBusca);
    {Temrina Validacion contrato..}
end;

{$REGION 'PERSONAL Y EQUIPO (VALIDACION)'}

function TfrmImportaciondedatos.ValidaAnexosPE(dParamTipo : string): boolean;
var
   Fila, iColumna, Orden : integer;
   Contrato, ContratoExcel,
   AnexoExcel : string;
   lContinua, lExiste, lEncuentra : boolean;
   cadena, campo, sTipoPerEq   : string;
   Actividad, Anexo,
   AnexoAux, sValue,
   sFecha, TipoDato : string;
   CantidadDT       : double;
   dIdFecha         : tDate;
   //Datos
   DatosCadena : string;
   Cantidad, Costos : double;

   zTiposEQPER : tUniquery;
begin

    ValidaAnexosPE := False;

    Fila     := 1;
    iColumna := 0;
    sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
    while sValue <> '' do
    begin
         sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
         if (sValue <> '') then
            Inc(iColumna);

         Fila := Fila + 1;
    end;

    if iColumna <> 14 then
    begin
        MessageDlG('El Archivo de Excel Seleccionado no Corresponde al Formato (Plantilla) para Importar el Anexo de '+dParamTipo, mtInformation, [mbOk], 0);
        ValidaAnexosPE := True;
        exit;
    end;

    zTiposEQPER := tUniquery.Create(self);
    zTiposEQPER.Connection := connection.uConnection;

    {Verificamos si existen los grupos en fasesxproyecto}
    zTiposEQPER.Active := False;
    zTiposEQPER.SQL.Clear;
    if dParamTipo = 'Personal' then
       zTiposEQPER.SQL.Add('select sIdTipoPersonal from tiposdepersonal ')
    else
       zTiposEQPER.SQL.Add('select sIdTipoEquipo from tiposdeequipo ');
    zTiposEQPER.Open;

    {Validaciones de Datos..}
    Fila       := 2;
    ContratoExcel  := global_contrato;
    lContinua := False;
    lExiste     := False;
    lContinua   := True;

    {Borramos Cuadro de Colores..}
    EliminaCuadro('O', 0);

    {Si se elige contrato de Excel o contrato actual..}
    if lContratoActual then
       Contrato := global_contrato
    else
       Contrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
        sTipoPerEq     := ExcelWorksheet1.Range['M' + Trim(IntToStr(Fila)), 'M' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin
            lExiste := True;
            {Validaciones de Campos..}

            if contrato <> ContratoExcel then
               ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila)), 2, 'Contrato');

            TipoDato    := 'Texto';
            Campo       := 'Id_'+dParamTipo;
            cadena      := 'B' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'C' ;
            TipoDato    := 'Numero';
            Campo       := 'Ordenamiento';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            TipoDato    := 'Texto';
            Campo       := 'Descripcion';
            cadena      := 'D' ;
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            Campo       := 'Medida';
            cadena      := 'E' ;
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            TipoDato    := 'Decimal';
            Campo       := 'Cantiad';
            cadena      := 'F' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'G' ;
            Campo       := 'Costo MN';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'H' ;
            Campo       := 'Costo DLL';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'I' ;
            Campo       := 'Venta MN';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'J' ;
            Campo       := 'Venta DLL';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            TipoDato    := 'Fecha';
            Campo       := 'Fecha Inicio';
            cadena      := 'K' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'L' ;
            Campo       := 'Fecha Final';
            ValidaCampo(TipoDato, cadena, Fila, campo, True, 'K');

            TipoDato    := 'Texto';
            Campo       := 'Id Tipo Personal';
            cadena      := 'M' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            TipoDato    := 'Numero';
            Campo       := 'Jornada';
            cadena      := 'N' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            if ExcelWorksheet1.Range['N' + Trim(IntToStr(Fila)), 'N' + Trim(IntToStr(Fila))].Value2 > 24 then
               ColoresErrorExcel('N' + Trim(IntToStr(Fila)), 'N' + Trim(IntToStr(Fila)), 3, 'Jornada');

            zTiposEQPER.First;
            lEncuentra := False;
            {Buscamos los frentes de trabajo..}
            while not zTiposEQPER.Eof do
            begin
                if dParamTipo = 'Personal' then
                   if sTipoPerEq = zTiposEQPER.FieldValues['sIdTipoPersonal'] then
                      lEncuentra := True;

                if dParamTipo = 'Equipo' then
                   if sTipoPerEq = zTiposEQPER.FieldValues['sIdTipoEquipo'] then
                      lEncuentra := True;
                zTiposEQPER.Next;
            end;

            if lEncuentra = False then
            begin
                if dParamTipo = 'Personal' then
                   ColoresErrorExcel('M' + Trim(IntToStr(Fila)), 'M' + Trim(IntToStr(Fila)), 2, 'TipoPersonal');

                if dParamTipo = 'Equipo' then
                   ColoresErrorExcel('M' + Trim(IntToStr(Fila)), 'M' + Trim(IntToStr(Fila)), 2, 'TipoEquipo')
            end;
        end;

        Fila := Fila + 1;
    end;
    CuadroColores ('P','Q','R','U');

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
        ValidaAnexosPE := True;
        ExcelApplication1.UserControl       := False;
        ExcelApplication1.Interactive[flcid]:= True;
        ExcelApplication1.Disconnect;
    end;
    {Temrina Validacion contrato..}
end;

{$REGION 'BASICOS Y HERRAMIENTAS (VALIDACION)'}

function TfrmImportaciondedatos.ValidaAnexosBasicos(dParamTipo : string): boolean;
var
   Fila, iColumna, Orden : integer;
   Contrato, ContratoExcel,
   AnexoExcel : string;
   lContinua, lExiste, lEncuentra : boolean;
   cadena, campo      : string;
   Actividad, Anexo,
   AnexoAux, sValue,
   sFecha, TipoDato : string;
   CantidadDT       : double;
   dIdFecha         : tDate;
   //Datos
   DatosCadena : string;
   Cantidad, Costos : double;
begin

    ValidaAnexosBasicos := False;

    Fila     := 1;
    iColumna := 0;
    sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
    while sValue <> '' do
    begin
         sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
         if (sValue <> '') then
            Inc(iColumna);

         Fila := Fila + 1;
    end;

    if iColumna <> 8 then
    begin
        MessageDlG('El Archivo de Excel Seleccionado no Corresponde al Formato (Plantilla) para Importar el Anexo de '+dParamTipo, mtInformation, [mbOk], 0);
        ValidaAnexosBasicos := True;
        exit;
    end;

    {Validaciones de Datos..}
    Fila       := 2;
    ContratoExcel  := global_contrato;
    lContinua := False;
    lExiste     := False;
    lContinua   := True;

   {Borramos Cuadro de Colores..}
    EliminaCuadro('J', 0);

    {Si se elige contrato de Excel o contrato actual..}
    if lContratoActual then
       Contrato := global_contrato
    else
       Contrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin
            lExiste := True;

             if contrato <> ContratoExcel then
               ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila)), 2, 'Contrato');

            {Validaciones de Campos..}

            TipoDato    := 'Texto';
            Campo       := 'Id_'+dParamTipo;
            cadena      := 'B' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            Campo       := 'Descripcion';
            cadena      := 'C' ;
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            Campo       := 'Medida';
            cadena      := 'D' ;
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            TipoDato    := 'Decimal';
            Campo       := 'Costo MN';
            cadena      := 'E' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'F' ;
            Campo       := 'Costo DLL';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'G' ;
            Campo       := 'Venta MN';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'H' ;
            Campo       := 'Venta DLL';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');
        end;

        Fila := Fila + 1;
    end;
    CuadroColores ('J','K','L','O');

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
        ValidaAnexosBasicos := True;
        ExcelApplication1.UserControl       := False;
        ExcelApplication1.Interactive[flcid]:= True;
        ExcelApplication1.Disconnect;
    end;
    {Temrina Validacion contrato..}
end;

{$REGION 'PERSONAL X PARTIDA, EQUIPO, HERRMIENTA, BASICOS (VALIDACION)'}

function TfrmImportaciondedatos.ValidaAnexosPERxP(dParamTipo: string; sParamTabla: string; dParamCampo: string) : boolean;
var
   Fila, iColumna, Orden : integer;
   Contrato, ContratoExcel,
   AnexoExcel : string;
   lContinua, lExiste, lEncuentra : boolean;
   cadena, campo      : string;
   Actividad, Anexo,
   AnexoAux, sValue,
   sFecha, TipoDato : string;
   CantidadDT       : double;
   dIdFecha         : tDate;
   //Datos
   DatosCadena : string;
   Cantidad, Costos : double;

   {Decalracion de Querys,,}
   zAnexo, zAnexoC, zPersonal : tUniquery;
begin

    ValidaAnexosPERxP := False;

    Fila     := 1;
    iColumna := 0;
    sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
    while sValue <> '' do
    begin
         sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
         if (sValue <> '') then
            Inc(iColumna);

         Fila := Fila + 1;
    end;

    if iColumna <> 5 then
    begin
        MessageDlG('El Archivo de Excel Seleccionado no Corresponde al Formato (Plantilla) para Importar el Anexo de '+dParamTipo, mtInformation, [mbOk], 0);
        ValidaAnexosPERxP := True;
        exit;
    end;

    zAnexo := tUniquery.Create(self);
    zAnexo.Connection := connection.uConnection;

    zAnexoC := tUniquery.Create(self);
    zAnexoC.Connection := connection.uConnection;

    zPersonal := tUniquery.Create(self);
    zPersonal.Connection := connection.uConnection;

    {Si se elige contrato de Excel o contrato actual..}
    if lContratoActual then
       Contrato := global_contrato
    else
       Contrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

    {Verificamos si existen anexos}
    zAnexo.Active := False;
    zAnexo.SQL.Clear;
    zAnexo.SQL.Add('select sAnexo from anexos');
    zAnexo.Open;

    {Verificamos si existen partidas en anexo C}
    zAnexoC.Active := False;
    zAnexoC.SQL.Clear;
    zAnexoC.SQL.Add('select sAnexo, sNumeroActividad from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and sTipoActividad = "Actividad"');
    zAnexoC.ParamByName('Contrato').AsString := Contrato;
    zAnexoC.ParamByName('Convenio').AsString := global_convenio;
    zAnexoC.Open;

    {Verificamos si existen el personal, equipo, material, basico, herramienta.}
    zPersonal.Active := False;
    zPersonal.SQL.Clear;
    zPersonal.SQL.Add('select '+dParamCampo+' from '+sParamTabla+' where sContrato =:Contrato ');
    zPersonal.ParamByName('Contrato').AsString := Contrato;
    zPersonal.Open;

    {Validaciones de Datos..}
    Fila       := 2;
    ContratoExcel  := global_contrato;
    lContinua := False;
    lExiste     := False;
    lContinua   := False;
    AnexoExcel  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;

    {Borramos Cuadro de Colores..}
    EliminaCuadro('G', 0);

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin
            lExiste := True;

            if contrato <> ContratoExcel then
               ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila)), 2, 'Contrato');

            {Validaciones de Campos..}
            Anexo       := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
            DatosCadena := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
            TipoDato    := 'Texto';
            Campo       := 'Id_'+dParamTipo;
            cadena      := 'D' ;
            Actividad   := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
            TipoDato    := 'Decimal';
            Campo       := 'Cantidad';
            cadena      := 'E' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            zAnexo.First;
            lEncuentra := False;
            {Buscamos las anexos..}
            while not zAnexo.Eof do
            begin
                if anexo = zAnexo.FieldValues['sAnexo'] then
                   lEncuentra := True;
                zAnexo.Next;
            end;

            if lEncuentra = False then
               ColoresErrorExcel('B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila)), 2, 'Anexo');

            zPersonal.First;
            lEncuentra := False;
            {Buscamos las personal..}
            while not zPersonal.Eof do
            begin
                if Actividad = zPersonal.FieldValues[dParamCampo] then
                   lEncuentra := True;
                zPersonal.Next;
            end;

            if lEncuentra = False then
               ColoresErrorExcel('D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila)), 2, dParamTipo);

            {Verificamos si existe las partidas en el anexo C}
            zAnexoC.First;
            lEncuentra := False;
            {Buscamos los partidas en Catalogo..}
            while not zAnexoC.Eof do
            begin
                if (anexo = zAnexoC.FieldValues['sAnexo']) and (DatosCadena = zAnexoC.FieldValues['sNumeroActividad']) then
                   lEncuentra := True;

                zAnexoC.Next;
                if lEncuentra  then
                   zAnexoC.Last;
            end;

            if lEncuentra = False then
               ColoresErrorExcel('C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila)), 2, 'Actividad');

        end;
        Fila := Fila + 1;
    end;
    CuadroColores ('G','H','I','L');

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
        ValidaAnexosPERxP := True;
        ExcelApplication1.UserControl       := False;
        ExcelApplication1.Interactive[flcid]:= True;
        ExcelApplication1.Disconnect;
    end;
    {Temrina Validacion contrato..}
end;

{$REGION 'ANEXO A (VALIDACION)'}

function TfrmImportaciondedatos.ValidaAnexosA(): boolean;
var
   Fila, iColumna : integer;
   Contrato, ContratoExcel,
   AnexoExcel : string;
   lContinua, lExiste, lEncuentra : boolean;
   cadena, Campo          : string;
   Actividad, Anexo, sValue,
   AnexoAux, TipoDato,
   grupo, plataforma : string;
   CantidadDT       : double;
   dIdFecha         : tDate;
   //Datos
   DatosCadena : string;
   Cantidad, Costos : double;
   {Decalracion de Querys,,}
   zGrupo, zPlataforma : tUniquery;

begin
    ValidaAnexosA := False;

     Fila     := 1;
     iColumna := 0;
     sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
     while sValue <> '' do
     begin
          sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
          if (sValue <> '') then
             Inc(iColumna);

          Fila := Fila + 1;
     end;

     if iColumna <> 5 then
     begin
         MessageDlG('El Archivo de Excel Seleccionado no Corresponde al Formato (Plantilla) para Importar el Anexo A.', mtInformation, [mbOk], 0);
         ValidaAnexosA := True;
         exit;
     end;

    zGrupo := tUniquery.Create(self);
    zGrupo.Connection := connection.uConnection;

    zPlataforma := tUniquery.Create(self);
    zPlataforma.Connection := connection.uConnection;

    {Verificamos si existen los grupos de isometricos}
    zGrupo.Active := False;
    zGrupo.SQL.Clear;
    zGrupo.SQL.Add('select sIdGrupo from gruposisometrico');
    zGrupo.Open;

    {Verificamos si existen plataformas}
    zPlataforma.Active := False;
    zPlataforma.SQL.Clear;
    zPlataforma.SQL.Add('select sIdPlataforma from plataformas ');
    zPlataforma.Open;

    {Validaciones de Datos..}
    Fila       := 2;
    ContratoExcel  := global_contrato;
    lContinua := False;
    lExiste     := False;
    lContinua   := False;
    AnexoExcel  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
    
    {Borramos Cuadro de Colores..}
    EliminaCuadro('G', 0);

    {Si se elige contrato de Excel o contrato actual..}
    if lContratoActual then
       Contrato := global_contrato
    else
       Contrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin
            lExiste := True;

            if contrato <> ContratoExcel then
               ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila)), 2, 'Contrato');

            {Validaciones de Campos..}
            TipoDato    := 'Texto';
            cadena      := 'B' ;
            Campo       := 'No. Plano';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            TipoDato    := 'Numero';
            cadena      := 'C' ;
            Campo       := 'Revision';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            grupo       := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
            plataforma  := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;

            zGrupo.First;
            lEncuentra := False;
            {Buscamos los grupos..}
            while not zGrupo.Eof do
            begin
                if grupo = zGrupo.FieldValues['sIdGrupo'] then
                   lEncuentra := True;
                zGrupo.Next;
            end;

            if lEncuentra = False then
               ColoresErrorExcel('D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila)), 2, 'Grupo');

            zPlataforma.First;
            lEncuentra := False;
            {Buscamos las plataformas..}
            while not zPlataforma.Eof do
            begin
                if plataforma = zPlataforma.FieldValues['sIdPlataforma'] then
                   lEncuentra := True;
                zPlataforma.Next;
            end;

            if lEncuentra = False then
               ColoresErrorExcel('E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila)), 2, 'Plataforma');
        end;

        Fila := Fila + 1;
    end;

    CuadroColores ('G','H','I','L');

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
        ValidaAnexosA := True;
        ExcelApplication1.UserControl       := False;
        ExcelApplication1.Interactive[flcid]:= True;
        ExcelApplication1.Disconnect;
    end;
    {Temrina Validacion contrato..}
end;

{$REGION 'ANEXO C (VALIDACION)'}

function TfrmImportaciondedatos.ValidaAnexosC( dParamAnexo : string): boolean;
var
   Fila, iColumna, Nivel, iDato : integer;
   Contrato, ContratoExcel,
   AnexoExcel : string;
   lContinua, lExiste, lEncuentra, lValidaAnexo  : boolean;
   campo, cadena, sValue, medida   : string;
   Actividad, Anexo,
   TipoDato,
   grupo, tipo       : string;
   dIdFecha          : tDate;
   //Datos
   DatosCadena, Frente, sConvenio : string;
   Cantidad, Costos    : double;
begin
    Application.ProcessMessages;
    ValidaAnexosC := False;
    lValidaAnexo  := False;
    //Validamos antes de reemplazar Anexo C..
     Fila     := 1;
     iColumna := 0;
     sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
     while sValue <> '' do
     begin
          sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
          if (sValue <> '') then
             Inc(iColumna);

          Fila := Fila + 1;
     end;

     if dParamAnexo = 'AnexoC' then
     begin
         if iColumna <> 15 then
         begin
             MessageDlG('El Archivo de Excel Seleccionado no Corresponde al Formato (Plantilla) para Importar el  Catalogo de Conceptos.', mtInformation, [mbOk], 0);
             ValidaAnexosC := True;
             lValidaAnexo  := True;
             exit;
         end;
     end
     else
     begin
         if iColumna <> 13 then
         begin
             MessageDlG('El Archivo de Excel Seleccionado no Corresponde al Formato (Plantilla) para Importar el Programa de Trabajo.', mtInformation, [mbOk], 0);
             ValidaAnexosC := True;
             lValidaAnexo  := True;
             exit;
         end;
     end;

    {Si se elige contrato de Excel o contrato actual..}
    if lContratoActual then
       Contrato := global_contrato
    else
       Contrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

    {Validaciones de Datos..}
    Fila       := 2;
    Contrato       := global_contrato;
    ContratoExcel  := global_contrato;
    lContinua      := False;
    lExiste        := False;
    AnexoExcel     := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;

    {Borramos Cuadro de Colores..}
    if dParamAnexo = 'AnexoC' then
       EliminaCuadro('R', 0)
    else
       EliminaCuadro('O', 0);

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin
            {Existen datos..}
            lExiste := True;

            if contrato <> ContratoExcel then
               ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila)), 2, 'Contrato');

            {Validaciones de Campos..}
            if dParamAnexo = 'AnexoC' then
            begin
                TipoDato    := 'Numero';
                Campo       := 'Nivel';
                cadena      := 'B' ;
                ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

                TipoDato    := 'Texto';
                Campo       := 'Actividad';
                cadena      := 'C' ;
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                Campo       := 'Descripcion';
                cadena      := 'E' ;
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                Campo       := 'Medida';
                cadena      := 'F' ;
                medida      := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                TipoDato    := 'Decimal';
                Campo       := 'Cantidad';
                cadena      := 'G' ;
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                cadena      := 'H' ;
                Campo       := 'Ponderado';
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                cadena      := 'I' ;
                Campo       := 'Precio MN';
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                cadena      := 'J' ;
                Campo       := 'Precio DLL';
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                TipoDato    := 'Fecha';
                Campo       := 'Fecha Inicio';
                cadena      := 'L' ;
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                Campo       := 'Fecha Final';
                cadena      := 'M' ;
                ValidaCampo( TipoDato, cadena, Fila, campo, true, 'L');

                grupo       := ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila))].Value2;
                Anexo       := ExcelWorksheet1.Range['N' + Trim(IntToStr(Fila)), 'N' + Trim(IntToStr(Fila))].Value2;

                TipoDato    := 'Texto';
                Campo       := 'Tipo(CC/PT)';
                cadena      := 'O' ;
                tipo        := ExcelWorksheet1.Range['O' + Trim(IntToStr(Fila)), 'O' + Trim(IntToStr(Fila))].Value2;
                if (trim(medida) = '')  and (trim(tipo) <> '')  then
                   ColoresErrorExcel(cadena + Trim(IntToStr(Fila)), cadena + Trim(IntToStr(Fila)), 2, 'TipoPaq');

                if (trim(medida) <> '') and (tipo <> 'CC') and (tipo <> 'PT')  then
                       ColoresErrorExcel(cadena + Trim(IntToStr(Fila)), cadena + Trim(IntToStr(Fila)), 2, 'Tipo');
            end
            else
            begin  {Frentes de trabajo o actividadesxorden..}
                sConvenio    := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;

                Frente    := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;

                TipoDato    := 'Numero';
                Campo       := 'Nivel';
                cadena      := 'D' ;
                ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

                TipoDato    := 'Texto';
                Campo       := 'Actividad';
                cadena      := 'E' ;
                ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

                Campo       := 'Descripcion';
                cadena      := 'F' ;
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                Campo       := 'Medida';
                cadena      := 'G' ;
                medida      := ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila)), 'G' + Trim(IntToStr(Fila))].Value2;
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                TipoDato    := 'Decimal';
                Campo       := 'Cantidad';
                cadena      := 'H' ;
                ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

                cadena      := 'I' ;
                Campo       := 'Ponderado';
                ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

                TipoDato    := 'Fecha';
                Campo       := 'Fecha Inicio';
                cadena      := 'J' ;
                ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

                cadena      := 'K' ;
                Campo       := 'Fecha Final';
                ValidaCampo(TipoDato, cadena, Fila, campo, True, 'J');

                Anexo       := ExcelWorksheet1.Range['M' + Trim(IntToStr(Fila)), 'M' + Trim(IntToStr(Fila))].Value2;
                TipoDato    := 'Texto';
                Campo       := 'Tipo(CC/PT)';
                cadena      := 'L' ;
                tipo        := ExcelWorksheet1.Range['L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila))].Value2;
                 if (trim(medida) = '')  and (trim(tipo) <> '')  then
                   ColoresErrorExcel(cadena + Trim(IntToStr(Fila)), cadena + Trim(IntToStr(Fila)), 2, 'TipoPaq');

                if  (trim(medida) <> '') and (tipo <> 'CC') and (tipo <> 'PT')  then
                   ColoresErrorExcel(cadena + Trim(IntToStr(Fila)), cadena + Trim(IntToStr(Fila)), 2, 'Tipo');
            end;

            if dParamAnexo = 'AnexoC' then
            begin
                {Buscamos las fases..}
                zFases.First;
                lEncuentra := False;
                while not zFases.Eof do
                begin
                    if grupo = zFases.FieldValues['sDescripcion'] then
                       lEncuentra := True;
                    zFases.Next;
                end;

                if (trim(medida) = '') and (trim(grupo) <> '') then
                   ColoresErrorExcel('K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila)), 2, 'FasePaq');

                if trim(medida) <> '' then
                   if lEncuentra = False then
                       ColoresErrorExcel('K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila)), 2, 'Fase');
            end
            else
            begin
                zSitio.First;
                lEncuentra := False;
                {Buscamos los frentes de trabajo..}
                while not zSitio.Eof do
                begin
                    if Frente = zSitio.FieldValues['sIdFolio'] then
                       lEncuentra := True;
                    zSitio.Next;
                end;

                if lEncuentra = False then
                   ColoresErrorExcel('C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila)), 2, 'Frente');
            end;

            zAnexo.First;
            lEncuentra := False;
            {Buscamos los anexos..}
            while not zAnexo.Eof do
            begin
                if Anexo = zAnexo.FieldValues['sDescripcion'] then
                   lEncuentra := True;
                zAnexo.Next;
            end;

            if lEncuentra = False then
            begin
                if dParamAnexo = 'AnexoC'  then
                   ColoresErrorExcel('N' + Trim(IntToStr(Fila)), 'N' + Trim(IntToStr(Fila)), 2, 'Anexo')
                else
                   ColoresErrorExcel('M' + Trim(IntToStr(Fila)), 'M' + Trim(IntToStr(Fila)), 2, 'Anexo')
            end;

        end;
        Fila := Fila + 1;
    end;

    iCountRegistrosBarra := Fila -1;

    if lExiste = False then
    begin
       MessageDlg('No se encontraron Datos para Importar!', mtInformation, [mbOk], 0);
       ValidaAnexosC := True;
       lValidaAnexo  := True;
    end;

     if lValidaAnexo = False then
      if PartidasRepetidas(dParamAnexo) then
         ValidaAnexosC := True;

    if dParamAnexo = 'AnexoC' then
       CuadroColores ('R','S','T','W')
    else
       CuadroColores ('O','P','Q','T');

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
       ValidaAnexosC := True;
       lValidaAnexo  := True;

       ExcelApplication1.UserControl       := False;
       ExcelApplication1.Interactive[flcid]:= True;
       ExcelApplication1.Disconnect;
    end;

    Fila := 2;
    lContinua := False;
    if dParamAnexo = 'AnexoC' then
       Nivel := StrToInt(ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2)
    else
       Nivel := StrToInt(ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2);

    if Nivel = 0 then
       lContinua := True;

    if lContinua = False then
    begin
        messageDLG('No se encontro en la Fila 2 el Nivel 0 del Paquete Principal en el Archivo de Excel.', mtInformation, [mbOk], 0);
        ValidaAnexosC := True;
        lValidaAnexo  := True;
    end;

    {Temrina Validacion inicial..}
end;

{$REGION 'VALIDACION DE PROVEEDORES'}

function TfrmImportaciondedatos.ValidaProveedor(): boolean;
var
   Fila, iColumna, Orden : integer;
   Contrato, ContratoExcel,
   AnexoExcel : string;
   lContinua, lExiste, lEncuentra : boolean;
   cadena, campo, sTipoPerEq   : string;
   Actividad, Anexo,
   AnexoAux, sValue,
   sFecha, TipoDato : string;

   //Datos
   DatosCadena : string;
   zqCiudad : tUniquery;
begin
    Fila     := 1;
    iColumna := 0;
    sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
    while sValue <> '' do
    begin
         sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
         if (sValue <> '') then
            Inc(iColumna);

         Fila := Fila + 1;
    end;

    if iColumna <> 6 then
    begin
        MessageDlG('El Archivo de Excel Seleccionado no Corresponde al Formato (Plantilla) para Importar el Catálogo de Proveeores ', mtInformation, [mbOk], 0);
        exit;
    end;

    zqCiudad := tUniquery.Create(self);
    zqCiudad.Connection := connection.uConnection;

    {Verificamos si existen los grupos en fasesxproyecto}
    zqCiudad.Active := False;
    zqCiudad.SQL.Clear;
    zqCiudad.SQL.Add('select c.IdCiudad, concat(c.FK_Ciudad,", ",e.Estado) as FK_Ciudad from master_ciudad c '+
                     'inner join master_estado e on (e.IdEstado = c.IdEstado)  ');
    zqCiudad.Open;

    {Validaciones de Datos..}
    Fila       := 2;
    ContratoExcel  := global_contrato;
    lContinua := False;
    lExiste     := False;
    lContinua   := True;

    {Borramos Cuadro de Colores..}
    EliminaCuadro('I', 0);

    {Si se elige contrato de Excel o contrato actual..}
    if lContratoActual then
       Contrato := global_contrato;

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
        sTipoPerEq     := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin
            lExiste := True;
            {Validaciones de Campos..}

            TipoDato    := 'Texto';
            Campo       := 'C.P.';
            cadena      := 'F' ;
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            zqCiudad.First;
            lEncuentra := False;
            {Buscamos los frentes de trabajo..}
            while not zqCiudad.Eof do
            begin
               if sTipoPerEq = zqCiudad.FieldValues['FK_Ciudad'] then
                  lEncuentra := True;
                zqCiudad.Next;
            end;

            if lEncuentra = False then
            begin
                ColoresErrorExcel('E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila)), 2, 'Ciudad');
            end;
        end;

        Fila := Fila + 1;
    end;
    CuadroColores ('J','K','L','M');

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
        ExcelApplication1.UserControl       := False;
        ExcelApplication1.Interactive[flcid]:= True;
        ExcelApplication1.Disconnect;
    end;
    {Temrina Validacion contrato..}
end;


{$REGION 'ELIMINA PERSONAL, EQUIPO, MATERIALES, HERRAMIENTAS, BASICOS (VALIDACION)'}

function TfrmImportaciondedatos.ValidaDeleteAnexosP(dParamTabla, dParamId, dParamBuscaTabla, dParamBuscaTabla2 : string): boolean;
var
   Fila : integer;
   Id, cadena, cadena2, sValue :string;
begin
    //Validaciones antes de insertar..
      ValidaDeleteAnexosP := False;
      Fila   := 2;
      sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
      while (sValue <> '') do
      begin
          {Validamos que los ids no se encuentren reportados...}
          Id := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

          if (dParamTabla <> 'basicos') and (dParamTabla <> 'herramientas') and (dParamTabla <> 'isometricos')then
          begin
              if dParamBuscaTabla = 'bitacorademateriales' then
                 dParamId := 'sIdMaterial';

              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('select '+dParamId+' from '+dParamBuscaTabla+' Where sContrato = :contrato and '+dParamId+' =:Id limit 1 ');
              Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              Connection.zCommand.Params.ParamByName('Contrato').Value    := Global_Contrato;
              Connection.zCommand.Params.ParamByName('Id').DataType       := ftString;
              Connection.zCommand.Params.ParamByName('Id').Value          := Id;
              connection.zCommand.Open;

              if connection.zCommand.RecordCount > 0 then
                 cadena := cadena + Id + ' , ';

              if dParamBuscaTabla = 'bitacorademateriales' then
                 dParamId := 'sIdInsumo';
          end;

          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('select '+dParamId+' from '+dParamBuscaTabla2+' Where sContrato = :contrato and '+dParamId+' =:Id limit 1 ');
          Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          Connection.zCommand.Params.ParamByName('Contrato').Value    := Global_Contrato;
          Connection.zCommand.Params.ParamByName('Id').DataType       := ftString;
          Connection.zCommand.Params.ParamByName('Id').Value          := Id;
          connection.zCommand.Open;

          if connection.zCommand.RecordCount > 0 then
             cadena2 := cadena2 + Id + ' , ';

          Fila := Fila + 1;
          sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
      end;

      if cadena <> '' then
      begin
         messageDLG('No se puede continuar, Existen Ids de '+dParamTabla+' Reportados. '+#13+'Id : '+ cadena, mtInformation, [mbOk], 0);
         ValidaDeleteAnexosP := True;
      end
      else
      if cadena2 <> '' then
      begin
         if dParamTabla <> 'isometricos' then
            messageDLG('No se puede continuar, Existen Ids de '+dParamTabla+' en Recursos por Partida. '+#13+'Id : '+ cadena2, mtInformation, [mbOk], 0)
         else
            messageDLG('No se puede continuar, Existen Ids de '+dParamTabla+' en Generadores de Obra. '+#13+'Id : '+ cadena2, mtInformation, [mbOk], 0);
         ValidaDeleteAnexosP := True;
      end
      else
      begin
          Fila := 2 ;
          if dParamTabla = 'isometricos' then
             dParamId := 'sIsometrico';

          sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
          while (sValue <> '') do
          begin
              Id := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
              // Se elimina el catalogo de Anexo
              try
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('DELETE FROM '+dParamTabla+' Where sContrato = :contrato and '+dParamId+' =:Id ');
                Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                Connection.zCommand.Params.ParamByName('Contrato').Value    := Global_Contrato;
                Connection.zCommand.Params.ParamByName('Id').DataType       := ftString;
                Connection.zCommand.Params.ParamByName('Id').Value          := Id;
                connection.zCommand.ExecSQL();
              except
                  on e : exception do begin
                     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Importación de Plantilla de Anexos', 'Al eliminar registro', 0);
                     ValidaDeleteAnexosP := True;
                     exit;
                  end;
              end;
              Fila := Fila + 1;
              sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
          end;
      end;
end;

{$REGION 'MENSAJES CODIGO COLORES'}

procedure TfrmImportaciondeDatos.ColoresErrorExcel(sFila: string; sColumna: string; iTipo: Integer; sMensaje: string);
var
    color : array[1..5] of integer;
begin
    color[1] := 2;  {Blanco}
    color[2] := 6;  {Amarillo}
    color[3] := 3;  {Rojo}
    color[4] := 5;  {Azul}
    color[5] := 6;  {no se}

    if (iTipo = 3) or (iTipo = 4) then
       ExcelApplication1.Range[sFila,sColumna].font.Color       := clWhite
    else
       ExcelApplication1.Range[sFila,sColumna].font.Color       := clBlack;
    ExcelApplication1.Range[sFila,sColumna].font.Name           := 'Arial';
    ExcelApplication1.Range[sFila,sColumna].Interior.ColorIndex := color[iTipo];

    {Llenamos los mensajes al Array..}
    if sMensaje = 'Contrato' then
       if pos('CONTRATOS NO PERMITIDOS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'CONTRATOS NO PERMITIDOS, ' ;

    if sMensaje = 'Actividad' then
       if pos('PARTIDAS NO ENCONTRADAS EN CATALOGO DE ANEXO C', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'PARTIDAS NO ENCONTRADAS EN CATALOGO DE ANEXO C, ';

    if sMensaje = 'DT' then
       if pos('PARTIDAS CON DISTRIBUCIONES DIFERENTES A LA CANTIDAD DE ANEXO', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'PARTIDAS CON DISTRIBUCIONES DIFERENTES A LA CANTIDAD DE ANEXO, ';

     if sMensaje = 'DMOEA' then
       if pos('RECURSOS CON DISTRIBUCIONES DIFERENTES A LA CANTIDAD TOTAL', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'RECURSOS CON DISTRIBUCIONES DIFERENTES A LA CANTIDAD TOTAL, ';

    if sMensaje = 'Grupo' then
       if pos('GRUPOS NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'GRUPOS NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

     if sMensaje = 'Plataforma' then
       if pos('PLATAFORMAS NO ENCONTRADAS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'PLATAFORMAS NO ENCONTRADAS EN CATALOGOS MAESTROS, ';

    if sMensaje = 'Tipo' then
       if pos('TIPOS NO PERMITIDOS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'TIPOS NO PERMITIDOS, ';

    if sMensaje = 'TipoMaterial' then
       if pos('TIPOS DE  MATERIAL NO PERMITIDO EN SEGUMIENTO DE PROYECTO', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'TIPOS DE  MATERIAL NO PERMITIDO EN SEGUMIENTO DE PROYECTO, ';

    if sMensaje = 'TipoPersonal' then
       if pos('IDS TIPOS DE PERSONAL NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS TIPOS DE PERSONAL NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

    if sMensaje = 'TipoEquipo' then
       if pos('IDS TIPOS DE EQUIPO NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS TIPOS DE EQUIPO NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

    if sMensaje = 'Anexo' then
       if pos('ANEXOS NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'ANEXOS NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

    if sMensaje = 'Frente' then
       if pos('FRENTES NO ENCONTRADOS CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'FRENTES NO ENCONTRADOS CATALOGOS MAESTROS, ';

    if sMensaje = 'Fase' then
       if pos('FASES NO ENCONTRADAS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'FASES NO ENCONTRADAS EN CATALOGOS MAESTROS, ';

    if sMensaje = 'FasePaq' then
       if pos('PAQUETES CON FASES PROYECTO ASIGNADAS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'PAQUETES CON FASES PROYECTO ASIGNADAS, ';

    if sMensaje = 'Iguales' then
       if pos('PARTIDAS O PAQUETES DUPLICADOS', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'PARTIDAS O PAQUETES DUPLICADOS, ';

     if sMensaje = 'Ciudad' then
       if pos('CIUDADES NO ENCONTADAS EN CATALOGO', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'CIUDADES NO ENCONTADAS EN CATALOGO, ';

    {Cantidades..}
    if sMensaje = 'dNulo' then
       if pos('CANTIDADES NULL', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'CANTIDADES NULL, ';

    if sMensaje = 'dIncorrecto' then
       if pos('CANTIDADES INCORRECTAS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'CANTIDADES INCORRECTAS, ';

    if sMensaje = 'dNegativo' then
       if pos('CANTIDADES NEGATIVAS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'CANTIDADES NEGATIVAS, ';

    if sMensaje = 'Jornada' then
       if pos('JORNADAS MAYORES A 24', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'JORNADAS MAYORES A 24, ';

    {Textos..}
    if sMensaje = 'tNulo' then
       if pos('TEXTOS NULL', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'TEXTOS NULL, ';

    if sMensaje = 'tMedidaError' then
       if pos('UNIDADES DE MEDIDA INCORRECTAS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'UNIDADES DE MEDIDA INCORRECTAS, ';

    {Numeros..}
    if sMensaje = 'nNulo' then
       if pos('NUMEROS NULL', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'NUMEROS NULL, ';

    if sMensaje = 'nIncorrecto' then
       if pos('NUMEROS INCORRECTOS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'NUMEROS INCORRECTOS, ';

    if sMensaje = 'nNegativo' then
       if pos('NUMEROS ENTEROS NEGATIVOS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'NUMEROS ENTEROS NEGATIVOS, ';

    if sMensaje = 'nNivel' then
       if pos('SALTO DE NIVELES NO PERMITIDOS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'SALTO DE NIVELES NO PERMITIDOS, ';

    if sMensaje = 'nDecimal' then
       if pos('CANTIDADES DECIMALES EN NUMEROS ENTEROS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'CANTIDADES DECIMALES EN NUMEROS ENTEROS, ';

    if sMensaje = 'Alcances' then
       if pos('SUMATORIA DE ALCANCES POR PARTIDA NO PERMITIDA (DIFERENTE AL 100%)', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'SUMATORIA DE ALCANCES POR PARTIDA NO PERMITIDA (DIFERENTE AL 100%), ';

    {Fechas..}
    if sMensaje = 'fNulo' then
       if pos('FECHAS NULL', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'FECHAS NULL, ';

    if sMensaje = 'fIncorrecto' then
       if pos('FECHAS INCORRECTAS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'FECHAS INCORRECTAS, ';

    if sMensaje = 'fMenores' then
       if pos('FECHAS DE TERMINO MENORES A FECHAS DE INICIO', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'FECHAS DE TERMINO MENORES A FECHAS DE INICIO, ';

    if sMensaje = 'dtFechaMayor' then
       if pos('FECHAS FUERA DEL RANGO DEL CONTRATO', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'FECHAS FUERA DEL RANGO DEL CONTRATO, ';

    {Insumos..}
    if sMensaje = 'Personal' then
       if pos('IDS DE PERSONAL NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS DE PERSONAL NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

    if sMensaje = 'Equipo' then
       if pos('IDS DE EQUIPO NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS DE EQUIPO NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

    if (sMensaje = 'Insumo') or (sMensaje = 'Material') then
       if pos('IDS DE MATERIAL NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS DE MATERIAL NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

    if sMensaje = 'Herramienta' then
       if pos('IDS DE HERRAMIENTA NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS DE HERRAMIENTA NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

   if sMensaje = 'Basico' then
       if pos('IDS DE BASICO NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS DE BASICO NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

   if sMensaje = 'Proveedor' then
       if pos('IDS DE PROVEEDOR NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS DE PROVEEDOR NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

   if sMensaje = 'Familia' then
       if pos('IDS DE FAMILIA NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS DE FAMILIA NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

   if sMensaje = 'Almacen' then
       if pos('IDS DE ALMACEN NO ENCONTRADOS EN CATALOGO', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS DE ALMACEN NO ENCONTRADOS EN CATALOGOS, ';


end;

{$REGION 'CUADRO CODIGO COLORES'}

procedure TfrmImportaciondeDatos.CuadroColores(sCodigoC1: string; sCodigoC2: string; sErrorC1: string; sErrorC2: string);
var
   Ren : integer;
begin
    {Creacion cuadro colores}
    if (CodigoColor[2] <> '') or (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
        {Encabezados}
        ExcelApplication1.Range[sErrorC2+'5' ,sErrorC2+'5'].value              := '';
        ExcelApplication1.Range[sErrorC1+'5' ,sErrorC1+'5'].value              := '';
        {Textos}
        ExcelApplication1.Range[sErrorC1+'6' ,sErrorC1+'6'].value              := '';
        ExcelApplication1.Range[sErrorC1+'11',sErrorC1+'11'].value             := '';
        ExcelApplication1.Range[sErrorC1+'16',sErrorC1+'16'].value             := '';
        {Titulos}
        ExcelApplication1.Range[sCodigoC1+'5',sCodigoC1+'5'].ColumnWidth       := 8.57;
        ExcelApplication1.Range[sCodigoC2+'5',sCodigoC2+'5'].ColumnWidth       := 7.45;
        ExcelApplication1.Range[sErrorC1+'5' ,sErrorC2+'5'].ColumnWidth        := 10;
        ExcelApplication1.Range[sCodigoC1+'5',sCodigoC1+'5'].Value               := 'CODIGO COLORES';
        ExcelApplication1.Range[sCodigoC1+'5',sCodigoC2+'5'].MergeCells          := True;
        ExcelApplication1.Range[sCodigoC1+'5',sCodigoC2+'5'].WrapText            := True;
        ExcelApplication1.Range[sCodigoC1+'5',sCodigoC2+'5'].font.Color          := clWhite;
        ExcelApplication1.Range[sCodigoC1+'5',sCodigoC2+'5'].font.Name           := 'Calibri';
        ExcelApplication1.Range[sCodigoC1+'5',sCodigoC2+'5'].font.Size           := 11;
        ExcelApplication1.Range[sCodigoC1+'5',sCodigoC2+'5'].Interior.ColorIndex := 56;

        ExcelApplication1.Range[sErrorC1+'5',sErrorC1+'5'].Value               := 'ERRORES ENCONTRADOS';
        ExcelApplication1.Range[sErrorC1+'5',sErrorC2+'5'].font.Color          := clWhite;
        ExcelApplication1.Range[sErrorC1+'5',sErrorC2+'5'].MergeCells          := True;
        ExcelApplication1.Range[sErrorC1+'5',sErrorC2+'5'].VerticalAlignment   := xlHAlignCenter;
        ExcelApplication1.Range[sErrorC1+'5',sErrorC2+'5'].HorizontalAlignment := xlHAlignCenter;
        ExcelApplication1.Range[sErrorC1+'5',sErrorC2+'5'].WrapText            := True;
        ExcelApplication1.Range[sErrorC1+'5',sErrorC2+'5'].Interior.ColorIndex := 56;
        ExcelApplication1.Range[sCodigoC1+'5',sErrorC2+'5'].borders.LineStyle  := 1;

        Ren := 1;
        if CodigoColor[2] <> ''then
        begin
             Ren := 6;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren)].Interior.ColorIndex     := 6;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren)].MergeCells              := True;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren + 1) ,sCodigoC2+ IntToStr(Ren + 4)].MergeCells      := True;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren + 4)].borders.LineStyle   := 1;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].WrapText            := True;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].VerticalAlignment   := xlHAlignCenter;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].HorizontalAlignment := xlHAlignCenter;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC1+ IntToStr(Ren )].Value                  := CodigoColor[2];
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].MergeCells          := True;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].borders.LineStyle   := 1;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].Interior.ColorIndex := 15;
        end;

        if CodigoColor[3] <> ''then
        begin
             Ren := Ren + 5;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren)].Interior.ColorIndex     := 3;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren)].MergeCells              := True;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren + 1) ,sCodigoC2+ IntToStr(Ren + 4)].MergeCells      := True;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren + 4)].borders.LineStyle   := 1;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].WrapText            := True;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].VerticalAlignment   := xlHAlignCenter;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].HorizontalAlignment := xlHAlignCenter;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC1+ IntToStr(Ren)].Value                   := CodigoColor[3];
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].MergeCells          := True;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].borders.LineStyle   := 1;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].Interior.ColorIndex := 15;
        end;

        if CodigoColor[4] <> ''then
        begin
             Ren := Ren + 5;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren)].Interior.ColorIndex     := 5;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren)].MergeCells              := True;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren + 1) ,sCodigoC2+ IntToStr(Ren + 4)].MergeCells      := True;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren + 4)].borders.LineStyle   := 1;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].WrapText            := True;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].VerticalAlignment   := xlHAlignCenter;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].HorizontalAlignment := xlHAlignCenter;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC1+ IntToStr(Ren)].Value                   := CodigoColor[4];
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].MergeCells          := True;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].borders.LineStyle   := 1;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].Interior.ColorIndex := 15;
        end;
        messageDLG('Se encontraton Datos Erróneos en la Plantilla de Excel!', mtWarning, [mbOk], 0);
    end;
end;

procedure TfrmImportaciondeDatos.cxOpcionPropertiesChange(Sender: TObject);
begin

end;

{$REGION 'VALIDA TIPOS DE DATOS (TEXTOS, NUMEROS, FECHAS)'}

procedure TfrmImportaciondeDatos.ValidaCampo(sTipo: string; Columna: string; fila: Integer; Campo: string; lFechas: Boolean; sColAnt: string);
var
   Nivel, iDato, i : integer;
   Actividad, Cadena,
   AnexoAux, TipoDato,
   grupo, tipo, frente,
   sValor, sAux, sNivel : string;
   dIdFecha, dIdFechaF  : tDate;
   Cantidad, Costos     : double;
begin
    try
       if sTipo = 'Numero' then
       begin
           iDato := 3;
           {Datos vacios..}
           try
              cadena := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
              if (trim(Cadena) = '') or (Cadena = 'Null') then
              begin
                 sValor := 'nNulo';
                 ExcelApplication1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].value := 'Null';

                 raise exception.Create('-Excepcion por espacio en blanco..');
              end;
           Except
           end;
           sValor := 'nIncorrecto';
           Nivel    := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
           Cantidad := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
           if Nivel < 0 then
           begin
               sValor := 'nNegativo';
               raise exception.Create('-Excepcion por numero negativo..');
           end;

           if campo = 'Nivel' then
           begin
              if (Cantidad - Nivel) > 0 then
              begin
                  sValor := 'nDecimal';
                  raise exception.Create('-Excepcion por numero decimal..');
              end;
              {Validacion de niveles con valores muy altos..}
              if pos(IntToStr(Nivel)+',',sDatoNivel) = 0 then
              begin
                   sAux := sDatoNivel;
                   while (sAux <> '') do
                   begin
                       sNivel := copy(sAux,0,pos(',',sAux) - 1);
                       sAux   := copy(sAux,pos(',',sAux) + 1, length(sAux));
                   end;

                   if sDatoNivel <> '' then
                      if (Nivel - StrToInt(sNivel)) >= 2   then
                      begin
                          sValor     := 'nNivel';
                          sDatoNivel := sDatoNivel + IntToStr(Nivel)+ ',';
                          raise exception.Create('-Excepcion por nivel alto..');
                      end;

                   sDatoNivel := sDatoNivel + IntToStr(Nivel)+ ',';
              end;
           end;
       end;

       if sTipo = 'Texto' then
       begin
           iDato := 2;
           if campo = 'Medida' then
           begin
               try
                   sValor := 'tMedidaError';
                   Nivel := StrToInt(ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2);
                   if (Nivel < 0) or (Nivel >= 0) then
                   begin
                      sValor := 'tMedidaError';
                      ColoresErrorExcel(columna + Trim(IntToStr(fila)), columna + Trim(IntToStr(fila)), iDato, sValor);
                   end;
               Except
                   //No hace nada.. es correcta la uniad de medida..
               end;
           end
           else
           begin
               Actividad := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
               if (trim(Actividad) = '') or (Actividad = 'Null') then
               begin
                   sValor := 'tNulo';
                   ExcelApplication1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].value := 'Null';
                   raise exception.Create('-Excepcion por espacio en blanco..');
               end;
           end;
       end;

       if sTipo = 'Decimal' then
       begin
           iDato := 3;
           {Datos vacios..}
           try
              sValor := 'dIncorrecto';
              cadena := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
              if (trim(Cadena) = '') or (Cadena = 'Null') then
              begin
                  sValor := 'dNulo';
                  ExcelApplication1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].value := 'Null';
                  raise exception.Create('-Excepcion por espacio en blanco..');
              end;
           Except
           end;
           Cantidad  := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
           if Cantidad < 0 then
           begin
               sValor := 'dNegativo';
               raise exception.Create('-Excepcion por cantidades negativas..');
           end;
       end;

       if sTipo = 'Fecha' then
       begin
           iDato := 4;
           {Datos vacios..}
           try
              sValor := 'fIncorrecto';
              cadena := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
              if (trim(Cadena) = '') or (Cadena = 'Null') then
              begin
                 sValor := 'fNulo';
                 ExcelApplication1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].value := 'Null';
                 raise exception.Create('-Excepcion por espacio en blanco..');
              end;
           Except
           end;
           dIdFecha  := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
           if dIdFecha = 0 then
           begin
              sValor := 'fIncorrecto';
              raise exception.Create('-Excepcion por fechas nulas..');
           end;

           if lFechas then
           begin
              dIdFecha := ExcelWorksheet1.Range[sColAnt + Trim(IntToStr(Fila)), sColAnt + Trim(IntToStr(Fila))].Value2;
              if dIdFecha = 0 then
                 raise exception.Create('-Excepcion por fechas nulas..');

              dIdFechaF := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
              if dIdFechaF = 0 then
                 raise exception.Create('-Excepcion por fechas nulas..');

              {Validando fechas Finales menores a las de incio..}
              if dIdFechaF < dIdFecha then
              begin
                  sValor := 'fMenores';
                  ColoresErrorExcel(sColAnt + Trim(IntToStr(fila)), sColAnt + Trim(IntToStr(fila)), iDato, sValor);
                  ColoresErrorExcel(columna + Trim(IntToStr(fila)), columna + Trim(IntToStr(fila)), iDato, sValor);
              end;
           end;
       end;
    Except
         ColoresErrorExcel(columna + Trim(IntToStr(fila)), columna + Trim(IntToStr(fila)), iDato, sValor);
    end;
end;

{$REGION 'ELIMINA CUADRO COLORES'}

procedure TfrmImportaciondeDatos.EliminaCuadro(sPosicion: string; iIndice: Integer);
var
    cadena : string;
begin
    if iIndice = 0 then
       cadena := 'Z'
    else
       cadena := columnas[iIndice + 20];
    {Para no confundir al usuario ponemos todas las celdas en blanco...}
    ExcelApplication1.Range['A2',cadena+'10000'].Interior.ColorIndex := 2;
    ExcelApplication1.Range['A2',cadena+'10000'].font.Color          := clBlack;
    ExcelApplication1.Range['A2',cadena+'10000'].MergeCells          := False;
    {Quitamos todas las propiedades y datos..}
    ExcelApplication1.Range[sPosicion+'2',cadena+'10000'].borders.LineStyle   := 0;
    ExcelApplication1.Range[sPosicion+'2',cadena+'10000'].value      := '';
    sDatoNivel := '';
end;

procedure TfrmImportaciondeDatos.ConstruyeExplosion;
Var
  CadError, OrdenVigencia: String;
//////////////////////////////////// GENERA PROGRAMA DE TRABAJO //////////////////
Function GenerarPlantilla: Boolean;
Var
  Resultado: Boolean;

Procedure DatosPlantilla;
Var
  CadFecha, tmpNombre, cadena : String;
  fs: tStream;
  Alto : Extended;
  Ren, nivel, i : integer;
  TotalProgreso : real;
Begin
    Ren := 2;

      Excel.ActiveWindow.Zoom := 100;

      Excel.Columns['A:F'].ColumnWidth := 20;

      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Actividad';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Clave';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Unidad';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Tipo';
      FormatoEncabezado;

      i := 1;
      while i < registro do begin
        if (recursos[i,3] <> '') OR (recursos[i,1] <> '') then begin
           Hoja.Cells[Ren,1].Select;
           Excel.Selection.Value := recursos[i,1];
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment   := xlCenter;

           Hoja.Cells[Ren,2].Select;
           Excel.Selection.Value := recursos[i,2];
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment   := xlCenter;

           Hoja.Cells[Ren,3].Select;
           Excel.Selection.Value := recursos[i,3];
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment   := xlCenter;

           Hoja.Cells[Ren,4].Select;
           Excel.Selection.Value := recursos[i,4];
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment   := xlCenter;

           Hoja.Cells[Ren,5].Select;
           Excel.Selection.Value := recursos[i,5];
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment   := xlCenter;

           Hoja.Cells[Ren,6].Select;
           Excel.Selection.Value := recursos[i,6];
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment   := xlCenter;
           inc(Ren);
        end;
           inc(i);
           BarraProgresoAvance(Progreso, 0,Registro,1);
      end;
End;

Begin
  Resultado := True;
  Try
    Hoja := Libro.Sheets[1];
    Hoja.Select;
    try
       Hoja.Name := 'EXPLOSION DE INSUMOS ';
    Except
       Hoja.Name := 'EXPLOSION DE INSUMOS ';
    end;
    Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
    DatosPlantilla;
  Except
    on e:exception do
    Begin
       Resultado := False;
       CadError := 'Se ha producido el siguiente error al Generar el Programa de Trabajo:' + #10 + #10 + e.Message;
    End;
  End;

  Result := Resultado;
End;

begin
    // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
    If Not SaveDialog1.Execute Then
       Exit;

    // Generar el ambiente de excel
    try                                                   
      Excel := CreateOleObject('Excel.Application');
    except
       FreeAndNil(Excel);
       showmessage('No es posible generar el ambiente de EXCEL, informe de esto al administrador del sistema.');
       Exit;
    end;

    If MessageDlg('Deseas visualizar el diseño del Archivo de Excel?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        Excel.Visible        := True;
        Excel.DisplayAlerts  := False;
        Excel.ScreenUpdating := True;
    end
    else
    begin
        Excel.Visible        := True;
        Excel.DisplayAlerts  := False;
        Excel.ScreenUpdating := False;
    end;

    Libro := Excel.Workbooks.Add;    // Crear el libro sobre el que se ha de trabajar

    // Verificar si cuenta con las hojas necesarias
    while Libro.Sheets.Count < 2 do
      Libro.Sheets.Add;

    // Verificar si se pasa de hojas necesarias
    Libro.Sheets[1].Select;
    while Libro.Sheets.Count > 1 do
      Excel.ActiveWindow.SelectedSheets.Delete;

    // Proceder a generar la hoja REPORTE
    CadError := '';

    if GenerarPlantilla then
    begin
        // Grabar el archivo de excel con el nombre dado
        messageDlg('El Archivo se generó Correctamente!' , mtInformation, [mbOk], 0) ;
    end;

    Excel := '';

    if CadError <> '' then
       showmessage(CadError);
end;

{$REGION 'PARTIDAS IGUALES'}
function TfrmImportaciondedatos.PartidasRepetidas(sParamTipo : string) : boolean;
var
   i, t, fila, iNivel, x : integer;
   sValue, ImpsContrato, ImpsNumeroActividad,
   ImpsMedida, ImpsAnexo, sTipo, sWbs, ImpsWbsAnterior   : string;
   paquete    : array[1..3000,1..3 ] of String;
   lActualiza : boolean;
begin
    //Creamos la tabla temporal.
    PartidasRepetidas := False;
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('CREATE TEMPORARY TABLE IF NOT EXISTS `actividadesxanexo_temp` ( '+
                                '`sContrato` VARCHAR(15) COLLATE latin1_swedish_ci NOT NULL DEFAULT "" COMMENT "Contrato", '+
                                '`sIdConvenio` VARCHAR(5) COLLATE latin1_swedish_ci NOT NULL DEFAULT "" COMMENT "Convenio", '+
                                '`sWbs` VARCHAR(100) COLLATE latin1_swedish_ci NOT NULL DEFAULT "" COMMENT "sWbs", '+
                                '`sNumeroActividad` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT "" COMMENT "Numero de Actividad", '+
                                '`sTipoActividad` ENUM("Paquete","Actividad") NOT NULL DEFAULT "Actividad" COMMENT "Tipo de Actividad", '+
                                'PRIMARY KEY (`sContrato`, `sIdConvenio`, `sWbs`, `sNumeroActividad`, `sTipoActividad`), '+
                                'KEY `actividadesxanexo_fk` (`sIdConvenio`), '+
                                'KEY `sContrato` (`sContrato`, `sWbs`), '+
                                'KEY `sContrato_2` (`sContrato`, `sIdConvenio`, `sWbs`), '+
                                'KEY `sContrato_3` (`sContrato`, `sWbs`, `sNumeroActividad`) '+
                                ')ENGINE=InnoDB '+
                                'CHARACTER SET "latin1" COLLATE "latin1_swedish_ci" '+
                                'COMMENT="Actividades x Anexo"');
    connection.QryBusca.ExecSQL;

    BarraMostrar(True,progreso, LabelProceso);
    I := 0;
    t := 1;
    Fila := 2;
    sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

    //Recorremos el archivo de Excel
    while (sValue <> '') do
    begin

        ImpsContrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        inc(I);
        If sParamTipo = 'AnexoC' then
        begin
            iNivel              := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
            ImpsNumeroActividad := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
            ImpsMedida          := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
            ImpsAnexo           := ExcelWorksheet1.Range['N' + Trim(IntToStr(Fila)), 'N' + Trim(IntToStr(Fila))].Value2;
            zAnexo.Locate('sAnexo', ImpsAnexo, [loCaseInsensitive]);
            ImpsAnexo           := zAnexo.FieldByName('sAnexo').AsString;
        end
        else
        begin
            iNivel              := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
            ImpsNumeroActividad := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;
            ImpsMedida          := ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila)), 'G' + Trim(IntToStr(Fila))].Value2;
            ImpsAnexo           := ExcelWorksheet1.Range['M' + Trim(IntToStr(Fila)), 'M' + Trim(IntToStr(Fila))].Value2;
            zAnexo.Locate('sAnexo', ImpsAnexo, [loCaseInsensitive]);
            ImpsAnexo           := zAnexo.FieldByName('sAnexo').AsString;
        end;

        if Trim(ImpsMedida) = '' then
           sTipo := 'Paquete'
        else
           sTipo := 'Actividad' ;

        sWbs := '';
        if iNivel <> 0 then
        begin
            for x := 1 to t - 1 do
            begin
                if iNivel - 1 >= strToint(paquete[x][1]) then
                begin
                    if (sTipo = 'Actividad') and (ImpsAnexo <> '') then
                       sWbs := paquete[x][2] + '.' + ImpsAnexo + '.'
                    else
                       sWbs := paquete[x][2] + '.' ;
                    ImpsWbsAnterior := paquete[x][2];
                end;
            end;
            sWbs := sWbs + ImpsNumeroActividad;
        end
        else
        begin
            ImpsWbsAnterior := '';
            sWbs            :=  ImpsNumeroActividad;
        end;

        if  sTipo = 'Paquete' then
        begin
            paquete[t][1] := inttostr(iNivel);
            paquete[t][2] := sWbs;
            t := t + 1 ;
        end;

        //Intentamos insertar registros,,
        try
            connection.zCommand.Active := False;
            Connection.zCommand.SQL.Clear;
            Connection.zCommand.SQL.Add('INSERT INTO actividadesxanexo_temp ( sContrato, sIdConvenio, sTipoActividad, sWbs, sNumeroActividad) ' +
                                        'VALUES (:contrato, :convenio, :tipo, :wbs, :actividad)');
            Connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
            Connection.zCommand.Params.ParamByName('contrato').value       := ImpsContrato;
            Connection.zCommand.Params.ParamByName('convenio').DataType    := ftString;
            Connection.zCommand.Params.ParamByName('convenio').value       := Global_Convenio;
            Connection.zCommand.Params.ParamByName('tipo').DataType        := ftString;

            if Trim(ImpsMedida) = '' then
               Connection.zCommand.Params.ParamByName('tipo').value        := 'Paquete'
            else
               Connection.zCommand.Params.ParamByName('tipo').value        := 'Actividad';
            Connection.zCommand.Params.ParamByName('wbs').DataType         := ftString;

            if Trim(ImpsWbsAnterior) <> '' then
               Connection.zCommand.Params.ParamByName('wbs').value         := sWbs
            else
               Connection.zCommand.Params.ParamByName('wbs').value         := Trim(ImpsNumeroActividad);

            Connection.zCommand.Params.ParamByName('actividad').DataType   := ftString;
            Connection.zCommand.Params.ParamByName('actividad').value      := Trim(ImpsNumeroActividad);
            connection.zCommand.ExecSQL;
        Except
             lActualiza := False;
             If sParamTipo = 'AnexoC' then
                ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'O' + Trim(IntToStr(Fila)), 2, 'Iguales')
             else
                ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila)), 2, 'Iguales');
             PartidasRepetidas := True;
        end;

       fila := fila + 1 ;
       sValue := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2);

       BarraProgresoAvance(progreso,0,100, iCountRegistrosBarra/100);
    end;

    //Finalmente borramos la información..
    connection.zCommand.Active := False;
    Connection.zCommand.SQL.Clear;
    Connection.zCommand.SQL.Add('delete from actividadesxanexo_temp where sContrato =:Contrato and sIdConvenio =:Convenio ');
    Connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
    Connection.zCommand.Params.ParamByName('contrato').value       := ImpsContrato;
    Connection.zCommand.Params.ParamByName('convenio').DataType    := ftString;
    Connection.zCommand.Params.ParamByName('convenio').value       := Global_Convenio;
    connection.zCommand.ExecSQL;
    BarraMostrar(False,progreso, LabelProceso);
end;


Procedure TfrmImportaciondedatos.ImportOTProject(sFileProject:TFileName;PgbAvance: TProgressBar=nil);
(***********************************************************************************
* Programador : Gamael Hdez Huerta                                                 *
* Proposito   : Funcion para Importar un Programa de Trabajo hecho en Ms Project.  *
*                                                                                  *
* Información Tecnica:                                                             *
*                                                                                  *
*            Task.Summary  Este es el resumen, me indica si es paquete o Actividad *
*            Task.Name     Es la Descripcion de la Actividad                       *
*            Task.start    Me da la fecha de Inicio de la Actividad                *
*            Task.Finish   Me da la fecha de Termino de la Actividad               *
*            Task.wbs      Este trae el Valor Wbs del Project, editable en el mismo*
*            Task.outlinelevel  El Nivel de la Actividad                           *
*            Task.outlineNumber Este es similar al wbs solo que no es editable     *
*      En el Task.text(x) se define el No. de Partida y el Ponderado               *
*                                                                                  *
*      Se Utiliza un Nuevo algoritmo de Ordenamiento.                              *
*      GetITemOrden   de la Unidad  UFunctionsGHH.pas                              *
*                                                                                  *
* Fecha: 01-Sept-2014                                                              *
*                                                                                  *
*                                                                                  *
*                                                                                  *
************************************************************************************)
var
  MsProject:Variant;
  ActProject:Variant;
  Task:Variant;
  error:Boolean;
  reng,Col,x:Integer;
  Resumen:String;
  Descripcion:String;
  wbs:String;
  CadTmp:String;
  iPos:Integer;

  ImpsContrato,
  ImpsConvenio,
  ImpsNumeroOrden,
  ImpsNumeroActividad,
  ImpdPonderado,
  ImpsMedida,
  sTipo,
  ImpsTipo,
  ImpsWbsAnterior,
  ImpsWbsContrato,
  ImpdVentaMN,
  ImpdVentaDLL,
  sWbs,
  CodErr1,
  CodErr2,
  sSQL,
  ImpiItemOrden,
  ImpsActAnterior,
  ValidaMat,
  MaterialAuto, cadena:String;
  iNivel: Byte;

  ImpmDescripcion: WideString;
  ImpdCantidadAnexo:double;

  ImpdFechaInicio,
  ImpdFechaFinal:TDateTime;

  SobreTodos: Boolean;
  Resp,
  BotonSelec: Integer;

  TmpiItemOrden:String;
  PosPda,PosPonderado, PosMedida, PosVolumen, PosNivel :Byte;
begin
  Error:=false;
  if FileExists(sFileProject) then
  begin
    if AnsiEndsText('.mpp',sFileProject) then
    begin
      try
        try
          try
            MsProject:=GetActiveOLEObject ('MSProject.Application');
          except
            MsProject:=CreateOleObject ('MSProject.Application');
          end;
        except
          Error:=true;
        end;

        if not error then
        begin

          Application.CreateForm(TFrmPopUpImportacionPP,FrmPopUpImportacionPP);
          FrmPopUpImportacionPP.Left := trunc((Screen.Width) / 2) - trunc((FrmPopUpImportacionPP.Width) / 2);
          FrmPopUpImportacionPP.Top := trunc((screen.Height) / 2) - trunc((FrmPopUpImportacionPP.Height) / 2);
          FrmPopUpImportacionPP.Caption := ' Importacion Puntos de Programa (Ms Project)';
          try
            if FrmPopUpImportacionPP.ShowModal=mrOK then
            begin
              ImpsContrato := global_contrato;
              FrmPopUpImportacionPP.QrFolios.Locate('sIdFolio', FrmPopUpImportacionPP.cxFolioPrograma.Text, [loCaseInsensitive]);
              ImpsNumeroOrden:=  FrmPopUpImportacionPP.QrFolios.FieldByName('sNumeroOrden').AsString;
              ImpmDescripcion:=  FrmPopUpImportacionPP.QrFolios.FieldByName('mDescripcion').AsString;
              ImpsConvenio   :=  FrmPopUpImportacionPP.QrFolios.FieldByName('sIdConvenio').AsString;;
              if ImpsConvenio = '' then
                 ImpsConvenio := 'P-01';
              PosPda:=FrmPopUpImportacionPP.cxPartida.ItemIndex;
              PosPonderado:=FrmPopUpImportacionPP.cxPonderado.ItemIndex;
              PosMedida:=FrmPopUpImportacionPP.cxMedida.ItemIndex;
              PosVolumen:=FrmPopUpImportacionPP.cxVolumen.ItemIndex;
            end
            else
              error:=true;
          finally
            FrmPopUpImportacionPP.Destroy;
          end;


          if not error then
          begin
              BarraMostrar(True,progreso, LabelProceso);
             {Ahora llamamos la funcion que verifica si se puede eliminar programa..}
             if BuscaAntesEliminar_datos(1,'actividadesxorden,ordenesdetrabajo,convenios,ordenesxusuario,reportediario', 'sContrato', 'sNumeroOrden', 'sWbs', '', global_contrato, ImpsNumeroOrden,'A.%', '',
                'el Programa de Trabajo', True, progreso) then
             begin
                 BarraMostrar(False,progreso, LabelProceso);
                 exit;
             end
             else
              //Sino se encontraron datos se procede a eliminar..
              chkBorrar.Checked := True;

            if chkBorrar.Checked then
            begin
                {procedure BuscaElimina_datos(sParamTabla, sLlevaContrato, sLlevaFolio, sLlevaWbs, sLLevaAct, sParamContrato, sParamFolio, sParamWbs, sParamPlazo, sParamNuevoContrato, sParamNuevoFolio, sParamNuevaWbs, sParamNuevaAct : string; accion :string);}
                BuscaElimina_datos(1,'ordenesdetrabajo,convenios,ordenesxusuario', 'sContrato', 'sNumeroOrden', 'sWbs', 'sIdConvenio', global_contrato, ImpsNumeroOrden, '%', ImpsConvenio, '', '', '', '', 'borrar', False, progreso);
            end;
            BarraMostrar(False,progreso, LabelProceso);
            frmImportaciondedatos.Refresh;

            MsProject.visible:=true;
            MsProject.FileOpen(ArchivoMsP.FileName);
            ActProject:=MsProject.ActiveProject;
            TmpiItemOrden:='';

            if PgbAvance<>nil then
            begin
              PgbAvance.Max := ActProject.Tasks.Count * 2;
              PgbAvance.Position := 0;
            end;

            for Reng:=0 to ActProject.Tasks.Count-1 do
            begin

              if (PosNivel = 0) and (Reng = 0) then
              begin
                  CargarProgramadeTrabajo(ImpsContrato, ImpsNumeroOrden, ImpsConvenio, 'Paquete', '', 'A',
                                  ImpsWbsContrato, 'A', '00000000000000000000', ImpmDescripcion,
                                  now(), now(), ImpsMedida,
                                  0, 0, 1, 0,
                                  0, 'PT', 'C', ImpsActAnterior);
              end;


              Task:=ActProject.Tasks.item[Reng+1];

              iNivel := Task.outlinelevel;
              iNivel:=(iNivel);
              ImpsNumeroActividad :=GetProjectText(Task,PosPda+1);

              ImpmDescripcion := Task.Name;
              if PosVolumen > 0 then
              begin
                 if GetProjectText(Task,PosVolumen) = '' then
                 begin
                    if Task.Summary then
                       ImpdCantidadAnexo := 1
                    else
                       ImpdCantidadAnexo := 0;
                 end
                 else
                    ImpdCantidadAnexo := StrToFloat(GetProjectText(Task,PosVolumen));
              end
              else
                 ImpdCantidadAnexo :=1;

              if PosPonderado>0 then
                ImpdPonderado := GetProjectText(Task,PosPonderado)
              else
                ImpdPonderado :='0';
              ImpdFechaInicio := Task.start;
              ImpdFechaFinal := Task.Finish;

              if not Task.Summary then
              begin
                 if PosMedida > 0 then
                 begin
                    if GetProjectText(Task,PosMedida) = '' then
                    begin
                       ImpsMedida:= 'ACTIVIDAD';
                       ImpdCantidadAnexo := 1;
                    end
                    else
                       ImpsMedida:= GetProjectText(Task,PosMedida);
                 end
                 else
                    ImpsMedida:='ACTIVIDAD';
                ImpsTipo:='PT';
                sTipo:='Actividad';
              end
              else
              begin
                ImpsMedida:='';
                ImpsTipo:='PT';
                sTipo:='Paquete';
              end;
              sWbs:=Task.wbs;
              iPos:=LastDelimiter('.',sWbs);
              CadTmp:='';
              if iPos>0 then
                CadTmp:=AnsiMidStr(sWbs,1,iPos-1);

              if iNivel = 1 then
                 ImpsWbsAnterior := 'A'
              else
                 ImpsWbsAnterior:=CadTmp;
              ImpsWbsContrato := '';
              ImpdVentaMN := '0.00';
              ImpdVentaDLL := '0.00';
              ImpsActAnterior:='';
              ImpiItemOrden :=GetITemOrden(TmpiItemOrden,'',iNivel);
              TmpiItemOrden:=ImpiItemOrden;// Esto es solo Si el Swbs Posterior no existe,
                                           // como es una importacion desde cero, se da por hecho
                                           // que no hay un registro posterior.
             try
                      // Inserto Datos a la Tabla .....
                CodErr1 := 'Al importar información del programa de trabajo desde EXCEL';
                CodErr2 := 'Al insertar registros de actividadesxorden';

                iPos:=AnsiPos('%',ImpdPonderado);
                if iPos>0 then
                  Delete(ImpdPonderado,iPos,Length(ImpdPonderado)-(Ipos-1));

                CargarProgramadeTrabajo(ImpsContrato, ImpsNumeroOrden, ImpsConvenio, sTipo, ImpsWbsAnterior, sWbs,
                                  ImpsWbsContrato, ImpsNumeroActividad, ImpiItemOrden, ImpmDescripcion,
                                  ImpdFechaInicio, ImpdFechaFinal, ImpsMedida,
                                  0, 0, ImpdCantidadAnexo, strToFloatDef(ImpdPonderado,0),
                                  iNivel, 'PT', 'C', ImpsActAnterior);
              except
                on e: exception do
                begin
                    //No aplica otra accion
                end;
              end;

              if PgbAvance<>nil then
                PgbAvance.Position := PgbAvance.Position + 1;

              frmImportaciondedatos.Refresh;
              BarraProgresoAvance(progreso,0,100,100/ActProject.Tasks.Count);
            end; // Termino del While

            CreaPlazo(ImpsContrato, ImpsConvenio, ImpsNumeroOrden, ImpdFechaInicio, ImpdFechaFinal);
            MessageDlg('Proceso Terminado con exito...', mtInformation, [mbOk], 0);
          end;
        end;
      finally

      end;
    end
    else
      MessageDlg('El Archivo: '+ #13 + #10 + Quotedstr(sFileProject) + ' NO es Valido.',
                  MtError,[MbOk],0);
  end;
end;


end.

