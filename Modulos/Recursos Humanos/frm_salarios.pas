unit frm_salarios;

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
  cxCalendar, unitReportes, dxLayoutControlAdapters, cxButtons, unitMetodos;

type
  TfrmSalarios = class(TForm)
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
    cxSalario: TcxDBTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    panelBotones: TPanel;
    grid_catalogos: TcxGrid;
    cxViewCatalogos: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    cxViewCatalogosColumn1: TcxGridDBColumn;
    cxViewCatalogosColumn2: TcxGridDBColumn;
    cxNombre: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxViewCatalogosColumn3: TcxGridDBColumn;
    Panel2: TPanel;
    cxViewCatalogosColumn4: TcxGridDBColumn;
    cxViewCatalogosColumn5: TcxGridDBColumn;
    dxDBToggleSwitch1: TdxDBToggleSwitch;
    dxLayoutItem2: TdxLayoutItem;
    cxSubCatalogo: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    ds_subcatalogo: TDataSource;
    zqCatalogosGenerales: TUniQuery;
    cxLeyenda: TcxLabel;
    cxCodigo: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxSubCatalogo2: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    zqSubCatalogo2: TUniQuery;
    ds_subcatalogo2: TDataSource;
    frmBarraH11: TfrmBarraH1;
    frmBarraH21: TfrmBarraH2;
    cxFecha: TcxDBDateEdit;
    dxLayoutItem6: TdxLayoutItem;
    zqSubCatalogo: TUniQuery;
    cxViewCatalogosColumn6: TcxGridDBColumn;
    cxViewCatalogosColumn7: TcxGridDBColumn;
    cxCmbMoneda: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    uqMonedas: TUniQuery;
    ds_monedas: TDataSource;
    cxSalarioIntegrado: TcxDBCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxViewCatalogosColumn8: TcxGridDBColumn;
    cxViewCatalogosColumn9: TcxGridDBColumn;
    cxViewCatalogosColumn10: TcxGridDBColumn;
    cxRangoSalario: TcxDBLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    ds_rango_salarios: TDataSource;
    zRangoSalarios: TUniQuery;
    dxLayoutItem9: TdxLayoutItem;
    cxAddRango: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_pernoctanCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
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
    procedure frmBarraH11btnAddClick(Sender: TObject);
    procedure abrirdesdecaptura(Sender: TObject);
    procedure cxSubCatalogoExit(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxSubCatalogo2Exit(Sender: TObject);
    procedure cxAddRangoClick(Sender: TObject);
    procedure cxViewCatalogosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSalarios: TfrmSalarios;
  sOpcion : string;
  seleccion: string;
  titulo: string;
  btnPermisos: String;
  activo : Integer = -1;
  FORMULARIO_ACTIVO : String;
  IdTipoNomina : integer;

implementation

uses
 frm_Presupuesto,Ufrm_Loading, frm_proveedores, frm_rangoSalarios;
{$R *.dfm}

procedure TfrmSalarios.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmSalarios.EnterControl(Sender: TObject);
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
end;

procedure TfrmSalarios.SalidaControl(Sender: TObject);
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
end;

procedure TfrmSalarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  zqCatalogosGenerales.Cancel;

  if ((FORMULARIO_ACTIVO = 'frmProveedores') and (activo = 14)) then
    frmProveedores.Codigo_postal.Refresh;

  if ((FORMULARIO_ACTIVO = 'frmProveedores') and (activo = 6)) then
    frmProveedores.zqCiudades.Refresh;
    guardar_leer_grid(cxViewCatalogos,frmSalarios,1);
    global_frmActivo := '';
    global_indexactivo:= -1;
  action := cafree ;
end;

procedure TfrmSalarios.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
  FORMULARIO_ACTIVO := global_frmActivo;
  frm_Loading.Show;
  OpcButton := '' ;
  frmbarraH21.btnCancel.Click ;
  zqCatalogosGenerales.Active := False ;
  zqCatalogosGenerales.SQL.Clear;
  AsignarSQL(zqCatalogosGenerales,'rhu_salarios',pUpdate);
  FiltrarDataSet(zqCatalogosGenerales,'Id,Empresa,Nomina,Activo',[-1,-1,-1,-1]);
  zqCatalogosGenerales.Open;

  zqSubCatalogo.Active:=False;
  AsignarSQL(zqSubCatalogo,'master_empresa',pUpdate);
  FiltrarDataSet(zqSubCatalogo,'IdEmpresa,bIdEmpresa,IdPadre',[-1,-1,-1]);
  zqSubCatalogo.Open;

  zqSubCatalogo2.Active:=False;
  AsignarSQL(zqSubCatalogo2,'rh_tiponomina',pUpdate);
  FiltrarDataSet(zqSubCatalogo2,'Id,IdMoneda,IdEmpresa',[-1,-1,-1]);
  zqSubCatalogo2.Open;

  uqMonedas.Active:=False;
  AsignarSQL(uqMonedas,'master_moneda',pUpdate);
  FiltrarDataSet(uqMonedas,'IdMoneda,Codigo,Activo',[-1,-1,'Si']);
  uqmonedas.Open;

  zRangoSalarios.Active:=False;
  AsignarSQL(zRangoSalarios,'nom_rangosalarios',pUpdate);
  FiltrarDataSet(zRangoSalarios,'IdEmpresa,IdTipoNomina,IdMoneda,Titulo,FechaAplicacion,IdRangoSalarios',[-1,-1,-1,-1,-1,-1]);
  zRangoSalarios.Open;

  titulo:=' Lista de Salarios';
  cxLeyenda.Caption:=' Lista de Salarios';
  PermisosBotones(frmSalarios,btnPermisos);
  activo := global_indexactivo;
  abrirdesdecaptura(sender);
  guardar_leer_grid(cxViewCatalogos,frmSalarios,0);

end;

procedure TfrmSalarios.grid_pernoctanCellClick(Column: TColumn);
begin
  if frmbarraH21.btnCancel.Enabled = True then
      frmbarraH21.btnCancel.Click ;
end;

procedure TfrmSalarios.frmBarra1btnAddClick(Sender: TObject);
begin
    frmbarraH11.btnAddClick(Sender);
    Insertar1.Enabled := False ;
    Editar1.Enabled := False ;
    Registrar1.Enabled := True ;
    Can1.Enabled := True ;
    Eliminar1.Enabled := False ;
    Refresh1.Enabled := False ;
    Salir1.Enabled := False ;
    cxCodigo.SetFocus ;
    zqCatalogosGenerales.Append ;
    zqCatalogosGenerales.FieldByName('dCantidad').AsFloat := 0;
    zqCatalogosGenerales.FieldByName('dVentaMn').AsFloat  := 0;
    zqCatalogosGenerales.FieldByName('dVentaDll').AsFloat := 0;

    zqCatalogosGenerales.FieldByName('sTipo').AsString := 'ANEXO';
    zqCatalogosGenerales.FieldByName('sTierra').AsString := 'No';

    zqCatalogosGenerales.FieldByName('iOrden').AsInteger := zqCatalogosGenerales.RecordCount;


    frmbarraH11.btnPrinter.Enabled := False;
    grid_catalogos.Enabled := False;
end;

procedure TfrmSalarios.frmBarra1btnEditClick(Sender: TObject);
begin
   frmbarraH11.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   //cxId.Enabled := False;
   try
      zqCatalogosGenerales.Edit ;
   except
      on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Anexos', 'Al agregar registro', 0);
      frmbarraH21.btnCancel.Click ;
      end;
   end ;

   frmbarraH11.btnPrinter.Enabled := False;
   grid_catalogos.Enabled := False;
end;

procedure TfrmSalarios.frmBarra1btnPostClick(Sender: TObject);
begin
  ;
end;

procedure TfrmSalarios.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmbarraH21.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   zqCatalogosGenerales.Cancel ;

   PermisosBotones(frmSalarios,btnPermisos);
   frmbarraH11.btnPrinter.Enabled := False;
   grid_catalogos.Enabled := True;
   //cxId.Enabled := True;
end;

procedure TfrmSalarios.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If zqCatalogosGenerales.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zqCatalogosGenerales.Delete ;

      except
        on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Anexos', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmSalarios.frmBarra1btnRefreshClick(Sender: TObject);
begin
   zqCatalogosGenerales.refresh
end;

procedure TfrmSalarios.frmBarraH11btnAddClick(Sender: TObject);
begin
  frmBarraH11.btnAddClick(Sender);
  btnAddClick(Sender);
end;

procedure TfrmSalarios.Insertar1Click(Sender: TObject);
begin
    frmbarraH11.btnAdd.Click
end;


procedure TfrmSalarios.cxAddRangoClick(Sender: TObject);
begin
  GLOBAL_FRMACTIVO := 'frmSalarios';
  if not MostrarFormChild('frmRangoSalarios', global_dxBarManagerPrincipal) then
     begin
        Application.CreateForm(TfrmRangoSalarios, frmRangoSalarios);
        frmRangoSalarios.show;
        frmRangoSalarios.btnAddClick(Sender);
     end;

end;

procedure TfrmSalarios.cxSubCatalogo2Exit(Sender: TObject);
begin
     zRangoSalarios.Filtered := False;
     zRangoSalarios.Filter   := '(IdEmpresa = '+IntToStr(cxSubCatalogo.DataBinding.DataSource.DataSet.FieldByName('IdEmpresa').AsInteger)+
                                ') and (IdTipoNomina ='+IntToStr(cxSubCatalogo2.DataBinding.DataSource.DataSet.FieldByName('IdTipoNomina').AsInteger)+
                                ') and (IdMoneda ='+IntToStr(cxCmbMoneda.DataBinding.DataSource.DataSet.FieldByName('IdMoneda').AsInteger)+')';
     zRangoSalarios.Filtered := True;

     cxSubCatalogo2.Style.Color := global_color_SalidaERP;
end;

procedure TfrmSalarios.cxSubCatalogoExit(Sender: TObject);
begin
  zqSubCatalogo2.Active:=False;
  AsignarSQL(zqSubCatalogo2,'rh_tiponomina',pUpdate);
  FiltrarDataSet(zqSubCatalogo2,'Id,IdMoneda,IdEmpresa',[-1,-1,zqSubCatalogo.FieldByName('IdEmpresa').AsInteger]);
  zqSubCatalogo2.Open;

  cxSubCatalogo.Style.Color := global_color_SalidaERP;
end;

procedure TfrmSalarios.cxViewCatalogosCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    if zqCatalogosGenerales.RecordCount > 0 then
       IdTipoNomina := zqCatalogosGenerales.FieldByName('IdTipoNomina').AsInteger;
end;

procedure TfrmSalarios.cxViewCatalogosDblClick(Sender: TObject);
begin
    if cxViewCatalogos.OptionsView.CellAutoHeight then
       cxViewCatalogos.OptionsView.CellAutoHeight := False
    else
       cxViewCatalogos.OptionsView.CellAutoHeight := True;


end;

procedure TfrmSalarios.Editar1Click(Sender: TObject);
begin
    frmbarraH11.btnEdit.Click
end;

procedure TfrmSalarios.Registrar1Click(Sender: TObject);
begin
    frmbarraH21.btnPost.Click
end;

procedure TfrmSalarios.abrirdesdecaptura(Sender: TObject);
begin
  ;
end;

procedure TfrmSalarios.btnAddClick(Sender: TObject);
begin
  titulo:=cxLeyenda.Caption;
  cxLeyenda.Caption:=titulo+'[Añadiendo]';
  pnl1.Visible:=True;
  grid_catalogos.Enabled:=False;
  frmbarraH11.btnEdit.Enabled:=False;
  frmbarraH11.btnDelete.Enabled:=False;
  frmbarraH11.btnAdd.Enabled:=False;

  zqCatalogosGenerales.Append;
  cxSubCatalogo.DataBinding.DataSource.DataSet.FieldByName('IdEmpresa').AsInteger := zqSubCatalogo.FieldByName('IdEmpresa').AsInteger;
  cxSubCatalogo2.DataBinding.DataSource.DataSet.FieldByName('IdTipoNomina').AsInteger := IdTipoNomina;
  cxCmbMoneda.DataBinding.DataSource.DataSet.FieldByName('IdMoneda').AsInteger := uqMonedas.FieldByName('IdMoneda').AsInteger;
  zqCatalogosGenerales.FieldByName('IdSalario').AsInteger:=0;
  zqCatalogosGenerales.FieldByName('Salario').AsInteger  :=0;
  zqCatalogosGenerales.FieldByName('SalarioIntegrado').AsInteger :=0;
  zqCatalogosGenerales.FieldByName('CodigoSalario').AsString     := autoFolio(zqCatalogosGenerales, 'rhu_salario');;
  zqCatalogosGenerales.FieldByName('Activo').AsString:='Si';
  zqCatalogosGenerales.FieldByName('FechaRegistro').AsDateTime := Now();
  zqCatalogosGenerales.FieldByName('FechaAplicacion').AsDateTime:=Now;

  cxNombre.SetFocus;

end;

procedure TfrmSalarios.btnCancelClick(Sender: TObject);
begin
  cxleyenda.Caption:=titulo;
  pnl1.Visible:=False;
  frmBarraH11.btnActive;
  grid_catalogos.Enabled:=True;
  ds_catalogos_generales.DataSet.Cancel;
  PermisosBotones(frmSalarios,btnPermisos);
  abrirdesdecaptura(sender);
end;

procedure TfrmSalarios.btnDeleteClick(Sender: TObject);
begin
    If zqCatalogosGenerales.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        ds_catalogos_generales.DataSet.Delete;
        zqCatalogosGenerales.ApplyUpdates();
        zqCatalogosGenerales.Refresh;
      except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Salarios', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmSalarios.btnEditClick(Sender: TObject);
begin
  titulo:=cxLeyenda.Caption;
  cxLeyenda.Caption:=titulo+'[Editando]';
  pnl1.Visible:=True;
  frmBarraH11.btnEditClick(Sender);
  grid_catalogos.Enabled:=False;
  zqCatalogosGenerales.Edit;
  zqCatalogosGenerales.FieldByName('FechaModificacion').AsDateTime:=Now;
  zqCatalogosGenerales.FieldByName('sIdUsuarioModificacion').AsString:= global_usuario;
end;

procedure TfrmSalarios.btnPostClick(Sender: TObject);
var
 registro:String;
begin
  cxLeyenda.Caption:=titulo;
  pnl1.Visible:=False;
  frmBarraH11.btnAdd.Enabled:=True;
  frmBarraH11.btnEdit.Enabled:=True;
  frmBarraH11.btnDelete.Enabled:=True;
  grid_catalogos.Enabled:=True;
   registro:=zqCatalogosGenerales.FieldByName('FechaRegistro').AsString;
  if registro = '' then
  begin
    zqCatalogosGenerales.FieldByName('FechaRegistro').AsDateTime:=Now;
  end;


  ds_catalogos_generales.DataSet.Post;
  ds_catalogos_generales.DataSet.Refresh;
  PermisosBotones(frmSalarios,btnPermisos);
  abrirdesdecaptura(sender);
end;

procedure TfrmSalarios.btnPrinterClick(Sender: TObject);
begin
  if zqCatalogosGenerales.RecordCount > 0 then
  begin
    generar_reporte_grid(cxViewCatalogos,'Salarios');
  end;

end;

procedure TfrmSalarios.btnRefreshClick(Sender: TObject);
begin
   zqCatalogosGenerales.Refresh;
end;

procedure TfrmSalarios.Can1Click(Sender: TObject);
begin
    frmbarraH21.btnCancel.Click
end;

procedure TfrmSalarios.Eliminar1Click(Sender: TObject);
begin
    frmbarraH11.btnDelete.Click
end;
end.
