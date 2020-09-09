unit UFrm_EvaluaProveedor;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, frm_barraH1,
  Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, dxBarBuiltInMenu, cxPC,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, frm_barraH2, cxSplitter,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, MemDS, DBAccess,
  Uni, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, UnitGenerales, global, frm_connection, unitexcepciones,
  cxDBEdit, cxCalendar, cxImageComboBox, cxSpinEdit, dxmdaset, cxProgressBar,
  UnitRH, frxClass, System.ImageList, Vcl.ImgList, frxDBSet, dxGDIPlusClasses,
  cxImage;

type
  TFrm_EvaluaProveedor = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    PanelPrincipal: TPanel;
    PanelTipo: TPanel;
    cxSplitTipo: TcxSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxSplitter1: TcxSplitter;
    grid_evaluacion: TcxGrid;
    cxView_Evaluacion: TcxGridDBTableView;
    cxView_EvaluacionColumn1: TcxGridDBColumn;
    cxView_EvaluacionColumn3: TcxGridDBColumn;
    cxView_EvaluacionColumn2: TcxGridDBColumn;
    cxView_EvaluacionColumn8: TcxGridDBColumn;
    grid_evaluacionLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    zProveedor: TUniQuery;
    dsProveedor: TDataSource;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxPageDetalle: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    Grid_Proveedor: TcxGrid;
    BView_filtro: TcxGridDBTableView;
    BView_filtroColumn2: TcxGridDBColumn;
    Grid_ProveedorLevel1: TcxGridLevel;
    zProvEvalua: TUniQuery;
    dsProvEvalua: TDataSource;
    dFechaEvalua: TcxDBDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    edtCodigo: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxGridEvaluar: TcxGrid;
    cxGridViewEvalua: TcxGridDBTableView;
    colPregunta: TcxGridDBColumn;
    colPuntos: TcxGridDBColumn;
    cxGridEvaluarLevel1: TcxGridLevel;
    dsPreguntas: TDataSource;
    zPreguntas: TUniQuery;
    zEvaluaDetalle: TUniQuery;
    dsEvaluaDetalle: TDataSource;
    mPreguntas: TdxMemData;
    zPuntos: TUniQuery;
    dsPuntos: TDataSource;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    frxReporte: TfrxReport;
    zReporteEvalua: TUniQuery;
    cxView_EvaluacionColumn4: TcxGridDBColumn;
    imgStars: TcxImageList;
    lcbDepartamento: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    zArea: TUniQuery;
    dsArea: TDataSource;
    cxView_EvaluacionColumn5: TcxGridDBColumn;
    frxEvaluaProveedor: TfrxDBDataset;
    cxImage1: TcxImage;
    EliminarEvalua: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure BView_filtroDblClick(Sender: TObject);
    procedure BView_filtroCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure zProveedorAfterScroll(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure zProvEvaluaAfterScroll(DataSet: TDataSet);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxPageDetalleChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure frxReporteGetValue(const VarName: string; var Value: Variant);
    procedure colPuntosPropertiesChange(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure EliminarEvaluaClick(Sender: TObject);
    procedure btnExportaClick(Sender: TObject);
  private
    { Private declarations }
  public
    btnPermisos:String;
    titulo         : string;
    filtraP        : string;
    titulo2        : string;
    inactiva       :Boolean;
    { Public declarations }
  end;

var
  Frm_EvaluaProveedor: TFrm_EvaluaProveedor;

implementation

{$R *.dfm}

uses frm_rptEvaluaProv;

procedure TFrm_EvaluaProveedor.btnAddClick(Sender: TObject);
begin
   cxLeyenda.Caption:=titulo + '[Añadiendo]';
   frmBarraH11.btnAddClick(Sender);
   panel2.Visible:=True;
   cxSplitter1.Visible := False;
   grid_evaluacion.Enabled:=False;
   Grid_Proveedor.Enabled := False;

   edtCodigo.Properties.ReadOnly := True;
   cxSplitterOpciones.Visible := False;
   PanelDetalle.Visible       := False;

   zProvEvalua.Append;
   zProvEvalua.FieldByName('Fecha').AsDatetime := date;
   zProvEvalua.FieldByName('FechaEvalua').AsDatetime := date;
   if connection.uContrato.FieldByName('FK_Titulo').AsString = 'SIANI' then
   zProvEvalua.FieldByName('Codigo').AsString := 'COM-003'
   ELSE
   zProvEvalua.FieldByName('Codigo').AsString := autoFolio(zProvEvalua, 'master_proveedor_evaluacion');
   zProvEvalua.FieldByName('IdProveedor').AsInteger := zProveedor.FieldByName('IdProveedor').AsInteger;
end;

procedure TFrm_EvaluaProveedor.btnCancelClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    cxSplitter1.Visible := False;
    frmBarraH11.btnActive;
    grid_evaluacion.Enabled:=True;
    Grid_Proveedor.Enabled := True;
    zProvEvalua.Cancel;

    PermisosBotones(Frm_EvaluaProveedor,btnPermisos);
end;

procedure TFrm_EvaluaProveedor.btnDeleteClick(Sender: TObject);
begin
  If zProvEvalua.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if zEvaluaDetalle.RecordCount = 0 then
      begin
        inactiva := True;
        zProvEvalua.Delete;
        zProvEvalua.ApplyUpdates();
        inactiva := True;
      end
      else
        ShowMessage('No se puede eliminar, ya contiene datos de detalle.');
    end;
end;

procedure TFrm_EvaluaProveedor.btnDetalleClick(Sender: TObject);
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
      AsignarSQL(zEvaluaDetalle,'master_proveedor_evaluacion_detalle',pUpdate);
     FiltrarDataset(zEvaluaDetalle,'IdEvaluacion,Area',[zProvEvalua.FieldByName('IdEvaluacion').AsInteger,filtraP]);
     zEvaluaDetalle.Open;
     if zEvaluaDetalle.RecordCount > 0 then
        cxNuevoDetalle.Caption := 'Cambiar Evaluacion'
      else
        cxNuevoDetalle.Caption := 'Iniciar Evaluacion';

       PanelDetalle.Visible       := True;
       cxSplitterOpciones.Visible := True;
   end;
end;

procedure TFrm_EvaluaProveedor.btnEditClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo+'[Editando]';
    frmBarraH11.btnAddClick(Sender);
    Panel2.Visible:=True;
    cxSplitter1.Visible := False;
    grid_evaluacion.Enabled:=False;
    zProvEvalua.Edit;
    edtCodigo.SetFocus;
    edtCodigo.Properties.ReadOnly := False;
    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;
end;

procedure TFrm_EvaluaProveedor.btnExportaClick(Sender: TObject);
begin
  Application.CreateForm(TfrmRptEvaluacionProv,frmRptEvaluacionProv);
  frmRptEvaluacionProv.Show;

end;

procedure TFrm_EvaluaProveedor.btnPostClick(Sender: TObject);
var SavePlace     : TBookmark;
begin
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    frmBarraH11.Visible:=True;
    grid_evaluacion.Enabled:=True;
    Grid_Proveedor.Enabled := True;
    zProvEvalua.Post;

    SavePlace := cxView_Evaluacion.DataController.DataSource.DataSet.GetBookmark;
    zProvEvalua.Refresh;
    try
       cxView_Evaluacion.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
    except
       cxView_Evaluacion.DataController.DataSet.FreeBookmark(SavePlace);
    end;


    PermisosBotones(Frm_EvaluaProveedor,btnPermisos);
end;

procedure TFrm_EvaluaProveedor.btnPrinterClick(Sender: TObject);
begin
  BarraMostrar(True,progreso, LabelProceso);
      try
         if (zProvEvalua.Active) and (zProvEvalua.RecordCount > 0) then
         begin
            zReporteEvalua.Active:= False;
            AsignarSQL(zReporteEvalua,'Reporte_evaluacion_proveedor',pUpdate);
            FiltrarDataSet(zReporteEvalua, 'IdEvaluacion,IdProveedor',[zProvEvalua.FieldByName('IdEvaluacion').AsInteger,zProveedor.FieldByName('IdProveedor').AsInteger]);
            zReporteEvalua.Open;

            ReporteEvaluacionProveedor( zReporteEvalua, frm_EvaluaProveedor, frxReporte.OnGetValue, progreso) ;
         end
         else
            showmessage('No hay datos para Imprimir');
      except
          on e: exception do
          begin
             UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Control de pernoctas', 'Al imprimir', 0);
          end;
      end;
  BarraMostrar(False,progreso, LabelProceso);
end;

procedure TFrm_EvaluaProveedor.btnRefreshClick(Sender: TObject);
begin
   zProvEvalua.Refresh;
end;

procedure TFrm_EvaluaProveedor.BView_filtroCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if BView_filtro.DataController.Filter.FilterText = '' then
    begin
        zProvEvalua.Filtered := False;
    end;
end;

procedure TFrm_EvaluaProveedor.BView_filtroDblClick(Sender: TObject);
begin
  if BView_filtro.OptionsView.CellAutoHeight then
       BView_filtro.OptionsView.CellAutoHeight := False
    else
       BView_filtro.OptionsView.CellAutoHeight := True;
end;

procedure TFrm_EvaluaProveedor.colPuntosPropertiesChange(Sender: TObject);
begin
  zEvaluaDetalle.Refresh
  //zEvaluaDetalle.FieldByName('total').AsString:
end;

procedure TFrm_EvaluaProveedor.cxCancelarDetalleClick(Sender: TObject);
begin
   cxNuevoDetalle.Enabled := True;

   cxLeyenda2.Caption:=titulo2;

   zEvaluaDetalle.Cancel;
   PanelDown.Visible := False;

   cxGridViewEvalua.OptionsData.Editing := False;
   zEvaluaDetalle.CachedUpdates := False;

   if zEvaluaDetalle.State in [dsEdit, dsInsert] then
      zEvaluaDetalle.Post;
end;

procedure TFrm_EvaluaProveedor.cxEditaDetalleClick(Sender: TObject);
begin
    PanelDown.Visible := True;
    cxNuevoDetalle.Enabled := False;

    cxLeyenda2.Caption:=titulo2 +'[Editando]';

    cxGridViewEvalua.OptionsData.Editing := True;

end;

procedure TFrm_EvaluaProveedor.cxGuardarDetalleClick(Sender: TObject);
begin
  cxNuevoDetalle.Enabled := True;

  cxLeyenda2.Caption:=titulo2;

  PanelDown.Visible := False;

  if zEvaluaDetalle.State in [dsEdit, dsInsert] then
    zEvaluaDetalle.Post;

  cxNuevoDetalle.Caption := 'Cambiar Evaluacion';
  cxGridViewEvalua.OptionsData.Editing := False;
  grid_Proveedor.Enabled := True;
  grid_evaluacion.Enabled := True;
  inactiva := true;
  zProvEvalua.Refresh;
  inactiva := False;
end;

procedure TFrm_EvaluaProveedor.cxNuevoDetalleClick(Sender: TObject);
begin
    PanelDown.Visible := True;
    cxNuevoDetalle.Enabled := False;
  if zEvaluaDetalle.RecordCount > 0 then
    cxLeyenda2.Caption:=titulo2 +'[Editando]'
  else begin
    If zEvaluaDetalle.RecordCount = 0 then
    begin
      cxLeyenda2.Caption:=titulo2 +'[Agregando]';
      zPreguntas.First;
      while not zPreguntas.Eof do
      begin
        zEvaluaDetalle.Append;
          zEvaluaDetalle.FieldByName('IdEvaluacion').AsInteger:= zProvEvalua.FieldByName('IdEvaluacion').AsInteger;
          zEvaluaDetalle.FieldByName('IdPregunta').AsInteger:= zPreguntas.FieldByName('IdPregunta').AsInteger;
          zEvaluaDetalle.FieldByName('Puntuacion').AsString:= '-1';
        zEvaluaDetalle.Post;
        zPreguntas.Next;
      end;
    end;
    zEvaluaDetalle.First;

  end;
    cxGridViewEvalua.OptionsData.Editing := True;
    grid_Proveedor.Enabled := False;
    grid_evaluacion.Enabled := False;
end;

procedure TFrm_EvaluaProveedor.cxPageDetalleChange(Sender: TObject);
begin
  cxCancelarDetalle.OnClick(sender);

  titulo2 := 'Puntos Evaluados';
  cxLeyenda2.Caption:=titulo2;
  cxNuevoDetalle.Visible:=True;

end;

procedure TFrm_EvaluaProveedor.EliminarEvaluaClick(Sender: TObject);
Var zEliminar : TUniQuery;
begin
  if zEvaluaDetalle.RecordCount > 0 then
  if MessageDlg('Desea eliminar los datos de la evaluación?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    zEliminar := TUniQuery.Create(nil);
    zEliminar.Connection := connection.Uconnection;
    zEliminar.SQL.Text := 'Delete from master_proveedor_evaluacion_detalle where IdEvaluacion = :IdEvaluacion';
    zEliminar.ParamByName('IdEvaluacion').AsInteger := zProvEvalua.FieldByName('IdEvaluacion').AsInteger;
    zEliminar.ExecSQL;
    zEliminar.Destroy;

    inactiva := true;
    zProvEvalua.Refresh;
    zEvaluaDetalle.Refresh;
    inactiva := False;
    cxNuevoDetalle.Caption := 'Iniciar Evaluacion'
  end;
end;

procedure TFrm_EvaluaProveedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    guardar_leer_grid(BView_filtro,Frm_EvaluaProveedor,1);
    guardar_leer_grid(cxView_Evaluacion,Frm_EvaluaProveedor,1);
    guardar_leer_grid(cxGridViewEvalua,Frm_EvaluaProveedor,1);
    action := cafree;
end;

procedure TFrm_EvaluaProveedor.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
  //try
    PanelDetalle.Visible := False;
//      cxSplitterDetalle.
    Panel2.Visible := False;
    cxSplitter1.Visible := False;
    titulo:='Evaluación de proveedor';
    titulo2:='Detalles';
    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;

    cxLeyenda.Caption:=titulo;
    cxLeyenda2.Caption:=titulo2;
    frmBarraH21.btnCancel.Click ;
    inactiva := True;
    {determinar el perfil para visualizar las preguntas}
    connection.qryUBusca.Active:=False;
    connection.QryUBusca.SQL.Clear;
    connection.qryUBusca.SQL.Add('Select g.* from grupos g where g.sIdGrupo = '+QuotedStr(GLOBAL_GRUPO));
    connection.qryUBusca.Open;
    if titulo.Compare('Otros',connection.qryUBusca.FieldByName('EvaluaProveedor').AsString)=0 then
      filtraP:='Otra'
    else
      filtraP:='-1';

    zPreguntas.Active := False;
    AsignarSQL(zPreguntas,'master_proveedor_evalua_conf',pUpdate);
    FiltrarDataSet(zPreguntas, 'Area',[filtraP]);
    zPreguntas.Open;

    zArea.Active := False;
    AsignarSQL(zArea,'master_departamento',pUpdate);
    //FiltrarDataSet(zPreguntas, 'Area',['Compras']);
    zArea.Open;

    zProveedor.Active := False;
    AsignarSQL(zProveedor,'master_proveedores',pUpdate);
    FiltrarDataSet(zProveedor, 'IdProveedor',['-1']);
    zProveedor.Open;

    zProvEvalua.Active:= False;
    AsignarSQL(zProvEvalua,'master_proveedor_evaluacion',pUpdate);
    FiltrarDataSet(zProvEvalua, 'IdProveedor',[zProveedor.FieldByName('IdProveedor').AsString]);
    zProvEvalua.Open;
    inactiva:=False;

    zPuntos.Active := True;
    PermisosBotones(Frm_EvaluaProveedor,btnPermisos);

    guardar_leer_grid(BView_filtro,Frm_EvaluaProveedor,0);
    guardar_leer_grid(cxView_Evaluacion,Frm_EvaluaProveedor,0);
    guardar_leer_grid(cxGridViewEvalua,Frm_EvaluaProveedor,0);
  //except
    //on e : exception do
      //UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al iniciar el formulario', 0);
  //end;
end;

procedure TFrm_EvaluaProveedor.frxReporteGetValue(const VarName: string;
  var Value: Variant);
begin
;
end;

procedure TFrm_EvaluaProveedor.zProveedorAfterScroll(DataSet: TDataSet);
begin
  if inactiva = False then
  begin
    FiltrarDataSet(zProvEvalua, 'IdProveedor',[zProveedor.FieldByName('IdProveedor').AsString]);
    if zProvEvalua.Active then
      zProvEvalua.Refresh
    else
      zProvEvalua.Open;
  end;
end;

procedure TFrm_EvaluaProveedor.zProvEvaluaAfterScroll(DataSet: TDataSet);
begin
  if inactiva = False then
  begin
    if PanelDetalle.Visible then
    begin
      AsignarSQL(zEvaluaDetalle,'master_proveedor_evaluacion_detalle',pUpdate);
      FiltrarDataset(zEvaluaDetalle,'IdEvaluacion',[zProvEvalua.FieldByName('IdEvaluacion').AsInteger]);
      zEvaluaDetalle.Open;
      if zEvaluaDetalle.RecordCount > 0 then
        cxNuevoDetalle.Caption := 'Cambiar Evaluacion'
      else
        cxNuevoDetalle.Caption := 'Iniciar Evaluacion';
    end;
  end;
end;

end.
