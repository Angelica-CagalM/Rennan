unit frm_ProgramaPresupuesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, global, db, frm_connection, frm_barra, ComCtrls, DateUtils,
  DBCtrls, StdCtrls, Mask, Menus, ADODB,  RXDBCtrl, ZDataset, utilerias, unitGenerales,
  ZAbstractRODataset, ZAbstractDataset, rxToolEdit, unitValidacion, unitMetodos,
  rxCurrEdit, ExtCtrls, unitexcepciones,UnitValidaTexto,
  UnitTablasImpactadas, unitactivapop,  Buttons, cxGraphics,// sPageControl,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,//DBDateTimePicker,Newpanel,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxProgressBar,
  cxLabel, cxCurrencyEdit, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, cxMemo, cxGroupBox, dxLayoutControlAdapters, cxButtons,
  MemDS, DBAccess, Uni, frm_barraH2, frm_barraH1, cxSplitter, dxBarBuiltInMenu,
  cxRadioGroup, cxGridChartView, cxGridDBChartView, cxPC, UnitReportes,
  cxCheckBox, dxToggleSwitch, dxDBToggleSwitch, CxGridExportLink, ShellApi,
  frxClass, frxDBSet;

type
  TfrmProgramPres = class(TForm)
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    Panel3: TPanel;
    Panel4: TPanel;
    cxVistaOrdenes: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_ordenes: TcxGrid;
    Panel1: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    cxLabel1: TcxLabel;
    cxProgressBar1: TcxProgressBar;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    Panel5: TPanel;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    cxPageDetalle: TcxPageControl;
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
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxSplitterOpciones: TcxSplitter;
    cxVistaDescrip: TcxGridDBColumn;
    cxVistaCantidad: TcxGridDBColumn;
    cxVistaUnidad: TcxGridDBColumn;
    cxVistaPrecioUnidad: TcxGridDBColumn;
    cxVistaCantTotal: TcxGridDBColumn;
    dxLayoutControl1: TdxLayoutControl;
    Actividad: TcxDBTextEdit;
    Nivel: TcxDBCurrencyEdit;
    Descripcion: TcxDBMemo;
    Venta: TcxDBCurrencyEdit;
    IdMedida: TcxDBLookupComboBox;
    Fecha_inicio: TcxDBDateEdit;
    Fecha_Fin: TcxDBDateEdit;
    Tipo: TcxDBComboBox;
    Cantidad: TcxDBCurrencyEdit;
    Ponderado: TcxDBCurrencyEdit;
    Costo: TcxDBCurrencyEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    Nivell: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    zProgramPres: TUniQuery;
    ds_medida: TDataSource;
    ds_programPres: TDataSource;
    zMedida: TUniQuery;
    ds_moneda: TDataSource;
    zMoneda: TUniQuery;
    cxVistaNumeroOrden: TcxGridDBColumn;
    cxVistaCodigo: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    PanelTipo: TPanel;
    Grid_Bitacora: TcxGrid;
    BView_filtro: TcxGridDBTableView;
    BView_filtroColumn2: TcxGridDBColumn;
    Grid_BitacoraLevel1: TcxGridLevel;
    cxSplitTipo: TcxSplitter;
    cxsNumeroOrden: TcxDBLookupComboBox;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    zOrdenTrabajo: TUniQuery;
    dsOrdenTrabajo: TDataSource;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_ordenesEnter(Sender: TObject);
    procedure grid_ordenesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_ordenesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_ordenesCellClick(Column: TColumn);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure ActualizaReporte(sFrente: string; valor: boolean);
//    procedure AsginaFrenteUsuario(dParamFrente: string);

    function posibleBorrar(idOrig: string): boolean;
    procedure OrdenesdeTrabajoiConsecutivoSetText(Sender: TField;
      const Text: string);
    procedure OrdenesdeTrabajoiJornadaSetText(Sender: TField;
      const Text: string);
    procedure OrdenesdeTrabajoiConsecutivoTierraSetText(Sender: TField;
      const Text: string);

    procedure cxVistaOrdenesCellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure OrdenesdeTrabajoCalcFields(DataSet: TDataSet);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxVistaOrdenesDblClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProgramPres: TfrmProgramPres;
  Opcion, FrentT, formato :String ;
  sTipo, sPlataforma, sPernocta, titulo,sEmbarcacion : String ;
  sIdOrig : string;
  btnPermisos, Tipo, EsCentroCosto : String;
implementation

uses
    frm_pedidos,
    frm_Pernoctan, frm_plataformas, frm_clientes, Frm_Embarcacion,
  frm_Presupuesto, frm_Proyectos;

{$R *.dfm}

procedure TfrmProgramPres.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmProgramPres.EnterControl(Sender: TObject);
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

procedure TfrmProgramPres.SalidaControl(Sender: TObject);
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
end;


procedure TfrmProgramPres.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    guardar_leer_grid(BView_filtro,frmProgramPres,1);
    guardar_leer_grid(cxVistaOrdenes,frmProgramPres,1);
    action := cafree ;
end;

procedure TfrmProgramPres.FormShow(Sender: TObject);
begin

     btnPermisos := global_btnPermisos;
    try

    zProgramPres.Active := False;
    AsignarSQL(zProgramPres, 'programa_presupuesto', pUpdate);
     FiltrarDataSet(zProgramPres,  'IdActividad',[-1]);
    zProgramPres.Open;

    zMedida.Active := False;
    AsignarSQL(zMedida, 'master_medidas', pUpdate);
    zMedida.Open;

    zMoneda.Active := False;
    AsignarSQL(zMoneda, 'master_moneda', pUpdate);
    zMoneda.Open;

    zOrdenTrabajo.Active := False;
    AsignarSQL(zOrdenTrabajo, 'ordenesdetrabajo', pUpdate);
    FiltrarDataSet(zOrdenTrabajo, 'Contrato, TProyecto', [Global_contrato, 'PRESUPUESTO']);
    zOrdenTrabajo.Open;

       pnlBtn2.Visible := False;
       Panel4.Visible := False;
        cxSplitter1.Visible := False;


       cxSplitterOpciones.Visible := False;
       PanelDetalle.Visible := False;

       btnCancelClick(Sender);


       PermisosBotones(frmProgramPres,btnPermisos);

    except
    on e : exception do
    begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al iniciar formulario', 0);
    end;


  end;

//    pnlBtn2.Visible := False;
//       Panel4.Visible := False;
//       cxSplitter1.Visible := False;
    guardar_leer_grid(BView_filtro,frmProgramPres,0);
    guardar_leer_grid(cxVistaOrdenes,frmProgramPres,0);
end;

procedure TfrmProgramPres.grid_ordenesEnter(Sender: TObject);
begin
  If frmBarraH21.btnCancel.Enabled = True then
      frmBarraH21.btnCancel.Click ;

end;

procedure TfrmProgramPres.grid_ordenesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmBarraH21.btnCancel.Enabled = True then
      frmBarraH21.btnCancel.Click ;
end;

procedure TfrmProgramPres.grid_ordenesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmBarraH21.btnCancel.Enabled = True then
      frmBarraH21.btnCancel.Click ;

end;

procedure TfrmProgramPres.grid_ordenesCellClick(Column: TColumn);
begin
  If frmBarraH21.btnCancel.Enabled = True then
      frmBarraH21.btnCancel.Click ;

//  if progreso2.Visible = True then
//     progreso2.Visible := False;
end;

procedure TfrmProgramPres.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try

 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ProgramaPresupuesto', 'Al actualizar grid', 0);
  end;
 end;
end;

procedure TfrmProgramPres.Insertar1Click(Sender: TObject);
begin
    frmBarraH11.btnAdd.click
end;

procedure TfrmProgramPres.OrdenesdeTrabajoCalcFields(DataSet: TDataSet);
var
   dDiaSiguiente :tDate;
begin
{  if ordenesdetrabajo.RecordCount > 0 then
    begin
        //Avances Acumulados
        dDiaSiguiente := IncDay(date);
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Text := 'SELECT ROUND(AvancesAnteriores("'+FormatDateTime('yyyy-mm-dd', dDiaSiguiente)+'", :Orden, :Folio), 4) AS dAvanceAcumulado;';
        connection.QryBusca2.ParamByName('Orden').AsString := global_contrato;
        connection.QryBusca2.ParamByName('Folio').AsString := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString;
        connection.QryBusca2.Open;

        ordenesdetrabajo.FieldByName('dAvance').AsFloat := xRound(connection.QryBusca2.FieldByName('dAvanceAcumulado').AsFloat,2);

    end; }
end;

procedure TfrmProgramPres.OrdenesdeTrabajoiConsecutivoSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmProgramPres.OrdenesdeTrabajoiConsecutivoTierraSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmProgramPres.OrdenesdeTrabajoiJornadaSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmProgramPres.Editar1Click(Sender: TObject);
begin
    frmBarraH11.btnEdit.Click
end;

procedure TfrmProgramPres.Registrar1Click(Sender: TObject);
begin
    frmBarraH21.btnPost.Click
end;

procedure TfrmProgramPres.Can1Click(Sender: TObject);
begin
    frmBarraH21.btnCancel.Click
end;

procedure TfrmProgramPres.cxButton1Click(Sender: TObject);
begin
    if not MostrarFormChild('FrmEmbarcacion', global_dxBarManagerPrincipal) then
    begin
       // global_frmActivo := 'frmPresupuesto';
       global_frmActivo := 'frmProyectos';
        Application.CreateForm(TFrmEmbarcacion, FrmEmbarcacion);
        FrmEmbarcacion.show
    end;
end;

procedure TfrmProgramPres.cxButton2Click(Sender: TObject);
begin
    if not MostrarFormChild('frmClientes', global_dxBarManagerPrincipal) then
    begin
       //global_frmActivo := 'frmPresupuesto';
        global_frmActivo := 'frmProyectos';
        Application.CreateForm(TfrmClientes, frmClientes);
        frmClientes.show
    end;
end;

procedure TfrmProgramPres.cxVistaOrdenesCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
{    zConvenios.Filtered := False;
    zConvenios.Filter := 'sNumeroOrden = ' + QuotedStr(ordenesdetrabajo.FieldByName('snumeroorden').AsString) ;
    zConvenios.Filtered := True;}
end;

procedure TfrmProgramPres.cxVistaOrdenesDblClick(Sender: TObject);
begin
    if cxVistaOrdenes.OptionsView.CellAutoHeight then
       cxVistaOrdenes.OptionsView.CellAutoHeight := False
    else
       cxVistaOrdenes.OptionsView.CellAutoHeight := True;
end;



procedure TfrmProgramPres.Eliminar1Click(Sender: TObject);
begin
    frmBarraH11.btnDelete.Click
end;

//function TfrmProgramPres.tablasDependientes(idOrig: string): boolean;
//var
//  ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList;
//begin
//  result := true;
//  ParamNamesSET:=TStringList.Create;ParamValuesSET:=TStringList.Create;ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
//  ParamNamesSET.Add('sNumeroOrden');ParamValuesSET.Add(OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString);
//  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
//  ParamNamesWHERE.Add('sNumeroOrden');ParamValuesWHERE.Add(idOrig);
//  if not UnitTablasImpactadas.impactar('ordenesdetrabajo',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
//  begin
//    result := false;
//    showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
//  end
//end;

function TfrmProgramPres.posibleBorrar(idOrig: string): boolean;
var
  ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sNumeroOrden');ParamValuesWHERE.Add(idOrig);
  result := not UnitTablasImpactadas.hayDependientes('ordenesdetrabajo',ParamNamesWHERE,ParamValuesWHERE);
end;



// Funcion para actualizar todos los consecutivos de los Reportes Diarios...
procedure TfrmProgramPres.ActualizaReporte(sFrente: string; valor :boolean);
var cad, reporte : string;
var i, x, j : integer;
begin
     //Busqueda de los reportes diarios para cambiar el numero de reporte...
     connection.qryBusca.Active := False ;
     connection.qryBusca.SQL.Clear ;
     connection.qryBusca.SQL.Add('select sNumeroReporte from reportediario where sContrato = :Contrato and sNumeroOrden =:Frente ');
     connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
     connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato ;
     connection.qryBusca.Params.ParamByName('Frente').DataType   := ftString ;
     connection.qryBusca.Params.ParamByName('Frente').Value      := sFrente;
     connection.qryBusca.Open;

     if connection.QryBusca.RecordCount > 0 then
     begin
//         progreso2.Visible  := True;
//         progreso2.Min      := 1;
//         progreso2.Position := 1;
//         progreso2.Max      := connection.QryBusca.RecordCount + 1;
         while not connection.QryBusca.Eof do
         begin
             //Se Forma la Cadena cuando se cambia el nombre de frente...
             i   := length(connection.QryBusca.FieldValues['sNumeroReporte']);
             cad := copy(connection.QryBusca.FieldValues['sNumeroReporte'],(i+1)-3,3);
             if  valor = true then
//                 reporte := tsFormato.Text + cad
             else
                 reporte := sFrente + '-'+ cad;

             //Actualizacion del reporte diario..
             connection.qryBusca2.Active := False ;
             connection.qryBusca2.SQL.Clear ;
             connection.qryBusca2.SQL.Add('update reportediario set  sNumeroReporte = :Nuevo where sContrato = :Contrato and sNumeroOrden =:Frente and sNumeroReporte = :Numero');
             connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
             connection.qryBusca2.Params.ParamByName('Contrato').Value    := global_contrato ;
             connection.qryBusca2.Params.ParamByName('Nuevo').DataType    := ftString ;
             connection.qryBusca2.Params.ParamByName('Nuevo').Value       := reporte;
             connection.qryBusca2.Params.ParamByName('Frente').DataType   := ftString ;
             connection.qryBusca2.Params.ParamByName('Frente').Value      := sFrente;
             connection.qryBusca2.Params.ParamByName('Numero').DataType   := ftString ;
             connection.qryBusca2.Params.ParamByName('Numero').Value      := connection.QryBusca.FieldValues['sNumeroReporte'];
             connection.qryBusca2.ExecSQL ;

             //Actualizacion del FOTOGRAFIAS.. 22 Frebrero de 2011..
             connection.qryBusca2.Active := False ;
             connection.qryBusca2.SQL.Clear ;
             connection.qryBusca2.SQL.Add('update reportefotografico set  sNumeroReporte = :Nuevo where sContrato = :Contrato and sNumeroOrden =:Frente and sNumeroReporte = :Numero');
             connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
             connection.qryBusca2.Params.ParamByName('Contrato').Value    := global_contrato ;
             connection.qryBusca2.Params.ParamByName('Nuevo').DataType    := ftString ;
             connection.qryBusca2.Params.ParamByName('Nuevo').Value       := reporte;
             connection.qryBusca2.Params.ParamByName('Frente').DataType   := ftString ;
             connection.qryBusca2.Params.ParamByName('Frente').Value      := sFrente;
             connection.qryBusca2.Params.ParamByName('Numero').DataType   := ftString ;
             connection.qryBusca2.Params.ParamByName('Numero').Value      := connection.QryBusca.FieldValues['sNumeroReporte'];
             connection.qryBusca2.ExecSQL ;

             connection.QryBusca.Next;
         end;
         if valor = True then
            messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);
     end
     else
        if valor = True then
           messageDLG('No se encontraron Reportes Diarios con el Formato Anterior',mtInformation, [mbOK], 0);

end;


procedure TfrmProgramPres.btnAddClick(Sender: TObject);
begin
  try
   cxLeyenda.Caption:=titulo + '[Añadiendo]';
   frmBarraH11.btnAddClick(Sender);
   //frmBarraH21.btnActive;
   pnlBtn2.Visible :=True;
    panel4.Visible :=TRue;
    cxSplitter1.Visible :=true;


    zProgramPres.Append;
    zProgramPres.FieldByName('Fecha_Inicio').AsDatetime := date;
    zProgramPres.FieldByName('Fecha_Fin').AsDatetime := date+1;
    zProgramPres.FieldByName('Actividad').AsString := autoFolio(zProgramPres, 'programa_presupuesto');
    zProgramPres.FieldByName('sContrato').AsString:=global_contrato;
    Descripcion.DataBinding.DataSource.DataSet.FieldByName('Descripcion').AsString := '*';
    IdMedida.ItemIndex := 21;
   // IdMedida.DataBinding.DataSource.DataSet.FieldByName('IdMedida').AsInteger :=
    cxsNumeroOrden.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString := zOrdenTrabajo.FieldByName('sNumeroOrden').AsString;
    zProgramPres.FieldByName('Ponderado').AsInteger := 0;
    zProgramPres.FieldByName('Cantidad').AsInteger := 1;
    zProgramPres.FieldByName('Costo').AsInteger := 0;
    zProgramPres.FieldByName('Venta').AsInteger := 0;
    zProgramPres.FieldByName('Tipo').AsString := 'ACTIVIDAD';
    Actividad.Properties.ReadOnly := True;


  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al agregar registro', 0);
  end;
  end;

  grid_ordenes.Enabled:=false;



end;

procedure TfrmProgramPres.btnCancelClick(Sender: TObject);
begin
 try
  frmBarraH21.btnCancelClick(Sender);
  frmBarraH11.btnActive;

  grid_ordenes.Enabled:=True;

  frmBarraH21.btnActive;
  cxLeyenda.Caption:=titulo;
  cxSplitter1.Visible := False;
  Panel4.Visible  :=False;
  pnlBtn2.Visible := False;
  ds_ProgramPres.DataSet.Cancel;

  PermisosBotones(frmProgramPres,btnPermisos);
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al cancelar', 0);
  end;
 end;

end;

procedure TfrmProgramPres.btnDeleteClick(Sender: TObject);
var
  cadena: string;
begin
  if zProgramPres.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       if not posibleBorrar(zProgramPres.FieldByName('sNumeroOrden').AsString) then
       begin
          if MessageDlg('Desea eliminar la información reportada en el Programa de Trabjo '+zProgramPres.FieldByName('sIdFolio').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          begin
              exit;
          end;
        end;

        //Llamada a funcion Buscar Frente en la Base de Datos..

        opcion := 'borrar';
        FrentT := zProgramPres.FieldValues['sNumeroOrden'];
        kardex_almacen('Elimina Folio Programa  No. [' + FrentT + ']', 'Otros Movimientos');

        zProgramPres.Delete;

//        if global_frmActivo = 'frm_pedidos' then
//        begin
//            frmPedidos.zqOrdenes.Refresh;
//
//        end;
    end;
end;


procedure TfrmProgramPres.btnEditClick(Sender: TObject);
begin
   cxLeyenda.Caption:=titulo+'[Editando]';
   frmBarraH11.btnEditClick(Sender);
   pnlBtn2.Visible :=True;
   panel4.Visible :=TRue;
   cxSplitter1.Visible :=true;
   zProgramPres.Edit;
end;

procedure TfrmProgramPres.btnPostClick(Sender: TObject);
var
   cadena   : string;
   nombres,
   cadenas  : TStringList;
   lEdita   : boolean;
   indice   : integer;
   lContinua : boolean;
begin
   try

     frmBarraH21.btnActive;
     cxLeyenda.Caption:=titulo;
      cxSplitter1.Visible := False;
      Panel4.Visible  :=False;
      pnlBtn2.Visible := False;
      ds_programPres.DataSet.Post;

//         cxLeyenda.Caption:=titulo;
//    Panel2.Visible:=False;
//    frmBarraH11.Visible:=True;
//    grid_Materiales.Enabled:=True;
//    ds_insumos.DataSet.Post;

     grid_ordenes.Enabled         := true;


  PermisosBotones(frmProgramPres,btnPermisos);

   finally

   end;
end;



procedure TfrmProgramPres.btnRefreshClick(Sender: TObject);
begin
 zProgramPres.Refresh;
end;

end.

