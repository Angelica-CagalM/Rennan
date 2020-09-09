unit frm_empleadosDocumentos;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, frm_barraH1,
  Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, dxBarBuiltInMenu, cxPC,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, frm_barraH2, cxSplitter,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, MemDS, DBAccess,
  Uni, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, UnitGenerales, global, frm_connection, unitexcepciones,
  cxDBEdit, cxCalendar, cxImageComboBox, cxSpinEdit, dxmdaset, cxProgressBar,
  UnitRH, frxClass, System.ImageList, Vcl.ImgList, frxDBSet, dxGDIPlusClasses,
  cxImage, dxLayoutControlAdapters, cxGroupBox, cxRadioGroup;

type
  Tfrm_empleadosDocumentos = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    cxConfigura: TcxButton;
    PanelPrincipal: TPanel;
    PanelTipo: TPanel;
    cxSplitTipo: TcxSplitter;
    Panel1: TPanel;
    cxSplitter1: TcxSplitter;
    cxSplitterOpciones: TcxSplitter;
    zCliente: TUniQuery;
    dsCliente: TDataSource;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxPageDetalle: TcxPageControl;
    Grid_Proveedor: TcxGrid;
    BView_filtro: TcxGridDBTableView;
    BView_filtroColumn2: TcxGridDBColumn;
    Grid_ProveedorLevel1: TcxGridLevel;
    zEmpleados: TUniQuery;
    dsEmpleados: TDataSource;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    frxReporte: TfrxReport;
    zReporteEvalua: TUniQuery;
    imgStars: TcxImageList;
    frxEvaluaProveedor: TfrxDBDataset;
    grid_evaluacion: TcxGrid;
    cxView_Evaluacion: TcxGridDBTableView;
    cxView_EvaluacionColumn1: TcxGridDBColumn;
    cxView_EvaluacionColumn2: TcxGridDBColumn;
    cxView_EvaluacionColumn3: TcxGridDBColumn;
    cxView_EvaluacionColumn4: TcxGridDBColumn;
    grid_evaluacionLevel1: TcxGridLevel;
    cxTabSheet1: TcxTabSheet;
    PanelSuperiorInforme: TPanel;
    dxLayoutControl9: TdxLayoutControl;
    opcionImprimir: TcxRadioGroup;
    btnImpInforme: TcxButton;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem73: TdxLayoutItem;
    dxLayoutItem74: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure BView_filtroDblClick(Sender: TObject);
    procedure BView_filtroCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure zClienteAfterScroll(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxConfiguraClick(Sender: TObject);
    procedure zEmpleadosAfterScroll(DataSet: TDataSet);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxPageDetalleChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure frxReporteGetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    btnPermisos:String;
    titulo         : string;
    filtraP        : string;
    titulo2        : string;
    inactiva       :Boolean;
    { Public declarations }
  end;

var
  frmEmpleadosDocumentos: Tfrm_empleadosDocumentos;

implementation

{$R *.dfm}

procedure Tfrm_empleadosDocumentos.btnAddClick(Sender: TObject);
begin
   {Nothing to do}
end;

procedure Tfrm_empleadosDocumentos.btnDeleteClick(Sender: TObject);
begin
  {nothing to do}
end;

procedure Tfrm_empleadosDocumentos.btnEditClick(Sender: TObject);
begin
  {nothing to do}
end;


procedure Tfrm_empleadosDocumentos.btnPrinterClick(Sender: TObject);
begin
  {nothing to do}
end;

procedure Tfrm_empleadosDocumentos.BView_filtroCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if BView_filtro.DataController.Filter.FilterText = '' then
    begin
        zEmpleados.Filtered := False;
    end;
end;

procedure Tfrm_empleadosDocumentos.BView_filtroDblClick(Sender: TObject);
begin
  if BView_filtro.OptionsView.CellAutoHeight then
       BView_filtro.OptionsView.CellAutoHeight := False
    else
       BView_filtro.OptionsView.CellAutoHeight := True;
end;


procedure Tfrm_empleadosDocumentos.cxCancelarDetalleClick(Sender: TObject);
begin
   cxNuevoDetalle.Enabled := True;

   cxLeyenda2.Caption:=titulo2;
end;

procedure Tfrm_empleadosDocumentos.cxConfiguraClick(Sender: TObject);
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

procedure Tfrm_empleadosDocumentos.cxEditaDetalleClick(Sender: TObject);
begin
    PanelDown.Visible := True;
    cxNuevoDetalle.Enabled := False;

    cxLeyenda2.Caption:=titulo2 +'[Editando]';

end;

procedure Tfrm_empleadosDocumentos.cxGuardarDetalleClick(Sender: TObject);
begin
  cxNuevoDetalle.Enabled := True;

  cxLeyenda2.Caption:=titulo2;

  PanelDown.Visible := False;

  zEmpleados.AfterScroll:= nil;
  zEmpleados.Refresh;
  zEmpleados.AfterScroll:= zEmpleadosAfterScroll;
end;

procedure Tfrm_empleadosDocumentos.cxNuevoDetalleClick(Sender: TObject);
begin
    PanelDown.Visible := True;
    cxNuevoDetalle.Enabled := False;

end;

procedure Tfrm_empleadosDocumentos.cxPageDetalleChange(Sender: TObject);
begin
  cxCancelarDetalle.OnClick(sender);

  titulo2 := 'Detalles';
  cxLeyenda2.Caption:=titulo2;
  cxNuevoDetalle.Visible:=True;

end;

procedure Tfrm_empleadosDocumentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree;
end;

procedure Tfrm_empleadosDocumentos.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
    PanelDetalle.Visible := False;
    cxSplitter1.Visible := False;
    titulo:='Empleados y Documentos';
    titulo2:='Detalles';
    cxLeyenda.Caption:=titulo;
    cxLeyenda2.Caption:=titulo2;
    inactiva := True;


    PermisosBotones(frmEmpleadosDocumentos,btnPermisos);
end;

procedure Tfrm_empleadosDocumentos.frxReporteGetValue(const VarName: string;
  var Value: Variant);
begin
;
end;

procedure Tfrm_empleadosDocumentos.zClienteAfterScroll(DataSet: TDataSet);
begin
  if inactiva = False then
  begin
//    FiltrarDataSet(zProvEvalua, 'IdProveedor',[zProveedor.FieldByName('IdProveedor').AsString]);
    if zEmpleados.Active then
      zEmpleados.Refresh
    else
      zEmpleados.Open;
  end;
end;

procedure Tfrm_empleadosDocumentos.zEmpleadosAfterScroll(DataSet: TDataSet);
begin
  if inactiva = False then
  begin
    if PanelDetalle.Visible then
    begin
//      AsignarSQL(zEvaluaDetalle,'master_proveedor_evaluacion_detalle',pUpdate);
//      FiltrarDataset(zEvaluaDetalle,'IdEvaluacion',[zProvEvalua.FieldByName('IdEvaluacion').AsInteger]);
//      zEvaluaDetalle.Open;
//      if zEvaluaDetalle.RecordCount > 0 then
//        cxNuevoDetalle.Caption := 'Cambiar Evaluacion'
//      else
//        cxNuevoDetalle.Caption := 'Iniciar Evaluacion';
    end;
  end;
end;

end.
