unit Frm_Modal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer,
  dxLayoutControl, dxBarBuiltInMenu, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.ComCtrls, dxCore,
  cxDateUtils, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxPC, Data.DB, MemDS, DBAccess, Uni, cxGroupBox,
  cxRadioGroup, cxDBEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxCurrencyEdit,
  dxmdaset, cxLabel, frxClass, frxDBSet, cxMemo, cxCalc, cxCheckBox, UnitExcepciones;

type
  TFrmModal = class(TForm)
    cxPageModal: TcxPageControl;
    cxTabRequisicion: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cbRecurso: TcxLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cbFechaInicio: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    cbFechaFinal: TcxDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    Panel1: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    bynCancelar: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    zRecurso: TUniQuery;
    dsRecurso: TDataSource;
    zDatos: TUniQuery;
    zSub: TUniQuery;
    zFolio: TUniQuery;
    cxTabCotizacion: TcxTabSheet;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    Panel3: TPanel;
    dxLayoutItem6: TdxLayoutItem;
    cxBtnAcepta2: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxBtnCancel2: TcxButton;
    cxFechaCot: TcxDateEdit;
    dxLayoutItem9: TdxLayoutItem;
    cmbCotizaciones: TcxLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    cxTabEntrada: TcxTabSheet;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    cxAlmacenes: TcxLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    cxFechaEntrada: TcxDateEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    cxAceptarEntrada: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    cxCancelarEntrada: TcxButton;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    uAlmacen: TUniQuery;
    dsAlmacen: TDataSource;
    PanelGridEntradas: TPanel;
    cxGridDBEntrada: TcxGridDBTableView;
    cxGridEntradasLevel1: TcxGridLevel;
    cxGridEntradas: TcxGrid;
    cxGridCodigo: TcxGridDBColumn;
    cxGridMaterial: TcxGridDBColumn;
    cxGridComprado: TcxGridDBColumn;
    cxButtonSelecEntradas: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    anexo_compEntradas: TUniQuery;
    dsCompEntradas: TDataSource;
    zEntrada: TUniQuery;
    cxGridEntregado: TcxGridDBColumn;
    mCompEntradas: TdxMemData;
    mCompEntradasIdInsumo: TIntegerField;
    mCompEntradasMaterial: TMemoField;
    mCompEntradasCantComp: TFloatField;
    mCompEntradasCantEntregada: TFloatField;
    mCompEntradasiFolioRequisicion: TStringField;
    mCompEntradasEstatus: TStringField;
    mCompEntradasCodigo: TStringField;
    zBitacora: TUniQuery;
    cxTabFirma: TcxTabSheet;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    Panel2: TPanel;
    dxLayoutControl8: TdxLayoutControl;
    add: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    zFirmas: TUniQuery;
    cbFirmante: TcxLookupComboBox;
    dxLayoutItem16: TdxLayoutItem;
    dsFirmas: TDataSource;
    cxTabReporte: TcxTabSheet;
    cbProyecto: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    zProyecto: TUniQuery;
    dsProyecto: TDataSource;
    btnAddReporte: TcxButton;
    CancelReporte: TcxButton;
    zSalida_alm_costo: TUniQuery;
    frxEntrada: TfrxReport;
    cxLabel2: TcxLabel;
    cxTabPago: TcxTabSheet;
    btnAddPago: TcxButton;
    btnCancelPago: TcxButton;
    cbTiposPago: TcxComboBox;
    cxLabel3: TcxLabel;
    edtMonto: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    zPagos: TUniQuery;
    cxTabPersonalFirma: TcxTabSheet;
    cxTabPuestoFirma: TcxTabSheet;
    cxLabel5: TcxLabel;
    btnAceptar: TcxButton;
    btnCancelar: TcxButton;
    cxLabel6: TcxLabel;
    btnAcepta: TcxButton;
    btnCancela: TcxButton;
    cxPuesto: TcxTextEdit;
    cxPersonal: TcxTextEdit;
    cxTabConfiguraMoneda: TcxTabSheet;
    dxLayoutControl9Group_Root: TdxLayoutGroup;
    dxLayoutControl9: TdxLayoutControl;
    dsMoneda: TDataSource;
    zMoneda: TUniQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem22: TdxLayoutItem;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxTabOrdenesCompra: TcxTabSheet;
    dxLayoutControl10Group_Root: TdxLayoutGroup;
    dxLayoutControl10: TdxLayoutControl;
    dxLayoutItem15: TdxLayoutItem;
    cxGridCompras: TcxGrid;
    cxViewOrdenesCompra: TcxGridDBTableView;
    cxColCodigoOC: TcxGridDBColumn;
    cxColPlantaOC: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxColFechaEOC: TcxGridDBColumn;
    cxAddOc: TcxButton;
    dxLayoutItem19: TdxLayoutItem;
    cxCancelOc: TcxButton;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxCodigoOC: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    cxFechaEOC: TcxDBDateEdit;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxNotaOC: TcxDBMemo;
    dxLayoutItem24: TdxLayoutItem;
    cxFirmanteOC: TcxDBLookupComboBox;
    dxLayoutItem25: TdxLayoutItem;
    cxTabSolicita: TcxTabSheet;
    dxLayoutControl11Group_Root: TdxLayoutGroup;
    dxLayoutControl11: TdxLayoutControl;
    dxLayoutItem26: TdxLayoutItem;
    cdFRequerido: TcxDateEdit;
    dxLayoutItem27: TdxLayoutItem;
    cdFInicio: TcxDateEdit;
    dxLayoutItem28: TdxLayoutItem;
    cbRecursosS: TcxLookupComboBox;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    Panel4: TPanel;
    dxLayoutControl12: TdxLayoutControl;
    cxButton2: TcxButton;
    btnSolicita: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutControl13: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    cxTabEstatusPO: TcxTabSheet;
    dxLayoutControl14Group_Root: TdxLayoutGroup;
    dxLayoutControl14: TdxLayoutControl;
    cbEstatus: TcxComboBox;
    btnECancel: TcxButton;
    btnAcept: TcxButton;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem32: TdxLayoutItem;
    checkActivaGrid: TcxCheckBox;
    cxTabFechaEntrega: TcxTabSheet;
    dxLayoutControl15Group_Root: TdxLayoutGroup;
    dxLayoutControl15: TdxLayoutControl;
    dFecha: TcxDateEdit;
    dxLayoutItem33: TdxLayoutItem;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxTabCotDoc: TcxTabSheet;
    dxLayoutControl16: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    btnAceptarCotDoc: TcxButton;
    btnCancelarCotDoc: TcxButton;
    cxFolioCotizacion: TcxTextEdit;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    btnCotDoc: TcxButton;
    dlgPDF: TFileOpenDialog;
    procedure bynCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure addPrequisicion;
    procedure addPsolicita;
    procedure addKit;
    procedure cxPageModalChange(Sender: TObject);
    procedure cmbCotizacionesPropertiesEditValueChanged(Sender: TObject);
    procedure cxBtnCancel2Click(Sender: TObject);
    procedure cxBtnAcepta2Click(Sender: TObject);
    procedure cxAceptarEntradaClick(Sender: TObject);
    procedure cxButtonSelecEntradasClick(Sender: TObject);
    procedure addClick(Sender: TObject);
    procedure CancelReporteClick(Sender: TObject);
    procedure Click(Sender: TObject);
    procedure btnCancelPagoClick(Sender: TObject);
    procedure btnAddPagoClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnAceptaClick(Sender: TObject);
    procedure cbTiposPagoPropertiesChange(Sender: TObject);
    procedure cxMonedaPropertiesChange(Sender: TObject);
    procedure cxAddOcClick(Sender: TObject);
    procedure cxCancelOcClick(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSolicitaClick(Sender: TObject);
    procedure btnECancelClick(Sender: TObject);
    procedure btnAceptClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure btnCotDocClick(Sender: TObject);
    procedure btnAceptarCotDocClick(Sender: TObject);
    procedure btnCancelarCotDocClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var formAntecesor: String;

  end;

var
  FrmModal: TFrmModal;
  nueva : boolean;
  last:Integer;
  zPagoDetalle:TUniquery;
  NombreDocto, Direccion:String;
implementation
 uses frm_connection,Frm_CostoPresupuesto,global,UnitGenerales, Frm_RequisicionMaterial,
 frm_pedidos,frm_valida, frm_Valida_CMMI,frm_AprobacionPagos, frm_FirmasNota, frm_InspeccionMateriales,
  frm_Pedidos_SAP_Estatus, frm_ComprobantesFiscalesD,frm_repositorio,frm_CuentasPorPagar,frm_BancosMovimientos;
{$R *.dfm}

procedure TFrmModal.addClick(Sender: TObject);
begin
 global_frmActivo:='No';
 zSub.Active := False ;
 zSub.SQL.Clear ;
 if formAntecesor = 'frmValida_CMMI' then
 BEGIN
  zSub.SQL.Text:='UPDATE anexo_requisicion SET sUsuarioCompra=:sUsuarioCompra WHERE iFolioRequisicion = :iFolioRequisicion';
   zSub.ParamByName('sUsuarioCompra').AsString:=cbFirmante.Text;
   zSub.ParamByName('iFolioRequisicion').AsInteger:=frmValida_CMMI.grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger;
   zSub.ExecSQL ;
 close;
  frmValida_CMMI.btnAutorizaClick(Sender)
 END
 ELSE
 BEGIN
   zSub.SQL.Text:='UPDATE anexo_requisicion SET sUsuarioCompra=:sUsuarioCompra WHERE iFolioRequisicion = :iFolioRequisicion';
   zSub.ParamByName('sUsuarioCompra').AsString:=cbFirmante.Text;
   zSub.ParamByName('iFolioRequisicion').AsInteger:=frmValida.grid_DatosView.DataController.DataSet.FieldByName('iFolio').AsInteger;
   zSub.ExecSQL ;
   close;
  frmValida.btnAutorizaClick(Sender);
 END;

end;

procedure TFrmModal.addKit;
begin
  connection.zCommand.Active:=False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Text:='select k.Codigo,i.IdInsumo,i.IdMedida,CAST(i.Material as char(250)) as Descripcion,IFNULL(kd.Cantidad,0) as Cantidad from op_kit_equipo k '+
      'inner join op_kit_equipo_detalle kd on k.IdKit = kd.IdKit '+
      'inner join alm_insumos i on i.IdInsumo = kd.IdMaterial '+
      'where k.Codigo = :Codigo';
  connection.zCommand.ParamByName('Codigo').AsString:=frmCostoPresupuesto.cxView_Costos.DataController.DataSet.FieldByName('Codigo').AsString;
  connection.zCommand.Open;
  while not connection.zCommand.Eof do
  begin
    zSub.Active := False ;
    zSub.SQL.Clear ;
    zSub.SQL.Add('INSERT INTO anexo_prequisicion ( sContrato, iFolioRequisicion, IdInsumo, IdOrdenCompra, mDescripcion, IdMedida, dFechaRequerimiento, ' +
                                'dCantidad, dCosto, sNumeroActividad, sWbs, sNumeroOrden, iPeriodo, IdTipoRecurso) '  +
                                'VALUES (:Contrato, :Folio, :Insumo, 0, :Descripcion, :Medida, :Requerido, :Cantidad, 0.00, :Actividad, ' +
                                ':Wbs, :Orden, :Periodo, :IdTipoRecurso) ' );
    zSub.Params.ParamByName('Contrato').DataType     := ftString ;
    zSub.Params.ParamByName('Contrato').value        := Global_Contrato ;
    zSub.Params.ParamByName('Folio').DataType        := ftString ;
    zSub.Params.ParamByName('Folio').value           := last ;
    zSub.Params.ParamByName('Insumo').DataType       := ftString ;
    zSub.Params.ParamByName('Insumo').value          := connection.zCommand.FieldValues['IdInsumo'] ;
    zSub.Params.ParamByName('Descripcion').DataType  := ftMemo ;
    zSub.Params.ParamByName('Descripcion').value     := connection.zCommand.FieldValues['Descripcion'];
    zSub.Params.ParamByName('Medida').DataType       := ftString ;
    zSub.Params.ParamByName('Medida').value          := connection.zCommand.FieldValues['IdMedida'];;
    zSub.Params.ParamByName('Requerido').DataType    := ftDate ;
    zSub.Params.ParamByName('Requerido').value       := cbFechaInicio.Date;
    zSub.Params.ParamByName('Cantidad').DataType     := ftFloat ;
    zSub.Params.ParamByName('Cantidad').value        := (connection.zCommand.FieldValues['Cantidad']*
    frmCostoPresupuesto.cxView_Costos.DataController.DataSet.FieldByName('Cantidad').Value);
    zSub.Params.ParamByName('Wbs').DataType          := ftString ;
    zSub.Params.ParamByName('Actividad').value   := 'S/N' ;
    zSub.Params.ParamByName('Wbs').value         := '' ;
    zSub.Params.ParamByName('Orden').DataType        := ftString ;
    zSub.Params.ParamByName('Orden').value           := connection.qryUBusca2.FieldByName('sNumeroOrden').AsString;;
    zSub.Params.ParamByName('Periodo').AsInteger     := Connection.uconfiguracion.FieldByName('iEjercicio').AsInteger;
    zSub.Params.ParamByName('IdTipoRecurso').AsInteger     := cbRecurso.EditValue;
    zSub.ExecSQL ;
    connection.zCommand.Next;
  end;
end;

procedure TFrmModal.addPrequisicion;
var
zExisInsumo : tUniquery;
begin
  zExisInsumo:=tUniquery.create(nil);
  zExisInsumo.Connection := Connection.uConnection;

  connection.zCommand.Active:=False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Text:='Select pd.IdInsumo,opd.Descripcion,opd.IdRecurso from alm_insumos pd inner join op_presupuesto_detalle as opd on opd.Codigo=pd.Codigo where '+
  ':sNumeroOrden=opd.sNumeroOrden and :IdTipoRecurso=opd.IdTipoRecurso and :Id=opd.IdPresupuestoDetalle';
  connection.zCommand.ParamByName('sNumeroOrden').AsString:=connection.qryUBusca2.FieldByName('sNumeroOrden').AsString;
  connection.zCommand.ParamByName('IdTipoRecurso').AsInteger:=connection.qryUBusca2.FieldByName('IdTipoRecurso').AsInteger;
  connection.zCommand.ParamByName('Id').AsInteger:=connection.qryUBusca2.FieldByName('IdPresupuestoDetalle').AsInteger;
  connection.zCommand.Open;

  zExisInsumo.Active := False ;
  AsignarSQL(zExisInsumo,'ex_alm_insumos_id', pUpdate);
  FiltrarDataSet(zExisInsumo, 'Insumo',[connection.qryUBusca2.FieldValues['Descripcion']]);
  zExisInsumo.Open;



  if zExisInsumo.FieldByName('Existe').AsInteger>0 then begin

    zSub.Active := False ;
    zSub.SQL.Clear ;
    zSub.SQL.Add('INSERT INTO anexo_prequisicion ( sContrato, iFolioRequisicion, IdInsumo, IdOrdenCompra, mDescripcion, IdMedida, dFechaRequerimiento, ' +
                                'dCantidad, dCosto, sNumeroActividad, sWbs, sNumeroOrden, iPeriodo, IdTipoRecurso) '  +
                                'VALUES (:Contrato, :Folio, :Insumo, 0, :Descripcion, :Medida, :Requerido, :Cantidad, 0.00, :Actividad, ' +
                                ':Wbs, :Orden, :Periodo, :IdTipoRecurso) ' );
    zSub.Params.ParamByName('Contrato').DataType     := ftString ;
    zSub.Params.ParamByName('Contrato').value        := Global_Contrato ;
    zSub.Params.ParamByName('Folio').DataType        := ftString ;
    zSub.Params.ParamByName('Folio').value           := last ;
    zSub.Params.ParamByName('Insumo').DataType       := ftString ;
    zSub.Params.ParamByName('Insumo').value          := connection.qryUBusca2.FieldValues['IDRecurso'] ;
    if  zSub.Params.ParamByName('Insumo').value = -1 then
    zSub.Params.ParamByName('Insumo').value          := connection.zCommand.FieldValues['IdInsumo'] ;
    zSub.Params.ParamByName('Descripcion').DataType  := ftMemo ;
  //  zSub.Params.ParamByName('Descripcion').value     := connection.zCommand.FieldValues['Descripcion'] ;
    zSub.Params.ParamByName('Descripcion').value     := connection.qryUBusca2.FieldValues['Descripcion'] ;
    zSub.Params.ParamByName('Medida').DataType       := ftString ;
    zSub.Params.ParamByName('Medida').value          := connection.qryUBusca2.FieldValues['IdMedida'] ;
    zSub.Params.ParamByName('Requerido').DataType    := ftDate ;
    zSub.Params.ParamByName('Requerido').value       := cbFechaInicio.Date;
    zSub.Params.ParamByName('Cantidad').DataType     := ftFloat ;
    zSub.Params.ParamByName('Cantidad').value        := connection.qryUBusca2.FieldValues['Cantidad'] ;
    zSub.Params.ParamByName('Wbs').DataType          := ftString ;
    zSub.Params.ParamByName('Actividad').value   := 'S/N' ;
    zSub.Params.ParamByName('Wbs').value         := '' ;
    zSub.Params.ParamByName('Orden').DataType        := ftString ;
    zSub.Params.ParamByName('Orden').value           := connection.qryUBusca2.FieldByName('sNumeroOrden').AsString;;
    zSub.Params.ParamByName('Periodo').AsInteger     := Connection.uconfiguracion.FieldByName('iEjercicio').AsInteger;
    zSub.Params.ParamByName('IdTipoRecurso').AsInteger     := cbRecurso.EditValue;
    zSub.ExecSQL ;

  end;

end;

procedure TFrmModal.addPsolicita;
begin
  connection.zCommand.Active:=False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Text:='Select pd.IdInsumo from alm_insumos pd inner join anexo_prequisicion as opd on opd.IdInsumo=pd.IdInsumo where '+
  ':iFolioRequisicion=opd.iFolioRequisicion and :IdTipoRecurso=opd.IdTipoRecurso and :Id=opd.IdPrequisicion';
  connection.zCommand.ParamByName('ifolioRequisicion').AsString:=connection.qryUBusca2.FieldByName('iFolioRequisicion').AsString;
  connection.zCommand.ParamByName('IdTipoRecurso').AsInteger:=connection.qryUBusca2.FieldByName('IdTipoRecurso').AsInteger;
  connection.zCommand.ParamByName('Id').AsInteger:=connection.qryUBusca2.FieldByName('IdPrequisicion').AsInteger;
  connection.zCommand.Open;

  zSub.Active := False ;
  zSub.SQL.Clear ;
  zSub.SQL.Add('INSERT INTO anexo_psolicitud ( sContrato, iFoliosolicitud, IdInsumo, iItem, mDescripcion, IdMedida, dFechaRequerimiento, ' +
                              'dCantidad, sObservacion, sEstado, IdTipoRecurso) '  +
                              'VALUES (:Contrato, :Folio, :Insumo, 0, :Descripcion, :Medida, :Requerido, :Cantidad, :sObservacion, ' +
                              ':sEstado, :IdTipoRecurso) ' );
  zSub.Params.ParamByName('Contrato').DataType     := ftString ;
  zSub.Params.ParamByName('Contrato').value        := Global_Contrato ;
  zSub.Params.ParamByName('Folio').DataType        := ftString ;
  zSub.Params.ParamByName('Folio').value           := last ;
  zSub.Params.ParamByName('Insumo').DataType       := ftString ;
//  zSub.Params.ParamByName('Insumo').value          := connection.qryUBusca2.FieldValues['IdTipoRecurso'] ;
//  if  zSub.Params.ParamByName('Insumo').value = -1 then
  zSub.Params.ParamByName('Insumo').value          := connection.zCommand.FieldValues['IdInsumo'] ;
  zSub.Params.ParamByName('Descripcion').DataType  := ftMemo ;
  zSub.Params.ParamByName('Descripcion').value     := connection.qryUBusca2.FieldValues['mDescripcion'] ;
  zSub.Params.ParamByName('Medida').DataType       := ftString ;
  zSub.Params.ParamByName('Medida').value          := connection.qryUBusca2.FieldValues['IdMedida'] ;
  zSub.Params.ParamByName('Requerido').DataType    := ftDate ;
  zSub.Params.ParamByName('Requerido').value       := cdFInicio.Date;
  zSub.Params.ParamByName('Cantidad').DataType     := ftFloat ;
  zSub.Params.ParamByName('Cantidad').value        := connection.qryUBusca2.FieldValues['dCantidadSolicitado'] ;
  zSub.Params.ParamByName('sEstado').AsString     := 'PENDIENTE';
  zSub.Params.ParamByName('IdTipoRecurso').AsInteger     := cbRecursosS.EditValue;
  zSub.ExecSQL ;
end;


procedure TFrmModal.Click(Sender: TObject);
var ds_Presupuesto : TfrxDBDataset;
ds_Proyecto : TfrxDBDataset;
orden : String;
begin
  if (global_frmActivo = 'Reporte_Proyecto') then begin
     // IsOpen:=False;
     if zProyecto.Locate('sNumeroOrden',cbProyecto.EditValue,[]) then
        orden := zProyecto.FieldByName('sNumeroOrden').AsString;
      AsignarSQL(frmRepositorio.ReportePr,'op_presupuesto_detalle',pUpdate);
     // FiltrarDataSet(zSalida_alm_costo,'Contrato,sNumeroOrden,Folio',[global_contrato,cbProyecto.EditValue,'-1']);
      FiltrarDataSet(frmRepositorio.ReportePr,'NumeroOrden,Contrato',[orden,global_contrato]);
      frmRepositorio.ReportePr.Open;

      AsignarSQL(frmRepositorio.ReportePP,'op_presupuesto_detalle_proyectos',pUpdate);
      FiltrarDataSet(frmRepositorio.ReportePP,'Contrato,Folio',[global_contrato,orden]);
      frmRepositorio.ReportePP.Open;
     frmRepositorio.ReportePr.fieldbyname('sNumeroOrden').AsString;
      frmRepositorio.ReportePP.fieldbyname('CostoAlmacen').AsString;
      ds_Presupuesto := TfrxDBDataset.Create(nil);
      ds_Presupuesto.DataSet    := frmRepositorio.ReportePr;
      ds_Presupuesto.UserName   := 'ds_Presupuestos';
      ds_Presupuesto.FieldAliases.Clear;
      frxEntrada.DataSets.Add(ds_Presupuesto);

      ds_Proyecto := TfrxDBDataset.Create(nil);
      ds_Proyecto.DataSet    := frmRepositorio.ReportePP;
      ds_Proyecto.UserName   := 'ds_PProyectos';
      ds_Proyecto.FieldAliases.Clear;
      frxEntrada.DataSets.Add(ds_Proyecto);

      frxEntrada.PreviewOptions.MDIChild := False;
      frxEntrada.PreviewOptions.Modal := True;
      frxEntrada.PreviewOptions.ShowCaptions := False;
      frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      frxEntrada.LoadFromFile(global_files + global_miReporte + '_ALM_Proyectos.fr3');

         if not FileExists(global_files + global_miReporte + '_ALM_Proyectos.fr3') then
            showmessage('El archivo de reporte '+global_Mireporte+'_ALM_Proyectos.fr3 no existe, notifique al administrador del sistema');
          frxEntrada.ShowReport();
      //IsOpen:=True;

  end
  else
  if (global_frmActivo = 'Costos_Salida') then begin
      if zProyecto.Locate('sNumeroOrden',cbProyecto.EditValue,[]) then
        orden := zProyecto.FieldByName('sNumeroOrden').AsString;
     // frmRepositorio.Reporte.Active := False;
      AsignarSQL(frmRepositorio.Reporte,'almacen_salida_costos',pUpdate);
     // FiltrarDataSet(zSalida_alm_costo,'Contrato,sNumeroOrden,Folio',[global_contrato,cbProyecto.EditValue,'-1']);
      FiltrarDataSet(frmRepositorio.Reporte,'Contrato,sNumeroOrden,Folio',[global_contrato,Orden,'-1']);
      frmRepositorio.Reporte.Open;

      ds_Presupuesto := TfrxDBDataset.Create(nil);
      ds_Presupuesto.DataSet    := frmRepositorio.Reporte;
      ds_Presupuesto.UserName   := 'ds_Presupuesto';
      ds_Presupuesto.FieldAliases.Clear;
      frxEntrada.DataSets.Add(ds_Presupuesto);

      frxEntrada.PreviewOptions.MDIChild := False;
      frxEntrada.PreviewOptions.Modal := True;
      frxEntrada.PreviewOptions.ShowCaptions := False;
      frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      frxEntrada.LoadFromFile(global_files + global_miReporte + '_ALM_salida_Costos.fr3');

         if not FileExists(global_files + global_miReporte + '_ALM_salida_Costos.fr3') then
            showmessage('El archivo de reporte '+global_Mireporte+'_ALM_salida_Costos.fr3 no existe, notifique al administrador del sistema');
          frxEntrada.ShowReport();


    //  if not FileExists(global_files + global_miReporte + '_ALM_salida_Costos.fr3') then
    //  begin
    //     showmessage('El archivo de reporte '+global_Mireporte+'_ALM_salida_Costos.fr3 no existe, notifique al administrador del sistema');
    //     exit;
    //  end;
    //
    //  IsOpen:=False;
    //  frxEntrada.LoadFromFile(global_files + global_MiReporte +'_ALM_salida_Costos.fr3');
    //  frxEntrada.ShowReport;
    //  IsOpen:=True;
  end;
end;

procedure TFrmModal.btnAceptaClick(Sender: TObject);
begin
   zSub.Active := False ;
   zSub.SQL.Clear ;
   zSub.SQL.Text:=('INSERT INTO rd_firmas_firmantes (NombreFirmante, IdEmpleado)'  +
                   'VALUES (:Personal, -1)' );
   zSub.ParamByName('Personal').AsString:= cxPersonal.Text;
   zSub.ExecSQL ;
   frmFirmasNota.uFirmantes.Refresh;
   Close;
end;

procedure TFrmModal.btnAceptarClick(Sender: TObject);
begin
   zSub.Active := False ;
   zSub.SQL.Clear ;
   zSub.SQL.Text:=('INSERT INTO rd_firmas_puestos (Descripcion, IdPuesto)'  +
                   'VALUES (:Puesto, -1)' );
   zSub.ParamByName('Puesto').AsString:= cxPuesto.Text;
   zSub.ExecSQL ;
   frmFirmasNota.uPuestos.Refresh;
   Close;
end;

procedure TFrmModal.btnAceptarCotDocClick(Sender: TObject);
var
indice, iGrid    : integer;
//para movimiento_indicadores
  zIdCompr,zInsert,zActualizar:TUniquery;
  Val:String;
begin
  zInsert:=tUniquery.create(nil);
  zInsert.Connection := connection.uConnection;

  zActualizar:=tUniquery.create(nil);
  zActualizar.Connection := connection.uConnection;
  try
     if (assigned(frmCuentasPorPagar) and (frmCuentasPorPagar.btnCot)) then begin
      if frmCuentasPorPagar.cxView_Comprobantes.DataController.GetSelectedCount > 0 then
       begin
          zIdCompr:=tUniquery.create(nil);
          zIdCompr.Connection := connection.uConnection;




          iGrid     := 0;
          indice := frmCuentasPorPagar.cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
          frmCuentasPorPagar.cxView_Comprobantes.DataController.FocusedRowIndex := indice;

          with frmCuentasPorPagar.cxView_Comprobantes.DataController.DataSource.DataSet do
          for iGrid := 0 to frmCuentasPorPagar.cxView_Comprobantes.DataController.GetSelectedCount - 1 do
          begin
            indice := frmCuentasPorPagar.cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
            frmCuentasPorPagar.cxView_Comprobantes.DataController.FocusedRowIndex := indice;

  //          zDocumento.Append;
  //          zDocumento.FieldByName('FolioCotizacion').AsString := cxFolioCotizacion.EditValue;
  //          zDocumento.FieldByName('NombreDocto').AsString := NombreDocto;
  //          zDocumento.FieldByName('Direccion').AsString := Direccion;
  //          zDocumento.FieldByName('IdComprobanteFiscal').AsInteger := frmCuentasPorPagar.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger;
  //          zDocumento.Post;
  //          zDocumento.Refresh;

            //cotizacion_documentos
            zIdCompr.Active:=False;
            AsignarSQL(zIdCompr,'cotizacion_docto', pUpdate);
            FiltrarDataSet(zIdCompr,'Comprobante',[frmCuentasPorPagar.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
            zIdCompr.Open;

            if zIdCompr.RecordCount>0 then  begin
                zActualizar.Active:=False;
                AsignarSQL(zActualizar,'ucotizacion_docto', pUpdate);
                FiltrarDataSet(zActualizar,'Folio,Nombre,Direccion,IdComprobante',[cxFolioCotizacion.EditValue,NombreDocto,Direccion,frmCuentasPorPagar.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
                zActualizar.ExecSQL;
            end
            else begin
              zInsert.Active:=False;
              AsignarSQL(zInsert,'cotizacion_docto_ins', pUpdate);
              FiltrarDataSet(zInsert,'IdComprobante,Folio,Nombre,Direccion',[frmCuentasPorPagar.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger,cxFolioCotizacion.EditValue,NombreDocto,Direccion]);
              zInsert.ExecSQL;
            end;

            //movimiento_indicadores

            zIdCompr.Active:=False;
            AsignarSQL(zIdCompr,'comprobante_movimiento_indicadores', pUpdate);
            FiltrarDataSet(zIdCompr,'Comprobante',[frmCuentasPorPagar.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
            zIdCompr.Open;

            if zIdCompr.RecordCount>0 then  begin
              zActualizar.Active:=False;
              AsignarSQL(zActualizar,'ucotizacion_mov_indicadores', pUpdate);
              FiltrarDataSet(zActualizar,'Cotizacion,IdComprobante',[cxFolioCotizacion.EditValue+ ' '+NombreDocto,frmCuentasPorPagar.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
              zActualizar.ExecSQL;
            end
            else begin
              zInsert.Active:=False;
              AsignarSQL(zInsert,'mov_ind_ins_cotizacion', pUpdate);
              FiltrarDataSet(zInsert,'Cotizacion,IdComprobante',[cxFolioCotizacion.EditValue+ ' '+NombreDocto,frmCuentasPorPagar.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
              zInsert.ExecSQL;
            end;

          end;
          frmCuentasPorPagar.zComprobantes.Refresh;
          frmCuentasPorPagar.btnCot:=False;
          close;
       end;
     end
    else
     if(assigned(frmBancosMovimientos) and (frmBancosMovimientos.btnCotiz)) then begin

        frmBancosMovimientos.zIndicador.Edit;
        frmBancosMovimientos.zIndicador.FieldByName('FolioCotizacion').AsString:=cxFolioCotizacion.EditValue;
//        frmBancosMovimientos.FolioCotizacion:= cxFolioCotizacion.EditValue;
        frmBancosMovimientos.zIndicador.FieldByName('NombreDocto').AsString:=NombreDocto;
        frmBancosMovimientos.zIndicador.FieldByName('Direccion').AsString:=Direccion;
        frmBancosMovimientos.btnCotiz:=False;
        close;

     end
     else
        MessageDlg('Para agregar cotización, seleccione un registro del grid.',mtInformation, [mbOk],0);



      except
      on E : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Compraobantes Fiscales Digitales', 'Al editar registro', 0);
      end;

  end;
end;

procedure TFrmModal.btnAceptClick(Sender: TObject);
begin
  zDatos.Active:=False;
  zDatos.SQL.Clear;
  zDatos.SQL.Text := 'update anexo_pedidos  set TipoEstatus=:TipoEstatus where IdOrdenCompra=:Orden';
  zDatos.ParamByName('TipoEstatus').AsString := cbEstatus.EditValue;
  zDatos.ParamByName('Orden').AsInteger :=  frmPedidos_SAP_Estatus.dbg_OCVista.DataController.DataSource.DataSet.FieldByName('IdOrdenCompra').AsInteger;
  zDatos.ExecSQL;
  frmPedidos_SAP_Estatus.anexo_ocompras.Refresh;
  close;
end;

procedure TFrmModal.btnAddPagoClick(Sender: TObject);
begin
  if (edtMonto.Text<>'') and (cbTiposPago.Text <> '') then
  begin
    zPagos.Active:=False;
    zPagos.SQL.Text:='UPDATE anexo_solicitud_aprobpago SET MontoParcial=:MontoParcial, Estado=:Estado WHERE IdSolicitudPago=:IdSolicitudPago';
    zPagos.ParamByName('MontoParcial').AsFloat:=edtMonto.Value+frmAprobacionP.dbg_OCVista.DataController.DataSet.FieldByName('MontoParcial').AsFloat;
    zPagos.ParamByName('Estado').AsString:=cbTiposPago.Text;
    zPagos.ParamByName('IdSolicitudPago').AsInteger:=frmAprobacionP.dbg_OCVista.DataController.DataSet.FieldByName('IdSolicitudPago').AsInteger;
    zPagos.ExecSQL;
    frmAprobacionP.zAprobacionPago.Refresh;
    zPagoDetalle:=tUniquery.create(nil);
    zPagoDetalle.Connection := Connection.uConnection;
    zPagoDetalle.Active:=False;
    zPagoDetalle.SQL.Add('INSERT INTO SolicitudPago_detalle (IdPagoDetalle, IdSolicitudPago, Monto, Fecha) '+
    'VALUES (0, :IdSolicitudPago, :Monto, :Fecha)');
    zPagoDetalle.ParamByName('IdSolicitudPago').AsInteger:=frmAprobacionP.dbg_OCVista.DataController.DataSet.FieldByName('IdSolicitudPago').AsInteger;
    zPagoDetalle.ParamByName('Monto').AsFloat:=edtMonto.Value;
    zPagoDetalle.ParamByName('Fecha').AsDateTime:=now;
    zPagoDetalle.ExecSQL;
    Close;
  end
  else
  begin
    ShowMessage('Verificar que los datos no esten vacios');
  end;

end;

procedure TFrmModal.btnCancelaClick(Sender: TObject);
begin
 Close;
end;

procedure TFrmModal.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmModal.btnCancelarCotDocClick(Sender: TObject);
begin
 close;
end;

procedure TFrmModal.btnCancelPagoClick(Sender: TObject);
begin
Close;
end;

procedure TFrmModal.btnCotDocClick(Sender: TObject);
var
  BlobStream : TStream;
  FileStream : TFileStream;

  Ext, sArchivo : string;
begin
  {$region 'CargarDocumento'}
  try
    dlgPDF.FileName := '';
    lNoGuardarDocto := False;

    if not dlgPDF.Execute() then
      exit;

    Archivo := dlgPDF.FileName;

    if not FileExists(Archivo) then
      raise exception.Create('No se encontro el archivo especificado');

    Ext := ExtractFileExt(Archivo);


    NombreDocto := ExtractFileName(Archivo);
    Direccion := ExtractFilePath(Archivo) + ExtractFileName(Archivo);


  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
    end;
  end;
  {$endregion}
end;

procedure TFrmModal.btnECancelClick(Sender: TObject);
begin
 close;
end;

procedure TFrmModal.btnSolicitaClick(Sender: TObject);
var
   personalGrid,tipo,folio : String;
   contPerGrid, j,iGrid,indice : Integer;
begin
  if cbRecursosS.Text='' then
  begin
    showMessage('Selecionar Recurso');
    exit;
  end;
  last:=0;
  folio:=autoFolioCod(zFolio,'anexo_solicitud');
  connection.qryUBusca.Active:=False;
  connection.qryUBusca.SQL.Text:='select u.IdDepartamento, u.sNombre from usuarios as u where u.sIdUsuario = :Usuario;';
  connection.qryUBusca.ParamByName('Usuario').AsString:=global_usuario;
  connection.qryUBusca.Open;

  Tipo:= cbRecursosS.Text;
  zDatos.Active:=False;
  zDatos.SQL.Clear;
  zDatos.SQL.Add('INSERT INTO anexo_solicitud(sContrato, iFolioSolicitud, iFolioRequisicion, sNumFolio,'+
  ' sNumeroOrden, sNumeroOrdenCentroC, dIdFecha, dFechaSolicitado, dFechaRequerido, sRequisita, sSolicito, sStatus, mComentarios, sLugarEntrega, IdFirma, sIdUsuario, sPrioridad, IdDepartamento, IdTipoRecurso)'+
  'VALUES (:sContrato, :iFolioSolicita, :iFolioRequisicion, :sNumFolio, :sNumeroOrden, :sNumeroOrdenCentroC, :dIdFecha, :dFechaSolicitado,'+
  ' :dFechaRequerido, :sRequisita,  :sSolicito, :sStatus, :mComentarios, :sLugarEntrega, :IdFirma, :sIdUsuario, :sPrioridad,  :IdDepartamento, :IdTipoRecurso);');

  zDatos.ParamByName('sNumFolio').AsString:=Folio;
  zDatos.ParamByName('sContrato').AsString:=global_Contrato;
  zDatos.ParamByName('iFolioRequisicion').AsInteger := FrmRequisicionMaterial.anexo_requisicion.FieldByName('iFolioRequisicion').AsInteger;
//  zDatos.ParamByName('iPeriodo').AsInteger:=Connection.uconfiguracion.FieldByName('iEjercicio').AsInteger;
  zDatos.ParamByName('sNumeroOrden').AsString:= FrmRequisicionMaterial.anexo_requisicion.FieldByName('sNumeroOrden').AsString;
  zDatos.ParamByName('sNumeroOrdenCentroC').AsString :=  FrmRequisicionMaterial.anexo_requisicion.FieldByName('sNumeroOrdenCentroC').AsString;
  zDatos.ParamByName('dIdFecha').Value:=cdFInicio.Date;
  zDatos.ParamByName('dFechaSolicitado').Value:=cdFInicio.Date;
  zDatos.ParamByName('dFechaRequerido').Value:=cdFRequerido.Date;
  zDatos.ParamByName('sRequisita').AsString:=connection.qryUBusca.FieldByName('sNombre').AsString;
//  zDatos.ParamByName('sReferencia').AsString:= FrmRequisicionMaterial.anexo_requisicion.FieldByName('sNumeroOrdenCentroC').AsString;
  zDatos.ParamByName('sSolicito').AsString:=GLOBAL_NOMBRE;
  zDatos.ParamByName('sStatus').AsString:='PENDIENTE';
  zDatos.ParamByName('mComentarios').AsString:='*';
  zDatos.ParamByName('sLugarEntrega').AsInteger:=1;
  zDatos.ParamByName('IdFirma').AsInteger :=  FrmRequisicionMaterial.anexo_requisicion.FieldByName('IdFirma').AsInteger;
  zDatos.ParamByName('sIdUsuario').AsString:=global_usuario;
  zDatos.ParamByName('sPrioridad').AsString:='Normal';
  zDatos.ParamByName('IdDepartamento').AsInteger:=connection.qryUBusca.FieldByName('IdDepartamento').AsInteger;
  zDatos.ParamByName('IdTipoRecurso').AsInteger:=cbRecursosS.EditValue;
  zDatos.ExecSQL;

  zDatos.SQL.Clear;
  zDatos.SQL.Text:='select max(iFolioSolicitud) as folio from anexo_solicitud';
  zDatos.Open;


  last:=zDatos.FieldByName('folio').AsInteger;
  contPerGrid := frmRequisicionMaterial.cxView_Materiales.ViewData.RecordCount;

  with frmRequisicionMaterial.cxView_Materiales.DataController.DataSource.DataSet do
  for iGrid := 0 to frmRequisicionMaterial.cxView_Materiales.DataController.GetSelectedCount - 1 do
  begin
    //las siguientes dos lineas son para posicionar el dataset en cada uno de los registros seleccionados
    indice := frmRequisicionMaterial.cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
    frmRequisicionMaterial.cxView_Materiales.DataController.FocusedRowIndex := indice;

    connection.qryUBusca2.Active:=False;
    connection.qryUBusca2 .SQL.Clear;
    connection.qryUBusca2.SQL.Text:='Select pd.*, (Select Nombre from op_tiporecurso where IdTipoRecurso = pd.IdTipoRecurso) as TipoRecurso from anexo_prequisicion pd where '+
    '(:iFolioRequisicion=-1 or (:iFolioRequisicion<>-1 and pd.iFolioRequisicion=:iFolioRequisicion)) and '+
    '(:Contrato=-1 or (:Contrato<>-1 and pd.sContrato=:Contrato)) and '+
    '(:IdPRequisicion or (:IdPRequisicion <> -1 and :IdPRequisicion = pd.IdPRequisicion)) '+
    'and pd.IdTipoRecurso = :Tipo';
    connection.qryUBusca2.ParamByName('iFolioRequisicion').AsString:=frmRequisicionMaterial.anexo_requisicion.FieldByName('iFolioRequisicion').AsString;
    connection.qryUBusca2.ParamByName('Contrato').AsString:=global_contrato;
    connection.qryUBusca2.ParamByName('IdPRequisicion').AsString:=frmRequisicionMaterial.cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsString;
    connection.qryUBusca2.ParamByName('Tipo').AsInteger:=frmRequisicionMaterial.cxView_Materiales.DataController.DataSet.FieldByName('IdTipoRecurso').AsInteger;
    connection.qryUBusca2.Open;


    connection.qryUBusca2.Filtered:=False;
    connection.qryUBusca2.Filter:='IdPRequisicion = '+
    QuotedStr( frmRequisicionMaterial.cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsString );
    connection.qryUBusca2.Filtered:=True;
//    if (pos('Kit',frmCostoPresupuesto.cxView_Costos.DataController.DataSet.FieldByName('Codigo').AsString)>0)
//    or (pos('Kit',frmCostoPresupuesto.cxView_Costos.DataController.DataSet.FieldByName('Codigo').AsString)>0)
//    or (pos('KIT',frmCostoPresupuesto.cxView_Costos.DataController.DataSet.FieldByName('Codigo').AsString)>0)then
//    begin
//      addKit;
//    end
//    else
//    begin
      addPsolicita;
//    end;
     connection.qryUBusca2.Filtered:=False;
     connection.QryUBusca2.SQL.Clear;
     connection.qryUBusca2.Close;

  end;
  ShowMessage('Solicitud guardada con éxito');
  bynCancelarClick(Sender);
end;

procedure TFrmModal.bynCancelarClick(Sender: TObject);
begin
 close;
end;


procedure TFrmModal.CancelReporteClick(Sender: TObject);
begin
close;
end;

procedure TFrmModal.cbTiposPagoPropertiesChange(Sender: TObject);
begin

   if (cbTiposPago.Text = 'PAGADO')  then
      edtMonto.Value := frmAprobacionP.dbg_OCVista.DataController.DataSet.FieldByName('dMonto').AsFloat
   else
      edtMonto.Value := 0;

end;

procedure TFrmModal.cmbCotizacionesPropertiesEditValueChanged(Sender: TObject);
begin
  if cmbCotizaciones.EditValue = -1 then begin
    cxFechaCot.Date:=Now;
    nueva:=True;
    dxLayoutItem9.Visible:=True //muestro el componente de la fecha
  end
  else begin
    nueva:=False;
    dxLayoutItem9.Visible:=False //oculto el componente de la fecha
  end;

end;


procedure TFrmModal.cxAceptarEntradaClick(Sender: TObject);
var
   codigoEntrada : string;
   almacen_entrada : tUniquery;
begin

    almacen_entrada:=tUniquery.create(nil);
    almacen_entrada.Connection := Connection.uConnection;


//    while not zBitacora.Eof do
//    begin
//      if zBitacora.FieldByName('iFolioEntrada').AsInteger = almacen_entrada.FieldByName('iFolioEntrada').AsInteger then
//      begin

        uAlmacen.Locate('sDescripcion',cxAlmacenes.Text,[]);

        AsignarSQL(almacen_entrada,'almacen_entrada',pUpdate);
        FiltrarDataSet(almacen_entrada,'Contrato,Usuario',[GLOBAL_CONTRATO,global_usuario]);
        almacen_entrada.Open;
        almacen_entrada.RecordCount;

        codigoEntrada := autofolio(almacen_entrada, 'almacen_entrada', connection.uContrato.FieldByName('IdEmpresa').AsInteger, 0,0);

        AsignarSQL(zDatos,'almacen_entrada_oc',pUpdate);
        FiltrarDataSet(zDatos,'Contrato,Pedido,Pedido,IdAlmacen,Fecha,Proyecto,Fecha,IdUsuario,Codigo,Periodo,Firma',
                       [global_contrato,frmPedidos.anexo_ocompras.FieldByName('IdOrdenCompra').AsInteger,frmPedidos.anexo_ocompras.FieldByName('IdOrdenCompra').AsInteger,uAlmacen.FieldByName('IdAlmacen').AsInteger,
                        FechaSQL(cxFechaEntrada.Date),frmPedidos.anexo_ocompras.FieldByName('sNumeroOrden').AsString,FechaSQL(cxFechaEntrada.Date),global_usuario,
                        codigoEntrada,frmPedidos.anexo_ocompras.FieldByName('iPeriodo').AsInteger,frmPedidos.zFirma.FieldByName('IdFirma').AsInteger]);
        zDatos.ExecSQL;

        AsignarSQL(almacen_entrada,'almacen_entrada',pUpdate);
        FiltrarDataSet(almacen_entrada,'Contrato,Usuario',[GLOBAL_CONTRATO,global_usuario]);
        almacen_entrada.Open;

        almacen_entrada.Locate('sFolioEntrada',codigoEntrada,[]);

        if panelGridEntradas.Visible = False then
        begin

          while not frmPedidos.anexo_pocompras.Eof do
          begin
              if frmPedidos.anexo_pocompras.FieldByName('sStatus').AsString = 'Pendiente' then
              begin

                  AsignarSQL(zSub,'bitacoradeentrada_oc',pUpdate);
                  FiltrarDataSet(zSub,'Contrato,Folio,IdRequisicion,IdInsumo,Fecha,Cantidad,IdAlmacen,Cantidad',
                                 [global_contrato,almacen_entrada.FieldByName('iFolioEntrada').AsInteger,frmPedidos.anexo_pocompras.FieldByName('iFolioRequisicion').AsInteger, frmPedidos.anexo_pocompras.FieldByName('IdInsumo').AsInteger,
                                  FechaSQL(cxFechaEntrada.Date),frmPedidos.anexo_pocompras.FieldByName('dCantidad').AsFloat,uAlmacen.FieldByName('IdAlmacen').AsInteger,frmPedidos.anexo_pocompras.FieldByName('dCantidad').AsFloat]);
                  zSub.ExecSQL;

                  AsignarSQL(zSub,'bitacoradeentrada_oc_update',pUpdate);
                  FiltrarDataSet(zSub,'Contrato,Folio,Insumo,FolioReq',
                                 [global_contrato,frmPedidos.anexo_ocompras.FieldByName('IdOrdenCompra').AsInteger,frmPedidos.anexo_pocompras.FieldByName('IdInsumo').AsInteger, frmPedidos.anexo_pocompras.FieldByName('iFolioRequisicion').AsInteger]);
                  zSub.ExecSQL;

                  AsignarSQL(zSub,'bitacoradeentrada_req_update',pUpdate);
                  FiltrarDataSet(zSub,'Contrato,Insumo,FolioReq',
                                 [global_contrato,frmPedidos.anexo_pocompras.FieldByName('IdInsumo').AsInteger, frmPedidos.anexo_pocompras.FieldByName('iFolioRequisicion').AsInteger]);
                  zSub.ExecSQL;

                end;
              frmPedidos.anexo_pocompras.Next;
          end;
        end
        else begin
         // mCompEntradas.First;
          while not mCompEntradas.Eof do
          begin
        //   frmPedidos.mCompEntradas.Locate('');


               if mCompEntradas.FieldByName('Estatus').AsString = 'Pendiente' then
                  begin
                           AsignarSQL(zSub,'bitacoradeentrada_oc',pUpdate);
                      FiltrarDataSet(zSub,'Contrato,Folio,IdRequisicion,IdInsumo,Fecha,Cantidad,IdAlmacen,Cantidad',
                                     [global_contrato,almacen_entrada.FieldByName('iFolioEntrada').AsInteger,mCompEntradas.FieldByName('iFolioRequisicion').AsInteger, mCompEntradas.FieldByName('IdInsumo').AsInteger,
                                      FechaSQL(cxFechaEntrada.Date), mCompEntradas.FieldByName('CantEntregada').AsFloat,uAlmacen.FieldByName('IdAlmacen').AsInteger,mCompEntradas.FieldByName('CantEntregada').AsFloat]);
                      zSub.ExecSQL;


                       AsignarSQL(zSub,'bitacoradeentrada_oc_update',pUpdate);
                      FiltrarDataSet(zSub,'Contrato,Folio,Insumo,FolioReq',
                                     [global_contrato,frmPedidos.anexo_ocompras.FieldByName('IdOrdenCompra').AsInteger,mCompEntradas.FieldByName('IdInsumo').AsInteger, mCompEntradas.FieldByName('iFolioRequisicion').AsInteger]);
                      zSub.ExecSQL;

                      AsignarSQL(zSub,'bitacoradeentrada_req_update',pUpdate);
                      FiltrarDataSet(zSub,'Contrato,Insumo,FolioReq',
                                     [global_contrato,mCompEntradas.FieldByName('IdInsumo').AsInteger, mCompEntradas.FieldByName('iFolioRequisicion').AsInteger]);
                      zSub.ExecSQL;
                  end;
                  mCompEntradas.Next;
              end;
        end;
//        end;
//        zBitacora.Next;
//      end;
    frmPedidos.anexo_pocompras.Refresh;
    almacen_entrada.Destroy;
    close;
    messageDLG('Se ha creado la entrada No. '+codigoEntrada,mtInformation,[mbOk],0);

end;

procedure TFrmModal.cxAddOcClick(Sender: TObject);
begin
   if (FrmInspeccionMateriales.zInspeccionMaterial.State = dsInsert) then
      FrmInspeccionMateriales.zInspeccionMaterial.FieldByName('IdOrdenCompra').AsInteger := cxViewOrdenesCompra.DataController.DataSet.FieldByName('IdOrdenCompra').AsInteger;

      if (FrmInspeccionMateriales.zInspeccionMaterial.State = dsEdit) then
         if checkActivaGrid.Checked = true then
          FrmInspeccionMateriales.zInspeccionMaterial.FieldByName('IdOrdenCompra').AsInteger := cxViewOrdenesCompra.DataController.DataSet.FieldByName('IdOrdenCompra').AsInteger;

    FrmInspeccionMateriales.frmBarraH21btnPostClick(sender);
    close;
    //FrmInspeccionMateriales.cxNuevoDetalle.Click;
end;

procedure TFrmModal.cxBtnAcepta2Click(Sender: TObject);
var
  iGrid, indice, idCot,contFounds: Integer;
  mensaje : String;
  zExisInsumo : tUniquery;
begin

  zExisInsumo:=tUniquery.create(nil);
  zExisInsumo.Connection := Connection.uConnection;
  mensaje:='¡Seleccione un material a cotizar!';
  contFounds:=0;
  //primero verifico que haya seleccionado un material
  if frmCostopresupuesto.cxView_Costos.DataController.GetSelectedCount > 0 then begin
    //checo si hay que crear una nueva cotización
    idCot:=cmbCotizaciones.EditValue;
    if nueva then begin
      zFolio.Append;
      //creo la nueva cotizacion
      zFolio.FieldByName('Codigo').AsString:=AutoFolio(zFolio,'op_cotizacion_presupuesto');
      zFolio.FieldByName('FechaCreacion').AsDateTime:=Now;
      zFolio.FieldByName('FechaRequerida').AsDateTime:=cxFechaCot.Date;
      zFolio.FieldByName('sIdUsuario').AsString:=GLOBAL_USUARIO;
      zFolio.FieldByName('sNumeroOrden').AsString:=frmCostoPresupuesto.zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString; //se asigna el presupuesto seleccionado en el form de costo presupuesto
      zFolio.Post;
      idCot:=zFolio.LastInsertId; //obtengo el id que acabo de ingresar
    end
    else begin
      idCot:=cmbCotizaciones.EditValue; //si no se crea una nueva cotizacion, tomo el id de la que seleccionó
    end;

    with frmCostoPresupuesto.cxView_Costos.DataController.DataSource.DataSet do
        for iGrid := 0 to frmCostoPresupuesto.cxView_Costos.DataController.GetSelectedCount - 1 do
        begin
            //las siguientes dos lineas son para posicionar el dataset en cada uno de los registros seleccionados
            indice := frmCostoPresupuesto.cxView_Costos.DataController.GetSelectedRowIndex(iGrid);
            frmCostoPresupuesto.cxView_Costos.DataController.FocusedRowIndex := indice;

            //la consulta para traer los materiales que se han cotizado para este presupuesto
            zSub.Active:=False;
            zSub.SQL.Clear;
            zSub.SQL.Text:='SELECT pd.* FROM op_cotizacion_presupuesto_detalle pd '+
              'INNER JOIN op_cotizacion_presupuesto p ON (p.IdCotizacion = pd.IdCotizacion AND p.sNumeroOrden = '+
              QuotedStr(frmCostoPresupuesto.zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString)+')';
            zSub.Open;

            //busco el material en todas las cotizaciones ya creadas
            if not zSub.Locate('IdPresupuestoDetalle',frmCostoPresupuesto.cxView_Costos.DataController.DataSet.FieldByName('IdPresupuestoDetalle').AsInteger,[]) then begin
              //si no lo encuentra, ingresamos el registro en la cotizacion
              zExisInsumo.Active := False ;
              AsignarSQL(zExisInsumo,'ex_alm_insumos_id', pUpdate);
              FiltrarDataSet(zExisInsumo, 'Insumo',[frmCostoPresupuesto.cxView_Costos.DataController.DataSet.FieldByName('Descripcion').AsString]);
              zExisInsumo.Open;


              if zExisInsumo.FieldByName('Existe').AsInteger>0 then
              begin
                zDatos.Active:=False;
                zDatos.SQL.Clear;
                zDatos.SQL.Text:='INSERT INTO op_cotizacion_presupuesto_detalle (IdCotizacion,IdPresupuestoDetalle,FechaCotizado,Costo) VALUES (:Cotizacion,:Recurso,:Fecha,:Costo)';
                zDatos.ParamByName('Cotizacion').AsInteger:=idCot;
                zDatos.ParamByName('Recurso').AsInteger:=frmCostoPresupuesto.cxView_Costos.DataController.DataSet.FieldByName('IdPresupuestoDetalle').AsInteger;
                zDatos.ParamByName('Fecha').AsDateTime:=Now;
                zDatos.ParamByName('Costo').AsFloat:=0.0;
                zDatos.ExecSQL;


              end;

            end
            else
              contFounds:=contFounds+1; //cuento cuántos registros ya se han cotizado
        end;
    if nueva then
      mensaje:='Cotización Creada con Éxito.'+#13
    else
      mensaje:='';
    mensaje:='Se han agregado ';
    mensaje:= mensaje + IntToStr(frmCostoPresupuesto.cxView_Costos.DataController.GetSelectedCount - contFounds) + ' materiales a la cotización.';

    frmCostoPresupuesto.cxView_Costos.DataController.ClearSelection;
  end;
  ShowMessage(mensaje);
  if contFounds > 0 then
    ShowMessage('Ya se han cotizado ['+IntToStr(contFounds)+'] materiales previamente.'+#13+'Verifique con el encargado de compras.');
end;

procedure TFrmModal.cxBtnCancel2Click(Sender: TObject);
begin
   close;
end;

procedure TFrmModal.cxButton1Click(Sender: TObject);
var
   personalGrid,tipo,folio : String;
   contPerGrid, j,iGrid,indice : Integer;
begin
  if cbRecurso.Text='' then
  begin
    showMessage('Selecionar Recurso');
    exit;
  end;
  last:=0;
  folio:=autoFolioCod(zFolio,'anexo_requisicion');
  connection.qryUBusca.Active:=False;
  connection.qryUBusca.SQL.Text:='select u.IdDepartamento, u.sNombre from usuarios as u where u.sIdUsuario = :Usuario;';
  connection.qryUBusca.ParamByName('Usuario').AsString:=global_usuario;
  connection.qryUBusca.Open;

  Tipo:= cbRecurso.Text;
  zDatos.Active:=False;
  zDatos.SQL.Add('INSERT INTO anexo_requisicion(sContrato, iFolioRequisicion, sNumFolio, iPeriodo,'+
  ' sNumeroOrden, dIdFecha, dFechaSolicitado, dFechaRequerido, sRequisita, sReferencia, sSolicito, sStatus, mComentarios, sMotivo, sEstado, sLugarEntrega, sIdUsuario, sPrioridad, sAvizarExis, lHojas, lCertificados, IdDepartamento, correo, IdTipoRecurso)'+
  'VALUES (:sContrato, :iFolioRequisicion, :sNumFolio, :iPeriodo, :sNumeroOrden, :dIdFecha, :dFechaSolicitado,'+
  ' :dFechaRequerido, :sRequisita, :sReferencia, :sSolicito, :sStatus, :mComentarios, :sMotivo, :sEstado, :sLugarEntrega, :sIdUsuario, :sPrioridad, '+QuotedStr('No')+', '+QuotedStr('No')+','+QuotedStr('No')+', :IdDepartamento, :correo, :IdTipoRecurso);');

  zDatos.ParamByName('sNumFolio').AsString:=Folio;
  zDatos.ParamByName('sContrato').AsString:=global_Contrato;
  zDatos.ParamByName('iPeriodo').AsInteger:=Connection.uconfiguracion.FieldByName('iEjercicio').AsInteger;
  zDatos.ParamByName('sNumeroOrden').AsString:=frmCostoPresupuesto.zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString;
  zDatos.ParamByName('dIdFecha').Value:=cbFechaInicio.Date;
  zDatos.ParamByName('dFechaSolicitado').Value:=cbFechaInicio.Date;
  zDatos.ParamByName('dFechaRequerido').Value:=cbFechaFinal.Date;
  zDatos.ParamByName('sRequisita').AsString:=connection.qryUBusca.FieldByName('sNombre').AsString;
  zDatos.ParamByName('sReferencia').AsString:=frmCostoPresupuesto.zDetalle.FieldByName('sNumeroOrden').AsString;
  zDatos.ParamByName('sSolicito').AsString:=GLOBAL_NOMBRE;
  zDatos.ParamByName('sStatus').AsString:='PENDIENTE';
  zDatos.ParamByName('mComentarios').AsString:='*';
  zDatos.ParamByName('sMotivo').AsString:='*';
  zDatos.ParamByName('sEstado').AsString:='PENDIENTE';
  zDatos.ParamByName('sLugarEntrega').AsInteger:=1;
  zDatos.ParamByName('sIdUsuario').AsString:=global_usuario;
  zDatos.ParamByName('sPrioridad').AsString:='Normal';
  zDatos.ParamByName('correo').AsString:='*';
  zDatos.ParamByName('IdDepartamento').AsInteger:=connection.qryUBusca.FieldByName('IdDepartamento').AsInteger;
  zDatos.ParamByName('IdTipoRecurso').AsInteger:=cbRecurso.EditValue;
  zDatos.ExecSQL;

  zDatos.SQL.Clear;
  zDatos.SQL.Text:='select max(iFolioRequisicion) as folio from anexo_requisicion';
  zDatos.Open;


  last:=zDatos.FieldByName('folio').AsInteger;
  contPerGrid := frmCostoPresupuesto.cxView_Costos.ViewData.RecordCount;

  with frmCostoPresupuesto.cxView_Costos.DataController.DataSource.DataSet do
  for iGrid := 0 to frmCostoPresupuesto.cxView_Costos.DataController.GetSelectedCount - 1 do
  begin
    //las siguientes dos lineas son para posicionar el dataset en cada uno de los registros seleccionados
    indice := frmCostoPresupuesto.cxView_Costos.DataController.GetSelectedRowIndex(iGrid);
    frmCostoPresupuesto.cxView_Costos.DataController.FocusedRowIndex := indice;

    connection.qryUBusca2.Active:=False;
    connection.qryUBusca2.SQL.Clear;
    connection.qryUBusca2.SQL.Text:='Select pd.*, (Select Nombre from op_tiporecurso where IdTipoRecurso = pd.IdTipoRecurso) as TipoRecurso from op_presupuesto_detalle pd where '+
    '(:NumeroOrden=-1 or (:NumeroOrden<>-1 and pd.sNumeroOrden=:NumeroOrden)) and '+
    '(:Contrato=-1 or (:Contrato<>-1 and pd.sContrato=:Contrato)) and '+
    '(:IdPresupuestoDetalle or (:IdPresupuestoDetalle <> -1 and :IdPresupuestoDetalle = pd.IdPresupuestoDetalle)) '+
    'and pd.IdTipoRecurso = :Tipo';
    connection.qryUBusca2.ParamByName('NumeroOrden').AsString:=frmCostoPresupuesto.zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString;
    connection.qryUBusca2.ParamByName('Contrato').AsString:=global_contrato;
    connection.qryUBusca2.ParamByName('IdPresupuestoDetalle').AsString:=frmCostoPresupuesto.cxView_Costos.DataController.DataSet.FieldByName('IdPresupuestoDetalle').AsString;
    connection.qryUBusca2.ParamByName('Tipo').AsInteger:=frmCostoPresupuesto.cxView_Costos.DataController.DataSet.FieldByName('IdTipoRecurso').AsInteger;
    connection.qryUBusca2.Open;


    connection.qryUBusca2.Filtered:=False;
    connection.qryUBusca2.Filter:='IdPresupuestoDetalle = '+
    QuotedStr( frmCostoPresupuesto.cxView_Costos.DataController.DataSet.FieldByName('IdPresupuestoDetalle').AsString );
    connection.qryUBusca2.Filtered:=True;
    if (pos('Kit',frmCostoPresupuesto.cxView_Costos.DataController.DataSet.FieldByName('Codigo').AsString)>0)
    or (pos('Kit',frmCostoPresupuesto.cxView_Costos.DataController.DataSet.FieldByName('Codigo').AsString)>0)
    or (pos('KIT',frmCostoPresupuesto.cxView_Costos.DataController.DataSet.FieldByName('Codigo').AsString)>0)then
    begin
      addKit;
    end
    else
    begin
      addPrequisicion;
    end;


  end;
  ShowMessage('Requisicion guardada con exito');
  bynCancelarClick(Sender);
end;

procedure TFrmModal.cxButton3Click(Sender: TObject);
begin
 close;
end;

procedure TFrmModal.cxButton4Click(Sender: TObject);
var
indice, iGrid    : integer;
begin
  try
      iGrid     := 0;
      if global_frmActivo ='CuentasPP' then begin

        indice := frmCuentasPorPagar.cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
        frmCuentasPorPagar.cxView_Comprobantes.DataController.FocusedRowIndex := indice;

        with frmCuentasPorPagar.cxView_Comprobantes.DataController.DataSource.DataSet do
        for iGrid := 0 to frmCuentasPorPagar.cxView_Comprobantes.DataController.GetSelectedCount - 1 do
        begin
          indice := frmCuentasPorPagar.cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
          frmCuentasPorPagar.cxView_Comprobantes.DataController.FocusedRowIndex := indice;

          zDatos.Active:=False;
          zDatos.SQL.Clear;
          zDatos.SQL.Text := 'update cont_comprobantes  set FechaEntrega=:FechaEntrega where IdComprobanteFiscal=:Comprobante';
          zDatos.ParamByName('FechaEntrega').AsDate := dFecha.EditValue;
          zDatos.ParamByName('Comprobante').AsInteger :=  frmCuentasPorPagar.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger;
          zDatos.ExecSQL;

        end;
        frmCuentasPorPagar.zComprobantes.Refresh;
      end
      else begin
        indice := frmComprobantesFiscalesD.cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
        frmComprobantesFiscalesD.cxView_Comprobantes.DataController.FocusedRowIndex := indice;

        with frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet do
        for iGrid := 0 to frmComprobantesFiscalesD.cxView_Comprobantes.DataController.GetSelectedCount - 1 do
        begin
          indice := frmComprobantesFiscalesD.cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
          frmComprobantesFiscalesD.cxView_Comprobantes.DataController.FocusedRowIndex := indice;

          zDatos.Active:=False;
          zDatos.SQL.Clear;
          zDatos.SQL.Text := 'update cont_comprobantes  set FechaEntrega=:FechaEntrega where IdComprobanteFiscal=:Comprobante';
          zDatos.ParamByName('FechaEntrega').AsDate := dFecha.EditValue;
          zDatos.ParamByName('Comprobante').AsInteger :=  frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger;
          zDatos.ExecSQL;

        end;
        frmComprobantesFiscalesD.zComprobantes.Refresh;
      end;
      close;

      except
      on E : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Compraobantes Fiscales Digitales', 'Al editar registro', 0);
      end;

  end;
end;

procedure TFrmModal.cxButtonSelecEntradasClick(Sender: TObject);
begin
     PanelGridEntradas.Visible := True;
     FrmModal.Height:= 440;
     frmModal.Width := 540;
     frmModal.Position:=poScreenCenter;

     AsignarSQL(anexo_compEntradas,'lista_materiales_OC',pUpdate);
     FiltrarDataSet( anexo_compentradas,'Contrato,FolioComp',[global_contrato,frmPedidos.anexo_ocompras.FieldValues['IdOrdenCompra']]);
     anexo_compentradas.Open;
     mCompEntradas.Active := False;
     mCompEntradas.Active := True;
     anexo_compentradas.First;
     while not anexo_compEntradas.Eof do
     begin

      mCompEntradas.Append;
      mCompEntradas.FieldByName('IdInsumo').AsInteger := anexo_compEntradas.FieldByName('IdInsumo').AsInteger;
      mCompEntradas.FieldByName('Codigo').AsString := anexo_compEntradas.FieldByName('Codigo').AsString;
      mCompEntradas.FieldByName('Material').AsString := anexo_compEntradas.FieldByName('Material').AsString;
      mCompEntradas.FieldByName('CantComp').AsFloat := anexo_compEntradas.FieldByName('dRequisicion').AsFloat;
      mCompEntradas.FieldByName('iFolioRequisicion').AsInteger := frmPedidos.anexo_pocompras.FieldByName('iFolioRequisicion').AsInteger;
      mCompEntradas.FieldByName('CantEntregada').AsFloat := anexo_compEntradas.FieldByName('Cant2').AsFloat;
      if frmPedidos.anexo_pocompras.Locate('IdInsumo',anexo_compEntradas.FieldByName('IdInsumo').AsString,[]) then begin
        mCompEntradas.FieldByName('Estatus').AsString := frmPedidos.anexo_pocompras.FieldByName('sStatus').AsString;
      end;
      mCompEntradas.Post;
      Anexo_compEntradas.Next;
     end;


end;

procedure TFrmModal.cxCancelOcClick(Sender: TObject);
begin
   FrmInspeccionMateriales.frmBarraH21btnCancelClick(sender);
   close;
end;

procedure TFrmModal.cxMonedaPropertiesChange(Sender: TObject);
begin
zMoneda.FieldByName('FK_Moneda').AsString;

end;

procedure TFrmModal.cxPageModalChange(Sender: TObject);
begin
  if (cxPageModal.ActivePage = cxTabRequisicion) then begin
    frmModal.Caption:='Materiales a Requisitar';
    zRecurso.Active:=False;
    zRecurso.SQL.Text:='select IdTiporecurso, Nombre from op_tiporecurso union Select -1 ,'+QuotedStr('TODOS')+'  as Todos';
    zRecurso.Open;
    cbRecurso.Text:=frmCostoPresupuesto.zDetalle.FieldByName('TipoRecurso').AsString;
    cbFechaInicio.Date:=Now;
    cbFechaFinal.Date:=Now;

    zFolio.Active:= False;
    AsignarSQL(zFolio,'anexo_requisicion',pUpdate);
    FiltrarDataSet(zFolio,'contrato,IdDepartamento',[global_contrato, -1]);
    zFolio.Open;
  end
  else
    if cxPageModal.ActivePage = cxTabCotizacion then begin
      frmModal.Caption:='Opciones Cotización';
      //reutilizo un uniquery, para no agregar más
      zRecurso.Active:=False;
      zRecurso.SQL.Clear;
      zRecurso.SQL.Text:='(SELECT -1 as IdCotizacion,'+
        QuotedStr('CREAR NUEVA COTIZACIÓN')+' as Codigo) UNION (SELECT IdCotizacion, Codigo FROM op_cotizacion_presupuesto WHERE sNumeroOrden = '+
        QuotedStr(frmCostoPresupuesto.zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString)+' ORDER BY Codigo)';
      zRecurso.Open;
      cmbCotizaciones.EditValue:=zRecurso.FieldByName('IdCotizacion').AsInteger;
      zFolio.Active:=False;
      AsignarSQL(zFolio,'op_cotizacion_presupuesto',pUpdate);
      FiltrarDataSet(zFolio,'Id,Usuario',[-1,-1]);
      zFolio.Open;
    end;

    if cxPageModal.ActivePage =frmModal.cxTabEntrada then
    begin
        AsignarSQL(uAlmacen,'alm_almacenes',pUpdate);
        FiltrarDataSet(uAlmacen,'Id,Codigo,IdCiudad',[-1, -1,-1]);
        uAlmacen.Open;

        AsignarSQL(zBitacora, 'bitacoradeentrada', pupdate);
        FiltrarDataSet(zBitacora, 'Contrato, Folio', [Global_Contrato,'-1']);
        zBitacora.Open;

        cxAlmacenes.ItemIndex := 0;
        cxFechaEntrada.Date := date;
    end;

    if cxPageModal.ActivePage = cxTabFirma then
    begin
        AsignarSQL(zFirmas,'rd_firmas_firmantes',pUpdate);
        FiltrarDataSet(zFirmas, 'Tipo', ['COMPRADOR'] );
        zFirmas.Open;
        cbFirmante.ItemIndex := 0;
    end;

    if cxPageModal.ActivePage = cxTabReporte then
    begin
      if (global_frmActivo = 'Reporte_Proyecto') then
        cxLabel2.Caption:='Reporte de Proyecto';
        AsignarSQL(zProyecto,'ordenesdetrabajo',pUpdate);
        FiltrarDataSet(zProyecto,'Contrato,TProyecto',[Global_Contrato,'-1']);
        zProyecto.Open;
        cbProyecto.ItemIndex := 0;
    end;

    if cxPageModal.ActivePage = cxTabPago then
    begin
      if (cbTiposPago.Text = 'PAGADO')then
         edtMonto.Value := frmAprobacionP.dbg_OCVista.DataController.DataSet.FieldByName('dMonto').AsFloat;
    end;

    if cxPageModal.ActivePage = cxTabConfiguraMoneda then
    begin
      zMoneda.Active := False;
      AsignarSQL(zMoneda,'master_moneda',pUpdate);
      FiltrarDataSet(zMoneda,'IdMoneda,Codigo,Activo',['-1','-1','Si']);
      zMoneda.Open;
    end;

    if cxPageModal.ActivePage = cxTabSolicita then begin
      frmModal.Caption:='Materiales a Solicitar';
      zRecurso.Active:=False;
      zRecurso.SQL.Text:='select IdTiporecurso, Nombre from op_tiporecurso union Select -1 ,'+QuotedStr('TODOS')+'  as Todos';
      zRecurso.Open;
      cbRecursosS.Text:=frmRequisicionMaterial.anexo_requisicion.FieldByName('Recurso').AsString;
      cdFInicio.Date:=Now;
      cdFRequerido.Date:=Now;

      zFolio.Active:= False;
      AsignarSQL(zFolio,'anexo_solicitud',pUpdate);
      FiltrarDataSet(zFolio,'contrato,IdDepartamento',[global_contrato, -1]);
      zFolio.Open;
    end;

    if cxPageModal.ActivePage = cxTabOrdenesCompra  then
       cxViewOrdenesCompra.DataController.DataSource.DataSet.Locate('IdOrdenCompra', FrmInspeccionMateriales.zInspeccionMaterial.FieldByName('IdOrdenCompra').AsInteger,[]);

    if cxPageModal.ActivePage = cxTabEstatusPO then
       cbEstatus.EditValue := 'ABIERTA' ;

end;

procedure TFrmModal.EnterControl(Sender: TObject);
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

    if (sender is tcxDbRadioGroup) then
        tcxDBRadioGroup(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxCalcEdit) then
        tcxCalcEdit(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;
end;


procedure TFrmModal.SalidaControl(Sender: TObject);
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

    if (sender is tcxDbRadioGroup) then
        tcxDBRadioGroup(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxCalcEdit) then
        tcxCalcEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TFrmModal.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;


procedure TFrmModal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if zMoneda.State = dsEdit then
    if cxPageModal.ActivePage = cxTabConfiguraMoneda then
      zMoneda.Post;

   if cxPageModal.ActivePage = cxTabOrdenesCOmpra then
      FrmInspeccionMateriales.frmBarraH21btnCancelClick(sender);
end;

procedure TFrmModal.FormShow(Sender: TObject);
begin
  cxPageModal.OnChange(Sender);
end;

end.
