unit frm_SalidaAlmacen_SS7;

interface

uses
  frm_tiposdeMovimiento,frm_ordenes,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, DBCtrls, global, strUtils,
  Mask, OleCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Utilerias,
  Menus, frxClass, frxDBSet, RXDBCtrl,  RxLookup, DateUtils, unitGenerales,
  RXCtrls, CheckLst, ToolWin, RxMemDS, ZAbstractRODataset, ZDataset,
  rxCurrEdit, rxToolEdit, AdvGlowButton, UnitValidacion,
  unitexcepciones, unittbotonespermisos, unitactivapop, UFunctionsGHH,
  ZAbstractDataset, jpeg, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons,
  cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, UnitValidaTexto, masUtilerias,
  cxContainer, cxGroupBox, dxCheckGroupBox, cxTL, cxMaskEdit,
  cxTLdxBarBuiltInMenu, cxTextEdit, cxDropDownEdit, cxDBEdit,
  cxInplaceContainer, cxDBTL, cxTLData, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, frm_repositorio, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxCore, cxDateUtils, cxMemo, cxCalendar, MemDS,
  DBAccess, Uni, cxProgressBar, cxCheckBox, dxBarBuiltInMenu, dxLayoutContainer,
  dxLayoutControl, cxSplitter, cxPC, cxLabel, frm_barraH1, frm_barraH2,
  dxLayoutcxEditAdapters, cxGridChartView, cxGridDBChartView,
  dxLayoutControlAdapters, cxRadioGroup, UnitReportes, frxExportPDF, Vcl.ExtDlgs,
  dxToggleSwitch, dxDBToggleSwitch;

type
  TfrmSalidaAlmacen_SS7 = class(TForm)
    ds_almacen_salida: TDataSource;
    frxEntrada: TfrxReport;
    ds_almacen: TDataSource;
    ds_Salida_detalle: TDataSource;
    ds_tipomovimiento: TDataSource;
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
    ValedeResguardo1: TMenuItem;
    dsReferencia: TDataSource;
    dsRequisiciones: TDataSource;
    salida_almacen: TUniQuery;
    QRequisiciones: TUniQuery;
    QReferencia: TUniQuery;
    zq_tipomovimiento: TUniQuery;
    Almacen: TUniQuery;
    salida_detalle: TUniQuery;
    ds_qPersonal: TDataSource;
    QPersonal: TUniQuery;
    PanelOpciones: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    cxPageDetalle: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxSplitterOpciones: TcxSplitter;
    PanelDatos: TPanel;
    Grid_Entradas: TcxGrid;
    Grid_EntradasDBTableView1: TcxGridDBTableView;
    Grid_EntradasDBTableView1Column2: TcxGridDBColumn;
    Grid_EntradasDBTableView1Column3: TcxGridDBColumn;
    Grid_EntradasDBTableView1Column4: TcxGridDBColumn;
    Grid_EntradasDBTableView1Column6: TcxGridDBColumn;
    Grid_EntradasDBTableView1Column5: TcxGridDBColumn;
    Grid_EntradasLevel1: TcxGridLevel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxEliminarDetalle: TcxButton;
    GridPartidas: TcxGrid;
    GridPartidasView: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    GridPartidasViewColumn1: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    pgControl: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxCodigo: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxFecha: TcxDBDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxTipoSalida: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cxProyecto: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxRecibe: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxNotas: TcxDBMemo;
    dxLayoutItem9: TdxLayoutItem;
    cxRequisicion: TcxDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    cxAlmacen: TcxDBLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    Grid_EntradasDBTableView1Column10: TcxGridDBColumn;
    Grid_EntradasDBTableView1Column11: TcxGridDBColumn;
    cxTabSheet3: TcxTabSheet;
    PanelInferiorInforme: TPanel;
    cxSplitInforme: TcxSplitter;
    PanelSuperiorInforme: TPanel;
    zGrafico: TUniQuery;
    ds_grafico: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    opcionImprimir: TcxRadioGroup;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    btnImpInforme: TcxButton;
    GraficoSalida: TUniQuery;
    dsGraficoSalida: TDataSource;
    filtro: TUniQuery;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    cxPageEquipo: TcxPageControl;
    dxLayoutItem5: TdxLayoutItem;
    cxTabSheetEquipo: TcxTabSheet;
    cxTabSheetAsignacion: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    cxEmpleado: TcxDBLookupComboBox;
    cxDireccion: TcxTextEdit;
    cxCalzado: TcxTextEdit;
    cxTalla: TcxTextEdit;
    cxTelefono: TcxTextEdit;
    cxButton1: TcxButton;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutControl4: TdxLayoutControl;
    cbEmpleados: TcxDBLookupComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    cbEmbarcacion: TcxDBLookupComboBox;
    dxLayoutItem20: TdxLayoutItem;
    zEmbarcacion: TUniQuery;
    dsEmbarcacion: TDataSource;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxButton3: TcxButton;
    dxLayoutItem22: TdxLayoutItem;
    ds_firma: TDataSource;
    zFirma: TUniQuery;
    cxFirma: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cxSalidaResguardo: TcxButton;
    cxSalidaEPP: TcxButton;
    PanelMaterial: TPanel;
    dxLayoutControl6: TdxLayoutControl;
    cxEntregaMaterial: TcxDBMemo;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutItem35: TdxLayoutItem;
    cxSplitMaterial: TcxSplitter;
    frxPDFExport1: TfrxPDFExport;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    Grid_EntradasDBTableView1Column1: TcxGridDBColumn;
    ds_Presupuesto: TfrxDBDataset;
    zSalida_alm_costo: TUniQuery;
    cxNumeroMaterial: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    GridPartidasViewColumn2: TcxGridDBColumn;
    N3: TMenuItem;
    InsertarNumeroMaterial1: TMenuItem;
    cxCliente: TcxDBLookupComboBox;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    zClientes: TUniQuery;
    dsClientes: TDataSource;
    LimpiarCdigoMaterial1: TMenuItem;
    cxDestino: TcxDBTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    cxReferencia: TcxDBTextEdit;
    dxLayoutItem25: TdxLayoutItem;
    Grid_EntradasDBTableView1Column7: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    Grid_EntradasDBTableView1Column8: TcxGridDBColumn;
    cxSolicitudEmb: TcxButton;
    cxViaEmbarque: TcxDBComboBox;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    cxConducto: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutItem28: TdxLayoutItem;
    cxSolicitud: TcxDBLookupComboBox;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    zSolicitud: TUniQuery;
    dsSolicitud: TDataSource;
    dxLayoutItem29: TdxLayoutItem;
    cxLocalizacion: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutItem30: TdxLayoutItem;
    cbEdoMaterial: TcxDBComboBox;
    btnImagen: TcxButton;
    dxLayoutItem32: TdxLayoutItem;
    cxNombre: TcxDBTextEdit;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dglPicture: TOpenPictureDialog;
    dxDBToggleSwitch1: TdxDBToggleSwitch;
    dxLayoutItem33: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure tsIsometricoReferenciaKeyPress(Sender: TObject;
      var Key: Char);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure frxEntradaGetValue(const VarName: String;
      var Value: Variant);
    procedure tdFechaAvisoKeyPress(Sender: TObject; var Key: Char);
    procedure ActivaBotones(Sender :boolean);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure edtFolioEnter(Sender: TObject);
    procedure edtFolioExit(Sender: TObject);
    procedure edtFolioKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarFolio1Click(Sender: TObject);
    procedure ValedeResguardo1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure salida_scroll;


    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxTipoSalidaExit(Sender: TObject);
    procedure cxEliminarDetalleClick(Sender: TObject);
    procedure GridPartidasViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Grid_EntradasDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnImpInformeClick(Sender: TObject);
    procedure cxPageDetalleClick(Sender: TObject);
    procedure Grid_EntradasDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Grid_EntradasDBTableView1DataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: string);
    procedure cxTabSheet3Show(Sender: TObject);
    procedure cxEmpleadoPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure AsignacionPersonal();
    procedure cxTipoSalidaPropertiesChange(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure Grid_EntradasDBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxSalidaResguardoClick(Sender: TObject);
    procedure cxSalidaEPPClick(Sender: TObject);
    procedure cxCancelaMaterialClick(Sender: TObject);
    procedure GridPartidasViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxRequisicionPropertiesChange(Sender: TObject);
    procedure InsertarNumeroMaterial1Click(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure PopupPrincipalPopup(Sender: TObject);
    procedure Grid_EntradasDBTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure GridPartidasViewMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LimpiarCdigoMaterial1Click(Sender: TObject);
    procedure cxSolicitudPropertiesChange(Sender: TObject);
    procedure btnImagenClick(Sender: TObject);
    procedure salida_detalleAfterScroll(DataSet: TDataSet);
//    procedure cxSolicitudEmbClick(Sender: TObject);
  private
  sMenuP: String;
    { Private declarations }
    procedure SetDatos;

  public
  CodigoSalida   :String;
    { Public declarations }
  end;

var
  frmSalidaAlmacen_SS7: TfrmSalidaAlmacen_SS7;
  insert : Boolean ;
  OpcButton1    : String ;
  SavePlace     : TBookmark;
  TipoExplosion : string;
  TipoSalida    : string;
  titulo         : string;
  titulo2        : string;
  btnPermisos    :String;
  Archivo   : string;
  lNoGuardarDocto :boolean;
  IdRequi : Integer;

implementation

uses frm_connection , Func_Genericas, frm_agregar_masivoOP_SS7, unitMetodos, frm_firmasNota;

{$R *.dfm}


procedure TfrmSalidaAlmacen_SS7.SetDatos;
begin

end;

procedure TfrmSalidaAlmacen_SS7.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
guardar_leer_grid(Grid_EntradasDBTableView1,frmSalidaAlmacen_SS7,1);
guardar_leer_grid(GridPartidasView,frmSalidaAlmacen_SS7,1);
  action := cafree ;
end;

procedure TfrmSalidaAlmacen_SS7.FormShow(Sender: TObject);
var
    SavePlace : TBookmark;
    temE:TUniQuery;
    id : String;
begin
    btnPermisos := global_btnPermisos;
    titulo:=' Salidas de Almacén';
    titulo2:='Materiales';
    cxLeyenda.Caption:=titulo;
    cxLeyenda2.Caption:=titulo2;

    ActivaBotones(False);
//    dxLayoutItem10.Visible := False;

    temE := TUniquery.create(nil);
    temE.Connection := Connection.uConnection;
    temE.Active:=False;
    temE.SQL.Text:='Select FK_Titulo from master_empresa';
    temE.Open;

    Almacen.Active:= False;
    AsignarSQL(Almacen,'almacenes_salida',pUpdate);
    FiltrarDataSet(Almacen,'Usuario',[Global_Usuario]);
    Almacen.Open;

    salida_almacen.Active:= False;
    AsignarSQL(salida_almacen,'almacen_salida',pUpdate);
    FiltrarDataSet(salida_almacen,'contrato,Usuario',[global_contrato,global_usuario]);
    salida_almacen.Open;

    zq_tipomovimiento.Active:= False;
    AsignarSQL(zq_tipomovimiento,'movimientosdealmacen_salida',pUpdate);
    FiltrarDataSet(zq_tipomovimiento, 'Activo', ['Si']);
    zq_tipomovimiento.Open;

    QRequisiciones.Active:= False;
    AsignarSQL(QRequisiciones,'requisicion_salida',pUpdate);
    QRequisiciones.Open;

    if connection.uContrato.FieldByName('FK_Titulo').AsString='CMMI' then  begin
      zClientes.Active:= False;
      AsignarSql(zClientes, 'master_clientes', pUpdate);
      FiltrarDataSet(zClientes,'IdCliente',[-1]);
      zClientes.Open;
      cxCliente.DataBinding.DataField:='IdCliente';
      cxCliente.DataBinding.DataSource:=ds_almacen_salida;

      zSolicitud.Active:= False;
      AsignarSQL(zSolicitud,'solicitud_salida',pUpdate);
      zSolicitud.Open;
      cxSolicitud.DataBinding.DataField:='iFolioSolicitud';
      cxSolicitud.DataBinding.DataSource:=ds_almacen_salida;
    end;

    QReferencia.Active:= False;
    AsignarSQL(QReferencia,'ordenesdetrabajo_presu_val',pUpdate);
    if(( connection.uconfiguracion.FieldByName('VerTodosProyectos').AsString = 'No') and ( temE.FieldByName('FK_Titulo').AsString = 'SIANI' ))then
       FiltrarDataSet(QReferencia,'Contrato, Tipo,Status',[global_contrato, '-1','-1'])
    else
    if ({( connection.uconfiguracion.FieldByName('VerTodosProyectos').AsString = 'No') and }( temE.FieldByName('FK_Titulo').AsString = 'CMMI' )
        OR ( temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' )) then
       FiltrarDataSet(QReferencia,'Contrato, Tipo,Estatus',[global_contrato, 'PROYECTO','-1'])
       else
          FiltrarDataSet(QReferencia,'Contrato, Tipo, Estatus',[global_contrato, 'PROYECTO', '-1']);
    QReferencia.Open;

    if connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7' then
    cxProyecto.Properties.ListFieldNames:='sDescripcionCorta';

    qPersonal.Active:= False;
    AsignarSQL(qPersonal,'master_personal_salida',pUpdate);
    qPersonal.Open;

    zEmbarcacion.Active:=False;
    zEmbarcacion.SQL.Text:='select alm.*, m.IdEmbarcacion, m.Codigo, m.Embarcacion, m.sTipo, m.Activo '+
                            'from alm_almacenesporusuario  as alm '+
                            'inner join master_embarcaciones as m on (m.IdEmbarcacion = m.IdEmbarcacion) '+
                            'where alm.sIdUsuario = :usuario and (alm.IdAlmacen = -1 or (alm.IdAlmacen <> -1 and alm.IdAlmacen = m.IdAlmacen))';
    zEmbarcacion.ParamByName('usuario').AsString:=global_usuario;
    zEmbarcacion.Open;

    AsignarSQL(zFirma, 'rd_firmas', pUpdate);
    FiltrarDataSet(zFirma, 'IdFirma, Contrato', [-1, Global_contrato]);
    zFirma.Open;

    zFirma.Filtered := False;
    zFirma.Filter   := 'VistaUsuario = '+ QuotedStr(self.Caption);
    zFirma.Filtered := True;

    cxTabSheetEquipo.TabVisible:=True;
    cxTabSheetEquipo.TabVisible:=False;

    Grid_EntradasDBTableView1.DataController.Groups.FullExpand;
    cxSplitterOpciones.Visible := False;
    pnlBtn2.Visible := False;
    pgControl.Visible := False;
    PanelDetalle.Visible       := False;

    PermisosBotones(frmSalidaAlmacen_SS7,btnPermisos);
     dxLayoutItem24.Visible:=False;
     dxLayoutItem10.Visible:=True;
     cxTipoSalidaExit(Sender);
     if connection.uContrato.FieldByName('FK_Titulo').AsString<>'CMMI' then
     begin
       cxSalidaEPP.Visible := False;
       cxSalidaResguardo.Visible := False;
       dxLayoutItem8.Visible := False;
       dxLayoutItem28.Visible := False;
       GridPartidasView.Columns[1].Visible:=False;
//       dxLayoutItem10.Visible:=True;
       dxLayoutItem23.Visible:=False;
     end;
     if connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7' then
     begin
       dxLayoutItem24.Visible:=True;
//       cxSolicitudEmb.Visible:=True;
       dxLayoutItem26.Visible:=True;
       dxLayoutItem27.Visible:=True;
       dxLayoutItem28.Visible := False;
       cxViaEmbarque.DataBinding.DataField:='ViaEmbarque';
       cxViaEmbarque.DataBinding.DataSource:=ds_almacen_salida;
       cxConducto.DataBinding.DataField:='Conducto';
       cxCliente.DataBinding.DataSource:=ds_almacen_salida;
     end
     else begin
//       cxSolicitudEmb.Visible:=False;
       dxLayoutItem26.Visible:=False;
       dxLayoutItem27.Visible:=False;
     end;
     if connection.uContrato.FieldByName('FK_Titulo').AsString='TYPHOON' THEN
     dxLayoutItem24.Visible:=True;
    guardar_leer_grid(Grid_EntradasDBTableView1,frmSalidaAlmacen_SS7,0);
    guardar_leer_grid(GridPartidasView,frmSalidaAlmacen_SS7,0);
end;

procedure TfrmSalidaAlmacen_SS7.BtnExitClick(Sender: TObject);
begin
    Close ;
end;

procedure TfrmSalidaAlmacen_SS7.btnImagenClick(Sender: TObject);
var
  BlobStream : TStream;
  FileStream : TFileStream;
  Ext, sArchivo : string;
begin
try
    dglPicture.FileName := '';
    lNoGuardarDocto := False;

    if not dglPicture.Execute() then
      exit;

    Archivo := dglPicture.FileName;

    if not FileExists(Archivo) then
      raise exception.Create('No se encontro el archivo especificado');

    Ext := ExtractFileExt(Archivo);

    if ( Ext <> '.JGP' ) and ( Ext <> '.jpg' ) then
      raise exception.Create('El archivo no es valido');

   // if (zCertificado.State = dsEdit) or (zCertificado.State <> dsInsert) then
     //  zCertificado.Edit;

    salida_detalle.FieldByName('NombreImagen').AsString := ExtractFileName(Archivo);
    salida_detalle.FieldByName('Imagen').AsString := ExtractFileDir(archivo)+'\'+ExtractFileName(Archivo);

  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
      if salida_detalle.state in [dsInsert, dsEdit] then
         lNoGuardarDocto := True;
    end;
  end;

end;

procedure TfrmSalidaAlmacen_SS7.btnImpInformeClick(Sender: TObject);
var
  salidasGrid : String;
   contSalGrid, j : Integer;
begin
  if opcionImprimir.EditValue = 1 then
  begin
    IsOpen:=False;
    generar_reporte_grid(Grid_EntradasDBTableView1,'Reporte de Salidas Almacén');
    IsOpen:=True;
  end
  else if opcionImprimir.EditValue = 2 then
  begin
    Grid_EntradasDBTableView1.DataController.Groups.FullExpand;
    contSalGrid := Grid_EntradasDBTableView1.ViewData.RecordCount;
    for j := 0 to (contSalGrid - 1) do
    begin
      try
        salidasGrid := salidasGrid + Grid_EntradasDBTableView1.ViewData.Rows[j].Values[1] +',';
      except
        ;
      end;
    end;

    frmRepositorio.Reporte.Active := False;
    AsignarSQL(frmRepositorio.Reporte,'reporte_detallado_almacen_salida',pUpdate);
    FiltrarDataSet(frmRepositorio.Reporte,'Contrato, ListaSalidas',[global_contrato,salidasGrid]);
    frmRepositorio.Reporte.Open;

    IsOpen:=False;
    generar_reporte_grid_detalles(Grid_EntradasDBTableView1,frmRepositorio.Reporte,'Reporte de Salidas Almacén con Detalles', 'sFolioSalida');
    IsOpen:=True;
  end
  else if opcionImprimir.EditValue = 3 then
  begin
    zSalida_alm_costo.Active := False;
    AsignarSQL(zSalida_alm_costo,'almacen_salida_costos',pUpdate);
    FiltrarDataSet(zSalida_alm_costo,'Contrato,sNumeroOrden,Folio',[global_contrato,salida_almacen.FieldByName('sNumeroOrden').AsString,'-1']);
    zSalida_alm_costo.Open;

    if not FileExists(global_files + global_miReporte + '_ALM_salida_Costos.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'_ALM_salida_Costos.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;

    frxEntrada.PreviewOptions.MDIChild := False;
    frxEntrada.PreviewOptions.Modal := True;
    frxEntrada.PreviewOptions.ShowCaptions := False;
    frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

    IsOpen:=False;
    frxEntrada.LoadFromFile(global_files + global_MiReporte +'_ALM_salida_Costos.fr3');
    frxEntrada.ShowReport;
    IsOpen:=True;
  end;
end;


procedure TfrmSalidaAlmacen_SS7.btnPostClick(Sender: TObject);
var

   nombres, cadenas : TStringList;
   i, posicion, Maximo :integer;

   Folio, Numdigitos: string;
begin
  insert:=False;
  posicion:=salida_almacen.RecNo;
  desactivapop(popupprincipal);
  If OpcButton1 = 'New' then
  Begin
      //Inicia validacion
      nombres:=TStringList.Create;cadenas:=TStringList.Create;
      nombres.Add('Tipo Movimiento');
      nombres.Add('Referencia');
      nombres.Add('Nombre Recibe');
      nombres.Add('Comentarios');


      cadenas.Add(cxTipoSalida.Text);
      cadenas.Add(cxProyecto.Text);
      cadenas.Add(cxRecibe.Text);
      cadenas.Add(cxNotas.Text);

      if not validaTexto(nombres, cadenas,'','') then
      begin
          MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
          exit;
      end;


      try
        salida_almacen.FieldByName('sContrato').AsString    := GLOBAL_CONTRATO;
        salida_almacen.FieldByName('sIdUsuario').AsString   := GLOBAL_USUARIO;
        salida_almacen.FieldByName('sStatus').AsString     := 'PENDIENTE';
        salida_almacen.FieldByName('IdEmpresa').AsInteger   := Connection.ucontrato.FieldByName('IdEmpresa').AsInteger;
        salida_almacen.Post;
        salida_almacen.First;
        kardex_almacen('Salida Almacen '+folio+' No. [' + folio + '].', 'Otros Movimientos');
      Except
       on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Salidas Almacen', 'Al salvar registro', 0);
       end;
      End;
     AsignacionPersonal
  End
  Else
  If OpcButton1 = 'Edit' then
  Begin
      try
        salida_almacen.Post;
        kardex_almacen('Salida Almacen '+IntToStr(salida_almacen.FieldValues['iFolioSalida'])+' No. [' + IntToStr(salida_almacen.FieldValues['iFolioSalida']) + '].', 'Otros Movimientos');

      except
       on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Salidas Almacen', 'Al salvar registro', 0);
       end;
      End;
   End ;


   SavePlace := Grid_EntradasDBTableView1.DataController.DataSource.DataSet.GetBookmark ;
   salida_almacen.Cancel;
   salida_almacen.Refresh;
   IsOpen:=True;
   OpcButton1 := '' ;
   ActivaBotones(False);
   frmBarraH21.btnCancel.Click;
   Grid_Entradas.Enabled := True;
end;

procedure TfrmSalidaAlmacen_SS7.btnPrinterClick(Sender: TObject);
var
frxDBEntrada : TfrxDBDataset;
begin
   try
     If salida_almacen.RecordCount > 0 Then
     begin

       if ((salida_almacen.FieldByName('CodigoSalida').AsString = 'SALA') and (connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7'))  then
       begin
         AsignarSQL(frmRepositorio.reporte,'reporte_almacen_salida_blue',pUpdate);
         FiltrarDataSet(frmRepositorio.reporte,'Contrato,Almacen,Folio',[global_contrato,salida_almacen.FieldByName('IdAlmacen').AsInteger,salida_almacen.FieldValues['iFolioSalida']]);
         frmRepositorio.reporte.Open;

       end
       else
       begin

         AsignarSQL(frmRepositorio.reporte,'reporte_salida_material',pUpdate);
         FiltrarDataSet(frmRepositorio.reporte,'Contrato,Folio',[global_contrato,salida_almacen.FieldValues['iFolioSalida']]);
         frmRepositorio.reporte.Open;
       end;

      frxDBEntrada := TfrxDBDataset.Create(nil);
      frxDBEntrada.DataSet    := frmRepositorio.Reporte;
      frxDBEntrada.UserName   := 'frxDBEntrada';
      frxDBEntrada.FieldAliases.Clear;
      frxEntrada.DataSets.Add(frxDBEntrada);

      frxEntrada.PreviewOptions.MDIChild := False;
      frxEntrada.PreviewOptions.Modal := True;
      frxEntrada.PreviewOptions.ShowCaptions := False;
      frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      if connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7' then  begin
//        if (frmRepositorio.reporte.FieldByName('Tipomovimiento').AsString = 'SALIDA EMBARQUE') or
//         (frmRepositorio.reporte.FieldByName('Tipomovimiento').AsString = 'SALIDA DESEMBARQUE')then begin
//
//           frxEntrada.LoadFromFile (global_files + global_miReporte+'_ALM_SalidaEmbarque.fr3') ;
//           if not FileExists(global_files + global_miReporte + '_ALM_SalidaEmbarque.fr3') then
//
//            showmessage('El archivo de reporte '+global_Mireporte+'_ALM_SalidaEmbarque.fr3 no existe, notifique al administrador del sistema');
//           frxPDFExport1.FileName := frmRepositorio.Reporte.FieldByName('sFolioSalida').AsString;
//           frxEntrada.ShowReport();
//        end
//        else

         if ((Grid_EntradasDBTableView1.DataController.DataSet.FieldByName('Almacen').AsString = 'ALMACEN BLUE PIONEER') and (salida_almacen.FieldByName('CodigoSalida').AsString = 'SALA'))  then
         BEGIN
           frxEntrada.LoadFromFile (global_files + global_miReporte+'_ALM_ValeSalida_Blue.fr3') ;
           if not FileExists(global_files + global_miReporte + '_ALM_ValeSalida_Blue.fr3') then
           showmessage('El archivo de reporte '+global_Mireporte+'_ALM_ValeSalida_Blue.fr3 no existe, notifique al administrador del sistema');
         END ;
//
         if ((Grid_EntradasDBTableView1.DataController.DataSet.FieldByName('Almacen').AsString = 'ALMACEN BLUE PIONEER') and (salida_almacen.FieldByName('CodigoSalida').AsString <> 'SALA')) then begin
          frxEntrada.LoadFromFile (global_files + global_miReporte+'_ALM_ValeSalida_ABordo.fr3') ;
           if not FileExists(global_files + global_miReporte + '_ALM_ValeSalida_ABordo.fr3') then
            showmessage('El archivo de reporte '+global_Mireporte+'_ALM_ValeSalida_ABordo.fr3 no existe, notifique al administrador del sistema');

         end ;

          if (Grid_EntradasDBTableView1.DataController.DataSet.FieldByName('Almacen').AsString = 'ALMACEN GENERAL') then
          begin

           frxEntrada.LoadFromFile (global_files + global_miReporte+'_ALM_ValeSalida.fr3') ;
           if not FileExists(global_files + global_miReporte + '_ALM_ValeSalida.fr3') then
            showmessage('El archivo de reporte '+global_Mireporte+'_ALM_ValeSalida.fr3 no existe, notifique al administrador del sistema');
         end;
      end
      else begin

           frxEntrada.LoadFromFile (global_files + global_miReporte+'_ALM_ValeSalida.fr3') ;
           if not FileExists(global_files + global_miReporte + '_ALM_ValeSalida.fr3') then
            showmessage('El archivo de reporte '+global_Mireporte+'_ALM_ValeSalida.fr3 no existe, notifique al administrador del sistema');

      end;
     end;
     frxPDFExport1.FileName := frmRepositorio.Reporte.FieldByName('sFolioSalida').AsString;
     frxEntrada.ShowReport();
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_SalidaAlmacen', 'Al agregar registro ', 0);
    end;

  end;
end;


procedure TfrmSalidaAlmacen_SS7.btnRefreshClick(Sender: TObject);
begin
   SavePlace := Grid_EntradasDBTableView1.DataController.DataSource.DataSet.GetBookmark;

   salida_almacen.Refresh;
   if PanelDetalle.Visible = true then
      salida_detalle.Refresh;
   Try
     Grid_EntradasDBTableView1.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
   Except
       Grid_EntradasDBTableView1.DataController.DataSet.FreeBookmark(SavePlace);
   End;
end;

procedure TfrmSalidaAlmacen_SS7.BuscarFolio1Click(Sender: TObject);
Var
    sNumeroPartida : String ;
begin
    If salida_almacen.RecordCount > 0 Then
    Begin
        sNumeroPartida := UPPERCASE(InputBox('Inteligent','Inserte el Folio a buscar?', salida_almacen.FieldValues['sFolioSalida'])) ;
        salida_almacen.Locate('sFolioSalida', sNumeroPartida, [loCaseInsensitive])
    End
end;

procedure TfrmSalidaAlmacen_SS7.edtFolioEnter(Sender: TObject);
begin
  cxCodigo.Style.Color:=global_color_entradaERP;
end;

procedure TfrmSalidaAlmacen_SS7.edtFolioExit(Sender: TObject);
begin
   cxCodigo.Style.Color:=global_color_salidaERP;
end;

procedure TfrmSalidaAlmacen_SS7.edtFolioKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    cxFecha.SetFocus
end;

procedure TfrmSalidaAlmacen_SS7.tsIsometricoReferenciaKeyPress(
  Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        cxNotas.SetFocus
end;


procedure TfrmSalidaAlmacen_SS7.GridPartidasViewCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if PanelMaterial.Visible = true then
    begin
        if salida_detalle.RecordCount > 0 then
           if salida_detalle.FieldByName('sStatus').AsString = 'Pendiente' then
              salida_detalle.Edit
           else
              messageDLG('No se puede modificar, el material se encuentra "Entregado"',mtInformation, [mbOk],0);
    end;
end;

procedure TfrmSalidaAlmacen_SS7.GridPartidasViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if GridPartidasView.OptionsView.CellAutoHeight then
       GridPartidasView.OptionsView.CellAutoHeight := False
    else
       GridPartidasView.OptionsView.CellAutoHeight := True;
end;

procedure TfrmSalidaAlmacen_SS7.GridPartidasViewMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if Connection.uContrato.FieldByName('FK_Titulo').AsString = 'CMMI' then
  begin
  InsertarNumeroMaterial1.Visible:=True;
  LimpiarCdigoMaterial1.Visible:=True;
  end;
end;

procedure TfrmSalidaAlmacen_SS7.frmBarra2btnEditClick(Sender: TObject);
begin
   // activapop(frmSalidaAlmacen, popupprincipal);
    If salida_almacen.RecordCount > 0 then
    Begin
        if salida_almacen.FieldValues['sSstatus'] = 'AUTORIZADO' then
        begin
            messageDLG('La Salida de Material se encuentra Autorizada.', mtInformation, [mbOk], 0);
            exit;
        end;

        IsOpen := False;
        OpcButton1 := 'Edit' ;
        salida_almacen.Edit;
        ActivaBotones(True);

        pgControl.ActivePageIndex := 0 ;

        if (salida_detalle.RecordCount>0) then
        begin
          if connection.ucontrato.FieldByName('sTipoObra').AsString='PRINCIPAL' then
//            DbTeLstContratos.Enabled:=False;

         // ChkGbxRequisicion.Enabled:=False;
        end;
    End;

    Grid_Entradas.Enabled := False;

end;

procedure TfrmSalidaAlmacen_SS7.tdIdFechaEnter(Sender: TObject);
begin
    cxFecha.Style.Color := global_color_entrada
end;

procedure TfrmSalidaAlmacen_SS7.ValedeResguardo1Click(Sender: TObject);
begin
  If salida_almacen.RecordCount > 0 Then
     begin
         frmRepositorio.Reporte.Active := False;
         frmRepositorio.Reporte.SQL.Clear;
         frmRepositorio.Reporte.SQL.Add('select alm.*, s.*, b.*, i.dExistencia, i.dCostoMN, i.mDescripcion, i.sMedida, i.sModelo, ma.sMarca, m.sDescripcion as Tipomovimiento from almacen_salida s '+
                         'inner join bitacoradesalida b '+
                         'on(b.sContrato = s.sContrato and b.iFolioSalida = s.iFolioSalida) '+
                         'inner join almacenes alm '+
                         'on (alm.sIdAlmacen = b.sIdAlmacen) '+
                         'inner join insumos i '+
                         'on ((:Principal=-1 or (:Principal<>-1 and i.sContrato = s.sContrato)) and i.sIdInsumo = b.sIdInsumo and i.sIdAlmacen =b.sidalmacen ) '+
                         'inner join movimientosdealmacen m '+
                         'on (m.sIdTipo = s.sIdTipo) '+
                         'inner join marcas ma on (i.sIdMarca=ma.sIdMarca) '+
                         'where s.sContrato =:Contrato and s.iFolioSalida =:Folio ');
         frmRepositorio.Reporte.ParamByName('Contrato').DataType  := ftString ;
         frmRepositorio.Reporte.ParamByName('Contrato').Value     := salida_almacen.FieldByName('sContrato').AsString ;
         frmRepositorio.Reporte.ParamByName('Folio').DataType     := ftInteger;
         frmRepositorio.Reporte.ParamByName('Folio').Value        := salida_almacen.FieldValues['iFolioSalida'];
         frmRepositorio.Reporte.ParamByName('Principal').AsInteger :=-1;
         frmRepositorio.Reporte.open;

         frxEntrada.PreviewOptions.MDIChild := False ;
         frxEntrada.PreviewOptions.Modal := True ;
         frxEntrada.PreviewOptions.Maximized := lCheckMaximized () ;
         frxEntrada.PreviewOptions.ShowCaptions := False ;
         frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01  ;
         frxEntrada.LoadFromFile (global_files + global_miReporte+'_ALM_ValeResguardo.fr3') ;
            if not FileExists(global_files + global_miReporte + '_ALM_ValeResguardo.fr3') then
           showmessage('El archivo de reporte '+global_Mireporte+'_ALM_ValeResguardo.fr3 no existe, notifique al administrador del sistema');
         frxEntrada.ShowReport();

     end;
end;

procedure TfrmSalidaAlmacen_SS7.Grid_EntradasDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  try
    salida_scroll;
    if cxPageDetalle.ActivePageIndex = 1 then
    begin
        GraficoSalida.Active:=False;
        AsignarSQL(GraficoSalida,'graficas_detalle_salidas',pUpdate);
        FiltrarDataSet(GraficoSalida,'Fecha',[salida_almacen.FieldByName('Periodo').AsString]);
        GraficoSalida.Open;
        cxGrid1DBChartView1.Categories.DisplayText:='Periodo '+GraficoSalida.FieldByName('years').AsString;
    end;
  except
    ;
  end;
end;

procedure TfrmSalidaAlmacen_SS7.Grid_EntradasDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if Grid_EntradasDBTableView1.OptionsView.CellAutoHeight then
       Grid_EntradasDBTableView1.OptionsView.CellAutoHeight := False
    else
       Grid_EntradasDBTableView1.OptionsView.CellAutoHeight := True;
end;

procedure TfrmSalidaAlmacen_SS7.Grid_EntradasDBTableView1DataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  IsOpen:=False;
end;

procedure TfrmSalidaAlmacen_SS7.Grid_EntradasDBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      if (Key = VK_UP) or ( Key = VK_DOWN)  then
        if PanelDetalle.Visible then
          salida_scroll;
end;

procedure TfrmSalidaAlmacen_SS7.Grid_EntradasDBTableView1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
InsertarNumeroMaterial1.Visible:=False;
LimpiarCdigoMaterial1.Visible:=False;
end;

procedure TfrmSalidaAlmacen_SS7.InsertarNumeroMaterial1Click(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    sNotas : string;
    SavePlace, SavePlace2 : TBookMark;
begin
    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;
    iGrid     := 0;
    if cxPageDetalle.ActivePage = cxTabSheet2 then
    begin
        indice := GridPartidasView.DataController.GetSelectedRowIndex(iGrid);
        GridPartidasView.DataController.FocusedRowIndex := indice;

        with GridPartidasView.DataController.DataSource.DataSet do
        for iGrid := 0 to GridPartidasView.DataController.GetSelectedCount - 1 do
        begin
            indice := GridPartidasView.DataController.GetSelectedRowIndex(iGrid);
            GridPartidasView.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update bitacoradesalida set NumeroMaterial =:Numero '+
                               'where IdBitacoraSalida =:Id');
            zActualiza.ParamByName('Id').AsInteger    := GridPartidasView.DataController.DataSet.FieldByName('IdBitacoraSalida').AsInteger;
            zActualiza.ParamByName('Numero').AsString := autoFolio(salida_detalle,'bitacoradesalida',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,0);
            zActualiza.ExecSQL;
        end;
    end;

    salida_detalle.Refresh;
    zActualiza.destroy;
    cxCancelarDetalle.Click;
end;

procedure TfrmSalidaAlmacen_SS7.LimpiarCdigoMaterial1Click(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    sNotas : string;
    SavePlace, SavePlace2 : TBookMark;
begin
    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;
    iGrid     := 0;
    if cxPageDetalle.ActivePage = cxTabSheet2 then
    begin
        indice := GridPartidasView.DataController.GetSelectedRowIndex(iGrid);
        GridPartidasView.DataController.FocusedRowIndex := indice;

        with GridPartidasView.DataController.DataSource.DataSet do
        for iGrid := 0 to GridPartidasView.DataController.GetSelectedCount - 1 do
        begin
            indice := GridPartidasView.DataController.GetSelectedRowIndex(iGrid);
            GridPartidasView.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update bitacoradesalida set NumeroMaterial =null '+
                               'where IdBitacoraSalida =:Id');
            zActualiza.ParamByName('Id').AsInteger    := GridPartidasView.DataController.DataSet.FieldByName('IdBitacoraSalida').AsInteger;
            zActualiza.ExecSQL;
        end;
    end;

    salida_detalle.Refresh;
    zActualiza.destroy;
    cxCancelarDetalle.Click;
end;

procedure TfrmSalidaAlmacen_SS7.PopupPrincipalPopup(Sender: TObject);
begin
  if Connection.uContrato.FieldByName('sMascara').AsString = 'CMMI' then
    begin
     if (salida_almacen.FieldValues['sStatus'] = 'PENDIENTE') or (salida_almacen.FieldValues['sStatus'] = 'VALIDADO') then
     begin
         InsertarNumeroMaterial1.Visible:=True;
//         AsignarCdigoMaterial1.Enabled := True;
     end
     else
     begin
         InsertarNumeroMaterial1.Visible := False;
     end;
    end;
end;

procedure TfrmSalidaAlmacen_SS7.frxEntradaGetValue(const VarName: String; var Value: Variant);
begin
  If CompareText(VarName, 'TIPO_ENTRADA') = 0 then
      Value := '' ;

  If CompareText(VarName, 'FECHA') = 0 then
      Value :=DateToStr(now);
end;

procedure TfrmSalidaAlmacen_SS7.cxButton1Click(Sender: TObject);
var zUpt: TUniquery;
begin
  zUpt:= TUniquery.Create(nil);
  zUpt.Connection := connection.Uconnection;
  zUpt.SQL.Text := 'Update master_personal Set Talla=:Talla, NoCalzado=:Calzado where IdPersonal='+ IntToStr(cxEmpleado.EditValue);
  zUpt.ParamByName('Talla').AsString := cxTalla.Text;
  zUpt.ParamByName('Calzado').AsString:= cxCalzado.Text;
  zUpt.ExecSQL;


  zUpt.Destroy;

  QPersonal.Refresh;
end;

procedure TfrmSalidaAlmacen_SS7.cxButton2Click(Sender: TObject);
begin
 if True then
  global_frmActivo := 'frm_salidaalmacen';
  Application.CreateForm(TfrmOrdenes,frmOrdenes);
  frmOrdenes.Show;
end;

procedure TfrmSalidaAlmacen_SS7.cxButton3Click(Sender: TObject);
begin
  if (salida_almacen.State = dsInsert ) or (salida_almacen.State = dsEdit) then
   begin
       global_frmActivo := 'frm_SalidaAlmacen';
        if not MostrarFormChild('frmFirmasNota', global_dxBarManagerPrincipal) then
       begin
          Application.CreateForm(TfrmFirmasNota, frmFirmasNota);
          frmFirmasNota.show;

          frmFirmasNota.zFirma2.Filtered := False;
          frmFirmasNota.zFirma2.Filter   := zFirma.Filter;
          frmFirmasNota.zFirma2.Filtered := True;

          frmFirmasNota.frmBarraH11.btnAdd.Click;
       end;
   end;

end;

procedure TfrmSalidaAlmacen_SS7.cxCancelaMaterialClick(Sender: TObject);
begin
   salida_detalle.Cancel;
   PanelMaterial.Visible := False;
   cxSplitMaterial.Visible := False;
end;

procedure TfrmSalidaAlmacen_SS7.cxCancelarDetalleClick(Sender: TObject);
begin
   salida_detalle.Cancel;
   PanelDown.Visible:= False;
   PanelMaterial.Visible:= False;
   cxSplitMaterial.Visible:= False;
   cxNuevoDetalle.Enabled:= True ;
   cxEditaDetalle.Enabled:= True ;
   cxEliminarDetalle.Enabled:= True ;
end;

procedure TfrmSalidaAlmacen_SS7.cxEditaDetalleClick(Sender: TObject);
begin
 If salida_almacen.RecordCount > 0 Then
     Begin
        if salida_almacen.FieldValues['sStatus'] <> 'PENDIENTE' then
        begin
           messageDLG('La Salida de Material se encuentra en estatus '+salida_almacen.FieldValues['sStatus'], mtInformation, [mbOk], 0);
           exit;
        end;
         OpcButton:= 'Edit';
         cxNuevoDetalle.Enabled:= False ;
         cxEditaDetalle.Enabled:= False ;
         cxEliminarDetalle.Enabled:= False ;
         salida_detalle.Edit;


         cxSplitMaterial.Visible := True;
         PanelMaterial.Visible := True;
         PanelDown.Visible:=True;
         cxEntregaMaterial.SetFocus;
     End;

end;

procedure TfrmSalidaAlmacen_SS7.cxEliminarDetalleClick(Sender: TObject);
var
  Id : Integer;
begin
     If salida_detalle.RecordCount > 0 Then
     Begin
        if salida_almacen.FieldValues['sStatus'] <> 'PENDIENTE' then
        begin
           messageDLG('La Salida de Material se encuentra en estatus '+salida_almacen.FieldValues['sStatus'], mtInformation, [mbOk], 0);
           exit;
        end;

        if MessageDlg('Desea Eliminar el Insumo:  ' + #10 + salida_detalle.FieldByName('mDescripcion').AsString + ' ', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
          Id:=salida_detalle.FieldByName('IdBitacoraSalida').AsInteger;
          try
             connection.zUCommand.Active := False ;
             connection.zUCommand.SQL.Clear ;
             connection.zUCommand.SQL.Add ('Delete from bitacoradesalida where IdBitacoraSalida = :Id ') ;

             connection.zUCommand.Params.ParamByName('Id').AsInteger        := salida_detalle.FieldValues['idBitacoraSalida'] ;
             connection.zUCommand.ExecSQL  ;


             SavePlace := salida_detalle.GetBookmark ;
             salida_detalle.Refresh ;

             Try
                 salida_detalle.GotoBookmark(SavePlace);
             Except
             Else
                salida_detalle.FreeBookmark(SavePlace);
             End;
          Except
               MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
          End
        end
        else begin

        end;
     End
end;

procedure TfrmSalidaAlmacen_SS7.cxEmpleadoPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxEmpleado.ItemIndex > 0 then
  begin
      if QPersonal.Locate('IdPersonal', IntToStr(cxEmpleado.EditValue),[]) then
      begin
        cxDireccion.Text := QPersonal.FieldByName('Direccion').AsString;
        cxTelefono.Text := QPersonal.FieldByName('Telefono').AsString;
        cxTalla.Text := QPersonal.FieldByName('Talla').AsString;
        cxCalzado.Text := QPersonal.FieldByName('NoCalzado').AsString;
      end
      else
      begin
        cxDireccion.Text := '';
        cxTelefono.Text := '';
        cxTalla.Text := '';
        cxCalzado.Text := '';
      end;
  end
  else
  begin
        cxDireccion.Text := '';
        cxTelefono.Text := '';
        cxTalla.Text := '';
        cxCalzado.Text := '';
  end;
end;

procedure TfrmSalidaAlmacen_SS7.cxGuardarDetalleClick(Sender: TObject);
begin
    salida_detalle.Post;
    cxCancelarDetalle.Click;
end;

procedure TfrmSalidaAlmacen_SS7.cxNuevoDetalleClick(Sender: TObject);
begin
    If (salida_almacen.RecordCount > 0) Then
     Begin
          if salida_almacen.FieldValues['sStatus'] <> 'PENDIENTE' then
          begin
             messageDLG('La Salida de Material se encuentra en estatus '+salida_almacen.FieldValues['sStatus'], mtInformation, [mbOk], 0);
             exit;
          end;

          IsOpen:=false;

          global_frmActivo:='Salida_Almacen';
          Application.CreateForm(TfrmAgregarMasivoOP_SS7, frmAgregarMasivoOP_SS7);
          Application.NormalizeAllTopMosts;
          frmAgregarMasivoOP_SS7.show;

          OpcButton := 'New';
          cxEditaDetalle.Enabled   := True ;
          cxEliminarDetalle.Enabled := True ;
    End;
end;

procedure TfrmSalidaAlmacen_SS7.cxPageDetalleClick(Sender: TObject);
begin
 try
 if cxPageDetalle.ActivePageIndex = 0 then
  begin
      salida_detalle.Active:= False;
      AsignarSQL(salida_detalle,'almacen_salida_detalle',pUpdate);
      FiltrarDataSet(salida_detalle,'contrato,Folio',[global_contrato,salida_almacen.FieldValues['iFolioSalida']]);
      salida_detalle.Open;
  end;

  if cxPageDetalle.ActivePageIndex = 1 then
  begin
      zGrafico.Active:= False;
      AsignarSQL(zGrafico,'almacen_salida_grafico',pUpdate);
      FiltrarDataSet(zGrafico,'Periodo',[salida_almacen.FieldValues['Periodo']]);
      zGrafico.Open;
      cxGrid1DBChartView1.Categories.DisplayText:='Periodo '+GraficoSalida.FieldByName('years').AsString;
  end;

 except
  on e: Exception do
  begin

  end;
  end;
end;

procedure TfrmSalidaAlmacen_SS7.cxRequisicionPropertiesChange(Sender: TObject);
begin
   if not (cxRequisicion.EditValue=null) then begin
      if (Salida_Almacen.State=dsInsert) or (Salida_Almacen.State=dsEdit)  then begin
        if (connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7') and
            (zq_tipomovimiento.FieldByName('Codigo').AsString = 'SALA') then  begin
            if  QRequisiciones.Locate('iFolioEntrada',cxRequisicion.EditValue,[]) then
              Salida_Almacen.FieldByName('sNumeroOrden').AsString :=  QRequisiciones.FieldByName('sNumeroOrden').AsString
        end
        else
//        if  QRequisiciones.Locate('iFolioRequisicion',cxRequisicion.EditValue,[]) then
//          Salida_Almacen.FieldByName('sNumeroOrden').AsString :=  QRequisiciones.FieldByName('sNumeroOrden').AsString;


      end;
   end;

end;

procedure TfrmSalidaAlmacen_SS7.cxSalidaEPPClick(Sender: TObject);
var
frxDBEntrada : TfrxDBDataset;
begin
  try
     If salida_almacen.RecordCount > 0 Then
     begin
         AsignarSQL(frmRepositorio.reporte,'reporte_salida_material',pUpdate);
         FiltrarDataSet(frmRepositorio.reporte,'Contrato,Folio',[global_contrato,salida_almacen.FieldValues['iFolioSalida']]);
         frmRepositorio.reporte.Open;

          frxDBEntrada := TfrxDBDataset.Create(nil);
          frxDBEntrada.DataSet    := frmRepositorio.Reporte;
          frxDBEntrada.FieldAliases.Clear;
          frxEntrada.DataSets.Add(frxDBEntrada);

      frxEntrada.PreviewOptions.MDIChild := False;
      frxEntrada.PreviewOptions.Modal := True;
      frxEntrada.PreviewOptions.ShowCaptions := False;
      frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;
         frxEntrada.LoadFromFile (global_files + global_miReporte+'_ALM_ValeSalidaEPP.fr3') ;
         if not FileExists(global_files + global_miReporte + '_ALM_ValeSalidaEPP.fr3') then

          showmessage('El archivo de reporte '+global_Mireporte+'_ALM_ValeSalidaEPP.fr3 no existe, notifique al administrador del sistema');

         frxEntrada.ShowReport();


     end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_SalidaAlmacen', 'Al agregar registro ', 0);
    end;

  end;
end;

procedure TfrmSalidaAlmacen_SS7.cxSalidaResguardoClick(Sender: TObject);
var
frxDBEntrada : TfrxDBDataset;
begin
  try
     If salida_almacen.RecordCount > 0 Then
     begin
         AsignarSQL(frmRepositorio.reporte,'reporte_salida_material',pUpdate);
         FiltrarDataSet(frmRepositorio.reporte,'Contrato,Folio',[global_contrato,salida_almacen.FieldValues['iFolioSalida']]);
         frmRepositorio.reporte.Open;

    frxDBEntrada := TfrxDBDataset.Create(nil);
    frxDBEntrada.DataSet    := frmRepositorio.Reporte;
    frxDBEntrada.FieldAliases.Clear;
    frxEntrada.DataSets.Add(frxDBEntrada);

      frxEntrada.PreviewOptions.MDIChild := False;
      frxEntrada.PreviewOptions.Modal := True;
      frxEntrada.PreviewOptions.ShowCaptions := False;
      frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;
         frxEntrada.LoadFromFile (global_files + global_miReporte+'_ALM_ValeSalidaResguardo.fr3') ;
         if not FileExists(global_files + global_miReporte + '_ALM_ValeSalidaResguardo.fr3') then

          showmessage('El archivo de reporte '+global_Mireporte+'_ALM_ValeSalidaResguardo.fr3 no existe, notifique al administrador del sistema');

         frxEntrada.ShowReport();


     end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_SalidaAlmacen', 'Al agregar registro ', 0);
    end;

  end;
end;

procedure TfrmSalidaAlmacen_SS7.cxSolicitudPropertiesChange(Sender: TObject);
begin
  if not (cxSolicitud.EditValue=null) then
        if (Salida_Almacen.State=dsInsert) or (Salida_Almacen.State=dsEdit)  then begin

          if  zSolicitud.Locate('iFolioSolicitud',cxSolicitud.EditValue,[]) then
            Salida_Almacen.FieldByName('sNumeroOrden').AsString :=  zSolicitud.FieldByName('sNumeroOrden').AsString;

        end;
end;

//procedure TfrmSalidaAlmacen.cxSolicitudEmbClick(Sender: TObject);
//var
//frxDBEntrada : TfrxDBDataset;
//begin
//  try
//     If salida_almacen.RecordCount > 0 Then
//     begin
//         AsignarSQL(frmRepositorio.reporte,'reporte_salida_material',pUpdate);
//         FiltrarDataSet(frmRepositorio.reporte,'Contrato,Folio',[global_contrato,salida_almacen.FieldValues['iFolioSalida']]);
//         frmRepositorio.reporte.Open;
//
//         frxDBEntrada := TfrxDBDataset.Create(nil);
//    frxDBEntrada.DataSet    := frmRepositorio.Reporte;
//    frxDBEntrada.UserName   := 'frxDBEntrada';
//    frxDBEntrada.FieldAliases.Clear;
//    frxEntrada.DataSets.Add(frxDBEntrada);
//
//      frxEntrada.PreviewOptions.MDIChild := False;
//      frxEntrada.PreviewOptions.Modal := True;
//      frxEntrada.PreviewOptions.ShowCaptions := False;
//      frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;
//         frxEntrada.LoadFromFile (global_files + global_miReporte+'_ALM_SolicitudEmbarque.fr3') ;
//         if not FileExists(global_files + global_miReporte + '_ALM_SolicitudEmbarque.fr3') then
//
//          showmessage('El archivo de reporte '+global_Mireporte+'_ALM_SolicitudEmbarque.fr3 no existe, notifique al administrador del sistema');
//         frxPDFExport1.FileName := frmRepositorio.Reporte.FieldByName('sFolioSalida').AsString;
//         frxEntrada.ShowReport();
//
//
//     end;
//  except
//    on e: exception do begin
//      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_SalidaAlmacen', 'Al agregar registro ', 0);
//    end;
//
//  end;
//end;

procedure TfrmSalidaAlmacen_SS7.cxTabSheet3Show(Sender: TObject);
begin
  opcionImprimir.EditValue := 1;
end;

procedure TfrmSalidaAlmacen_SS7.cxTipoSalidaExit(Sender: TObject);
begin
   cxTipoSalida.Style.Color := global_color_SalidaERP;

   if (salida_almacen.State = dsInsert) or  (salida_almacen.State = dsEdit)then
     zq_tipomovimiento.Locate('sDescripcion',cxTipoSalida.Text,[]);

       dxLayoutItem10.CaptionOptions.Text:='Requisicion';
       if (salida_almacen.State = dsEdit)then
       begin

        cxRequisicion.DataBinding.DataField:='';
        cxRequisicion.Properties.KeyFieldNames:='';
        cxRequisicion.Properties.ListFieldNames:='';

       end;

       QRequisiciones.Active:= False;
       AsignarSQL(QRequisiciones,'requisicion_salida',pUpdate);
       QRequisiciones.Open;
       cxRequisicion.DataBinding.DataField:='iFolioRequisicion';
       cxRequisicion.Properties.KeyFieldNames:='iFolioRequisicion';
       cxRequisicion.Properties.ListFieldNames:='sNumFolio';

       if (salida_almacen.State = dsEdit)then
        Salida_Almacen.FieldByName('iFolioRequisicion').AsInteger  := IdRequi;

       if zq_tipomovimiento.FieldByName('Codigo').AsString = 'SALA' then
       begin
        if connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7' then begin
            cxRequisicion.EditValue:='';
            dxLayoutItem10.CaptionOptions.Text:='Entrada';
            QRequisiciones.Active:= False;
            AsignarSQL(QRequisiciones,'entrada_salida_almacen',pUpdate);
            FiltrarDataSet(QRequisiciones,'Almacen',[salida_almacen.FieldValues['IdAlmacen']]);
            QRequisiciones.Open;
            cxRequisicion.DataBinding.DataField:='iFolioEntrada';
            cxRequisicion.Properties.KeyFieldNames:='iFolioEntrada';
            cxRequisicion.Properties.ListFieldNames:='sFolioEntrada';
            dxLayoutItem30.Visible := True;
            cbEdoMaterial.Text := 'BUENO';
          end
       end

   else if zq_tipomovimiento.FieldByName('Codigo').AsString = 'SOLM' then
   begin
      dxLayoutItem28.Visible:=True;
//
//      if zSolicitud.RecordCount > 0 then begin
//        if (salida_almacen.State = dsInsert) or  (salida_almacen.State = dsEdit)then
//         cxSolicitud.DataBinding.DataSource.DataSet.FieldByName('iFolioSolicitud').AsInteger := zSolicitud.FieldByName('iFolioSolicitud').AsInteger;
//
//      end;
      dxLayoutItem10.Visible:=False;
      cxRequisicion.EditValue:=0;
   end

   else if zq_tipomovimiento.FieldByName('Codigo').AsString = 'TRAS' then
   begin
      if connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7' then begin
        dxLayoutItem10.Visible:=False;
        cxRequisicion.EditValue:=0;
      end;
   end

//   if Pos('DEVOLU',cxTipoSalida.Text ) > 0 then
//   begin
//      cxOrdenCompra.Enabled := True;
//      cxOrdenCompra.DataBinding.DataSource.DataSet.FieldByName('IdOrdenCompra').AsInteger := zOrdenesCompra.FieldByName('IdOrdenCompra').AsInteger;
//   end;
   else If (salida_almacen.FieldByName('CodigoSalida').AsString = 'SADA') OR (salida_almacen.FieldByName('CodigoSalida').AsString = 'AJIN') or (salida_almacen.FieldByName('CodigoSalida').AsString = 'SALA') then
   begin
      if connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7' then
        cxRequisicion.EditValue:=''

      else
      if (salida_almacen.FieldByName('CodigoSalida').AsString = 'AJIN')  and (connection.uContrato.FieldByName('FK_Titulo').AsString='CMMI') then begin
         dxLayoutItem10.Visible:=False;
         cxRequisicion.EditValue:='';
      end
      else
        dxLayoutItem10.Visible:=True;
     // cxRequisicion.Enabled:=False;
   end

   else If (salida_almacen.FieldByName('CodigoSalida').AsString = 'EPPR') then
   begin
     cxEmpleado.Enabled := True;
     if (salida_almacen.State = dsInsert) or  (salida_almacen.State = dsEdit)then
     cxEmpleado.DataBinding.DataSource.DataSet.FieldByName('IdEmpleado').AsInteger := QPersonal.FieldByName('IdPersonal').AsInteger;
     if (connection.uContrato.FieldByName('FK_Titulo').AsString='SIANI') and ((salida_almacen.FieldByName('IdTipo').AsInteger = 2) OR (salida_almacen.FieldByName('IdTipo').AsInteger = 14)) then  begin
       cxTabSheetAsignacion.TabVisible:=true;
       cxTabSheetEquipo.TabVisible:=False;
     end
     else  begin
      cxTabSheetAsignacion.TabVisible:=False;
     cxTabSheetEquipo.TabVisible:=True;
     end;

     cxPageDetalle.ActivePageIndex := 0;
     dxLayoutItem10.Visible:=True;

     if connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7' then
     cxRequisicion.EditValue:='';
     if connection.uContrato.FieldByName('FK_Titulo').AsString='SIANI' then
     cxRequisicion.Enabled:=False;
   end
   else
   begin
     dxLayoutItem28.Visible:=False;
     cxSolicitud.EditValue:=0;
     cxRequisicion.Enabled:=True;
     If salida_almacen.FieldByName('CodigoSalida').AsString = 'EPPR' then
     begin
      TipoSalida:=cxTipoSalida.Text;
      dxLayoutItem10.Visible:=True;
      cxTabSheetAsignacion.TabVisible:=True;
      cxTabSheetEquipo.TabVisible:=False;
      cxEmpleado.DataBinding.DataSource.DataSet.FieldByName('IdEmbarcacion').AsInteger := 1;
      cxPageDetalle.ActivePageIndex := 1;
     end
    else
     begin
       TipoSalida:='';
           if (salida_almacen.FieldByName('CodigoSalida').AsString = 'SALA')  and (connection.uContrato.FieldByName('FK_Titulo').AsString='CMMI') then begin
          dxLayoutItem10.Visible:=False;
          cxRequisicion.EditValue:='';
          end
          ELSE
         dxLayoutItem10.Visible:=True;
         cxTabSheetAsignacion.TabVisible:=False;
         cxTabSheetEquipo.TabVisible:=False;

         if connection.UContrato.FieldByName('FK_Titulo').AsString = 'SIANI' then BEGIN
            TipoSalida:=cxTipoSalida.Text;
            dxLayoutItem10.Visible:=True;
           if (salida_almacen.FieldByName('IdTipo').AsInteger = 2) or  (salida_almacen.FieldByName('IdTipo').AsInteger = 14) then begin
              cxTabSheetAsignacion.TabVisible:=True;
              cxTabSheetEquipo.TabVisible:=False;
           end
           else if  (salida_almacen.FieldByName('IdTipo').AsInteger = 4) then begin
              cxTabSheetAsignacion.TabVisible:=False;
              cxTabSheetEquipo.TabVisible:=True;
           end;
           if (salida_almacen.State = dsInsert) or( salida_almacen.State = dsEdit) then
            cxEmpleado.DataBinding.DataSource.DataSet.FieldByName('IdEmpleado').AsInteger := 1;
            cxPageDetalle.ActivePageIndex := 1;
         END;
     end;

     if ((connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7') and (salida_almacen.FieldByName('CodigoSalida').AsString <> 'SALA')) then
       dxLayoutItem30.Visible := False;

   end;
end;


procedure TfrmSalidaAlmacen_SS7.cxTipoSalidaPropertiesChange(Sender: TObject);
begin
  if insert then
  begin
    cxProyecto.SetFocus;
  end;
end;

procedure TfrmSalidaAlmacen_SS7.tdFechaAvisoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        cxProyecto.SetFocus
end;

procedure TfrmSalidaAlmacen_SS7.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
       If Key = #13 Then
          cxRecibe.SetFocus
end;

procedure TfrmSalidaAlmacen_SS7.ActivaBotones(Sender: Boolean);
begin
    if sender then
    begin
        cxProyecto.Enabled   := True ;
        cxFecha.Enabled       := true ;
        cxCodigo.Properties.ReadOnly        :=  False;
        cxRecibe.Properties.ReadOnly       :=  False;
        cxNotas.Properties.ReadOnly   :=  False ;
    end
    else
    begin
         cxFecha.Enabled      := False ;
         cxProyecto.Enabled  := False ;
         cxCodigo.Properties.ReadOnly:=True;
         cxRecibe.Properties.ReadOnly:=True;
         cxNotas.Properties.ReadOnly := True ;
    end;
end;

procedure TfrmSalidaAlmacen_SS7.AsignacionPersonal;
var
zAsignacion:TUniQuery;
begin
  if TipoSalida = 'ASIGNACION' then
  begin
    zAsignacion := tUniquery.create(nil);
    zAsignacion.Connection := Connection.uConnection;
    zAsignacion.Active:=False;
    zAsignacion.SQL.Add('INSERT INTO vale_resguardo (IdVale, Codigo, Fecha, IdEmbarcacion, IdPersonal, Estatus, Comentario, IdSalida) '
                        +'VALUES (0, :Codigo, :Fecha, :IdEmbarcacion, :IdPersonal, :Estatus, :Comentario, :IdSalida)');
    zAsignacion.ParamByName('Codigo').AsString:='VAL-RES';
    zAsignacion.ParamByName('Fecha').AsDate:=cxFecha.Date;
    zAsignacion.ParamByName('IdEmbarcacion').AsInteger:=cbEmbarcacion.EditValue;
    zAsignacion.ParamByName('IdPersonal').AsInteger:=cbEmpleados.EditValue;
    zAsignacion.ParamByName('Estatus').AsString:='ACTIVO';
    zAsignacion.ParamByName('Comentario').AsString:='';
    zAsignacion.ParamByName('IdSalida').AsInteger:=salida_almacen.LastInsertId;
    zAsignacion.ExecSQL;
    zAsignacion.Destroy;
  end;
end;

procedure TfrmSalidaAlmacen_SS7.btnAddClick(Sender: TObject);
begin
  pgControl.Visible := True;
  Try
    insert:=True;
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    OpcButton1 := 'New' ;
    IsOpen := False;
    ActivaBotones(True);
    frmBarraH11.btnAddClick(Sender);

    cxAlmacen.SetFocus;
    salida_almacen.Append;
    salida_almacen.FieldByName('iFolioSalida').AsInteger    := 0;
    salida_almacen.FieldByName('sFolioSalida').AsString     := autofolio(salida_almacen,'almacen_salida');
    salida_almacen.FieldByName('dFechaSalida').AsDateTime   := Date;
    salida_almacen.FieldByName('mComentarios').AsString     := '*';
    cxTipoSalida.DataBinding.DataSource.DataSet.FieldByName('IdTipo').AsInteger := zq_tipomovimiento.FieldByName('IdTipo').AsInteger;
    cxTipoSalidaExit(Sender);
    cxProyecto.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString := QReferencia.FieldByName('sNumeroOrden').AsString;
    cxAlmacen.DataBinding.DataSource.DataSet.FieldByName('IdAlmacen').AsString := almacen.FieldByName('IdAlmacen').AsString;
    if connection.uContrato.FieldByName('FK_Titulo').AsString='CMMI' then
      cxCliente.DataBinding.DataSource.DataSet.FieldByName('IdCliente').AsInteger:=zClientes.FieldByName('IdCliente').AsInteger;
    if connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7' then begin
      cxViaEmbarque.ItemIndex:=0;
      salida_almacen.FieldByName('ViaEmbarque').AsVariant:=cxViaEmbarque.EditValue;
    end;
    salida_almacen.FieldByName('lEsEquipoProteccion').AsString:= 'No';
//    salida_almacen.FieldByName('lAsignacion').AsString:= 'No';

    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;
    Grid_Entradas.Enabled := False;
    pnlBtn2.Visible := True;
    cxSplitter1.Visible := True;
    pgControl.Visible := True;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_EntradaAlmacen', 'Al agregar registro ', 0);
    end;
  end;

end;

procedure TfrmSalidaAlmacen_SS7.btnCancelClick(Sender: TObject);
begin
  insert:=False;
  frmBarraH11.btnActive;
  ActivaBotones(False);
  cxLeyenda.Caption:=titulo;

  Grid_Entradas.Enabled := True;
  salida_almacen.cancel;
  cxSplitter1.Visible := True;
  pgControl.Visible := False;
  pnlBtn2.Visible := False;
  Grid_Entradas.SetFocus ;
end;

procedure TfrmSalidaAlmacen_SS7.btnDeleteClick(Sender: TObject);
begin
  If salida_almacen.RecordCount > 0 Then
  If MessageDlg('Desea eliminar la Salida Seleccionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     Begin
        if salida_almacen.FieldValues['sStatus'] <> 'PENDIENTE' then
        begin
           messageDLG('La Salida de Material se encuentra en estatus '+salida_almacen.FieldValues['sStatus'], mtInformation, [mbOk], 0);
           exit;
        end;
        if salida_detalle.RecordCount > 0 then
        begin
             showmessage('No se puede Eliminar!, Existen Materiales para esta Salida.');
             exit;
        end;
        // Actualizo Kardex del Sistema ....
        try
          IsOpen:=false;
          kardex_almacen('Salida Almacen Elimina '+ ' No. [' + salida_almacen.FieldValues['sFolioSalida'] + '].', 'Otros Movimientos');
          salida_almacen.Delete;
          salida_almacen.ApplyUpdates();

          SavePlace := salida_almacen.GetBookmark ;
          salida_almacen.Refresh ;
          IsOpen:=True;

          Try
             salida_almacen.GotoBookmark(SavePlace);
          Except
          Else
            salida_almacen.FreeBookmark(SavePlace);
          End;


        except
         on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Salidas Almacen', 'Al eliminar registro', 0);
          end;
        end;
    End
end;

procedure TfrmSalidaAlmacen_SS7.btnDetalleClick(Sender: TObject);
begin
  panelDown.Visible:= False;
  cxSplitterOpciones.Visible := not cxSplitterOpciones.Visible ;
  panelDetalle.Visible := not panelDetalle.Visible;
  if PanelDetalle.Visible = true then
     salida_scroll;
end;

procedure TfrmSalidaAlmacen_SS7.btnEditClick(Sender: TObject);
begin
    if salida_almacen.FieldValues['sStatus'] <> 'PENDIENTE' then
    begin
       messageDLG('La Salida de Material se encuentra en estatus '+salida_almacen.FieldValues['sStatus'], mtInformation, [mbOk], 0);
       exit;
    end;
    frmBarraH11.btnEditClick(Sender);
    pgControl.Visible := True;
    insert:=True;
    If salida_almacen.RecordCount > 0 then
    Begin
        cxLeyenda.Caption:=titulo+'[Editando]';
        IsOpen := False;
        OpcButton1 := 'Edit' ;
        salida_almacen.Edit;
        ActivaBotones(True);
        cxTipoSalidaExit(Sender);
    End;

   cxSplitterOpciones.Visible := False;
   PanelDetalle.Visible       := False;
   Grid_Entradas.Enabled := False;
   pnlBtn2.Visible := True;
   cxSplitter1.Visible := True;
   pgControl.Visible := True;
end;

procedure TfrmSalidaAlmacen_SS7.EnterControl(Sender: TObject);
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

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmSalidaAlmacen_SS7.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmSalidaAlmacen_SS7.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmSalidaAlmacen_SS7.salida_detalleAfterScroll(DataSet: TDataSet);
begin
  IdRequi :=  Salida_Almacen.FieldByName('iFolioRequisicion').AsInteger;
end;

procedure TfrmSalidaAlmacen_SS7.salida_scroll;
begin
    if salida_almacen.RecordCount > 0 then
    begin
      if salida_almacen.State = dsBrowse then
      begin
          if cxPageDetalle.ActivePageIndex = 0 then
          begin
              salida_detalle.Active:= False;
              AsignarSQL(salida_detalle,'almacen_salida_detalle',pUpdate);
              FiltrarDataSet(salida_detalle,'contrato,Folio',[global_contrato,salida_almacen.FieldValues['iFolioSalida']]);
              salida_detalle.Open;
          end;

          if cxPageDetalle.ActivePageIndex = 1 then
          begin
              zGrafico.Active:= False;
              AsignarSQL(zGrafico,'almacen_salida_grafico',pUpdate);
              FiltrarDataSet(zGrafico,'Periodo',[salida_almacen.FieldValues['Periodo']]);
              zGrafico.Open;
          end;
      end;
      salida_detalle.Refresh;
    end;
end;

End.
