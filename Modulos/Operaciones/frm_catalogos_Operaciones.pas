unit frm_catalogos_Operaciones;

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
  UnitReportes, cxButtons, cxCalendar, dxBarBuiltInMenu, cxPC;
  //unittbotonespermisos,
type
  TfrmCatalogosOperacion = class(TForm)
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
    cxCodigo: TcxDBTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    panelOpciones: TPanel;
    dxNavBar1: TdxNavBar;
    panelBotones: TPanel;
    grid_catalogos: TcxGrid;
    cxViewCatalogos: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
    cxDescripciones: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
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
    dxNavBar1Item12: TdxNavBarItem;
    dxNavBar1Item13: TdxNavBarItem;
    dxNavBar1Item14: TdxNavBarItem;
    cbCombo: TcxDBComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxViewCatalogosColumn5: TcxGridDBColumn;
    dxNavBar1Item15: TdxNavBarItem;
    cxDescripcion2: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    edtCampo5: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    edtCampo6: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxViewCatalogosColumn6: TcxGridDBColumn;
    PanelLateral: TPanel;
    cxSplitterLateral: TcxSplitter;
    ViewDetalle: TcxGridDBTableView;
    cxViewDetalle: TcxGridLevel;
    cxGrid_Detalle: TcxGrid;
    PanelCentalDetalle: TPanel;
    PanelDetalleDatos: TPanel;
    ViewDetalleColumn1: TcxGridDBColumn;
    ViewDetalleColumn2: TcxGridDBColumn;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    zqDetalleCatalogos: TUniQuery;
    dsDetalleCatalogos: TDataSource;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    btnEliminarDetalle: TcxButton;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxSplitterDatos: TcxSplitter;
    edtFecha: TcxDBDateEdit;
    dxLayoutItem10: TdxLayoutItem;
    edtDetalle: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    cbDetalle: TcxDBLookupComboBox;
    cbCombo2: TcxDBLookupComboBox;
    dxLayoutItem13: TdxLayoutItem;
    zSub: TUniQuery;
    dsSub: TDataSource;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxPageControl: TcxPageControl;
    cxTabKit: TcxTabSheet;
    cxTabMO: TcxTabSheet;
    panelDatosMO: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxClienteMOD: TcxDBLookupComboBox;
    dxLayoutItem14: TdxLayoutItem;
    cxCosto: TcxDBCurrencyEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxColumnMOD1: TcxGridDBColumn;
    cxColumnMOD2: TcxGridDBColumn;
    cxColumnMOD3: TcxGridDBColumn;
    cxCostoHEMOD: TcxDBCurrencyEdit;
    dxLayoutItem16: TdxLayoutItem;
    Reporte: TfrxReport;
    uTabulador: TUniQuery;
    ds_tabulador: TfrxDBDataset;
    cbMoneda: TcxDBLookupComboBox;
    dxLayoutItem17: TdxLayoutItem;
    zSub2: TUniQuery;
    dsSub2: TDataSource;
    cxColumnMOD4: TcxGridDBColumn;
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
    procedure dxNavBar1Item8Click(Sender: TObject);
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
    procedure btnDetalleClick(Sender: TObject);
    procedure dxNavBar1Item9Click(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure btnEliminarDetalleClick(Sender: TObject);
    procedure ViewDetalleCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure zqCatalogosGeneralesAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogosOperacion: TfrmCatalogosOperacion;
  sOpcion : string;
  seleccion: string;
  titulo: string;
  btnPermisos :String;
  aplica:String;
  activo: Integer = -1;
  isOpen: boolean = False;


implementation

uses
 frm_presupuesto,
 frm_proveedores,
 frm_materiales,   frm_materiales_CMMI,
 frm_agregar_masivoOP;
{$R *.dfm}

procedure TfrmCatalogosOperacion.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmCatalogosOperacion.EnterControl(Sender: TObject);
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

    if (sender is tcxDBLookUpComboBox) then
        tcxDBLookUpComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmCatalogosOperacion.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBLookUpComboBox) then
        tcxDBLookUpComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmCatalogosOperacion.ViewDetalleCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if ViewDetalle.OptionsView.CellAutoHeight then
       ViewDetalle.OptionsView.CellAutoHeight := False
    else
       ViewDetalle.OptionsView.CellAutoHeight := True;
end;

procedure TfrmCatalogosOperacion.zqCatalogosGeneralesAfterScroll(
  DataSet: TDataSet);
begin
  if IsOpen then begin
    case seleccion.ToInteger(seleccion) of
      7: begin
        if zqCatalogosGenerales.RecordCount > 0 then begin
          zqDetalleCatalogos.Filtered:=False;
          zqDetalleCatalogos.Filter:='IdManoObra = '+zqCatalogosGenerales.FieldByName('IdManoObra').AsString;
          zqDetalleCatalogos.Filtered:=True;
        end;
      end;

      10: begin
        if zqCatalogosGenerales.RecordCount > 0 then begin
          zqDetalleCatalogos.Filtered:=False;
          zqDetalleCatalogos.Filter:='IdKit = '+zqCatalogosGenerales.FieldByName('IdKit').AsString;
          zqDetalleCatalogos.Filtered:=True;
        end;
      end;
    end;
  end;
end;

procedure TfrmCatalogosOperacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  zqCatalogosGenerales.Cancel ;

  if ((global_frmActivo = 'frmProveedores') and (activo = 8)) then
    frmProveedores.producto_servicio.Refresh;

  if ((global_frmActivo = 'frmMateriales') and (activo = 7)) then
    frmMateriales.zqMedida.Refresh;

  if ((global_frmActivo = 'frmMateriales') and (activo = 1)) then
    frmMateriales.zqFamilia.Refresh;

  if ((global_frmActivo = 'frmMateriales') and (activo = 2)) then
    frmMateriales.zqSubfamilia.Refresh;

  if ((global_frmActivo = 'frmMateriales') and (activo = 3)) then
    frmMateriales.zqMarca.Refresh;

  if ((global_frmActivo = 'frmMateriales') and (activo = 10)) then
    frmMateriales.zFabricante.Refresh;

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
  action := cafree ;
end;

procedure TfrmCatalogosOperacion.FormShow(Sender: TObject);
begin
  btnPermisos := global_btnPermisos;
  OpcButton := '' ;
  frmbarraH21.btnCancel.Click ;
  zqCatalogosGenerales.Active := False ;
  dxGenerales.OnClick(Sender);

  PermisosBotones(frmCatalogosOperacion,btnPermisos);

  connection.qryUBusca.Active:= False;
  connection.qryUBusca.SQL.Text:='SELECT sIdUsuario, '+
  'IF(sIdGrupo = '+QuotedStr('SUPSS7')+','+QuotedStr('Si')+','+QuotedStr('No')+') As Tipo '+
  'FROM usuarios WHERE  sIdUsuario = :usuario';
  connection.qryUBusca.ParamByName('usuario').AsString:=Global_Usuario;
  Connection.qryUBusca.Open;
  aplica:=connection.qryUBusca.FieldByName('Tipo').AsString;
//  if aplica='Si' then
//   begin
//    dxNavBar1Item6.Visible:=False;
//    dxNavBar1Item8.Visible:=False;
//    dxNavBar1Item9.Visible:=False;
//    dxNavBar1Separator1.Visible:=False;
//   end
//   else
//   begin
    dxNavBar1Item6.Visible:=True;
    dxNavBar1Item8.Visible:=True;
    dxNavBar1Item9.Visible:=True;
    dxNavBar1Separator1.Visible:=True;
//   end;
  activo := global_indexactivo;
  abrirdesdecaptura(Sender);
end;

procedure TfrmCatalogosOperacion.grid_pernoctanCellClick(Column: TColumn);
begin
  if frmbarraH21.btnCancel.Enabled = True then
      frmbarraH21.btnCancel.Click ;
end;

procedure TfrmCatalogosOperacion.Insertar1Click(Sender: TObject);
begin
    frmbarraH11.btnAdd.Click
end;

procedure TfrmCatalogosOperacion.cxCancelarDetalleClick(Sender: TObject);
begin
  if cxPageControl.ActivePage = cxTabKit then begin
    dsDetalleCatalogos.DataSet.Cancel;
    cxSplitterDatos.Visible:=False;
    PanelDetalleDatos.Visible:=False;
    PanelDown.Visible:=False;
  end;

  if cxPageControl.ActivePage = cxTabMO then begin
    zqDetalleCatalogos.Cancel;
    zqDetalleCatalogos.Refresh;
    frmBarraH11.btnActive;
    cxNuevoDetalle.Enabled:=True;
    cxEditaDetalle.Enabled:=True;
    btnEliminarDetalle.Enabled:=True;
    PanelDatosMO.Visible:=False;
    PanelDown.Visible:=False;
    isOpen:=True;
  end;
end;

procedure TfrmCatalogosOperacion.cxEditaDetalleClick(Sender: TObject);
begin
  case seleccion.ToInteger(seleccion) of
    7: begin
      if zqDetalleCatalogos.RecordCount > 0 then begin
        frmBarraH11.btnAddClick(Sender);
        cxNuevoDetalle.Enabled:=False;
        cxEditaDetalle.Enabled:=False;
        btnEliminarDetalle.Enabled:=False;
        PanelDatosMO.Visible:=True;
        PanelDown.Visible:=true;
        isOpen:=False;
        zqDetalleCatalogos.Edit;
      end;
    end;
    10: begin
      cxSplitterDatos.Visible:=True;
      PanelDetalleDatos.Visible:=True;
      PanelDown.Visible:=True;
      zqDetalleCatalogos.Edit;
    end;
  end;
end;

procedure TfrmCatalogosOperacion.cxGuardarDetalleClick(Sender: TObject);
begin
  if cxPageControl.ActivePage = cxTabKit then begin
    if TUniquery(dsDetalleCatalogos.DataSet).Connection.InTransaction then BEGIN
      TUniquery(dsDetalleCatalogos.DataSet).Connection.Commit;
      TUniquery(dsDetalleCatalogos.DataSet).Connection.StartTransaction;
    END;
    cxSplitterDatos.Visible:=False;
    PanelDetalleDatos.Visible:=False;
    PanelDown.Visible:=False;
    dsDetalleCatalogos.DataSet.Refresh;
  end;

  if cxPageControl.ActivePage = cxTabMO then begin
    zqDetalleCatalogos.Post;
    zqDetalleCatalogos.Refresh;
    frmBarraH11.btnActive;
    cxNuevoDetalle.Enabled:=True;
    cxEditaDetalle.Enabled:=True;
    btnEliminarDetalle.Enabled:=True;
    PanelDatosMO.Visible:=False;
    PanelDown.Visible:=False;
    isOpen:=True;
  end;

end;

procedure TfrmCatalogosOperacion.cxNuevoDetalleClick(Sender: TObject);
begin
  case seleccion.ToInteger(seleccion) of
      7: begin
        if zqCatalogosGenerales.RecordCount > 0 then begin
          isOpen:=False;
          frmBarraH11.btnAddClick(Sender);
          cxNuevoDetalle.Enabled:=False;
          cxEditaDetalle.Enabled:=False;
          btnEliminarDetalle.Enabled:=False;
          PanelDatosMO.Visible:=True;
          PanelDown.Visible:=true;
          cxClienteMOD.SetFocus;
          zqDetalleCatalogos.Append;
          zqDetalleCatalogos.FieldByName('IdManoObra').AsInteger:=zqCatalogosGenerales.FieldByName('IdManoObra').AsInteger;
          zqDetalleCatalogos.FieldByName('Costo').AsFloat:= 0;
          zqDetalleCatalogos.FieldByName('CostoHoraExtra').AsFloat:=0;
          cxClienteMOD.DataBinding.DataSource.DataSet.FieldByName('IdCliente').AsString := zSub.FieldByName('IdCliente').AsString;
          cbMoneda.DataBinding.DataSource.DataSet.FieldByName('IdMoneda').AsString := zSub2.FieldByName('IdMoneda').AsString;
        end;
      end;
      10: begin
        global_frmActivo:='Kit Equipo';
        Application.CreateForm(TfrmAgregarMasivoOP, frmAgregarMasivoOP);
        frmAgregarMasivoOP.show
      end;
  end;
end;

procedure TfrmCatalogosOperacion.cxViewCatalogosDblClick(Sender: TObject);
begin
    if cxViewCatalogos.OptionsView.CellAutoHeight then
       cxViewCatalogos.OptionsView.CellAutoHeight := False
    else
       cxViewCatalogos.OptionsView.CellAutoHeight := True;
end;

procedure TfrmCatalogosOperacion.dxNavBar1Item1Click(Sender: TObject);
begin
    PanelLateral.Visible:= False;
    cxSplitterLateral.Visible:= False;
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    zqDetalleCatalogos.Filtered:=False;
    frmBarraH11.btnDetalle.Enabled:=False;
    IsOpen:=False;
    //donde estoy
    seleccion:='1';
    cxLeyenda.Caption:='Familias ';
    //consulta
    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'alm_familias',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Id,Codigo,Mto',['-1','-1',aplica]);
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
    dxLayoutItem13.Caption:='Clasificacion';
    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=True;
    cxViewCatalogos.Columns[4].Visible:=True;
    cxViewCatalogos.Columns[5].Visible:=True;

    // tamaño de columnas
    //cxViewCatalogos.OptionsView.CellAutoHeight:=True;;

    dxLayoutItem1.Visible:=True;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem3.Visible:=True;
    dxLayoutItem5.Visible:=True;
    dxLayoutItem13.Visible:=True;
    //Items ocultos
    dxLayoutItem4.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;
end;

procedure TfrmCatalogosOperacion.dxNavBar1Item2Click(Sender: TObject);
begin
    PanelLateral.Visible:= False;
    cxSplitterLateral.Visible:= False;
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    zqDetalleCatalogos.Filtered:=False;
    frmBarraH11.btnDetalle.Enabled:=False;
    IsOpen:=False;
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
    dxLayoutItem13.Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
end;

procedure TfrmCatalogosOperacion.dxNavBar1Item3Click(Sender: TObject);
begin
    PanelLateral.Visible:= False;
    cxSplitterLateral.Visible:= False;
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    zqDetalleCatalogos.Filtered:=False;
    frmBarraH11.btnDetalle.Enabled:=False;
    IsOpen:=False;
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
    dxLayoutItem13.Visible:=False;
end;

procedure TfrmCatalogosOperacion.dxNavBar1Item4Click(Sender: TObject);
begin
    PanelLateral.Visible:= False;
    cxSplitterLateral.Visible:= False;
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    zqDetalleCatalogos.Filtered:=False;
    frmBarraH11.btnDetalle.Enabled:=False;
    IsOpen:=False;
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
    dxLayoutItem1.Visible:=False;
    dxLayoutItem3.Visible:=False;
    dxLayoutItem5.Visible:=False;
end;

procedure TfrmCatalogosOperacion.dxNavBar1Item5Click(Sender: TObject);
begin
    PanelLateral.Visible:= False;
    cxSplitterLateral.Visible:= False;
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    zqDetalleCatalogos.Filtered:=False;
    frmBarraH11.btnDetalle.Enabled:=False;
    IsOpen:=False;
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
    dxLayoutItem1.Visible:=False;
    dxLayoutItem2.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem5.Visible:=False;
end;

procedure TfrmCatalogosOperacion.dxNavBar1Item6Click(Sender: TObject);
begin
    PanelLateral.Visible:= False;
    cxSplitterLateral.Visible:= False;
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    zqDetalleCatalogos.Filtered:=False;
    frmBarraH11.btnDetalle.Enabled:=False;
    IsOpen:=False;
    //donde estoy
    seleccion:='8';
    cxLeyenda.Caption:='Ingenieria';
    //consulta

    zqSub.Active:=False;
    zqSub.SQL.Text:='SELECT * FROM master_medidas';
    zqSub.Open;

    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'catalogo_ingenieria',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Activo',['Si']);
    zqCatalogosGenerales.Open;

    //relacionar columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Descripcion';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Description';
    cxViewCatalogos.Columns[3].DataBinding.FieldName:='Medida';
    cxViewCatalogos.Columns[4].DataBinding.FieldName:='Costo';
    cxViewCatalogos.Columns[5].DataBinding.FieldName:='Precio';

    cxCodigo.DataBinding.DataField:='Codigo';
    cxDescripciones.DataBinding.DataField:='Descripcion';
    cxDescripcion2.DataBinding.DataField:='Description';

    cxFamilia.DataBinding.DataField:='IdMedida';
    cxFamilia.Properties.KeyFieldNames:='IdMedida';
    cxFamilia.Properties.ListFieldNames:='Nombre';
    edtCampo5.DataBinding.DataField:='Costo';
    edtCampo6.DataBinding.DataField:='Precio';

    //Captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Descripcion';
    cxViewCatalogos.Columns[2].Caption:='Description';
    cxViewCatalogos.Columns[3].Caption:='Medida';
    cxViewCatalogos.Columns[4].Caption:='Costo';
    cxViewCatalogos.Columns[5].Caption:='Precio';

    dxLayoutItem2.Caption:='Código:';
    dxLayoutItem1.Caption:='Medida:';
    dxLayoutItem3.Caption:='Descripcion:';
    dxLayoutItem7.Caption:='Description:';
    dxLayoutItem8.Caption:='Costo:';
    dxLayoutItem9.Caption:='Precio:';

    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=True;
    cxViewCatalogos.Columns[4].Visible:=True;
    cxViewCatalogos.Columns[5].Visible:=True;

    dxLayoutItem2.Visible:=True;
    dxLayoutItem1.Visible:=True;
    dxLayoutItem3.Visible:=True;
    dxLayoutItem7.Visible:=True;
    dxLayoutItem8.Visible:=True;
    dxLayoutItem9.Visible:=True;
    //Items ocultos
    dxLayoutItem5.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem10.Visible:=False;
    dxLayoutItem13.Visible:=False;
end;

procedure TfrmCatalogosOperacion.dxNavBar1Item7Click(Sender: TObject);
begin
    PanelLateral.Visible:= False;
    cxSplitterLateral.Visible:= False;
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    zqDetalleCatalogos.Filtered:=False;
    frmBarraH11.btnDetalle.Enabled:=False;
    IsOpen:=False;
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
    cxCodigo.DataBinding.DataField:='Codigo';
    cxDescripciones.DataBinding.DataField:='Nombre';
    //Captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Nombre';
    dxLayoutItem2.Caption:='Código:';
    dxLayoutItem3.Caption:='Nombre:';
    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    dxLayoutItem2.Visible:=True;
    dxLayoutItem3.Visible:=True;
    //Items ocultos
    cxViewCatalogos.Columns[2].Visible:=False;
    cxViewCatalogos.Columns[3].Visible:=False;
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    dxLayoutItem1.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem7.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;
    dxLayoutItem13.Visible:=False;
end;

procedure TfrmCatalogosOperacion.dxNavBar1Item8Click(Sender: TObject);
begin
    PanelLateral.Visible:= False;
    cxSplitterLateral.Visible:= False;
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    zqDetalleCatalogos.Filtered:=False;
    frmBarraH11.btnDetalle.Enabled:=False;
    IsOpen:=False;
    //donde estoy
    seleccion:='9';
    cxLeyenda.Caption:='Logistica';
    //consulta


    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'catalogo_gastos',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Activo',['Si']);
    zqCatalogosGenerales.Open;

    //relacionar columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Descripcion';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Description';
    cxViewCatalogos.Columns[3].DataBinding.FieldName:='Costo';
    cxViewCatalogos.Columns[4].DataBinding.FieldName:='Precio';

    cxCodigo.DataBinding.DataField:='Codigo';
    cxDescripciones.DataBinding.DataField:='Descripcion';
    cxDescripcion2.DataBinding.DataField:='Description';
    edtCampo5.DataBinding.DataField:='Costo';
    edtCampo6.DataBinding.DataField:='Precio';

    //Captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Descripcion';
    cxViewCatalogos.Columns[2].Caption:='Description';
    cxViewCatalogos.Columns[3].Caption:='Costo';
    cxViewCatalogos.Columns[4].Caption:='Precio';

    dxLayoutItem2.Caption:='Código:';
    dxLayoutItem3.Caption:='Descripcion:';
    dxLayoutItem7.Caption:='Description:';
    dxLayoutItem8.Caption:='Costo:';
    dxLayoutItem9.Caption:='Precio:';

    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=True;
    cxViewCatalogos.Columns[4].Visible:=True;

    dxLayoutItem2.Visible:=True;
    dxLayoutItem3.Visible:=True;
    dxLayoutItem7.Visible:=True;
    dxLayoutItem8.Visible:=True;
    dxLayoutItem9.Visible:=True;
    //Items ocultos
    dxLayoutItem1.Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem10.Visible:=False;
    dxLayoutItem13.Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
end;

procedure TfrmCatalogosOperacion.dxNavBar1Item9Click(Sender: TObject);
begin
  PanelLateral.Visible:= False;
  cxSplitterLateral.Visible:= False;
  zqDetalleCatalogos.Filtered:=False;
  frmBarraH11.btnDetalle.Enabled:=True;
  IsOpen:=False;
  seleccion:='10';
  cxLeyenda.Caption:='Kit Equipo';
  //consulta

  zqCatalogosGenerales.Active:=False;
  zqCatalogosGenerales.SQL.Clear;
  AsignarSQL(zqCatalogosGenerales,'op_kit_equipo',pUpdate);
  FiltrarDataSet(zqCatalogosGenerales,'Activo',['Si']);
  zqCatalogosGenerales.Open;

  //relacionar columnas y textfields
  cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
  cxViewCatalogos.Columns[1].DataBinding.FieldName:='Descripcion';
  cxViewCatalogos.Columns[2].DataBinding.FieldName:='Description';
  cxViewCatalogos.Columns[3].DataBinding.FieldName:='Fecha';
  cxViewCatalogos.Columns[4].DataBinding.FieldName:='Costo';

  cxCodigo.DataBinding.DataField:='Codigo';
  cxDescripciones.DataBinding.DataField:='Descripcion';
  cxDescripcion2.DataBinding.DataField:='Description';
  edtCampo5.DataBinding.DataField:='Costo';
  edtFecha.DataBinding.DataField:='Fecha';


  //Captions
  cxViewCatalogos.Columns[0].Caption:='Código';
  cxViewCatalogos.Columns[1].Caption:='Descripcion';
  cxViewCatalogos.Columns[2].Caption:='Description';
  cxViewCatalogos.Columns[3].Caption:='Fecha';
  cxViewCatalogos.Columns[4].Caption:='Costo';


  dxLayoutItem2.Caption:='Código:';
  dxLayoutItem3.Caption:='Descripcion:';
  dxLayoutItem7.Caption:='Description:';
  dxLayoutItem8.Caption:='Costo';
  dxLayoutItem10.Caption:='Fecha:';

  //Items visibles
  cxViewCatalogos.Columns[0].Visible:=True;
  cxViewCatalogos.Columns[1].Visible:=True;
  cxViewCatalogos.Columns[2].Visible:=True;
  cxViewCatalogos.Columns[3].Visible:=True;
  cxViewCatalogos.Columns[4].Visible:=True;

  dxLayoutItem2.Visible:=True;
  dxLayoutItem3.Visible:=True;
  dxLayoutItem7.Visible:=True;
  dxLayoutItem8.Visible:=True;
  dxLayoutItem10.Visible:=True;
  //Items ocultos
  dxLayoutItem1.Visible:=False;
  dxLayoutItem5.Visible:=False;
  dxLayoutItem4.Visible:=False;
  dxLayoutItem6.Visible:=False;
  dxLayoutItem9.Visible:=False;
  dxLayoutItem13.Visible:=False;
  cxViewCatalogos.Columns[5].Visible:=False;

  //DETALLE DEL CATALOGO

  //Consulta
  zqDetalleCatalogos.Active:=False;
  zqDetalleCatalogos.SQL.Clear;
  AsignarSQL(zqDetalleCatalogos,'detalle_kit',pUpdate);
  FiltrarDataSet(zqDetalleCatalogos,'Activo',['Si']);
  zqDetalleCatalogos.Open;
  if zqCatalogosGenerales.RecordCount > 0 then begin
    zqDetalleCatalogos.Filtered:=False;
    zqDetalleCatalogos.Filter:='IdKit = '+zqCatalogosGenerales.FieldByName('IdKit').AsString;
    zqDetalleCatalogos.Filtered:=True;
  end;
  //relacionar los columnas y textfields
  ViewDetalle.Columns[0].DataBinding.FieldName:='Material';
  ViewDetalle.Columns[1].DataBinding.FieldName:='Cantidad';


  edtDetalle.DataBinding.DataField:='Cantidad';

  //captions
  ViewDetalle.Columns[0].Caption:='Material';
  ViewDetalle.Columns[1].Caption:='Cantidad';

  dxLayoutItem12.Caption:='Cantidad:';

  //Items visibles
  ViewDetalle.Columns[0].Visible:=True;
  ViewDetalle.Columns[1].Visible:=True;
  dxLayoutItem12.Visible:=True;

  //Items ocultos
  dxLayoutItem11.Visible:=False;
  //para habilitar el evento del afterscrooll
  isOpen:=True;
end;

procedure TfrmCatalogosOperacion.dxGeneralesClick(Sender: TObject);
begin
    dxNavBar1Item11Click(Sender);
end;

procedure TfrmCatalogosOperacion.dxMantenimientoClick(Sender: TObject);
begin
    dxNavBar1Item14Click(Sender);
end;

procedure TfrmCatalogosOperacion.dxNavBar1Item10Click(Sender: TObject);
begin
    PanelLateral.Visible:= False;
    cxSplitterLateral.Visible:= False;
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    zqDetalleCatalogos.Filtered:=False;
    IsOpen:=False;
    //Donde estoy
    seleccion:='-1';
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
    dxLayoutItem1.Visible:=False;
    dxLayoutItem4.Visible:=False;
end;

procedure TfrmCatalogosOperacion.dxNavBar1Item11Click(Sender: TObject);
begin
    PanelLateral.Visible:= False;
    cxSplitterLateral.Visible:= False;
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    zqDetalleCatalogos.Filtered:=False;
    frmBarraH11.btnDetalle.Enabled:=False;
    IsOpen:=False;
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
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Nombre';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Activo';
    cxCodigo.DataBinding.DataField:='Codigo';
    cxDescripciones.DataBinding.DataField:='Nombre';
    dxActivo.DataBinding.DataField:='Activo';
    //captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Grupo';
    cxViewCatalogos.Columns[2].Caption:='Activo';
    dxLayoutItem2.Caption:='Código:';
    dxLayoutItem3.Caption:='Nombre:';
    dxActivo.Caption:='Activo:';
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
    dxLayoutItem13.Visible:=False;
end;

procedure TfrmCatalogosOperacion.dxNavBar1Item12Click(Sender: TObject);
begin
    PanelLateral.Visible:= False;
    cxSplitterLateral.Visible:= False;
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    zqDetalleCatalogos.Filtered:=False;
    frmBarraH11.btnDetalle.Enabled:=False;
    IsOpen:=False;
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
    cxViewCatalogos.Columns[4].Visible:=False;

end;

procedure TfrmCatalogosOperacion.dxNavBar1Item13Click(Sender: TObject);
begin
    PanelLateral.Visible:= False;
    cxSplitterLateral.Visible:= False;
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    zqDetalleCatalogos.Filtered:=False;
    frmBarraH11.btnDetalle.Enabled:=False;
    IsOpen:=False;
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
    dxLayoutItem3.Visible:=False;
    dxLayoutItem4.Visible:=False;


end;

procedure TfrmCatalogosOperacion.dxNavBar1Item14Click(Sender: TObject);
begin
    PanelLateral.Visible:= False;
    cxSplitterLateral.Visible:= False;
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    zqDetalleCatalogos.Filtered:=False;
    frmBarraH11.btnDetalle.Enabled:=False;
    IsOpen:=False;
    //Donde Estoy
    seleccion:='6';
    cxLeyenda.Caption:='Grupos Presupuesto';
    //Consulta
    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'tipo_recurso',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Activo',['-1']);
    zqCatalogosGenerales.Open;
    //relacionar los columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Nombre';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Name';
    cxViewCatalogos.Columns[3].DataBinding.FieldName:='Activo';
    cxViewCatalogos.Columns[4].DataBinding.FieldName:='Ordenamiento';

    cxCodigo.DataBinding.DataField:='Codigo';
    cxDescripciones.DataBinding.DataField:='Nombre';
    cxDescripcion2.DataBinding.DataField:='Name';
    dxActivo.DataBinding.DataField:='Activo';
    //captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Nombre';
    cxViewCatalogos.Columns[2].Caption:='Name';
    cxViewCatalogos.Columns[3].Caption:='Activo';
    cxViewCatalogos.Columns[4].Caption:='Ordenamiento';
    dxLayoutItem2.Caption:='Código:';
    dxLayoutItem3.Caption:='Nombre:';
    dxLayoutItem7.Caption:='Name:';
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
    dxLayoutItem7.Visible:=True;
    //Items ocultos
    dxLayoutItem1.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;
    dxLayoutItem13.Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;

end;

procedure TfrmCatalogosOperacion.dxNavBar1Item15Click(Sender: TObject);
begin
    PanelLateral.Visible:= False;
    cxSplitterLateral.Visible:= False;
    cxViewCatalogos.DataController.Groups.ClearGrouping;
    zqDetalleCatalogos.Filtered:=False;
    frmBarraH11.btnDetalle.Enabled:=True;
    IsOpen:=False;
    //donde estoy
    seleccion:='7';
    cxLeyenda.Caption:='Mano de Obra';
    //consulta

    zqSub.Active:=False;
    zqSub.SQL.Text:='SELECT * FROM master_medidas';
    zqSub.Open;

    zqCatalogosGenerales.Active:=False;
    zqCatalogosGenerales.SQL.Clear;
    AsignarSQL(zqCatalogosGenerales,'catalogo_mo',pUpdate);
    FiltrarDataSet(zqCatalogosGenerales,'Activo',['Si']);
    zqCatalogosGenerales.Open;

    //relacionar columnas y textfields
    cxViewCatalogos.Columns[0].DataBinding.FieldName:='Codigo';
    cxViewCatalogos.Columns[1].DataBinding.FieldName:='Descripcion';
    cxViewCatalogos.Columns[2].DataBinding.FieldName:='Description';
    cxViewCatalogos.Columns[3].DataBinding.FieldName:='Medida';

    cxCodigo.DataBinding.DataField:='Codigo';
    cxDescripciones.DataBinding.DataField:='Descripcion';
    cxDescripcion2.DataBinding.DataField:='Description';

    cxFamilia.DataBinding.DataField:='IdMedida';
    cxFamilia.Properties.KeyFieldNames:='IdMedida';
    cxFamilia.Properties.ListFieldNames:='Nombre';

    //Captions
    cxViewCatalogos.Columns[0].Caption:='Código';
    cxViewCatalogos.Columns[1].Caption:='Descripción';
    cxViewCatalogos.Columns[2].Caption:='Description';
    cxViewCatalogos.Columns[3].Caption:='Medida';

    dxLayoutItem2.Caption:='Código:';
    dxLayoutItem1.Caption:='Medida:';
    dxLayoutItem3.Caption:='Descripción:';
    dxLayoutItem7.Caption:='Description:';

    //Items visibles
    cxViewCatalogos.Columns[0].Visible:=True;
    cxViewCatalogos.Columns[1].Visible:=True;
    cxViewCatalogos.Columns[2].Visible:=True;
    cxViewCatalogos.Columns[3].Visible:=True;


    dxLayoutItem2.Visible:=True;
    dxLayoutItem1.Visible:=True;
    dxLayoutItem3.Visible:=True;
    dxLayoutItem7.Visible:=True;
    //Items ocultos
    cxViewCatalogos.Columns[4].Visible:=False;
    cxViewCatalogos.Columns[5].Visible:=False;
    dxLayoutItem5.Visible:=False;
    dxLayoutItem4.Visible:=False;
    dxLayoutItem6.Visible:=False;
    dxLayoutItem8.Visible:=False;
    dxLayoutItem9.Visible:=False;
    dxLayoutItem10.Visible:=False;
    dxLayoutItem13.Visible:=False;
    //consulta
    zqDetalleCatalogos.Active:=False;
    zqDetalleCatalogos.SQL.Clear;
    AsignarSQL(zqDetalleCatalogos,'op_mo_detalle',pUpdate);
    FiltrarDataSet(zqDetalleCatalogos,'Id,ManoObra',[-1,-1]);
    zqDetalleCatalogos.Open;
    if zqCatalogosGenerales.RecordCount > 0 then begin
      zqDetalleCatalogos.Filtered:=False;
      zqDetalleCatalogos.Filter:='IdManoObra = '+zqCatalogosGenerales.FieldByName('IdManoObra').AsString;
      zqDetalleCatalogos.Filtered:=True;
    end;
    IsOpen:=True;
end;

procedure TfrmCatalogosOperacion.Editar1Click(Sender: TObject);
begin
    frmbarraH11.btnEdit.Click
end;

procedure TfrmCatalogosOperacion.Registrar1Click(Sender: TObject);
begin
    frmbarraH21.btnPost.Click
end;

procedure TfrmCatalogosOperacion.abrirdesdecaptura(Sender: TObject);
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
    dxNavBar1Item14.Enabled := False;
    dxNavBar1Item15.Enabled := False;
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
      dxNavBar1Item14.Enabled := True;
      dxNavBar1Item14Click(Sender)
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

procedure TfrmCatalogosOperacion.btnAddClick(Sender: TObject);
begin
  IsOpen:=False;
  titulo:=cxLeyenda.Caption;
  cxLeyenda.Caption:=titulo+'[Añadiendo]';
  pnl1.Visible:=True;
  grid_catalogos.Enabled:=False;
  frmBarraH11.btnAddClick(Sender);
  zqCatalogosGenerales.Append;
  dxActivo.Enabled:=True;
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
  dxNavBar1Item12.Enabled:=False;
  dxNavBar1Item13.Enabled:=False;
  dxNavBar1Item14.Enabled:=False;
  dxNavBar1Item15.Enabled:=False;
  case seleccion.ToInteger(seleccion) of
      1: begin
          dxLayoutItem6.Visible:=True;
          ds_catalogos_generales.DataSet.FieldByName('IdGrupo').AsString:= zqSub.FieldbyName('IdGrupo').AsString;
          ds_catalogos_generales.DataSet.FieldByName('Mantenimiento').AsString:=aplica;
          cbCombo.Text:='N/A';
          dxActivo.Enabled:=False;
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'alm_familias');
      end;
      2:  begin

          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'alm_subfamilia');
      end;
      3: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'alm_marcas');
      end;
      6: begin
          connection.qryUBusca.Active:=False;
          connection.qryUBusca.SQL.Text:='select MAx(ordenamiento) as last from op_tiporecurso';
          Connection.qryUBusca.Open;

          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'op_tiporecurso');
          zqCatalogosGenerales.FieldByName('Activo').AsString:='Si';
          zqCatalogosGenerales.FieldByName('Ordenamiento').AsInteger:= Connection.qryUBusca.FieldByName('last').AsInteger+1;
          cxCodigo.SetFocus;
      end;
      7: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'op_catalogo_mo');
          ds_catalogos_generales.DataSet.FieldByName('IdMedida').AsString:= zqSub.FieldbyName('IdMedida').AsString;
          cxCodigo.SetFocus;
      end;
      8: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'op_catalogo_ingenieria');
          ds_catalogos_generales.DataSet.FieldByName('IdMedida').AsString:= zqSub.FieldbyName('IdMedida').AsString;
          cxCodigo.SetFocus;
      end;
      9: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'op_catalogo_gastos');
          cxCodigo.SetFocus;
      end;
      10: begin
          zqCatalogosGenerales.FieldByName('Codigo').AsString:=autofolio(zqCatalogosGenerales,'op_kit_equipo');
          zqCatalogosGenerales.FieldByName('Fecha').Value:=now;
          cxCodigo.SetFocus;
      end;
  end;

end;

procedure TfrmCatalogosOperacion.btnCancelClick(Sender: TObject);
begin
  cxleyenda.Caption:=titulo;
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
  dxNavBar1Item15.Enabled:=True;
  dxActivo.Enabled:=True;
  dxLayoutItem6.Visible:=False;
  frmBarraH11.btnActive;
  grid_catalogos.Enabled:=True;
  ds_catalogos_generales.DataSet.Cancel;
  isOpen:=True;
  PermisosBotones(frmCatalogosOperacion,btnPermisos);
  abrirdesdecaptura(sender);
end;

procedure TfrmCatalogosOperacion.btnDeleteClick(Sender: TObject);
begin
  If zqCatalogosGenerales.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro en ['+cxLeyenda.Caption+']?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        isOpen:=False;
        zqCatalogosGenerales.Delete;
        zqCatalogosGenerales.ApplyUpdates();
        zqCatalogosGenerales.Refresh;
        isOpen:=True;

      except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo Generales ['+cxLeyenda.Caption+']', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmCatalogosOperacion.btnDetalleClick(Sender: TObject);
begin

  cxPageControl.HideTabs:=True;
  case seleccion.ToInteger(seleccion) of
      7: begin
        PanelLateral.Visible:= not PanelLateral.Visible;
        cxSplitterLateral.Visible:= not cxSplitterLateral.Visible;
        cxLeyenda2.Caption:='Tabuladores de Mano de Obra';
        cxPageControl.ActivePage:=cxTabMO;
        zSub.Active:=false;
        AsignarSQL(zSub,'master_clientes',pUpdate);
        FiltrarDataSet(zSub,'IdCliente',[-1]);
        zSub.Open;
        zSub2.Active:=false;
        AsignarSQL(zSub2,'master_moneda',pUpdate);
        FiltrarDataSet(zSub2,'IdMoneda, Codigo, Activo',[-1, -1, 'Si']);
        zSub2.Open;
      end;
      10: begin
        PanelLateral.Visible:= not PanelLateral.Visible;
        cxSplitterLateral.Visible:= not cxSplitterLateral.Visible;
        cxLeyenda2.Caption:='Detalle Kit Equipo';
        cxPageControl.ActivePage:=cxTabKit;
      end;
  end;
end;

procedure TfrmCatalogosOperacion.btnEditClick(Sender: TObject);
begin
  isOpen:=False;
  titulo:=cxLeyenda.Caption;
  cxLeyenda.Caption:=titulo+'[Editando]';
  pnl1.Visible:=True;
  frmBarraH11.btnEditClick(Sender);
  grid_catalogos.Enabled:=False;
  zqCatalogosGenerales.edit;
  dxActivo.Enabled:=True;
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
    dxNavBar1Item12.Enabled:=False;
    dxNavBar1Item13.Enabled:=False;
    dxNavBar1Item14.Enabled:=False;
    dxNavBar1Item15.Enabled:=False;
  case seleccion.ToInteger(seleccion) of
      1: begin
          dxActivo.Enabled:=False;
          dxLayoutItem6.Visible:=True;
      end;
  end;
end;

procedure TfrmCatalogosOperacion.btnEliminarDetalleClick(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    Actualiza : tUniquery;
begin
  if cxPageControl.ActivePage = cxTabKit then begin
    Actualiza:=tUniquery.create(nil);
    Actualiza.Connection := Connection.uConnection;
    If zqDetalleCatalogos.RecordCount  > 0 then
      if MessageDlg('Desea eliminar el Registro en ['+cxLeyenda2.Caption+']?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        try
          iGrid     := 0;
          indice := ViewDetalle.DataController.GetSelectedRowIndex(iGrid);
          ViewDetalle.DataController.FocusedRowIndex := indice;

          with ViewDetalle.DataController.DataSource.DataSet do
          for iGrid := 0 to ViewDetalle.DataController.GetSelectedCount - 1 do
          begin
           indice := ViewDetalle.DataController.GetSelectedRowIndex(iGrid);
           ViewDetalle.DataController.FocusedRowIndex := indice;

           Actualiza.SQL.Clear;
           Actualiza.SQL.Add('DELETE FROM op_kit_equipo_detalle WHERE IdKitDetalle = :id');
           Actualiza.ParamByName('id').AsString := ViewDetalle.DataController.DataSource.DataSet.FieldByName('IdKitDetalle').AsString;
           Actualiza.ExecSQL;
          end;
          zqDetalleCatalogos.Refresh;
        except
          on E : exception do begin
             UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo Generales ['+cxLeyenda.Caption+']', 'Al eliminar registro', 0);
          end;
        end
      end
  end;

  if cxPageControl.ActivePage = cxTabMO then begin
    if zqDetalleCatalogos.RecordCount>0 then begin
      if MessageDlg('¿Realmente desea eliminar el tabulador seleccionado?',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
        isOpen:=false;
        zqDetalleCatalogos.Delete;
        zqDetalleCatalogos.ApplyUpdates();
        zqDetalleCatalogos.Refresh;
        isOpen:=True;
      end;
    end;
  end;
end;

procedure TfrmCatalogosOperacion.btnPostClick(Sender: TObject);
begin
  cxLeyenda.Caption:=titulo;
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
  dxNavBar1Item15.Enabled:=True;
  frmBarraH11.Enabled:=True;
  dxActivo.Enabled:=True;
  dxLayoutItem6.Visible:=False;
  grid_catalogos.Enabled:=True;
  ds_catalogos_generales.DataSet.Post;
  isOpen:=True;

  if TUniquery(ds_catalogos_generales.DataSet).Connection.InTransaction then
  BEGIN
    TUniquery(ds_catalogos_generales.DataSet).Connection.Commit;
    TUniquery(ds_catalogos_generales.DataSet).Connection.StartTransaction;
  END;


  ds_catalogos_generales.DataSet.Refresh;
  PermisosBotones(frmCatalogosOperacion,btnPermisos);
  abrirdesdecaptura(sender);
end;

procedure TfrmCatalogosOperacion.btnPrinterClick(Sender: TObject);
var
  ban: boolean;
begin
  ban:=False;
  case seleccion.ToInteger(seleccion) of
      7: begin
        ban:=true;
      end;
  end;
  if ban then begin

    if not FileExists(global_files + global_miReporte + '_OPER_TabuladorMO.fr3') then begin
       showmessage('El archivo de reporte '+global_Mireporte+'_OPER_TabuladorMO.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;
    uTabulador.Active:=False;
    AsignarSQL(uTabulador,'tabulador_clientes',pUpdate);
    uTabulador.Open;

    Reporte.LoadFromFile(global_files + global_MiReporte +'_OPER_TabuladorMO.fr3');
    Reporte.ShowReport;
  end
  else
    generar_reporte_grid(cxViewCatalogos,cxLeyenda.Caption);
end;

procedure TfrmCatalogosOperacion.btnRefreshClick(Sender: TObject);
begin
   zqCatalogosGenerales.Refresh;
end;

procedure TfrmCatalogosOperacion.Can1Click(Sender: TObject);
begin
    frmbarraH21.btnCancel.Click
end;

procedure TfrmCatalogosOperacion.Eliminar1Click(Sender: TObject);
begin
    frmbarraH11.btnDelete.Click
end;
end.
