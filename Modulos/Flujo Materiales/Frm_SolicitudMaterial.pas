unit Frm_SolicitudMaterial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Math, System.Variants, System.Classes, Vcl.Graphics,
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
  dxSkinXmas2008Blue, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxDBLookupComboBox, dxBarBuiltInMenu, dxLayoutContainer, dxLayoutControl,
  cxPC, frm_barraH2, cxSplitter, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxProgressBar, Vcl.StdCtrls, cxButtons, cxLabel, frm_barraH1, Vcl.ExtCtrls,
  global, UnitGenerales, MemDS, DBAccess, Uni,
  dxLayoutcxEditAdapters, cxDBEdit, cxCheckBox, cxGroupBox, cxRadioGroup,
  cxMemo, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxMaskEdit, cxCalendar,
  cxTextEdit, frxClass, frxDBSet, UnitValidaTexto, UnitExcepciones,
  Vcl.ComCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.DBCtrls,
  UnitValidacion, Utilerias, ExportaExcel, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, dxLayoutControlAdapters, cxGridChartView, cxGridDBChartView, UnitReportes,
  dxToggleSwitch, dxDBToggleSwitch, frxExportPDF, dxCore, cxDateUtils,
  cxCurrencyEdit, cxCalc;

type
  TFrmSolicitudMaterial = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    PanelPrincipal: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxSplitter1: TcxSplitter;
    grid_solicitud: TcxGrid;
    cxView_Requsicion: TcxGridDBTableView;
    cxView_RequsicionColumn1: TcxGridDBColumn;
    cxView_RequsicionColumn3: TcxGridDBColumn;
    cxView_RequsicionColumn2: TcxGridDBColumn;
    cxView_RequsicionColumn8: TcxGridDBColumn;
    grid_solicitudLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    cxPageDetalle: TcxPageControl;
    cxTabMaterial: TcxTabSheet;
    cxView_RequsicionColumn5: TcxGridDBColumn;
    cxView_RequsicionColumn7: TcxGridDBColumn;
    cxGridMateriales: TcxGrid;
    cxView_Materiales: TcxGridDBTableView;
    cxGridMaterialesLevel1: TcxGridLevel;
    cxView_MaterialesColumn1: TcxGridDBColumn;
    cxView_MaterialesColumn2: TcxGridDBColumn;
    cxView_MaterialesColumn3: TcxGridDBColumn;
    cxView_MaterialesColumn4: TcxGridDBColumn;
    cxView_MaterialesColumn7: TcxGridDBColumn;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxSplitter4: TcxSplitter;
    PanelDonw6: TPanel;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dsDepartamento: TDataSource;
    zDepartamento: TUniQuery;
    anexo_solicitud: TUniQuery;
    dsSolicitud: TDataSource;
    ds_anexo_psolicitud: TDataSource;
    anexo_psolicitud: TUniQuery;
    cxView_RequsicionColumn9: TcxGridDBColumn;
    dxLayoutControl1: TdxLayoutControl;
    tdidFecha: TcxDBDateEdit;
    tdIdFecha2: TcxDBDateEdit;
    tsDepartamento: TcxDBLookupComboBox;
    tsLugarEntrega: TcxDBLookupComboBox;
    tsSolicitante: TcxDBTextEdit;
    tmComentarios: TcxDBMemo;
    tsNumeroOrden: TcxDBLookupComboBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    Registrar1: TMenuItem;
    Cancelar1: TMenuItem;
    N1: TMenuItem;
    Imprimir1: TMenuItem;
    ExportaraExcel1: TMenuItem;
    N6: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    consumibles: TUniQuery;
    dtConsumibles: TDataSource;
    Partidas: TUniQuery;
    dtsPartidas: TDataSource;
    QPernoctan: TUniQuery;
    DsPernoctan: TDataSource;
    frxEntrada: TfrxReport;
    OpenXLS: TOpenDialog;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
    Qordenes_trabajo: TUniQuery;
    ds_ordenes_trabajo: TDataSource;
    zq_contratos: TUniQuery;
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
    zGrafica: TUniQuery;
    dsGrafica: TDataSource;
    zReporteDetalle: TUniQuery;
    cxEliminarDetalle: TcxButton;
    cbCosto: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    zCosto: TUniQuery;
    dsCosto: TDataSource;
    cxView_RequsicionColumn10: TcxGridDBColumn;
    cbRecurso: TcxDBLookupComboBox;
    dxLayoutItem19: TdxLayoutItem;
    zRecurso: TUniQuery;
    ds_Recurso: TDataSource;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxRequisita: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxButton1: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    ds_firma: TDataSource;
    zFirma: TUniQuery;
    cxFirma2: TcxDBLookupComboBox;
    dxLayoutItem14: TdxLayoutItem;
    plataforma: TUniQuery;
    ds_plataforma: TDataSource;
    cxView_RequsicionColumn4: TcxGridDBColumn;
    frxPDFExport1: TfrxPDFExport;
    cxView_RequsicionColumn11: TcxGridDBColumn;
    Panel4: TPanel;
    dxLayoutControl4: TdxLayoutControl;
    btnLimpiarF: TcxButton;
    btnExpandir: TcxButton;
    cxFiltroRequerido: TcxButton;
    cxLabel1: TcxLabel;
    cxInicioRequerido: TcxDateEdit;
    cxFinRequerido: TcxDateEdit;
    cxOpcionesFiltro: TcxComboBox;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    cxVigencia: TcxDBDateEdit;
    dxLayoutItem10: TdxLayoutItem;
    PopMenuDetalle: TPopupMenu;
    ActualizarMaterial1: TMenuItem;
    PanelProgreso: TPanel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    cxDescrip: TcxTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxView_RequsicionColumn6: TcxGridDBColumn;
    requisiciones: TUniQuery;
    ds_requisiciones: TDataSource;
    dxLayoutItem20: TdxLayoutItem;
    cxRequisicion: TcxDBLookupComboBox;
    edtFolioSol: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    zFolio: TUniQuery;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    cxCantidad: TcxDBCalcEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxButton2: TcxButton;
    cxView_RequsicionColumn12: TcxGridDBColumn;
    cxView_MaterialesColumn5: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxView_MaterialesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxView_RequsicionCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxView_RequsicionKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure frxEntradaGetValue(const VarName: string; var Value: Variant);
    procedure btnPrinterClick(Sender: TObject);
    procedure ExportaraExcel1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxView_RequsicionCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tabInformesShow(Sender: TObject);
    procedure btnImpInformeClick(Sender: TObject);
    procedure cxEliminarDetalleClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxPageDetalleClick(Sender: TObject);
    procedure tdidFechaExit(Sender: TObject);
    procedure tdIdFecha2Exit(Sender: TObject);
    procedure requisitaXcotizacion(requisicion:String);
    procedure btnExpandirClick(Sender: TObject);
    procedure cxFiltroRequeridoClick(Sender: TObject);
    procedure btnLimpiarFClick(Sender: TObject);
    procedure scroll_requisicion;
    procedure ActualizarMaterial1Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure cxRequisicionPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);

  private
    { Private declarations }
    procedure validaciones;
    procedure fnrequisita;
    procedure InsertaPedidos;


  public
    { Public declarations }
  end;

var
  FrmSolicitudMaterial: TFrmSolicitudMaterial;
  titulo         : string;
  titulo2        : string;
  recurso        : string;
  isOpen : boolean = False;
  btnPermisos, TipoExplosion : String;
  Valida:boolean;
  MontoTotal : Currency ;
  lExiste    : boolean;
  lExpandido : boolean;
  VistaGrid : TcxGridDBTableView;

implementation
uses frm_connection ,
     frm_pernoctan,
     frm_deptos,
     Func_Genericas,
     frm_agregar_masivoOP,
     UnitMetodos, Frm_CotizacionP,
     frm_FirmasNota, frm_repositorio;
{$R *.dfm}

procedure TFrmSolicitudMaterial.ActualizarMaterial1Click(Sender: TObject);
var
    zActualiza, zBusca : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    SavePlace, SavePlace2 : TBookMark;
    VistaGrid : TcxGridDBTableView;
begin
    if (anexo_solicitud.FieldValues['sStatus'] <> 'PENDIENTE') then
    begin
       messageDLG('La Solicitud se encuentra en Estatus: '+anexo_solicitud.FieldValues['sStatus'], mtInformation, [mbOk],0);
       exit;
    end;

    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;

    zBusca:=tUniquery.create(nil);
    zBusca.Connection := Connection.uConnection;

    PanelProgreso.Visible := True;
    BarraMostrar(True, progreso, LabelProceso );

    iGrid     := 0;
    if cxPageDetalle.ActivePage = cxTabMaterial then
       cxView_Materiales := cxView_Materiales;

    indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
    cxView_Materiales.DataController.FocusedRowIndex := indice;

    with cxView_Materiales.DataController.DataSource.DataSet do
    for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
    begin
        indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        cxView_Materiales.DataController.FocusedRowIndex := indice;

        zBusca.SQL.Clear;
        zBusca.SQL.Add('select Material,IdMedida from alm_insumos where IdInsumo =:IdInsumo');
        zBusca.ParamByName('IdInsumo').AsInteger   := cxView_Materiales.DataController.DataSet.FieldByName('IdInsumo').AsInteger;
        zBusca.Open;

        zActualiza.SQL.Clear;
        zActualiza.SQL.Add('update anexo_psolicitud set IdMedida =:IdMedida, mDescripcion =:Descripcion where IdPSolicitud =:IdSolicitud');
        zActualiza.ParamByName('IdSolicitud').AsInteger := cxView_Materiales.DataController.DataSet.FieldByName('IdPSolicitud').AsInteger;
        zActualiza.ParamByName('IdMedida').AsInteger      := zBusca.FieldByName('IdMedida').AsInteger;
        zActualiza.ParamByName('Descripcion').AsString    := zBusca.FieldByName('Material').AsString;
        zActualiza.ExecSQL;

        BarraProgresoAvance(Progreso, 0,100,100/cxView_Materiales.DataController.GetSelectedCount);
    end;

    anexo_psolicitud.Refresh;

    BarraProgresoAvance(Progreso, 0,100,100);
    cxView_Materiales.DataController.ClearSelection;
    zActualiza.destroy;
    zBusca.Destroy;
    PanelProgreso.Visible := False;

end;

procedure TFrmSolicitudMaterial.btnAddClick(Sender: TObject);
var Folio:String;
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    cxSplitter1.Visible := False;
    grid_solicitud.Enabled:=False;
    zDepartamento.Locate('IdDepartamento',connection.uUsuario.FieldByName('idDepartamento').AsInteger,[]);
    anexo_solicitud.Append;
    zFolio.Active:= False;
    AsignarSQL(zFolio,'anexo_solicitud',pUpdate);
    FiltrarDataSet(zFolio,'contrato,IdDepartamento',[global_contrato, -1]);
    zFolio.Open;
    Folio:=autoFolioCod(zFolio,'anexo_solicitud');
    anexo_solicitud.FieldByName('sNumFolio').AsString:= Folio;
    anexo_solicitud.FieldValues['IdDepartamento']:= zDepartamento.FieldByName('IdDepartamento').AsInteger;
    anexo_solicitud.FieldValues['sContrato']     := global_contrato;
    anexo_solicitud.FieldValues['sSolicito']     := GLOBAL_NOMBRE;
    anexo_solicitud.FieldValues['sRequisita']    := GLOBAL_NOMBRE;
    anexo_solicitud.FieldValues['mComentarios']  := '*';
    anexo_solicitud.FieldValues['sIdUsuario']    := Global_Usuario;
    anexo_solicitud.FieldValues['sPrioridad']    := 'Normal';
    anexo_solicitud.FieldValues['dFechaSolicitado']:= Date;
    anexo_solicitud.FieldValues['dFechaRequerido'] := Date;
    anexo_solicitud.FieldValues['dFechaVigencia']:= Date;
    anexo_solicitud.FieldValues['sLugarEntrega'] := '1';
    anexo_solicitud.FieldValues['sNumeroOrden']  := 'PROY-0006';
    anexo_solicitud.FieldValues['sNumeroOrdenCentroC']  := zCosto.FieldByName('sNumeroOrden').AsString;
    cxFirma2.DataBinding.DataSource.DataSet.FieldByName('IdFirma').AsInteger := zFirma.FieldByName('IdFirma').AsInteger;


end;

procedure TFrmSolicitudMaterial.btnCancelClick(Sender: TObject);
begin
 cxLeyenda.Caption:=titulo;
  Panel2.Visible:=False;
  cxSplitter1.Visible := False;
  frmBarraH11.btnActive;
  grid_solicitud.Enabled:=True;

  try
      if anexo_solicitud.State in [dsInsert,dsEdit] then
        anexo_solicitud.Cancel;

      tsSolicitante.Text := '';
      tmcomentarios.Text := '';
      if anexo_solicitud.RecordCount > 0 then
      begin
          tsSolicitante.Text := Global_Nombre;
          tmcomentarios.Text := '';
      end;
      PermisosBotones(FrmSolicitudMaterial, btnPermisos);
   except
    on e : exception do
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Solicitud de Materiales', 'Al cancelar', 0);
  end;
end;

procedure TFrmSolicitudMaterial.btnDeleteClick(Sender: TObject);
begin
    if (anexo_solicitud.FieldValues['sStatus'] = 'PENDIENTE') then
    begin
       validaciones;
       if valida then
       begin
            btnCancelClick(Sender) ;
            exit;
       end;

       If anexo_solicitud.RecordCount > 0 Then
          If MessageDlg('Desea eliminar el Folio '+anexo_solicitud.FieldValues['sNumFolio']+'?. Se Eliminaran todos los Materiales!', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          Begin
              kardex_almacen('Elimina Solicitud  No. [' + InttoStr(anexo_solicitud.FieldValues['iFolioSolicitud']) + ']', 'Otros Movimientos');

              With connection do
              Begin
                 try
                     zCommand.Sql.Clear ;
                     zcommand.SQL.Add('Delete from anexo_psolicitud where sContrato = :Contrato And iFolioSolicitud = :Folio') ;
                     zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                     zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                     zcommand.Params.ParamByName('Folio').DataType := ftString ;
                     zcommand.Params.ParamByName('Folio').value := anexo_solicitud.FieldValues['iFolioSolicitud'] ;
                     zcommand.ExecSQL() ;

                     zCommand.Sql.Clear ;
                     zcommand.SQL.Add('Delete from anexo_solicitud where sContrato = :Contrato And iFolioSolicitud = :Folio') ;
                     zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                     zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                     zcommand.Params.ParamByName('Folio').DataType := ftString ;
                     zcommand.Params.ParamByName('Folio').value := anexo_solicitud.FieldValues['iFolioSolicitud'] ;
                     zcommand.ExecSQL() ;

                     anexo_solicitud.Refresh ;
                     anexo_psolicitud.Active:= False;
                     AsignarSQL(anexo_psolicitud,'anexo_psolicitud_upt',pUpdate);
                     FiltrarDataSet(anexo_psolicitud,'contrato,Folio',[global_contrato, anexo_solicitud.FieldByName('iFolioSolicitud').AsString]);
                     anexo_psolicitud.Open;

                 Except
                    on e : exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Solicitud', 'Al eliminar registro', 0);
                    end;
                 End
              End
          End;
    end
    else
    begin
         messageDLG('La Solicitud se encuentra en Estatus: '+anexo_solicitud.FieldValues['sStatus'], mtInformation, [mbOk],0);
    end;

End;

procedure TFrmSolicitudMaterial.btnDetalleClick(Sender: TObject);
begin
  PanelDown.Visible :=False;
//  cxEditaDetalle.Visible := False;
  if PanelDetalle.Visible then
   begin
       cxSplitterOpciones.Visible := False;
       PanelDetalle.Visible       := False;
   end
   else
   begin
       PanelDetalle.Visible       := True;
       cxSplitterOpciones.Visible := True;
       scroll_requisicion;
       //cxNuevoDetalle.Enabled := False;
   end;

end;

procedure TFrmSolicitudMaterial.btnEditClick(Sender: TObject);
begin
  TRY
      frmBarraH11.btnEditClick(Sender);
      Panel2.Visible:=True;
      cxSplitter1.Visible := False;
      grid_solicitud.Enabled:=False;
      cxSplitterOpciones.Visible := False;
      PanelDetalle.Visible       := False;
  FINALLY

  END;
end;

procedure TFrmSolicitudMaterial.btnExpandirClick(Sender: TObject);
begin
 if lExpandido then
   begin
      cxView_Requsicion.DataController.Groups.FullCollapse;
      lExpandido := False;
   end
   else
   begin
      cxView_Requsicion.DataController.Groups.FullExpand;
      lExpandido := True;
   end;
end;

procedure TFrmSolicitudMaterial.btnImpInformeClick(Sender: TObject);
var
  requisicionesGrid : String;
   contReqGrid, j : Integer;
begin
  if opcionImprimir.EditValue = 1 then
  begin
    generar_reporte_grid(cxView_Requsicion,'Reporte de Requisiciones');
  end  else if opcionImprimir.EditValue = 2 then
  begin
    cxView_Requsicion.DataController.Groups.FullExpand;
    contReqGrid := cxView_Requsicion.ViewData.RecordCount;
    for j := 0 to (contReqGrid - 1) do
    begin
      try
        requisicionesGrid := requisicionesGrid + cxView_Requsicion.ViewData.Rows[j].Values[0] +',';
      except
        ;
      end;
    end;

    zReporteDetalle.Active := False;
    AsignarSQL(zReporteDetalle,'reporte_detalles_requisicion',pUpdate);
    FiltrarDataSet(zReporteDetalle,'Contrato, ListaRequisiciones',[global_contrato,requisicionesGrid]);
    zReporteDetalle.Open;

    generar_reporte_grid_detalles(cxView_Requsicion,zReporteDetalle,'Reporte de Requisiciones con Detalles', 'sNumFolio');
  end;
end;

procedure TFrmSolicitudMaterial.btnLimpiarFClick(Sender: TObject);
begin
   cxView_Requsicion.DataController.Filter.FilterText := '';
   cxView_Requsicion.DataController.Filter.Clear;
    anexo_solicitud.Filtered := False;
    anexo_solicitud.Filter   :=' EstadoM = '+QuotedStr(cxOpcionesFiltro.Text);
    anexo_solicitud.Filtered := True;
   cxInicioRequerido.Style.Font.Color := clNone;
   cxInicioRequerido.Style.Font.Style := [];
   cxFinRequerido.Style.Font.Color := clNone;
   cxFinRequerido.Style.Font.Style := [];
   cxOpcionesFiltro.ItemIndex := 0;
end;

procedure TFrmSolicitudMaterial.btnPostClick(Sender: TObject);
var nombres, cadenas : TStringList;
begin
  //Inicia validacion
      nombres:=TStringList.Create;cadenas:=TStringList.Create;
      nombres.Add('Referencia');
      nombres.Add('Destino');
      nombres.Add('Observaciones');
      nombres.Add('Centro de Costo');
      cadenas.Add(tsNumeroOrden.Text);
      cadenas.Add(tsLugarEntrega.Text);
      cadenas.Add(tmComentarios.Text);
      cadenas.Add(cbCosto.Text);

      if not validaTexto(nombres, cadenas,'','') then
      begin
          MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
          exit;
      end;

  try
    cxLeyenda.Caption:=titulo;
    grid_solicitud.Enabled:=True;
    if anexo_solicitud.State = dsInsert then
    begin
        try
              anexo_solicitud.FieldValues['dIdFecha']         := now();
              anexo_solicitud.FieldValues['sContrato']     := global_contrato;
              anexo_solicitud.FieldValues['IdTiporecurso']    := cbRecurso.EditValue;
              anexo_solicitud.FieldValues['sStatus']          := 'PENDIENTE';
              anexo_solicitud.Post ;
              kardex_almacen('Crea la Solicitud  No. [' + anexo_solicitud.FieldByName('iFolioSolicitud').AsString + ']', 'Otros Movimientos');
              anexo_solicitud.Refresh ;
        Except
           on e : exception do
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al salvar registro', 0);
        end;
    end;
    if anexo_solicitud.State = dsEdit then
    begin
         try
                  anexo_solicitud.FieldValues['dIdFecha']  := anexo_solicitud.FieldByName('dFechaSolicitado').AsDateTime;
                  anexo_solicitud.Post;

                  kardex_almacen('Modifica Solicitud  No. [' + IntToStr(anexo_solicitud.FieldValues['iFolioSolicitud']) + ']', 'Otros Movimientos');

                  anexo_solicitud.Refresh ;
         except
            on e : exception do
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al salvar registro', 0);

         end;
    end;
    btnCancelClick(sender);
    PermisosBotones(FrmSolicitudMaterial,btnPermisos);

  except
    on e : exception do
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Solicitud de Materiales', 'Al cancelar', 0);
  end;

end;

procedure TFrmSolicitudMaterial.requisitaXcotizacion(requisicion: string);
var
  uAux :TUniQuery;
  uAux2:TuniQuery;
begin
  //metodo para agregar en automático los materiales de la cotizacion seleccionada
  uAux2:=TUniQuery.Create(nil);
  uAux2.Connection:=Connection.Uconnection;
  uAux2.SQL.Clear;
  uAux2.SQL.Text:='SELECT * from anexo_requisicion WHERE sNumFolio = '+QuotedStr(requisicion);
  uAux2.Open;
  uAux:=TUniQuery.Create(nil);
  uAux.Connection:=connection.Uconnection;
  uAux.SQL.Clear;
  uAux.SQL.Text:='INSERT INTO anexo_prequisicion (sContrato,iFolioRequisicion,IdInsumo,mDescripcion,'+
      'IdMedida,dFechaRequerimiento,dCantidad,sNumeroOrden,IdTipoRecurso) '+
      'SELECT :Contrato,:Requisicion,p.IdRecurso,p.Descripcion,p.IdMedida,:FechaR,p.Cantidad,:Orden,p.IdTipoRecurso '+
      'FROM op_cotizacion_presupuesto cp '+
      'INNER JOIN op_cotizacion_presupuesto_detalle cpd ON (cp.IdCotizacion = cpd.IdCotizacion) '+
      'INNER JOIN op_presupuesto_detalle p ON (p.IdPresupuestoDetalle = cpd.IdPresupuestoDetalle) '+
      'WHERE cp.IdCotizacion = :Cotizacion';
  uAux.ParamByName('Contrato').AsString:=uAux2.FieldByName('sContrato').AsString;
  uAux.ParamByName('Requisicion').AsInteger:=uAux2.FieldByName('iFolioRequisicion').AsInteger;
  uAux.ParamByName('FechaR').AsDateTime:=uAux2.FieldByName('dFechaSolicitado').AsDateTime;
  uAux.ParamByName('Orden').AsString:=uAux2.FieldByName('sNumeroOrden').AsString;
  uAux.ParamByName('Cotizacion').AsInteger:=frmCotizacionesP.uCotizacion.FieldByName('IdCotizacion').asInteger;
  uAux.ExecSQL;

end;


procedure TFrmSolicitudMaterial.btnPrinterClick(Sender: TObject);
var
   frxDBSolicitud : TfrxDBDataset;
begin
  if (cxView_Requsicion.DataController.DataSource.DataSet.IsEmpty) or (cxView_Requsicion.DataController.DataSource.DataSet.RecordCount<=0) then
       exit;
  try
    frmrepositorio.frxDBSolicitud.Clear;
    AsignarSQL(frmRepositorio.Reporte,'reporte_solicitud',pUpdate);
    FiltrarDataSet(frmRepositorio.Reporte,'Contrato,Folio',[global_contrato,anexo_solicitud.FieldValues['iFolioSolicitud']]);
    frmRepositorio.Reporte.Open;

    frxDBSolicitud := TfrxDBDataset.Create(nil);
    frxDBSolicitud.DataSet    := frmRepositorio.Reporte;
    frxDBSolicitud.FieldAliases.Clear;
    frxEntrada.DataSets.Add(frxDBSolicitud);

    frxEntrada.PreviewOptions.MDIChild := False;
    frxEntrada.PreviewOptions.Modal := True;
    frxEntrada.PreviewOptions.ShowCaptions := False;
    frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

    if connection.uContrato.FieldByName('FK_Titulo').AsString ='TYPHOON' then
    begin
      frxEntrada.LoadFromFile (global_files +global_miReporte+'_ALM_Requisicion.fr3') ;
    end
    else
    begin
      frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_Solicitud.fr3') ;
    end;

    if not FileExists(global_files + global_miReporte + '_ALM_Solicitud.fr3') then
       showmessage('El archivo de reporte '+global_miReporte+'_ALM_Solicitud.fr3 no existe, notifique al administrador del sistema');
    frxPDFExport1.FileName := frmRepositorio.Reporte.FieldByName('sNumFolio').AsString;
    frxentrada.ShowReport;


  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Solicitud de Materiales', 'Al imprimir', 0);
    end;

  end;

end;

procedure TFrmSolicitudMaterial.btnRefreshClick(Sender: TObject);
begin
    anexo_solicitud.Refresh;
    anexo_psolicitud.Refresh;
end;

procedure TFrmSolicitudMaterial.Cancelar1Click(Sender: TObject);
begin
  btnCancelClick(sender);
end;

procedure TFrmSolicitudMaterial.cxButton1Click(Sender: TObject);
begin
//   if (Anexo_solicitud.State = dsInsert ) or (Anexo_solicitud.State = dsEdit) then
//   begin
       global_frmActivo := 'frm_SolicitudMaterial';
       if not MostrarFormChild('frmFirmasNota', global_dxBarManagerPrincipal) then
       begin
          Application.CreateForm(TfrmFirmasNota, frmFirmasNota);
          frmFirmasNota.show;

          frmFirmasNota.zFirma2.Filtered := False;
          frmFirmasNota.zFirma2.Filter   := zFirma.Filter;
          frmFirmasNota.zFirma2.Filtered := True;

          frmFirmasNota.frmBarraH11.btnAdd.Click;

       end;
//   end;
end;

procedure TFrmSolicitudMaterial.cxCancelarDetalleClick(Sender: TObject);
begin
          anexo_psolicitud.Cancel;
          cxSplitter4.Visible := False;
          PanelDonw6.Visible:=False;
          PanelDown.Visible := False;

end;

procedure TFrmSolicitudMaterial.cxEditaDetalleClick(Sender: TObject);
begin
    if (anexo_solicitud.FieldValues['sStatus'] <> 'PENDIENTE') then
    begin
       messageDLG('La Solicitud se encuentra en Estatus: '+anexo_solicitud.FieldValues['sStatus'], mtInformation, [mbOk],0);
       exit;
    end;
    //Valida si está enlazada a una Orden de Compra
    validaciones;
    if valida then
    begin
        exit;
    end;

    If (anexo_psolicitud.RecordCount > 0 ) Then
    Begin
       OpcButton := 'Edit';
       if cxPageDetalle.ActivePage = cxTabMaterial then
       begin

       end;
    End;

end;

procedure TFrmSolicitudMaterial.cxEliminarDetalleClick(Sender: TObject);
var
    indice, iGrid    : integer;
    lContinua : boolean;
    SavePlace: TBookmark;
begin
  if (anexo_solicitud.FieldValues['sStatus']='PENDIENTE') then
  begin
    //Valida si está enlazada a una Orden de Compra
    validaciones;
    if valida then
    begin
        exit;
    end;

    If anexo_psolicitud.RecordCount > 0 Then
      If MessageDlg('Desea eliminar el material '+anexo_psolicitud.FieldValues['sIdInsumo']+' de esta Solicitud?.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Begin
        PanelProgreso.Visible := True;
        BarraMostrar(True, progreso, LabelProceso );

        iGrid     := 0;
        if cxPageDetalle.ActivePage = cxTabMaterial then
           VistaGrid := cxView_Materiales;

        if VistaGrid.DataController.GetSelectedCount > 0 then
           indice := VistaGrid.DataController.GetSelectedRowIndex(iGrid)
        else
        begin
            VistaGrid.DataController.SelectRows(VistaGrid.DataController.FocusedRecordIndex,VistaGrid.DataController.FocusedRecordIndex);
            indice := VistaGrid.DataController.GetSelectedRowIndex(iGrid)
        end;
        VistaGrid.DataController.FocusedRowIndex := indice;
        SavePlace := VistaGrid.DataController.DataSource.DataSet.GetBookmark;

        with VistaGrid.DataController.DataSource.DataSet do
        for iGrid := 0 to VistaGrid.DataController.GetSelectedCount - 1 do
        begin
            indice := VistaGrid.DataController.GetSelectedRowIndex(iGrid);
            VistaGrid.DataController.FocusedRowIndex := indice;

            AsignarSQL(connection.qryUBusca,'elimina_anexo_psolicitud',pUpdate);
            FiltrarDataSet(connection.qryUBusca,'Folio',[VistaGrid.DataController.DataSet.FieldByName('IdPSolicitud').AsInteger]);
            connection.qryUBusca.ExecSQL;

            BarraProgresoAvance(Progreso, 0,100,100/VistaGrid.DataController.GetSelectedCount);
        end;

        VistaGrid.DataController.ClearSelection;
        anexo_psolicitud.Refresh;

       try
          VistaGrid.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
        except
        else
          VistaGrid.DataController.DataSource.DataSet.FreeBookmark(SavePlace);
        end;
        BarraProgresoAvance(Progreso, 0,100,100);
        VistaGrid.DataController.SelectFromAnchor(VistaGrid.DataController.FocusedRecordIndex,True);
        PanelProgreso.Visible := False;
      End;
  end
  else
  begin
     messageDLG('La Solicitud se encuentra en Estatus: '+anexo_solicitud.FieldValues['sStatus'], mtInformation, [mbOk],0);
  end;
end;


procedure TFrmSolicitudMaterial.cxFiltroRequeridoClick(Sender: TObject);
begin
 if cxOpcionesFiltro.ItemIndex = 0 then
    begin
        anexo_solicitud.Filtered := False;
        anexo_solicitud.Filter   :=' EstadoM = '+QuotedStr(cxOpcionesFiltro.Text)+ ' and dFechaRequerido >= '+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and dFechaRequerido <= '+QuotedStr(FechaSQL(cxFinRequerido.Date));
        anexo_solicitud.Filtered := True;
    end;
    if cxOpcionesFiltro.ItemIndex = 1 then
    begin
        anexo_solicitud.Filtered := False;
        anexo_solicitud.Filter   :=' EstadoM = '+QuotedStr(cxOpcionesFiltro.Text)+ ' and dFechaRequerido >= '+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and dFechaRequerido <= '+QuotedStr(FechaSQL(cxFinRequerido.Date));
        anexo_solicitud.Filtered := True;
    end;
    if cxOpcionesFiltro.ItemIndex = 2 then
    begin
        anexo_solicitud.Filtered := False;
    end;
//    if cxOpcionesFiltro.ItemIndex = 3 then
//    begin
//        anexo_requisicion.Filtered := False;
//        anexo_requisicion.Filter   :=' sStatus = '+QuotedStr(cxOpcionesFiltro.EditValue)+ ' and dFechaRequerido >= '+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and dFechaRequerido <= '+QuotedStr(FechaSQL(cxFinRequerido.Date));
//        anexo_requisicion.Filtered := True;
//    end;
    cxInicioRequerido.Style.Font.Color := clBlue;
    cxInicioRequerido.Style.Font.Style := [fsBold];
    cxFinRequerido.Style.Font.Color := clBlue;
    cxFinRequerido.Style.Font.Style := [fsBold];
end;


procedure TFrmSolicitudMaterial.cxGuardarDetalleClick(Sender: TObject);
begin
  anexo_psolicitud.Post;
  cxSplitter4.Visible := False;
  PanelDonw6.Visible:=False;
  PanelDown.Visible := False;

end;

procedure TFrmSolicitudMaterial.cxView_MaterialesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
        if cxView_Materiales.OptionsView.CellAutoHeight then
           cxView_Materiales.OptionsView.CellAutoHeight := False
        else
           cxView_Materiales.OptionsView.CellAutoHeight := True;
    end;


end;

procedure TFrmSolicitudMaterial.cxView_RequsicionCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   scroll_requisicion;
end;

procedure TFrmSolicitudMaterial.cxView_RequsicionCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if cxView_Requsicion.OptionsView.CellAutoHeight then
      cxView_Requsicion.OptionsView.CellAutoHeight := False
   else
      cxView_Requsicion.OptionsView.CellAutoHeight := True;
end;

procedure TFrmSolicitudMaterial.cxView_RequsicionKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Key = VK_UP) or ( Key = VK_DOWN)  then
      if PanelDetalle.Visible then
          scroll_requisicion;

end;


procedure TFrmSolicitudMaterial.EnterControl(Sender: TObject);
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

    if (sender is tcxDbRadioGroup) then
        tcxDBRadioGroup(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TFrmSolicitudMaterial.ExportaraExcel1Click(Sender: TObject);
var
   QueryImagen: TZQuery;
begin
  try
    QueryImagen := TZQuery.Create(Self);

    QueryImagen.Connection := connection.zconnection;
    QueryImagen.Active:=False;
    QueryImagen.SQL.Clear;
    QueryImagen.SQL.Add('SELECT bImagen FROM configuracion WHERE sContrato=:sContrato');
    QueryImagen.ParamByName('sContrato').AsString:=global_contrato;
    QueryImagen.Open;

     ExportExcelPersonalizado(QueryImagen,cxView_Requsicion,'Requisiciones','Requisicion de Materiales');
  finally
      QueryImagen.Destroy;
  end;
end;

procedure TFrmSolicitudMaterial.fnrequisita;
begin
    Consumibles.Active := False ;
    if anexo_solicitud.RecordCount > 0 then
    begin
       Consumibles.Active := False ;
       Consumibles.SQL.Clear ;
       Consumibles.SQL.Add('SELECT IFNULL((select al.sDescripcion from alm_almacenes al where al.IdAlmacen=IFNULL(b.IdAlmacen,-1)),'+QuotedStr('SIN ALMACEN')+') as Almacen, '+
                            '	'+''' '''+' AS sNumeroActividad, i.*, Existencias (i.IdInsumo, -1, i.sContrato) AS dExistencia, (SELECT mm.Codigo FROM	master_medidas mm WHERE mm.IdMedida = i.IdMedida) AS sMedida '+
                            'FROM alm_insumos i LEFT JOIN bitacoradeentrada b ON (b.IdInsumo = i.IdInsumo) WHERE (:Contrato = - 1		OR (:Contrato <> - 1 AND :Contrato = i.sContrato)) GROUP BY '+
                            'b.IdAlmacen, i.IdInsumo ORDER BY i.Codigo');

      Consumibles.Params.ParamByName('Contrato').DataType  := ftString ;
      Consumibles.Params.ParamByName('Contrato').Value     := '-1';
      Consumibles.Open ;
      Consumibles.RecordCount  ;
    end
end;

procedure TFrmSolicitudMaterial.cxNuevoDetalleClick(Sender: TObject);
var
 i : integer;
begin
  Try
      if (anexo_solicitud.FieldValues['sStatus'] <> 'PENDIENTE') then
      begin
         messageDLG('La Solicitud se encuentra en Estatus: '+anexo_solicitud.FieldValues['sStatus'], mtInformation, [mbOk],0);
         exit;
      end;

      If (anexo_solicitud.RecordCount > 0) Then
      Begin
          Insertar1.Enabled := False ;
          Editar1.Enabled   := False ;
          Eliminar1.Enabled := False ;
          Refresh1.Enabled  := False ;
      End;

      //Preparar consulta pra requisitar.
      OpcButton := 'New';
      if cxPageDetalle.ActivePage = cxTabMaterial then
         global_frmActivo:='Solicitud';

      FrmSolicitudMaterial.Enabled := False;

      Application.CreateForm(TfrmAgregarMasivoOP, frmAgregarMasivoOP);
      frmAgregarMasivoOP.Show;

      for I := 0 to global_FormNoilPrincipal.MDIChildCount - 1 do
      begin
         global_FormNoilPrincipal.MDIChildren[i].Enabled := False;
         if uppercase(global_FormNoilPrincipal.MDIChildren[i].Name) = uppercase('FrmSolicitudMaterial') then
            global_FormNoilPrincipal.MDIChildren[i].ActiveMDIChild;
      end;

  except
   on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_SolicitudMaterial', 'Al agregar registro ', 0);
   end;
  end;

end;

procedure TFrmSolicitudMaterial.cxPageDetalleClick(Sender: TObject);
begin
   cxTabMaterial.TabVisible:=True;
  cxTabMaterial.Caption := anexo_solicitud.FieldByName('Recurso').AsString;
   if cxPageDetalle.ActivePage = cxTabMaterial then
   begin
     titulo2:= anexo_solicitud.FieldByName('Recurso').AsString;
     if anexo_solicitud.FieldByName('IdTipoRecurso').AsInteger <> -1 then
     begin
       anexo_psolicitud.Active:= False;
       AsignarSQL(anexo_psolicitud,'anexo_psolicitud_upts',pUpdate);

       if anexo_solicitud.FieldByName('IdTipoRecurso').AsInteger = 3 then
          FiltrarDataSet(anexo_psolicitud,'contrato,Folio,Tipo',
          [global_contrato, anexo_solicitud.FieldByName('iFolioSolicitud').AsString,'mo'])
       else
       if anexo_solicitud.FieldByName('IdTipoRecurso').AsInteger = 7 then
          FiltrarDataSet(anexo_psolicitud,'contrato,Folio,Tipo',
          [global_contrato, anexo_solicitud.FieldByName('iFolioSolicitud').AsString,'lo'])
       else
          FiltrarDataSet(anexo_psolicitud,'contrato,Folio,Tipo',
          [global_contrato, anexo_solicitud.FieldByName('iFolioSolicitud').AsString,anexo_solicitud.FieldByName('IdTipoRecurso').AsInteger]);
          anexo_psolicitud.Open;
     end
     else begin
       anexo_psolicitud.Active:= False;
       AsignarSQL(anexo_psolicitud,'anexo_psolicitud_upts',pUpdate);
       FiltrarDataSet(anexo_psolicitud,'contrato,Folio',
       [global_contrato, anexo_solicitud.FieldByName('iFolioSolicitud').AsString]);
       anexo_psolicitud.Open;
     end;
   end;

   if cxPageDetalle.ActivePage = tabInformes then
   begin
     titulo2:='Informes';
     cxNuevoDetalle.Enabled:=False;
     cxEditaDetalle.Enabled:=False;
     cxEliminarDetalle.Enabled:=False;
   end
   else
   begin
     cxNuevoDetalle.Enabled:=True;
     cxEditaDetalle.Enabled:=True;
     cxEliminarDetalle.Enabled:=True;
   end;
   cxLeyenda2.Caption:=titulo2;
end;

procedure TFrmSolicitudMaterial.cxRequisicionPropertiesEditValueChanged(
  Sender: TObject);
begin
//if anexo_solicitud.State in [dsInsert, dsEdit] then
//  if requisiciones.Locate('iFolioRequisicion',cxRequisicion.EditValue,[]) then
//  begin
//    anexo_solicitud.FieldValues['IdDepartamento']:= requisiciones.FieldByName('IdDepartamento').AsInteger;
//    anexo_solicitud.FieldValues['sContrato']     := requisiciones.FieldByName('sContrato').AsString;
//    anexo_solicitud.FieldValues['sSolicito']     := requisiciones.FieldByName('sSolicito').AsString;
//    anexo_solicitud.FieldValues['sRequisita']    := requisiciones.FieldByName('sRequisita').AsString;
//    anexo_solicitud.FieldValues['mComentarios']  := requisiciones.FieldByName('mComentarios').AsString;
//    anexo_solicitud.FieldValues['sIdUsuario']    := Global_Usuario;
//    anexo_solicitud.FieldValues['sPrioridad']    := 'Normal';
//    cxPrioridad.ItemIndex := 0;
//    anexo_solicitud.FieldValues['dFechaSolicitado']:= requisiciones.FieldByName('dFechaSolicitado').AsDateTime;
//    anexo_solicitud.FieldValues['dFechaRequerido'] := requisiciones.FieldByName('dFechaRequerido').AsDateTime;
//    anexo_solicitud.FieldValues['dFechaVigencia']:= requisiciones.FieldByName('dFechaVigencia').AsDateTime;
//    anexo_solicitud.FieldValues['sLugarEntrega'] := requisiciones.FieldByName('sLugarEntrega').AsString;
//    anexo_solicitud.FieldValues['sNumeroOrden']  := requisiciones.FieldByName('sNumeroOrden').AsString;
//    anexo_solicitud.FieldValues['sNumeroOrdenCentroC']  := requisiciones.FieldByName('sNumeroOrdenCentroC').AsString;
//    anexo_solicitud.FieldByName('IdFirma').AsInteger := requisiciones.FieldByName('IdFirma').AsInteger;
//  end;
end;

procedure TFrmSolicitudMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
guardar_leer_grid(cxView_Requsicion,FrmSolicitudMaterial,1);
guardar_leer_grid(cxView_Materiales,FrmSolicitudMaterial,1);
  action := cafree;
end;

procedure TFrmSolicitudMaterial.FormShow(Sender: TObject);
var
 temE:TUniQuery;
begin
   btnPermisos := global_btnPermisos;

   // PanelDetalle.Visible := False;
    Panel2.Visible := False;
    cxSplitter1.Visible := False;
    titulo:='Solicitud';
    titulo2:='Informes';
    cxLeyenda.Caption:=titulo;
    cxLeyenda2.Caption:=titulo2;

    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;

    temE := TUniquery.create(nil);
    temE.Connection := Connection.uConnection;
    temE.Active:=False;
    temE.SQL.Text:='Select IdEmpresa,FK_Titulo from master_empresa';
    temE.Open;

    AsignarSQL(anexo_solicitud,'anexo_solicitud',pUpdate);
    FiltrarDataSet(anexo_solicitud,'contrato,IdDepartamento,Vista',[global_contrato, -1,-1]);
    anexo_solicitud.Open;

    AsignarSQL(requisiciones,'anexo_requisicion',pUpdate);
    FiltrarDataSet(requisiciones,'Contrato',[global_contrato]);
    requisiciones.Open;

    anexo_psolicitud.Active:= False;
    AsignarSQL(anexo_psolicitud,'anexo_psolicitud_upts',pUpdate);
    FiltrarDataSet(anexo_psolicitud,'contrato,Folio,Tipo',[global_contrato, anexo_solicitud.FieldByName('iFolioSolicitud').AsString,'2']);
    anexo_psolicitud.Open;
//
    qOrdenes_trabajo.Active := False;
    AsignarSQL(qOrdenes_trabajo,'ordenesdetrabajo_presu_val',pUpdate);
    if temE.FieldByName('FK_Titulo').AsString = 'SIANI' then begin
       FiltrarDataSet(qOrdenes_trabajo,'Contrato,Tipo,Status',[global_contrato,'-1','-1']);
       tdidFecha.Enabled := True ;
       cxView_RequsicionColumn6.Visible := False;
    end
    else  begin
       FiltrarDataSet(qOrdenes_trabajo,'Contrato,Tipo,Estatus',[global_contrato,'PROYECTO','-1']);
       tdidFecha.Enabled := False;
       cxView_RequsicionColumn6.Visible := True;
    end;
    qOrdenes_trabajo.Open ;

    zDepartamento.Active:= False;
    AsignarSQL(zDepartamento,'master_departamento',pUpDate);
    FiltrarDataSet(zDepartamento,'Activo,Empresa',['Si',temE.FieldByName('IdEmpresa').AsInteger]);
    zDepartamento.Open;
//
//    zGrafica.Active:= False;
//    AsignarSQL(zGrafica,'grafica_requisiciones',pUpdate);
//    FiltrarDataSet(zGrafica,'years',[anexo_requisicion.FieldByName('Periodo').AsString]);
//    zGrafica.Open;
//
    plataforma.Active:= False;
    AsignarSQL(plataforma,'master_clientes',pUpdate);
    FiltrarDataSet(plataforma,'IdCliente',[-1]);
    plataforma.Open;
//
    zCosto.Active:= False;
    AsignarSQL(zCosto,'ordenesdetrabajo_req',pUpdate);
    FiltrarDataSet(zCosto,'Contrato,Tipo',[global_contrato,'CENTRO_COSTO']);
    zCosto.Open;
//
    zRecurso.Active:=False;
    zRecurso.SQL.Text:='select IdTiporecurso, Nombre from op_tiporecurso union Select -1 ,'+QuotedStr('TODOS')+'  as Todos';
    zRecurso.Open;

//    cxTabMaterial.TabVisible    :=False;
//    cxPageDetalle.ActivePageIndex := 7;
//    cxGrid1DBChartView1.Categories.DisplayText:='Periodo '+zGrafica.FieldByName('years').AsString;
    if anexo_solicitud.RecordCount > 0 then
      grid_solicitud.SetFocus;

    tsSolicitante.Text  := Global_Nombre ;

//
    cxView_Requsicion.DataController.Groups.FullExpand;

    PermisosBotones(FrmSolicitudMaterial,btnPermisos);

    //frmBarraH11.btnAdd.Enabled := False;
    //frmBarraH11.btnEdit.Enabled := False;
    frmBarraH11.btnExporta.Enabled := False;
//
//    dxLayoutItem9.Visible:=False;
//    cxView_Requsicion.Columns[9].Visible:=True;
//    frmBarraH11.btnExporta.Visible:=False;
//
    AsignarSQL(zFirma, 'rd_firmas', pUpdate);
    FiltrarDataSet(zFirma, 'IdFirma, Contrato',[-1, Global_Contrato]);
    zFirma.Open;
    zFirma.RecordCount;
    zFirma.Filtered := False;
    zFirma.Filter   := 'VistaUsuario = '+ QuotedStr(self.Caption);
    zFirma.Filtered := True;
//
    lExpandido := True;

    cxInicioRequerido.Date := Date;
    cxFinRequerido.Date    := Date;
    cxOpcionesFiltro.ItemIndex := 2;

    cxEditaDetalle.Visible := False;
    cxView_RequsicionColumn6.Visible := False;


//  if cxOpcionesFiltro.ItemIndex = 0 then
//    begin
//        cxOpcionesFiltro.ItemIndex := 2;
//        anexo_solicitud.Filtered := False;
//        anexo_solicitud.Filter   :=' EstadoM = '+QuotedStr(cxOpcionesFiltro.Text);
//        anexo_solicitud.Filtered := True;
//    end;
    guardar_leer_grid(cxView_Requsicion,FrmSolicitudMaterial,0);
    guardar_leer_grid(cxView_Materiales,FrmSolicitudMaterial,0);

end;

procedure TFrmSolicitudMaterial.frxEntradaGetValue(const VarName: string;
  var Value: Variant);
  Var
    sCadena : String ;
    iValorNumerico   : LongInt  ;
    Resultado        : Real     ;
begin
  If CompareText(VarName, 'CANTIDAD_LETRA')= 0 Then
    Begin
         iValorNumerico   := Trunc(Montototal) ;
         sCadena := xIntToLletres (iValorNumerico) +' PESOS ';
         Resultado := roundto(Montototal - iValorNumerico, -2) ;
         Resultado := Resultado * 100;
         iValorNumerico := Trunc(Resultado);
         sCadena := sCadena + IntToStr(iValorNumerico)+ '/100 M.N.';
         Value :=   sCadena
    end ;

  if CompareText(VarName, 'FECHA') = 0 then begin
    Value := anexo_solicitud.FieldValues['dIdFecha'];
  end;

end;

procedure TFrmSolicitudMaterial.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmSolicitudMaterial.Imprimir1Click(Sender: TObject);
begin
  btnPrinterClick(Sender);
end;

procedure TFrmSolicitudMaterial.InsertaPedidos;
begin
    connection.QryBusca2.First;
     While not connection.QryBusca2.Eof do
     begin
          Connection.zCommand.Active := False ;
          Connection.zcommand.SQL.Clear ;
          Connection.zCommand.SQL.Add('INSERT INTO anexo_prequisicion ( sContrato, iFolioRequisicion, sIdInsumo, mDescripcion, sMedida, dFechaRequerimiento, dCantidad, sNumeroOrden) '  +
                                            'VALUES (:Contrato, :Folio, :Insumo, :Descripcion, :Medida, :Requerido, :Cantidad,:Orden) ' );
          Connection.zcommand.Params.ParamByName('Contrato').DataType    := ftString ;
          Connection.zcommand.Params.ParamByName('Contrato').value       := Global_Contrato ;
          Connection.zcommand.Params.ParamByName('Folio').DataType       := ftString ;
          Connection.zcommand.Params.ParamByName('Folio').value          := anexo_solicitud.FieldValues['iFoliosolicitud'] ;
          Connection.zcommand.Params.ParamByName('Insumo').DataType      := ftString ;
          Connection.zcommand.Params.ParamByName('Insumo').value         := Consumibles.FieldValues['sIdInsumo'] ;
          Connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo ;
          Connection.zcommand.Params.ParamByName('Descripcion').value    := Consumibles.fieldValues['mDescripcion'] ;
          Connection.zcommand.Params.ParamByName('Medida').DataType      := ftString ;
          Connection.zcommand.Params.ParamByName('Medida').value         := Consumibles.fieldValues['sMedida'] ; ;
          Connection.zcommand.Params.ParamByName('Requerido').DataType   := ftDate ;
          Connection.zcommand.Params.ParamByName('Cantidad').DataType    := ftFloat ;
          Connection.zcommand.Params.ParamByName('Orden').DataType       := ftString ;
          Connection.zcommand.Params.ParamByName('Orden').value          := anexo_solicitud.FieldValues['sNumeroOrden'] ;
          Connection.zcommand.ExecSQL  ;
          connection.QryBusca2.Next;
     end;
end;

procedure TFrmSolicitudMaterial.Insertar1Click(Sender: TObject);
begin
//  btnAddClick(Sender);
end;


procedure TFrmSolicitudMaterial.Registrar1Click(Sender: TObject);
begin
  btnPostClick(Sender);
end;

procedure TFrmSolicitudMaterial.SalidaControl(Sender: TObject);
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
end;

procedure TFrmSolicitudMaterial.tabInformesShow(Sender: TObject);
begin
  OpcionImprimir.EditValue := 1;
end;

procedure TFrmSolicitudMaterial.tdIdFecha2Exit(Sender: TObject);
begin
  cxVigencia.Date := tdIdFecha2.Date;
  SalidaControl(Sender);

end;

procedure TFrmSolicitudMaterial.tdidFechaExit(Sender: TObject);
begin
  tdIdFecha2.Date:=tdidFecha.Date+3;
  SalidaControl(Sender);
end;

procedure TFrmSolicitudMaterial.validaciones;
begin
     valida := False;
     connection.zUCommand.Active := False;
     connection.zUCommand.SQL.Clear;
     connection.zUCommand.SQL.Add('select IdOrdenCompra from anexo_pedidos where sNumeroOrden =:Orden and iFolioRequisicion = :Requisicion  ' +
                                 'and sContrato=:Contrato');
     connection.zUCommand.ParamByName('Contrato').AsString    := global_contrato;
     connection.zUCommand.ParamByName('Orden').AsString       := anexo_solicitud.FieldValues['sNumeroOrden'];
     connection.zUCommand.ParamByName('Requisicion').AsString := anexo_solicitud.FieldValues['iFolioSolicitud'];
     connection.zUCommand.Open;
     if connection.zUCommand.RecordCount > 0 then
     begin
          messageDLG(' La Solicitud '+anexo_solicitud.FieldValues['sNumFolio']+ ' se encuentra enlazada con una Orden de Compra', mtInformation, [mbOk], 0);
          valida := True;
     end;
end;

procedure TFrmSolicitudMaterial.scroll_requisicion;
begin
    cxPageDetalle.ActivePageIndex := 0;
    cxTabMAterial.TabVisible := True;
    cxTabMaterial.Caption := anexo_solicitud.FieldByName('Recurso').AsString;
    if cxPageDetalle.ActivePage = cxTabMaterial then
    cxTabMaterial.Caption := anexo_solicitud.FieldByName('Recurso').AsString;
    begin
        titulo2:= anexo_solicitud.FieldByName('Recurso').AsString;
        if anexo_solicitud.FieldByName('IdTipoRecurso').AsInteger <> -1 then
        begin

          anexo_psolicitud.Active:= False;
          AsignarSQL(anexo_psolicitud,'anexo_psolicitud_upts',pUpdate);

          if anexo_solicitud.FieldByName('IdTipoRecurso').AsInteger = 3 then
            FiltrarDataSet(anexo_psolicitud,'contrato,Folio,Tipo',
            [global_contrato, anexo_solicitud.FieldByName('iFolioSolicitud').AsString,'mo'])
          else
          if anexo_solicitud.FieldByName('IdTipoRecurso').AsInteger = 7 then
             FiltrarDataSet(anexo_psolicitud,'contrato,Folio,Tipo',
             [global_contrato, anexo_solicitud.FieldByName('iFolioSolicitud').AsString,'lo'])
          else
          FiltrarDataSet(anexo_psolicitud,'contrato,Folio,Tipo',
          [global_contrato, anexo_solicitud.FieldByName('iFolioSolicitud').AsString,anexo_solicitud.FieldByName('IdTipoRecurso').AsInteger]);
          anexo_psolicitud.Open;

        end
        else
        begin

          anexo_psolicitud.Active:= False;
          AsignarSQL(anexo_psolicitud,'anexo_psolicitud_upt',pUpdate);
          FiltrarDataSet(anexo_psolicitud,'contrato,Folio',
          [global_contrato, anexo_solicitud.FieldByName('iFolioSolicitud').AsString]);
          anexo_psolicitud.Open;

        end;

        VistaGrid := cxView_Materiales;
    end;

    VistaGrid.DataController.SelectFromAnchor(VistaGrid.DataController.FocusedRecordIndex,True);

    zGrafica.Active:= False;
    AsignarSQL(zGrafica,'grafica_requisiciones',pUpdate);
    FiltrarDataSet(zGrafica,'years',[anexo_solicitud.FieldByName('Periodo').AsString]);
    zGrafica.Open;
    cxGrid1DBChartView1.Categories.DisplayText:='Periodo '+zGrafica.FieldByName('years').AsString;
    cxLeyenda2.Caption:=titulo2;
end;

end.

