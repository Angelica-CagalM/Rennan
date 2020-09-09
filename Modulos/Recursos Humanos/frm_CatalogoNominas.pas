unit frm_CatalogoNominas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.Menus, MemDS, DBAccess, Uni, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, Vcl.StdCtrls, cxButtons, cxLabel, frm_barraH1, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxSplitter, Vcl.ExtCtrls,frm_connection,
  dxLayoutcxEditAdapters, cxCheckBox, dxToggleSwitch, dxDBToggleSwitch,
  dxLayoutContainer, cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl,
  UnitGenerales, frm_barraH2, dxBarBuiltInMenu, cxPC, cxSpinEdit, cxCurrencyEdit,
  System.DateUtils;

type
  TFrmCatalogoNominas = class(TForm)
    PanelPrincipal: TPanel;
    PanelD: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    dsNomina: TDataSource;
    zNominaDetalle: TUniQuery;
    dsNominaDetalle: TDataSource;
    zNomina: TUniQuery;
    zEmpleados: TUniQuery;
    dsEmpleados: TDataSource;
    PanelDetalle: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    ColCodigo: TcxGridDBColumn;
    ColNombre: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    PanelCentro: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    cbEmpleados: TcxDBLookupComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    cxEliminarDetalle: TcxButton;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxSplitterOpciones: TcxSplitter;
    PanelDatos: TPanel;
    Grid_Nomina: TcxGrid;
    Grid_NominaDBTableView1: TcxGridDBTableView;
    colIdGiardia: TcxGridDBColumn;
    colFechaInicio: TcxGridDBColumn;
    ColFechaFinal: TcxGridDBColumn;
    ColActivo: TcxGridDBColumn;
    Grid_NominaLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    Panel1: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    lcbTipoNomina: TcxDBLookupComboBox;
    dtFechaInicio: TcxDBDateEdit;
    dtFechaFin: TcxDBDateEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    cbGuardia: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem3: TdxLayoutItem;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    Grid_NominaDBTableView1Column1: TcxGridDBColumn;
    spDiasT: TcxDBSpinEdit;
    dxLayoutItem1: TdxLayoutItem;
    edtTitulo: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    zTipoNom: TUniQuery;
    dsTipoNom: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    crBonos: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    crDescuento: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxEliminarDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure dtFechaFinPropertiesEditValueChanged(Sender: TObject);
    procedure zNominaAfterScroll(DataSet: TDataSet);
    procedure dtFechaInicioPropertiesEditValueChanged(Sender: TObject);
    procedure lcbTipoNominaPropertiesChange(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCatalogoNominas: TFrmCatalogoNominas;
  titulo,titulo2, btnPermisos: string;
  Isopen:Boolean;
implementation
uses global;
{$R *.dfm}


procedure TFrmCatalogoNominas.EnterControl(Sender: TObject);
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

procedure TFrmCatalogoNominas.SalidaControl(Sender: TObject);
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


procedure TFrmCatalogoNominas.zNominaAfterScroll(DataSet: TDataSet);
begin
  if PanelDetalle.Visible = True then
  begin
    zNominaDetalle.Active:=False;
    AsignarSQL(zNominaDetalle,'nom_nominapersonal',pUpdate);
    FiltrarDataSet(zNominaDetalle,'IdNomina',[zNomina.FieldByName('IdNomina').AsString]);
    zNominaDetalle.Open;
  end;
end;

procedure TFrmCatalogoNominas.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmCatalogoNominas.lcbTipoNominaPropertiesChange(Sender: TObject);
begin
    dtFechaInicioPropertiesEditValueChanged(Sender);
end;

procedure TFrmCatalogoNominas.btnAddClick(Sender: TObject);
var Fi, Ft: TDate;
  d,m,a : Word;
  x: integer ;
begin
  DecodeDate(Now, a, m, d);


  if d <= 15 then
  begin
    //fi:= StrToDate(IntToStr(a)+'/'+FormatFloat('00',m)+'/'+'01');
    //fi:= StrToDate(IntToStr(a)+'/'+FormatFloat('00',m)+'/'+'15');
    fi:= StrToDate('01'+'/'+FormatFloat('00',m)+'/'+IntToStr(a));
    ft:= StrToDate('15'+'/'+FormatFloat('00',m)+'/'+IntToStr(a));
  end
  else
  begin
    fi:= StrToDate('16'+'/'+FormatFloat('00',m)+'/'+IntToStr(a));
    ft:= StrToDate(IntToStr(DaysInAMonth(a,m))+'/'+FormatFloat('00',m)+'/'+IntToStr(a));
  end;

  frmBarraH11.btnAddClick(Sender);
  cxLeyenda.Caption:=titulo + '[Añadiendo]';
  cxSplitterOpciones.Visible := False;
  Panel1.Visible := True;
  PnlBtn2.visible := True;
  PanelDetalle.Visible := False;
  cxSplitterOpciones.Visible :=False;
  zNomina.Append;
  zNomina.FieldByName('FechaInicioN').AsDateTime:=Fi;
  zNomina.FieldByName('IdTipoNomina').AsInteger:=1;
  zNomina.FieldByName('FechaTerminoN').AsDateTime:=Ft;
  zNomina.FieldByName('Estado').AsString:='ABIERTA';
end;

procedure TFrmCatalogoNominas.btnCancelClick(Sender: TObject);
begin
  zNomina.Cancel;
  cxSplitterOpciones.Visible := True;
  frmBarraH11.btnActive;
  Panel1.Visible := False;
  pnlBtn2.Visible := False;
  cxSplitter1.Visible := False;
  cxLeyenda.Caption:=titulo;
  PermisosBotones(FrmCatalogoNominas, btnPermisos);
end;

procedure TFrmCatalogoNominas.btnDeleteClick(Sender: TObject);
begin
    If MessageDlg('Desea eliminar de esta nomina '#13+zNomina.FieldByName('Titulo').AsString+'?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      iSoPEN:= faLSE;
      zNomina.Delete;
      zNomina.ApplyUpdates();
      iSoPEN:= tRUE;
    end;
end;

procedure TFrmCatalogoNominas.btnDetalleClick(Sender: TObject);
begin
  PanelDetalle.Visible       := not PanelDetalle.Visible;
  cxSplitterOpciones.Visible := not cxSplitterOpciones.Visible;
end;

procedure TFrmCatalogoNominas.btnEditClick(Sender: TObject);
begin
  frmBarraH11.btnEditClick(Sender);
  cxLeyenda.Caption:=titulo + '[Editando]';
  PanelDetalle.Visible := False;
  cxSplitterOpciones.Visible :=False;
  Panel1.Visible := True;
  PnlBtn2.visible := True;
  zNomina.Edit;
end;

procedure TFrmCatalogoNominas.btnPostClick(Sender: TObject);
begin
  IsOpen:= False;
  zNomina.Post;

  zNomina.refresh;
  IsOpen:= True;
  cxSplitter1.Visible := False;
  btnCancelClick(Sender);
  PermisosBotones(FrmCatalogoNominas, btnPermisos);
end;

procedure TFrmCatalogoNominas.btnRefreshClick(Sender: TObject);
begin
   zNomina.Refresh;
end;

procedure TFrmCatalogoNominas.cxCancelarDetalleClick(Sender: TObject);
begin
  frmBarraH11.btnActive;
  PanelCentro.Visible:=False;
  PanelDown.Visible:=False;
  cxNuevoDetalle.Enabled := True;
  cxEditaDetalle.Enabled := True;
  cxEliminarDetalle.Enabled := True;
  zNominaDetalle.Cancel;
end;

procedure TFrmCatalogoNominas.cxEditaDetalleClick(Sender: TObject);
begin
  PanelDown.Visible:=True;
  PanelCentro.Visible:=True;
    cxNuevoDetalle.Enabled := False;
  cxEditaDetalle.Enabled := False;
  cxEliminarDetalle.Enabled := fALSE;
  zNominaDetalle.Edit;
end;

procedure TFrmCatalogoNominas.cxEliminarDetalleClick(Sender: TObject);
begin
   If MessageDlg('Desea eliminar el personal: '+#13+zNominaDetalle.FieldByName('NombrePersonal').AsString+'?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
     zNominaDetalle.Delete;
     zNominaDetalle.ApplyUpdates();
   end;
end;

procedure TFrmCatalogoNominas.cxGuardarDetalleClick(Sender: TObject);
begin

  zNominaDetalle.Post;
  zNominaDetalle.Refresh;
  cxCancelarDetalleClick(Sender);

end;

procedure TFrmCatalogoNominas.cxNuevoDetalleClick(Sender: TObject);
begin
  PanelDown.Visible:=True;
  PanelCentro.Visible:=True;
  cxNuevoDetalle.Enabled := False;
  cxEditaDetalle.Enabled := False;
  cxEliminarDetalle.Enabled := fALSE;

  zNominaDetalle.Append;
  zNominaDetalle.FieldByName('IdNominaPersonal').AsInteger:=0;
  zNominaDetalle.FieldByName('IdNomina').AsInteger := zNomina.FieldByName('IdNomina').AsInteger;
  zNominaDetalle.FieldByName('IdPersonal').AsInteger := zEmpleados.FieldByName('IdPersonal').AsInteger;
  zNominaDetalle.FieldByName('Bonos').AsFloat := 0.00;
  zNominaDetalle.FieldByName('Descuentos').AsFloat := 0.0;
end;

procedure TFrmCatalogoNominas.dtFechaFinPropertiesEditValueChanged(
  Sender: TObject);
begin
  spDiasT.Value := dtFechaFin.EditValue - dtFechaInicio.EditValue + 1;
end;

procedure TFrmCatalogoNominas.dtFechaInicioPropertiesEditValueChanged(
  Sender: TObject);
begin
  if zNomina.State in [dsInsert, dsEdit] then
    if zTipoNom.Locate('IdTipoNomina',lcbTipoNomina.EditValue ,[]) then
      if dtFechaInicio.EditValue <> null then
        zNomina.FieldByName('FechaTerminoN').AsDateTime := dtFechaInicio.EditValue + zTipoNom.FieldByName('DiasTrabajados').AsInteger-1;
end;

procedure TFrmCatalogoNominas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  guardar_leer_grid(Grid_NominaDBTableView1,FrmCatalogoNominas,1);
  guardar_leer_grid(cxGrid1DBTableView1,FrmCatalogoNominas,1);
  action := cafree;
end;

procedure TFrmCatalogoNominas.FormShow(Sender: TObject);
begin
  btnPermisos:= global_btnPermisos;
  cxLeyenda.Caption:=titulo;
  titulo:='Listado de Nóminas';
  titulo2:='Empleados';
  cxLeyenda.Caption:=titulo;

  cxSplitter1.Visible := False;

  AsignarSQL(zTipoNom,'rh_tiponomina',pUpdate);
  FiltrarDataSet(zTipoNom,'Id',['-1']);
  zTipoNom.Open;

  zEmpleados.Filtered := False;
  zEmpleados.Open;

  IsOpen := False;
  zNomina.Active:=False;
  AsignarSQL(zNomina,'nom_nomina',pUpdate);
  FiltrarDataSet(zNomina,'IdNomina',['-1']);
  zNomina.Open;

  zNominaDetalle.Active:=False;
  AsignarSQL(zNominaDetalle,'nom_nominapersonal',pUpdate);
  FiltrarDataSet(zNominaDetalle,'IdNomina',[zNomina.FieldByName('IdNomina').AsString]);
  zNominaDetalle.Open;

  IsOpen := True;
  guardar_leer_grid(Grid_NominaDBTableView1,FrmCatalogoNominas,0);
  guardar_leer_grid(cxGrid1DBTableView1,FrmCatalogoNominas,0);

  PermisosBotones(FrmCatalogoNominas, btnPermisos);
end;

end.
