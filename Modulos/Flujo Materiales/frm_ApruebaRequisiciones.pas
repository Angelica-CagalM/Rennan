unit frm_ApruebaRequisiciones;

interface

uses
  Windows, Messages, Math, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, ADODB, DBCtrls, global, strUtils,Jpeg,
  Mask, OleCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Utilerias,
  Menus, frxClass, frxDBSet, RXDBCtrl, RxLookup, DateUtils, unitactivapop,
  RXCtrls, CheckLst, ToolWin, RxMemDS, ExcelXP, OleServer,
  Excel2000, ZAbstractRODataset, ZDataset, ZAbstractDataset, rxCurrEdit, unitGenerales,
  rxToolEdit,
  unitexcepciones, UnitValidaTexto,
  UFunctionsGHH, UnitValidacion,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxButtons, ExportaExcel,masUtilerias, cxContainer,
  cxImage, ImgList, ExtDlgs, cxTextEdit, cxLabel, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, cxSplitter, cxGroupBox, cxMemo,
  cxRichEdit, frm_repositorio, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList, MemDS, DBAccess, Uni,
  dxLayoutcxEditAdapters, dxBarBuiltInMenu, cxPC, dxLayoutContainer, cxCalendar,
  cxDBEdit, dxLayoutControl, dxLayoutControlAdapters, cxCalc, unitMetodos,
  frxExportPDF, cxRadioGroup, UnitReportes, frm_barraH1, frm_barraH2,
  dxLayoutLookAndFeels, CxGridExportLink, ShellApi;

type
  TfrmApruebaRequisiciones = class(TForm)
    frxOrdenCompra: TfrxDBDataset;
    OpenXLS: TOpenDialog;
    frxEntrada: TfrxReport;
    rxPrecios: TRxMemoryData;
    rxPreciossContrato: TStringField;
    rxPreciossIdInsumo: TStringField;
    rxPreciosmDescripcion: TMemoField;
    rxPreciossIdProveedor: TStringField;
    rxPreciosdFecha1: TDateField;
    rxPreciosdFecha2: TDateField;
    rxPreciosdFecha3: TDateField;
    rxPreciosdFecha4: TDateField;
    rxPreciosdFecha5: TDateField;
    rxPreciosdFecha6: TDateField;
    rxPreciosdFecha7: TDateField;
    rxPreciosdFecha8: TDateField;
    rxPreciosdCosto1: TFloatField;
    rxPreciosdCosto2: TFloatField;
    rxPreciosdCosto3: TFloatField;
    rxPreciosdCosto4: TFloatField;
    rxPreciosdCosto5: TFloatField;
    rxPreciosdCosto6: TFloatField;
    rxPreciosdCosto7: TFloatField;
    rxPreciosdCosto8: TFloatField;
    frxPrecios: TfrxDBDataset;
    rxPreciosItem: TIntegerField;
    rxPreciossOrdenCompra1: TStringField;
    rxPreciossOrdenCompra2: TStringField;
    rxPreciossOrdenCompra3: TStringField;
    rxPreciossOrdenCompra4: TStringField;
    rxPreciossOrdenCompra5: TStringField;
    rxPreciossOrdenCompra6: TStringField;
    rxPreciossOrdenCompra7: TStringField;
    rxPreciossOrdenCompra8: TStringField;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    Imprimir1: TMenuItem;
    ComentariosAdicionales: TMenuItem;
    cxmglst1: TcxImageList;
    OpenPicture: TOpenPictureDialog;
    datasetfrximgfirmas: TfrxDBDataset;
    pm1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    Grid_Entradas: TcxGrid;
    dbg_OCVista: TcxGridDBTableView;
    dbg_CodPerfil: TcxGridDBColumn;
    dbgLevOC: TcxGridLevel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxCodigoAutoriza: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxCodigoArea: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    dbg_Codigo: TcxGridDBColumn;
    frxPDFExport1: TfrxPDFExport;
    PanelTop: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    PanelDatos: TPanel;
    PanelTopD: TPanel;
    frmBarraH21: TfrmBarraH2;
    PanelPrincipal: TPanel;
    cxSplitter1: TcxSplitter;
    PanelTopDD: TPanel;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    ds_ordenTrabajo: TDataSource;
    ds_Pedidos: TDataSource;
    zOrdenTrabajo: TUniQuery;
    zPedidos: TUniQuery;
    ds_requisicion: TDataSource;
    ds_cuentaBanco: TDataSource;
    zRequisicion: TUniQuery;
    zCuentaBanco: TUniQuery;
    ds_FormaPago: TDataSource;
    zFormaPago: TUniQuery;
    ds_Proveedor: TDataSource;
    zProveedor: TUniQuery;
    zDepartamento: TUniQuery;
    reporte: TUniQuery;
    Moneda: TUniQuery;
    ds_moneda: TDataSource;
    ds_firma: TDataSource;
    zFirma: TUniQuery;
    cxNombre: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    cxApellidos: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxNumeroPersonal: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxCodigoPerfil: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxCodigoCentroCosto: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxTipoAutorizacion: TcxDBComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cxAutoridadLibera: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxMontoAutorizado: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxMontoMensual: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    zAprRequisiciones: TUniQuery;
    ds_AprRequisiciones: TDataSource;
    cxTelefono: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dbg_NombreC: TcxGridDBColumn;
    dbg_Telefono: TcxGridDBColumn;
    dbg_TipoAutorizacion: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure frmBarra2btnExitClick(Sender: TObject);
    procedure frxEntradaGetValue(const VarName: string;
      var Value: Variant);

    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure validaciones();

    procedure ExportarExcel1Click(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnImpInformeClick(Sender: TObject);
    procedure dbg_OCVistaDataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: string);
    procedure dbg_OCVistaDataControllerFilterChanged(Sender: TObject);
    procedure btnInfoDClick(Sender: TObject);
    procedure dbg_OCVistaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExportaClick(Sender: TObject);
    procedure Col_CuentaGetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure Col_PrecioUnitGetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure Col_TotalGetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure btnCancelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);

  private
    sMenuP: string;
    btnPermisos : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmApruebaRequisiciones: TfrmApruebaRequisiciones;
  SavePlace: TBookmark;
  sDescripcion: string;
  sArchivo      : String ;
  txtAux: string;
  lNuevo: Boolean;
  OpcButton1: string;
  Valida: boolean;
  filtro, buscar: string;
  iFolio: integer;
  CadenaOrden, CadenaOrden2, cadenaReq: string;
  lValidaReq: boolean;
  CadenaReporte, CadenaReporte2: string;

  sSuperintendente, sSupervisor: string;
  sPuestoSuperintendente, sPuestoSupervisor: string;
  sSupervisorTierra, sPuestoSupervisorTierra: string;
  sBackup: string;
  MontoTotal: Currency;
  TipoExplosion: string;
  AnteriorArray : array[1..5] of string;


  Tipo_Moneda: string;

implementation

uses frm_connection, frm_proveedores, Func_Genericas,
  frm_Presupuesto, frm_Empresas, frm_Pedidos, frm_firmasNota;

{$R *.dfm}

procedure TfrmApruebaRequisiciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  guardar_leer_grid(dbg_OCVista,frmApruebaRequisiciones,1);
  global_frmActivo := '';
  action := cafree;
end;


procedure TfrmApruebaRequisiciones.FormShow(Sender: TObject);
var x: integer;
begin
  btnPermisos := global_btnPermisos;
  try

  titulo:='Solicitud de Aprobación de Requisiciones';

  AsignarSQL(zAprRequisiciones, 'alm_aprueba_requisiciones', pUpdate);
  zAprRequisiciones.Open;

    frmBarraH11.btnPrinter.Enabled:=false;
    frmBarraH11.btnDetalle.Enabled:=false;
    frmBarraH11.btnExporta.Enabled:=false;


  PanelTopD.Visible:=False;
  PanelDatos.Visible:=False;
  cxSplitter1.Visible:=False;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al iniciar formulario', 0);
    end;
  end;
  guardar_leer_grid(dbg_OCVista,frmApruebaRequisiciones,0);

end;

procedure TfrmApruebaRequisiciones.BtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmApruebaRequisiciones.btnExportaClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
  dlgSave : TSaveDialog;
begin
  dlgSave := TSaveDialog.Create(nil);
  dlgSave.FileName := 'Aprobar Requisiciones';
  if dlgSave.Execute then
  begin
    rutaArchivo := dlgSave.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, Grid_Entradas);
    dlgSave.Destroy;
    if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;

end;

procedure TfrmApruebaRequisiciones.btnImpInformeClick(Sender: TObject);
var
  ordenescompraGrid : String;
   contOCGrid, j : Integer;
begin

end;

procedure TfrmApruebaRequisiciones.btnInfoDClick(Sender: TObject);
begin
  cxSplitter1.Visible:=not cxSplitter1.Visible;
  PanelDatos.Visible:= not PanelDatos.Visible;
end;

procedure TfrmApruebaRequisiciones.btnPrinterClick(Sender: TObject);
begin
   try
      AsignarSQL(Reporte,'reporte_solicitud_aprobpag',pUpdate);
      FiltrarDataSet(Reporte,'Contrato,Empresa,Folio',[global_contrato,connection.uContrato.FieldByName('IdEmpresa').AsInteger,zAprRequisiciones.FieldByName('IdAutorizador').AsInteger]);
      Reporte.Open;

      frxOrdenCompra.DataSet    := Reporte;
      frxOrdenCompra.FieldAliases.Clear;
      frxEntrada.DataSets.Add(frxOrdenCompra);

      frxEntrada.PreviewOptions.MDIChild := False;
      frxEntrada.PreviewOptions.Modal := True;
      frxEntrada.PreviewOptions.ShowCaptions := False;
      frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      frxEntrada.LoadFromFile(global_files + global_miReporte + '_COMP_SolicitudAprobacionPago.fr3');

     if not FileExists(global_files + global_miReporte + '_COMP_SolicitudAprobacionPago.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_COMP_SolicitudAprobacionPago.fr3 no existe, notifique al administrador del sistema');
      frxentrada.ShowReport();
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al imprimir', 0);
      end;
    end;
end;

procedure TfrmApruebaRequisiciones.btnRefreshClick(Sender: TObject);
begin
 zAprRequisiciones.Refresh
end;

procedure TfrmApruebaRequisiciones.frmBarra1btnPostClick(Sender: TObject);
var
  SavePlace: TBookmark;
  dCantidad: Currency;
  conteo: integer;
begin

end;

procedure TfrmApruebaRequisiciones.frmBarra1btnDeleteClick(Sender: TObject);
var
  SavePlace: TBookmark;
begin

end;

procedure TfrmApruebaRequisiciones.Col_CuentaGetProperties(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
var
  AColumn: TcxGridDBColumn;
begin


end;

procedure TfrmApruebaRequisiciones.Col_PrecioUnitGetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
var
  AColumn: TcxGridDBColumn;
begin

end;

procedure TfrmApruebaRequisiciones.Col_TotalGetProperties(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
var
  AColumn: TcxGridDBColumn;
begin

end;

procedure TfrmApruebaRequisiciones.ExportarExcel1Click(Sender: TObject);
var
   QueryImagen: TZQuery;
begin
  try
    QueryImagen := TZQuery.Create(Self);

    QueryImagen.Connection := connection.ZConnection;
    QueryImagen.Active:=False;
    QueryImagen.SQL.Clear;
    QueryImagen.SQL.Add('SELECT bImagen FROM configuracion WHERE sContrato=:sContrato');
    QueryImagen.ParamByName('sContrato').AsString:=global_contrato;
    QueryImagen.Open;
    ExportExcelPersonalizado(QueryImagen,dbg_OcVista,'Ordenes de Materiales','Ordenes de Compra de Materiales');
  finally
    QueryImagen.Destroy;
  end;

end;

procedure TfrmApruebaRequisiciones.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmApruebaRequisiciones.frmBarra2btnAddClick(Sender: TObject);
var
  dFechaFinal: tDate;
begin
  try

    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    PanelTopD.Visible:=True;
    panelDatos.Visible:=True;
    cxSplitter1.Visible := true;
    grid_entradas.Enabled:=False;
    zAprRequisiciones.Append;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Aprobación de Requisiciones', 'Al añadir registro', 0);
    end;
  end;

   grid_entradas.Enabled:=false;
end;

procedure TfrmApruebaRequisiciones.frmBarra2btnEditClick(Sender: TObject);
begin
   cxLeyenda.Caption:=titulo+'[Editando]';
   frmBarraH11.btnEditClick(Sender);
   panelTopD.Visible :=True;
   panelDatos.Visible :=TRue;
   cxSplitter1.Visible :=true;
   zAprRequisiciones.Edit;
end;

procedure TfrmApruebaRequisiciones.frmBarra2btnPostClick(Sender: TObject);
begin
    if zAprRequisiciones.State = dsInsert then
    begin
    try
              zAprRequisiciones.post;
              zAprRequisiciones.Refresh ;

        Except
           on e : exception do
             UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Aprobación de Requisiciones', 'Al salvar registro', 0);
        end;
    end;
    if zAprRequisiciones.State = dsEdit then
    begin
         try
                  zAprRequisiciones.Post;

                  zAprRequisiciones.Refresh ;
         except
            on e : exception do
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Aprobación de Requisiciones', 'Al salvar registro', 0);

         end;
    end;

  cxLeyenda.Caption:=titulo;
  btnCancelClick(sender);
  grid_entradas.enabled:= true;
  PermisosBotones(frmApruebaRequisiciones,btnPermisos);
end;


procedure TfrmApruebaRequisiciones.frmBarra2btnExitClick(Sender: TObject);
begin

  close
end;

procedure TfrmApruebaRequisiciones.dbg_OCVistaDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  IsOpen := False;
end;

procedure TfrmApruebaRequisiciones.dbg_OCVistaDataControllerFilterChanged(Sender: TObject);
begin
  IsOpen:=True;
end;

procedure TfrmApruebaRequisiciones.dbg_OCVistaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (Key = VK_UP) or ( Key = VK_DOWN)  then


end;


procedure TfrmApruebaRequisiciones.btnCancelClick(Sender: TObject);
begin
  try

    zAprRequisiciones.cancel;
    cxLeyenda.Caption:=Titulo;
    frmBarraH11.btnActive;
    frmBarraH11.btnPrinter.Enabled:=False;
    frmBarraH11.btnDetalle.Enabled:=False;
    frmBarraH11.btnExporta.Enabled:=False;
    grid_entradas.enabled:= true;

    Grid_Entradas.SetFocus;


    panelDatos.Visible := False;
    PanelTopD.Visible:=False;

    PermisosBotones(frmApruebaRequisiciones, btnPermisos);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al cancelar registro', 0);
    end;
  end;
end;

procedure TfrmApruebaRequisiciones.btnDeleteClick(Sender: TObject);
var
  SavePlace: TBookmark;
  indice, iGrid    : integer;
begin
if zAprRequisiciones.RecordCount > 0 then
  if MessageDlg('¿Desea eliminar el registro seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
    try
      zAprRequisiciones.Delete;
      zAprRequisiciones.ApplyUpdates();
      zAprRequisiciones.Refresh;

    except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Aprobación de Requisiciones', 'Al eliminar registro.', 0);
        end;
    end;
  end;
end;

procedure TfrmApruebaRequisiciones.validaciones;
begin
     //Verificamos el estatus de la orden de compra..

end;

procedure TfrmApruebaRequisiciones.frxEntradaGetValue(const VarName: string;
  var Value: Variant);
begin

  if CompareText(VarName, 'CANTIDAD_LETRA') = 0 then
  begin
     moneda.Locate('IdMoneda',Reporte.FieldByName('IdMoneda').AsInteger,[]);
     Value := LetraMontos(moneda.FieldByName('Codigo').AsString, moneda.FieldByName('MonedaCheque').AsString, zAprRequisiciones.FieldByName('MontoAutorizado').AsFloat );
  end;

end;

procedure TfrmApruebaRequisiciones.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookUpComboBox) then
        tcxDBLookUpComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;

end;

procedure TfrmApruebaRequisiciones.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookUpComboBox) then
        tcxDBLookUpComboBox(sender).Style.Color := global_color_salidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;

end;

end.

