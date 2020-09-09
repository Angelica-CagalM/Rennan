unit frm_requisicion_ss7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Math, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxDBLookupComboBox, dxBarBuiltInMenu, dxLayoutContainer, dxLayoutControl,
  cxPC, frm_barraH2, cxSplitter, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxProgressBar, Vcl.StdCtrls, cxButtons, cxLabel, frm_barraH1, Vcl.ExtCtrls,
  global, UnitGenerales, MemDS, DBAccess, Uni,
  dxLayoutcxEditAdapters, cxDBEdit, cxCheckBox, cxGroupBox, cxRadioGroup,
  cxMemo, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxMaskEdit, cxCalendar,
  cxTextEdit, frxClass, frxDBSet, UnitValidaTexto, UnitExcepciones,
  Vcl.ComCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.DBCtrls,
  UnitValidacion, Utilerias, ExportaExcel, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, dxLayoutControlAdapters, cxGridChartView, cxGridDBChartView, UnitReportes,
  dxToggleSwitch, dxDBToggleSwitch,  ExcelXP, ComObj, Excel2000, unitExcel,
  frxExportPDF, cxCheckGroup, cxDBCheckGroup, cxCalc, cxCheckListBox,
  cxDBExtLookupComboBox, Vcl.OleServer, frxExportMail, frxExportXLS,
  frxExportXML, frxExportDBF, dxCore, cxDateUtils,
  IdAttachmentFile, IdMessage, idSmtp,IdSMTPBase,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,IdSSLOpenSSLHeaders,
  IdExplicitTLSClientServerBase,IdTCPConnection, IdTCPClient,
  IdMessageClient, IdIOHandler,IdComponent, unitEnviarEMail, frxExportXLSX;

type
  TFrmRequisicionss7 = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    dsDepartamento: TDataSource;
    zDepartamento: TUniQuery;
    anexo_requisicion: TUniQuery;
    dsRequisicion: TDataSource;
    ds_anexo_prequisicion: TDataSource;
    anexo_prequisicion: TUniQuery;
    PopupPrincipal: TPopupMenu;
    N5: TMenuItem;
    SeguimientoMaterialxPartidasdeAnexo1: TMenuItem;
    N6: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    reporte: TUniQuery;
    frxDBRequisicion: TfrxDBDataset;
    frxEntrada: TfrxReport;
    OpenXLS: TOpenDialog;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
    Qordenes_trabajo: TUniQuery;
    ds_ordenes_trabajo: TDataSource;
    zGrafica: TUniQuery;
    dsGrafica: TDataSource;
    zReporteDetalle: TUniQuery;
    zCentroCosto: TUniQuery;
    dsCentroCosto: TDataSource;
    zRecurso: TUniQuery;
    ds_Recurso: TDataSource;
    ds_firma: TDataSource;
    zFirma: TUniQuery;
    plataforma: TUniQuery;
    ds_plataforma: TDataSource;
    zApruebaRequisicion: TUniQuery;
    dsApruebaRequisicion: TDataSource;
    cxSAP: TcxButton;
    SaveDialog1: TSaveDialog;
    frxPDFExport1: TfrxPDFExport;
    dsPlanta: TDataSource;
    uPlanta: TUniQuery;
    PanelPrincipal: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    tiFolio: TcxDBTextEdit;
    dxDBToggleSwitch1: TdxDBToggleSwitch;
    tsDepartamento: TcxDBLookupComboBox;
    tsNumeroOrden: TcxDBLookupComboBox;
    tdidFecha: TcxDBDateEdit;
    tdIdFecha2: TcxDBDateEdit;
    cxManagerAprobador: TcxDBLookupComboBox;
    cxProcurementSpecialist: TcxDBMemo;
    tmComentarios: TcxDBMemo;
    tsSolicitante: TcxDBTextEdit;
    cbRecurso: TcxDBLookupComboBox;
    cxSAPRelease: TcxDBLookupComboBox;
    tsLugarEntrega: TcxDBLookupComboBox;
    cxUploadingPoint: TcxDBMemo;
    cxQAprobador: TcxDBLookupComboBox;
    cxPreferredSupplier: TcxDBMemo;
    cxPlanta: TcxDBLookupComboBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    cxSplitter1: TcxSplitter;
    grid_requsicion: TcxGrid;
    cxView_Requsicion: TcxGridDBTableView;
    cxView_RequsicionColumn1: TcxGridDBColumn;
    cxView_RequsicionColumn3: TcxGridDBColumn;
    cxView_RequsicionColumn10: TcxGridDBColumn;
    cxView_RequsicionColumn2: TcxGridDBColumn;
    cxView_RequsicionColumn8: TcxGridDBColumn;
    cxView_RequsicionColumn5: TcxGridDBColumn;
    cxView_RequsicionColumn6: TcxGridDBColumn;
    cxView_RequsicionColumn9: TcxGridDBColumn;
    colum_comentarios: TcxGridDBColumn;
    grid_requsicionLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    cxPageDetalle: TcxPageControl;
    cxTabMaterial: TcxTabSheet;
    cxGridMateriales: TcxGrid;
    cxView_Materiales: TcxGridDBTableView;
    cxView_MaterialesColumn1: TcxGridDBColumn;
    cxView_MaterialesColumn2: TcxGridDBColumn;
    cxView_MaterialesColumn3: TcxGridDBColumn;
    cxView_MaterialesColumn4: TcxGridDBColumn;
    cxView_MaterialesColumn7: TcxGridDBColumn;
    cxGridMaterialesLevel1: TcxGridLevel;
    tabInformes: TcxTabSheet;
    PanelInferiorInforme: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid1Level1: TcxGridLevel;
    cxSplitInforme: TcxSplitter;
    PanelSuperiorInforme: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    opcionImprimir: TcxRadioGroup;
    btnImpInforme: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    cxEliminarDetalle: TcxButton;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    dsGrupoMaterial: TDataSource;
    uGrupoMaterial: TUniQuery;
    PanelMaterial: TPanel;
    dxLayoutControl5: TdxLayoutControl;
    cxGrupoMaterial: TcxDBLookupComboBox;
    cxWbs: TcxDBLookupComboBox;
    cxCantidad: TcxDBCalcEdit;
    cxNumeroMaterial: TcxDBTextEdit;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    cxSplitMaterial: TcxSplitter;
    uRequerimientosQA: TUniQuery;
    dsRequerimientosQA: TDataSource;
    cxRequerimientosQA: TcxCheckListBox;
    dxLayoutItem1: TdxLayoutItem;
    uGerentes: TUniQuery;
    dsGerentes: TDataSource;
    uOrdenesTrabajo: TUniQuery;
    dsOrdenesTrabajo: TDataSource;
    cxNotas: TcxDBMemo;
    dxLayoutItem28: TdxLayoutItem;
    MarcarcomoConsumible1: TMenuItem;
    AsignarCdigoMaterial1: TMenuItem;
    cxFindWbs: TcxButton;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    zdepC: TUniQuery;
    ds_depC: TDataSource;
    cxImportar: TcxButton;
    TsArchivo: TcxTextEdit;
    PanelProgreso: TPanel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;

    cxView_RequsicionColumn11: TcxGridDBColumn;
    cxView_MaterialesColumn5: TcxGridDBColumn;
    cxView_MaterialesColumn6: TcxGridDBColumn;
    ExcelWorksheet1: TExcelWorksheet;
    ExcelWorkbook1: TExcelWorkbook;
    ExcelApplication1: TExcelApplication;
    zApruebaQA: TUniQuery;
    dsApruebaQA: TDataSource;
    cxView_RequsicionColumn7: TcxGridDBColumn;
    dxLayoutItem26: TdxLayoutItem;
    cxFindGM: TcxButton;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxDBToggleSwitch2: TdxDBToggleSwitch;
    dxLayoutItem29: TdxLayoutItem;
    IncluyeCodigoMaterial1: TMenuItem;
    OcultarCodigoMaterial1: TMenuItem;
    cxView_RequsicionColumn12: TcxGridDBColumn;
    cxView_RequsicionColumn13: TcxGridDBColumn;
    zPOrdenes_Trabajo: TUniQuery;
    ds_POrdenesTrabajo: TDataSource;
    cxProyecto: TcxDBLookupComboBox;
    dxLayoutItem30: TdxLayoutItem;
    cxOrdenTrabajo: TcxDBLookupComboBox;
    dxLayoutItem24: TdxLayoutItem;
    cxLogistica: TcxDBMemo;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxDBToggleSwitch3: TdxDBToggleSwitch;
    dxLayoutItem32: TdxLayoutItem;
    CopiarGrupoMaterial1: TMenuItem;
    PegarGrupoMaterial1: TMenuItem;
    CopiarQARequirement1: TMenuItem;
    PegarQARequirement1: TMenuItem;
    zNotasGenerales: TUniQuery;
    dsNotasGenerales: TDataSource;
    NoRequiereInspeccionQA1: TMenuItem;
    ActualizaMateriales1: TMenuItem;
    frxMailExport1: TfrxMailExport;
    btnVisualizar: TcxButton;
    btnEnviar5: TcxButton;
    N1: TMenuItem;
    CopiarWorkOrder1: TMenuItem;
    PegarWorkOrder1: TMenuItem;
    ComentarMR1: TMenuItem;
    Panel4: TPanel;
    dxLayoutControl7: TdxLayoutControl;
    btnLimpiarF: TcxButton;
    cxFiltroRequerido: TcxButton;
    cxInicioRequerido: TcxDateEdit;
    cxFinRequerido: TcxDateEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutItem37: TdxLayoutItem;
    NuevoServicio: TMenuItem;
    btnPermanentes: TcxButton;
    cxView_RequsicionColumn4: TcxGridDBColumn;
    cxView_RequsicionColumn14: TcxGridDBColumn;
    btnRevisión: TcxButton;
    NuevoAccesorio1: TMenuItem;
    VerAccesorios1: TMenuItem;
    traerAccesorios1: TMenuItem;
    zMensaje: TUniQuery;
    dsMensaje: TDataSource;
    zDestino: TUniQuery;
    dsDestino: TDataSource;
    zCorreo: TUniQuery;
    frxRequisicion_detalle: TfrxDBDataset;
    cxExtraordinario: TcxDBTextEdit;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxTodosUsuarios: TcxCheckBox;
    dxLayoutUsusarios: TdxLayoutItem;
    cxTodosEstatus: TcxCheckBox;
    dxLayoutEstatus: TdxLayoutItem;
    cxView_MaterialesColumn8: TcxGridDBColumn;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxView_MaterialesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxView_RequsicionCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxView_RequsicionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure frxEntradaGetValue(const VarName: string; var Value: Variant);
    procedure btnPrinterClick(Sender: TObject);
    procedure SeguimientoMaterialxPartidasdeAnexo1Click(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxView_RequsicionCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tabInformesShow(Sender: TObject);
    procedure btnImpInformeClick(Sender: TObject);
    procedure cxView_RequsicionDataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: string);
    procedure cxView_RequsicionDataControllerFilterChanged(Sender: TObject);
    procedure cxEliminarDetalleClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxPageDetalleClick(Sender: TObject);
    procedure tdidFechaExit(Sender: TObject);
    procedure tdIdFecha2Exit(Sender: TObject);
    procedure requisitaXcotizacion(requisicion:String);
    procedure tsDepartamentoExit(Sender: TObject);
    procedure cxQAprobadorEnter(Sender: TObject);
    procedure cxManagerAprobadorEnter(Sender: TObject);
    procedure cxSAPClick(Sender: TObject);
    procedure formatoEncabezado();
    procedure cxView_MaterialesCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure MarcarOpcionesQA;
    function MarcarOpcionesQAR():string;
    function GuardarOpcionesQA():string;
    procedure cxGridViewTerceriasCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxOrdenTrabajoEnter(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxGridViewRecursoCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure anexo_prequisicionBeforePost(DataSet: TDataSet);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure MarcarcomoConsumible1Click(Sender: TObject);
    procedure AsignarCdigoMaterial1Click(Sender: TObject);
    procedure cxFindWbsClick(Sender: TObject);
    procedure VistaDetalleMR;
    procedure cxImportarClick(Sender: TObject);
    procedure OpenXLSFolderChange(Sender: TObject);
    procedure OpenXLSSelectionChange(Sender: TObject);
    procedure OpenXLSClose(Sender: TObject);
    procedure cxFindGMClick(Sender: TObject);
    procedure IncluyeCodigoMaterial1Click(Sender: TObject);
    procedure OcultarCodigoMaterial1Click(Sender: TObject);
    procedure PopupPrincipalPopup(Sender: TObject);
    procedure CopiarGrupoMaterial1Click(Sender: TObject);
    procedure PegarGrupoMaterial1Click(Sender: TObject);
    procedure CopiarQARequirement1Click(Sender: TObject);
    procedure PegarQARequirement1Click(Sender: TObject);
    procedure cxView_RequsicionMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxView_MaterialesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NoRequiereInspeccionQA1Click(Sender: TObject);
    procedure ActualizaMateriales1Click(Sender: TObject);
    procedure cxOrdenTrabajoExit(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnEnviar5Click(Sender: TObject);
    procedure cxProyectoExit(Sender: TObject);
    procedure CopiarWorkOrder1Click(Sender: TObject);
    procedure PegarWorkOrder1Click(Sender: TObject);
    procedure selectPlanta;
    procedure ComentarMR1Click(Sender: TObject);
    procedure cxFiltroRequeridoClick(Sender: TObject);
    procedure btnLimpiarFClick(Sender: TObject);
    procedure NuevoServicioClick(Sender: TObject);
    procedure btnPermanentesClick(Sender: TObject);
    procedure btnRevisiónClick(Sender: TObject);
    procedure NuevoAccesorio1Click(Sender: TObject);
    procedure VerAccesorios1Click(Sender: TObject);
    procedure traerAccesorios1Click(Sender: TObject);
    procedure EnviaCorreoAvanzado(sParamModulo,sParamProceso,sParamTipoMaterial,sParamComentario,sParamEstatus, sParamFoldiosDoctos :string);

    procedure CargarCatalogos;
    procedure cxTodosUsuariosPropertiesChange(Sender: TObject);
    procedure cxTodosEstusPropertiesChange(Sender: TObject);


  private
    { Private declarations }
    Mensaje: TIdMessage;
    AdjuntoOtros: TIdAttachmentFile;
    Adjunto: TIdAttachmentFile;
    Botones: TcxButton;
    RutaArchivoAdjunto: string;
    procedure validaciones;
    procedure llenarCampos;


  public
    { Public declarations }
  end;

var

  FrmRequisicionss7: TFrmRequisicionss7;
  titulo         : string;
  titulo2        : string;
  recurso        : string;

  isOpen : boolean = False;
  btnPermisos, TipoExplosion : String;
  Valida, lFiltroUsuario, lFiltroEstatus :boolean;
  sUsuario, sEstatus1, sEstatus2 :string;
  MontoTotal : Currency ;
  lExiste    : boolean;
  idAprReq:String;
  AnteriorArray : array[1..12] of string;

  //Variables para el popMovimiento
  lOpcionSelecciona  : boolean;
  sDescripcion, sRequerimientoQA : string;
  lExpandido : boolean;
  IdGMaterialCopia    : Integer;
  MaterialCopia, mComentarioOT,WorkOrderCopia :String;


  Excel, Libro, Hoja: Variant;
  columnas : array[1..260] of String ;
  VistaGrid : TcxGridDBTableView;
implementation
uses frm_connection ,
     frm_pernoctan,
     frm_deptos,
     Func_Genericas,
     frm_agregar_Requisicion,
     UnitMetodos,
     frm_FirmasNota, Frm_CotizacionP, frm_repositorio,frm_GridFM, frm_valida,
     Frm_Comentarios, frm_agregar_Accesorios, frm_agregar_servicios, UFrmConfigCorreo,
  frm_valida_ss7;
{$R *.dfm}

procedure TFrmRequisicionss7.NuevoAccesorio1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmAgregarMasivoAccesorios, frmAgregarMasivoAccesorios);
  frmAgregarMasivoAccesorios.show;
end;

procedure TFrmRequisicionss7.NuevoServicioClick(Sender: TObject);
begin
  Try
     if (anexo_requisicion.FieldValues['sStatus'] = 'GENERO PR') AND (anexo_requisicion.FieldValues['IdTipoRecurso'] = 2) and (anexo_requisicion.FieldValues['Rev'] > 0)  then
     begin
         global_frmActivo :='Nuevo Servicio';

         OpcButton := 'New';
         if cxPageDetalle.ActivePage = cxTabMaterial then
         begin
            global_frmActivo:='Nuevo Servicio';
         end;
         Application.CreateForm(TfrmAgregarMasivoRequisicion, frmAgregarMasivoRequisicion);
         frmAgregarMasivoRequisicion.show;
     end
     else
     begin
        messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
     end;
  except
   on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_RequisicionPerf', 'Al agregar registro ', 0);
   end;
  end;
end;

procedure TFrmRequisicionss7.ActualizaMateriales1Click(Sender: TObject);
var
    zActualiza, zBusca : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    SavePlace, SavePlace2 : TBookMark;
    VistaGrid : TcxGridDBTableView;
begin
//    if (anexo_requisicion.FieldValues['sStatus'] <> 'PENDIENTE') then
//    begin
//       messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
//       exit;
//    end;

    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;

    zBusca:=tUniquery.create(nil);
    zBusca.Connection := Connection.uConnection;

    PanelProgreso.Visible := True;
    BarraMostrar(True, progreso, LabelProceso );

    iGrid     := 0;
    if cxPageDetalle.ActivePage = cxTabMaterial then
       VistaGrid := cxView_Materiales;

    indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
    cxView_Materiales.DataController.FocusedRowIndex := indice;

    with cxView_Materiales.DataController.DataSource.DataSet do
    for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
    begin
        indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        cxView_Materiales.DataController.FocusedRowIndex := indice;

        zBusca.SQL.Clear;
        zBusca.SQL.Add('select Material,IdMedida from alm_insumos where IdInsumo =:IdInsumo');
        zBusca.ParamByName('IdInsumo').AsInteger   := cxView_Materiales.DataController.DataSet.FieldByName('IdInsumo').AsInteger;
        zBusca.Open;

        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('update anexo_prequisicion set IdMedida =:IdMedida, mDescripcion =:Descripcion where IdPRequisicion =:IdRequisicion');
        zActualiza.ParamByName('IdRequisicion').AsInteger := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
        zActualiza.ParamByName('IdMedida').AsInteger      := zBusca.FieldByName('IdMedida').AsInteger;
        zActualiza.ParamByName('Descripcion').AsString    := zBusca.FieldByName('Material').AsString;
        zActualiza.ExecSQL;

        BarraProgresoAvance(Progreso, 0,100,100/cxView_Materiales.DataController.GetSelectedCount);
    end;

    anexo_prequisicion.Refresh;

    BarraProgresoAvance(Progreso, 0,100,100);
    cxView_Materiales.DataController.ClearSelection;
    zActualiza.destroy;
    zBusca.Destroy;
    PanelProgreso.Visible := False;

end;

procedure TFrmRequisicionss7.anexo_prequisicionBeforePost(DataSet: TDataSet);
begin
    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
       if cxView_Materiales.DataController.GetSelectedCount = 0 then
          anexo_requisicion.FieldByName('EspecificacionesQA').AsString := GuardarOpcionesQA;
    end;
end;

procedure TFrmRequisicionss7.AsignarCdigoMaterial1Click(Sender: TObject);
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
    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
        indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        cxView_Materiales.DataController.FocusedRowIndex := indice;

        with cxView_Materiales.DataController.DataSource.DataSet do
        for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
        begin
            indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
            cxView_Materiales.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update anexo_prequisicion set NumeroMaterial =:Numero '+
                               'where IdPRequisicion =:Id');
            zActualiza.ParamByName('Id').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
            zActualiza.ParamByName('Numero').AsString := autoFolio(anexo_prequisicion,'anexo_prequisicion',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,0);
            zActualiza.ExecSQL;
        end;
    end;

    anexo_prequisicion.Refresh;
    zActualiza.destroy;
    cxCancelarDetalle.Click;

end;

procedure TFrmRequisicionss7.btnAddClick(Sender: TObject);
var
zFolios : TUniQuery;
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    cxSplitter1.Visible := False;
    grid_requsicion.Enabled:=False;

    CargarCatalogos;

    anexo_requisicion.First;

    //Se guardan datos para autollenar al insertar el valor anterior..
    AnteriorArray[1] := IntToStr(anexo_requisicion.FieldByName('IdPlanta').AsInteger);
    AnteriorArray[2] := anexo_requisicion.FieldByName('sSolicito').AsSTring;
    AnteriorArray[3] := IntToStr(anexo_requisicion.FieldByName('IdSAPSolicitante').AsInteger);
    AnteriorArray[4] := anexo_requisicion.FieldByName('sLugarEntrega').AsSTring;
    AnteriorArray[5] := anexo_requisicion.FieldByName('sPuntoCarga').AsSTring;
    AnteriorArray[6] := anexo_requisicion.FieldByName('TelefonoRequisitor').AsSTring;
    AnteriorArray[7] := anexo_requisicion.FieldByName('TelefonoSAPSolicitante').AsSTring;
    AnteriorArray[8] := IntToStr(anexo_requisicion.FieldByName('IdAutorizaManager').AsInteger);
    AnteriorArray[9] := IntToStr(anexo_requisicion.FieldByName('IdAutorizaQA').AsInteger);
    AnteriorArray[10] := anexo_requisicion.FieldByName('sNumeroOrden').AsString;

    anexo_requisicion.AfterScroll := nil;
    zDepartamento.Locate('IdDepartamento',connection.uUsuario.FieldByName('idDepartamento').AsInteger,[]);
    anexo_requisicion.Append;
    anexo_requisicion.FieldValues['IdDepartamento']:= zDepartamento.FieldByName('IdDepartamento').AsInteger;
    anexo_requisicion.FieldValues['sNumFolio']     := autoFolio(anexo_requisicion,'anexo_requisicion',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,tsDepartamento.DataBinding.DataSource.DataSet.FieldByName('IdDepartamento').AsInteger);
    anexo_requisicion.FieldValues['sContrato']     := global_contrato;
    anexo_requisicion.FieldValues['sSolicito']     := GLOBAL_NOMBRE;
    anexo_requisicion.FieldValues['sRequisita']    := GLOBAL_NOMBRE;
    anexo_requisicion.FieldValues['mComentarios']  := '';
    anexo_requisicion.FieldValues['sIdUsuario']    := Global_Usuario;
    anexo_requisicion.FieldValues['sPrioridad']    := 'Normal';
    anexo_requisicion.FieldValues['AplicaLogistica'] := 'No';
    anexo_requisicion.FieldValues['dFechaSolicitado']:= Date;
    anexo_requisicion.FieldValues['dFechaRequerido']:= Date;
    anexo_requisicion.FieldValues['sLugarEntrega'] := '1';
    anexo_requisicion.FieldValues['sNumeroOrden']  :=  AnteriorArray[10];
    anexo_requisicion.FieldValues['sNumeroOrdenCentroC']  := zCentroCosto.FieldByName('sNumeroOrden').AsString;
    //cxFirma2.DataBinding.DataSource.DataSet.FieldByName('IdFirma').AsInteger := zFirma.FieldByName('idFirma').AsInteger;

    //anexo_requisicion.FieldValues['IdPlanta']           := AnteriorArray[1];
    anexo_requisicion.FieldValues['sSolicito']          := global_nombre;

    anexo_requisicion.FieldValues['sLugarEntrega']      := AnteriorArray[4];
    anexo_requisicion.FieldValues['sPuntoCarga']        := AnteriorArray[5];
    anexo_requisicion.FieldValues['TelefonoRequisitor'] := AnteriorArray[6];
    anexo_requisicion.FieldValues['TelefonoSAPSolicitante'] := AnteriorArray[7];

    cbRecurso.DataBinding.DataSource.DataSet.FieldByName('IdTipoRecurso').AsInteger := 1;
    cxPlanta.DataBinding.DataSource.DataSet.FieldByName('IdPlanta').AsInteger := 0;

    zApruebaRequisicion.Locate('IdAutorizador', StrToInt(AnteriorArray[8]),[]);
    cxManagerAprobador.DataBinding.DataSource.DataSet.FieldByName('IdAutorizaManager').AsInteger  := zApruebaRequisicion.FieldByName('IdAutorizador').AsInteger;

    cxSAPRelease.DataBinding.DataSource.DataSet.FieldByName('IdSAPSolicitante').AsInteger := 8;

    zApruebaQA.Locate('IdAutorizador', StrToInt(AnteriorArray[9]),[]);
    cxQAprobador.DataBinding.DataSource.DataSet.FieldByName('IdAutorizaQA').AsInteger := zApruebaQA.FieldByName('IdAutorizador').AsInteger;

    connection.uUsuario.Locate('sIdUsuario',global_usuario,[]);
    anexo_requisicion.FieldValues['TelefonoRequisitor'] := connection.uUsuario.FieldByName('Telefono').AsString;

    anexo_requisicion.FieldValues['Revision']  := 0;

    cxOrdenTrabajo.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrdenOT').AsString := uOrdenesTrabajo.FieldByName('sNumeroOrden').AsString;

    zApruebaRequisicion.Locate('NombreCompleto',cxSAPRelease.Text,[]);
    anexo_requisicion.FieldValues['TelefonoSAPSolicitante'] := zApruebaRequisicion.FieldByName('NumeroPersonal').AsString;
    tsNumeroOrden.DataBinding.DataSource.DataSet.FieldByName('sContratoOT').AsString:=Qordenes_trabajo.FieldByName('sNumeroOrden').AsString;
    anexo_requisicion.FieldByName('mComentarios').AsString:=uOrdenesTrabajo.FieldByName('mComentarios').AsString +' para el día '+DateToStr(anexo_requisicion.FieldByName('dFechaRequerido').AsDateTime)+#13+#13+
                                                            zNotasGenerales.FieldByName('NotasGenerales').AsString;

    if cbRecurso.Enabled = True then
       cbRecurso.SetFocus;
    cxQAprobador.Enabled:=False;
    cxQAprobador.EditValue:='';
    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;
end;

procedure TFrmRequisicionss7.btnCancelClick(Sender: TObject);
begin
  cxLeyenda.Caption:=titulo;
  Panel2.Visible:=False;
  cxSplitter1.Visible := False;
  frmBarraH11.btnActive;
  grid_requsicion.Enabled:=True;
  anexo_requisicion.Cancel;
end;

procedure TFrmRequisicionss7.btnDeleteClick(Sender: TObject);
begin
   if cxView_Requsicion.DataController.DataSource.DataSet.IsEmpty=false then
   begin
       if (anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') then
       begin
          If MessageDlg('Desea eliminar el Folio '+anexo_requisicion.FieldValues['sNumFolio']+'?. Se Eliminaran todos los Materiales!', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          Begin
              kardex_almacen('Elimina Requisicion  No. [' + anexo_requisicion.FieldValues['sNumFolio'] + ']', 'Otros Movimientos');

              With connection do
              Begin
                 try
                     zCommand.Sql.Clear ;
                     zcommand.SQL.Add('Delete from anexo_prequisicion where sContrato = :Contrato And iFolioRequisicion = :Folio') ;
                     zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                     zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                     zcommand.Params.ParamByName('Folio').DataType := ftString ;
                     zcommand.Params.ParamByName('Folio').value := anexo_requisicion.FieldValues['iFolioRequisicion'] ;
                     zcommand.ExecSQL() ;

                     zCommand.Sql.Clear ;
                     zcommand.SQL.Add('Delete from anexo_requisicion where sContrato = :Contrato And iFolioRequisicion = :Folio') ;
                     zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                     zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                     zcommand.Params.ParamByName('Folio').DataType := ftString ;
                     zcommand.Params.ParamByName('Folio').value := anexo_requisicion.FieldValues['iFolioRequisicion'] ;
                     zcommand.ExecSQL() ;
                     IsOpen := False;
                     anexo_requisicion.Refresh ;
                     anexo_prequisicion.Active:= False;
                     AsignarSQL(anexo_prequisicion,'anexo_prequisicion_upt',pUpdate);
                     FiltrarDataSet(anexo_prequisicion,'contrato,Folio',[global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString]);
                     anexo_prequisicion.Open;

                     IsOpen := True;
                 Except
                    on e : exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al eliminar registro', 0);
                    end;
                 End
              End
          End;
       end
       else
       begin
          messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
       end;
   end;
end;

procedure TFrmRequisicionss7.btnDetalleClick(Sender: TObject);
begin
  PanelDown.Visible :=False;
  if PanelDetalle.Visible then
   begin
       cxSplitterOpciones.Visible := False;
       PanelDetalle.Visible       := False;
   end
   else
   begin
       CargarCatalogos;
       PanelDetalle.Visible       := True;
       cxSplitterOpciones.Visible := True;
       llenarCampos();
   end;

end;

procedure TFrmRequisicionss7.btnEditClick(Sender: TObject);
begin
  if cxView_Requsicion.DataController.DataSource.DataSet.IsEmpty=false then
  begin
      try
          if (anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') or (anexo_requisicion.FieldValues['sStatus'] = 'VALIDADO')
          or (anexo_requisicion.FieldValues['sStatus'] = 'AUTORIZADO') or (anexo_requisicion.FieldValues['sStatus'] = 'LIBERADO') then
          begin
              If anexo_requisicion.RecordCount > 0 then
              Begin
                CargarCatalogos;

                anexo_requisicion.AfterScroll := nil;
                tsDepartamento.Enabled:=false;
                cxPlanta.Enabled:=false;
                cbRecurso.Enabled:=false;
                tsSolicitante.Enabled:=false;
                cxSAPRelease.Enabled:=false;
                tiFolio.Enabled:=false;
                tdidFecha.Enabled:=false;
                tdIdFecha2.Enabled:=false;
                tsNumeroOrden.Enabled:=false;
                cxOrdenTrabajo.Enabled:=false;
                cxUploadingPoint.Enabled:=false;
                tsLugarEntrega.Enabled:=false;
                cxProcurementSpecialist.Enabled:=false;
                cxPreferredSupplier.Enabled:=false;
                tmComentarios.Enabled:=false;
                cxManagerAprobador.Enabled:=false;
                cxQAprobador.Enabled:=false;
                dxDBToggleSwitch1.Enabled:=false;
                if (global_grupo='CALIDAD') then
                begin
                   tmComentarios.Enabled:=true;
                   cxQAprobador.Enabled:=true;
                end
                else
                if(global_grupo='CENTRO_COSTO') then
                cxPlanta.Enabled:=true
                else
                if(global_grupo='LIDER_MR') then  begin
                tmComentarios.Enabled:=true;
                tiFolio.Enabled:=true;
                tdIdFecha2.Enabled:=true;
                dxDBToggleSwitch1.Enabled:=true;
                end
                else
                if(anexo_requisicion.FieldByName('sIdUsuario').AsString=global_usuario) or ((anexo_requisicion.FieldByName('sIdUsuario').AsString=global_usuario) and (global_grupo='LIDER_AVANZADO')) then begin
                tsDepartamento.Enabled:=true;
                cxPlanta.Enabled:=False;
                cbRecurso.Enabled:=true;
                tsSolicitante.Enabled:=true;
                cxSAPRelease.Enabled:=true;
                tiFolio.Enabled:=true;
                //Se bloquea para que no puedan editar la fecha de requisicion 19-06-2019
                tdidFecha.Enabled:=False;
                tdIdFecha2.Enabled:=true;
                tsNumeroOrden.Enabled:=true;
                cxOrdenTrabajo.Enabled:=true;
                cxUploadingPoint.Enabled:=true;
                tsLugarEntrega.Enabled:=true;
                cxProcurementSpecialist.Enabled:=true;
                cxPreferredSupplier.Enabled:=true;
                tmComentarios.Enabled:=true;
                cxManagerAprobador.Enabled:=true;
                cxQAprobador.Enabled:=False;
                dxDBToggleSwitch1.Enabled:=true;
                end
                else
                if(global_grupo='LIDER_AVANZADO') and (anexo_requisicion.FieldByName('sIdUsuario').AsString<>global_usuario) then  begin
                cxProyecto.Enabled:=true;
                cxPlanta.Enabled:=true;
                dxDBToggleSwitch3.Enabled:=true;
                tiFolio.Enabled:=true;
                cxLogistica.Enabled:=true;
                end;
                anexo_requisicion.Edit;
                cxLeyenda.Caption:=titulo+'[Editando]';
                frmBarraH11.btnEditClick(Sender);
                Panel2.Visible:=True;
                cxSplitter1.Visible := False;
                grid_requsicion.Enabled:=False;
                cxSplitterOpciones.Visible := False;
                PanelDetalle.Visible       := False;
              End;
          end
          else
          if (global_grupo='CALIDAD') or (global_grupo='CENTRO_COSTO') or (global_grupo='COMPRAS') then
          messageDLG('No puede editar la Requisicion. ', mtInformation, [mbOk],0)
          else
          begin
             messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
          end;
      except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Requisicion de Materiales', 'Al editar registro', 0);
        end;
      end;
  end;

end;


procedure TFrmRequisicionss7.btnEnviar5Click(Sender: TObject);
var
   DirPDF : string;
begin

    if (anexo_requisicion.FieldByName('Recurso').AsString = 'Servicio') and (anexo_requisicion.FieldByName('sStatus').AsString = 'GENERO PR') AND (anexo_requisicion.FieldByName('Rev').AsInteger >0) then
    begin
      if not MostrarFormChild('FrmComentarios',global_dxBarManagerPrincipal) Then
      begin
        global_frmActivo := 'SERVICIO_REQ' ;
        Application.CreateForm(TFrmComentarios, FrmComentarios);
        FrmComentarios.show;
      end;
    end
    else
    begin
      frmValida_ss7.ImprimeDatosPrepare('frxDBRequisicion', False, anexo_requisicion);

      connection.ExportaPDF.ShowProgress := False;
      connection.ExportaPDF.ShowDialog   := False;
      connection.ExportaPDF.FileName := anexo_requisicion.FieldByName('sNumFolio').AsString + '.pdf';
      DirPDF := anexo_requisicion.FieldByName('sNumFolio').asString+'.pdf';
      frxEntrada.Export(connection.ExportaPDF);
      frmValida_ss7.DisplayMail(ExtractFilePath(Application.ExeName)+anexo_requisicion.FieldByName('sNumFolio').AsString + '.pdf');
      if fileexists(DirPDF) then
       DeleteFile(DirPDF);
    end;

end;

procedure TFrmRequisicionss7.EnviaCorreoAvanzado(sParamModulo: string; sParamProceso: string; sParamTipoMaterial: string; sParamComentario : string; sParamEstatus: string; sParamFoldiosDoctos : string);
var
   x: integer;
   cadena, cad, asunto, mnj, sAdjunto, msg, partidas :string;
begin

//    if zCorreo.Active then
//        zCorreo.Refresh ;


//    zCorreo.Open;

    zMensaje.Active:=False;
    AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
    FiltrarDataSet(zMensaje,'Clasificacion',['REQUISICION']);
    zMensaje.Open;

    zDestino.Active:=False;
    AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
    FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
    zDestino.Open;

    zDestino.Filtered := False;
    zDestino.Filter   := ' Page ='+QuotedStr('SERVICIO');
    zDestino.Filtered := True;

    x:= 0;
    zDestino.First;
    while not zDestino.Eof do
    begin
      if x=0 then
        cadena:='"'+zDestino.FieldByName('Mail').AsString+'"'
      else
      begin
        if cad='' then
          cadena:='"'+zDestino.FieldByName('Mail').AsString+'"'+','+ cadena ;
      end;
      Inc(x);
      zDestino.Next;
    end;

    connection.zUCommand.Active := False;
    connection.zUCommand.SQL.Clear;
    AsignarSQL(connection.zUCommand, 'TotalExist_prequisicion_serv', pUpdate);
    FiltrarDataSet(connection.zUCommand, 'FolioReq', [cxView_Requsicion.DataController.DataSet.FieldByName('iFolioRequisicion').AsString]);
    connection.zUCommand.Open;

    connection.zUCommand.First;
    while not connection.zUCommand.Eof do
    begin
       if connection.zUCommand.FieldByName('servReciente').AsString = 'SI' then
       partidas :=  connection.zUCommand.FieldByName('Codigo').AsString+' '+ connection.zUCommand.FieldByName('mDescripcion').AsString+'. '+connection.zUCommand.FieldByName('sObservacion').AsString+';  '+partidas;
       connection.zUCommand.Next;
    end;

   asunto := zMensaje.FieldByName('AsuntoServicio').AsString;
   mnj := zMensaje.FieldByName('MensajeServicio').AsString + ' No. ' +anexo_requisicion.FieldByName('sNumFolio').AsString+'.  '
   +' Comentario MR: '+ anexo_requisicion.FieldByName('ComentarioStatus').AsString+'.  '
   + 'Partidas modificadas: ' + partidas+ '.  Motivo de Cambios: '+sParamComentario+'.';

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
        end;

        messageDlg('Estado de envío: '+msg, mtInformation, [mbOk],0);
end;

procedure TFrmRequisicionss7.btnImpInformeClick(Sender: TObject);
var
  requisicionesGrid : String;
   contReqGrid, j : Integer;
begin
  if opcionImprimir.EditValue = 1 then
  begin
    IsOpen:=False;
    generar_reporte_grid(cxView_Requsicion,'Reporte de Requisiciones');
    IsOpen:=True;
  end  else if opcionImprimir.EditValue = 2 then
  begin
    cxView_Requsicion.DataController.Groups.FullExpand;
    contReqGrid := cxView_Requsicion.ViewData.RecordCount;
    for j := 0 to (contReqGrid - 1) do
    begin
      try
        requisicionesGrid := requisicionesGrid + cxView_Requsicion.ViewData.Rows[j].Values[0] +',';
      except
        ;
      end;
    end;

    zReporteDetalle.Active := False;
    AsignarSQL(zReporteDetalle,'reporte_detalles_requisicion',pUpdate);
    FiltrarDataSet(zReporteDetalle,'Contrato, ListaRequisiciones',[global_contrato,requisicionesGrid]);
    zReporteDetalle.Open;

    IsOpen:=False;
    generar_reporte_grid_detalles(cxView_Requsicion,zReporteDetalle,'Reporte de Requisiciones con Detalles', 'sNumFolio');
    IsOpen:=True;
  end;
end;

procedure TFrmRequisicionss7.btnLimpiarFClick(Sender: TObject);
begin
   cxInicioRequerido.Date := StrToDate('01'+copy(DateToStr(date),3,10));
   cxFinRequerido.Date    := date;

   if global_grupo = 'CALIDAD' then
   begin
      sEstatus1 := 'AUTORIZADO';
      sEstatus2 := 'AUTORIZADO';
      sUsuario := '-1';
   end
   else
   if global_grupo = 'CENTRO_COSTO' then
   begin
      sEstatus1 := 'LIBERADO';
      sEstatus2 := 'LIBERADO';
      sUsuario := '-1';
   end
   else
   if global_grupo = 'COMPRAS' then
   begin
      sEstatus1 := 'ASIGNADO';
      sEstatus2 := 'GENERO PR';
      sUsuario := '-1';
   end
   else
   begin
      sEstatus1 := '-1';
      sEstatus2 := '-1';
      sUsuario := global_usuario;
   end;

   AsignarSQL(anexo_requisicion,'anexo_requisicion',pUpdate);
   FiltrarDataSet(anexo_requisicion,'contrato,IdDepartamento,Usuario,FechaI,FechaF,Estatus1,Estatus2',
   [global_contrato, -1,sUsuario,FechaSQL(cxInicioRequerido.Date),FechaSQL(cxFinRequerido.Date),sEstatus1,sEstatus2]) ;
   anexo_requisicion.Open;

   cxView_Requsicion.DataController.Filter.FilterText := '';
   cxView_Requsicion.DataController.Filter.Clear;
   anexo_requisicion.Filtered := False;

   cxInicioRequerido.Style.Font.Color := clNone;
   cxInicioRequerido.Style.Font.Style := [];
   cxFinRequerido.Style.Font.Color := clNone;
   cxFinRequerido.Style.Font.Style := [];
   cxTodosUsuarios.Style.Font.Color := clNone;
   cxTodosUsuarios.Style.Font.Style := [];
   cxTodosEstatus.Style.Font.Color := clNone;
   cxTodosEstatus.Style.Font.Style := [];

   cxTodosUsuarios.Checked := False;
   cxTodosEstatus.Checked  := False;
end;


procedure TFrmRequisicionss7.btnPermanentesClick(Sender: TObject);
Var
  CadError, OrdenVigencia: String;
  zExporta : TUniQuery;
//////////////////////////////////// PLANTILAS DE IMPORTACION /////////////////////////////////////
Function GenerarPlantilla: Boolean;
Var
  Resultado: Boolean;
    Procedure DatosPlantilla;
    Var
      CadFecha, tmpNombre, cadena, sColIDName, sId : String;
      fs: tStream;
      i,x,n : integer;
    Begin
      // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;

      {$REGION 'PLANTILLA MR SAP'}

            ///
            Excel.Columns['A:A'].ColumnWidth := 12.5;
            Excel.Columns['B:B'].ColumnWidth := 13.5;
            Excel.Columns['C:C'].ColumnWidth := 10.5;
            Excel.Columns['D:D'].ColumnWidth := 54;
            Excel.Columns['E:E'].ColumnWidth := 11.3;
            Excel.Columns['F:F'].ColumnWidth := 12.5;
            Excel.Columns['G:G'].ColumnWidth := 12.5;
            Excel.Columns['H:H'].ColumnWidth := 12.5;
            Excel.Columns['I:I'].ColumnWidth := 12.5;
            Excel.Columns['J:J'].ColumnWidth := 13.29;
            Excel.Columns['K:K'].ColumnWidth := 30;
            Excel.Columns['L:L'].ColumnWidth := 40.0;
            Excel.Columns['M:M'].ColumnWidth := 10.5;



            // Encabezado principal
            Excel.Range['A1:C1'].Select;
            Excel.Selection.MergeCells := True ;
            Excel.Selection.Value := '  ';

            Excel.Range['D1:D1'].Select;
            Excel.Selection.MergeCells := True ;
            Excel.Selection.Value := zExporta.RecordCount;

            Excel.Range['E1:K1'].Select;
            Excel.Selection.MergeCells := True ;
            Excel.Selection.Value := 'SUBSEA 7 MEXICO, S. DE R.L. DE C.V. STATUS DE REQUISICIONES DE MANTENIMIENTO'+
                                     '“Mantenimiento a Instalaciones costa fuera de la región marina No. Contrato:  648236801';
            Excel.Range['E1:K1'].Font.Color := clWhite;

            Excel.Range['L1:M1'].Select;
            Excel.Selection.MergeCells := True ;
            Excel.Selection.Value := ' ';

            //Texto Columnas en blanco
            Excel.Cells[2,1].Select;
            Excel.Selection.Value := 'No. REQUISICION';
            Excel.Cells[2,2].Select;
            Excel.Selection.Value := 'No. TRAZABILIDAD';
            Excel.Cells[2,3].Select;
            Excel.Selection.Value := 'CODIGO';
            Excel.Cells[2,4].Select;
            Excel.Selection.Value := 'DESCRIPCION DEL MATERIAL';
            Excel.Cells[2,5].Select;
            Excel.Selection.Value := 'U.M';
            Excel.Cells[2,6].Select;
            Excel.Selection.Value := 'CANTIDAD SOLICITADA';
            Excel.Cells[2,7].Select;
            Excel.Selection.Value := 'CANTIDAD RECIBIDA';
            Excel.Cells[2,8].Select;
            Excel.Selection.Value := 'CANTIDAD PENDIENTE DE SUMINISTRO';
            Excel.Cells[2,9].Select;
            Excel.Selection.Value := 'FECHA DE RECEPCION';
            Excel.Cells[2,10].Select;
            Excel.Selection.Value := 'ORDEN DE COMPRA';
            Excel.Cells[2,11].Select;
            Excel.Selection.Value := 'PROVEEDOR';
            Excel.Cells[2,12].Select;
            Excel.Selection.Value := 'PARA SER UTILIZADO EN';
            Excel.Cells[2,13].Select;
            Excel.Selection.Value := 'STATUS';

            i:=3;
            x:=1;
            zExporta.First;
            while not zExporta.Eof do
            begin
              Excel.Cells[i, 1].Select;
              Excel.Selection.Value := zExporta.FieldByName('sNumFolio').AsString;

              Excel.Cells[i, 2].Select;
              Excel.Selection.Value := zExporta.FieldByName('OsIdInsumo').AsString;

              Excel.Cells[i, 3].Select;
              Excel.Selection.Value := zExporta.FieldByName('Codigo').AsString;

              Excel.Cells[i, 4].Select;
              Excel.Selection.Value := zExporta.FieldByName('mDescripcion').AsString;

              Excel.Cells[i, 5].Select;
              Excel.Selection.Value := zExporta.FieldByName('sMedida').AsString;

              Excel.Cells[i, 6].Select;
              Excel.Selection.NumberFormat := '#,##0.00';
              Excel.Selection.Value := zExporta.FieldByName('CantidadCompra').AsFloat;

              Excel.Cells[i, 7].Select;
              Excel.Selection.NumberFormat := '#,##0.00';
              Excel.Selection.Value := zExporta.FieldByName('Recibido').AsFloat;

              Excel.Cells[i, 8].Select;
              Excel.Selection.NumberFormat := '#,##0.00';
              Excel.Selection.Value := zExporta.FieldByName('Pendiente').AsFloat;

              Excel.Cells[i, 9].select;
              Excel.Selection.NumberFormat := 'd-m-aaaa';
              if zExporta.FieldByName('FechaEntrega').IsNull then
                 Excel.Selection.Value:=''
              else
                Excel.Selection.Value :=zExporta.FieldByName('FechaEntrega').AsDateTime;

              Excel.Cells[i, 10].Select;
              Excel.Selection.Value := zExporta.FieldByName('OC').AsString;

              Excel.Cells[i, 11].Select;
              Excel.Selection.Value := zExporta.FieldByName('Proveedor').AsString;

              Excel.Cells[i, 12].Select;
              Excel.Selection.Value := zExporta.FieldByName('Comentarios').AsString;

              Excel.Cells[i, 13].Select;
              Excel.Selection.Value := zExporta.FieldByName('sStatus').AsString;

              zExporta.Next;

              //  para crear las líneas de los bordes
              Excel.Range['A'+IntToStr(i)+':M'+IntToStr(i)].Select;
              Excel.Range['A'+IntToStr(i),'A'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
              Excel.Range['B'+IntToStr(i),'B'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
              Excel.Range['C'+IntToStr(i),'C'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
              Excel.Range['D'+IntToStr(i),'D'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
              Excel.Range['E'+IntToStr(i),'E'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
              Excel.Range['F'+IntToStr(i),'F'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
              Excel.Range['G'+IntToStr(i),'G'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
              Excel.Range['H'+IntToStr(i),'H'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
              Excel.Range['I'+IntToStr(i),'I'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
              Excel.Range['J'+IntToStr(i),'J'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
              Excel.Range['K'+IntToStr(i),'K'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
              Excel.Range['L'+IntToStr(i),'L'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);
              Excel.Range['M'+IntToStr(i),'M'+IntToStr(i)].BorderAround(xlContinuous,xlTransparent,xlAutomatic,EmptyParam);

              Excel.Selection.WrapText := False;
              inc(i);
              inc(x);
            end;

            // Fila principal color azul
            Excel.Rows['1:1'].RowHeight := 70;
            Excel.Range['A1:M1'].Select;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Interior.Color      := $00DBA98E;
            Excel.Selection.Font.Name := 'Verdana';
            Excel.Selection.Font.Size := 13;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.WrapText := True;
            Excel.Selection.Borders[xlEdgeTop].LineStyle:= 1;
            Excel.Selection.Borders[xlEdgeTop].Weight:= 2;
            Excel.Selection.Borders[xlEdgeBottom].LineStyle:= 1;
            Excel.Selection.Borders[xlEdgeBottom].Weight:= 2;

            //Color y Merge de las columnas en blanco
            Excel.Rows['2:2'].RowHeight := 50.75;
            Excel.Range['A2:M2'].Select;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Interior.Color      := clWhite;
            Excel.Selection.Font.Name := 'Calibri';
            Excel.Selection.Font.Size := 11;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.WrapText := True;
            Excel.Selection.Borders[xlEdgeTop].LineStyle:= 1;
            Excel.Selection.Borders[xlEdgeTop].Weight:= 2;
            Excel.Selection.Borders[xlEdgeBottom].LineStyle:= 1;
            Excel.Selection.Borders[xlEdgeBottom].Weight:= 2;

            //Formato a las filas de información
            Excel.Range['A3:M'+IntToStr(i)].Select;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Interior.Color := $00CCFFFF;
            Excel.Selection.Font.Size := 10;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Calibri';
            Excel.Selection.WrapText := True;

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
        Hoja.Name := 'Estatus Permanentes';


        {$ENDREGION}
        DatosPlantilla;
        Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
        Excel.DisplayAlerts := True;
      Except
        on e:exception do
        Begin
          Resultado := False;
          CadError := 'Se ha producido el siguiente error al generar el Archivo de Excel Exportar Permanentes' + #10 + #10 + e.Message;
          Excel.DisplayAlerts := True;
        End;
      End;


      Result := Resultado;

    end;

begin
  zExporta:=tUniquery.create(nil);
  zExporta.Connection := Connection.uConnection;

//  AsignarSQL(zExporta, 'estatus_permanentes', pUpdate);
//  FiltrarDataSet(zExporta, 'Contrato, Folio, Tipo, FechaI, FechaF',
//  [global_contrato, -1, -1, FechaSQL(cxInicioRequerido.Date), FechaSQL(cxFinRequerido.Date)]);
//  zExporta.Open;

  AsignarSQL(zExporta, 'estatus_permanentes', pUpdate);
  FiltrarDataSet(zExporta, 'Contrato, FechaI, FechaF',
  [global_contrato,  FechaSQL(cxInicioRequerido.Date), FechaSQL(cxFinRequerido.Date)]);
  zExporta.Open;

  // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
  If Not SaveDialog1.Execute Then
    Exit;

  // Generar el ambiente de excel
  try
    Excel := CreateOleObject('Excel.Application');
  except
       on e : exception do begin
           FreeAndNil(Excel);
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Exportación de Requisición con Estatus Permanente', 'Al importar datos', 0);
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
    tsarchivo.Text:='Formato SAP';
end;

procedure TFrmRequisicionss7.btnPostClick(Sender: TObject);
var nombres, cadenas : TStringList;
begin
    if tmComentarios.Text ='' then
         tmComentarios.Text := 'S/C' ;

    nombres:=TStringList.Create;
    cadenas:=TStringList.Create;
    nombres.Add('Goods Recipient');
    nombres.Add('Contrato');
    nombres.Add('Departamento');
    nombres.Add('solicitante');
    nombres.Add('Notas Generales');
    nombres.Add('Proyecto');
    cadenas.Add(tsLugarentrega.Text);
    cadenas.Add(tsnumeroorden.Text);
    cadenas.Add(tsdepartamento.Text);
    cadenas.Add(tssolicitante.Text);
    cadenas.Add(tmComentarios.Text);
    cadenas.Add(cxProyecto.Text);
    if not validaTexto(nombres, cadenas,'','') then
    begin
        MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
        exit;
    end;

    if tdIdFecha2.Date < tdIdFecha.Date then
    begin
        messageDLG('La Fecha de entrega es menor a la Fecha de Requisición', mtInformation, [mbOk],0);
        exit;
    end;

    if anexo_requisicion.State = dsInsert then
    begin
        try
             //tsDepartamentoExit(sender);
             //cxProyectoExit(sender);

              anexo_requisicion.FieldValues['dIdFecha']         := anexo_requisicion.FieldValues['dFechaSolicitado'];
              anexo_requisicion.FieldValues['sStatus']          := 'PENDIENTE';
              anexo_requisicion.FieldByName('Revision').AsInteger := 0;
              if cbRecurso.EditText = 'Servicio' then
                  anexo_requisicion.FieldValues['TipoMR']       := 'SERVICIO'
              else
                  anexo_requisicion.FieldValues['TipoMR']       := 'OTRAS';
              anexo_requisicion.Post ;

              kardex_almacen('Crea Requisicion  No. [' + anexo_requisicion.FieldValues['sNumFolio'] + ']', 'Otros Movimientos');
              if global_frmActivo = 'requisitaXcotizacion' then
                requisitaXcotizacion(anexo_requisicion.FieldByName('sNumFolio').AsString);


              anexo_requisicion.Filtered := False;
              anexo_requisicion.Filter   := ' iFolioRequisicion = '+ QuotedStr(IntToStr(anexo_requisicion.LastInsertId));
              anexo_requisicion.Filtered := True;

              anexo_requisicion.Refresh ;
        Except
           on e : exception do
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al salvar registro', 0);
        end;
    end;
    if anexo_requisicion.State = dsEdit then
    begin
         try
                  anexo_requisicion.FieldValues['dIdFecha']  := anexo_requisicion.FieldValues['dFechaSolicitado'];
                  anexo_requisicion.Post;

                  kardex_almacen('Modifica Requisicion  No. [' + anexo_requisicion.FieldValues['sNumFolio'] + ']', 'Otros Movimientos');

                  anexo_requisicion.Refresh ;
         except
            on e : exception do
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al salvar registro', 0);

         end;
    end;

  cxLeyenda.Caption:=titulo;
  btnCancelClick(sender);
  grid_requsicion.Enabled:=True;
end;

procedure TFrmRequisicionss7.requisitaXcotizacion(requisicion: string);
var
  uAux :TUniQuery;
  uAux2:TuniQuery;
begin
  //metodo para agregar en automático los materiales de la cotizacion seleccionada
  uAux2:=TUniQuery.Create(nil);
  uAux2.Connection:=Connection.Uconnection;
  uAux2.SQL.Clear;
  uAux2.SQL.Text:='SELECT * from anexo_requisicion WHERE sNumFolio = '+QuotedStr(requisicion);
  uAux2.Open;
  uAux:=TUniQuery.Create(nil);
  uAux.Connection:=connection.Uconnection;
  uAux.SQL.Clear;
  uAux.SQL.Text:='INSERT INTO anexo_prequisicion (sContrato,iFolioRequisicion,IdInsumo,IdOrdenCompra,mDescripcion,'+
      'IdMedida,dFechaRequerimiento,dCantidad,dCosto,sNumeroActividad,sWbs,sNumeroOrden,iPeriodo,IdTipoRecurso) '+
      'SELECT :Contrato,:Requisicion,p.IdRecurso,0,p.Descripcion,p.IdMedida,:FechaR,p.Cantidad,0.00,:NA,:WB,:Orden,:Periodo,p.IdTipoRecurso '+
      'FROM op_cotizacion_presupuesto cp '+
      'INNER JOIN op_cotizacion_presupuesto_detalle cpd ON (cp.IdCotizacion = cpd.IdCotizacion) '+
      'INNER JOIN op_presupuesto_detalle p ON (p.IdPresupuestoDetalle = cpd.IdPresupuestoDetalle) '+
      'WHERE cp.IdCotizacion = :Cotizacion';
  uAux.ParamByName('Contrato').AsString:=uAux2.FieldByName('sContrato').AsString;
  uAux.ParamByName('Requisicion').AsInteger:=uAux2.FieldByName('iFolioRequisicion').AsInteger;
  uAux.ParamByName('FechaR').AsDateTime:=uAux2.FieldByName('dFechaSolicitado').AsDateTime;
  uAux.ParamByName('NA').AsString:='S/N';
  uAux.ParamByName('WB').AsString:='';
  uAux.ParamByName('Orden').AsString:=uAux2.FieldByName('sNumeroOrden').AsString;
  uAux.ParamByName('Periodo').AsInteger:=connection.uconfiguracion.FieldByName('iEjercicio').AsInteger;
  uAux.ParamByName('Cotizacion').AsInteger:=frmCotizacionesP.uCotizacion.FieldByName('IdCotizacion').asInteger;
  uAux.ExecSQL;

end;


procedure TFrmRequisicionss7.btnPrinterClick(Sender: TObject);
begin
  if (cxView_Requsicion.DataController.DataSource.DataSet.IsEmpty) or (cxView_Requsicion.DataController.DataSource.DataSet.RecordCount<=0) then
       exit;

    if anexo_requisicion.FieldByName('Recurso').AsString = 'Servicio' then
    begin
      connection.zUCommand.Active := False;
      AsignarSQL(connection.zUCommand, 'existe_accesorio', pUpdate);
      FiltrarDataSet(connection.zUCommand, 'sIdEquipo, EquipoDetalle, FolioReq, ReqDetalle',
      [-1, -1, cxView_Requsicion.DataController.DataSet.FieldByName('iFolioRequisicion').AsString, -1]);
      connection.zUCommand.Open;

      //Aqui está consultando todos los materiales de todas las revisiones
      AsignarSQL(Reporte,'reporte_servicio',pUpdate);
      FiltrarDataSet(Reporte,'Contrato,Folio',[global_contrato,anexo_requisicion.FieldValues['sNumFolio']]);
      Reporte.Open;

      AsignarSQL(zReporteDetalle,'reporte_servicio_accesorio',pUpdate);
      FiltrarDataSet(zReporteDetalle,'Folio',[anexo_requisicion.FieldValues['iFolioRequisicion']]);
      zReporteDetalle.Open;

      frxDBRequisicion.DataSet    := Reporte;
      frxDBRequisicion.FieldAliases.Clear;
      frxEntrada.DataSets.Add(frxDBRequisicion);

      frxRequisicion_detalle.DataSet  := zReporteDetalle;
      frxRequisicion_detalle.FieldAliases.Clear;
      frxEntrada.DataSets.Add(frxRequisicion_detalle);

    end
    else
    begin
      AsignarSQL(Reporte,'Reporte_requisicion',pUpdate);
      FiltrarDataSet(Reporte,'Contrato,Folio',[global_contrato,anexo_requisicion.FieldValues['iFolioRequisicion']]);
      Reporte.Open;

      frxDBRequisicion.DataSet    := Reporte;
      frxDBRequisicion.FieldAliases.Clear;
      frxEntrada.DataSets.Add(frxDBRequisicion);
    end;

    frxEntrada.PreviewOptions.MDIChild := False;
    frxEntrada.PreviewOptions.Modal := True;
    frxEntrada.PreviewOptions.ShowCaptions := False;
    frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

    if (anexo_requisicion.FieldByName('Recurso').AsString = 'Servicio') then
    begin
      if (connection.zUCommand.RecordCount = 0)  then
      begin
       frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_MRServicio_NotAccesorio.fr3') ;
       if not FileExists(global_files + global_miReporte + '_ALM_MRServicio_NotAccesorio.fr3') then
         showmessage('El archivo de reporte '+global_miReporte+'_ALM_MRServicio_NotAccesorio.fr3 no existe, notifique al administrador del sistema');
      end
      else
      begin
       frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_Requisicion_Servicio.fr3') ;

       if not FileExists(global_files + global_miReporte + '_ALM_Requisicion_Servicio.fr3') then
         showmessage('El archivo de reporte '+global_miReporte+'_ALM_Requisicion_Servicio.fr3 no existe, notifique al administrador del sistema');
      end
    end
    else
    begin
      if connection.uContrato.FieldByName('FK_Titulo').AsString ='TYPHOON' then
      begin
        frxEntrada.LoadFromFile (global_files +global_miReporte+'_ALM_Requisicion.fr3') ;
        if not FileExists(global_files + global_miReporte + '_ALM_Requisicion.fr3') then
         showmessage('El archivo de reporte '+global_miReporte+'_ALM_Requisicion.fr3 no existe, notifique al administrador del sistema');
      end
      else
      begin
        frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_Requisicion.fr3') ;
        if not FileExists(global_files + global_miReporte + '_ALM_Requisicion.fr3') then
         showmessage('El archivo de reporte '+global_miReporte+'_ALM_Requisicion.fr3 no existe, notifique al administrador del sistema');
      end;
    end;


    frxPDFExport1.FileName := Reporte.FieldByName('sNumFolio').AsString;
    frxentrada.ShowReport;

end;

procedure TFrmRequisicionss7.btnRefreshClick(Sender: TObject);
begin
    anexo_requisicion.Refresh;
    zDepartamento.Refresh;
    Qordenes_trabajo.Refresh;
    zCentroCosto.Refresh;
    zFirma.Refresh;
end;

procedure TFrmRequisicionss7.btnRevisiónClick(Sender: TObject);
var
  zRegistroReq, zPreq, zRegisPreq, zElimina : TUniquery;
   id : Integer;
begin
 if (anexo_requisicion.FieldByName('sStatus').AsString = 'GENERO PR') then
 begin
   zRegistroReq:=tUniquery.create(nil);
   zRegistroReq.Connection := Connection.uConnection;

   AsignarSQL(zRegistroReq, 'anexo_requisicion_max', pUpdate) ;
   FiltrarDataSet(zRegistroReq, 'Folio', [cxView_Requsicion.DataController.DataSet.FieldByName('sNumFolio').AsString]);
   zRegistroReq.Open;

   if  cxView_Requsicion.DataController.DataSet.FieldByName('Revision').AsInteger < zRegistroReq.FieldByName('Revision').AsInteger then
    begin
         ShowMessage('Incorrecto. Genere desde la última Revisión');
         exit;
    end;

    zElimina:=tUniquery.create(nil);
    zElimina.Connection := Connection.uConnection;

    zRegistroReq.Active := False;
    zRegistroReq.SQL.Clear;
    AsignarSQL(zRegistroReq, 'inserta_requisicion', pUpdate);
    FiltrarDataSet(zRegistroReq, 'Contrato,Folio,ContratoOt,Proyecto,CentroCosto,OrdenOT,dIdFecha,FechaSolicitado,' +
    'FechaRequerido,FechaVigencia,Requisita,Solicita,sStatus,Comentarios,Prioridad,Departamento,Recurso,Firma,PuntoCarga,' +
    'TelefonoReq,SAPSolicitante,TelSAPSolicita,Planta, ProcurementS,PreferredS,AutorizaM,AutorizaQA,LugarEntrega,sIdUsuario, '+
    'UValido, FechaValido, UAutorizo, FechaAutorizo, URechazo, FechaRechazo,ComentStatus, '+
    'UCancelo, ULibero, FechaLibero, UAsignoCC,FechaAsignoCC, UGeneroPR, FechaGeneroPR, UCompro, FechaCompro, sUCompra,'+
    'AplicaLog,NotasLog,FechaCancelo, Vista, TipoMR,Revision',
    [Global_Contrato, cxView_Requsicion.DataController.DataSet.FieldByName('sNumFolio').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sContratoOT').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sNumeroOrden').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sNumeroOrdenCentroC').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sNumeroOrdenOT').AsString,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('dIdFecha').AsDateTime),
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('dFechaSolicitado').AsDateTime),
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('dFechaRequerido').AsDateTime),
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('dFechaVigencia').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('sRequisita').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sSolicito').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sStatus').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('mComentarios').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sPrioridad').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('IdDepartamento').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('IdTiporecurso').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('IdFirma').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sPuntoCarga').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('TelefonoRequisitor').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('IdSAPSolicitante').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('TelefonoSAPSolicitante').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('IdPlanta').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('ProcurementSpecialist').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('PreferredSupplier').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('IdAutorizaManager').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('IdAutorizaQA').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sLugarEntrega').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('sIdUsuario').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('UsuarioValido').AsString,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('FechaValido').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('UsuarioAutorizo').AsString,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('FechaAutorizo').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('UsuarioRechazo').AsString,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('FechaRechazo').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('ComentarioStatus').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('UsuarioCancelo').AsString ,
    cxView_Requsicion.DataController.DataSet.FieldByName('UsuarioLibero').AsString ,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('FechaLibero').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('UsuarioAsignoCC').AsString,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('FechaAsignoCC').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('UsuarioGeneroPR').AsString,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('FechaGeneroPR').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('UsuarioCompro').AsString,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('FechaCompro').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('sUsuarioCompra').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('AplicaLogistica').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('NotasLogistica').AsString,
    FechaTimeSQL(cxView_Requsicion.DataController.DataSet.FieldByName('FechaCancelo').AsDateTime),
    cxView_Requsicion.DataController.DataSet.FieldByName('Vista').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('TipoMR').AsString,
    cxView_Requsicion.DataController.DataSet.FieldByName('Revision').AsInteger+1]);
    zRegistroReq.Execute;

    zPreq:=tUniquery.create(nil);
    zPreq.Connection := Connection.uConnection;

    zRegisPreq:=tUniquery.create(nil);
    zRegisPreq.Connection := Connection.uConnection;

    zPreq.Active := False;
    zPreq.SQL.Clear;
    AsignarSQL(zPreq, 'TotalExist_prequisicion_serv', pUpdate);
    FiltrarDataSet(zPreq, 'FolioReq', [cxView_Requsicion.DataController.DataSet.FieldByName('iFolioRequisicion').AsString]);
    zPreq.Open;

    zRegistroReq.Active := False;
    zRegistroReq.SQL.Clear;
    AsignarSQL(zRegistroReq, 'anexo_requisicion_max', pUpdate);
    zRegistroReq.Open;

    zPreq.First;
    while not zPreq.Eof do
    begin
      zRegisPreq.Active := False;
      zRegisPreq.SQL.Clear;
      AsignarSQL(zRegisPreq, 'inserta_prequisicion_serv', pUpdate);
      FiltrarDataSet(zRegisPreq, 'sContrato, iFolioRequisicion, IdInsumo, '+
      'iItem, mDescripcion, IdMedida, dFechaRequerimiento, dCantidad, sObservacion, sEstado, '+
      'IdTipoRecurso, IdGrupo, sNumeroOrden_WorkOrder, NumeroMaterial, EspecificacionesQA, '+
      'EspecificacionesQAN,  Extraordinario, IncluyeCodigoMat, sIdEquipo, Revision',
      [global_contrato, zRegistroReq.FieldByName('iFolioRequisicion').AsString,
      zPreq.FieldByName('IdInsumo').AsString,
      zPreq.FieldByName('iItem').AsString,
      zPreq.FieldByName('mDescripcion').AsString,
      zPreq.FieldByName('IdMedida').AsString,
      FechaTimeSQL(zPreq.FieldByName('dFechaRequerimiento').AsDateTime),
      zPreq.FieldByName('dCantidad').AsString,
      zPreq.FieldByName('sObservacion').AsString,
      zPreq.FieldByName('sEstado').AsString,
      zPreq.FieldByName('IdTipoRecurso').AsString,
      zPreq.FieldByName('IdGrupo').AsString,
      zPreq.FieldByName('sNumeroOrden_WorkOrder').AsString,
      zPreq.FieldByName('NumeroMaterial').AsString,
      zPreq.FieldByName('EspecificacionesQA').AsString,
      zPreq.FieldByName('EspecificacionesQAN').AsString,
      zPreq.FieldByName('Extraordinario').AsString,
      zPreq.FieldByName('IncluyeCodigoMat').AsString,
      zPreq.FieldByName('sIdEquipo').AsString,
      cxView_Requsicion.DataController.DataSet.FieldByName('Revision').AsInteger + 1]);
      zRegisPreq.Execute;

      zPreq.Next;
    end;

    anexo_requisicion.Refresh;
    anexo_requisicion.Filtered := False;
    anexo_requisicion.Filter   := ' iFolioRequisicion = '+ QuotedStr(zRegistroReq.FieldByName('iFolioRequisicion').AsString);
    anexo_requisicion.Filtered := True;

 end
 else
 begin
   messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus']+#10+'Para crear un nueva revisión deberá estar en estatus: GENERO PR o ASIGNADO. ', mtInformation, [mbOk],0);
 end;

 zRegistroReq.Destroy;
 zRegisPreq.Destroy;
 zPreq.Destroy;
 zElimina.Destroy;
end;

procedure TFrmRequisicionss7.btnVisualizarClick(Sender: TObject);
begin
   if (cxView_Requsicion.DataController.DataSource.DataSet.IsEmpty) or (cxView_Requsicion.DataController.DataSource.DataSet.RecordCount<=0) then
       exit;

if anexo_requisicion.FieldByName('Recurso').AsString = 'Servicio' then
    begin
      connection.zUCommand.Active := False;
      AsignarSQL(connection.zUCommand, 'existe_accesorio', pUpdate);
      FiltrarDataSet(connection.zUCommand, 'sIdEquipo, EquipoDetalle, FolioReq, ReqDetalle',
      [-1, -1, cxView_Requsicion.DataController.DataSet.FieldByName('iFolioRequisicion').AsString, -1]);
      connection.zUCommand.Open;


      AsignarSQL(Reporte,'reporte_servicio',pUpdate);
      FiltrarDataSet(Reporte,'Contrato,Folio',[global_contrato,anexo_requisicion.FieldValues['sNumFolio']]);
      Reporte.Open;

      AsignarSQL(zReporteDetalle,'reporte_servicio_accesorio',pUpdate);
      FiltrarDataSet(zReporteDetalle,'Folio',[anexo_requisicion.FieldValues['iFolioRequisicion']]);
      zReporteDetalle.Open;

      frxDBRequisicion.DataSet    := Reporte;
      frxDBRequisicion.FieldAliases.Clear;
      frxEntrada.DataSets.Add(frxDBRequisicion);

      frxRequisicion_detalle.DataSet  := zReporteDetalle;
      frxRequisicion_detalle.FieldAliases.Clear;
      frxEntrada.DataSets.Add(frxRequisicion_detalle);

    end
    else
    begin
      AsignarSQL(Reporte,'Reporte_requisicion',pUpdate);
      FiltrarDataSet(Reporte,'Contrato,Folio',[global_contrato,anexo_requisicion.FieldValues['iFolioRequisicion']]);
      Reporte.Open;

      frxDBRequisicion.DataSet    := Reporte;
      frxDBRequisicion.FieldAliases.Clear;
      frxEntrada.DataSets.Add(frxDBRequisicion);
    end;


    frxEntrada.PreviewOptions.MDIChild := False;
    frxEntrada.PreviewOptions.Modal := True;
    frxEntrada.PreviewOptions.ShowCaptions := False;
    frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

    if (anexo_requisicion.FieldByName('Recurso').AsString = 'Servicio') then
    begin
      if connection.zUCommand.RecordCount = 0 then
      begin
       frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_MRServicio_NotAccesorioView.fr3') ;
       if not FileExists(global_files + global_miReporte + '_ALM_MRServicio_NotAccesorioView.fr3') then
         showmessage('El archivo de reporte '+global_miReporte+'_ALM_MRServicio_NotAccesorioView.fr3 no existe, notifique al administrador del sistema');
      end
      else
      begin
        frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_Requisicion_Servicio_View.fr3') ;

      if not FileExists(global_files + global_miReporte + '_ALM_Requisicion_Servicio_View.fr3') then
         showmessage('El archivo de reporte '+global_miReporte+'_ALM_Requisicion_Servicio_View.fr3 no existe, notifique al administrador del sistema');
      end;

    end
    else
    begin
      frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_RequisicionView.fr3') ;

      if not FileExists(global_files + global_miReporte + '_ALM_RequisicionView.fr3') then
         showmessage('El archivo de reporte '+global_miReporte+'_ALM_RequisicionView.fr3 no existe, notifique al administrador del sistema');

    end;
    frxPDFExport1.FileName := Reporte.FieldByName('sNumFolio').AsString;
    frxentrada.ShowReport;
end;




procedure TFrmRequisicionss7.ComentarMR1Click(Sender: TObject);
begin
  if(global_grupo='LIDER_AVANZADO') or (global_grupo = 'LIDER_MR') or (global_grupo = 'COMPRAS') then begin
     global_frmActivo:='CComentario';
     Application.CreateForm(TFrmComentarios, FrmComentarios);
     FrmComentarios.show;

  end;
end;

procedure TFrmRequisicionss7.CopiarGrupoMaterial1Click(Sender: TObject);
var
    indice, iGrid    : integer;
    lcontinua : boolean;
begin
     PegarGrupoMaterial1.Enabled := True;
     CopiarGrupoMaterial1.Enabled := False;
     CopiarQARequirement1.Enabled := False;
     IdGMaterialCopia := anexo_prequisicion.FieldByName('IdGrupo').AsInteger;
     lOpcionSelecciona := True;
     cxView_Materiales.OptionsSelection.MultiSelect := True;
end;

procedure TFrmRequisicionss7.CopiarQARequirement1Click(Sender: TObject);
var
    indice, iGrid    : integer;
    lcontinua : boolean;
begin
     PegarQARequirement1.Enabled := True;
     CopiarGrupoMaterial1.Enabled := False;
     CopiarQARequirement1.Enabled := False;
     MaterialCopia := anexo_prequisicion.FieldByName('EspecificacionesQA').AsString;
     lOpcionSelecciona := True;
     cxView_Materiales.OptionsSelection.MultiSelect := True;
end;


procedure TFrmRequisicionss7.cxCancelarDetalleClick(Sender: TObject);
begin
   anexo_prequisicion.Cancel;
   PanelDown.Visible := False;
   cxSplitMaterial.Visible := False;
   PanelMaterial.Visible := False;
end;

procedure TFrmRequisicionss7.cxEditaDetalleClick(Sender: TObject);
begin
    if (anexo_requisicion.FieldValues['sStatus'] <> 'COMPRADO') or
    ((anexo_requisicion.FieldValues['sStatus'] = 'GENERO PR') and (anexo_requisicion.FieldValues['Recurso'] = 'SERVICIO') and (anexo_requisicion.FieldValues['Revision'] > 0) )then
    begin
        If (anexo_prequisicion.RecordCount > 0 ) Then
        Begin
           if ((anexo_requisicion.FieldValues['sStatus'] = 'GENERO PR') and (anexo_requisicion.FieldValues['Recurso'] = 'SERVICIO') and (anexo_requisicion.FieldValues['Revision'] > 0))then
            anexo_prequisicion.FieldValues['ServReciente'] := 'SI' ;

            anexo_prequisicion.Edit;
//            if ((anexo_prequisicion.FieldByName('sObservacion').AsString = '')
//            or (anexo_prequisicion.FieldByName('sObservacion').AsString = null)) then
//            anexo_prequisicion.FieldByName('sObservacion').AsString:='*';
            MarcarOpcionesQA;
            cxSplitMaterial.Visible := True;
            PanelMaterial.Visible   := True;
            PanelDown.Visible       := True;

            VistaDetalleMR;

            cxGrupoMaterial.Enabled := True;
        end;
    end
    else
    begin
       messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
    end;
end;

procedure TFrmRequisicionss7.cxEliminarDetalleClick(Sender: TObject);
begin
    if (anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') or (anexo_requisicion.FieldValues['sStatus'] = 'VALIDADO') then
    begin
        If anexo_prequisicion.RecordCount > 0 Then
          If MessageDlg('Desea eliminar el material '+anexo_prequisicion.FieldValues['sIdInsumo']+' de esta Requisición?.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          Begin
            kardex_almacen('Elimina Partida con codigo [' + anexo_prequisicion.FieldValues['sIdInsumo'] + '] De la Requisicion No. ['+ anexo_prequisicion.FieldValues['sNumFolio'] + ']','Otros Movimientos');
            anexo_prequisicion.delete;
            anexo_prequisicion.ApplyUpdates();
          End;
    end
    else
    begin
        messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
    end;
end;

procedure TFrmRequisicionss7.cxFiltroRequeridoClick(Sender: TObject);
var
   dFechaInicio, dFechaFinal : tdate;
begin
    if (cxTodosUsuarios.Checked <> lFiltroUsuario) or
    (cxTodosEstatus.Checked <> lFiltroEstatus) or
    (anexo_requisicion.FieldByName('dIDFecha').AsDateTime > cxInicioRequerido.Date) or
    (anexo_requisicion.FieldByName('dIDFecha').AsDateTime < cxFinRequerido.Date)  then
    begin
        if cxTodosUsuarios.Checked then
           sUsuario := '-1'
        else
           sUsuario := global_usuario;

        if cxTodosEstatus.Checked then
        begin
           sEstatus1 := '-1';
           sEstatus2 := '-1';
        end
        else
        begin
           if global_grupo = 'CALIDAD' then
           begin
              sEstatus1 := 'AUTORIZADO';
              sEstatus2 := 'AUTORIZADO';
           end
           else
           if global_grupo = 'CENTRO_COSTO' then
           begin
              sEstatus1 := 'LIBERADO';
              sEstatus2 := 'LIBERADO';
           end
           else
           if global_grupo = 'COMPRAS' then
           begin
              sEstatus1 := 'ASIGNADO';
              sEstatus2 := 'GENERO PR';
           end;
        end;

        AsignarSQL(anexo_requisicion,'anexo_requisicion',pUpdate);
        FiltrarDataSet(anexo_requisicion,'contrato,IdDepartamento,Usuario,FechaI,FechaF,Estatus1,Estatus2',
        [global_contrato, -1,sUsuario,FechaSQL(cxInicioRequerido.Date),FechaSQL(cxFinRequerido.Date),sEstatus1,sEstatus2]);
        anexo_requisicion.Open;
    end
    else
    begin
        anexo_requisicion.Filtered := False;
        anexo_requisicion.Filter   :=' dFechaRequerido >= '+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and dFechaRequerido <= '+QuotedStr(FechaSQL(cxFinRequerido.Date));
        anexo_requisicion.Filtered := True;
    end;

    cxInicioRequerido.Style.Font.Color := clBlue;
    cxInicioRequerido.Style.Font.Style := [fsBold];
    cxFinRequerido.Style.Font.Color := clBlue;
    cxFinRequerido.Style.Font.Style := [fsBold];
    if cxTodosUsuarios.Checked then
    begin
       cxTodosUsuarios.Style.Font.Color := clBlue;
       cxTodosUsuarios.Style.Font.Style := [fsBold];
    end;

    if cxTodosEstatus.Checked then
    begin
        cxTodosEstatus.Style.Font.Color := clBlue;
        cxTodosEstatus.Style.Font.Style := [fsBold];
    end;
end;

procedure TFrmRequisicionss7.cxFindGMClick(Sender: TObject);
begin
 Application.CreateForm(TfrmGridFM, frmGridFM);
  frmGridFM.Caption:='Grupos De Material';
  frmGridFM.cxLeyenda.Caption:='Grupos De Material';
  frmGridFM.cxGrid1DBTableView1.DataController.DataSource:=dsGrupoMaterial;
  frmGridFM.cxGrid1DBTableView1.BeginUpdate;
  frmGridFM.cxGrid1DBTableView1.ClearItems;
  frmGridFM.cxGrid1DBTableView1.DataController.CreateItemByField(cxGrupoMaterial.Properties.ListColumns[0].Field);
  frmGridFM.cxGrid1DBTableView1.Columns[0].Caption := 'Código';
  frmGridFM.cxGrid1DBTableView1.Columns[0].Width:=320;
  frmGridFM.cxGrid1DBTableView1.DataController.CreateItemByField(cxGrupoMaterial.Properties.ListColumns[1].Field);
  frmGridFM.cxGrid1DBTableView1.Columns[1].Caption := 'Grupo';
  frmGridFM.cxGrid1DBTableView1.DataController.CreateItemByField(cxGrupoMaterial.Properties.ListColumns[2].Field);
  frmGridFM.cxGrid1DBTableView1.Columns[2].Caption := 'Descripción';
  frmGridFM.cxGrid1DBTableView1.EndUpdate;
  frmGridFM.cxGrid1DBTableView1.OptionsView.ColumnAutoWidth:=true;
  frmGridFM.cxGrid1DBTableView1.OptionsView.CellAutoHeight := True;
   if frmGridFM.ShowModal = mrOk then
      begin
      cxGrupoMaterial.EditValue:=frmGridFM.cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('IdGrupo').Value;
      end;
end;

procedure TFrmRequisicionss7.cxFindWbsClick(Sender: TObject);
begin
  Application.CreateForm(TfrmGridFM, frmGridFM);
  frmGridFM.Caption:='Work Order';
  frmGridFM.cxLeyenda.Caption:='Work Order';
  frmGridFM.cxGrid1DBTableView1.DataController.DataSource:=dsCentroCosto;
  frmGridFM.cxGrid1DBTableView1.BeginUpdate;
  frmGridFM.cxGrid1DBTableView1.ClearItems;
  frmGridFM.cxGrid1DBTableView1.DataController.CreateItemByField(cxWbs.Properties.ListColumns[0].Field);
  frmGridFM.cxGrid1DBTableView1.Columns[0].Caption := 'Código';
  frmGridFM.cxGrid1DBTableView1.DataController.CreateItemByField(cxWbs.Properties.ListColumns[1].Field);
  frmGridFM.cxGrid1DBTableView1.Columns[1].Caption := 'Work Order';
  frmGridFM.cxGrid1DBTableView1.EndUpdate;
  frmGridFM.cxGrid1DBTableView1.OptionsView.ColumnAutoWidth:=true;
  if frmGridFM.ShowModal = mrOk then
      begin
      cxWbs.EditValue:=frmGridFM.cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('sNumeroOrden').Value;
      end;
  end;

procedure TFrmRequisicionss7.cxGridViewRecursoCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if PanelMaterial.Visible = true then
    begin
        MarcarOpcionesQA;
    end;
end;

procedure TFrmRequisicionss7.cxGridViewTerceriasCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    MarcarOpcionesQA;
end;

procedure TFrmRequisicionss7.cxGuardarDetalleClick(Sender: TObject);
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

    if cxGrupoMaterial.Text <> '' then
       uGrupoMaterial.Locate('Nombre',cxGrupoMaterial.Text,[]);

    if cxWbs.Text <> '' then
       zCentroCosto.Locate('sIdFolio',cxWbs.Text,[]);
    sNotas := cxNotas.Text;

    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
        indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        cxView_Materiales.DataController.FocusedRowIndex := indice;

        with cxView_Materiales.DataController.DataSource.DataSet do
        for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
        begin
            indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
            cxView_Materiales.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update anexo_prequisicion set IdGrupo =:Grupo, sNumeroOrden_WorkOrder =:CentroCosto, sObservacion =:notas, EspecificacionesQA =:Especificaciones, EspecificacionesQAN=:EspecificN, dCantidad =:Cantidad '+
                               'where IdPRequisicion =:Id');
            zActualiza.ParamByName('Id').AsInteger         := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
            if cxGrupoMaterial.Text <> '' then
               zActualiza.ParamByName('Grupo').AsInteger   := uGrupoMaterial.FieldByName('IdGrupo').AsInteger
            else
               zActualiza.ParamByName('Grupo').AsInteger   := 0;
            if cxWbs.Text <> '' then
               zActualiza.ParamByName('CentroCosto').AsString := zCentroCosto.FieldByName('sNumeroOrden').AsString
            else
               zActualiza.ParamByName('CentroCosto').AsString := '';
            zActualiza.ParamByName('Notas').AsString       := sNotas;
            zActualiza.ParamByName('Especificaciones').AsString := GuardarOpcionesQA;
            zActualiza.ParamByName('EspecificN').AsString := MarcarOpcionesQAR;
            if iGrid = 0 then
               zActualiza.ParamByName('Cantidad').AsFloat    := cxCantidad.Value
            else
               zActualiza.ParamByName('Cantidad').AsFloat    := cxView_Materiales.DataController.DataSet.FieldByName('dCantidad').AsFloat;
            zActualiza.ExecSQL;

            //Se Actualiza el MAterial Group al insertar.
            if cxView_Materiales.DataController.DataSet.FieldByName('IdGrupoSAP').AsInteger = 0 then
            begin
               AsignarSQL(zActualiza,'actualiza_requisicion_grupoMat',pUpdate);
               FiltrarDataSet(zActualiza,'Grupo,Insumo',[uGrupoMaterial.FieldByName('IdGrupo').AsInteger,cxView_Materiales.DataController.DataSet.FieldByName('IdInsumo').AsInteger]);
               zActualiza.ExecSQL;
            end;

        end;
    end;
    ds_anexo_prequisicion.DataSet.Post;
    anexo_prequisicion.Refresh;
    zActualiza.destroy;
    selectPlanta;
    cxCancelarDetalle.Click;
end;

procedure TFrmRequisicionss7.cxImportarClick(Sender: TObject);
var
   x, y, i : Integer;
begin
    OpenXLS.Title := 'Seleccione Plantilla de MS Excel';
    if OpenXLS.Execute then
    begin
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

procedure TFrmRequisicionss7.cxManagerAprobadorEnter(Sender: TObject);
begin
   cxManagerAprobador.Style.Color := global_color_entradaERP;
end;

procedure TFrmRequisicionss7.cxView_MaterialesCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if PanelMaterial.Visible = true then
    begin
        MarcarOpcionesQA;
        if anexo_prequisicion.RecordCount > 0 then
           //if anexo_requisicion.FieldByName('sStatus').AsString = 'PENDIENTE' then
              anexo_requisicion.Edit
           //else
           //   messageDLG('No se puede modificar, el material se encuentra " '+anexo_requisicion.FieldByName('sStatus').AsString+'"',mtInformation, [mbOk],0);
    end;

    if assigned(frmAgregarMasivoServicios) then
    begin
      frmAgregarMasivoServicios.Materiales.Active := False;
      AsignarSQL(frmAgregarMasivoServicios.Materiales, 'existe_accesorio', pUpdate);
      FiltrarDataSet(frmAgregarMasivoServicios.Materiales, 'sIdEquipo, EquipoDetalle, FolioReq, ReqDetalle',
      [anexo_prequisicion.FieldByName('sIdEquipo').AsString, '-1', anexo_prequisicion.FieldByName('iFolioRequisicion').AsString,
      anexo_prequisicion.FieldByName('IdPRequisicion').AsString]);
      frmAgregarMasivoServicios.Materiales.Open;
    end;
end;

procedure TFrmRequisicionss7.cxView_MaterialesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if cxView_Materiales.OptionsView.CellAutoHeight then
       cxView_Materiales.OptionsView.CellAutoHeight := False
    else
       cxView_Materiales.OptionsView.CellAutoHeight := True;
end;

procedure TFrmRequisicionss7.cxView_MaterialesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ComentarMR1.Visible:=False;
  PegarGrupoMaterial1.Visible := True;
  CopiarGrupoMaterial1.Visible := True;
  PegarQARequirement1.Visible := True;
  CopiarQARequirement1.Visible := True;
  NuevoAccesorio1.Visible := True;
  VerAccesorios1.Visible := True;
  traerAccesorios1.Visible := True;
  NuevoServicio.Visible :=  True;
  if global_grupo = 'CALIDAD' then
    NoRequiereInspeccionQA1.Visible:=True;

  if (global_grupo = 'CENTRO_COSTO') OR (global_usuario='julios')  then begin
    PegarWorkOrder1.Visible := True;
    CopiarWorkOrder1.Visible := True;
  end;

end;

procedure TFrmRequisicionss7.cxView_RequsicionCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

  if PanelDetalle.Visible = True then
    llenarCampos();

  if PanelMaterial.Visible then
     VistaDetalleMR;

  if (anexo_requisicion.FieldByName('sStatus').AsString = 'GENERO PR') AND (anexo_requisicion.FieldByName('Recurso').AsString='Servicio') then
    btnRevisión.Enabled := True
  else
     btnRevisión.Enabled := False;

  if (anexo_requisicion.FieldByName('sStatus').AsString = 'GENERO PR') AND (anexo_requisicion.FieldByName('Recurso').AsString='Servicio') and (anexo_requisicion.FieldByName('Rev').AsInteger > 0)  then
    btnEnviar5.Enabled  := True
  else
    btnEnviar5.Enabled  := False;


end;

procedure TFrmRequisicionss7.cxView_RequsicionCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if cxView_Requsicion.OptionsView.CellAutoHeight then
      cxView_Requsicion.OptionsView.CellAutoHeight := False
   else
      cxView_Requsicion.OptionsView.CellAutoHeight := True;
end;

procedure TFrmRequisicionss7.cxView_RequsicionDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  IsOpen := False;
end;

procedure TFrmRequisicionss7.cxView_RequsicionDataControllerFilterChanged(
  Sender: TObject);
begin
  IsOpen := True;
end;

procedure TFrmRequisicionss7.cxView_RequsicionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if PanelDetalle.Visible = True then
    llenarCampos() ;

  if PanelMaterial.Visible then
     VistaDetalleMR;
end;

procedure TFrmRequisicionss7.cxView_RequsicionMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  PegarGrupoMaterial1.Visible := False;
  CopiarGrupoMaterial1.Visible := False;
  PegarQARequirement1.Visible := False;
  CopiarQARequirement1.Visible := False;
  NoRequiereInspeccionQA1.Visible:=False;
  PegarWorkOrder1.Visible := False;
  CopiarWorkOrder1.Visible := False;
  ComentarMR1.Visible:=True;
  NuevoAccesorio1.Visible := True;
  VerAccesorios1.Visible := True;
  NuevoAccesorio1.Visible := False;
  VerAccesorios1.Visible := False;
  traerAccesorios1.Visible := False;
//  if global_grupo = 'LIDER_AVANZADO' then
//  BEGIN
//    //if (global_usuario = '') or (global_usuario = '') or (global_usuario = '') then
//    NuevoServicio.Visible := True;
//  END
//  else
//    NuevoServicio.Visible := False;

end;

procedure TFrmRequisicionss7.selectPlanta;
begin
  zPOrdenes_Trabajo.Locate('sNumeroOrden', anexo_requisicion.FieldByName('sNumeroOrden').AsString,[]);
  if (zPOrdenes_Trabajo.FieldByName('sIdFolio').AsString = 'DEPARTAMENTO')   or
  (zPOrdenes_Trabajo.FieldByName('sIdFolio').AsString = 'FACILITIES') then begin
     if not (cxWbs.EditValue=null) then
        if  anexo_requisicion.Locate('iFolioRequisicion',cxView_Requsicion.DataController.DataSet.FieldByName('iFolioRequisicion').AsString,[]) then begin
              anexo_requisicion.Edit;
              if (anexo_requisicion.State=dsInsert) or (anexo_requisicion.State=dsEdit)  then begin
                anexo_requisicion.FieldByName('IdPlanta').AsInteger :=  zCentroCosto.FieldByName('IdPlanta').AsInteger;
                anexo_requisicion.Refresh;
              end;
        end;
      end;
  end;


procedure TFrmRequisicionss7.EnterControl(Sender: TObject);
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

procedure TFrmRequisicionss7.cxNuevoDetalleClick(Sender: TObject);
begin
  Try
     if (anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') or (anexo_requisicion.FieldValues['sStatus'] = 'VALIDADO')  then
     begin
         global_frmActivo :='Requisicion';

         OpcButton := 'New';
         if cxPageDetalle.ActivePage = cxTabMaterial then
         begin
            global_frmActivo:='Material';
         end;
         Application.CreateForm(TfrmAgregarMasivoRequisicion, frmAgregarMasivoRequisicion);
         frmAgregarMasivoRequisicion.show;
     end
     else
     begin
        messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
     end;
  except
   on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_RequisicionPerf', 'Al agregar registro ', 0);
   end;
  end;

end;

procedure TFrmRequisicionss7.cxOrdenTrabajoEnter(Sender: TObject);
begin
//   uOrdenesTrabajo.Filtered := False;
//   uOrdenesTrabajo.Filter   := ' sCodigo = '+QuotedStr(tsNumeroOrden.Text);
//   uOrdenesTrabajo.Filtered := True;

   mComentarioOT := uOrdenesTrabajo.FieldByName('mComentarios').AsString;

   cxOrdenTrabajo.Style.Color := global_color_entradaERP;
end;

procedure TFrmRequisicionss7.cxOrdenTrabajoExit(Sender: TObject);
begin
    if pos(mComentarioOT,tmComentarios.Text) > 0 then
    begin
        uOrdenesTrabajo.Locate('sIdFolio',cxOrdenTrabajo.Text,[]);
        anexo_requisicion.FieldByName('mComentarios').AsString := stringreplace(anexo_requisicion.FieldByName('mComentarios').AsString, mComentarioOT, uOrdenesTrabajo.FieldByName('mComentarios').AsString,
                          [rfReplaceAll, rfIgnoreCase]);
    end
    else
    begin
        anexo_requisicion.FieldByName('mComentarios').AsString  := uOrdenesTrabajo.FieldByName('mComentarios').AsString +' para el día '+DateToStr(anexo_requisicion.FieldByName('dFechaRequerido').AsDateTime)+#13+#13+
        tmComentarios.Text;
    end;
    cxOrdenTrabajo.Style.Color := global_color_salidaERP;
end;

procedure TFrmRequisicionss7.cxPageDetalleClick(Sender: TObject);
begin
   if cxPageDetalle.ActivePage = cxTabMaterial then
   begin
        titulo2:='Materiales';
        anexo_prequisicion.Active:= False;
        AsignarSQL(anexo_prequisicion,'anexo_prequisicion_upt',pUpdate);
        FiltrarDataSet(anexo_prequisicion,'contrato,Folio,Tipo',
        [global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString,anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger]);
        anexo_prequisicion.Open;
   end;

   if cxPageDetalle.ActivePage = tabInformes then
   begin
      zGrafica.Active:= False;
      AsignarSQL(zGrafica,'grafica_requisiciones',pUpdate);
      FiltrarDataSet(zGrafica,'years',[anexo_requisicion.FieldByName('Periodo').AsString]);
      zGrafica.Open;

      cxPageDetalle.ActivePageIndex := 7;
      cxGrid1DBChartView1.Categories.DisplayText:='Periodo '+zGrafica.FieldByName('years').AsString;

      titulo2:='Informes';
      cxNuevoDetalle.Enabled:=False;
      cxEditaDetalle.Enabled:=False;
      cxEliminarDetalle.Enabled:=False;
   end
   else
   begin
     cxNuevoDetalle.Enabled:=True;
     cxEditaDetalle.Enabled:=True;
     cxEliminarDetalle.Enabled:=True;
   end;
   cxLeyenda2.Caption:=titulo2;
end;


procedure TFrmRequisicionss7.cxProyectoExit(Sender: TObject);
var
zFolios : TUniQuery;
begin
   cxProyecto.Style.Color := global_color_salidaERP;
       if cxProyecto.Text = '' then
    begin
        cxProyecto.SetFocus ;
        MessageDlg('Asigne el proyecto', mtInformation, [mbOk], 0);
        exit;

    end;
   zPOrdenes_Trabajo.Locate('sNumeroOrden', anexo_requisicion.FieldByName('sNumeroOrden').AsString,[]);
   if connection.uUsuario.Locate('sIdUsuario',zPOrdenes_Trabajo.FieldByName('sIdUsuario').AsString,[]) = true then
   begin
     cxSAPRelease.DataBinding.DataSource.DataSet.FieldByName('IdSAPSolicitante').AsInteger := connection.uUsuario.FieldByName('IdGerente').AsInteger;
     cxManagerAprobador.DataBinding.DataSource.DataSet.FieldByName('IdAutorizaManager').AsInteger := connection.uUsuario.FieldByName('IdAutorizador').AsInteger;
   end
   else
   begin
    if (cxSAPRelease.DataBinding.DataSource.DataSet.FieldByName('IdSAPSolicitante').AsInteger<>null) then begin
      anexo_requisicion.FieldValues['IdSAPSolicitante']   := 8;
      zApruebaRequisicion.Locate('IdAutorizador', StrToInt(AnteriorArray[8]),[]);
      cxManagerAprobador.DataBinding.DataSource.DataSet.FieldByName('IdAutorizaManager').AsInteger  := zApruebaRequisicion.FieldByName('IdAutorizador').AsInteger;
    end;
   end;

   zPOrdenes_Trabajo.Locate('sNumeroOrden', anexo_requisicion.FieldByName('sNumeroOrden').AsString,[]);

   zFolios:=tUniquery.create(nil);
   zFolios.Connection := Connection.uConnection;
   zFolios.Active := False;
   zFolios.Active:= False;
   AsignarSQL(zFolios,'anexo_requisicion_tracking',pUpDate);
   FiltrarDataSet(zFolios,'Folio',[zPOrdenes_Trabajo.FieldByName('sIdFolio').AsString]);
   zFolios.ExecSQL;

   if (zFolios.FieldByName('Folios').AsString='') then begin

     if (anexo_requisicion.State=dsInsert) then
        anexo_requisicion.FieldByName('sNumFolio').AsString:=autoFolio(anexo_requisicion,'anexo_requisicion',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,tsDepartamento.DataBinding.DataSource.DataSet.FieldByName('IdDepartamento').AsInteger);

   end
   else
    if (zFolios.FieldByName('Folios').AsString<> null)then
      if (anexo_requisicion.State=dsInsert)  then
         anexo_requisicion.FieldByName('sNumFolio').AsString:=zFolios.FieldByName('Folios').AsString;

end;


procedure TFrmRequisicionss7.cxQAprobadorEnter(Sender: TObject);
begin

   cxQAprobador.Style.Color := global_color_entradaERP;
end;

procedure TFrmRequisicionss7.cxSAPClick(Sender: TObject);
Var
  CadError, OrdenVigencia: String;
//////////////////////////////////// PLANTILAS DE IMPORTACION /////////////////////////////////////
Function GenerarPlantilla: Boolean;
Var
  Resultado: Boolean;
    Procedure DatosPlantilla;
    Var
      CadFecha, tmpNombre, cadena, sColIDName, sId : String;
      fs: tStream;
      i,x,n : integer;
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
              if (anexo_requisicion.FieldByName('Proyecto').AsString = 'DEPARTAMENTO') or (anexo_requisicion.FieldByName('Proyecto').AsString = 'FACILITIES') then
                 Excel.Selection.Value := 'K'
              else
                 Excel.Selection.Value := 'P';

              if anexo_prequisicion.FieldByName('IdTipoRecurso').AsInteger = 2 then
              begin
                  Excel.Cells[i, 5].Select;
                  Excel.Selection.Value := 'D';
              end;

              Excel.Cells[i, 7].Select;
              Excel.Selection.Value := anexo_prequisicion.FieldByName('NumeroMaterial').AsString;

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
              //Se aplica solo los 12 caracteres
              if length(anexo_prequisicion.FieldByName('sIdInsumo').AsString)> 12 then
              begin
                  sId := anexo_prequisicion.FieldByName('sIdInsumo').AsString;
                  sId := copy(sId,0,pos('-',sId)-1)+copy(sId,pos('-',sId)+1,length(sId));
                  sId := copy(sId,0,pos('-',sId)-1)+copy(sId,pos('-',sId)+1,length(sId));

                  Excel.Selection.Value := sId;
              end
              else
                 Excel.Selection.Value := anexo_prequisicion.FieldByName('sIdInsumo').AsString;

              Excel.Cells[i, 19].Select;
              Excel.Selection.Value := anexo_requisicion.FieldByName('sNumFolio').AsString;

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
              if pos(mComentarioOT,tmComentarios.Text) > 0 then
              begin
                  Excel.Selection.Value := uOrdenesTrabajo.FieldByName('mComentarios').AsString +' para el día '+DateToStr(anexo_requisicion.FieldByName('dFechaRequerido').AsDateTime);
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
          CadError := 'Se ha producido el siguiente error al generar el Archivo de Excel Exportar a SAP' + #10 + #10 + e.Message;
          Excel.DisplayAlerts := True;
        End;
      End;


      Result := Resultado;

    end;

begin

  uOrdenesTrabajo.Active:= False;
  AsignarSQL(uOrdenesTrabajo,'ordenesdetrabajo_req',pUpdate);
  FiltrarDataSet(uOrdenesTrabajo,'Contrato,Tipo',[global_contrato,'ORDEN_TRABAJO']);
  uOrdenesTrabajo.Open;

  if PanelDetalle.Visible = False then
    llenarCampos();


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

  GenerarPlantilla;
  Excel := '';

  if CadError <> '' then
    showmessage(CadError)
  else
    tsarchivo.Text:='Formato SAP';
end;

procedure TFrmRequisicionss7.cxTodosEstusPropertiesChange(Sender: TObject);
begin
  lFiltroEstatus := cxTodosUsuarios.Checked;
end;

procedure TFrmRequisicionss7.cxTodosUsuariosPropertiesChange(Sender: TObject);
begin
    lFiltroUsuario := cxTodosUsuarios.Checked;
end;

procedure TFrmRequisicionss7.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFrmRequisicionss7.FormShow(Sender: TObject);
begin
    btnPermisos := global_btnPermisos;

    Panel2.Visible := False;
    cxSplitter1.Visible := False;
    titulo:='Requisiciones';
    titulo2:='Informes';
    cxLeyenda.Caption:=titulo;
    cxLeyenda2.Caption:=titulo2;

    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;

    cxInicioRequerido.Date := StrToDate('01'+copy(DateToStr(date),3,10));
    cxFinRequerido.Date    := date;

    sEstatus1 := '';
    sEstatus2 := '';
    if global_grupo = 'CALIDAD' then
    begin
        sEstatus1 := 'AUTORIZADO';
        sEstatus2 := 'AUTORIZADO';
        sUsuario := '-1';
    end
      else
      if global_grupo = 'CENTRO_COSTO' then
      begin
          sEstatus1 := 'LIBERADO';
          sEstatus2 := 'LIBERADO';
          sUsuario := '-1';
      end
        else
        if global_grupo = 'COMPRAS' then
        begin
            sEstatus1 := 'ASIGNADO';
            sEstatus2 := 'GENERO PR';
            sUsuario := '-1';
        end
        else
        begin
            sEstatus1 := '-1';
            sEstatus2 := '-1';
            sUsuario  := global_usuario;
        end;

    if (global_usuario = 'enrique') or (global_usuario = 'osvaldo') then
    begin
      AsignarSQL(anexo_requisicion,'anexo_requisicion',pUpdate);
      FiltrarDataSet(anexo_requisicion,'contrato,IdDepartamento,Usuario,FechaI,FechaF,Estatus1,Estatus2',
      [global_contrato, -1,sUsuario,'2018-01-01',FechaSQL(now()),-1,-1]);
      anexo_requisicion.Open;
    end
    else
    begin
      AsignarSQL(anexo_requisicion,'anexo_requisicion',pUpdate);
      FiltrarDataSet(anexo_requisicion,'contrato,IdDepartamento,Usuario,FechaI,FechaF,Estatus1,Estatus2',
      [global_contrato, -1,sUsuario,FechaSQL(cxInicioRequerido.Date),FechaSQL(cxFinRequerido.Date),sEstatus1,sEstatus2]);
      anexo_requisicion.Open;
    end;

    if anexo_requisicion.RecordCount > 0 then
      grid_requsicion.SetFocus;

    lFiltroUsuario := False;
    lFiltroEstatus := False;

    tsSolicitante.Text  := Global_Nombre ;

    cxView_Requsicion.DataController.Groups.FullExpand;

    IsOpen := True;
    PermisosBotones(frmRequisicionss7,btnPermisos);
    frmBarraH11.btnExporta.Visible:=False;

    AsignarSQL(zNotasGenerales,'configura_mail_mensaje',pUpdate);
    FiltrarDataSet(zNotasGenerales,'Clasificacion',['REQUISICION']);
    zNotasGenerales.Open;

    //Bloqueo de opciones según estado de la MR(requisición)
    if (anexo_requisicion.FieldByName('sStatus').AsString = 'LIBERADO') OR (anexo_requisicion.FieldByName('sStatus').AsString = 'COMPRADO') then
    begin
        cxSap.Enabled := true;
    end;


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

procedure TFrmRequisicionss7.frxEntradaGetValue(const VarName: string;
  var Value: Variant);
  Var
    sCadena : String ;
    iValorNumerico   : LongInt  ;
    Resultado        : Real     ;
begin
  If CompareText(VarName, 'CANTIDAD_LETRA')= 0 Then
    Begin
         iValorNumerico   := Trunc(Montototal) ;
         sCadena := xIntToLletres (iValorNumerico) +' PESOS ';
         Resultado := roundto(Montototal - iValorNumerico, -2) ;
         Resultado := Resultado * 100;
         iValorNumerico := Trunc(Resultado);
         sCadena := sCadena + IntToStr(iValorNumerico)+ '/100 M.N.';
         Value :=   sCadena
    end ;

  if CompareText(VarName, 'FECHA') = 0 then begin
    Value := anexo_requisicion.FieldValues['dIdFecha'];
  end;

end;

procedure TFrmRequisicionss7.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmRequisicionss7.IncluyeCodigoMaterial1Click(Sender: TObject);
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
    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
        indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        cxView_Materiales.DataController.FocusedRowIndex := indice;

        with cxView_Materiales.DataController.DataSource.DataSet do
        for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
        begin
            indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
            cxView_Materiales.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update anexo_prequisicion set IncluyeCodigoMat =:Incluye '+
                               'where IdPRequisicion =:Id');
            zActualiza.ParamByName('Id').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
            zActualiza.ParamByName('Incluye').AsString := 'Si';
            zActualiza.ExecSQL;
        end;
    end;

    anexo_prequisicion.Refresh;
    zActualiza.destroy;
    cxCancelarDetalle.Click;

end;

procedure TFrmRequisicionss7.llenarCampos;
begin
    cxPageDetalle.ActivePageIndex := 0;
    cxTabMaterial.TabVisible:=True;
    cxTabMaterial.Caption := anexo_requisicion.FieldByName('Recurso').AsString;
    uOrdenesTrabajo.Locate('sIdFolio',cxOrdenTrabajo.Text,[]);
    mComentarioOT := uOrdenesTrabajo.FieldByName('mComentarios').AsString;

    if anexo_requisicion.FieldByName('Recurso').AsString = 'Servicio' then
       cxView_MaterialesColumn5.Visible := False;

    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
        anexo_prequisicion.Active:= False;
        AsignarSQL(anexo_prequisicion,'anexo_prequisicion_upt',pUpdate);
        FiltrarDataSet(anexo_prequisicion,'contrato,Folio,Tipo',
        [global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString,anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger]);
        anexo_prequisicion.Open;
        VistaGrid := cxView_Materiales;
    end;

    if global_grupo = 'ADMON' then
    begin
        cxView_MaterialesColumn5.Visible := True;
        cxView_MaterialesColumn6.Visible := True;
    end
    else
    begin
        cxView_MaterialesColumn5.Visible := False;
        cxView_MaterialesColumn6.Visible := False;
    end;

    if global_grupo = 'CALIDAD' then
    begin
        cxView_MaterialesColumn5.Visible := True;
        cxView_MaterialesColumn5.SortOrder;
    end;

    if global_grupo = 'CENTRO_COSTO' then
    begin
        cxView_MaterialesColumn6.Visible := True;
        cxView_MaterialesColumn6.SortOrder;
    end;

     MarcarOpcionesQA ;
     VistaGrid.DataController.SelectFromAnchor(VistaGrid.DataController.FocusedRecordIndex,True);
end;

procedure TFrmRequisicionss7.SalidaControl(Sender: TObject);
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

procedure TFrmRequisicionss7.SeguimientoMaterialxPartidasdeAnexo1Click(
  Sender: TObject);
begin
   try
     if (cxView_Requsicion.DataController.DataSource.DataSet.IsEmpty) or (cxView_Requsicion.DataController.DataSource.DataSet.RecordCount<=0) then
 begin
   exit
 end;
    frxEntrada.PreviewOptions.MDIChild := False ;
    frxEntrada.PreviewOptions.Modal := True ;
    frxEntrada.PreviewOptions.Maximized := lCheckMaximized () ;
    frxEntrada.PreviewOptions.ShowCaptions := False ;
    frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;
    frxEntrada.LoadFromFile (global_files + global_miReporte+'_ALM_MaterialxPartida.fr3') ;
    frxEntrada.ShowReport();
    if not FileExists(global_files + global_miReporte+'_ALM_MaterialxPartida.fr3') then
       showmessage('El archivo de reporte '+global_miReporte+'_ALM_MaterialxPartida.fr3 no existe, notifique al administrador del sistema');
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Requisicion de Materiales', 'En el proceso seguimiento Material General', 0);
    end;
  end;
end;

procedure TFrmRequisicionss7.tabInformesShow(Sender: TObject);
begin
  OpcionImprimir.EditValue := 1;
end;

procedure TFrmRequisicionss7.tdIdFecha2Exit(Sender: TObject);
begin
  SalidaControl(Sender);
end;

procedure TFrmRequisicionss7.tdidFechaExit(Sender: TObject);
begin
  tdIdFecha2.Date:=tdidFecha.Date+3;
  SalidaControl(Sender);
end;

procedure TFrmRequisicionss7.traerAccesorios1Click(Sender: TObject);
     var
  zBusca, zIngresa : tUniquery;

begin

  zBusca:=tUniquery.create(nil);
  zBusca.Connection := Connection.uConnection;

  zIngresa:=tUniquery.create(nil);
  zIngresa.Connection := Connection.uConnection;

  zBusca.Active := False;
  AsignarSQL(zBusca, 'accesorios_penultima_revision', pUpdate);
  FiltrarDataSet(zBusca, 'Revision, Insumo, iItem',
  [cxView_Materiales.DataController.DataSet.FieldByName('Revision').AsInteger,
  cxView_Materiales.DataController.DataSet.FieldByName('IdInsumo').AsInteger,
  cxView_Materiales.DataController.DataSet.FieldByName('iItem').AsInteger]);
  zBusca.Open;

  if zBusca.RecordCount = 0 then
  begin
     ShowMessage('La partida no tiene Accesorios');
     exit;
  end;


  zBusca.First;
  while not zBusca.Eof do
  begin
    zIngresa.Active := False;
    AsignarSQL(zIngresa, 'inserta_accesorio', pUpdate);
    FiltrarDataSet(zIngresa, 'sIdEquipo, EquipoDetalle, FolioReq, ReqDetalle, iItem, Medida, Descripcion, Cantidad, Revision',
    [zBusca.FieldByName('sIdEquipo').AsString,
    zBusca.FieldByName('IdEquipoDetalle').AsString,
    cxView_Materiales.DataController.DataSet.FieldByName('iFolioRequisicion').AsString,
    cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsString,
    cxView_Materiales.DataController.DataSet.FieldByName('iItem').AsInteger,
    zBusca.FieldByName('Medida').AsString,
    zBusca.FieldByName('Descripcion').AsString,
    zBusca.FieldByName('Cantidad').AsString,
    cxView_Materiales.DataController.DataSet.FieldByName('Revision').AsString]);
    zIngresa.ExecSQL;

    zBusca.Next;
  end;

  zBusca.Destroy;
  zIngresa.Destroy;

end;

procedure TFrmRequisicionss7.tsDepartamentoExit(Sender: TObject);
begin
    tsDepartamento.Style.Color := global_color_salidaERP;
    if (anexo_requisicion.State = dsInsert)  then
    begin
       anexo_requisicion.FieldValues['sNumFolio'] := autoFolio(anexo_requisicion,'anexo_requisicion',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,tsDepartamento.DataBinding.DataSource.DataSet.FieldByName('IdDepartamento').AsInteger);
       zDepartamento.Locate('Nombre',tsDepartamento.Text,[]);
       uGerentes.Locate('IdDepartamento',zDepartamento.FieldByName('IdDepartamento').AsInteger,[]);
       cxSAPRelease.DataBinding.DataSource.DataSet.FieldByName('IdSAPSolicitante').AsInteger := uGerentes.FieldByName('IdGerente').AsInteger;
    end;
end;

procedure TFrmRequisicionss7.validaciones;
begin
     valida := False;
     connection.zCommand.Active := False;
     connection.zCommand.SQL.Clear;
     connection.zCommand.SQL.Add('select IdOrdenCompra from anexo_pedidos where sNumeroOrden =:Orden and iFolioRequisicion = :Requisicion  ' +
                                 'and sContrato=:Contrato');
     connection.zCommand.ParamByName('Contrato').AsString    := global_contrato;
     connection.zCommand.ParamByName('Orden').AsString       := anexo_requisicion.FieldValues['sNumeroOrden'];
     connection.zCommand.ParamByName('Requisicion').AsString := anexo_requisicion.FieldValues['iFolioRequisicion'];
     connection.zCommand.Open;
     if connection.zCommand.RecordCount > 0 then
     begin
          messageDLG(' La Requiscion '+anexo_requisicion.FieldValues['sNumFolio']+ ' se encuentra enlazada con una Orden de Compra', mtInformation, [mbOk], 0);
          valida := True;
     end;
end;


procedure TFrmRequisicionss7.formatoEncabezado;
begin
      Excel.Selection.MergeCells := False;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 12;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.Font.Name := 'Calibri';
      Excel.Selection.WrapText := True;
end;

procedure TFrmRequisicionss7.MarcarcomoConsumible1Click(Sender: TObject);
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
    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
        indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        cxView_Materiales.DataController.FocusedRowIndex := indice;

        with cxView_Materiales.DataController.DataSource.DataSet do
        for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
        begin
            indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
            cxView_Materiales.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update anexo_prequisicion set NumeroMaterial =:Numero '+
                               'where IdPRequisicion =:Id');
            zActualiza.ParamByName('Id').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
            zActualiza.ParamByName('Numero').AsString := '';
            zActualiza.ExecSQL;
        end;
    end;

    anexo_prequisicion.Refresh;
    zActualiza.destroy;
    cxCancelarDetalle.Click;

end;

procedure TFrmRequisicionss7.MarcarOpcionesQA;
var
   i : integer;
   Datos, sItem,QAReq : string;
begin
    for i := 0 to cxRequerimientosQA.Items.Count -1 do
    begin
         CxRequerimientosQA.Items[i].Checked := False;
    end;
    if anexo_prequisicion.RecordCount > 0 then
    begin
        Datos := anexo_prequisicion.FieldByName('EspecificacionesQA').AsString;
        while Datos <> '' do
        begin
            if pos(',',Datos) > 0 then
            begin
               sItem := copy(Datos,0,pos(',',Datos)-1);
               Datos := copy(Datos,pos(',',Datos)+1,length(Datos));
            end
            else
               sItem := Datos;
            if sItem <> '' then
              for i := 0 to cxRequerimientosQA.Items.Count -1 do
              begin
                  if (pos(sItem+'.-',CxRequerimientosQA.Items[i].Text) > 0) and (StrToInt(sItem) = i+1) then   begin
                     CxRequerimientosQA.Items[i].Checked := True;
                      QAReq:= QAReq + CxRequerimientosQA.Items[i].Text+ ', ';
                  end;
              end;
        end;
    end;

end;

function TFrmRequisicionss7.MarcarOpcionesQAR():string;
var
   i : integer;
   Datos, sItem,QAReq : string;
begin
    for i := 0 to cxRequerimientosQA.Items.Count -1 do
    begin
         CxRequerimientosQA.Items[i].Checked := False;
    end;
    if anexo_prequisicion.RecordCount > 0 then
    begin
        //Datos := anexo_prequisicion.FieldByName('EspecificacionesQA').AsString;
        Datos := sRequerimientoQA;
        while Datos <> '' do
        begin
            if pos(',',Datos) > 0 then
            begin
               sItem := copy(Datos,0,pos(',',Datos)-1);
               Datos := copy(Datos,pos(',',Datos)+1,length(Datos));
            end
            else
               sItem := Datos;
            if sItem <> '' then
              for i := 0 to cxRequerimientosQA.Items.Count -1 do
              begin
                  if (pos(sItem,CxRequerimientosQA.Items[i].Text) > 0) then
                  begin
                      CxRequerimientosQA.Items[i].Checked := True;
                      QAReq:= QAReq + CxRequerimientosQA.Items[i].Text+ ', ';
                  end;
              end;
        end;
    end;

    result := QAReq;
end;

procedure TFrmRequisicionss7.NoRequiereInspeccionQA1Click(Sender: TObject);
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
    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
        indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        cxView_Materiales.DataController.FocusedRowIndex := indice;

        with cxView_Materiales.DataController.DataSource.DataSet do
        for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
        begin
            indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
            cxView_Materiales.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update anexo_prequisicion set EspecificacionesQA =:EspecificacionesQA '+
                               'where IdPRequisicion =:Id');
            zActualiza.ParamByName('Id').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
            zActualiza.ParamByName('EspecificacionesQA').AsString := '11,';
            zActualiza.ExecSQL;
        end;
    end;

    anexo_prequisicion.Refresh;
    zActualiza.destroy;
    cxCancelarDetalle.Click;

end;

procedure TFrmRequisicionss7.OcultarCodigoMaterial1Click(Sender: TObject);
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
    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
        indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        cxView_Materiales.DataController.FocusedRowIndex := indice;

        with cxView_Materiales.DataController.DataSource.DataSet do
        for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
        begin
            indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
            cxView_Materiales.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update anexo_prequisicion set IncluyeCodigoMat =:Incluye '+
                               'where IdPRequisicion =:Id');
            zActualiza.ParamByName('Id').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
            zActualiza.ParamByName('Incluye').AsString := 'No';
            zActualiza.ExecSQL;
        end;
    end;

    anexo_prequisicion.Refresh;
    zActualiza.destroy;
    cxCancelarDetalle.Click;

end;

procedure TFrmRequisicionss7.OpenXLSClose(Sender: TObject);
var
   flcid, Fila,Fila2, x : integer;
   lContinuaAux : boolean;
   sValue2  : string;

   CodErr1, CodErr2 : String;

   //Importacion de Requisicion 2019
   sFolioReq, dFechaReq, dFechaSol, sItem, sExtraordinario, sDescripcion,
   sCodigo, sMedida, dCantidad, sPrecio, sProyecto, sFamilia,
   sFolioOC,sFolioOCAux, sProveedor, sMoneda  :string;

   dCosto : double;
   iFolioReq, IdProveedor, IdMoneda : integer;
   zMateriales, zMedida : tUniquery;
   iCountRegistrosBarra : integer;
begin
   if MessageDlg('Desea Importar el Archivo de Excel seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
       // Verificar si se ha seleccionado algun archivo
       if (tsArchivo.Text = '') or ((tsArchivo.Text <> '') and Not FileExists(tsArchivo.Text)) then
       begin
          MessageDlg('El archivo seleccionado es incorrecto, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0);
          Exit;
       end;

       PanelProgreso.Visible := True;
       try
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

              ExcelWorksheet1.ConnectTo(ExcelWorkbook1.Sheets.Item[1] as ExcelWorkSheet);
              Fila := 1;
              lContinuaAux := True;

              {$REGION 'IMPORTACION DE PARTIDAS REQUISICION SS7'}
              if lContinuaAux then
              begin
                  Fila2 := 1;
                  x := 1;
                  lContinuaAux := True;
//                  sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
//                  while x < 25 do
//                  begin
//                      if sValue2 = 'Orden de compra' then
//                      begin
//                          lContinuaAux := True;
//                      end;
//                      x := x + 1 ;
//                      sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(x)), 'A' + Trim(IntToStr(x))].Value2);
//                  end;

                  if lContinuaAux then
                  begin
                      {$REGION 'DECLRACION DE CONSULTAS A DATOS'}

                      zMateriales := tUniQuery.Create( nil );
                      zMateriales.Connection := connection.uConnection;

                      zMedida := tUniQuery.Create( nil );
                      zMedida.Connection := connection.uConnection;

                      AsignarSQL(zMateriales,'catalogo_agregarmasivo',pUpdate);
                      FiltrarDataSet(zMateriales,'Usuario,Codigo,Contrato,Tipo',[Global_Usuario,'-1',global_contrato,
                      anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger]);
                      zMateriales.Open;

                      AsignarSQL(zMedida,'master_medidas',pUpdate);
                      FiltrarDataSet(zMedida,'Id,Codigo',[-1,-1]);
                      zMedida.Open;

                      {$ENDREGION}

                      //Conteo de registros
                      {$Region 'DATOS PRINCIPALES Y PORCENTAJES'}
                      iCountRegistrosBarra := 0;
                      Fila2 := 5;
                      sFolioOC := '';
                      sValue2 := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila2)), 'A' + Trim(IntToStr(Fila2))].Value2;
                      while (sValue2 <> '') do
                      begin
                          inc(iCountRegistrosBarra);
                          lContinuaAux := True;

                          //Aqui leemos todas las columnas necesarias para el prier regist
                          sFamilia  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila2)), 'B' + Trim(IntToStr(Fila2))].Value2;
                          sCodigo   := ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila2)), 'H' + Trim(IntToStr(Fila2))].Value2;
                          dCantidad := ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila2)), 'J' + Trim(IntToStr(Fila2))].Value2;
                          sMedida   := ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila2)), 'K' + Trim(IntToStr(Fila2))].Value2;
                          sExtraordinario := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila2)), 'F' + Trim(IntToStr(Fila2))].Value2;
                          sDescripcion    := ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila2)), 'G' + Trim(IntToStr(Fila2))].Value2;

                          //Buscamos el material
                          if zMateriales.Locate('Codigo',sCodigo,[loCaseInsensitive]) then
                          begin
                             iFolioReq := zMateriales.FieldByName('IdInsumo').AsInteger;
                             ExcelApplication1.Range['H' + Trim(IntToStr(Fila2)), 'H' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 2;
                             if anexo_prequisicion.locate('idInsumo',zMateriales.FieldByName('IdInsumo').AsInteger,[]) then
                                lContinuaAux := False;
                          end
                          else
                          begin
                             ExcelApplication1.Range['H' + Trim(IntToStr(Fila2)), 'H' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 6;
                             lContinuaAux := False;
                          end;

                          //Buscamos el extraordinario
                          ExcelApplication1.Range['F' + Trim(IntToStr(Fila2)), 'F' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 2;
                          if trim(sExtraordinario) = '' then
                          begin
                             ExcelApplication1.Range['F' + Trim(IntToStr(Fila2)), 'F' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 6;
                             lContinuaAux := False;
                          end;

                          //Buscamos la moneda
                          ExcelApplication1.Range['K' + Trim(IntToStr(Fila2)), 'K' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 2;
                          if zMedida.Locate('Codigo', sMedida, [loCaseInsensitive]) = False then
                          begin
                             ExcelApplication1.Range['K' + Trim(IntToStr(Fila2)), 'K' + Trim(IntToStr(Fila2))].Interior.ColorIndex := 6;
                             lContinuaAux := False;
                          end;

                          if lContinuaAux then
                          begin
                              //Inserta detalle de Requisicion seleccionada (MR)
                              AsignarSQL(connection.qryUBusca,'inserta_requisicion_det', pUpdate);
                              FiltrarDataSet(connection.qryUBusca, 'sContrato, iFolioRequisicion, IdInsumo, IdMedida, IdTipoRecurso, Descripcion, Fecha, dCantidad, Extraordinario',
                              [Global_contrato,anexo_requisicion.FieldByName('iFolioRequisicion').AsInteger,zMateriales.FieldByName('IdInsumo').AsInteger, zMateriales.FieldByName('IdMedida').AsInteger,
                              anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger, zMateriales.FieldByName('Insumo').AsString,fechaSQL(anexo_requisicion.FieldByName('dFechaRequerido').AsDateTime),StrToFloat(dCantidad),sExtraordinario]);
                              connection.qryUBusca.Execute;
                          end;

                          fila2 := fila2 + 1 ;
                          sValue2 := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(fila2)), 'A' + Trim(IntToStr(fila2))].Value2);
                      end;
                      {$ENDREGION}
                      zMateriales.Destroy;
                      zMedida.Destroy;
                      anexo_prequisicion.Refresh;
                      if lContinuaAux = False then
                         messageDLG('No se encontraton algunos datos!',mtInformation,[mbOk],0);
                  end
                  else
                    messageDLG('Formato de Importación de Requisicion no Valido!',mtInformation,[mbOk],0);
              end;
              {$ENDREGION}
              if lContinuaAux then
                 MessageDlg('Proceso Terminado con exito...', mtInformation, [mbOk], 0);
            except
                on E: Exception do
                begin
                    PanelProgreso.Visible := False;
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
              PanelProgreso.Visible := False;
          End;


       Except
           PanelProgreso.Visible := False;
       end;
   end;

end;

procedure TFrmRequisicionss7.OpenXLSFolderChange(Sender: TObject);
begin
    tsArchivo.Text := OpenXLS.FileName;
end;

procedure TFrmRequisicionss7.OpenXLSSelectionChange(Sender: TObject);
begin
    tsArchivo.Text := OpenXLS.FileName;
end;

procedure TFrmRequisicionss7.PegarGrupoMaterial1Click(Sender: TObject);
var
   zActualiza : tUniquery;
   indice, iGrid    : integer;
   SavePlace, SavePlace2 : TBookMark;
begin
   try
      zActualiza:=tUniquery.create(nil);
      zActualiza.Connection := Connection.uConnection;

      iGrid     := 0;
      indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
      cxView_Materiales.DataController.FocusedRowIndex := indice;

      with cxView_Materiales.DataController.DataSource.DataSet do
      for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
      begin
          indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
          cxView_Materiales.DataController.FocusedRowIndex := indice;

          zActualiza.SQL.Clear;
          zActualiza.SQL.Add('update anexo_prequisicion set IdGrupo =:IdGrupo where IdPRequisicion =:IdOld');
          zActualiza.ParamByName('IdGrupo').AsInteger := IdGMaterialCopia;
          zActualiza.ParamByName('IdOld').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
          zActualiza.ExecSQL;
      end;

   finally
    PegarGrupoMaterial1.Enabled := False;
    CopiarGrupoMaterial1.Enabled := True;
    CopiarQARequirement1.Enabled := True;
    cxView_Materiales.OptionsSelection.MultiSelect := False;
    lOpcionSelecciona := False;
    anexo_prequisicion.Refresh;
    zActualiza.Destroy;
   end;

end;

procedure TFrmRequisicionss7.PegarQARequirement1Click(Sender: TObject);
var
   zActualiza : tUniquery;
   indice, iGrid    : integer;
   SavePlace, SavePlace2 : TBookMark;
begin
    try
        zActualiza:=tUniquery.create(nil);
        zActualiza.Connection := Connection.uConnection;

        iGrid     := 0;
        indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        cxView_Materiales.DataController.FocusedRowIndex := indice;

        with cxView_Materiales.DataController.DataSource.DataSet do
        for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
        begin
            indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
            cxView_Materiales.DataController.FocusedRowIndex := indice;

            zActualiza.SQL.Clear;
            zActualiza.SQL.Add('update anexo_prequisicion set EspecificacionesQA =:EspecificacionesQA where IdPRequisicion =:IdOld');
            zActualiza.ParamByName('EspecificacionesQA').AsString := MaterialCopia;
            zActualiza.ParamByName('IdOld').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
            zActualiza.ExecSQL;
        end;

    finally
       PegarQARequirement1.Enabled := False;
       CopiarGrupoMaterial1.Enabled := True;
       CopiarQARequirement1.Enabled := True;
       cxView_Materiales.OptionsSelection.MultiSelect := False;
       lOpcionSelecciona := False;
       anexo_prequisicion.Refresh;
       zActualiza.Destroy;
    end;
end;

procedure TFrmRequisicionss7.PegarWorkOrder1Click(Sender: TObject);
var
   zActualiza : tUniquery;
   indice, iGrid    : integer;
   SavePlace, SavePlace2 : TBookMark;
begin
   try
      zActualiza:=tUniquery.create(nil);
      zActualiza.Connection := Connection.uConnection;

      iGrid     := 0;
      indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
      cxView_Materiales.DataController.FocusedRowIndex := indice;

      with cxView_Materiales.DataController.DataSource.DataSet do
      for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
      begin
          indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
          cxView_Materiales.DataController.FocusedRowIndex := indice;

          zActualiza.SQL.Clear;
          zActualiza.SQL.Add('update anexo_prequisicion set sNumeroOrden_WorkOrder =:sNumeroOrden_WorkOrder where IdPRequisicion =:IdOld');
          zActualiza.ParamByName('sNumeroOrden_WorkOrder').AsString := WorkOrderCopia;
          zActualiza.ParamByName('IdOld').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
          zActualiza.ExecSQL;
      end;

   finally
    PegarWorkOrder1.Enabled := False;
    CopiarWorkOrder1.Enabled := True;
    cxView_Materiales.OptionsSelection.MultiSelect := False;
    lOpcionSelecciona := False;
    anexo_prequisicion.Refresh;
    zActualiza.Destroy;
   end;

end;

procedure TFrmRequisicionss7.PopupPrincipalPopup(Sender: TObject);
begin
   if (anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') or (anexo_requisicion.FieldValues['sStatus'] = 'VALIDADO') then
   begin
       MarcarcomoConsumible1.Enabled := True;
       AsignarCdigoMaterial1.Enabled := True;
       IncluyeCodigoMaterial1.Enabled := True;
       OcultarCodigoMaterial1.Enabled := True;
   end
   else
   begin
       MarcarcomoConsumible1.Enabled := False;
       AsignarCdigoMaterial1.Enabled := False;
       IncluyeCodigoMaterial1.Enabled := False;
       OcultarCodigoMaterial1.Enabled := False;
   end;


   NuevoAccesorio1.Enabled   := False;
   NuevoServicio.Enabled     := False;
   VerAccesorios1.Enabled    := False;
   traerAccesorios1.Enabled  := False;

   if ((anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') and (anexo_requisicion.FieldValues['Recurso'] = 'Servicio')) or ((anexo_requisicion.FieldValues['sStatus'] = 'GENERO PR')and (anexo_requisicion.FieldValues['Recurso'] = 'Servicio')) then
   begin
     NuevoAccesorio1.Enabled   := True;
     NuevoServicio.Enabled     := False;
     VerAccesorios1.Enabled    := True;
     traerAccesorios1.Enabled  := False ;
   end ;

   if ((anexo_requisicion.FieldValues['sStatus'] = 'GENERO PR') and (anexo_requisicion.FieldValues['Rev'] > 0) and (anexo_requisicion.FieldValues['Recurso'] = 'Servicio'))then
   begin
     NuevoServicio.Enabled     := True;
     traerAccesorios1.Enabled  := True;
     NuevoAccesorio1.Enabled   := True;
     VerAccesorios1.Enabled    := True;
   end ;

   if (anexo_requisicion.FieldValues['Recurso'] = 'Servicio') then
     VerAccesorios1.Enabled    := true;

end;

function TFrmRequisicionss7.GuardarOpcionesQA():string;
var
   i : integer;
   Datos : string;
begin
    Datos := '';
    sRequerimientoQA := '';
    for i := 0 to cxRequerimientosQA.Items.Count -1 do
    begin
        if CxRequerimientosQA.Items[i].Checked then
        begin
           Datos := Datos + IntToStr(i+1)+ ',';
           sRequerimientoQA := sRequerimientoQA + CxRequerimientosQA.Items[i].text + ',';
        end;

    end;

    result := Datos;
end;

procedure TFrmRequisicionss7.VerAccesorios1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmAgregarMasivoServicios, frmAgregarMasivoServicios);
  frmAgregarMasivoServicios.show;
end;

procedure TFrmRequisicionss7.VistaDetalleMR;
begin

    cxGrupoMaterial.Enabled   := True;
    cxFindGM.Enabled          := True;
    cxWbs.Enabled             := True;
    cxFindWbs.Enabled         := True;
    cxNumeroMaterial.Enabled  := True;
    cxCantidad.Enabled        := True;
    cxNotas.Enabled           := True;
    cxRequerimientosQA.Enabled:= True;
    dxDBToggleSwitch2.Enabled := True;


    if (anexo_requisicion.FieldValues['sStatus'] = 'CANCELADO') or
       (anexo_requisicion.FieldValues['sStatus'] = 'GENERO PR') or
       (global_grupo= 'OPERACIONES')or (global_grupo= 'ADMON')  then
    begin
        //Todas las opciones bloqueadas
        cxGrupoMaterial.Enabled   := False;
        cxFindGM.Enabled          := False;
        cxWbs.Enabled             := False;
        cxFindWbs.Enabled         := False;
        cxNumeroMaterial.Enabled  := False;
        cxCantidad.Enabled        := False;
        cxNotas.Enabled           := False;
        cxRequerimientosQA.Enabled:= False;
        dxDBToggleSwitch2.Enabled := False;
        cxExtraordinario.Enabled := False;
    end;

    if (anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') or (anexo_requisicion.FieldValues['sStatus'] = 'VALIDADO') then
    begin
        //Puede editar todas las opciones tando el usuario como el Lider MR
        if (anexo_requisicion.FieldValues['sIdUsuario'] = global_usuario) OR ((anexo_requisicion.FieldValues['sIdUsuario'] = global_usuario) AND (global_grupo='LIDER_AVANZADO')) then
        begin

            cxGrupoMaterial.Enabled   := True;
            cxFindGM.Enabled          := True;
            cxWbs.Enabled             := False;
            cxFindWbs.Enabled         := False;
            cxNumeroMaterial.Enabled  := True;
            cxCantidad.Enabled        := True;
            cxNotas.Enabled           := True;
            cxRequerimientosQA.Enabled:= False;
            cxExtraordinario.Enabled := TRUE;
        end
        else
         if(global_grupo= 'LIDER_MR') then
        begin
            cxGrupoMaterial.Enabled   := True;
            cxFindGM.Enabled          := True;
            cxWbs.Enabled             := False;
            cxFindWbs.Enabled         := False;
            cxNumeroMaterial.Enabled  := True;
            cxCantidad.Enabled        := True;
            cxNotas.Enabled           := True;
            cxRequerimientosQA.Enabled:= False;
            cxExtraordinario.Enabled := False;
        end;

    end;

    if (anexo_requisicion.FieldValues['sStatus'] = 'AUTORIZADO')  then
    begin
        cxGrupoMaterial.Enabled   := False;
        cxFindGM.Enabled          := False;
        cxWbs.Enabled             := False;
        cxFindWbs.Enabled         := False;
        cxNumeroMaterial.Enabled  := False;
        cxCantidad.Enabled        := False;
        cxExtraordinario.Enabled := False;
        //Puede editar cxNotas y cxRequerimientosQA

        if global_grupo <> 'CALIDAD' then
           cxGrupoMaterial.Enabled := False;
    end;

    if (anexo_requisicion.FieldValues['sStatus'] = 'LIBERADO')  then
    begin
        cxGrupoMaterial.Enabled   := False;
        cxNumeroMaterial.Enabled  := False;
        cxCantidad.Enabled        := False;
        cxNotas.Enabled           := False;
        cxRequerimientosQA.Enabled:= False;
        cxExtraordinario.Enabled := False;
        //Puede solo asignar centro de costo cxWbs y acceso al cxFindWbs

        //Seguridad por usuarios los que no tengan derecho a cambiar centro de costo estara bloqueado
        if global_grupo <> 'CENTRO_COSTO' then
        begin
           cxWbs.Enabled         := False;
           cxFindWbs.Enabled     := False;
           cxExtraordinario.Enabled := False;
        end;
    end;

    if (anexo_requisicion.FieldValues['sStatus'] = 'ASIGNADO')  then
    begin
        cxWbs.Enabled             := False;
        cxFindWbs.Enabled         := False;
        cxNumeroMaterial.Enabled  := False;
        cxFindGM.Enabled          := False;
        cxCantidad.Enabled        := False;
        cxNotas.Enabled           := False;
        cxRequerimientosQA.Enabled:= False;
        cxExtraordinario.Enabled := False;
        //Puede editar los grupos cxGrupoMaterial

        if global_grupo <> 'COMPRAS' then
           cxGrupoMaterial.Enabled := False;
    end;

    if (anexo_requisicion.FieldValues['sStatus'] = 'GENERO PR') and (global_grupo='LIDER_AVANZADO')  then
    begin
      cxGrupoMaterial.Enabled   := True;
      cxFindGM.Enabled          := True;
      cxWbs.Enabled             := False;
      cxFindWbs.Enabled         := False;
      cxNumeroMaterial.Enabled  := True;
      cxCantidad.Enabled        := True;
      cxNotas.Enabled           := True;
      cxRequerimientosQA.Enabled:= False;
      dxDBToggleSwitch2.Enabled := True;
      cxExtraordinario.Enabled := True;
    end;
end;

procedure TFrmRequisicionss7.CopiarWorkOrder1Click(Sender: TObject);
var
    indice, iGrid    : integer;
    lcontinua : boolean;
begin
     PegarWorkOrder1.Enabled := True;
     CopiarWorkOrder1.Enabled := False;
     WorkOrderCopia := anexo_prequisicion.FieldByName('sNumeroOrden_WorkOrder').AsString;
     lOpcionSelecciona := True;
     cxView_Materiales.OptionsSelection.MultiSelect := True;
end;

procedure TFrmRequisicionss7.CargarCatalogos;
begin
    if zDepartamento.Active = False then
    begin
      zDepartamento.Active:= False;
      AsignarSQL(zDepartamento,'master_departamento',pUpDate);
      zDepartamento.Open;
    end;

    if uPlanta.Active = False then
    begin
        uPlanta.Active:= False;
        AsignarSQL(uPlanta,'master_planta',pUpdate);
        FiltrarDataSet(uPlanta,'IdPlanta,Codigo,Activo',[-1,-1,-1]);
        uPlanta.Open;
    end;

    if zRecurso.Active = False then
    begin
      zRecurso.Active:=False;
      zRecurso.SQL.Text:='select IdTiporecurso, Nombre from op_tiporecurso; ';
      zRecurso.Open;
    end;

    if uGerentes.Active = False then
    begin
        uGerentes.Active:= False;;
        AsignarSQL(uGerentes,'master_departamento_gerente',pUpdate);
        uGerentes.Open;
    end;

    if qOrdenes_trabajo.Active = False then
    begin
        qOrdenes_trabajo.Active:= False;
        AsignarSQL(qOrdenes_trabajo,'ordenesdetrabajo_req',pUpdate);
        FiltrarDataSet(qOrdenes_trabajo,'Contrato,Tipo',[global_contrato,'CONTRATO']);
        qOrdenes_trabajo.Open;
    end;

    if uOrdenesTrabajo.Active = False then
    begin
        uOrdenesTrabajo.Active:= False;
        AsignarSQL(uOrdenesTrabajo,'ordenesdetrabajo_req',pUpdate);
        FiltrarDataSet(uOrdenesTrabajo,'Contrato,Tipo',[global_contrato,'ORDEN_TRABAJO']);
        uOrdenesTrabajo.Open;
    end;

    if zPOrdenes_Trabajo.Active = False then
    begin
        zPOrdenes_Trabajo.Active:= False;
        AsignarSQL(zPOrdenes_Trabajo,'ordenesdetrabajo_req',pUpdate);
        FiltrarDataSet(zPOrdenes_Trabajo,'Contrato,Tipo',[global_contrato,'PROYECTO']);
        zPOrdenes_Trabajo.Open;
    end;

    if plataforma.Active = False then
    begin
        plataforma.Active:= False;
        AsignarSQL(plataforma,'plataformas',pUpdate);
        FiltrarDataSet(plataforma,'Plataforma',[-1]);
        plataforma.Open;
    end;

    if zApruebaRequisicion.Active = False then
    begin
        zApruebaRequisicion.Active:= False;
        AsignarSQL(zApruebaRequisicion,'alm_aprueba_requisiciones',pUpdate);
        zApruebaRequisicion.Open;

        zApruebaRequisicion.Filtered := False;
        zApruebaRequisicion.Filter   := ' TipoAutorizacion = '+QuotedStr('Req');
        zApruebaRequisicion.Filtered := True;
    end;

    if zApruebaQA.Active = False then
    begin
        zApruebaQA.Active:= False;
        AsignarSQL(zApruebaQA,'alm_aprueba_requisiciones',pUpdate);
        zApruebaQA.Open;

        zApruebaQA.Filtered := False;
        zApruebaQA.Filter   := ' TipoAutorizacion = '+QuotedStr('QA');
        zApruebaQA.Filtered := True;
    end;

    if uGrupoMaterial.Active = False then
    begin
        uGrupoMaterial.Active:= False;
        AsignarSQL(uGrupoMaterial,'alm_grupos',pUpdate);
        FiltrarDataSet(uGrupoMaterial,'Id,Codigo',[-1,-1]);
        uGrupoMaterial.Open;
    end;

    if zCentroCosto.Active = False then
    begin
        zCentroCosto.Active:= False;
        AsignarSQL(zCentroCosto,'ordenesdetrabajo_reqcc',pUpdate);
        if (global_usuario= 'Mauricio') or (global_usuario = 'enrique') then
          FiltrarDataSet(zCentroCosto,'Contrato,Tipo, sIdUsuario',[global_contrato,'CENTRO_COSTO', global_usuario])
        else
          FiltrarDataSet(zCentroCosto,'Contrato,Tipo, sIdUsuario',[global_contrato,'CENTRO_COSTO', '-1']);
        zCentroCosto.Open;
    end;

    if uRequerimientosQA.Active = False then
    begin
        AsignarSQL(uRequerimientosQA,'req_control_calidad',pUpdate);
        FiltrarDataSet(uRequerimientosQA,'IdRequerimiento', ['-1']);
        uRequerimientosQA.Open;

        cxRequerimientosQA.Clear;
        while not uRequerimientosQA.Eof do
        begin
            cxRequerimientosQA.AddItem(IntToStr(uRequerimientosQA.RecNo)+'.-'+uRequerimientosQA.FieldByName('Descripcion').AsString);
            uRequerimientosQA.Next;
        end;
    end;

    if zFirma.Active = False then
    begin
        AsignarSQL(zFirma, 'rd_firmas', pUpdate);
        FiltrarDataSet(zFirma, 'IdFirma, Contrato',[-1, Global_Contrato]);
        zFirma.Open;

        zFirma.Filtered := False;
        zFirma.Filter   := 'VistaUsuario = '+ QuotedStr(self.Caption);
        zFirma.Filtered := True;
    end;

end;


end.
