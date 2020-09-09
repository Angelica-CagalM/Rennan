unit Frm_CostoAlmacen;

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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxSplitter,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxLabel, frm_barraH1, Vcl.ExtCtrls,
  dxLayoutcxEditAdapters, frm_barraH2, dxLayoutContainer, cxCheckBox,
  dxToggleSwitch, dxDBToggleSwitch, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutControl,UnitGenerales, MemDS, DBAccess, Uni, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, dxLayoutControlAdapters, dxBarBuiltInMenu, cxGroupBox,
  cxRadioGroup, cxGridChartView, cxGridDBChartView, cxPC, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxProgressBar, cxCurrencyEdit, unitReportes;

type
  TFrmCostoAlmacen = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    PanelDatos: TPanel;
    Grid_almacen: TcxGrid;
    Grid_almacenView: TcxGridDBTableView;
    colCodigo: TcxGridDBColumn;
    colMedida: TcxGridDBColumn;
    ColFamilia: TcxGridDBColumn;
    ColExistencia: TcxGridDBColumn;
    Grid_almacenLevel1: TcxGridLevel;
    zInventario: TUniQuery;
    dsInventario: TDataSource;
    PanelDetalle: TPanel;
    cxSplitterOpciones: TcxSplitter;
    colSubFamilia: TcxGridDBColumn;
    colFecha: TcxGridDBColumn;
    colMaterial: TcxGridDBColumn;
    colEntrada: TcxGridDBColumn;
    colSalida: TcxGridDBColumn;
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
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    colAlmacen: TcxGridDBColumn;
    colCostoEntrada: TcxGridDBColumn;
    colSaldo: TcxGridDBColumn;
    colProyecto: TcxGridDBColumn;
    ColCentroCosto: TcxGridDBColumn;
    Panel1: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxFechaInicio: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxFechaFin: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxCalcular: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxTipoCosto: TcxLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxAgrupacion: TcxLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    zAgrupado: TUniQuery;
    ds_agrupado: TDataSource;
    zTipoCosto: TUniQuery;
    ds_tipo_costo: TDataSource;
    PanelProgreso: TPanel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    cxCostoSalida: TcxGridDBColumn;
    ColMovimiento: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);

    procedure cargaDatos;
    procedure cxCalcularClick(Sender: TObject);
    procedure btnImpInformeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCostoAlmacen: TFrmCostoAlmacen;
  titulo, titulo2, btnPermisos: String;
  flap:Boolean;
implementation
uses global,frm_connection;
{$R *.dfm}

procedure TFrmCostoAlmacen.EnterControl(Sender: TObject);
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

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBSpinEdit) then
        tcxDBSpinEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TFrmCostoAlmacen.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBSpinEdit) then
        tcxDBSpinEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TFrmCostoAlmacen.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmCostoAlmacen.btnDetalleClick(Sender: TObject);
begin
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

procedure TFrmCostoAlmacen.btnImpInformeClick(Sender: TObject);
begin

    IsOpen:=False;
    generar_reporte_grid(Grid_almacenView,'Reporte Costo Promedio del Almacén');
    IsOpen:=True;

end;

procedure TFrmCostoAlmacen.btnRefreshClick(Sender: TObject);
begin
   zInventario.Refresh;
end;

procedure TFrmCostoAlmacen.cxCalcularClick(Sender: TObject);
begin
   cargaDatos;
end;

procedure TFrmCostoAlmacen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  guardar_leer_grid(Grid_almacenView,FrmCostoAlmacen,1);
  action := cafree;
end;

procedure TFrmCostoAlmacen.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
  cxLeyenda.Caption:=titulo;
  titulo:=' Costo del Almacén';
  titulo2:='Empleados';
  cxLeyenda.Caption:=titulo;

  cxFechaInicio.Date := StrToDate('01/'+copy(DateToStr(date),4,2)+'/'+copy(DateToStr(date),7,4));
  cxFechaFin.Date    := date;

  //zInventario.Active:=False;
  //AsignarSQL(zInventario,'Costo_almacen',pUpdate);
  //FiltrarDataSet(zTipoCosto,'IdInsumo,CodMat,TopoMov,FechaI,FechaF',['-1','-1','-1',cxFechaInicio.Date,cxFechaFin.Date]);
  //zInventario.Open;

  zTipoCosto.Active:=False;
  AsignarSQL(zTipoCosto,'Filtra_TipoCostoAlmacen',pUpdate);
  zTipoCosto.Open;

  zAgrupado.Active:=False;
  AsignarSQL(zAgrupado,'Filtra_AgrupaCostoAlmacen',pUpdate);
  zAgrupado.Open;

  cxAgrupacion.EditValue := zAgrupado.FieldByName('Id').AsInteger;
  cxTipoCosto.EditValue  := zTipoCosto.FieldByName('Id').AsInteger;
  guardar_leer_grid(Grid_almacenView,FrmCostoAlmacen,0);
  //PermisosBotones(FrmCostoAlmacen, btnPermisos);
end;

procedure TFrmCostoAlmacen.cargaDatos;
begin
  zInventario.Active:=False;
  AsignarSQL(zInventario,'Costo_almacen',pUpdate);
  FiltrarDataSet(zTipoCosto,'IdInsumo,CodMat,TipoMov,FechaI,FechaF',['-1','-1','-1',cxFechaInicio.Date,cxFechaFin.Date]);
  zInventario.Open;
end;


end.
