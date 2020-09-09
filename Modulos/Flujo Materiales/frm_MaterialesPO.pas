unit frm_MaterialesPO;

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
  TFrmMaterialesPO = class(TForm)
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
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    cxEliminarDetalle: TcxButton;
    PanelDown: TPanel;
    insumos: TUniQuery;
    dsInsumos: TDataSource;
    cxButton1: TcxButton;
    frxDOCXExport1: TfrxDOCXExport;
    btnAplicarChangeOrder: TcxButton;
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
    cxSplitMaterial: TcxSplitter;
    col_PartidaOC: TcxGridDBColumn;
    col_Unidad: TcxGridDBColumn;
    col_Descripcion: TcxGridDBColumn;
    col_Resultado: TcxGridDBColumn;
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
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxDescripcion: TcxDBMemo;
    dxLayoutItem4: TdxLayoutItem;
    cxUnidad: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    zMedida: TUniQuery;
    dsMedida: TDataSource;
    dxLayoutItem6: TdxLayoutItem;
    cxUnidadAnterior: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cxDescripcionAnterior: TcxDBMemo;
    dxLayoutItem8: TdxLayoutItem;
    cxDescripcionChangeOrder: TcxDBMemo;
    cxCodigo: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    zOrdenCambio: TUniQuery;
    dsOrdenCambio: TDataSource;
    zUpdatePPedido: TUniQuery;
    dsUpdatePPedido: TDataSource;
    dxLayoutItem10: TdxLayoutItem;
    cxRevision: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxTituloChangeOrder: TcxDBTextEdit;
    cxTipoCambio: TcxDBComboBox;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    cxDocumentosChangeOrder: TcxDBMemo;
    dxLayoutItem15: TdxLayoutItem;
    cxAdjuntosChangeOrder: TcxDBMemo;
    dxLayoutItem16: TdxLayoutItem;
    cxPrecioChangeOrder: TcxDBMemo;
    dxLayoutItem17: TdxLayoutItem;
    cxCondicionesChangeOrder: TcxDBMemo;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxEstatus: TcxDBComboBox;
    dxLayoutItem18: TdxLayoutItem;
    col_TipoOrdenCambio: TcxGridDBColumn;
    col_RequerimientoQA: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
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
    procedure cxView_RequsicionDataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: string);
    procedure cxView_RequsicionDataControllerFilterChanged(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);

    procedure formatoEncabezado();
    procedure cxButton1Click(Sender: TObject);
    procedure btnAplicarChangeOrderClick(Sender: TObject);
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
    procedure cxView_RequsicionStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxVentanaChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);

  private
    { Private declarations }
    procedure llenarCampos;

  public
    { Public declarations }
  end;

var

  FrmMaterialesPO: TFrmMaterialesPO;
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
  PathArchivo:String;
  Excel, Libro, Hoja: Variant;
  columnas : array[1..260] of String ;
implementation
uses frm_connection ,
     frm_pernoctan,
     frm_deptos,
     Func_Genericas,
     UnitMetodos, Frm_CotizacionP,
     frm_FirmasNota, frm_InspeccionMateriales,
     Frm_Comentarios;
{$R *.dfm}

procedure TFrmMaterialesPO.btnAddClick(Sender: TObject);
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    cxSplitter1.Visible := TRUE;
    grid_requsicion.Enabled:=False;


    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;
end;

procedure TFrmMaterialesPO.btnCancelarClick(Sender: TObject);
begin
   insumos.Cancel;
   PanelDown.Visible := False;
   cxSplitMaterial.Visible := False;
   PanelMaterial.Visible := False;
end;

procedure TFrmMaterialesPO.btnAplicarChangeOrderClick(Sender: TObject);
begin
     if cxView_Requsicion.DataController.DataSet.FieldByName('CodigoCO').AsString <> '' then
     begin
        if cxView_Requsicion.DataController.DataSet.FieldByName('Usuario').AsString = global_usuario then
        begin
           connection.qryUBusca2.Active:= False;
           AsignarSQL(connection.qryUBusca2,'Update_aceptable_ppedido', pUpdate);
           FiltrarDataSet(connection.qryUBusca2, 'Status,Insumo,IdOrdenCompraDetalle',['Aceptable',cxView_Requsicion.DataController.DataSet.FieldByName('IdInsumo').AsInteger,
            cxView_Requsicion.DataController.DataSet.FieldByName('IdOrdenCompraDetalle').AsInteger ]);
           connection.qryUBusca2.Execute;
           insumos.Refresh;
        end
        else
        messageDLG('Solo el requisitor puede Agregar.',mtInformation,[mbOk],0);
     end
     else
     messageDLG('El material no tienene Change Order!',mtInformation,[mbOk],0);
end;

procedure TFrmMaterialesPO.btnDeleteClick(Sender: TObject);
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

procedure TFrmMaterialesPO.btnDetalleClick(Sender: TObject);
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

procedure TFrmMaterialesPO.btnEditClick(Sender: TObject);
begin

   if cxView_Requsicion.DataController.DataSet.FieldByName('sStatus').AsString <> 'Aceptable' then begin
      //if cxView_Requsicion.DataController.DataSet.FieldByName('Usuario').AsString = global_usuario then begin
         cxLeyenda.Caption:=titulo{+'[Editando]'};
         frmBarraH11.btnEditClick(Sender);
         panel2.Visible:=True;
         cxSplitter1.Visible :=True;
         insumos.Edit;
         zOrdenCambio.Append;
         zOrdenCambio.FieldByName('IdOrdenCambio').AsInteger;
         zOrdenCambio.FieldByName('Codigo').AsString:=autoFolio(zOrdenCambio, 'alm_orden_cambio');
         zOrdenCambio.FieldByName('IdProveedor').AsInteger:= cxView_Requsicion.DataController.DataSet.FieldByName('IdProveedor').AsInteger;
         zOrdenCambio.FieldByName('sNumeroOrden_Contrato').AsString:= cxView_Requsicion.DataController.DataSet.FieldByName('Contrato').AsString;
         zOrdenCambio.FieldByName('sNumeroOrden_Proyecto').AsString:= cxView_Requsicion.DataController.DataSet.FieldByName('Proyecto').AsString;
         zOrdenCambio.FieldByName('sIdUsuario').AsString:= global_nombre;
         zOrdenCambio.FieldByName('Fecha').AsDateTime:=Now();
         cxTipoCambio.ItemIndex:=0;
         zOrdenCambio.FieldByName('TipoOrdenCambio').AsVariant:=cxTipoCambio.EditValue;
         cxEstatus.ItemIndex:=0;
         zOrdenCambio.FieldByName('sStatus').AsVariant:=cxEstatus.EditValue;
         zOrdenCambio.FieldByName('IdOrdenCompraDetalle').AsInteger:=cxView_Requsicion.DataController.DataSet.FieldByName('IdOrdenCompraDetalle').AsInteger;
//      end
//      else
//      messageDLG('Solo el requisitor puede Agregar Change Order.',mtInformation,[mbOk],0);
   end
   else
   messageDLG('No es posible Realizar esta acción con Estatus Aceptable!',mtInformation,[mbOk],0);
end;

procedure TFrmMaterialesPO.btnExportaClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
  dlgSave : TSaveDialog;
begin
  dlgSave := TSaveDialog.Create(nil);
  dlgSave.FileName := 'Materiales OP';
  if dlgSave.Execute then
  begin
    rutaArchivo := dlgSave.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, grid_requsicion);
    dlgSave.Destroy;
    if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;

end;

procedure TFrmMaterialesPO.btnGuardarClick(Sender: TObject);
begin
    insumos.FieldByName('DireccionRedOrdenCambio').AsString:=PathArchivo;
    insumos.Post;

    cxVentana.Path := insumos.FieldByName('DireccionRedOrdenCambio').AsString;
    cxDireccion.Path := insumos.FieldByName('DireccionRedOrdenCambio').AsString;
    btnCancelar.Click;
end;


procedure TFrmMaterialesPO.btnLimpiarFClick(Sender: TObject);
begin
   cxView_Requsicion.DataController.Filter.FilterText := '';
   cxView_Requsicion.DataController.Filter.Clear;
   insumos.Filtered := False;

   cxInicioInspeccion.Style.Font.Color := clNone;
   cxInicioInspeccion.Style.Font.Style := [];
   cxFinInspeccion.Style.Font.Color := clNone;
   cxFinInspeccion.Style.Font.Style := [];
end;

procedure TFrmMaterialesPO.btnPrinterClick(Sender: TObject);
begin
    if cxView_Requsicion.DataController.DataSet.FieldByName('CodigoCO').AsString <> '' then
    begin
        AsignarSQL(Reporte,'Reporte_MaterialesOP',pUpdate);
        FiltrarDataSet(Reporte,'OrdenCompraD', [cxView_Requsicion.DataController.DataSet.FieldByName('IdOrdenCompraDetalle').AsInteger]);
        Reporte.Open;

        frxDBRequisicion.DataSet    := Reporte;
        frxDBRequisicion.FieldAliases.Clear;
        frxEntrada.DataSets.Add(frxDBRequisicion);

        frxEntrada.PreviewOptions.MDIChild := False;
        frxEntrada.PreviewOptions.Modal := True;
        frxEntrada.PreviewOptions.ShowCaptions := False;
        frxEntrada.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

        if cxView_Requsicion.DataController.DataSet.FieldByName('TipoOrdenCambio').AsString = 'REQUISICION' then
        BEGIN
          frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_ChangeOrderRequest.fr3') ;
          if not FileExists(global_files + global_miReporte + '_ALM_ChangeOrderRequest.fr3') then
             showmessage('El archivo de reporte '+global_miReporte+'_ALM_ChangeOrderRequest.fr3 no existe, notifique al administrador del sistema');
          frxPDFExport1.FileName := 'ChangeOrder_'+Reporte.FieldByName('OrdenCompra').AsString;
          frxentrada.ShowReport;
        END
        ELSE
        if cxView_Requsicion.DataController.DataSet.FieldByName('TipoOrdenCambio').AsString = 'COMPRAS' then
        BEGIN
          frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALM_ChangeOrder.fr3') ;
          if not FileExists(global_files + global_miReporte + '_ALM_ChangeOrder.fr3') then
             showmessage('El archivo de reporte '+global_miReporte+'_ALM_ChangeOrder.fr3 no existe, notifique al administrador del sistema');
          frxPDFExport1.FileName := 'ChangeOrder_'+Reporte.FieldByName('OrdenCompra').AsString;
          frxentrada.ShowReport;
        END;
    end
    else
      messageDLG('El material no tiene Orden de Cambio!',mtInformation,[mbOk],0);

end;

procedure TFrmMaterialesPO.btnRefreshClick(Sender: TObject);
begin
    insumos.Refresh;
    zFirma.Refresh;
end;

procedure TFrmMaterialesPO.cxButton1Click(Sender: TObject);
begin
 if (insumos.State = dsInsert ) or (insumos.State = dsEdit) then
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

procedure TFrmMaterialesPO.cxEditaDetalleClick(Sender: TObject);
begin
  cxSplitMaterial.Visible := True;
  PanelMaterial.Visible := True;
  PanelDown.Visible := True;
  insumos.Edit;
  cxDireccion.Path:=insumos.FieldByName('DireccionRedOrdenCambio').AsString;
end;

procedure TFrmMaterialesPO.cxEliminarDetalleClick(Sender: TObject);
begin
    if MessageDlg('Desea borrar la ruta de archivos para el Material '#13+insumos.FieldByName('NumeroMaterial').AsString+'?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        insumos.Edit;
        insumos.FieldByName('DireccionRedOrdenCambio').AsString := '';
        insumos.Post;
    end;
end;

procedure TFrmMaterialesPO.cxFiltroRequeridoClick(Sender: TObject);
begin
    insumos.Filtered := False;
    insumos.Filter   :='  FechaEntrega >= '+QuotedStr(FechaSQL(cxInicioInspeccion.Date))+' and FechaEntrega <= '+QuotedStr(FechaSQL(cxFinInspeccion.Date));
    insumos.Filtered := True;

    cxInicioInspeccion.Style.Font.Color := clBlue;
    cxInicioInspeccion.Style.Font.Style := [fsBold];
    cxFinInspeccion.Style.Font.Color := clBlue;
    cxFinInspeccion.Style.Font.Style := [fsBold];
end;

procedure TFrmMaterialesPO.cxNuevoDetalleClick(Sender: TObject);
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

procedure TFrmMaterialesPO.cxVentanaChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  I: Integer;
  AFilename: WideString;
begin
  for I := 0 to cxVentana.InnerListView.Items.Count - 1 do
    if cxVentana.InnerListView.Items[I].Selected then
    begin
      AFileName := GetPidlName(cxVentana.GetItemAbsolutePIDL(I));
      cxDireccion.Path:=AFilename;
      PathArchivo:=AFileName;
    end;
end;

procedure TFrmMaterialesPO.cxView_RequsicionCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxPageDetalle.ActivePageIndex := 0;
  cxTabCarpetas.TabVisible:=True;
  if PanelDetalle.Visible = True then
    llenarCampos();
end;

procedure TFrmMaterialesPO.cxView_RequsicionCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if cxView_Requsicion.OptionsView.CellAutoHeight then
      cxView_Requsicion.OptionsView.CellAutoHeight := False
   else
      cxView_Requsicion.OptionsView.CellAutoHeight := True;
end;

procedure TFrmMaterialesPO.cxView_RequsicionDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  IsOpen := False;
end;

procedure TFrmMaterialesPO.cxView_RequsicionDataControllerFilterChanged(
  Sender: TObject);
begin
  IsOpen := True;
end;

procedure TFrmMaterialesPO.cxView_RequsicionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//  cxDireccion.ShellListView := nil;
//  if PanelDetalle.Visible = True then
//    llenarCampos() ;
end;

procedure TFrmMaterialesPO.cxView_RequsicionKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//  cxDireccion.ShellListView := nil;
//  if PanelDetalle.Visible = True then
//    llenarCampos() ;
end;

procedure TFrmMaterialesPO.cxView_RequsicionStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
    if (ARecord.Values[col_Resultado.Index] = 'Pendiente') then
    begin
      AStyle := TcxStyle.Create(nil);
      AStyle.Color:=connection.cxStyCondicionado.Color;
    end
    else
    if (ARecord.Values[col_Resultado.Index] = 'Rechazado') then
    begin
        AStyle := TcxStyle.Create(nil);
        AStyle.Color:=connection.cxStyleRechazaMat.Color;
    end;
end;

procedure TFrmMaterialesPO.EnterControl(Sender: TObject);
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

procedure TFrmMaterialesPO.ExportaraExcel1Click(Sender: TObject);
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

procedure TFrmMaterialesPO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFrmMaterialesPO.FormShow(Sender: TObject);
begin
    btnPermisos := global_btnPermisos;

    // PanelDetalle.Visible := False;
    Panel2.Visible := False;
    cxSplitter1.Visible := False;
    titulo:='Seguimento PO/Change Order';
    titulo2:='Change Order';
    cxLeyenda.Caption:=titulo;
    cxLeyenda2.Caption:=titulo2;

    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;

    insumos.Active:= False;
    AsignarSQL(insumos,'OC_lista_materiales_po',pUpdate);
    FiltrarDataSet(insumos,'OrdenCompra',[-1]);
    insumos.Open;

    AsignarSQL(zMedida, 'master_medidas', pUpdate);
    zMedida.Open;

    AsignarSQL(zOrdenCambio,'alm_orden_cambio',pUpdate);
    FiltrarDataSet(zOrdenCambio,'OrdenCambio',[-1]);
    zOrdenCambio.Open;

    cxView_Requsicion.DataController.Groups.FullExpand;

    IsOpen := True;
    PermisosBotones(frmMaterialesPO,btnPermisos);
    frmBarraH11.btnAdd.Visible:=False;
//    frmBarraH11.btnEdit.Visible:=False;
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

procedure TFrmMaterialesPO.frmBarraH21btnCancelClick(Sender: TObject);
begin
  cxLeyenda.Caption:=titulo;
  Panel2.Visible:=False;
  cxSplitter1.Visible := False;
  frmBarraH11.btnActive;
  grid_requsicion.Enabled:=True;
  insumos.Cancel;

end;

procedure TFrmMaterialesPO.frmBarraH21btnPostClick(Sender: TObject);
begin
    try

    Except
       on e : exception do
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Materiales PO', 'Al salvar registro', 0);
    end;

    insumos.Post;
    zOrdenCambio.Post;
    insumos.Refresh ;
    zOrdenCambio.Refresh;
    cxLeyenda.Caption:=titulo;
    frmBarraH21btnCancelClick(sender);
    grid_requsicion.Enabled:=True;
    //PermisosBotones(frmInspeccionMateriales,btnPermisos);
end;

procedure TFrmMaterialesPO.frxEntradaGetValue(const VarName: string;
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

     if CompareText(VarName, 'Fecha') = 0 then
     begin
         Value := DateToStr(now);
     end;



end;

procedure TFrmMaterialesPO.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmMaterialesPO.Insertar1Click(Sender: TObject);
begin
  btnAddClick(Sender);
end;

procedure TFrmMaterialesPO.llenarCampos;
begin
    cxVentana.Path := insumos.FieldByName('DireccionRedOrdenCambio').AsString;
    cxDirectorio.SelectedPath:=ExtractFilePath(insumos.FieldByName('DireccionRedOrdenCambio').AsString);
end;

procedure TFrmMaterialesPO.SalidaControl(Sender: TObject);
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

procedure TFrmMaterialesPO.formatoEncabezado;
begin
      Excel.Selection.MergeCells := False;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 12;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.Font.Name := 'Calibri';
end;

end.

