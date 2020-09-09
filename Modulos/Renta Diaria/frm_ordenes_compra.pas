unit frm_ordenes_compra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, Grids, DBGrids, global, frm_connection,
  DB, ADODB, Buttons, ExtCtrls, frxClass, frxDBSet, ZAbstractRODataset, dateUtils,
  ZDataset, ZAbstractDataset, Controls, Menus, UnitExcepciones, UFunctionsGHH,
  UnitValidacion, rxToolEdit, rxCurrEdit, RXDBCtrl, UnitTarifa,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinFoggy, cxButtons, ZSqlUpdate, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxSplitter,
  cxCurrencyEdit, cxCheckBox, RxMemDS, cxProgressBar, cxLabel, unitGenerales,
  dxLayoutcxEditAdapters, cxCalendar, cxDBEdit, dxLayoutContainer, cxGroupBox,
  cxCheckGroup, cxDBCheckGroup, cxMemo, cxLookupEdit, cxDBLookupEdit,
  dxLayoutControl, dxLayoutControlAdapters, cxCalc, dxBarBuiltInMenu, cxPC, Utilerias,
  frxExportPDF, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TfrmOrdenes_Compra = class(TForm)
    ds_tripulacion: TDataSource;
    qry_Tripulacion: TZQuery;
    PopupMenu1: TPopupMenu;
    ZLookTripulacion: TZQuery;
    ds_looktripulacion: TDataSource;
    Panel1: TPanel;
    Grid_OrdenesCompra: TcxGrid;
    BView_OC: TcxGridDBTableView;
    mDescripcion: TcxGridDBColumn;
    Grid_OrdenesCompraLevel1: TcxGridLevel;
    BView_OCColumn1: TcxGridDBColumn;
    ds_Oc_detalle: TDataSource;
    ds_tablaDatos: TDataSource;
    TablaDatos: TRxMemoryData;
    TablaDatossAnexo: TStringField;
    TablaDatossTitulo: TStringField;
    TablaDatossAnexoDescripcion: TStringField;
    TablaDatosdMontoMN: TFloatField;
    TablaDatosdMontoDLL: TFloatField;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    Panel4: TPanel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    cxImprimir: TcxButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label14: TLabel;
    BView_OCColumn2: TcxGridDBColumn;
    PanelActa: TPanel;
    cxNuevo: TcxButton;
    cxVer: TcxButton;
    Panel5: TPanel;
    cxAceptar: TcxButton;
    cxCancelar: TcxButton;
    ds_contrato: TDataSource;
    Contrato: TZReadOnlyQuery;
    ds_proveedores: TDataSource;
    zqProveedores: TZReadOnlyQuery;
    zqOcDetalle: TZQuery;
    ds_orden_compra: TDataSource;
    orden_compra: TZQuery;
    ds_anexos: TDataSource;
    Anexos: TZQuery;
    cxEditar: TcxButton;
    cxBorrar: TcxButton;
    frxGenerador: TfrxReport;
    TablaDatosIncluye: TStringField;
    ResstructurarSecciones1: TMenuItem;
    orden_compraIdOrdenCompra: TIntegerField;
    orden_compraOrdenCompra: TStringField;
    orden_compraFecha: TDateField;
    orden_comprasContrato: TStringField;
    orden_compraIdProveedor: TIntegerField;
    orden_compraNota: TMemoField;
    ZLookTripulacionIdOrdenCompra: TIntegerField;
    ZLookTripulacionOrdenCompra: TStringField;
    ZLookTripulacionFecha: TDateField;
    ZLookTripulacionsContrato: TStringField;
    ZLookTripulacionIdProveedor: TIntegerField;
    ZLookTripulacionNota: TMemoField;
    ZLookTripulacionOT: TStringField;
    ZLookTripulacionNombre: TStringField;
    ContratosContrato: TStringField;
    ContratosCodigo: TStringField;
    ContratosMascara: TStringField;
    ContratomDescripcion: TMemoField;
    ContratomCliente: TMemoField;
    ContratobImagen: TBlobField;
    ContratosUbicacion: TStringField;
    ContratomComentarios: TMemoField;
    ContratosTipoObra: TStringField;
    ContratolStatus: TStringField;
    ContratosLicitacion: TStringField;
    ContratosTitulo: TMemoField;
    ContratosCliente: TStringField;
    ContratoeLugarOT: TStringField;
    ContratosIdAlmacen: TStringField;
    ContratoIdMsConfDSAI17: TIntegerField;
    zqProveedoresIdProveedor: TIntegerField;
    zqProveedoresCodigo: TStringField;
    zqProveedoresNombre: TStringField;
    zqProveedoresRazonSocial: TStringField;
    zqProveedoresRFC: TStringField;
    zqProveedoresCalle: TStringField;
    zqProveedoresInterior: TStringField;
    zqProveedoresExterior: TStringField;
    zqProveedoresColonia: TStringField;
    zqProveedoresCodigoPostal: TStringField;
    zqProveedoresIdCiudad: TIntegerField;
    zqProveedoresIdEstado: TIntegerField;
    zqProveedoresCorreo: TStringField;
    zqProveedoresContacto: TStringField;
    zqProveedoresTelefono: TStringField;
    zqOcDetalleIdOCDetalle: TIntegerField;
    zqOcDetalleIdOrdenCompra: TIntegerField;
    zqOcDetallesAnexo: TStringField;
    zqOcDetallesIdPartidaAnexo: TStringField;
    zqOcDetallesIdServicio: TStringField;
    zqOcDetalleCantidad: TFloatField;
    zqOcDetalleCostoMN: TFloatField;
    zqOcDetalleCostoDLL: TFloatField;
    ds_partidaAnexo: TDataSource;
    zqPartidaAnexo: TZQuery;
    ds_recursos: TDataSource;
    zqRecursos: TZQuery;
    zqOcDetalleDescripcion: TStringField;
    zqOcDetallesMedida: TStringField;
    PanelAnexos: TPanel;
    cxGridGenerador: TcxGrid;
    CxGridMoePersonal: TcxGridDBTableView;
    cxOrdenar: TcxGridDBColumn;
    CxColumnCxGridMoePersonalColumn1: TcxGridDBColumn;
    CxGridMoePersonalColumn2: TcxGridDBColumn;
    CxColumnCxGridMoePersonalColumn3: TcxGridDBColumn;
    CxGridMoePersonalColumn1: TcxGridDBColumn;
    CxLevel1: TcxGridLevel;
    PanelOC: TPanel;
    cxGrupoOC: TcxGroupBox;
    dxLayoutControl1: TdxLayoutControl;
    cxOt: TcxDBLookupComboBox;
    cxOrdenCompra: TcxDBTextEdit;
    cxProveedor: TcxDBLookupComboBox;
    cxDescripcionOC: TcxDBMemo;
    cxButtonProveedor: TcxButton;
    cxFecha: TcxDBDateEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxSplitDetalle: TcxSplitter;
    PanelOCDetalle: TPanel;
    cxSplitter3: TcxSplitter;
    PanelOpcionesOC: TPanel;
    PanelSuperior: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditarDetalle: TcxButton;
    cxEliminarDetalle: TcxButton;
    cxDetalleEquipo: TcxButton;
    PanelInferior: TPanel;
    cxFolio: TcxGrid;
    cxViewfolio: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxViewfolioColumn3: TcxGridDBColumn;
    cxViewfolioColumn4: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxViewfolioColumn1: TcxGridDBColumn;
    cxViewfolioColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    PanelSuperiorDet: TPanel;
    PanelInferiorDet: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxCatalogoNuevo: TcxButton;
    cxRentaNuevo: TcxButton;
    cxRentaEditar: TcxButton;
    cxRentaEliminar: TcxButton;
    frxPDFExport1: TfrxPDFExport;
    ContratoIdEmpresa: TIntegerField;
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdCategoriaKeyPress(Sender: TObject; var Key: Char);
    procedure ttripulacion_extranjerosKeyPress(Sender: TObject;
      var Key: Char);
    procedure tdIdFechaExit(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure frxGeneradorGetValue(const VarName: string; var Value: Variant);
    procedure cmbTurnosExit(Sender: TObject);
    procedure tsIdFolioKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdFolioExit(Sender: TObject);
    procedure ChkEquipoClick(Sender: TObject);

    procedure CargaDatos;
    function BuscarNota(sParamContrato, sParamFolio :string) :boolean;
    function BuscarEspacioNota(iParamNota :Integer) :boolean;
    function BuscarAjusteNota(iParamNota :Integer) :boolean;
    procedure EliminaEspacioNota(iParamNota :Integer);
    procedure InsertarEspaciosNotas(iParamNota :Integer; sParamContrato, sParamFolio :String);


    procedure cxImprimirClick(Sender: TObject);
    procedure BView_OCCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CxGridMoePersonalDblClick(Sender: TObject);
    procedure BView_OCDblClick(Sender: TObject);
    procedure ImprimeReporte;
    procedure cxTipoObraPropertiesChange(Sender: TObject);
    procedure cxNuevoClick(Sender: TObject);
    procedure cxCancelarClick(Sender: TObject);
    procedure cxAceptarClick(Sender: TObject);
    procedure cxEditarClick(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxVerClick(Sender: TObject);
    procedure cxBorrarClick(Sender: TObject);
    procedure CxGridMoePersonalColumn2PropertiesChange(Sender: TObject);
    procedure cxAgregaCentroClick(Sender: TObject);
    procedure cxAgregaActivoClick(Sender: TObject);
    procedure cxGridDBTableView2StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxButtonProveedorClick(Sender: TObject);
    procedure cxAgregarRegistroClick(Sender: TObject);
    procedure cxEliminarRegistroClick(Sender: TObject);
    procedure orden_compraAfterScroll(DataSet: TDataSet);
    procedure cxGridDBColumn1PropertiesChange(Sender: TObject);
    procedure cxGridDBColumn2PropertiesChange(Sender: TObject);
    procedure zqOcDetalleCalcFields(DataSet: TDataSet);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxEliminarDetalleClick(Sender: TObject);
    procedure cxEditarDetalleClick(Sender: TObject);
    procedure cxDetalleEquipoClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdenes_Compra: TfrmOrdenes_Compra;
  sFirma_PEP, sPuesto_PEP, sFirma_Contratista, sPuesto_Contratista: string;
  fechaAntes: tDate;
//  utgrid: ticdbgrid;
  local_global_pernocta, local_tipo, sTipoGenerador, sTipoMoneda : string;
implementation

uses frm_centro_proceso,
  frm_activos, frm_proveedores, UnitValidaTexto;

{$R *.dfm}

procedure TfrmOrdenes_Compra.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmOrdenes_Compra.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmOrdenes_Compra.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;


procedure TfrmOrdenes_Compra.tdIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
//    tdIdFechaTermino.SetFocus
end;

procedure TfrmOrdenes_Compra.tsIdCategoriaKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
      cxGridGenerador.SetFocus
end;

procedure TfrmOrdenes_Compra.tsIdFolioExit(Sender: TObject);
begin
    CargaDatos;
end;

procedure TfrmOrdenes_Compra.tsIdFolioKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key =#13 then
       cxGridGenerador.SetFocus;
end;

procedure TfrmOrdenes_Compra.ttripulacion_extranjerosKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
//    tdidFecha.SetFocus
end;


procedure TfrmOrdenes_Compra.zqOcDetalleCalcFields(DataSet: TDataSet);
begin
    Anexos.Locate('sAnexo',zqOcDetalle.FieldByName('sAnexo').AsString,[]);
    if (Anexos.FieldByName('sTipo').AsString = 'PERSONAL') and (Anexos.FieldByName('sTierra').AsString = 'No') then
    begin
        zqPartidaAnexo.Active;
        zqPartidaAnexo.SQL.Clear;
        zqPartidaAnexo.SQL.Add('select sIdPersonal as IdRecurso, sDescripcion as Descripcion, sMedida from personal where sContrato =:ContratoBarco and sIdTipoPersonal ="PE-C" and sIdPersonal =:Id');
        zqPartidaAnexo.ParamByName('Contratobarco').AsString := global_contrato_barco;
        zqPartidaAnexo.ParamByName('Id').AsString  := zqOcDetalle.FieldByName('sIdPartidaAnexo').AsString;
        zqPartidaAnexo.Open;
    end;

    if (Anexos.FieldByName('sTipo').AsString = 'PERSONAL') and (Anexos.FieldByName('sTierra').AsString = 'Si') then
    begin
        zqPartidaAnexo.Active;
        zqPartidaAnexo.SQL.Clear;
        zqPartidaAnexo.SQL.Add('select sIdPersonal as IdRecurso, sDescripcion as Descripcion, sMedida from personal where sContrato =:ContratoBarco and sIdTipoPersonal ="PEC5" and sIdPersonal =:Id');
        zqPartidaAnexo.ParamByName('Contratobarco').AsString := global_contrato_barco;
        zqPartidaAnexo.ParamByName('Id').AsString  := zqOcDetalle.FieldByName('sIdPartidaAnexo').AsString;
        zqPartidaAnexo.Open;
    end;

    if (Anexos.FieldByName('sTipo').AsString = 'EQUIPO')  then
    begin
        zqPartidaAnexo.Active;
        zqPartidaAnexo.SQL.Clear;
        zqPartidaAnexo.SQL.Add('select sIdEquipo as IdRecurso, sDescripcion as Descripcion, sMedida from equipos where sContrato =:ContratoBarco and sIdTipoEquipo ="EQ-C" and lAplicaDiesel ="No" and sIdEquipo =:Id');
        zqPartidaAnexo.ParamByName('Contratobarco').AsString := global_contrato_barco;
        zqPartidaAnexo.ParamByName('Id').AsString  := zqOcDetalle.FieldByName('sIdPartidaAnexo').AsString;
        zqPartidaAnexo.Open;
    end;

    if (Anexos.FieldByName('sTipo').AsString = 'PERNOCTA')  then
    begin
        zqPartidaAnexo.Active;
        zqPartidaAnexo.SQL.Clear;
        zqPartidaAnexo.SQL.Add('select sIdPernocta as IdRecurso, sDescripcion as Descripcion, sMedida from cuentas where sIdPernocta =:Id ');
        zqPartidaAnexo.ParamByName('Id').AsString  := zqOcDetalle.FieldByName('sIdPartidaAnexo').AsString;
        zqPartidaAnexo.Open;
    end;

    if (Anexos.FieldByName('sTipo').AsString = 'ANEXO') or (Anexos.FieldByName('sTipo').AsString = 'BARCO') then
    begin
        zqPartidaAnexo.Active;
        zqPartidaAnexo.SQL.Clear;
        zqPartidaAnexo.SQL.Add('select sNumeroActividad as IdRecurso,  mDescripcion as Descripcion, sMedida from actividadesxanexo where sContrato = :ContratoBarco and sAnexo =:Anexo and sNumeroActividad =:Id and sTipoActividad ="Actividad"');
        zqPartidaAnexo.ParamByName('Contratobarco').AsString := global_contrato_barco;
        zqPartidaAnexo.ParamByName('Anexo').AsString         := Anexos.FieldByName('sAnexo').AsString;
        zqPartidaAnexo.ParamByName('Id').AsString  := zqOcDetalle.FieldByName('sIdPartidaAnexo').AsString;
        zqPartidaAnexo.Open;
    end;

    zqOCDetalle.FieldByName('Descripcion').AsString := zqPartidaAnexo.FieldByName('Descripcion').AsString;
    zqOCDetalle.FieldByName('sMedida').AsString      := zqPartidaAnexo.FieldByName('sMedida').AsString;

end;

procedure TfrmOrdenes_Compra.FormShow(Sender: TObject);
begin
//  tdIdFecha.Date := Date();
//  tdIdFecha.SetFocus;

  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select dFechaVigencia from categorias group by dFechaVigencia order by dFechaVigencia ASC');
  connection.zCommand.Open;

  if connection.zCommand.RecordCount > 0 then
  begin
    fechaAntes := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
    while not connection.zCommand.Eof do
    begin
//      if tdIdFecha.Date >= connection.zCommand.FieldByName('dFechaVigencia').AsDateTime then
//        fechaAntes := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
      connection.zCommand.Next;
    end;
  end;

  contrato.Active := False;
  contrato.Open;

  zqProveedores.Active := False;
  zqProveedores.Open;

  anexos.Active := False;
  anexos.Open;

//  if global_fecha_rd = 0 then
//     tdIdFecha.Date := now
//  else
//     tdIdFecha.Date := global_fecha_rd;
//  tdIdFecha.OnExit(sender);
//  tdIdFechaTermino.Date := tdIdFecha.Date;

  PanelAnexos.Align := alClient;

end;

procedure TfrmOrdenes_Compra.frxGeneradorGetValue(const VarName: string;
  var Value: Variant);
begin
//  if CompareText(VarName, 'FECHA_INICIO') = 0 then
//    Value := tdIdFecha.Date;

//  if CompareText(VarName, 'FECHA_FINAL') = 0 then
//    Value := tdIdFechaTermino.Date;

  if CompareText(VarName, 'FECHA_REPORTE') = 0 then
    Value := global_fecha_barco;

  if CompareText(VarName, 'DIAS_TRANSCURRIDOS') = 0 then
    Value := global_dias_por_transcurrir;

  if CompareText(VarName, 'DIAS_POR_TRANSCURRIR') = 0 then
    Value := global_dias_transcurridos;

  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
     Value := sSuperIntendente;

  If CompareText(VarName, 'SUPERVISOR') = 0 then
     Value := sSupervisor;

  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
     Value := sSupervisorTierra;

  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
  begin
      if pos('#', sPuestoSuperIntendente) > 0 then
         Value := copy(sPuestoSuperIntendente,0, pos('#', sPuestoSuperIntendente)-1) +#13+ copy(sPuestoSuperIntendente,pos('#', sPuestoSuperIntendente)+1, length(sPuestoSuperIntendente))
      else
         Value := sPuestoSuperIntendente
  end;

  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
  begin
      if pos('#', sPuestoSupervisor) > 0 then
         Value := copy(sPuestoSupervisor,0, pos('#', sPuestoSupervisor)-1) +#13+ copy(sPuestoSupervisor,pos('#', sPuestoSupervisor)+1, length(sPuestoSupervisor))
      else
         Value := sPuestoSupervisor
  end;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
  begin
      if pos('#', sPuestoSupervisorTierra) > 0 then
         Value := copy(sPuestoSupervisorTierra,0, pos('#', sPuestoSupervisorTierra)-1) +#13+ copy(sPuestoSupervisorTierra,pos('#', sPuestoSupervisorTierra)+1, length(sPuestoSupervisorTierra))
      else
         Value := sPuestoSupervisorTierra
  end;

end;

procedure TfrmOrdenes_Compra.tdIdFechaExit(Sender: TObject);
begin
//  tdidfecha.Color := global_color_salida;

//  fechaAntes := tdIdFecha.Date;

  ZLookTripulacion.Active := False;
  //ZLookTripulacion.ParamByName('FechaI').AsDateTime := tdIdFecha.Date;
  //ZLookTripulacion.ParamByName('FechaF').AsDateTime := tdIdFechaTermino.Date;
  ZLookTripulacion.Open;

end;


procedure TfrmOrdenes_Compra.btnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmOrdenes_Compra.BView_OCCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   //CargaDatos;

   orden_compra.Active := False;
   orden_compra.ParamByName('OC').AsInteger := ZLookTripulacion.FieldByName('IdOrdenCompra').AsInteger;
   orden_compra.Open;

end;

procedure TfrmOrdenes_Compra.BView_OCDblClick(Sender: TObject);
begin
    if BView_OC.OptionsView.CellAutoHeight then
       BView_OC.OptionsView.CellAutoHeight := False
    else
       BView_OC.OptionsView.CellAutoHeight := True;
end;

procedure TfrmOrdenes_Compra.ChkEquipoClick(Sender: TObject);
begin
     CargaDatos;
end;

procedure TfrmOrdenes_Compra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmOrdenes_Compra.tdIdFechaEnter(Sender: TObject);
begin
//  tdIdFecha.Color := global_Color_entrada
end;


procedure TfrmOrdenes_Compra.cmbTurnosExit(Sender: TObject);
begin
//  tdIdFecha.OnExit(sender);
end;

procedure TfrmOrdenes_Compra.cxAceptarClick(Sender: TObject);
var
     SavePlace     : TBookmark;
     sEstado : string;
     nombres, cadenas: TStringList;
begin
    if (orden_compra.State = dsInsert) or (orden_compra.State = dsEdit) then
    begin
        nombres:=TStringList.Create;  cadenas:=TStringList.Create;

        nombres.Add('Fecha');
        nombres.Add('Proveedor');
        cadenas.Add(cxFecha.Text);
        cadenas.Add(cxProveedor.Text);

        if not validaTexto(nombres, cadenas, 'No. Orden Compra', cxOrdenCompra.Text) then
        begin
            MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
            exit;
        end;


        sEstado := 'Editar';
        if orden_compra.State = dsInsert then
           sEstado := 'Nuevo';

         if orden_compra.State = dsInsert then
           if ValidaExiste('', 'rd_ordenes_compras', 'OrdenCompra', orden_compra.FieldByName('OrdenCompra').AsString, 'No. Orden Compra') then
              exit;

        //orden_compra.FieldByName('sNumeroOrden').AsString := categorias.FieldByName('sNumeroOrden').AsString;
        orden_compra.Post;
    end;    

    //messageDLG('Orden de Compra Guardada con éxito!', mtInformation, [mbOk], 0);
    PanelActa.Visible := False;

    SavePlace := BView_OC.DataController.DataSource.DataSet.GetBookmark;
    zLookTripulacion.Refresh;
    try
       BView_OC.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
    except
       BView_OC.DataController.DataSet.FreeBookmark(SavePlace);
    end;

    Grid_OrdenesCompra.Enabled := True;
    PanelAnexos.Visible := True;

    cxImprimir.Enabled := True;
    cxNuevo.Enabled := True;
    cxEditar.Enabled := True;
    cxBorrar.Enabled := True;
    cxVer.Enabled := True;
    PanelAnexos.Align := alClient;
end;

procedure TfrmOrdenes_Compra.cxAgregaActivoClick(Sender: TObject);
begin
     global_frmActivo := 'frm_nota_campo';
     Application.CreateForm(TfrmActivos, frmActivos);
     frmActivos.show
end;

procedure TfrmOrdenes_Compra.cxAgregaCentroClick(Sender: TObject);
begin
     global_frmActivo := 'frm_nota_campo';
     Application.CreateForm(TfrmCentroProceso, frmCentroProceso);
     frmCentroProceso.show
end;

procedure TfrmOrdenes_Compra.cxAgregarRegistroClick(Sender: TObject);
var
    SavePlace     : TBookmark;
    sEstado : string;
    nombres, cadenas: TStringList;
begin
   if orden_compra.State= dsInsert then
   begin
      If MessageDlg('Para continuar debe Guardar la Orden de Compra '#13+orden_compra.FieldByName('OrdenCompra').AsString+', Desea Continuar?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
          nombres:=TStringList.Create;  cadenas:=TStringList.Create;

          nombres.Add('Fecha');
          nombres.Add('Proveedor');
          cadenas.Add(cxFecha.Text);
          cadenas.Add(cxProveedor.Text);

          if not validaTexto(nombres, cadenas, 'No. Orden Compra', cxOrdenCompra.Text) then
          begin
              MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
              exit;
          end;

          if orden_compra.State = dsInsert then
             if ValidaExiste('', 'rd_ordenes_compras', 'OrdenCompra', orden_compra.FieldByName('OrdenCompra').AsString, 'No. Orden Compra') then
                exit;

          orden_compra.Post;

          SavePlace := BView_OC.DataController.DataSource.DataSet.GetBookmark;
          zLookTripulacion.Refresh;
          try
             BView_OC.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
          except
             BView_OC.DataController.DataSet.FreeBookmark(SavePlace);
          end;
          zqOCDetalle.Append;
          zqOCDetalle.FieldByName('IdOrdenCompra').AsInteger  := Orden_Compra.FieldByName('IdOrdenCompra').AsInteger;
          zqOCDetalle.FieldByName('sIdPartidaAnexo').AsString := '';
          zqOCDetalle.FieldByName('Cantidad').AsFloat := 0;
          zqOCDetalle.FieldByName('CostoMN').AsFloat  := 0;
          zqOCDetalle.FieldByName('CostoDLL').Asfloat := 0;
      end;
   end
   else
   begin
      zqOCDetalle.Append;
      zqOCDetalle.FieldByName('IdOrdenCompra').AsInteger  := Orden_Compra.FieldByName('IdOrdenCompra').AsInteger;
      zqOCDetalle.FieldByName('sIdPartidaAnexo').AsString := '';
      zqOCDetalle.FieldByName('Cantidad').AsFloat := 0;
      zqOCDetalle.FieldByName('CostoMN').AsFloat  := 0;
      zqOCDetalle.FieldByName('CostoDLL').Asfloat := 0;
   end;
end;

procedure TfrmOrdenes_Compra.cxBorrarClick(Sender: TObject);
var
     SavePlace     : TBookmark;
begin

    If MessageDlg('Desea eliminar la Orden de Compra '#13+orden_compra.FieldByName('OrdenCompra').AsString+'?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        orden_compra.Delete;

        SavePlace := BView_OC.DataController.DataSource.DataSet.GetBookmark;
        zLookTripulacion.Refresh;
        try
           BView_OC.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
        except
           BView_OC.DataController.DataSet.FreeBookmark(SavePlace);
        end;
    end;
end;

procedure TfrmOrdenes_Compra.cxDetalleEquipoClick(Sender: TObject);
begin
    if PanelOcDetalle.Visible  = False then
    begin
       PanelOcDetalle.Visible := True ;
       cxSplitDetalle.visible := True;
    end
    else
    begin
       PanelOcDetalle.Visible := False;
       cxSplitDetalle.visible := False;
    end;
end;

procedure TfrmOrdenes_Compra.cxButtonProveedorClick(Sender: TObject);
begin
     Application.CreateForm(TfrmProveedores, frmProveedores);
     frmProveedores.show;
end;

procedure TfrmOrdenes_Compra.cxCancelarClick(Sender: TObject);
begin
    PanelActa.Visible := False;
    orden_compra.Cancel;
    Grid_OrdenesCompra.Enabled := True;
    PanelAnexos.Visible := True;

    cxImprimir.Enabled := True;
    cxNuevo.Enabled := True;
    cxEditar.Enabled := True;
    cxBorrar.Enabled := True;
    cxVer.Enabled := True;

    PanelAnexos.Align := alClient;
end;

procedure TfrmOrdenes_Compra.cxEditarClick(Sender: TObject);
begin
   PanelActa.Visible := True;

   orden_compra.Edit;       

   Grid_OrdenesCompra.Enabled := False;
   PanelAnexos.Visible := False;

   cxImprimir.Enabled := False;
   cxNuevo.Enabled := False;
   cxEditar.Enabled := False;
   cxBorrar.Enabled := False;
   cxVer.Enabled := False;

   cxGridDBColumn1.Options.Editing := False;
   cxGridDBColumn2.Options.Editing := False;
   cxGridDBColumn4.Options.Editing := False;
   cxViewfolioColumn1.Options.Editing := False;
   cxViewfolioColumn2.Options.Editing := False;
end;

procedure TfrmOrdenes_Compra.cxEditarDetalleClick(Sender: TObject);
begin
    if zqOCDetalle.RecordCount > 0 then
    begin
       zqOCDetalle.Edit;
       cxGridDBColumn1.Options.Editing := False;
       cxGridDBColumn2.Options.Editing := False;
       cxGridDBColumn4.Options.Editing := True;
       cxViewfolioColumn1.Options.Editing := True;
       cxViewfolioColumn2.Options.Editing := True;
    end;
end;

procedure TfrmOrdenes_Compra.cxEliminarDetalleClick(Sender: TObject);
begin
   zqOCDetalle.Delete;
end;

procedure TfrmOrdenes_Compra.cxEliminarRegistroClick(Sender: TObject);
begin
   zqOCDetalle.Delete;
end;

procedure TfrmOrdenes_Compra.cxGridDBColumn1PropertiesChange(Sender: TObject);
begin
    if zqOcDetalle.State = dsInsert then
       cxGridDBColumn1.DataBinding.DataController.DataSet.Post
    else
    begin
        cxGridDBColumn1.DataBinding.DataController.DataSet.Edit;
        cxGridDBColumn1.DataBinding.DataController.DataSet.Post;
    end;

    Anexos.Locate('sAnexo',zqOcDetalle.FieldByName('sAnexo').AsString,[]);

    cxGridDBColumn1.DataBinding.DataController.SetFocus;
    cxGridDBColumn1.DataBinding.DataController.DataSet.Edit;

    if (Anexos.FieldByName('sTipo').AsString = 'PERSONAL') and (Anexos.FieldByName('sTierra').AsString = 'No') then
    begin
        zqPartidaAnexo.Active;
        zqPartidaAnexo.SQL.Clear;
        zqPartidaAnexo.SQL.Add('select sIdPersonal as IdRecurso, sDescripcion as Descripcion, sMedida from personal where sContrato =:ContratoBarco and sIdTipoPersonal ="PE-C"');
        zqPartidaAnexo.ParamByName('Contratobarco').AsString := global_contrato_barco;
        zqPartidaAnexo.Open;
    end;

    if (Anexos.FieldByName('sTipo').AsString = 'PERSONAL') and (Anexos.FieldByName('sTierra').AsString = 'Si') then
    begin
        zqPartidaAnexo.Active;
        zqPartidaAnexo.SQL.Clear;
        zqPartidaAnexo.SQL.Add('select sIdPersonal as IdRecurso, sDescripcion as Descripcion, sMedida from personal where sContrato =:ContratoBarco and sIdTipoPersonal ="PEC5"');
        zqPartidaAnexo.ParamByName('Contratobarco').AsString := global_contrato_barco;
        zqPartidaAnexo.Open;
    end;

    if (Anexos.FieldByName('sTipo').AsString = 'EQUIPO')  then
    begin
        zqPartidaAnexo.Active;
        zqPartidaAnexo.SQL.Clear;
        zqPartidaAnexo.SQL.Add('select sIdEquipo as IdRecurso, sDescripcion as Descripcion, sMedida from equipos where sContrato =:ContratoBarco and sIdTipoEquipo ="EQ-C" and lAplicaDiesel ="No"');
        zqPartidaAnexo.ParamByName('Contratobarco').AsString := global_contrato_barco;
        zqPartidaAnexo.Open;
    end;

    if (Anexos.FieldByName('sTipo').AsString = 'PERNOCTA')  then
    begin
        zqPartidaAnexo.Active;
        zqPartidaAnexo.SQL.Clear;
        zqPartidaAnexo.SQL.Add('select sIdPernocta as IdRecurso, sDescripcion as Descripcion, sMedida from cuentas ');
        zqPartidaAnexo.Open;
    end;

    if (Anexos.FieldByName('sTipo').AsString = 'ANEXO') or (Anexos.FieldByName('sTipo').AsString = 'BARCO') then
    begin
        zqPartidaAnexo.Active;
        zqPartidaAnexo.SQL.Clear;
        zqPartidaAnexo.SQL.Add('select sNumeroActividad as IdRecurso,  mDescripcion as Descripcion, sMedida from actividadesxanexo where sContrato = :ContratoBarco and sAnexo =:Anexo ');
        zqPartidaAnexo.ParamByName('Contratobarco').AsString := global_contrato_barco;
        zqPartidaAnexo.ParamByName('Anexo').AsString         := Anexos.FieldByName('sAnexo').AsString;
        zqPartidaAnexo.Open;
    end;
end;

procedure TfrmOrdenes_Compra.cxGridDBColumn2PropertiesChange(Sender: TObject);
begin
    cxGridDBColumn1.DataBinding.DataController.DataSet.Edit;
end;

procedure TfrmOrdenes_Compra.cxGridDBTableView2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var AColumn1, AColumn2: TcxCustomGridTableItem;
begin
    AColumn1 := (Sender as TcxGridDBTableView).GetColumnByFieldName('dCantidad');
    AColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('dCantidad_E');
    if ARecord.Values[AColumn1.Index] <> ARecord.Values[AColumn2.Index]  then
    begin
       astyle := connection.cxAjuste ;
       astyle.Font.Color := clRed;
    end;

    AColumn1 := (Sender as TcxGridDBTableView).GetColumnByFieldName('dVentaSumaMN');
    AColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('dVentaSumaMN_E');
    if VarToStr(ARecord.Values[AColumn1.Index]) <> VarToStr(ARecord.Values[AColumn2.Index])  then
    begin
       astyle := connection.cxAjuste ;
       astyle.Font.Color := clRed;
    end;

    AColumn1 := (Sender as TcxGridDBTableView).GetColumnByFieldName('dVentaSumaDLL');
    AColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('dVentaSumaDLL_E');
    if VarToStr(ARecord.Values[AColumn1.Index]) <> VarToStr(ARecord.Values[AColumn2.Index])  then
    begin
       astyle := connection.cxAjuste ;
       astyle.Font.Color := clRed;
    end;

end;

procedure TfrmOrdenes_Compra.CxGridMoePersonalColumn2PropertiesChange(
  Sender: TObject);
begin
    cxGridMoePersonal.OnDblClick(sender);
end;

procedure TfrmOrdenes_Compra.CxGridMoePersonalDblClick(Sender: TObject);
var
   SavePlace  : TBookmark;
begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('update rd_anexos_nota set Incluye = :Valor where idNota =:Id and sAnexo =:Anexo ');
    connection.QryBusca.ParamByName('Anexo').AsString := CxGridMoePersonal.DataController.DataSource.DataSet.FieldByName('sAnexo').AsString;
    connection.QryBusca.ParamByName('Id').AsInteger   := orden_compra.FieldByName('idNota').AsInteger;
    if CxGridMoePersonal.DataController.DataSource.DataSet.FieldByName('Incluye').AsString = 'Si' then
       connection.QryBusca.ParamByName('Valor').AsString := 'No'
    else
       connection.QryBusca.ParamByName('Valor').AsString := 'Si';
    connection.QryBusca.ExecSQL;

     SavePlace := CxGridMoePersonal.DataController.DataSource.DataSet.GetBookmark;

     CargaDatos;
     Try
         CxGridMoePersonal.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
     Except
     Else
         CxGridMoePersonal.DataController.DataSet.FreeBookmark(SavePlace);
     End ;
end;

procedure TfrmOrdenes_Compra.cxImprimirClick(Sender: TObject);
begin
    BarraMostrar(True,progreso, LabelProceso);
    ImprimeReporte;
    BarraMostrar(False,progreso, LabelProceso);
end;

procedure TfrmOrdenes_Compra.cxNuevoClick(Sender: TObject);
begin

   PanelActa.Visible := True;
   cxOrdenCompra.SetFocus;
   orden_compra.Append;

   contrato.Last;
   cxOt.DataBinding.DataSource.DataSet.FieldByName('sContrato').AsString := contrato.FieldByName('sContrato').AsString;
   cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger := zqProveedores.FieldByName('IdProveedor').AsInteger;
   cxFecha.Date := date;
   Grid_OrdenesCompra.Enabled := False;
   PanelAnexos.Visible := False;

   cxImprimir.Enabled := False;
   cxNuevo.Enabled := False;
   cxEditar.Enabled := False;
   cxBorrar.Enabled := False;
   cxVer.Enabled := False;
end;

procedure TfrmOrdenes_Compra.cxNuevoDetalleClick(Sender: TObject);
var
    SavePlace     : TBookmark;
    sEstado : string;
    nombres, cadenas: TStringList;
begin
   if orden_compra.State= dsInsert then
   begin
      If MessageDlg('Para continuar debe Guardar la Orden de Compra '#13+orden_compra.FieldByName('OrdenCompra').AsString+', Desea Continuar?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
          nombres:=TStringList.Create;  cadenas:=TStringList.Create;

          nombres.Add('Fecha');
          nombres.Add('Proveedor');
          cadenas.Add(cxFecha.Text);
          cadenas.Add(cxProveedor.Text);

          if not validaTexto(nombres, cadenas, 'No. Orden Compra', cxOrdenCompra.Text) then
          begin
              MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
              exit;
          end;

          if orden_compra.State = dsInsert then
             if ValidaExiste('', 'rd_ordenes_compras', 'OrdenCompra', orden_compra.FieldByName('OrdenCompra').AsString, 'No. Orden Compra') then
                exit;

          orden_compra.Post;

          SavePlace := BView_OC.DataController.DataSource.DataSet.GetBookmark;
          zLookTripulacion.Refresh;
          try
             BView_OC.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
          except
             BView_OC.DataController.DataSet.FreeBookmark(SavePlace);
          end;
          zqOCDetalle.Append;
          zqOCDetalle.FieldByName('IdOrdenCompra').AsInteger  := Orden_Compra.FieldByName('IdOrdenCompra').AsInteger;
          zqOCDetalle.FieldByName('sIdPartidaAnexo').AsString := '';
          zqOCDetalle.FieldByName('Cantidad').AsFloat := 0;
          zqOCDetalle.FieldByName('CostoMN').AsFloat  := 0;
          zqOCDetalle.FieldByName('CostoDLL').Asfloat := 0;

          cxGridDBColumn1.Options.Editing := True;
          cxGridDBColumn2.Options.Editing := True;
          cxGridDBColumn4.Options.Editing := True;
          cxViewfolioColumn1.Options.Editing := True;
          cxViewfolioColumn2.Options.Editing := True;
      end;
   end
   else
   begin
      zqOCDetalle.Append;
      zqOCDetalle.FieldByName('IdOrdenCompra').AsInteger  := Orden_Compra.FieldByName('IdOrdenCompra').AsInteger;
      zqOCDetalle.FieldByName('sIdPartidaAnexo').AsString := '';
      zqOCDetalle.FieldByName('Cantidad').AsFloat := 0;
      zqOCDetalle.FieldByName('CostoMN').AsFloat  := 0;
      zqOCDetalle.FieldByName('CostoDLL').Asfloat := 0;

      cxGridDBColumn1.Options.Editing := True;
      cxGridDBColumn2.Options.Editing := True;
      cxGridDBColumn4.Options.Editing := True;
      cxViewfolioColumn1.Options.Editing := True;
      cxViewfolioColumn2.Options.Editing := True;
   end;

end;

procedure TfrmOrdenes_Compra.cxTipoObraPropertiesChange(Sender: TObject);
begin
    try
      CargaDatos;
    Except

    end;
end;

procedure TfrmOrdenes_Compra.cxVerClick(Sender: TObject);
begin
    if PanelAnexos.Visible  then
    begin
       PanelAnexos.Visible := False;
       cxNuevo.Enabled := False;
       cxEditar.Enabled := False;
       cxAceptar.Enabled := False;
       cxCancelar.Enabled := False;
       PanelActa.Visible := True;
    end
    else
    begin
       PanelAnexos.Visible := True;
       cxNuevo.Enabled := True;
       cxEditar.Enabled := True;
       cxAceptar.Enabled := True;
       cxCancelar.Enabled := True;
       PanelActa.Visible := False;
    end;

    cxGridDBColumn1.Options.Editing := False;
    cxGridDBColumn2.Options.Editing := False;
    cxGridDBColumn4.Options.Editing := False;
    cxViewfolioColumn1.Options.Editing := False;
    cxViewfolioColumn2.Options.Editing := False;
end;

procedure TfrmOrdenes_Compra.CargaDatos;
var
    dTotalVentaMN, dTotalVentaDLL : double;
begin

   TablaDatos.EmptyTable;
   anexos.First;
   while not anexos.Eof do
   begin
        qry_tripulacion.Active := False;
        qry_tripulacion.SQL.Clear;
        if (anexos.FieldByName('Nomenclatura').AsString = '2.') or (anexos.FieldByName('Nomenclatura').AsString = '3.') or
           (anexos.FieldByName('Nomenclatura').AsString = '5.') then
        begin
            //>>Personal<<
            if (anexos.FieldByName('Nomenclatura').AsString = '2.') then
            begin
               qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                              'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                              'o.sIdFolio as sDescripcionFolio, '+
                              'round(sum(bp.dCantHH),2) as Total, '+
                              'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.dVentaMN, e.dVentaDLL '+
                              'FROM bitacoradepersonal bp '+
                              'inner join bitacoradeactividades ba '+
                              'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                              'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                              'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                              'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                              'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdPersonal and mr.iIdMoe = ( select m.iIdMoe '+
                              'from moe m '+
                              'where m.sContrato = bp.sContrato '+
                              'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                              '                    from moe m1 '+
                              '                    where m1.sContrato = bp.sContrato '+
                              '                    and m1.dIdFecha <= bp.dIdFecha '+
                              '                  ) '+
                              ')                           '+
                              'and eTipoRecurso = "Personal") '+
                              'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                              'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio AND bp.dIdFecha >=:fechaI and bp.dIdFecha <=:fechaF '+
                              'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra order by bp.dIdFecha, bp.sNumeroOrden, e.iItemOrden ');
               qry_tripulacion.ParamByName('Anexo').AsString           := anexos.FieldByName('sAnexo').AsString ;
            end
            else
            if (anexos.FieldByName('Nomenclatura').AsString = '5.') then
            begin
                  qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                              'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                              'o.sIdFolio as sDescripcionFolio, '+
                              'sum(bp.dCantidad) as Total, '+
                              '0 AS Ajuste, 0 as dSolicitado, e.iItemOrden as iItemOrden, e.dVentaMN, e.dVentaDLL '+
                              'FROM bitacoradetiemposextras bp '+

                              'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                              'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                              'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio AND bp.dIdFecha >=:fechaI and bp.dIdFecha <=:fechaF '+
                              'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra '+

                          'union '+
                          'SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdPersonal as sIdRecurso, bp.sDescripcion, '+
                              'concat(bp.sIdPersonal, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                              'o.sIdFolio as sDescripcionFolio, '+
                              'round(sum(bp.dCantHH),2) as Total, '+
                              'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.iItemOrden as iItemOrden, e.dVentaMN, e.dVentaDLL '+
                              'FROM bitacoradepersonal bp '+
                              'inner join bitacoradeactividades ba '+
                              'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                              'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                              'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                              'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                              'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdPersonal and mr.iIdMoe = ( select m.iIdMoe '+
                              'from moe m '+
                              'where m.sContrato = bp.sContrato '+
                              'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                              '                    from moe m1 '+
                              '                    where m1.sContrato = bp.sContrato '+
                              '                    and m1.dIdFecha <= bp.dIdFecha '+
                              '                  ) '+
                              ') '+
                              'and eTipoRecurso = "Personal") '+
                              'inner join personal e on (e.sContrato =:ContratoBarco and e.sIdPersonal = bp.sIdPersonal and e.sAnexo =:Anexo) '+
                              'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio AND bp.dIdFecha >=:fechaI and bp.dIdFecha <=:fechaF '+
                              'and bp.sIdPersonal like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdPersonal, bp.sTipoObra '+
                          'order by dIdFecha, sNumeroOrden, iItemOrden ');
                 qry_tripulacion.ParamByName('Anexo').AsString := anexos.FieldByName('sAnexo').AsString ;
            end
            else
            //>>Equipo<<
               qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra,bp.sIdEquipo as sIdRecurso, bp.sDescripcion, '+
                              'concat(bp.sIdEquipo, " ", bp.sDescripcion) as sDescripcionRecurso, bp.sNumeroOrden, e.sMedida, '+
                              'o.sIdFolio as sDescripcionFolio, '+
                              'round(sum(bp.dCantHH),2) as Total, '+
                              'ifnull(SUM(bp.dAjuste),0) AS Ajuste, mr.dCantidad as dSolicitado, e.dVentaMN, e.dVentaDLL '+
                              'FROM bitacoradeequipos bp '+
                              'inner join bitacoradeactividades ba '+
                              'on (bp.sContrato =ba.sContrato and ba.sNumeroOrden=bp.sNumeroOrden and '+
                              'bp.dIdFecha = ba.didfecha and ba.iIdDiario=bp.iIdDiario and '+
                              'ba.iIdTarea=bp.iIdTarea and ba.iIdActividad=bp.iIdActividad) '+
                              'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                              'inner join moerecursos mr on (mr.sIdRecurso = bp.sIdEquipo and mr.iIdMoe = ( select m.iIdMoe '+
                              'from moe m '+
                              'where m.sContrato = bp.sContrato '+
                              'and m.dIdFecha = ( select max( m1.dIdFecha ) '+
                              '                    from moe m1 '+
                              '                    where m1.sContrato = bp.sContrato '+
                              '                    and m1.dIdFecha <= bp.dIdFecha '+
                              '                  ) '+
                              ')                           '+
                              'and eTipoRecurso = "Equipo") '+
                              'inner join equipos e on (e.sContrato =:ContratoBarco and e.sIdEquipo = bp.sIdEquipo) '+
                              'WHERE bp.scontrato =:Contrato AND bp.sNumeroOrden like :folio AND bp.didfecha >=:fechaI and bp.dIdFecha <=:fechaF '+
                              'and bp.sIdEquipo like :categoria and bp.sTipoObra like :Tipo GROUP BY bp.dIdFecha, bp.sNumeroOrden, bp.sIdEquipo, bp.sTipoObra order by bp.dIdFecha, bp.sNumeroOrden, e.iItemOrden ');

            //qry_tripulacion.params.ParamByName('pernocta').asString  := local_global_pernocta;
            qry_tripulacion.ParamByName('Tipo').AsString             := '%';
        end;

        if (anexos.FieldByName('Nomenclatura').AsString = '1.') then
        begin
            qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, tp.sIdTipoMovimiento as sIdRecurso, tp.sDescripcion, '+
                            'concat(tp.sIdTipoMovimiento, " ", tp.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, "" as sMedida, '+
                            'o.sIdFolio as sDescripcionFolio, '+
                            'round(sum(bp.sFactor),6) as Total, '+
                            'ifnull(SUM(bp.sFactorBarco),0) AS Ajuste, 0.00000 as dSolicitado, tp.dVentaMN, tp.dVentaDLL '+
                            'FROM movimientosxfolios bp '+
                            'inner join ordenesdetrabajo o on (o.sContrato = bp.sNumeroOrden and o.sNumeroOrden = bp.sFolio ) '+
                            'inner join movimientosdeembarcacion me on (me.sContrato =bp.sContrato and me.dIdFecha = bp.dIdFecha and me.iIdDiario = bp.iIddiario ) '+
                            'inner join tiposdemovimiento tp on (tp.sContrato = bp.sContrato and tp.sIdTipoMovimiento = me.sClasificacion and tp.sClasificacion = "Movimiento de barco") '+
                            'WHERE bp.scontrato =:ContratoBarco AND bp.sNumeroOrden =:Contrato AND bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                            'and me.sClasificacion like :categoria and bp.sfolio like :folio '+
                            'group by bp.dIdFecha, bp.sFolio, tp.sIdTipoMovimiento order by me.dIdFecha, tp.sIdTipoMovimiento, o.iOrden');

        end;

        if (anexos.FieldByName('Nomenclatura').AsString = '4.') then
        begin
            qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, bp.sIdCuenta as sIdRecurso, bp.sIdCategoria, c.sDescripcion, '+
                            'concat(bp.sIdCuenta, " ", c.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, c.sMedida, '+
                            'o.sIdFolio as sDescripcionFolio, '+
                            'sum(bp.dCantidad) as Total, '+
                            '0.00000 AS Ajuste, 0.00000 as dSolicitado, c.iOrden as Ordena, c.dVentaMN, c.dVentaDLL '+
                            'FROM bitacoradepernocta bp '+
                            'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                            'inner join cuentas c on (c.sIdCuenta = bp.sIdCuenta) '+
                            'WHERE bp.sContrato =:Contrato AND bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                            'and bp.sIdCuenta like :Categoria and bp.sNumeroOrden like :Folio and :ContratoBarco = :ContratoBarco '+
                            'group by dIdFecha, sNumeroOrden, sIdCategoria '+
                      'union '+
                      'select bp.sContrato, bp.dIdFecha, bp.iIdDiario, bp.sTipoObra, bp.sTipoPernocta as sIdRecurso, bp.sIdPersonal, cc.sDescripcion, '+
                            'concat(cc.sIdCuenta, " ", cc.sDescripcion) as sDescripcionRecurso, o.sNumeroOrden, cc.sMedida, '+
                            '    o.sIdFolio as sDescripcionFolio, '+
                            'round(sum( bp.dCantHH),2) as Total, '+
                            'ifnull(SUM(bp.dAjuste),0) AS Ajuste, 0.00000 as dSolicitado, cc.iOrden as Ordena, cc.dVentaMN, cc.dVentaDLL '+
                            'from bitacoradepersonal bp '+
                            'inner join cuentas cc on (cc.sIdCuenta = bp.sTipoPernocta) '+
                            'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                            'where bp.sContrato =:Contrato '+
                            'and bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                            'and bp.sNumeroOrden like :Folio and bp.sTipoObra like :Tipo and bp.lAplicaPernocta = "Si" '+
                      'group by dIdFecha, sNumeroOrden, sIdPersonal '+
                      'order by dIdFecha, sNumeroOrden, Ordena');
              qry_tripulacion.ParamByName('Tipo').AsString             := '%';
        end;

        if (anexos.FieldByName('Nomenclatura').AsString = '6.') or (anexos.FieldByName('Nomenclatura').AsString = '7.') or (anexos.FieldByName('Nomenclatura').AsString = '8.') or
           (anexos.FieldByName('Nomenclatura').AsString = '9.') or (anexos.FieldByName('Nomenclatura').AsString = '11.') or (anexos.FieldByName('Nomenclatura').AsString = 'E.') or
           (anexos.FieldByName('Nomenclatura').AsString = '12.') or (anexos.FieldByName('Nomenclatura').AsString = '13.') then
        begin
            if (anexos.FieldByName('Nomenclatura').AsString = '6.') then
               local_tipo := 'C6';

            if (anexos.FieldByName('Nomenclatura').AsString = '7.') then
               local_tipo := 'C7';

            if (anexos.FieldByName('Nomenclatura').AsString = '8.') then
               local_tipo := 'C8';

            if (anexos.FieldByName('Nomenclatura').AsString = '9.') then
               local_tipo := 'C9';

            if (anexos.FieldByName('Nomenclatura').AsString = '11.') then
               local_tipo := 'C11';

            if (anexos.FieldByName('Nomenclatura').AsString = '12.') then
               local_tipo := 'C12';

            if (anexos.FieldByName('Nomenclatura').AsString = '13.') then
               local_tipo := 'C13';

            if (anexos.FieldByName('Nomenclatura').AsString = 'E.') then
               local_tipo := 'C';

            qry_tripulacion.SQL.Add('SELECT bp.sContrato, bp.dIdFecha, bp.iIdDiario, "" as sTipoObra, bp.sIdMaterial as sIdRecurso, substr(ax.mDescripcion,1,250) as sDescripcion, '+
                            'concat(bp.sIdMaterial, " ", substr(bp.mDescripcion,0,250)) as sDescripcionRecurso, o.sNumeroOrden, ax.sMedida, ax.mDescripcion, '+
                            'o.sIdFolio as sDescripcionFolio, '+
                            'sum(bp.dCantidad) as Total, '+
                            '0.00000 AS Ajuste, 0.00000 as dSolicitado, ax.dVentaMN, ax.dVentaDLL '+
                            'FROM bitacorademateriales bp '+
                            'inner join ordenesdetrabajo o on (o.sContrato = bp.sContrato and o.sNumeroOrden = bp.sNumeroOrden ) '+
                            'inner join actividadesxanexo ax on (ax.sContrato =:ContratoBarco and ax.sNumeroActividad = bp.sIdMaterial and ax.sTipoActividad = "Actividad") '+
                            'WHERE bp.scontrato =:contrato AND bp.didfecha >=:FechaI and bp.dIdFecha <=:FechaF '+
                            'and bp.sIdMaterial like :Categoria and bp.sNumeroOrden like :Folio and ax.sAnexo =:Anexo '+
                            'group by bp.dIdFecha, bp.sNumeroOrden, bp.sIdMaterial order by bp.dIdFecha, ax.iItemOrden');
             qry_tripulacion.params.ParamByName('Anexo').asString  := local_tipo;
        end;


        qry_tripulacion.params.ParamByName('contratoBarco').asString  := global_contrato_barco;
        qry_tripulacion.params.ParamByName('contrato').asString       := global_contrato;
//        qry_tripulacion.params.ParamByName('fechaI').AsDate           := tdIdFecha.Date;
//        qry_tripulacion.params.ParamByName('fechaF').AsDate           := tdIdFechaTermino.Date;

        qry_tripulacion.params.ParamByName('categoria').DataType := ftString;
        qry_tripulacion.params.ParamByName('categoria').Value := '%';
        qry_tripulacion.params.ParamByName('folio').DataType := ftString;
        qry_tripulacion.params.ParamByName('folio').Value :=  '';

        qry_tripulacion.Open;

        dTotalVentaMN  := 0;
        dTotalVentaDLL := 0;
        qry_tripulacion.First;
        while not qry_tripulacion.Eof do
        begin
            dTotalVentaMN  := dTotalVentaMN  + ((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)* qry_tripulacion.FieldByName('dVentaMN').AsFloat);
            dTotalVentaDLL := dTotalVentaDLL + ((qry_tripulacion.FieldByName('Total').AsFloat + qry_tripulacion.FieldByName('Ajuste').AsFloat)* qry_tripulacion.FieldByName('dVentaDLL').AsFloat);
            qry_tripulacion.Next;
        end;

        TablaDatos.Append;
        TablaDatos.FieldByName('sAnexo').AsString   := anexos.FieldByName('sAnexo').AsString;
        TablaDatos.FieldByName('sTitulo').AsString  := anexos.FieldByName('sEtiqueta').AsString;
        TablaDatos.FieldByName('sAnexoDescripcion').AsString := anexos.FieldByName('sAnexoDescripcion').AsString;
        TablaDatos.FieldByName('dMontoMN').AsFloat  := dTotalVentaMN;
        TablaDatos.FieldByName('dmontoDLL').AsFloat := dTotalVentaDLL;
        TablaDatos.FieldByName('Incluye').AsString  := 'No';
        TablaDatos.Post;

        anexos.Next
   end;

end;


procedure TfrmOrdenes_Compra.ImprimeReporte;
begin
      try
      if (qry_Tripulacion.Active) and (TablaDatos.RecordCount > 0) then
//        procReporteNotaCampo(orden_compra.FieldByName('IdNota').AsInteger, Global_Contrato, ZLookTripulacion.FieldByName('sNumeroOrden').AsString, ZLookTripulacion.FieldByName('sIdConvenio').AsString, '' ,'TD', '', ZLookTripulacion.FieldByName('sTipoActa').AsString, tdIdFecha.Date, tdIdFechaTermino.Date, frmnota_campo, frxGenerador.OnGetValue, progreso, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'))
      else
        showmessage('No hay datos para Imprimir');
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Control de pernoctas', 'Al imprimir', 0);
    end;
  end;
end;

function TfrmOrdenes_Compra.BuscarNota(sParamContrato, sParamFolio :string) :boolean;
var
    zqConsulta : tzReadOnlyQuery;
begin
    zqConsulta := TzReadOnlyQuery.create(nil);
    zqConsulta.Connection := Connection.zConnection;

    zqconsulta.Active := False;
    zqConsulta.SQL.Clear;
    zqConsulta.SQL.Add('select sNumeroOrden from rd_nota_campo where sContrato =:Contrato and sNumeroOrden =:Folio');
    zqConsulta.ParamByName('contrato').AsString := sParamContrato;
    zqConsulta.ParamByName('folio').AsString    := sParamFolio;
    zqConsulta.Open;

    if zqConsulta.RecordCount > 0 then
    begin
       messageDLG('La nota de campo ya fue creada!', mtInformation, [mbOk],0);
       result := True
    end
    else
       result := False;

   zqConsulta.Destroy;
end;

function TfrmOrdenes_Compra.BuscarEspacioNota(iParamNota :integer) :boolean;
var
    zqConsulta : tzReadOnlyQuery;
begin
    zqConsulta := TzReadOnlyQuery.create(nil);
    zqConsulta.Connection := Connection.zConnection;

    zqconsulta.Active := False;
    zqConsulta.SQL.Clear;
    zqConsulta.SQL.Add('select idNota from rd_anexos_nota_espacios where idNota =:Nota');
    zqConsulta.ParamByName('Nota').AsInteger    := iParamNota;
    zqConsulta.Open;

    if zqConsulta.RecordCount > 0 then
       result := True
    else
       result := False;

   zqConsulta.Destroy;
end;

function TfrmOrdenes_Compra.BuscarAjusteNota(iParamNota :integer) :boolean;
var
    zqConsulta : tzReadOnlyQuery;
begin
    zqConsulta := TzReadOnlyQuery.create(nil);
    zqConsulta.Connection := Connection.zConnection;

    zqconsulta.Active := False;
    zqConsulta.SQL.Clear;
    zqConsulta.SQL.Add('select idNota from rd_anexos_nota_ajustes where idNota =:Nota');
    zqConsulta.ParamByName('Nota').AsInteger    := iParamNota;
    zqConsulta.Open;

    if zqConsulta.RecordCount > 0 then
       result := True
    else
       result := False;

   zqConsulta.Destroy;
end;

procedure TfrmOrdenes_Compra.EliminaEspacioNota(iParamNota :integer);
var
    zqConsulta : tzReadOnlyQuery;
begin
    zqConsulta := TzReadOnlyQuery.create(nil);
    zqConsulta.Connection := Connection.zConnection;

    zqconsulta.Active := False;
    zqConsulta.SQL.Clear;
    zqConsulta.SQL.Add('delete from rd_anexos_nota_espacios where idNota =:Nota');
    zqConsulta.ParamByName('Nota').AsInteger    := iParamNota;
    zqConsulta.ExecSQL;

   zqConsulta.Destroy;
end;

procedure TfrmOrdenes_Compra.InsertarEspaciosNotas(iParamNota :Integer; sParamContrato, sParamFolio :String);
var
    zqConsulta, zqFolio, zqInserta : tzReadOnlyQuery;
begin
    zqConsulta := TzReadOnlyQuery.create(nil);
    zqConsulta.Connection := Connection.zConnection;

    zqFolio := TzReadOnlyQuery.create(nil);
    zqfolio.Connection := Connection.zConnection;

    zqInserta := TzReadOnlyQuery.create(nil);
    zqInserta.Connection := Connection.zConnection;

    zqFolio.Active := False;
    zqFolio.SQL.Clear;
    zqFolio.SQL.Add('select sNumeroActividad from actividadesxorden where sContrato =:Contrato and sNumeroOrden =:Folio and sTipoActividad ="Actividad" order by iItemOrden');
    zqFolio.ParamByName('contrato').AsString := sParamContrato;
    zqFolio.ParamByName('folio').AsString    := sParamFolio;
    zqFolio.Open;

    //Nota de campo..
    zqInserta.Active := False;
    while not zqFolio.Eof do
    begin
        zqInserta.SQL.Clear;
        zqInserta.SQL.Add('insert into rd_anexos_nota_espacios values ('+IntToStr(iParamNota)+', 3, '+quotedstr(zqFolio.FieldByName('sNumeroActividad').AsString)+','+IntToStr(-1)+','+quotedstr('Partida')+', 0); ');
        zqInserta.ExecSQL;
        zqInserta.SQL.Clear;
        zqInserta.SQL.Add('insert into rd_anexos_nota_espacios values ('+IntToStr(iParamNota)+', 3, '+quotedstr(zqFolio.FieldByName('sNumeroActividad').AsString)+','+IntToStr(-2)+','+quotedstr('Horarios')+', 0); ');
        zqInserta.ExecSQL;
        zqconsulta.Active := False;
        zqConsulta.SQL.Clear;
        zqConsulta.SQL.Add('select ant.sAnexo, a.sAnexoDescripcion '+
                           ' from rd_anexos_nota ant '+
                           ' inner join anexos a on (ant.sAnexo = a.sanexo) '+
                           ' where ant.idNota = :Nota ');
        zqConsulta.ParamByName('Nota').AsInteger    := iParamNota;
        zqConsulta.Open;

        while not zqConsulta.Eof do
        begin
            zqInserta.SQL.Clear;
            zqInserta.SQL.Add('insert into rd_anexos_nota_espacios values ('+IntToStr(iParamNota)+', 3,'+quotedstr(zqFolio.FieldByName('sNumeroActividad').AsString)+','+quotedstr(zqConsulta.FieldByName('sAnexo').AsString)+','+quotedstr('Recursos')+', 0);');
            zqInserta.ExecSQL;
            zqConsulta.Next;
        end;
        zqFolio.Next;
    end;
   //Resumen de costos
   zqConsulta.First;
   while not zqConsulta.Eof do
   begin
       zqInserta.SQL.Clear;
       zqInserta.SQL.Add('insert into rd_anexos_nota_espacios values ('+IntToStr(iParamNota)+', 4, '+quotedstr('S/N')+','+quotedstr(zqConsulta.FieldByName('sAnexo').AsString)+','+quotedstr('Recursos')+', 0);');
       zqInserta.ExecSQL;
       zqConsulta.Next;
   end;

   zqConsulta.Destroy;
   zqFolio.Destroy;
   zqInserta.Destroy;
end;

procedure TfrmOrdenes_Compra.orden_compraAfterScroll(DataSet: TDataSet);
begin
    zqOcDetalle.Active := False;
    zqOCDetalle.ParamByName('OC').AsInteger := orden_compra.FieldByName('IdOrdenCompra').AsInteger ;
    zqOCDetalle.Open;
end;

end.

