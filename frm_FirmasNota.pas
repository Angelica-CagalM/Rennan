unit frm_FirmasNota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, StdCtrls, DBCtrls,
  Mask, ExtCtrls, jpeg, ExtDlgs, DB, Global, Menus, frxClass, frxDBSet,
  ZAbstractRODataset, ZAbstractDataset, ZDataset,
  UnitExcepciones, unittbotonespermisos, UnitValidaTexto, unitactivapop, UFunctionsGHH,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, unitGenerales, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxmdaset,dxRibbon,dxBar, frm_barra, MemDS,
  DBAccess, Uni, cxSplitter, frm_barraH2, cxProgressBar, cxLabel, frm_barraH1,
  dxLayoutControlAdapters, cxButtons;

type
  TfrmFirmasNota = class(TForm)
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    Imprimir1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    cxView_firmas: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_firmas: TcxGrid;
    panelDatos: TPanel;
    colFirmante1: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    colFirmante2: TcxGridDBColumn;
    colFirmante3: TcxGridDBColumn;
    cxFichaIzquierda: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxFichaCentro: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxFichaDerecha: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxModuloReporte: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cxDescripcion: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    PanelSuperior: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    cxLabel1: TcxLabel;
    cxProgressBar1: TcxProgressBar;
    panelInferior: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxSplitterMedio: TcxSplitter;
    PanelGrid: TPanel;
    colPuesto1: TcxGridDBColumn;
    colPuesto2: TcxGridDBColumn;
    colPuesto3: TcxGridDBColumn;
    zFirma2: TUniQuery;
    colFirma4: TcxGridDBColumn;
    ColPuesto4: TcxGridDBColumn;
    cxFichaAdicional: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    ds_firma2: TDataSource;
    dxLayoutGroup1: TdxLayoutGroup;
    cxFicha1: TcxDBTextEdit;
    cxFicha2: TcxDBTextEdit;
    cxFicha3: TcxDBTextEdit;
    cxFicha4: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    colDescripcion: TcxGridDBColumn;
    ds_modulo_reporte: TDataSource;
    uModuloReporte: TUniQuery;
    cxIzquierdo: TcxDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    cxCentro: TcxDBLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    cxDerecho: TcxDBLookupComboBox;
    dxLayoutItem12: TdxLayoutItem;
    cxFirmaAdicional: TcxDBLookupComboBox;
    dxLayoutItem13: TdxLayoutItem;
    cxPuestoIzquierda: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cxPuestoCentro: TcxDBLookupComboBox;
    dxLayoutItem14: TdxLayoutItem;
    cxPuestoDerecha: TcxDBLookupComboBox;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxPuestoAdicional: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    uFirmantes: TUniQuery;
    uPuestos: TUniQuery;
    dsFirmantes: TDataSource;
    dsPuestos: TDataSource;
    cxPersonal: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    cxPuesto: TcxButton;
    dxLayoutItem17: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxPersonalClick(Sender: TObject);
    procedure cxPuestoClick(Sender: TObject);

  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFirmasNota: TfrmFirmasNota;
   botonpermiso: tbotonespermisos;
   sOpcion, lStatusOrig: string;
   Titulo, btnPermisos : String;
implementation

{$R *.dfm}

uses
frm_RequisicionMaterial, frm_EntradaAlmacen, frm_SalidaAlmacen, frm_AprobacionPagos, frm_pedidos,
  Frm_Modal, frm_catalogo_empleados, frm_SolicitudMaterial;

procedure TfrmFirmasNota.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmFirmasNota.EnterControl(Sender: TObject);
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
end;

procedure TfrmFirmasNota.SalidaControl(Sender: TObject);
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
end;

procedure TfrmFirmasNota.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfrmFirmasNota.FormShow(Sender: TObject);
var
  iElemento,iElementsTab : Integer;
  Component : TdxBarLargeButton;
  Component1: TdxBarButton;
  Component2: TdxRibbonTab;
begin
   btnPermisos := global_btnPermisos;
  try
  sMenuP:=stMenu;
  OpcButton := '' ;
  titulo := 'Firmante' ;

  cxSplitterMedio.Visible := False;
  panelDatos.Visible := False;
  panelInferior.Visible := False;

  AsignarSQL(uFirmantes,'rd_firmas_firmantes',pUpdate);
  uFirmantes.Open;

  AsignarSQL(uPuestos,'rd_firmas_puestos',pUpdate);
  uPuestos.Open;

  AsignarSQL(zFirma2, 'rd_firmas', pUpdate);
  FiltrarDataSet(zFirma2, 'IdFirma, Contrato',[ -1, Global_Contrato]);
  zFirma2.Open;

  uModuloReporte.Active := False;
  AsignarSQL(uModuloReporte, 'master_modulos_reporte', pUpdate);
  uModuloReporte.Open;

  except
    on e : exception do
    begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_FirmasNotas', 'Al iniciar formulario', 0);
    end;
  end;
end;

procedure TfrmFirmasNota.btnAddClick(Sender: TObject);
begin
   cxLeyenda.Caption:=titulo + '[Añadiendo]';
   frmBarraH11.btnAddClick(Sender);
   frmBarraH21.btnActive;

   panelInferior.Visible := True;
   PanelDatos.Visible  :=True;
   cxSplitterMedio.Visible := True;

   uModuloReporte.Locate('VistaUsuario',cxModuloReporte.Text,[]);

   zFirma2.Append ;
   zFirma2.FieldByName('sContrato').AsString := global_contrato;
   zFirma2.FieldByName('IdFirmante1').asInteger := uFirmantes.FieldByName('IdFirmante').AsInteger;
   zFirma2.FieldByName('IdFirmante2').asInteger := uFirmantes.FieldByName('IdFirmante').AsInteger;
   zFirma2.FieldByName('IdFirmante3').AsInteger := uFirmantes.FieldByName('IdFirmante').AsInteger;
   zFirma2.FieldByName('IdFirmante4').AsInteger := uFirmantes.FieldByName('IdFirmante').AsInteger;
   zFirma2.FieldByName('sFicha1').AsString := 'ELABORO';
   zFirma2.FieldByName('sFicha2').AsString := 'Vo. Bo.';
   zFirma2.FieldByName('sFicha3').AsString := 'AUTORIZO';
   zFirma2.FieldByName('IdPuesto1').AsInteger := uPuestos.FieldByName('IdPuestoFirmante').AsInteger;
   zFirma2.FieldByName('IdPuesto2').AsInteger := uPuestos.FieldByName('IdPuestoFirmante').AsInteger;
   zFirma2.FieldByName('IdPuesto3').AsInteger := uPuestos.FieldByName('IdPuestoFirmante').AsInteger;
   zFirma2.FieldByName('IdPuesto4').AsInteger := uPuestos.FieldByName('IdPuestoFirmante').AsInteger;
   cxModuloReporte.DataBinding.DataSource.DataSet.FieldByName('IdModuloReporte').AsInteger := uModuloReporte.FieldByName('IdModuloReporte').AsInteger;
   cxDescripcion.SetFocus ;

   if global_frmActivo = 'frm_nota_campo' then
      zFirma2.FieldByName('sDescripcion').AsString := 'FIRMANTES ACTA '+ global_contrato;

   grid_firmas.Enabled := False;
end;

procedure TfrmFirmasNota.btnCancelClick(Sender: TObject);
begin
 try
  frmBarraH21.btnCancelClick(Sender);
  frmBarraH11.btnActive;

  zFirma2.Cancel;


  grid_firmas.Enabled:=True;

  frmBarraH21.btnActive;
  cxLeyenda.Caption:=titulo;
  cxSplitterMedio.Visible := False;
  PanelDatos.Visible  :=False;
  panelInferior.Visible := False;

 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_FirmasNota', 'Al cancelar', 0);
  end;
 end;
end;

procedure TfrmFirmasNota.btnDeleteClick(Sender: TObject);
begin
if zFirma2.RecordCount > 0 then
  if MessageDlg('¿Desea eliminar el registro seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
    try
      zFirma2.Delete;
      zFirma2.ApplyUpdates();
    except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Aprobación de Pago', 'Al eliminar registro.', 0);
        end;
    end;
  end;
end;


procedure TfrmFirmasNota.btnEditClick(Sender: TObject);
begin

   cxLeyenda.Caption:=titulo+'[Editando]';
   frmBarraH11.btnEditClick(Sender);
   frmBarraH21.btnActive;

   panelInferior.Visible := True;
   PanelDatos.Visible  :=True;
   cxSplitterMedio.Visible := True;
   sOpcion := 'Edit';
   try
     zFirma2.Edit;
   except
     on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Firmas Notas ..', 'Al agregar registro', 0);
     end;
   end ;
   cxDescripcion.SetFocus;
   grid_firmas.Enabled := False;

end;


procedure TfrmFirmasNota.btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  iId : integer;
begin
   {Validaciones de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Descripción');
    cadenas.Add(cxDescripcion.Text);
    if not validaTexto(nombres, cadenas, 'Descripción',cxDescripcion.Text) then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    {Continua insercion de datos..}
  try
      if zFirma2.State = dsInsert then
         zFirma2.FieldByName('IdFirma').AsInteger := Noil_maximoId('', 'rd_firmas', 'IdFirma');
      zFirma2.Post ;
      iId := zFirma2.FieldByName('idFirma').AsInteger;

      if (global_frmActivo = 'frm_RequisicionMaterial') or (global_frmActivo = 'frm_SolicitudMaterial') or (global_frmActivo = 'frm_EntradaAlmacen')
      or  (global_frmActivo = 'frm_SalidaAlmacen') or (global_frmActivo = 'frm_AprobacionPagos')
      or (global_frmActivo = 'frm_Pedidos') or (global_frmActivo = 'frm_catalogo_empleados') then begin

       if global_frmActivo = 'frm_RequisicionMaterial' then
         begin
             try
                FrmRequisicionMaterial.zFirma.Refresh ;
                FrmRequisicionMaterial.cxFirma2.DataBinding.DataSource.DataSet.FieldByName('IdFirma').AsInteger := zFirma2.FieldByName('IdFirma').AsInteger;
                FrmRequisicionMaterial.cxFirma2.SetFocus;
             Except
             end;
         end;

        if global_frmActivo = 'frm_SolicitudMaterial' then
         begin
             try
                FrmSolicitudMaterial.zFirma.Refresh ;
                FrmSolicitudMaterial.cxFirma2.DataBinding.DataSource.DataSet.FieldByName('IdFirma').AsInteger := zFirma2.FieldByName('IdFirma').AsInteger;
                FrmSolicitudMaterial.cxFirma2.SetFocus;
             Except
             end;
         end;

          if global_frmActivo = 'frm_EntradaAlmacen' then
         begin
             try
                frmEntradaAlmacen.zFirma.Refresh ;
                frmEntradaAlmacen.cxFirma.DataBinding.DataSource.DataSet.FieldByName('IdFirma').AsInteger := zFirma2.FieldByName('IdFirma').AsInteger;
                frmEntradaAlmacen.cxFirma.SetFocus;
             Except
             end;
         end;

         if global_frmActivo = 'frm_SalidaAlmacen' then
         begin
             try
                frmSalidaAlmacen.zFirma.Refresh ;
                frmSalidaAlmacen.cxFirma.DataBinding.DataSource.DataSet.FieldByName('IdFirma').AsInteger := zFirma2.FieldByName('IdFirma').AsInteger;
                frmSalidaAlmacen.cxFirma.SetFocus;
             Except
             end;
         end;

          if global_frmActivo = 'frm_AprobacionPagos' then
         begin
             try
                frmAprobacionP.zFirma.Refresh ;
                frmAprobacionP.cxFirma.DataBinding.DataSource.DataSet.FieldByName('IdFirma').AsInteger := zFirma2.FieldByName('IdFirma').AsInteger;
                frmAprobacionP.cxFirma.SetFocus;
             Except
             end;
         end;

             if global_frmActivo = 'frm_Pedidos' then
         begin
             try
                frmPedidos.zFirma.Refresh ;
                frmPedidos.cxFirma.DataBinding.DataSource.DataSet.FieldByName('IdFirma').AsInteger := zFirma2.FieldByName('IdFirma').AsInteger;
                frmPedidos.cxFirma.SetFocus;
             Except
             end;
         end;
           if global_frmActivo = 'frm_catalogo_empleados' then
         begin
             try
                frmCatalogoEmpleados.zFirma.Refresh;
                frmCatalogoEmpleados.lcbFirma.DataBinding.DataSource.DataSet.FieldByName('IdFirma').AsInteger:= zFirma2.FieldByName('IdFirma').AsInteger;
                frmCatalogoEmpleados.lcbFirma.SetFocus;
             Except
             end;
         end;

      end;

      grid_firmas.Enabled := True;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Firmas Notas..', 'Al salvar registro', 0);
      end;
  end;

  if sOpcion = 'Edit' then
  begin
      grid_firmas.Enabled := True;
      sOpcion := '';
  end;

  frmBarraH11.btnActive;
  cxLeyenda.Caption:=titulo;
  cxSplitterMedio.Visible := False;
  PanelDatos.Visible  :=False;
  panelInferior.Visible := False;
  frmBarraH11.Visible:=True;

end;

procedure TfrmFirmasNota.btnRefreshClick(Sender: TObject);
begin
 zFirma2.Refresh;
end;

procedure TfrmFirmasNota.cxPersonalClick(Sender: TObject);
begin
    Application.CreateForm(TFrmModal, FrmModal);
    frmModal.cxPageModal.ActivePage:=frmModal.cxTabPersonalFirma;
    frmModal.cxPageModal.HideTabs:=True;
    FrmModal.show
end;

procedure TfrmFirmasNota.cxPuestoClick(Sender: TObject);
begin
Application.CreateForm(TFrmModal, FrmModal);
    frmModal.cxPageModal.ActivePage:=frmModal.cxTabPuestoFirma;
    frmModal.cxPageModal.HideTabs:=True;
    FrmModal.show
end;

end.

