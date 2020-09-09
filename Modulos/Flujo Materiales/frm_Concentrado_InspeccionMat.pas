unit frm_Concentrado_InspeccionMat;

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
  frxExportPDF, cxCheckGroup, cxDBCheckGroup, cxCalc, cxCheckListBox,
  cxCurrencyEdit, frxExportDOCX, dxCore, cxDateUtils, CxGridExportLink, ShellApi,
  Winapi.ShlObj, cxShellCommon, cxShellComboBox, cxDBShellComboBox,
  cxShellBrowserDialog, dxBreadcrumbEdit, dxShellBreadcrumbEdit, cxListView,
  cxShellListView;

type
  TFrmConcentrado_InspeccionMat = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    Registrar1: TMenuItem;
    Cancelar1: TMenuItem;
    N1: TMenuItem;
    Imprimir1: TMenuItem;
    ImprimirConImportes1: TMenuItem;
    SolicituddeResguardo1: TMenuItem;
    ExportaraExcel1: TMenuItem;
    N5: TMenuItem;
    SeguimientoMaterialxPartidasdeAnexo1: TMenuItem;
    SeguimientoMaterialxPartida1: TMenuItem;
    ImprimirSeguimientoMaterial1: TMenuItem;
    N6: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    ComentariosAdicionales: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    reporte: TUniQuery;
    frxDBRequisicion: TfrxDBDataset;
    frxEntrada: TfrxReport;
    OpenXLS: TOpenDialog;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
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
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxSplitter1: TcxSplitter;
    grid_requsicion: TcxGrid;
    cxView_Requsicion: TcxGridDBTableView;
    col_Codigo: TcxGridDBColumn;
    col_Cantidad: TcxGridDBColumn;
    col_OC: TcxGridDBColumn;
    col_Proveedor: TcxGridDBColumn;
    col_Fecha: TcxGridDBColumn;
    col_Notas: TcxGridDBColumn;
    grid_requsicionLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
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
    cxButton1: TcxButton;
    frxDOCXExport1: TfrxDOCXExport;
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
    cxSplitMaterial: TcxSplitter;
    col_Reporte: TcxGridDBColumn;
    col_PartidaOC: TcxGridDBColumn;
    col_Unidad: TcxGridDBColumn;
    col_Descripcion: TcxGridDBColumn;
    col_Factura: TcxGridDBColumn;
    col_Certificado: TcxGridDBColumn;
    col_Parametro: TcxGridDBColumn;
    col_Resultado: TcxGridDBColumn;
    col_Estado: TcxGridDBColumn;
    cxTabCarpetas: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxVentana: TcxShellListView;
    dxLayoutItem1: TdxLayoutItem;
    cxDirectorio: TdxShellBreadcrumbEdit;
    dxLayoutItem2: TdxLayoutItem;
    PanelMaterial: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    btnGuardar: TcxButton;
    btnCancelar: TcxButton;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    cxDireccion: TcxDBShellComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cxView_RequsicionColumn1: TcxGridDBColumn;
    col_Requisicion: TcxGridDBColumn;
    cxView_RequsicionColumn2: TcxGridDBColumn;
    zRuta: TUniQuery;
    dsRuta: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
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
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);

    procedure formatoEncabezado();
    procedure cxButton1Click(Sender: TObject);
    procedure btnConcentradoClick(Sender: TObject);
    procedure frmBarraH21btnPostClick(Sender: TObject);
    procedure frmBarraH21btnCancelClick(Sender: TObject);
    procedure cxFiltroRequeridoClick(Sender: TObject);
    procedure btnLimpiarFClick(Sender: TObject);
    procedure btnExportaClick(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxEliminarDetalleClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);

  private
    { Private declarations }
    procedure llenarCampos;

  public
    { Public declarations }
  end;

var

  FrmConcentrado_InspeccionMat: TFrmConcentrado_InspeccionMat;
  titulo         : string;
  titulo2        : string;
  recurso        : string;
  isOpen : boolean = False;
  btnPermisos, TipoExplosion : String;
  Valida:boolean;
  MontoTotal : Currency ;
  lExiste    : boolean;
  idAprReq:String;
  AnteriorArray : array[1..10] of string;
  
  Excel, Libro, Hoja: Variant;
  columnas : array[1..260] of String ;
implementation
uses frm_connection ,
     frm_pernoctan,
     frm_deptos,
     Func_Genericas,
     UnitMetodos, Frm_CotizacionP,
     frm_FirmasNota, frm_InspeccionMateriales;
{$R *.dfm}

procedure TFrmConcentrado_InspeccionMat.btnAddClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    cxSplitter1.Visible := TRUE;
    grid_requsicion.Enabled:=False;

    
    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;
end;

procedure TFrmConcentrado_InspeccionMat.btnCancelarClick(Sender: TObject);
begin
   zInspeccionMaterial.Cancel;
   PanelDown.Visible := False;
   cxSplitMaterial.Visible := False;
   PanelMaterial.Visible := False;
end;

procedure TFrmConcentrado_InspeccionMat.btnConcentradoClick(Sender: TObject);
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

procedure TFrmConcentrado_InspeccionMat.btnDeleteClick(Sender: TObject);
begin

  if MessageDlg('¿Desea eliminar el registro seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
    try


    except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Inspección de Materiales', 'Al eliminar registro.', 0);
        end;
    end;
  end;

end;

procedure TFrmConcentrado_InspeccionMat.btnDetalleClick(Sender: TObject);
begin
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

procedure TFrmConcentrado_InspeccionMat.btnEditClick(Sender: TObject);
begin
   cxLeyenda.Caption:=titulo+'[Editando]';
   frmBarraH11.btnEditClick(Sender);
   panel2.Visible:=True;
   cxSplitter1.Visible :=TRUE;

end;

procedure TFrmConcentrado_InspeccionMat.btnExportaClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
  dlgSave : TSaveDialog;
begin
  dlgSave := TSaveDialog.Create(nil);
  dlgSave.FileName := 'Concentrado RIMs';
  if dlgSave.Execute then
  begin
    rutaArchivo := dlgSave.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, grid_requsicion);
    dlgSave.Destroy;
    if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;

end;

procedure TFrmConcentrado_InspeccionMat.btnGuardarClick(Sender: TObject);
begin
    zInspeccionMaterial.Post;      
    cxVentana.Path := zInspeccionMaterial.FieldByName('DireccionRed').AsString;
    cxDirectorio.SelectedPath := zInspeccionMaterial.FieldByName('DireccionRed').AsString;
    btnCancelar.Click;
end;

procedure TFrmConcentrado_InspeccionMat.btnImpInformeClick(Sender: TObject);
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

procedure TFrmConcentrado_InspeccionMat.btnLimpiarFClick(Sender: TObject);
begin
   cxView_Requsicion.DataController.Filter.FilterText := '';
   cxView_Requsicion.DataController.Filter.Clear;
   zInspeccionMaterial.Filtered := False;

   cxInicioInspeccion.Style.Font.Color := clNone;
   cxInicioInspeccion.Style.Font.Style := [];
   cxFinInspeccion.Style.Font.Color := clNone;
   cxFinInspeccion.Style.Font.Style := [];
end;

procedure TFrmConcentrado_InspeccionMat.btnPrinterClick(Sender: TObject);
begin
 // try
    AsignarSQL(Reporte,'Reporte_inspeccion',pUpdate);
//    FiltrarDataSet(Reporte,'IdInspeccion', [zInspeccionMaterial.FieldByName('IdInspeccion').AsInteger]);
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
//    frxPDFExport1.FileName := 'RIM_'+Reporte.FieldByName('sNumFolio').AsString;
    frxPDFExport1.FileName := 'Concentrado_RIM-'+dateToStr(cxFinInspeccion.Date);
    frxentrada.ShowReport;


end;

procedure TFrmConcentrado_InspeccionMat.btnRefreshClick(Sender: TObject);
begin
    zInspeccionMaterial.Refresh;
    zFirma.Refresh;
end;

procedure TFrmConcentrado_InspeccionMat.cxButton1Click(Sender: TObject);
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

procedure TFrmConcentrado_InspeccionMat.cxEditaDetalleClick(Sender: TObject);
begin
   if zInspeccionMaterial.RecordCount > 0 then
   begin
     if (zInspeccionMaterial.FieldValues['Estado'] = 'LIBERADO') then
     begin
        messageDLG('El Reporte de Inspeccón se encuentra en Estatus: '+zInspeccionMaterial.FieldValues['Estado'], mtInformation, [mbOk],0);
        exit;
     end;
   end;

  cxSplitMaterial.Visible := True;
  PanelMaterial.Visible := True;
  PanelDown.Visible := True;
  zInspeccionMaterial.Edit;
end;

procedure TFrmConcentrado_InspeccionMat.cxEliminarDetalleClick(Sender: TObject);
begin
   if zInspeccionMaterial.RecordCount > 0 then
   begin
     if (zInspeccionMaterial.FieldValues['Estado'] = 'LIBERADO') then
     begin
        messageDLG('El Reporte de Inspeccón se encuentra en Estatus: '+zInspeccionMaterial.FieldValues['Estado'], mtInformation, [mbOk],0);
        exit;
     end;
   end;
    if MessageDlg('Desea borrar la ruta de archivos para el Material '#13+zInspeccionMaterial.FieldByName('NumeroMaterial').AsString+'?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        zInspeccionMaterial.Edit;
        zInspeccionMaterial.FieldByName('DireccionRed').AsString := '';
        zInspeccionMaterial.Post;
    end;
end;

procedure TFrmConcentrado_InspeccionMat.cxFiltroRequeridoClick(Sender: TObject);
begin
    zInspeccionMaterial.Filtered := False;
    zInspeccionMaterial.Filter   :='  Fecha >= '+QuotedStr(FechaSQL(cxInicioInspeccion.Date))+' and Fecha <= '+QuotedStr(FechaSQL(cxFinInspeccion.Date));
    zInspeccionMaterial.Filtered := True;

    cxInicioInspeccion.Style.Font.Color := clBlue;
    cxInicioInspeccion.Style.Font.Style := [fsBold];
    cxFinInspeccion.Style.Font.Color := clBlue;
    cxFinInspeccion.Style.Font.Style := [fsBold];
end;

procedure TFrmConcentrado_InspeccionMat.cxNuevoDetalleClick(Sender: TObject);
begin
//   if zInspeccionMaterial.RecordCount > 0 then
//   begin
//     if (zInspeccionMaterial.FieldValues['Estatus'] <> 'PENDIENTE') then
//     begin
//        messageDLG('El Reporte de Inspeccón se encuentra en Estatus: '+zInspeccionMaterial.FieldValues['Estatus'], mtInformation, [mbOk],0);
//        exit;
//     end;
//   end;
//
//  cxSplitMaterial.Visible := True;
//  PanelMaterial.Visible := True;
//  PanelDown.Visible := True;
//  zInspeccionMaterial.Append;
end;

procedure TFrmConcentrado_InspeccionMat.cxView_RequsicionCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxPageDetalle.ActivePageIndex := 0;
  cxTabCarpetas.TabVisible:=True;
  if PanelDetalle.Visible = True then
    llenarCampos();
end;

procedure TFrmConcentrado_InspeccionMat.cxView_RequsicionCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if cxView_Requsicion.OptionsView.CellAutoHeight then
      cxView_Requsicion.OptionsView.CellAutoHeight := False
   else
      cxView_Requsicion.OptionsView.CellAutoHeight := True;
end;

procedure TFrmConcentrado_InspeccionMat.cxView_RequsicionDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  IsOpen := False;
end;

procedure TFrmConcentrado_InspeccionMat.cxView_RequsicionDataControllerFilterChanged(
  Sender: TObject);
begin
  IsOpen := True;
end;

procedure TFrmConcentrado_InspeccionMat.cxView_RequsicionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//  cxDireccion.ShellListView := nil;
//  if PanelDetalle.Visible = True then
//    llenarCampos() ;
end;

procedure TFrmConcentrado_InspeccionMat.cxView_RequsicionKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//  cxDireccion.ShellListView := nil;
//  if PanelDetalle.Visible = True then
//    llenarCampos() ;
end;

procedure TFrmConcentrado_InspeccionMat.EnterControl(Sender: TObject);
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

procedure TFrmConcentrado_InspeccionMat.ExportaraExcel1Click(Sender: TObject);
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

procedure TFrmConcentrado_InspeccionMat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFrmConcentrado_InspeccionMat.FormShow(Sender: TObject);
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

    AsignarSQL(zInspeccionMaterial,'Reporte_inspeccion',pUpdate);
    FiltrarDataSet(zInspeccionMaterial,'IdInspeccion', ['-1']);
    zInspeccionMaterial.Open;

    cxView_Requsicion.DataController.Groups.FullExpand;

    IsOpen := True;
    PermisosBotones(frmConcentrado_InspeccionMat,btnPermisos);
    frmBarraH11.btnAdd.Visible:=False;
    frmBarraH11.btnEdit.Visible:=False;
    frmBarraH11.btnDelete.Visible:=False;
    cxNuevoDetalle.Visible := False;


    AsignarSQL(zFirma, 'rd_firmas', pUpdate);
    FiltrarDataSet(zFirma, 'IdFirma, Contrato',[-1, Global_Contrato]);
    zFirma.Open;

    zFirma.Filtered := False;
    zFirma.Filter   := 'VistaUsuario = '+ QuotedStr(self.Caption);
    zFirma.Filtered := True;

    cxInicioInspeccion.Date := date;
    cxFinInspeccion.Date    := date;

    if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then
    cxView_Requsicion.Columns[1].Visible:=true
    else
    cxView_Requsicion.Columns[1].Visible:=false;


end;

procedure TFrmConcentrado_InspeccionMat.frmBarraH21btnCancelClick(Sender: TObject);
begin
  cxLeyenda.Caption:=titulo;
  Panel2.Visible:=False;
  cxSplitter1.Visible := False;
  frmBarraH11.btnActive;
  grid_requsicion.Enabled:=True;

end;

procedure TFrmConcentrado_InspeccionMat.frmBarraH21btnPostClick(Sender: TObject);
begin
    try
    
    Except
       on e : exception do
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Inspección de Materiales', 'Al salvar registro', 0);
    end;

    cxLeyenda.Caption:=titulo;
    frmBarraH21.btnCancelClick(sender);
    //PermisosBotones(frmInspeccionMateriales,btnPermisos);
end;

procedure TFrmConcentrado_InspeccionMat.frxEntradaGetValue(const VarName: string;
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

procedure TFrmConcentrado_InspeccionMat.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmConcentrado_InspeccionMat.Imprimir1Click(Sender: TObject);
var
rutaArchivo: String;
begin

  zRuta.Active := False;
  AsignarSQL(zRuta,'master_rutas',pUpdate);
  FiltrarDataSet(zRuta,'Ruta,Activo',['-1','Si']);
  zRuta.Open;
  if zRuta.FieldByName('Activo').AsString = 'Si' then
    rutaArchivo := zRuta.FieldByName('Ruta').AsString+'\RIM '+zInspeccionMaterial.FieldByName('CodRim').AsString+'.pdf'
  else
   showmessage('No hay Ruta activa');
  try
   if not FileExists(rutaArchivo) then
   raise Exception.Create('No se encontró el archivo '+'RIM '+zInspeccionMaterial.FieldByName('CodRim').AsString);

    ShellExecute(0, 'open',PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  except
      on e:Exception do
        Showmessage(e.Message);
    end;

end;

procedure TFrmConcentrado_InspeccionMat.Insertar1Click(Sender: TObject);
begin
  btnAddClick(Sender);
end;

procedure TFrmConcentrado_InspeccionMat.llenarCampos;
begin
    cxVentana.Path := zInspeccionMaterial.FieldByName('DireccionRed').AsString;
    cxDirectorio.SelectedPath := zInspeccionMaterial.FieldByName('DireccionRed').AsString;

end;

procedure TFrmConcentrado_InspeccionMat.SalidaControl(Sender: TObject);
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

procedure TFrmConcentrado_InspeccionMat.formatoEncabezado;
begin
      Excel.Selection.MergeCells := False;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 12;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.Font.Name := 'Calibri';
end;

end.

