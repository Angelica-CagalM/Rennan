unit frm_proveedores;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_barra, global, db, StdCtrls,
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
  Frm_VerPDF, System.ImageList, Vcl.ImgList, UnitMetodos, cxCurrencyEdit;
type
  TfrmProveedores = class(TForm)
    dsProveedores: TDataSource;
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
    Proveedores: TUniQuery;
    zqCiudades: TUniQuery;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    PanelPrincipal: TPanel;
    PanelTipo: TPanel;
    cxSplitTipo: TcxSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    cxDGenerales: TcxGroupBox;
    dxLayoutControl2: TdxLayoutControl;
    cxCodigo: TcxDBTextEdit;
    cxNombre: TcxDBTextEdit;
    cxRazonSocial: TcxDBTextEdit;
    cxRFC: TcxDBTextEdit;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    cxGDireccion: TcxGroupBox;
    dxLayoutControl4: TdxLayoutControl;
    cxCalle: TcxDBTextEdit;
    cxInterior: TcxDBTextEdit;
    cxExterior: TcxDBTextEdit;
    cxCiudad: TcxDBLookupComboBox;
    cxColonia: TcxDBTextEdit;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxSplitter1: TcxSplitter;
    grid_proveedores: TcxGrid;
    cxView_Proveedor: TcxGridDBTableView;
    cxView_ProveedorColumn1: TcxGridDBColumn;
    cxView_ProveedorColumn2: TcxGridDBColumn;
    cxView_ProveedorColumn3: TcxGridDBColumn;
    cxView_ProveedorColumn4: TcxGridDBColumn;
    cxView_ProveedorColumn5: TcxGridDBColumn;
    grid_proveedoresLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
    PanelDetalle: TPanel;
    Grid_Bitacora: TcxGrid;
    BView_filtro: TcxGridDBTableView;
    BView_filtroColumn1: TcxGridDBColumn;
    Grid_BitacoraLevel1: TcxGridLevel;
    BView_filtroColumn2: TcxGridDBColumn;
    ds_producto_servicio: TDataSource;
    producto_servicio: TUniQuery;
    ds_catalogo: TDataSource;
    catalogo: TUniQuery;
    ds_contacto: TDataSource;
    contacto: TUniQuery;
    ds_productos: TDataSource;
    productos: TUniQuery;
    PanelCentro: TPanel;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxPageDetalle: TcxPageControl;
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
    cxRegistro: TcxDBDateEdit;
    cxActivoContacto: TdxDBToggleSwitch;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutItem38: TdxLayoutItem;
    cxPageProductos: TcxTabSheet;
    PanelDown2: TPanel;
    dxLayoutControl6: TdxLayoutControl;
    cxProducto: TcxDBLookupComboBox;
    dxPuestoActivo: TdxDBToggleSwitch;
    btnProducto: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutAutoCreatedGroup23: TdxLayoutAutoCreatedGroup;
    cxSplit2: TcxSplitter;
    cxGridCargos: TcxGrid;
    cxGridViewProductos: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    frxReport1: TfrxReport;
    ds_filtro: TDataSource;
    filtro: TUniQuery;
    cxGiro: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    ds_giro: TDataSource;
    giro: TUniQuery;
    cxCodigoPostal: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    ds_codigo_postal: TDataSource;
    Codigo_postal: TUniQuery;
    cxContacto: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxPuesto: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxCorreo: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxTelefono: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    cxGridViewProductosColumn1: TcxGridDBColumn;
    cxView_ProveedorColumn6: TcxGridDBColumn;
    cxView_ProveedorColumn7: TcxGridDBColumn;
    cxView_ProveedorColumn8: TcxGridDBColumn;
    cxPageEvaluacion: TcxTabSheet;
    cxPageDocumentos: TcxTabSheet;
    PanelDown4: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    cxActivoDocumento: TdxDBToggleSwitch;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem23: TdxLayoutItem;
    cxSplit4: TcxSplitter;
    cxGridDocumentos: TcxGrid;
    cxViewDocumento: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    documentos: TUniQuery;
    ds_documentos: TDataSource;
    cxFechaDocto: TcxDBDateEdit;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    ds_catalog_docto: TDataSource;
    catalog_docto: TUniQuery;
    cxDocumento: TcxDBLookupComboBox;
    dxLayoutItem19: TdxLayoutItem;
    cxCargarDocumento: TcxButton;
    dxLayoutItem20: TdxLayoutItem;
    dlgPDF: TFileOpenDialog;
    dlgSavePDF: TSaveDialog;
    cxPageBancos: TcxTabSheet;
    PanelDown5: TPanel;
    dxLayoutControl7: TdxLayoutControl;
    cxActivoBanco: TdxDBToggleSwitch;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem22: TdxLayoutItem;
    cxSplit5: TcxSplitter;
    cxGridBancos: TcxGrid;
    cxViewBancos: TcxGridDBTableView;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxViewBancosColumn1: TcxGridDBColumn;
    cxCuenta: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    cxSucursal: TcxDBTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    cxCLABE: TcxDBTextEdit;
    dxLayoutItem25: TdxLayoutItem;
    cxBanco: TcxDBLookupComboBox;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    bancos: TUniQuery;
    ds_bancos: TDataSource;
    cuenta_banco: TUniQuery;
    ds_cuenta_bancos: TDataSource;
    PopupMenu1: TPopupMenu;
    VistaPrevia1: TMenuItem;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    imgStars: TcxImageList;
    zCalificacion: TUniQuery;
    dsCalificacion: TDataSource;
    cxButton1: TcxButton;
    dxLayoutItem27: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem28: TdxLayoutItem;
    doctoVP: TUniQuery;
    btnAgregarDocumento: TcxButton;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    dsDoctoVP: TDataSource;
    cxView_ProveedorColumn9: TcxGridDBColumn;
    cxView_ProveedorColumn10: TcxGridDBColumn;
    cxView_ProveedorColumn11: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    cxEliminar: TcxButton;
    dsAnexoPedido: TDataSource;
    zAnexoPedido: TUniQuery;
    cxEstado: TcxDBLookupComboBox;
    dxLayoutItem30: TdxLayoutItem;
    Estado: TUniQuery;
    dsEstado: TDataSource;
    ds_moneda: TDataSource;
    Moneda: TUniQuery;
    dxLayoutItem31: TdxLayoutItem;
    idMoneda: TcxDBLookupComboBox;
    dxLayoutItem32: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    cxViewBancosColumn2: TcxGridDBColumn;
    cxCredito: TcxDBCurrencyEdit;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    btnHomologarRFC: TcxButton;
    cxView_ProveedorDC: TcxGridDBColumn;
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
    procedure cxView_ProveedorCellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
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
    procedure BView_empresaDataControllerFilterRecord(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var Accept: Boolean);
    procedure cxView_ProveedorCellDblClick(
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
    procedure btnAgregarDocumentoClick(Sender: TObject);
    procedure ProveedoresAfterScroll(DataSet: TDataSet);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure frmBarraH11btnExportaClick(Sender: TObject);
    procedure cxEliminarClick(Sender: TObject);
    procedure cxDocumentoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btnHomologarRFCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProveedores : TfrmProveedores;
  Opcion         : String ;
  banderaAgregar : Boolean;
  scuentabanco,  Archivo   : string;
  bCuentasBanco  : boolean;
  titulo,titulo2 : string;
  lNoGuardarDocto :boolean;
  btnPermisos     :String;

implementation
uses
    frm_connection,
    frm_pedidos,
    Func_Genericas,unitGenerales,
    frm_catalogos_almacen, frm_Catalogos_rh_tipos, Frm_BancosMovimientos;
{$R *.dfm}

procedure TfrmProveedores.EnterControl(Sender: TObject);
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

procedure TfrmProveedores.SalidaControl(Sender: TObject);
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

procedure TfrmProveedores.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
    try
      isOpen := True;
      Panel2.Visible := False;
      cxSplitter1.Visible := False;

      titulo2:='Producto/Servicio';
      cxLeyenda2.Caption:=titulo2;

      cxSplitterOpciones.Visible := False;
      PanelDetalle.Visible       := False;

      titulo:='Proveedores';
      frmBarraH21.btnCancel.Click ;

      Proveedores.Active := False ;
      AsignarSQL(Proveedores,'master_proveedores',pUpdate);
      FiltrarDataSet(Proveedores, 'IdProveedor',['-1']);
      Proveedores.Open;

      zqCiudades.Active := False;
      AsignarSQL(zqCiudades,'master_ciudad',pUpdate);
      FiltrarDataSet(zqCiudades, 'IdCiudad,IdEstado,Activo',['-1','-1','Si']);
      zqCiudades.Open;

      Estado.Active := False;
      AsignarSQL(Estado,'master_estado',pUpdate);
      FiltrarDataSet(Estado, 'IdEstado,IdPais,Activo',['-1','-1','Si']);
      Estado.Open;

      catalogo.Active := False ;
      AsignarSQL(catalogo,'master_producto_servicio',pUpdate);
      FiltrarDataSet(catalogo, 'Activo',['Si']);
      catalogo.Open;

      giro.Active := False ;
      AsignarSQL(giro,'master_giro',pUpdate);
      FiltrarDataSet(giro, 'Activo',['Si']);
      giro.Open;

      AsignarSQL(Moneda,'master_moneda',pUpdate);
      Moneda.Open;

      filtro.Active := False ;
      AsignarSQL(filtro,'filtro_master_proveedor_producto',pUpdate);
      FiltrarDataSet(filtro, 'Activo',['Si']);
      filtro.Open;

      codigo_postal.Active := False ;
      AsignarSQL(codigo_postal,'master_codigo_postal',pUpdate);
      FiltrarDataSet(codigo_postal, 'Activo',['Si']);
      codigo_postal.Open;

      producto_servicio.Active := False ;
      AsignarSQL(producto_servicio,'master_producto_servicio',pUpdate);
      FiltrarDataSet(producto_servicio, 'Activo',['Si']);
      producto_servicio.Open;

      catalog_docto.Active := False ;
      AsignarSQL(catalog_docto,'catalogo_documentos_proveedor',pUpdate);
      FiltrarDataSet(catalog_docto, 'Tipo',['Proveedor']);
      catalog_docto.Open;

      bancos.Active := False ;
      AsignarSQL(bancos,'rhu_bancos',pUpdate);
      FiltrarDataSet(bancos, 'IdBanco,Clave,Corto,RazonSocial',[-1,-1,-1,-1]);
      bancos.Open;

      connection.qryUBusca2.Active:=False;
      connection.qryUBusca2.SQL.Text:='select FK_Titulo from master_empresa';
      connection.qryUBusca2.Open;

      if connection.qryUBusca2.FieldByName('FK_Titulo').AsString='TYPHOON' then
      begin
         cxView_Proveedor.FindPanel.DisplayMode := fpdmAlways;
         cxView_Proveedor.FindPanel.InfoText := 'Buscar...' ;
         cxView_Proveedor.FilterRow.Visible := False;
         cxView_Proveedor.FindPanel.ShowClearButton := False;
         cxView_Proveedor.FindPanel.ShowCloseButton := False;
         cxView_Proveedor.FindPanel.ShowFindButton := False;

         BView_filtro.FindPanel.DisplayMode := fpdmAlways;
         BView_filtro.FindPanel.InfoText := 'Buscar...' ;
         BView_filtro.FilterRow.Visible := False;
         BView_filtro.FindPanel.ShowClearButton := False;
         BView_filtro.FindPanel.ShowCloseButton := False;
         BView_filtro.FindPanel.ShowFindButton := False;
        end;

      if connection.QryUBusca2.FieldByName('FK_Titulo').AsString = 'SIANI' then begin
        btnHomologarRFC.Visible:=True;
        cxView_Proveedor.Columns[11].Visible:=True;
        cxView_Proveedor.Columns[11].DataBinding.FieldName:='DiasCredito';
      end;


      if connection.QryUBusca2.FieldByName('FK_Titulo').AsString <> 'SIANI' then begin
        dxLayoutItem33.Visible :=  False;
        cxView_Proveedor.Columns[11].Visible:=False;
      end;


      cxPageDetalle.ActivePageIndex := 0;
      PermisosBotones(frmProveedores,btnPermisos);

    cxView_Proveedor.Columns[8].Visible:=False;
    cxView_Proveedor.Columns[9].Visible:=False;
    cxView_Proveedor.Columns[10].Visible:=False;
    except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al iniciar el formulario', 0);
    end;
 end;

// guardar_leer_grid(BView_filtro,frmProveedores,0);
// guardar_leer_grid(cxView_Proveedor,frmProveedores,0);
// guardar_leer_grid(cxGridViewProductos,frmProveedores,0);
// guardar_leer_grid(cxViewContacto,frmProveedores,0);
// guardar_leer_grid(cxGridDBTableView1,frmProveedores,0);
// guardar_leer_grid(cxViewDocumento,frmProveedores,0);
// guardar_leer_grid(cxViewBancos,frmProveedores,0);
end;

procedure TfrmProveedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//      guardar_leer_grid(BView_filtro,frmProveedores,1);
//      guardar_leer_grid(cxView_Proveedor,frmProveedores,1);
//      guardar_leer_grid(cxGridViewProductos,frmProveedores,1);
//      guardar_leer_grid(cxViewContacto,frmProveedores,1);
//      guardar_leer_grid(cxGridDBTableView1,frmProveedores,1);
//      guardar_leer_grid(cxViewDocumento,frmProveedores,1);
//      guardar_leer_grid(cxViewBancos,frmProveedores,1);
  Proveedores.Cancel ;
  action := cafree ;
end;

procedure TfrmProveedores.grid_proveedoresCellClick(Column: TColumn);
begin
  if frmBarraH21.btnCancel.Enabled = True then
    frmBarraH21.btnCancel.Click
end;

procedure TfrmProveedores.cxViewDocumentoCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if documentos.RecordCount > 0 then
  begin
    AsignarSQL(doctoVP,'master_docto_proveedorVP',pUpdate);
    FiltrarDataSet(doctoVP, 'IdDocto',[documentos.FieldByName('IdDoctoProveedor').AsInteger]);
    doctoVP.Open;
    if not doctoVP.FieldByName('DocumentoDigital').IsNull then
    begin
      if not doctoVP.FieldByName('NombreDocto').IsNull then
        global_Temp := doctoVP.FieldByName('NombreDocto').AsString
      else
        global_Temp := 'docto_prov_'+proveedores.FieldByName('Codigo').AsString+'.pdf';

      TBlobField(doctoVP.FieldByName('DocumentoDigital')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp );
      Application.CreateForm(TFrmVerPDF, FrmVerPDF);
      FrmVerPDF.Caption := global_Temp;
      FrmVerPDF.ShowModal;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;
end;

procedure TfrmProveedores.cxView_ProveedorCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if frmBarraH21.btnCancel.Enabled = True then
      frmBarraH21.btnCancel.Click;

   if PanelDetalle.Visible then
   begin
       if cxPageDetalle.ActivePageIndex = 0 then
       begin
           productos.Active := False ;
           AsignarSQL(productos,'detalle_master_proveedor_producto',pUpdate);
           FiltrarDataSet(productos, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
           productos.Open;
       end;

       if cxPageDetalle.ActivePageIndex = 1 then
       begin
           contacto.Active := False ;
           AsignarSQL(contacto,'detalle_master_proveedor_contacto',pUpdate);
           FiltrarDataSet(contacto, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
           contacto.Open;
       end;

        if cxPageDetalle.ActivePageIndex = 2 then
       begin
           zCalificacion.Active:= False;
           AsignarSQL(zCalificacion,'master_proveedor_evaluacion',pUpdate);
           FiltrarDataSet(zCalificacion, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
           zCalificacion.Open;
       end;

        if cxPageDetalle.ActivePageIndex = 3 then
       begin
           documentos.Active := False ;
           AsignarSQL(documentos,'detalle_master_proveedor_docto',pUpdate);
           FiltrarDataSet(documentos, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
           documentos.Open;
       end;

       if cxPageDetalle.ActivePageIndex = 4 then
       begin
           cuenta_banco.Active := False ;
           AsignarSQL(cuenta_banco,'master_proveedor_bancos',pUpdate);
           FiltrarDataSet(cuenta_banco, 'Activo,IdProveedor',['Si',proveedores.FieldByName('IdProveedor').AsInteger]);
           cuenta_banco.Open;
       end;
   end;
end;

procedure TfrmProveedores.cxView_ProveedorCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if cxView_Proveedor.OptionsView.CellAutoHeight then
       cxView_Proveedor.OptionsView.CellAutoHeight := False
    else
       cxView_Proveedor.OptionsView.CellAutoHeight := True;
end;

procedure TfrmProveedores.frmBarra1btnAddClick(Sender: TObject);
begin
  try
       frmBarraH11.btnAddClick(Sender);
       grid_Proveedores.Enabled:=false;
       Proveedores.Append;
       Proveedores.FieldValues['Calle'] := '-';
       Proveedores.FieldValues['Interior'] := '0';
       Proveedores.FieldValues['Exterior'] := '0';
       Proveedores.FieldValues['Colonia'] := '-';
       Proveedores.FieldValues['CodigoPostal'] := '00000';
       Proveedores.FieldValues['IdCiudad']    := '0';
       Proveedores.FieldValues['IdEstado']    := '0';
       Proveedores.FieldValues['Rfc']         := '-';
       Proveedores.FieldValues['Telefono']   := '(000)0000000';
       cxCiudad.DataBinding.DataSource.DataSet.FieldByName('IdCiudad').AsInteger := zqCiudades.FieldByName('IdCiudad').AsInteger;

     except
     on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al agregar registro ', 0);
     end;
  end;
  frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmProveedores.frmBarra1btnEditClick(Sender: TObject);
begin

   banderaAgregar:=false;
   frmBarraH11.btnEditClick(Sender);

   try
      Proveedores.Edit ;
      grid_Proveedores.Enabled:=false;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al editar registro', 0);
          frmBarraH21.btnCancel.Click ;
      end;
   end ;

     frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmProveedores.frmBarra1btnPostClick(Sender: TObject);
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

     if Proveedores.State = dsInsert then
       if ValidaExiste('', 'master_pais', 'Codigo', Proveedores.FieldByName('Codigo').AsString, 'Código') then
          exit;

    //continuainserccion de datos
     try
        if not validaTexto(nombres, cadenas, 'Codigo', cxCodigo.Text) then
        begin
            MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
            exit;
        end;
        sId := Proveedores.FieldByName('Codigo').AsString;
        Proveedores.Post ;

        proveedores.Locate('codigo', sId,[]);

        try
//          frmOrdenes_compra.zqProveedores.Refresh;
//          frmOrdenes_compra.cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger := proveedores.FieldByName('IdProveedor').AsInteger;
        Except
        end;

     except
       on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al salvar registro', 0);
          frmBarraH21.btnCancel.Click ;
       end;
     end;

     grid_proveedores.Enabled:=True;
     frmBarraH21.btnCancel.Click;
     frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmProveedores.frmBarra1btnCancelClick(Sender: TObject);
begin
 try
  frmBarraH21.btnCancelClick(Sender);
  Proveedores.Cancel ;
  grid_Proveedores.Enabled:=True;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al cancelar', 0);
  end;
 end;
 frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmProveedores.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if cxView_Proveedor.DataController.DataSource.DataSet.IsEmpty=false then
  begin
    if cxView_Proveedor.DataController.DataSource.DataSet.RecordCount>0 then
    begin

      if MessageDlg('Desea eliminar el Registro Activo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        begin


            try
              Proveedores.Delete ;

              if (global_frmActivo = 'frm_pedidos') then
              begin
                frmPedidos.Proveedores.Refresh;
//                frmPedidos.tsIdProveedor.SetFocus;
              end;

            except
              on e : exception do
              begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al eliminar registro', 0);
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

procedure TfrmProveedores.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  Proveedores.Active := False ;
  Proveedores.Open
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al actualizar grid', 0);
  end;
 end;
end;

procedure TfrmProveedores.frmBarraH11btnExportaClick(Sender: TObject);
begin
  cxView_Proveedor.Columns[8].Visible:=True;
  cxView_Proveedor.Columns[9].Visible:=True;
  cxView_Proveedor.Columns[10].Visible:=True;

  ExportarToExcel(grid_proveedores);

  cxView_Proveedor.Columns[8].Visible:=False;
  cxView_Proveedor.Columns[9].Visible:=False;
  cxView_Proveedor.Columns[10].Visible:=False;
end;

//procedure TfrmProveedores.frmBarra1btnExitClick(Sender: TObject);
//begin
//   frmBarraH11.btnExitClick(Sender);
//   close
//end;

procedure TfrmProveedores.Insertar1Click(Sender: TObject);
begin
    frmBarraH11.btnAdd.Click
end;

procedure TfrmProveedores.ProveedoresAfterScroll(DataSet: TDataSet);
begin
if isOpen then
    if PanelDetalle.Visible then
   begin
       if cxPageDetalle.ActivePageIndex = 0 then
       begin
           productos.Active := False ;
           AsignarSQL(productos,'detalle_master_proveedor_producto',pUpdate);
           FiltrarDataSet(productos, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
           productos.Open;
       end;

       if cxPageDetalle.ActivePageIndex = 1 then
       begin
           contacto.Active := False ;
           AsignarSQL(contacto,'detalle_master_proveedor_contacto',pUpdate);
           FiltrarDataSet(contacto, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
           contacto.Open;
       end;

        if cxPageDetalle.ActivePageIndex = 2 then
       begin
           zCalificacion.Active:= False;
           AsignarSQL(zCalificacion,'master_proveedor_evaluacion',pUpdate);
           FiltrarDataSet(zCalificacion, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
           zCalificacion.Open;
       end;

        if cxPageDetalle.ActivePageIndex = 3 then
       begin
           documentos.Active := False ;
           AsignarSQL(documentos,'detalle_master_proveedor_docto',pUpdate);
           FiltrarDataSet(documentos, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
           documentos.Open;
       end;

       if cxPageDetalle.ActivePageIndex = 4 then
       begin
           cuenta_banco.Active := False ;
           AsignarSQL(cuenta_banco,'master_proveedor_bancos',pUpdate);
           FiltrarDataSet(cuenta_banco, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
           cuenta_banco.Open;
       end;
   end;

end;

procedure TfrmProveedores.Editar1Click(Sender: TObject);
begin
    frmBarraH11.btnEdit.Click
end;

procedure TfrmProveedores.Registrar1Click(Sender: TObject);
begin
    frmBarraH21.btnPost.Click
end;

procedure TfrmProveedores.btnAddClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    cxSplitter1.Visible := True;
    grid_proveedores.Enabled:=False;
    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;
    Proveedores.Append;
    IF connection.uContrato.FieldByName('FK_Titulo').AsString <> 'SUBSEA 7' THEN
    Proveedores.FieldByName('Codigo').AsString := autoFolio(proveedores, 'master_proveedores');
    cxGiro.DataBinding.DataSource.DataSet.FieldByName('IdGiro').AsInteger := giro.FieldByName('IdGiro').AsInteger;
    cxCodigoPostal.DataBinding.DataSource.DataSet.FieldByName('IdCodigoPostal').AsInteger := codigo_postal.FieldByName('IdCodigoPostal').AsInteger;
    cxNombre.SetFocus;
    if connection.uContrato.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
      cxCodigo.Properties.ReadOnly := False
    else
      cxCodigo.Properties.ReadOnly := True;
end;

procedure TfrmProveedores.btnAgregarDocumentoClick(Sender: TObject);
begin
  if (doctoVP.State = dsInsert ) or (doctoVP.State = dsEdit) then
   begin
       global_frmActivo := 'frmProveedores';

       if not MostrarFormChild('frmCatalogosRHTipos', global_dxBarManagerPrincipal) then
       begin
          global_indexactivo:= 15;
          Application.CreateForm(TfrmCatalogosRHTipos, frmCatalogosRHTipos);
          frmCatalogosRHTipos.show;
       end;
   end;
end;

procedure TfrmProveedores.btnCancelClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    cxSplitter1.Visible := False;
    frmBarraH11.btnActive;
    grid_proveedores.Enabled:=True;
    dsProveedores.DataSet.Cancel;
end;

procedure TfrmProveedores.btnDeleteClick(Sender: TObject);
var
    conteo : integer;
begin
    If Proveedores.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        productos.Active := False ;
        AsignarSQL(productos,'detalle_master_proveedor_producto',pUpdate);
        FiltrarDataSet(productos, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
        productos.Open;

        contacto.Active := False ;
        AsignarSQL(contacto,'detalle_master_proveedor_contacto',pUpdate);
        FiltrarDataSet(contacto, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
        contacto.Open;

        zCalificacion.Active:= False;
        AsignarSQL(zCalificacion,'master_proveedor_evaluacion',pUpdate);
        FiltrarDataSet(zCalificacion, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
        zCalificacion.Open;

        documentos.Active := False ;
        AsignarSQL(documentos,'detalle_master_proveedor_docto',pUpdate);
        FiltrarDataSet(documentos, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
        documentos.Open;

        cuenta_banco.Active := False ;
        AsignarSQL(cuenta_banco,'master_proveedor_bancos',pUpdate);
        FiltrarDataSet(cuenta_banco, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
        cuenta_banco.Open;

        //Conteo de registros dependientes.
        conteo := 0;
        conteo:= conteo + productos.RecordCount;
        conteo:= conteo + contacto.RecordCount;
        conteo:= conteo + zCalificacion.RecordCount;
        conteo:= conteo + documentos.RecordCount;
        conteo:= conteo + cuenta_banco.RecordCount;

        if (conteo =0) then
        begin
          IsOpen:=false;
          Proveedores.DisableControls;

          Proveedores.Delete;
          Proveedores.ApplyUpdates();

          Proveedores.EnableControls;
          IsOpen:=true;
        end
        else
          ShowMessage('No se puede eliminar, Contiene datos en detalle.');

      except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Proveedores', 'Al eliminar registro', 0);
           isOpen := True;
        end;
      end
    end
end;

procedure TfrmProveedores.btnDetalleClick(Sender: TObject);
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

   cxPageDetalle.OnChange(sender);
end;

procedure TfrmProveedores.btnEditClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo+'[Editando]';
    frmBarraH11.btnEditClick(Sender);
    Panel2.Visible:=True;
    cxSplitter1.Visible := True;
    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;
    grid_proveedores.Enabled:=False;
    proveedores.Edit;
    cxNombre.SetFocus;
    cxCodigo.Properties.ReadOnly := False;
end;

procedure TfrmProveedores.btnHomologarRFCClick(Sender: TObject);
var
zDatos:Tuniquery;
espacios,guiones:String;
begin

    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select * from master_proveedores');
    connection.QryBusca.Open;

  while not connection.QryBusca.Eof do
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    espacios := StringReplace(connection.QryBusca.FieldValues['RFC'], ' ', '', [rfReplaceAll]);
    guiones := StringReplace(espacios, '-', '', [rfReplaceAll]);
    connection.zCommand.SQL.Add('UPDATE master_proveedores SET RFC = :RFC where IdProveedor = :proveedor');
    connection.zCommand.Params.ParamByName('RFC').Value := guiones;
    connection.zCommand.Params.ParamByName('proveedor').Value := connection.QryBusca.FieldValues['IdProveedor'];
    connection.zCommand.ExecSQL();
    connection.QryBusca.Next;

  end;

   Proveedores.Refresh;
   connection.qryBusca.Active := False;
end;

procedure TfrmProveedores.btnPostClick(Sender: TObject);
var
   RefrescaRegistro:  TBookmark;
   Temp:TUniQuery;
   sTexto:String;
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    frmBarraH11.Visible:=True;
//    sTexto := CxCiudad.EditValue;
//    Temp:=TUniQuery.Create(Self);
//    Temp.Connection:=connection.Uconnection;
//    Temp.Active:=False;
//    Temp.SQL.Text:='Select * from master_ciudad where IdCiudad = :Ciudad';
//    Temp.Params.ParamByName('Ciudad').AsString:=sTexto;
//    Temp.Open;
//    grid_proveedores.Enabled:=True;
//    Proveedores.FieldByName('IdEstado').AsInteger:= Temp.FieldByName('IdEstado').AsInteger;
    Proveedores.Post;

     if global_frmActivo = 'frm_pedidos' then
     begin
         try
            frmPedidos.zqOrdenes.Refresh ;
            frmPedidos.cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger := Proveedores.FieldByName('IdProveedor').AsInteger;
            frmPedidos.cxProveedor.SetFocus;
         Except
         end;
     end;

      if global_frmActivo = 'frmBancosMovimientos' then
     begin
         try
            frmBancosMovimientos.Proveedores.Refresh ;
            frmBancosMovimientos.cxProveedor.DataBinding.DataSource.DataSet.FieldByName('IdProveedor').AsInteger := Proveedores.FieldByName('IdProveedor').AsInteger;
            frmBancosMovimientos.cxProveedor.SetFocus;
         Except
         end;
     end;

//    Temp.Destroy;
    RefrescaRegistro := cxView_Proveedor.DataController.DataSource.DataSet.GetBookmark;
    try
       proveedores.Refresh ;
       try
          cxView_Proveedor.DataController.DataSource.DataSet.GotoBookmark(RefrescaRegistro);
       except
       else
           cxView_Proveedor.DataController.DataSet.FreeBookmark(RefrescaRegistro);
       end;
     finally
    end;

    if global_frmActivo = 'frm_pedidos' then
     begin
         try
            cxPageDetalle.ActivePageIndex := 1;
            cxPageDetalle.OnChange(sender);
            cxNuevoDetalle.OnClick(Sender);
         Except
         end;
     end;
 btnCancelClick(Sender);
end;

procedure TfrmProveedores.BView_empresaDataControllerFilterRecord(
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

          IsOpen := False;
          proveedores.Filtered := False;
          proveedores.Filter   := CreaFiltroCampo('IdProveedor','IdProveedor',filtro);
          proveedores.Filtered := True;
          IsOpen := True;
          global_lock_filter := BView_filtro.DataController.Filter.FilterText;
      end;
    end;
end;

procedure TfrmProveedores.BView_filtroCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    if BView_filtro.DataController.Filter.FilterText = '' then
    begin
        IsOpen := False;
        proveedores.Filtered := False;
        IsOpen := True;
    end;

end;

procedure TfrmProveedores.BView_filtroDataControllerFilterChanged(
  Sender: TObject);
begin
   if BView_filtro.DataController.Filter.FilterText = '' then
      if filtro.RecordCount > 0 then
      begin
        IsOpen := False;
         proveedores.Filtered := False;
         IsOpen := True;
      end;
end;

procedure TfrmProveedores.Can1Click(Sender: TObject);
begin
    frmBarraH21.btnCancel.Click
end;

procedure TfrmProveedores.Eliminar1Click(Sender: TObject);
begin
    frmBarraH11.btnDelete.Click
end;

procedure TfrmProveedores.ExportaraExcel1Click(Sender: TObject);
begin
//  ExportExcelPersonalizado(zq_contratos,grid_proveedoresDBTableView1,'Proveedores','Catalogo de Proveedores');
end;

procedure TfrmProveedores.Refresh1Click(Sender: TObject);
begin
//    frmBarraH11.btnRefresh.Click
end;

procedure TfrmProveedores.Imprimir1Click(Sender: TObject);
begin
    frmBarraH11.btnPrinter.Click
end;

procedure TfrmProveedores.Salir1Click(Sender: TObject);
begin
//    frmBarraH11.btnExit.Click
end;

procedure TfrmProveedores.VistaPrevia1Click(Sender: TObject);
begin
  if documentos.RecordCount > 0 then
  begin
    AsignarSQL(doctoVP,'master_docto_proveedorVP',pUpdate);
    FiltrarDataSet(doctoVP, 'IdDocto',[documentos.FieldByName('IdDoctoProveedor').AsInteger]);
    doctoVP.Open;
    if not doctoVP.FieldByName('DocumentoDigital').IsNull then
    begin
      if not doctoVP.FieldByName('NombreDocto').IsNull then
        global_Temp := doctoVP.FieldByName('NombreDocto').AsString
      else
        global_Temp := 'docto_prov_'+proveedores.FieldByName('Codigo').AsString+'.pdf';

      TBlobField(doctoVP.FieldByName('DocumentoDigital')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp );
      Application.CreateForm(TFrmVerPDF, FrmVerPDF);
      FrmVerPDF.Caption := global_Temp;
      FrmVerPDF.ShowModal;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;
end;

procedure TfrmProveedores.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmProveedores.btnProductoClick(Sender: TObject);
begin
  if (productos.State = dsInsert ) or (productos.State = dsEdit) then
   begin
       global_frmActivo := 'frmProveedores';

       if not MostrarFormChild('frmCatalogosAlmacen', global_dxBarManagerPrincipal) then
       begin
          global_indexactivo:= 8;
          Application.CreateForm(TfrmCatalogosAlmacen, frmCatalogosAlmacen);
          frmCatalogosAlmacen.show;
       end;
   end;
end;

procedure TfrmProveedores.btnRefreshClick(Sender: TObject);
begin
    Proveedores.Refresh;
end;

procedure TfrmProveedores.cxButton1Click(Sender: TObject);
begin
  if (Proveedores.State = dsInsert ) or (Proveedores.State = dsEdit) then
   begin
       global_frmActivo := 'frmProveedores';

       if not MostrarFormChild('frmCatalogosRHTipos', global_dxBarManagerPrincipal) then
       begin
          global_indexactivo:= 14;
          Application.CreateForm(TfrmCatalogosRHTipos, frmCatalogosRHTipos);
          frmCatalogosRHTipos.show;
       end;
   end;
end;

procedure TfrmProveedores.cxButton2Click(Sender: TObject);
begin
      if (Proveedores.State = dsInsert ) or (Proveedores.State = dsEdit) then
   begin
       global_frmActivo := 'frmProveedores';

       if not MostrarFormChild('frmCatalogosRHTipos', global_dxBarManagerPrincipal) then
       begin
          global_indexactivo:= 6;
          Application.CreateForm(TfrmCatalogosRHTipos, frmCatalogosRHTipos);
          frmCatalogosRHTipos.show;
       end;
   end;
end;

procedure TfrmProveedores.cxCancelarDetalleClick(Sender: TObject);
begin
   if cxPageDetalle.ActivePageIndex = 0 then
   begin
       cxLeyenda2.Caption:=titulo2;
       productos.Cancel;
       cxSplit2.Visible   := False;
       PanelDown2.Visible := False;
   end;

   if cxPageDetalle.ActivePageIndex = 1 then
   begin
       cxLeyenda2.Caption:=titulo2;
       contacto.Cancel;
       cxSplit1.Visible   := False;
       PanelDown1.Visible := False;
   end;

   if cxPageDetalle.ActivePageIndex = 2 then
   begin
       cxLeyenda2.Caption:=titulo2;
//       contacto.Cancel;
//       cxSplit1.Visible   := False;
//       PanelDown1.Visible := False;
   end;

   if cxPageDetalle.ActivePageIndex = 3 then
   begin
       cxLeyenda2.Caption:=titulo2;
       documentos.Cancel;
       cxSplit4.Visible   := False;
       PanelDown4.Visible := False;

   end;

   if cxPageDetalle.ActivePageIndex = 4 then
   begin
       cxLeyenda2.Caption:=titulo2;
       cuenta_banco.Cancel;
       cxSplit4.Visible   := False;
       PanelDown5.Visible := False;
   end;
   cxGridDocumentos.Enabled := True;
   grid_proveedores.Enabled := True;
   PanelDown.Visible := False;
   cxNuevoDetalle.Enabled := True;
   cxEditaDetalle.Enabled := True;

   PermisosBotones(frmProveedores,btnPermisos);
end;

procedure TfrmProveedores.cxCargarDocumentoClick(Sender: TObject);
var
  BlobStream : TStream;
  FileStream : TFileStream;

  Ext, sArchivo : string;
begin
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

    //if (doctoVP.State = dsEdit) or (doctoVP.State <> dsInsert) then
      // doctoVP.Edit;

    doctoVP.FieldByName('NombreDocto').AsString := ExtractFileName(Archivo);
    TBlobField(doctoVP.FieldByName('DocumentoDigital')).LoadfromFile(archivo);

  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
      if documentos.state in [dsInsert, dsEdit] then
         lNoGuardarDocto := True;
    end;
  end;

end;

procedure TfrmProveedores.cxDocumentoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   if connection.uContrato.FieldByName('FK_TITULO').AsString = 'CMMI' then
  BEGIN
    if cxDocumento.EditValue = 24 then
    begin
      if NOT (global_grupo = 'CMMI_SF') then
      begin
        messageDLg('No se permite cargar este documento, no cuenta con los permisos necesarios. ',mtInformation,[mbOk],0);
      end;
    end;
  END;

end;

procedure TfrmProveedores.cxEditaDetalleClick(Sender: TObject);
begin
   PanelDown.Visible := True;
   cxGridDocumentos.Enabled := False;
   grid_proveedores.Enabled := False;
   if cxPageDetalle.ActivePageIndex = 0 then
   begin
       cxLeyenda2.Caption:=titulo2+'[Editando]';
       productos.Edit;
       PanelDown2.Visible := True;
       cxSplit2.Visible   := True;
   end;

   if cxPageDetalle.ActivePageIndex = 1 then
   begin
       cxLeyenda2.Caption:=titulo2+'[Editando]';
       contacto.Edit;
       cxSplit1.Visible   := True;
       PanelDown1.Visible := True;
   end;

    if cxPageDetalle.ActivePageIndex = 2 then
   begin
       cxLeyenda2.Caption:=titulo2+'[Editando]';
//       contacto.Edit;
//       cxSplit1.Visible   := True;
//       PanelDown1.Visible := True;
   end;

    if cxPageDetalle.ActivePageIndex = 3 then
   begin
       cxLeyenda2.Caption:=titulo2+'[Editando]';

       AsignarSQL(doctoVP,'master_docto_proveedorVP',pUpdate);
       FiltrarDataSet(doctoVP, 'IdDocto',[documentos.FieldByName('IdDoctoProveedor').AsInteger]);
       doctoVP.Open;

       doctoVP.Edit;
       cxSplit4.Visible   := True;
       PanelDown4.Visible := True;
   end;

   if cxPageDetalle.ActivePageIndex = 4 then
   begin
       cxLeyenda2.Caption:=titulo2+'[Editando]';
       cuenta_banco.Edit;
       cxSplit5.Visible   := True;
       PanelDown5.Visible := True;
   end;

end;

procedure TfrmProveedores.cxEliminarClick(Sender: TObject);
var
  SavePlace: TBookmark;
  indice, iGrid    : integer;
begin
    If contacto.RecordCount  > 0 then
        AsignarSQL(zAnexoPedido,'anexo_pedidos',pUpdate);
        FiltrarDataSet(zAnexoPedido,'Contrato',[global_contrato]);
        zAnexoPedido.Open;
        zAnexoPedido.Filtered := False;
        zAnexoPedido.Filter   := 'IdProveedor = '+QuotedStr(contacto.FieldByName('IdProveedor').AsString);
        zAnexoPedido.Filtered := True;
        if zAnexoPedido.FieldByName('IdProveedor').AsInteger = contacto.FieldByName('IdProveedor').AsInteger then
        MessageDlg('Contacto usado en una Orden de Compra.', mtInformation, [mbOk], 0)
        else  begin
          if MessageDlg('Desea eliminar el Registro?',
              mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            try
               ds_contacto.DataSet.Delete;
              contacto.ApplyUpdates();
            except
              on E : exception do begin
                 UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Almacenes', 'Al eliminar registro', 0);
              end;
            end
          end
        end;
end;

procedure TfrmProveedores.cxGuardarDetalleClick(Sender: TObject);
var
   lContinua : boolean;
begin
   lContinua := True;
   if cxPageDetalle.ActivePageIndex = 0 then
   begin
       productos.FieldByName('IdProveedor').AsInteger := proveedores.FieldByName('IdProveedor').AsInteger;
       productos.Post;
       productos.Refresh;
       filtro.Refresh;
   end;

   if cxPageDetalle.ActivePageIndex = 1 then
   begin
       contacto.FieldByName('IdProveedor').AsInteger := proveedores.FieldByName('IdProveedor').AsInteger;
       contacto.Post;

       if (global_frmActivo = 'frm_pedidos')  then
       begin
           global_frmActivo := 'ninguno';
           try
               frmPedidos.anexo_ocompras.FieldByName('sVendedor').AsString := contacto.FieldByName('Contacto').AsString;
               frmPedidos.anexo_ocompras.FieldByName('Correo').AsString    := contacto.FieldByName('Correo').AsString;

               cxCancelarDetalle.OnClick(sender);
               close;
           Except
           end;
       end;
       contacto.Refresh;
   end;

   if cxPageDetalle.ActivePageIndex = 3 then
   begin
      if doctoVP.FieldByName('DocumentoDigital').IsNull then
      begin
        messageDLG('El registo no se puede realizar, documento no cargado, Seleccione un documento a cargar.', mtWarning, [mbOk], 0);
        exit
      end;

      if lNoGuardarDocto then
      begin
          messageDLG('El Documento '+ ExtractFileName(Archivo)+ ', No es un archivo válido!', mtWarning, [mbOk], 0);
          lContinua := False;
      end
      else
      begin
         doctoVP.FieldByName('IdProveedor').AsInteger := proveedores.FieldByName('IdProveedor').AsInteger;
         doctoVP.Post;

         documentos.Refresh;
      end;
   end;

   if cxPageDetalle.ActivePageIndex = 4 then
   begin
       cuenta_banco.FieldByName('IdProveedor').AsInteger := proveedores.FieldByName('IdProveedor').AsInteger;
       cuenta_banco.Post;
       cuenta_banco.Refresh;
   end;

   if lContinua then
      cxCancelarDetalle.OnClick(sender);
   cxGridDocumentos.Enabled := True;
   grid_proveedores.Enabled := True;
   PermisosBotones(frmProveedores,btnPermisos);
end;

procedure TfrmProveedores.cxNuevoDetalleClick(Sender: TObject);
begin
   PanelDown.Visible := True;
   cxNuevoDetalle.Enabled := False;
   cxEditaDetalle.Enabled := False;
   if cxPageDetalle.ActivePageIndex = 0 then
   begin
       cxLeyenda2.Caption:=titulo2 +'[Agregando]';
       productos.Append;
       cxProducto.DataBinding.DataSource.DataSet.FieldByName('IdProducto').AsInteger := producto_servicio.FieldByName('IdProducto').AsInteger;
       productos.FieldByName('Activo').AsString := 'Si';
       PanelDown2.Visible := True;
       cxSplit2.Visible   := True;
       cxProducto.SetFocus;
   end;

   if cxPageDetalle.ActivePageIndex = 1 then
   begin
       cxLeyenda2.Caption:=titulo2+'[Agregando]';
       cxSplit1.Visible   := True;
       PanelDown1.Visible := True;

       contacto.Append;
       contacto.FieldByName('FechaRegistro').AsDateTime := date;
       contacto.FieldByName('Activo').AsString := 'Si';
       cxContacto.SetFocus;
   end;

   if cxPageDetalle.ActivePageIndex = 2 then
   begin
       cxLeyenda2.Caption:=titulo2+': Tabla solo de Visualización';
//       cxSplit1.Visible   := True;
//       PanelDown1.Visible := True;

//       contacto.Append;
//       contacto.FieldByName('FechaRegistro').AsDateTime := date;
//       contacto.FieldByName('Activo').AsString := 'Si';
//       cxContacto.SetFocus;
   end;

   if cxPageDetalle.ActivePageIndex = 3 then
   begin
       cxLeyenda2.Caption:=titulo2+'[Agregando]';
       cxSplit4.Visible   := True;
       PanelDown4.Visible := True;
       cxGridDocumentos.Enabled := False;
       grid_proveedores.Enabled := False;

        AsignarSQL(doctoVP,'master_docto_proveedorVP',pUpdate);
        FiltrarDataSet(doctoVP, 'IdDocto',[-9]);
        doctoVP.Open;

       doctoVP.Append;
       cxDocumento.DataBinding.DataSource.DataSet.FieldByName('IdDocumento').AsInteger := catalog_docto.fieldByName('IdDocumento').asInteger;
       doctoVP.FieldByName('FechaRegistro').AsDateTime := date;
       doctoVP.FieldByName('Activo').AsString := 'Si';
       cxdocumento.SetFocus;
   end;

   if cxPageDetalle.ActivePageIndex = 4 then
   begin
       cxLeyenda2.Caption:=titulo2+'[Agregando]';
       cxSplit5.Visible   := True;
       PanelDown5.Visible := True;

       cuenta_banco.Append;
       cxBanco.DataBinding.DataSource.DataSet.FieldByName('IdBanco').AsInteger := bancos.fieldByName('IdBanco').asInteger;
       cuenta_banco.FieldByName('Activo').AsString := 'Si';
       cxCuenta.SetFocus;
   end;

end;

procedure TfrmProveedores.cxPageDetalleChange(Sender: TObject);
begin
   if cxPageDetalle.ActivePageIndex = 0 then
   begin
       titulo2 := 'Producto/Servicio';
       cxLeyenda2.Caption:=titulo2;
       cxNuevoDetalle.Enabled := True;
       cxEditaDetalle.Enabled := True;
       productos.Active := False ;
       AsignarSQL(productos,'detalle_master_proveedor_producto',pUpdate);
       FiltrarDataSet(productos, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
       productos.Open;
       cxEliminar.Visible:=false;
   end;

   if cxPageDetalle.ActivePageIndex = 1 then
   begin
       titulo2 := 'Contacto';
       cxLeyenda2.Caption:=titulo2;
       cxNuevoDetalle.Enabled := True;
       cxEditaDetalle.Enabled := True;
       contacto.Active := False ;
       AsignarSQL(contacto,'detalle_master_proveedor_contacto',pUpdate);
       FiltrarDataSet(contacto, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
       contacto.Open;
       cxEliminar.Visible:=true;
   end;

   if cxPageDetalle.ActivePageIndex = 2 then
   begin
       titulo2 := 'Evaluación';
       cxLeyenda2.Caption:=titulo2;
       cxNuevoDetalle.Enabled := False;
       cxEditaDetalle.Enabled := False;
       zCalificacion.Active:= False;
       AsignarSQL(zCalificacion,'master_proveedor_evaluacion',pUpdate);
       FiltrarDataSet(zCalificacion, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
      zCalificacion.Open;
      cxEliminar.Visible:=false;
   end;

   if cxPageDetalle.ActivePageIndex = 3 then
   begin
       titulo2 := 'Documentos';
       cxLeyenda2.Caption:=titulo2;
       cxNuevoDetalle.Enabled := True;
       cxEditaDetalle.Enabled := True;
       documentos.Active := False ;
       AsignarSQL(documentos,'detalle_master_proveedor_docto',pUpdate);
       FiltrarDataSet(documentos, 'IdProveedor',[proveedores.FieldByName('IdProveedor').AsInteger]);
       documentos.Open;
       cxEliminar.Visible:=false;
   end;

   if cxPageDetalle.ActivePageIndex = 4 then
   begin
       titulo2 := 'Bancos ';
       cxLeyenda2.Caption:=titulo2;
       cxNuevoDetalle.Enabled := True;
       cxEditaDetalle.Enabled := True;
       cuenta_banco.Active := False ;
       AsignarSQL(cuenta_banco,'master_proveedor_bancos',pUpdate);
       FiltrarDataSet(cuenta_banco, 'Activo,IdProveedor',['Si', proveedores.FieldByName('IdProveedor').AsInteger]);
       cuenta_banco.Open;
       cxEliminar.Visible:=false;
   end;

end;

procedure TfrmProveedores.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

end.


