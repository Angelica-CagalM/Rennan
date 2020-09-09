unit frm_SolicitudDeMateriales;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  dxSkinXmas2008Blue, Vcl.Menus, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  dxLayoutContainer, dxLayoutControl, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxPC, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxSplitter, frm_barraH2, cxProgressBar, Vcl.StdCtrls, cxButtons, cxLabel,
  frm_barraH1, Vcl.ExtCtrls, global, UnitGenerales, MemDS,
  DBAccess, Uni, cxDBLookupComboBox, dxLayoutcxEditAdapters, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, cxMemo, cxLookupEdit,
  cxDBLookupEdit, Vcl.ComCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.DBCtrls,
  frxClass, frxDBSet, UnitExcepciones, cxCalc, dxLayoutControlAdapters,
  cxGroupBox, cxRadioGroup, cxGridChartView, cxGridDBChartView,
  UnitReportes, cxCurrencyEdit;

type
  TfrmSolicitudDeMateriales = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    zAvisosEmbarque: TUniQuery;
    zDetalleMaterial: TUniQuery;
    dsDetalleMaterial: TDataSource;
    dsAvisosEmbarque: TDataSource;
    zMaterial: TUniQuery;
    zMedida: TUniQuery;
    dsMaterial: TDataSource;
    dsMedida: TDataSource;
    dsNumeroSerie: TDataSource;
    zNumeroSerie: TUniQuery;
    zProyecto: TUniQuery;
    dsProyecto: TDataSource;
    zSalidas: TUniQuery;
    dsSalidas: TDataSource;
    dsPlataforma: TDataSource;
    zPlataforma: TUniQuery;
    zEmbarcacion: TUniQuery;
    dsEmbarcacion: TDataSource;
    zDepto: TUniQuery;
    dsDepto: TDataSource;
    zSalidaInsumo: TUniQuery;
    dsSalidaInsumo: TDataSource;
    zSeries: TUniQuery;
    dsSeries: TDataSource;
    frxReporte: TfrxReport;
    zGrafica: TUniQuery;
    dsGrafica: TDataSource;
    zReporteDetalle: TUniQuery;
    PanelInsumos: TPanel;
    Label14: TLabel;
    lblCertificado: TLabel;
    Label1: TLabel;
    Grid_Pedido: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    ColumnRequerido: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Salvar: TcxButton;
    Cancelar: TcxButton;
    tsNumeroSerie: TDBLookupComboBox;
    edFactura: TEdit;
    tdCantidad: TcxCalcEdit;
    zq_tipomovimiento: TUniQuery;
    ds_tipomovimiento: TDataSource;
    Almacen: TUniQuery;
    ds_almacen: TDataSource;
    dsOrdenesdeTrabajo: TDataSource;
    uOrdenesTrabajo: TUniQuery;
    dsESolicitud: TDataSource;
    zESolicitud: TUniQuery;
    PanelPrincipal: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    cxNota: TcxDBMemo;
    cxCodigo: TcxDBTextEdit;
    cxPlataformaOrigen: TcxDBLookupComboBox;
    cxPlataformaDestino: TcxDBLookupComboBox;
    cxFecha: TcxDBDateEdit;
    cxNombreRecibe: TcxDBTextEdit;
    cxOrdenTrabajo: TcxDBLookupComboBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    cxSplitter1: TcxSplitter;
    cxSplitterOpciones: TcxSplitter;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    cxPageDetalle: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGridMateriales: TcxGrid;
    cxView_Materiales: TcxGridDBTableView;
    cxView_MaterialesColumn1: TcxGridDBColumn;
    cxView_MaterialesColumn2: TcxGridDBColumn;
    cxView_MaterialesColumn3: TcxGridDBColumn;
    cxView_MaterialesColumn4: TcxGridDBColumn;
    cxView_MaterialesColumn5: TcxGridDBColumn;
    cxGridMaterialesLevel1: TcxGridLevel;
    cxSplitter4: TcxSplitter;
    PanelDown6: TPanel;
    dxLayoutControl5: TdxLayoutControl;
    cxCantidad: TcxDBCalcEdit;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutItem12: TdxLayoutItem;
    cxTabSheet3: TcxTabSheet;
    PanelInferiorInforme: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid1Level1: TcxGridLevel;
    cxSplitInforme: TcxSplitter;
    PanelSuperiorInforme: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    opcionImprimir: TcxRadioGroup;
    btnImpInforme: TcxButton;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    cxEliminarDetalle: TcxButton;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxGrid2: TcxGrid;
    cxGridSolicitud: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    mComentarios: TcxDBMemo;
    dxLayoutItem10: TdxLayoutItem;
    cxDimensiones: TcxDBTextEdit;
    cxContenedor: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    cxPeso: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    dFechaRequerimiento: TcxDBDateEdit;
    dxLayoutItem22: TdxLayoutItem;
    cxSolicita: TcxDBTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    cxGridSolicitudCol3: TcxGridDBColumn;
    cxGridSolicitudCol4: TcxGridDBColumn;
    cxGridSolicitudCol5: TcxGridDBColumn;
    cxView_MaterialesColumn7: TcxGridDBColumn;
    cxView_MaterialesColumn8: TcxGridDBColumn;
    cxLogistica: TcxDBTextEdit;
    cxEmbalaje: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    cxEstado: TcxDBTextEdit;
    cxManifiesto: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    cxPartidas: TcxDBTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    cxView_MaterialesColumn10: TcxGridDBColumn;
    cxView_MaterialesColumn6: TcxGridDBColumn;
    cxView_MaterialesColumn9: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    Embalaje1: TMenuItem;
    Lgistica1: TMenuItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxGridDetalle: TcxGridDBTableView;
    dsSolicitudComp: TDataSource;
    zSolicitudComp: TUniQuery;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2SolicitudDet: TcxGridDBTableView;
    cxGrid2SolicitudDetColumn1: TcxGridDBColumn;
    cxGrid2SolicitudDetColumn2: TcxGridDBColumn;
    cxGrid2SolicitudDetColumn3: TcxGridDBColumn;
    cxGrid2SolicitudDetColumn4: TcxGridDBColumn;
    cxGrid2SolicitudDetColumn5: TcxGridDBColumn;
    cxGrid2SolicitudDetColumn6: TcxGridDBColumn;
    cxGrid2SolicitudDetColumn7: TcxGridDBColumn;
    cxGrid2SolicitudDetColumn8: TcxGridDBColumn;
    cxGrid2SolicitudDetColumn9: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure zSalidaInsumoAfterScroll(DataSet: TDataSet);
    procedure SalvarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure cxEliminarDetalleClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure AfterScrollSolicitudDetalle;
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxTabSheet3Show(Sender: TObject);
    procedure btnImpInformeClick(Sender: TObject);
    procedure cxView_EmbarqueCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxSalidaPropertiesChange(Sender: TObject);
    procedure btnExportaClick(Sender: TObject);
    procedure cxView_MaterialesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxAlmacenExit(Sender: TObject);
    procedure Embalaje1Click(Sender: TObject);
    procedure Lgistica1Click(Sender: TObject);
    procedure cxGridSolicitudCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
    TipoMenu : String;
  end;

var
  frmSolicitudDeMateriales: TfrmSolicitudDeMateriales;
  btnPermisos, titulo, titulo2:String;
  IsOpen : Boolean = False;
  SavePlace     : TBookmark;
implementation
uses
frm_connection, Func_Genericas, frm_repositorio,frm_agregar_masivoOP,
  frm_agregar_masivoOP_SS7, Frm_Comentarios, frm_SolicitudDetalle;
{$R *.dfm}

procedure TfrmSolicitudDeMateriales.btnAddClick(Sender: TObject);
begin
//    try
      zAvisosEmbarque.Append;
    // zAvisosEmbarque.FieldByName('IdSolicitudMateriales').AsInteger := Noil_maximoId(global_contrato, 'alm_solicitud_materiales', 'IdSolicitudMateriales');
      zAvisosEmbarque.FieldByName('sIdUsuario').AsString := Global_Usuario;
      zAvisosEmbarque.FieldByName('sContrato').AsString := global_contrato;
      zAvisosEmbarque.FieldByName('sStatus').AsString   := 'PENDIENTE';
      zAvisosEmbarque.FieldByName('Codigo').AsString:= autofolio(zAvisosEmbarque, 'alm_solicitud_materiales', connection.uContrato.FieldByName('IdEmpresa').AsInteger, 0,0);
      zAvisosEmbarque.FieldByName('FechaSolicitud').AsDateTime := Now;
      zAvisosEmbarque.FieldByName('dFechaRequerida').AsDateTime := Now;
      zAvisosEmbarque.FieldByName('Solicitante').AsString := global_nombre;
      zAvisosEmbarque.FieldByName('IdDepartamento').AsString := zDepto.FieldByName('IdDepartamento').AsString;
      cxPlataformaOrigen.DataBinding.DataSource.DataSet.FieldByName('sIdPlataformaOrigen').AsInteger:= zPlataforma.FieldByName('sIdPlataforma').AsInteger;
      cxPlataformaDestino.DataBinding.DataSource.DataSet.FieldByName('sIdPlataformaDestino').AsInteger:= zPlataforma.FieldByName('sIdPlataforma').AsInteger;

     // cxAlmacen.DataBinding.DataSource.DataSet.FieldByName('IdAlmacen').AsInteger := Almacen.FieldByName('IdAlmacen').AsInteger;
      //cxEntrada.DataBinding.DataSource.DataSet.FieldByName('IdTipo').AsInteger := zq_tipomovimiento.FieldByName('IdTipo').AsInteger;
     // cxOrdenTrabajo.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrdenOT').AsString := uOrdenesTrabajo.FieldByName('sNumeroOrden').AsString;
      cxLeyenda.Caption:=titulo + '[Añadiendo]';
      frmBarraH11.btnAddClick(Sender);
      panel2.Visible:=True;
      cxSplitter1.Visible := False;
      cxGrid2.Enabled:=False;
      cxSplitterOpciones.Visible := False;
      PanelDetalle.Visible       := False;
     // zAvisosEmbarque.AfterScroll := Nil;
//    Except
//    on e:Exception do
//      ShowMessage('Error: '+e.Message);
//    end;
end;

procedure TfrmSolicitudDeMateriales.btnCancelClick(Sender: TObject);
begin
  try
    zAvisosEmbarque.Cancel;

    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    frmBarraH11.btnActive;
    //zAvisosEmbarque.AfterScroll := zAvisosEmbarqueAfterScroll;
    cxGrid2.Enabled:=True;
    PermisosBotones(frmSolicitudDeMateriales,btnPermisos);
  EXCEPT
  ON e:Exception do
    ShowMessage('Error: ' + e.Message);

  end;
end;

procedure TfrmSolicitudDeMateriales.btnDeleteClick(Sender: TObject);
begin
   if MessageDlg('Desea eliminar el Registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
        if PanelDetalle.Visible = False then
        begin
          AsignarSQL(zDetalleMaterial,'alm_solicitud_materiales_detalle',pUpdate);
          FiltrarDataset(zDetalleMaterial,'IdSolicitudMateriales',[zAvisosEmbarque.FieldByName('IdSolicitudMateriales').AsInteger]);
          zDetalleMaterial.Open;
        end;

        if zDetalleMaterial.RecordCount = 0 then
        begin
         // zAvisosEmbarque.AfterScroll:= nil;
          zAvisosEmbarque.Delete;
          zAvisosEmbarque.ApplyUpdates();
          //zAvisosEmbarque.AfterScroll := zAvisosEmbarqueAfterScroll;
        end
        else
          ShowMessage('No se puede eliminar, Contiene datos en detalle.');
   end;

end;

procedure TfrmSolicitudDeMateriales.btnDetalleClick(Sender: TObject);
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
       AfterScrollSolicitudDetalle;

       if global_usuario = 'Guillermo' then
       begin
          cxLogistica.Enabled := True  ;
          cxEmbalaje.Enabled := True;
       end
       else
       begin
          cxLogistica.Enabled := False  ;
          cxEmbalaje.Enabled := False;
       end;
   end;
end;

procedure TfrmSolicitudDeMateriales.AfterScrollSolicitudDetalle;
begin
 if IsOpen= True then
  begin
    if cxPageDetalle.Visible = True then
    begin
      AsignarSQL(zDetalleMaterial,'alm_solicitud_materiales_detalle',pUpdate);
      FiltrarDataset(zDetalleMaterial,'IdSolicitudMateriales',[zAvisosEmbarque.FieldByName('IdSolicitudMateriales').AsInteger]);
      zDetalleMaterial.Open;
    end;

    AsignarSQL(zSolicitudComp,'alm_solicitud_Comp',pUpdate);
    FiltrarDataset(zSolicitudComp,'Contrato, IdSolicitudMateriales',[global_contrato, zAvisosEmbarque.FieldByName('IdSolicitudMateriales').AsInteger]);
    zSolicitudComp.Open;

  end;

end;

procedure TfrmSolicitudDeMateriales.btnEditClick(Sender: TObject);
begin
  if zAvisosEmbarque.FieldValues['sStatus'] <> 'PENDIENTE' then
   begin
     messageDLG('La Entrada de Material se encuentra en estatus '+zAvisosEmbarque.FieldValues['sStatus'], mtInformation, [mbOk], 0);
     exit;
   end;
   if zAvisosEmbarque.RecordCount > 0 then
   begin
      try

        zAvisosEmbarque.AfterScroll := nil;

        zAvisosEmbarque.Edit;

        cxLeyenda.Caption:=titulo+'[Editando]';
        frmBarraH11.btnEditClick(Sender);
        Panel2.Visible:=True;
        cxSplitter1.Visible := False;
        cxGrid2.Enabled:=False;
        cxSplitterOpciones.Visible := False;
        PanelDetalle.Visible       := False;

      except
      on e:Exception do
        ShowMessage('Error: ' + e.Message);

      end;
   end;
end;

procedure TfrmSolicitudDeMateriales.btnExportaClick(Sender: TObject);
begin
ExportarToExcel(cxGridMateriales);
end;

procedure TfrmSolicitudDeMateriales.btnImpInformeClick(Sender: TObject);
var
  avisosGrid : String;
   contAviGrid, j : Integer;
begin
  if opcionImprimir.EditValue = 1 then
  begin
    IsOpen:=False;
    generar_reporte_grid(cxGridSolicitud,'Reporte de Avisos de Embarque');
    IsOpen:=True;
  end  else if opcionImprimir.EditValue = 2 then
  begin
    cxGridSolicitud.DataController.Groups.FullExpand;
    contAviGrid := cxGridSolicitud.ViewData.RecordCount;
    for j := 0 to (contAviGrid - 1) do
    begin
      try
        avisosGrid := avisosGrid + cxGridSolicitud.ViewData.Rows[j].Values[0] +',';
      except
        ;
      end;
    end;

    zReporteDetalle.Active := False;
    AsignarSQL(zReporteDetalle,'reporte_detalles_avisos_embarque',pUpdate);
    FiltrarDataSet(zReporteDetalle,'Contrato, ListaAvisos',[global_contrato,avisosGrid]);
    zReporteDetalle.Open;

    IsOpen:=False;
    generar_reporte_grid_detalles(cxGridSolicitud,zReporteDetalle,'Reporte de Avisos de Embarque con Detalles', 'Codigo');
    IsOpen:=True;
  end;
end;

procedure TfrmSolicitudDeMateriales.btnPostClick(Sender: TObject);
begin
  try
    IsOpen := False;
    zAvisosEmbarque.Post;
    zAvisosEmbarque.Refresh;
    IsOpen := True;
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    frmBarraH11.Visible:=True;
    //zAvisosEmbarque.AfterScroll := zAvisosEmbarqueAfterScroll;
    cxGrid2.Enabled:=True;
    PermisosBotones(frmSolicitudDeMateriales,btnPermisos);
    btnCancelClick(Sender);
  Except
  on e:Exception do
    ShowMessage('Error: '+e.Message);

  end;
end;

procedure TfrmSolicitudDeMateriales.btnPrinterClick(Sender: TObject);
var
frxDBAvisoEmbarque : TfrxDBDataset;
begin
  if zAvisosEmbarque.RecordCount > 0 then
  begin
    try
      AsignarSQL( frmRepositorio.Reporte,'reporte_solicitud_materiales',pUpdate);
      FiltrarDataset( frmRepositorio.Reporte,'IdSolicitudMateriales',[zAvisosEmbarque.FieldByName('IdSolicitudMateriales').AsInteger]);
       frmRepositorio.Reporte.Open;


      frxDBAvisoEmbarque := TfrxDBDataset.Create(nil);
      frxDBAvisoEmbarque.DataSet    := frmRepositorio.Reporte;
      frxDBAvisoEmbarque.UserName   := 'frxDBAvisoEmbarque';
      frxDBAvisoEmbarque.FieldAliases.Clear;
      frxReporte.DataSets.Add(frxDBAvisoEmbarque);

      frxReporte.PreviewOptions.MDIChild := False;
      frxReporte.PreviewOptions.Modal := True;
      frxReporte.PreviewOptions.ShowCaptions := False;
      frxReporte.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;
      frxReporte.LoadFromFile (global_files + global_miReporte +'_ALM_SolicitudMaterial.fr3') ;
      if not FileExists(global_files + global_miReporte + '_ALM_SolicitudMaterial.fr3') then
         showmessage('El archivo de reporte '+global_miReporte+'_ALM_SolicitudMaterial.fr3 no existe, notifique al administrador del sistema');
      frxReporte.ShowReport;

    except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Solicitud de Materiales', 'Al imprimir', 0);
    end;

    end;



  end;
end;

procedure TfrmSolicitudDeMateriales.btnRefreshClick(Sender: TObject);
begin
    zAvisosEmbarque.Refresh;
    zDetalleMaterial.Refresh;
end;

procedure TfrmSolicitudDeMateriales.CancelarClick(Sender: TObject);
begin
  cxNuevoDetalle.Enabled  := True ;
    cxEditaDetalle.Enabled   := True;
    Salvar.Enabled   := False ;
    Cancelar.Enabled := False ;
    cxEliminarDetalle.Enabled := True ;
    cxGridMateriales.Enabled := True;
end;

procedure TfrmSolicitudDeMateriales.cxAlmacenExit(Sender: TObject);
begin


//     AsignarSQL(zESolicitud,'entrada_solicitud_materiales',pUpdate);
////     FiltrarDataSet(zESolicitud,'Almacen',[zAvisosEmbarque.FieldValues['IdAlmacen']]);
//     zESolicitud.Open;
end;

procedure TfrmSolicitudDeMateriales.cxCancelarDetalleClick(Sender: TObject);
begin
   zDetalleMaterial.Cancel;
   cxSplitter4.Visible := False;
   PanelDown6.Visible  := False;
   PanelDown.Visible   := False;
   cxNuevoDetalle.Enabled:= True ;
   cxEditaDetalle.Enabled:= True ;
   cxEliminarDetalle.Enabled:= True ;
end;

procedure TfrmSolicitudDeMateriales.cxEditaDetalleClick(Sender: TObject);
begin
   cxSplitter4.Visible := True;
   PanelDown6.Visible  := True;
   PanelDown.Visible   := True;
   zDetalleMaterial.Edit;
   cxCantidad.SetFocus;

   If zAvisosEmbarque.RecordCount > 0 Then
     Begin
        if zAvisosEmbarque.FieldValues['sStatus'] = 'AUTORIZADO' then
        begin
           messageDLG('El Aviso de Embarque se encuentra Autorizado.', mtInformation, [mbOk], 0);
           exit;
        end;
         OpcButton:= 'Edit';
         cxNuevoDetalle.Enabled:= False ;
         cxEditaDetalle.Enabled:= False ;
         cxEliminarDetalle.Enabled:= False ;
         zDetalleMaterial.Edit;


         cxSplitter4.Visible := True;
         PanelDown6.Visible := True;
         PanelDown.Visible:=True;
         cxCantidad.SetFocus;
     End;
end;

procedure TfrmSolicitudDeMateriales.cxEliminarDetalleClick(Sender: TObject);
var
  Id : Integer;
begin
     If zDetalleMaterial.RecordCount > 0 Then
     Begin
        if zAvisosEmbarque.FieldValues['sStatus'] = 'AUTORIZADO' then
        begin
            messageDLG('El Aviso de Embarque se encuentra Autorizado.', mtInformation, [mbOk], 0);
            exit;
        end;

        zSalidaInsumo.Active := False;
        if MessageDlg('Desea Eliminar el Insumo:  ' + #10 + zDetalleMaterial.FieldByName('Codigo').AsString + ' ', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
          Id:=zDetalleMaterial.FieldByName('IdSerie').AsInteger;
          try
             connection.zUCommand.Active := False ;
             connection.zUCommand.SQL.Clear ;
             connection.zUCommand.SQL.Add ('Delete from alm_solicitud_materiales_detalle where IdSolicitudMaterialesDet = :Id ') ;

             connection.zUCommand.Params.ParamByName('Id').AsInteger        := zDetalleMaterial.FieldValues['IdSolicitudMaterialesDet'] ;
             connection.zUCommand.ExecSQL  ;

             SavePlace := zSalidaInsumo.GetBookmark ;
             zSalidaInsumo.GotoBookmark(SavePlace);


             SavePlace := zDetalleMaterial.GetBookmark ;
             zDetalleMaterial.Refresh ;

             Try
                 zDetalleMaterial.GotoBookmark(SavePlace);
             Except
             Else
                zDetalleMaterial.FreeBookmark(SavePlace);
             End;
          Except
               MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
          End
        end
        else begin

        end;
     End
end;
procedure TfrmSolicitudDeMateriales.cxGridSolicitudCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   AfterScrollSolicitudDetalle;
   Application.CreateForm(TfrmSolicitudDetalle, frmSolicitudDetalle);
   frmSolicitudDetalle.show;
end;

procedure TfrmSolicitudDeMateriales.cxGuardarDetalleClick(Sender: TObject);
begin
    zDetalleMaterial.Post;
    cxCancelarDetalle.Click;
end;

procedure TfrmSolicitudDeMateriales.cxNuevoDetalleClick(Sender: TObject);
begin
  tdCantidad.Text  := '';
    If (zAvisosEmbarque.RecordCount > 0) Then
     Begin
          if zAvisosEmbarque.FieldValues['sStatus'] = 'AUTORIZADO' then
          begin
             messageDLG('El aviso de embarque, ya se encuentra Autorizado.', mtInformation, [mbOk], 0);
             exit;
          end;

          if connection.uContrato.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
          begin

            IsOpen:=false;
             OpcButton := 'New';
            global_frmActivo:='Solicitud_Materiales';
            Application.CreateForm(TfrmAgregarMasivoOP_SS7, frmAgregarMasivoOP_SS7);
            frmAgregarMasivoOP_SS7.show;


            cxEditaDetalle.Enabled   := True ;
            cxEliminarDetalle.Enabled := True ;
          end
     End

          else begin
            IsOpen:=false;
            zSalidaInsumo.DisableControls;

            zSalidaInsumo.Active := False ;
            zSalidaInsumo.SQL.Clear;
            zSalidaInsumo.SQL.Add('Select i.*, LEFT(Material, 200) as Descripcion, bs.dCantidad as requerido, '+
                  'bs.dCantidad - IFNULL((select ald.Cantidad from alm_solicitud_materiales av '+
                  'inner join alm_solicitud_materiales_detalle ald on av.IdSolicitudMateriales = ald.IdSolicitudMateriales '+
                  'inner join almacen_entrada s on s.iFolioEntrada = av.iFolioEntrada '+
                  'inner join bitacoradeentrada b on b.iFolioEntrada = s.iFolioEntrada '+
                  'where av.iFolioEntrada = b.iFolioEntrada and ald.IdMaterial = i.IdInsumo limit 1),0) AS dExistencia, '+
                  '(select mm.Codigo from master_medidas mm where mm.IdMedida=i.IdMedida) as sMedida '+
                  'from alm_insumos i inner join bitacoradeentrada bs on i.IdInsumo = bs.IdInsumo '+
                  'where (:Contrato=-1 or (:Contrato<>-1 and i.sContrato =:Contrato)) and  '+
                  '(:salida = -1 or (:salida <> -1 and :salida = bs.iFolioEntrada))  ');
            zSalidaInsumo.ParamByName('Contrato').AsString :=global_contrato;
            zSalidaInsumo.ParamByName('salida').AsString := zAvisosEmbarque.FieldByName('iFolioEntrada').AsString;
            zSalidaInsumo.Open ;

            zSalidaInsumo.EnableControls;
            IsOpen:=true;
            zSalidaInsumoAfterScroll(zSalidaInsumo);

            OpcButton := 'New';
            cxNuevoDetalle.Enabled  := False ;
            cxEditaDetalle.Enabled   := True ;
            Salvar.Enabled   := True ;
            Cancelar.Enabled := True ;
            cxEliminarDetalle.Enabled := True ;

            tdCantidad.Enabled := True;
            grid_pedido.Enabled := True;

            Grid_Pedido.Enabled:=True;
            Crear_Form(PanelInsumos, 'Catalogo de Materiales', 288, 966, [])
//          end;
    End;
//


end;

procedure TfrmSolicitudDeMateriales.cxSalidaPropertiesChange(Sender: TObject);
begin
//     if not (cxSalida.EditValue=null) then
//      if (zAvisosEmbarque.State=dsInsert) or (zAvisosEmbarque.State=dsEdit)  then begin
//
//        if  zSalidas.Locate('iFolioSalida',cxSalida.EditValue,[]) then
//          zAvisosEmbarque.FieldByName('iFolioSalida').AsInteger :=  zSalidas.FieldByName('iFolioSalida').AsInteger;
//      end;
end;

procedure TfrmSolicitudDeMateriales.cxTabSheet3Show(Sender: TObject);
begin
  OpcionImprimir.EditValue := 1;
end;



procedure TfrmSolicitudDeMateriales.cxView_EmbarqueCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    AfterScrollSolicitudDetalle;
//      AsignarSQL(zDetalleMaterial,'alm_solicitud_materiales_detalle',pUpdate);
//      FiltrarDataset(zDetalleMaterial,'IdSolicitudMateriales',[zAvisosEmbarque.FieldByName('IdSolicitudMateriales').AsInteger]);
//      zDetalleMaterial.Open;
//
//    zGrafica.Active:= False;
//    AsignarSQL(zGrafica,'grafica_aviso_embarque',pUpdate);
//    FiltrarDataSet(zGrafica,'years',[zAvisosEmbarque.FieldByName('FechaSolicitudes').AsString]);
//    zGrafica.Open;
//    cxGrid1DBChartView1.Categories.DisplayText:='Periodo '+zGrafica.FieldByName('years').AsString;
end;

procedure TfrmSolicitudDeMateriales.cxView_MaterialesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if cxView_Materiales.OptionsView.CellAutoHeight then
    cxView_Materiales.OptionsView.CellAutoHeight := False
  else
    cxView_Materiales.OptionsView.CellAutoHeight := True;
end;

procedure TfrmSolicitudDeMateriales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    cxGridSolicitud.StoreToIniFile(ExtractFilePath(Application.ExeName)+'CWS\gridEmbarque_'+self.Name);
    cxView_Materiales.StoreToIniFile(ExtractFilePath(Application.ExeName)+'CWS\gridMaterial_'+self.Name);
  except
    ;
  end;
   guardar_leer_grid(cxGridSolicitud,frmSolicitudDeMateriales,1);
   guardar_leer_grid(cxView_Materiales,frmSolicitudDeMateriales,1);
  action := caFree
end;

procedure TfrmSolicitudDeMateriales.FormShow(Sender: TObject);
var
temE:TUniQuery;
begin
    btnPermisos := global_btnPermisos;

    IsOpen:= False;

  try
    if not DirectoryExists(ExtractFilePath(Application.ExeName)+'CWS') then
    begin
      CreateDir(ExtractFilePath(Application.ExeName)+'CWS');
    end;
    cxGridSolicitud.RestoreFromIniFile(ExtractFilePath(Application.ExeName)+'CWS\gridEmbarque_'+self.Name);
    cxView_Materiales.RestoreFromIniFile(ExtractFilePath(Application.ExeName)+'CWS\gridMaterial_'+self.Name);
  except
        ;
  end;

    temE := TUniquery.create(nil);
    temE.Connection := Connection.uConnection;
    temE.Active:=False;
    temE.SQL.Text:='Select FK_Titulo from master_empresa';
    temE.Open;

    AsignarSQL(zPlataforma,'plataformas', pUpdate);
    zPlataforma.Open;

    AsignarSQL(zEmbarcacion,'master_embarcaciones', pUpdate);
    zEmbarcacion.Open;


//    AsignarSQL(zMaterial, 'alm_insumos',pUpdate);
//    FiltrarDataset(zMaterial,'Codigo',[-1]);
//    zMaterial.Open;

    AsignarSQL(zMedida,'master_medidas',pUpdate);
    zMedida.Open;

    AsignarSql(zSeries, 'almacen_series', pUpdate);
    FiltrarDataSet(zSeries,'IdSerie',[-1]);
    zSeries.Open;

    AsignarSql(zDepto, 'master_departamento', pUpdate);
    zDepto.Open;

//    zq_tipomovimiento.Active:= False;
//    AsignarSQL(zq_tipomovimiento,'movimientosdealmacen_salida',pUpdate);
//    zq_tipomovimiento.Open;


//    AsignarSQL(zOrdenCompras,'anexo_pedidos',pUpdate);
//    FiltrarDataSet(zOrdenCompras,'Contrato',[global_contrato]);
//    zOrdenCompras.Open;

//    AsignarSQL(zSalidas,'salida_avisoembarque',pUpdate);
//    FiltrarDataSet(zSalidas,'Contrato,Usuario',[global_contrato,global_usuario]);
//    zSalidas.Open;


//    AsignarSQL(zOrdenesTrabajo,'ordenesdetrabajo_presu_val',pUpdate);
//    if temE.FieldByName('FK_Titulo').AsString = 'SIANI' then
//       FiltrarDataSet(zOrdenesTrabajo,'Contrato,Tipo,Status',[global_contrato,'-1','-1'])
//    else
//       FiltrarDataSet(zOrdenesTrabajo,'Contrato,Tipo,Estatus',[global_contrato,'PROYECTO','-1']);
//    zOrdenesTrabajo.Open ;


    AsignarSQL(zAvisosEmbarque,'alm_solicitud_materiales', pUpdate);
    FiltrarDataSet(zAvisosEmbarque,'Contrato, IdSolicitudMateriales',[global_contrato, -1]);
    zAvisosEmbarque.Open;

    if zAvisosEmbarque.RecordCount > 0 then
    begin
    AsignarSQL(zDetalleMaterial,'alm_solicitud_materiales_detalle',pUpdate);
    FiltrarDataset(zDetalleMaterial,'IdSolicitudMateriales',[zAvisosEmbarque.FieldByName('IdSolicitudMateriales').AsInteger]);
    zDetalleMaterial.Open;
    end;

    AsignarSQL(zSolicitudComp,'alm_solicitud_Comp',pUpdate);
    FiltrarDataset(zSolicitudComp,'Contrato, IdSolicitudMateriales',[global_contrato, zAvisosEmbarque.FieldByName('IdSolicitudMateriales').AsInteger]);
    zSolicitudComp.Open;

    uOrdenesTrabajo.Active:= False;
    AsignarSQL(uOrdenesTrabajo,'ordenesdetrabajo_req',pUpdate);
    FiltrarDataSet(uOrdenesTrabajo,'Contrato,Tipo',[global_contrato,'ORDEN_TRABAJO']);
    uOrdenesTrabajo.Open;

    AsignarSQL(zProyecto,'ordenesdetrabajo_req',pUpdate);
    FiltrarDataSet(zProyecto,'Contrato,Tipo',[global_contrato,'PROYECTO']);
    zProyecto.Open;

    Almacen.Active:= False;
    AsignarSQL(Almacen,'almacenes_salida',pUpdate);
    FiltrarDataSet(Almacen,'Usuario',[Global_Usuario]);
    Almacen.Open;

    IsOpen := True;


    zGrafica.Active:= False;
    AsignarSQL(zGrafica,'grafica_aviso_embarque',pUpdate);
    FiltrarDataSet(zGrafica,'years',[zAvisosEmbarque.FieldByName('FechaSolicitudes').AsString]);
    zGrafica.Open;
    cxGrid1DBChartView1.Categories.DisplayText:='Periodo '+zGrafica.FieldByName('years').AsString;

    //PanelDetalle.Visible := False;
    Panel2.Visible := False;
    cxSplitter1.Visible := False;
    titulo:='Solicitud de Embarque';
    titulo2:='Materiales';
    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;
    cxLeyenda.Caption:=titulo;
    cxLeyenda2.Caption:=titulo2;


    guardar_leer_grid(cxGridSolicitud,frmSolicitudDeMateriales,0);
    guardar_leer_grid(cxView_Materiales,frmSolicitudDeMateriales,0);
end;

procedure TfrmSolicitudDeMateriales.SalvarClick(Sender: TObject);
var
  dActExistencia:Extended;
begin
  dActExistencia:=0;

  If OpcButton = 'New' then
  Begin
    // Consulta de Insumo antes de insertar.
    connection.qryUBusca.Active := False;
    connection.qryUBusca.SQL.Clear;
    connection.qryUBusca.SQL.Add('select IFNULL((IFNULL(	(SELECT SUM(d.dCantidad) FROM bitacoradeentrada d WHERE d.IdInsumo = i.IdInsumo ),	0) '+
    '-	IFNULL((SELECT SUM(e.dCantidad) FROM bitacoradesalida e WHERE e.IdInsumo = i.IdInsumo	AND (select count(iFolioSalida) from almacen_salida where IFolioSalida = e.iFolioSalida)  )=1,0	)),0) AS dExistencia '+
    ' from alm_insumos i where (:Contrato=-1 or (:Contrato<>-1 and i.sContrato =:Contrato)) and i.IdInsumo =:Insumo ');
    connection.qryUBusca.ParamByName('Contrato').AsString  := global_contrato;
    connection.qryUBusca.ParamByName('Insumo').AsInteger   := zSalidaInsumo.FieldByName('IdInsumo').AsInteger;
//    connection.qryUBusca.ParamByName('Almacen').AsInteger  := zDetalleMaterial.FieldByName('IdAlmacen').AsInteger;
    connection.qryUBusca.Open;

    if zSalidaInsumo.RecordCount >= 0 then begin
      if zSalidaInsumo.FieldValues['dExistencia'] < tdCantidad.Value then
       begin
        showmessage('No se puede proporcionar la Cantidad Solicitada, verificar Existencias !');
        exit;
       end;
       if zSalidaInsumo.FieldValues['dExistencia'] = 0 then begin
        showmessage('La Existencia es Igual a Cero.');
        Cancelar.Click;
        exit;
       end;
    end;

    connection.qryUBusca2.Active := False ;
    connection.qryUBusca2.SQL.Clear ;
    connection.qryUBusca2.SQL.Add('select IdMaterial,Cantidad from alm_solicitud_materiales_detalle where IdSolicitudMateriales = :Folio and IdMaterial = :Insumo '+
      ' and IdSerie = :Serie');
//    connection.qryUBusca2.Params.ParamByName('Contrato').AsString     := zAvisosEmbarque.FieldByName('sContrato').AsString ;
    connection.qryUBusca2.Params.ParamByName('Folio').AsString        := zAvisosEmbarque.FieldValues['IdSolicitudMateriales'] ;
    connection.qryUBusca2.Params.ParamByName('Insumo').AsInteger      := zSalidaInsumo.FieldByName('IdInsumo').AsInteger;
    if tsNumeroSerie.Text = '' then
       connection.qryUBusca2.Params.ParamByName('Serie').AsInteger := 0
    else
       connection.qryUBusca2.Params.ParamByName('Serie').AsInteger := tsNumeroSerie.KeyValue;
    connection.qryUBusca2.Open ;

    if connection.qryUBusca2.RecordCount = 0 then
    begin
        connection.zUCommand.Active := False ;
        connection.zUCommand.SQL.Clear ;
        connection.zUCommand.SQL.Add ( 'INSERT INTO alm_solicitud_materiales_detalle'+
                                      ' ( IdSolicitudMateriales, IdMaterial, IdMedida, Cantidad, IdSerie, Factura,sStatus ) ' +
                                      'VALUES (:Folio,:Insumo,:medida, :cantidad,:serie,:factura, :sStatus)') ;
        connection.zUCommand.Params.ParamByName('Folio').AsInteger   := zAvisosEmbarque.FieldValues['IdSolicitudMateriales'] ;
        connection.zUCommand.Params.ParamByName('Insumo').AsInteger  := zSalidaInsumo.FieldValues['IdInsumo'];
        connection.zUCommand.Params.ParamByName('medida').AsInteger  := zSalidaInsumo.FieldValues['IdMedida'];
        connection.zUCommand.Params.ParamByName('cantidad').AsFloat  := tdCantidad.Value ;
        connection.zUCommand.Params.ParamByName('serie').AsInteger   := zNumeroSerie.FieldByName('IdSerie').AsInteger;
        connection.zUCommand.Params.ParamByName('factura').AsString  := edFactura.Text;
        connection.zUCommand.Params.ParamByName('sStatus').AsString  :='Pendiente';
        connection.zUCommand.ExecSQL;
        dActExistencia:=tdCantidad.Value;
    end
    else
    begin
        if messageDLG('Ya existe un aviso de embarque para el Insumo desea Actualizar el Aviso de Embarque?', mtInformation, [mbYes,mbNo], 0) = mrYes then
        begin
          connection.zUCommand.Active := False ;
          connection.zUCommand.SQL.Clear ;
          connection.zUCommand.SQL.Add ('UPDATE alm_solicitud_materiales_detalle SET Cantidad =:Cantidad where IdSolicitudMateriales = :Folio '+
                                       'and IdMaterial = :Insumo ') ;
          connection.zUCommand.Params.ParamByName('Folio').AsInteger    := zAvisosEmbarque.FieldValues['IdSolicitudMateriales'] ;
          connection.zUCommand.Params.ParamByName('Insumo').AsInteger   := zSalidaInsumo.FieldValues['IdInsumo'];
          connection.zUCommand.Params.ParamByName('Cantidad').AsFloat   := tdCantidad.Value + connection.qryUBusca2.FieldValues['Cantidad'];
          connection.zUCommand.ExecSQL ;
          dActExistencia:=tdCantidad.Value;
        end
        else
          Exit;
    end;
  End;

  If OpcButton = 'Edit' then
  Begin
    // Consulta de Insumo antes de insertar.
    connection.qryUBusca.Active := False;
    connection.qryUBusca.SQL.Clear;
    connection.qryUBusca.SQL.Add('select dExistencia from insumos where (:Contrato=-1 or (:Contrato<>-1 and sContrato =:Contrato)) and sIdInsumo =:Insumo and sIdAlmacen =:Almacen ');
    connection.qryUBusca.ParamByName('Contrato').AsInteger:=-1;
    connection.qryUBusca.ParamByName('Insumo').DataType    := ftString;
    connection.qryUBusca.ParamByName('Almacen').DataType   := ftString;
    connection.qryUBusca.Open;
    if connection.qryUBusca.RecordCount > 0 then
      if connection.qryUBusca.FieldValues['dExistencia'] + Cantidad < tdCantidad.Text then
      begin
        showmessage('No se puede proporcionar la Cantidad Solicitada, verificar Existencias !');
        exit;
      end;

    try
      connection.zUCommand.Active := False ;
      connection.zUCommand.SQL.Clear ;
      connection.zUCommand.SQL.Add ('UPDATE bitacoradesalida SET dCantidad =:Cantidad,dCantidadpendiente =:pendiente where sContrato =:Contrato and iFolioSalida =:Folio '+
                                   'and sIdInsumo =:Insumo and sIdAlmacen =:Almacen and sNumeroActividad =:Actividad ') ;
      connection.zUCommand.Params.ParamByName('Contrato').DataType  := ftString ;
      connection.zUCommand.Params.ParamByName('Contrato').value     := zAvisosEmbarque.FieldByName('sContrato').AsString ;
      connection.zUCommand.Params.ParamByName('Folio').DataType     := ftString ;
      connection.zUCommand.Params.ParamByName('Folio').value        := zAvisosEmbarque.FieldValues['iFolioSalida'] ;
      connection.zUCommand.Params.ParamByName('Insumo').DataType    := ftString ;
      //connection.zUCommand.Params.ParamByName('Insumo').value       := tsInsumo.Text;
      connection.zUCommand.Params.ParamByName('Cantidad').DataType  := ftFloat ;
      connection.zUCommand.Params.ParamByName('Cantidad').value     := tdCantidad.Value ;
      connection.zUCommand.Params.ParamByName('pendiente').DataType  := ftFloat ;
      connection.zUCommand.Params.ParamByName('pendiente').value     := tdCantidad.Value-dActExistencia ;
      connection.zUCommand.Params.ParamByName('Almacen').DataType   := ftString;
      connection.zUCommand.Params.ParamByName('Actividad').DataType := ftString;
      connection.zUCommand.Params.ParamByName('Actividad').Value    := zDetalleMaterial.FieldValues['sNumeroActividad'];
      connection.zUCommand.ExecSQL ;
    except
      MessageDlg('Ocurrio un error al actualizar el registro', mtWarning, [mbOk], 0);
      exit;
    End;
      //soad -> Actualizacion de los insumos...
      //**************************************************
      connection.qryUBusca2.Active := False;
      connection.qryUBusca2.SQL.Clear;
      connection.qryUBusca2.SQL.Add('UPDATE insumos SET dExistencia =:Cantidad '+
                                  'WHERE (:Contrato=-1 and (:Contrato<>-1 and sContrato =:Contrato)) And sIdInsumo =:Insumo and sIdAlmacen =:Almacen ');
      connection.qryUBusca2.ParamByName('Contrato').AsInteger:=-1;
      connection.qryUBusca2.ParamByName('Insumo').DataType    := ftString ;
      //connection.qryUBusca2.ParamByName('Insumo').Value       := tsInsumo.Text;
      connection.qryUBusca2.ParamByName('Almacen').DataType   := ftString ;
      connection.qryUBusca2.ParamByName('Cantidad').DataType  := ftFloat ;
      connection.qryUBusca2.ParamByName('Cantidad').value     := ((connection.qryUBusca.FieldValues['dExistencia'] + Cantidad) - tdCantidad.Value);
      connection.qryUBusca2.ExecSQL;

      cxNuevoDetalle.Enabled  := True ;
      cxEditaDetalle.Enabled   := True ;
      Salvar.Enabled   := False ;
      Cancelar.Enabled := true ;
      cxEliminarDetalle.Enabled := True ;
      zSalidaInsumo.Refresh;
  End;

  connection.qryUBusca2.Active := False;
  connection.qryUBusca2.SQL.Clear;
  connection.qryUBusca2.SQL.Add('UPDATE alm_insumos_series SET dCantidad =:Cantidad '+
                              'WHERE IdSerie =:Serie ');
  connection.qryUBusca2.ParamByName('Cantidad').AsFloat  :=  0;
  connection.qryUBusca2.ParamByName('Serie').AsInteger   :=  zNumeroSerie.FieldByName('IdSerie').AsInteger;
  connection.qryUBusca2.ExecSQL;

  zNumeroSerie.Refresh;

  zDetalleMaterial.Refresh;
  SavePlace := zDetalleMaterial.GetBookmark ;
  zDetalleMaterial.FreeBookmark(SavePlace);

  zDetalleMaterial.Locate('IdMaterial', zSalidaInsumo.FieldByName('IdInsumo').AsString, []);
  SavePlace := zDetalleMaterial.GetBookmark ;

  IsOpen:=false;
  zSalidaInsumo.DisableControls;

  zSalidaInsumo.Refresh;
  zSalidaInsumo.Locate('IdInsumo', zDetalleMaterial.FieldByName('IdMaterial').AsString, []);

  Try
     zDetalleMaterial.GotoBookmark(SavePlace);
     SavePlace := zSalidaInsumo.GetBookmark ;
     zSalidaInsumo.GotoBookmark(SavePlace);
  Except
    zDetalleMaterial.FreeBookmark(SavePlace);
  End;

  zSalidaInsumo.EnableControls;
  IsOpen:=true;
  zSalidaInsumoAfterScroll(zSalidaInsumo);

  tdCantidad.Text  := '';

  cxEditaDetalle.Enabled := True;
  cxEliminarDetalle.Enabled :=True;
  Salvar.Enabled := True;
  zSalidaInsumo.Refresh;
  zDetalleMaterial.Refresh;
end;

procedure TfrmSolicitudDeMateriales.zSalidaInsumoAfterScroll(DataSet: TDataSet);
begin
  if IsOpen then
  begin
     if zSalidaInsumo.RecordCount > 0 then
     begin
         //tsInsumo.Text     := Pedido.FieldValues['IdInsumo'];

          tdCantidad.Value  := zSalidaInsumo.FieldByname('requerido').AsFloat;

          zNumeroSerie.Active := False;
          //zNumeroSerie.Params.ParamByName('almacen').DataType  := ftString;
          //zNumeroSerie.Params.ParamByName('almacen').Value     := Almacen.FieldByName('IdAlmacen').AsString;
          zNumeroSerie.Params.ParamByName('Insumo').DataType   := ftString;
          zNumeroSerie.Params.ParamByName('Insumo').Value      := zSalidaInsumo.FieldByName('IdInsumo').AsString;
          zNumeroSerie.Open;

          if zNumeroSerie.RecordCount > 0 then
          begin
             tsNumeroSerie.KeyValue := zNumeroSerie.FieldByName('IdSerie').AsInteger;
             tdCantidad.Value := 1;
          end;
     end;
  end;
end;

procedure TfrmSolicitudDeMateriales.Embalaje1Click(Sender: TObject);
begin
   global_frmActivo:='Solicitud_Material' ;
   TipoMenu := 'Embalaje';
   Application.CreateForm(TFrmComentarios, FrmComentarios);
   FrmComentarios.show;
end;

procedure TfrmSolicitudDeMateriales.EnterControl(Sender: TObject);
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

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmSolicitudDeMateriales.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;

end;


procedure TfrmSolicitudDeMateriales.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;


procedure TfrmSolicitudDeMateriales.Lgistica1Click(Sender: TObject);
begin
   global_frmActivo:='Solicitud_Material' ;
   TipoMenu := 'Logistica';
   Application.CreateForm(TFrmComentarios, FrmComentarios);
   FrmComentarios.show;
end;

end.


