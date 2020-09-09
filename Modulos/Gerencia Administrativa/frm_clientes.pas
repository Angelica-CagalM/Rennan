unit frm_clientes;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_barra, global, db, StdCtrls, unitGenerales,
  Mask, DBCtrls, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones,UnitValidaTexto, ShellApi,
  unitactivapop,StrUtils, UnitValidacion, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxGridCustomView, cxGrid, ExportaExcel, dxBarBuiltInMenu, cxPC, cxButtons,masUtilerias,
  cxPCdxBarPopupMenu, utilerias, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxLayoutcxEditAdapters, frm_barraH2, frm_barraH1, MemDS, DBAccess, Uni,
  dxLayoutContainer, cxDBEdit, cxGroupBox, dxLayoutControl, cxSplitter, cxLabel,
  dxLayoutControlAdapters, cxCheckBox, dxToggleSwitch, dxDBToggleSwitch,
  cxCalendar, frxClass, cxGridChartView, cxGridDBChartView, cxImageComboBox,
  Frm_VerPDF, System.ImageList, Vcl.ImgList, UnitMetodos, frxDBSet, UnitRH,
  cxProgressBar, Vcl.ExtDlgs,JPEG, cxCurrencyEdit, dxCheckGroupBox,
  CxGridExportLink, UnitReportes,dxDBCheckGroupBox, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon;
type
  TfrmClientes = class(TForm)
    dsClientes: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    Panel3: TPanel;
    ds_ciudades: TDataSource;
    Clientes: TUniQuery;
    zqCiudades: TUniQuery;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    ds_catalogo: TDataSource;
    catalogo: TUniQuery;
    frxReport1: TfrxReport;
    ds_filtro: TDataSource;
    filtro: TUniQuery;
    ds_codigo_postal: TDataSource;
    Codigo_postal: TUniQuery;
    dlgPDF: TFileOpenDialog;
    dlgSavePDF: TSaveDialog;
    PopupMenu1: TPopupMenu;
    VistaPrevia1: TMenuItem;
    imgStars: TcxImageList;
    frxDBClientes: TfrxDBDataset;
    Reporte: TUniQuery;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    PanelPrincipal: TPanel;
    PanelTipo: TPanel;
    Grid_Bitacora: TcxGrid;
    BView_filtro: TcxGridDBTableView;
    BView_filtroColumn2: TcxGridDBColumn;
    BView_filtroColumn1: TcxGridDBColumn;
    Grid_BitacoraLevel1: TcxGridLevel;
    cxSplitTipo: TcxSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    cxDGenerales: TcxGroupBox;
    dxLayoutControl2: TdxLayoutControl;
    cxCodigo: TcxDBTextEdit;
    cxNombre: TcxDBTextEdit;
    cxRazonSocial: TcxDBTextEdit;
    cxMail: TcxDBTextEdit;
    cxWeb: TcxDBTextEdit;
    cxRFC: TcxDBTextEdit;
    dxDBToggleSwitch1: TdxDBToggleSwitch;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    cxGDireccion: TcxGroupBox;
    dxLayoutControl4: TdxLayoutControl;
    cxCalle: TcxDBTextEdit;
    cxInterior: TcxDBTextEdit;
    cxExterior: TcxDBTextEdit;
    cxCiudad: TcxDBLookupComboBox;
    cxColonia: TcxDBTextEdit;
    cxCodigoPostal: TcxDBLookupComboBox;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxTelFijo: TcxDBTextEdit;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxSplitter1: TcxSplitter;
    grid_clientes: TcxGrid;
    cxView_Clientes: TcxGridDBTableView;
    cxView_ClientesColumn1: TcxGridDBColumn;
    cxView_ClientesColumn4: TcxGridDBColumn;
    cxView_ClientesColumn2: TcxGridDBColumn;
    cxView_ClientesColumn3: TcxGridDBColumn;
    cxView_ClientesColumn5: TcxGridDBColumn;
    cxView_ClientesColumn6: TcxGridDBColumn;
    cxView_ClientesColumn7: TcxGridDBColumn;
    grid_clientesLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxPageDetalle: TcxPageControl;
    cxPageProductos: TcxTabSheet;
    PanelDown2: TPanel;
    dxLayoutControl6: TdxLayoutControl;
    cxProducto: TcxDBLookupComboBox;
    dxPuestoActivo: TdxDBToggleSwitch;
    btnProducto: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutAutoCreatedGroup23: TdxLayoutAutoCreatedGroup;
    dxLayoutItem45: TdxLayoutItem;
    cxSplit2: TcxSplitter;
    cxGridCargos: TcxGrid;
    cxGridViewProductos: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridViewProductosColumn1: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxPageContacto: TcxTabSheet;
    cxGridContacto: TcxGrid;
    cxViewContacto: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxSplit1: TcxSplitter;
    PanelDown1: TPanel;
    dxLayoutControl5: TdxLayoutControl;
    cxContacto: TcxDBTextEdit;
    cxPuesto: TcxDBTextEdit;
    cxCorreo: TcxDBTextEdit;
    cxTelefono: TcxDBTextEdit;
    cxActivoContacto: TdxDBToggleSwitch;
    cxRegistro: TcxDBDateEdit;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    cxPageDocumentos: TcxTabSheet;
    PanelDown4: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    cxActivoDocumento: TdxDBToggleSwitch;
    cxFechaDocto: TcxDBDateEdit;
    cxDocumento: TcxDBLookupComboBox;
    cxCargarDocumento: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    cxSplit4: TcxSplitter;
    cxGridDocumentos: TcxGrid;
    cxViewDocumento: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxPageImagen: TcxTabSheet;
    contacto: TUniQuery;
    documentos: TUniQuery;
    imagen: TUniQuery;
    ds_contacto: TDataSource;
    ds_documentos: TDataSource;
    ds_imagen: TDataSource;
    catalog_docto: TUniQuery;
    ds_catalog_docto: TDataSource;
    PanelDown5: TPanel;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    PanelImagen: TPanel;
    dxLayoutItem1: TdxLayoutItem;
    PanelBoton: TPanel;
    dxLayoutItem22: TdxLayoutItem;
    bImagen: TImage;
    OpenPicture: TOpenPictureDialog;
    QryBusca: TUniQuery;
    cxPageOC: TcxTabSheet;
    PanelDown6: TPanel;
    cxGridOCDBTableView1: TcxGridDBTableView;
    cxGridOCLevel1: TcxGridLevel;
    cxGridOC: TcxGrid;
    cxSplitterOC: TcxSplitter;
    dxLayoutControl8Group_Root: TdxLayoutGroup;
    dxLayoutControl8: TdxLayoutControl;
    cmbProyecto: TcxDBLookupComboBox;
    dxLayoutItem24: TdxLayoutItem;
    cxNombreOC: TcxDBTextEdit;
    dxLayoutItem25: TdxLayoutItem;
    cxAddArchivo: TcxButton;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxColumnProyecto: TcxGridDBColumn;
    cxColumnName: TcxGridDBColumn;
    cxButton7: TcxButton;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    monedas: TUniQuery;
    cxFechaOC: TcxDBDateEdit;
    dxLayoutItem42: TdxLayoutItem;
    cxColumnFechaOCC: TcxGridDBColumn;
    uqOCC: TUniQuery;
    ds_occ: TDataSource;
    uqProyectos: TUniQuery;
    ds_proyectos: TDataSource;
    cxAplicaPR: TcxDBCheckBox;
    dxLayoutItem43: TdxLayoutItem;
    cxPR: TcxDBTextEdit;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup;
    dxLayoutItem47: TdxLayoutItem;
    dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup;
    cxAplicaHES: TcxDBCheckBox;
    cxHES: TcxDBTextEdit;
    dxLayoutItem48: TdxLayoutItem;
    dxLayoutAutoCreatedGroup18: TdxLayoutAutoCreatedGroup;
    cxColumnPR: TcxGridDBColumn;
    cxColumnHES: TcxGridDBColumn;
    productos: TUniQuery;
    producto_servicio: TUniQuery;
    ds_productos: TDataSource;
    ds_proser: TDataSource;
    dxLayoutControl10Group_Root: TdxLayoutGroup;
    dxLayoutControl10: TdxLayoutControl;
    dxLayoutItem49: TdxLayoutItem;
    cxButton3: TcxButton;
    cxGridDBColumn10: TcxGridDBColumn;
    cxMontoOC: TcxDBCurrencyEdit;
    dxLayoutItem32: TdxLayoutItem;
    cmbMoneda: TcxDBLookupComboBox;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    cxVisualiza: TcxButton;
    ds_monedas: TDataSource;
    uDoctos: TUniQuery;
    ds_doctos: TDataSource;
    cxPageInfoFiscal: TcxTabSheet;
    PanelInfoF: TPanel;
    cxSplitterIF: TcxSplitter;
    dxLayoutControl9Group_Root: TdxLayoutGroup;
    dxLayoutControl9: TdxLayoutControl;
    cmbUsoCfdi: TcxDBLookupComboBox;
    dxLayoutItem34: TdxLayoutItem;
    cmbMetodo: TcxDBLookupComboBox;
    dxLayoutItem35: TdxLayoutItem;
    cmbForma: TcxDBLookupComboBox;
    dxLayoutItem37: TdxLayoutItem;
    cxGridInfoFiscalDBTableView1: TcxGridDBTableView;
    cxGridInfoFiscalLevel1: TcxGridLevel;
    cxGridInfoFiscal: TcxGrid;
    cxColumnF1: TcxGridDBColumn;
    cxColumnF2: TcxGridDBColumn;
    cxColumnF3: TcxGridDBColumn;
    uInfoFiscal: TUniQuery;
    ds_infoFiscal: TDataSource;
    uUsos: TUniQuery;
    uMetodos: TUniQuery;
    uFormas: TUniQuery;
    ds_usos: TDataSource;
    ds_metodos: TDataSource;
    ds_formas: TDataSource;
    cxTabBancos: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    PanelInfoBancos: TPanel;
    cxSplitter2: TcxSplitter;
    gridTableCuenta: TcxGridDBColumn;
    gridTableSucursal: TcxGridDBColumn;
    gridTableClabe: TcxGridDBColumn;
    gridTableBanco: TcxGridDBColumn;
    dxLayoutControl11: TdxLayoutControl;
    cxBanco: TcxDBLookupComboBox;
    cxCLABE: TcxDBTextEdit;
    cxActivoBanco: TdxDBToggleSwitch;
    cxSucursal: TcxDBTextEdit;
    cxCuenta: TcxDBTextEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem50: TdxLayoutItem;
    dxLayoutItem51: TdxLayoutItem;
    dxLayoutItem52: TdxLayoutItem;
    dxLayoutAutoCreatedGroup19: TdxLayoutAutoCreatedGroup;
    dxLayoutItem53: TdxLayoutItem;
    dxLayoutItem54: TdxLayoutItem;
    dxLayoutAutoCreatedGroup20: TdxLayoutAutoCreatedGroup;
    cuenta_banco: TUniQuery;
    ds_cuenta_bancos: TDataSource;
    bancos: TUniQuery;
    ds: TDataSource;
    ds_bancos: TDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid_proveedoresCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure ExportaraExcel1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dxLayoutItem18CaptionClick(Sender: TObject);
    procedure BView_empresaDataControllerFilterRecord(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var Accept: Boolean);
    procedure cxView_ClientesCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxPageDetalleChange(Sender: TObject);
    procedure BView_filtroCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxCargarDocumentoClick(Sender: TObject);
    procedure cxViewDocumentoCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BView_filtroDataControllerFilterChanged(Sender: TObject);
    procedure VistaPrevia1Click(Sender: TObject);
    procedure btnProductoClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure cxButton3Click(Sender: TObject);
    procedure cxPageOCShow(Sender: TObject);
    procedure cxAddArchivoClick(Sender: TObject);
    procedure cxAplicaPRClick(Sender: TObject);
    procedure cxAplicaHESClick(Sender: TObject);
    procedure ClientesAfterScroll(DataSet: TDataSet);
    procedure cxGridOCDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton7Click(Sender: TObject);
    procedure cxVisualizaClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnExportaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes : TfrmClientes;
  Opcion         : String ;
  banderaAgregar : Boolean;
  scuentabanco,  Archivo   : string;
  bCuentasBanco  : boolean;
  titulo,titulo2,sArc : string;
  lNoGuardarDocto,bImagenDefault :boolean;
  btnPermisos     :String;

implementation
uses
    frm_connection,
    frm_pedidos,
    Func_Genericas,
    frm_catalogos_almacen, frm_Catalogos_rh_tipos, frm_Presupuesto,
  Frm_BancosMovimientos;
{$R *.dfm}

procedure TfrmClientes.EnterControl(Sender: TObject);
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

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmClientes.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
    try
      Panel2.Visible := False;
      cxSplitter1.Visible := False;

      titulo2:='Producto/Servicio';
      cxLeyenda2.Caption:=titulo2;

      cxSplitterOpciones.Visible := False;
      PanelDetalle.Visible       := False;

      titulo:='Clientes';
      cxLeyenda.Caption:=titulo;
      frmBarraH21.btnCancel.Click ;

      Clientes.Active := False ;
      AsignarSQL(Clientes,'master_clientes',pUpdate);
       if ((connection.uContrato.FieldByName('FK_Titulo').AsString = 'SUBSEA 7') or
              (connection.uContrato.FieldByName('FK_Titulo').AsString = 'CMMI')) then
      FiltrarDataSet(Clientes, 'IdCliente',['-1'])
      else
      FiltrarDataSet(Clientes, 'IdCliente,Empresa',['-1',connection.uContrato.FieldByName('IdEmpresa').AsInteger]);
      Clientes.Open;

      zqCiudades.Active := False;
      AsignarSQL(zqCiudades,'master_ciudad',pUpdate);
      FiltrarDataSet(zqCiudades, 'IdCiudad,IdEstado,Activo',['-1','-1','Si']);
      zqCiudades.Open;

      catalogo.Active := False ;
      AsignarSQL(catalogo,'master_producto_servicio',pUpdate);
      FiltrarDataSet(catalogo, 'Activo',['Si']);
      catalogo.Open;

      filtro.Active := False ;
      AsignarSQL(filtro,'filtro_master_cliente_producto',pUpdate);
      FiltrarDataSet(filtro, 'Activo',['Si']);
      filtro.Open;

      codigo_postal.Active := False ;
      AsignarSQL(codigo_postal,'master_codigo_postal',pUpdate);
      FiltrarDataSet(codigo_postal, 'Activo',['Si']);
      codigo_postal.Open;

      catalog_docto.Active:=False;
      AsignarSQL(catalog_docto,'rhu_documento',pUpdate);
      FiltrarDataSet(catalog_docto,'Id,Codigo,Documento,Tipo,Periodo,Activo',[-1,-1,-1,'Clientes',-1,'Si']);
      catalog_docto.Open;

      productos.Active := False ;
      AsignarSQL(productos,'master_producto_servicio',pUpdate);
      FiltrarDataSet(productos, 'Activo',['Si']);
      productos.Open;

      bancos.Active := False ;
      AsignarSQL(bancos,'rhu_bancos',pUpdate);
      FiltrarDataSet(bancos, 'IdBanco,Clave,Corto,RazonSocial',[-1,-1,-1,-1]);
      bancos.Open;

//      cxPageDetalle.ActivePageIndex := 0;
      PermisosBotones(frmClientes,btnPermisos);
    except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de clientes', 'Al iniciar el formulario', 0);
    end;
 end;

// guardar_leer_grid(BView_filtro,frmClientes,0) ;
// guardar_leer_grid(cxView_Clientes,frmClientes,0) ;
// guardar_leer_grid(cxGridViewProductos,frmClientes,0) ;
// guardar_leer_grid(cxGridOCDBTableView1,frmClientes,0) ;
// guardar_leer_grid(cxGridInfoFiscalDBTableView1,frmClientes,0);
// guardar_leer_grid(cxGrid1DBTableView1,frmClientes,0);
// guardar_leer_grid(cxViewContacto,frmClientes,0);
// guardar_leer_grid(cxViewDocumento,frmClientes,0);
end;

procedure TfrmClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//      guardar_leer_grid(BView_filtro,frmClientes,1) ;
//      guardar_leer_grid(cxView_Clientes,frmClientes,1) ;
//      guardar_leer_grid(cxGridViewProductos,frmClientes,1) ;
//      guardar_leer_grid(cxGridOCDBTableView1,frmClientes,1) ;
//      guardar_leer_grid(cxGridInfoFiscalDBTableView1,frmClientes,1);
//      guardar_leer_grid(cxGrid1DBTableView1,frmClientes,1);
//      guardar_leer_grid(cxViewContacto,frmClientes,1);
//      guardar_leer_grid(cxViewDocumento,frmClientes,1);

      Clientes.Cancel ;
      action := cafree ;
end;

procedure TfrmClientes.grid_proveedoresCellClick(Column: TColumn);
begin
  if frmBarraH21.btnCancel.Enabled = True then
    frmBarraH21.btnCancel.Click
end;

procedure TfrmClientes.cxViewDocumentoCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if documentos.RecordCount > 0 then
  begin
    if not documentos.FieldByName('DocumentoDigital').IsNull then
    begin
      if not documentos.FieldByName('NombreDocto').IsNull then
        global_Temp := documentos.FieldByName('NombreDocto').AsString
      else
        global_Temp := 'docto_cli_'+Clientes.FieldByName('Codigo').AsString+'.pdf';

      TBlobField(documentos.FieldByName('DocumentoDigital')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp );
      Application.CreateForm(TFrmVerPDF, FrmVerPDF);
      FrmVerPDF.Caption := global_Temp;
      FrmVerPDF.ShowModal;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;
end;

procedure TfrmClientes.cxView_ClientesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if cxView_Clientes.OptionsView.CellAutoHeight then
       cxView_Clientes.OptionsView.CellAutoHeight := False
    else
       cxView_Clientes.OptionsView.CellAutoHeight := True;
end;

procedure TfrmClientes.cxVisualizaClick(Sender: TObject);
begin
  {Sólo se visualiza la información, en el panel}
  if cxPageDetalle.ActivePage = cxPageOC then begin
      if PanelDown6.Visible then begin
        PanelDown6.Visible:=False;
        cxSplitterOC.Visible:=False;
        cxAddArchivo.Enabled:=True;
        cxButton7.Enabled:=True;
        cxNuevoDetalle.Enabled := True;
        cxEditaDetalle.Enabled := True;
      end
      else begin
        if uqOCC.RecordCount > 0 then begin
          AsignarSQL(uqProyectos,'ordenesdetrabajo',pUpdate);
          FiltrarDataSet(uqProyectos,'Contrato',[GLOBAL_CONTRATO]);
          uqProyectos.Open;

          AsignarSQL(monedas,'master_moneda',pUpdate);
          FiltrarDataSet(monedas,'IdMoneda,Codigo,Activo',[-1,-1,'Si']);
          monedas.Open;

          PanelDown6.Visible:=True;
          cxSplitterOC.Visible:=True;
          cxAplicaPR.OnClick(Sender);
          cxAplicaHES.OnClick(Sender);

          cxAddArchivo.Enabled:=False;
          cxButton7.Enabled:=False;
          cxNuevoDetalle.Enabled := False;
          cxEditaDetalle.Enabled := False;
        end
        else begin
          MessageDlg('No hay información que mostrar', mtInformation, [mbOk], 0);
        end;
      end;
    end;
end;

procedure TfrmClientes.frmBarra1btnAddClick(Sender: TObject);
begin
  try
       frmBarraH11.btnAddClick(Sender);
       grid_clientes.Enabled:=false;
       Clientes.Append ;
       Clientes.FieldValues['Calle'] := '-';
       Clientes.FieldValues['Interior'] := '0';
       Clientes.FieldValues['Exterior'] := '0';
       Clientes.FieldValues['Colonia'] := '-';
       Clientes.FieldValues['CodigoPostal'] := '00000';
       Clientes.FieldValues['IdCiudad']    := '0';
       Clientes.FieldValues['IdEstado']    := '0';
       Clientes.FieldValues['Rfc']         := '-';
       Clientes.FieldValues['Telefono']   := '(000)0000000';
       cxCiudad.DataBinding.DataSource.DataSet.FieldByName('IdCiudad').AsInteger := zqCiudades.FieldByName('IdCiudad').AsInteger;

     except
     on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Clientes', 'Al agregar registro ', 0);
     end;
  end;
  frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmClientes.frmBarra1btnEditClick(Sender: TObject);
begin

   banderaAgregar:=false;
   frmBarraH11.btnEditClick(Sender);

   try
      Clientes.Edit ;
      grid_clientes.Enabled:=false;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Clientes', 'Al editar registro', 0);
          frmBarraH21.btnCancel.Click ;
      end;
   end ;

     frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmClientes.frmBarra1btnPostClick(Sender: TObject);
var
    nombres, cadenas: TStringList;
    sId : string;
begin
    //empieza validacion
    nombres:=TStringList.Create;  cadenas:=TStringList.Create;

    nombres.Add('Nombre');
    nombres.Add('Razon Social');
    nombres.Add('RFC');
    nombres.Add('Calle');
    nombres.Add('No. Interior');
    nombres.Add('No. Exterior');
    nombres.Add('Colonia');
    nombres.Add('C.P.');
    nombres.Add('Ciudad');
    cadenas.Add(cxCiudad.Text);

     if Clientes.State = dsInsert then
       if ValidaExiste('', 'master_pais', 'Codigo', Clientes.FieldByName('Codigo').AsString, 'Código') then
          exit;

    //continuainserccion de datos
     try
        if not validaTexto(nombres, cadenas, 'Codigo', cxCodigo.Text) then
        begin
            MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
            exit;
        end;
        sId := Clientes.FieldByName('Codigo').AsString;
        Clientes.Post ;

        Clientes.Locate('codigo', sId,[]);

     except
       on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al salvar registro', 0);
          frmBarraH21.btnCancel.Click ;
       end;
     end;

     grid_clientes.Enabled:=True;
     frmBarraH21.btnCancel.Click;
     frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmClientes.frmBarra1btnCancelClick(Sender: TObject);
begin
 try
  frmBarraH21.btnCancelClick(Sender);
  Clientes.Cancel ;
  grid_clientes.Enabled:=True;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Clientes', 'Al cancelar', 0);
  end;
 end;
 frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmClientes.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if cxView_Clientes.DataController.DataSource.DataSet.IsEmpty=false then
  begin
    if cxView_Clientes.DataController.DataSource.DataSet.RecordCount>0 then
    begin

      if MessageDlg('Desea eliminar el Registro Activo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        begin


            try
              Clientes.Delete ;

              if (global_frmActivo = 'frm_pedidos') then
              begin
                frmPedidos.Proveedores.Refresh;
//                frmPedidos.tsIdProveedor.SetFocus;
              end;

            except
              on e : exception do
              begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Clientes', 'Al eliminar registro', 0);
              end;
            end

        end;
      end;
    end;
  end;
  if (global_frmActivo = 'frm_consumibles') or (global_frmActivo = 'frm_pedidos') then
  begin
   global_frmActivo := 'ninguno';
   frmBarraH21.btnCancel.Click;
  end;
end;

procedure TfrmClientes.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  Clientes.Active := False ;
  Clientes.Open
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Clientes', 'Al actualizar grid', 0);
  end;
 end;
end;

procedure TfrmClientes.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  ;
end;

//procedure TfrmProveedores.frmBarra1btnExitClick(Sender: TObject);
//begin
//   frmBarraH11.btnExitClick(Sender);
//   close
//end;

procedure TfrmClientes.Insertar1Click(Sender: TObject);
begin
    frmBarraH11.btnAdd.Click
end;

procedure TfrmClientes.Editar1Click(Sender: TObject);
begin
    frmBarraH11.btnEdit.Click
end;

procedure TfrmClientes.Registrar1Click(Sender: TObject);
begin
    frmBarraH21.btnPost.Click
end;

procedure TfrmClientes.btnAddClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    cxSplitter1.Visible := True;
    grid_clientes.Enabled:=False;
    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;
    Clientes.Append;
    Clientes.FieldByName('Codigo').AsString := autoFolio(Clientes, 'master_clientes');
    cxCodigoPostal.DataBinding.DataSource.DataSet.FieldByName('IdCodigoPostal').AsInteger := codigo_postal.FieldByName('IdCodigoPostal').AsInteger;
     if ((connection.uContrato.FieldByName('FK_Titulo').AsString <> 'SUBSEA 7') or
              (connection.uContrato.FieldByName('FK_Titulo').AsString <> 'CMMI')) then
    Clientes.FieldByName('IdEmpresa').AsInteger:=connection.uContrato.FieldByName('IdEmpresa').AsInteger;
    cxRFC.SetFocus;
    cxCodigo.Properties.ReadOnly := True;
end;

procedure TfrmClientes.btnCancelClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    cxSplitter1.Visible := False;
    frmBarraH11.btnActive;
    grid_clientes.Enabled:=True;
    dsClientes.DataSet.Cancel;
end;

procedure TfrmClientes.btnDeleteClick(Sender: TObject);
var
  contReg: Integer;
  busca : TUniquery;
  msjError : String;
begin
    If Clientes.RecordCount  > 0 then begin
      busca := TuniQuery.Create(nil);
      busca.Connection:=Connection.Uconnection;
      contReg:=0;
      msjError := '';
      if MessageDlg('Desea eliminar el Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then  begin
        try
          busca.SQL.Clear;
          busca.SQL.Text:='SELECT * FROM alm_aviso_embarque WHERE IdCliente = '+Clientes.FieldByName('IdCliente').AsString;
          busca.Open;
          contReg:=busca.RecordCount;

          busca.SQL.Clear;
          busca.SQL.Text:='SELECT * FROM master_cliente_contacto WHERE IdCliente = '+Clientes.FieldByName('IdCliente').AsString;
          busca.Open;
          contReg:=contReg+busca.RecordCount;

          busca.SQL.Clear;
          busca.SQL.Text:='SELECT * FROM master_cliente_satisfaccion_detalle WHERE IdCliente = '+Clientes.FieldByName('IdCliente').AsString;
          busca.Open;
          contReg:=contReg+busca.RecordCount;

          busca.SQL.Clear;
          busca.SQL.Text:='SELECT * FROM master_clientes_fac WHERE IdCliente = '+Clientes.FieldByName('IdCliente').AsString;
          busca.Open;
          contReg:=contReg+busca.RecordCount;

          busca.SQL.Clear;
          busca.SQL.Text:='SELECT * FROM master_clientes_infofiscal WHERE IdCliente = '+Clientes.FieldByName('IdCliente').AsString;
          busca.Open;
          contReg:=contReg+busca.RecordCount;

          busca.SQL.Clear;
          busca.SQL.Text:='SELECT * FROM master_clientes_oc WHERE IdCliente = '+Clientes.FieldByName('IdCliente').AsString;
          busca.Open;
          contReg:=contReg+busca.RecordCount;

          busca.SQL.Clear;
          busca.SQL.Text:='SELECT * FROM master_clientes_proser WHERE  IdCliente = '+Clientes.FieldByName('IdCliente').AsString;
          busca.Open;
          contReg:=contReg+busca.RecordCount;

          busca.SQL.Clear;
          busca.SQL.Text:='SELECT * FROM master_docto_cliente WHERE IdCliente = '+Clientes.FieldByName('IdCliente').AsString;
          busca.Open;
          contReg:=contReg+busca.RecordCount;

          if contReg > 0  then
            raise Exception.Create('El cliente seleccionado aún tiene registros ligados.');
          Clientes.Delete;
          Clientes.ApplyUpdates();
          Clientes.Refresh;
        except
          on E : exception do begin
             UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Clientes', 'Al eliminar registro', 0);
          end;
        end;
      end;
      busca.Destroy;
    end;
end;

procedure TfrmClientes.btnDetalleClick(Sender: TObject);
begin
    cxPageDetalle.ActivePageIndex := 0;
   PanelDown.Visible :=False;
   if PanelDetalle.Visible then
   begin
       cxSplitterOpciones.Visible := False;
       PanelDetalle.Visible       := False;
   end
   else
   begin
       PanelDetalle.Visible       := True;
       cxSplitterOpciones.Visible := True;
   end;

   if PanelDetalle.Visible then
     cxPageDetalle.OnChange(sender);
end;

procedure TfrmClientes.btnEditClick(Sender: TObject);
begin
  if Clientes.RecordCount > 0  then begin
    cxLeyenda.Caption:=titulo+'[Editando]';
    frmBarraH11.btnAddClick(Sender);
    Panel2.Visible:=True;
    cxSplitter1.Visible := True;
    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;
    grid_clientes.Enabled:=False;
    Clientes.Edit;
    cxNombre.SetFocus;
    cxCodigo.Properties.ReadOnly := False;
  end
  else
    MessageDlg('No hay datos para editar',mtInformation, [mbOk], 0);
end;

procedure TfrmClientes.btnExportaClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
  dlgSave : TSaveDialog;
begin
  dlgSave := TSaveDialog.Create(nil);
  dlgSave.FileName := 'Salidas de Almacen';
  if dlgSave.Execute then
  begin
    rutaArchivo := dlgSave.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, grid_clientes);
    dlgSave.Destroy;
    if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;

end;

procedure TfrmClientes.btnPostClick(Sender: TObject);
var
   RefrescaRegistro:  TBookmark;
   Temp:TUniQuery;
   sTexto:String;
   sId  : Integer;
begin
      cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    frmBarraH11.btnActive;
    if cxCiudad.EditValue = null then
    sTexto := '0'
    else
    sTexto := CxCiudad.EditValue;
    Temp:=TUniQuery.Create(Self);
    Temp.Connection:=connection.Uconnection;
    Temp.Active:=False;
    Temp.SQL.Text:='Select * from master_ciudad where IdCiudad = :Ciudad';
    Temp.Params.ParamByName('Ciudad').AsString:=sTexto;
    Temp.Open;
    grid_clientes.Enabled:=True;
    Clientes.FieldByName('IdEstado').AsInteger:= Temp.FieldByName('IdEstado').AsInteger;

    try
     Clientes.Post;
      sId := Clientes.FieldByName('IdCliente').AsInteger;
      if global_frmActivo = 'frmPresupuesto' then
      begin
       try
           frmPresupuesto.zClientes.Refresh;
           frmPresupuesto.lcbClientes.DataBinding.DataSource.DataSet.FieldByName('IdCliente').AsInteger :=sId;
           frmPresupuesto.lcbClientes.SetFocus;
         //  Close;
       Except
       end;
      end;

      if global_frmActivo = 'frmBancosMovimientos' then
      begin
       try
           frmBancosMovimientos.Clientes.Refresh;
           frmBancosMovimientos.cxIdCliente.DataBinding.DataSource.DataSet.FieldByName('IdCliente').AsInteger :=sId;
           frmBancosMovimientos.cxIdCliente.SetFocus;
         //  Close;
       Except
       end;

      end;

       except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clientes', 'Al salvar registro', 0);
          frmBarraH21.btnCancel.Click ;
       end;
   end;



    Temp.Destroy;
    RefrescaRegistro := cxView_clientes.DataController.DataSource.DataSet.GetBookmark;
    try
       Clientes.Refresh ;
       try
          cxView_clientes.DataController.DataSource.DataSet.GotoBookmark(RefrescaRegistro);
       except
       else
           cxView_clientes.DataController.DataSet.FreeBookmark(RefrescaRegistro);
       end;
     finally
    end;


      //desactivapop(popupprincipal);

//      Clientes.Post ;
//      Insertar1.Enabled := True ;
//      Editar1.Enabled := True ;
//      Registrar1.Enabled := False ;
//      Can1.Enabled := False ;
//      Eliminar1.Enabled := True ;
//      Refresh1.Enabled := True ;
//      Salir1.Enabled := True ;
//      grid_ubicacion_frentes.Enabled := True;

//      if global_frmActivo = 'frmPresupuesto' then
//      begin
//       try
//           frmPresupuesto.zClientes.Refresh;
//           frmPresupuesto.lcbClientes.DataBinding.DataSource.DataSet.FieldByName('IdCliente').AsInteger :=sId;
//           frmPresupuesto.lcbClientes.SetFocus;
//           Close;
//       Except
//       end;
//      end;

     PermisosBotones(frmclientes,btnPermisos);

end;

procedure TfrmClientes.BView_empresaDataControllerFilterRecord(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var Accept: Boolean);
begin
    if BView_filtro.DataController.Filter.FilterText <> '' then
    begin
      if global_lock_filter <>  BView_filtro.DataController.Filter.FilterText then
      begin
          filtro.Filtered := False;
          filtro.Filter   := BView_filtro.DataController.Filter.FilterText;
          filtro.FilterOptions:=[foCaseInsensitive];
          filtro.Filtered := True;

          Clientes.Filtered := False;
          Clientes.Filter   := CreaFiltroCampo('IdCliente','IdCliente',filtro);
          Clientes.Filtered := True;

          global_lock_filter := BView_filtro.DataController.Filter.FilterText;
      end;
    end;
end;

procedure TfrmClientes.BView_filtroCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    if BView_filtro.DataController.Filter.FilterText = '' then
    begin
        Clientes.Filtered := False;
    end;

end;

procedure TfrmClientes.BView_filtroDataControllerFilterChanged(
  Sender: TObject);
begin
   if BView_filtro.DataController.Filter.FilterText = '' then
      if filtro.RecordCount > 0 then
         Clientes.Filtered := False;
end;

procedure TfrmClientes.Can1Click(Sender: TObject);
begin
    frmBarraH21.btnCancel.Click
end;

procedure TfrmClientes.ClientesAfterScroll(DataSet: TDataSet);
var
  bS: TStream;
  Pic: TJPEGImage;
  BlobField: tField;
  bMostrar: boolean;
  IdImagen:String;
begin
   if PanelDetalle.Visible then
   begin
       if cxPageDetalle.ActivePage = cxPageProductos then
       begin
           producto_servicio.Active := False ;
           AsignarSQL(producto_servicio,'master_proser_cliente',pUpdate);
           FiltrarDataSet(producto_servicio, 'Id,Cliente,ProSer,Activo',[-1,Clientes.FieldByName('IdCliente').AsInteger,-1,-1]);
           producto_servicio.Open;
       end;

       if cxPageDetalle.ActivePage = cxPageContacto then
       begin
           contacto.Active := False ;
           AsignarSQL(contacto,'detalle_master_cliente_contacto',pUpdate);
           FiltrarDataSet(contacto, 'IdCliente',[clientes.FieldByName('IdCliente').AsInteger]);
           contacto.Open;
       end;

        if cxPageDetalle.ActivePage = cxPageDocumentos then
       begin
           documentos.Active := False ;
           AsignarSQL(documentos,'detalle_master_cliente_docto',pUpdate);
           FiltrarDataSet(documentos, 'IdCliente,Activo',[clientes.FieldByName('IdCliente').AsInteger,'-1']);
           documentos.Open;
       end;

       if cxPageDetalle.ActivePage = cxPageImagen then
       begin
            QryBusca.Active := False;
            QryBusca.SQL.Clear;
            QryBusca.SQL.Add('select Imagen from master_clientes where IdCliente = :Id');
            QryBusca.Params.ParamByName('Id').AsInteger := dsClientes.DataSet.FieldByName('IdCliente').AsInteger;
            QryBusca.Open;

            if QryBusca.RecordCount > 0 then
            begin
              bImagen.Picture.Bitmap := nil;

              BlobField := QryBusca.FieldByName('Imagen');
              BS := QryBusca.CreateBlobStream(BlobField, bmRead);
              if bs.Size > 15 then
              begin
                try
                    pic := TJPEGImage.Create;
                  try
                    Pic.LoadFromStream(bS);
                    bImagen.Picture.Graphic := Pic;
                  finally
                    Pic.Free;
                  end;
                finally
                  bS.Free
                end;
                bImagenDefault := True;
              end
              else
                bMostrar := True;
            end
            else
              bMostrar := True;

            if bMostrar = True then
            begin
              //muestraImagen;
              bImagenDefault := False;
            end;
        end;

       if cxPageDetalle.ActivePage = cxPageOC then begin
         cxPageOC.OnShow(nil);
       end;

       if cxPageDetalle.ActivePage = cxPageInfoFiscal then begin
        titulo2:= 'Información Fiscal';
        cxLeyenda2.Caption:=titulo2;
        AsignarSQL(uUsos,'cfdi_uso',pUpdate);
        uUsos.Open;

        AsignarSQL(uMetodos,'cfdi_metodopago',pUpdate);
        uMetodos.Open;

        AsignarSQL(uFormas,'cfdi_formapago',pUpdate);
        uFormas.Open;

        AsignarSQL(uInfoFiscal,'master_clientes_infofiscal',pUpdate);
        FiltrarDataSet(uInfoFiscal,'Id,Cliente,Uso,Forma,Metodo',[-1,Clientes.FieldByName('IdCliente').AsInteger,-1,-1,-1]);
        uInfoFiscal.Open;
      end;
   end;
end;

procedure TfrmClientes.Eliminar1Click(Sender: TObject);
begin
    frmBarraH11.btnDelete.Click
end;

procedure TfrmClientes.ExportaraExcel1Click(Sender: TObject);
begin
//  ExportExcelPersonalizado(zq_contratos,grid_proveedoresDBTableView1,'Proveedores','Catalogo de Proveedores');
end;

procedure TfrmClientes.Refresh1Click(Sender: TObject);
begin
//    frmBarraH11.btnRefresh.Click
end;

procedure TfrmClientes.Imprimir1Click(Sender: TObject);
begin
    frmBarraH11.btnPrinter.Click
end;

procedure TfrmClientes.Salir1Click(Sender: TObject);
begin
//    frmBarraH11.btnExit.Click
end;

procedure TfrmClientes.VistaPrevia1Click(Sender: TObject);
begin
  {if documentos.RecordCount > 0 then
  begin
    if not documentos.FieldByName('DocumentoDigital').IsNull then
    begin
      if not documentos.FieldByName('NombreDocto').IsNull then
        global_Temp := documentos.FieldByName('NombreDocto').AsString
      else
        global_Temp := 'docto_prov_'+proveedores.FieldByName('Codigo').AsString+'.pdf';

      TBlobField(documentos.FieldByName('DocumentoDigital')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp );
      Application.CreateForm(TFrmVerPDF, FrmVerPDF);
      FrmVerPDF.Caption := global_Temp;
      FrmVerPDF.ShowModal;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;}
end;

procedure TfrmClientes.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmClientes.btnPrinterClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
  dlgSave : TSaveDialog;
begin
  dlgSave := TSaveDialog.Create(nil);
  dlgSave.FileName := 'Salidas de Almacen';
  if dlgSave.Execute then
  begin
    rutaArchivo := dlgSave.FileName + '.pdf';
    dxComponentPrinter1Link1.ReportTitle.Text := 'Listado de Clientes';
    dxComponentPrinter1.ExportToPDF(rutaArchivo,False);
    //ExportGridToExcel(rutaArchivo, grid_clientes);
    dlgSave.Destroy;
    if MessageDlg('¿Desea abrir el documento de PDF exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;

end;



//      IsOpen:=False;
//    generar_reporte_grid(cxView_Clientes,'Reporte General de Clientes.');
//    IsOpen:=True;
//
//  if clientes.RecordCount > 0  then
//  begin
//
//    IsOpen:=False;
//    generar_reporte_grid(cxView_Clientes,'Reporte General de Clientes.');
//    IsOpen:=True;
//
//     BarraMostrar(True,progreso, LabelProceso);
//    AsignarSQL(Reporte,'master_clientes',pUpdate);
//    Reporte.Open;
//
//    frxDBClientes.DataSet := Reporte;
//    frxDBClientes.FieldAliases.Clear;
//
//    if Reporte.RecordCount > 0 then
//    begin
//   //   ReporteClientes(Reporte, frmClientes, frxReport1.OnGetValue, progreso);
//    end;
//    BarraMostrar(False,progreso, LabelProceso);
//  end;

//end;

procedure TfrmClientes.btnProductoClick(Sender: TObject);
begin
  {if (productos.State = dsInsert ) or (productos.State = dsEdit) then
   begin
       global_frmActivo := 'frmProveedores';

       if not MostrarFormChild('frmCatalogosAlmacen', global_dxBarManagerPrincipal ) then
       begin
          global_indexactivo:= 8;
          Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
          frmCatalogosAlmacen.show;
       end;
   end;}
end;

procedure TfrmClientes.btnRefreshClick(Sender: TObject);
begin
   Clientes.Refresh;
end;

procedure TfrmClientes.cxButton1Click(Sender: TObject);
begin
  if (Clientes.State = dsInsert ) or (Clientes.State = dsEdit) then begin
       global_frmActivo := 'frmClientes';

       if not MostrarFormChild('frmCatalogosRHTipos', global_dxBarManagerPrincipal ) then
       begin
          global_indexactivo:= 14;
          Application.CreateForm(TfrmCatalogosRHTipos, frmCatalogosRHTipos);
          frmCatalogosRHTipos.show;
       end;
   end;
end;

procedure TfrmClientes.cxButton2Click(Sender: TObject);
begin
   if (Clientes.State = dsInsert ) or (Clientes.State = dsEdit) then begin
       global_frmActivo := 'frmClientes';

       if not MostrarFormChild('frmCatalogosRHTipos', global_dxBarManagerPrincipal  ) then
       begin
          global_indexactivo:= 6;
          Application.CreateForm(TfrmCatalogosRHTipos, frmCatalogosRHTipos);
          frmCatalogosRHTipos.show;
       end;
   end;
end;

procedure TfrmClientes.cxButton3Click(Sender: TObject);
var
  size: Real;
begin
    bImagen.Picture.Bitmap := nil;
    OpenPicture.Title := 'Inserta Imagen';
    OpenPicture.Filter := 'Archivos de Imagen JPG (*.jpg)|*.JPG| Archivos de Imagen JPEG (*.jpeg)|*.JPEG';
    sArc := '';
    if OpenPicture.Execute then
    begin
      try
        sArc := RedimensionarJPG(OpenPicture.FileName);
        size := Tamanyo(sArc);
        if size <= 350 then
         begin
          bImagen.Picture.LoadFromFile(OpenPicture.FileName);
          Imagen.Active:=False;
          Imagen.SQL.Clear;
          Imagen.SQL.Add('Update master_clientes set Imagen = :img where IdCliente = :Id');
          Imagen.Params.ParamByName('img').LoadFromFile(sArc, ftGraphic);
          Imagen.Params.ParamByName('Id').AsInteger:=Clientes.FieldByName('IdCliente').AsInteger;
          Imagen.ExecSQL;
         end
        else
          MessageDlg('La imagen a adjuntar no debe ser mayor a 350 kb.', mtInformation, [mbOk], 0);
      except
        MessageDlg('¡El tipo de archivo no es compatible!',mtError,[mbOk],0);
      end
    end;
end;

procedure TfrmClientes.cxButton7Click(Sender: TObject);
begin
  if not mostrarFormChild('frmPresupuesto',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos:= 'btnFolios';
     Application.CreateForm(TfrmPresupuesto, frmPresupuesto);
     frmPresupuesto.show;
  end ;
end;

procedure TfrmClientes.cxAddArchivoClick(Sender: TObject);
begin
  try
    dlgPDF.FileName:='';
    if not dlgPDF.Execute() then
      exit;

    if not FileExists(dlgPDF.FileName) then
      raise Exception.Create('No se encontró el archivo espcificado');

    if (ExtractFileExt(dlgPDF.FileName) <> '.PDF') AND (ExtractFileExt(dlgPDF.FileName) <> '.pdf') then
      raise Exception.Create('El tipo de archivo no es válido');

    TBlobField(uqOCC.FieldByName('Archivo')).LoadFromFile(dlgPDF.FileName);

    except on e:exception do begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
    end;
  end;

end;

procedure TfrmClientes.cxAplicaHESClick(Sender: TObject);
begin
  if cxAplicaHES.Checked then begin
    dxLayoutItem48.Visible:=True;
  end
  else begin
    dxLayoutItem48.Visible:=False;
    if uqOCC.State in [dsInsert,dsEdit] then
      uqOCC.FieldByName('HES').AsString := 'N/A';
  end;
end;

procedure TfrmClientes.cxAplicaPRClick(Sender: TObject);
begin
  cxAplicaPR.EditingValue;
  if cxAplicaPR.Checked then begin
    dxLayoutItem46.Visible:=True;
  end
  else begin
    dxLayoutItem46.Visible:=False;
    if uqOCC.State in [dsInsert,dsEdit] then
      uqOCC.FieldByName('PR').AsString:='N/A';
  end;
end;

procedure TfrmClientes.cxCancelarDetalleClick(Sender: TObject);
begin
  {$region 'Boton cancelar detalle'}
   cxLeyenda2.Caption := titulo2;
   if cxPageDetalle.ActivePage = cxPageProductos then
   begin
       producto_servicio.Cancel;
       cxSplit2.Visible   := False;
       PanelDown2.Visible := False;
   end;

   if cxPageDetalle.ActivePage = cxPageContacto then
   begin
       contacto.Cancel;
       cxSplit1.Visible   := False;
       PanelDown1.Visible := False;
   end;

   if cxPageDetalle.ActivePage = cxPageDocumentos then
   begin
       uDoctos.Cancel;
       cxSplit4.Visible   := False;
       PanelDown4.Visible := False;
   end;


   if cxPageDetalle.ActivePage = cxPageOC then begin
      if uqOCC.State in [dsInsert,dsEdit] then
        uqOCC.Cancel;
      cxSplitterOC.Visible:=False;
      PanelDown6.Visible:=False;
   end;

   if cxPageDetalle.ActivePage = cxPageInfoFiscal then begin
      PanelInfoF.Visible:=False;
      cxSplitterIF.Visible:=False;
      uInfoFiscal.Cancel;
   end;

   if cxPageDetalle.ActivePage = cxTabBancos then
   begin
       cuenta_banco.Cancel;
       cxSplit2.Visible   := False;
       PanelInfoBancos.Visible := False;
   end;



   PanelDown.Visible := False;
   cxNuevoDetalle.Enabled := True;
   cxEditaDetalle.Enabled := True;
   cxVisualiza.Enabled    := True;

   PermisosBotones(frmClientes,btnPermisos);
  {$endregion}
end;

procedure TfrmClientes.cxCargarDocumentoClick(Sender: TObject);
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

    if ( Ext <> '.PDF' ) and ( Ext <> '.pdf' ) then
      raise exception.Create('El archivo no es valido');

//    if (documentos.State = dsEdit) or (documentos.State <> dsInsert) then
//       documentos.Edit;
//
    udoctos.FieldByName('NombreDocto').AsString := ExtractFileName(Archivo);
    TBlobField(udoctos.FieldByName('DocumentoDigital')).LoadfromFile(archivo);

  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
    end;
  end;
  {$endregion}
end;

procedure TfrmClientes.cxEditaDetalleClick(Sender: TObject);
begin
    {$region 'Boton edita detalle'}
   cxNuevoDetalle.Enabled := False;
   cxEditaDetalle.Enabled := False;
   cxVisualiza.Enabled    := False;
   PanelDown.Visible := True;
   if cxPageDetalle.ActivePage = cxPageProductos then
   begin
       cxLeyenda2.Caption:=titulo2+'[Editando]';
       producto_servicio.Edit;
       PanelDown2.Visible := True;
       cxSplit2.Visible   := True;
   end;

   if cxPageDetalle.ActivePage = cxPageContacto then
   begin
       cxLeyenda2.Caption:=titulo2+'[Editando]';
       contacto.Edit;
       cxSplit1.Visible   := True;
       PanelDown1.Visible := True;
   end;

    if cxPageDetalle.ActivePage = cxPageDocumentos then
   begin
       cxLeyenda2.Caption:=titulo2+'[Editando]';
       udoctos.Edit;
       cxSplit4.Visible   := True;
       PanelDown4.Visible := True;
   end;

   if cxPageDetalle.ActivePage = cxPageImagen then
   begin
       cxLeyenda2.Caption:=titulo2+'[Editando]';
       imagen.Edit;
//       cxSplit5.Visible   := True;
//       PanelDown5.Visible := True;
   end;

   if cxPageDetalle.ActivePage = cxPageOC then begin
       cxLeyenda2.Caption := titulo2+'[Editando]';
       if uqOCC.RecordCount <= 0 then begin
          MessageDlg('No hay datos para editar',mtWarning,[mbOK],0);
          cxCancelarDetalleClick(Sender);
       end
       else begin
          cxSplitterOC.Visible := True;
          PanelDown6.Visible   := True;

          uqProyectos.Active:=False;
          AsignarSQL(uqProyectos,'ordenesdetrabajo',pUpdate);
          FiltrarDataSet(uqProyectos,'Contrato',[GLOBAL_CONTRATO]);
          uqProyectos.Open;

          uqOCC.Edit;
          cxAplicaPR.OnClick(sender);
          cxAplicaHES.OnClick(sender);
       end;
   end;

   if cxPageDetalle.ActivePage = cxPageInfoFiscal then begin
      cxLeyenda2.Caption := titulo2+'[Editando]';
      PanelInfoF.Visible:=True;
      cxSplitterIF.Visible:=True;
      if uInfoFiscal.RecordCount < 0 then begin
        MessageDlg('No hay datos para editar',mtInformation,[mbOk],0);
        cxCancelarDetalleClick(Sender);
      end
      else begin
        uInfoFiscal.Edit;
        cmbUsoCfdi.SetFocus;
      end;
   end;

   if cxPageDetalle.ActivePage = cxTabBancos then
   begin
       cxLeyenda2.Caption:=titulo2+'[Editando]';
       cuenta_banco.Edit;
       cxSplitter2.Visible   := True;
       PanelInfoBancos.Visible := True;
   end;

   {$endregion}
end;

procedure TfrmClientes.cxGridOCDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if uqOCC.RecordCount > 0 then
  begin
    if not uqOCC.FieldByName('Archivo').IsNull then
    begin
      if not uqOCC.FieldByName('NombreArchivo').IsNull then
        global_Temp := uqOCC.FieldByName('NombreArchivo').AsString
      else
        global_Temp := 'Orden de Compra.pdf';

      TBlobField(uqOCC.FieldByName('Archivo')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp );
      Application.CreateForm(TFrmVerPDF, FrmVerPDF);
      FrmVerPDF.Caption := global_Temp;
      FrmVerPDF.ShowModal;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;
end;

procedure TfrmClientes.cxGuardarDetalleClick(Sender: TObject);
var
   lContinua : boolean;
begin
    {$region 'boton guardar detalle'}
   lContinua := True;

   if cxPageDetalle.ActivePage = cxTabBancos then
   begin
       cuenta_banco.FieldByName('IdCliente').AsInteger := Clientes.FieldByName('IdCliente').AsInteger;
       cuenta_banco.Post;
       cuenta_banco.Refresh;
   end;


   if cxPageDetalle.ActivePage = cxPageProductos then
   begin
       producto_servicio.FieldByName('IdCliente').AsInteger := Clientes.FieldByName('IdCliente').AsInteger;
       producto_servicio.Post;
       producto_servicio.Refresh;
       filtro.Refresh;
   end;

   if cxPageDetalle.ActivePage = cxPageContacto then
   begin
       contacto.FieldByName('IdCliente').AsInteger := clientes.FieldByName('IdCliente').AsInteger;
       contacto.Post;
       contacto.Refresh;
   end;

   if cxPageDetalle.ActivePage = cxPageDocumentos then
   begin
      if lNoGuardarDocto then
      begin
          messageDLG('El Documento '+ ExtractFileName(Archivo)+ ', No es un archivo válido!', mtWarning, [mbOk], 0);
          lContinua := False;
      end
      else
      begin
         uDoctos.FieldByName('IdCliente').AsInteger := clientes.FieldByName('IdCliente').AsInteger;
         uDoctos.Post;
         documentos.Refresh;
      end;
   end;

   if cxPageDetalle.ActivePage = cxPageInfoFiscal then begin
      uInfoFiscal.Post;
      uInfoFiscal.Refresh;
   end;

   if cxPageDetalle.ActivePage = cxPageOC then begin
      uqOCC.FieldByName('sContrato').AsString:=GLOBAL_CONTRATO;
      uqOCC.Post;
   end;

   if lContinua then
      cxCancelarDetalle.OnClick(sender);

   PermisosBotones(frmClientes,btnPermisos);
   {$endregion}
end;

procedure TfrmClientes.cxNuevoDetalleClick(Sender: TObject);
begin
  {$region 'Boton de nuevo en detalle'}
   PanelDown.Visible := True;
   cxNuevoDetalle.Enabled := False;
   cxEditaDetalle.Enabled := False;
   cxVisualiza.Enabled    := False;
   if cxPageDetalle.ActivePage = cxPageProductos then
   begin
       cxLeyenda2.Caption:=titulo2 +'[Agregando]';
       producto_servicio.Append;
       cxProducto.DataBinding.DataSource.DataSet.FieldByName('IdProSer').AsInteger := productos.FieldByName('IdProducto').AsInteger;
       producto_servicio.FieldByName('Activo').AsString := 'Si';
       PanelDown2.Visible := True;
       cxSplit2.Visible   := True;
       cxProducto.SetFocus;
   end;

   if cxPageDetalle.ActivePage = cxPageContacto then
   begin
       cxLeyenda2.Caption:=titulo2+'[Agregando]';
       cxSplit1.Visible   := True;
       PanelDown1.Visible := True;

       contacto.Append;
       contacto.FieldByName('FechaRegistro').AsDateTime := date;
       contacto.FieldByName('Activo').AsString := 'Si';
       cxContacto.SetFocus;
   end;

   if cxPageDetalle.ActivePage = cxPageDocumentos then
   begin
       cxLeyenda2.Caption:=titulo2+'[Agregando]';
       cxSplit4.Visible   := True;
       PanelDown4.Visible := True;

       AsignarSQL(uDoctos,'detalle_master_cliente_docto',pUpdate);
       FiltrarDataSet(uDoctos,'IdCliente,Activo',[-9,-9]);
       uDoctos.Open;

       uDoctos.Append;
       cxDocumento.DataBinding.DataSource.DataSet.FieldByName('IdDocumento').AsInteger := catalog_docto.fieldByName('IdDocumento').asInteger;
       uDoctos.FieldByName('FechaRegistro').AsDateTime := date;
       uDoctos.FieldByName('Activo').AsString := 'Si';
       cxdocumento.SetFocus;
   end;

   if cxPageDetalle.ActivePage = cxPageOC then begin
       cxLeyenda2.Caption:=titulo2+'[Agregando]';
       cxSplitterOC.Visible := True;
       PanelDown6.Visible   := True;

       uqProyectos.Active:=False;
       AsignarSQL(uqProyectos,'ordenesdetrabajo',pUpdate);
       FiltrarDataSet(uqProyectos,'Contrato',[GLOBAL_CONTRATO]);
       uqProyectos.Open;

       uqOCC.Append;
       uqOCC.FieldByName('IdCliente').AsInteger := Clientes.FieldByName('IdCliente').AsInteger;
       uqOCC.FieldByName('FechaIngreso').AsDateTime := Now;
       uqOCC.FieldByName('dTotal').AsFloat:=0.0;
       uqOCC.FieldByName('AplicaPR').AsString:='No';
       uqOCC.FieldByName('AplicaHES').AsString:='No';
       cxAplicaPR.OnClick(sender);
       cxAplicaHES.OnClick(Sender);
       cmbProyecto.SetFocus;
   end;

   if cxPageDetalle.ActivePage = cxPageInfoFiscal then begin
      cxLeyenda2.Caption := titulo2+'[Agregando]';
      PanelInfoF.Visible:=True;
      cxSplitterIF.Visible:=True;

      uInfoFiscal.Append;
      uInfoFiscal.FieldByName('IdCliente').AsInteger:=Clientes.FieldByName('IdCliente').AsInteger;
      cmbUsoCfdi.SetFocus;
   end;

   if cxPageDetalle.ActivePage = cxTabBancos then
   begin
       cxLeyenda2.Caption:=titulo2+'[Agregando]';
       cxSplitter2.Visible := True;
       PanelInfoBancos.Visible   := True;

       cuenta_banco.Append;
       cxBanco.DataBinding.DataSource.DataSet.FieldByName('IdBanco').AsInteger := bancos.fieldByName('IdBanco').asInteger;
       cuenta_banco.FieldByName('Activo').AsString := 'Si';
       cxSucursal.SetFocus;
    end;

   {$endregion}

end;

procedure TfrmClientes.cxPageDetalleChange(Sender: TObject);
var
  bS: TStream;
  Pic: TJPEGImage;
  BlobField: tField;
  bMostrar: boolean;
  IdImagen:String;
begin
    {$region 'Cambio de pestaña en detalle'}

    cxCancelarDetalle.OnClick(Sender);
    cxNuevoDetalle.Visible  := True;
    cxEditaDetalle.Visible  := True;
   if cxPageDetalle.ActivePage = cxPageProductos then
   begin
       titulo2 := 'Producto/Servicio';
       cxLeyenda2.Caption:=titulo2;
       cxNuevoDetalle.Enabled := True;
       cxEditaDetalle.Enabled := True;

       AsignarSQL(producto_servicio,'master_proser_cliente',pUpdate);
       FiltrarDataSet(producto_servicio,'Id,Cliente,Proser,Activo',[-1,Clientes.FieldByName('IdCliente').AsInteger,-1,-1]);
       producto_servicio.Open;
   end;

   if cxPageDetalle.ActivePage = cxPageContacto then
   begin
       titulo2 := 'Contacto';
       cxLeyenda2.Caption:=titulo2;
       cxNuevoDetalle.Enabled := True;
       cxEditaDetalle.Enabled := True;
       contacto.Active := False ;
       AsignarSQL(contacto,'detalle_master_cliente_contacto',pUpdate);
       FiltrarDataSet(contacto, 'IdCliente,Activo',[clientes.FieldByName('IdCliente').AsInteger,'-1']);
       contacto.Open;
   end;

   if cxPageDetalle.ActivePage = cxPageDocumentos then
   begin
       titulo2 := 'Documentos';
       cxLeyenda2.Caption:=titulo2;
       cxNuevoDetalle.Enabled := True;
       cxEditaDetalle.Enabled := True;
       documentos.Active := False ;
       AsignarSQL(documentos,'detalle_master_cliente_nodocto',pUpdate);
       FiltrarDataSet(documentos, 'IdCliente',[clientes.FieldByName('IdCliente').AsInteger]);
       documentos.Open;
   end;

   {$Region 'Carga Imagen'}
   if cxPageDetalle.ActivePage = cxPageImagen then
   begin
      titulo2 := 'Imagen';
      cxLeyenda2.Caption:=titulo2;
      cxNuevoDetalle.Visible  := False;
      cxEditaDetalle.Visible  := False;
      QryBusca.Active := False;
      QryBusca.SQL.Clear;
      QryBusca.SQL.Add('select Imagen from master_clientes where IdCliente = :Id');
      QryBusca.Params.ParamByName('Id').AsInteger := dsClientes.DataSet.FieldByName('IdCliente').AsInteger;
      QryBusca.Open;

    if QryBusca.RecordCount > 0 then
    begin
      bImagen.Picture.Bitmap := nil;

      BlobField := QryBusca.FieldByName('Imagen');
      BS := QryBusca.CreateBlobStream(BlobField, bmRead);
      if bs.Size > 15 then
      begin
        try
            pic := TJPEGImage.Create;
          try
            Pic.LoadFromStream(bS);
            bImagen.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          bS.Free
        end;
        bImagenDefault := True;
      end
      else
        bMostrar := True;
    end
    else
      bMostrar := True;

    if bMostrar = True then
    begin
      //muestraImagen;
      bImagenDefault := False;
    end;
   end;
   {$endregion}


   if cxPageDetalle.ActivePage = cxPageInfoFiscal then begin
      titulo2:= 'Información Fiscal';
      cxLeyenda2.Caption:=titulo2;
      AsignarSQL(uUsos,'cfdi_uso',pUpdate);
      uUsos.Open;

      AsignarSQL(uMetodos,'cfdi_metodopago',pUpdate);
      uMetodos.Open;

      AsignarSQL(uFormas,'cfdi_formapago',pUpdate);
      uFormas.Open;

      AsignarSQL(uInfoFiscal,'master_clientes_infofiscal',pUpdate);
      FiltrarDataSet(uInfoFiscal,'Id,Cliente,Uso,Forma,Metodo',[-1,Clientes.FieldByName('IdCliente').AsInteger,-1,-1,-1]);
      uInfoFiscal.Open;

   end;

   if cxPageDetalle.ActivePage = cxTabBancos then
   begin
       titulo2 := 'Bancos ';
       cxLeyenda2.Caption:=titulo2;
       cxNuevoDetalle.Enabled := True;
       cxEditaDetalle.Enabled := True;
       cuenta_banco.Active := False ;
       AsignarSQL(cuenta_banco,'master_clientes_bancos',pUpdate);
       FiltrarDataSet(cuenta_banco, 'Activo,IdCliente',['Si', clientes.FieldByName('IdCliente').AsInteger]);
       cuenta_banco.Open;
   end;



   {$endregion}
end;

procedure TfrmClientes.cxPageOCShow(Sender: TObject);
begin
  if Clientes.Active = True then begin
    titulo2:='O.C. Clientes';
    cxLeyenda2.Caption:=titulo2;
    AsignarSQL(monedas,'master_moneda',pUpdate);
    FiltrarDataSet(monedas,'IdMoneda,Codigo,Activo',[-1,-1,'Si']);
    monedas.Open;
    uqOCC.Active:=False;
    AsignarSQL(uqOCC,'master_clientes_oc',pUpdate);
    FiltrarDataSet(uqOCC,'Id,Cliente,Proyecto',[-1,Clientes.FieldByName('IdCliente').AsInteger,-1]);
    uqOCC.Open;
  end;
end;

procedure TfrmClientes.dxLayoutItem18CaptionClick(Sender: TObject);
begin
    //AsignarSQL()
end;

procedure TfrmClientes.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

end.

