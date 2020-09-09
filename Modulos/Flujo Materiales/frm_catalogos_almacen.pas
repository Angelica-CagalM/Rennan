unit frm_catalogos_almacen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, frxClass, frxDBSet, RxDBComb,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, UnitExcepciones,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxCalc, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxLayoutContainer, cxDropDownEdit, cxDBEdit,
  cxMaskEdit, cxTextEdit, dxLayoutControl,
  UnitValidaTexto, unitactivapop, dxSkinsdxNavBarPainter,
  dxSkinsdxNavBarAccordionViewPainter, dxNavBar, frm_barraH1, cxSplitter,
  frm_barraH2, dxNavBarCollns, dxNavBarBase, dxNavBarGroupItems, cxCheckBox,
  dxToggleSwitch, dxDBToggleSwitch, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox,UnitGenerales, MemDS, DBAccess, Uni, cxLabel, cxImage,
  UnitReportes, cxMemo;
  //unittbotonespermisos,
type
  TfrmCatalogosAlmacen = class(TForm)
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    ds_catalogos_generales: TDataSource;
    Panel1: TPanel;
    pnl1: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    panelOpciones: TPanel;
    dxNavBar1: TdxNavBar;
    panelBotones: TPanel;
    grid_catalogos: TcxGrid;
    cxViewCatalogos: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
    Panel2: TPanel;
    zqCatalogosGenerales: TUniQuery;
    cxLeyenda: TcxLabel;
    cxFamilia: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dxGenerales: TdxNavBarGroup;
    dxNavBar1Item1: TdxNavBarItem;
    dxNavBar1Item2: TdxNavBarItem;
    dxNavBar1Item3: TdxNavBarItem;
    dxNavBar1Item4: TdxNavBarItem;
    dxNavBar1Item5: TdxNavBarItem;
    dxNavBar1Item6: TdxNavBarItem;
    dxNavBar1Separator1: TdxNavBarSeparator;
    cxViewCatalogosColumn1: TcxGridDBColumn;
    cxViewCatalogosColumn2: TcxGridDBColumn;
    cxViewCatalogosColumn3: TcxGridDBColumn;
    frmBarraH11: TfrmBarraH1;
    frmBarraH21: TfrmBarraH2;
    zqSub: TUniQuery;
    ds_sub: TDataSource;
    cxCampo3: TcxDBComboBox;
    dxLayoutItem4: TdxLayoutItem;
    dxNavBar1Item7: TdxNavBarItem;
    dxActivo: TdxDBToggleSwitch;
    dxLayoutItem5: TdxLayoutItem;
    dxNavBar1Item8: TdxNavBarItem;
    dxNavBar1Item9: TdxNavBarItem;
    dxNavBar1Item10: TdxNavBarItem;
    cxViewCatalogosColumn4: TcxGridDBColumn;
    dxNavBar1Item11: TdxNavBarItem;
    dxMantenimiento: TdxNavBarGroup;
    dxNavBar1Item12: TdxNavBarItem;
    dxNavBar1Item13: TdxNavBarItem;
    dxNavBar1Item14: TdxNavBarItem;
    cbCombo: TcxDBComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxViewCatalogosColumn5: TcxGridDBColumn;
    cxViewCatalogosColumn6: TcxGridDBColumn;
    cbCombo2: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    zSub: TUniQuery;
    dsSub: TDataSource;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxCodigo: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDescripciones: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxCompras: TdxNavBarGroup;
    dxNavBar1Item15: TdxNavBarItem;
    cxCodigoMat: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDescripcion: TcxDBMemo;
    dxLayoutItem8: TdxLayoutItem;
    cxComentarios: TcxDBMemo;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxNavBar1Item16: TdxNavBarItem;
    dxNavBar1Item17: TdxNavBarItem;
    cxCode: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxContabilidad: TdxNavBarGroup;
    dxNavBar1Item18: TdxNavBarItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_pernoctanCellClick(Column: TColumn);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);

    //Eventos de focus entrar y salir de los componentes.
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

    procedure cxViewCatalogosDblClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure dxNavBar1Item1Click(Sender: TObject);
    procedure dxNavBar1Item2Click(Sender: TObject);
    procedure dxNavBar1Item3Click(Sender: TObject);
    procedure dxNavBar1Item5Click(Sender: TObject);
    procedure dxNavBar1Item6Click(Sender: TObject);
    procedure dxNavBar1Item4Click(Sender: TObject);
    procedure dxNavBar1Item7Click(Sender: TObject);
    procedure dxNavBar1Item9Click(Sender: TObject);
    procedure dxNavBar1Item8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure abrirdesdecaptura(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure dxNavBar1Item10Click(Sender: TObject);
    procedure dxNavBar1Item11Click(Sender: TObject);
    procedure dxNavBar1Item12Click(Sender: TObject);
    procedure dxNavBar1Item13Click(Sender: TObject);
    procedure dxMantenimientoClick(Sender: TObject);
    procedure dxGeneralesClick(Sender: TObject);
    procedure dxNavBar1Item14Click(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure dxNavBar1Item15Click(Sender: TObject);
    procedure dxComprasClick(Sender: TObject);
    procedure dxNavBar1Item16Click(Sender: TObject);
    procedure dxNavBar1Item17Click(Sender: TObject);
    procedure dxContabilidadClick(Sender: TObject);
    procedure dxNavBar1Item18Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogosAlmacen: TfrmCatalogosAlmacen;
  sOpcion : string;
  seleccion: string;
  titulo: string;
  btnPermisos :String;
  aplica:String;
  activo: Integer = -1;


implementation

uses
 frm_Presupuesto,
 frm_proveedores,
 frm_materiales, frm_materiales_CMMI, Frm_BancosMovimientos, frm_materiales_SS7;
{$R *.dfm}

procedure TfrmCatalogosAlmacen.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmCatalogosAlmacen.EnterControl(Sender: TObject);
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

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmCatalogosAlmacen.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBCalcEdit) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmCatalogosAlmacen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  zqCatalogosGenerales.Cancel ;

  if ((global_frmActivo = 'frmProveedores') and (activo = 8)) then
    frmProveedores.producto_servicio.Refresh;

  if ((global_frmActivo = 'frmMateriales') and (activo = 7)) then
    frmMateriales_SS7.zqMedida.Refresh;

  if ((global_frmActivo = 'frmMateriales') and (activo = 1)) then
    frmMateriales_SS7.zqFamilia.Refresh;

  if ((global_frmActivo = 'frmMateriales') and (activo = 2)) then
    frmMateriales_SS7.zqSubfamilia.Refresh;

  if ((global_frmActivo = 'frmMateriales') and (activo = 3)) then
    frmMateriales_SS7.zqMarca.Refresh;

  if ((global_frmActivo = 'frmMateriales')    and (activo = 10)) then
    frmMateriales_SS7.zFabricante.Refresh;

  if ((global_frmActivo = 'frmMateriales_CMMI') and (activo = 7)) then
    frmMateriales_CMMI.zqMedida.Refresh;

  if ((global_frmActivo = 'frmMateriales_CMMI') and (activo = 1)) then
    frmMateriales_CMMI.zqFamilia.Refresh;

  if ((global_frmActivo = 'frmMateriales_CMMI') and (activo = 2)) then
    frmMateriales_CMMI.zqSubfamilia.Refresh;

  if ((global_frmActivo = 'frmMateriales_CMMI') and (activo = 3)) then
    frmMateriales_CMMI.zqMarca.Refresh;

  if ((global_frmActivo = 'frmMateriales_CMMI') and (activo = 10)) then
    frmMateriales_CMMI.zFabricante.Refresh;


  global_frmActivo := '';
  global_indexactivo:= -1;
  guardar_leer_grid(cxViewCatalogos,frmCatalogosAlmacen,1);
  action := cafree ;
end;

procedure TfrmCatalogosAlmacen.FormCreate(Sender: TObject);
begin
  //global_indexactivo := -1
end;

procedure TfrmCatalogosAlmacen.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
  OpcButton := '' ;
  frmbarraH21.btnCancel.Click ;
  zqCatalogosGenerales.Active := False ;
  dxGenerales.OnClick(Sender);

  PermisosBotones(frmCatalogosAlmacen,btnPermisos);

  connection.qryUBusca.Active:= False;
  connection.qryUBusca.SQL.Text:='SELECT sIdUsuario, '+
  'IF(sIdGrupo = '+QuotedStr('SUPSS7')+','+QuotedStr('Si')+','+QuotedStr('No')+') As Tipo '+
  'FROM usuarios WHERE  sIdUsuario = :usuario';
  connection.qryUBusca.ParamByName('usuario').AsString:=Global_Usuario;
  Connection.qryUBusca.Open;
  aplica:=connection.qryUBusca.FieldByName('Tipo').AsString;
  if aplica='Si' then
   begin
    dxNavBar1Item6.Visible:=False;
    dxNavBar1Item8.Visible:=False;
    dxNavBar1Item9.Visible:=False;
    dxNavBar1Separator1.Visible:=False;
   end
   else
   begin
    dxNavBar1Item6.Visible:=True;
    dxNavBar1Item8.Visible:=True;
    dxNavBar1Item9.Visible:=True;
    dxNavBar1Separator1.Visible:=True;
   end;
   if connection.uContrato.FieldByName('FK_Titulo').AsString = 'SIANI' then
     dxContabilidad.Visible := True;
   if connection.uContrato.FieldByName('FK_Titulo').AsString = 'CMMI' then
     dxCompras.Visible := True;
   if connection.uContrato.FieldByName('FK_Titulo').AsString <> 'SUBSEA 7'  then
     dxNavBar1Item18.Visible := FALSE;



  activo := global_indexactivo;
  abrirdesdecaptura(Sender);
  guardar_leer_grid(cxViewCatalogos,frmCatalogosAlmacen,0);
end;

procedure TfrmCatalogosAlmacen.grid_pernoctanCellClick(Column: TColumn);
begin
  if frmbarraH21.btnCancel.Enabled = True then
      frmbarraH21.btnCancel.Click ;
end;

procedure TfrmCatalogosAlmacen.Insertar1Click(Sender: TObject);
begin
    frmbarraH11.btnAdd.Click
end;

procedure TfrmCatalogosAlmacen.cxViewCatalogosDblClick(Sender: TObject);
begin
    if cxViewCatalogos.OptionsView.CellAutoHeight then
       cxViewCatalogos.OptionsView.CellAutoHeight := False
    else
       cxViewCatalogos.OptionsView.CellAutoHeight := True;
end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item1Click(Sender: TObject);
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //donde estoy
    seleccion:='1';
    cxLeyenda.Caption:='Familias ';
    //consulta
    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'alm_familias',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Id,Codigo,Mto',['-1','-1','-1']);
    zqCatalogosGenerales.Open;
    zqSub.SQL.Clear;
    zqSub.SQL.Add('select g.IdGrupo, g.Nombre as Grupos from alm_grupos as g');
    zqSub.Open;


    zSub.SQL.Clear;
    zSub.SQL.Add('select * from op_tiporecurso');
    zSub.Open;

    //relacionar columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Nombre';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Grupo';
    cxViewCatalogos.Columns[3].DataBinding.FieldName:='Mantenimiento';
    cxViewCatalogos.Columns[4].DataBinding.FieldName:='Tipo';
    cxViewCatalogos.Columns[5].DataBinding.FieldName:='Clasificacion';
    cxCodigo.DataBinding.DataField:='Codigo';
    cxDescripciones.DataBinding.DataField:='Nombre';
    cxFamilia.DataBinding.DataField:='IdGrupo';
    cxFamilia.Properties.KeyFieldNames:='IdGrupo';
    cxFamilia.Properties.ListFieldNames:='Grupos';
    dxActivo.DataBinding.DataField:='Mantenimiento';
    cbCombo.DataBinding.DataField:='Tipo';

    cbCombo2.DataBinding.DataField:='IdTipoRecurso';
    cbCombo2.Properties.KeyFieldNames:='IdTipoRecurso';
    cbCombo2.Properties.ListFieldNames:='Nombre';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Nombre';
    cxViewCatalogos.Columns[2].Caption:='Grupo';
    cxViewCatalogos.Columns[3].Caption:='Mantenimiento';
    cxViewCatalogos.Columns[4].Caption:='Tipo';
    cxViewCatalogos.Columns[5].Caption:='Clasificacion';
    dxLayoutItem1.Caption := 'Grupo Mto:';
    dxLayoutItem2.Caption:='Código:';
    dxLayoutItem3.Caption:='Nombre:';
    dxActivo.Caption:='Mantenimiento';
    dxLayoutItem6.Caption:='Tipo';
    dxLayoutItem7.Caption:='Clasificacion';
    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=True;
    cxViewCatalogos.Columns[4].Visible:=True;
    cxViewCatalogos.Columns[5].Visible:=True;

    dxLayoutItem1.Visible:=True;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem3.Visible:=True;
    dxLayoutItem5.Visible:=True;
    dxLayoutItem6.Visible:=True;
    dxLayoutItem7.Visible:=True;
    //Items ocultos
    dxLayoutItem4.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;
    dxLayoutItem11.Visible:=False;
end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item2Click(Sender: TObject);
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //donde estoy
    seleccion:='2';
    cxLeyenda.Caption:='Subfamilias ';
    //consulta
    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'alm_subfamilia',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Id,Codigo,IdFamilia',['-1','-1','-1']);
    zqCatalogosGenerales.Open;
    zqSub.SQL.Clear;
    zqSub.SQL.Add('select f.IdFamilia, f.Nombre as Familias from alm_familias as f');
    zqSub.Open;
    //relacionar columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Nombre';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Familia';
    cxViewCatalogos.Columns[3].DataBinding.FieldName:='FrecuenciaMantenimiento';
    cxCodigo.DataBinding.DataField:='Codigo';
    cxDescripciones.DataBinding.DataField:='Nombre';
    cxCampo3.DataBinding.DataField := 'FrecuenciaMantenimiento';
    cxCampo3.Properties.Items.Clear;
    cxCampo3.Properties.Items.Add('Mensual');
    cxCampo3.Properties.Items.Add('Trimestral');
    cxCampo3.Properties.Items.Add('Semestral');
    cxCampo3.Properties.Items.Add('Anual');
    cxFamilia.DataBinding.DataField:='IdFamilia';
    cxFamilia.Properties.KeyFieldNames:='IdFamilia';
    cxFamilia.Properties.ListFieldNames:='Familias';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Nombre';
    cxViewCatalogos.Columns[2].Caption:='Familia';
    cxViewCatalogos.Columns[3].Caption:='Frecuencia de Mto.';
    dxLayoutItem1.Caption:='Familia:';
    dxLayoutItem2.Caption:='Código:';
    dxLayoutItem3.Caption:='Nombre:';
    dxLayoutItem4.Caption:='Frecuencia de Mto.:';
    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=True;
    dxLayoutItem1.Visible:=True;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem3.Visible:=True;
    dxLayoutItem4.Visible:=True;
    //Items ocultos
    dxLayoutItem5.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;
    dxLayoutItem11.Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;

end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item3Click(Sender: TObject);
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //donde estoy
    seleccion:='3';
    cxLeyenda.Caption:='Marcas ';
    //consulta
    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'alm_marcas',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Id,Codigo',['-1','-1']);
    zqCatalogosGenerales.Open;
    //relacionar columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Marca';
    cxCodigo.DataBinding.DataField:='Codigo';
    cxDescripciones.DataBinding.DataField:='Marca';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Marca';
    dxLayoutItem2.Caption:='Código:';
    dxLayoutItem3.Caption:='Marca:';
    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem3.Visible:=True;
    //Items ocultos
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[2].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;
    dxLayoutItem11.Visible:=False;
end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item4Click(Sender: TObject);
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //donde estoy
    seleccion:='4';
    cxLeyenda.Caption:='Movimientos de almacén ';
    //consulta
    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'movimientosdealmacen',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Id,Clasificacion',['-1','-1']);
    zqCatalogosGenerales.Open;
    //relacionar columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='sDescripcion';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='sClasificacion';
    cxCodigo.DataBinding.DataField:='sDescripcion';
    cxCampo3.DataBinding.DataField:='sClasificacion';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Descripción';
    cxViewCatalogos.Columns[1].Caption:='Clasificación';
    dxLayoutItem2.Caption:='Descripción:';
    dxLayoutItem4.Caption:='Clasificación:';
    cxCampo3.Properties.Items.Clear;
    cxCampo3.Properties.Items.Add('Entrada');
    cxCampo3.Properties.Items.Add('Salida');
    cxCampo3.Properties.Items.Add('Traspaso Entrada');
    cxCampo3.Properties.Items.Add('Traspaso Salida');
    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem4.Visible:=True;
    //Items ocultos
    cxViewCatalogos.Columns[2].Visible:=False;
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem3.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;
    dxLayoutItem11.Visible:=False;
end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item5Click(Sender: TObject);
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //donde estoy
    seleccion:='5';
    cxLeyenda.Caption:='Tipos de Insumos';
    //consulta
    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'alm_tipoinsumo',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Id',['-1']);
    zqCatalogosGenerales.Open;
    //relacionar columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='IdTipoInsumo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Nombre';
    cxCodigo.DataBinding.DataField:='IdTipoInsumo';
    cxDescripciones.DataBinding.DataField:='Nombre';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Id';
    cxViewCatalogos.Columns[1].Caption:='Nombre';
    dxLayoutItem2.Caption:='Id:';
    dxLayoutItem3.Caption:='Nombre:';
    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    dxLayoutItem3.Visible:=True;
    //Items ocultos
    cxViewCatalogos.Columns[2].Visible:=False;
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem2.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;
end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item6Click(Sender: TObject);
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //donde estoy
    seleccion:='6';
    cxLeyenda.Caption:='Formas de Pago';
    //consulta
    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'formas_pago',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Id',['-1']);
    zqCatalogosGenerales.Open;
    //relacionar columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='IdFormasPago';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='sDescripcion';
    cxCodigo.DataBinding.DataField:='IdFormasPago';
    cxDescripciones.DataBinding.DataField:='sDescripcion';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Id';
    cxViewCatalogos.Columns[1].Caption:='Descripción';
    dxLayoutItem2.Caption:='Id:';
    dxLayoutItem3.Caption:='Descripción:';
    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    dxLayoutItem3.Visible:=True;
    //Items ocultos
    cxViewCatalogos.Columns[2].Visible:=False;
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem2.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;
    dxLayoutItem11.Visible:=False;
end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item7Click(Sender: TObject);
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //donde estoy
    seleccion:='7';
    cxLeyenda.Caption:='Medidas';
    //consulta
    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'master_medidas',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Id,Codigo',['-1','-1']);
    zqCatalogosGenerales.Open;
    //relacionar columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Nombre';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Code';
    cxViewCatalogos.Columns[3].DataBinding.FieldName:='Name';
    cxViewCatalogos.Columns[4].DataBinding.FieldName:='Activo';
    cxCodigo.DataBinding.DataField:='Codigo';
    cxCode.DataBinding.DataField:='Nombre';
    cxCodigoMat.DataBinding.DataField:='Code';
    cxDescripciones.DataBinding.DataField:='Name';
    dxActivo.DataBinding.DataField:='Activo';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Nombre';
    cxViewCatalogos.Columns[2].Caption:='Code';
    cxViewCatalogos.Columns[3].Caption:='Name';
    cxViewCatalogos.Columns[4].Caption:='Activo';
    dxLayoutItem2.Caption:='Código:';
    dxLayoutItem11.Caption:='Code:';
    dxLayoutItem10.Caption:='Name:';
    dxLayoutItem3.Caption:='Nombre:';
    dxActivo.Caption:='Activo';
    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=True;
    cxViewCatalogos.Columns[4].Visible:=True;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem3.Visible:=True;
    dxLayoutItem5.Visible:=True;
    dxLayoutItem10.Visible:=True;
    dxLayoutItem11.Visible:=True;
    //Items ocultos
//    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item8Click(Sender: TObject);
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //donde estoy
    seleccion:='8';
    cxLeyenda.Caption:='Productos / Servicios';
    //consulta
    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'master_producto_servicio',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Activo',['-1']);
    zqCatalogosGenerales.Open;
    //relacionar columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Nombre';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Tipo';

    cxCodigo.DataBinding.DataField:='Codigo';
    cxDescripciones.DataBinding.DataField:='Nombre';
    dxActivo.DataBinding.DataField:='Activo';
    cxCampo3.DataBinding.DataField:='Tipo';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Nombre';
    cxViewCatalogos.Columns[2].Caption:='Tipo';
    dxLayoutItem2.Caption:='Código:';
    dxLayoutItem3.Caption:='Nombre:';
    dxLayoutItem4.Caption:='Producto/Servicio';
    dxActivo.Caption:='Activo';

    cxCampo3.Properties.Items.Clear;
    cxCampo3.Properties.Items.Add('Producto');
    cxCampo3.Properties.Items.Add('Servicio');
    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem3.Visible:=True;
    dxLayoutItem5.Visible:=True;
    dxLayoutItem4.Visible:=True;
    //Items ocultos
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;
    dxLayoutItem11.Visible:=False;
end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item9Click(Sender: TObject);
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //donde estoy
    seleccion:='9';
    cxLeyenda.Caption:='Giros Empresa';
    //consulta
    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'master_giro',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Codigo,Activo',['-1','-1']);
    zqCatalogosGenerales.Open;
    //relacionar columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Nombre';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Activo';

    cxCodigo.DataBinding.DataField:='Codigo';
    cxDescripciones.DataBinding.DataField:='Nombre';
    dxActivo.DataBinding.DataField:='Activo';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Nombre';
    cxViewCatalogos.Columns[2].Caption:='Activo';
    dxLayoutItem2.Caption:='Código:';
    dxLayoutItem3.Caption:='Nombre:';
    dxActivo.Caption:='Activo';
    //Items visibles
    dxLayoutItem2.Visible:=True;
    dxLayoutItem3.Visible:=True;
    dxLayoutItem5.Visible:=True;
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    //Items ocultos
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;
    dxLayoutItem11.Visible:=False;
end;


procedure TfrmCatalogosAlmacen.dxGeneralesClick(Sender: TObject);
begin
    dxNavBar1Item11Click(Sender);
end;

procedure TfrmCatalogosAlmacen.dxMantenimientoClick(Sender: TObject);
begin
    dxNavBar1Item14Click(Sender);
end;

procedure TfrmCatalogosAlmacen.dxComprasClick(Sender: TObject);
begin
    dxNavBar1Item15Click(Sender);
end;

procedure TfrmCatalogosAlmacen.dxContabilidadClick(Sender: TObject);
begin
dxNavBar1Item16Click(Sender);
end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item10Click(Sender: TObject);
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //Donde estoy
    seleccion:='10';
    cxLeyenda.Caption:='Fabricantes';
    //Consulta
    zqCatalogosGenerales.Active:=False;
    AsignarSQL(zqCatalogosGenerales,'alm_fabricante',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'IdFabricante',[-1]);
    zqCatalogosGenerales.Open;
    //relacionar los columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Fabricante';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Activo';
    cxCodigo.DataBinding.DataField:='Codigo';
    cxDescripciones.DataBinding.DataField:='Fabricante';
    dxActivo.DataBinding.DataField:='Activo';
    //captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Fabricante';
    cxViewCatalogos.Columns[2].Caption:='Activo';
    dxLayoutItem2.Caption:='Código';
    dxLayoutItem3.Caption:='Fabricante';
    dxActivo.Caption:='Activo';
    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem3.Visible:=True;
    dxLayoutItem5.Visible:=True;
    //Items ocultos
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;
    dxLayoutItem11.Visible:=False;
end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item11Click(Sender: TObject);
begin
   cxViewCatalogos.DataController.Groups.ClearGrouping;
    //Donde estoy
    seleccion:='11';
    cxLeyenda.Caption:='Grupos';
    //Consulta
    zqCatalogosGenerales.Active:=False;
    AsignarSQL(zqCatalogosGenerales,'alm_grupos',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Id',[-1]);
    zqCatalogosGenerales.Open;
    //relacionar los columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='CodigoMaterial';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Nombre' ;
    cxViewCatalogos.Columns[3].DataBinding.FieldName:='DescripcionCorta';
    cxViewCatalogos.Columns[4].DataBinding.FieldName:='Activo';
    cxCodigo.DataBinding.DataField:='Codigo';
    cxCodigoMat.DataBinding.DataField := 'CodigoMaterial';
    cxDescripciones.DataBinding.DataField:='Nombre';
    cxDescripcion.DataBinding.DataField:='DescripionCorta';
    cxComentarios.DataBinding.DataField:='Comentarios';
    dxActivo.DataBinding.DataField:='Activo';
    //captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption := 'Código Material';
    cxViewCatalogos.Columns[2].Caption := 'Grupo';
    cxViewCatalogos.Columns[3].Caption:='Descripción';
    cxViewCatalogos.Columns[4].Caption:='Activo';
    dxLayoutItem2.Caption:='Código:';
    dxLayoutItem10.Caption := 'Código Material:';
    dxLayoutItem3.Caption:='Nombre:';
    dxLayoutItem8.CaptionOptions.Text :='Descripción:';
    dxLayoutItem9.Caption:='Comentarios:';
    dxActivo.Caption:='Activo:';
    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=True;
    cxViewCatalogos.Columns[4].Visible:=True;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem3.Visible:=True;
    dxLayoutItem5.Visible:=True;
    dxLayoutItem9.Visible:=True;
    dxLayoutItem8.Visible:=True;
    dxLayoutItem10.Visible:=True;
    //Items ocultos
        //cxViewCatalogos.Columns[3].Visible:=False;
        //cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutItem11.Visible:=False;
end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item12Click(Sender: TObject);
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //Donde estoy
    seleccion:='12';
    cxLeyenda.Caption:='Grupos de Check List';
    //consulta
    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'mto_grupo_checklist',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Id,Activo,IdCheck',['-1','-1','-1']);
    zqCatalogosGenerales.Open;
    zqSub.SQL.Clear;
    zqSub.SQL.Add('select l.IdChecklist, l.Checklist from mto_checklist as l');
    zqSub.Open;

    //relacionar los columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Nombre';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Checklist';
    cxViewCatalogos.Columns[3].DataBinding.FieldName:='Activo';

    cxCodigo.DataBinding.DataField:='Codigo';
    cxDescripciones.DataBinding.DataField:='Nombre';
    cxFamilia.DataBinding.DataField:='IdChecklist';
    cxFamilia.Properties.KeyFieldNames:='IdChecklist';
    cxFamilia.Properties.ListFieldNames:='Checklist';
    dxActivo.DataBinding.DataField:='Activo';

    //captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Nombre';
    cxViewCatalogos.Columns[2].Caption:='Código Check List';
    cxViewCatalogos.Columns[3].Caption:='Activo';

    dxLayoutItem1.Caption:='Código Check List:';
    dxLayoutItem2.Caption:='Código:';
    dxLayoutItem3.Caption:='Nombre:';
    dxActivo.Caption:='Activo:';
    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=True;

    dxLayoutItem1.Visible:=True;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem3.Visible:=True;
    dxLayoutItem5.Visible:=True;

    //Items ocultos
    dxLayoutItem4.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;


end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item13Click(Sender: TObject);
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //Donde estoy
    seleccion:='13';
    cxLeyenda.Caption:='Detalle del Check List';
    //consulta
    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'mto_grupo_checklist_cumplimiento',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'IdGrupo,Activo,Id',['-1','-1','-1']);
    zqCatalogosGenerales.Open;
    zqSub.SQL.Clear;
    zqSub.SQL.Add('select g.IdGrupoCheckList, g.Nombre as Grupos from mto_grupo_checklist as g');
    zqSub.Open;
    //relacionar los columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Grupo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Descripcion';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Activo';

    cxCodigo.DataBinding.DataField:='Descripcion';
    cxFamilia.DataBinding.DataField:='IdGrupoCheckList';
    cxFamilia.Properties.KeyFieldNames:='IdGrupoCheckList';
    cxFamilia.Properties.ListFieldNames:='Grupos';
    dxActivo.DataBinding.DataField:='Activo';
    //captions
    cxViewCatalogos.Columns[0].Caption:='Grupos Check List';
    cxViewCatalogos.Columns[1].Caption:='Descripcion';
    cxViewCatalogos.Columns[2].Caption:='Activo';
    dxLayoutItem1.Caption:='Grupos Check List:';
    dxLayoutItem2.Caption:='Descripción:';
    dxActivo.Caption:='Activo:';
    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;

    dxLayoutItem1.Visible:=True;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem5.Visible:=True;
    //Items ocultos
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    dxLayoutItem3.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;


end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item14Click(Sender: TObject);
begin
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    //Donde Estoy
    seleccion:='14';
    cxLeyenda.Caption:='Check List';
    //Consulta
    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'mto_checklist',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Id,Activo',['-1','-1']);
    zqCatalogosGenerales.Open;
    //relacionar los columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Checklist';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Activo';

    cxCodigo.DataBinding.DataField:='Codigo';
    cxDescripciones.DataBinding.DataField:='Checklist';
    dxActivo.DataBinding.DataField:='Activo';
    //captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Check List';
    cxViewCatalogos.Columns[2].Caption:='Activo';
    dxLayoutItem2.Caption:='Código:';
    dxLayoutItem3.Caption:='Check List:';
    dxActivo.Caption:='Activo:';
    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;

    dxLayoutItem2.Visible:=True;
    dxLayoutItem3.Visible:=True;
    dxLayoutItem5.Visible:=True;

    //Items ocultos
    dxLayoutItem1.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;

end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item15Click(Sender: TObject);
begin
  cxViewCatalogos.DataController.Groups.ClearGrouping;
  //Donde Estoy
  seleccion:='15';
  cxLeyenda.Caption:='Porcentaje de Tiempos Centro Costo';

  //Consulta
  zqCatalogosGenerales.Active:=False;
  zqCatalogosGenerales.SQL.Clear;
  AsignarSQL(zqCatalogosGenerales,'alm_porcentaje_centrocosto',pUpdate);
  FiltrarDataSet(zqCatalogosGenerales,'IdPorcentaje, CentroCosto',['-1', '-1']);
  zqCatalogosGenerales.Open;
  zqSub.SQL.Clear;
  zqSub.SQL.Add('select o.sNumeroOrden, o.mDescripcion as Descripcion, o.sIdFolio as CentroCosto from ordenesdetrabajo as o where o.TipoProyecto='+QuotedStr('CENTRO_COSTO'));
  zqSub.Open;

  //relacionar los columnas y textfields
  cxViewCatalogos.Columns[0].DataBinding.FieldName:='Dias';
  cxViewCatalogos.Columns[1].DataBinding.FieldName:= 'CentroCosto';
  cxViewCatalogos.Columns[2].DataBinding.FieldName:= 'Descripcion';

  cxCodigo.DataBinding.DataField:='Dias';
  cxFamilia.DataBinding.DataField:= 'sNumeroOrden';
  cxFamilia.Properties.KeyFieldNames:='sNumeroOrden';
  cxFamilia.Properties.ListFieldNames:='CentroCosto;Descripcion';

  //captions
  cxViewCatalogos.Columns[0].Caption:='Días';
  cxViewCatalogos.Columns[1].Caption:= 'Centro Costo';
  cxViewCatalogos.Columns[2].Caption:= 'Descripción';

  dxLayoutItem2.Caption:='Días:';
  dxLayoutItem3.Caption:='Porcentaje:';
  dxLayoutItem1.Caption:= 'Centro costo:';

  //Items visibles
  cxViewCatalogos.Columns[0].Visible:=True;
  cxViewCatalogos.Columns[1].visible:= true;
  cxViewCatalogos.Columns[2].visible:= true;

  dxLayoutItem2.Visible:=True;
  dxLayoutItem3.Visible:=True;
  dxLayoutItem1.visible:= true;

  //Items ocultos
  dxLayoutItem3.Visible := False;
   dxLayoutItem4.Visible:=False;
   dxLayoutItem7.Visible:=False;
   dxLayoutItem5.Visible:=false;
      dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;

    cxViewCatalogos.Columns[3].Visible:=False;
   cxViewCatalogos.Columns[4].Visible:=False;
   cxViewCatalogos.Columns[5].Visible:=False;

end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item16Click(Sender: TObject);
begin
  cxViewCatalogos.DataController.Groups.ClearGrouping;
  //Donde Estoy
  seleccion:='16';
  cxLeyenda.Caption:='Tipo de Movimiento';

  //Consulta
  zqCatalogosGenerales.Active:=False;
  zqCatalogosGenerales.SQL.Clear;
  AsignarSQL(zqCatalogosGenerales,'master_tipomovimiento',pUpdate);
  FiltrarDataSet(zqCatalogosGenerales,'TipoMov',['-1']);
  zqCatalogosGenerales.Open;

  //relacionar los columnas y textfields
  cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
  cxViewCatalogos.Columns[1].DataBinding.FieldName:= 'Descripcion';

  cxCodigo.DataBinding.DataField:='Codigo';
  cxDescripciones.DataBinding.DataField:='Descripcion';

  //captions
  cxViewCatalogos.Columns[0].Caption:='Código';
  cxViewCatalogos.Columns[1].Caption:= 'Descripción';

  dxLayoutItem2.Caption:='Código:';
  dxLayoutItem3.Caption:='Descripción:';

  //Items visibles
  cxViewCatalogos.Columns[0].Visible:=True;
  cxViewCatalogos.Columns[1].visible:= true;


  dxLayoutItem2.Visible:=True;
  dxLayoutItem3.Visible:=True;

  //Items ocultos
  dxLayoutItem1.visible:= False;
  dxLayoutItem4.Visible:=False;
  dxLayoutItem7.Visible:=False;
  dxLayoutItem5.Visible:=false;
  dxLayoutItem8.Visible:=False;
  dxLayoutItem9.Visible:=False;
  dxLayoutItem10.Visible:=False;
  dxLayoutItem11.Visible:=False;

   cxViewCatalogos.Columns[2].visible:= False;
   cxViewCatalogos.Columns[3].Visible:=False;
   cxViewCatalogos.Columns[4].Visible:=False;
   cxViewCatalogos.Columns[5].Visible:=False;
end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item17Click(Sender: TObject);
begin
  cxViewCatalogos.DataController.Groups.ClearGrouping;
  //Donde Estoy
  seleccion:='17';
  cxLeyenda.Caption:='Clases';

  //Consulta
  zqCatalogosGenerales.Active:=False;
  zqCatalogosGenerales.SQL.Clear;
  AsignarSQL(zqCatalogosGenerales,'master_clases',pUpdate);
  FiltrarDataSet(zqCatalogosGenerales,'Clase',['-1']);
  zqCatalogosGenerales.Open;


  //relacionar los columnas y textfields
  cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
  cxViewCatalogos.Columns[1].DataBinding.FieldName:= 'Descripcion';

  cxCodigo.DataBinding.DataField:='Codigo';
  cxDescripciones.DataBinding.DataField:='Descripcion';

  //captions
  cxViewCatalogos.Columns[0].Caption:='Código';
  cxViewCatalogos.Columns[1].Caption:= 'Descripción';

  dxLayoutItem2.Caption:='Código:';
  dxLayoutItem3.Caption:='Descripción:';

  //Items visibles
  cxViewCatalogos.Columns[0].Visible:=True;
  cxViewCatalogos.Columns[1].visible:= true;


  dxLayoutItem2.Visible:=True;
  dxLayoutItem3.Visible:=True;

  //Items ocultos
  dxLayoutItem1.visible:= False;
  dxLayoutItem4.Visible:=False;
  dxLayoutItem7.Visible:=False;
  dxLayoutItem5.Visible:=false;
  dxLayoutItem8.Visible:=False;
  dxLayoutItem9.Visible:=False;
  dxLayoutItem10.Visible:=False;
  dxLayoutItem11.Visible:=False;

   cxViewCatalogos.Columns[2].visible:= False;
   cxViewCatalogos.Columns[3].Visible:=False;
   cxViewCatalogos.Columns[4].Visible:=False;
   cxViewCatalogos.Columns[5].Visible:=False;
end;

procedure TfrmCatalogosAlmacen.dxNavBar1Item18Click(Sender: TObject);
begin
cxViewCatalogos.DataController.Groups.ClearGrouping;
  //Donde Estoy
  seleccion:='18';
  cxLeyenda.Caption:='Rutas';

  //Consulta
  zqCatalogosGenerales.Active:=False;
  zqCatalogosGenerales.SQL.Clear;
  AsignarSQL(zqCatalogosGenerales,'master_rutas',pUpdate);
  FiltrarDataSet(zqCatalogosGenerales,'Ruta,Activo',['-1','-1']);
  zqCatalogosGenerales.Open;


  //relacionar los columnas y textfields
  cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
  cxViewCatalogos.Columns[1].DataBinding.FieldName:= 'Ruta';
  cxViewCatalogos.Columns[2].DataBinding.FieldName:= 'Activo';

  cxCodigo.DataBinding.DataField:='Codigo';
  cxDescripciones.DataBinding.DataField:='Ruta';
  dxActivo.DataBinding.DataField:='Activo';

  //captions
  cxViewCatalogos.Columns[0].Caption:='Código';
  cxViewCatalogos.Columns[1].Caption:= 'Ruta';
  cxViewCatalogos.Columns[2].Caption:= 'Activo';

  dxLayoutItem2.Caption:='Código:';
  dxLayoutItem3.Caption:='Ruta:';
  dxActivo.Caption := 'Activo';

  //Items visibles
  cxViewCatalogos.Columns[0].Visible:=True;
  cxViewCatalogos.Columns[1].visible:= true;
  cxViewCatalogos.Columns[2].visible:= true;


  dxLayoutItem2.Visible:=True;
  dxLayoutItem3.Visible:=True;
  dxLayoutItem5.Visible:=True;

  //Items ocultos
  dxLayoutItem1.visible:= False;
  dxLayoutItem4.Visible:=False;
  dxLayoutItem7.Visible:=False;
  dxLayoutItem8.Visible:=False;
  dxLayoutItem9.Visible:=False;
  dxLayoutItem10.Visible:=False;
  dxLayoutItem11.Visible:=False;

   cxViewCatalogos.Columns[3].Visible:=False;
   cxViewCatalogos.Columns[4].Visible:=False;
   cxViewCatalogos.Columns[5].Visible:=False;
end;

procedure TfrmCatalogosAlmacen.Editar1Click(Sender: TObject);
begin
    frmbarraH11.btnEdit.Click
end;

procedure TfrmCatalogosAlmacen.Registrar1Click(Sender: TObject);
begin
    frmbarraH21.btnPost.Click
end;

procedure TfrmCatalogosAlmacen.abrirdesdecaptura(Sender: TObject);
begin
  if (activo > 0)  then
  begin
    dxNavBar1Item1.Enabled := False;
    dxNavBar1Item2.Enabled := False;
    dxNavBar1Item3.Enabled := False;
    dxNavBar1Item4.Enabled := False;
    dxNavBar1Item5.Enabled := False;
    dxNavBar1Item6.Enabled := False;
    dxNavBar1Item7.Enabled := False;
    dxNavBar1Item8.Enabled := False;
    dxNavBar1Item9.Enabled := False;
    dxNavBar1Item10.Enabled := False;
    dxNavBar1Item11.Enabled := False;
    if activo = 1 then
    begin
      dxNavBar1Item1.Enabled := True;
      dxNavBar1Item1Click(Sender);
    end
    else if activo = 2 then
    begin
      dxNavBar1Item2.Enabled := True;
      dxNavBar1Item2Click(Sender)
    end
    else if activo = 3 then
    begin
      dxNavBar1Item3.Enabled := True;
      dxNavBar1Item3Click(Sender)
    end
    else if activo = 4 then
    begin
      dxNavBar1Item4.Enabled := True;
      dxNavBar1Item4Click(Sender)
    end
    else if activo = 5 then
    begin
      dxNavBar1Item5.Enabled := True;
      dxNavBar1Item5Click(Sender)
    end
    else if activo = 6 then
    begin
      dxNavBar1Item6.Enabled := True;
      dxNavBar1Item6Click(Sender)
    end
    else if activo = 7 then
    begin
      dxNavBar1Item7.Enabled := True;
      dxNavBar1Item7Click(Sender)
    end
    else if activo = 8 then
    begin
      dxNavBar1Item8.Enabled := True;
      dxNavBar1Item8Click(Sender)
    end
    else if activo = 9 then
    begin
      dxNavBar1Item9.Enabled := True;
      dxNavBar1Item9Click(Sender);
    end
    else if activo = 10 then
    begin
      dxNavBar1Item10.Enabled := True;
      dxNavBar1Item10Click(Sender);
    end
    else if activo = 11 then
    begin
      dxNavBar1Item11.Enabled := True;
      dxNavBar1Item11Click(Sender);
    end;


  end
  else
  begin
    dxNavBar1Item1.Enabled := True;
    dxNavBar1Item2.Enabled := True;
    dxNavBar1Item3.Enabled := True;
    dxNavBar1Item4.Enabled := True;
    dxNavBar1Item5.Enabled := True;
    dxNavBar1Item6.Enabled := True;
    dxNavBar1Item7.Enabled := True;
    dxNavBar1Item8.Enabled := True;
    dxNavBar1Item9.Enabled := True;
    dxNavBar1Item10.Enabled := True;
    dxNavBar1Item11.Enabled := True;
  end;
end;

procedure TfrmCatalogosAlmacen.btnAddClick(Sender: TObject);
begin
  titulo:=cxLeyenda.Caption;
  cxLeyenda.Caption:=titulo+'[Añadiendo]';
  pnl1.Visible:=True;
  cxSplitter2.Visible:=True;
  grid_catalogos.Enabled:=False;
  frmBarraH11.btnAddClick(Sender);
  dxNavBar1Item1.Enabled:=False;
  dxNavBar1Item2.Enabled:=False;
  dxNavBar1Item3.Enabled:=False;
  dxNavBar1Item4.Enabled:=False;
  dxNavBar1Item5.Enabled:=False;
  dxNavBar1Item6.Enabled:=False;
  dxNavBar1Item7.Enabled:=False;
  dxNavBar1Item8.Enabled:=False;
  dxNavBar1Item9.Enabled:=False;
  dxNavBar1Item10.Enabled:=False;
  dxNavBar1Item11.Enabled:=False;
  dxNavBar1Item12.Enabled:=False;
  dxNavBar1Item13.Enabled:=False;
  dxNavBar1Item14.Enabled:=False;
  dxNavBar1Item15.enabled:= false;
  dxNavBar1Item16.enabled:= false;
  dxNavBar1Item17.enabled:= false;
  dxActivo.Enabled:=True;
  zqCatalogosGenerales.Append;
  case seleccion.ToInteger(seleccion) of
      1: begin
          dxLayoutItem6.Visible:=True;
          ds_catalogos_generales.DataSet.FieldByName('IdGrupo').AsString:= zqSub.FieldByName('IdGrupo').AsString;
          ds_catalogos_generales.DataSet.FieldByName('Mantenimiento').AsString:=aplica;
          cbCombo.ItemIndex:=0;
          zqCatalogosGenerales.FieldByName('Tipo').AsString:=cbCombo.EditValue;
          dxActivo.Enabled:=False;
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'alm_familias');
      end;
      2:  begin

          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'alm_subfamilia');
      end;
      3: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'alm_marcas');
      end;
      7: begin
          //Asignaciones de inicio
          zqCatalogosGenerales.FieldByName('Activo').AsString := 'Si';
          cxCodigo.SetFocus;
      end;
      8: begin
          //Asignaciones de inicio
          zqCatalogosGenerales.FieldByName('Tipo').AsString   := 'Producto';
          zqCatalogosGenerales.FieldByName('Activo').AsString := 'Si';
          cxCodigo.SetFocus;
      end;
      9: begin
          //Asignaciones de inicio
          zqCatalogosGenerales.FieldByName('Activo').AsString := 'Si';
          cxCodigo.SetFocus;
      end;
      10: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'alm_fabricante');
          zqCatalogosGenerales.FieldByName('Activo').AsString := 'Si';
          cxCodigo.SetFocus;
      end;
      11: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'alm_grupos');
          zqCatalogosGenerales.FieldByName('Activo').AsString := 'Si';
          cxCodigo.SetFocus;
      end;
      12: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'mto_grupo_checklist');
          zqCatalogosGenerales.FieldByName('Activo').AsString:='Si';
          cxCodigo.SetFocus;
      end;
      13: begin

          zqCatalogosGenerales.FieldByName('Activo').AsString:='Si';
          cxFamilia.SetFocus;
      end;
      14: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'mto_checklist');
          zqCatalogosGenerales.FieldByName('Activo').AsString:='Si';
          cxCodigo.SetFocus;
      end;
      16: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'master_tipomovimiento');
          cxCodigo.SetFocus;
      end;
      17: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'master_clases');
          cxCodigo.SetFocus;
      end;
      18: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'master_rutas');
          cxCodigo.SetFocus;
      end;

  end;

end;

procedure TfrmCatalogosAlmacen.btnCancelClick(Sender: TObject);
begin
  cxleyenda.Caption:=titulo;
  cxSplitter2.Visible:=False ;
  pnl1.Visible:=False;
  dxNavBar1Item1.Enabled:=True;
  dxNavBar1Item2.Enabled:=True;
  dxNavBar1Item3.Enabled:=True;
  dxNavBar1Item4.Enabled:=True;
  dxNavBar1Item5.Enabled:=True;
  dxNavBar1Item6.Enabled:=True;
  dxNavBar1Item7.Enabled:=True;
  dxNavBar1Item8.Enabled:=True;
  dxNavBar1Item9.Enabled:=True;
  dxNavBar1Item10.Enabled:=True;
  dxNavBar1Item11.Enabled:=True;
  dxNavBar1Item12.Enabled:=True;
  dxNavBar1Item13.Enabled:=True;
  dxNavBar1Item14.Enabled:=True;
  dxNavBar1Item15.enabled:= true;
  dxNavBar1Item16.enabled:= true;
  dxNavBar1Item17.enabled:= true;
  dxNavBar1Item18.enabled:= true;
  dxActivo.Enabled:=True;
  dxLayoutItem6.Visible:=False;
  frmBarraH11.btnActive;
  grid_catalogos.Enabled:=True;
  ds_catalogos_generales.DataSet.Cancel;
  PermisosBotones(frmCatalogosAlmacen,btnPermisos);
  abrirdesdecaptura(sender);
end;

procedure TfrmCatalogosAlmacen.btnDeleteClick(Sender: TObject);
begin
  If zqCatalogosGenerales.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro en ['+cxLeyenda.Caption+']?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zqCatalogosGenerales.Delete;
        zqCatalogosGenerales.ApplyUpdates();
        zqCatalogosGenerales.Refresh;

      except
        on E : exception do
        begin
           zqCatalogosGenerales.Transaction.Rollback;
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo Generales ['+cxLeyenda.Caption+']', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmCatalogosAlmacen.btnEditClick(Sender: TObject);
begin
  titulo:=cxLeyenda.Caption;
  cxLeyenda.Caption:=titulo+'[Editando]';
  pnl1.Visible:=True;
  cxSplitter2.Visible:=True;
  frmBarraH11.btnEditClick(Sender);
  grid_catalogos.Enabled:=False;
  zqCatalogosGenerales.edit;
  dxActivo.Enabled:=True;
  case seleccion.ToInteger(seleccion) of
      1: begin
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavBar1Item4.Enabled:=False;
          dxNavBar1Item5.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
          dxActivo.Enabled:=False;
          dxLayoutItem6.Visible:=True;
      end;
      2:  begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavBar1Item4.Enabled:=False;
          dxNavBar1Item5.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
      end;
      3: begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item4.Enabled:=False;
          dxNavBar1Item5.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
      end;
      4: begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavBar1Item5.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
      end;
      5: begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavBar1Item4.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
      end;
      6: begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavBar1Item4.Enabled:=False;
          dxNavBar1Item5.Enabled:=False;
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
      end;
      7: begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavBar1Item4.Enabled:=False;
          dxNavBar1Item5.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
      end;
      8: begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavBar1Item4.Enabled:=False;
          dxNavBar1Item5.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
      end;
      9: begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavBar1Item4.Enabled:=False;
          dxNavBar1Item5.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;

      end;
      10: begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavBar1Item4.Enabled:=False;
          dxNavBar1Item5.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item11.Enabled:=False;
      end;
      11: begin
          dxNavBar1Item1.Enabled:=False;
          dxNavBar1Item2.Enabled:=False;
          dxNavBar1Item3.Enabled:=False;
          dxNavBar1Item4.Enabled:=False;
          dxNavBar1Item5.Enabled:=False;
          dxNavBar1Item6.Enabled:=False;
          dxNavBar1Item7.Enabled:=False;
          dxNavBar1Item8.Enabled:=False;
          dxNavBar1Item9.Enabled:=False;
          dxNavBar1Item10.Enabled:=False;
      end;
      12: begin
          dxNavBar1Item13.Enabled:=False;
          dxNavbar1Item14.Enabled:=False;
      end;
      13: begin
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item14.Enabled:=False;
      end;
      14: begin
          dxNavBar1Item12.Enabled:=False;
          dxNavBar1Item13.Enabled:=False;
      end;
      15: begin
          dxNavBar1Item15.Enabled:= false;
      end;
      16: begin
          dxNavBar1Item16.Enabled:= false;
      end;
      17: begin
          dxNavBar1Item17.Enabled:= false;
      end;
      18: begin
          dxNavBar1Item18.Enabled:= false;
      end;
  end;
end;

procedure TfrmCatalogosAlmacen.btnPostClick(Sender: TObject);
begin
  cxLeyenda.Caption:=titulo;
  pnl1.Visible:=False;
  cxSplitter2.Visible:=False ;
  dxNavBar1Item1.Enabled:=True;
  dxNavBar1Item2.Enabled:=True;
  dxNavBar1Item3.Enabled:=True;
  dxNavBar1Item4.Enabled:=True;
  dxNavBar1Item5.Enabled:=True;
  dxNavBar1Item6.Enabled:=True;
  dxNavBar1Item7.Enabled:=True;
  dxNavBar1Item8.Enabled:=True;
  dxNavBar1Item9.Enabled:=True;
  dxNavBar1Item10.Enabled:=True;
  dxNavBar1Item11.Enabled:=True;
  dxNavBar1Item12.Enabled:=True;
  dxNavBar1Item13.Enabled:=True;
  dxNavBar1Item14.Enabled:=True;
  dxNavBar1Item15.Enabled:= true;
  dxNavBar1Item16.Enabled:= true;
  dxNavBar1Item17.Enabled:= true;
  dxNavBar1Item18.Enabled:= true;
  frmBarraH11.Enabled:=True;
  dxActivo.Enabled:=True;
  dxLayoutItem6.Visible:=False;
  grid_catalogos.Enabled:=True;
  ds_catalogos_generales.DataSet.Post;

  if global_frmActivo = 'frmBancosMovimientos' then
  begin
    try
      frmBancosMovimientos.zTipoMov.Refresh;
      frmBancosMovimientos.cxTipoMovimiento.DataBinding.DataSource.DataSet.FieldByName('IdTipoMovimiento').AsInteger :=  ds_catalogos_generales.DataSet.FieldByName('IdTipoMovimiento').AsInteger;
      frmBancosMovimientos.cxTipoMovimiento.SetFocus;
    Except
    end;
  end;

  if global_frmActivo = 'frmBancosMovimientos' then
  begin
    try
      frmBancosMovimientos.zFormasPago.Refresh;
      frmBancosMovimientos.cxFormaPago.DataBinding.DataSource.DataSet.FieldByName('IdFormaPago').AsInteger :=  ds_catalogos_generales.DataSet.FieldByName('IdFormaPago').AsInteger;
      frmBancosMovimientos.cxFormaPago.SetFocus;
    Except
    end;
  end;

  if global_frmActivo = 'frmBancosMovimientos' then
  begin
    try
      frmBancosMovimientos.zClase.Refresh;
      frmBancosMovimientos.cxClase.DataBinding.DataSource.DataSet.FieldByName('IdClase').AsInteger :=  ds_catalogos_generales.DataSet.FieldByName('IdClase').AsInteger;
      frmBancosMovimientos.cxClase.SetFocus;
    Except
    end;
  end;


  if TUniquery(ds_catalogos_generales.DataSet).Connection.InTransaction then
  BEGIN
    TUniquery(ds_catalogos_generales.DataSet).Connection.Commit;
    TUniquery(ds_catalogos_generales.DataSet).Connection.StartTransaction;
  END;


  ds_catalogos_generales.DataSet.Refresh;
  frmBarraH11.btnActive;
  PermisosBotones(frmCatalogosAlmacen,btnPermisos);
  abrirdesdecaptura(sender);
end;

procedure TfrmCatalogosAlmacen.btnPrinterClick(Sender: TObject);
begin
  generar_reporte_grid(cxViewCatalogos,cxLeyenda.Caption);
end;

procedure TfrmCatalogosAlmacen.btnRefreshClick(Sender: TObject);
begin
   zqCatalogosGenerales.Refresh;
end;

procedure TfrmCatalogosAlmacen.Can1Click(Sender: TObject);
begin
    frmbarraH21.btnCancel.Click
end;

procedure TfrmCatalogosAlmacen.Eliminar1Click(Sender: TObject);
begin
    frmbarraH11.btnDelete.Click
end;
end.
