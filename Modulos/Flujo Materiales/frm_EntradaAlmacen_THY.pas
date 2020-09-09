unit frm_EntradaAlmacen_THY;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, DBCtrls, global, strUtils,
  Mask, OleCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Utilerias,
  Menus, frxClass, frxDBSet, RXDBCtrl, RxLookup, DateUtils, unitGenerales,
  RXCtrls, CheckLst, ToolWin, RxMemDS, ZAbstractRODataset, ZDataset,
  rxCurrEdit, rxToolEdit, AdvGlowButton,
  ZAbstractDataset, unitexcepciones, unitactivapop,
  UFunctionsGHH, UnitValidacion, Math, jpeg, cxGraphics, cxLookAndFeels,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxButtons, AdvGroupBox, AdvOfficeButtons, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,masUtilerias,
  cxContainer, cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer,
  cxTLData, cxDBTL, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxDBLookupComboBox, cxLabel, cxCheckBox, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxLookupEdit, cxDBLookupEdit, cxMemo,
  dxWheelPicker, dxNumericWheelPicker, dxDateTimeWheelPicker, MemDS, DBAccess,
  Uni, cxCalendar, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, cxGroupBox, cxRadioGroup, dxLayoutControl, UnitReportes,
  frm_barraH1, dxBarBuiltInMenu, cxPC, frm_barraH2, cxSplitter, cxProgressBar,
  frxExportPDF, cxCurrencyEdit, Vcl.ExtDlgs, dxToggleSwitch, dxDBToggleSwitch,
  dxCore, cxDateUtils;

type
  TfrmEntradaAlmacen_THY = class(TForm)
    ds_almacen_entrada: TDataSource;
    ds_FolioCompra: TDataSource;
    frxEntrada: TfrxReport;
    ds_almacen: TDataSource;
    ds_pEntradas: TDataSource;
    lblEncabezado: TStaticText;
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
    dsReferencia: TDataSource;
    Grid_Entradas: TcxGrid;
    Grid_ViewEntradas: TcxGridDBTableView;
    Grid_ViewEntradasColumn1: TcxGridDBColumn;
    Grid_ViewEntradasColumn2: TcxGridDBColumn;
    Grid_ViewEntradasColumn3: TcxGridDBColumn;
    Grid_ViewEntradasColumn6: TcxGridDBColumn;
    Grid_ViewEntradasColumn4: TcxGridDBColumn;
    Grid_EntradasLevel1: TcxGridLevel;
    pEntradas: TUniQuery;
    zq_tipomovimiento: TUniQuery;
    FolioCompra: TUniQuery;
    QReferencia: TUniQuery;
    almacen_entrada: TUniQuery;
    Almacen: TUniQuery;
    QFile: TUniQuery;
    Grid_ViewEntradasColumn5: TcxGridDBColumn;
    ordenes_trabajo: TUniQuery;
    ds_ordenes_trabajo: TDataSource;
    ordenes_trabajosContrato: TStringField;
    ordenes_trabajosIdFolio: TStringField;
    ordenes_trabajosNumeroOrden: TStringField;
    ordenes_trabajosOficioAutorizacion: TStringField;
    ordenes_trabajomDescripcion: TMemoField;
    ordenes_trabajosIdPlataforma: TStringField;
    ordenes_trabajosIdPernocta: TStringField;
    ordenes_trabajosIdPlataforma_nota: TStringField;
    ordenes_trabajodFiProgramado: TDateField;
    ordenes_trabajodFfProgramado: TDateField;
    ordenes_trabajocIdStatus: TStringField;
    ordenes_trabajomComentarios: TMemoField;
    ordenes_trabajosFormato: TStringField;
    ordenes_trabajoiConsecutivo: TIntegerField;
    ordenes_trabajoiConsecutivoTierra: TIntegerField;
    ordenes_trabajoiJornadas: TIntegerField;
    ordenes_trabajoiOrden: TIntegerField;
    ordenes_trabajosCsu: TStringField;
    ordenes_trabajosUbicacion: TStringField;
    ordenes_trabajolAplicaJornada: TStringField;
    ordenes_trabajosIdConvenio: TStringField;
    zReporteDetalle: TUniQuery;
    PanelTop: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    PanelDetalle: TPanel;
    PgControl: TcxPageControl;
    TabSheet2: TcxTabSheet;
    TabInforme: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    PanelTopDetalle: TPanel;
    PanelDownDetalle: TPanel;
    GridMaterialEntrada: TcxGrid;
    cxViewMaterialEntrada: TcxGridDBTableView;
    cxColIdInsumo: TcxGridDBColumn;
    cxColTrazabilidad: TcxGridDBColumn;
    cxColDescripcion: TcxGridDBColumn;
    cxColFecha: TcxGridDBColumn;
    cxColCantidadE: TcxGridDBColumn;
    cxColEstatus: TcxGridDBColumn;
    cxColTotal: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    PanelSuperiorInforme: TPanel;
    dxLayoutControl4: TdxLayoutControl;
    opcionImprimir: TcxRadioGroup;
    btnImpInforme: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    cxFolioEntrada: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxNumeroOrden: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxFechaEntrada: TcxDBDateEdit;
    dxLayoutItem5: TdxLayoutItem;
    tsFolioMovimiento: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    tmComentarios: TcxDBMemo;
    dxLayoutItem7: TdxLayoutItem;
    cxEntrega: TcxDBTextEdit;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    frmBarraH21: TfrmBarraH2;
    cxAlmacen: TcxDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    cxEliminarDetalle: TcxButton;
    Grid_ViewEntradasColumn7: TcxGridDBColumn;
    Grid_ViewEntradasColumn8: TcxGridDBColumn;
    cxSplitterDetalle: TcxSplitter;
    cxColCantidadOC: TcxGridDBColumn;
    PanelDown: TPanel;
    pnlBtn2: TPanel;
    frmBarraH22: TfrmBarraH2;
    cxButton1: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    dsFirma: TDataSource;
    zFirma: TUniQuery;
    cxFirma: TcxDBLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    PanelMaterial: TPanel;
    dxLayoutControl6: TdxLayoutControl;
    cxFechaEntregaMat: TcxDBDateEdit;
    cxEntregaMaterial: TcxDBMemo;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    cxSplitMaterial: TcxSplitter;
    frxPDFExport1: TfrxPDFExport;
    cxSplitter1: TcxSplitter;
    ordenes_trabajosDescripcionCorta: TStringField;
    cxAlmacenamiento: TcxButton;
    tsTipoMovimiento: TcxLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxLocalizacion: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxCantidad: TcxDBCurrencyEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cbInspeccion: TcxDBComboBox;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    cbEdoMaterial: TcxDBComboBox;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem15: TdxLayoutItem;
    cxDestino: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutItem17: TdxLayoutItem;
    btnRuta: TcxButton;
    dglPicture: TOpenPictureDialog;
    cxNombre: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    Grid_ViewEntradasColumn9: TcxGridDBColumn;
    dxDBToggleSwitch1: TdxDBToggleSwitch;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutItem19: TdxLayoutItem;
    FechaInicio: TcxDateEdit;
    dxLayoutItem20: TdxLayoutItem;
    FechaFin: TcxDateEdit;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutItem21: TdxLayoutItem;
    cxComprasxProveedor: TcxButton;

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra2btnDeleteClick(Sender: TObject);
    procedure frmBarra2btnRefreshClick(Sender: TObject);
    procedure frmBarra2btnCancelClick(Sender: TObject);
    procedure frxEntradaGetValue(const VarName: string;
      var Value: Variant);
    procedure frmBarra2btnPrinterClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure EliminarClick(Sender: TObject);
    procedure tsTipomovimientoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImpInformeClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure Grid_ViewEntradasCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure frmBarraH22btnPostClick(Sender: TObject);
    procedure frmBarraH22btnCancelClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure entrada_scroll;
    procedure Grid_ViewEntradasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxViewMaterialEntradaCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure almacen_entradaAfterOpen(DataSet: TDataSet);
    procedure cxViewMaterialEntradaCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxAlmacenamientoClick(Sender: TObject);
    procedure tsFolioMovimientoExit(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnRutaClick(Sender: TObject);
    procedure cxComprasxProveedorClick(Sender: TObject);
  private
    sMenuP: string;
    ListaFiles:TstringList;
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmEntradaAlmacen_THY: TfrmEntradaAlmacen_THY;
  SavePlace: TBookmark;
  lNuevo: Boolean;
  OpcButton1: string;
  btnPermisos : String;
  Archivo   : string;
  lNoGuardarDocto :boolean;

implementation


uses frm_connection, UnitValidaTexto, Func_Genericas, frm_firmasNota, unitMetodos,
  frm_repositorio,frm_almacenamiento, frm_agregar_masivoOP_THY;

{$R *.dfm}

procedure TfrmEntradaAlmacen_THY.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  guardar_leer_grid(Grid_ViewEntradas,frmEntradaAlmacen_THY,1);
  guardar_leer_grid(cxViewMaterialEntrada,frmEntradaAlmacen_THY,1);
  ListaFiles.Clear;
  ListaFiles.destroy;
  global_frmEntradas := nil;
  action := cafree;
end;

procedure TfrmEntradaAlmacen_THY.FormCreate(Sender: TObject);
begin
  ListaFiles:=TstringList.Create;
end;

procedure TfrmEntradaAlmacen_THY.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
  try
    sMenuP := stMenu;

    AsignarSQL(Almacen,'almacenXusuario',pUpdate);
    FiltrarDataSet(Almacen,'Almacen,Usuario',[-1,GLOBAL_USUARIO]);
    Almacen.Open;

    AsignarSQL(almacen_entrada,'almacen_entrada',pUpdate);
    FiltrarDataSet(almacen_entrada,'Contrato,Usuario',[GLOBAL_CONTRATO,global_usuario]);
    almacen_entrada.Open;

    AsignarSQL(zq_tipomovimiento,'tipo_movimiento',pUpdate);
    FiltrarDataSet(zq_tipomovimiento,'IdTipo',[-1]);
    zq_tipomovimiento.Open;

    AsignarSQL(ordenes_trabajo,'ordenesdetrabajo_presu_val',pUpdate);
    if  connection.uContrato.FieldByName('FK_Titulo').AsString = 'SIANI' then
       FiltrarDataSet(ordenes_trabajo,'Contrato,Tipo,Status',[global_contrato,'-1','-1'])
    else
       FiltrarDataSet(ordenes_trabajo,'Contrato,Tipo,Estatus',[global_contrato,'PROYECTO','-1']);
    ordenes_trabajo.Open;

    if connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7' then
       cxNumeroOrden.Properties.ListFieldNames:='sDescripcionCorta';

       Grid_ViewEntradasColumn9.Visible:=False;
       dxLayoutItem13.Visible:=False;
       dxLayoutItem14.Visible:=False;
       dxLayoutItem15.Visible:=False;


    AsignarSQL(zFirma, 'rd_firmas', pUpdate);
    FiltrarDataSet(zFirma, 'IdFirma, Contrato',[-1, Global_Contrato]);
    zFirma.Open;

    zFirma.Filtered := False;
    zFirma.Filter   := 'VistaUsuario = '+ QuotedStr(self.Caption);
    zFirma.Filtered := True;

    entrada_scroll;

    //grid_entradas.SetFocus;
    PanelDownDetalle.Visible:=False;
    cxSplitterDetalle.Visible := False;
    PanelDetalle.Visible       := False;
    Grid_ViewEntradas.ViewData.Expand(True);
  except
    on e: exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Entrada de materiales almacen', 'Al iniciar el formulario', 0);
    end;
  end;
  guardar_leer_grid(Grid_ViewEntradas,frmEntradaAlmacen_THY,0);
  guardar_leer_grid(cxViewMaterialEntrada,frmEntradaAlmacen_THY,0);
end;

procedure TfrmEntradaAlmacen_THY.BtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEntradaAlmacen_THY.btnImpInformeClick(Sender: TObject);
var
  entradasGrid : String;
   contEntGrid, j : Integer;
begin
  if opcionImprimir.EditValue = 1 then
  begin

    generar_reporte_grid(Grid_ViewEntradas,'Reporte de Entradas Almacén.');
  end
  else
  if opcionImprimir.EditValue = 2 then
  begin
    Grid_ViewEntradas.DataController.Groups.FullExpand;
    contEntGrid := Grid_ViewEntradas.ViewData.RecordCount;
    for j := 0 to (contEntGrid - 1) do
    begin
      try
        entradasGrid := entradasGrid + Grid_ViewEntradas.ViewData.Rows[j].Values[0] +',';
      except
        ;
      end;
    end;

    zReporteDetalle.Active := False;
    AsignarSQL(zReporteDetalle,'reporte_detalles_almacen_entrada',pUpdate);
    FiltrarDataSet(zReporteDetalle,'Contrato, ListaEntradas',[global_contrato,entradasGrid]);
    zReporteDetalle.Open;

    generar_reporte_grid_detalles(Grid_ViewEntradas,zReporteDetalle,'Reporte de Entradas Almacén con Detalles', 'sFolioEntrada');

  end;
end;

procedure TfrmEntradaAlmacen_THY.btnPostClick(Sender: TObject);
begin
   pEntradas.Post;
   pEntradas.Refresh;
   cxSplitMaterial.Visible := False;
   PanelMaterial.Visible := False;
   PanelDownDetalle.Visible:=False;
   cxNuevoDetalle.Enabled := True;
   cxEditaDetalle.Enabled := True;
end;

procedure TfrmEntradaAlmacen_THY.btnRutaClick(Sender: TObject);
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

    pEntradas.FieldByName('NombreImagen').AsString := ExtractFileName(Archivo);
    pEntradas.FieldByName('Imagen').AsString := ExtractFileDir(archivo)+'\'+ExtractFileName(Archivo);

  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
      if pEntradas.state in [dsInsert, dsEdit] then
         lNoGuardarDocto := True;
    end;
  end;

end;

procedure TfrmEntradaAlmacen_THY.EditarClick(Sender: TObject);
begin
  if almacen_entrada.RecordCount > 0 then
  begin
    Showmessage('No se Pueden editar las entradas.. Se recomienda eliminarlas e Insertar nuevamente. ');
  end;

end;

procedure TfrmEntradaAlmacen_THY.CancelarClick(Sender: TObject);
begin
  Grid_entradas.Enabled := True;
  PgControl.Enabled:=True;
  PermisosBotones(frmEntradaAlmacen_THY,btnPermisos);
end;

procedure TfrmEntradaAlmacen_THY.EliminarClick(Sender: TObject);
var
  iGrid, indice : integer;
begin
   if almacen_entrada.FieldValues['sStatus'] <> 'PENDIENTE' then
   begin
     messageDLG('La Entrada de Material se encuentra en estatus '+almacen_entrada.FieldValues['sStatus'], mtInformation, [mbOk], 0);
     exit;
   end;

    if pEntradas.RecordCount > 0 then
    begin
       iGrid     := 0;

       if cxViewMaterialEntrada.DataController.GetSelectedCount > 0 then
           indice := cxViewMaterialEntrada.DataController.GetSelectedRowIndex(iGrid)
        else
        begin
            cxViewMaterialEntrada.DataController.SelectRows(cxViewMaterialEntrada.DataController.FocusedRecordIndex,cxViewMaterialEntrada.DataController.FocusedRecordIndex);
            indice := cxViewMaterialEntrada.DataController.GetSelectedRowIndex(iGrid)
        end;
        cxViewMaterialEntrada.DataController.FocusedRowIndex := indice;
        SavePlace := cxViewMaterialEntrada.DataController.DataSource.DataSet.GetBookmark;

        with cxViewMaterialEntrada.DataController.DataSource.DataSet do
        for iGrid := 0 to cxViewMaterialEntrada.DataController.GetSelectedCount - 1 do
        begin
            indice := cxViewMaterialEntrada.DataController.GetSelectedRowIndex(iGrid);
            cxViewMaterialEntrada.DataController.FocusedRowIndex := indice;

        //Sino es una Entrada Inicial (EINI) o una Entrada de Material (EMAT)
           if (almacen_entrada.FieldByName('CodigoEntrada').AsString <> 'EINI') or (almacen_entrada.FieldByName('CodigoEntrada').AsString <> 'EMAT') then
           begin
              //Si es una Entrada de Orden de Compra(ENOC)
              if almacen_entrada.FieldByName('CodigoEntrada').AsString = 'ENOC' then
              begin
                  AsignarSQL(connection.QryUBusca,'almancen_entrada_actualiza',pUpdate);
                  FiltrarDataSet(connection.QryUBusca,'Contrato,Folio,Insumo',[global_contrato,almacen_entrada.FieldByName('iFolioMovimiento').AsInteger,pEntradas.FieldByName('IdInsumo').AsInteger]);
                  connection.QryUBusca.ExecSQL;
              end;

              //Si es un Traspado Entrada (TRAE) o una recepcion de MAterial (RECP)
              if (almacen_entrada.FieldByName('CodigoEntrada').AsString = 'TRAE') or (almacen_entrada.FieldByName('CodigoEntrada').AsString = 'RECP') then
              begin
                  AsignarSQL(connection.QryUBusca,'almancen_entrada_actualiza',pUpdate);
                  FiltrarDataSet(connection.QryUBusca,'Contrato,Folio,Insumo',[global_contrato,almacen_entrada.FieldByName('iFolioMovimiento').AsInteger,pEntradas.FieldByName('IdInsumo').AsInteger]);
                  connection.QryUBusca.ExecSQL;
              end;

              //Si es Entrada de Aviso Embarque (ENAE)
              if (almacen_entrada.FieldByName('CodigoEntrada').AsString = 'ENAE') then
              begin
                  AsignarSQL(connection.QryUBusca,'almacen_entrada_actualiza_AE',pUpdate);
                  FiltrarDataSet(connection.QryUBusca,'Folio,Insumo',[almacen_entrada.FieldByName('iFolioMovimiento').AsInteger,pEntradas.FieldByName('IdInsumo').AsInteger]);
                  connection.QryUBusca.ExecSQL;
              end;
           end;
           connection.QryUBusca.active := False;
           connection.QryUBusca.SQL.Clear;
           AsignarSQL(connection.QryUBusca,'bitacoradeentrada_elimina',pUpdate);
           FiltrarDataSet(connection.QryUBusca,'Contrato,Folio,Insumo,FolioEntrada',[global_contrato,almacen_entrada.FieldByName('iFolioEntrada').AsInteger,pEntradas.FieldByName('IdInsumo').AsInteger, pEntradas.FieldByName('IdBitacoraEntrada').AsInteger]);
           connection.QryUBusca.ExecSQL;
        end;
        cxViewMaterialEntrada.DataController.ClearSelection;
//       SavePlace := pEntradas.GetBookmark;
        pEntradas.Refresh;

//        try
//          pEntradas.GotoBookmark(SavePlace);
//        except
//        else
//          pEntradas.FreeBookmark(SavePlace);
//        end;

        try
          cxViewMaterialEntrada.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
        except
        else
          cxViewMaterialEntrada.DataController.DataSource.DataSet.FreeBookmark(SavePlace);
        end;

        SavePlace := almacen_entrada.GetBookmark;
        almacen_entrada.RefreshRecord;
        try
          almacen_entrada.GotoBookmark(SavePlace);
        except
        else
          almacen_entrada.FreeBookmark(SavePlace);
        end;
    end
end;

procedure TfrmEntradaAlmacen_THY.frmBarra2btnAddClick(Sender: TObject);
begin
  try
    OpcButton1 := 'New';

    almacen_entrada.Append;
    almacen_entrada.FieldByName('sFolioEntrada').AsString:= autofolio(almacen_entrada, 'almacen_entrada', connection.uContrato.FieldByName('IdEmpresa').AsInteger, 0,0);
    almacen_entrada.FieldByName('IdAlmacen').AsInteger:= Almacen.FieldByName('IdAlmacen').AsInteger;
    if almacen_entrada.FieldByName('IdAlmacen').AsInteger = 0 then
    begin
       MessageDlg('El usuario: '+global_usuario+' No tiene Almacen Asignado.', mtInformation, [mbOk], 0);
       frmBarra2btnCancelClick(Sender);
    end
    else
    begin
      almacen_entrada.FieldByName('dFecha').AsDateTime:=Now;
      almacen_entrada.FieldByName('IdTipo').AsInteger:=zq_tipomovimiento.FieldByName('IdTipo').AsInteger;
      if tsTipoMovimiento.Text = '' then
         tsTipoMovimiento.ItemIndex :=0;
      tsTipoMovimiento.OnExit(sender);
      tsFolioMovimiento.OnExit(sender);
      almacen_entrada.FieldByName('sNumeroOrden').AsString := ordenes_trabajo.FieldByName('sNumeroOrden').AsString;
      cxFirma.DataBinding.DataSource.DataSet.FieldByName('IdFirma').AsInteger := zFirma.FieldByName('IdFirma').AsInteger;

      PanelDetalle.Visible:=False;
      cxSplitterDetalle.Visible:=False;
      PanelDownDetalle.Visible:= False;
      PanelDown.Visible:=True;

      cxFechaEntrada.SetFocus;

      Grid_Entradas.Enabled := False;
      BloquearItemsPopup(PopupPrincipal, True );
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_EntradaAlmacen', 'Al agregar registro ', 0);
    end;
  end;
end;

procedure TfrmEntradaAlmacen_THY.frmBarra2btnEditClick(Sender: TObject);
begin
   if almacen_entrada.FieldValues['sStatus'] <> 'PENDIENTE' then
   begin
     messageDLG('La Entrada de Material se encuentra en estatus '+almacen_entrada.FieldValues['sStatus'], mtInformation, [mbOk], 0);
     exit;
   end;

   if almacen_entrada.RecordCount > 0 then
   begin
      //Aquí ya se puede editar la información
      almacen_entrada.Edit;
      BloquearItemsPopup(PopupPrincipal, True );
      Grid_Entradas.Enabled := False;
      PanelDetalle.Visible:=False;
      cxSplitterDetalle.Visible:=False;
      PanelDownDetalle.Visible:= False;
      PanelDown.Visible:=True;

      if pEntradas.RecordCount > 0 then
      begin
//          tsTipoMovimiento.Enabled := False;
//          tsFolioMovimiento.Enabled := False;
      end;
  end;

end;

procedure TfrmEntradaAlmacen_THY.frmBarra2btnPrinterClick(Sender: TObject);
var
   frxDBEntradas : TfrxDBDataset;
begin
 try
      frmRepositorio.Reporte.Active := False;
      frmRepositorio.Reporte.SQL.Clear;

      //Si es una Entrada de Orden de Compra(ENOC)
      if almacen_entrada.FieldByName('CodigoEntrada').AsString = 'ENOC' then
      begin
         AsignarSQL(frmRepositorio.reporte,'reporte_entrada_material_oc',pUpdate);
         FiltrarDataSet(frmRepositorio.reporte,'Folio',[almacen_entrada.FieldValues['iFolioEntrada']]);
         frmRepositorio.reporte.Open;
      end;

      //Si es una Recepcion Entrada(RECP)
      if almacen_entrada.FieldByName('CodigoEntrada').AsString = 'RECP' then
      begin
         AsignarSQL(frmRepositorio.reporte,'reporte_entrada_material_desembarque',pUpdate);
         FiltrarDataSet(frmRepositorio.reporte,'Principal,Contrato,Almacen,Folio',[-1,global_contrato,almacen_entrada.FieldByName('IdInsumo').AsInteger,almacen_entrada.FieldValues['iFolioEntrada']]);
         frmRepositorio.reporte.Open;
      end;

      //Si es un Traspaso Entrada(TRAE) o una Entrada de Material (EMAT) o una Entrada inicial (EINI)
      if (almacen_entrada.FieldByName('CodigoEntrada').AsString = 'TRAE') or (almacen_entrada.FieldByName('CodigoEntrada').AsString = 'EMAT') or (almacen_entrada.FieldByName('CodigoEntrada').AsString = 'EINI') then
      begin
         AsignarSQL(frmRepositorio.reporte,'reporte_entrada_material_traspaso',pUpdate);
         FiltrarDataSet(frmRepositorio.reporte,'Contrato,Almacen,Folio',[global_contrato,almacen_entrada.FieldByName('IdAlmacen').AsInteger,almacen_entrada.FieldValues['iFolioEntrada']]);
         frmRepositorio.reporte.Open;
      end;

      //Si es una Entrada de Aviso de Embarque(ENAE)
      if almacen_entrada.FieldByName('CodigoEntrada').AsString = 'ENAE' then
      begin
         AsignarSQL(frmRepositorio.reporte,'reporte_entrada_material_aviso_embarque',pUpdate);
         FiltrarDataSet(frmRepositorio.reporte,'Contrato,Almacen,Folio',[global_contrato,almacen_entrada.FieldByName('IdAlmacen').AsInteger,almacen_entrada.FieldValues['iFolioEntrada']]);
         frmRepositorio.reporte.Open;
      end;

      if almacen_entrada.FieldByName('CodigoEntrada').AsString = 'EDEV' then
      begin
         AsignarSQL(frmRepositorio.reporte,'reporte_entrada_material_devolucion',pUpdate);
         FiltrarDataSet(frmRepositorio.reporte,'Contrato,Almacen,Folio',[global_contrato,almacen_entrada.FieldByName('IdAlmacen').AsInteger,almacen_entrada.FieldValues['iFolioEntrada']]);
         frmRepositorio.reporte.Open;
      end;

      frxDBEntradas := TfrxDBDataset.Create(nil);
      frxDBEntradas.DataSet    := frmRepositorio.Reporte;
      frxDBEntradas.UserName   := 'frxDBEntradas';
      frxDBEntradas.FieldAliases.Clear;
      frxEntrada.DataSets.Add(frxDBEntradas);

      frxEntrada.PreviewOptions.MDIChild := False;
      frxEntrada.PreviewOptions.Modal := True;
      frxEntrada.PreviewOptions.ShowCaptions := False;
      frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;
      if (connection.uContrato.FieldByName('FK_Titulo').AsString ='SUBSEA 7') AND (almacen_entrada.FieldByName('CodigoEntrada').AsString = 'ENAE') and  (almacen_entrada.FieldByName('IdAlmacen').AsInteger = 2 )then
      begin
        frxEntrada.LoadFromFile (global_files +global_miReporte+'_ALM_EntradaEmbarque.fr3') ;
        if not FileExists(global_files + global_miReporte + '_ALM_EntradaEmbarque.fr3') then
        showmessage('El archivo de reporte '+global_miReporte+'_ALM_EntradaEmbarque.fr3 no existe, notifique al administrador del sistema');
      end;

      if (connection.uContrato.FieldByName('FK_Titulo').AsString ='SUBSEA 7') AND (almacen_entrada.FieldByName('CodigoEntrada').AsString = 'EDEV') and  (almacen_entrada.FieldByName('IdAlmacen').AsInteger = 2 )then
      begin
         frxEntrada.LoadFromFile (global_files +global_miReporte+'_ALM_ValeDevolucion_Blue.fr3') ;
        if not FileExists(global_files + global_miReporte + '_ALM_ValeDevolucion_Blue.fr3') then
        showmessage('El archivo de reporte '+global_miReporte+'_ALM_ValeDevolucion_Blue.fr3 no existe, notifique al administrador del sistema');
      end ;

      if (connection.uContrato.FieldByName('FK_Titulo').AsString ='SUBSEA 7') AND (almacen_entrada.FieldByName('sIdAlmacen').AsString <> 'ALMACEN BLUE PIONEER' ) then
      begin
        frxEntrada.LoadFromFile(global_files + global_miReporte + '_ALM_Entrada.fr3');
        if not FileExists(global_files + global_miReporte + '_ALM_Entrada.fr3') then
          showmessage('El archivo de reporte '+global_miReporte+'_ALM_Entrada.fr3 no existe, notifique al administrador del sistema');
      end ;

      if (connection.uContrato.FieldByName('FK_Titulo').AsString <>'SUBSEA 7') then begin
        frxEntrada.LoadFromFile(global_files + global_miReporte + '_ALM_Entrada.fr3');
        if not FileExists(global_files + global_miReporte + '_ALM_Entrada.fr3') then
          showmessage('El archivo de reporte '+global_miReporte+'_ALM_Entrada.fr3 no existe, notifique al administrador del sistema');
      end;
      frxPDFExport1.FileName :=frmRepositorio.Reporte.FieldByName('sFolioEntrada').AsString;
      frxEntrada.ShowReport();

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Entrada de materiales almacen', 'Al imprimir', 0);
    end;
  end;
end;

procedure TfrmEntradaAlmacen_THY.frmBarra2btnDeleteClick(Sender: TObject);
begin
   if almacen_entrada.FieldValues['sStatus'] <> 'PENDIENTE' then
   begin
     messageDLG('La Entrada de Material se encuentra en estatus '+almacen_entrada.FieldValues['sStatus'], mtInformation, [mbOk], 0);
     exit;
   end;
   if almacen_entrada.RecordCount > 0 then
      if MessageDlg('Desea eliminar la Entrada seleccionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
          if pEntradas.RecordCount > 0 then
          begin
            MessageDlg('Existen Materiales para esta Entrada al Almacen, Para continuar Eliminarlos.',mtInformation,[mbOk],0);
            exit;
          end;
             //Eliminamos la entrada
             AsignarSQL(connection.QryUBusca,'almacen_entrada_elimina',pUpdate);
             FiltrarDataSet(connection.QryUBusca,'Contrato,Folio',[global_contrato,almacen_entrada.FieldByName('iFolioEntrada').AsInteger]);
             connection.QryUBusca.ExecSQL;
             SavePlace := almacen_entrada.GetBookmark;
             almacen_entrada.RefreshRecord;
             // Actualizo Kardex del Sistema ....
             kardex_almacen('Elimina Entrada No. [' + almacen_entrada.FieldbyName('sFolioEntrada').AsString + ']', 'Otros Movimientos');

            try
              almacen_entrada.GotoBookmark(SavePlace);
            except
            else
              almacen_entrada.FreeBookmark(SavePlace);
            end;
      end
end;


procedure TfrmEntradaAlmacen_THY.frmBarra2btnRefreshClick(Sender: TObject);
begin
    connection.Uconnection.Ping;
    SavePlace := Grid_ViewEntradas.DataController.DataSource.DataSet.GetBookmark;
    almacen_entrada.Active := False;
    AsignarSQL(almacen_entrada,'almacen_entrada',pUpdate);
    FiltrarDataSet(almacen_entrada,'Contrato,Usuario',[GLOBAL_CONTRATO,global_usuario]);
    almacen_entrada.Open;
    Try
       Grid_ViewEntradas.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
     Except
         Grid_ViewEntradas.DataController.DataSet.FreeBookmark(SavePlace);
     End;
end;

procedure TfrmEntradaAlmacen_THY.frmBarraH22btnCancelClick(Sender: TObject);
begin
  almacen_entrada.Cancel;
  almacen_entrada.First;
  BloquearItemsPopup(PopupPrincipal, False );
  Grid_Entradas.Enabled := TRUE;
  PanelDownDetalle.Visible:=False;
  PanelDown.Visible:=False;

  tsTipoMovimiento.Enabled := True;
  tsFolioMovimiento.Enabled := True;
end;

procedure TfrmEntradaAlmacen_THY.frmBarraH22btnPostClick(Sender: TObject);
begin
  try
      if almacen_entrada.State = dsInsert then
      begin
          almacen_entrada.FieldValues['sStatus']          := 'PENDIENTE';
          almacen_entrada.FieldByName('sContrato').AsString    :=GLOBAL_CONTRATO;
          almacen_entrada.FieldByName('iPeriodo').AsInteger    :=Connection.uconfiguracion.FieldByName('iEjercicio').AsInteger;
          almacen_entrada.FieldByName('sIdUsuario').AsString   :=GLOBAL_USUARIO;
          if (almacen_entrada.FieldByName('iFolioMovimiento').AsInteger = null) or (almacen_entrada.FieldByName('iFolioMovimiento').AsInteger = 0) then
          begin
             almacen_entrada.FieldByName('iFolioPedido').AsInteger:= 0;
             almacen_entrada.FieldByName('iFolioMovimiento').AsInteger:= 0;
          end
          else
             almacen_entrada.FieldByName('iFolioPedido').AsInteger:= almacen_entrada.FieldByName('iFolioMovimiento').AsInteger;
          almacen_entrada.FieldByName('dFechaEntrega').AsDateTime:= almacen_entrada.FieldByName('dFecha').AsDateTime;
          almacen_entrada.FieldByName('IdTipo').AsInteger:= zq_tipomovimiento.FieldByName('IdTipo').AsInteger;
          almacen_entrada.Post;
          entrada_scroll;
          kardex_almacen('Crea Entrada No. [' + cxFolioEntrada.Text + ']', 'Otros Movimientos');
      end
      else
        if almacen_entrada.State = dsEdit then
        begin
             if (almacen_entrada.FieldByName('iFolioMovimiento').AsInteger = null) or (almacen_entrada.FieldByName('iFolioMovimiento').AsInteger = 0) then
             begin
                 almacen_entrada.FieldByName('iFolioPedido').AsInteger:= 0;
                 almacen_entrada.FieldByName('iFolioMovimiento').AsInteger:= 0;
             end
             else
               almacen_entrada.FieldByName('iFolioPedido').AsInteger:= almacen_entrada.FieldByName('iFolioMovimiento').AsInteger;
            almacen_entrada.FieldByName('dFechaEntrega').AsDateTime:= almacen_entrada.FieldByName('dFecha').AsDateTime;
            almacen_entrada.FieldByName('IdTipo').AsInteger:= zq_tipomovimiento.FieldByName('IdTipo').AsInteger;
            almacen_entrada.Post;
            kardex_almacen('Modifica Entrada No. [' + cxFolioEntrada.Text + ']', 'Otros Movimientos');
        end;

      //almacen_entrada.State;
      almacen_entrada.Filtered := false;

      SavePlace := Grid_ViewEntradas.DataController.DataSource.DataSet.GetBookmark;

      frmBarraH11.btnRefresh.OnClick(nil);
//      if almacen_entrada.Active then
//        almacen_entrada.Refresh
//      else
//        almacen_entrada.Open;

      Try
         Grid_ViewEntradas.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
      Except
           Grid_ViewEntradas.DataController.DataSource.DataSet.FreeBookmark(SavePlace);
      End;

  finally
      tsFolioMovimiento.Enabled := True;
      Grid_Entradas.Enabled := True;
      OpcButton1 := '';
      frmBarraH22.btnCancel.OnClick(sender);
      BloquearItemsPopup(PopupPrincipal, False);
      PermisosBotones(frmEntradaAlmacen_THY,btnPermisos);
  end;
end;

procedure TfrmEntradaAlmacen_THY.frmBarra2btnCancelClick(Sender: TObject);
begin
   pEntradas.Cancel;
   cxSplitMaterial.Visible := False;
   PanelMaterial.Visible := False;
   PanelDownDetalle.Visible:=False;
   cxNuevoDetalle.Enabled := True;
   cxEditaDetalle.Enabled := True;
   Grid_Entradas.Enabled := TRUE;
end;

procedure TfrmEntradaAlmacen_THY.tsFolioMovimientoExit(Sender: TObject);
begin
   tsFolioMovimiento.Style.Color := global_color_salidaERP;
   if zq_tipomovimiento.FieldByName('Codigo').AsString = 'ENOC' then
   begin
      FolioCompra.Locate('Detalle',tsFolioMovimiento.Text,[]);
      almacen_entrada.FieldByName('sNumeroOrden').AsString := FolioCompra.FieldByName('sNumeroOrden').AsString;
   end;

   if (zq_tipomovimiento.FieldByName('Codigo').AsString = 'TRAE') or (zq_tipomovimiento.FieldByName('Codigo').AsString = 'RECP') then
   begin
      FolioCompra.Locate('Detalle',tsFolioMovimiento.Text,[]);
      almacen_entrada.FieldByName('sNumeroOrden').AsString := FolioCompra.FieldByName('sNumeroOrden').AsString;
   end;

    if (zq_tipomovimiento.FieldByName('Codigo').AsString = 'ENAE') then
   begin
      FolioCompra.Locate('Detalle',tsFolioMovimiento.Text,[]);
      almacen_entrada.FieldByName('sNumeroOrden').AsString := FolioCompra.FieldByName('sNumeroOrden').AsString;
   end;
end;

procedure TfrmEntradaAlmacen_THY.tsTipomovimientoExit(Sender: TObject);
begin
   tsTipoMovimiento.Style.Color := global_color_salidaERP;
   FolioCompra.Active := False;
   tsFolioMovimiento.Enabled:=True;

   //Posicionamos la opcion seleccionada
   zq_tipomovimiento.Locate('sDescripcion',tsTipoMovimiento.Text,[]);

   //Ahora por medio de los codigos unicos identificamos de qué tipo estamos haciendo la entrada
   {Entrada Orden de Compra}
   if zq_tipomovimiento.FieldByName('Codigo').AsString = 'ENOC' then
   begin
      AsignarSQL(FolioCompra,'anexo_pedidos_simple',pUpdate);
      FiltrarDataSet(FolioCompra,'Contrato',[global_contrato]);
      FolioCompra.Open;

      if FolioCompra.RecordCount > 0 then
         tsFolioMovimiento.DataBinding.DataSource.DataSet.FieldByName('iFolioMovimiento').AsInteger := FolioCompra.FieldByName('Folio').AsInteger
      else
      begin
         tsFolioMovimiento.DataBinding.DataSource.DataSet.FieldByName('iFolioMovimiento').AsInteger := 0;
         almacen_entrada.FieldByName('sNumeroOrden').AsString := ordenes_trabajo.FieldByName('sNumeroOrden').AsString;
      end;
   end;

   {(Entrada por Traspaso Entrada) o
   (Entrada por recepcion de material)}
   if (zq_tipomovimiento.FieldByName('Codigo').AsString = 'TRAE') or (zq_tipomovimiento.FieldByName('Codigo').AsString = 'RECP') then
   begin
       AsignarSQL(FolioCompra,'almacen_salida_simple',pUpdate);
       FiltrarDataSet(FolioCompra,'Contrato',[global_contrato]);
       FolioCompra.Open;

      if FolioCompra.RecordCount > 0 then
         tsFolioMovimiento.DataBinding.DataSource.DataSet.FieldByName('iFolioMovimiento').AsInteger := FolioCompra.FieldByName('Folio').AsInteger
      else
      begin
         tsFolioMovimiento.DataBinding.DataSource.DataSet.FieldByName('iFolioMovimiento').AsInteger := 0;
         almacen_entrada.FieldByName('sNumeroOrden').AsString := ordenes_trabajo.FieldByName('sNumeroOrden').AsString;
      end;
   end;

   {Entrada de material o inicio del inventario}
   if (zq_tipomovimiento.FieldByName('Codigo').AsString = 'EMAT') or (zq_tipomovimiento.FieldByName('Codigo').AsString = 'EINI') then
   begin
       AsignarSQL(FolioCompra,'almacen_salida_todos',pUpdate);
       FolioCompra.Open;

      begin
         tsFolioMovimiento.DataBinding.DataSource.DataSet.FieldByName('iFolioMovimiento').AsInteger := 0;
         almacen_entrada.FieldByName('sNumeroOrden').AsString := ordenes_trabajo.FieldByName('sNumeroOrden').AsString;
      end;
   end;

   {Entrada por Aviso de Embarque}
   if (zq_tipomovimiento.FieldByName('Codigo').AsString = 'ENAE') then
   begin
       AsignarSQL(FolioCompra,'almacenEntrada_aviso_embarque',pUpdate);
       FiltrarDataSet(FolioCompra,'Contrato',[global_contrato]);
       FolioCompra.Open;

      if FolioCompra.RecordCount > 0 then
         tsFolioMovimiento.DataBinding.DataSource.DataSet.FieldByName('iFolioMovimiento').AsInteger := FolioCompra.FieldByName('Folio').AsInteger
      else
      begin
         tsFolioMovimiento.DataBinding.DataSource.DataSet.FieldByName('iFolioMovimiento').AsInteger := 0;
         almacen_entrada.FieldByName('sNumeroOrden').AsString := ordenes_trabajo.FieldByName('sNumeroOrden').AsString;
      end;
   end;

     if  (zq_tipomovimiento.FieldByName('Codigo').AsString = 'EDEV') then
   begin
            AsignarSQL(FolioCompra,'almacen_salida_devolucion',pUpdate);
       FiltrarDataSet(FolioCompra,'Contrato',[global_contrato]);
       FolioCompra.Open;

      if FolioCompra.RecordCount > 0 then
         tsFolioMovimiento.DataBinding.DataSource.DataSet.FieldByName('iFolioMovimiento').AsInteger := FolioCompra.FieldByName('Folio').AsInteger
      else
      begin
         tsFolioMovimiento.DataBinding.DataSource.DataSet.FieldByName('iFolioMovimiento').AsInteger := 0;
         almacen_entrada.FieldByName('sNumeroOrden').AsString := ordenes_trabajo.FieldByName('sNumeroOrden').AsString;
      end;

      cbEdoMaterial.Text := 'BUENO';
      dxLayoutItem14.Visible := True;
      dxLayoutItem15.Visible := True;

   end;

   if ((connection.uContrato.FieldByName('FK_Titulo').AsString = 'SUBSEA 7') and (zq_tipomovimiento.FieldByName('Codigo').AsString <> 'EDEV')) then
   BEGIN
      dxLayoutItem15.Visible := False;
      dxLayoutItem14.Visible := False;
   END;


end;

procedure TfrmEntradaAlmacen_THY.frxEntradaGetValue(const VarName: string; var Value: Variant);
begin
  if CompareText(VarName, 'TIPO_ENTRADA') = 0 then
    Value := '';

  if CompareText(VarName, 'FECHA') = 0 then
    Value := almacen_entrada.FieldByName('dfecha').AsDateTime;
end;

procedure TfrmEntradaAlmacen_THY.cxAlmacenamientoClick(Sender: TObject);
begin
    Application.CreateForm(TFrmAlmacenamiento, FrmAlmacenamiento);
    FrmAlmacenamiento.Caption := global_Temp;
    FrmAlmacenamiento.ShowModal;
end;

procedure TfrmEntradaAlmacen_THY.cxButton1Click(Sender: TObject);
begin
  if (almacen_entrada.State = dsInsert ) or (almacen_entrada.State = dsEdit) then
   begin
       global_frmActivo := 'frm_EntradaAlmacen';
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

procedure TfrmEntradaAlmacen_THY.cxComprasxProveedorClick(Sender: TObject);
var
  frxOrdenCompra : TfrxDBDataset;
begin
  try
      AsignarSQL(frmRepositorio.Reporte,'Reporte_Costos_Entrada',pUpdate);
      FiltrarDataSet(frmRepositorio.Reporte,'Contrato',[global_contrato]);
      frmRepositorio.Reporte.Open;

      frmRepositorio.Reporte.Filtered := False;
      frmRepositorio.Reporte.Filter   := ' (FechaEntrada >='+QuotedStr(FechaSQL(FechaInicio.Date))+' and FechaEntrada<= '+QuotedStr(FechaSQL(FechaFin.Date))+')';;
      frmRepositorio.Reporte.Filtered := True;

      frxOrdenCompra := TfrxDBDataset.Create(nil);
      frxOrdenCompra.DataSet    := frmRepositorio.Reporte;
      frxOrdenCompra.FieldAliases.Clear;

      frxEntrada.DataSets.Add(frxOrdenCompra);

      frxEntrada.PreviewOptions.MDIChild := False;
      frxEntrada.PreviewOptions.Modal := True;
      frxEntrada.PreviewOptions.ShowCaptions := False;
      frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      frxEntrada.LoadFromFile(global_files + global_miReporte + '_ALM_ReporteCostoEntradas.fr3');
      frxentrada.ShowReport();
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Costos de Entrada de Materiales', 'Al imprimir', 0);
      end;
    end;

end;

procedure TfrmEntradaAlmacen_THY.cxEditaDetalleClick(Sender: TObject);
begin
     If almacen_entrada.RecordCount > 0 Then
     Begin
         if almacen_entrada.FieldValues['sStatus'] <> 'PENDIENTE' then
         begin
           messageDLG('La Entrada de Material se encuentra en estatus '+almacen_entrada.FieldValues['sStatus'], mtInformation, [mbOk], 0);
           exit;
         end;
         OpcButton         := 'Edit';
         cxNuevoDetalle.Enabled   := False ;
         cxEditaDetalle.Enabled    := False ;
         cxEliminarDetalle.Enabled  := True ;

         pEntradas.Edit;
         PanelDownDetalle.Visible:=True;
         PanelMaterial.Visible := True;
         cxSplitMaterial.Visible := True;
         cxEntregaMaterial.SetFocus;
     End;
end;



procedure TfrmEntradaAlmacen_THY.cxViewMaterialEntradaCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if PanelMaterial.Visible = true then
    begin
        if pEntradas.RecordCount > 0 then
           if pEntradas.FieldByName('sStatus').AsString = 'Pendiente' then
              pEntradas.Edit
           else
              messageDLG('No se puede modificar, el material se encuentra "Entregado"',mtInformation, [mbOk],0);
    end;
end;

procedure TfrmEntradaAlmacen_THY.cxViewMaterialEntradaCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if cxViewMaterialEntrada.OptionsView.CellAutoHeight then
       cxViewMaterialEntrada.OptionsView.CellAutoHeight := False
    else
       cxViewMaterialEntrada.OptionsView.CellAutoHeight := True;
end;

procedure TfrmEntradaAlmacen_THY.cxNuevoDetalleClick(Sender: TObject);
begin
    If (almacen_entrada.RecordCount > 0) Then
    Begin
       if almacen_entrada.FieldValues['sStatus'] <> 'PENDIENTE' then
       begin
         messageDLG('La Entrada de Material se encuentra en estatus '+almacen_entrada.FieldValues['sStatus'], mtInformation, [mbOk], 0);
         exit;
       end;
       IsOpen:=false;
       OpcButton := 'New';

       global_frmActivo:='Entrada_Almacen';
       Application.CreateForm(TfrmAgregarMasivoOP_THY, frmAgregarMasivoOP_THY);
       Application.NormalizeAllTopMosts;
       frmAgregarMasivoOp_THY.Show;

       cxEditaDetalle.Enabled   := True ;
       cxEliminarDetalle.Enabled := True ;
    End;
end;

procedure TfrmEntradaAlmacen_THY.almacen_entradaAfterOpen(DataSet: TDataSet);
begin
    almacen_entrada.Cancel;
end;

procedure TfrmEntradaAlmacen_THY.btnDetalleClick(Sender: TObject);
begin
//  if connection.uContrato.FieldByName('FK_Titulo').AsString<>'CMMI' then
//   cxAlmacenamiento.Visible:=False
//   else
//    cxAlmacenamiento.Visible:=True;
  PanelDetalle.Visible:= not PanelDetalle.Visible;
  cxSplitterDetalle.Visible := not cxSplitterDetalle.Visible ;
  if PanelDetalle.Visible = true then
     entrada_scroll;
  pEntradas.Refresh;
end;

procedure TfrmEntradaAlmacen_THY.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookUpComboBox) then
        tcxDBLookUpComboBox(sender).Style.Color := global_color_entradaERP;

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

    if (sender is TcxDBCurrencyEdit) then
        TcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;

end;

procedure TfrmEntradaAlmacen_THY.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookUpComboBox) then
        tcxDBLookUpComboBox(sender).Style.Color := global_color_salidaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is TcxDBCurrencyEdit) then
        TcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;

end;

procedure TfrmEntradaAlmacen_THY.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;


procedure TfrmEntradaAlmacen_THY.Grid_ViewEntradasCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if almacen_entrada.FieldByName('Ident').AsString = 'N/A' then
    begin
       cxViewMaterialEntrada.Columns[4].Visible:=False;
       cxViewMaterialEntrada.Columns[6].Visible:=False;
    end
    else
    begin
      cxViewMaterialEntrada.Columns[4].Visible:=True;
      cxViewMaterialEntrada.Columns[6].Visible:=True;
      if almacen_entrada.FieldByName('Ident').AsString = 'oc' then
      begin
         cxViewMaterialEntrada.Columns[4].Caption:='Cantidad O.C.';
      end;
      if almacen_entrada.FieldByName('Ident').AsString = 'sal' then
      begin
         cxViewMaterialEntrada.Columns[4].Caption:='Cantidad Sal.';
      end;
    end;

    zq_tipomovimiento.Locate('IdTipo',almacen_entrada.FieldByName('IdTipo').AsInteger,[]);
    tstipoMovimiento.Text := zq_tipomovimiento.FieldByName('sDescripcion').AsString;
    if PanelDetalle.Visible then
      entrada_scroll;

end;

procedure TfrmEntradaAlmacen_THY.Grid_ViewEntradasKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Key = VK_UP) or ( Key = VK_DOWN)  then
        if PanelDetalle.Visible then
          entrada_scroll;
end;

procedure TfrmEntradaAlmacen_THY.entrada_scroll;
begin
    if almacen_entrada.RecordCount > 0 then
    begin
        AsignarSQL(pEntradas,'bitacoradeentrada',pUpdate);
        FiltrarDataSet(pEntradas,'Folio,Contrato',[almacen_entrada.FieldByName('iFolioEntrada').AsInteger,GLOBAL_CONTRATO]);
        pEntradas.Open;

        if PgControl.ActivePage = TabSheet2 then
        begin
          cxEliminarDetalle.Visible:=True;
          if ((connection.uContrato.FieldByName('FK_Titulo').AsString = 'SUBSEA 7') or
              (connection.uContrato.FieldByName('FK_Titulo').AsString = 'CMMI')) then
            cxEditaDetalle.Visible:=True
          else
            cxEditaDetalle.Visible:=False;
          cxNuevoDetalle.Visible:=True;
        end;

        if PgControl.ActivePage = TabInforme then
        begin
          cxEliminarDetalle.Visible:=False;
          cxNuevoDetalle.Visible:=False;
          cxEditaDetalle.Visible:=False;
        end;
    end;
end;


end.

