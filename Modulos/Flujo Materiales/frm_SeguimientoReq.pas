unit frm_SeguimientoReq;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxTextEdit,
  cxImageComboBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls, cxContainer, cxListView,
  MemDS, DBAccess, Uni, cxDropDownEdit, cxDBLookupComboBox, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, frm_barraH2, cxLabel, cxSplitter, frxClass, frxDBSet;

type
  TfrmSeguimientoReq = class(TForm)
    grid_datos: TcxGrid;
    grid_datosView: TcxGridDBTableView;
    col_id: TcxGridDBColumn;
    Col_Referencia: TcxGridDBColumn;
    Col_Solicitado: TcxGridDBColumn;
    col_entrega: TcxGridDBColumn;
    col_usuario: TcxGridDBColumn;
    col_estatus: TcxGridDBColumn;
    grid_datosLevel: TcxGridLevel;
    Panel1: TPanel;
    zqDatos: TUniQuery;
    ds_datos: TDataSource;
    col_Fecha: TcxGridDBColumn;
    zReq: TUniQuery;
    dsReq: TDataSource;
    Panel2: TPanel;
    btnDetalle: TcxButton;
    btnTransito: TcxButton;
    btnAlmacen: TcxButton;
    btnNoAutorizacionCC: TcxButton;
    btnCotizacion: TcxButton;
    btnEspera: TcxButton;
    btnautorizacionCC: TcxButton;
    btnRecibido: TcxButton;
    Detalle: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    panelTop: TPanel;
    cxLeyenda2: TcxLabel;
    cxSplitterDetalle: TcxSplitter;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    edtImprimir: TcxButton;
    frxSeguimiento: TfrxReport;
    frxDatos: TfrxDBDataset;
    Reporte: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure validarEstatus(estado:String; fecha:TDate; Cadena:String);
    procedure btnDetalleClick(Sender: TObject);
    procedure grid_datosViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnCotizacionClick(Sender: TObject);
    procedure btnautorizacionCCClick(Sender: TObject);
    procedure btnNoAutorizacionCCClick(Sender: TObject);
    procedure btnEsperaClick(Sender: TObject);
    procedure btnAlmacenClick(Sender: TObject);
    procedure btnTransitoClick(Sender: TObject);
    procedure btnRecibidoClick(Sender: TObject);
    procedure edtImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSeguimientoReq: TfrmSeguimientoReq;
  antes:boolean;
  idR,idS:Integer;
  btnPermisos:String;

implementation
 uses UnitGenerales,global,frm_connection,Frm_Comentarios,UnitMetodos;
{$R *.dfm}

procedure TfrmSeguimientoReq.btnAlmacenClick(Sender: TObject);
begin
  if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('Est').AsString) = 'ESPERA DE ARRIBO' then
  begin
   if not MostrarFormChild('FrmComentarios',global_dxBarManagerPrincipal) Then
   begin
        global_frmActivo:='Almacen';
        Application.CreateForm(TFrmComentarios, FrmComentarios);
        FrmComentarios.show;
   end;
  end
  else
    ShowMessage('No de puede realizar el proceso');
end;

procedure TfrmSeguimientoReq.btnautorizacionCCClick(Sender: TObject);
begin
  if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('Est').AsString) = 'COTIZACION' then
  begin
   if not MostrarFormChild('FrmComentarios',global_dxBarManagerPrincipal) Then
   begin
        global_frmActivo:='AutorizacionCC';
        Application.CreateForm(TFrmComentarios, FrmComentarios);
        FrmComentarios.show;
   end;
  end
  else
    ShowMessage('No de puede realizar el proceso');
end;

procedure TfrmSeguimientoReq.btnCotizacionClick(Sender: TObject);
begin
  if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('Est').AsString) = 'AUTORIZADO' then
  begin
   validarEstatus('COTIZACION',now,'');
  end
  else
    ShowMessage('No de puede realizar el proceso');
end;

procedure TfrmSeguimientoReq.btnDetalleClick(Sender: TObject);
begin
  Detalle.Visible:= not Detalle.Visible;
  cxSplitterDetalle.Visible:= not cxSplitterDetalle.Visible;
end;

procedure TfrmSeguimientoReq.btnEsperaClick(Sender: TObject);
begin
  if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('Est').AsString) = 'AUTORIZACION CENTRO DE COSTO' then
  begin
    if not MostrarFormChild('FrmComentarios',global_dxBarManagerPrincipal) Then
     begin
        global_frmActivo:='Espera';
        Application.CreateForm(TFrmComentarios, FrmComentarios);
        FrmComentarios.show;
    end;
  end
  else
    ShowMessage('No de puede realizar el proceso');
end;

procedure TfrmSeguimientoReq.btnNoAutorizacionCCClick(Sender: TObject);
begin
  if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('Est').AsString) = 'AUTORIZACION CENTRO DE COSTO' then
  begin
   validarEstatus('NO ATORIZADO POR CENTRO DE COSTO',now,'');
  end
  else
    ShowMessage('No de puede realizar el proceso');
end;

procedure TfrmSeguimientoReq.btnRecibidoClick(Sender: TObject);
begin
  if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('Est').AsString) = 'EN TRANSITO' then
  begin
  if not MostrarFormChild('FrmComentarios',global_dxBarManagerPrincipal) Then
   begin
        global_frmActivo:='Recibido';
        Application.CreateForm(TFrmComentarios, FrmComentarios);
        FrmComentarios.show;
   end;
  end
  else
    ShowMessage('No de puede realizar el proceso');
end;

procedure TfrmSeguimientoReq.btnTransitoClick(Sender: TObject);
begin
  if  UpperCase(grid_DatosView.DataController.DataSet.FieldByName('Est').AsString) = 'ALMACEN ENTRADA' then
  begin
  if not MostrarFormChild('FrmComentarios',global_dxBarManagerPrincipal) Then
   begin
        global_frmActivo:='Transito';
        Application.CreateForm(TFrmComentarios, FrmComentarios);
        FrmComentarios.show;
   end;
  end
  else
    ShowMessage('No de puede realizar el proceso');
end;

procedure TfrmSeguimientoReq.edtImprimirClick(Sender: TObject);
begin
  try
     frxDatos.DataSet    := Reporte;
     frxDatos.FieldAliases.Clear;
     frxSeguimiento.DataSets.Add(frxDatos);

     frxSeguimiento.PreviewOptions.MDIChild := False;
     frxSeguimiento.PreviewOptions.Modal := True;
     frxSeguimiento.PreviewOptions.ShowCaptions := False;
     frxSeguimiento.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;


     AsignarSQL(Reporte,'detalle_seguimiento',pUpdate);
    if Connection.qryUBusca.FieldByName('sPuesto').AsString = 'ALMACEN' then
      FiltrarDataset(Reporte,'Folio,status',[zqDatos.FieldByName('iFolioRequisicion').AsString,'RECIBIDO'])
    else
      FiltrarDataset(Reporte,'Folio,status',[zqDatos.FieldByName('iFolioRequisicion').AsString,'-1']);

    Reporte.Open;

    frxSeguimiento.LoadFromFile(global_files +global_miReporte+ '_ALM_Seguimiento.fr3');
    if not FileExists(global_files +global_miReporte+ '_ALM_Seguimiento.fr3') then
      showmessage('El archivo de reporte '+global_miReporte+'_ALM_Seguimiento.fr3 no existe, notifique al administrador del sistema');
    frxSeguimiento.ShowReport();
  except

  end;

end;

procedure TfrmSeguimientoReq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree;
end;

procedure TfrmSeguimientoReq.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
  connection.QryUBusca.Active:=False;
  connection.QryUBusca.SQL.Text:='select (Select d.Nombre From master_departamento as d where d.IdDepartamento = u.IdDepartamento )'+
                                  ' as sPuesto FROM usuarios as u where u.sIdUsuario = :usuario';
  connection.qryUBusca.ParamByName('usuario').AsString:=global_usuario;
  Connection.qryUBusca.Open;
  zqDatos.Active:=False;
  AsignarSQL(zqDatos,'seguimineto_requisicion',pUpdate);
  if Connection.qryUBusca.FieldByName('sPuesto').AsString = 'ALMACEN' then
  begin
     FiltrarDataSet(zqDatos,'status,status2,status3',['-1','-1','EN TRANSITO']);
  end
  else
  begin
    if Connection.qryUBusca.FieldByName('sPuesto').AsString = 'COMPRAS' then
    begin
      FiltrarDataSet(zqDatos,'status,status2,status3',['PENDIENTE','RECIBIDO','-1']);
    end
    else
       FiltrarDataSet(zqDatos,'status,status2,status3',['PENDIENTE','-1','-1']);
  end;
  zqDatos.Open;

  AsignarSQL(zReq,'detalle_seguimiento',pUpdate);
  if Connection.qryUBusca.FieldByName('sPuesto').AsString = 'ALMACEN' then
    FiltrarDataset(zReq,'Folio,status',[zqDatos.FieldByName('iFolioRequisicion').AsString,'RECIBIDO'])
  else
    FiltrarDataset(zReq,'Folio,status',[zqDatos.FieldByName('iFolioRequisicion').AsString,'-1']);

  zReq.Open;
  cxleyenda2.Caption:=zqDatos.FieldByName('sNumFolio').AsString;

  btnDetalleClick(Sender);
  PermisosBotones(frmSeguimientoReq,btnPermisos);
end;

procedure TfrmSeguimientoReq.grid_datosViewCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 AsignarSQL(zReq,'detalle_seguimiento',pUpdate);
  if Connection.qryUBusca.FieldByName('sPuesto').AsString = 'ALMACEN' then
    FiltrarDataset(zReq,'Folio,status',[zqDatos.FieldByName('iFolioRequisicion').AsString,'RECIBIDO'])
  else
    FiltrarDataset(zReq,'Folio,status',[zqDatos.FieldByName('iFolioRequisicion').AsString,'-1']);

  zReq.Open;
  cxleyenda2.Caption:=zqDatos.FieldByName('sNumFolio').AsString;
end;

procedure TfrmSeguimientoReq.validarEstatus(estado:String; fecha:TDate; Cadena:String);
var
    status,zComp: tUniquery;
begin

   status := tUniquery.create(nil);
   status.Connection := Connection.uConnection;


   status.Active:=False;
   status.SQL.Add('UPDATE anexo_requisicion SET sStatus=:sStatus, FechaEstatus=:FechaEstatus WHERE iFolioRequisicion=:Folio');
   status.ParamByName('sStatus').AsString := estado;
   status.ParamByName('FechaEstatus').AsDate := now;
   status.ParamByName('Folio').AsString:=zqDatos.FieldByName('iFolioRequisicion').AsString;
   status.ExecSQL;

   zComp := tUniquery.create(nil);
   zComp.Connection := Connection.uConnection;

   zComp.Active:=False;
   zComp.SQL.Add('INSERT INTO anexo_requisicion_seguimiento (IdSeguimiento, iFolioRequisicion, Estatus, Fecha, sIdUsuario, Solicitud, FechaSolicitud) VALUES (0, :iFolioRequisicion, :Estatus, :Fecha, :Usuario, :Solicitud, :FechaSolicitud)');
   zComp.ParamByName('iFolioRequisicion').AsInteger := zqDatos.FieldByName('iFolioRequisicion').AsInteger;
   zComp.ParamByName('Estatus').AsString:=estado;
   zComp.ParamByName('Fecha').AsDate:=now;
   zComp.ParamByName('Usuario').AsString := global_usuario;
   zComp.ParamByName('FechaSolicitud').AsDate:=fecha;
   zComp.ParamByName('Solicitud').asString:=Cadena;
   zComp.ExecSQL;

   zqDatos.Refresh;
   zReq.Refresh;

   status.Destroy;
   zComp.Destroy;
end;

end.
