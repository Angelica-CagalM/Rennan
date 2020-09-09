unit frm_Mantenimiento;

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
  dxSkinXmas2008Blue, Vcl.Menus, cxProgressBar, Vcl.StdCtrls, cxButtons,
  cxLabel, frm_barraH1, Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  dxBarBuiltInMenu, cxDBLookupComboBox, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxGroupBox, cxRadioGroup, cxGridChartView,
  cxGridDBChartView, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxCalc,
  cxDBEdit, cxTextEdit, dxLayoutControl, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxPC, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxSplitter, frm_barraH2, MemDS, DBAccess, Uni, frm_connection, global, unitgenerales,
  cxCalendar, cxMemo, UnitReportes, cxImageComboBox, System.ImageList,
  Vcl.ImgList, cxCheckBox, dxToggleSwitch, dxDBToggleSwitch, cxLookupEdit,
  cxDBLookupEdit, Vcl.ExtDlgs, frm_VerPDF, frxClass, frxDBSet, UnitRH;

type
  TfrmMantenimiento = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    PanelPrincipal: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxSplitter1: TcxSplitter;
    grid_mantenimiento: TcxGrid;
    cxView_mantenimiento: TcxGridDBTableView;
    grid_mantenimientoLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    cxPageDetalle: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGridMto: TcxGrid;
    cxView_Mto: TcxGridDBTableView;
    cxView_MtoColumn1: TcxGridDBColumn;
    cxView_MtoColumn2: TcxGridDBColumn;
    cxView_MtoColumn5: TcxGridDBColumn;
    cxView_MtoColumn6: TcxGridDBColumn;
    cxGridMtoLevel1: TcxGridLevel;
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
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxView_mantenimientoColumn1: TcxGridDBColumn;
    cxView_mantenimientoColumn2: TcxGridDBColumn;
    cxView_mantenimientoColumn3: TcxGridDBColumn;
    cxView_mantenimientoColumn4: TcxGridDBColumn;
    cxView_mantenimientoColumn5: TcxGridDBColumn;
    cxView_mantenimientoColumn6: TcxGridDBColumn;
    zMaterial: TUniQuery;
    dsMaterial: TDataSource;
    zMtoDetalle: TUniQuery;
    dsMtoDetalle: TDataSource;
    cxView_mantenimientoColumn7: TcxGridDBColumn;
    cxImageList1: TcxImageList;
    cxView_mantenimientoColumn8: TcxGridDBColumn;
    cxTabSheet1: TcxTabSheet;
    cxGridCertificado: TcxGrid;
    cxGridCertificados: TcxGridDBTableView;
    colCodigo: TcxGridDBColumn;
    colNombre: TcxGridDBColumn;
    colActivo: TcxGridDBColumn;
    cxGridCertificadoLevel1: TcxGridLevel;
    cxSplitter5: TcxSplitter;
    PanelDown7: TPanel;
    dxLayoutControl7: TdxLayoutControl;
    cxButton1: TcxButton;
    cxDocumento: TcxDBLookupComboBox;
    cxActivoDocumento: TdxDBToggleSwitch;
    edtFecha: TcxDBDateEdit;
    btnAgregarDocto: TcxButton;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dsCertVP: TDataSource;
    zCertVP: TUniQuery;
    zCertificado: TUniQuery;
    dsCertificado: TDataSource;
    dsCatalogo_docto: TDataSource;
    zCatalogo_docto: TUniQuery;
    dlgPDF: TFileOpenDialog;
    OpenPicture: TOpenPictureDialog;
    dlgSavePDF: TSaveDialog;
    ReporteMto: TfrxReport;
    frxDBMantenimiento: TfrxDBDataset;
    zReporteMto: TUniQuery;
    cxView_mantenimientoColumn9: TcxGridDBColumn;
    zReporteMtoDetAmp: TUniQuery;
    frxDBMtoVolt: TfrxDBDataset;
    frxDBDMtoAmp: TfrxDBDataset;
    zReporteMtoDetVolt: TUniQuery;
    cxTabSheet4: TcxTabSheet;
    zFallas: TUniQuery;
    dsFallas: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    frxDBFallas: TfrxDBDataset;
    zReporteFallas: TUniQuery;
    ReporteFallas: TfrxReport;
    cxEliminarDetalle: TcxButton;
    edtCertificado: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    edtFechaVigencia: TcxDBDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxTabSheetMovimientos: TcxTabSheet;
    cxGridMovimiento: TcxGrid;
    cxGridMovimientos: TcxGridDBTableView;
    colDescripcion: TcxGridDBColumn;
    colTipo: TcxGridDBColumn;
    cxGridMovimientosColumn1: TcxGridDBColumn;
    cxGridMovimientosColumn2: TcxGridDBColumn;
    cxGridMovimientoLevel1: TcxGridLevel;
    zMovimientos: TUniQuery;
    dsMovimientos: TDataSource;
    reporte: TUniQuery;
    rDiario: TfrxReport;
    frxReporteValida: TfrxDBDataset;
    frxDBLista: TfrxDBDataset;
    Panel4: TPanel;
    cxLeyenda3: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure zMaterialAfterScroll(DataSet: TDataSet);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxPageDetalleChange(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure btnImpInformeClick(Sender: TObject);
    procedure cxView_mantenimientoCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGridCertificadosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnPrinterClick(Sender: TObject);
    procedure ReporteMtoGetValue(const VarName: string; var Value: Variant);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure cxTabSheet4Show(Sender: TObject);
    procedure ReporteFallasGetValue(const VarName: string; var Value: Variant);
    procedure btnDetalleClick(Sender: TObject);
    procedure cxEliminarDetalleClick(Sender: TObject);
    procedure cxGridMovimientosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure rDiarioGetValue(const VarName: string; var Value: Variant);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure edtFechaExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMantenimiento: TfrmMantenimiento;
  btnPermisos, titulo, titulo2:String;
  IsOpen : Boolean = False;
  SavePlace     : TBookmark;
  Archivo   : string;
  lNoGuardarDocto :boolean;

implementation

{$R *.dfm}

procedure TfrmMantenimiento.btnDetalleClick(Sender: TObject);
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
       AsignarSQL(zMtoDetalle, 'mto_mantenimiento_calibracion', pUpDate);
       FiltrarDataSet(zMtoDetalle,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString]);
       zMtoDetalle.Open;

   end;
end;

procedure TfrmMantenimiento.btnImpInformeClick(Sender: TObject);
begin
  if opcionImprimir.EditValue = 1 then
  begin
    IsOpen:=False;
    generar_reporte_grid(cxView_mantenimiento,'Reporte de Mantenimientos');
    IsOpen:=True;
  end;
end;

procedure TfrmMantenimiento.btnPrinterClick(Sender: TObject);
begin
    //Reportes de mantenimiento por insumo
    if PanelDetalle.Visible=False then
    begin
       AsignarSQL(zReporteMto,'mto_reporte_mantenimiento_calibra',pUpdate);
      FiltrarDataSet(zReporteMto,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString]);
      zReporteMto.Open;

      if zReporteMto.RecordCount > 0 then
      begin
        AsignarSQL(zReporteMtoDetAmp,'mto_reporte_mantenimiento_pruebas_amp',pUpdate);
        FiltrarDataSet(zReporteMtoDetAmp,'IdMantenimiento',[zReporteMto.FieldByName('IdMantenimientoDetalle').AsString]);
        zReporteMtoDetAmp.Open;

        AsignarSQL(zReporteMtoDetVolt,'mto_reporte_mantenimiento_pruebas_volt',pUpdate);
        FiltrarDataSet(zReporteMtoDetVolt,'IdMantenimiento',[zReporteMto.FieldByName('IdMantenimientoDetalle').AsString]);
        zReporteMtoDetVolt.Open;
      end;

      ReporteMantenimiento( zReporteMto, zReporteMtoDetVolt, zReporteMtoDetAmp, frmMantenimiento, ReporteMto.OnGetValue, progreso);

    end
    else
    begin
      if cxPageDetalle.ActivePageIndex = 0 then
      begin
        AsignarSQL(zReporteMto,'mto_reporte_mantenimiento_calibra2',pUpdate);
        FiltrarDataSet(zReporteMto,'IdInsumo,IdMantenimientoDetalle',[zMaterial.FieldByName('IdInsumo').AsString, zMtoDetalle.FieldByName('IdMantenimientoDetalle').AsString]);
        zReporteMto.Open;

        if zReporteMto.RecordCount > 0 then
        begin
          AsignarSQL(zReporteMtoDetAmp,'mto_reporte_mantenimiento_pruebas_amp',pUpdate);
          FiltrarDataSet(zReporteMtoDetAmp,'IdMantenimiento',[zReporteMto.FieldByName('IdMantenimientoDetalle').AsString]);
          zReporteMtoDetAmp.Open;

          AsignarSQL(zReporteMtoDetVolt,'mto_reporte_mantenimiento_pruebas_volt',pUpdate);
          FiltrarDataSet(zReporteMtoDetVolt,'IdMantenimiento',[zReporteMto.FieldByName('IdMantenimientoDetalle').AsString]);
          zReporteMtoDetVolt.Open;
        end;

        ReporteMantenimiento( zReporteMto, zReporteMtoDetVolt, zReporteMtoDetAmp, frmMantenimiento, ReporteMto.OnGetValue, progreso);

      end;

      if cxPageDetalle.ActivePageIndex = 1 then
      begin
        AsignarSQL(zReporteFallas,'mto_reporte_falla',pUpdate);
        FiltrarDataSet(zReporteFallas,'IdInsumo,IdMantenimientoFalla',[zMaterial.FieldByName('IdInsumo').AsString, zFallas.FieldByName('IdMantenimientoFalla').AsString]);
        zReporteFallas.Open;

        ReporteMtoFalla( zReporteFallas,  frmMantenimiento, ReporteFallas.OnGetValue, progreso);
      end;

      if cxPageDetalle.ActivePageIndex = 2 then
      begin

      end;

    end;



end;

procedure TfrmMantenimiento.cxButton1Click(Sender: TObject);
  var
  BlobStream : TStream;
  FileStream : TFileStream;
  Ext, sArchivo : string;
begin
  try
    dlgPDF.FileName := '';
    lNoGuardarDocto := False;

    if not dlgPDF.Execute() then
      exit;

    Archivo := dlgPDF.FileName;

    if not FileExists(Archivo) then
      raise exception.Create('No se encontro el archivo especificado');

    Ext := ExtractFileExt(Archivo);

    if ( Ext <> '.PDF' ) and ( Ext <> '.pdf' ) then
      raise exception.Create('El archivo no es valido');

    zCertVP.FieldByName('NombreDocto').AsString := '0000';
    TBlobField(zCertVP.FieldByName('DocumentoDigital')).LoadfromFile(archivo);

  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
      if zCertVP.state in [dsInsert, dsEdit] then
         lNoGuardarDocto := True;
    end;
  end;

end;

procedure TfrmMantenimiento.cxCancelarDetalleClick(Sender: TObject);
begin
  try

    zCertVP.Cancel;
    PanelDown.Visible := False;

    cxSplitter5.Visible:= False;
    PanelDown7.Visible:=False;
    cxNuevoDetalle.Enabled := true;
    cxEditaDetalle.Enabled := true;
    cxEliminarDetalle.Enabled := True;
    cxLeyenda2.Caption:=titulo2;


    grid_mantenimiento.Enabled := True;
    cxGridMto.Enabled:=True;
  except
    ;

  end;
end;

procedure TfrmMantenimiento.cxEditaDetalleClick(Sender: TObject);
begin
  try
        PanelDown.Visible := True;
   if cxPageDetalle.ActivePageIndex = 2 then
   begin

       cxLeyenda2.Caption:=titulo2+'[Editando]';
       cxSplitter5.Visible:= True;

       panelDown7.Visible:=True;
       AsignarSQL(zCertVP,'documentos_insumos_VP',pUpdate);
       FiltrarDataSet(zCertVP,'IdDocto',[zCertificado.FieldByName('IdDoctoInsumo').AsInteger]);
       zCertVP.Open;
       zCertVP.Edit;
   end;
  except
    ;
  end;
end;

procedure TfrmMantenimiento.cxEliminarDetalleClick(Sender: TObject);
begin
  if cxPageDetalle.ActivePageIndex = 2 then
  begin
   if MessageDlg('Desea eliminar '+zCertificado.FieldByName('Codigo').AsString+'?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      zCertificado.Delete;
      zCertificado.ApplyUpdates();
      zCertificado.Refresh;
    end;
  end;
end;

procedure TfrmMantenimiento.cxGridCertificadosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if zCertificado.RecordCount > 0 then
  begin
    AsignarSQL(zCertVP,'documentos_insumos_VP',pUpdate);
    FiltrarDataSet(zCertVP,'IdDocto',[zCertificado.FieldByName('IdDoctoInsumo').AsInteger]);
    zCertVP.Open;

    if not zCertVP.FieldByName('DocumentoDigital').IsNull then
    begin
      if not zCertVP.FieldByName('NombreDocto').IsNull then
        global_Temp := zCertVP.FieldByName('NombreDocto').AsString
      else
        global_Temp := 'cert_'+zMaterial.FieldByName('Codigo').AsString+'.pdf';

      TBlobField(zCertVP.FieldByName('DocumentoDigital')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp);
      Application.CreateForm(TFrmVerPDF, FrmVerPDF);
      FrmVerPDF.Caption := global_Temp;
      FrmVerPDF.ShowModal;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;
end;

procedure TfrmMantenimiento.cxGridMovimientosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var
  sParamUser:String;
begin
   Reporte.Active := False;
   Reporte.SQL.Clear;
   if zMovimientos.FieldByName('IdSalida').AsInteger > 0 then
   begin
     sParamUser := 'frxDBEntrada';
     Reporte.SQL.Add('select alm.*, s.*, b.*, s.sNumeroOrden as sIdFolio, i.Codigo as Insumo, i.Material, i.sModelo, m.sDescripcion as Tipomovimiento, md.codigo as Medida, ma.Marca, '+
                   '(select sNumeroSerie from alm_insumos_series  where IdSerie = b.IdSerie ) as NumeroSerie '+
                   'from almacen_salida s '+
                   'inner join bitacoradesalida b '+
                   'on(b.sContrato = s.sContrato and b.iFolioSalida = s.iFolioSalida) '+
                   'inner join alm_almacenes alm '+
                   'on (alm.IdAlmacen = b.IdAlmacen) '+
                   'inner join alm_insumos i '+
                   'on (i.IdInsumo = b.IdInsumo) '+
                   'inner join movimientosdealmacen m on (m.IdTipo = s.IdTipo) '+
                   'left join alm_marcas ma on (i.IdMarca=ma.IdMarca) '+
                   'left join master_medidas md on (md.IdMedida = i.IdMedida) '+
                   'where s.sFolioSalida =:Folio ');
   end;

   if zMovimientos.FieldByName('IdEntrada').AsInteger > 0 then
   begin
     sParamUser := 'frxDBEntrada';
     Reporte.SQL.Add('select alm.*, s.*, b.* ,s.sFolioEntrada as sFolioSalida, s.sNumeroOrden as sIdFolio, i.Codigo as Insumo, i.Material, i.sModelo, m.sDescripcion as Tipomovimiento, md.codigo as Medida, ma.Marca, '+
                   '(select sNumeroSerie from alm_insumos_series  where IdSerie = b.IdSerie ) as NumeroSerie '+
                   'from almacen_entrada s '+
                   'inner join bitacoradeentrada b '+
                   'on(b.sContrato = s.sContrato and b.iFolioEntrada = s.iFolioEntrada) '+
                   'inner join alm_almacenes alm '+
                   'on (alm.IdAlmacen = b.IdAlmacen) '+
                   'inner join alm_insumos i '+
                   'on (i.IdInsumo = b.IdInsumo)'+
                   'inner join movimientosdealmacen m on (m.IdTipo = s.IdTipo) '+
                   'left join alm_marcas ma on (i.IdMarca=ma.IdMarca) '+
                   'left join master_medidas md on (md.IdMedida = i.IdMedida) '+
                   'where s.iFolioEntrada =:Folio ');
   end;
   Reporte.ParamByName('Folio').DataType     := ftString;
   Reporte.ParamByName('Folio').Value        := zMovimientos.FieldValues['Folio'];
   Reporte.open;

   frxReporteValida.UserName := sParamUser;
   rDiario.DataSets.Add(frxReporteValida);

   rDiario.PreviewOptions.MDIChild := False;
   rDiario.PreviewOptions.Modal := True;
   rDiario.PreviewOptions.ShowCaptions := False;
   rDiario.PreviewOptions.MDIChild := False ;

   rDiario.LoadFromFile (global_files + global_miReporte+'_ALMValeSalida.fr3') ;
     if not FileExists(global_files + global_miReporte + '_ALMValeSalida.fr3') then
       showmessage('El archivo de reporte '+global_Mireporte+'_ALMValeSalida.fr3 no existe, notifique al administrador del sistema');

//
//   if zMovimientos.FieldByName('IdEntrada').AsInteger > 0 then
//   begin
//     rDiario.LoadFromFile (global_files + global_miReporte+'_ALMEntrada.fr3') ;
//     if not FileExists(global_files + global_miReporte + '_ALMEntrada.fr3') then
//       showmessage('El archivo de reporte '+global_Mireporte+'_ALMEntrada.fr3 no existe, notifique al administrador del sistema');
//   end;


   rDiario.ShowReport

end;

procedure TfrmMantenimiento.cxGuardarDetalleClick(Sender: TObject);
begin
  try
    if cxPageDetalle.ActivePageIndex = 2 then
   begin
       zCertVP.Post;
       zCertificado.Refresh;
   end;

    PanelDown.Visible := False;
    cxNuevoDetalle.Enabled := true;
    cxEditaDetalle.Enabled := true;
    cxEliminarDetalle.Enabled := True;
    cxLeyenda2.Caption:=titulo2;
    cxSplitter5.Visible := False;
    PanelDown7.Visible := False;
    grid_mantenimiento.Enabled := True;
    cxGridMto.Enabled:=True;
  except
    ;

  end;
end;

procedure TfrmMantenimiento.cxNuevoDetalleClick(Sender: TObject);
begin
  try
    PanelDown.Visible := True;
    if cxPageDetalle.ActivePageIndex = 2 then
    begin
       cxLeyenda2.Caption:=titulo2 +'[Agregando]';
       cxSplitter5.Visible:= True;
       PanelDown7.Visible:=True;

       AsignarSQL(zCertVP,'documentos_insumos_VP',pUpdate);
       FiltrarDataSet(zCertVP,'IdDocto',[-9]);
       zCertVP.Open;

       zCertVP.Append;
       cxDocumento.DataBinding.DataSource.DataSet.FieldByName('IdDocumento').AsInteger := zCatalogo_docto.fieldByName('IdDocumento').asInteger;
       zCertVP.FieldByName('FechaRegistro').AsDateTime := date;
       zCertVP.FieldByName('Activo').AsString := 'Si';
       zCertVP.FieldByName('IdInsumo').AsInteger:=zMaterial.FieldByName('IdInsumo').AsInteger;
       zCertVP.FieldByName('FechaVigencia').Value := date+180;
       edtCertificado.SetFocus;
    end;
  except
    ;
  end;
end;

procedure TfrmMantenimiento.cxPageDetalleChange(Sender: TObject);
begin

  if cxPageDetalle.ActivePageIndex = 0 then
  begin
    if zCertVP.State in [dsInsert,dsEdit] then
      cxCancelarDetalleClick(sender);

    titulo2 := 'Calibraciones';
        cxLeyenda2.Caption:=titulo2;
        cxEditaDetalle.Visible:=False;
        cxNuevoDetalle.Visible:=False;
        cxEliminarDetalle.Visible:=False;

    AsignarSQL(zMtoDetalle, 'mto_mantenimiento_calibracion', pUpDate);
    FiltrarDataSet(zMtoDetalle,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString]);
    zMtoDetalle.Open;

  end;

  if cxPageDetalle.ActivePageIndex = 1 then
  begin
    if zCertVP.State in [dsInsert,dsEdit] then
      cxCancelarDetalleClick(sender);
    titulo2 := 'Listado de Fallas';
        cxLeyenda2.Caption:=titulo2;
        cxEditaDetalle.Visible:=False;
        cxNuevoDetalle.Visible:=False;
        cxEliminarDetalle.Visible:=False;

       AsignarSQL(zFallas, 'mto_mantenimiento_falla', pUpDate);
       FiltrarDataSet(zFallas,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString]);
       zFallas.Open;

  end;

  if cxPageDetalle.ActivePageIndex = 2 then
  begin
    titulo2 := 'Certificados';
    cxLeyenda2.Caption:=titulo2;
    cxEditaDetalle.Visible:=True;
    cxNuevoDetalle.Visible:=True;
    cxEliminarDetalle.Visible:=True;
    cxEliminarDetalle.Enabled:=True;
    AsignarSQL(zCertificado, 'documentos_insumos', pUpDate);
    FiltrarDataSet(zCertificado,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString]);
    zCertificado.Open;
  end;

  if cxPageDetalle.ActivePageIndex = 3 then
  begin
    titulo2 := 'Movimientos';
    cxLeyenda2.Caption:=titulo2;
    cxEditaDetalle.Visible:=False;
    cxNuevoDetalle.Visible:=False;
    cxEliminarDetalle.Visible:=False;
    AsignarSQL(zMovimientos,'almacen_movimientos',pUpDate);
    FiltrarDataSet(zMovimientos,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString]);
    zMovimientos.Open;
  end;

  if cxPageDetalle.ActivePageIndex = 4 then
  begin
    if zCertVP.State in [dsInsert,dsEdit] then
      cxCancelarDetalleClick(sender);

    titulo2 := 'Informes';
    cxLeyenda2.Caption:=titulo2;
    cxEditaDetalle.Visible:=False;
    cxNuevoDetalle.Visible:=False;
    cxEliminarDetalle.Enabled := False;

    opcionImprimir.EditValue := 1;
  end;
end;

procedure TfrmMantenimiento.cxTabSheet2Show(Sender: TObject);
begin
  cxNuevoDetalle.Visible := False;
  cxEditaDetalle.Visible := False;
  cxEliminarDetalle.Enabled := False;
end;

procedure TfrmMantenimiento.cxTabSheet4Show(Sender: TObject);
begin
   AsignarSQL(zFallas, 'mto_mantenimiento_falla', pUpDate);
   FiltrarDataSet(zFallas,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString]);
   zFallas.Open;
end;

procedure TfrmMantenimiento.cxView_mantenimientoCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxView_mantenimiento.OptionsView.CellAutoHeight := not cxView_mantenimiento.OptionsView.CellAutoHeight;
end;

procedure TfrmMantenimiento.edtFechaExit(Sender: TObject);
begin
  zCertVP.FieldByName('FechaVigencia').Value := edtFecha.Date+180;
  SalidaControl(Sender);
end;

procedure TfrmMantenimiento.EnterControl(Sender: TObject);
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

    if (sender is tcxDBLookUpComboBox) then
        tcxDBLookUpComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmMantenimiento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  guardar_leer_grid(cxView_mantenimiento,frmMantenimiento,1);
  guardar_leer_grid(cxView_Mto,frmMantenimiento,1);
  guardar_leer_grid(cxGridDBTableView1,frmMantenimiento,1);
  guardar_leer_grid(cxGridCertificados,frmMantenimiento,1);
  guardar_leer_grid(cxGridMovimientos,frmMantenimiento,1);
  action := caFree;
end;

procedure TfrmMantenimiento.FormShow(Sender: TObject);
begin

    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible := False;
    Panel2.Visible := False;
    cxSplitter1.Visible := False;
    titulo:='Catalogo de Equipos de Mantenimiento';
    titulo2:='Detalles';
    cxLeyenda.Caption:=titulo;
    cxLeyenda2.Caption:=titulo2;

    zCatalogo_docto.Active := False ;
    AsignarSQL(zCatalogo_docto,'catalogo_documentos_proveedor',pUpdate);
    FiltrarDataSet(zCatalogo_docto, 'Tipo',['Material']);
    zCatalogo_docto.Open;

    IsOpen := False;
    AsignarSQL(zMaterial,'alm_insumo_mto', pUpdate);
    FiltrarDataSet(zMaterial,'tipo',['-1']);
    zMaterial.Open;

    AsignarSQL(zMtoDetalle, 'mto_mantenimiento_calibracion', pUpDate);
    FiltrarDataSet(zMtoDetalle,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString]);
    zMtoDetalle.Open;

    IsOpen := True;

    cxView_mantenimiento.DataController.Groups.FullExpand;
    guardar_leer_grid(cxView_mantenimiento,frmMantenimiento,0);
    guardar_leer_grid(cxView_Mto,frmMantenimiento,0);
    guardar_leer_grid(cxGridDBTableView1,frmMantenimiento,0);
    guardar_leer_grid(cxGridCertificados,frmMantenimiento,0);
    guardar_leer_grid(cxGridMovimientos,frmMantenimiento,0);
end;

procedure TfrmMantenimiento.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmMantenimiento.rDiarioGetValue(const VarName: string;
  var Value: Variant);
var
   zConsulta,zFirmas: TUniQuery;
   sSQL: string;
begin

  if CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
    Value := sDiarioComentario;

  if CompareText(VarName, 'sNewTexto') = 0 then
    Value := sDiarioTitulo;

  if CompareText(VarName, 'PERIODO') = 0 then
    Value := sDiarioPeriodo;


  if CompareText(VarName, 'SUPERINTENDENTE') = 0 then
    Value := sSuperIntendente;
  if CompareText(VarName, 'SUPERVISOR') = 0 then
    Value := sSupervisor;
  if CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
    Value := sSupervisorTierra;

  if CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
    Value := sPuestoSuperIntendente;
  if CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
    Value := sPuestoSupervisor;
  if CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
    Value := sPuestoSupervisorTierra;

  if CompareText(VarName, 'REAL_ANTERIOR') = 0 then
    Value := dRealGlobalAnterior;
  if CompareText(VarName, 'REAL_ACTUAL') = 0 then
    Value := dRealGlobalActual;
  if CompareText(VarName, 'REAL_ACUMULADO') = 0 then
    Value := dRealGlobalAcumulado;
  if CompareText(VarName, 'PROGRAMADO_ANTERIOR') = 0 then
    Value := dProgramadoGlobalAnterior;
  if CompareText(VarName, 'PROGRAMADO_ACTUAL') = 0 then
    Value := dProgramadoGlobalActual;
  if CompareText(VarName, 'PROGRAMADO_ACUMULADO') = 0 then
    Value := dProgramadoGlobalAcumulado;


  if CompareText(VarName, 'REAL_ANTERIOR_MULTIPLE') = 0 then
    Value := dRealOrdenAnterior;
  if CompareText(VarName, 'REAL_ACTUAL_MULTIPLE') = 0 then
    Value := dRealOrdenActual;
  if CompareText(VarName, 'REAL_ACUMULADO_MULTIPLE') = 0 then
    Value := dRealOrdenAcumulado;
  if CompareText(VarName, 'PROGRAMADO_ANTERIOR_MULTIPLE') = 0 then
    Value := dProgramadoOrdenAnterior;
  if CompareText(VarName, 'PROGRAMADO_ACTUAL_MULTIPLE') = 0 then
    Value := dProgramadoOrdenActual;
  if CompareText(VarName, 'PROGRAMADO_ACUMULADO_MULTIPLE') = 0 then
    Value := dProgramadoOrdenAcumulado;

  if CompareText(VarName, 'FECHA') = 0 then begin
    Value := 0;
  end;

      zFirmas := TUniQuery.Create(self);
      zFirmas.Connection := connection.uConnection;
      zFirmas.Active := False;
      zFirmas.SQL.Clear;
      zFirmas.SQL.Add('SELECT sNombre FROM almacen_salida WHERE sContrato = :Contrato AND sFolioSalida = :FSalida');
      zFirmas.Params.ParamByName('Contrato').DataType := ftString;
      zFirmas.Params.ParamByName('Contrato').Value    := global_Contrato;
      zFirmas.Params.ParamByName('FSalida').DataType  := ftString;
      zFirmas.Params.ParamByName('FSalida').Value     := zMovimientos.FieldByName('Folio').AsString;
      zFirmas.Open;

      zConsulta := TUniQuery.Create(self);
      zConsulta.Connection := connection.uConnection;
      zConsulta.Active := False;
      zConsulta.SQL.Clear;
      zConsulta.SQL.Add('SELECT sNombre FROM usuarios WHERE sIdUsuario = :Usuario');
      zConsulta.Params.ParamByName('Usuario').DataType := ftString;
      zConsulta.Params.ParamByName('Usuario').Value := global_usuario;
      zConsulta.Open;

      If CompareText(VarName, 'ENTREGA_FIRMA') = 0 then
          Value := zConsulta.FieldValues['sNombre'];
      If CompareText(VarName, 'RECIBE_FIRMA') = 0 then
      Value := zFirmas.FieldValues['sNombre'];
end;

procedure TfrmMantenimiento.ReporteFallasGetValue(const VarName: string;
  var Value: Variant);
begin
  ;
end;

procedure TfrmMantenimiento.ReporteMtoGetValue(const VarName: string;
  var Value: Variant);
begin
  ;
end;procedure TfrmMantenimiento.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBLookUpComboBox) then
        tcxDBLookUpComboBox(sender).Style.Color := global_color_salidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;
end;



procedure TfrmMantenimiento.zMaterialAfterScroll(DataSet: TDataSet);
begin
  if IsOpen then
  begin
    if PanelDetalle.Visible = true then
    begin
      if cxPageDetalle.ActivePageIndex = 0 then
      begin
        AsignarSQL(zMtoDetalle, 'mto_mantenimiento_calibracion', pUpDate);
        FiltrarDataSet(zMtoDetalle,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString]);
        zMtoDetalle.Open;
      end;

      if cxPageDetalle.ActivePageIndex = 1 then
      begin
         AsignarSQL(zFallas, 'mto_mantenimiento_falla', pUpDate);
         FiltrarDataSet(zFallas,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString]);
         zFallas.Open;
      end;

      if cxPageDetalle.ActivePageIndex = 2 then
      begin
        AsignarSQL(zCertificado, 'documentos_insumos', pUpDate);
        FiltrarDataSet(zCertificado,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString]);
        zCertificado.Open;

      end;
        if cxPageDetalle.ActivePageIndex = 3 then
      begin
        titulo2 := 'Movimientos';
        cxLeyenda2.Caption:=titulo2;
        cxEditaDetalle.Visible:=False;
        cxNuevoDetalle.Visible:=False;
        AsignarSQL(zMovimientos,'almacen_movimientos',pUpDate);
        FiltrarDataSet(zMovimientos,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString]);
        zMovimientos.Open;
      end;
    end;
    cxLeyenda3.Caption:='Seleccionado: '+zMaterial.FieldByName('Codigo').AsString;
  end;
end;

end.
