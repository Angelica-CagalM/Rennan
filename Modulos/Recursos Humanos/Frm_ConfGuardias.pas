unit Frm_ConfGuardias;

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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxSplitter,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxLabel, frm_barraH1, Vcl.ExtCtrls,
  dxLayoutcxEditAdapters, frm_barraH2, dxLayoutContainer, cxCheckBox,
  dxToggleSwitch, dxDBToggleSwitch, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutControl,UnitGenerales, MemDS, DBAccess, Uni, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, dxLayoutControlAdapters, dxBarBuiltInMenu, cxGroupBox,
  cxRadioGroup, cxGridChartView, cxGridDBChartView, cxPC, dateUtils, frxClass,
  frxExportPDF, unitRH, uFunctionsGHH;

type
  TFrmConfGuardias = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    PanelEmpresa: TPanel;
    Grid_Bitacora: TcxGrid;
    BView_empresa: TcxGridDBTableView;
    BView_empresaColumn1: TcxGridDBColumn;
    Grid_BitacoraLevel1: TcxGridLevel;
    cxSplitterLateral: TcxSplitter;
    PanelDatos: TPanel;
    Grid_Guardias: TcxGrid;
    Grid_GuardiasDBTableView1: TcxGridDBTableView;
    colIdGiardia: TcxGridDBColumn;
    colFechaInicio: TcxGridDBColumn;
    ColFechaFinal: TcxGridDBColumn;
    ColActivo: TcxGridDBColumn;
    Grid_GuardiasLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    PanelD: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    cxTipoNomina: TcxDBLookupComboBox;
    cxFechaInicio: TcxDBDateEdit;
    cxFechaTermino: TcxDBDateEdit;
    dxDBToggleSwitch1: TdxDBToggleSwitch;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    cbGuardia: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    zGuardias: TUniQuery;
    dsGuardias: TDataSource;
    BView_empresaColumn2: TcxGridDBColumn;
    zGuardiasDetalle: TUniQuery;
    dsGuardiasDetalle: TDataSource;
    PanelDetalle: TPanel;
    cxSplitterOpciones: TcxSplitter;
    dsTraerGuardias: TDataSource;
    TraerGuardias: TUniQuery;
    cxGuardiaNumero: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxFechaSubida: TcxDBDateEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxFechaBajada: TcxDBDateEdit;
    dxLayoutItem9: TdxLayoutItem;
    zTipoNomina: TUniQuery;
    ds_tiponomina: TDataSource;
    colSubida: TcxGridDBColumn;
    colBajada: TcxGridDBColumn;
    colProyecto: TcxGridDBColumn;
    colPlataforma: TcxGridDBColumn;
    colPernocta: TcxGridDBColumn;
    cxGuardia: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxPageDetalle: TcxPageControl;
    tabInformes: TcxTabSheet;
    PanelInferiorInforme: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid1Level1: TcxGridLevel;
    cxSplitInforme: TcxSplitter;
    PanelSuperiorInforme: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    opcionImprimir: TcxRadioGroup;
    btnImpInforme: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    cxPlataforma: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    plataformas: TUniQuery;
    ds_plataformas: TDataSource;
    cxTipoJornada: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxTipoContrato: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cxRegimenContrato: TcxDBLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    zTipoJornada: TUniQuery;
    ds_tipojornada: TDataSource;
    zTipoContrato: TUniQuery;
    ds_tipoContrato: TDataSource;
    zRegimenContrato: TUniQuery;
    ds_regimencontrato: TDataSource;
    asistencias: TUniQuery;
    ds_asistencias: TDataSource;
    frxAsistencia: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BView_empresaCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure BView_empresaDblClick(Sender: TObject);
    procedure cxTipoNominaExit(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxFechaInicioExit(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);

    procedure ImprimirNominaOP;
    procedure NominaEmbarcacion;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfGuardias: TFrmConfGuardias;
  titulo, titulo2, btnPermisos: String;
  flap:Boolean;
implementation
uses global,frm_connection;
{$R *.dfm}

procedure TFrmConfGuardias.EnterControl(Sender: TObject);
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

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBSpinEdit) then
        tcxDBSpinEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TFrmConfGuardias.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBSpinEdit) then
        tcxDBSpinEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TFrmConfGuardias.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmConfGuardias.btnAddClick(Sender: TObject);
var
   IdJornada, IdTipoContrato, IdTipoRegimen : integer;
begin
  frmBarraH11.btnAddClick(Sender);
  cxLeyenda.Caption:=titulo + '[Añadiendo]';
  cxSplitterOpciones.Visible := False;
  PanelDetalle.Visible       := False;
  cxSplitter1.Visible := False;
  PanelD.Visible:=True;

  if zGuardiasDetalle.RecordCount > 0 then
  begin
      zGuardiasDetalle.First;
      IdJornada      := zGuardiasDetalle.FieldByName('id_tipo_jornada').AsInteger;
      IdTipoContrato := zGuardiasDetalle.FieldByName('id_tipo_contrato').AsInteger;
      IdTipoRegimen  := zGuardiasDetalle.FieldByName('id_tipo_regimen').AsInteger;
  end;

  zTipoNomina.LocateEx('Titulo','CATORCENAL',[]);
  zGuardiasDetalle.Append;
  cxTipoNomina.DataBinding.DataSource.DataSet.FieldByName('IdTipoNomina').AsInteger := zTipoNomina.FieldByName('IdTipoNomina').AsInteger;
  zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime := date;
  zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime  := date +  zTipoNomina.FieldByName('DiasTrabajados').AsInteger;
  zGuardiasDetalle.FieldByName('IdGuardia').AsInteger    := zguardias.FieldByName('IdGuardia').AsInteger;
  zGuardiasDetalle.FieldByName('IdDocumentoReporte').AsInteger    := zguardias.FieldByName('IdDoctoContrato').AsInteger;
  zGuardiasDetalle.FieldByName('Activo').AsString        := 'Si';
  zGuardiasDetalle.FieldByName('sIdPlataforma').AsString := plataformas.FieldByName('sIdPlataforma').AsString;
  //zGuardiasDetalle.FieldByName('id_tipo_jornada').AsInteger  := IdJornada;
  //zGuardiasDetalle.FieldByName('id_tipo_contrato').AsInteger := IdTipoContrato;
  //zGuardiasDetalle.FieldByName('id_tipo_regimen').AsInteger  := IdTipoRegimen;
  cxTipoJornada.DataBinding.DataSource.DataSet.FieldByName('id_tipo_jornada').AsInteger := IdJornada;
  cxTipoContrato.DataBinding.DataSource.DataSet.FieldByName('id_tipo_contrato').AsInteger := IdTipoContrato;
  cxRegimenContrato.DataBinding.DataSource.DataSet.FieldByName('id_tipo_regimen').AsInteger := IdTipoRegimen;
  cxGuardiaNumero.SetFocus;
end;

procedure TFrmConfGuardias.btnCancelClick(Sender: TObject);
begin
  frmBarraH11.btnActive;
  cxSplitter1.Visible := True;
  PanelD.Visible:=False;
  cxLeyenda.Caption:=titulo;
  zGuardiasDetalle.Cancel;
  PermisosBotones(FrmConfGuardias,btnPermisos);
end;

procedure TFrmConfGuardias.btnDeleteClick(Sender: TObject);
var
    zFiltroEmpleado : tUniQuery;
begin
   zFiltroEmpleado:=tUniquery.create(nil);
   zFiltroEmpleado.Connection := Connection.uConnection;

    if zGuardiasDetalle.FieldByName('Estado').AsString = 'Bajo' then
    begin
       messageDLG('No se puede continuar la Guardia Bajó!', mtInformation, [mbOk], 0);
       exit;
    end;

    AsignarSQL(zFiltroEmpleado,'FiltroEmpleados',pUpdate);
    FiltrarDataSet(zFiltroEmpleado,'IdGuardiaDetalle',[zGuardiasDetalle.FieldByName('IdGuardiaDetalle').ASString]);
    zFiltroEmpleado.Open;

     if zFiltroEmpleado.RecordCount > 0 then
    begin
       messageDLG('No se puede Eliminar la Guardia Contiene Personal', mtInformation, [mbOk], 0);
       exit;
    end;

    If MessageDlg('Desea eliminar la guardia '#13+zGuardias.FieldByName('Guardia').AsString+'?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      zGuardiasDetalle.Delete;
      zGuardiasDetalle.ApplyUpdates();
    end;

    zFiltroEmpleado.Destroy;;
end;

procedure TFrmConfGuardias.btnDetalleClick(Sender: TObject);
begin
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
end;

procedure TFrmConfGuardias.btnEditClick(Sender: TObject);
begin
  if zGuardiasDetalle.FieldByName('Estado').AsString = 'Bajo' then
  begin
     messageDLG('No se puede continuar la Guardia Bajó!', mtInformation, [mbOk], 0);
     exit;
  end;

  frmBarraH11.btnEditClick(Sender);
  cxLeyenda.Caption:=titulo + '[Editando]';
  cxSplitter1.Visible := False;
  cxSplitterOpciones.Visible := False;
  PanelDetalle.Visible       := False;
  PanelD.Visible:=True;
  zGuardiasDetalle.Edit;
end;

procedure TFrmConfGuardias.btnPostClick(Sender: TObject);
var
  Edita: Boolean;
  NomTitulo: String;
  uExitsNomina: TUniquery;
begin
  Edita := False;
  if zGuardiasDetalle.State = dsEdit then
    Edita:= True;
  zGuardiasDetalle.Post;
  if Edita then
  begin
    if connection.Uconnection.Connected then
      connection.Uconnection.connected;

    uExitsNomina := TuniQuery.Create(nil);
    uExitsNomina.Connection:= connection.Uconnection;
    uExitsNomina.SQL.Text := 'Select nn.* from nom_nomina nn where nn.IdGuardiaDetalle=:IdGuardiaDetalle';
    uExitsNomina.ParamByName('IdGuardiaDetalle').AsString:= zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsString;
    uExitsNomina.Open;
    if uExitsNomina.RecordCount>0 then
    begin
     NomTitulo:= InputBox('Editar Titulo de Nómina', 'Titulo de Nómina', uExitsNomina.FieldByName('Titulo').AsString);

     uExitsNomina.Edit;
     uExitsNomina.FieldByName('Titulo').AsString := NomTitulo;
     uExitsNomina.FieldByName('FechaInicioN').AsDateTime := zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime;
     uExitsNomina.FieldByName('FechaTerminoN').AsDateTime := zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime;
     uExitsNomina.FieldByName('FechaPagoNomina').AsDateTime := zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime;
     uExitsNomina.FieldByName('Dias').AsFloat := (zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime - zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime) + 1;
     uExitsNomina.Post;
    end;
    uExitsNomina.Free;

  end;

  btnCancelClick(Sender);
  PermisosBotones(FrmConfGuardias,btnPermisos);
end;

procedure TFrmConfGuardias.btnPrinterClick(Sender: TObject);
begin
    if connection.uContrato.FieldByName('Titulo').AsString = 'typhoon' then
    begin
        if zGuardiasDetalle.FieldByName('IdTipoNomina').AsInteger = 2 then
        begin
            try
              asistencias.Active:=False;
              AsignarSQL(asistencias,'FiltroFechas',pUpdate);
              FiltrarDataSet(asistencias,'IdPersonal,fecha_inicio_filtrar,fecha_termino_filtrar',[-1,fechaSQL(zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime),fechaSQL(zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime) ]);
              asistencias.Open;
            Except
            end;

            NominaEmbarcacion;
        end;

        if zGuardiasDetalle.FieldByName('IdTipoNomina').AsInteger = 4 then
        begin
            try
              asistencias.Active:=False;
              AsignarSQL(asistencias,'FiltroFechas',pUpdate);
              FiltrarDataSet(asistencias,'IdPersonal,fecha_inicio_filtrar,fecha_termino_filtrar',[-1,fechaSQL(zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime),fechaSQL(zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime) ]);
              asistencias.Open;
            Except

            end;

            NominaEmbarcacion;
        end;
    end;
end;

procedure TFrmConfGuardias.btnRefreshClick(Sender: TObject);
begin
   zGuardias.Refresh;
   zTipoNomina.Refresh;
   plataformas.Refresh;
   zTipoJornada.Refresh;
   zTipoContrato.Refresh;
   zRegimenContrato.Refresh;
   zGuardiasDetalle.Refresh;
end;

procedure TFrmConfGuardias.BView_empresaCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  zGuardiasDetalle.Active:=False;
  AsignarSQL(zGuardiasDetalle,'FiltroGuardias',pUpdate);
  FiltrarDataSet(zGuardiasDetalle,'IdGuardia',[zGuardias.FieldByName('IdGuardia').AsString]);
  zGuardiasDetalle.Open;
end;

procedure TFrmConfGuardias.BView_empresaDblClick(Sender: TObject);
begin
    if BView_Empresa.OptionsView.CellAutoHeight then
       BView_Empresa.OptionsView.CellAutoHeight := False
    else
       BView_Empresa.OptionsView.CellAutoHeight := True;
end;

procedure TFrmConfGuardias.cxFechaInicioExit(Sender: TObject);
begin
   cxTipoNomina.OnExit(sender);
end;

procedure TFrmConfGuardias.cxTipoNominaExit(Sender: TObject);
begin
   cxtipoNomina.Style.Color := global_color_salidaERP;
   if (zGuardiasDetalle.State = dsInsert) or (zGuardiasDetalle.State = dsEdit) then
   begin
       zTipoNomina.LocateEx('IdTipoNomina', cxTipoNomina.DataBinding.DataSource.DataSet.FieldByName('IdTipoNomina').AsInteger,[]);
       zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime := cxFechaInicio.Date;
       zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime  := incDay(cxFechaInicio.Date, zTipoNomina.FieldByName('DiasTrabajados').AsInteger -1);

       cxFechaTermino.Date := incDay(cxFechaInicio.Date, zTipoNomina.FieldByName('DiasTrabajados').AsInteger -1);
   end;
end;

procedure TFrmConfGuardias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
guardar_leer_grid(BView_empresa,FrmConfGuardias,1);
guardar_leer_grid(Grid_GuardiasDBTableView1,FrmConfGuardias,1);
  action := cafree;
end;

procedure TFrmConfGuardias.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
  cxLeyenda.Caption:=titulo;
  titulo:=' Periodos Guardias';
  titulo2:='Empleados';
  cxLeyenda.Caption:=titulo;

  zGuardias.Active:=False;
  AsignarSQL(zGuardias,'guardia_empresas',pUpdate);
  zGuardias.Open;

  zGuardiasDetalle.Active:=False;
  AsignarSQL(zGuardiasDetalle,'FiltroGuardias',pUpdate);
  FiltrarDataSet(zGuardiasDetalle,'IdGuardia',['1']);
  zGuardiasDetalle.Open;

  AsignarSQL(zTipoNomina,'rh_tiponomina',pUpdate);
  FiltrarDataSet(zTipoNomina,'Id',['-1']);
  zTipoNomina.Open;

  AsignarSQL(plataformas,'plataformas',pUpdate);
  FiltrarDataSet(plataformas,'Plataforma',['-1']);
  plataformas.Open;

  TraerGuardias.Active:=False;
  AsignarSQL(TraerGuardias,'TGuardias',pUpdate);
  FiltrarDataSet(TraerGuardias,'Activo',['Si']);
  TraerGuardias.Open;

  zTipoJornada.Active:=False;
  AsignarSQL(zTipoJornada,'cfdi_tipo_jornada',pUpdate);
  zTipoJornada.Open;

  zTipoContrato.Active:=False;
  AsignarSQL(zTipoContrato,'cfdi_tipo_contrato',pUpdate);
  zTipoContrato.Open;

  zRegimenContrato.Active:=False;
  AsignarSQL(zRegimenContrato,'cfdi_tipo_regimen_contrato',pUpdate);
  zRegimenContrato.Open;

  zGuardiasDetalle.Active:=False;
  AsignarSQL(zGuardiasDetalle,'FiltroGuardias',pUpdate);
  FiltrarDataSet(zGuardiasDetalle,'IdGuardia',[zGuardias.FieldByName('IdGuardia').AsString]);
  zGuardiasDetalle.Open;

  PermisosBotones(FrmConfGuardias, btnPermisos);
  if connection.uContrato.FieldByName('FK_Titulo').AsString = 'TYPHOON' then
     frmBarraH11.btnPrinter.Visible := True;
guardar_leer_grid(BView_empresa,FrmConfGuardias,0);
guardar_leer_grid(Grid_GuardiasDBTableView1,FrmConfGuardias,0);
end;


procedure TFrmConfGuardias.ImprimirNominaOP;
Var
  personalGrid : String;
  zPersonal :TUniQuery;
begin
   zPersonal:=tUniquery.create(nil);
   zPersonal.Connection := Connection.uConnection;

   AsignarSQL(zPersonal,'FiltroEmpleados',pUpdate);
   FiltrarDataSet(zPersonal,'IdGuardiaDetalle',[zGuardiasDetalle.FieldByName('IdGuardiaDetalle').ASString]);
   zPersonal.Open;

   while not zPersonal.Eof do
   begin
       personalGrid := personalGrid + zPersonal.FieldByName('CodigoPersonal').AsString +',';
       zPersonal.Next;
   end;

   procReporteNominasRH(False, zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime, zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime, zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime, zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime, frmConfGuardias, frxAsistencia.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.uConnection, global_grupo, 'nominas'),
   zGuardiasDetalle.FieldByName('IdGuardia').AsString,zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsString,'OPERACIONES',personalGrid);

   zPersonal.Destroy;
end;

procedure TFrmConfGuardias.NominaEmbarcacion;
var
  personalGrid : String;
  zPersonal :TUniQuery;
begin
   zPersonal:=tUniquery.create(nil);
   zPersonal.Connection := Connection.uConnection;

   AsignarSQL(zPersonal,'FiltroEmpleados',pUpdate);
   FiltrarDataSet(zPersonal,'IdGuardiaDetalle',[zGuardiasDetalle.FieldByName('IdGuardiaDetalle').ASString]);
   zPersonal.Open;

   while not zPersonal.Eof do
   begin
       personalGrid := personalGrid + zPersonal.FieldByName('CodigoPersonal').AsString +',';
       zPersonal.Next;
   end;

   procReporteNominasEB(False, zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime, zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime, zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime, zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime, frmConfGuardias, frxAsistencia.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.uConnection, global_grupo, 'nominas'),
   zGuardiasDetalle.FieldByName('IdGuardia').AsString,zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsString,'ABORDO',personalGrid);

   zPersonal.Destroy;
end;

end.
