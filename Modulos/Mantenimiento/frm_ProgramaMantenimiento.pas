unit frm_ProgramaMantenimiento;

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
  dxSkinXmas2008Blue, Vcl.Menus, Data.DB, MemDS, DBAccess, Uni, frxClass,
  frxDBSet, cxProgressBar, Vcl.StdCtrls, cxButtons, cxLabel, frm_barraH1,
  Vcl.ExtCtrls, UnitRH, frm_connection, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxMemo,
  dxBarBuiltInMenu, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, cxGroupBox, cxRadioGroup, dxLayoutControl, cxGridChartView,
  cxGridDBChartView, cxPC, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxSplitter,
  frm_barraH2, unitgenerales, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, unitreportes;

type
  TFrmProgramaMantenimiento = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    frxDBGenMtos: TfrxDBDataset;
    zReporteGenMto: TUniQuery;
    frxReport1: TfrxReport;
    PanelPrincipal: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxSplitter1: TcxSplitter;
    grid_mantenimiento: TcxGrid;
    cxView_mantenimiento: TcxGridDBTableView;
    cxView_mantenimientoColumn1: TcxGridDBColumn;
    cxView_mantenimientoColumn2: TcxGridDBColumn;
    cxView_mantenimientoColumn4: TcxGridDBColumn;
    cxView_mantenimientoColumn6: TcxGridDBColumn;
    cxView_mantenimientoColumn9: TcxGridDBColumn;
    grid_mantenimientoLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    cxPageDetalle: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGridMto: TcxGrid;
    cxView_Mto: TcxGridDBTableView;
    cxView_MtoColumn5: TcxGridDBColumn;
    cxView_MtoColumn2: TcxGridDBColumn;
    cxView_MtoColumn1: TcxGridDBColumn;
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
    zSubFamilias: TUniQuery;
    dsSubfamilias: TDataSource;
    PanelDown6: TPanel;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    cxSplitter4: TcxSplitter;
    lcbMes: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    lcbSemana: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cbAnio: TcxDBComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    zMes: TUniQuery;
    zSemana: TUniQuery;
    dsMes: TDataSource;
    dsSemana: TDataSource;
    zMtoPrograma: TUniQuery;
    dsMtoPrograma: TDataSource;
    cxEliminarDetalle: TcxButton;
    cbAnios: TcxComboBox;
    procedure btnPrinterClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxPageDetalleChange(Sender: TObject);
    procedure zSubFamiliasAfterScroll(DataSet: TDataSet);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxEliminarDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure btnImpInformeClick(Sender: TObject);
    procedure opcionImprimirPropertiesChange(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProgramaMantenimiento: TFrmProgramaMantenimiento;
  titulo, titulo2 : String;
  IsOpen : Boolean;

implementation

{$R *.dfm}

procedure TFrmProgramaMantenimiento.btnDetalleClick(Sender: TObject);
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
   end;
end;

procedure TFrmProgramaMantenimiento.btnImpInformeClick(Sender: TObject);
begin
  if opcionImprimir.EditValue = 1 then
  begin
    IsOpen:=False;
    generar_reporte_grid(cxView_mantenimiento,'Reporte Familias para Mantenimientos');
    IsOpen:=True;
  end;
  if opcionImprimir.EditValue = 2 then
  begin
          //Reporte de Mantenimiento
    procReporteGeneradorMtoSIANI(IntToStr(cbAnios.EditValue), frmProgramaMantenimiento, frxReport1.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString);
  end;
end;

procedure TFrmProgramaMantenimiento.btnPrinterClick(Sender: TObject);
begin
      //Reporte de Mantenimiento
  procReporteGeneradorMtoSIANI('2018', frmProgramaMantenimiento, frxReport1.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString);
end;

procedure TFrmProgramaMantenimiento.cxCancelarDetalleClick(Sender: TObject);
begin
    PanelDown.Visible := False;
    if cxPageDetalle.ActivePageIndex = 0 then
    begin
       cxLeyenda2.Caption:=titulo2 ;
       cxSplitter4.Visible:= False;
       PanelDown6.Visible:= False;
       zMtoPrograma.Cancel

    end;
    cxNuevoDetalle.Enabled := true;
    cxEditaDetalle.Enabled := true;
    PanelDown.Visible := False;
    cxGridMto.Enabled:=True;


end;

procedure TFrmProgramaMantenimiento.cxEditaDetalleClick(Sender: TObject);
begin
  PanelDown.Visible := True;
    if cxPageDetalle.ActivePageIndex = 0 then
    begin
       cxLeyenda2.Caption:=titulo2 +'[Editando]';
       cxSplitter4.Visible:= True;
       PanelDown6.Visible:=True;
       zMtoPrograma.Edit;
    end;

    cxNuevoDetalle.Enabled := False;
    cxEditaDetalle.Enabled := False;
    PanelDown.Visible :=True;
    cxGridMto.Enabled:=False;
end;

procedure TFrmProgramaMantenimiento.cxEliminarDetalleClick(Sender: TObject);
begin
  zMtoPrograma.Delete;
  zMtoPrograma.ApplyUpdates();
end;

procedure TFrmProgramaMantenimiento.cxGuardarDetalleClick(Sender: TObject);
begin
  if cxPageDetalle.ActivePageIndex = 0 then
    begin
       zMtoPrograma.Post;
       cxLeyenda2.Caption:=titulo2 ;
       cxSplitter4.Visible:= False;
       PanelDown6.Visible:= False

    end;
    cxNuevoDetalle.Enabled := true;
    cxEditaDetalle.Enabled := true;
    PanelDown.Visible := False;
    cxGridMto.Enabled:=True;
end;

procedure TFrmProgramaMantenimiento.cxNuevoDetalleClick(Sender: TObject);
begin
  PanelDown.Visible := True;
    if cxPageDetalle.ActivePageIndex = 0 then
    begin
       cxLeyenda2.Caption:=titulo2 +'[Agregando]';
       cxSplitter4.Visible:= True;
       PanelDown6.Visible:=True;
      zMtoPrograma.Append;
      zMtoPrograma.FieldByName('IdSubFamilia').AsInteger := zSubFamilias.FieldByName('IdSubFamilia').AsInteger;


    end;
    cxNuevoDetalle.Enabled := False;
    cxEditaDetalle.Enabled := False;
    PanelDown.Visible :=True;
    cxGridMto.Enabled:=False;
end;

procedure TFrmProgramaMantenimiento.cxPageDetalleChange(Sender: TObject);
begin
  if cxPageDetalle.ActivePageIndex = 0 then
  begin
    AsignarSQL(zMtoPrograma, 'mto_programa_subfamilias', pUpDate);
    FiltrarDataSet(zMtoPrograma,'IdSubFamilia',[zSubFamilias.FieldByName('IdSubFamilia').AsInteger]);
    zMtoPrograma.Open;
  end;

  if cxPageDetalle.ActivePageIndex = 1 then
  begin
    opcionImprimir.EditValue := 2;
  end;
end;

procedure TFrmProgramaMantenimiento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 guardar_leer_grid(cxView_mantenimiento,FrmProgramaMantenimiento,1);
 guardar_leer_grid(cxView_Mto,FrmProgramaMantenimiento,1);
 action := caFree;
end;

procedure TFrmProgramaMantenimiento.FormShow(Sender: TObject);
begin
  try
    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible := False;
    Panel2.Visible := False;
    cxSplitter1.Visible := False;
    titulo:='Programa Anual de Mantenimiento';
    titulo2:='Detalles';
    cxLeyenda.Caption:=titulo;
    cxLeyenda2.Caption:=titulo2;

    zMes.Active := false;
    zMes.Open;

    zSemana.Active := False;
    zSemana.Open;

    IsOpen := False;

    AsignarSQL(zSubFamilias, 'mto_subfamilias_reporte', pUpDate);
    FiltrarDataSet(zSubFamilias,'IdSubFamilia',['-1']);
    zSubFamilias.Open;

    if zSubFamilias.RecordCount > 0 then
    begin
      AsignarSQL(zMtoPrograma, 'mto_programa_subfamilias', pUpDate);
      FiltrarDataSet(zMtoPrograma,'IdSubFamilia',[zSubFamilias.FieldByName('IdSubFamilia').AsInteger]);
      zMtoPrograma.Open;
    end;

    IsOpen := True;

    cxView_mantenimiento.DataController.Groups.FullExpand;

    guardar_leer_grid(cxView_mantenimiento,FrmProgramaMantenimiento,0);
    guardar_leer_grid(cxView_Mto,FrmProgramaMantenimiento,0);
  except
  on e: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure TFrmProgramaMantenimiento.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  ;
end;

procedure TFrmProgramaMantenimiento.opcionImprimirPropertiesChange(
  Sender: TObject);
begin
  if opcionImprimir.EditValue = 2 then
    cbAnios.Visible := True
  else
    cbAnios.Visible := False;
end;

procedure TFrmProgramaMantenimiento.zSubFamiliasAfterScroll(DataSet: TDataSet);
begin
    if IsOpen then
  begin
    if PanelDetalle.Visible = true then
    begin

      cxPageDetalle.ActivePageIndex := 0;

      begin
        AsignarSQL(zMtoPrograma, 'mto_programa_subfamilias', pUpDate);
        FiltrarDataSet(zMtoPrograma,'IdSubFamilia',[zSubFamilias.FieldByName('IdSubFamilia').AsInteger]);
        zMtoPrograma.Open;
      end;
    end;
  end;
end;

end.
