unit frm_rptEvaluaProv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, Data.DB, cxDBData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, MemDS, DBAccess, Uni,
  cxSplitter, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGridChartView, cxGridDBChartView, cxClasses, cxGridLevel,
  cxGrid, Vcl.ExtCtrls, frm_barraH1, unitGenerales, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,frxClass, frxDBSet,global;

type
  TfrmRptEvaluacionProv = class(TForm)
    PanelTop: TPanel;
    cxGraficosLevel1: TcxGridLevel;
    cxGraficos: TcxGrid;
    GraficosView: TcxGridDBChartView;
    cxSplitterP: TcxSplitter;
    uProveedores: TUniQuery;
    uGrafico: TUniQuery;
    ds_proveedores: TDataSource;
    ds_grafico: TDataSource;
    frmBarraH11: TfrmBarraH1;
    GraficosViewSeries1: TcxGridDBChartSeries;
    ProveedoresView: TcxGridDBTableView;
    cxGridProveedoresLevel1: TcxGridLevel;
    cxGridProveedores: TcxGrid;
    cxColumn1: TcxGridDBColumn;
    cxColumn2: TcxGridDBColumn;
    cxColumn3: TcxGridDBColumn;
    PanelOps: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxFechaF1: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxFechaF2: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    Reporte: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ProveedoresViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ProveedoresViewDataControllerFilterChanged(Sender: TObject);
    procedure btnReporteClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure cxFechaF1PropertiesChange(Sender: TObject);
    procedure fechasChange();
    procedure cxFechaF2PropertiesChange(Sender: TObject);
    procedure btnExportaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRptEvaluacionProv: TfrmRptEvaluacionProv;
  IsOpen : boolean;

implementation
uses frm_connection,frm_repositorio;
{$R *.dfm}

procedure TfrmRptEvaluacionProv.btnReporteClick(Sender: TObject);
begin
  if PanelOps.Visible then begin
    uGrafico.Filtered:=False;
    uGrafico.Filter:='';
    uGrafico.Filtered:=True;
    PanelOps.Visible:=False;
    cxSplitterP.Visible:=False;
    frmBarraH11.btnPrinter.Visible:=False;
    frmBarraH11.btnExporta.Visible:=False;
  end
  else begin
    cxSplitterP.Visible:=True;
    PanelOps.Visible:=True;
    frmBarraH11.btnPrinter.Visible:=True;
    frmBarraH11.btnExporta.Visible:=True;
    uGrafico.Filtered:=False;
    uGrafico.Filter:='IdProveedor = '+uProveedores.FieldByName('IdProveedor').AsString;
    uGrafico.Filtered:=True;
  end;
end;

procedure TfrmRptEvaluacionProv.btnExportaClick(Sender: TObject);
var
indice, iGrid    : integer;
cadena,Evaluacion: String;
frxGraficaProv,frxGraficaProvI : TfrxDBDataset;
orden : String;
begin
   if ProveedoresView.DataController.GetSelectedCount > 0 then begin
    iGrid     := 0;
    indice := ProveedoresView.DataController.GetSelectedRowIndex(iGrid);
    ProveedoresView.DataController.FocusedRowIndex := indice;

      with ProveedoresView.DataController.DataSource.DataSet do
        for iGrid := 0 to ProveedoresView.DataController.GetSelectedCount - 1 do
        begin
          indice := ProveedoresView.DataController.GetSelectedRowIndex(iGrid);
          ProveedoresView.DataController.FocusedRowIndex := indice;
          cadena := ProveedoresView.DataController.DataSource.DataSet.FieldByName('IdProveedor').AsString +','+ cadena;
        end;


      AsignarSQL(frmRepositorio.reportePG,'reporte_grafica_prov_mult',pUpdate);
      FiltrarDataSet(frmRepositorio.reportePG,'IdProveedor',[cadena]);
      frmRepositorio.reportePG.Open;

      if (cxFechaF1.EditValue <> null) or (cxFechaF2.EditValue <> null) then
      begin
        frmRepositorio.reportePG.Filtered:=False;
        frmRepositorio.reportePG.Filter:='(FechaEvalua BETWEEN '+QuotedStr(fechaSQL(cxFechaF1.Date))+' AND '+QuotedStr(fechaSQL(cxFechaF2.Date))+')';
        frmRepositorio.reportePG.Filtered:=True;
      end;

        frmRepositorio.reportePG.First;
        while not frmRepositorio.reportePG.Eof Do
        Begin
          Evaluacion := frmRepositorio.reportePG.FieldByName('IdEvaluacion').AsString +','+ Evaluacion;
          frmRepositorio.reportePG.Next;
        end;

      AsignarSQL(frmRepositorio.reportePI,'reporte_grafica_prov_mult',pUpdate);
      if Evaluacion<>'' then
      FiltrarDataSet(frmRepositorio.reportePI,'IdProveedor,IdEvaluacion',[cadena,Evaluacion])
      else
      FiltrarDataSet(frmRepositorio.reportePI,'IdProveedor,IdEvaluacion',[cadena,-1]);
      frmRepositorio.reportePI.Open;

      frxGraficaProv := TfrxDBDataset.Create(nil);
      frxGraficaProv.DataSet    := frmRepositorio.reportePG;
      frxGraficaProv.UserName   := 'ds_GProv';
      frxGraficaProv.FieldAliases.Clear;
      Reporte.DataSets.Add(frxGraficaProv);

      frxGraficaProvI := TfrxDBDataset.Create(nil);
      frxGraficaProvI.DataSet    := frmRepositorio.ReportePI;
      frxGraficaProvI.UserName   := 'ds_GProvI';
      frxGraficaProvI.FieldAliases.Clear;
      Reporte.DataSets.Add(frxGraficaProvI);

      Reporte.PreviewOptions.MDIChild := False;
      Reporte.PreviewOptions.Modal := True;
      Reporte.PreviewOptions.ShowCaptions := False;
      Reporte.Previewoptions.Zoom := connection.uconfiguracion.FieldByName('dZoom').AsFloat * 0.01 ;

      Reporte.LoadFromFile(global_files + global_miReporte + '_COMP_GraficaProveedores.fr3');

         if not FileExists(global_files + global_miReporte + '_COMP_GraficaProveedores.fr3') then
            showmessage('El archivo de reporte '+global_Mireporte+'_COMP_GraficaProveedores.fr3 no existe, notifique al administrador del sistema');
          Reporte.ShowReport();
      frmRepositorio.reportePG.Filtered:=False;
      frmRepositorio.reportePI.Filtered:=False;
    end
    else
    MessageDlg('Para generar el reporte, seleccione un registro del grid.',mtInformation, [mbOk],0);
end;

procedure TfrmRptEvaluacionProv.btnPrinterClick(Sender: TObject);
begin
  if not dxLayoutControl1.Visible then begin
    cxFechaF1.Date:=now;
    cxFechaF2.Date:=Now;
    fechasChange;
  end
  else begin
    uGrafico.Filtered:=False;
    uGrafico.Filter:='';
    uGrafico.Filtered:=True;
  end;
  dxLayoutControl1.Visible:=not dxLayoutControl1.Visible;

end;

procedure TfrmRptEvaluacionProv.cxFechaF1PropertiesChange(Sender: TObject);
begin
  fechasChange;
end;

procedure TfrmRptEvaluacionProv.cxFechaF2PropertiesChange(Sender: TObject);
begin
  fechasChange;
end;

procedure TfrmRptEvaluacionProv.fechasChange();
begin
  try
    uGrafico.Filtered:=False;
    uGrafico.Filter:='(FechaEvalua BETWEEN '+QuotedStr(fechaSQL(cxFechaF1.Date))+' AND '+QuotedStr(fechaSQL(cxFechaF2.Date))+')';
    uGrafico.Filtered:=True;

  except
    //do nothing
  end;


end;

procedure TfrmRptEvaluacionProv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfrmRptEvaluacionProv.FormShow(Sender: TObject);
begin
  IsOpen:=True;
  uProveedores.Active:=False;
  AsignarSQL(uProveedores,'master_proveedores',pUpdate);
  FiltrarDataSet(uProveedores,'IdProveedor',[-1]);
  uProveedores.Open;

  uGrafico.Active:=False;
  AsignarSQL(uGrafico,'master_proveedor_evaluacion',pUpdate);
  FiltrarDataSet(uGrafico,'IdProveedor',[-1]);
  uGrafico.Open;
end;

procedure TfrmRptEvaluacionProv.ProveedoresViewCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if IsOpen then begin
    uGrafico.Filtered:=False;
    uGrafico.Filter:='IdProveedor = '+uProveedores.FieldByName('IdProveedor').AsString;
    uGrafico.Filtered:=True;
  end;
end;

procedure TfrmRptEvaluacionProv.ProveedoresViewDataControllerFilterChanged(
  Sender: TObject);
var
  cont, ind: Integer;
  ids : String;
begin
  ids:='';
  cont:=ProveedoresView.ViewData.RecordCount; //el numero de registros que se filtraron
  for ind := 0 to (cont-1) do begin //se recorre cada registro para obtener el id
    ids:=ids + VarToStr(ProveedoresView.ViewData.Rows[ind].Values[0]) + ',';
  end;
  uGrafico.Filtered:=False;
  uGrafico.Filter:='IdProveedor IN ('+ids+')';
  uGrafico.Filtered:=True;


end;

end.
