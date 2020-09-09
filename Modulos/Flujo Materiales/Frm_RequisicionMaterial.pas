unit Frm_RequisicionMaterial;

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
  dxToggleSwitch, dxDBToggleSwitch, frxExportPDF, dxCore, cxDateUtils ;

type
  TFrmRequisicionMaterial = class(TForm)
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
    grid_requsicion: TcxGrid;
    cxView_Requsicion: TcxGridDBTableView;
    cxView_RequsicionColumn1: TcxGridDBColumn;
    cxView_RequsicionColumn3: TcxGridDBColumn;
    cxView_RequsicionColumn2: TcxGridDBColumn;
    cxView_RequsicionColumn8: TcxGridDBColumn;
    grid_requsicionLevel1: TcxGridLevel;
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
    anexo_requisicion: TUniQuery;
    dsRequisicion: TDataSource;
    ds_anexo_prequisicion: TDataSource;
    anexo_prequisicion: TUniQuery;
    cxView_RequsicionColumn9: TcxGridDBColumn;
    dxLayoutControl1: TdxLayoutControl;
    tiFolio: TcxDBTextEdit;
    tdidFecha: TcxDBDateEdit;
    tdIdFecha2: TcxDBDateEdit;
    tsDepartamento: TcxDBLookupComboBox;
    tsLugarEntrega: TcxDBLookupComboBox;
    tsSolicitante: TcxDBTextEdit;
    tmComentarios: TcxDBMemo;
    tsNumeroOrden: TcxDBLookupComboBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
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
    mmUso: TcxDBMemo;
    dxLayoutItem9: TdxLayoutItem;
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
    cxPrioridad: TcxDBComboBox;
    dxLayoutItem12: TdxLayoutItem;
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
    btnSolicitar: TcxButton;
    cxView_RequsicionColumn12: TcxGridDBColumn;
    cxView_RequsicionColumn13: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
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
    procedure tsDepartamentoExit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnExpandirClick(Sender: TObject);
    procedure cxFiltroRequeridoClick(Sender: TObject);
    procedure btnLimpiarFClick(Sender: TObject);
    procedure scroll_requisicion;
    procedure ActualizarMaterial1Click(Sender: TObject);
    procedure cbCostoPropertiesChange(Sender: TObject);
    procedure cxView_RequsicionStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btnSolicitarClick(Sender: TObject);
    procedure cxView_RequsicionCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);

  private
    { Private declarations }
    procedure validaciones;
    procedure fnrequisita;
    procedure InsertaPedidos;


  public
    { Public declarations }
  end;

var
  FrmRequisicionMaterial: TFrmRequisicionMaterial;
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
  cont : Integer;

implementation
uses frm_connection ,
     frm_pernoctan,
     frm_deptos,
     Func_Genericas,
     frm_agregar_masivoOP,
     UnitMetodos, Frm_CotizacionP, frm_materiales,
     frm_FirmasNota, frm_repositorio, Frm_Modal;
{$R *.dfm}

procedure TFrmRequisicionMaterial.ActualizarMaterial1Click(Sender: TObject);
var
    zActualiza, zBusca : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    SavePlace, SavePlace2 : TBookMark;
    VistaGrid : TcxGridDBTableView;
begin
    if (anexo_requisicion.FieldValues['sStatus'] <> 'PENDIENTE') then
    begin
       messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
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
        zActualiza.SQL.Add('update anexo_prequisicion set IdMedida =:IdMedida, mDescripcion =:Descripcion where IdPRequisicion =:IdRequisicion');
        zActualiza.ParamByName('IdRequisicion').AsInteger := cxView_Materiales.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger;
        zActualiza.ParamByName('IdMedida').AsInteger      := zBusca.FieldByName('IdMedida').AsInteger;
        zActualiza.ParamByName('Descripcion').AsString    := zBusca.FieldByName('Material').AsString;
        zActualiza.ExecSQL;

        BarraProgresoAvance(Progreso, 0,100,100/cxView_Materiales.DataController.GetSelectedCount);
    end;

    anexo_prequisicion.Refresh;

    BarraProgresoAvance(Progreso, 0,100,100);
    cxView_Materiales.DataController.ClearSelection;
    zActualiza.destroy;
    zBusca.Destroy;
    PanelProgreso.Visible := False;

end;

procedure TFrmRequisicionMaterial.btnAddClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    cxSplitter1.Visible := False;
    grid_requsicion.Enabled:=False;

    anexo_requisicion.AfterScroll := nil;

    zDepartamento.Locate('IdDepartamento',connection.uUsuario.FieldByName('idDepartamento').AsInteger,[]);
    anexo_requisicion.Append;
    anexo_requisicion.FieldValues['IdDepartamento']:= zDepartamento.FieldByName('IdDepartamento').AsInteger;
    anexo_requisicion.FieldValues['sNumFolio']     := autoFolio(anexo_requisicion,'anexo_requisicion',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,tsDepartamento.DataBinding.DataSource.DataSet.FieldByName('IdDepartamento').AsInteger);
    anexo_requisicion.FieldValues['sContrato']     := global_contrato;
    anexo_requisicion.FieldValues['sSolicito']     := GLOBAL_NOMBRE;
    anexo_requisicion.FieldValues['sRequisita']    := GLOBAL_NOMBRE;
    anexo_requisicion.FieldValues['mComentarios']  := '*';
    anexo_requisicion.FieldValues['sIdUsuario']    := Global_Usuario;
    anexo_requisicion.FieldValues['sPrioridad']    := 'Normal';
    cxPrioridad.ItemIndex := 0;
    anexo_requisicion.FieldValues['dFechaSolicitado']:= Date;
    anexo_requisicion.FieldValues['dFechaRequerido'] := Date;
    anexo_requisicion.FieldValues['dFechaVigencia']:= Date;
    anexo_requisicion.FieldValues['sLugarEntrega'] := '1';
    anexo_requisicion.FieldValues['sNumeroOrden']  := 'PROY-0006';
    anexo_requisicion.FieldValues['sNumeroOrdenCentroC']  := zCosto.FieldByName('sNumeroOrden').AsString;
    cxFirma2.DataBinding.DataSource.DataSet.FieldByName('IdFirma').AsInteger := zFirma.FieldByName('IdFirma').AsInteger;

    tdIdFecha2.SetFocus;
    tiFolio.Enabled := False;
    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;
end;

procedure TFrmRequisicionMaterial.btnCancelClick(Sender: TObject);
begin
  cxLeyenda.Caption:=titulo;
  Panel2.Visible:=False;
  cxSplitter1.Visible := False;
  frmBarraH11.btnActive;
  grid_requsicion.Enabled:=True;

  try
      if anexo_requisicion.State in [dsInsert,dsEdit] then
        anexo_requisicion.Cancel;

      tsSolicitante.Text := '';
      tmcomentarios.Text := '';
      if anexo_requisicion.RecordCount > 0 then
      begin
          tsSolicitante.Text := Global_Nombre;
          tmcomentarios.Text := '';
      end;
      PermisosBotones(FrmRequisicionMaterial, btnPermisos);
   except
    on e : exception do
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Requisicion de Materiales', 'Al cancelar', 0);
  end;
end;

procedure TFrmRequisicionMaterial.btnDeleteClick(Sender: TObject);
begin
    if ((anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') OR (anexo_requisicion.FieldValues['sStatus'] = 'CANCELADO')) then
    begin
       validaciones;
       if valida then
       begin
            btnCancelClick(Sender) ;
            exit;
       end;

       If anexo_requisicion.RecordCount > 0 Then
          If MessageDlg('Desea eliminar el Folio '+anexo_requisicion.FieldValues['sNumFolio']+'?. Se Eliminaran todos los Materiales!', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          Begin
              kardex_almacen('Elimina Requisicion  No. [' + InttoStr(anexo_requisicion.FieldValues['iFolioRequisicion']) + ']', 'Otros Movimientos');

              With connection do
              Begin
                 try
                     zCommand.Sql.Clear ;
                     zcommand.SQL.Add('Delete from anexo_prequisicion where sContrato = :Contrato And iFolioRequisicion = :Folio') ;
                     zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                     zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                     zcommand.Params.ParamByName('Folio').DataType := ftString ;
                     zcommand.Params.ParamByName('Folio').value := anexo_requisicion.FieldValues['iFolioRequisicion'] ;
                     zcommand.ExecSQL() ;

                     zCommand.Sql.Clear ;
                     zcommand.SQL.Add('Delete from anexo_requisicion where sContrato = :Contrato And iFolioRequisicion = :Folio') ;
                     zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                     zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                     zcommand.Params.ParamByName('Folio').DataType := ftString ;
                     zcommand.Params.ParamByName('Folio').value := anexo_requisicion.FieldValues['iFolioRequisicion'] ;
                     zcommand.ExecSQL() ;

                     anexo_requisicion.Refresh ;
                     anexo_prequisicion.Active:= False;
                     AsignarSQL(anexo_prequisicion,'anexo_prequisicion_upt',pUpdate);
                     FiltrarDataSet(anexo_prequisicion,'contrato,Folio',[global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString]);
                     anexo_prequisicion.Open;

                 Except
                    on e : exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al eliminar registro', 0);
                    end;
                 End
              End
          End;
    end
    else
    begin
         messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
    end;

End;

procedure TFrmRequisicionMaterial.btnDetalleClick(Sender: TObject);
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
   end;

end;

procedure TFrmRequisicionMaterial.btnEditClick(Sender: TObject);
begin
  if cxView_Requsicion.DataController.DataSource.DataSet.IsEmpty=false then
  begin
   try
      if ((anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') OR (anexo_requisicion.FieldValues['sStatus'] = 'CANCELADO')) then
      begin
          validaciones;
          if valida then
          begin
            exit;
          end;

          If anexo_requisicion.RecordCount > 0 then
          Begin

            anexo_requisicion.AfterScroll := nil;
            tiFolio.Enabled := False;
            anexo_requisicion.Edit;
            cxLeyenda.Caption:=titulo+'[Editando]';
            if  zCosto.Locate('sNumeroOrden',cbCosto.EditValue,[]) then
               cxDescrip.Text :=  zCosto.FieldByName('mDescripcion').AsString;
            frmBarraH11.btnEditClick(Sender);
            Panel2.Visible:=True;
            cxSplitter1.Visible := False;
            grid_requsicion.Enabled:=False;
            cxSplitterOpciones.Visible := False;
            PanelDetalle.Visible       := False;
            tsNumeroOrden.SetFocus;
          End;
      end
      else
      begin
         messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
      end;

    except
      on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Requisicion de Materiales', 'Al editar registro', 0);
      end;
    end;
  end;

end;

procedure TFrmRequisicionMaterial.btnExpandirClick(Sender: TObject);
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

procedure TFrmRequisicionMaterial.btnImpInformeClick(Sender: TObject);
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

procedure TFrmRequisicionMaterial.btnLimpiarFClick(Sender: TObject);
begin
   cxView_Requsicion.DataController.Filter.FilterText := '';
   cxView_Requsicion.DataController.Filter.Clear;
    anexo_requisicion.Filtered := False;
    anexo_requisicion.Filter   :=' EstadoM = '+QuotedStr(cxOpcionesFiltro.Text);
    anexo_requisicion.Filtered := True;
   cxInicioRequerido.Style.Font.Color := clNone;
   cxInicioRequerido.Style.Font.Style := [];
   cxFinRequerido.Style.Font.Color := clNone;
   cxFinRequerido.Style.Font.Style := [];
   cxOpcionesFiltro.ItemIndex := 0;
end;

procedure TFrmRequisicionMaterial.btnPostClick(Sender: TObject);
var nombres, cadenas : TStringList;
begin
    if tmComentarios.Text ='' then
         tmComentarios.Text := 'S/C' ;

    nombres:=TStringList.Create;
    cadenas:=TStringList.Create;
    nombres.Add('Lugar de entrega');
    nombres.Add('Referencia');
    nombres.Add('Departamento');
    nombres.Add('solicitante');
    nombres.Add('Observaciones');
    cadenas.Add(tsLugarentrega.Text);
    cadenas.Add(tsnumeroorden.Text);
    cadenas.Add(tsdepartamento.Text);
    cadenas.Add(tssolicitante.Text);
    cadenas.Add(tmComentarios.Text);
    if not validaTexto(nombres, cadenas,'','') then
    begin
        MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
        exit;
    end;

    if tdIdFecha2.Date < tdIdFecha.Date then
    begin
        messageDLG('La Fecha de entrega es menor a la Fecha de Requisición', mtInformation, [mbOk],0);
        exit;
    end;

    if anexo_requisicion.State = dsInsert then
    begin
        try
              anexo_requisicion.FieldValues['sNumFolio']        := autoFolio(anexo_requisicion,'anexo_requisicion',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,tsDepartamento.DataBinding.DataSource.DataSet.FieldByName('IdDepartamento').AsInteger);
              anexo_requisicion.FieldValues['dIdFecha']         := anexo_requisicion.FieldValues['dFechaSolicitado'];
              anexo_requisicion.FieldValues['IdTiporecurso']    := cbRecurso.EditValue;
              anexo_requisicion.FieldValues['sStatus']          := 'PENDIENTE';
              anexo_requisicion.FieldValues['sPrioridad']       := cxPrioridad.Text;
              anexo_requisicion.Post ;

              kardex_almacen('Crea Requisicion  No. [' + anexo_requisicion.FieldValues['sNumFolio'] + ']', 'Otros Movimientos');
              if global_frmActivo = 'requisitaXcotizacion' then
                requisitaXcotizacion(anexo_requisicion.FieldByName('sNumFolio').AsString);
              //aqui termino.....
              anexo_requisicion.Refresh ;

        Except
           on e : exception do
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al salvar registro', 0);
        end;
    end;
    if anexo_requisicion.State = dsEdit then
    begin
         try
                  anexo_requisicion.FieldValues['dIdFecha']  := anexo_requisicion.FieldValues['dFechaSolicitado'];
                  anexo_requisicion.Post;

                  kardex_almacen('Modifica Requisicion  No. [' + IntToStr(anexo_requisicion.FieldValues['iFolioRequisicion']) + ']', 'Otros Movimientos');

                  anexo_requisicion.Refresh ;
         except
            on e : exception do
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al salvar registro', 0);

         end;
    end;

  cxLeyenda.Caption:=titulo;
  btnCancelClick(sender);

  grid_requsicion.Enabled:=True;
  PermisosBotones(FrmRequisicionMaterial,btnPermisos);
end;

procedure TFrmRequisicionMaterial.requisitaXcotizacion(requisicion: string);
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


procedure TFrmRequisicionMaterial.btnPrinterClick(Sender: TObject);
var
   frxDBRequisicion : TfrxDBDataset;
begin
  if (cxView_Requsicion.DataController.DataSource.DataSet.IsEmpty) or (cxView_Requsicion.DataController.DataSource.DataSet.RecordCount<=0) then
       exit;
  try
    frmrepositorio.frxDBRequisicion.Clear;
    AsignarSQL(frmRepositorio.Reporte,'Reporte_requisicion',pUpdate);
    FiltrarDataSet(frmRepositorio.Reporte,'Contrato,Folio',[global_contrato,anexo_requisicion.FieldValues['iFolioRequisicion']]);
    frmRepositorio.Reporte.Open;

    frxDBRequisicion := TfrxDBDataset.Create(nil);
    frxDBRequisicion.DataSet    := frmRepositorio.Reporte;
    frxDBRequisicion.FieldAliases.Clear;
    frxEntrada.DataSets.Add(frxDBRequisicion);

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
      frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_Requisicion.fr3') ;
    end;

    if not FileExists(global_files + global_miReporte + '_ALM_Requisicion.fr3') then
       showmessage('El archivo de reporte '+global_miReporte+'_ALM_Requisicion.fr3 no existe, notifique al administrador del sistema');
    frxPDFExport1.FileName := frmRepositorio.Reporte.FieldByName('sNumFolio').AsString;
    frxentrada.ShowReport;


  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Requisicion de Materiales', 'Al imprimir', 0);
    end;

  end;

end;

procedure TFrmRequisicionMaterial.btnRefreshClick(Sender: TObject);
begin
    anexo_requisicion.Refresh;
    zDepartamento.Refresh;
    Qordenes_trabajo.Refresh;
    zCosto.Refresh;
    zFirma.Refresh;
    anexo_prequisicion.Refresh;
end;

procedure TFrmRequisicionMaterial.btnSolicitarClick(Sender: TObject);
begin
  if (anexo_requisicion.FieldValues['sStatus'] = 'PENDIENTE') then begin
    Application.CreateForm(TFrmModal, FrmModal);
    frmModal.cxPageModal.ActivePage:=frmModal.cxTabSolicita;
    frmModal.cxPageModal.HideTabs:=True;
    FrmModal.show
  end
  else
  begin
    messageDLG('La  Requisición se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
  end;
end;

procedure TFrmRequisicionMaterial.Cancelar1Click(Sender: TObject);
begin
  btnCancelClick(sender);
end;

procedure TFrmRequisicionMaterial.cbCostoPropertiesChange(Sender: TObject);
begin
   if not (cbCosto.EditValue=null) then
      if (anexo_requisicion.State=dsInsert) or (anexo_requisicion.State=dsEdit)  then begin

        if  zCosto.Locate('sNumeroOrden',cbCosto.EditValue,[]) then
          cxDescrip.Text :=  zCosto.FieldByName('mDescripcion').AsString;
      end;
end;

procedure TFrmRequisicionMaterial.cxButton1Click(Sender: TObject);
begin
   if (Anexo_requisicion.State = dsInsert ) or (Anexo_requisicion.State = dsEdit) then
   begin
       global_frmActivo := 'frm_RequisicionMaterial';
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

procedure TFrmRequisicionMaterial.cxEditaDetalleClick(Sender: TObject);
begin
    if ((anexo_requisicion.FieldValues['sStatus'] <> 'PENDIENTE') AND (anexo_requisicion.FieldValues['sStatus'] <> 'CANCELADO') ) then
    begin
       messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
       exit;
    end;
    //Valida si está enlazada a una Orden de Compra
    validaciones;
    if valida then
    begin
        exit;
    end;

    If (anexo_prequisicion.RecordCount > 0 ) Then
    Begin
       OpcButton := 'Edit';
       if cxPageDetalle.ActivePage = cxTabMaterial then
       begin
        
       end;
    End;

end;

procedure TFrmRequisicionMaterial.cxEliminarDetalleClick(Sender: TObject);
var
    indice, iGrid    : integer;
    lContinua : boolean;
    SavePlace: TBookmark;
    folio, id : Integer;

begin
  if ((anexo_requisicion.FieldValues['sStatus']='PENDIENTE') OR (anexo_requisicion.FieldValues['sStatus']='CANCELADO')) then
  begin
    //Valida si está enlazada a una Orden de Compra
    validaciones;
    if valida then
    begin
        exit;
    end;

    If anexo_prequisicion.RecordCount > 0 Then
      If MessageDlg('Desea eliminar el material '+anexo_prequisicion.FieldValues['sIdInsumo']+' de esta Requisición?.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
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

            AsignarSQL(connection.qryUBusca,'elimina_anexo_prequisicion',pUpdate);
            FiltrarDataSet(connection.qryUBusca,'Folio',[VistaGrid.DataController.DataSet.FieldByName('IdPRequisicion').AsInteger]);
            connection.qryUBusca.ExecSQL;

            BarraProgresoAvance(Progreso, 0,100,100/VistaGrid.DataController.GetSelectedCount);

        end;

        VistaGrid.DataController.ClearSelection;
        anexo_prequisicion.Refresh;

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
     messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
  end;
end;


procedure TFrmRequisicionMaterial.cxFiltroRequeridoClick(Sender: TObject);
begin
 if cxOpcionesFiltro.ItemIndex = 0 then
    begin
        anexo_requisicion.Filtered := False;
        anexo_requisicion.Filter   :=' EstadoM = '+QuotedStr(cxOpcionesFiltro.Text)+ ' and dFechaRequerido >= '+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and dFechaRequerido <= '+QuotedStr(FechaSQL(cxFinRequerido.Date));
        anexo_requisicion.Filtered := True;
    end;
    if cxOpcionesFiltro.ItemIndex = 1 then
    begin
        anexo_requisicion.Filtered := False;
        anexo_requisicion.Filter   :=' EstadoM = '+QuotedStr(cxOpcionesFiltro.Text)+ ' and dFechaRequerido >= '+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and dFechaRequerido <= '+QuotedStr(FechaSQL(cxFinRequerido.Date));
        anexo_requisicion.Filtered := True;
    end;
    if cxOpcionesFiltro.ItemIndex = 2 then
    begin
        anexo_requisicion.Filtered := False;
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


procedure TFrmRequisicionMaterial.cxView_MaterialesCellDblClick(
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

procedure TFrmRequisicionMaterial.cxView_RequsicionCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   scroll_requisicion;
//   while not anexo_prequisicion.Eof do begin
//     cont := 0;
//     if anexo_prequisicion.FieldByName('dCantidadSolicitado').AsFloat > 0  then begin
//            cont := cont + 1;
//     end;
//     anexo_prequisicion.Next;
//   end;
end;

procedure TFrmRequisicionMaterial.cxView_RequsicionCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if cxView_Requsicion.OptionsView.CellAutoHeight then
      cxView_Requsicion.OptionsView.CellAutoHeight := False
   else
      cxView_Requsicion.OptionsView.CellAutoHeight := True;
end;

procedure TFrmRequisicionMaterial.cxView_RequsicionCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  var
   Grid:TcxGrid;
begin

end;

procedure TFrmRequisicionMaterial.cxView_RequsicionKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Key = VK_UP) or ( Key = VK_DOWN)  then
      if PanelDetalle.Visible then
          scroll_requisicion;

end;


procedure TFrmRequisicionMaterial.cxView_RequsicionStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
 AColumn, BColumn, CColumn: TcxCustomGridTableItem;
begin

  if connection.uContrato.FieldByName('FK_Titulo').AsString = 'CMMI' then begin

     if  (ARecord.Values[cxView_RequsicionColumn13.Index] <> '-1') and (ARecord.Values[cxView_RequsicionColumn5.Index] = 'PENDIENTE') then begin


//     if (ARecord.Values[cxView_RequsicionColumn5.Index] = 'PENDIENTE') and (anexo_requisicion.FieldByName('CantSolicitado').AsFloat > 0) then begin

         AStyle := TcxStyle.Create(nil);
         AStyle.Color:=connection.cxStysolicitado.Color;
     end;
  end;

end;

procedure TFrmRequisicionMaterial.EnterControl(Sender: TObject);
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

procedure TFrmRequisicionMaterial.ExportaraExcel1Click(Sender: TObject);
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

procedure TFrmRequisicionMaterial.fnrequisita;
begin
    Consumibles.Active := False ;
    if anexo_requisicion.RecordCount > 0 then
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

procedure TFrmRequisicionMaterial.cxNuevoDetalleClick(Sender: TObject);
var
   i : integer;
begin
  Try
      if ((anexo_requisicion.FieldValues['sStatus'] <> 'PENDIENTE') AND (anexo_requisicion.FieldValues['sStatus'] <> 'CANCELADO') ) then
      begin
         messageDLG('La Requisicion se encuentra en Estatus: '+anexo_requisicion.FieldValues['sStatus'], mtInformation, [mbOk],0);
         exit;
      end;

      If (anexo_requisicion.RecordCount > 0) Then
      Begin
          Insertar1.Enabled := False ;
          Editar1.Enabled   := False ;
          Eliminar1.Enabled := False ;
          Refresh1.Enabled  := False ;

      End;

      //Preparar consulta pra requisitar.
      //fnrequisita ;

      OpcButton := 'New';
      if cxPageDetalle.ActivePage = cxTabMaterial then
         global_frmActivo:='Requisicion';

      Application.CreateForm(TfrmAgregarMasivoOP, frmAgregarMasivoOP);
      frmAgregarMasivoOP.show;

      for I := 0 to global_FormNoilPrincipal.MDIChildCount - 1 do
      begin
         global_FormNoilPrincipal.MDIChildren[i].Enabled := False;
         if uppercase(global_FormNoilPrincipal.MDIChildren[i].Name) = uppercase('FrmRequisicionMaterial') then
            global_FormNoilPrincipal.MDIChildren[i].ActiveMDIChild;
      end;
  except
   on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_RequisicionPerf', 'Al agregar registro ', 0);
   end;
  end;

end;

procedure TFrmRequisicionMaterial.cxPageDetalleClick(Sender: TObject);
begin
   cxTabMaterial.TabVisible:=True;
  cxTabMaterial.Caption := anexo_requisicion.FieldByName('Recurso').AsString;
   if cxPageDetalle.ActivePage = cxTabMaterial then
   begin
     titulo2:= anexo_requisicion.FieldByName('Recurso').AsString;
     if anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger <> -1 then
     begin
       anexo_prequisicion.Active:= False;
       AsignarSQL(anexo_prequisicion,'anexo_prequisicion_upts',pUpdate);

       if anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger = 3 then
          FiltrarDataSet(anexo_prequisicion,'contrato,Folio,Tipo',
          [global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString,'mo'])
       else
       if anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger = 7 then
          FiltrarDataSet(anexo_prequisicion,'contrato,Folio,Tipo',
          [global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString,'lo'])
       else
          FiltrarDataSet(anexo_prequisicion,'contrato,Folio,Tipo',
          [global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString,anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger]);
          anexo_prequisicion.Open;
     end
     else begin
       anexo_prequisicion.Active:= False;
       AsignarSQL(anexo_prequisicion,'anexo_prequisicion_upt',pUpdate);
       FiltrarDataSet(anexo_prequisicion,'contrato,Folio',
       [global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString]);
       anexo_prequisicion.Open;
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

procedure TFrmRequisicionMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//guardar_leer_grid(cxView_Requsicion,FrmRequisicionMaterial,1);
//guardar_leer_grid(cxView_Materiales,FrmRequisicionMaterial,1);
  action := cafree;
end;

procedure TFrmRequisicionMaterial.FormShow(Sender: TObject);
var
 temE:TUniQuery;
begin
  btnPermisos := global_btnPermisos;

   // PanelDetalle.Visible := False;
    Panel2.Visible := False;
    cxSplitter1.Visible := False;
    titulo:='Requisiciones';
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

    AsignarSQL(anexo_requisicion,'anexo_requisicion',pUpdate);
    FiltrarDataSet(anexo_requisicion,'contrato,IdDepartamento,Vista',[global_contrato, -1,-1,-1]);
    anexo_requisicion.Open;

    anexo_prequisicion.Active:= False;
    AsignarSQL(anexo_prequisicion,'anexo_prequisicion_upts',pUpdate);
    FiltrarDataSet(anexo_prequisicion,'contrato,Folio,Tipo',[global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString,'2']);
    anexo_prequisicion.Open;

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

    if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
    begin
      //cxView_MaterialesColumn5.Visible := true;
      //btnSolicitar.Visible := true;
    end;

    if temE.FieldByName('FK_Titulo').AsString = 'SIANI' then
    begin
      cxView_RequsicionColumn4.Visible :=False;
      dxLayoutItem1.Visible := False;
      dxLayoutItem15.Visible := False;
    end;


    zDepartamento.Active:= False;
    AsignarSQL(zDepartamento,'master_departamento',pUpDate);
    FiltrarDataSet(zDepartamento,'Activo,Empresa',['Si',temE.FieldByName('IdEmpresa').AsInteger]);
    zDepartamento.Open;

    zGrafica.Active:= False;
    AsignarSQL(zGrafica,'grafica_requisiciones',pUpdate);
    FiltrarDataSet(zGrafica,'years',[anexo_requisicion.FieldByName('Periodo').AsString]);
    zGrafica.Open;

    plataforma.Active:= False;
    AsignarSQL(plataforma,'plataformas',pUpdate);
    FiltrarDataSet(plataforma,'Plataforma',[-1]);
    plataforma.Open;

    zCosto.Active:= False;
    AsignarSQL(zCosto,'ordenesdetrabajo_req',pUpdate);
    FiltrarDataSet(zCosto,'Contrato,Tipo',[global_contrato,'CENTRO_COSTO']);
    zCosto.Open;

    zRecurso.Active:=False;
    zRecurso.SQL.Text:='select IdTiporecurso, Nombre from op_tiporecurso union Select -1 ,'+QuotedStr('TODOS')+'  as Todos';
    zRecurso.Open;

    cxTabMaterial.TabVisible    :=False;
    cxPageDetalle.ActivePageIndex := 7;
    cxGrid1DBChartView1.Categories.DisplayText:='Periodo '+zGrafica.FieldByName('years').AsString;
    if anexo_requisicion.RecordCount > 0 then
      grid_requsicion.SetFocus;

    tsSolicitante.Text  := Global_Nombre ;
//    cxEstados.ItemIndex := 1;

    cxView_Requsicion.DataController.Groups.FullExpand;

    PermisosBotones(FrmRequisicionMaterial,btnPermisos);

    dxLayoutItem9.Visible:=False;
    cxView_Requsicion.Columns[9].Visible:=True;
    frmBarraH11.btnExporta.Visible:=False;

    AsignarSQL(zFirma, 'rd_firmas', pUpdate);
    FiltrarDataSet(zFirma, 'IdFirma, Contrato',[-1, Global_Contrato]);
    zFirma.Open;

    zFirma.Filtered := False;
    zFirma.Filter   := 'VistaUsuario = '+ QuotedStr(self.Caption);
    zFirma.Filtered := True;

    lExpandido := True;

    cxInicioRequerido.Date := Date;
    cxFinRequerido.Date    := Date;
    cxOpcionesFiltro.ItemIndex := 0;

    scroll_requisicion;
//  if cxOpcionesFiltro.ItemIndex = 0 then
//    begin
//        anexo_requisicion.Filtered := False;
//        anexo_requisicion.Filter   :=' EstadoM = '+QuotedStr(cxOpcionesFiltro.Text);
//        anexo_requisicion.Filtered := True;
//    end;
//    guardar_leer_grid(cxView_Requsicion,FrmRequisicionMaterial,0);
//    guardar_leer_grid(cxView_Materiales,FrmRequisicionMaterial,0);

end;

procedure TFrmRequisicionMaterial.frxEntradaGetValue(const VarName: string;
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
    Value := anexo_requisicion.FieldValues['dIdFecha'];
  end;

end;

procedure TFrmRequisicionMaterial.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmRequisicionMaterial.Imprimir1Click(Sender: TObject);
begin
  btnPrinterClick(Sender);
end;

procedure TFrmRequisicionMaterial.InsertaPedidos;
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
          Connection.zcommand.Params.ParamByName('Folio').value          := anexo_requisicion.FieldValues['iFolioRequisicion'] ;
          Connection.zcommand.Params.ParamByName('Insumo').DataType      := ftString ;
          Connection.zcommand.Params.ParamByName('Insumo').value         := Consumibles.FieldValues['sIdInsumo'] ;
          Connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo ;
          Connection.zcommand.Params.ParamByName('Descripcion').value    := Consumibles.fieldValues['mDescripcion'] ;
          Connection.zcommand.Params.ParamByName('Medida').DataType      := ftString ;
          Connection.zcommand.Params.ParamByName('Medida').value         := Consumibles.fieldValues['sMedida'] ; ;
          Connection.zcommand.Params.ParamByName('Requerido').DataType   := ftDate ;
          Connection.zcommand.Params.ParamByName('Cantidad').DataType    := ftFloat ;
          Connection.zcommand.Params.ParamByName('Orden').DataType       := ftString ;
          Connection.zcommand.Params.ParamByName('Orden').value          := anexo_requisicion.FieldValues['sNumeroOrden'] ;
          Connection.zcommand.ExecSQL  ;
          connection.QryBusca2.Next;
     end;
end;

procedure TFrmRequisicionMaterial.Insertar1Click(Sender: TObject);
begin
  btnAddClick(Sender);
end;


procedure TFrmRequisicionMaterial.Registrar1Click(Sender: TObject);
begin
  btnPostClick(Sender);
end;

procedure TFrmRequisicionMaterial.SalidaControl(Sender: TObject);
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

procedure TFrmRequisicionMaterial.tabInformesShow(Sender: TObject);
begin
  OpcionImprimir.EditValue := 1;
end;

procedure TFrmRequisicionMaterial.tdIdFecha2Exit(Sender: TObject);
begin
  cxVigencia.Date := tdIdFecha2.Date;
        if ((tdIdFecha2.Date - tdidFecha.Date)) > 0 then
        BEGIN
           anexo_requisicion.FieldByName('sPrioridad').AsString := 'Normal';
        END
        else
        BEGIN
           anexo_requisicion.FieldByName('sPrioridad').AsString := 'Crítica';
        END;

  SalidaControl(Sender);

end;

procedure TFrmRequisicionMaterial.tdidFechaExit(Sender: TObject);
begin
  tdIdFecha2.Date:=tdidFecha.Date+3;
  SalidaControl(Sender);
end;

procedure TFrmRequisicionMaterial.tsDepartamentoExit(Sender: TObject);
begin
    tsDepartamento.Style.Color := global_color_salidaERP;
    if (anexo_requisicion.State = dsInsert) or (anexo_requisicion.State = dsEdit) then
       anexo_requisicion.FieldValues['sNumFolio'] := autoFolio(anexo_requisicion,'anexo_requisicion',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,tsDepartamento.DataBinding.DataSource.DataSet.FieldByName('IdDepartamento').AsInteger);
end;

procedure TFrmRequisicionMaterial.validaciones;
begin
    valida := False;
     connection.zCommand.Active := False;
     connection.zCommand.SQL.Clear;
     connection.zCommand.SQL.Add('select IdOrdenCompra from anexo_pedidos where sNumeroOrden =:Orden and iFolioRequisicion = :Requisicion  ' +
                                 'and sContrato=:Contrato');
     connection.zCommand.ParamByName('Contrato').AsString    := global_contrato;
     connection.zCommand.ParamByName('Orden').AsString       := anexo_requisicion.FieldValues['sNumeroOrden'];
     connection.zCommand.ParamByName('Requisicion').AsString := anexo_requisicion.FieldValues['iFolioRequisicion'];
     connection.zCommand.Open;
     if connection.zCommand.RecordCount > 0 then
     begin
          messageDLG(' La Requiscion '+anexo_requisicion.FieldValues['sNumFolio']+ ' se encuentra enlazada con una Orden de Compra', mtInformation, [mbOk], 0);
          valida := True;
     end;
end;

procedure TfrmRequisicionMaterial.scroll_requisicion;
begin
    cxPageDetalle.ActivePageIndex := 0;
    cxTabMAterial.TabVisible := True;
    cxTabMaterial.Caption := anexo_requisicion.FieldByName('Recurso').AsString;
    if cxPageDetalle.ActivePage = cxTabMaterial then
    cxTabMaterial.Caption := anexo_requisicion.FieldByName('Recurso').AsString;
    begin
        titulo2:= anexo_requisicion.FieldByName('Recurso').AsString;
        if anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger <> -1 then
        begin

          anexo_prequisicion.Active:= False;
          AsignarSQL(anexo_prequisicion,'anexo_prequisicion_upts',pUpdate);

          if anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger = 3 then
            FiltrarDataSet(anexo_prequisicion,'contrato,Folio,Tipo',
            [global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString,'mo'])
          else
          if anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger = 7 then
             FiltrarDataSet(anexo_prequisicion,'contrato,Folio,Tipo',
             [global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString,'lo'])
          else
          FiltrarDataSet(anexo_prequisicion,'contrato,Folio,Tipo',
          [global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString,anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger]);
          anexo_prequisicion.Open;

        end
        else begin

          anexo_prequisicion.Active:= False;
          AsignarSQL(anexo_prequisicion,'anexo_prequisicion_upt',pUpdate);
          FiltrarDataSet(anexo_prequisicion,'contrato,Folio',
          [global_contrato, anexo_requisicion.FieldByName('iFolioRequisicion').AsString]);
          anexo_prequisicion.Open;

        end;

        while not anexo_prequisicion.Eof do begin
          cont := 0;
          if anexo_prequisicion.FieldByName('dCantidadSolicitado').AsFloat > 0  then begin
            cont := cont + 1;
          end;
          anexo_prequisicion.Next;
        end;


        VistaGrid := cxView_Materiales;
    end;

    VistaGrid.DataController.SelectFromAnchor(VistaGrid.DataController.FocusedRecordIndex,True);

    zGrafica.Active:= False;
    AsignarSQL(zGrafica,'grafica_requisiciones',pUpdate);
    FiltrarDataSet(zGrafica,'years',[anexo_requisicion.FieldByName('Periodo').AsString]);
    zGrafica.Open;
    cxGrid1DBChartView1.Categories.DisplayText:='Periodo '+zGrafica.FieldByName('years').AsString;
    cxLeyenda2.Caption:=titulo2;
end;

end.
