unit frm_abrereporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, frm_connection, StdCtrls, Buttons, global,
  DBCtrls, RXDBCtrl, Mask, frxClass, utilerias, masUtilerias, UnitExcepciones,
  Menus, Gauges, ZAbstractRODataset, ZDataset, RXCtrls, ExtCtrls, UnitGenerales,
  ComCtrls, ZAbstractDataset, cxGraphics, frm_repositorio,// sGauge,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxTextEdit, cxImageComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxListView, cxCheckBox,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, MemDS, DBAccess, Uni,
  cxButtons, frxDBSet,IdMessage,IdAttachmentFile,UnitEnviarEmail,ExcelXP, ComObj,
  Excel2000, unitExcel,frxExportPDF;

type
  TfrmAbreReporte = class(TForm)
    rDiario: TfrxReport;
    PopSistemas: TPopupMenu;
    mnTiemposMuertos: TMenuItem;
    mnRegeneraAvances: TMenuItem;
    mnValidacionReportes: TMenuItem;
    mnAsignaAvfisico: TMenuItem;
    ds_salida: TDataSource;
    ds_datos: TDataSource;
    zqDatos: TUniQuery;
    QrySalida: TUniQuery;
    Panel1: TPanel;
    btnEnviar: TcxButton;
    btnAutoriza: TcxButton;
    btnValida: TcxButton;
    cxVisualizar: TcxButton;
    reporte: TUniQuery;
    frxReporteValida: TfrxDBDataset;
    Moneda: TUniQuery;
    ds_moneda: TDataSource;
    zDatos: TUniQuery;
    frxDBLista: TfrxDBDataset;
    zRequisicion: TUniQuery;
    zCompras: TUniQuery;
    zSalidas: TUniQuery;
    zEntradas: TUniQuery;
    zOrdenesdetrabajo: TUniQuery;
    btnHabilita: TcxButton;
    ds_mensaje: TDataSource;
    zMensaje: TUniQuery;
    ds_destino: TDataSource;
    zDestino: TUniQuery;
    zCorreo: TUniQuery;
    zqEnviados: TUniQuery;
    SaveDialog1: TSaveDialog;
    anexo_prequisicion: TUniQuery;
    dsanexo_prequisicion: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    btnEnviar2: TcxButton;
    btnAutoriza2: TcxButton;
    btnValida2: TcxButton;
    cxVisualizar2: TcxButton;
    btnHabilita2: TcxButton;
    btnDComprar2: TcxButton;
    cxSAP2: TcxButton;
    zDestinoReq: TUniQuery;
    dsDestinoReq: TDataSource;
    btnPR: TcxButton;
    btnAsignarCC: TcxButton;
    cxLista: TcxListView;
    cxRefrescar: TcxButton;
    cxRefrescar1: TcxButton;
    grid_datos: TcxGrid;
    grid_datosView: TcxGridDBTableView;
    col_id: TcxGridDBColumn;
    Col_Referencia: TcxGridDBColumn;
    Col_Solicitado: TcxGridDBColumn;
    col_entrega: TcxGridDBColumn;
    col_usuario: TcxGridDBColumn;
    col_correo: TcxGridDBColumn;
    col_ImgEstado: TcxGridDBColumn;
    col_estatus: TcxGridDBColumn;
    grid_datosViewColumn1: TcxGridDBColumn;
    col_est: TcxGridDBColumn;
    grid_datosViewColumn3: TcxGridDBColumn;
    grid_datosViewColumn2: TcxGridDBColumn;
    grid_datosViewColumn4: TcxGridDBColumn;
    grid_datosViewColumn5: TcxGridDBColumn;
    grid_datosViewColumn6: TcxGridDBColumn;
    grid_datosLevel: TcxGridLevel;
    btnDLiberar: TcxButton;
    procedure BtnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnValidaClick(Sender: TObject);
    procedure btnAutorizaClick(Sender: TObject);
    procedure Grid_reportesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure rDiarioGetValue(const VarName: string; var Value: Variant);
    procedure Grid_requisicionGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure grid_salidasGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnEnviarClick(Sender: TObject);
    procedure cxListaClick(Sender: TObject);
    procedure cxVisualizarClick(Sender: TObject);
    procedure formatoEncabezado();
    procedure ImprimeDatosPrepare(sParamUser : string; lVisualiza :boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnHabilitaClick(Sender: TObject);
    procedure grid_datosViewStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure HabilitarF;
    procedure btnDComprarClick(Sender: TObject);
    procedure cxSAPClick(Sender: TObject);
    procedure grid_datosViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grid_datosViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnPRClick(Sender: TObject);
    procedure btnAsignarCCClick(Sender: TObject);
    procedure MuestraColumnas(iParamInicio,iParamFin : integer; lTipo :boolean);
    procedure cxRefrescarClick(Sender: TObject);
    procedure btnDLiberarClick(Sender: TObject);

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
    cadena : String ;
    btnC:Boolean;
    ifold:String;
  end;
const
  iPausa = 1000;

var
  frmAbreReporte : TfrmAbreReporte;
  sJornada       : string;
  iRecord        : Integer;
  SavePlace2     : TBookMark;
  temE:TUniQuery;
  btnPermisos:String;
  Excel, Libro, Hoja: Variant;
  columnas : array[1..260] of String ;
  VistaGrid : TcxGridDBTableView;
implementation

uses Func_Genericas, frm_Pedidos,
  UFrmEnviarCorreo, frm_valida, frm_ReporteDiarioTurno,
 frm_configuraMail_mensajes,Frm_Comentarios,UnitMetodos,
 UFrmConfigCorreo;

{$R *.dfm}


procedure TfrmAbreReporte.btnDComprarClick(Sender: TObject);
var
  lPoder, lFilaGrid: Boolean;
  iGrid, indice: Integer;
  SavePlace: TBookmark;
begin
   cxLista.Items[iIndiceSeleccionado].Selected := True;
   try

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

            if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'COMPRADO' then
            begin
               lRecordChange := True;

                procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'DComprado',1, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

                kardex_almacen('DesAutoriza '+cxLista.Items[cxLista.ItemIndex].Caption+' No. [' + grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString + '].', 'Otros Movimientos');
            end
            else
            begin
                MessageDlg('No de puede realizar el proceso: '+#13+' -> '+cxLista.Items[cxLista.ItemIndex].Caption+' en Estatus '+grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString, mtInformation, [mbOk], 0);
                exit;
            end;
          end;

          grid_DatosView.DataController.ClearSelection;

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
         // MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
      end;
   except
    on e: exception do begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'DesAutoriza Documentos', 'Al DesAutorizar documentos', 0);
    end;
   end;

end;

procedure TfrmAbreReporte.btnDLiberarClick(Sender: TObject);
var
  lPoder, lFilaGrid: Boolean;
  iGrid, indice: Integer;
  SavePlace: TBookmark;
begin
   cxLista.Items[iIndiceSeleccionado].Selected := True;
   try
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

            if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'LIBERADO' then
            begin
               lRecordChange := True;

                procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'DLibero',1, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

                kardex_almacen('DesAutoriza '+cxLista.Items[cxLista.ItemIndex].Caption+' No. [' + grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString + '].', 'Otros Movimientos');
            end
            else
            begin
                MessageDlg('No de puede realizar el proceso: '+#13+' -> '+cxLista.Items[cxLista.ItemIndex].Caption+' en Estatus '+grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString, mtInformation, [mbOk], 0);
                exit;
            end;
          end;

          grid_DatosView.DataController.ClearSelection;

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
         // MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
      end;
   except
    on e: exception do begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'DesAutoriza Documentos', 'Al DesAutorizar documentos', 0);
    end;
   end;
end;

procedure TfrmAbreReporte.btnEnviarClick(Sender: TObject);
begin
    cxLista.Items[iIndiceSeleccionado].Selected := True;
    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
      ImprimeDatosPrepare('frxDBRequisicion', False);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2 then
      ImprimeDatosPrepare('frxOrdenCompra', False);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4 then
       ImprimeDatosPrepare('frxDBEntrada', False);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5 then
        ImprimeDatosPrepare('frxDBEntradas', False);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6 then
       ImprimeDatosPrepare('frxDBAvisoEmbarque', False);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 7 then
       ImprimeDatosPrepare('Db_proyecto', False);


    connection.ExportaPDF.ShowProgress := False;
    connection.ExportaPDF.ShowDialog   := False;
    connection.ExportaPDF.FileName := zqDatos.FieldByName('Folio').AsString + '.pdf';

    rDiario.Export(connection.ExportaPDF);
    Application.CreateForm(TFrmEnviarCorreo, FrmEnviarCorreo);
    FrmEnviarCorreo.FrmAnterior:= 'frmAbreReporte';
    FrmEnviarCorreo.ShowModal;

end;

procedure TfrmAbreReporte.BtnExitClick(Sender: TObject);
begin
  close
end;

procedure TfrmAbreReporte.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action := cafree;
end;

procedure TfrmAbreReporte.FormShow(Sender: TObject);
begin
   btnPermisos := global_btnPermisos;
   temE := TUniquery.create(nil);
   temE.Connection := Connection.uConnection;
   temE.Active:=False;
   temE.SQL.Text:='Select FK_Titulo from master_empresa';
   temE.Open;

   if temE.FieldByName('FK_Titulo').AsString = 'TYPHOON' then
   begin
      cxLista.Items.Item[9].Delete;
      cxLista.Items.Item[8].Delete;
      cxLista.Items.Item[7].Delete;
      cxLista.Items.Item[6].Delete;
      cxLista.Items.Item[2].Delete;
      cxLista.Items.Item[5].Delete;
   end
   else
   if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
   begin
      cxLista.Items.Item[9].Delete;
      cxLista.Items.Item[8].Delete;
      cxLista.Items.Item[6].Delete;
      cxLista.Items.Item[2].Delete;
   end
   else
   if temE.FieldByName('FK_Titulo').AsString = 'SIANI' then
   begin
      cxLista.Items.Item[9].Delete;
      cxLista.Items.Item[8].Delete;
      cxLista.Items.Item[7].Delete;
      cxLista.Items.Item[2].Delete;
   end
   else
   if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
   begin
      cxLista.Items.Item[7].Delete;
      cxLista.Items.Item[6].Delete;
      btnC:=false;
   end;

   cxLista.ItemIndex := 0;
   cxLista.OnClick(sender);

   grid_datosView.DataController.Groups.FullExpand;
//    guardar_leer_grid(grid_datosView,frmAbreReporte,0);
   PermisosBotones(frmAbreReporte,btnPermisos);

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

procedure TfrmAbreReporte.grid_datosViewCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    ifold:= grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString;
end;

procedure TfrmAbreReporte.grid_datosViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if grid_datosView.OptionsView.CellAutoHeight then
      grid_datosView.OptionsView.CellAutoHeight := False
   else
      grid_datosView.OptionsView.CellAutoHeight := True;
end;

procedure TfrmAbreReporte.grid_datosViewStylesGetContentStyle(
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
       (ARecord.Values[Col_estatus.Index] = 'CANCELADO') or (ARecord.Values[Col_ImgEstado.Index] = 'CANCELADO') or
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

procedure TfrmAbreReporte.HabilitarF;
begin
    lRecordChange := True;

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
       procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'Habilita',1, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2 then
       procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_pedidos', 'Habilita',2, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 8 then
       procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_solicitud_aprobpago', 'Habilita',3, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

    kardex_almacen('Habilita '+cxLista.Items[cxLista.ItemIndex].Caption+' No. [' + grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString + '].', 'Otros Movimientos');

end;

procedure TfrmAbreReporte.btnHabilitaClick(Sender: TObject);
var
  lPoder, lFilaGrid: Boolean;
  iGrid, indice: Integer;
  SavePlace: TBookmark;
begin
   cxLista.Items[iIndiceSeleccionado].Selected := True;
   try
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

              if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
              begin
               if UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'RECHAZADO' then
                  begin
                     HabilitarF;
                  end
                  else
                  begin
                      MessageDlg('No de puede realizar el proceso: '+#13+' -> '+cxLista.Items[cxLista.ItemIndex].Caption+'', mtInformation, [mbOk], 0);
                      exit;
                  end;
              end
              ELSE
              if ( (UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'RECHAZADO') OR (UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'CANCELADO')) then
              begin
                  HabilitarF;

              end
              else
              begin
                  MessageDlg('No de puede realizar el proceso: '+#13+' -> '+cxLista.Items[cxLista.ItemIndex].Caption+'', mtInformation, [mbOk], 0);
                  exit;
              end;
          end;

          grid_DatosView.DataController.ClearSelection;

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

          MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
      end;

    except
      on e: exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Habilita Documentos', 'Al Habilitar documentos', 0);
      end;
    end;
end;

procedure TfrmAbreReporte.btnPRClick(Sender: TObject);
var
  lPoder, lFilaGrid: Boolean;
  iGrid, indice: Integer;
  SavePlace: TBookmark;
begin
   cxLista.Items[iIndiceSeleccionado].Selected := True;
   try
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

                procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'DGeneroPR',1, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

                kardex_almacen('DesAutoriza '+cxLista.Items[cxLista.ItemIndex].Caption+' No. [' + grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString + '].', 'Otros Movimientos');
            end
            else
            begin
                MessageDlg('No de puede realizar el proceso: '+#13+' -> '+cxLista.Items[cxLista.ItemIndex].Caption+' en Estatus '+grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString, mtInformation, [mbOk], 0);
                exit;
            end;
          end;

          grid_DatosView.DataController.ClearSelection;

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
         // MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
      end;
   except
    on e: exception do begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'DesAutoriza Documentos', 'Al DesAutorizar documentos', 0);
    end;
   end;
end;

procedure TfrmAbreReporte.btnValidaClick(Sender: TObject);
var
  iGrid, indice: Integer;
  lPoder: Boolean;
  SavePlace : TBookmark;
  zMontoDesvalida :TUNIQUERY;
begin
   cxLista.Items[iIndiceSeleccionado].Selected := True;
   try
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

            if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'VALIDADO' then
            begin
               lRecordChange := True;
                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
                    procValidaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'DesValida',1, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2 then
                 BEGIN
                    procValidaDatosValidaAutoriza(global_contrato, 'anexo_pedidos', 'DesValida',2, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );
                 END;
                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 3 then
                    procValidaDatosValidaAutoriza(global_contrato, 'alm_inspeccion_material', 'DesValida',3, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida);

                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4 then
                    procValidaDatosValidaAutoriza(global_contrato, 'almacen_entrada', 'DesValida',4, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida);

                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5 then
                    procValidaDatosValidaAutoriza(global_contrato, 'almacen_salida', 'DesValida',5, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6 then
                    procValidaDatosValidaAutoriza(global_contrato, 'alm_aviso_embarque', 'DesValida',6, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 7 then
                    procValidaDatosValidaAutoriza(global_contrato, 'ordenesdetrabajo', 'DesValida',7, 0,grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString, frmValida );

                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 8 then
                 BEGIN
                      procValidaDatosValidaAutoriza(global_contrato, 'anexo_solicitud_aprobpago', 'DesValida',8, 0,grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString, frmValida );
                 END;

                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 9 then
                    procValidaDatosValidaAutoriza(global_contrato, 'almacen_entrada', 'DesValida',9, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida);

                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 10 then
                    procValidaDatosValidaAutoriza(global_contrato, 'almacen_salida', 'DesValida',10, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 11 then
                    procValidaDatosValidaAutoriza(global_contrato, 'anexo_solicitud', 'DesValida',11, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

                 kardex_almacen('DesValida '+cxLista.Items[cxLista.ItemIndex].Caption+' No. [' + grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString + '].', 'Otros Movimientos');
            end
            else
            begin
                MessageDlg('No de puede realizar el proceso: '+#13+' -> '+cxLista.Items[cxLista.ItemIndex].Caption+' en Estatus '+grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString, mtInformation, [mbOk], 0);
                exit;
            end;
          end;

          grid_DatosView.DataController.ClearSelection;
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
      end;
    except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'DesValida Documentos', 'Al desvalidar documentos', 0);
    end;
    end;
end;

procedure TfrmAbreReporte.cxListaClick(Sender: TObject);
begin
   grid_datosView.DataController.Groups.FullExpand;
   if cxLista.ItemIndex = -1 then
   begin
      cxLista.Items[iIndiceSeleccionado].Selected := True;
      exit;
   end;
   iIndiceSeleccionado := cxLista.ItemIndex;

   if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
      btnHabilita2.Visible := false;

   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
   begin
       {$Region 'Requisición de Materiales'}
       if (temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7') then
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
          grid_datosView.Columns[10].DataBinding.FieldName:='UsuarioCompro_Vista';
          grid_datosView.Columns[11].DataBinding.FieldName:='sStatus';

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
          grid_datosView.Columns[9].Caption :='Usuario Generó PR';
          grid_datosView.Columns[10].Caption :='Usuario Compró';
          grid_datosView.Columns[11].Caption:='Estatus';

          MuestraColumnas(0,11,True);
          MuestraColumnas(12,14,False);

          panel3.Visible:=true;
          panel1.Visible:=false;
          btnDLiberar.Enabled:=False;
          if global_grupo = 'LIDER_AVANZADO' then begin
            btnValida2.Enabled:=true;
            btnAutoriza2.Enabled:=false;
            btnDLiberar.Enabled:=false;
            btnAsignarCC.Enabled := false;
            btnPR.Enabled := false;
            btnDComprar2.Enabled := false;
          end
          else
          if global_grupo = 'LIDER_MR' then begin
             btnValida2.Enabled:=true;
            btnAutoriza2.Enabled:=true;
          end
          else begin
           btnValida2.Enabled:=False;
            btnAutoriza2.Enabled:=False;
          end;
//          btnValida2.Visible := True;
//          btnAutoriza2.Visible := True;
          procCargaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'DLibera',1, frmValida, zqDatos );

       end
       else
       if temE.FieldByName('FK_Titulo').AsString = 'CMMI'  then
       begin
          grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
          grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
          grid_datosView.Columns[2].DataBinding.FieldName:='CentroCosto';
          grid_datosView.Columns[3].DataBinding.FieldName:='Solicitado';
          grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido';
          grid_datosView.Columns[5].DataBinding.FieldName:='FechaValido_A';
          grid_datosView.Columns[6].DataBinding.FieldName:='UsuarioAutorizo';
          grid_datosView.Columns[7].DataBinding.FieldName:='FechaAutorizo_A';
          grid_datosView.Columns[8].DataBinding.FieldName:='sStatus';

          //Captions
          grid_datosView.Columns[0].Caption:='Código';
          grid_datosView.Columns[1].Caption:='Proyecto';
          grid_datosView.Columns[2].Caption:='Centro de Costo';
          grid_datosView.Columns[3].Caption:='Fecha Requisición';
          grid_datosView.Columns[4].Caption:='Usuario Validó';
          grid_datosView.Columns[5].Caption:='Fecha Validó';
          grid_datosView.Columns[6].Caption:='Usuario Autorizó';
          grid_datosView.Columns[7].Caption:='Fecha Autorizó';
          grid_datosView.Columns[8].Caption:='Estatus';

          MuestraColumnas(0,8,True);
          MuestraColumnas(9,14,False);

          panel3.Visible:=false;
          panel1.Visible:=true;

          procCargaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'DesValida',1, frmValida, zqDatos );
       end
        else
       begin
          grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
          grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
          grid_datosView.Columns[2].DataBinding.FieldName:='CentroCosto';
          grid_datosView.Columns[3].DataBinding.FieldName:='Solicitado';
          grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido_Vista';
          grid_datosView.Columns[5].DataBinding.FieldName:='UsuarioAutorizo_Vista';
          grid_datosView.Columns[6].DataBinding.FieldName:='sStatus';

          //Captions
          grid_datosView.Columns[0].Caption:='Código';
          grid_datosView.Columns[1].Caption:='Proyecto';
          grid_datosView.Columns[2].Caption:='Centro de Costo';
          grid_datosView.Columns[3].Caption:='Fecha Requisición';
          grid_datosView.Columns[4].Caption:='Usuario Validó';
          grid_datosView.Columns[5].Caption:='Usuario Autorizó';
          grid_datosView.Columns[6].Caption:='Estatus';

          MuestraColumnas(0,6,True);
          MuestraColumnas(7,14,False);

          panel3.Visible:=false;
          panel1.Visible:=true;

          procCargaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'DesValida',1, frmValida, zqDatos );
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
          grid_datosView.Columns[6].DataBinding.FieldName:='UsuarioAutorizo_vista';
          grid_datosView.Columns[7].DataBinding.FieldName:='sStatus';

          //Captions
          grid_datosView.Columns[0].Caption:='Código';
          grid_datosView.Columns[1].Caption:='Proyecto';
          grid_datosView.Columns[2].Caption:='Usuario';
          grid_datosView.Columns[3].Caption:='Planta';
          grid_datosView.Columns[4].Caption:='Fecha Compra';
          grid_datosView.Columns[5].Caption:='Usuario Validó';
          grid_datosView.Columns[6].Caption:='Usuario Autorizó';
          grid_datosView.Columns[7].Caption:='Estatus';

          MuestraColumnas(0,7,True);
          MuestraColumnas(8,14,False);
      end
      else
      if temE.FieldByName('FK_Titulo').AsString = 'CMMI'  then
      begin
          grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
          grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
          grid_datosView.Columns[2].DataBinding.FieldName:='Solicitado';
          grid_datosView.Columns[3].DataBinding.FieldName:='UsuarioValido';
          grid_datosView.Columns[4].DataBinding.FieldName:='FechaValido_A';
          grid_datosView.Columns[5].DataBinding.FieldName:='UsuarioAutorizo';
          grid_datosView.Columns[6].DataBinding.FieldName:='FechaAutorizo_A';
          grid_datosView.Columns[7].DataBinding.FieldName:='sStatus';
          grid_datosView.Columns[8].DataBinding.FieldName :='dMontoMN';
          grid_datosView.Columns[9].DataBinding.FieldName := 'Ahorro' ;

          //Captions
          grid_datosView.Columns[0].Caption:='Código';
          grid_datosView.Columns[1].Caption:='Proyecto';
          grid_datosView.Columns[2].Caption:='Fecha Compra';
          grid_datosView.Columns[3].Caption:='Usuario Validó';
          grid_datosView.Columns[4].Caption:='Usuario Validó';
          grid_datosView.Columns[5].Caption:='Usuario Autorizó';
          grid_datosView.Columns[6].Caption:='Usuario Autorizó';
          grid_datosView.Columns[7].Caption:='Estatus';
          grid_datosView.Columns[8].Caption := 'Total O.C';
          grid_datosView.Columns[9].Caption := 'Ahorro';
          grid_datosView.Columns[8].PropertiesClassName := 'TcxCurrencyEditProperties';
          grid_datosView.Columns[9].PropertiesClassName := 'TcxCurrencyEditProperties';

          MuestraColumnas(0,9,True);
          MuestraColumnas(10,14,False);
      end
      else
      begin
          grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
          grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
          grid_datosView.Columns[2].DataBinding.FieldName:='Solicitado';
          grid_datosView.Columns[3].DataBinding.FieldName:='UsuarioValido_vista';
          grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioAutorizo_vista';
          grid_datosView.Columns[5].DataBinding.FieldName:='sStatus';
          //Captions
          grid_datosView.Columns[0].Caption:='Código';
          grid_datosView.Columns[1].Caption:='Proyecto';
          grid_datosView.Columns[2].Caption:='Fecha Compra';
          grid_datosView.Columns[3].Caption:='Usuario Validó';
          grid_datosView.Columns[4].Caption:='Usuario Autorizó';
          grid_datosView.Columns[5].Caption:='Estatus';

          MuestraColumnas(0,5,True);
          MuestraColumnas(6,14,False);
      end;

      panel3.Visible:=false;
      panel1.Visible:=true;
      procCargaDatosValidaAutoriza(global_contrato, 'anexo_pedidos', 'DesValida',2, frmValida, zqDatos );
      {$EndRegion}
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
      grid_datosView.Columns[6].DataBinding.FieldName:='UsuarioAutorizo_vista';
      grid_datosView.Columns[7].DataBinding.FieldName:='sStatus';

      //Captions
      grid_datosView.Columns[0].Caption:='Código';
      grid_datosView.Columns[1].Caption:='Proyecto';
      grid_datosView.Columns[2].Caption:='Usuario';
      grid_datosView.Columns[3].Caption:='Planta';
      grid_datosView.Columns[4].Caption:='Fecha RIM';
      grid_datosView.Columns[5].Caption:='Usuario Validó';
      grid_datosView.Columns[6].Caption:='Usuario Autorizó';
      grid_datosView.Columns[7].Caption:='Estatus';

      MuestraColumnas(0,7,True);
      MuestraColumnas(8,14,False);

      panel3.Visible:=false;
      panel1.Visible:=true;
      procCargaDatosValidaAutoriza(global_contrato, 'alm_inspeccion_material', 'DesValida',3, frmValida, zqDatos );
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
      grid_datosView.Columns[5].DataBinding.FieldName:='UsuarioAutorizo_vista';
      grid_datosView.Columns[6].DataBinding.FieldName:='sStatus';

      //Captions
      grid_datosView.Columns[0].Caption:='Código';
      grid_datosView.Columns[1].Caption:='Proyecto';
      grid_datosView.Columns[2].Caption:='Usuario';
      grid_datosView.Columns[3].Caption:='Fecha Entrada';
      grid_datosView.Columns[4].Caption:='Usuario Validó';
      grid_datosView.Columns[5].Caption:='Usuario Autorizó';
      grid_datosView.Columns[6].Caption:='Estatus';

      MuestraColumnas(0,6,True);
      MuestraColumnas(7,14,False);

      panel3.Visible:=false;
      panel1.Visible:=true;
      procCargaDatosValidaAutoriza(global_contrato, 'almacen_entrada', 'DesValida',4, frmValida, zqDatos );
      {$Endregion}
   end;


   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5 then
   begin
      {$Region 'Salida de Material'}
      grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
      grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
      grid_datosView.Columns[2].DataBinding.FieldName:='UsuarioReq';
      grid_datosView.Columns[3].DataBinding.FieldName:='Entrega';
      grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido_vista';
      grid_datosView.Columns[5].DataBinding.FieldName:='UsuarioAutorizo_vista';
      grid_datosView.Columns[6].DataBinding.FieldName:='sStatus';

      //Captions
      grid_datosView.Columns[0].Caption:='Código';
      grid_datosView.Columns[1].Caption:='Proyecto';
      grid_datosView.Columns[2].Caption:='Usuario';
      grid_datosView.Columns[3].Caption:='Fecha Salida';
      grid_datosView.Columns[4].Caption:='Usuario Validó';
      grid_datosView.Columns[5].Caption:='Usuario Autorizó';
      grid_datosView.Columns[6].Caption:='Estatus';

      MuestraColumnas(0,6,True);
      MuestraColumnas(7,14,False);

      procCargaDatosValidaAutoriza(global_contrato, 'almacen_salida', 'DesValida',5, frmValida, zqDatos );
      {$endregion}
   end;

   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6 then
   begin
      {$Region 'Aviso embarque'}
      grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
      grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
      grid_datosView.Columns[2].DataBinding.FieldName:='UsuarioReq';
      grid_datosView.Columns[3].DataBinding.FieldName:='Entrega';
      grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido_vista';
      grid_datosView.Columns[5].DataBinding.FieldName:='UsuarioAutorizo_vista';
      grid_datosView.Columns[6].DataBinding.FieldName:='sStatus';

      //Captions
      grid_datosView.Columns[0].Caption:='Código';
      grid_datosView.Columns[1].Caption:='Proyecto';
      grid_datosView.Columns[2].Caption:='Usuario';
      grid_datosView.Columns[3].Caption:='Fecha Aviso';
      grid_datosView.Columns[4].Caption:='Usuario Validó';
      grid_datosView.Columns[5].Caption:='Usuario Autorizó';
      grid_datosView.Columns[6].Caption:='Estatus';

      MuestraColumnas(0,6,True);
      MuestraColumnas(7,14,False);

      panel3.Visible:=false;
      panel1.Visible:=true;

      procCargaDatosValidaAutoriza(global_contrato, 'alm_aviso_embarque', 'DesValida',6, frmValida, zqDatos );
      {$Endregion}
   end;

   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 7 then
   begin
      {$Region 'Presupuesto'}
      grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
      grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
      grid_datosView.Columns[3].DataBinding.FieldName:='Entrega';
      grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido_vista';
      grid_datosView.Columns[5].DataBinding.FieldName:='UsuarioAutorizo_vista';
      grid_datosView.Columns[6].DataBinding.FieldName:='sStatus';

      //Captions
      grid_datosView.Columns[0].Caption:='Código';
      grid_datosView.Columns[1].Caption:='Proyecto';
      grid_datosView.Columns[3].Caption:='Fecha Presupuesto';
      grid_datosView.Columns[4].Caption:='Usuario Validó';
      grid_datosView.Columns[5].Caption:='Usuario Autorizó';
      grid_datosView.Columns[6].Caption:='Estatus';

      MuestraColumnas(0,6,True);
      MuestraColumnas(7,14,False);

      panel3.Visible:=false;
      panel1.Visible:=true;

      procCargaDatosValidaAutoriza(global_contrato, 'ordenesdetrabajo', 'DesValida',7, frmValida, zqDatos );
      {$EndRegion}
   end;

   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 8 then
   begin
      {$Region 'SAP'}
      grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
      grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
      grid_datosView.Columns[3].DataBinding.FieldName:='Solicitado';
      grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido';
      grid_datosView.Columns[5].DataBinding.FieldName:='FechaValido_A';
      grid_datosView.Columns[6].DataBinding.FieldName:='UsuarioAutorizo';
      grid_datosView.Columns[7].DataBinding.FieldName:='FechaAutorizo_A';
      grid_datosView.Columns[8].DataBinding.FieldName:='UsuarioCancelo';
      grid_datosView.Columns[9].DataBinding.FieldName:='FechaCancelo_A';
      grid_datosView.Columns[10].DataBinding.FieldName:='sStatus';
      grid_datosView.Columns[11].DataBinding.FieldName:='Proveedor';
      grid_datosView.Columns[12].DataBinding.FieldName:='dMonto';
      //Captions
      grid_datosView.Columns[0].Caption:='Código';
      grid_datosView.Columns[1].Caption:='Proyecto';
      grid_datosView.Columns[3].Caption:='Fecha SAP';
      grid_datosView.Columns[4].Caption:='Usuario Validó';
      grid_datosView.Columns[5].Caption:='Fecha Validó';
      grid_datosView.Columns[6].Caption:='Fecha Autorizó';
      grid_datosView.Columns[7].Caption:='Usuario Autorizó';
      grid_datosView.Columns[8].Caption:='Fecha Canceló';
      grid_datosView.Columns[9].Caption:='Usuario Canceló';
      grid_datosView.Columns[10].Caption:='Estatus';
      grid_datosView.Columns[11].Caption:='Proveedor';
      grid_datosView.Columns[12].Caption:='Monto';
      grid_datosView.Columns[12].PropertiesClassName := 'TcxCurrencyEditProperties';

      MuestraColumnas(0,12,True);
      MuestraColumnas(13,14,False);

      panel3.Visible:=false;
      panel1.Visible:=true;

      procCargaDatosValidaAutoriza(global_contrato, 'anexo_solicitud_aprobpago', 'DesValida',8, frmValida, zqDatos );
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

      MuestraColumnas(0,5,True);
      MuestraColumnas(6,14,False);

      panel3.Visible:=false;
      panel1.Visible:=true;

      procCargaDatosValidaAutoriza(global_contrato, 'almacen_entrada', 'DesValida',9, frmValida, zqDatos );
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

      MuestraColumnas(0,5,True);
      MuestraColumnas(6,14,False);

      panel3.Visible:=false;
      panel1.Visible:=true;

      procCargaDatosValidaAutoriza(global_contrato, 'almacen_salida', 'DesValida',10, frmValida, zqDatos );
      {$EndRegion}
   end;

   if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 11 then
   begin
       {$Region 'Requisición de Materiales, solicitud de Materiales'}

       if temE.FieldByName('FK_Titulo').AsString = 'CMMI'  then
       begin
          grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
          grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
          grid_datosView.Columns[2].DataBinding.FieldName:='CentroCosto';
          grid_datosView.Columns[3].DataBinding.FieldName:='Solicitado';
          grid_datosView.Columns[4].DataBinding.FieldName:='UsuarioValido';
          grid_datosView.Columns[5].DataBinding.FieldName:='FechaValido_A';
          grid_datosView.Columns[6].DataBinding.FieldName:='UsuarioAutorizo';
          grid_datosView.Columns[7].DataBinding.FieldName:='FechaAutorizo_A';
          grid_datosView.Columns[8].DataBinding.FieldName:='sStatus';

          //Captions
          grid_datosView.Columns[0].Caption:='Código';
          grid_datosView.Columns[1].Caption:='Proyecto';
          grid_datosView.Columns[2].Caption:='Centro de Costo';
          grid_datosView.Columns[3].Caption:='Fecha Solicitud';
          grid_datosView.Columns[4].Caption:='Usuario Validó';
          grid_datosView.Columns[5].Caption:='Fecha Validó';
          grid_datosView.Columns[6].Caption:='Usuario Autorizó';
          grid_datosView.Columns[7].Caption:='Fecha Autorizó';
          grid_datosView.Columns[8].Caption:='Estatus';

          MuestraColumnas(0,8,True);
          MuestraColumnas(9,14,False);

          panel3.Visible:=false;
          panel1.Visible:=true;

          procCargaDatosValidaAutoriza(global_contrato, 'anexo_solicitud', 'DesValida',11, frmValida, zqDatos );
       end ;
       if connection.uContrato.FieldByName('FK_Titulo').AsString = 'SUBSEA 7'  then
       begin
          grid_datosView.Columns[0].DataBinding.FieldName:='Folio';
          grid_datosView.Columns[1].DataBinding.FieldName:='Referencia';
          grid_datosView.Columns[2].DataBinding.FieldName:='Solicitado';
          grid_datosView.Columns[3].DataBinding.FieldName:='UsuarioValido';
          grid_datosView.Columns[4].DataBinding.FieldName:='FechaValido_A';
          grid_datosView.Columns[5].DataBinding.FieldName:='UsuarioAutorizo';
          grid_datosView.Columns[6].DataBinding.FieldName:='FechaAutorizo_A';
          grid_datosView.Columns[7].DataBinding.FieldName:='sStatus';

          //Captions
          grid_datosView.Columns[0].Caption:='Código';
          grid_datosView.Columns[1].Caption:='Proyecto';
          grid_datosView.Columns[2].Caption:='Fecha Solicitud';
          grid_datosView.Columns[3].Caption:='Usuario Validó';
          grid_datosView.Columns[4].Caption:='Fecha Validó';
          grid_datosView.Columns[5].Caption:='Usuario Autorizó';
          grid_datosView.Columns[6].Caption:='Fecha Autorizó';
          grid_datosView.Columns[7].Caption:='Estatus';

          MuestraColumnas(0,7,True);
          MuestraColumnas(8,14,False);

          panel3.Visible:=false;
          panel1.Visible:=true;

          procCargaDatosValidaAutoriza(global_contrato, 'anexo_solicitud', 'DesValida',11, frmValida, zqDatos );
       end

       {$endregion}
   end;

    grid_datosView.DataController.Groups.FullExpand;
end;

procedure TfrmAbreReporte.cxRefrescarClick(Sender: TObject);
begin
   SavePlace2 := grid_DatosView.DataController.DataSource.DataSet.GetBookmark;
   zqDatos.Refresh;
   try
       Grid_DatosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace2);
   Except
       Grid_DatosView.DataController.DataSource.DataSet.FreeBookmark(SavePlace2);
   end;
end;

procedure TfrmAbreReporte.formatoEncabezado;
begin
      Excel.Selection.MergeCells := False;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 12;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.Font.Name := 'Calibri';
      Excel.Selection.WrapText := True;
end;

procedure TfrmAbreReporte.cxSAPClick(Sender: TObject);
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
      mComentarioOT :String;
    Begin
      // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;
      {$REGION 'PLANTILLA MR SAP'}
            Excel.Columns['A:A'].ColumnWidth := 8.5;
            Excel.Columns['B:B'].ColumnWidth := 8.5;
            Excel.Columns['C:C'].ColumnWidth := 9.1;
            Excel.Columns['D:D'].ColumnWidth := 10.5;
            Excel.Columns['E:E'].ColumnWidth := 11.3;
            Excel.Columns['F:F'].ColumnWidth := 7.3;
            Excel.Columns['G:G'].ColumnWidth := 12.5;
            Excel.Columns['H:H'].ColumnWidth := 41;
            Excel.Columns['I:I'].ColumnWidth := 9.8;
            Excel.Columns['J:J'].ColumnWidth := 10.29;
            Excel.Columns['K:K'].ColumnWidth := 10.7;
            Excel.Columns['L:L'].ColumnWidth := 11.0;
            Excel.Columns['M:M'].ColumnWidth := 8.5;
            Excel.Columns['N:N'].ColumnWidth := 11.2;
            Excel.Columns['O:O'].ColumnWidth := 12.2;
            Excel.Columns['P:P'].ColumnWidth := 9.0;
            Excel.Columns['Q:Q'].ColumnWidth := 11.29;
            Excel.Columns['R:R'].ColumnWidth := 12.29;
            Excel.Columns['S:S'].ColumnWidth := 11.29;
            Excel.Columns['T:T'].ColumnWidth := 15.29;
            Excel.Columns['U:U'].ColumnWidth := 13.29;
            Excel.Columns['V:V'].ColumnWidth := 5.29;
            Excel.Columns['W:W'].ColumnWidth := 6.6;
            Excel.Columns['X:X'].ColumnWidth := 16.43;
            Excel.Columns['Y:Y'].ColumnWidth := 12.29;
            Excel.Columns['Z:Z'].ColumnWidth := 16;
            Excel.Columns['AA:AA'].ColumnWidth := 11.14;
            Excel.Columns['AB:AB'].ColumnWidth := 23.57;
            Excel.Columns['AC:AC'].ColumnWidth := 24.57;
            Excel.Columns['AD:AD'].ColumnWidth := 36.29;
            Excel.Columns['AE:AE'].ColumnWidth := 5.57;
            Excel.Columns['AF:AF'].ColumnWidth := 22.29;

            //Textos Columnas en celeste
            Excel.Range['X1:Z1'].Select;
            Excel.Selection.Value := 'ACCOUNT ASSIGNMENT';
            Excel.Range['AA1:AD1'].Select;
            Excel.Selection.Value := 'TEXTO LARGO';
            Excel.Range['x1:AD1'].Select;

            //Texto Columnas en Gris
            Excel.Cells[2,1].Select;
            Excel.Selection.Value := 'Release Strategy';
            Excel.Cells[2,2].Select;
            Excel.Selection.Value := 'Release indicator';
            Excel.Cells[2,3].Select;
            Excel.Selection.Value := 'Item of Requisition';
            Excel.Cells[2,4].Select;
            Excel.Selection.Value := 'Acct Assignment Cat.';
            Excel.Cells[2,5].Select;
            Excel.Selection.Value := 'Item Category';
            Excel.Cells[2,6].Select;
            Excel.Selection.Value := 'Material';
            Excel.Cells[2,7].Select;
            Excel.Selection.Value := 'Vendor Material Number';
            Excel.Cells[2,8].Select;
            Excel.Selection.Value := 'Text';
            Excel.Cells[2,9].Select;
            Excel.Selection.Value := 'Quantity Requested';
            Excel.Cells[2,10].Select;
            Excel.Selection.Value := 'Unit of Measure';
            Excel.Cells[2,11].Select;
            Excel.Selection.Value := 'Valuation Price';
            Excel.Cells[2,12].Select;
            Excel.Selection.Value := 'Total Value';
            Excel.Cells[2,13].Select;
            Excel.Selection.Value := 'Currency';
            Excel.Cells[2,14].Select;
            Excel.Selection.Value := 'Delivery Date';
            Excel.Cells[2,15].Select;
            Excel.Selection.Value := 'Material Group';
            Excel.Cells[2,16].Select;
            Excel.Selection.Value := 'Plant';
            Excel.Cells[2,17].Select;
            Excel.Selection.Value := 'Purchasing Group';
            Excel.Cells[2,18].Select;
            Excel.Selection.Value := 'Requisitioner';
            Excel.Cells[2,19].Select;
            Excel.Selection.Value := 'Req. Tracking Number';
            Excel.Cells[2,20].Select;
            Excel.Selection.Value := 'Desired Vendor';
            Excel.Cells[2,21].Select;
            Excel.Selection.Value := 'Fixed Vendor';
            Excel.Cells[2,22].Select;
            Excel.Selection.Value := 'Purch. Organization';

            Excel.Cells[2,24].Select;
            Excel.Selection.Value := 'UNLOADING POINT';
            Excel.Cells[2,25].Select;
            Excel.Selection.Value := 'RECIPIENT';
            Excel.Cells[2,26].Select;
            Excel.Selection.Value := 'WBS Code / Network Code / Cost Center No / Work Order No';
            Excel.Cells[2,27].Select;
            Excel.Selection.Value := 'Trazabilidad No';
            Excel.Cells[2,28].Select;
            Excel.Selection.Value := 'QA Req*';
            Excel.Cells[2,29].Select;
            Excel.Selection.Value := 'Nota del uso del material';
            Excel.Cells[2,30].Select;
            Excel.Selection.Value := 'Nota General de la MR';

            Excel.Cells[2,32].Select;
            Excel.Selection.Value := 'Project Manager Approval';

            i:=3;
            x:=1;
            anexo_prequisicion.First;
            while not anexo_prequisicion.Eof do
            begin
              Excel.Cells[i, 1].Select;
              Excel.Selection.Value := 'R1';

              Excel.Cells[i, 2].Select;
              Excel.Selection.Value := 'X';

              Excel.Cells[i, 3].Select;
              Excel.Selection.Value :=x;

              Excel.Cells[i, 4].Select;
              Excel.Selection.Value := 'P';

              if anexo_prequisicion.FieldByName('IdTipoRecurso').AsInteger = 2 then
              begin
                  Excel.Cells[i, 5].Select;
                  Excel.Selection.Value := 'D';
              end;

              Excel.Cells[i, 8].Select;
              Excel.Selection.NumberFormat := '@';
              if anexo_prequisicion.FieldByName('Extraordinario').AsString='' then
                 Excel.Selection.Value := anexo_prequisicion.FieldByName('sIdInsumo').AsString+' '+anexo_prequisicion.FieldByName('sDescripcion').AsString + {CHAR(10)} '     '+ anexo_prequisicion.FieldByName('sObservacion').AsString
              else
                 Excel.Selection.Value := anexo_prequisicion.FieldByName('sIdInsumo').AsString+' '+anexo_prequisicion.FieldByName('Extraordinario').AsString+' '+anexo_prequisicion.FieldByName('sDescripcion').AsString + {CHAR(10)}'     '+ anexo_prequisicion.FieldByName('sObservacion').AsString;

              Excel.Cells[i, 9].Select;
              Excel.Selection.NumberFormat := '#,##0.00';
              Excel.Selection.Value := anexo_prequisicion.FieldByName('dCantidad').AsFloat;

              Excel.Cells[i, 10].Select;
              Excel.Selection.NumberFormat := '@';
              Excel.Selection.Value := anexo_prequisicion.FieldByName('MedidaSAP').AsString;

              Excel.Cells[i, 11].Select;
              Excel.Selection.NumberFormat := '#,##0.00';
              Excel.Selection.Value := 1;

              Excel.Cells[i, 12].Select;
              Excel.Selection.NumberFormat := '#,##0.00';
              Excel.Selection.Value := 0;

              Excel.Cells[i, 13].Select;
              Excel.Selection.Value := 'MXN';

              Excel.Cells[i, 14].Select;

              Excel.Selection.NumberFormat := 'd.m.aaaa';
              if anexo_prequisicion.FieldByName('dFechaRequerido').IsNull then
                 Excel.Selection.Value:=''
              else
                Excel.Selection.Value :=anexo_prequisicion.FieldByName('dFechaRequerido').AsDateTime;

              Excel.Cells[i, 15].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('CodigoGrupoMaterial').AsString;

              Excel.Cells[i, 16].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('CodigoPlanta').AsString;

              Excel.Cells[i, 17].Select;
              Excel.Selection.Value := 'R43';

              Excel.Cells[i, 18].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('NumeroMaterial').AsString;

              Excel.Cells[i, 19].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('sNumFolio').AsString;

              Excel.Cells[i, 22].Select;
              Excel.Selection.Value := 'GM01';

              Excel.Cells[i, 24].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('sPuntoCarga').AsString;

              Excel.Cells[i, 25].Select;
              Excel.Selection.Value := 'JOSE ZUÑIGA';

              Excel.Cells[i, 26].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('CentroCosto').AsString;

              Excel.Cells[i, 27].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('NumeroMaterial').AsString;

              Excel.Cells[i, 28].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('EspecificacionesQAN').AsString;

              Excel.Cells[i, 29].Select;
              if pos(mComentarioOT,anexo_prequisicion.FieldByName('mComentarios').AsString) > 0 then
              begin
                  Excel.Selection.Value := anexo_prequisicion.FieldByName('mComentarios').AsString +' para el día '+DateToStr(anexo_prequisicion.FieldByName('dFechaRequerido').AsDateTime);
              end
              else
                 Excel.Selection.Value := '';

              Excel.Cells[i, 30].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('mComentarios').AsString;

              Excel.Cells[i, 31].Select;
              Excel.Selection.Value := '';

              Excel.Cells[i, 32].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('AuNombre').AsString;
              anexo_prequisicion.Next;

              Excel.Range['A'+IntToStr(i)+':AF'+IntToStr(i)].Select;
              Excel.Selection.WrapText := False;
              inc(i);
              inc(x);
            end;

            //Color y merge parte superior
            Excel.Range['X1:Z1'].Select;
            Excel.Selection.MergeCells := True;
            Excel.Range['AA1:AD1'].Select;
            Excel.Selection.MergeCells := True;
            Excel.Range['X1:AD1'].Select;
            Excel.Selection.Interior.Color  := $00E6C29B;

            //Color y Merge de las columnas en Gris
            Excel.Rows['1:1'].RowHeight := 15;
            Excel.Rows['2:2'].RowHeight := 63.75;
            Excel.Range['A2:V2,X2:AD2,AF2:AF2'].Select;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Interior.Color      := $00C0C0BF;
            Excel.Selection.Font.Name := 'Arial';
            Excel.Selection.Font.Size := 10;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.WrapText := True;
            Excel.Selection.Borders[xlEdgeTop].LineStyle:= 1;
            Excel.Selection.Borders[xlEdgeTop].Weight:= 2;
            Excel.Selection.Borders[xlEdgeBottom].LineStyle:= 1;
            Excel.Selection.Borders[xlEdgeBottom].Weight:= 2;

            //Formato a las filas de información
            Excel.Range['A3:G'+IntToStr(i)+','+'J3:V'+IntToStr(i)+','+'Y3:AB'+IntToStr(i)+','+'AF3:AF'+IntToStr(i)].Select;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Size := 10;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Arial';
            //Excel.Selection.RowHeight := 24;

            Excel.Range['H3:H'+IntToStr(i)].Select;
            Excel.Selection.VerticalAlignment := xlTop;
            Excel.Selection.Font.Size := 10;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Arial';
            Excel.Selection.WrapText := True;

            Excel.Range['I3:I'+IntToStr(i)].Select;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Size := 10;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Arial';

            Excel.Range['X3:AC'+IntToStr(i)].Select;
            Excel.Selection.Font.Size := 10;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Arial';
            Excel.Selection.VerticalAlignment := xlTop;
            Excel.Selection.WrapText := True;

            Excel.Range['AD3:AD'+IntToStr(i)].Select;
            Excel.Selection.Font.Size := 10;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Arial';
            Excel.Selection.VerticalAlignment := xlTop;
            Excel.Selection.HorizontalAlignment := xlLeft;
            Excel.Selection.WrapText := False;

//            Excel.Cells[2, 4].Select;
//            Excel.Selection.Value := '0';
//            Excel.Range['A1:AD1'].Select;
      {$ENDREGION}

      {$ENDREGION}

      Excel.Range['A1:A1'].Select;

    End;

    Begin
      Resultado := True;
      {$REGION 'OPCIONES DE IMPRESION'}
      Try
        Hoja := Libro.Sheets[1];
        Hoja.Select;
        Hoja.Name := 'FORMATO SAP REQUISICION';


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

    end;

begin
  cxLista.Items[iIndiceSeleccionado].Selected := True;
  // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
  If Not SaveDialog1.Execute Then
    Exit;

  // Generar el ambiente de excel
  try
    Excel := CreateOleObject('Excel.Application');
  except
       on e : exception do begin
           FreeAndNil(Excel);
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Exportación de Requisición', 'Al importar datos', 0);
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

  anexo_prequisicion.Active:= False;
  AsignarSQL(anexo_prequisicion,'anexo_prequisicion_upt',pUpdate);
  FiltrarDataSet(anexo_prequisicion,'contrato,Folio',[global_contrato, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString]);
  anexo_prequisicion.Open;

  GenerarPlantilla;
  Excel := '';

  if CadError <> '' then
    showmessage(CadError);
//  else
//    tsarchivo.Text:='Formato SAP';
end;

procedure TfrmAbreReporte.cxVisualizarClick(Sender: TObject);
begin
    cxLista.Items[iIndiceSeleccionado].Selected := True;
    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
       ImprimeDatosPrepare('frxDBRequisicion', True);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2 then
       ImprimeDatosPrepare('frxOrdenCompra', True);

     if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 3 then
       ImprimeDatosPrepare('frxInspeccion', True);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4 then
       ImprimeDatosPrepare('frxDBEntradas', True);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5 then
       ImprimeDatosPrepare('frxDBEntrada', True);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6 then
       ImprimeDatosPrepare('frxDBAvisoEmbarque', True);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 7 then
       ImprimeDatosPrepare('Db_proyecto', True);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 8 then
       ImprimeDatosPrepare('frxOrdenCompras', True);

    if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 11 then
       ImprimeDatosPrepare('frxSolicitudes', True);

end;

procedure TfrmAbreReporte.btnAsignarCCClick(Sender: TObject);
var
  lPoder, lFilaGrid: Boolean;
  iGrid, indice: Integer;
  SavePlace: TBookmark;
begin
   cxLista.Items[iIndiceSeleccionado].Selected := True;
  try
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
               lRecordChange := True;

                procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'DAsignoCC',1, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

                kardex_almacen('DesAutoriza '+cxLista.Items[cxLista.ItemIndex].Caption+' No. [' + grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString + '].', 'Otros Movimientos');
            end
            else
            begin
                MessageDlg('No de puede realizar el proceso: '+#13+' -> '+cxLista.Items[cxLista.ItemIndex].Caption+' en Estatus '+grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString, mtInformation, [mbOk], 0);
                exit;
            end;
          end;

          grid_DatosView.DataController.ClearSelection;

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
          //MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
      end;
  except
    on e: exception do begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'DesAutoriza Documentos', 'Al DesAutorizar documentos', 0);
    end;
  end;
end;

procedure TfrmAbreReporte.btnAutorizaClick(Sender: TObject);
var
  lPoder, lFilaGrid: Boolean;
  iGrid, indice: Integer;
  SavePlace: TBookmark;
  r1, r2, r3, r4 : string;
  zMontoDesvalida : TUniQuery;
begin
   cxLista.Items[iIndiceSeleccionado].Selected := True;
   try
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

            //grid_DatosView.DataController.SelectRows[iGrid];
            if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString) = 'AUTORIZADO' then
            begin
                lRecordChange := True;

                if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 1 then
                   procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_requisicion', 'DesValida',1, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

                if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 2 then
                begin
                  procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_pedidos', 'DesValida',2, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );
                end;

                if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 3 then
                   procAutorizaDatosValidaAutoriza(global_contrato, 'alm_inspeccion_material', 'DesValida',3, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida);

                if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 4 then
                   procAutorizaDatosValidaAutoriza(global_contrato, 'almacen_entrada', 'DesValida',4, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida);

                if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 5 then
                   procAutorizaDatosValidaAutoriza(global_contrato, 'almacen_salida', 'DesValida',5, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

                if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 6 then
                   procAutorizaDatosValidaAutoriza(global_contrato, 'alm_aviso_embarque', 'DesValida',6, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

                if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 7 then
                begin

                    AsignarSQL(zRequisicion,'ordenesdetrabajo_requisicion',pupdate);
                    zRequisicion.Open;

                    AsignarSQL(zCompras,'ordenesdetrabajo_compras',pupdate);
                    zCompras.Open;

                    AsignarSQL(zEntradas,'ordenesdetrabajo_entradas',pupdate);
                    zEntradas.Open;

                    AsignarSQL(zSalidas,'ordenesdetrabajo_salidas',pupdate);
                    zSalidas.Open;

                    zRequisicion.First;
                     while not zRequisicion.Eof do
                     begin
                       if grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString = zRequisicion.FieldByName('sNumeroOrden').AsString then
                         r1 := grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString ;
                         zRequisicion.Next ;
                     end;

                     zCompras.First;
                     while not zCompras.Eof do begin
                       if grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString = zCompras.FieldByName('sNumeroOrden').AsString then
                       r2 := grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString;
                       zCompras.Next;
                     end;

                     zEntradas.First;
                     while not zEntradas.Eof do begin
                       if grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString = zEntradas.FieldByName('sNumeroOrden').AsString then
                       r3 := grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString;
                       zEntradas.Next;
                     end;

                     zSalidas.First;
                     while not zSalidas.Eof do begin
                       if grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString= zSalidas.FieldByName('sNumeroOrden').AsString then
                       r4 := grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString;
                       zSalidas.Next;
                     end;

                     if (r1 = grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString)
                     or (r2= grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString)
                     or (r3= grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString)
                     or (r4= grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString) then
                     MessageDlg('El proyecto está relacionado con algunos de estos parámetros: [Requisición, Ordenes de Compras, Entradas o Salidas], no puede desautorizar.', mtInformation, [mbOk], 0)

                     else
                        procAutorizaDatosValidaAutoriza(global_contrato, 'ordenesdetrabajo', 'DesValida',7, 0,grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString, frmValida );
                 end;

                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 8 then
                 begin
                   procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_solicitud_aprobpago', 'DesValida',8, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );
                 end;

                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 9 then
                    procAutorizaDatosValidaAutoriza(global_contrato, 'almacen_entrada', 'DesValida',9, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida);

                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 10 then
                    procAutorizaDatosValidaAutoriza(global_contrato, 'almacen_salida', 'DesValida',10, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

                 if cxLista.Items.Item[cxLista.ItemIndex].StateIndex = 11 then
                   procAutorizaDatosValidaAutoriza(global_contrato, 'anexo_solicitud', 'DesValida',11, grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger,'', frmValida );

                 kardex_almacen('DesAutoriza '+cxLista.Items[cxLista.ItemIndex].Caption+' No. [' + grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString + '].', 'Otros Movimientos');
            end
            else
            begin
                MessageDlg('No de puede realizar el proceso: '+#13+' -> '+cxLista.Items[cxLista.ItemIndex].Caption+' en Estatus '+grid_DatosView.DataController.DataSet.FieldByName('sStatus').AsString, mtInformation, [mbOk], 0);
                exit;
            end;
          end;

          grid_DatosView.DataController.ClearSelection;

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


          if (r1 = grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString)
           or (r2 = grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString)
           or (r3 = grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString)
           or (r4 = grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsString) then

            begin
              if lRecordChange then
              begin
                zqDatos.Refresh;
                try
                  grid_datosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
                except
                else
                   grid_datosView.DataController.DataSet.FreeBookmark(SavePlace);
                end;

                //MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
              end;
            end;

      end;
   except
    on e: exception do begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'DesAutoriza Documentos', 'Al DesAutorizar documentos', 0);
    end;
   end;
end;

procedure TfrmAbreReporte.Grid_reportesGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString = 'Autorizado' then
    Background := $006FF8FF
  else
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString = 'Validado' then
      Background := $00D0AD9F;
end;

procedure TfrmAbreReporte.Grid_requisicionGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'AUTORIZADO' then
    Background := $00D0AD9F
  else
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'VALIDADO' then
      Background := $006FF8FF;
end;

procedure TfrmAbreReporte.grid_salidasGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sEstatus').AsString = 'AUTORIZADO' then
       Background := $00D0AD9F
    else
       if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sEstatus').AsString = 'VALIDADO' then
          Background := $006FF8FF;
end;

procedure TfrmAbreReporte.rDiarioGetValue(const VarName: string;
  var Value: Variant);
var
   zConsulta,zFirmas: TUniQuery;
   sSQL: string;
begin

  if CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
    Value := sDiarioComentario;

  if CompareText(VarName, 'sNewTexto') = 0 then
    Value := sDiarioTitulo;

  if CompareText(VarName, 'PERIODO') = 0 then
    Value := sDiarioPeriodo;

  if CompareText(VarName, 'FECHA') = 0 then begin
    Value := zqDatos.FieldValues['Solicitado'];
  end;

  if cxLista.ItemIndex = 1 then
  begin
      AsignarSQL(moneda, 'master_moneda', pUpdate);
      moneda.Open;
      if CompareText(VarName, 'CANTIDAD_LETRA') = 0 then
      begin
         moneda.Locate('IdMoneda',frmRepositorio.reporte.FieldByName('IdMoneda').AsInteger,[]);
         Value := LetraMontos(moneda.FieldByName('Codigo').AsString, moneda.FieldByName('MonedaCheque').AsString, frmRepositorio.reporte.FieldByName('Monto').AsFloat );
      end;
  end;


  if cxLista.ItemIndex = 2 then
  begin
      zConsulta := TUniQuery.Create(self);
      zConsulta.Connection := connection.uConnection;
      zConsulta.Active := False;
      zConsulta.SQL.Clear;
      zConsulta.SQL.Add('SELECT sNombre FROM usuarios WHERE sIdUsuario = :Usuario');
      zConsulta.Params.ParamByName('Usuario').DataType := ftString;
      zConsulta.Params.ParamByName('Usuario').Value := global_usuario;
      zConsulta.Open;

      if CompareText(VarName, 'TIPO_ENTRADA') = 0 then
         Value := '';

      if CompareText(VarName, 'FECHA') = 0 then
         Value := zqDatos.FieldByName('Entrega').AsDateTime;
   end;

  if cxLista.ItemIndex = 3 then
  begin
      zFirmas := TUniQuery.Create(self);
      zFirmas.Connection := connection.uConnection;
      zFirmas.Active := False;
      zFirmas.SQL.Clear;
      zFirmas.SQL.Add('SELECT sNombre FROM almacen_salida WHERE sContrato = :Contrato AND sFolioSalida = :FSalida');
      zFirmas.Params.ParamByName('Contrato').DataType := ftString;
      zFirmas.Params.ParamByName('Contrato').Value    := global_Contrato;
      zFirmas.Params.ParamByName('FSalida').DataType  := ftString;
      zFirmas.Params.ParamByName('FSalida').Value     := zqDatos.FieldByName('Folio').AsString;
      zFirmas.Open;

      zConsulta := TUniQuery.Create(self);
      zConsulta.Connection := connection.uConnection;
      zConsulta.Active := False;
      zConsulta.SQL.Clear;
      zConsulta.SQL.Add('SELECT sNombre FROM usuarios WHERE sIdUsuario = :Usuario');
      zConsulta.Params.ParamByName('Usuario').DataType := ftString;
      zConsulta.Params.ParamByName('Usuario').Value := global_usuario;
      zConsulta.Open;

      if zFirmas.RecordCount>0 then begin
        If CompareText(VarName, 'ENTREGA_FIRMA') = 0 then
            Value := zConsulta.FieldValues['sNombre'];
        If CompareText(VarName, 'RECIBE_FIRMA') = 0 then
        Value := zFirmas.FieldValues['sNombre'];
      end;
  end;

  if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then begin
    if cxLista.ItemIndex = 5 then
    begin
       AsignarSQL(moneda, 'master_moneda', pUpdate);
      moneda.Open;
      if CompareText(VarName, 'CANTIDAD_LETRA') = 0 then
      begin
         moneda.Locate('IdMoneda',frmRepositorio.reporte.FieldByName('IdMoneda').AsInteger,[]);
         Value := LetraMontos(moneda.FieldByName('Codigo').AsString, moneda.FieldByName('MonedaCheque').AsString, frmRepositorio.reporte.FieldByName('dMontoMN').AsFloat );
      end;
    end;
   end;


end;

procedure TfrmAbreReporte.ImprimeDatosPrepare(sParamUser :string; lVisualiza :boolean);
var
  uQryAux : TUniQuery;
begin
     if sParamUser = 'frxDBRequisicion' then
    begin
       AsignarSQL(frmRepositorio.reporte,'Reporte_requisicion',pUpdate);
       FiltrarDataSet(frmRepositorio.reporte,'Contrato,Folio',[global_contrato,zqDatos.FieldByName('iFolio').AsInteger]);
       frmRepositorio.reporte.Open;
    end;

    if sParamUser = 'frxOrdenCompra' then
    begin
      AsignarSQL(frmRepositorio.reporte,'Reporte_OrdenCompra',pUpdate);
      FiltrarDataSet(frmRepositorio.reporte,'Contrato,Folio,IdEmpresa',[global_contrato,zqDatos.FieldByName('iFolio').AsInteger,connection.ucontrato.FieldByName('IdEmpresa').AsString]);
      frmRepositorio.reporte.Open;
    end;

     if sParamUser = 'frxInspeccion' then
    begin
       AsignarSQL(frmRepositorio.reporte,'Reporte_inspeccion',pUpdate);
       FiltrarDataSet(frmRepositorio.reporte,'IdInspeccion', [zqDatos.FieldValues['iFolio']]);
       frmRepositorio.reporte.Open;
    end;

    if sParamUser = 'frxDBEntrada' then
    begin
       AsignarSQL(frmRepositorio.reporte,'reporte_salida_material',pUpdate);
       FiltrarDataSet(frmRepositorio.reporte,'Contrato,Folio',[global_contrato,zqDatos.FieldValues['iFolio']]);
       frmRepositorio.reporte.Open;
    end;

    if sParamUser = 'frxDBEntradas' then begin //las entradas
       AsignarSQL(frmRepositorio.reporte,'reporte_entrada_material_oc',pUpdate);
       FiltrarDataSet(frmRepositorio.reporte,'Folio',[zqDatos.FieldValues['iFolio']]);
       frmRepositorio.reporte.Open;
    end;

    if sParamUser = 'frxDBAvisoEmbarque' then
    begin //las entradas
        AsignarSQL( frmRepositorio.Reporte,'reporte_aviso_embarque',pUpdate);
       frmRepositorio.Reporte.Open;

    end;

    if sParamUser = 'Db_proyecto' then
    begin
        AsignarSQL(frmRepositorio.Reporte, 'lista_presupuesto', pUpdate);
       FiltrarDataSet(frmRepositorio.Reporte, 'Contrato, TipoProyecto', [Global_contrato, 'PRESUPUESTO']);
       frmRepositorio.Reporte.Open;
    end;

   if sParamUser = 'frxOrdenCompras' then
   begin //las entradas
      AsignarSQL(frmRepositorio.Reporte,'reporte_solicitud_aprobpag',pUpdate);
      FiltrarDataSet(frmRepositorio.Reporte,'Contrato,Empresa,Folio',[global_contrato,connection.uContrato.FieldByName('IdEmpresa').AsInteger,zqDatos.FieldValues['iFolio']]);
      frmRepositorio.Reporte.Open;
   end;

   if sParamUser = 'frxSolicitudes' then
    begin
       AsignarSQL(frmRepositorio.reporte,'reporte_solicitud',pUpdate);
       FiltrarDataSet(frmRepositorio.reporte,'Contrato,Folio',[global_contrato,zqDatos.FieldByName('iFolio').AsInteger]);
       frmRepositorio.reporte.Open;
    end;

    frxReporteValida.UserName := sParamUser;
    rDiario.DataSets.Add(frxReporteValida);

    rDiario.PreviewOptions.MDIChild := False;
    rDiario.PreviewOptions.Modal := True;
    rDiario.PreviewOptions.ShowCaptions := False;
    rDiario.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

    if sParamUser = 'frxDBRequisicion' then
    begin
         if temE.FieldByName('FK_Titulo').AsString ='TYPHOON' then
          begin
            rDiario.LoadFromFile (global_files +global_miReporte+'_ALM_Requisicion.fr3') ;
          end
          else
          begin
            rDiario.LoadFromFile (global_files + global_miReporte +'_ALM_Requisicion.fr3') ;
          end;
        if not FileExists(global_files + global_miReporte + '_ALM_Requisicion.fr3') then
           showmessage('El archivo de reporte '+global_miReporte+'_ALM_Requisicion.fr3 no existe, notifique al administrador del sistema');
    end;

    if sParamUser = 'frxOrdenCompra' then
    begin
        rDiario.LoadFromFile(global_files + global_miReporte + '_COMP_OrdenCompra.fr3');
        if not FileExists(global_files + global_miReporte + '_COMP_OrdenCompra.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_COMP_OrdenCompra.fr3 no existe, notifique al administrador del sistema');
    end;

    if sParamUser = 'frxInspeccion' then
      begin
          rDiario.LoadFromFile(global_files + global_miReporte + '_ALM_RIM.fr3');
          if not FileExists(global_files + global_miReporte + '_ALM_RIM.fr3') then
          showmessage('El archivo de reporte '+global_Mireporte+'_ALM_RIM.fr3 no existe, notifique al administrador del sistema');
      end;

    if sParamUser = 'frxDBEntrada' then
    begin
        rDiario.PreviewOptions.MDIChild := False ;
        rDiario.LoadFromFile (global_files + global_miReporte+'_ALM_ValeSalida.fr3') ;
        if not FileExists(global_files + global_miReporte + '_ALM_ValeSalida.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_ALM_ValeSalida.fr3 no existe, notifique al administrador del sistema');
    end;

    if sParamUser = 'frxDBEntradas' then
    begin
        rDiario.PreviewOptions.MDIChild := False ;
        rDiario.LoadFromFile (global_files + global_miReporte+'_ALM_Entrada.fr3') ;
        if not FileExists(global_files + global_miReporte + '_ALM_Entrada.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_ALM_Entrada.fr3 no existe, notifique al administrador del sistema');
    end;

     if sParamUser = 'frxDBAvisoEmbarque' then begin //las entradas
        rDiario.PreviewOptions.MDIChild := False ;
        rDiario.LoadFromFile (global_files + global_miReporte+'_ALM_AvisoEmbarque.fr3') ;
        if not FileExists(global_files + global_miReporte + '_ALM_AvisoEmbarque.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_ALM_AvisoEmbarque.fr3 no existe, notifique al administrador del sistema');
    end;

    if sParamUser = 'Db_proyecto' then begin //las entradas
        rDiario.PreviewOptions.MDIChild := False ;
        rDiario.LoadFromFile (global_files + global_miReporte+'_OPER_lista_presupuesto.fr3') ;
        if not FileExists(global_files + global_miReporte + '_OPER_lista_presupuesto.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_OPER_lista_presupuesto.fr3 no existe, notifique al administrador del sistema');
    end;

if sParamUser = 'frxOrdenCompras' then begin //las entradas
      rDiario.PreviewOptions.MDIChild := False ;
        rDiario.LoadFromFile (global_files + global_miReporte+'_COMP_SolicitudAprobacionPago.fr3') ;
        if not FileExists(global_files + global_miReporte + '_COMP_SolicitudAprobacionPago.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_COMP_SolicitudAprobacionPago.fr3 no existe, notifique al administrador del sistema');
    end;

    if sParamUser = 'frxSolicitudes' then
    begin
        rDiario.LoadFromFile(global_files + global_miReporte + '_ALM_Solicitud.fr3');
        if not FileExists(global_files + global_miReporte + '_ALM_Solicitud.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_ALM_Solicitud.fr3 no existe, notifique al administrador del sistema');
    end;

    if lVisualiza then
       rDiario.ShowReport
    else
       rDiario.PrepareReport(true);
end;

procedure TfrmAbreReporte.MuestraColumnas(iParamInicio,iParamFin : integer; lTipo :boolean);
var
  i : integer;
begin
   for i := iParamInicio to iParamFin do
   begin
      grid_datosView.Columns[i].Visible:=lTipo;
   end;
end;

end.

