unit frm_VisualizaComprobanteFD;

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
  dxLayoutLookAndFeels, CxGridExportLink, ShellApi, cxCheckBox, dxToggleSwitch,
  dxDBToggleSwitch, Winapi.ShlObj, cxShellCommon, cxShellBrowserDialog,
  cxShellComboBox, cxDBShellComboBox, dxBreadcrumbEdit, dxShellBreadcrumbEdit,
  cxListView, cxShellListView, dxCore, cxDateUtils, Xml.xmldom, Xml.XMLIntf,
  Xml.Win.msxmldom, Xml.XMLDoc, dxmdaset;

type
  TfrmVisualizaComprobanteFD = class(TForm)
    frxOrdenCompra: TfrxDBDataset;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
    cxmglst1: TcxImageList;
    OpenPicture: TOpenPictureDialog;
    datasetfrximgfirmas: TfrxDBDataset;
    PanelDatos: TPanel;
    PanelPrincipal: TPanel;
    zComprobante: TUniQuery;
    dsDocumento: TDataSource;
    zTipoComprobante: TUniQuery;
    dsComprobante: TDataSource;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    cxPageControl1: TcxPageControl;
    cxTabDatosCFDI: TcxTabSheet;
    cxTabDescuento: TcxTabSheet;
    cxTabHistorial: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    cxGridComprobante: TcxGrid;
    view_VisualizaCFD: TcxGridDBTableView;
    cxGridComprobanteLevel1: TcxGridLevel;
    view_VisualizaCFDColumn1: TcxGridDBColumn;
    view_VisualizaCFDColumn2: TcxGridDBColumn;
    view_VisualizaCFDColumn3: TcxGridDBColumn;
    view_VisualizaCFDColumn4: TcxGridDBColumn;
    view_VisualizaCFDColumn5: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    PanelTop: TPanel;
    cxLeyenda: TcxLabel;
    cxNuevoDetalle: TcxButton;
    cxEliminar: TcxButton;
    cxEditaDetalle: TcxButton;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    cxDBCurrencyEdit12: TcxDBCurrencyEdit;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    cxDBCurrencyEdit13: TcxDBCurrencyEdit;
    dxLayoutItem23: TdxLayoutItem;
    cxCheckBox1: TcxCheckBox;
    dxLayoutItem24: TdxLayoutItem;
    cxView_Historial: TcxGridDBTableView;
    cxGridHistorialLevel1: TcxGridLevel;
    cxGridHistorial: TcxGrid;
    cxView_HistorialColumn1: TcxGridDBColumn;
    cxView_HistorialColumn3: TcxGridDBColumn;
    cxView_HistorialColumn4: TcxGridDBColumn;
    cxView_HistorialColumn5: TcxGridDBColumn;
    dsTipoComprobante: TDataSource;
    cxCFDI: TcxTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    cxRFC: TcxTextEdit;
    cxRazonSocial: TcxTextEdit;
    cxFolio: TcxTextEdit;
    cxSerie: TcxTextEdit;
    dFecha: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxFormaPago: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxUso: TcxTextEdit;
    cxMetodoPago: TcxTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    cxUUID: TcxMemo;
    dxLayoutItem7: TdxLayoutItem;
    cxTipoCambio: TcxCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    cxSubtotal: TcxCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDescuentos: TcxCurrencyEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxTraslados: TcxCurrencyEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxRetenciones: TcxCurrencyEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxTotal: TcxCurrencyEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxTotalCambio: TcxCurrencyEdit;
    mConceptos: TdxMemData;
    mConceptosCantidad: TFloatField;
    mConceptosUnidad: TStringField;
    mConceptosDescripcion: TStringField;
    mConceptosPrecioUnit: TCurrencyField;
    mConceptosImporte: TCurrencyField;
    dsConceptos: TDataSource;
    XML: TXMLDocument;
    zHistorial: TUniQuery;
    dsHistorial: TDataSource;
    cxTabNotasCredito: TcxTabSheet;
    cxCFDIRelacionados: TcxTabSheet;
    cxTabCancelacion: TcxTabSheet;
    gridView_NotasCredito: TcxGridDBTableView;
    cxGrid_NotasLevel1: TcxGridLevel;
    cxGrid_Notas: TcxGrid;
    gridView_NotasCreditoSerie: TcxGridDBColumn;
    gridView_NotasCreditoFolio: TcxGridDBColumn;
    gridView_NotasCreditoColumn1: TcxGridDBColumn;
    girdView_Relacionados: TcxGridDBTableView;
    cxGrid_RelacionadosLevel1: TcxGridLevel;
    cxGrid_Relacionados: TcxGrid;
    girdView_RelacionadosFolio: TcxGridDBColumn;
    girdView_RelacionadosSerie: TcxGridDBColumn;
    girdView_RelacionadosTotal: TcxGridDBColumn;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    btnAceptar: TcxButton;
    dxLayoutItem29: TdxLayoutItem;
    cdFecha: TcxDateEdit;
    dxLayoutItem30: TdxLayoutItem;
    cxUsuario: TcxTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    mMotivo: TcxMemo;
    zNotaCredito: TUniQuery;
    dsNotaCredito: TDataSource;
    dsRelacionado: TDataSource;
    zRelacionado: TUniQuery;
    gridView_NotasCreditoColumn2: TcxGridDBColumn;
    gridView_NotasCreditoColumn3: TcxGridDBColumn;
    gridView_NotasCreditoColumn4: TcxGridDBColumn;
    gridView_NotasCreditoColumn5: TcxGridDBColumn;
    girdView_RelacionadosTipoCambio: TcxGridDBColumn;
    girdView_RelacionadosConversion: TcxGridDBColumn;
    girdView_RelacionadosFecha: TcxGridDBColumn;
    girdView_RelacionadosRFC: TcxGridDBColumn;
    girdView_RelacionadosMoneda: TcxGridDBColumn;
    girdView_RelacionadosProyecto: TcxGridDBColumn;
    girdView_RelacionadosCotizacion: TcxGridDBColumn;
    girdView_RelacionadosOrdenCompra: TcxGridDBColumn;
    cxView_HistorialColumn6: TcxGridDBColumn;
    cxView_HistorialColumn7: TcxGridDBColumn;
    dxLayoutControl3: TdxLayoutControl;
    cxTotalAbonos: TcxCurrencyEdit;
    cxSaldoFinalCFDI: TcxCurrencyEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutControl6: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    cxCFDITotal: TcxCurrencyEdit;
    cxView_HistorialColumn2: TcxGridDBColumn;
    cxTabCuentasPorPagar: TcxTabSheet;
    dxLayoutControl7: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem25: TdxLayoutItem;
    grid_comprobantes: TcxGrid;
    cxView_Comprobantes: TcxGridDBTableView;
    cxView_FechaFactura: TcxGridDBColumn;
    cxView_FechaEntrega: TcxGridDBColumn;
    cxView_DiasCredito: TcxGridDBColumn;
    cxView_FechaPago: TcxGridDBColumn;
    cxView_DiasVencidos: TcxGridDBColumn;
    cxView_Series: TcxGridDBColumn;
    cxView_Folio: TcxGridDBColumn;
    cxView_RFC: TcxGridDBColumn;
    cxView_RazonSocial: TcxGridDBColumn;
    cxView_Total: TcxGridDBColumn;
    cxView_TipoCambio: TcxGridDBColumn;
    cxView_TotalMXN: TcxGridDBColumn;
    cxView_Abonos: TcxGridDBColumn;
    cxView_Saldo: TcxGridDBColumn;
    cxView_FolioUUID: TcxGridDBColumn;
    cxView_Proyecto: TcxGridDBColumn;
    cxView_Cotizacion: TcxGridDBColumn;
    cxView_OrdenCompra: TcxGridDBColumn;
    cxView_Estatus: TcxGridDBColumn;
    grid_comprobantesLevel1: TcxGridLevel;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutControl8: TdxLayoutControl;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem38: TdxLayoutItem;
    btnDoctoCotizacion: TcxButton;
    zCuentasPorPagar: TUniQuery;
    dsCuentasPorPagar: TDataSource;
    zOrdenesdeTrabajo: TUniQuery;
    ds_OrdenesdeTrabajo: TDataSource;
    zAnexo_pedidos: TUniQuery;
    ds_anexo_pedidos: TDataSource;
    cxProyecto: TcxLookupComboBox;
    dxLayoutItem33: TdxLayoutItem;
    cxCotizacion: TcxTextEdit;
    dxLayoutItem34: TdxLayoutItem;
    cxOC: TcxLookupComboBox;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    cxDiasCredito: TcxCalcEdit;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem31: TdxLayoutItem;
    btnAceptarCPP: TcxButton;
    dlgPDF: TFileOpenDialog;
    cxMonto: TcxCurrencyEdit;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutControl9Group_Root: TdxLayoutGroup;
    dxLayoutControl9: TdxLayoutControl;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutItem41: TdxLayoutItem;
    cxCPPTotalAbonos: TcxCurrencyEdit;
    dxLayoutItem42: TdxLayoutItem;
    cxCPPSaldoF: TcxCurrencyEdit;
    dxLayoutItem44: TdxLayoutItem;
    btnCancelarCPP: TcxButton;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;

    procedure FormShow(Sender: TObject);
    procedure CargarDatos;
    procedure cxPageControl1Change(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnAceptarCPPClick(Sender: TObject);
    procedure cxProyectoPropertiesChange(Sender: TObject);
    procedure cxProyectoPropertiesEditValueChanged(Sender: TObject);
    procedure btnDoctoCotizacionClick(Sender: TObject);
    procedure cxView_ComprobantesCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxEliminarClick(Sender: TObject);
    procedure btnCancelarCPPClick(Sender: TObject);


  private
    sMenuP: string;
    btnPermisos : String;
    { Private declarations }
  public
    { Public declarations }
    PathE:String;
    btnCot:Boolean;
  end;

var
  frmVisualizaComprobanteFD: TfrmVisualizaComprobanteFD;
  SavePlace: TBookmark;
  sDescripcion: string;
  sArchivo      : String ;
  txtAux: string;
  lNuevo: Boolean;
  OpcButton1: string;
  Valida: boolean;
  filtro, buscar: string;
  PathArchivo:String;
  iFolio: integer;
  CadenaOrden, CadenaOrden2, cadenaReq: string;
  lValidaReq: boolean;
  CadenaReporte, CadenaReporte2: string;
  NombreDocto, Direccion:String;

  sSuperintendente, sSupervisor: string;
  sPuestoSuperintendente, sPuestoSupervisor: string;
  sSupervisorTierra, sPuestoSupervisorTierra: string;
  sBackup: string;
  MontoTotal: Currency;
  TipoExplosion: string;
  AnteriorArray : array[1..5] of string;
  isOpen : boolean = False;

  Tipo_Moneda: string;

implementation



{$R *.dfm}
 uses
 frm_EntradaAlmacen, frm_comprobantesFiscalesD,frm_connection,Frm_Modal,frm_BancosMovimientos;


function SelectedFiles(AShellView: TcxShellListView): TStringList;
var
i:integer;
begin
  Result := TStringList.Create;
  for i := 0 to AShellView.InnerListView.Items.Count - 1 do
    // is the item selected?
    if AShellView.InnerListView.Items[i].Selected = True then
      // Folders can also refer to files, which is why we check isFolder
      // before adding the filepath to the result
      if AShellView.folders[i].IsFolder = False then
        // add filepath and filename to result
        Result.Add(AShellView.Folders[i].PathName);

end;


procedure TfrmVisualizaComprobanteFD.btnAceptarClick(Sender: TObject);
var
indice, iGrid    : integer;
begin

    try
            iGrid     := 0;
            indice := frmComprobantesFiscalesD.cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
            frmComprobantesFiscalesD.cxView_Comprobantes.DataController.FocusedRowIndex := indice;

            with frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet do
            for iGrid := 0 to frmComprobantesFiscalesD.cxView_Comprobantes.DataController.GetSelectedCount - 1 do
            begin
              indice := frmComprobantesFiscalesD.cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
              frmComprobantesFiscalesD.cxView_Comprobantes.DataController.FocusedRowIndex := indice;

//                if not (frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('Estatus').AsString = 'CANCELADO') then
//              begin
                AsignarSQL(Connection.QryUBusca2,'update_cancelar_CFDI',pUpDate);
                FiltrarDataSet(Connection.QryUBusca2,'Estatus,Motivo,Fecha,Usuario,Comprobante',['CANCELADO',mMotivo.Text,FechaTimeSQL(Now()), cxUsuario.Text, frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
                Connection.QryUBusca2.ExecSQL;
//              end;

            end;
            frmComprobantesFiscalesD.zComprobantes.Refresh;

            except
            on E : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Comprobantes Fiscales Digitales', 'Al Cancelar CFDI', 0);
            end;

        end;


end;

procedure TfrmVisualizaComprobanteFD.btnAceptarCPPClick(Sender: TObject);
var
  zIdCompr,zInsert,zActualizar:TUniquery;
  Val:String;
  clMonto,vant,montocomp,montoCPP,sumabono:Double;
  iValorNumerico   : LongInt  ;
   Resultado        : Real     ;
  posact:Integer;
begin

  zInsert:=tUniquery.create(nil);
  zInsert.Connection := connection.uConnection;

//    zCuentasPorPagar.First;
//    while (not zCuentasPorPagar.Eof) do
//    begin
//      clMonto:= clMonto + zCuentasPorPagar.FieldByName('Total').AsFloat;
//      zCuentasPorPagar.Next;
//    end;

  if (zCuentasPorPagar.State = dsInsert) or (zCuentasPorPagar.State=dsEdit) then begin


//    if cxProyecto.EditValue <> null then
//    zCuentasPorPagar.FieldByName('sNumeroOrden').AsString:=cxProyecto.EditValue;
//    if cxOC.EditValue <> null then
//    zCuentasPorPagar.FieldByName('IdOrdenCompra').AsInteger:=cxOC.EditValue;
//    if cxDiasCredito.EditValue <> null then begin
//      zInsert.Active:=False;
//      AsignarSQL(zInsert,'upd_diascredito_comprobantes', pUpdate);
//      FiltrarDataSet(zInsert,'IdComprobante',[frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
//      zInsert.ExecSQL;
//    end;

    if cxMonto.EditValue <> null then begin

      vant:=zCuentasPorPagar.FieldByName('Total').AsFloat;
      posact:=cxView_Comprobantes.DataController.FocusedRowIndex;
      zCuentasPorPagar.FieldByName('Total').AsFloat:=cxMonto.EditValue;

      zCuentasPorPagar.First;
      while (not zCuentasPorPagar.Eof) do
      begin
        clMonto:= clMonto + zCuentasPorPagar.FieldByName('Total').AsFloat;
        zCuentasPorPagar.Next;
      end;

      if((assigned(frmComprobantesFiscalesD)) and (frmComprobantesFiscalesD.Active) )then begin
        iValorNumerico   := Trunc(frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('Total').AsFloat);
        Resultado := roundto(frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('Total').AsFloat - iValorNumerico, -2) ;
      end
      else
      if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active) )then begin
        iValorNumerico   := Trunc(frmBancosMovimientos.cxGridCFDIDBTableView1.DataController.DataSource.DataSet.FieldByName('Total').AsFloat);
        Resultado := roundto(frmBancosMovimientos.cxGridCFDIDBTableView1.DataController.DataSource.DataSet.FieldByName('Total').AsFloat - iValorNumerico, -2) ;
      end;
      Resultado := Resultado + iValorNumerico;

      montocomp:=Resultado;

      iValorNumerico   := Trunc(clMonto);
      Resultado := roundto(clMonto - iValorNumerico, -2) ;
      Resultado := Resultado + iValorNumerico;

      sumabono:=sumabono + Resultado;

      if((assigned(frmComprobantesFiscalesD)) and (frmComprobantesFiscalesD.Active) )then begin
        iValorNumerico   := Trunc(frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('Total').AsFloat) ;
        Resultado := roundto(frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('Total').AsFloat - iValorNumerico, -2) ;
      end
      else
      if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active) )then begin
        iValorNumerico   := Trunc(frmBancosMovimientos.cxGridCFDIDBTableView1.DataController.DataSource.DataSet.FieldByName('Total').AsFloat);
        Resultado := roundto(frmBancosMovimientos.cxGridCFDIDBTableView1.DataController.DataSource.DataSet.FieldByName('Total').AsFloat - iValorNumerico, -2) ;
      end;
      Resultado := Resultado + iValorNumerico;
      montoCPP:=montoCPP + abs(Resultado);

      cxCPPTotalAbonos.EditValue := sumabono;
      cxCPPSaldoF.EditValue:=montoCPP-sumabono;

      cxView_Comprobantes.DataController.FocusedRowIndex:=posact;
      cxView_Comprobantes.DataController.DataSet.FieldByName('IdComprobanteCPP').AsInteger;

      if clMonto > montocomp then begin
        MessageDlg('No puede agregar un monto mayor al asignado.',mtInformation, [mbOk],0);
        zCuentasPorPagar.Edit;

        zCuentasPorPagar.FieldByName('Total').AsFloat:=vant;
        cxDiasCredito.Enabled:=False;
        cxProyecto.Enabled:=False;
        cxMonto.Enabled:=False;
        cxCotizacion.Enabled:=False;
        dxLayoutItem38.Enabled:=False;
        cxOC.Enabled:=False;
        btnAceptarCPP.Visible:=False;
        btnCancelarCPP.Visible:=False;
      end
      else  begin
        cxDiasCredito.Enabled:=False;
        cxProyecto.Enabled:=False;
        cxMonto.Enabled:=False;
        cxCotizacion.Enabled:=False;
        dxLayoutItem38.Enabled:=False;
        cxOC.Enabled:=False;
        btnAceptarCPP.Visible:=False;
        btnCancelarCPP.Visible:=False;
        zCuentasPorPagar.Edit;
        if (cxProyecto.EditValue <> null) and (cxProyecto.EditValue <> '') then
          zCuentasPorPagar.FieldByName('sNumeroOrden').AsString:=cxProyecto.EditValue;
        if (cxOC.EditValue <> null) and  (cxOC.EditValue <>0) then
          zCuentasPorPagar.FieldByName('IdOrdenCompra').AsInteger:=cxOC.EditValue;
        if (cxDiasCredito.EditValue <> null) and (cxDiasCredito.EditValue <> 0)then begin
          zInsert.Active:=False;
          AsignarSQL(zInsert,'upd_diascredito_comprobantes', pUpdate);
          if((assigned(frmComprobantesFiscalesD)) and (frmComprobantesFiscalesD.Active) )then
          FiltrarDataSet(zInsert,'IdComprobante',[frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger])
          else
          if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active) )then
          FiltrarDataSet(zInsert,'IdComprobante',[frmBancosMovimientos.cxGridCFDIDBTableView1.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
          zInsert.ExecSQL;
        end;
//        zCuentasPorPagar.FieldByName('Total').AsFloat:=cxMonto.EditValue;
        if (cxCotizacion.EditValue <> null) or (NombreDocto <> '') then begin
           zCuentasPorPagar.FieldByName('FolioCotizacion').AsString:=cxCotizacion.EditValue;
           zCuentasPorPagar.FieldByName('NombreDocto').AsString:=NombreDocto;
           zCuentasPorPagar.FieldByName('Direccion').AsString:=Direccion;
        end;

        zCuentasPorPagar.Post;
      end;
    end;

//    if (cxCotizacion.EditValue <> null) or (NombreDocto <> '') then begin
//       zCuentasPorPagar.FieldByName('FolioCotizacion').AsString:=cxCotizacion.EditValue;
//       zCuentasPorPagar.FieldByName('NombreDocto').AsString:=NombreDocto;
//       zCuentasPorPagar.FieldByName('Direccion').AsString:=Direccion;
//    end;
//    zCuentasPorPagar.Post;
  end;

//  zInsert:=tUniquery.create(nil);
//  zInsert.Connection := connection.uConnection;

//  zInsert.Active:=False;
//  AsignarSQL(zInsert,'insertar_comprobantes_cpp', pUpdate);
//  FiltrarDataSet(zInsert,'sNumeroOrden,IdComprobante',[cxProyecto.EditValue,frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
//  zInsert.ExecSQL;

  //para proyecto en indicadores
//   zIdCompr:=tUniquery.create(nil);
//  zIdCompr.Connection := connection.uConnection;
//
//
//  zInsert:=tUniquery.create(nil);
//  zInsert.Connection := connection.uConnection;
//  zInsert.Active := False;
//
//  zActualizar:=tUniquery.create(nil);
//  zActualizar.Connection := connection.uConnection;

// if cxProyecto.EditValue <> null then begin
//    Val:=cxProyecto.EditValue;
//
//    zIdCompr.Active:=False;
//    AsignarSQL(zIdCompr,'comprobante_movimiento_indicadores', pUpdate);
//    FiltrarDataSet(zIdCompr,'Comprobante',[frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
//    zIdCompr.Open;
//
//    if zIdCompr.RecordCount>0 then  begin
//      zActualizar.Active:=False;
//      if Val<>'' then begin
//        AsignarSQL(zActualizar,'uc_movimiento_indicadores', pUpdate);
//        FiltrarDataSet(zActualizar,'sNumeroOrden,IdComprobante',[cxProyecto.EditValue,frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
//      end
//      else begin
//        AsignarSQL(zActualizar,'uc_movimiento_indicadores_n', pUpdate);
//        FiltrarDataSet(zActualizar,'IdComprobante',[frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
//      end;
//      zActualizar.ExecSQL;
//    end
//    else begin
//      zInsert.Active:=False;
//      AsignarSQL(zInsert,'mov_ind_ins_proyecto', pUpdate);
//      FiltrarDataSet(zInsert,'sNumeroOrden,IdComprobante',[cxProyecto.EditValue,frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
//      zInsert.ExecSQL;
//    end;
//
// end;
  //para Orden de Compra

//   TcxLookupComboBox(Sender).PostEditValue;
// if cxOC.EditValue <> null then begin
//    Val:=cxOC.EditValue;
//
//    zIdCompr.Active:=False;
//    AsignarSQL(zIdCompr,'comprobante_movimiento_indicadores', pUpdate);
//    FiltrarDataSet(zIdCompr,'Comprobante',[frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
//    zIdCompr.Open;
//
//    if zIdCompr.RecordCount>0 then  begin
//      zActualizar.Active:=False;
//      if Val<>'' then begin
//        AsignarSQL(zActualizar,'uOrdenCompra_mov_indicadores', pUpdate);
//        FiltrarDataSet(zActualizar,'IdOrdenCompra,IdComprobante',[cxOC.EditValue,cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
//      end
//      else begin
//        AsignarSQL(zActualizar,'uOrdenCompra_mov_indicadores_n', pUpdate);
//        FiltrarDataSet(zActualizar,'IdComprobante',[frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
//      end;
//      zActualizar.ExecSQL;
//    end
//    else begin
//      zInsert.Active:=False;
//      AsignarSQL(zInsert,'mov_ind_ins_OrdenCompra', pUpdate);
//      FiltrarDataSet(zInsert,'IdOrdenCompra,IdComprobante',[cxOC.EditValue,frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
//      zInsert.ExecSQL;
//    end;
// end;

//  if (cxCotizacion.EditValue <> null) or (NombreDocto <> '') then begin
    //cotizacion_documentos
//    zIdCompr.Active:=False;
//    AsignarSQL(zIdCompr,'cotizacion_docto', pUpdate);
//    FiltrarDataSet(zIdCompr,'Comprobante',[frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
//    zIdCompr.Open;
//
//    if zIdCompr.RecordCount>0 then  begin
//      zActualizar.Active:=False;
//      AsignarSQL(zActualizar,'ucotizacion_docto', pUpdate);
//      FiltrarDataSet(zActualizar,'Folio,Nombre,Direccion,IdComprobante',[cxCotizacion.EditValue,NombreDocto,Direccion,frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
//      zActualizar.ExecSQL;
//    end
//    else begin
//      zInsert.Active:=False;
//      AsignarSQL(zInsert,'cotizacion_docto_ins', pUpdate);
//      FiltrarDataSet(zInsert,'IdComprobante,Folio,Nombre,Direccion',[frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger,cxCotizacion.EditValue,NombreDocto,Direccion]);
//      zInsert.ExecSQL;
//    end;

    //movimiento_indicadores

//    zIdCompr.Active:=False;
//    AsignarSQL(zIdCompr,'comprobante_movimiento_indicadores', pUpdate);
//    FiltrarDataSet(zIdCompr,'Comprobante',[frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
//    zIdCompr.Open;
//
//    if zIdCompr.RecordCount>0 then  begin
//      zActualizar.Active:=False;
//      AsignarSQL(zActualizar,'ucotizacion_mov_indicadores', pUpdate);
//      FiltrarDataSet(zActualizar,'Cotizacion,IdComprobante',[cxCotizacion.EditValue+ ' '+NombreDocto,frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
//      zActualizar.ExecSQL;
//    end
//    else begin
//      zInsert.Active:=False;
//      AsignarSQL(zInsert,'mov_ind_ins_cotizacion', pUpdate);
//      FiltrarDataSet(zInsert,'Cotizacion,IdComprobante',[cxCotizacion.EditValue+ ' '+NombreDocto,frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
//      zInsert.ExecSQL;
//    end;
//  end;

   zCuentasPorPagar.Refresh;

end;

procedure TfrmVisualizaComprobanteFD.btnCancelarCPPClick(Sender: TObject);
begin
  zCuentasPorPagar.Cancel;
  cxDiasCredito.Enabled:=False;
  cxProyecto.Enabled:=False;
  cxMonto.Enabled:=False;
  cxCotizacion.Enabled:=False;
  dxLayoutItem38.Enabled:=False;
  cxOC.Enabled:=False;
  btnAceptarCPP.Visible:=False;
  btnCancelarCPP.Visible:=False;
end;

procedure TfrmVisualizaComprobanteFD.btnDoctoCotizacionClick(Sender: TObject);
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

procedure  TfrmVisualizaComprobanteFD.CargarDatos;
var
  archivoTXT: TextFile;
  NombreXML : String;
  ComprobanteXML,ComplementoXML,TimbreXML,
  EmisorXML, ReceptorXML,
  Nodo, SubNodo, SubNodo2,
  ConceptosXML, ConceptoXML,
  NominaXML,
  NominaRecept,
  ImpuestosXML, TimbreFiscal, tfd: IXMLNode;
  i,j,k,l,m, x : Integer;
begin
  // Datos layout top
  if((assigned(frmComprobantesFiscalesD)) and (frmComprobantesFiscalesD.Active) and (frmComprobantesFiscalesD.ComF))then begin
  cxCFDI.Text        := frmComprobantesFiscalesD.zComprobantes.FieldByName('Descripcion').AsString;
  cxRFC.Text         := frmComprobantesFiscalesD.zComprobantes.FieldByName('RFC_Emisor').AsString;
  cxRazonSocial.Text := frmComprobantesFiscalesD.zComprobantes.FieldByName('RazonSocial_Emisor').AsString;
  cxSerie.Text       := frmComprobantesFiscalesD.zComprobantes.FieldByName('Serie').AsString;
  cxFolio.Text       := frmComprobantesFiscalesD.zComprobantes.FieldByName('Folio').AsString;
  dFecha.Date        := frmComprobantesFiscalesD.zComprobantes.FieldByName('FechaFactura').AsDateTime; ;


  // Datos layot button
  cxFormaPago.Text   := frmComprobantesFiscalesD.zComprobantes.FieldByName('Titulo').AsString ;
  cxMetodoPago.Text  := frmComprobantesFiscalesD.zComprobantes.FieldByName('MetodoP').AsString ;
  cxUso.Text         := frmComprobantesFiscalesD.zComprobantes.FieldByName('RegimenFiscal_Emisor').AsString ;
  cxUUID.Text        := frmComprobantesFiscalesD.zComprobantes.FieldByName('Folio_UUID').AsString ;
  cxTotal.Value      := frmComprobantesFiscalesD.zComprobantes.FieldByName('Total').AsFloat;

  try
    NombreXML:= ExtractFilePath(Application.ExeName)+'\xml_read.xml';
    AssignFile(archivoTxt, NombreXML);
    Rewrite(archivoTXT);
    Writeln(archivoTXT, frmComprobantesFiscalesD.zComprobantes.FieldByName('ArchivoXML').AsString);
  finally
    Closefile(archivoTXT);
  end;

  {$region 'Leer xml'}
    mConceptos.Active := False;
    mConceptos.Active := True;
    XML.Active := False;
    XML.FileName := NombreXML;
    XML.Active := True;
    ComprobanteXML := XML.DocumentElement;

    if ComprobanteXML.Attributes['TipoCambio'] = null then
      cxTipoCambio.EditValue := 1.00
    else
      cxTipoCambio.EditValue := ComprobanteXML.Attributes['TipoCambio'];

    cxSubtotal.EditValue := ComprobanteXML.Attributes['SubTotal'];

    if ComprobanteXML.Attributes['Descuento'] = null then
      cxDescuentos.EditValue := 0.00
    else
      cxDescuentos.EditValue := ComprobanteXML.Attributes['Descuento'];

    cxTotal.EditValue := ComprobanteXML.Attributes['Total'];

    for i := 0 to ComprobanteXML.ChildNodes.Count-1 do
    begin
      Nodo := ComprobanteXML.ChildNodes[i];

      if pos('cfdi:Emisor',Nodo.XML) > 0 then
      begin

      end;

      if pos('cfdi:Conceptos',Nodo.XML) > 0 then
      begin
        ConceptosXML := ComprobanteXML.ChildNodes[i];
        for j := 0 to ConceptosXML.ChildNodes.Count-1 do
        begin
          SubNodo := ConceptosXML.ChildNodes[j];
          if pos('cfdi:Concepto',SubNodo.XML) > 0 then
          begin
            ConceptoXML := ConceptosXML.ChildNodes[j];
            mConceptos.Append;
            mConceptos.FieldByName('Cantidad').AsVariant := ConceptoXML.Attributes['Cantidad'];
            mConceptos.FieldByName('Unidad').AssTRING := VarToStr(ConceptoXML.Attributes['ClaveUnidad'])+' '+VarToStr(ConceptoXML.Attributes['Unidad']);
            mConceptos.FieldByName('Descripcion').AsVariant := ConceptoXML.Attributes['Descripcion'];
            mConceptos.FieldByName('PrecioUnit').AsVariant := ConceptoXML.Attributes['ValorUnitario'];
            mConceptos.FieldByName('Importe').AsVariant := ConceptoXML.Attributes['Importe'];
            mConceptos.Post;
          end;
        end;

      end;

      if pos('cfdi:Impuestos',Nodo.XML) > 0 then
      begin
        ImpuestosXML := ComprobanteXML.ChildNodes[i];

        if ImpuestosXML.Attributes['TotalImpuestosTrasladados'] = null then
          cxTraslados.EditValue := 0.00
        else
          cxTraslados.EditValue := ImpuestosXML.Attributes['TotalImpuestosTrasladados'];

        if ImpuestosXML.Attributes['TotalImpuestosRetenidos'] = null then
          cxRetenciones.EditValue := 0.00
        else
          cxRetenciones.EditValue := ImpuestosXML.Attributes['TotalImpuestosRetenidos'];



      end;

      if pos('cfdi:Complemento',Nodo.XML) > 0 then
      begin
        ComplementoXML     := ComprobanteXML.ChildNodes[i];
        for j := 0 to ComplementoXML.ChildNodes.Count-1 do
        begin
          SubNodo := ComplementoXML.ChildNodes[j];
          if pos('tfd:TimbreFiscalDigital',SubNodo.XML) > 0 then
          begin
            TimbreXML := ComplementoXML.ChildNodes[j];
          end;

        end;


      end;


    end;



  {$endregion}


  end
  else begin
      // Datos layout top
      if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active) and (frmBancosMovimientos.ComB))then begin
      cxCFDI.Text        := frmBancosMovimientos.zCfdi.FieldByName('Descripcion').AsString;
      cxRFC.Text         := frmBancosMovimientos.zCfdi.FieldByName('RFC_Emisor').AsString;
      cxRazonSocial.Text := frmBancosMovimientos.zCfdi.FieldByName('RazonSocial_Emisor').AsString;
      cxSerie.Text       := frmBancosMovimientos.zCfdi.FieldByName('Serie').AsString;
      cxFolio.Text       := frmBancosMovimientos.zCfdi.FieldByName('Folio').AsString;
      dFecha.Date        := frmBancosMovimientos.zCfdi.FieldByName('FechaFactura').AsDateTime; ;


      // Datos layot button
      cxFormaPago.Text   := frmBancosMovimientos.zCfdi.FieldByName('Titulo').AsString ;
      cxMetodoPago.Text  := frmBancosMovimientos.zCfdi.FieldByName('MetodoP').AsString ;
      cxUso.Text         := frmBancosMovimientos.zCfdi.FieldByName('RegimenFiscal_Emisor').AsString ;
      cxUUID.Text        := frmBancosMovimientos.zCfdi.FieldByName('Folio_UUID').AsString ;
      cxTotal.Value      := frmBancosMovimientos.zCfdi.FieldByName('Total').AsFloat;

      try
        NombreXML:= ExtractFilePath(Application.ExeName)+'\xml_read.xml';
        AssignFile(archivoTxt, NombreXML);
        Rewrite(archivoTXT);
        Writeln(archivoTXT, frmBancosMovimientos.zCfdi.FieldByName('ArchivoXML').AsString);
      finally
        Closefile(archivoTXT);
      end;
  {$region 'Leer xml'}
      mConceptos.Active := False;
      mConceptos.Active := True;
      XML.Active := False;
      XML.FileName := NombreXML;
      XML.Active := True;
      ComprobanteXML := XML.DocumentElement;

      if ComprobanteXML.Attributes['TipoCambio'] = null then
        cxTipoCambio.EditValue := 1.00
      else
        cxTipoCambio.EditValue := ComprobanteXML.Attributes['TipoCambio'];

      cxSubtotal.EditValue := ComprobanteXML.Attributes['SubTotal'];

      if ComprobanteXML.Attributes['Descuento'] = null then
        cxDescuentos.EditValue := 0.00
      else
        cxDescuentos.EditValue := ComprobanteXML.Attributes['Descuento'];

      cxTotal.EditValue := ComprobanteXML.Attributes['Total'];

      for i := 0 to ComprobanteXML.ChildNodes.Count-1 do
      begin
        Nodo := ComprobanteXML.ChildNodes[i];

        if pos('cfdi:Emisor',Nodo.XML) > 0 then
        begin

        end;

        if pos('cfdi:Conceptos',Nodo.XML) > 0 then
        begin
          ConceptosXML := ComprobanteXML.ChildNodes[i];
          for j := 0 to ConceptosXML.ChildNodes.Count-1 do
          begin
            SubNodo := ConceptosXML.ChildNodes[j];
            if pos('cfdi:Concepto',SubNodo.XML) > 0 then
            begin
              ConceptoXML := ConceptosXML.ChildNodes[j];
              mConceptos.Append;
              mConceptos.FieldByName('Cantidad').AsVariant := ConceptoXML.Attributes['Cantidad'];
              mConceptos.FieldByName('Unidad').AssTRING := VarToStr(ConceptoXML.Attributes['ClaveUnidad'])+' '+VarToStr(ConceptoXML.Attributes['Unidad']);
              mConceptos.FieldByName('Descripcion').AsVariant := ConceptoXML.Attributes['Descripcion'];
              mConceptos.FieldByName('PrecioUnit').AsVariant := ConceptoXML.Attributes['ValorUnitario'];
              mConceptos.FieldByName('Importe').AsVariant := ConceptoXML.Attributes['Importe'];
              mConceptos.Post;
            end;
          end;

        end;

        if pos('cfdi:Impuestos',Nodo.XML) > 0 then
        begin
          ImpuestosXML := ComprobanteXML.ChildNodes[i];

          if ImpuestosXML.Attributes['TotalImpuestosTrasladados'] = null then
            cxTraslados.EditValue := 0.00
          else
            cxTraslados.EditValue := ImpuestosXML.Attributes['TotalImpuestosTrasladados'];

          if ImpuestosXML.Attributes['TotalImpuestosRetenidos'] = null then
            cxRetenciones.EditValue := 0.00
          else
            cxRetenciones.EditValue := ImpuestosXML.Attributes['TotalImpuestosRetenidos'];



        end;

        if pos('cfdi:Complemento',Nodo.XML) > 0 then
        begin
          ComplementoXML     := ComprobanteXML.ChildNodes[i];
          for j := 0 to ComplementoXML.ChildNodes.Count-1 do
          begin
            SubNodo := ComplementoXML.ChildNodes[j];
            if pos('tfd:TimbreFiscalDigital',SubNodo.XML) > 0 then
            begin
              TimbreXML := ComplementoXML.ChildNodes[j];
            end;

          end;


        end;


      end;



    {$endregion}


    end;
  end;
end;



procedure TfrmVisualizaComprobanteFD.cxEditaDetalleClick(Sender: TObject);
begin
  if cxPageControl1.ActivePage = cxTabCuentasPorPagar then
    begin
      cxDiasCredito.Enabled:=True;
      cxProyecto.Enabled:=True;
      cxMonto.Enabled:=True;
      cxCotizacion.Enabled:=True;
      dxLayoutItem38.Enabled:=True;
      cxOC.Enabled:=True;
      btnAceptarCPP.Visible:=True;
      zCuentasPorPagar.Edit;
//      zCuentasPorPagar.FieldByName('IdComprobanteFiscal').AsFloat:=frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger
    end;
end;

procedure TfrmVisualizaComprobanteFD.cxEliminarClick(Sender: TObject);
var
  contReg: Integer;
  busca : TUniquery;
  msjError : String;
  indice, iGrid    : integer;
  clMonto,montocomp,montoCPP,sumabono:Double;
  iValorNumerico   : LongInt  ;
  Resultado        : Real     ;
begin
   If zCuentasPorPagar.RecordCount  > 0 then begin

        if MessageDlg('Desea eliminar el/los Registro(s)?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then  begin
           try

              iGrid     := 0;
              indice := cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
              cxView_Comprobantes.DataController.FocusedRowIndex := indice;

              with cxView_Comprobantes.DataController.DataSource.DataSet do
              for iGrid := 0 to cxView_Comprobantes.DataController.GetSelectedCount - 1 do
              begin
                  indice := cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
                  cxView_Comprobantes.DataController.FocusedRowIndex := indice;

                 AsignarSQL(connection.qryUBusca,'eliminar_cpp_comp',pUpdate);
                 FiltrarDataSet(connection.qryUBusca,'IdComprobanteCPP',[cxView_Comprobantes.DataController.DataSet.FieldByName('IdComprobanteCPP').AsInteger]);
                 connection.qryUBusca.ExecSQL;

              end;

              cxView_Comprobantes.DataController.ClearSelection;
              zCuentasPorPagar.Refresh;

              except
                on E : exception do begin
                   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Comprobantes Fiscales Digitales', 'Al eliminar registro', 0);
                end;
            end;
        end;

        zCuentasPorPagar.First;
        while (not zCuentasPorPagar.Eof) do
        begin
          clMonto:= clMonto + zCuentasPorPagar.FieldByName('Total').AsFloat;
          zCuentasPorPagar.Next;
        end;


        iValorNumerico   := Trunc(clMonto);
        Resultado := roundto(clMonto - iValorNumerico, -2) ;
        Resultado := Resultado + iValorNumerico;

        sumabono:=sumabono + Resultado;


        if((assigned(frmComprobantesFiscalesD)) and (frmComprobantesFiscalesD.Active) )then begin
          iValorNumerico   := Trunc(frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('Total').AsFloat) ;
          Resultado := roundto(frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('Total').AsFloat - iValorNumerico, -2) ;
        end
        else
        if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active) )then begin
          iValorNumerico   := Trunc(frmBancosMovimientos.cxGridCFDIDBTableView1.DataController.DataSource.DataSet.FieldByName('Total').AsFloat) ;
          Resultado := roundto(frmBancosMovimientos.cxGridCFDIDBTableView1.DataController.DataSource.DataSet.FieldByName('Total').AsFloat - iValorNumerico, -2) ;
        end;
        Resultado := Resultado + iValorNumerico;
        montoCPP:=montoCPP + abs(Resultado);

        cxCPPTotalAbonos.EditValue := sumabono;
        cxCPPSaldoF.EditValue:=montoCPP-sumabono;

      end;
   end;


procedure TfrmVisualizaComprobanteFD.cxNuevoDetalleClick(Sender: TObject);
begin
   if cxPageControl1.ActivePage = cxTabCuentasPorPagar then
    begin
      cxDiasCredito.Enabled:=True;
      cxProyecto.Enabled:=True;
      cxMonto.Enabled:=True;
      cxCotizacion.Enabled:=True;
      dxLayoutItem38.Enabled:=True;
      cxOC.Enabled:=True;
      btnAceptarCPP.Visible:=True;
      btnCancelarCPP.Visible:=True;
      zCuentasPorPagar.Append;
      if((assigned(frmComprobantesFiscalesD)) and (frmComprobantesFiscalesD.Active) )then
      zCuentasPorPagar.FieldByName('IdComprobanteFiscal').AsFloat:=frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger
      else
      if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active) )then
      zCuentasPorPagar.FieldByName('IdComprobanteFiscal').AsFloat:=frmBancosMovimientos.cxGridCFDIDBTableView1.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger;
    end;
end;

procedure TfrmVisualizaComprobanteFD.cxPageControl1Change(Sender: TObject);
var
sumabono,montoCPP,clMonto : Double;
iValorNumerico   : LongInt  ;
Resultado        : Real     ;
begin
  cxNuevoDetalle.Visible:=False;
  cxEditaDetalle.Visible:=False;
  cxEliminar.Visible:=False;
  if cxPageControl1.ActivePage = cxTabCancelacion then
  begin
    if((assigned(frmComprobantesFiscalesD)) and (frmComprobantesFiscalesD.Active) )then begin
      if (frmComprobantesFiscalesD.zComprobantes.FieldByName('FechaCancelacion').IsNull) and
         (frmComprobantesFiscalesD.zComprobantes.FieldByName('UsuarioCancelo').AsString = '') and
         (frmComprobantesFiscalesD.zComprobantes.FieldByName('MotivoCancelacion').AsString = '')then
         begin
           cdFecha.Date := StrToDate(FormatDateTime('dd/mm/yyyy',now));;
           cxUsuario.Text := global_usuario;
           mMotivo.Text := '';
         end
         else
         begin
           cdFecha.Date := frmComprobantesFiscalesD.zComprobantes.FieldByName('FechaCancelacion').AsDateTime;
           cxUsuario.Text := frmComprobantesFiscalesD.zComprobantes.FieldByName('UsuarioCancelo').AsString;
           mMotivo.Text := frmComprobantesFiscalesD.zComprobantes.FieldByName('MotivoCancelacion').AsString;
         end;
    end
    else begin
      if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active))then begin
          if (frmBancosMovimientos.zCfdi.FieldByName('FechaCancelacion').IsNull) and
             (frmBancosMovimientos.zCfdi.FieldByName('UsuarioCancelo').AsString = '') and
             (frmBancosMovimientos.zCfdi.FieldByName('MotivoCancelacion').AsString = '')then
             begin
               cdFecha.Date := StrToDate(FormatDateTime('dd/mm/yyyy',now));;
               cxUsuario.Text := global_usuario;
               mMotivo.Text := '';
             end
             else
             begin
               cdFecha.Date := frmBancosMovimientos.zCfdi.FieldByName('FechaCancelacion').AsDateTime;
               cxUsuario.Text := frmBancosMovimientos.zCfdi.FieldByName('UsuarioCancelo').AsString;
               mMotivo.Text := frmBancosMovimientos.zCfdi.FieldByName('MotivoCancelacion').AsString;
             end;
      end
    end;
  end
  else
  if cxPageControl1.ActivePage = cxTabCuentasPorPagar then
  begin
    cxDiasCredito.Enabled:=False;
    cxProyecto.Enabled:=False;
    cxMonto.Enabled:=False;
    cxCotizacion.Enabled:=False;
    dxLayoutItem38.Enabled:=False;
    cxOC.Enabled:=False;
    btnAceptarCPP.Visible:=False;
    btnCancelarCPP.Visible:=False;
    cxNuevoDetalle.Visible:=True;
    cxEditaDetalle.Visible:=True;
    cxEliminar.Visible:=True;
    zCuentasPorPagar.Active:=False;
    AsignarSQL(zCuentasPorPagar, 'comprobantes_cpp', pUpdate);
    if((assigned(frmComprobantesFiscalesD)) and (frmComprobantesFiscalesD.Active) )then
    FiltrarDataSet(zCuentasPorPagar, 'IdComprobanteCPP,IdComprobanteFiscal', [-1,frmComprobantesFiscalesD.zComprobantes.FieldByName('IdComprobanteFiscal').AsString])
    else
    if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active) )then
    FiltrarDataSet(zCuentasPorPagar, 'IdComprobanteCPP,IdComprobanteFiscal', [-1,frmBancosMovimientos.zCfdi.FieldByName('IdComprobanteFiscal').AsString]);
    zCuentasPorPagar.Open;

    zOrdenesdeTrabajo.Active:= False;
      AsignarSQL(zOrdenesdeTrabajo,'ordenesdetrabajo_req',pUpdate);
      if connection.uconfiguracion.FieldByName('VerTodosProyectos').AsString = 'No' then
           FiltrarDataSet(zOrdenesdeTrabajo,'Contrato,Tipo',[global_contrato,'-1'])
      else
           FiltrarDataSet(zOrdenesdeTrabajo,'Contrato,Tipo',['%','PRESUPUESTO']);
      zOrdenesdeTrabajo.Open;

       zAnexo_pedidos.Active:=False;
       AsignarSQL(zAnexo_pedidos,'anexo_pedidos', pUpdate);
       FiltrarDataSet(zAnexo_pedidos,'Contrato',[global_contrato]);
       zAnexo_pedidos.Open;

       zCuentasPorPagar.First;
      while (not zCuentasPorPagar.Eof) do
      begin
        clMonto:= clMonto + zCuentasPorPagar.FieldByName('Total').AsFloat;
        zCuentasPorPagar.Next;
      end;

      iValorNumerico   := Trunc(clMonto);
      Resultado := roundto(clMonto - iValorNumerico, -2) ;
      Resultado := Resultado + iValorNumerico;

      sumabono:=sumabono + Resultado;

      if((assigned(frmComprobantesFiscalesD)) and (frmComprobantesFiscalesD.Active) )then begin
        iValorNumerico   := Trunc(frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('Total').AsFloat) ;
        Resultado := roundto(frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('Total').AsFloat - iValorNumerico, -2) ;
      end
      else
      if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active) )then begin
        iValorNumerico   := Trunc(frmBancosMovimientos.cxGridCFDIDBTableView1.DataController.DataSource.DataSet.FieldByName('Total').AsFloat) ;
        Resultado := roundto(frmBancosMovimientos.cxGridCFDIDBTableView1.DataController.DataSource.DataSet.FieldByName('Total').AsFloat - iValorNumerico, -2) ;
      end;
      Resultado := Resultado + iValorNumerico;
      montoCPP:=montoCPP + abs(Resultado);

      cxCPPTotalAbonos.EditValue := sumabono;
      cxCPPSaldoF.EditValue:=montoCPP-sumabono;

  end;

end;

procedure TfrmVisualizaComprobanteFD.cxProyectoPropertiesChange(
  Sender: TObject);
  var
   AValue: Variant;
begin
 AValue := TcxLookupComboBox(Sender).EditValue;

    if (AValue <> null) then begin

       zAnexo_pedidos.Active:=False;
       AsignarSQL(zAnexo_pedidos,'anexo_pedidos_cuentas_pp', pUpdate);
       FiltrarDataSet(zAnexo_pedidos,'Contrato,NumeroOrden',[global_contrato,AValue]);
       zAnexo_pedidos.Open;



    end;
end;

procedure TfrmVisualizaComprobanteFD.cxProyectoPropertiesEditValueChanged(
  Sender: TObject);
var
  zIdCompr,zInsert,zActualizar:TUniquery;
  Val:String;
begin
  zIdCompr:=tUniquery.create(nil);
  zIdCompr.Connection := connection.uConnection;


  zInsert:=tUniquery.create(nil);
  zInsert.Connection := connection.uConnection;
  zInsert.Active := False;

  zActualizar:=tUniquery.create(nil);
  zActualizar.Connection := connection.uConnection;

  TcxLookupComboBox(Sender).PostEditValue;
  Val:=cxProyecto.EditValue;

  zIdCompr.Active:=False;
  AsignarSQL(zIdCompr,'comprobante_movimiento_indicadores', pUpdate);
  if((assigned(frmComprobantesFiscalesD)) and (frmComprobantesFiscalesD.Active) )then
  FiltrarDataSet(zIdCompr,'Comprobante',[frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger])
  else
  if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active) )then
  FiltrarDataSet(zIdCompr,'Comprobante',[frmBancosMovimientos.cxGridCFDIDBTableView1.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
  zIdCompr.Open;

  if zIdCompr.RecordCount>0 then  begin
    zActualizar.Active:=False;
    if Val<>'' then begin
      AsignarSQL(zActualizar,'uc_movimiento_indicadores', pUpdate);
      if((assigned(frmComprobantesFiscalesD)) and (frmComprobantesFiscalesD.Active) )then
      FiltrarDataSet(zActualizar,'sNumeroOrden,IdComprobante',[cxProyecto.EditValue,frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger])
      else
      if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active) )then
      FiltrarDataSet(zActualizar,'sNumeroOrden,IdComprobante',[cxProyecto.EditValue,frmBancosMovimientos.cxGridCFDIDBTableView1.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger])
    end
    else begin
      AsignarSQL(zActualizar,'uc_movimiento_indicadores_n', pUpdate);
      if((assigned(frmComprobantesFiscalesD)) and (frmComprobantesFiscalesD.Active) )then
      FiltrarDataSet(zActualizar,'IdComprobante',[frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger])
      else
      if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active) )then
      FiltrarDataSet(zActualizar,'IdComprobante',[frmBancosMovimientos.cxGridCFDIDBTableView1.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
    end;
    zActualizar.ExecSQL;
  end
  else begin
    zInsert.Active:=False;
    AsignarSQL(zInsert,'mov_ind_ins_proyecto', pUpdate);
    if((assigned(frmComprobantesFiscalesD)) and (frmComprobantesFiscalesD.Active) )then
    FiltrarDataSet(zInsert,'sNumeroOrden,IdComprobante',[cxProyecto.EditValue,frmComprobantesFiscalesD.cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger])
    else
    if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active) )then
    FiltrarDataSet(zInsert,'sNumeroOrden,IdComprobante',[cxProyecto.EditValue,frmBancosMovimientos.cxGridCFDIDBTableView1.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
    zInsert.ExecSQL;
  end;

end;

procedure TfrmVisualizaComprobanteFD.cxView_ComprobantesCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
iValorNumerico   : LongInt  ;
Resultado        : Real     ;
begin


cxDiasCredito.EditValue:=zCuentasPorPagar.FieldByName('DiasC').AsInteger;
cxProyecto.EditValue:= zCuentasPorPagar.FieldByName('sNumeroOrden').AsString;
cxCotizacion.EditValue:=zCuentasPorPagar.FieldByName('Cotizacion').AsString;
cxOC.EditValue:=zCuentasPorPagar.FieldByName('IdOrdenCompra').AsInteger;

  iValorNumerico   := Trunc(zCuentasPorPagar.FieldByName('Total').AsFloat);
  Resultado := roundto(zCuentasPorPagar.FieldByName('Total').AsFloat - iValorNumerico, -2) ;
  Resultado := Resultado + iValorNumerico;

cxMonto.EditValue:=Resultado;
cxView_Comprobantes.DataController.FocusedRowIndex;
end;

procedure TfrmVisualizaComprobanteFD.FormShow(Sender: TObject);
var
  indice, iGrid    : integer;
  sumabono,monto : Double;
  iValorNumerico   : LongInt  ;
  Resultado        : Real     ;
begin
  cxTraslados.EditValue := 0.00;
  cxRetenciones.EditValue := 0.00;
  CargarDatos;

  AsignarSQL(zHistorial, 'cont_cfdi_detallemovimiento', pUpdate);
   if((assigned(frmComprobantesFiscalesD)) and (frmComprobantesFiscalesD.Active)) then
  FiltrarDataSet(zHistorial, 'IdComprobante,Movimiento', [frmComprobantesFiscalesD.zComprobantes.FieldByName('IdComprobanteFiscal').AsString,-1]);
   if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active)) then
   FiltrarDataSet(zHistorial, 'IdComprobante,Movimiento', [frmBancosMovimientos.zCfdi.FieldByName('IdComprobanteFiscal').AsString,-1]);

 // FiltrarDataSet(zHistorial, 'IdComprobante,Movimiento', [-1,frmComprobantesFiscalesD.zComprobantes.FieldByName('Movimiento').AsString]);
  zHistorial.Open;

    iValorNumerico:= Trunc(cxView_Historial.DataController.DataSource.DataSet.FieldByName('MontoComp').AsFloat) ;
    Resultado := roundto( cxView_Historial.DataController.DataSource.DataSet.FieldByName('MontoComp').AsFloat - iValorNumerico, -2) ;
    Resultado := Resultado + iValorNumerico;

    sumabono:=sumabono + abs(Resultado);


  iValorNumerico   := Trunc(zHistorial.FieldByName('Total').AsFloat) ;
  Resultado := roundto(zHistorial.FieldByName('Total').AsFloat - iValorNumerico, -2) ;
  Resultado := Resultado + iValorNumerico;
  monto:=monto + abs(Resultado);

  cxTotalAbonos.EditValue := sumabono;
  cxSaldoFinalCFDI.EditValue:=monto-sumabono;

  cxTotalCambio.EditValue := cxTotal.EditValue * cxTipoCambio.EditValue;

  cxCFDIRelacionados.TabVisible := False;
  cxTabNotasCredito.TabVisible := False;

  zRelacionado.Active := False;
  AsignarSQL(zRelacionado, 'comprobantes_relacionados', pUpdate);
  if((assigned(frmComprobantesFiscalesD)) and (frmComprobantesFiscalesD.Active)) then
  FiltrarDataSet(zRelacionado, 'FolioRelacionado', [frmComprobantesFiscalesD.zComprobantes.FieldByName('Folio_UUID').AsString]) ;
 if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active)) then
 FiltrarDataSet(zRelacionado, 'FolioRelacionado', [frmBancosMovimientos.zCfdi.FieldByName('Folio_UUID').AsString]) ;
  zRelacionado.open;

  zNotaCredito.Active := False;
  AsignarSQL(zNotaCredito, 'comprobantes_notacredito', pUpdate);
   if((assigned(frmComprobantesFiscalesD)) and (frmComprobantesFiscalesD.Active)) then
  FiltrarDataSet(zNotaCredito, 'FolioRelacionado', [frmComprobantesFiscalesD.zComprobantes.FieldByName('Folio_UUID').AsString]) ;
   if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.Active)) then
  FiltrarDataSet(zNotaCredito, 'FolioRelacionado', [frmBancosMovimientos.zCfdi.FieldByName('Folio_UUID').AsString]) ;
  zNotaCredito.open;

  if zRelacionado.RecordCount > 0 then
    cxCFDIRelacionados.TabVisible := True;

  if zNotaCredito.RecordCount > 0 then
    cxTabNotasCredito.TabVisible := True;



   cxPageControl1Change(Sender);

end;






end.

