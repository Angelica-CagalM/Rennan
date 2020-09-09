unit frm_pagoProveedores;
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
  Frm_VerPDF, System.ImageList, Vcl.ImgList, UnitMetodos, cxCalc, cxCurrencyEdit, math;
type
  TfrmpagoProveedores = class(TForm)
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
    Proveedores: TUniQuery;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    PanelPrincipal: TPanel;
    PanelTipo: TPanel;
    cxSplitTipo: TcxSplitter;
    Panel1: TPanel;
    grid_proveedores: TcxGrid;
    cxView_Proveedor: TcxGridDBTableView;
    cxView_ProveedorColumn1: TcxGridDBColumn;
    cxView_ProveedorColumn3: TcxGridDBColumn;
    cxView_ProveedorColumn4: TcxGridDBColumn;
    grid_proveedoresLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
    PanelDetalle: TPanel;
    Grid_Bitacora: TcxGrid;
    BView_filtro: TcxGridDBTableView;
    BView_filtroColumn1: TcxGridDBColumn;
    Grid_BitacoraLevel1: TcxGridLevel;
    BView_filtroColumn2: TcxGridDBColumn;
    ds_catalogo: TDataSource;
    catalogo: TUniQuery;
    ds_pago: TDataSource;
    pago_proveedor: TUniQuery;
    PanelCentro: TPanel;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxPageDetalle: TcxPageControl;
    cxView_ProveedorColumn6: TcxGridDBColumn;
    cxView_ProveedorColumn8: TcxGridDBColumn;
    cxPagePP: TcxTabSheet;
    cuentas: TUniQuery;
    ds_cuentas: TDataSource;
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
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
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
    uCompras: TUniQuery;
    dsCompras: TDataSource;
    cxGridDBColumn1: TcxGridDBColumn;
    pnl_ord: TPanel;
    splitOrdn: TcxSplitter;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cmbTipoPago: TcxDBComboBox;
    dxLayoutItem1: TdxLayoutItem;
    txtProveedor: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cmbCuenta: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    txtSaldo: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    txtTotal: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    txtAbono: TcxDBCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxFechaPago: TcxDBDateEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxColumn4: TcxGridDBColumn;
    qryApoyo: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxView_ProveedorCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxPageDetalleChange(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure ProveedoresAfterScroll(DataSet: TDataSet);
    procedure catalogoAfterScroll(DataSet: TDataSet);
    procedure txtAbonoPropertiesEditValueChanged(Sender: TObject);
    procedure txtAbonoEditing(Sender: TObject; var CanEdit: Boolean);
    procedure txtAbonoPropertiesChange(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpagoProveedores : TfrmpagoProveedores;
  Opcion         : String ;
  banderaAgregar : Boolean;
  scuentabanco,  Archivo   : string;
  bCuentasBanco  : boolean;
  titulo,titulo2 : string;
  lNoGuardarDocto :boolean;
  btnPermisos     :String;
  cAbonada        : double;

implementation
uses
    frm_connection,
    frm_pedidos,
    Func_Genericas,
    frm_catalogos_almacen, frm_Catalogos_rh_tipos;
{$R *.dfm}

procedure TfrmpagoProveedores.EnterControl(Sender: TObject);
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

procedure TfrmpagoProveedores.SalidaControl(Sender: TObject);
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

procedure TfrmpagoProveedores.FormShow(Sender: TObject);
begin
    btnPermisos := global_btnPermisos;
    try
        isOpen := False;

        titulo:='Pago a Proveedores';
        cxLeyenda.Caption:=titulo;

        catalogo.Active := False ;
        AsignarSQL(catalogo,'master_cuentas_empresa',pUpdate);
        FiltrarDataSet(catalogo, 'IdEmpresa',['-1']);
        catalogo.Open;

        Proveedores.Active := False ;
        AsignarSQL(Proveedores,'pago_proveedor',pUpdate);
        FiltrarDataSet(Proveedores, 'Cuenta',[catalogo.FieldByName('IdCuenta').AsInteger]);
        Proveedores.Open;

        IsOpen:=True;
        cxPageDetalle.ActivePageIndex := 0;
        BView_filtro.DataController.Groups.FullExpand;

        cxSplitterOpciones.Visible := False;
        PanelDetalle.Visible       := False;

        PermisosBotones(frmpagoProveedores,btnPermisos);
      except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Pago a Proveedores', 'Al iniciar el formulario', 0);
      end;
    end;

    guardar_leer_grid(BView_filtro,frmpagoProveedores,0);
    guardar_leer_grid(cxView_Proveedor,frmpagoProveedores,0);
    guardar_leer_grid(cxGridDBTableView1,frmpagoProveedores,0);
end;

procedure TfrmpagoProveedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  guardar_leer_grid(BView_filtro,frmpagoProveedores,1);
  guardar_leer_grid(cxView_Proveedor,frmpagoProveedores,1);
  guardar_leer_grid(cxGridDBTableView1,frmpagoProveedores,1);
  Proveedores.Cancel ;
  action := cafree ;
end;


procedure TfrmpagoProveedores.cxView_ProveedorCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if cxView_Proveedor.OptionsView.CellAutoHeight then
       cxView_Proveedor.OptionsView.CellAutoHeight := False
    else
       cxView_Proveedor.OptionsView.CellAutoHeight := True;
end;



procedure TfrmpagoProveedores.ProveedoresAfterScroll(DataSet: TDataSet);
begin
  if isOpen then
      if PanelDetalle.Visible then
     begin
        if cxPageDetalle.ActivePage = cxPagePP then
        begin
           titulo2 := 'Órdenes de Compra ';
           cxLeyenda2.Caption:=titulo2;
           cxNuevoDetalle.Visible := True;
           cxEditaDetalle.Visible := False;
           IsOpen:=False;
//           zCalificacion.Active:=False;
           cxGridDBTableView1.OptionsView.ColumnAutoWidth:=False;
           AsignarSQL(uCompras,'pago_proveedor_oc',pUpdate);
           FiltrarDataSet(uCompras,'Contrato,Proveedor,Cuenta', [GLOBAL_CONTRATO,proveedores.FieldByName('IdProveedor').AsInteger,catalogo.FieldByName('IdCuenta').AsInteger]);
           uCompras.Open;
           cxGridDBTableView1.OptionsView.ColumnAutoWidth:=True;
           cxGridDBTableView1.DataController.Groups.FullExpand;
           IsOpen:=True;
        end;
     end;
end;


procedure TfrmpagoProveedores.Refresh1Click(Sender: TObject);
begin
//    frmBarraH11.btnRefresh.Click
end;


procedure TfrmpagoProveedores.Salir1Click(Sender: TObject);
begin
//    frmBarraH11.btnExit.Click
end;

procedure TfrmpagoProveedores.txtAbonoEditing(Sender: TObject;
  var CanEdit: Boolean);
var
  CantidadR : double;
begin
  if not VarIsNull(txtAbono.EditValue) then
  begin
    CantidadR:=txtAbono.EditValue;
    CantidadR:=pago_proveedor.FieldByName('dTotal').AsFloat - CantidadR;
    pago_proveedor.FieldByName('dPendiente').AsFloat:=CantidadR;
  end;
end;

procedure TfrmpagoProveedores.txtAbonoPropertiesChange(Sender: TObject);
var
  CantidadR, redondea : double;
begin
  if not VarIsNull(txtAbono.EditingValue) then
  begin
    if pago_proveedor.State = dsInsert then begin
      redondea := SimpleRoundTo(pago_proveedor.FieldByName('dTotal').AsFloat,-2);

      CantidadR:=txtAbono.EditingValue;
      CantidadR:=SimpleRoundTo(redondea - (CantidadR+cAbonada),-2);
      pago_proveedor.FieldByName('dPendiente').AsFloat:=CantidadR;
    end
    else begin
      if pago_proveedor.State = dsEdit then begin
        redondea := SimpleRoundTo(pago_proveedor.FieldByName('dTotal').AsFloat,-2);

        CantidadR:=txtAbono.EditingValue;
        CantidadR:=redondea - (CantidadR+cAbonada);
        pago_proveedor.FieldByName('dPendiente').AsFloat:=CantidadR;
      end;
    end;
  end;
end;

procedure TfrmpagoProveedores.txtAbonoPropertiesEditValueChanged(
  Sender: TObject);
var
  CantidadR : double;
begin
  if not VarIsNull(txtAbono.EditValue) then
  begin
    CantidadR:=txtAbono.EditValue;
    CantidadR:=pago_proveedor.FieldByName('dTotal').AsFloat - CantidadR;
    pago_proveedor.FieldByName('dPendiente').AsFloat:=CantidadR;
  end;
end;

procedure TfrmpagoProveedores.btnDetalleClick(Sender: TObject);
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
       cxnuevoDetalle.Caption     := 'Nuevo';
       cxEditaDetalle.Caption     := 'Editar';
   end;

   cxPageDetalle.OnChange(sender);
end;

procedure TfrmpagoProveedores.btnRefreshClick(Sender: TObject);
begin
    Proveedores.Refresh;
end;

procedure TfrmpagoProveedores.catalogoAfterScroll(DataSet: TDataSet);
begin
  if IsOpen then begin
    IsOpen:=False;
//    Proveedores.Active := False ;
    AsignarSQL(Proveedores,'pago_proveedor',pUpdate);
    FiltrarDataSet(Proveedores, 'Cuenta',[catalogo.FieldByName('IdCuenta').AsInteger]);
    Proveedores.Open;
    IsOpen:=True;
  end;
end;

procedure TfrmpagoProveedores.cxCancelarDetalleClick(Sender: TObject);
begin
   if cxPageDetalle.ActivePage = cxPagePP then
   begin
      cxLeyenda2.Caption:=titulo2;
      pago_proveedor.Cancel;
      pnl_ord.Visible:=False;
      splitOrdn.Visible:=False;
      cxGrid1.Enabled:=True;
   end;
   Grid_Bitacora.Enabled:=True;
   grid_proveedores.Enabled := True;
   PanelDown.Visible := False;
   cxNuevoDetalle.Enabled := True;
   cxEditaDetalle.Enabled := False;

   PermisosBotones(frmpagoProveedores,btnPermisos);
end;



procedure TfrmpagoProveedores.cxGuardarDetalleClick(Sender: TObject);
var
   lContinua : boolean;
begin
   lContinua:=True;
   if cxPageDetalle.ActivePage = cxPagePP then  begin
      txtSaldo.EditingValue;
      if pago_proveedor.FieldByName('dPendiente').AsFloat < 0 then begin
        MessageDlg('El saldo no puede ser negativo', mtWarning, [mbOk], 0);
        lContinua:=False;
      end
      else begin
        if (pago_proveedor.FieldByName('Estatus').AsString = 'Total') and (pago_proveedor.FieldByName('dPendiente').AsFloat <> 0) then begin
          MessageDlg('Los pagos totales deben saldar completamente la cantidad', mtWarning, [mbOk], 0);
          lContinua:=False;
        end
        else begin
          if (pago_proveedor.FieldByName('Estatus').AsString = 'Parcial') and (pago_proveedor.FieldByName('dPendiente').AsFloat = 0) then
            pago_proveedor.FieldByName('Estatus').AsString := 'Total';
          pago_proveedor.Post;
          pago_proveedor.Close;
          splitOrdn.Visible:=False;
          pnl_ord.Visible:=False;
          uCompras.Refresh;
          cxLeyenda2.Caption:=titulo2;
        end;
      end;
   end;
   if lContinua then begin
     cxNuevoDetalle.Enabled:=True;
     cxEditaDetalle.Enabled:=False;
     PanelDown.Visible:=False;
     grid_proveedores.Enabled:=True;
     Grid_Bitacora.Enabled:=True;
     cxGrid1.Enabled := True;
     PermisosBotones(frmpagoProveedores,btnPermisos);
   end;
end;

procedure TfrmpagoProveedores.cxNuevoDetalleClick(Sender: TObject);
var
  registros: Integer;
  redondea : double;
  band :  boolean;
begin
   band:=True;
   PanelDown.Visible := True;
   cxNuevoDetalle.Enabled := False;
   cxEditaDetalle.Enabled := False;
   grid_proveedores.Enabled:=False;
   Grid_Bitacora.Enabled:=False;

   if cxPageDetalle.ActivePage = cxPagePP then
   begin
     cxGrid1.Enabled:=False;
     cxLeyenda2.Caption:='Pagando ['+uCompras.FieldByName('Codigo').AsString+']';

//     cuentas.Active:=False;
     AsignarSQL(cuentas,'master_proveedor_bancos',pUpdate);
     FiltrarDataSet(cuentas,'Activo,IdProveedor',['Si',uCompras.FieldByName('IdProveedor').AsInteger]);
     cuentas.Open;
     isOpen:=False;
//     pago_proveedor.Active:=False;
     AsignarSQL(pago_proveedor,'gativa_pago_proveedores',pUpdate);
     FiltrarDataSet(pago_proveedor,'Id,Orden,Cuenta',[-1,uCompras.FieldByName('IdOrdenCompra').AsInteger,-1]);
     pago_proveedor.Open;
     isOpen:=True;
     registros:=pago_proveedor.RecordCount;
     redondea:= uCompras.FieldByName('dMontoMN').AsFloat;
     redondea := SimpleRoundTo(redondea,-2);
     pago_proveedor.Append;
     pago_proveedor.FieldByName('Estatus').AsString:='Total';
     pago_proveedor.FieldByName('IdordenCompra').AsInteger:=uCompras.FieldByName('IdordenCompra').AsInteger;
     pago_proveedor.FieldByName('dTotal').AsFloat:= redondea;
     pago_proveedor.FieldByName('dFechaPago').AsDateTime:=Now();
     if registros=0 then begin
       {En caso de que sea el primer pago, la cantidad abonada inicial será 0 y la pendiente será igual al monto total}
       pago_proveedor.FieldByName('dAbonado').AsFloat:=0.0;
       pago_proveedor.FieldByName('dPendiente').AsFloat:=uCompras.FieldByName('dMontoMN').AsFloat;
       cAbonada:=0;
     end
     else begin
       {en caso de que ya se hayan hecho pagos, se busca el acumulado de los abonos y se calcula la cantidad pendiente}
       qryApoyo.Active:=False;
       AsignarSQL(qryApoyo,'ultimo_abono_pago_proveedores',pUpdate);
       FiltrarDataSet(qryApoyo,'Orden',[uCompras.FieldByName('IdOrdenCompra').AsInteger]);
       qryApoyo.Open;
       cAbonada:=SimpleRoundTo(qryApoyo.FieldByName('TotalAbonado').AsFloat,-2);
       if cAbonada = redondea then begin
         MessageDlg('Ya se ha registrado el pago total de esta orden de compra',mtInformation, [mbOk],0);
         band:=False;
       end
       else begin
         pago_proveedor.FieldByName('dAbonado').AsFloat:=0.0;
         pago_proveedor.FieldByName('dPendiente').AsFloat:=uCompras.FieldByName('dMontoMN').AsFloat - cAbonada;
       end;
     end;

     if band then begin
       Pnl_Ord.Visible:=True;
       SplitOrdn.Visible:=True;
     end
     else begin
       cxCancelarDetalleClick(Sender);
     end;
   end;
end;

procedure TfrmpagoProveedores.cxPageDetalleChange(Sender: TObject);
begin
   cxNuevoDetalle.Visible := True;
   cxEditaDetalle.Visible := False;
   if cxPageDetalle.ActivePage = cxPagePP then
   begin
     titulo2 := 'Órdenes de Compra ';
     cxLeyenda2.Caption:=titulo2;
     cxNuevoDetalle.Caption:='Pagar';
     cxEditaDetalle.Caption:='Abonar';
     Pnl_ord.Visible:=False;
     splitOrdn.Visible:=False;
     cxGridDBTableView1.OptionsView.ColumnAutoWidth:=False;
//     zCalificacion.Active:=False;
     AsignarSQL(uCompras,'pago_proveedor_oc',pUpdate);
     FiltrarDataSet(uCompras,'Contrato,Proveedor,Cuenta', [catalogo.FieldByName('ContratoE').AsString,proveedores.FieldByName('IdProveedor').AsInteger,catalogo.FieldByName('IdCuenta').AsInteger]);
     uCompras.Open;
     cxGridDBTableView1.OptionsView.ColumnAutoWidth:=True;
     cxGridDBTableView1.DataController.Groups.FullExpand;
   end;
end;


procedure TfrmpagoProveedores.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

end.
