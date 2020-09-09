unit frm_cotizacionCMMI;

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
  dxSkinXmas2008Blue, cxSplitter, Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, dxBarBuiltInMenu, Vcl.Menus, cxContainer, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxLabel, Vcl.StdCtrls, cxButtons, cxPC,
  frm_barraH2, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, frm_barraH1,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, frm_connection,
  cxTextEdit, dxLayoutControl, MemDS, DBAccess, Uni, unitmetodos, global, unitgenerales,
  cxCurrencyEdit, frxClass, frxDBSet, cxMemo;

type
  TfrmCotizacionCMMI = class(TForm)
    PanelTop: TPanel;
    PanelPrincipal: TPanel;
    PanelDetalle: TPanel;
    cxSplitterPrincipal: TcxSplitter;
    frmBarraH11: TfrmBarraH1;
    viewCotizaciones: TcxGridDBTableView;
    cxGridCotizacionesLevel1: TcxGridLevel;
    cxGridCotizaciones: TcxGrid;
    PanelDatos: TPanel;
    cxSplitterDatos: TcxSplitter;
    frmBarraH21: TfrmBarraH2;
    PanelTopDetalle: TPanel;
    PanelBotDetalle: TPanel;
    cxPageDetalle: TcxPageControl;
    cxTabRecursos: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    viewRecursos: TcxGridDBTableView;
    cxGridRecursosLevel1: TcxGridLevel;
    cxGridRecursos: TcxGrid;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    btnEliminarDetalle: TcxButton;
    cxTitulo: TcxLabel;
    PanelRecurso: TPanel;
    griRecursos: TcxGrid;
    viewRecursosCot: TcxGridDBTableView;
    cxColumnR1: TcxGridDBColumn;
    cxColumnR2: TcxGridDBColumn;
    cxColumnR3: TcxGridDBColumn;
    cxColumnR4: TcxGridDBColumn;
    cxColumnR5: TcxGridDBColumn;
    griRecursosLevel1: TcxGridLevel;
    frmBarraH22: TfrmBarraH2;
    cxColumnR6: TcxGridDBColumn;
    layoutDatosGroup_Root: TdxLayoutGroup;
    layoutDatos: TdxLayoutControl;
    cxCodigo: TcxDBTextEdit;
    itemCodigo: TdxLayoutItem;
    cxProveedores: TcxDBLookupComboBox;
    itemProveedor: TdxLayoutItem;
    cxUsuario: TcxDBTextEdit;
    itemUsuario: TdxLayoutItem;
    cxFechaC: TcxDBDateEdit;
    itemFechaC: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxColumnC1: TcxGridDBColumn;
    cxColumnC2: TcxGridDBColumn;
    cxColumnC3: TcxGridDBColumn;
    cxColumnC4: TcxGridDBColumn;
    uCotizaciones: TUniQuery;
    dsCotizaciones: TDataSource;
    uDetalle: TUniQuery;
    dsDetalle: TDataSource;
    uRecursos: TUniQuery;
    dsRecursos: TDataSource;
    cxColumnCD1: TcxGridDBColumn;
    cxColumnCD2: TcxGridDBColumn;
    cxColumnCD3: TcxGridDBColumn;
    cxColumnCD4: TcxGridDBColumn;
    cxColumnCD5: TcxGridDBColumn;
    cxTitulo2: TcxLabel;
    uProveedores: TUniQuery;
    dsProveedores: TDataSource;
    uReporte: TUniQuery;
    ds_rptCotizaProveedor: TfrxDBDataset;
    frxReport1: TfrxReport;
    cxObservaciones: TcxDBMemo;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure activaBtns;
    procedure desactivaBtns;
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure agregaRecurso(Sender: TObject);
    procedure cancelaRecurso(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxPageDetalleChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure viewCotizacionesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure viewRecursosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure viewRecursosCotCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnEliminarDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure uCotizacionesAfterScroll(DataSet: TDataSet);
    procedure btnPrinterClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCotizacionCMMI: TfrmCotizacionCMMI;
  isOpen: boolean;
  titulo,titulo2 : String;
  savePlace : TBookMark;

implementation

{$R *.dfm}

procedure TfrmCotizacionCMMI.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmCotizacionCMMI.EnterControl(Sender: TObject);
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

procedure TfrmCotizacionCMMI.SalidaControl(Sender: TObject);
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

procedure TfrmCotizacionCMMI.uCotizacionesAfterScroll(DataSet: TDataSet);
begin
  if uCotizaciones.RecordCount > 0 then begin
    if isOpen then begin
      uDetalle.Filtered:=False;
      uDetalle.Filter:='IdCotizacion = '+ucotizaciones.FieldByName('IdCotizacion').AsString;
      uDetalle.Filtered:=True;
      viewRecursos.DataController.Groups.FullExpand;
    end;
  end;
end;

procedure TfrmCotizacionCMMI.viewCotizacionesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  viewCotizaciones.OptionsView.CellAutoHeight:=not ViewCotizaciones.OptionsView.CellAutoHeight;
end;

procedure TfrmCotizacionCMMI.viewRecursosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  viewRecursos.OptionsView.CellAutoHeight:=not viewRecursos.OptionsView.CellAutoHeight;
end;

procedure TfrmCotizacionCMMI.viewRecursosCotCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  viewRecursosCot.OptionsView.CellAutoHeight:=not viewRecursosCot.OptionsView.CellAutoHeight;
end;

procedure TfrmCotizacionCMMI.desactivaBtns;
begin
  frmBarraH11.btnAddClick(nil);
  PanelDatos.Visible:=True;
  cxSplitterDatos.Visible:=True;
  cxNuevoDetalle.Enabled:=False;
  cxEditaDetalle.Enabled:=False;
  btnEliminarDetalle.Enabled:=False;
end;

procedure TfrmCotizacionCMMI.activaBtns;
begin
  frmBarraH11.btnActive;
  cxNuevoDetalle.Enabled:=True;
  cxEditaDetalle.Enabled:=True;
  btnEliminarDetalle.Enabled:=True;
  PanelDatos.Visible:=False;
  cxSplitterDatos.Visible:=False;
end;

procedure TfrmCotizacionCMMI.agregaRecurso(Sender: TObject);
var
  uConsulta: TUniQuery;
  indice, iGrid    : integer;
begin
  //do somehting
  if uRecursos.RecordCount>0 then
  begin
    if viewRecursosCot.DataController.GetSelectedCount>0 then
    begin
      iGrid     := 0;
      try
        indice := viewRecursosCot.DataController.GetSelectedRowIndex(iGrid);
      Except
        on e:exception do begin
            //nothing to do
        end;
      end;

      with viewRecursosCot.DataController.DataSource.DataSet do
      for iGrid := 0 to viewRecursosCot.DataController.GetSelectedCount - 1 do
      begin
        indice := viewRecursosCot.DataController.GetSelectedRowIndex(iGrid);
        viewRecursosCot.DataController.FocusedRowIndex := indice;

          if not uDetalle.Locate('IdRequisicionDetalle',uRecursos.FieldByName('IdPRequisicion').AsInteger,[]) then begin
            uConsulta:=TUniQuery.Create(nil);
            uConsulta.Connection:=connection.Uconnection;
            uConsulta.Active:=False;
            uConsulta.SQL.Text:='INSERT INTO cotizacion_req_detalle (IdCotizacion,IdRequisicionDetalle,FechaCotizado,Costo,Cantidad) VALUES '+
              '(:Cotizacion,:Requisicion,:Fecha,:Costo,:Cantidad)';
            uConsulta.ParamByName('Cotizacion').AsInteger:=uCotizaciones.FieldByName('IdCotizacion').AsInteger;
            uConsulta.ParamByName('Requisicion').AsInteger:=uRecursos.FieldByName('IdPRequisicion').AsInteger;
            uConsulta.ParamByName('Fecha').AsDateTime:=NOW;
            uConsulta.ParamByName('Costo').AsFloat:=0;
            uConsulta.ParamByName('Cantidad').AsFloat:=uRecursos.FieldByName('Sugerido').AsFloat;
            uConsulta.Execute;
            uDetalle.Refresh;
          end
          else
            MessageDlg('Este material ya ha sido añadido a la cotización.',mtInformation,[mbOk],0);

      end;

      end
      else
        MessageDlg('Seleccione un material',mtInformation,[mbOK],0);
  end;
end;

procedure TfrmCotizacionCMMI.cancelaRecurso(Sender: TObject);
begin
  PanelRecurso.Visible:=False;
end;

procedure TfrmCotizacionCMMI.btnAddClick(Sender: TObject);
begin
  if uProveedores.RecordCount > 0 then begin
    isOpen:=False;
    uCotizaciones.Append;
    uCotizaciones.FieldByName('sIdUsuario').AsString:=GLOBAL_USUARIO;
    uCotizaciones.FieldByName('FechaRequerida').AsDateTime:=NOW;
    uCotizaciones.FieldByName('FechaCreacion').AsDateTime:=NOW;
    uCotizaciones.FieldByName('Codigo').AsString:=Autofolio(uCotizaciones,'cotizacion_req');
    uCotizaciones.FieldByName('IdProveedor').AsInteger:=uProveedores.FieldByName('IdProveedor').asInteger;
    uCotizaciones.FieldByName('Observaciones').AsString := '*';
    desactivaBtns;
  end
  else
    MessageDlg('No es posible crear la cotización ya que no se encontraron proveedores',mtInformation,[mbOk],0);
end;

procedure TfrmCotizacionCMMI.btnCancelClick(Sender: TObject);
begin
  uCotizaciones.Cancel;
  activaBtns;
  isOpen:=true;
end;

procedure TfrmCotizacionCMMI.btnDeleteClick(Sender: TObject);
begin
  if uDetalle.RecordCount > 0 then begin
    MessageDlg('La cotización ya cuenta con materiales, no es posible eliminarla',mtInformation,[mbOk],0);
  end
  else
    if uCotizaciones.RecordCount > 0 then begin
      if MessageDlg('¿Realmente desea eliminar la cotización '+uCotizaciones.FieldByName('codigo').AsString+'?',mtConfirmation,[mbYes,mbNo],0)=mrYes then begin
        isOpen:=False;
        uCotizaciones.Delete;
        savePlace:=uCotizaciones.GetBookmark;
        uCotizaciones.ApplyUpdates();
        uCotizaciones.Refresh;
        isOpen:=True;
        MessageDlg('¡La cotización ha sido eliminada con éxito!',mtInformation,[mbOk],0);
         try
            uCotizaciones.GotoBookmark(SavePlace);
          except
          else
            uCotizaciones.FreeBookmark(SavePlace);
          end;
      end;
    end
    else
      MessageDlg('No hay datos a eliminar',mtInformation,[mbOk],0);
end;

procedure TfrmCotizacionCMMI.btnDetalleClick(Sender: TObject);
begin
  PanelDetalle.Visible:=not PanelDetalle.Visible;
  cxSplitterPrincipal.Visible:=not cxSplitterPrincipal.Visible;

end;

procedure TfrmCotizacionCMMI.btnEditClick(Sender: TObject);
begin
  if uCotizaciones.RecordCount > 0 then begin
    isOpen:=False;
    uCotizaciones.Edit;
    desactivaBtns;
  end
  else
    MessageDlg('No se encontraron datos a editar',mtInformation,[mbOk],0);
end;

procedure TfrmCotizacionCMMI.btnEliminarDetalleClick(Sender: TObject);
begin
  if uDetalle.RecordCount>0 then begin
    if viewRecursos.DataController.GetSelectedCount>0 then begin
      if MessageDlg('¿Realmente desea eliminar el material ['+uDetalle.FieldByName('Codigo').AsString+'] de la cotización?',mtConfirmation,[mbYes,mbNo],0)=mrYes then begin
        uDetalle.Delete;
        uDetalle.ApplyUpdates();
        uDetalle.Refresh;
      end;
    end
    else
      MessageDlg('Seleccione un material a eliminar',mtInformation,[mbOk],0);
  end
  else
    MessageDlg('No hay datos a eliminar',mtInformation,[mbOk],0);
end;

procedure TfrmCotizacionCMMI.btnPostClick(Sender: TObject);
begin
  uCotizaciones.Post;
  ucotizaciones.Refresh;
  activaBtns;
  isOpen:=true;

end;

procedure TfrmCotizacionCMMI.btnPrinterClick(Sender: TObject);
begin
  uReporte.Active:=False;
  AsignarSQL(uReporte,'reporte_cotizacion_cliente',pUpdate);
  FiltrarDataSet(uReporte,'Cotizacion',[uCotizaciones.FieldByName('IdCotizacion').AsInteger]);
  uReporte.Open;
  if uReporte.RecordCount > 0 then begin
    frxReport1.LoadFromFile(global_files + global_miReporte + '_COMP_CotizaProveedor.fr3');
    if not FileExists(global_files + global_miReporte + '_COMP_CotizaProveedor.fr3') then
      showmessage('El archivo de reporte '+global_miReporte+'_COMP_CotizaProveedor.fr3 no existe, notifique al administrador del sistema');
    frxReport1.ShowReport();
  end
  else
    MessageDlg('No se han agregado materiales a cotizar para un proveedor',mtInformation,[mbOk],0);

end;

procedure TfrmCotizacionCMMI.btnRefreshClick(Sender: TObject);
begin
  isOpen:=False;

  ucotizaciones.Refresh;
  uDetalle.Refresh;
  uProveedores.Refresh;

  isOpen:=False;
end;

procedure TfrmCotizacionCMMI.cxEditaDetalleClick(Sender: TObject);
begin
  if uDetalle.RecordCount>0 then begin
    if cxColumnCD4.Properties.ReadOnly then begin
      cxEditaDetalle.Caption:='Dejar de Editar';
      cxEditaDetalle.Width:=120;
      cxColumnCD4.HeaderImageIndex:=146;
      cxColumnCD5.HeaderImageIndex:=146;
      cxColumnCD4.Properties.ReadOnly:=False;
      cxColumnCD5.Properties.ReadOnly:=False;
      desactivaBtns;
      PanelDatos.Visible:=False;
      cxSplitterDatos.Visible:=False;
      cxEditaDetalle.Enabled:=True;
    end
    else begin
      cxEditaDetalle.Caption:='Editar';
      cxEditaDetalle.Width:=81;
      cxColumnCD4.HeaderImageIndex:=-1;
      cxColumnCD5.HeaderImageIndex:=-1;
      cxColumnCD4.Properties.ReadOnly:=True;
      cxColumnCD5.Properties.ReadOnly:=True;
      activaBtns;
    end;
  end
  else
    MessageDlg('No se encontraron datos',mtInformation,[mbOk],0);
end;

procedure TfrmCotizacionCMMI.cxNuevoDetalleClick(Sender: TObject);
begin
  if cxPageDetalle.ActivePage = cxTabRecursos then begin
    viewRecursosCot.DataController.Groups.FullExpand;
    PanelRecurso.Height:=430;
    PanelRecurso.Width:=1200;
    PanelRecurso.Left:=222;
    PanelRecurso.Top:=50;
    PanelRecurso.BringToFront;
    PanelRecurso.Visible:=True;
  end;
end;

procedure TfrmCotizacionCMMI.cxPageDetalleChange(Sender: TObject);
begin
  if uCotizaciones.RecordCount > 0 then begin

    if cxPageDetalle.ActivePage= cxTabRecursos then begin

    end;

  end;

end;

procedure TfrmCotizacionCMMI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
guardar_leer_grid(viewCotizaciones,frmCotizacionCMMI,1);
guardar_leer_grid(viewRecursosCot,frmCotizacionCMMI,1);
guardar_leer_grid(viewRecursos,frmCotizacionCMMI,1);
  action:=cafree;
end;

procedure TfrmCotizacionCMMI.FormShow(Sender: TObject);
begin
  titulo:=cxTitulo.Caption;
  isOpen:=False;
  uProveedores.Active:=False;
  AsignarSQL(uProveedores,'master_proveedores',pUpdate);
  FiltrarDataSet(uProveedores,'IdProveedor',[-1]);
  uProveedores.Open;

  uCotizaciones.Active:=False;
  AsignarSQL(uCotizaciones,'cotizacion_req',pUpdate);
  FiltrarDataSet(uCotizaciones,'Id,Usuario,Proveedor',[-1,-1,-1]);
  uCotizaciones.Open;

  if uCotizaciones.RecordCount>0 then begin
    uDetalle.Active:=False;
    AsignarSQL(uDetalle,'cotizacion_req_detalle',pUpdate);
    uDetalle.Open;
    uDetalle.Filtered:=False;
    uDetalle.Filter:='IdCotizacion = '+ucotizaciones.FieldByName('IdCotizacion').AsString;
    uDetalle.Filtered:=True;
    viewRecursos.DataController.Groups.FullExpand;
  end;

  uRecursos.Active:=False;
  AsignarSQL(uRecursos,'materiales_posible_cotizacion',pUpdate);
  FiltrarDataSet(uRecursos,'Almacen',[-1]);
  uRecursos.Open;

  isOpen:=True;

guardar_leer_grid(viewCotizaciones,frmCotizacionCMMI,0);
guardar_leer_grid(viewRecursosCot,frmCotizacionCMMI,0);
guardar_leer_grid(viewRecursos,frmCotizacionCMMI,0);
end;

end.
