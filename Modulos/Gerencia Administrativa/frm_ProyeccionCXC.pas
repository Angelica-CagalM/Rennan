unit frm_ProyeccionCXC;
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
  TfrmProyeccionCXC = class(TForm)
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
    imgStars: TcxImageList;
    frxDBClientes: TfrxDBDataset;
    Reporte: TUniQuery;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    OpenPicture: TOpenPictureDialog;
    QryBusca: TUniQuery;
    monedas: TUniQuery;
    ds_monedas: TDataSource;
    zProyeccion: TUniQuery;
    ds_proyeccion: TDataSource;
    PanelPrincipal: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    cxRazonSocial: TcxDBTextEdit;
    cxFolio: TcxDBTextEdit;
    cxRFC: TcxDBTextEdit;
    cxSerie: TcxDBTextEdit;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxSplitter1: TcxSplitter;
    grid_cuentasxCobrar: TcxGrid;
    cxView_CuentasxCobrar: TcxGridDBTableView;
    grid_cuentasxCobrarLevel1: TcxGridLevel;
    cxSaldo: TcxDBCurrencyEdit;
    dxLayoutItem2: TdxLayoutItem;
    bancos2: TUniQuery;
    ds_bancos2: TDataSource;
    cxFecha: TcxDBDateEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxDescuento: TcxDBCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxTotal: TcxDBCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxNetoPorPagar: TcxDBCurrencyEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
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
    PopupMenu2: TPopupMenu;
    CancelarCFDI1: TMenuItem;
    AnularCancelacion: TMenuItem;
    frxDOCXExport1: TfrxDOCXExport;
    SaveDialog1: TSaveDialog;
    FolderDlg1: TFolderDialog;
    AnularFechaEntregq1: TMenuItem;
    cxView_CuentasxCobrarProyecto: TcxGridDBColumn;
    cxView_CuentasxCobrarCliente: TcxGridDBColumn;
    cxView_CuentasxCobrarOC: TcxGridDBColumn;
    cxView_CuentasxCobrarDateOC: TcxGridDBColumn;
    cxView_CuentasxCobrarFactura: TcxGridDBColumn;
    cxView_CuentasxCobrarDateEmision: TcxGridDBColumn;
    cxView_CuentasxCobrarDateEntrega: TcxGridDBColumn;
    cxView_CuentasxCobrarCredito: TcxGridDBColumn;
    cxView_CuentasxCobrarCobro: TcxGridDBColumn;
    cxView_CuentasxCobrarMonto: TcxGridDBColumn;
    cxView_CuentasxCobrarCobrado: TcxGridDBColumn;
    cxView_CuentasxCobrarSaldo: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);

    procedure Imprimir1Click(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IdComprobante : Integer;
    Folio : String;
  end;

var
  frmProyeccionCXC : TfrmProyeccionCXC;
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
  frm_clientes, frm_VisualizaComprobanteFD, Frm_BancosMovimientos, Frm_Modal,Frm_Comentarios;
{$R *.dfm}

procedure TfrmProyeccionCXC.EnterControl(Sender: TObject);
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

procedure TfrmProyeccionCXC.SalidaControl(Sender: TObject);
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


procedure TfrmProyeccionCXC.FormShow(Sender: TObject);

begin
  btnPermisos := global_btnPermisos;
    try
      Panel2.Visible := False;
      cxSplitter1.Visible := False;

      titulo:='Proyección Cuentas Por Cobrar';
      cxLeyenda.Caption:=titulo;
      frmBarraH21.btnCancel.Click ;

      AsignarSQL(zProyeccion,'proyeccion_cuentas',pUpdate);
      FiltrarDataSet(zProyeccion, 'Contrato, TipoProyecto', [global_contrato, 'PRESUPUESTO']);
      zProyeccion.Open;

      PermisosBotones(frmProyeccionCXC,btnPermisos);

      frmBarraH11.btnAdd.Enabled := False;
      frmBarraH11.btnEdit.Enabled := False;
      frmBarraH11.btnDelete.Enabled := False;
      frmBarraH11.btnExporta.Enabled := False;
      frmBarraH11.btnDetalle.Enabled := False;

    except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Proyección Cuentas Por Cobrar', 'Al iniciar el formulario', 0);
    end;
 end;

 guardar_leer_grid(cxView_CuentasxCobrar,frmProyeccionCXC,0) ;
end;



procedure TfrmProyeccionCXC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     // guardar_leer_grid(cxView_comprobantes,frmComprobantesFiscalesD,1) ;

      zProyeccion.Cancel ;
      action := cafree ;
end;



procedure TfrmProyeccionCXC.frmBarra1btnAddClick(Sender: TObject);
begin
  try
       frmBarraH11.btnAddClick(Sender);
       grid_cuentasxCobrar.Enabled:=false;
//       bancos.Append ;

     except
     on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Compraobantes Fiscales Digitales', 'Al agregar registro ', 0);
     end;
  end;
  frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmProyeccionCXC.frmBarra1btnEditClick(Sender: TObject);
begin

   banderaAgregar:=false;
   frmBarraH11.btnEditClick(Sender);

   try
//      bancos.Edit ;
      grid_cuentasxCobrar.Enabled:=false;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Compraobantes Fiscales Digitales', 'Al editar registro', 0);
          frmBarraH21.btnCancel.Click ;
      end;
   end ;

     frmBarraH11.btnPrinter.Enabled:=false;
end;


procedure TfrmProyeccionCXC.frmBarra1btnCancelClick(Sender: TObject);
begin
 try
  frmBarraH21.btnCancelClick(Sender);
//  bancos.Cancel ;
  grid_cuentasxCobrar.Enabled:=True;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Compraobantes Fiscales Digitales', 'Al cancelar', 0);
  end;
 end;
 frmBarraH11.btnPrinter.Enabled:=false;
end;

procedure TfrmProyeccionCXC.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if cxView_CuentasxCobrar.DataController.DataSource.DataSet.IsEmpty=false then
  begin
    if cxView_CuentasxCobrar.DataController.DataSource.DataSet.RecordCount>0 then
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

procedure TfrmProyeccionCXC.frmBarra1btnRefreshClick(Sender: TObject);
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

procedure TfrmProyeccionCXC.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  ;
end;

procedure TfrmProyeccionCXC.btnAddClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    cxSplitter1.Visible := True;
    grid_cuentasxCobrar.Enabled:=False;



end;

procedure TfrmProyeccionCXC.btnCancelClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    cxSplitter1.Visible := False;
//    frmBarraH11.btnActive;
    grid_cuentasxCobrar.Enabled:=True;
//    ds_bancos.DataSet.Cancel;
end;

procedure TfrmProyeccionCXC.btnDeleteClick(Sender: TObject);
var
  contReg: Integer;
  busca : TUniquery;
  msjError : String;
  indice, iGrid    : integer;
begin
    If zProyeccion.RecordCount  > 0 then begin

      if MessageDlg('Desea eliminar el/los Registro(s)?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then  begin
         try

            iGrid     := 0;
            indice := cxView_CuentasxCobrar.DataController.GetSelectedRowIndex(iGrid);
            cxView_CuentasxCobrar.DataController.FocusedRowIndex := indice;

            with cxView_CuentasxCobrar.DataController.DataSource.DataSet do
            for iGrid := 0 to cxView_CuentasxCobrar.DataController.GetSelectedCount - 1 do
            begin
                indice := cxView_CuentasxCobrar.DataController.GetSelectedRowIndex(iGrid);
                cxView_CuentasxCobrar.DataController.FocusedRowIndex := indice;

               AsignarSQL(connection.qryUBusca,'elimina_comprobante_cfdi',pUpdate);
               FiltrarDataSet(connection.qryUBusca,'Comprobante',[cxView_CuentasxCobrar.DataController.DataSet.FieldByName('IdComprobanteFiscal').AsInteger]);
               connection.qryUBusca.ExecSQL;

            end;

            cxView_CuentasxCobrar.DataController.ClearSelection;
            zProyeccion.Refresh;

            except
              on E : exception do begin
                 UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Compraobantes Fiscales Digitales', 'Al eliminar registro', 0);
              end;
          end;
      end;
    end;
end;

procedure TfrmProyeccionCXC.btnEditClick(Sender: TObject);
begin
  if Clientes.RecordCount > 0  then begin
    cxLeyenda.Caption:=titulo+'[Editando]';
    frmBarraH11.btnAddClick(Sender);
    Panel2.Visible:=True;
    cxSplitter1.Visible := True;
    grid_cuentasxCobrar.Enabled:=False;

  end
  else
    MessageDlg('No hay datos para editar',mtInformation, [mbOk], 0);
end;


procedure TfrmProyeccionCXC.btnPostClick(Sender: TObject);
var
   RefrescaRegistro:  TBookmark;
   Temp:TUniQuery;
   sTexto:String;
   sId  : Integer;
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
//    frmBarraH11.Visible:=True;

    try
//     bancos.Post;

       except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Lista de Compraobantes Fiscales Digitales', 'Al salvar registro', 0);
          frmBarraH21.btnCancel.Click ;
       end;
   end;


    RefrescaRegistro := cxView_CuentasxCobrar.DataController.DataSource.DataSet.GetBookmark;
    try
//       bancos.Refresh ;
       try
          cxView_CuentasxCobrar.DataController.DataSource.DataSet.GotoBookmark(RefrescaRegistro);
       except
       else
           cxView_CuentasxCobrar.DataController.DataSet.FreeBookmark(RefrescaRegistro);
       end;
     finally
    end;

     PermisosBotones(frmProyeccionCXC,btnPermisos);

end;

procedure TfrmProyeccionCXC.Imprimir1Click(Sender: TObject);
begin
    frmBarraH11.btnPrinter.Click
end;


procedure TfrmProyeccionCXC.btnRefreshClick(Sender: TObject);
begin
   zProyeccion.Refresh;
end;

procedure TfrmProyeccionCXC.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

end.

