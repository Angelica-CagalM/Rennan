unit Frm_Asignar_Guardias;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, MemDS, DBAccess, Uni,
  cxSplitter, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls,
  cxContainer, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, frm_barraH1,
  dxLayoutContainer, dxLayoutControl, frm_barraH2,unitGenerales,
  dxLayoutcxEditAdapters, cxCheckBox, dxToggleSwitch, dxDBToggleSwitch,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxDBEdit,global, cxImage;

type
  TFrmAsignarGuardias = class(TForm)
    PanelEmpresa: TPanel;
    Grid_Bitacora: TcxGrid;
    BView_empresa: TcxGridDBTableView;
    BView_empresaColumn1: TcxGridDBColumn;
    Grid_BitacoraLevel1: TcxGridLevel;
    SplitterLeft: TcxSplitter;
    zEmpresa: TUniQuery;
    dsEmpresa: TDataSource;
    PanelCentro: TPanel;
    Grid_Guardias: TcxGrid;
    Grid_GuardiasDBTableView1: TcxGridDBTableView;
    colIdGiardia: TcxGridDBColumn;
    colFechaInicio: TcxGridDBColumn;
    ColActivo: TcxGridDBColumn;
    Grid_GuardiasLevel1: TcxGridLevel;
    SplitterDown: TcxSplitter;
    PanelDatos: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    colEmbarcacion: TcxGridDBColumn;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    zGuardias: TUniQuery;
    dsGuardias: TDataSource;
    cxCodigo: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxGuardias: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxEmbarcacion: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    cxImgActivo: TdxDBToggleSwitch;
    zEmbarcacion: TUniQuery;
    dsEmbarcacion: TDataSource;
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    Panel1: TPanel;
    cxDBImage2: TcxDBImage;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxProyecto: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    zProyectos: TUniQuery;
    ds_proyectos: TDataSource;
    colProyecto: TcxGridDBColumn;
    cxContrato: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxCredencial: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    ds_formato_contrato: TDataSource;
    FormatoContrato: TUniQuery;
    FormatoCredencial: TUniQuery;
    ds_formato_credencial: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure BView_empresaCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure BView_empresaDblClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAsignarGuardias: TFrmAsignarGuardias;
  titulo,titulo2, btnPermisos: string;
implementation
uses frm_connection;

{$R *.dfm}

procedure TFrmAsignarGuardias.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmAsignarGuardias.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TFrmAsignarGuardias.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TFrmAsignarGuardias.btnAddClick(Sender: TObject);
begin
  cxLeyenda.Caption:=titulo + '[Añadiendo]';
  SplitterDown.Visible:=True;
  PanelDatos.Visible:=True;
  frmBarraH11.btnAddClick(Sender);

  zGuardias.Append;
  zGuardias.FieldByName('IdGuardia').AsInteger:=0;

  zGuardias.FieldByName('IdEmpresa').AsInteger:=zEmpresa.FieldByName('IdEmpresa').AsInteger;
  zGuardias.FieldByName('Codigo').asString := autofolio(zGuardias, 'rh_guardias');
  cxProyecto.DataBinding.DataSource.DataSet.FieldByName('sNumeroOrden').AsString := zProyectos.FieldByName('sNumeroOrden').AsString;
  cxEmbarcacion.DataBinding.DataSource.DataSet.FieldByName('IdEmbarcacion').AsInteger := zEmbarcacion.FieldByName('IdEmbarcacion').AsInteger;
  zGuardias.FieldByName('Activo').AsString:='Si';

  cxCodigo.SetFocus;
end;

procedure TFrmAsignarGuardias.btnCancelClick(Sender: TObject);
begin
  frmBarraH11.btnActive;
  zGuardias.Cancel;
  SplitterDown.Visible:=False;
  PanelDatos.Visible:=False;
  cxLeyenda.Caption:=titulo;
  PermisosBotones(FrmAsignarGuardias, btnPermisos);
end;

procedure TFrmAsignarGuardias.btnDeleteClick(Sender: TObject);
var
    zFiltroEmpleado : tUniQuery;
begin
   zFiltroEmpleado:=tUniquery.create(nil);
   zFiltroEmpleado.Connection := Connection.uConnection;

   zFiltroEmpleado.Active:=False;
   AsignarSQL(zFiltroEmpleado,'FiltroGuardias',pUpdate);
   FiltrarDataSet(zFiltroEmpleado,'IdGuardia',[zGuardias.FieldByName('IdGuardia').AsInteger]);
   zFiltroEmpleado.Open;

   if zFiltroEmpleado.RecordCount > 0 then
    begin
       messageDLG('No se puede Eliminar la Guardia Contiene Periodos de Guardia', mtInformation, [mbOk], 0);
       exit;
    end;

   If MessageDlg('Desea eliminar la guardia '#13+zGuardias.FieldByName('Guardia').AsString+'?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
     zGuardias.Delete;
   end;

   zFiltroEmpleado.Destroy;
end;

procedure TFrmAsignarGuardias.btnEditClick(Sender: TObject);
begin
  frmBarraH11.btnEditClick(Sender);
  zGuardias.Edit;
  cxLeyenda.Caption:=titulo + '[Editando]';
  SplitterDown.Visible:=True;
  PanelDatos.Visible:=True;
  cxGuardias.SetFocus;
end;

procedure TFrmAsignarGuardias.btnPostClick(Sender: TObject);
var
  temp: TUniquery;
begin
  if zGuardias.State = dsInsert then
  begin
    temp := tUniQuery.create(nil);
    temp.Connection := Connection.uConnection;
    temp.Active:=False;
    temp.SQL.Text:='Select MAX(iOrdenamiento) as num from rh_guardias';
    temp.Open;
    zGuardias.FieldByName('iOrdenamiento').AsInteger:=temp.FieldByName('num').AsInteger+1;
  end;
  zGuardias.Post;
  zGuardias.Refresh;
  btnCancelClick(Sender);
  PermisosBotones(FrmAsignarGuardias, btnPermisos);
end;

procedure TFrmAsignarGuardias.btnRefreshClick(Sender: TObject);
begin
   zGuardias.Refresh;
end;

procedure TFrmAsignarGuardias.BView_empresaCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  AsignarSQL(zGuardias,'AsignarGuardias',pUpdate);
  FiltrarDataSet(zGuardias,'IdEmpresa',[zEmpresa.FieldByName('IdEmpresa').AsString]);
  zGuardias.Open;
end;

procedure TFrmAsignarGuardias.BView_empresaDblClick(Sender: TObject);
begin
  if BView_empresa.OptionsView.CellAutoHeight then
       BView_empresa.OptionsView.CellAutoHeight := False
    else
       BView_empresa.OptionsView.CellAutoHeight := True;
end;

procedure TFrmAsignarGuardias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  guardar_leer_grid(BView_empresa,FrmAsignarGuardias,1);
  guardar_leer_grid(Grid_GuardiasDBTableView1,FrmAsignarGuardias,1);
  action := cafree;
end;

procedure TFrmAsignarGuardias.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
  titulo:=' Definir Guardias';
  cxLeyenda.Caption:=titulo;
  zEmpresa.Active:=False;
  zEmpresa.Open;

  zEmbarcacion.Active:=False;
  zEmbarcacion.Open;

  AsignarSQL(zGuardias,'AsignarGuardias',pUpdate);
  FiltrarDataSet(zGuardias,'IdEmpresa',['6']);

  zGuardias.Open;

  AsignarSQL(zProyectos,'ordenesdetrabajo',pUpdate);
  FiltrarDataSet(zProyectos,'Contrato,TProyecto',[global_contrato,'PROYECTO']);
  zProyectos.Open;

  AsignarSQL(FormatoContrato,'rh_documento_reportes',pUpdate);
  FiltrarDataSet(FormatoContrato,'Tipo',['Contrato']);
  FormatoContrato.Open;

  AsignarSQL(FormatoCredencial,'rh_documento_reportes',pUpdate);
  FiltrarDataSet(FormatoCredencial,'Tipo',['Credencial']);
  FormatoCredencial.Open;
  guardar_leer_grid(BView_empresa,FrmAsignarGuardias,0);
  guardar_leer_grid(Grid_GuardiasDBTableView1,FrmAsignarGuardias,0);
  PermisosBotones(FrmAsignarGuardias, btnPermisos);
end;

end.
