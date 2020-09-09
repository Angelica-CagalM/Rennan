unit frm_CuentasPorPagar;
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
  dxDBCheckGroupBox, Vcl.ComCtrls, dxCore, cxDateUtils, cxListBox, Xml.xmldom,
  Xml.XMLIntf, Xml.Win.msxmldom, Xml.XMLDoc,DateUtils, frxExportDOCX,
  VCLTee.TeCanvas, FolderDialog;


type
  TfrmCuentasPorPagar = class(TForm)
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
    Clientes: TUniQuery;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    frxReport1: TfrxReport;
    dlgXML: TFileOpenDialog;
    dlgSavePDF: TSaveDialog;
    PopupMenu1: TPopupMenu;
    VistaPrevia1: TMenuItem;
    imgStars: TcxImageList;
    frxDBClientes: TfrxDBDataset;
    Reporte: TUniQuery;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    OpenPicture: TOpenPictureDialog;
    QryBusca: TUniQuery;
    monedas: TUniQuery;
    ds_monedas: TDataSource;
    zComprobantes: TUniQuery;
    ds_comprobantes: TDataSource;
    PanelPrincipal: TPanel;
    Panel1: TPanel;
    bancos2: TUniQuery;
    ds_bancos2: TDataSource;
    Panel5: TPanel;
    btnImportar: TcxButton;
    cxSplitterOpciones: TcxSplitter;
    XML: TXMLDocument;
    zImportarXML: TUniQuery;
    zFormaPago: TUniQuery;
    dsFormaPago: TDataSource;
    BalloonHint1: TBalloonHint;
    zTipoComprobante: TUniQuery;
    dsTipoComprobante: TDataSource;
    zRfc: TUniQuery;
    dsRfc: TDataSource;
    btnVisualiza: TcxButton;
    PopupMenu2: TPopupMenu;
    btnSelect: TcxButton;
    frxDOCXExport1: TfrxDOCXExport;
    cxButton1: TcxButton;
    btnDescargar: TcxButton;
    SaveDialog1: TSaveDialog;
    FolderDlg1: TFolderDialog;
    AnularCotizacion: TMenuItem;
    btnFormCFDI: TcxButton;
    btnCotizacionDocto: TcxButton;
    cxView_Comprobantes: TcxGridDBTableView;
    grid_comprobantesLevel1: TcxGridLevel;
    grid_comprobantes: TcxGrid;
    cxView_FechaFactura: TcxGridDBColumn;
    cxView_FechaEntrega: TcxGridDBColumn;
    cxView_DiasCredito: TcxGridDBColumn;
    cxView_FechaPago: TcxGridDBColumn;
    cxView_DiasVencidos: TcxGridDBColumn;
    cxView_Series: TcxGridDBColumn;
    cxView_Folio: TcxGridDBColumn;
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
    zOrdenesdeTrabajo: TUniQuery;
    ds_OrdenesdeTrabajo: TDataSource;
    zAnexo_pedidos: TUniQuery;
    ds_anexo_pedidos: TDataSource;
    Panel4: TPanel;
    dxLayoutControl4: TdxLayoutControl;
    btnExpandir: TcxButton;
    cbEjercicio: TcxComboBox;
    cxInicio: TcxDateEdit;
    cxFin: TcxDateEdit;
    cbTipo: TcxLookupComboBox;
    cxEstado: TcxComboBox;
    cbFormaPago: TcxLookupComboBox;
    cbEstadoSaldo: TcxComboBox;
    btnLimpiarF: TcxButton;
    cxFiltroRequerido: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutGroupPeriodo: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutItem24: TdxLayoutItem;
    AnularFechaEntrega1: TMenuItem;
    cxView_RFC: TcxGridDBColumn;
    cxView_RazonSocial: TcxGridDBColumn;
    btnRefresh: TcxButton;
    cbRFC: TcxComboBox;
    dxLayoutItem1: TdxLayoutItem;

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
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
    procedure btnVisualizaClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cxFiltroRequeridoClick(Sender: TObject);
    procedure btnLimpiarFClick(Sender: TObject);
    procedure cbFormaPagoPropertiesChange(Sender: TObject);
    procedure cxDBComboBox1PropertiesChange(Sender: TObject);
    procedure filtrosTodos;
    procedure CancelarCFDI1Click(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbRFCPropertiesEditValueChanged(Sender: TObject);
    procedure AnularCancelacionClick(Sender: TObject);
    procedure listaXMLDrawItem(AControl: TcxListBox; ACanvas: TcxCanvas;
      AIndex: Integer; ARect: TRect; AState: TOwnerDrawState);
    procedure cxButton1Click(Sender: TObject);
    procedure btnDescargarClick(Sender: TObject);
    procedure cxView_ComprobantesStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btnFormCFDIClick(Sender: TObject);
    procedure btnCotizacionDoctoClick(Sender: TObject);
    procedure AnularCotizacionClick(Sender: TObject);
    procedure cxView_ProyectoPropertiesChange(Sender: TObject);
    procedure AnularFechaEntrega1Click(Sender: TObject);
    procedure cxView_ProyectoPropertiesEditValueChanged(Sender: TObject);
    procedure cxView_OrdenCompraPropertiesEditValueChanged(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
    IdComprobante : Integer;
    Folio : String;
    btnCot:Boolean;
  end;

var
  frmCuentasPorPagar : TfrmCuentasPorPagar;
  Opcion         : String ;
  banderaAgregar : Boolean;
  scuentabanco,  Archivo   : string;
  bCuentasBanco  : boolean;
  titulo,titulo2,sArc : string;
  lNoGuardarDocto,bImagenDefault :boolean;
  btnPermisos     :String;

//  AGridSite: TcxGridSiteAccess;
//  AScrollBar: TcxControlScrollBarHelper;
//  APos: Integer;

implementation
uses
    frm_connection,
    frm_pedidos,
    Func_Genericas,
    frm_catalogos_almacen, frm_Catalogos_rh_tipos, frm_Presupuesto,
  frm_clientes, frm_VisualizaComprobanteFD, Frm_BancosMovimientos, Frm_Modal,Frm_Comentarios;
{$R *.dfm}

procedure TfrmCuentasPorPagar.EnterControl(Sender: TObject);
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

    if (sender is tcxDBlookUpComboBox) then
        tcxDBlookUpComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmCuentasPorPagar.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBlookUpComboBox) then
        tcxDBlookUpComboBox(sender).Style.Color := global_color_SalidaERP;

     if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;
end;


procedure TfrmCuentasPorPagar.FormShow(Sender: TObject);
var
 x : TDateTime;
 Year, Month, Day, Hour, Min, Sec, MSec, Days: Word;
  recibe : String;
  iMaxID:String;
  AFindPanel: TcxGridFindPanel;
begin
  btnPermisos := global_btnPermisos;
    try
      //Panel2.Visible := False;
      //cxSplitter1.Visible := False;

      titulo:='Cuentas Por Pagar';
      cxLeyenda.Caption:=titulo;
    //  frmBarraH21.btnCancel.Click ;

      btnSelect.Visible := False;

      AsignarSQL(zcomprobantes,'cont_comprobantes',pUpdate);
      zcomprobantes.Open;
      cxView_Comprobantes.DataController.Groups.FullExpand;
      frmBarraH11.btnAdd.Visible  := False;
      frmBarraH11.btnEdit.Visible  := False;

      AsignarSQL(zFormaPago,'cont_cfdi_formapago', pUpdate);
//       FiltrarDataSet(zTipoComprobante,'IdTipo',[-1]);
      zFormaPago.Open;

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

      AsignarSQL(zTipoComprobante,'cont_cfdi_tipocomprobante',pUpdate);
      zTipoComprobante.Open;

      // cont_rfc_comprobante
      AsignarSQL(zRfc, 'master_proveedor_cliente', pupdate);

      zRfc.Open;

      filtrosTodos;

      PermisosBotones(frmCuentasPorPagar,btnPermisos);

      if (global_frmActivo = 'Movimientos') then begin

        if frmBancosMovimientos.AbreComprobante = 'AbrirComprobante' then
        begin
//           if (frmBancosMovimientos.cxProveedor.Visible = true) then
//           begin
//            if frmBancosMovimientos.cxProveedor.Properties.ListSource.DataSet.Locate('IdProveedor',frmBancosMovimientos.cxProveedor.EditValue,[]) then
//             //if  zRFC.Locate('RFC',frmBancosMovimientos.cxProveedor.Properties.ListSource.DataSet.FieldByName('RFC').AsString,[loCaseInsensitive]) then
//              cbRFC.EditValue := frmBancosMovimientos.cxProveedor.Properties.ListSource.DataSet.FieldByName('RFC').AsString;
//           end;
//
//           if frmBancosMovimientos.cxIdCliente.Visible = true then
//           begin
//             if frmBancosMovimientos.cxIdCliente.Properties.ListSource.DataSet.Locate('IdCliente',frmBancosMovimientos.cxIdCliente.EditValue,[]) then
//              cbRFC.EditValue := frmBancosMovimientos.cxIdCliente.Properties.ListSource.DataSet.FieldByName('RFC').AsString;
//           end;

            cxInicio.Text  := '';
            cxFin.Text := '';
            cbEstadoSaldo.Text := 'PENDIENTE' ;
            cxFiltroRequerido.OnClick(nil);

            btnSelect.Visible := True;

        end;
      end;

//       if((assigned(frmBancosMovimientos)) and (frmBancosMovimientos.lCont))then begin
//          with cxView_Comprobantes.DataController do
//           begin
//             filter.BeginUpdate;
//             try
//               Filter.Root.Criteria.Options := Filter.Root.Criteria.Options + [fcoCaseInsensitive];
//               Filter.Root.AddItem(cxView_Comprobantes.Columns[5], foEqual, frmBancosMovimientos.Proveedores.FieldByName('RFC').AsString, frmBancosMovimientos.Proveedores.FieldByName('RFC').AsString);
//             finally
//               Filter.EndUpdate;
//               if not Filter.Active then Filter.Active := true;
//             end;
//           end;
//       end;


    except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Comprabantes Fiscales Digitales', 'Al iniciar el formulario', 0);
    end;
 end;

 guardar_leer_grid(cxView_comprobantes,frmCuentasPorPagar,0) ;
end;

procedure TfrmCuentasPorPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     // guardar_leer_grid(cxView_comprobantes,frmComprobantesFiscalesD,1) ;

      zComprobantes.Cancel ;
      action := cafree ;
end;

procedure TfrmCuentasPorPagar.FormCreate(Sender: TObject);
begin
      if global_frmActivo = 'AbrirComprobante' then
      begin


//        Formcomprobante := TfrmComprobantesFiscalesD.Create(self);
    //    self.FormStyle := fsNormal;
        self.Position := poScreenCenter;
        self.Scaled := False;
        self.Width := 1300;
        self.Height := 700;
//        self.Visible := False;
        self.btnSelect.Visible := False;
      end;
end;

procedure TfrmCuentasPorPagar.frmBarra1btnAddClick(Sender: TObject);
begin
  try
       frmBarraH11.btnAddClick(Sender);
       grid_comprobantes.Enabled:=false;
//       bancos.Append ;

     except
     on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Compraobantes Fiscales Digitales', 'Al agregar registro ', 0);
     end;
  end;
  frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmCuentasPorPagar.frmBarra1btnEditClick(Sender: TObject);
begin

   banderaAgregar:=false;
   frmBarraH11.btnEditClick(Sender);

   try
//      bancos.Edit ;
      grid_comprobantes.Enabled:=false;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Compraobantes Fiscales Digitales', 'Al editar registro', 0);
          //frmBarraH21.btnCancel.Click ;
      end;
   end ;

     frmBarraH11.btnPrinter.Enabled:=false;
end;


procedure TfrmCuentasPorPagar.frmBarra1btnCancelClick(Sender: TObject);
begin
 try
  //frmBarraH21.btnCancelClick(Sender);
//  bancos.Cancel ;
  grid_comprobantes.Enabled:=True;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Compraobantes Fiscales Digitales', 'Al cancelar', 0);
  end;
 end;
 frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmCuentasPorPagar.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if cxView_Comprobantes.DataController.DataSource.DataSet.IsEmpty=false then
  begin
    if cxView_Comprobantes.DataController.DataSource.DataSet.RecordCount>0 then
    begin

      if MessageDlg('Desea eliminar el Registro Activo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        begin


            try
//              bancos.Delete ;

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

end;

procedure TfrmCuentasPorPagar.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  Clientes.Active := False ;
  Clientes.Open
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Compraobantes Fiscales Digitales', 'Al actualizar grid', 0);
  end;
 end;
end;

procedure TfrmCuentasPorPagar.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  ;
end;


procedure TfrmCuentasPorPagar.Insertar1Click(Sender: TObject);
begin
    frmBarraH11.btnAdd.Click
end;

procedure TfrmCuentasPorPagar.listaXMLDrawItem(AControl: TcxListBox;
  ACanvas: TcxCanvas; AIndex: Integer; ARect: TRect; AState: TOwnerDrawState);
begin
//with listaXML.Canvas do
//  begin
//   if odSelected in AState then
//    Brush.Color := clRed
//   else
//    Brush.Color := clGreen;
//   FillRect(ARect);
//   TextOut(ARect.Left + 4, ARect.Top + 1, listaXML.Items[AIndex]);
//  end;
end;

procedure TfrmCuentasPorPagar.Editar1Click(Sender: TObject);
begin
    frmBarraH11.btnEdit.Click
end;

procedure TfrmCuentasPorPagar.Registrar1Click(Sender: TObject);
begin
    //frmBarraH21.btnPost.Click
end;

procedure TfrmCuentasPorPagar.AnularCancelacionClick(Sender: TObject);
var
indice, iGrid    : integer;
zDatos:Tuniquery;
begin
 if MessageDlg('Desea Anular la Cancelación del Registro Seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then  begin
    try
          iGrid     := 0;
          indice := cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
          cxView_Comprobantes.DataController.FocusedRowIndex := indice;

          with cxView_Comprobantes.DataController.DataSource.DataSet do
          for iGrid := 0 to cxView_Comprobantes.DataController.GetSelectedCount - 1 do
          begin
            indice := cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
            cxView_Comprobantes.DataController.FocusedRowIndex := indice;
             AsignarSQL(Connection.QryUBusca2,'update_comentarios_CFDI',pUpDate);
             FiltrarDataSet(Connection.QryUBusca2,'Estatus,Comprobante',['VIGENTE', cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
             Connection.QryUBusca2.ExecSQL;

          end;
          zComprobantes.Refresh;
       //   close;

          except
          on E : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Comprobantes Fiscales Digitales', 'Al Anular Cancelacion de CFDI', 0);
          end;

      end;



//    zComprobantes.Edit;
//    zComprobantes.FieldByName('Estatus').AsString := 'VIGENTE' ;
//    zComprobantes.Post;
//    zComprobantes.RefreshRecord;
  end;
end;



procedure TfrmCuentasPorPagar.AnularCotizacionClick(Sender: TObject);
var
indice, iGrid    : integer;
//movimiento_indicadores
zIdCompr,zInsert,zActualizar:TUniquery;
Val:String;
begin

  zIdCompr:=tUniquery.create(nil);
  zIdCompr.Connection := connection.uConnection;

  zActualizar:=tUniquery.create(nil);
  zActualizar.Connection := connection.uConnection;

  if MessageDlg('Desea Anular la(s) cotizacion(es) Seleccionada(s)?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then  begin

    try
          iGrid     := 0;
          indice := cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
          cxView_Comprobantes.DataController.FocusedRowIndex := indice;

          with cxView_Comprobantes.DataController.DataSource.DataSet do
          for iGrid := 0 to cxView_Comprobantes.DataController.GetSelectedCount - 1 do
          begin
            indice := cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
            cxView_Comprobantes.DataController.FocusedRowIndex := indice;

            connection.qryUBusca.Active:=False;
            AsignarSQL(connection.qryUBusca,'elimina_cotizacion_documentos',pUpdate);
            FiltrarDataSet(connection.qryUBusca,'Comprobante',[cxView_Comprobantes.DataController.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
            connection.qryUBusca.ExecSQL;

            zIdCompr.Active:=False;
            AsignarSQL(zIdCompr,'comprobante_movimiento_indicadores', pUpdate);
            FiltrarDataSet(zIdCompr,'Comprobante',[cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
            zIdCompr.Open;

            if zIdCompr.RecordCount>0 then  begin
                zActualizar.Active:=False;
                AsignarSQL(zActualizar,'ucotizacion_mov_indicadores_n', pUpdate);
                FiltrarDataSet(zActualizar,'IdComprobante',[cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
                zActualizar.ExecSQL;
            end;

          end;
          zComprobantes.Refresh;

          except
          on E : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cuentas Por Pagar', 'Al editar registro', 0);
          end;

      end;
  end;
end;

procedure TfrmCuentasPorPagar.AnularFechaEntrega1Click(Sender: TObject);
var
indice, iGrid    : integer;
zDatos:Tuniquery;
begin
  if MessageDlg('Desea Anular la(s) Fecha(s) de Entrega Seleccionada(s)?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then  begin

    try
          iGrid     := 0;
          indice := cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
          cxView_Comprobantes.DataController.FocusedRowIndex := indice;

          with cxView_Comprobantes.DataController.DataSource.DataSet do
          for iGrid := 0 to cxView_Comprobantes.DataController.GetSelectedCount - 1 do
          begin
            indice := cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
            cxView_Comprobantes.DataController.FocusedRowIndex := indice;
            zDatos := tUniQuery.Create(nil);
            zDatos.Connection := connection.uConnection;
            zDatos.Active:=False;
            zDatos.SQL.Clear;
            zDatos.SQL.Text := 'update cont_comprobantes  set FechaEntrega=null where IdComprobanteFiscal=:Comprobante';
            zDatos.ParamByName('Comprobante').AsInteger :=  cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger;
            zDatos.ExecSQL;

          end;
          zComprobantes.Refresh;
       //   close;

          except
          on E : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Compraobantes Fiscales Digitales', 'Al editar registro', 0);
          end;

      end;
  end;
end;

procedure TfrmCuentasPorPagar.btnAceptarClick(Sender: TObject);
var
  x:Integer;
  Archivo, dt : String;
  zValida : TUniquery;
  ComprobanteXML,ComplementoXML,TimbreXML,
  DoctoRelacionadosXML,DoctoRelacionadoXML,
  EmisorXML, ReceptorXML,
  Nodo, SubNodo, SubNodo2,
  DXML,
  ConceptosXML,
  NominaXML,
  NominaRecept,
  ImpuestosXML, TimbreFiscal, tfd: IXMLNode;
  i,j,k,l,m : Integer;
  bGuardar : Boolean;
  ARect: TRect;
  begin
//  AsignarSQL(zImportarXML,'cont_comprobantes',pUpdate);
//  FiltrarDataSet(zImportarXML,'IdComprobantes',['-9']);
//  zImportarXML.Open;
//  zValida := TUniquery.Create(nil);
//  zValida.Connection := connection.Uconnection;
//
//  listaEstado.Clear;
//  for x:= 0 to ListaXML.Items.Count - 1 do
//  begin
//    bGuardar := False;
//    Archivo := ListaXML.Items[x];
//    XML.Active := False;
//    XML.FileName := Archivo;
//    XML.Active := True;
//    ComprobanteXML := XML.DocumentElement;
//
//
//    zImportarXML.Append;
//    zImportarXML.FieldByName('IdComprobanteFiscal').AsInteger := 0;
//    zImportarXML.FieldByName('FechaRegistro').AsDateTime := now;
//    zImportarXML.FieldByName('Serie').AsVariant       := ComprobanteXML.Attributes['Serie'];
//    zImportarXML.FieldByName('Folio').AsVariant       := ComprobanteXML.Attributes['Folio'];
//    zImportarXML.FieldByName('FechaFactura').AsVariant := Copy(ComprobanteXML.Attributes['Fecha'],0,10);
//    zImportarXML.FieldByName('Total').AsVariant         := ComprobanteXML.Attributes['Total'];
//    zImportarXML.FieldByName('FormaPago').AsVariant       := ComprobanteXML.Attributes['FormaPago'];
//    zImportarXML.FieldByName('MetodoPago').AsVariant      := ComprobanteXML.Attributes['MetodoPago'];
//    zImportarXML.FieldByName('TipoComprobante').AsVariant := ComprobanteXML.Attributes['TipoDeComprobante'];
//    zImportarXML.FieldByName('Moneda').AsVariant := ComprobanteXML.Attributes['Moneda'];
//    zImportarXML.FieldByName('CondicionesPago').AsVariant := ComprobanteXML.Attributes['CondicionesDePago'];
//
//    if (zImportarXML.FieldByName('Moneda').AsVariant = 'MXN') or (zImportarXML.FieldByName('Moneda').AsVariant = 'XXX') then
//        zImportarXML.FieldByName('TipoCambio').AsVariant := 1.0000
//    else
//        zImportarXML.FieldByName('TipoCambio').AsVariant  := ComprobanteXML.Attributes['TipoCambio'];
//
//    for i := 0 to ComprobanteXML.ChildNodes.Count-1 do
//    begin
//      Nodo := ComprobanteXML.ChildNodes[i];
//
//      if pos('cfdi:CfdiRelacionados',Nodo.XML) > 0 then
//      begin
//        DoctoRelacionadosXML     := ComprobanteXML.ChildNodes[i];
//        zImportarXML.FieldByName('TipoRelacion').AsVariant := DoctoRelacionadosXML.Attributes['TipoRelacion'];
//        for j := 0 to DoctoRelacionadosXML.ChildNodes.Count-1 do
//        begin
//          SubNodo := DoctoRelacionadosXML.ChildNodes[j];
//          if pos('cfdi:CfdiRelacionado',SubNodo.XML) > 0 then
//          begin
//            DoctoRelacionadoXML := DoctoRelacionadosXML.ChildNodes[j];
//            zImportarXML.FieldByName('CFDI_Relacionado').AsVariant := DoctoRelacionadoXML.Attributes['UUID'];
//          end;
//        end;
//      end;
//
//      if pos('cfdi:Emisor',Nodo.XML) > 0 then
//      begin
//        EmisorXML     := ComprobanteXML.ChildNodes[i];
//        zImportarXML.FieldByName('RFC_Emisor').AsVariant := EmisorXML.Attributes['Rfc'];
//        zImportarXML.FieldByName('RazonSocial_Emisor').AsVariant := EmisorXML.Attributes['Nombre'];
//        zImportarXML.FieldByName('RegimenFiscal_Emisor').AsVariant := EmisorXML.Attributes['RegimenFiscal'];
//      end;
//
//      if pos('cfdi:Receptor',Nodo.XML) > 0 then
//      begin
//        ReceptorXML     := ComprobanteXML.ChildNodes[i];
//        zImportarXML.FieldByName('RFC_Receptor').AsVariant := EmisorXML.Attributes['Rfc'];
//        zImportarXML.FieldByName('RazonSocial_Receptor').AsVariant := EmisorXML.Attributes['Nombre'];
//        zImportarXML.FieldByName('Uso_CFDI').AsVariant := ReceptorXML.Attributes['UsoCFDI'];
//
//      end;
//
//
//      if pos('cfdi:Complemento',Nodo.XML) > 0 then
//      begin
//        ComplementoXML     := ComprobanteXML.ChildNodes[i];
//        for j := 0 to ComplementoXML.ChildNodes.Count-1 do
//        begin
//          SubNodo := ComplementoXML.ChildNodes[j];
//          if pos('tfd:TimbreFiscalDigital',SubNodo.XML) > 0 then
//          begin
//            TimbreXML := ComplementoXML.ChildNodes[j];
//            zValida.Active := False;
//            zValida.SQL.Text := 'Select Folio_UUID from cont_comprobantes where Folio_UUID = :UUID';
//            ZvALIDA.ParamByName('UUID').AsString := TimbreXML.Attributes['UUID'];
//            ZvALIDA.Open;
//            if ZvALIDA.RecordCount = 0 then
//            BEGIN
//              zImportarXML.FieldByName('Folio_UUID').AsVariant := TimbreXML.Attributes['UUID'];
//              zImportarXML.FieldByName('FechaTimbrado').AsVariant := TimbreXML.Attributes['FechaTimbrado'];
//             // if DoctoRelacionadosXML.Attributes['TipoRelacion'] = null then    cfdi:CfdiRelacionados TipoRelacion
//               if zImportarXML.FieldByName('TipoRelacion').AsVariant = null then
//              zImportarXML.FieldByName('Estatus').AsString := 'VIGENTE'
//              else
//              if not ((zImportarXML.FieldByName('TipoComprobante').AsVariant = 'E') and ((zImportarXML.FieldByName('TipoRelacion').AsVariant = '01') OR (zImportarXML.FieldByName('TipoRelacion').AsVariant = '02') OR (zImportarXML.FieldByName('TipoRelacion').AsVariant = '03'))) then
//              zImportarXML.FieldByName('Estatus').AsString := 'ERROR DE VALIDACION'
//              else
//              zImportarXML.FieldByName('Estatus').AsString := 'VIGENTE';
//              bGuardar := True  ;
//
//            END
//            else
//              bGuardar := False;
//          end;
//
//        end;
//
//
//      end;
//
//
//    end;
//     //
//
//
//            if bGuardar then
//            begin
//              TBlobField( zImportarXML.FieldByName('ArchivoXML')).LoadfromFile(Archivo);
//              zImportarXML.Post;
//              listaEstado.Items.Add('IMPORTADO');
//            end
//            else BEGIN
//              zImportarXML.Cancel;
//              listaEstado.Items.Add('SIN IMPORTAR');
//            END;
//
//  end;



//  listaXML.Clear;
//  PanelDetalle.Visible := False;
//  cxSplitterOpciones.Visible := False;

//  zComprobantes.Refresh;
end;

procedure TfrmCuentasPorPagar.btnAddClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    //panel2.Visible:=True;
   // cxSplitter1.Visible := True;
    grid_comprobantes.Enabled:=False;



end;

procedure TfrmCuentasPorPagar.btnCancelarClick(Sender: TObject);
begin
//  listaXML.Clear;
  //PanelDetalle.Visible := False;
  cxSplitterOpciones.Visible := False;
end;

procedure TfrmCuentasPorPagar.btnCancelClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo;
    //Panel2.Visible:=False;
    //cxSplitter1.Visible := False;
    frmBarraH11.btnActive;
    grid_comprobantes.Enabled:=True;
//    ds_bancos.DataSet.Cancel;
end;

procedure TfrmCuentasPorPagar.btnCotizacionDoctoClick(Sender: TObject);
begin
     Application.CreateForm(TFrmModal, FrmModal);
     frmModal.Caption := 'Editar Cotizacion';
     frmModal.cxPageModal.ActivePage:=frmModal.cxTabCotDoc;
     frmModal.cxPageModal.HideTabs:=True;
     FrmModal.show;
     btnCot:=True;
end;

procedure TfrmCuentasPorPagar.btnDeleteClick(Sender: TObject);
var
  contReg: Integer;
  busca : TUniquery;
  msjError : String;
  indice, iGrid    : integer;
begin
    If zComprobantes.RecordCount  > 0 then begin

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

               AsignarSQL(connection.qryUBusca,'elimina_comprobante_cfdi',pUpdate);
               FiltrarDataSet(connection.qryUBusca,'Comprobante',[cxView_Comprobantes.DataController.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
               connection.qryUBusca.ExecSQL;

            end;

            cxView_Comprobantes.DataController.ClearSelection;
            zComprobantes.Refresh;

            except
              on E : exception do begin
                 UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Compraobantes Fiscales Digitales', 'Al eliminar registro', 0);
              end;
          end;
      end;
    end;
end;



procedure TfrmCuentasPorPagar.btnDescargarClick(Sender: TObject);
var
  i: integer;
  archivoTXT: TextFile;
  NombreArchivo: String;
  indice, iGrid    : integer;
begin
    if FolderDlg1.Execute then
    begin
      // Multiple
      iGrid     := 0;
      indice := cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
      cxView_Comprobantes.DataController.FocusedRowIndex := indice;

      with cxView_Comprobantes.DataController.DataSource.DataSet do
      for iGrid := 0 to cxView_Comprobantes.DataController.GetSelectedCount - 1 do
      begin
        indice := cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
        cxView_Comprobantes.DataController.FocusedRowIndex := indice;
        //FiltrarDataSet(connection.qryUBusca,'Comprobante',[cxView_Comprobantes.DataController.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
        if Not cxView_Comprobantes.DataController.DataSet.FieldByName('ArchivoXML').IsNull then
        begin
          NombreArchivo := cxView_Comprobantes.DataController.DataSet.FieldByName('RFC').AsString+'_'+cxView_Comprobantes.DataController.DataSet.FieldByName('Folio_UUID').AsString;
          try
            AssignFile(archivoTxt, FolderDlg1.directory + '\' + NombreArchivo +'.xml');
            Rewrite(archivoTXT);
            Writeln(archivoTXT, cxView_Comprobantes.DataController.DataSet.FieldByName('ArchivoXML').AsString);
          finally
             Closefile(archivoTXT);
          end;
        end
        else
          MessageDlg('No se pudo exportar el archivo XML con folio: '+ zComprobantes.FieldByName('Folio_UUID').AsString,  mtInformation, [mbOK],0);
      end;
      ShellExecute(0, 'explore', nil, nil,pchar(FolderDlg1.directory), SW_SHOW);
    end;
end;

procedure TfrmCuentasPorPagar.btnEditClick(Sender: TObject);
begin
  if Clientes.RecordCount > 0  then begin
    cxLeyenda.Caption:=titulo+'[Editando]';
    frmBarraH11.btnAddClick(Sender);
    //Panel2.Visible:=True;
    //cxSplitter1.Visible := True;
    grid_comprobantes.Enabled:=False;

  end
  else
    MessageDlg('No hay datos para editar',mtInformation, [mbOk], 0);
end;


procedure TfrmCuentasPorPagar.btnFormCFDIClick(Sender: TObject);
begin
 Application.CreateForm(TfrmVisualizaComprobanteFD, frmVisualizaComprobanteFD);
 frmVisualizaComprobanteFD.show;
end;

procedure TfrmCuentasPorPagar.btnImportarClick(Sender: TObject);
var
  Archivo, Ext : String;
  i,x:Integer;
  Agrega : Boolean;
begin
//  ListaXML.Items.Clear;

//  dlgXML.FileName := '';
//  dlgXML.FileTypes.Add.FileMask:='*.xml';
//  if not dlgXML.Execute() then
//    exit;

  // Display the selected file names
//    for i := 0 to dlgXML.Files.Count-1 do
//    begin
//      Agrega := True;
//       if ListaXML.Items.Count > 0 then
//       begin
//          for x:= 0 to ListaXML.Items.Count - 1 do
//              if ListaXML.Items[x]=dlgXML.Files[i] then
//              begin
//                Agrega := False;
//                break
//              end
//              else
//                Agrega := True;
//       end
//       else
//        Agrega := True;
//
//      if Agrega then
//        listaXML.Items.Add(dlgXML.Files[i]);
//    end;
//
//  Archivo := dlgXML.FileName;
//
//
//
//  if not FileExists(Archivo) then
//    raise exception.Create('No se encontro el archivo especificado');
//
//  Ext := ExtractFileExt(Archivo);
//
//  PanelDetalle.Visible := True;
//  cxSplitterOpciones.Visible := True;




end;

procedure TfrmCuentasPorPagar.btnLimpiarFClick(Sender: TObject);
begin
   cxView_Comprobantes.DataController.Filter.FilterText := '';
   cxView_Comprobantes.DataController.Filter.Clear;

   filtrosTodos;

   zComprobantes.Filtered := False;
//   zComprobantes.Filter   :=' Estatus = '+QuotedStr('VIGENTE')+' AND Estatus = '+QuotedStr('CANCELADO');
//   zComprobantes.Filtered := True;

   cxView_Comprobantes.DataController.Groups.FullExpand;
end;

Procedure TfrmCuentasPorPagar.filtrosTodos;
begin

    cxFin.Date := date;
    cxInicio.Date :=   date - DayOf(date)+1;
    cbFormaPago.Text := 'TODOS';
    cbTipo.Text:= 'TODOS';
    cbRFC.Text  := 'TODOS';
    cbEjercicio.ItemIndex := 0;
    cxEstado.Text := 'TODOS';
    cbEstadoSaldo.Text := 'TODOS';

end;

procedure TfrmCuentasPorPagar.btnPostClick(Sender: TObject);
var
   RefrescaRegistro:  TBookmark;
   Temp:TUniQuery;
   sTexto:String;
   sId  : Integer;
begin
    cxLeyenda.Caption:=titulo;
    //Panel2.Visible:=False;
    frmBarraH11.Visible:=True;

    try
//     bancos.Post;

       except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Compraobantes Fiscales Digitales', 'Al salvar registro', 0);
          //frmBarraH21.btnCancel.Click ;
       end;
   end;


    RefrescaRegistro := cxView_comprobantes.DataController.DataSource.DataSet.GetBookmark;
    try
//       bancos.Refresh ;
       try
          cxView_comprobantes.DataController.DataSource.DataSet.GotoBookmark(RefrescaRegistro);
       except
       else
           cxView_comprobantes.DataController.DataSet.FreeBookmark(RefrescaRegistro);
       end;
     finally
    end;

     PermisosBotones(frmCuentasPorPagar,btnPermisos);

end;


procedure TfrmCuentasPorPagar.Can1Click(Sender: TObject);
begin
    //frmBarraH21.btnCancel.Click
end;



procedure TfrmCuentasPorPagar.CancelarCFDI1Click(Sender: TObject);
var
indice, iGrid    : integer;
zDatos:Tuniquery;
begin
  if MessageDlg('Desea cancelar el Registro Seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then  begin

    if not MostrarFormChild('frmVisualizaComprobanteFD',global_dxBarManagerPrincipal) Then
   begin

        Application.CreateForm(TfrmVisualizaComprobanteFD, frmVisualizaComprobanteFD);
        frmVisualizaComprobanteFD.cxPageControl1.ActivePage:=frmVisualizaComprobanteFD.cxTabCancelacion;
        frmVisualizaComprobanteFD.show;
   end;

  end;
end;

procedure TfrmCuentasPorPagar.cbFormaPagoPropertiesChange(
  Sender: TObject);
begin
//   zFormaPago.First;
//   while not zFormaPago.Eof do
//   begin
//
//      zComprobantes.Filtered := False;
//      zComprobantes.Filter   :=' FormaPago = '+QuotedStr(zFormaPago.FieldByName('CodigoSAT').AsString);
//      zComprobantes.Filtered := True;
//
//     zFormaPago.Next;
//    end;
end;

procedure TfrmCuentasPorPagar.cbRFCPropertiesEditValueChanged(
  Sender: TObject);
begin
  //zRFc.Locate('RFC',cbRFC.EditValue,[]);

end;

procedure TfrmCuentasPorPagar.Eliminar1Click(Sender: TObject);
begin
    frmBarraH11.btnDelete.Click
end;


procedure TfrmCuentasPorPagar.Imprimir1Click(Sender: TObject);
begin
    frmBarraH11.btnPrinter.Click
end;


procedure TfrmCuentasPorPagar.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmCuentasPorPagar.btnRefreshClick(Sender: TObject);
begin
   zComprobantes.Refresh;
end;

procedure TfrmCuentasPorPagar.btnSelectClick(Sender: TObject);
var
  contReg: Integer;
  busca : TUniquery;
  msjError : String;
  indice, iGrid    : integer;
  cadena : String;
  monto : Double;
  sal:Double;
  SalI:Integer;
begin
    If zComprobantes.RecordCount  > 0 then begin

         try

            iGrid     := 0;
            indice := cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
            cxView_Comprobantes.DataController.FocusedRowIndex := indice;

            with cxView_Comprobantes.DataController.DataSource.DataSet do
            for iGrid := 0 to cxView_Comprobantes.DataController.GetSelectedCount - 1 do
            begin
                indice := cxView_Comprobantes.DataController.GetSelectedRowIndex(iGrid);
                cxView_Comprobantes.DataController.FocusedRowIndex := indice;

                if not (cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('Seleccionado').AsString = 'Si') then
               begin

                connection.zUCommand.Active := False ;
                connection.zUCommand.SQL.Clear ;
                connection.zUCommand.SQL.Add ('update cont_comprobantes set Seleccionado = :Res where IdComprobanteFiscal = :Comprobante ') ;
                connection.zUCommand.Params.ParamByName('Res').AsString := 'Si';
                connection.zUCommand.Params.ParamByName('Comprobante').AsInteger := cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger;
                connection.zUCommand.ExecSQL  ;


                SavePlace := zcomprobantes.GetBookmark ;
                zcomprobantes.Refresh ;


                 cadena := cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('SerieFolio').AsString +','+ cadena;
                 monto :=  cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('Saldo').AsFloat + monto;

               end;

            end;

            except
              on E : exception do begin
                 UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Compraobantes Fiscales Digitales', 'Al pasar registros', 0);
              end;
          end;
         frmBancosMovimientos.mComprobante.DataBinding.DataSource.DataSet.FieldByName('FolioComprobante').AsString:= frmBancosMovimientos.mComprobante.DataBinding.DataSource.DataSet.FieldByName('FolioComprobante').AsString+cadena;
         frmBancosMovimientos.mComprobante.DataBinding.DataSource.DataSet.FieldByName('Monto').AsFloat:= frmBancosMovimientos.mComprobante.DataBinding.DataSource.DataSet.FieldByName('Monto').AsFloat + monto;
         zComprobantes.Refresh;
    end;

 // frmBancosMovimientos.dsMovimiento.DataSet.FieldByName('IdComprobante').AsInteger := zComprobantes.FieldByName('IdComprobanteFiscal').AsInteger;
  // zComprobantes.FieldByName('Folio_UUID').AsString+''+ zComprobantes.FieldByName('Folio').AsString;

end;

procedure TfrmCuentasPorPagar.btnVisualizaClick(Sender: TObject);
begin
if zComprobantes.RecordCount > 0 then
  begin
    if not zComprobantes.FieldByName('ArchivoXML').IsNull then
    begin
      global_Temp := 'visor_xml.xml';
      if FileExists(ExtractFilePath(Application.ExeName)+global_Temp) then
        DeleteFile(ExtractFilePath(Application.ExeName)+global_Temp);

      TBlobField(zComprobantes.FieldByName('ArchivoXML')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp );
      ShellExecute(frmCuentasPorPagar.Handle,nil,PChar(ExtractFilePath(Application.ExeName)+global_Temp),'','',SW_SHOWNORMAL);
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;
end;

procedure TfrmCuentasPorPagar.cxButton1Click(Sender: TObject);
begin
     Application.CreateForm(TFrmModal, FrmModal);
     frmModal.Caption := 'Editar Fecha de Entrega';
     frmModal.cxPageModal.ActivePage:=frmModal.cxTabFechaEntrega;
     frmModal.cxPageModal.HideTabs:=True;
     global_frmActivo:='CuentasPP';
     FrmModal.show;
end;

procedure TfrmCuentasPorPagar.cxButton2Click(Sender: TObject);
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


procedure TfrmCuentasPorPagar.cxDBComboBox1PropertiesChange(
  Sender: TObject);
begin
////  if cbFormaPago.ItemIndex > 0 then
////  begin
//    zComprobantes.Filtered := False;
//    zComprobantes.Filter   :=' FormaPago = '+QuotedStr(zFormaPago.FieldByName('CodigoSAT').AsString);
//    zComprobantes.Filtered := True;
////  end;

end;

procedure TfrmCuentasPorPagar.cxFiltroRequeridoClick(Sender: TObject);
var
 sTipo, sRfc, sForma, sEstado, sEjercicio, sCadena, sInicio, sFin, sEstadoSaldo : String ;
 zConsult:TUniquery;
begin

  zConsult:=tUniquery.create(nil);
  zConsult.Connection := connection.uConnection;

  if cbFormaPago.Text = 'TODOS' then
    sForma:= ''
  else
  begin
    if zFormaPago.Locate('IdFormaPago',cbFormaPago.EditValue,[]) then
      sForma := 'FormaPago='+QuotedStr(zFormaPago.FieldByName('CodigoSAT').AsString);
  end;

  if cbTipo.Text = 'TODOS' then
    sTipo := ''
  else
  begin
    if zTipoComprobante.Locate('IdTipoComprobante',cbTipo.EditValue,[]) then
      sTipo := 'TipoComprobante='+QuotedStr(zTipoComprobante.FieldByName('CodigoSAT').AsString);
  end  ;

  if cbRfc.Text = 'TODOS' then
    sRfc := ''
  else
  begin
    //    if zRFC.FieldByName('TipoPC').AsString = 'PROVEEDOR' then
    IF cbRfc.Text = 'EMITIDAS' THEN
    BEGIN
      //if zRFC.Locate('IdProvClien',cbRfc.EditValue,[]) then
      zConsult.Active:=False;
      zConsult.SQL.Text:='select RFC_Emisor from cont_comprobantes';
      zConsult.Open;
//        sRfc := 'RFC_Emisor='+QuotedStr(True);
    END ;

    if cbRfc.Text= 'RECIBIDAS' then
//    if zRFC.FieldByName('TipoPC').AsString = 'CLIENTE'  then
    BEGIN
      zConsult.Active:=False;
      zConsult.SQL.Text:='select RFC_Receptor from cont_comprobantes';
      zConsult.Open;
       //if zRFC.Locate('IdProvClien',cbRfc.EditValue,[]) then
//        sRfc := 'RFC_Receptor='+QuotedStr(True);
    END;

  end ;

  if ((cbEjercicio.Text = 'TODOS') or (cbEjercicio.Text = '')) then
    sEjercicio := ''
  else
  begin
    sEjercicio := 'Ejercicio = '+QuotedStr(cbEjercicio.Text);
  end;

  if ((cxEstado.Text = 'TODOS') or (cxEstado.Text = '')) then
    sEstado := ''
  else
  begin
    sEstado := 'Estatus = '+QuotedStr(cxEstado.Text);
  end;

  if cbEstadoSaldo.Text = 'TODOS' then
    sEstadoSaldo := ''
  else
  begin
    sEstadoSaldo := 'EstadoSaldo = '+QuotedStr(cbEstadoSaldo.Text);
  end;

  if cxInicio.Text = '' then
    sInicio := ''
  else
  begin
      sInicio := 'FechaFactura >= '+QuotedStr(FechaSQL(cxInicio.Date)) ;
  end;

  if cxFin.Text  = '' then
    sFin := ''
  else
  begin
    sFin := 'FechaFactura <= '+QuotedStr(FechaSQL(cxFin.Date));
  end;

  if sForma <>'' then
    if sCadena='' then
      sCadena := sCadena + ' '+sFoRMA
    ELSE
      sCadena := sCadena + ' and ' + sForma;

  if sTipo <>'' then
    if sCadena='' then
      sCadena := sCadena + ' '+sTipo
    ELSE
      sCadena := sCadena + ' and ' + sTipo;

  if sRfc <>'' then
    if sCadena='' then
      sCadena := sCadena + ' '+sRfc
    ELSE
      sCadena := sCadena + ' and ' + sRfc;

  if sEjercicio <>'' then
    if sCadena='' then
      sCadena := sCadena + ' '+sEjercicio
    ELSE
      sCadena := sCadena + ' and ' + sEjercicio;

  if sEstado <>'' then
    if sCadena='' then
      sCadena := sCadena + ' '+sEstado
    ELSE
      sCadena := sCadena + ' and ' + sEstado;

  if sEstadoSaldo <>'' then
    if sCadena='' then
      sCadena := sCadena + ' ' + sEstadoSaldo
    ELSE
      sCadena := sCadena + ' and ' + sEstadoSaldo;

  if sInicio <>'' then
    if sCadena='' then
      sCadena := sCadena + ' '+sInicio
    ELSE
      sCadena := sCadena + ' and ' + sInicio;

  if sFin <>'' then
    if sCadena='' then
      sCadena := sCadena + ' '+sFin
    ELSE
      sCadena := sCadena + ' and ' + sFin;


  zComprobantes.Filtered := False;
  zComprobantes.Filter   :=sCadena;
  zComprobantes.Filtered := True;


  cxView_Comprobantes.DataController.Groups.FullExpand;
end;

procedure TfrmCuentasPorPagar.cxView_ComprobantesStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
 var
     AColumn : TcxCustomGridTableItem;
begin
    AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Seleccionado');
    if VarToStr(ARecord.Values[AColumn.Index]) <> '' then
    begin
       if VarToStr(ARecord.Values[AColumn.Index]) = 'Si' then AStyle := connection.cxstylNiv0 ;
    end;
end;

procedure TfrmCuentasPorPagar.cxView_OrdenCompraPropertiesEditValueChanged(
  Sender: TObject);
var
  zIdCompr,zInsert,zActualizar:TUniquery;
  Val:Integer;
begin
  zIdCompr:=tUniquery.create(nil);
  zIdCompr.Connection := connection.uConnection;


  zInsert:=tUniquery.create(nil);
  zInsert.Connection := connection.uConnection;
  zInsert.Active := False;

  zActualizar:=tUniquery.create(nil);
  zActualizar.Connection := connection.uConnection;

  TcxLookupComboBox(Sender).PostEditValue;
  Val:=cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdOrdenCompra').AsInteger;

  zIdCompr.Active:=False;
  AsignarSQL(zIdCompr,'comprobante_movimiento_indicadores', pUpdate);
  FiltrarDataSet(zIdCompr,'Comprobante',[cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
  zIdCompr.Open;

  if zIdCompr.RecordCount>0 then  begin
    zActualizar.Active:=False;
    if Val<>0 then begin
      AsignarSQL(zActualizar,'uOrdenCompra_mov_indicadores', pUpdate);
      FiltrarDataSet(zActualizar,'IdOrdenCompra,IdComprobante',[cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdOrdenCompra').AsInteger,cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
    end
    else begin
      AsignarSQL(zActualizar,'uOrdenCompra_mov_indicadores_n', pUpdate);
      FiltrarDataSet(zActualizar,'IdComprobante',[cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
    end;
    zActualizar.ExecSQL;
  end
  else begin
    zInsert.Active:=False;
    AsignarSQL(zInsert,'mov_ind_ins_OrdenCompra', pUpdate);
    FiltrarDataSet(zInsert,'IdOrdenCompra,IdComprobante',[cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdOrdenCompra').AsInteger,cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
    zInsert.ExecSQL;
  end;

  zAnexo_pedidos.Active:=False;
  AsignarSQL(zAnexo_pedidos,'anexo_pedidos', pUpdate);
  FiltrarDataSet(zAnexo_pedidos,'Contrato',[global_contrato]);
  zAnexo_pedidos.Open;


end;

procedure TfrmCuentasPorPagar.cxView_ProyectoPropertiesChange(Sender: TObject);
var
  AValue: Variant;
  zIdCompr,zInsert,zActualizar:TUniquery;

begin

//  zIdCompr:=tUniquery.create(nil);
//  zIdCompr.Connection := connection.uConnection;
//
//
//  zInsert:=tUniquery.create(nil);
//  zInsert.Connection := connection.uConnection;
//  zInsert.Active := False;
//
//  zActualizar:=tUniquery.create(nil);
//  zActualizar.Connection := connection.uConnection;


//  TcxLookupComboBox(Sender).PostEditValue;
//  AValue:=cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('sNumeroOrden').AsString;
  AValue := TcxLookupComboBox(Sender).EditValue;
//   AValue:= cxView_Comprobantes.Controller.FocusedRow.Values[cxView_Proyecto.Index];

    if (AValue <> null) then begin

       zAnexo_pedidos.Active:=False;
       AsignarSQL(zAnexo_pedidos,'anexo_pedidos_cuentas_pp', pUpdate);
       FiltrarDataSet(zAnexo_pedidos,'Contrato,NumeroOrden',[global_contrato,AValue]);
       zAnexo_pedidos.Open;



    end;
end;

procedure TfrmCuentasPorPagar.cxView_ProyectoPropertiesEditValueChanged(
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
  Val:=cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('sNumeroOrden').AsString;

  zIdCompr.Active:=False;
  AsignarSQL(zIdCompr,'comprobante_movimiento_indicadores', pUpdate);
  FiltrarDataSet(zIdCompr,'Comprobante',[cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
  zIdCompr.Open;

  if zIdCompr.RecordCount>0 then  begin
    zActualizar.Active:=False;
    if Val<>'' then begin
      AsignarSQL(zActualizar,'uc_movimiento_indicadores', pUpdate);
      FiltrarDataSet(zActualizar,'sNumeroOrden,IdComprobante',[cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('sNumeroOrden').AsString,cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
    end
    else begin
      AsignarSQL(zActualizar,'uc_movimiento_indicadores_n', pUpdate);
      FiltrarDataSet(zActualizar,'IdComprobante',[cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
    end;
    zActualizar.ExecSQL;
  end
  else begin
    zInsert.Active:=False;
    AsignarSQL(zInsert,'mov_ind_ins_proyecto', pUpdate);
    FiltrarDataSet(zInsert,'sNumeroOrden,IdComprobante',[cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('sNumeroOrden').AsString,cxView_Comprobantes.DataController.DataSource.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
    zInsert.ExecSQL;
  end;

end;


procedure TfrmCuentasPorPagar.dxLayoutItem18CaptionClick(Sender: TObject);
begin
    //AsignarSQL()
end;

procedure TfrmCuentasPorPagar.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

end.

