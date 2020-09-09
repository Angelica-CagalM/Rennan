unit frm_InspeccionMateriales;

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
  dxToggleSwitch, dxDBToggleSwitch,  ExcelXP, ComObj, Excel2000, unitExcel,
  frxExportPDF, cxCheckGroup, cxDBCheckGroup, cxCalc, cxCheckListBox, unitMetodos,
  cxCurrencyEdit, frxExportDOCX, dxCore, cxDateUtils, CxGridExportLink, ShellApi;

type
  TFrmInspeccionMateriales = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    dsOrdenCompra: TDataSource;
    uOrdenCompra: TUniQuery;
    PopupPrincipal: TPopupMenu;
    reporte: TUniQuery;
    frxDBRequisicion: TfrxDBDataset;
    frxEntrada: TfrxReport;
    OpenXLS: TOpenDialog;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
    Qordenes_trabajo: TUniQuery;
    ds_ordenes_trabajo: TDataSource;
    zGrafica: TUniQuery;
    dsGrafica: TDataSource;
    zReporteDetalle: TUniQuery;
    ds_firma: TDataSource;
    zFirma: TUniQuery;
    SaveDialog1: TSaveDialog;
    frxPDFExport1: TfrxPDFExport;
    PanelPrincipal: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxSplitter1: TcxSplitter;
    grid_requsicion: TcxGrid;
    cxView_Requsicion: TcxGridDBTableView;
    col_Codigo: TcxGridDBColumn;
    col_Contrato: TcxGridDBColumn;
    col_OC: TcxGridDBColumn;
    col_Proveedor: TcxGridDBColumn;
    col_Fecha: TcxGridDBColumn;
    col_Recibe: TcxGridDBColumn;
    grid_requsicionLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    cxPageDetalle: TcxPageControl;
    cxTabMaterial: TcxTabSheet;
    cxGridMateriales: TcxGrid;
    cxView_Materiales: TcxGridDBTableView;
    cxView_MaterialesColumn1: TcxGridDBColumn;
    cxView_MaterialesColumn2: TcxGridDBColumn;
    cxView_MaterialesColumn3: TcxGridDBColumn;
    cxView_MaterialesColumn4: TcxGridDBColumn;
    cxView_MaterialesColumn7: TcxGridDBColumn;
    cxGridMaterialesLevel1: TcxGridLevel;
    cxTabManoObra: TcxTabSheet;
    cxGridManoObra: TcxGrid;
    cxViewManoObra: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridManoObraLevel: TcxGridLevel;
    cxTabConsumibles: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabMaquinaria: TcxTabSheet;
    cxGridMquinaria: TcxGrid;
    cxGridViewMaquinaria: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridMaquinariaLevel: TcxGridLevel;
    cxTabTercerias: TcxTabSheet;
    cxGridTercerias: TcxGrid;
    cxGridViewTercerias: TcxGridDBTableView;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridTerceriasLevel: TcxGridLevel;
    cxTabLogistica: TcxTabSheet;
    cxGridLogistica: TcxGrid;
    cxGridLogisticaView: TcxGridDBTableView;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridLogisticasLevel: TcxGridLevel;
    cxTabRecurso: TcxTabSheet;
    cxGridRecursos: TcxGrid;
    cxGridViewRecurso: TcxGridDBTableView;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridRecursoLevel: TcxGridLevel;
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
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    cxEliminarDetalle: TcxButton;
    PanelDown: TPanel;
    zInspeccionMaterial: TUniQuery;
    dsInspeccionMaterial: TDataSource;
    zInspeccionDetalle: TUniQuery;
    dsInspeccionDetalle: TDataSource;
    frxDOCXExport1: TfrxDOCXExport;
    insumos: TUniQuery;
    ds_insumos: TDataSource;
    btnConcentrado: TcxButton;
    Panel4: TPanel;
    dxLayoutControl4: TdxLayoutControl;
    btnLimpiarF: TcxButton;
    btnExpandir: TcxButton;
    cxFiltroRequerido: TcxButton;
    cxLabel2: TcxLabel;
    cxInicioInspeccion: TcxDateEdit;
    cxFinInspeccion: TcxDateEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    col_estatus: TcxGridDBColumn;
    PanelMaterial: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    cxSplitMaterial: TcxSplitter;
    cxCertificado_det: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxFactura_det: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    cxParametro_det: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxResultado_det: TcxDBComboBox;
    dxLayoutItem19: TdxLayoutItem;
    cxFechaLiberacion_det: TcxDBDateEdit;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    btnGuardar: TcxButton;
    btnCancelar: TcxButton;
    cxView_MaterialesColumn5: TcxGridDBColumn;
    cxColada_det: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    zppedido: TUniQuery;
    ds_ppedido: TDataSource;
    ds_proveedores: TDataSource;
    Proveedores: TUniQuery;
    zRequisicion: TUniQuery;
    dsRequisicion: TDataSource;
    anexo_ppedido: TUniQuery;
    ds_anexo_ppedido: TDataSource;
    anexo_preq: TUniQuery;
    ds_anexo_preq: TDataSource;
    CopiarFactura1: TMenuItem;
    CopiarColada1: TMenuItem;
    CopiarResultado1: TMenuItem;
    PegarFactura1: TMenuItem;
    PegarColada1: TMenuItem;
    PegarResultado1: TMenuItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    cxCodigo: TcxDBTextEdit;
    mObservaciones: TcxDBMemo;
    dFecha: TcxDBDateEdit;
    cxFirma2: TcxDBLookupComboBox;
    cxButton1: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    cxView_MaterialesColumn6: TcxGridDBColumn;
    col_status: TcxGridDBColumn;
    cxComplemento: TcxDBComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cxFuenteSize: TcxDBCalcEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxCantidad: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxItem: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxSerie: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxView_MaterialesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxView_RequsicionCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxView_RequsicionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxView_RequsicionKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure frxEntradaGetValue(const VarName: string; var Value: Variant);
    procedure btnPrinterClick(Sender: TObject);
    procedure ExportaraExcel1Click(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxView_RequsicionCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnImpInformeClick(Sender: TObject);
    procedure cxView_RequsicionDataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: string);
    procedure cxView_RequsicionDataControllerFilterChanged(Sender: TObject);
    procedure cxEliminarDetalleClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);

    procedure formatoEncabezado();
    procedure cxButton1Click(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnConcentradoClick(Sender: TObject);
    procedure frmBarraH21btnPostClick(Sender: TObject);
    procedure frmBarraH21btnCancelClick(Sender: TObject);
    procedure cxFiltroRequeridoClick(Sender: TObject);
    procedure btnLimpiarFClick(Sender: TObject);
    procedure CopiarFactura1Click(Sender: TObject);
    procedure CopiarColada1Click(Sender: TObject);
    procedure CopiarResultado1Click(Sender: TObject);
    procedure PegarFactura1Click(Sender: TObject);
    procedure PegarColada1Click(Sender: TObject);
    procedure PegarResultado1Click(Sender: TObject);
    procedure cxView_RequsicionMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxView_MaterialesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }


  public
    { Public declarations }
     btnR:Boolean;
     procedure llenarCampos;
  end;

var

  FrmInspeccionMateriales: TFrmInspeccionMateriales;
  titulo         : string;
  titulo2        : string;
  recurso        : string;
  isOpen : boolean = False;
  btnPermisos, TipoExplosion : String;
  Valida:boolean;
  MontoTotal : Currency ;
  lExiste    : boolean;
  idAprReq:String;
  lOpcionSelecciona  : boolean;
  AnteriorArray : array[1..10] of string;
  IdGMaterialCopia    : Integer;
  MaterialCopia, mComentarioOT :String;
  Excel, Libro, Hoja: Variant;
  columnas : array[1..260] of String ;
implementation
uses frm_connection,
     Func_Genericas,
     frm_FirmasNota,
     Frm_Comentarios, Frm_Modal, frm_agregar_OrdenCompra, frm_proveedores,frm_repositorio;
{$R *.dfm}

procedure TFrmInspeccionMateriales.btnAddClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    //panel2.Visible:=True;
    //cxSplitter1.Visible := TRUE;
    grid_requsicion.Enabled:=False;

    zInspeccionMaterial.First;

    zInspeccionMaterial.AfterScroll := nil;
    zInspeccionMaterial.Append;
    zInspeccionMaterial.FieldByName('sContrato').AsString:=global_contrato;
    zInspeccionMaterial.FieldByName('Codigo').AsString:=autoFolio(zInspeccionMaterial, 'alm_inspeccion_material');
    zInspeccionMaterial.FieldValues['sIdUsuario']    := Global_Usuario;
    zInspeccionMaterial.FieldValues['Fecha']:= Date;
    cxFirma2.DataBinding.DataSource.DataSet.FieldByName('IdFirma').AsInteger := zFirma.FieldByName('IdFirma').AsInteger;
    zInspeccionMaterial.FieldByName('IdOrdenCompra').AsInteger :=  uOrdenCompra.FieldByName('IdOrdenCompra').AsInteger;

    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;

    uOrdenCompra.Refresh;
    uOrdenCompra.Filtered := False;
    uOrdenCompra.Filter   := 'TotalAceptado > 0 ';
    uOrdenCompra.Filtered := True;

    Application.CreateForm(TFrmModal, FrmModal);
    frmModal.Caption := 'Nuevo Reporte de Inspección';
    frmModal.Height  := 530;
    frmModal.cxPageModal.ActivePage:=frmModal.cxTabOrdenesCompra;
    frmModal.cxPageModal.HideTabs:=True;
    FrmModal.show;

    frmModal.cxFechaEOC.SetFocus;
end;

procedure TFrmInspeccionMateriales.btnCancelarClick(Sender: TObject);
begin
   zInspeccionDetalle.Cancel;
   PanelDown.Visible := False;
   cxSplitMaterial.Visible := False;
   PanelMaterial.Visible := False;
end;

procedure TFrmInspeccionMateriales.btnConcentradoClick(Sender: TObject);
begin
// try
    AsignarSQL(Reporte,'Reporte_inspeccion',pUpdate);
    FiltrarDataSet(Reporte,'IdInspeccion', [-1]);
    Reporte.Open;

    Reporte.Filtered := False;
    Reporte.Filter   :='  Fecha >= '+QuotedStr(FechaSQL(cxInicioInspeccion.Date))+' and Fecha <= '+QuotedStr(FechaSQL(cxFinInspeccion.Date));
    Reporte.Filtered := True;

    frxDBRequisicion.DataSet    := Reporte;
    frxDBRequisicion.FieldAliases.Clear;
    frxEntrada.DataSets.Add(frxDBRequisicion);

    frxEntrada.PreviewOptions.MDIChild := False;
    frxEntrada.PreviewOptions.Modal := True;
    frxEntrada.PreviewOptions.ShowCaptions := False;
    frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;


    frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_Concentrado_RIM.fr3') ;
    if not FileExists(global_files + global_miReporte + '_ALM_Concentrado_RIM.fr3') then
       showmessage('El archivo de reporte '+global_miReporte+'_ALM_Concentrado_RIM.fr3 no existe, notifique al administrador del sistema');
    frxPDFExport1.FileName := 'Concentrado_RIM-'+dateToStr(cxFinInspeccion.Date);
    frxentrada.ShowReport;
end;

procedure TFrmInspeccionMateriales.btnDeleteClick(Sender: TObject);
var
zActualiza : tUniquery;
begin
  if zInspeccionMaterial.RecordCount > 0 then
  begin
      if (zInspeccionMaterial.FieldValues['sStatus'] <> 'PENDIENTE') then
      begin
          messageDLG('El Reporte de Inspeccón se encuentra en Estatus: '+zInspeccionMaterial.FieldValues['sStatus'], mtInformation, [mbOk],0);
          exit;
      end;
      if MessageDlg('¿Desea eliminar el registro seleccionado? Se Eliminaran todos los Materiales!', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       begin
        try
          zActualiza:=tUniquery.create(nil);
          zActualiza.Connection := Connection.uConnection;

          zActualiza.Active:=False;
          zActualiza.SQL.Clear;
          zActualiza.SQL.Add('update anexo_requisicion set Vista =:Vista '+
                               'where iFolioRequisicion =:Id');
          zActualiza.ParamByName('Id').AsInteger    := cxView_Requsicion.DataController.DataSet.FieldByName('iFolioRequisicion').AsInteger;
          zActualiza.ParamByName('Vista').AsString := 'Si';
          zActualiza.ExecSQL;
          zRequisicion.Refresh;

          zActualiza.Active:=False;
          zActualiza.SQL.Clear;
          zActualiza.SQL.Add('update anexo_pedidos set Vista =:Vista '+
                               'where IdOrdenCompra =:Id');
          zActualiza.ParamByName('Id').AsInteger    := cxView_Requsicion.DataController.DataSet.FieldByName('IdOrdenCompra').AsInteger;
          zActualiza.ParamByName('Vista').AsString := 'Si';
          zActualiza.ExecSQL;

//          zActualiza.Active:=False;
//          zActualiza.SQL.Clear;
//          zActualiza.SQL.Add('update anexo_ppedido set sStatus ='+Quotedstr('Aceptable')+' '+
//                               'where IdOrdenCompra =:Id');
//          zActualiza.ParamByName('Id').AsInteger    := cxView_Requsicion.DataController.DataSet.FieldByName('IdOrdenCompra').AsInteger;
//          zActualiza.ExecSQL;

          uOrdenCompra.Refresh;

          zActualiza.Active:=False;
          zActualiza.Sql.Clear ;
          zActualiza.SQL.Add('Delete from alm_inspeccion_material_det where IdInspeccion = :Id') ;
          zActualiza.Params.ParamByName('Id').value := cxView_Requsicion.DataController.DataSet.FieldByName('IdInspeccion').AsInteger;
          zActualiza.ExecSQL;

          zInspeccionMaterial.Delete;
          zInspeccionMaterial.ApplyUpdates();
          zInspeccionMaterial.Refresh;
          llenarCampos;

        except
            on E : exception do begin
               UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Inspección de Materiales', 'Al eliminar registro.', 0);
            end;
        end;
      end;
  end;

end;

procedure TFrmInspeccionMateriales.btnDetalleClick(Sender: TObject);
begin
  cxView_Materiales.DataController.Groups.FullExpand;
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
       llenarCampos();
   end;

end;

procedure TFrmInspeccionMateriales.btnEditClick(Sender: TObject);
begin
   if zInspeccionMaterial.RecordCount > 0 then
   begin
     if (zInspeccionMaterial.FieldValues['sStatus'] <> 'PENDIENTE') then
     begin
        messageDLG('El Reporte de Inspeccón se encuentra en Estatus: '+zInspeccionMaterial.FieldValues['sStatus'], mtInformation, [mbOk],0);
        exit;
     end;
     cxLeyenda.Caption:=titulo+'[Editando]';
     frmBarraH11.btnEditClick(Sender);
     //panel2.Visible:=True;
     //cxSplitter1.Visible :=TRUE;

     Application.CreateForm(TFrmModal, FrmModal);
     frmModal.Caption := 'Editando Reporte de Inspección';
     frmModal.Height  := 530;
     frmModal.cxPageModal.ActivePage:=frmModal.cxTabOrdenesCompra;
     frmModal.cxPageModal.HideTabs:=True;
     FrmModal.show;

     zInspeccionMaterial.Edit;
     zInspeccionMaterial.FieldByName('IdOrdenCompra').AsInteger :=  uOrdenCompra.FieldByName('IdOrdenCompra').AsInteger;

     grid_requsicion.Enabled:=False;
     cxSplitterOpciones.Visible := False;
     PanelDetalle.Visible       := False;

   end;
end;

procedure TFrmInspeccionMateriales.btnImpInformeClick(Sender: TObject);
var
  requisicionesGrid : String;
   contReqGrid, j : Integer;
begin
  if opcionImprimir.EditValue = 1 then
  begin
    IsOpen:=False;
    generar_reporte_grid(cxView_Requsicion,'Reporte de Requisiciones');
    IsOpen:=True;
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

    IsOpen:=False;
    generar_reporte_grid_detalles(cxView_Requsicion,zReporteDetalle,'Reporte de Requisiciones con Detalles', 'sNumFolio');
    IsOpen:=True;
  end;
end;

procedure TFrmInspeccionMateriales.btnLimpiarFClick(Sender: TObject);
begin
   cxView_Requsicion.DataController.Filter.FilterText := '';
   cxView_Requsicion.DataController.Filter.Clear;
   zInspeccionMaterial.Filtered := False;

   cxInicioInspeccion.Style.Font.Color := clNone;
   cxInicioInspeccion.Style.Font.Style := [];
   cxFinInspeccion.Style.Font.Color := clNone;
   cxFinInspeccion.Style.Font.Style := [];
end;

procedure TFrmInspeccionMateriales.btnPrinterClick(Sender: TObject);
begin
 // try
    AsignarSQL(frmRepositorio.reporte,'Reporte_inspeccion',pUpdate);
    FiltrarDataSet(frmRepositorio.reporte,'IdInspeccion', [zInspeccionMaterial.FieldByName('IdInspeccion').AsInteger]);
    frmRepositorio.reporte.Open;

    frxDBRequisicion.DataSet    := frmRepositorio.reporte;
    frxDBRequisicion.FieldAliases.Clear;
    frxEntrada.DataSets.Add(frxDBRequisicion);

    frxEntrada.PreviewOptions.MDIChild := False;
    frxEntrada.PreviewOptions.Modal := True;
    frxEntrada.PreviewOptions.ShowCaptions := False;
    frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;


    frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_RIM.fr3') ;
    if not FileExists(global_files + global_miReporte + '_ALM_RIM.fr3') then
       showmessage('El archivo de reporte '+global_miReporte+'_ALM_RIM.fr3 no existe, notifique al administrador del sistema');
    frxPDFExport1.FileName := 'RIM-'+frmRepositorio.reporte.FieldByName('sNumFolio').AsString;
    frxEntrada.ShowReport;


end;

procedure TFrmInspeccionMateriales.btnRefreshClick(Sender: TObject);
begin
    zInspeccionMaterial.Refresh;
    zFirma.Refresh;
end;

procedure TFrmInspeccionMateriales.CopiarColada1Click(Sender: TObject);
begin
    PegarColada1.Enabled := True;
    CopiarColada1.Enabled := False;
    CopiarFactura1.Enabled := False;
    CopiarResultado1.Enabled:=False;
    MaterialCopia := zInspeccionDetalle.FieldByName('LoteColada').AsString;
    lOpcionSelecciona := True;
    cxView_Materiales.OptionsSelection.MultiSelect := True;
end;

procedure TFrmInspeccionMateriales.CopiarFactura1Click(Sender: TObject);
begin
    PegarFactura1.Enabled := True;
    CopiarFactura1.Enabled := False;
    CopiarColada1.Enabled := False;
    CopiarResultado1.Enabled:=False;
    IdGMaterialCopia := zInspeccionDetalle.FieldByName('NumeroFactura').AsInteger;
    lOpcionSelecciona := True;
    cxView_Materiales.OptionsSelection.MultiSelect := True;
end;

procedure TFrmInspeccionMateriales.CopiarResultado1Click(Sender: TObject);
begin
    PegarResultado1.Enabled := True;
    CopiarResultado1.Enabled := False;
    CopiarFactura1.Enabled := False;
    CopiarColada1.Enabled:=False;
    MaterialCopia := zInspeccionDetalle.FieldByName('sStatus').AsString;
    lOpcionSelecciona := True;
    cxView_Materiales.OptionsSelection.MultiSelect := True;
end;

procedure TFrmInspeccionMateriales.cxButton1Click(Sender: TObject);
begin
 if (zInspeccionMaterial.State = dsInsert ) or (zInspeccionMaterial.State = dsEdit) then
   begin
       global_frmActivo := 'frm_InspeccionMateriales';
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

procedure TFrmInspeccionMateriales.cxEditaDetalleClick(Sender: TObject);
begin
   if zInspeccionMaterial.RecordCount > 0 then
   begin
     if (zInspeccionMaterial.FieldValues['sStatus'] <> 'PENDIENTE') then
     begin
        messageDLG('El Reporte de Inspeccón se encuentra en Estatus: '+zInspeccionMaterial.FieldValues['sStatus'], mtInformation, [mbOk],0);
        exit;
     end;
   end;
  if valida then
  begin
    frmBarraH21.btnCancel.Click;
    exit;
  end;

  zInspeccionDetalle.Edit;
  cxSplitMaterial.Visible := True;
  PanelMaterial.Visible := True;
  PanelDown.Visible := True;
end;

procedure TFrmInspeccionMateriales.cxEliminarDetalleClick(Sender: TObject);
var
  SavePlace: TBookmark;
  indice, iGrid    : integer;
begin
   if zInspeccionMaterial.RecordCount > 0 then
   begin
     if (zInspeccionMaterial.FieldValues['sStatus'] <> 'PENDIENTE') then
     begin
        messageDLG('El Reporte de Inspeccón se encuentra en Estatus: '+zInspeccionMaterial.FieldValues['sStatus'], mtInformation, [mbOk],0);
        exit;
     end;
   end;;

    //validaciones;
    if valida then
    begin
      frmBarraH21.btnCancel.Click;
      exit;
    end;

    if zInspeccionDetalle.RecordCount > 0 then
    begin
        try
          iGrid     := 0;
          indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
          cxView_Materiales.DataController.FocusedRowIndex := indice;
          SavePlace := zInspeccionDetalle.GetBookmark;

          with cxView_Materiales.DataController.DataSource.DataSet do
          for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
          begin
              indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
              cxView_Materiales.DataController.FocusedRowIndex := indice;
              with connection do
              begin
                  zUCommand.Active := False;
                  zUCommand.SQL.Clear;
                  zUCommand.SQL.Add('Delete from alm_inspeccion_material_det where IdInspeccionDetalle =:Id');
                  zUCommand.Params.ParamByName('Id').AsInteger := cxView_Materiales.DataController.DataSet.FieldByName('IdInspeccionDetalle').AsInteger;
                  zUCommand.ExecSQL;

//                  AsignarSQL(zUCommand,'Update_rechazar_ppedido',pUpDate);
//                  FiltrarDataSet(zUCommand,'ComentarioStatus,Insumo,IdOrdenCompraDetalle',['',cxView_Materiales.DataController.DataSet.FieldByName('IdInsumo').AsInteger, cxView_Materiales.DataController.DataSet.FieldByName('IdOrdenCompraDetalle').AsInteger ]);
//                  zUCommand.ExecSQL;
              end
          end;
          cxView_Materiales.DataController.DataSet.Refresh;

          try
            zInspeccionDetalle.GotoBookmark(SavePlace);
          except
          else
            zInspeccionDetalle.FreeBookmark(SavePlace);
          end;
       except
         on e: exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Ordenes de Compra', 'Al eliminar registro', 0);
         end;
       end;
    end;
    cxGridMateriales.SetFocus;

end;

procedure TFrmInspeccionMateriales.cxFiltroRequeridoClick(Sender: TObject);
begin
    zInspeccionMaterial.Filtered := False;
    zInspeccionMaterial.Filter   :='  Fecha >= '+QuotedStr(FechaSQL(cxInicioInspeccion.Date))+' and Fecha <= '+QuotedStr(FechaSQL(cxFinInspeccion.Date));
    zInspeccionMaterial.Filtered := True;

    cxInicioInspeccion.Style.Font.Color := clBlue;
    cxInicioInspeccion.Style.Font.Style := [fsBold];
    cxFinInspeccion.Style.Font.Color := clBlue;
    cxFinInspeccion.Style.Font.Style := [fsBold];
end;

procedure TFrmInspeccionMateriales.cxView_MaterialesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if cxView_Materiales.OptionsView.CellAutoHeight then
       cxView_Materiales.OptionsView.CellAutoHeight := False
    else
       cxView_Materiales.OptionsView.CellAutoHeight := True;
end;

procedure TFrmInspeccionMateriales.cxView_MaterialesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    PegarFactura1.Visible := True;
    CopiarFactura1.Visible := True;
    PegarColada1.Visible := True;
    CopiarColada1.Visible := True;
    PegarResultado1.Visible := True;
    CopiarResultado1.Visible := True;
end;

procedure TFrmInspeccionMateriales.cxView_RequsicionCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxTabMaterial.TabVisible:=False;
  cxTabManoObra.TabVisible:=False;
  cxTabConsumibles.TabVisible:=False;
  cxTabMaquinaria.TabVisible:=False;
  cxTabTercerias.TabVisible:=False;
  cxTabLogistica.TabVisible:=False;
  cxTabRecurso.TabVisible:=False;
  cxPageDetalle.ActivePageIndex := 0;
  cxTabMaterial.TabVisible:=True;

  if PanelDetalle.Visible = True then
    llenarCampos();
end;

procedure TFrmInspeccionMateriales.cxView_RequsicionCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if cxView_Requsicion.OptionsView.CellAutoHeight then
      cxView_Requsicion.OptionsView.CellAutoHeight := False
   else
      cxView_Requsicion.OptionsView.CellAutoHeight := True;
end;

procedure TFrmInspeccionMateriales.cxView_RequsicionDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  IsOpen := False;
end;

procedure TFrmInspeccionMateriales.cxView_RequsicionDataControllerFilterChanged(
  Sender: TObject);
begin
  IsOpen := True;
end;

procedure TFrmInspeccionMateriales.cxView_RequsicionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if PanelDetalle.Visible = True then
    llenarCampos() ;
end;

procedure TFrmInspeccionMateriales.cxView_RequsicionKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if PanelDetalle.Visible = True then
    llenarCampos() ;
end;

procedure TFrmInspeccionMateriales.cxView_RequsicionMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    PegarFactura1.Visible := False;
    CopiarFactura1.Visible := False;
    PegarColada1.Visible := False;
    CopiarColada1.Visible := False;
    PegarResultado1.Visible := False;
    CopiarResultado1.Visible := False;
end;

procedure TFrmInspeccionMateriales.EnterControl(Sender: TObject);
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

    if (sender is tcxCalcEdit) then
        tcxCalcEdit(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TFrmInspeccionMateriales.ExportaraExcel1Click(Sender: TObject);
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

     ExportExcelPersonalizado(QueryImagen,cxView_Requsicion,'Inspección','Inspección de Materiales');
  finally
      QueryImagen.Destroy;
  end;
end;

procedure TFrmInspeccionMateriales.cxNuevoDetalleClick(Sender: TObject);
begin
   if zInspeccionMaterial.RecordCount > 0 then
   begin
     if (zInspeccionMaterial.FieldValues['sStatus'] <> 'PENDIENTE') then
     begin
        messageDLG('El Reporte de Inspeccón se encuentra en Estatus: '+zInspeccionMaterial.FieldValues['sStatus'], mtInformation, [mbOk],0);
        exit;
     end;
   end;

  OpcButton := 'New';
  if valida then
  begin
    frmBarraH21.btnCancel.Click;
    exit;
  end;

  cxSplitMaterial.Visible:=True;
  PanelMaterial.Visible:= True;

  insumos.Active:= False;
  AsignarSQL(insumos,'OC_lista_materiales_po',pUpdate);
  FiltrarDataSet(insumos,'OrdenCompra',[zInspeccionMaterial.FieldByName('IdOrdenCompra').AsInteger]);
  insumos.Open;

  if insumos.RecordCount = 0 then
    messageDLG('No existen Materiales En el Catálogo', mtInformation, [mbOk], 0);

  insumos.Filtered := False;
  insumos.Filter   := 'dRequisicion <> dSumaCantidad ';
  insumos.Filtered := True;

  Application.CreateForm(TfrmAgregarMasivoOrdenCompra, frmAgregarMasivoOrdenCompra);
  frmAgregarMasivoOrdenCompra.show;

  frmAgregarMasivoOrdenCompra.cxLabel3.Caption := 'Materiales PO: '+ uOrdenCompra.FieldByName('Codigo').AsString;

  if zInspeccionMaterial.RecordCount > 0 then
  begin
     frmAgregarMasivoOrdenCompra.tdCantidad.Value := insumos.FieldByName('dRequisicion').AsFloat;
     if insumos.FieldByName('CantidadPendiente').AsFloat > 0 then
     begin
        frmAgregarMasivoOrdenCompra.cxCertificados.Text := insumos.FieldByName('Certificados').AsString;
        frmAgregarMasivoOrdenCompra.cxNfactura.Text     := insumos.FieldByName('NumeroFactura').AsString;
        frmAgregarMasivoOrdenCompra.cxColada.Text       := insumos.FieldByName('LoteColada').AsString;
        frmAgregarMasivoOrdenCompra.tdCantidad.Value := insumos.FieldByName('CantidadPendiente').AsFloat;
     end;
     frmAgregarMasivoOrdenCompra.cxFecha.EditValue:=zInspeccionMaterial.FieldByName('Fecha').AsDateTime;
  end;

  frmAgregarMasivoOrdenCompra.cxResultado.Text  := 'ACEPTABLE';
  frmAgregarMasivoOrdenCompra.cxParametro.Text  := 'VISUAL/DIMENSIONAL';

end;



procedure TFrmInspeccionMateriales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFrmInspeccionMateriales.FormShow(Sender: TObject);
begin
    btnPermisos := global_btnPermisos;

    // PanelDetalle.Visible := False;
    Panel2.Visible := False;
    cxSplitter1.Visible := False;
    titulo:='Inspección de Materiales';
    titulo2:='Materiales';
    cxLeyenda.Caption:=titulo;
    cxLeyenda2.Caption:=titulo2;

    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;

    AsignarSQL(uOrdenCompra,'OC_reporte_inspeccion',pUpdate);
    FiltrarDataSet(uOrdenCompra,'sStatus', ['AUTORIZADO']);
    uOrdenCompra.Open;

    AsignarSQL(zInspeccionMaterial,'alm_inspeccion_material',pUpdate);
    FiltrarDataSet(zInspeccionMaterial,'Contrato,IdInspeccion', [global_contrato,-1]);
    zInspeccionMaterial.Open;

    AsignarSQL(zInspeccionDetalle,'alm_inspeccion_material_det',pUpdate);
    FiltrarDataSet(zInspeccionDetalle,'IdInspeccion', [zInspeccionMaterial.FieldByName('IdInspeccion').AsInteger]);
    zInspeccionDetalle.Open;

    AsignarSQL(Qordenes_trabajo,'ordenesdetrabajo', pUpdate);
    FiltrarDataSet(Qordenes_trabajo, 'Contrato, TProyecto', [Global_contrato, 'PROYECTO']);
    Qordenes_trabajo.Open;

    AsignarSQL(Proveedores, 'master_proveedores',pUpdate);
    Proveedores.Open;

    AsignarSQL(zRequisicion,'requisicion_insp_liberado',pUpdate);
    zRequisicion.Open;


    cxView_Requsicion.DataController.Groups.FullExpand;

    IsOpen := True;
    PermisosBotones(frmInspeccionMateriales,btnPermisos);
    frmBarraH11.btnExporta.Visible:=False;

    AsignarSQL(zFirma, 'rd_firmas', pUpdate);
    FiltrarDataSet(zFirma, 'IdFirma, Contrato',[-1, Global_Contrato]);
    zFirma.Open;

    zFirma.Filtered := False;
    zFirma.Filter   := 'VistaUsuario = '+ QuotedStr(self.Caption);
    zFirma.Filtered := True;

    cxInicioInspeccion.Date := date;
    cxFinInspeccion.Date    := date;
end;

procedure TFrmInspeccionMateriales.btnGuardarClick(Sender: TObject);
var
IdDetalleOC : Integer;
consulta : TUniQuery;
begin
    zInspeccionDetalle.Post;
    btnCancelar.Click;

    consulta:= TUniQuery.Create(Self);
    consulta.Connection := connection.Uconnection;
    consulta.Active:= False;
    AsignarSQL(consulta, 'actualiza_material_estatus',pUpdate);
    FiltrarDataSet(consulta,'OrdenCompra',[zInspeccionMaterial.FieldByName('IdOrdenCompra').AsInteger]);
    consulta.Open;


    IdDetalleOC := consulta.FieldByName('IdOrdenCompraDetalle').AsInteger;

     consulta.Locate('IdOrdenCompraDetalle',IdDetalleOC,[]);
      if consulta.FieldByName('dRequisicion').AsFloat = consulta.FieldByName('dSumaCantidad').AsFloat then
      begin
          AsignarSQL(Connection.QryUBusca2,'Update_rechazar_ppedido',pUpDate);
          FiltrarDataSet(Connection.QryUBusca2,'Estatus,ComentarioStatus,Insumo,IdOrdenCompraDetalle',['Entregado','',consulta.FieldByName('IdInsumo').AsInteger, consulta.FieldByName('IdOrdenCompraDetalle').AsInteger ]);
          Connection.QryUBusca2.ExecSQL;
      end
      else
      begin
          AsignarSQL(Connection.QryUBusca2,'Update_rechazar_ppedido',pUpDate);
          FiltrarDataSet(Connection.QryUBusca2,'Estatus,ComentarioStatus,Insumo,IdOrdenCompraDetalle',['Aceptable','',consulta.FieldByName('IdInsumo').AsInteger, consulta.FieldByName('IdOrdenCompraDetalle').AsInteger ]);
          Connection.QryUBusca2.ExecSQL;
      end;

end;

procedure TFrmInspeccionMateriales.frmBarraH21btnCancelClick(Sender: TObject);
begin
  cxLeyenda.Caption:=titulo;
  Panel2.Visible:=False;
  cxSplitter1.Visible := False;
  frmBarraH11.btnActive;
  grid_requsicion.Enabled:=True;
  zInspeccionMaterial.Cancel;
end;

procedure TFrmInspeccionMateriales.frmBarraH21btnPostClick(Sender: TObject);
var
   zInsertarInspeccion,zActualiza : tUniquery;
   indice, iGrid    : integer;
begin
    try

      zInspeccionMaterial.post;
      zInspeccionMaterial.Refresh ;
    Except
       on e : exception do
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Inspección de Materiales', 'Al salvar registro', 0);
    end;

    cxLeyenda.Caption:=titulo;
    frmBarraH21btnCancelClick(sender);
    grid_requsicion.Enabled:=True;
    PermisosBotones(frmInspeccionMateriales,btnPermisos);
end;

procedure TFrmInspeccionMateriales.frxEntradaGetValue(const VarName: string;
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

     if CompareText(VarName, 'FECHA_I') = 0 then
     begin
         Value := cxInicioInspeccion.Date
     end;

     if CompareText(VarName, 'FECHA_F') = 0 then
     begin
         Value := cxFinInspeccion.Date
     end;
end;

procedure TFrmInspeccionMateriales.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmInspeccionMateriales.Insertar1Click(Sender: TObject);
begin
  btnAddClick(Sender);
end;

procedure TFrmInspeccionMateriales.llenarCampos;
begin
   AsignarSQL(zInspeccionDetalle,'alm_inspeccion_material_det',pUpdate);
   FiltrarDataSet(zInspeccionDetalle,'IdInspeccion', [zInspeccionMaterial.FieldByName('IdInspeccion').AsInteger]);
   zInspeccionDetalle.Open;
end;

procedure TFrmInspeccionMateriales.PegarColada1Click(Sender: TObject);
var
   zActualiza : tUniquery;
   indice, iGrid    : integer;
   SavePlace, SavePlace2 : TBookMark;
begin
   try
      zActualiza:=tUniquery.create(nil);
      zActualiza.Connection := Connection.uConnection;

      iGrid     := 0;
      indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
      cxView_Materiales.DataController.FocusedRowIndex := indice;

      with cxView_Materiales.DataController.DataSource.DataSet do
      for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
      begin
          indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
          cxView_Materiales.DataController.FocusedRowIndex := indice;

          zActualiza.SQL.Clear;
          zActualiza.SQL.Add('update alm_inspeccion_material_det set LoteColada =:Colada where IdInspeccionDetalle =:IdOld');
          zActualiza.ParamByName('Colada').AsString := MaterialCopia;
          zActualiza.ParamByName('IdOld').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdInspeccionDetalle').AsInteger;
          zActualiza.ExecSQL;
      end;

   finally
    PegarColada1.Enabled := False;
    CopiarFactura1.Enabled := True;
    CopiarColada1.Enabled := True;
    CopiarResultado1.Enabled:=True;
    cxView_Materiales.OptionsSelection.MultiSelect := False;
    lOpcionSelecciona := False;
    zInspeccionDetalle.Refresh;
    zActualiza.Destroy;
   end;

end;

procedure TFrmInspeccionMateriales.PegarFactura1Click(Sender: TObject);
var
   zActualiza : tUniquery;
   indice, iGrid    : integer;
   SavePlace, SavePlace2 : TBookMark;
begin
   try
      zActualiza:=tUniquery.create(nil);
      zActualiza.Connection := Connection.uConnection;

      iGrid     := 0;
      indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
      cxView_Materiales.DataController.FocusedRowIndex := indice;

      with cxView_Materiales.DataController.DataSource.DataSet do
      for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
      begin
          indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
          cxView_Materiales.DataController.FocusedRowIndex := indice;

          zActualiza.SQL.Clear;
          zActualiza.SQL.Add('update alm_inspeccion_material_det set NumeroFactura =:Factura where IdInspeccionDetalle =:IdOld');
          zActualiza.ParamByName('Factura').AsInteger := IdGMaterialCopia;
          zActualiza.ParamByName('IdOld').AsInteger:= cxView_Materiales.DataController.DataSet.FieldByName('IdInspeccionDetalle').AsInteger;
          zActualiza.ExecSQL;
      end;

   finally
    PegarFactura1.Enabled := False;
    CopiarFactura1.Enabled := True;
    CopiarColada1.Enabled := True;
    CopiarResultado1.Enabled:=True;
    cxView_Materiales.OptionsSelection.MultiSelect := False;
    lOpcionSelecciona := False;
    zInspeccionDetalle.Refresh;
    zActualiza.Destroy;
   end;

end;

procedure TFrmInspeccionMateriales.PegarResultado1Click(Sender: TObject);
var
   zActualiza : tUniquery;
   indice, iGrid    : integer;
   SavePlace, SavePlace2 : TBookMark;
begin
   try
      zActualiza:=tUniquery.create(nil);
      zActualiza.Connection := Connection.uConnection;

      iGrid     := 0;
      indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
      cxView_Materiales.DataController.FocusedRowIndex := indice;

      with cxView_Materiales.DataController.DataSource.DataSet do
      for iGrid := 0 to cxView_Materiales.DataController.GetSelectedCount - 1 do
      begin
          indice := cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
          cxView_Materiales.DataController.FocusedRowIndex := indice;

          zActualiza.SQL.Clear;
          zActualiza.SQL.Add('update alm_inspeccion_material_det set sStatus =:sStatus where IdInspeccionDetalle =:IdOld');
          zActualiza.ParamByName('sStatus').AsString := MaterialCopia;
          zActualiza.ParamByName('IdOld').AsInteger    := cxView_Materiales.DataController.DataSet.FieldByName('IdInspeccionDetalle').AsInteger;
          zActualiza.ExecSQL;
      end;

   finally
    PegarResultado1.Enabled := False;
    CopiarFactura1.Enabled := True;
    CopiarColada1.Enabled := True;
    CopiarResultado1.Enabled:=True;
    cxView_Materiales.OptionsSelection.MultiSelect := False;
    lOpcionSelecciona := False;
    zInspeccionDetalle.Refresh;
    zActualiza.Destroy;
   end;

end;

procedure TFrmInspeccionMateriales.SalidaControl(Sender: TObject);
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

    if (sender is tcxCalcEdit) then
        tcxCalcEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;

end;

procedure TFrmInspeccionMateriales.formatoEncabezado;
begin
      Excel.Selection.MergeCells := False;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 12;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.Font.Name := 'Calibri';
end;

end.

