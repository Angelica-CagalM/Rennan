unit frm_compara2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, unitExcel,
  Dialogs, frm_connection, DBCtrls, StdCtrls, Grids, DBGrids, DB, global, frm_repositorio,
  Buttons, Mask, ExtCtrls, frxClass, frxDBSet, RXCtrls, frxDMPExport, utilerias, unitGenerales,
  frxCross, ComCtrls, TeEngine, Series, TeeProcs, Chart, DbChart, strUtils,
  RxMemDS, ZAbstractRODataset, ZDataset, Menus, DateUtils, ExportaExcel, ExcelXP, ComObj, Excel2000,
  unitexcepciones, UFunctionsGHH,UnitTBotonesPermisos, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, dxBarBuiltInMenu, cxPC,
  cxButtons, ZAbstractDataset, cxCheckBox, cxGroupBox, cxLabel,
  cxProgressBar, dxColorEdit, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, VclTee.TeeGDIPlus, dxCore;

type
  TfrmComparativo2 = class(TForm)
    ds_avancesglobales: TDataSource;
    GroupBox1: TGroupBox;
    Bevel2: TBevel;
    Label6: TLabel;
    Avances: TfrxDBDataset;
    chImpresion: TCheckBox;
    frxAvances: TfrxReport;
    frxAvancesTotales: TfrxReport;
    Catalogo_001: TfrxReport;
    rxGraficaProgramado: TRxMemoryData;
    StringField16: TStringField;
    rxGraficaProgramadodFecha: TDateField;
    FloatField4: TFloatField;
    rxGraficaFisico: TRxMemoryData;
    StringField14: TStringField;
    rxGraficaFisicodFecha: TDateField;
    FloatField7: TFloatField;
    rxGraficaFinanciero: TRxMemoryData;
    StringField2: TStringField;
    DateField2: TDateField;
    FloatField3: TFloatField;
    rxAvancesContrato: TRxMemoryData;
    rxAvancesContratodIdFecha: TDateField;
    rxAvancesContratodProgramadoDia: TFloatField;
    rxAvancesContratodProgramadoAcum: TFloatField;
    rxAvancesContratodFisicoDia: TFloatField;
    rxAvancesContratodFisicoAcumulado: TFloatField;
    SaveSql: TSaveDialog;
    popGraphics: TPopupMenu;
    Exportar1: TMenuItem;
    Label1: TLabel;
    ds_ordenesdetrabajo: TDataSource;
    ordenesdetrabajo: TZReadOnlyQuery;
    chkTurnos: TCheckBox;
    cxViewAvances: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_avances: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    tsNumeroOrden: TcxLookupComboBox;
    btnPrinter: TcxButton;
    cxPagedatos: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGridActividades: TcxGrid;
    cxViewActividades: TcxGridDBTableView;
    dIdFecha: TcxGridDBColumn;
    Actividad: TcxGridDBColumn;
    Afectacion: TcxGridDBColumn;
    Inicio: TcxGridDBColumn;
    Fin: TcxGridDBColumn;
    Tiempo: TcxGridDBColumn;
    Anterior: TcxGridDBColumn;
    Actual: TcxGridDBColumn;
    Acumulado: TcxGridDBColumn;
    cxGridLevelActividades: TcxGridLevel;
    ds_actividades: TDataSource;
    zqActividades: TZQuery;
    zqActividadessContrato: TStringField;
    zqActividadesdIdFecha: TDateField;
    zqActividadessNumeroOrden: TStringField;
    zqActividadessIdFolio: TStringField;
    zqActividadesmDescripcion: TMemoField;
    zqActividadessNumeroActividad: TStringField;
    zqActividadessHorainicio: TStringField;
    zqActividadessHorafinal: TStringField;
    zqActividadessIdClasificacion: TStringField;
    zqActividadessTiempo: TStringField;
    zqActividadesdAnterior: TFloatField;
    zqActividadesdActual: TFloatField;
    zqActividadesdAcumulado: TFloatField;
    zqActividadesanterior: TFloatField;
    zqActividadesactual: TFloatField;
    zqActividadesAnteriorDia: TFloatField;
    PopupMenu1: TPopupMenu;
    ExportaExcel: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    cxSabana: TcxButton;
    SaveDialog1: TSaveDialog;
    cxButton1: TcxButton;
    Panel1: TPanel;
    progreso: TcxProgressBar;
    LabelProceso: TcxLabel;
    Panel2: TPanel;
    cxGroupBox2: TcxGroupBox;
    chkLeyendas: TCheckBox;
    chkEjes: TCheckBox;
    cxGroupBox3: TcxGroupBox;
    chkProgramado: TCheckBox;
    chkFisico: TCheckBox;
    chkFinanciero: TCheckBox;
    cxGroupBox1: TcxGroupBox;
    cxDia: TcxCheckBox;
    cxMes: TcxCheckBox;
    cxSemana: TcxCheckBox;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox4: TcxGroupBox;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    dxColorProgramado: TdxColorEdit;
    dxColorFisico: TdxColorEdit;
    cxLabel3: TcxLabel;
    dxColorTextoProgramado: TdxColorEdit;
    dxColorTextoFisico: TdxColorEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    dxColorPonderado: TdxColorEdit;
    cxLabel6: TcxLabel;
    dxColorReal: TdxColorEdit;
    cxLabel7: TcxLabel;
    dxColorDuracion: TdxColorEdit;
    cxTabSheet4: TcxTabSheet;
    cxGridMaterial: TcxGrid;
    cxGridMaterialView: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ds_Materiales: TDataSource;
    zqMateriales: TZQuery;
    cxCantidad: TcxGridDBColumn;
    grGeneral: TcxGroupBox;
    dbGraphics: TDBChart;
    FastLineSeries1: TFastLineSeries;
    FastLineSeries2: TFastLineSeries;
    FastLineSeries3: TFastLineSeries;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExitClick(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure btnPrinterClick(Sender: TObject);
    procedure Exportar1Click(Sender: TObject);
    procedure chkLeyendasClick(Sender: TObject);
    procedure chkEjesClick(Sender: TObject);
    procedure chkProgramadoClick(Sender: TObject);
    procedure chkFisicoClick(Sender: TObject);
    procedure chkFinancieroClick(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure frxAvancesTotalesGetValue(const VarName: String;
      var Value: Variant);
    procedure frxAvancesGetValue(const VarName: String;
      var Value: Variant);
    procedure Catalogo_001GetValue(const VarName: String;
      var Value: Variant);
    procedure chkTurnosClick(Sender: TObject);
    procedure cxPagedatosChange(Sender: TObject);
    procedure zqActividadesCalcFields(DataSet: TDataSet);
    procedure MenuItem1Click(Sender: TObject);
    procedure cxSabanaClick(Sender: TObject);
    function AvanceFolio(dParamFecha : tDate; sParamOrden, sParamFolio :string) : double;
    function Truncar(numero : Real; cifras : integer) : Real;


    procedure formatoEncabezado;
    procedure cxButton1Click(Sender: TObject);
    procedure cxDiaPropertiesChange(Sender: TObject);
    procedure cxMesPropertiesChange(Sender: TObject);
    procedure cxSemanaPropertiesChange(Sender: TObject);
    procedure tsNumeroOrdenPropertiesChange(Sender: TObject);
    procedure cxGridMaterialViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComparativo2: TfrmComparativo2;

  BotonPermiso: TBotonesPermisos;
  BotonPermiso2: TBotonesPermisos;

  //Exporta elementos a Excel..
  Excel, Libro, Hoja: Variant;

  columnas: array[1..1400] of string;

implementation

{$R *.dfm}

procedure TfrmComparativo2.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cAvOrden');
  BotonPermiso2 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cAvOrden',popGraphics);
  //BotonPermiso.permisosBotones2(nil, nil, nil, btnPrinter);
  BotonPermiso2.permisosBotones(nil);
  try
    sMenuP:=stMenu;

    OrdenesdeTrabajo.Active := False ;
    OrdenesdeTrabajo.Params.ParamByName('contrato').DataType := ftString ;
    OrdenesdeTrabajo.Params.ParamByName('contrato').Value := global_contrato ;
    OrdenesdeTrabajo.Open ;

    tsNumeroOrden.SetFocus
  except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Comparativo de Avances', 'Al iniciar el formulario', 0);
   end;
  end;
end;

procedure TfrmComparativo2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BotonPermiso.Free;
  BotonPermiso2.Free;
  action := cafree ;

end;

procedure TfrmComparativo2.btnExitClick(Sender: TObject);
begin
      close
end;

procedure TfrmComparativo2.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        grid_avances.SetFocus
end;

procedure TfrmComparativo2.tsNumeroOrdenPropertiesChange(Sender: TObject);
var
    sFecha     : String ;
    iMiMes     : Byte ;
    dAcumulado : Currency ;
    dAcumuladoFisico : Currency ;
    dAvanceFisico    : Currency ;
    QryBuscarTurnos  : TZReadOnlyQuery;

    dProgramadoActual,
    dProgramadoAnterior,
    dProgramadoAcumulado,
    dProgramadoAcumulado_Aux : Currency;
    sTurno : string;
begin
    tsNumeroOrden.Style.Color := global_color_salidaERP ;
    cxPageDatos.ActivePageIndex := 0;

    if ordenesdetrabajo.FieldByName('sIdConvenio').AsString = '' then
    begin
        messageDLG('El Programa no tiene un Plazo asignado', mtInformation, [mbOk], 0);
        exit;
    end;

   try
      // Primero Genera la Grafica ....
      Caption := tsNumeroOrden.Text  ;
      dMontoContrato := 0;

      SaveSql.FileName := global_contrato ;
      If rxGraficaProgramado.RecordCount > 0 then
        rxGraficaProgramado.EmptyTable   ;

      If rxGraficaFisico.RecordCount > 0 then
        rxGraficaFisico.EmptyTable  ;

      If rxGraficaFinanciero.RecordCount > 0 then
          rxGraficaFinanciero.EmptyTable  ;

      If rxAvancesContrato.RecordCount > 0 then
          rxAvancesContrato.EmptyTable  ;
      Sleep(500);
      ordenesdetrabajo.Locate('Folio',tsNumeroOrden.Text,[]);

      dbGraphics.RefreshData ;

      BarraMostrar(True,progreso, LabelProceso);
      if cxDia.checked then
         GraficaFisicoProgFinanciero('Dia', global_contrato, ordenesdetrabajo.FieldByName('sIdConvenio').AsString, ordenesdetrabajo.FieldByName('sNumeroOrden').AsString, rxGraficaProgramado, rxGraficaFisico, rxGraficaFinanciero, rxAvancesContrato, progreso);

      if cxSemana.checked then
         GraficaFisicoProgFinanciero('Semana', global_contrato, ordenesdetrabajo.FieldByName('sIdConvenio').AsString, ordenesdetrabajo.FieldByName('sNumeroOrden').AsString, rxGraficaProgramado, rxGraficaFisico, rxGraficaFinanciero, rxAvancesContrato, progreso);

      if cxMes.checked then
         GraficaFisicoProgFinanciero('Mes', global_contrato, ordenesdetrabajo.FieldByName('sIdConvenio').AsString, ordenesdetrabajo.FieldByName('sNumeroOrden').AsString, rxGraficaProgramado, rxGraficaFisico, rxGraficaFinanciero, rxAvancesContrato, progreso);

      BarraMostrar(False,progreso, LabelProceso);

      dbGraphics.Title.Text.Clear ;
      dbGraphics.Title.Text.Add ('Avances Programado/Fisico/Financiero') ;
      dbGraphics.Title.Text.Add (Caption) ;
      dbGraphics.Title.Text.Add (connection.ucontrato.FieldValues['mDescripcion']) ;

      rxAvancesContrato.Locate('dIdFecha', Date() , [loPartialKey]) ;
   except
    on e : exception do
    begin
       BarraMostrar(False,progreso, LabelProceso);
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Comparativo de Avances', 'Al generar la gráfica', 0);
    end;

   end;

end;

procedure TfrmComparativo2.btnPrinterClick(Sender: TObject);
begin
  try
    ExportExcelconGrafica('0,2,4',cxViewAvances,'Avances '+ordenesdetrabajo.FieldByName('sNumeroOrden').AsString,'Proyecto [ '+ global_contrato+ ']' +#13 +'PROGRAMA DE TRABAJO');
  finally
       cxgrdbclmnGrid1DBTableView1Column2.Visible := True;
       cxgrdbclmnGrid1DBTableView1Column2.Visible := True;
  end;
end;

procedure TfrmComparativo2.Exportar1Click(Sender: TObject);
begin
  try
  if TcxGridDBTableView(grid_avances.ActiveView).DataController.DataSource.DataSet.RecordCount>0 then
   begin
    SaveSql.Title := 'Guardar Grafica';
    If SaveSql.Execute Then
         dbGraphics.SaveToBitmapFile(SaveSql.FileName);
   end
   else
   showmessage('No existen datos para exportar');
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Comparativo de Avances', 'Al exportar gráfica', 0);
    end;
  end;
end;

procedure TfrmComparativo2.zqActividadesCalcFields(DataSet: TDataSet);
begin
    if zqActividades.RecordCount > 0 then
    begin
        zqActividades.FieldByName('sTiempo').AsString   := sfnRestaHoras(zqActividades.FieldByName('sHorafinal').AsString, zqActividades.FieldByName('sHorainicio').AsString) ;
        zqActividades.FieldByName('dAnterior').AsFloat  := (zqActividades.FieldByName('AnteriorDia').AsFloat + zqActividades.FieldByName('Anterior').AsFloat);
        zqActividades.FieldByName('dActual').AsFloat    := zqActividades.FieldByName('Actual').AsFloat;
        zqActividades.FieldByName('dAcumulado').AsFloat := (zqActividades.FieldByName('Anterior').AsFloat + zqActividades.FieldByName('AnteriorDia').AsFloat + zqActividades.FieldByName('Actual').AsFloat);
    end;
end;

procedure TfrmComparativo2.chkLeyendasClick(Sender: TObject);
begin
    dbGraphics.Series[0].Marks.Visible := chkLeyendas.Checked ;
    dbGraphics.Series[1].Marks.Visible := chkLeyendas.Checked ;
    dbGraphics.Series[2].Marks.Visible := chkLeyendas.Checked ;
end;

procedure TfrmComparativo2.chkEjesClick(Sender: TObject);
begin
    dbGraphics.LeftAxis.Visible := chkEjes.Checked
end;

procedure TfrmComparativo2.chkProgramadoClick(Sender: TObject);
begin
    dbGraphics.Series[0].Active := chkProgramado.Checked ;
end;

procedure TfrmComparativo2.chkTurnosClick(Sender: TObject);
begin
  //  tsNumeroOrden.OnChange(sender);
end;

procedure TfrmComparativo2.cxButton1Click(Sender: TObject);
begin
if TcxGridDBTableView(grid_avances.ActiveView).DataController.DataSource.DataSet.IsEmpty=false then
 begin
  try
  begin
     If chImpresion.Checked = True Then
        If MessageDlg( 'Desea imprimir el comparativo fisico-programado',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
            if not FileExists(global_files + global_miReporte + '_avances_totales.fr3') then
            begin
                showmessage('El archivo de reporte '+global_Mireporte+'_avances_totales.fr3 no existe, notifique al administrador del sistema');
                exit;
            end;
            frxAvancesTotales.LoadFromFile(Global_Files + global_miReporte + '_avances_totales.fr3') ;
            frxAvancesTotales.ShowReport();
        end
        Else
        begin
            if not FileExists(global_files + global_miReporte + '_avances_generales.fr3') then
            begin
                showmessage('El archivo de reporte '+global_Mireporte+'_avances_generales.fr3 no existe, notifique al administrador del sistema');
                exit;
            end;
            frxAvances.LoadFromFile(Global_Files + global_miReporte + '_avances_generales.fr3') ;
            frxAvances.ShowReport();
        end
    Else
    begin
        if not FileExists(global_files + global_miReporte + '_programados.fr3') then
        begin
            showmessage('El archivo de reporte '+global_Mireporte+'_programados.fr3 no existe, notifique al administrador del sistema');
            exit;
        end;
        catalogo_001.LoadFromFile(Global_Files + global_miReporte + '_programados.fr3') ;
        catalogo_001.ShowReport();
    end;

  end
  except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Comparativo de Avances', 'Al imprimir', 0);
   end;
 end
 end
 else
  showmessage('No existen registros para imprimir');
end;

procedure TfrmComparativo2.cxDiaPropertiesChange(Sender: TObject);
begin
    cxMes.Checked    := False;
    cxSemana.Checked := False;
    if cxDia.Checked then
       tsNumeroOrden.Properties.OnChange(sender);
end;

procedure TfrmComparativo2.cxGridMaterialViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if cxGridMaterialView.OptionsView.CellAutoHeight then
       cxGridMaterialView.OptionsView.CellAutoHeight := False
    else
       cxGridMaterialView.OptionsView.CellAutoHeight := True;
end;

procedure TfrmComparativo2.cxMesPropertiesChange(Sender: TObject);
begin
    cxDia.Checked    := False;
    cxSemana.Checked := False;
    if cxMes.Checked then
         tsNumeroOrden.Properties.OnChange(sender);
end;

procedure TfrmComparativo2.cxPagedatosChange(Sender: TObject);
begin
    if (cxPageDatos.ActivePageIndex = 1) or (cxPageDatos.ActivePageIndex = 2)  then
    begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select max(dIdFecha) as maxima, min(dIdFecha) as minima '+
                                    'from bitacoradeactividades where sContrato =:contrato group by sContrato');
        connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
        connection.zCommand.Open;
    end;


    if cxPagedatos.ActivePageIndex = 1 then
    begin
         if connection.zCommand.RecordCount > 0 then
         begin
             zqActividades.Active := False;
             zqActividades.ParamByName('contrato').AsString := global_Contrato;
             zqActividades.ParamByName('Convenio').AsString := ordenesdetrabajo.FieldByName('sIdConvenio').AsString;
             zqActividades.ParamByName('Folio').AsString    := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString;
             zqActividades.ParamByName('fechaI').AsDate     := connection.zCommand.FieldByName('minima').AsDateTime;
             zqActividades.ParamByName('fechaF').AsDate     := connection.zCommand.FieldByName('maxima').AsDateTime;
             zqActividades.Open;
         end;
    end;

    if cxPagedatos.ActivePageIndex = 2 then
    begin
         if connection.zCommand.RecordCount > 0 then
         begin
             zqMateriales.Active := False;
             zqMateriales.ParamByName('contrato').AsString := global_Contrato;
             zqMateriales.ParamByName('Folio').AsString    := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString;
             zqMateriales.ParamByName('fechaI').AsDate     := connection.zCommand.FieldByName('minima').AsDateTime;
             zqMateriales.ParamByName('fechaF').AsDate     := connection.zCommand.FieldByName('maxima').AsDateTime;
             zqMateriales.Open;
         end;
    end;
end;

procedure TfrmComparativo2.cxSabanaClick(Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// SEGUIMINTO DE AVANCES X PARTIDA DIAVAZ OCTUBRE 2012 //////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      CadFecha, tmpNombre, cadena: string;
      fs: tStream;
      Alto: Extended;
      MiFechaI, MiFechaF, MiFecha: tDate;
      Ren, nivel, i, total: integer;
      Q_Partidas: TZReadOnlyQuery;
      dVolumen, dAvanceGlobal, dProgramado, dFisico: double;
      lEncuentra : boolean;
      sColInicio, sColFinal : string;
      ProgramadoReal, ProgramadoRestante : double;
      dAvanceProgramado, dAvanceReal : double;
    begin
      Q_Partidas := TZReadOnlyQuery.Create(self);
      Q_Partidas.Connection := connection.zConnection;

      Ren := 2;
      // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 60;

      Excel.Columns['A:A'].ColumnWidth := 20;
      Excel.Columns['B:B'].ColumnWidth := 82.71;
      Excel.Columns['C:C'].ColumnWidth := 18;
      Excel.Columns['D:D'].ColumnWidth := 19.57;
      Excel.Columns['E:E'].ColumnWidth := 22.14;
      Excel.Columns['F:F'].ColumnWidth := 18;
      Excel.Columns['G:K'].ColumnWidth := 18;

      Hoja.Range['A1:A6'].Select;
      Excel.Selection.RowHeight := '30';

      Hoja.Range['A7:A7'].Select;
      Excel.Selection.RowHeight := '42';

      //consultamos el oficio de acutorizacion o orden de servicio
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('select sOficioAutorizacion, mDescripcion from ordenesdetrabajo where sContrato =:Contrato and sNumeroOrden =:Orden');
      connection.zCommand.ParamByName('contrato').AsString  := global_contrato;
      connection.zCommand.ParamByName('orden').AsString     := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString;
      connection.zCommand.Open;

      Hoja.Range['A'+IntTostr(Ren-1)+':K'+IntToStr(Ren-1)].Select;
      Excel.Selection.Value := 'ORDEN DE SERVICIO: ' + connection.zCommand.FieldValues['sOficioAutorizacion'];
      Excel.Selection.WrapText  := True;
      Excel.Selection.MergeCells := True;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Size := 20;
      Excel.Selection.Font.Name := 'Calibri';

      Hoja.Range['A'+IntTostr(Ren)+':B'+IntToStr(Ren + 1)].Select;
      Excel.Selection.Value := 'VIGENCIA DE LA ORDEN DE SERVICIO: ';
      Excel.Selection.WrapText   := True;
      Excel.Selection.MergeCells := True;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Size := 16;
      Excel.Selection.Font.Name := 'Calibri';
      Excel.Selection.Interior.ColorIndex := 24;

      Hoja.Range['C'+IntTostr(Ren)+':C'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'INICIO:';
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Size := 16;
      Excel.Selection.Font.Name := 'Calibri';

      Hoja.Range['C'+IntTostr(Ren + 1)+':C'+IntToStr(Ren + 1)].Select;
      Excel.Selection.Value := 'TERMINO:';
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Size := 16;
      Excel.Selection.Font.Name := 'Calibri';

      //Consultamos los avancesglobales
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select sDescripcion, dFechaInicio as dFiProgramado, dFechaFinal as dFfProgramado from convenios where sContrato =:Contrato and sNumeroOrden =:orden and sIdConvenio =:convenio');
      connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca.ParamByName('Orden').AsString    := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString;
      connection.QryBusca.ParamByName('Convenio').AsString := ordenesdetrabajo.FieldByName('sIdConvenio').AsString;
      connection.QryBusca.Open;

      Hoja.Range['D'+IntTostr(Ren)+':G'+IntToStr(Ren)].Select;
      Excel.Selection.Value := connection.QryBusca.FieldValues['dFiProgramado'];
      Excel.Selection.MergeCells := True;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Size := 16;
      Excel.Selection.Font.Name := 'Calibri';

      Hoja.Range['D'+IntTostr(Ren+1)+':G'+IntToStr(Ren+1)].Select;
      Excel.Selection.Value := connection.QryBusca.FieldValues['dFfProgramado'];
      Excel.Selection.MergeCells := True;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Size := 16;
      Excel.Selection.Font.Name := 'Calibri';

      inc(Ren,2);
      Hoja.Range['A'+IntTostr(Ren)+':K'+IntToStr(Ren + 1)].Select;
      Excel.Selection.Value := connection.zCommand.FieldValues['mDescripcion'];
      Excel.Selection.MergeCells := True;
      Excel.Selection.WrapText  := True;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Size := 16;
      Excel.Selection.Font.Name := 'Calibri';

      inc(Ren,2);
      Hoja.Range['A'+IntTostr(Ren)+':K'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'GRAFICACION DEL '+ DateToStr(connection.QryBusca.FieldValues['dFiProgramado']) +' AL ' + DateToStr(rxAvancesContrato.FieldByName('dIdFecha').AsDateTime);
      Excel.Selection.MergeCells := True;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Size := 16;
      Excel.Selection.Font.Name := 'Calibri';

      inc(Ren);
      {$region 'Titulos Columnas'}
      // Colocar los encabezados de la plantilla...
      Hoja.Range['A'+IntTostr(Ren)+':A'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'PDA. ANEXO-"C"';
      FormatoEncabezado;
      Hoja.Range['B'+IntTostr(Ren)+':B'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'DESCRIPCION';
      FormatoEncabezado;
      Hoja.Range['C'+IntTostr(Ren)+':C'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'POND. %';
      FormatoEncabezado;
      Hoja.Range['D'+IntTostr(Ren)+':D'+IntToStr(Ren)].Select;
      Excel.Selection.Value := '% AVANCE PROGRAMADO ';
      FormatoEncabezado;
      Hoja.Range['E'+IntTostr(Ren)+':E'+IntToStr(Ren)].Select;
      Excel.Selection.Value := '% POR EJECUTAR PROGRAMADO ';
      FormatoEncabezado;
      Hoja.Range['F'+IntTostr(Ren)+':F'+IntToStr(Ren)].Select;
      Excel.Selection.Value := '% AVANCE REAL';
      FormatoEncabezado;
      Hoja.Range['G'+IntTostr(Ren)+':G'+IntToStr(Ren)].Select;
      Excel.Selection.Value := '% POR EJECUTAR';
      FormatoEncabezado;
      Hoja.Range['H'+IntTostr(Ren)+':H'+IntToStr(Ren)].Select;
      Excel.Selection.Value := '% AVANCE POND.';
      FormatoEncabezado;
      Hoja.Range['I'+IntTostr(Ren)+':I'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'FECHA DE INICIO';
      FormatoEncabezado;
      Hoja.Range['J'+IntTostr(Ren)+':J'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'FECHA DE TERMINO';
      FormatoEncabezado;
      Hoja.Range['K'+IntTostr(Ren)+':K'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'Duración Días (PR)';
      FormatoEncabezado;
      {$endregion}

      //Consultamos las fechas del convenio modificatorio para impresion de las cantidades reportadas superiores al programa de trabajo.
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select max(dIdFecha) as dFechaFinal from bitacoradeactividades '+
                 'where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden ');
      connection.QryBusca2.ParamByName('contrato').AsString := global_contrato;
      connection.QryBusca2.ParamByName('Convenio').AsString := ordenesdetrabajo.FieldByName('sIdConvenio').AsString;
      connection.QryBusca2.ParamByName('Orden').AsString    := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString;
      connection.QryBusca2.Open;

      connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select * from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden ');
      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
      connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Convenio').Value    := ordenesdetrabajo.FieldByName('sIdConvenio').AsString;
      connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString;
      connection.QryBusca.Params.ParamByName('Orden').Value       := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString;
      connection.QryBusca.SQL.Add('order by CONVERT(SUBSTRING(iItemOrden, 6), SIGNED INTEGER)');
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        MiFecha := connection.QryBusca.FieldByName('dFechaInicio').AsDateTime;
        MiFechaI := connection.QryBusca.FieldByName('dFechaInicio').AsDateTime;
        if connection.QryBusca2.FieldValues['dFechaFinal'] > connection.QryBusca.FieldValues['dFechaFinal'] then
           MiFechaF := connection.QryBusca2.FieldByName('dFechaFinal').AsDateTime
        else
           MiFechaF := connection.QryBusca.FieldByName('dFechaFinal').AsDateTime;
        for i := 1 to (DaysBetween(MiFechaF, MiFechaI) + 1) do
        begin
            Hoja.Cells[Ren, 12 + i].Select;
                 {Formato de las fechas archivo Excel,, 24/07/2011..}
            Excel.Selection.NumberFormat := '@';
            Excel.Selection.Value := DateToStr(MiFecha);
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Color := clNavy;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Size := 12;
            Excel.Selection.Font.Name := 'Tahoma';
            Excel.Selection.Interior.ColorIndex := 24;
            MiFecha := IncDay(MiFecha);

            BarraProgresoAvance(progreso, 0,100,10/(DaysBetween(MiFechaF, MiFechaI) + 1));
        end;
        total := i;

        Hoja.Cells[Ren, 12 + i].Select;
        Excel.Selection.Value := 'Fin';
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.Font.Color := clWhite;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Font.Size := 12;
        Excel.Selection.Font.Name := 'Tahoma';
        Excel.Selection.Interior.ColorIndex := 3;

        inc(Ren);
        Hoja.Range['L'+IntTostr(Ren)+':L'+IntToStr(Ren)].Select;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment   := xlCenter;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Font.Size := 12;
        Excel.Selection.Font.Name := 'Tahoma';
        Excel.Selection.Value := 'PROG.';

        Hoja.Range['L'+IntTostr(Ren + 1)+':L'+IntToStr(Ren + 1)].Select;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Font.Size := 12;
        Excel.Selection.Font.Name := 'Tahoma';
        Excel.Selection.Value := 'REAL';

        dAvanceGlobal := 0;
        connection.QryBusca.First;
        while not connection.QryBusca.Eof do
        begin
           {Movimiento de la Barra..}
            Hoja.Range['A'+IntTostr(Ren)+':A'+IntToStr(Ren)].Select;
            Excel.Selection.RowHeight := '30';

            Hoja.Range['A'+IntTostr(Ren + 1)+':A'+IntToStr(Ren + 1)].Select;
            Excel.Selection.RowHeight := '30';

            Hoja.Range['A'+IntTostr(Ren + 2)+':A'+IntToStr(Ren + 2)].Select;
            Excel.Selection.RowHeight := '18.75';

            if connection.QryBusca.FieldValues['iNivel'] = 0 then
            begin
                Hoja.Range['A'+IntTostr(Ren)+':J'+IntToStr(Ren)].Select;
                Excel.Selection.Interior.ColorIndex := 17;

                MiFecha := MiFechaI;

                {Consultamos obtenemos los programados de la orden..}
                Q_Partidas.Active := False;
                Q_Partidas.SQL.Clear;
                Q_Partidas.SQL.Add('select a.dIdFecha as Fecha, a.dAvancePonderadoGlobal '+
                            'from avancesglobales a '+
                            'where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden group by a.dIdFecha '+
                            'union '+
                            'select a.dIdFecha as Fecha, 0 as dAvancePonderadoGlobal '+
                            'from bitacoradeactividades a '+
                            'where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden =:Orden  '+
                            'and dIdFecha > (select max(dIdFecha) from avancesglobales where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden ) '+
                            'group by a.dIdFecha '+
                            'order by Fecha');
                Q_Partidas.Params.ParamByName('Contrato').AsString  := global_contrato;
                Q_Partidas.Params.ParamByName('Convenio').AsString  := ordenesdetrabajo.FieldByName('sIdConvenio').AsString;
                Q_Partidas.Params.ParamByName('Orden').AsString     := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString;
                Q_Partidas.Open;

                sColInicio := '';
                i:= 1;
                dAvanceProgramado := 0;
                dAvanceReal := 0;
                while not Q_Partidas.Eof do
                begin
                    if sColInicio = '' then
                       sColInicio := columnas[12 + i];
                    sColFinal := columnas[12 + i];

                    if Q_Partidas.FieldByName('dAvancePonderadoGlobal').AsFloat > 0 then                    
                       dAvanceProgramado := Q_Partidas.FieldByName('dAvancePonderadoGlobal').AsFloat;

                    dAvanceReal := dAvanceReal + AvanceFolio(Q_Partidas.FieldByName('Fecha').AsDateTime, global_contrato, ordenesdetrabajo.FieldByName('sNumeroOrden').AsString);

                    Hoja.Cells[Ren, 12 + i].Select;
                    Excel.Selection.NumberFormat := '##0.00';
                    Excel.Selection.Value        :=  dAvanceProgramado;
                    Excel.Selection.HorizontalAlignment := xlCenter;
                    Excel.Selection.VerticalAlignment := xlCenter;
                    Excel.Selection.Font.Bold  := False;
                    Excel.Selection.Font.Color :=  dxColorTextoProgramado.ColorValue;
                    Excel.Selection.Interior.Color := dxColorProgramado.ColorValue;

                    //Fisico
                    Hoja.Cells[Ren + 1, 12 + i].Select;
                    Excel.Selection.NumberFormat := '##0.00';
                    Excel.Selection.Value  := truncar(dAvanceReal,2);
                    Excel.Selection.HorizontalAlignment := xlCenter;
                    Excel.Selection.VerticalAlignment   := xlCenter;
                    Excel.Selection.Font.Bold  := False;
                    Excel.Selection.Font.Color := dxColorTextoFisico.ColorValue;
                    Excel.Selection.Interior.Color := dxColorFisico.ColorValue;

                    MiFechaF := Q_Partidas.FieldByName('Fecha').AsDateTime;
                    inc(i);
                    Q_Partidas.Next;
                end;
                Hoja.Range[sColInicio + IntToStr(Ren) + ':'+sColFinal + IntToStr(Ren+1)].Select;
                Excel.Selection.Borders[xlEdgeLeft].LineStyle    := xlContinuous;
                Excel.Selection.Borders[xlEdgeLeft].Weight       := xlThin;
                Excel.Selection.Borders[xlEdgeLeft].Color        := clGray;
                Excel.Selection.Borders[xlEdgeTop].LineStyle     := xlContinuous;
                Excel.Selection.Borders[xlEdgeTop].Weight        := xlThin;
                Excel.Selection.Borders[xlEdgeTop].Color         := clGray;
                Excel.Selection.Borders[xlEdgeBottom].LineStyle  := xlContinuous;
                Excel.Selection.Borders[xlEdgeBottom].Weight     := xlThin;
                Excel.Selection.Borders[xlEdgeBottom].Color      := clGray;
                Excel.Selection.Borders[xlEdgeRight].LineStyle   := xlContinuous;
                Excel.Selection.Borders[xlEdgeRight].Weight      := xlThin;
                Excel.Selection.Borders[xlEdgeRight].Color       := clGray;
            end;

            Hoja.Range['C'+IntTostr(Ren)+':C'+IntToStr(Ren)].Select;
            Excel.Selection.Interior.Color := dxColorPonderado.ColorValue;

            Hoja.Range['F'+IntTostr(Ren)+':F'+IntToStr(Ren)].Select;
            Excel.Selection.Interior.Color := dxColorReal.ColorValue;

            Hoja.Range['K'+IntTostr(Ren)+':K'+IntToStr(Ren)].Select;
            Excel.Selection.Interior.Color := dxColorDuracion.ColorValue;;

            {Escritura de Datos en el Archvio de Excel..}
            Hoja.Cells[Ren, 1].Select;
            Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroActividad'];
            Excel.Selection.NumberFormat :='@';
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.Font.Size := 14;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.Font.Name := 'Arial';

            Hoja.Range['A'+IntTostr(Ren)+':A'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

            Hoja.Cells[Ren, 2].Select;
            Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];
            Excel.Selection.HorizontalAlignment := xlJustify;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.MergeCells := True;
            Excel.Selection.WrapText   := True;
            Excel.Selection.Font.Size := 14;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Arial';

            Hoja.Range['B'+IntTostr(Ren)+':B'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

            Hoja.Cells[Ren, 3].Select;
            Excel.Selection.NumberFormat := '##0.00';
            Excel.Selection.Value := connection.QryBusca.FieldValues['dPonderado'];
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.Font.Size := 12;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.Font.Name := 'Tahoma';

            Hoja.Range['C'+IntTostr(Ren)+':C'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

            programadoReal := 0;

            //Avance programado ejecutado..
            {$region 'Consultas Programados'}
            if connection.QryBusca.FieldValues['iNivel'] = 0 then
            begin
                //Consultamos la suma de los avances..
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('select sum(dAvancePonderadoDia) as dAvance  from avancesglobales where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and dIdFecha <=:Fecha group by sContrato');
                connection.zCommand.Params.ParamByName('Contrato').AsString  := global_contrato;
                connection.zCommand.Params.ParamByName('Convenio').AsString  := ordenesdetrabajo.FieldByName('sIdConvenio').AsString;
                connection.zCommand.Params.ParamByName('Orden').AsString     := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString;
                connection.zCommand.Params.ParamByName('fecha').AsDate       := rxAvancesContrato.FieldByName('dIdFecha').AsDateTime;
                connection.zCommand.Open;

                if connection.zCommand.RecordCount > 0 then
                   programadoReal := connection.zCommand.FieldByName('dAvance').AsFloat;
            end
            else
            begin
                //Consultamos la suma de los avances..
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('select sum(dCantidad) as dAvance  from distribuciondeactividades where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and dIdFecha <=:Fecha and sWbs =:Wbs group by sContrato');
                connection.zCommand.Params.ParamByName('Contrato').AsString  := global_contrato;
                connection.zCommand.Params.ParamByName('Convenio').AsString  := ordenesdetrabajo.FieldByName('sIdConvenio').AsString;
                connection.zCommand.Params.ParamByName('Orden').AsString     := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString;
                connection.zCommand.Params.ParamByName('Wbs').AsString       := connection.QryBusca.FieldByName('sWbs').AsString;
                connection.zCommand.Params.ParamByName('fecha').AsDate       := rxAvancesContrato.FieldByName('dIdFecha').AsDateTime;
                connection.zCommand.Open;

                if connection.zCommand.RecordCount > 0 then
                   programadoReal := (connection.zCommand.FieldByName('dAvance').AsFloat * (100/connection.QryBusca.FieldByName('dCantidad').AsFloat)) ;
            end;

            {$endregion}

            //Avance programado por ejecutar..

            {$region 'Formato de Columnas y escritura de programados'}
            if programadoReal = 100 then
               programadoRestante := 0
            else
               if programadoReal > 100 then
                  programadoReal := 100
                else
                   programadoRestante := 100 - programadoReal;

            if programadoReal > 100 then
               programadoRestante := 0;

            if  (connection.QryBusca.FieldByName('sTipoActividad').AsString = 'Paquete') and (connection.QryBusca.FieldByName('iNivel').AsInteger > 0) then
                programadoRestante := 0;

            Hoja.Cells[Ren, 4].Select;
            Excel.Selection.NumberFormat := '##0.00';
            Excel.Selection.Value := programadoReal;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.Font.Bold  := False;
            Excel.Selection.Font.size  := 14;

            Hoja.Range['D'+IntTostr(Ren)+':D'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

            Hoja.Cells[Ren, 5].Select;
            Excel.Selection.NumberFormat := '##0.00';
            Excel.Selection.Value := programadoRestante;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.Font.Bold  := False;
            Excel.Selection.Font.size  := 14;

            Hoja.Range['E'+IntTostr(Ren)+':E'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

            Hoja.Cells[Ren, 6].Select;
            Excel.Selection.NumberFormat := '##0.00';
            Excel.Selection.Value := 0;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.Font.Size := 14;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Tahoma';

            Hoja.Range['F'+IntTostr(Ren)+':F'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

            Hoja.Cells[Ren, 7].Select;
            Excel.Selection.NumberFormat := '##100.00';
            Excel.Selection.Value := 0;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.Font.Size := 14;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Color:= clRed;
            Excel.Selection.Font.Name := 'Tahoma';

            Hoja.Range['G'+IntTostr(Ren)+':G'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

            Hoja.Cells[Ren, 8].Select;
            Excel.Selection.NumberFormat := '##0.00';
            Excel.Selection.Value := 0;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.Font.Size := 14;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Tahoma';

            Hoja.Range['H'+IntTostr(Ren)+':H'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

            //Fecha de incio
            Hoja.Cells[Ren, 9].Select;
            Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaInicio'];
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.Font.Size := 14;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Tahoma';

            Hoja.Range['I'+IntTostr(Ren)+':I'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

            //Fecha de Final
            Hoja.Cells[Ren, 10].Select;
            Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaFinal'];
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.Font.Size := 14;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Tahoma';

            Hoja.Range['J'+IntTostr(Ren)+':J'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

            Hoja.Cells[Ren, 11].Select;
            Excel.Selection.Value := connection.QryBusca.FieldValues['dDuracion'];
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.Font.Size := 14;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.Font.Name := 'Tahoma';

            Hoja.Range['K'+IntTostr(Ren)+':K'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;
            {$endregion}

                {Colores de los paquetes..}
          if connection.QryBusca.FieldValues['sTipoActividad'] = 'Paquete' then
          begin
              Hoja.Range['A' + IntToStr(Ren) + ':B' + IntToStr(Ren)].Select;
              Excel.Selection.Font.Bold := True;

              if connection.QryBusca.FieldValues['iNivel'] > 0 then
              begin
                  //Aqui obtenermos el avance acumulado del paquete..
                  {$region 'Avances Fisicos de Paquetes'}
                  Connection.qryBusca2.Active := False ;
                  Connection.qryBusca2.SQL.Clear ;
                  Connection.qryBusca2.SQL.Add('Select a.sNumeroActividad, a.dPonderado, '+
                            '(select sum(dAvance) from bitacoradeactividades where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                            'and sWbs = a.sWbs and dIdFecha <=:fecha group by sContrato ) as dAvance, '+
                            '(select sum(dAvance * (a.dPonderado / 100)) from bitacoradeactividades where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                            'and sNumeroActividad = a.sNumeroActividad and dIdFecha <=:fecha group by sContrato ) as dAvancePonderado '+
                            'From actividadesxorden a '+
                            'Where a.sContrato = :contrato and a.sIdConvenio =:Convenio and a.sNumeroOrden = :orden And a.sWbsAnterior like :wbs group by a.swbs') ;
                  Connection.qryBusca2.Params.ParamByName('Contrato').DataType  := ftString ;
                  Connection.qryBusca2.Params.ParamByName('Contrato').Value     := global_contrato ;
                  Connection.qryBusca2.Params.ParamByName('Convenio').DataType  := ftString ;
                  Connection.qryBusca2.Params.ParamByName('Convenio').Value     := ordenesdetrabajo.FieldByName('sIdConvenio').AsString ;
                  Connection.qryBusca2.Params.ParamByName('Orden').DataType     := ftString ;
                  Connection.qryBusca2.Params.ParamByName('Orden').Value        := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString ;
                  Connection.qryBusca2.Params.ParamByName('Fecha').DataType     := ftDate ;
                  Connection.qryBusca2.Params.ParamByName('Fecha').Value        := rxAvancesContrato.FieldByName('dIdFecha').AsDateTime ;
                  Connection.qryBusca2.Params.ParamByName('Wbs').DataType       := ftString ;
                  Connection.qryBusca2.Params.ParamByName('Wbs').Value          := connection.QryBusca.FieldByName('sWbs').AsString;
                  Connection.qryBusca2.Open;

                  dVolumen := 0;
                  while Not Connection.QryBusca2.Eof do
                  begin
                      dVolumen := dVolumen + Connection.QryBusca2.FieldByName('dAvancePonderado').AsFloat;
                      Connection.QryBusca2.Next;
                  end;

                  //Avance de la partida..
                  Hoja.Cells[Ren, 6].Select;
                  Excel.Selection.NumberFormat := '##0.00';
                  if connection.QryBusca.FieldValues['dPonderado'] > 0 then
                     Excel.Selection.Value := (100 / connection.QryBusca.FieldValues['dPonderado']) * dVolumen
                  else
                     Excel.Selection.Value := 0;
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment   := xlCenter;

                  //Avance por ejecutar
                  Hoja.Cells[Ren, 7].Select;
                  Excel.Selection.NumberFormat := '##0.00';
                  If connection.QryBusca.FieldValues['dPonderado'] > 0 then
                     Excel.Selection.Value := 100 - ((100 / connection.QryBusca.FieldValues['dPonderado']) * dVolumen)
                  else
                     Excel.Selection.Value := connection.QryBusca.FieldValues['dPonderado'];
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment   := xlCenter;
                  Excel.Selection.Font.Bold := False;

                  //Avance Ponderado por partida..
                  Hoja.Cells[Ren, 8].Select;
                  Excel.Selection.NumberFormat := '##0.00';
                  Excel.Selection.Value := dVolumen;
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment   := xlCenter;
                  Excel.Selection.Font.Bold := False;
                  if dVolumen > 0 then
                     Excel.Selection.Font.Color := clBlue;
                  {$endregion}
              end;
          end
          else
          begin
            MiFecha := MiFechaI;

            {Consultamos obtenemos los programados de la orden..}
            {$region 'Avances programados de la Partida'}
            Q_Partidas.Active := False;
            Q_Partidas.SQL.Clear;
            Q_Partidas.SQL.Add('select * from distribuciondeactividades where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:Wbs and sNumeroActividad =:Actividad ');
            Q_Partidas.Params.ParamByName('Contrato').DataType := ftString;
            Q_Partidas.Params.ParamByName('Contrato').Value    := global_contrato;
            Q_Partidas.Params.ParamByName('Convenio').DataType := ftString;
            Q_Partidas.Params.ParamByName('Convenio').Value    := ordenesdetrabajo.FieldByName('sIdConvenio').AsString;
            Q_Partidas.Params.ParamByName('Orden').DataType    := ftString;
            Q_Partidas.Params.ParamByName('Orden').Value       :=ordenesdetrabajo.FieldByName('sNumeroOrden').AsString;
            Q_Partidas.Params.ParamByName('Wbs').DataType      := ftString;
            Q_Partidas.Params.ParamByName('Wbs').Value         := connection.QryBusca.FieldByName('sWbs').AsString;
            Q_Partidas.Params.ParamByName('Actividad').DataType:= ftString;
            Q_Partidas.Params.ParamByName('Actividad').Value   := connection.QryBusca.FieldByName('sNumeroActividad').AsString;
            Q_Partidas.Open;

            if Q_Partidas.RecordCount > 0 then
            begin
              dProgramado := 0;
              sColInicio  := '';
              for i := 1 to (DaysBetween(MiFechaF, MiFechaI) + 1) do
              begin
                  if MiFecha = Q_Partidas.FieldByName('dIdFecha').AsDateTime then
                  begin
                      if sColInicio = '' then
                         sColInicio := columnas[12 + i];
                      sColFinal := columnas[12 + i];
                      Hoja.Cells[Ren, 12 + i].Select;
                      Excel.Selection.NumberFormat := '##0.00';
                      dProgramado := (dProgramado + Q_Partidas.FieldByName('dCantidad').AsFloat * 100);
                      Excel.Selection.Value        := dProgramado;
                      Excel.Selection.HorizontalAlignment := xlCenter;
                      Excel.Selection.VerticalAlignment := xlCenter;
                      Excel.Selection.Font.Bold := False;
                      Excel.Selection.Font.Color := dxColorTextoProgramado.ColorValue;
                      Excel.Selection.Interior.Color := dxColorProgramado.ColorValue;
                      Q_Partidas.Next;
                  end;
                  MiFecha := IncDay(MiFecha);
              end;
              Hoja.Range[sColInicio + IntToStr(Ren) + ':'+sColFinal + IntToStr(Ren)].Select;
              Excel.Selection.Borders[xlEdgeLeft].LineStyle    := xlContinuous;
              Excel.Selection.Borders[xlEdgeLeft].Weight       := xlThin;
              Excel.Selection.Borders[xlEdgeLeft].Color        := clGray;
              Excel.Selection.Borders[xlEdgeTop].LineStyle     := xlContinuous;
              Excel.Selection.Borders[xlEdgeTop].Weight        := xlThin;
              Excel.Selection.Borders[xlEdgeTop].Color         := clGray;
              Excel.Selection.Borders[xlEdgeBottom].LineStyle  := xlContinuous;
              Excel.Selection.Borders[xlEdgeBottom].Weight     := xlThin;
              Excel.Selection.Borders[xlEdgeBottom].Color      := clGray;
              Excel.Selection.Borders[xlEdgeRight].LineStyle   := xlContinuous;
              Excel.Selection.Borders[xlEdgeRight].Weight      := xlThin;
              Excel.Selection.Borders[xlEdgeRight].Color       := clGray;
            end;
            {$endregion}

            {Consultamos si la partida esta reportada..}
            {$region 'Avances Fisicos Partidas'}
            Q_Partidas.Active := False;
            Q_Partidas.SQL.Clear;
            Q_Partidas.SQL.Add('select o.sContrato, b.dIdFecha,  sum(b.dAvance) as dCantidad, b.sNumeroActividad, b.sWbs, '+
                      '(select sum(dAvance) as actual from bitacoradeactividades where sContrato = b.sContrato and sNumeroOrden = b.sNumeroOrden '+
                      'and sNumeroActividad = b.sNumeroActividad and dIdFecha <= b.dIdFecha group by sContrato ) as dVolumen, '+
                      '(select sum(dCantidad) from distribuciondeactividades where sContrato = b.sContrato and sIdConvenio = :Convenio and sNumeroOrden = b.sNumeroOrden and sWbs = b.sWbs and dIdFecha <= :fechaF ) as Ponderado '+
                      'from ordenesdetrabajo o '+
                      'inner join bitacoradeactividades b on (b.sContrato = o.sContrato and  b.dIdFecha <=:fechaF and b.sNumeroOrden = o.sNumeroOrden '+
                      'and b.sIdTipoMovimiento = "ED") '+
                      'inner join actividadesxorden ao on (ao.sContrato = b.sContrato and ao.sNumeroOrden = b.sNumeroOrden and ao.sWbs = b.sWbs and ao.sTipoActividad = "Actividad" and ao.sIdConvenio =:Convenio ) '+
                      'where o.sContrato =:contrato and b.sNumeroOrden like :folio and b.sWbs =:Wbs '+
                      'group by ao.sWbs, b.dIdFecha order by o.sNumeroOrden, ao.iItemOrden,  b.dIdFecha ');
            Q_Partidas.Params.ParamByName('Contrato').AsString := global_contrato;
            Q_Partidas.Params.ParamByName('Convenio').AsString := ordenesdetrabajo.FieldByName('sIdConvenio').AsString;
            Q_Partidas.Params.ParamByName('Folio').AsString    := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString;
            Q_Partidas.Params.ParamByName('fechaF').AsDate     := MiFechaF;
            Q_Partidas.Params.ParamByName('Wbs').AsString      := connection.QryBusca.FieldByName('sWbs').AsString;
            Q_Partidas.Open;

            MiFecha := MiFechaI;
            if Q_Partidas.RecordCount > 0 then
            begin
              dVolumen := 0;
              for i := 1 to (DaysBetween(MiFechaF, MiFechaI) + 1) do
              begin
                  if MiFecha = Q_Partidas.FieldByName('dIdFecha').AsDateTime then
                  begin
                      Hoja.Cells[Ren + 1, 12 + i].Select;
                      dVolumen := dVolumen + (Q_Partidas.FieldByName('dCantidad').AsFloat);
                      Excel.Selection.NumberFormat := '##0.00';
                      Excel.Selection.Value        := dVolumen ;
                      Excel.Selection.HorizontalAlignment := xlCenter;
                      Excel.Selection.VerticalAlignment   := xlCenter;
                      Excel.Selection.Font.Bold := False;
                      Excel.Selection.Font.Color := dxColorTextoFisico.ColorValue;
                      Excel.Selection.Interior.Color := dxColorFisico.ColorValue;
                      Excel.Selection.Borders[xlEdgeLeft].LineStyle    := xlContinuous;
                      Excel.Selection.Borders[xlEdgeLeft].Weight       := xlThin;
                      Excel.Selection.Borders[xlEdgeLeft].Color        := clGray;
                      Excel.Selection.Borders[xlEdgeTop].LineStyle     := xlContinuous;
                      Excel.Selection.Borders[xlEdgeTop].Weight        := xlThin;
                      Excel.Selection.Borders[xlEdgeTop].Color         := clGray;
                      Excel.Selection.Borders[xlEdgeBottom].LineStyle  := xlContinuous;
                      Excel.Selection.Borders[xlEdgeBottom].Weight     := xlThin;
                      Excel.Selection.Borders[xlEdgeBottom].Color      := clGray;
                      Excel.Selection.Borders[xlEdgeRight].LineStyle   := xlContinuous;
                      Excel.Selection.Borders[xlEdgeRight].Weight      := xlThin;
                      Excel.Selection.Borders[xlEdgeRight].Color       := clGray;
                      Q_Partidas.Next;
                  end;
                  MiFecha := IncDay(MiFecha);
              end;

              //Avance de la partida..
              Hoja.Cells[Ren, 6].Select;
              Excel.Selection.NumberFormat := '##0.00';
              Excel.Selection.Value := dVolumen ;
              Excel.Selection.HorizontalAlignment := xlCenter;
              Excel.Selection.VerticalAlignment   := xlCenter;
              Excel.Selection.Font.Bold  := False;
              Excel.Selection.Font.size  := 14;
              if dVolumen = 100 then
                 Excel.Selection.Font.Color := clBlue;

              //Avance por ejecutar
              Hoja.Cells[Ren, 7].Select;
              Excel.Selection.NumberFormat := '##0.00';
              Excel.Selection.Value := 100 - dVolumen;
              Excel.Selection.HorizontalAlignment := xlCenter;
              Excel.Selection.VerticalAlignment   := xlCenter;
              Excel.Selection.Font.Bold := False;
              Excel.Selection.Font.size  := 14;

              //Avance Ponderado por partida..
              Hoja.Cells[Ren, 8].Select;
              Excel.Selection.NumberFormat := '##0.00';
              Excel.Selection.Value := (connection.QryBusca.FieldValues['dPonderado'] / 100) * dVolumen ;
              Excel.Selection.HorizontalAlignment := xlCenter;
              Excel.Selection.VerticalAlignment   := xlCenter;
              Excel.Selection.Font.Bold  := False;
              Excel.Selection.Font.size  := 14;
              Excel.Selection.Font.color := clBlue;
              {$endregion}

            end;
          end;
          BarraProgresoAvance(Progreso, 0,100,90/connection.QryBusca.RecordCount);
          connection.QryBusca.Next;
          Inc(Ren,3);
        end;
      end;
      {$region 'Avance fisico Paquete Prinicpal'}
      Connection.qryBusca2.Active := False ;
      Connection.qryBusca2.SQL.Clear ;
      Connection.qryBusca2.SQL.Add('Select a.sNumeroActividad, '+
                '(select sum(dAvance * (a.dPonderado / 100)) from bitacoradeactividades where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                'and sNumeroActividad = a.sNumeroActividad and dIdFecha <=:fecha group by sContrato ) as dAvancePonderado '+
                'From actividadesxorden a '+
                'Where a.sContrato = :contrato and a.sIdConvenio =:Convenio and a.sNumeroOrden = :orden And a.sTipoActividad = "Actividad" group by a.swbs') ;
      Connection.qryBusca2.Params.ParamByName('Contrato').AsString  := global_contrato ;
      Connection.qryBusca2.Params.ParamByName('Convenio').AsString  := ordenesdetrabajo.FieldByName('sIdConvenio').AsString ;
      Connection.qryBusca2.Params.ParamByName('Orden').AsString     := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString ;
      Connection.qryBusca2.Params.ParamByName('Fecha').AsDate       := MiFechaF ;
      Connection.qryBusca2.Open;

      while Not Connection.QryBusca2.Eof do
      begin
          dAvanceGlobal := dAvanceGlobal + Connection.QryBusca2.FieldByName('dAvancePonderado').AsFloat;
          Connection.QryBusca2.Next;
      end;

      Hoja.Cells[8, 6].Select;
      Excel.Selection.NumberFormat := '##0.00';
      //Consulta SQL:
      {
      Seleccionas el registro en "avancesglobalesxorden" al día.
      }
      if dAvanceGlobal > 100 then
         Excel.Selection.Value := 100
      else
         Excel.Selection.Value := dAvanceGlobal;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.size := 12;

      Hoja.Cells[8, 7].Select;
      Excel.Selection.NumberFormat := '##0.00';
      if dAvanceGlobal > 100 then
         Excel.Selection.Value := 100
      else
         Excel.Selection.Value := 100 - dAvanceGlobal;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.size := 12;

      Hoja.Range['A'+IntTostr(1)+':K'+IntToStr(1)].Select;
      Excel.Selection.Interior.ColorIndex := 15;

      Hoja.Cells[8, 8].Select;
      Excel.Selection.NumberFormat := '##0.00';
      if dAvanceGlobal > 100 then
         Excel.Selection.Value := 100
      else
         Excel.Selection.Value := dAvanceGlobal;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.size := 12;
      {$endregion}

    end;

  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      try
        Hoja.Name := 'AVANCES ' + ordenesdetrabajo.FieldByName('sNumeroOrden').AsString;
      except
        Hoja.Name := 'AVANCES ';
      end;
      Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
      DatosPlantilla;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al Generar el Programa de Trabajo:' + #10 + #10 + e.Message;
      end;
    end;

    Result := Resultado;
  end;

begin
    //Verificamos si es un frente
    If MidStr(ordenesdetrabajo.FieldByName('sNumeroOrden').AsString, 1 , 8) = 'CONTRATO' Then
    Begin
        messageDLG('Seleccione un frente de trabajo!', mtInformation, [mbOk], 0);
        exit;
    End;

    // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
    if not SaveDialog1.Execute then
      Exit;
      // Generar el ambiente de excel
    try
      Excel := CreateOleObject('Excel.Application');
    except
      FreeAndNil(Excel);
      showmessage('No es posible generar el archivo de EXCEL, informe de esto al administrador del sistema.');
      Exit;
    end;

    if MessageDlg('Deseas visualizar el diseño del Archivo de Excel?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Excel.Visible := True;
      Excel.DisplayAlerts := False;
      Excel.ScreenUpdating := True;
    end
    else
    begin
      Excel.Visible := True;
      Excel.DisplayAlerts := False;
      Excel.ScreenUpdating := False;
    end;

    Libro := Excel.Workbooks.Add; // Crear el libro sobre el que se ha de trabajar

      // Verificar si cuenta con las hojas necesarias
    while Libro.Sheets.Count < 2 do
      Libro.Sheets.Add;

      // Verificar si se pasa de hojas necesarias
    Libro.Sheets[1].Select;
    while Libro.Sheets.Count > 1 do
      Excel.ActiveWindow.SelectedSheets.Delete;

      // Proceder a generar la hoja REPORTE
    CadError := '';

    cxPageDatos.ActivePageIndex := 0;
    BarraMostrar(True,progreso, LabelProceso);
    if GenerarPlantilla then
    begin
          // Grabar el archivo de excel con el nombre dado
      Excel.Visible := True;
      Excel.DisplayAlerts := True;
      Excel.ScreenUpdating := True;
      messageDlg('El Archivo se generó Correctamente!', mtInformation, [mbOk], 0);
    end;
    BarraMostrar(False,progreso, LabelProceso);

    Excel := '';

    if CadError <> '' then
      showmessage(CadError);

end;

procedure TfrmComparativo2.cxSemanaPropertiesChange(Sender: TObject);
begin
    cxMes.Checked := False;
    cxDia.Checked := False;
    if cxSemana.Checked then
       tsNumeroOrden.Properties.OnChange(sender);
end;

procedure TfrmComparativo2.chkFisicoClick(Sender: TObject);
begin
    dbGraphics.Series[1].Active := chkFisico.Checked ;
end;

procedure TfrmComparativo2.chkFinancieroClick(Sender: TObject);
begin
    dbGraphics.Series[2].Active := chkFinanciero.Checked ;
end;

procedure TfrmComparativo2.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Style.Color := global_color_entradaERP
end;

procedure TfrmComparativo2.frxAvancesTotalesGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'ORDEN_TRABAJO') = 0 then
      Value := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString ;
end;

procedure TfrmComparativo2.MenuItem1Click(Sender: TObject);
var
   QueryImagen: TZQuery;
begin
  try
    QueryImagen := TZQuery.Create(Self);

    QueryImagen.Connection := connection.ZConnection;
    QueryImagen.Active:=False;
    QueryImagen.SQL.Clear;
    QueryImagen.SQL.Add('SELECT bImagen FROM configuracion WHERE sContrato=:sContrato');
    QueryImagen.ParamByName('sContrato').AsString:=global_contrato;
    QueryImagen.Open;

    //dxRibbonRadialMenu1
    if cxPageDatos.ActivePageIndex = 1 then
       ExportExcelPersonalizado(QueryImagen,cxViewActividades,'Avances Partidas','Actividades Diarias Programa de Trabajo >'+ ordenesdetrabajo.FieldByName('sNumeroOrden').AsString);

  finally
      QueryImagen.Destroy
  end;

end;

procedure TfrmComparativo2.frxAvancesGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'ORDEN_TRABAJO') = 0 then
      Value := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString ;
end;

procedure TfrmComparativo2.Catalogo_001GetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'ORDEN_TRABAJO') = 0 then
      Value := ordenesdetrabajo.FieldByName('sNumeroOrden').AsString ;
end;

procedure TfrmComparativo2.formatoEncabezado;
begin
  Excel.Selection.MergeCells := False;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment   := xlCenter;
  Excel.Selection.WrapText  := True;
  Excel.Selection.Font.Size := 12;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Font.Name := 'Tahoma';
  Excel.Selection.Borders[xlEdgeLeft].LineStyle    := xlContinuous;
  Excel.Selection.Borders[xlEdgeLeft].Weight       := xlThin;
  Excel.Selection.Borders[xlEdgeTop].LineStyle     := xlContinuous;
  Excel.Selection.Borders[xlEdgeTop].Weight        := xlThin;
  Excel.Selection.Borders[xlEdgeBottom].LineStyle  := xlContinuous;
  Excel.Selection.Borders[xlEdgeBottom].Weight     := xlThin;
  Excel.Selection.Borders[xlEdgeRight].LineStyle   := xlContinuous;
  Excel.Selection.Borders[xlEdgeRight].Weight      := xlThin;
end;

Function TfrmComparativo2.AvanceFolio(dParamFecha : tDate; sParamOrden, sParamFolio :string) : double;
var
   dDiaSiguiente  : TDateTime;
   zqAnterior, zqAcumulado : tzReadOnlyQuery;
begin

    zqAnterior := tzReadOnlyQuery.Create(nil);
    zqAnterior.Connection := connection.zConnection;

    zqAcumulado := tzReadOnlyQuery.Create(nil);
    zqAcumulado.Connection := connection.zConnection;

    {Avances anteriores}
    dDiaSiguiente := dParamFecha;
    zqAnterior.SQL.Clear;
    zqAnterior.SQL.Text := 'SELECT ROUND(AvancesAnteriores("'+FormatDateTime('yyyy-mm-dd', dDiaSiguiente)+'", :Orden, :Folio), 16) AS dAvanceAnterior;';
    zqAnterior.ParamByName('Orden').AsString := sParamOrden;
    zqAnterior.ParamByName('Folio').AsString := sParamFolio;
    zqAnterior.Open;

    //Avances Acumulados
    dDiaSiguiente := IncDay(dDiaSiguiente);
    zqAcumulado.SQL.Clear;
    zqAcumulado.SQL.Text := 'SELECT ROUND(AvancesAnteriores("'+FormatDateTime('yyyy-mm-dd', dDiaSiguiente)+'", :Orden, :Folio), 16) AS dAvanceAcumulado;';
    zqAcumulado.ParamByName('Orden').AsString := sParamOrden;
    zqAcumulado.ParamByName('Folio').AsString := sParamFolio;
    zqAcumulado.Open;

    result := zqAcumulado.FieldByName('dAvanceAcumulado').AsFloat - zqAnterior.FieldByName('dAvanceAnterior').AsFloat;;
    zqAnterior.Destroy;
    zqAcumulado.Destroy;
end;

function TfrmComparativo2.Truncar(numero: Real; cifras: Integer) : Real;
var
  x, y : Integer;
  cadena, cad : string;
begin
  if numero > 0 then
  begin
      cadena := FloatToStr( numero );
      cad := '';
      for x := 1 to Length( cadena ) do
      begin
        if cadena[x] = '.' then
          Break
        else
          cad := cad + cadena[x];
      end;

      cad := cad + '.';

      for y := x+1 to x+1+cifras - 1 do
      begin
        cad := cad + cadena[y];
      end;
  end
  else
     cad := '0.00';
  Result := StrToFloat( cad );
end;

end.

