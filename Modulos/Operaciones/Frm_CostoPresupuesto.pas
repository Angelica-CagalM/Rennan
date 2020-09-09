unit Frm_CostoPresupuesto;

interface

uses
  Winapi.Windows,Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCurrencyEdit,
  cxContainer, cxSplitter, frm_barraH1, cxLabel, cxImage, cxDBEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, unitgenerales, frm_connection, global,
  MemDS, DBAccess, Uni, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, dxLayoutControl, ExportaExcel, cxGridExportLink, ShellApi,
  cxCalc, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, frxClass,
  frxDBSet, Vcl.CheckLst, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGroupBox, cxRadioGroup, dxBarBuiltInMenu, cxMemo, cxCalendar, cxPC, Math, System.UITypes;

type
  TfrmCostoPresupuesto = class(TForm)
    PanelPresupuesto: TPanel;
    Grid_presupuesto: TcxGrid;
    BView_presupuesto: TcxGridDBTableView;
    colPresupuesto: TcxGridDBColumn;
    Grid_presupuestoLevel1: TcxGridLevel;
    PanelTop: TPanel;
    cxLeyenda: TcxLabel;
    frmBarraH11: TfrmBarraH1;
    PanelCentral: TPanel;
    cxSplitterLateral: TcxSplitter;
    grid_Costos: TcxGrid;
    cxView_Costos: TcxGridDBTableView;
    cxView_CostosColumn5: TcxGridDBColumn;
    cxView_CostosColumn7: TcxGridDBColumn;
    cxView_CostosColumn9: TcxGridDBColumn;
    grid_CostosLevel1: TcxGridLevel;
    cxView_CostosColumn2: TcxGridDBColumn;
    cxView_CostosColumn3: TcxGridDBColumn;
    cxView_CostosColumn4: TcxGridDBColumn;
    cxView_CostosColumn6: TcxGridDBColumn;
    cxView_CostosColumn10: TcxGridDBColumn;
    zOrdenesTrabajo: TUniQuery;
    dsOrdenesTrabajo: TDataSource;
    BView_presupuestoColumn1: TcxGridDBColumn;
    zDetalle: TUniQuery;
    dsDetalle: TDataSource;
    Panel1: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxVistaPresupuesto: TcxComboBox;
    dxLayoutItem1: TdxLayoutItem;
    zDetallePrecioUnitario: TFloatField;
    zDetalleIdPresupuestoDetalle: TIntegerField;
    zDetallesContrato: TStringField;
    zDetallesNumeroOrden: TStringField;
    zDetalleIdRecurso: TIntegerField;
    zDetalleIdTipoRecurso: TIntegerField;
    zDetalleCodigo: TStringField;
    zDetalleDescripcion: TStringField;
    zDetalleIdMedida: TIntegerField;
    zDetalleCantidad: TFloatField;
    zDetalleCosto: TFloatField;
    zDetallePU: TFloatField;
    zDetalleTipoRecurso: TStringField;
    zDetalleUMedida: TStringField;
    cxView_CostosColumn1: TcxGridDBColumn;
    cxView_CostosColumn8: TcxGridDBColumn;
    zDetalleAdicional: TFloatField;
    zDetalleCostoAdicional: TFloatField;
    cxView_CostosColumn11: TcxGridDBColumn;
    zDetalleTotalCosto: TFloatField;
    btnCotizar: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    BView_presupuestoColumn2: TcxGridDBColumn;
    Reporte: TfrxReport;
    ds_Presupuesto: TfrxDBDataset;
    dxLayoutItem3: TdxLayoutItem;
    btnRequisitar: TcxButton;
    zRecursos: TUniQuery;
    dsRecursos: TDataSource;
    PanelDetalle: TPanel;
    cxSplitterDetalle: TcxSplitter;
    pageDetalle: TcxPageControl;
    uComentarios: TUniQuery;
    ds_comentarios: TDataSource;
    cxTabComentarios: TcxTabSheet;
    gridComentarios: TcxGrid;
    viewComentarios: TcxGridDBTableView;
    cxColumnC1: TcxGridDBColumn;
    cxColumnC3: TcxGridDBColumn;
    cxColumnC2: TcxGridDBColumn;
    cxColumnC4: TcxGridDBColumn;
    gridComentariosLevel1: TcxGridLevel;
    PanelComentarios: TPanel;
    PanelbtnsCom: TPanel;
    cxGuardarDetalle: TcxButton;
    cxCancelarDetalle: TcxButton;
    dxLayoutControl2: TdxLayoutControl;
    cxCotizacionC: TcxTextEdit;
    cxFechaC: TcxDBDateEdit;
    cxComentarioC: TcxDBMemo;
    cxRecursoC: TcxTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem8: TdxLayoutItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxView_CostosColumn12: TcxGridDBColumn;
    zDetallenumCom: TIntegerField;
    cxView_CostosColumn13: TcxGridDBColumn;
    cxView_CostosColumn14: TcxGridDBColumn;
    cxView_CostosColumn15: TcxGridDBColumn;
    zDetalleJornadas: TFloatField;
    zDetalleFinanciamiento: TFloatField;
    zDetalleCostoFinanciamiento: TFloatField;
    cxTabPerRubro: TcxTabSheet;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxTextoI: TcxLabel;
    dxLayoutItem9: TdxLayoutItem;
    uRubros: TUniQuery;
    ds_rubros: TDataSource;
    cxTabSheet3: TcxTabSheet;
    PanelSuperiorInforme: TPanel;
    dxLayoutControl4: TdxLayoutControl;
    opcionImprimir: TcxRadioGroup;
    btnImpInforme: TcxButton;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    ds_otPresupuesto: TfrxDBDataset;
    cxBtnImpCli: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem16: TdxLayoutItem;
    cxColumnRub1: TcxGridDBColumn;
    cxColumnRub2: TcxGridDBColumn;
    cxColumnRub3: TcxGridDBColumn;
    cxAplicaPercen: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxColumRubR: TcxGridDBColumn;
    btnCopiarPartidas: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    cxLabel2: TcxLabel;
    dxLayoutItem14: TdxLayoutItem;
    cxButton3: TcxButton;
    cxTabCotizaciones: TcxTabSheet;
    cxGridCotizacionesDBTableView1: TcxGridDBTableView;
    cxGridCotizacionesLevel1: TcxGridLevel;
    cxGridCotizaciones: TcxGrid;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    DsCotizacion: TDataSource;
    Zcotizacion: TUniQuery;
    ReporteCotizacion: TcxButton;
    dxLayoutItem17: TdxLayoutItem;
    cxGridCotizacionesDBTableView1Column1: TcxGridDBColumn;
    cxGridCotizacionesDBTableView1Column2: TcxGridDBColumn;
    cxGridCotizacionesDBTableView1Column3: TcxGridDBColumn;
    cxGridCotizacionesDBTableView1Column4: TcxGridDBColumn;
    frxReport1: TfrxReport;
    uReporte: TUniQuery;
    ds_rptCotizaProveedor: TfrxDBDataset;
    cxTabRquisiciones: TcxTabSheet;
    anexo_requisicion: TUniQuery;
    dsRequisicion: TDataSource;
    grid_requsicion: TcxGrid;
    cxView_Requsicion: TcxGridDBTableView;
    cxView_RequsicionColumn7: TcxGridDBColumn;
    cxView_RequsicionColumn1: TcxGridDBColumn;
    cxView_RequsicionColumn3: TcxGridDBColumn;
    cxView_RequsicionColumn10: TcxGridDBColumn;
    cxView_RequsicionColumn4: TcxGridDBColumn;
    cxView_RequsicionColumn8: TcxGridDBColumn;
    cxView_RequsicionColumn5: TcxGridDBColumn;
    cxView_RequsicionColumn9: TcxGridDBColumn;
    cxView_RequsicionColumn11: TcxGridDBColumn;
    cxView_RequsicionColumn6: TcxGridDBColumn;
    cxView_RequsicionColumn12: TcxGridDBColumn;
    cxView_RequsicionColumn13: TcxGridDBColumn;
    grid_requsicionLevel1: TcxGridLevel;
    zDetalleProyecto: TStringField;
    dxLayoutItem18: TdxLayoutItem;
    btnReporteProyectos: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnExportaClick(Sender: TObject);
    procedure zDetalleCalcFields(DataSet: TDataSet);

    procedure cxView_CostosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure btnRequisitarClick(Sender: TObject);
    procedure btnCotizarClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure cxView_CostosStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure zDetalleBeforePost(DataSet: TDataSet);
    procedure zDetalleJornadasChange(Sender: TField);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnImpInformeClick(Sender: TObject);
    procedure cxBtnImpCliClick(Sender: TObject);
    procedure cxAplicaPercenClick(Sender: TObject);
    procedure cxView_CostosTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure BView_presupuestoCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure costo_presupuesto_scroll;
    procedure BView_presupuestoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEditClick(Sender: TObject);
    procedure ScrollDetalle;
    procedure cxView_CostosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxView_CostosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCopiarPartidasClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxTabCotizacionesShow(Sender: TObject);
    procedure ReporteCotizacionClick(Sender: TObject);
    procedure pageDetalleChange(Sender: TObject);
    procedure cxView_RequsicionCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnReporteProyectosClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
        CFinanciamiento:Variant;
  end;

var
  frmCostoPresupuesto: TfrmCostoPresupuesto;
  btnPermisos, titulo, titulo2:String;
  IsOpen : Boolean = False;


implementation
  uses
//  frm_agregar_masivoOP,
  Frm_Modal,frm_Presupuesto, UFrmCopiarPartidas,frm_repositorio,frm_Agregar_MasivoOP_SSI;
{$R *.dfm}

procedure TFrmCostoPresupuesto.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmCostoPresupuesto.pageDetalleChange(Sender: TObject);
begin
if PageDetalle.ActivePage = cxTabComentarios then begin
    AsignarSQL(Zcotizacion,'op_cotizacion_presupuesto',pUpdate);
    FiltrarDataSet(Zcotizacion,'sNumeroOrden',[zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString,zOrdenesTrabajo.FieldByName('sContrato').AsString]);
    zDetalle.Open;
    end;

end;

procedure TfrmCostoPresupuesto.ReporteCotizacionClick(Sender: TObject);
var
Costo_presupuesto : TfrxDBDataset;
begin

  AsignarSQL(frmRepositorio.Reporte,'rpt_cotizar_proveedor',pUpdate);
  FiltrarDataSet(frmRepositorio.Reporte,'Cotizacion',[Zcotizacion.FieldByName('IdCotizacion').AsInteger]);
  frmRepositorio.Reporte.Open;

      Costo_presupuesto := TfrxDBDataset.Create(nil);
      Costo_presupuesto.DataSet    := frmRepositorio.Reporte;
      Costo_presupuesto.UserName   := 'Costo_presupuesto';
      Costo_presupuesto.FieldAliases.Clear;
      frxReport1.DataSets.Add(Costo_presupuesto);

      frxReport1.PreviewOptions.MDIChild := False;
      frxReport1.PreviewOptions.Modal := True;
      frxReport1.PreviewOptions.ShowCaptions := False;
      frxReport1.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;


  if frmRepositorio.Reporte.RecordCount > 0 then begin
    frxReport1.LoadFromFile(global_files + global_miReporte + '_COMP_CotizaProveedor2.fr3');
    if not FileExists(global_files + global_miReporte + '_COMP_CotizaProveedor2.fr3') then
      showmessage('El archivo de reporte '+global_miReporte+'_COMP_CotizaProveedor2.fr3 no existe, notifique al administrador del sistema');
    frxReport1.ShowReport();


  end
  else
    MessageDlg('No se han agregado recursos a cotizar para un proveedor',mtInformation,[mbOk],0);
end;

procedure TFrmCostoPresupuesto.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TFrmCostoPresupuesto.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmCostoPresupuesto.ScrollDetalle;
begin
  if IsOpen AND PanelDetalle.Visible  then begin
    if zDetalle.RecordCount > 0 then begin
      AsignarSQL(uComentarios,'comentarios_cotizacionXpresupuesto',pUpdate);
      FiltrarDataSet(uComentarios,'DetallePresupuesto',[zDetalle.FieldByName('IdPresupuestoDetalle').AsInteger]);
      uComentarios.Open;
      cxCotizacionC.Text:=uComentarios.FieldByName('Codigo').AsString;
      cxRecursoC.Text:=uComentarios.FieldByName('Descripcion').AsString;

      viewComentarios.DataController.Groups.FullExpand;
    end;
  end;
end;

procedure TfrmCostoPresupuesto.btnAddClick(Sender: TObject);
begin
   if zOrdenesTrabajo.FieldByName('sStatus').AsString = 'AUTORIZADO' then
   begin
     MessageDlg('No se puede modificar '+ #13 +'Presupuesto ya esta autorizado',  mtConfirmation, [mbOk], 0);
     exit;
   end;

  global_frmActivo:='Costos';
  Application.CreateForm(TfrmAgregarMasivoOP_SSI, frmAgregarMasivoOP_SSI);
  frmAgregarMasivoOP_SSI.show
//  Application.CreateForm(TfrmAgregarMasivoOP, frmAgregarMasivoOP);
//  frmAgregarMasivoOP.show
end;

procedure TfrmCostoPresupuesto.btnCopiarPartidasClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCopiarPartidas,FrmCopiarPartidas);
  FrmCopiarPartidas.sIdPresupuesto:= zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString;

  FrmCopiarPartidas.cxFolio.Caption := zOrdenesTrabajo.FieldByName('sIdFolio').AsString;
  FrmCopiarPartidas.cxNombre.Text := zOrdenesTrabajo.FieldByName('mDescripcion').AsString;
  FrmCopiarPartidas.ShowModal;

    zDetalle.Refresh;

end;

procedure TfrmCostoPresupuesto.btnCotizarClick(Sender: TObject);
begin
  Application.CreateForm(TFrmModal, FrmModal);
  frmModal.cxPageModal.ActivePage:=frmModal.cxTabCotizacion;
  frmModal.cxPageModal.HideTabs:=True;
  FrmModal.show
end;

procedure TfrmCostoPresupuesto.btnDeleteClick(Sender: TObject);
var

    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua, lContratado : boolean;
begin

  //buscamos que este
  lContratado := False;
  iGrid     := 0;
  //indice := cxView_Costos.DataController.GetSelectedRowIndex(iGrid);
  //cxView_Costos.DataController.FocusedRowIndex := indice;

  lcontinua := False;

   if cxView_Costos.DataController.GetSelectedCount > 0 then
   begin
    If MessageDlg('Desea eliminar  ('+IntToStr(cxView_Costos.DataController.GetSelectedCount)+') Registro(s) seleccionados del Presupuesto '+ zOrdenesTrabajo.FieldByName('sIdFolio').AsString+'?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       lcontinua := True;
   end
   else
      MessageDlg('Para eliminar, seleccione un registro del grid.',mtInformation, [mbOk],0);

   if lContinua then
   begin
      zActualiza:=tUniquery.create(nil);
      zActualiza.Connection := Connection.uConnection;

      iGrid     := 0;
      //indice := cxView_Costos.DataController.GetSelectedRowIndex(iGrid);
      //cxView_Costos.DataController.FocusedRowIndex := indice;

      with cxView_Costos.DataController.DataSource.DataSet do
      for iGrid := 0 to cxView_Costos.DataController.GetSelectedCount - 1 do
      begin
          indice := cxView_Costos.DataController.GetSelectedRowIndex(iGrid);
          cxView_Costos.DataController.FocusedRowIndex := indice;

          zActualiza.SQL.Clear;
          zActualiza.SQL.Add('delete from op_presupuesto_detalle where IdPresupuestoDetalle =:IdPresupuestoDetalle');
          zActualiza.ParamByName('IdPresupuestoDetalle').AsInteger := cxView_Costos.DataController.DataSet.FieldByName('IdPresupuestoDetalle').AsInteger;
          zActualiza.ExecSQL;
      end;

      cxView_Costos.DataController.ClearSelection;
      zDetalle.Refresh;
      zDetalle.ApplyUpdates();
      sCrollDetalle;
   end;
end;

procedure TfrmCostoPresupuesto.btnDetalleClick(Sender: TObject);
var
Rubro:String;
i:Integer;
begin
  PanelDetalle.Visible:= not PanelDetalle.Visible;
  cxSplitterDetalle.Visible:=not cxSplitterDetalle.Visible;
  if PanelDetalle.Visible then
  begin
    ScrollDetalle;

//     cxGrid1DBTableView1.DataController.DataSource.DataSet.First;
//
//    while not cxGrid1DBTableView1.DataController.DataSource.DataSet.EoF do
//    begin
//      Rubro := cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('Nombre').AsString;
//      if Rubro = 'MANO DE OBRA' then begin
//        if (uRubros.State=dsInsert) or (uRubros.State=dsEdit)  then begin
//      uRubros.FieldByName('PorcentajeRendimientoM').AsCurrency :=  0.6;
//        //       showmessage('El archivo de reporte ');
//          end;
//
//        end;
//      cxGrid1DBTableView1.DataController.DataSource.DataSet.Next;
//     end;
  end;
//  zDetalle.Refresh;

 end;

procedure TfrmCostoPresupuesto.btnEditClick(Sender: TObject);
begin
   if zOrdenesTrabajo.FieldByName('sStatus').AsString = 'AUTORIZADO' then
   begin
     MessageDlg('No se puede modificar '+ #13 +'Presupuesto ya esta autorizado',  mtConfirmation, [mbOk], 0);
     exit;
   end;

  global_frmActivo:='Costos_Edit';
  Application.CreateForm(TfrmAgregarMasivoOP_SSI, frmAgregarMasivoOP_SSI);
  frmAgregarMasivoOP_SSI.show
end;

procedure TfrmCostoPresupuesto.btnExportaClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
  dlgSave : TSaveDialog;
begin
  dlgSave := TSaveDialog.Create(nil);
  dlgSave.FileName := '';
  if dlgSave.Execute then
  begin
    rutaArchivo := dlgSave.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, grid_Costos);
    dlgSave.Destroy;
    if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;

end;

procedure TfrmCostoPresupuesto.btnImpInformeClick(Sender: TObject);
begin
  if OpcionImprimir.EditingValue = 1 then begin
    IsOpen:=False;
    zDetalle.SetOrderBy('Ordenar');
    if not FileExists(global_files + global_miReporte + '_OPER_Presupuesto.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'_OPER_Presupuesto.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;
    ds_presupuesto.DataSource:=dsDetalle;
    Reporte.LoadFromFile(global_files + global_MiReporte +'_OPER_Presupuesto.fr3');
    Reporte.ShowReport;
    IsOpen:=True;
  end;

  if OpcionImprimir.EditingValue = 2 then begin
    IsOpen:=False;
    zDetalle.SetOrderBy('Ordenar');
    if not FileExists(global_files + global_miReporte + '_OPER_Presupuesto_Cliente.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'_OPER_Presupuesto_Cliente.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;

    Reporte.LoadFromFile(global_files + global_MiReporte +'_OPER_Presupuesto_Cliente.fr3');
    Reporte.ShowReport;
    IsOpen:=True;
  end;
end;

procedure TfrmCostoPresupuesto.btnPrinterClick(Sender: TObject);
begin
  IsOpen:=False;
  zDetalle.SetOrderBy('Ordenar');
  if not FileExists(global_files + global_miReporte + '_OPER_Presupuesto.fr3') then
  begin
     showmessage('El archivo de reporte '+global_Mireporte+'_OPER_Presupuesto.fr3 no existe, notifique al administrador del sistema');
     exit;
  end;

  Reporte.LoadFromFile(global_files + global_MiReporte +'_OPER_Presupuesto.fr3');
  Reporte.ShowReport;
  IsOpen:=True;
end;

procedure TfrmCostoPresupuesto.btnRefreshClick(Sender: TObject);
begin

   zDetalle.Refresh;

   zOrdenesTrabajo.Refresh;
   ScrollDetalle;
end;

procedure TfrmCostoPresupuesto.btnReporteProyectosClick(Sender: TObject);
var ds_Presupuesto : TfrxDBDataset;
ds_Proyecto : TfrxDBDataset;
orden : String;
begin
      orden := zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString;
      AsignarSQL(frmRepositorio.ReportePr,'op_presupuesto_detalle',pUpdate);
     // FiltrarDataSet(zSalida_alm_costo,'Contrato,sNumeroOrden,Folio',[global_contrato,cbProyecto.EditValue,'-1']);
      FiltrarDataSet(frmRepositorio.ReportePr,'NumeroOrden,Contrato',[orden,global_contrato]);
      frmRepositorio.ReportePr.Open;

      AsignarSQL(frmRepositorio.ReportePP,'op_presupuesto_detalle_proyectos',pUpdate);
      FiltrarDataSet(frmRepositorio.ReportePP,'Contrato,Folio',[global_contrato,orden]);
      frmRepositorio.ReportePP.Open;
     frmRepositorio.ReportePr.fieldbyname('sNumeroOrden').AsString;
      frmRepositorio.ReportePP.fieldbyname('CostoAlmacen').AsString;
      ds_Presupuesto := TfrxDBDataset.Create(nil);
      ds_Presupuesto.DataSet    := frmRepositorio.ReportePr;
      ds_Presupuesto.UserName   := 'ds_Presupuestos';
      ds_Presupuesto.FieldAliases.Clear;
      Reporte.DataSets.Add(ds_Presupuesto);

      ds_Proyecto := TfrxDBDataset.Create(nil);
      ds_Proyecto.DataSet    := frmRepositorio.ReportePP;
      ds_Proyecto.UserName   := 'ds_PProyectos';
      ds_Proyecto.FieldAliases.Clear;
      Reporte.DataSets.Add(ds_Proyecto);

      Reporte.PreviewOptions.MDIChild := False;
      Reporte.PreviewOptions.Modal := True;
      Reporte.PreviewOptions.ShowCaptions := False;
      Reporte.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      Reporte.LoadFromFile(global_files + global_miReporte + '_ALM_Proyectos.fr3');

         if not FileExists(global_files + global_miReporte + '_ALM_Proyectos.fr3') then
            showmessage('El archivo de reporte '+global_Mireporte+'_ALM_Proyectos.fr3 no existe, notifique al administrador del sistema');
          Reporte.ShowReport();
end;

procedure TfrmCostoPresupuesto.btnRequisitarClick(Sender: TObject);
var  iGrid,indice : Integer;
begin
//  with cxView_Costos.DataController.DataSource.DataSet do
//  for iGrid := 0 to cxView_Costos.DataController.GetSelectedCount - 1 do
//  begin
//    //las siguientes dos lineas son para posicionar el dataset en cada uno de los registros seleccionados
//    indice := cxView_Costos.DataController.GetSelectedRowIndex(iGrid);
//    frmCostoPresupuesto.cxView_Costos.DataController.FocusedRowIndex := indice;
//
//    connection.zCommand.Active:=False;
//    connection.zCommand.SQL.Clear;
//    connection.zCommand.SQL.Text:='Select a.IdInsumo  from anexo_prequisicion a where a.sNumeroOrden = :sNumeroOrden and a.IdInsumo= '+
//    '(Select pd.IdInsumo from alm_insumos pd inner join op_presupuesto_detalle as opd on opd.Codigo=pd.Codigo '+
//    'where :sNumeroOrden=opd.sNumeroOrden and :IdTipoRecurso=opd.IdTipoRecurso and :Id=opd.IdPresupuestoDetalle)';
//    connection.zCommand.ParamByName('sNumeroOrden').AsString:=zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString;
//    connection.zCommand.ParamByName('IdTipoRecurso').AsInteger:=cxView_Costos.DataController.DataSet.FieldByName('IdTipoRecurso').AsInteger;
//    connection.zCommand.ParamByName('Id').AsInteger:=cxView_Costos.DataController.DataSet.FieldByName('IdPresupuestoDetalle').AsInteger;
//    connection.zCommand.Open;
//
//    if connection.zCommand.RecordCount > 0 then begin
//      showmessage('Existe material ya requisitado');
//      exit;
//    end;
//  end;


  Application.CreateForm(TFrmModal, FrmModal);
  frmModal.cxPageModal.ActivePage:=frmModal.cxTabRequisicion;
  frmModal.cxPageModal.HideTabs:=True;
  FrmModal.show
end;

procedure TfrmCostoPresupuesto.BView_presupuestoCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

   if zOrdenesTrabajo.RecordCount > 0 then
   begin
     if zOrdenesTrabajo.FieldByName('sStatus').AsString = 'AUTORIZADO' then
        dsDetalle.AutoEdit:=False
     else
        dsDetalle.AutoEdit:=True;

     costo_presupuesto_scroll;
   end;
   zDetalle.Refresh;
   ScrollDetalle;
end;

procedure TfrmCostoPresupuesto.BView_presupuestoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Key = VK_UP) or ( Key = VK_DOWN)  then
          costo_presupuesto_scroll;
end;

procedure TfrmCostoPresupuesto.cxAplicaPercenClick(Sender: TObject);
begin
  PanelDetalle.Visible:= not PanelDetalle.Visible;
  cxSplitterDetalle.Visible:=not cxSplitterDetalle.Visible;
  uRubros.First;
  while not uRubros.Eof do begin
    zRecursos.Active:=False;
    zRecursos.SQL.Clear;
    zRecursos.SQL.Text:='UPDATE op_presupuesto_detalle SET Adicional = '+uRubros.FieldByName('PorcentajeAdicional').AsString+', Financiamiento = '+uRubros.FieldByName('PorcentajeFinanciamiento').AsString+' WHERE sNumeroOrden = '+QuotedStr(zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString)+' AND IdTipoRecurso = '+uRubros.FieldByName('IdTipoRecurso').AsString;
    zRecursos.ExecSQL;
    uRubros.Next;
  end;
  zDetalle.Refresh;
  ScrollDetalle;
   PanelDetalle.Visible:= not PanelDetalle.Visible;
  cxSplitterDetalle.Visible:=not cxSplitterDetalle.Visible;
end;

procedure TfrmCostoPresupuesto.cxBtnImpCliClick(Sender: TObject);
begin
  IsOpen:=False;
  zDetalle.SetOrderBy('Ordenar');
  if not FileExists(global_files + global_miReporte + '_OPER_Presupuesto_Cliente.fr3') then
  begin
     showmessage('El archivo de reporte '+global_Mireporte+'_OPER_Presupuesto_Cliente.fr3 no existe, notifique al administrador del sistema');
     exit;
  end;

  Reporte.LoadFromFile(global_files + global_MiReporte +'_OPER_Presupuesto_Cliente.fr3');
  Reporte.ShowReport;
  IsOpen:=True;
end;

procedure TfrmCostoPresupuesto.cxButton3Click(Sender: TObject);
begin
   Application.CreateForm(TFrmModal, FrmModal);
   frmModal.cxPageModal.ActivePage:=frmModal.cxTabConfiguraMoneda;
   frmModal.cxPageModal.HideTabs:=True;
   FrmModal.show
end;



procedure TfrmCostoPresupuesto.cxTabCotizacionesShow(Sender: TObject);
begin
//  AsignarSQL(Zcotizacion,'op_cotizacion_presupuesto',pUpdate);
//  FiltrarDataSet(Zcotizacion,'sNumeroOrden',[zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString,zOrdenesTrabajo.FieldByName('sContrato').AsString]);
//  zDetalle.Open;
end;

procedure TfrmCostoPresupuesto.cxView_CostosCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  ScrollDetalle;
end;

procedure TfrmCostoPresupuesto.cxView_CostosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if cxView_Costos.OptionsView.CellAutoHeight then
      cxView_Costos.OptionsView.CellAutoHeight := False
   else
      cxView_Costos.OptionsView.CellAutoHeight := True;
end;

procedure TfrmCostoPresupuesto.cxView_CostosKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Key = VK_UP) or ( Key = VK_DOWN)  then
    ScrollDetalle;
end;

procedure TfrmCostoPresupuesto.cxView_CostosStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn : TcxCustomGridTableItem;
begin
  AStyle := cxStyle1 ;
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('numCom');
    if ARecord.Values[AColumn.Index] = '0' then
       AStyle := cxStyle2 ;

end;

procedure TfrmCostoPresupuesto.cxView_CostosTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
if not VarIsNull(AValue) then
  begin
   CFinanciamiento:=AValue
  end;
end;

procedure TfrmCostoPresupuesto.cxView_RequsicionCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if cxView_Requsicion.OptionsView.CellAutoHeight then
      cxView_Requsicion.OptionsView.CellAutoHeight := False
   else
      cxView_Requsicion.OptionsView.CellAutoHeight := True;
end;

procedure TfrmCostoPresupuesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  guardar_leer_grid(BView_presupuesto,frmCostoPresupuesto,1);
  guardar_leer_grid(cxView_Costos,frmCostoPresupuesto,1);
  guardar_leer_grid(viewComentarios,frmCostoPresupuesto,1);
  guardar_leer_grid(cxGrid1DBTableView1,frmCostoPresupuesto,1);
  guardar_leer_grid(cxView_Requsicion,frmCostoPresupuesto,1);
  Action := caFree;
end;

procedure TfrmCostoPresupuesto.FormShow(Sender: TObject);
begin
  Titulo := 'Costos de Presupuesto';
  cxLeyenda.Caption := Titulo;
  btnPermisos := global_btnPermisos;
  PanelDetalle.Visible:=False;
  cxSplitterDetalle.Visible:=False;



  IsOpen := False;
  zOrdenesTrabajo.Active:= False;
  AsignarSQL(zOrdenesTrabajo,'ordenesdetrabajo_req',pUpdate);
  if connection.uconfiguracion.FieldByName('VerTodosProyectos').AsString = 'No' then
       FiltrarDataSet(zOrdenesTrabajo,'Contrato,Tipo',[global_contrato,'-1'])
  else
       FiltrarDataSet(zOrdenesTrabajo,'Contrato,Tipo',['%','PRESUPUESTO']);
  zOrdenesTrabajo.Open;

  AsignarSQL(zDetalle,'op_presupuesto_detalle',pUpdate);
  FiltrarDataSet(zDetalle,'NumeroOrden,Contrato',[zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString,zOrdenesTrabajo.FieldByName('sContrato').AsString]);
  zDetalle.Open;
  ScrollDetalle;
  uRubros.Active:=False;
  AsignarSQL(uRubros,'op_presupuesto_detalle_margen',pUpdate);
  FiltrarDataSet(uRubros,'IdPMargen,NumeroOrden,Contrato,IdTipoRecurso',[-1,-1,-1,-1]);
  uRubros.Open;

  if (zOrdenesTrabajo.RecordCount > 0) AND (zDetalle.RecordCount > 0) then begin
    uRubros.Filtered:=False;
    uRubros.Filter:='sNumeroOrden = '+QuotedStr(zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString)+' AND sContrato = '+QuotedStr(zOrdenesTrabajo.FieldByName('sContrato').AsString);
    uRubros.Filtered:=True;
    if uRubros.RecordCount < 1 then begin
      uRubros.Filtered:=False;
      zRecursos.Active:=False;
      zRecursos.SQL.Clear;
      zRecursos.SQL.Text:='INSERT INTO op_presupuesto_detalle_margen (IdTipoRecurso,sNumeroOrden,sContrato) SELECT IdTipoRecurso, '+
        QuotedStr(zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString)+' as sNumeroOrden,'+QuotedStr(zOrdenesTrabajo.FieldByName('sContrato').AsString)+' as sContrato '+
        'FROM op_tiporecurso';
      zRecursos.ExecSQL;
      uRubros.Refresh;
      uRubros.Filtered:=False;
      uRubros.Filter:='sNumeroOrden = '+QuotedStr(zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString)+' AND sContrato = '+QuotedStr(zOrdenesTrabajo.FieldByName('sContrato').AsString);
      uRubros.Filtered:=True;
    end;
  end;
  cxVistaPresupuesto.ItemIndex := 0;
  IsOpen:= True;
  BView_presupuesto.DataController.Groups.FullExpand;
  cxView_Costos.DataController.Groups.FullExpand;
  PermisosBotones(frmCostoPresupuesto,btnPermisos);
  //frmBarraH11.btnEdit.Enabled:=false;

  guardar_leer_grid(BView_presupuesto,frmCostoPresupuesto,0);
  guardar_leer_grid(cxView_Costos,frmCostoPresupuesto,0);
  guardar_leer_grid(viewComentarios,frmCostoPresupuesto,0);
  guardar_leer_grid(cxGrid1DBTableView1,frmCostoPresupuesto,0);
  guardar_leer_grid(cxView_Requsicion,frmCostoPresupuesto,0);
end;

procedure TfrmCostoPresupuesto.zDetalleBeforePost(DataSet: TDataSet);
var
  tipoR : Integer;
begin
  tipoR := zDetalle.FieldByName('IdTipoRecurso').AsInteger;
  if (tipoR = 3) OR (tipoR = 5) OR (tipoR = 7) then begin
    if zDetalle.FieldByName('Jornadas').AsInteger < 1 then
      zDetalle.Cancel;
  end
  else begin
    if zDetalle.FieldByName('Jornadas').AsInteger <> 1 then begin
      MessageDlg('La cantidad de jornadas sólo se puede modificar para los siguientes rubros: '+#13+'MANO DE OBRA'+#13+'MAQUINARIA'+#13+'GASTOS LOGÍSTICOS',mtInformation,[mbOk],0);
      zDetalle.Cancel;
    end;
  end;
end;

procedure TfrmCostoPresupuesto.zDetalleCalcFields(DataSet: TDataSet);
begin
   if zDetalle.RecordCount > 0 then begin
      //calculo el costo total (jornadas*cantidad*costo)
      zDetalle.FieldByName('TotalCosto').AsFloat     := zDetalle.FieldByName('Cantidad').AsFloat * zDetalle.FieldByName('Costo').AsFloat * zDetalle.FieldByName('Jornadas').AsFloat;
      //calculo el costo adicional
      zDetalle.FieldByName('CostoAdicional').AsFloat := RoundTo(zDetalle.FieldByName('TotalCosto').AsFloat * zDetalle.FieldByName('Adicional').AsFloat / 100,-2);
      //calculo el costo con financiamiento
      zDetalle.FieldByName('CostoFinanciamiento').AsFloat := RoundTo((zDetalle.FieldByName('TotalCosto').AsFloat+zDetalle.FieldByName('CostoAdicional').AsFloat) * zDetalle.FieldByName('Financiamiento').AsFloat / 100,-2);
      //sumo todos los costos para obtener el precio unitario (importe)
      zDetalle.FieldByName('PrecioUnitario').AsFloat := RoundTo(zDetalle.FieldByName('TotalCosto').AsFloat + zDetalle.FieldByName('CostoAdicional').AsFloat + zDetalle.FieldByName('CostoFinanciamiento').AsFloat,-2);
      //Paso el campo calculado al de la base de datos
//      zDetalle.FieldByName('PU').AsFloat:=zDetalle.FieldByName('PrecioUnitario').AsFloat;

   end;
//    CFinanciamiento:=zDetalle.FieldByName('CostoAdicional').AsFloat;
end;



procedure TfrmCostoPresupuesto.zDetalleJornadasChange(Sender: TField);
var
  tipoR : Integer;
begin
  tipoR := zDetalle.FieldByName('IdTipoRecurso').AsInteger;
  if (tipoR = 3) OR (tipoR = 5) OR (tipoR = 7) then begin
    if zDetalle.FieldByName('Jornadas').AsInteger < 1 then
      zDetalle.Cancel;
  end
  else begin
    if zDetalle.FieldByName('Jornadas').AsInteger <> 1 then begin
      MessageDlg('La cantidad de jornadas sólo se puede modificar para los siguientes rubros: '+#13+'MANO DE OBRA'+#13+'MAQUINARIA'+#13+'GASTOS LOGÍSTICOS',mtInformation,[mbOk],0);
      zDetalle.Cancel;
    end;
  end;
end;

procedure TfrmCostoPresupuesto.costo_presupuesto_scroll;
begin

   if IsOpen then
  begin
    AsignarSQL(zDetalle,'op_presupuesto_detalle',pUpdate);
    FiltrarDataSet(zDetalle,'NumeroOrden,Contrato',[zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString,zOrdenesTrabajo.FieldByName('sContrato').AsString]);
    zDetalle.Open;
    AsignarSQL(Zcotizacion,'op_cotizacion_presupuesto',pUpdate);
    FiltrarDataSet(Zcotizacion,'sNumeroOrden',[zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString,zOrdenesTrabajo.FieldByName('sContrato').AsString]);
    Zcotizacion.Open;
    AsignarSQL(anexo_requisicion,'anexo_requisicion',pUpdate);
    FiltrarDataSet(anexo_requisicion,'contrato,IdDepartamento,Vista,Proyecto',[global_contrato, -1,-1,zOrdenesTrabajo.FieldByName('sIdFolio').AsString]);
    anexo_requisicion.Open;
    ScrollDetalle;
    cxView_Costos.DataController.Groups.FullExpand;

    if (zOrdenesTrabajo.RecordCount > 0) AND (zDetalle.RecordCount > 0) then begin
      uRubros.Filtered:=False;
      uRubros.Filter:='sNumeroOrden = '+QuotedStr(zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString)+' AND sContrato = '+QuotedStr(zOrdenesTrabajo.FieldByName('sContrato').AsString);
      uRubros.Filtered:=True;
      if uRubros.RecordCount < 1 then begin
        uRubros.Filtered:=False;
        zRecursos.Active:=False;
        zRecursos.SQL.Clear;
        zRecursos.SQL.Text:='INSERT INTO op_presupuesto_detalle_margen (IdTipoRecurso,sNumeroOrden,sContrato) SELECT IdTipoRecurso, '+
          QuotedStr(zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString)+' as sNumeroOrden,'+QuotedStr(zOrdenesTrabajo.FieldByName('sContrato').AsString)+' as sContrato '+
          'FROM op_tiporecurso';
        zRecursos.ExecSQL;
        uRubros.Refresh;
        uRubros.Filtered:=False;
        uRubros.Filter:='sNumeroOrden = '+QuotedStr(zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString)+' AND sContrato = '+QuotedStr(zOrdenesTrabajo.FieldByName('sContrato').AsString);
        uRubros.Filtered:=True;
      end;
    end;
  end;
  zDetalle.Refresh;
  ScrollDetalle;
end;

end.
