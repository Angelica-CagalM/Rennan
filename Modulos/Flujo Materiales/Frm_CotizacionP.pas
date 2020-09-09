unit Frm_CotizacionP;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutContainer, dxLayoutControl, frm_barraH1, cxSplitter, Vcl.ExtCtrls,
  cxContainer, dxLayoutcxEditAdapters, cxLabel, MemDS, DBAccess, Uni,
  frm_barraH2, cxDropDownEdit, cxCalendar, cxDBEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, unitgenerales, frm_connection, GLOBAL, unitexcepciones,
  cxCurrencyEdit, dxBarBuiltInMenu, cxPC, cxMemo, dxLayoutControlAdapters,
  frxClass, frxDBSet, unitmetodos, Vcl.ComCtrls, dxCore, cxDateUtils,ShellApi;

type
  TFrmCotizacionesP = class(TForm)
    PanelTop: TPanel;
    PanelDetalle: TPanel;
    cxSplitterDetalle: TcxSplitter;
    PanelPrincipal: TPanel;
    frmBarraH11: TfrmBarraH1;
    LayoutDatosGroup_Root: TdxLayoutGroup;
    LayoutDatos: TdxLayoutControl;
    cxSplitterDatos: TcxSplitter;
    viewDatos: TcxGridDBTableView;
    gridDatosLevel1: TcxGridLevel;
    gridDatos: TcxGrid;
    PanelTopD: TPanel;
    viewDetalle: TcxGridDBTableView;
    gridDetalleLevel1: TcxGridLevel;
    gridDetalle: TcxGrid;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    btnEliminarDetalle: TcxButton;
    cxCodigo: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxPresupuesto: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cxFecha: TcxDBDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    frmBarraH21: TfrmBarraH2;
    PanelDatosP: TPanel;
    cxColumn1: TcxGridDBColumn;
    cxColumn2: TcxGridDBColumn;
    cxColumn3: TcxGridDBColumn;
    cxColumn4: TcxGridDBColumn;
    cxColumn5: TcxGridDBColumn;
    uCotizacion: TUniQuery;
    uPresupuestos: TUniQuery;
    uDetalle: TUniQuery;
    uRecursosP: TUniQuery;
    ds_cotizacion: TDataSource;
    ds_presupuesto: TDataSource;
    ds_detalle: TDataSource;
    ds_recursosP: TDataSource;
    cxTitulo: TcxLabel;
    cxColumnD1: TcxGridDBColumn;
    cxColumnD2: TcxGridDBColumn;
    cxColumnD3: TcxGridDBColumn;
    cxColumnD4: TcxGridDBColumn;
    PanelRecurso: TPanel;
    viewRecursos: TcxGridDBTableView;
    griRecursosLevel1: TcxGridLevel;
    griRecursos: TcxGrid;
    frmBarraH22: TfrmBarraH2;
    cxColumnR1: TcxGridDBColumn;
    cxColumnR2: TcxGridDBColumn;
    cxColumnR3: TcxGridDBColumn;
    cxColumnR4: TcxGridDBColumn;
    cxColumnR5: TcxGridDBColumn;
    cxPageDetalle: TcxPageControl;
    cxTabRecursos: TcxTabSheet;
    cxTabComentarios: TcxTabSheet;
    viewComentarios: TcxGridDBTableView;
    gridComentariosLevel1: TcxGridLevel;
    gridComentarios: TcxGrid;
    cxColumnC1: TcxGridDBColumn;
    cxColumnC2: TcxGridDBColumn;
    cxColumnC3: TcxGridDBColumn;
    cxColumnC4: TcxGridDBColumn;
    uComentarios: TUniQuery;
    ds_comentarios: TDataSource;
    PanelComentarios: TPanel;
    PanelbtnsCom: TPanel;
    cxGuardarDetalle: TcxButton;
    cxCancelarDetalle: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxCotizacionC: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxFechaC: TcxDBDateEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxRecursoC: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxComentarioC: TcxDBMemo;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    PanelCotizarA: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxProveedorD: TcxLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    uProveedor: TUniQuery;
    ds_proveedor: TDataSource;
    cxButton1: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    uCotizaProveedor: TUniQuery;
    ds_cotizaProveedor: TDataSource;
    frxReport1: TfrxReport;
    ds_rptCotizaProveedor: TfrxDBDataset;
    uReporte: TUniQuery;
    cxTabRecXProv: TcxTabSheet;
    view_recXprov: TcxGridDBTableView;
    grid_recXprovLevel1: TcxGridLevel;
    grid_recXprov: TcxGrid;
    cxColumnRP1: TcxGridDBColumn;
    cxColumnRP2: TcxGridDBColumn;
    cxColumnRP3: TcxGridDBColumn;
    uRecxProv: TUniQuery;
    ds_recxProv: TDataSource;
    uDetalleIdCotizacionDetalle: TIntegerField;
    uDetalleIdCotizacion: TIntegerField;
    uDetalleIdPresupuestoDetalle: TIntegerField;
    uDetalleCosto: TFloatField;
    uDetalleFechaCotizado: TDateTimeField;
    cxColumnD5: TcxGridDBColumn;
    uDetalleCotizado: TLargeintField;
    cxCreaReq: TcxButton;
    zDatos: TUniQuery;
    zFolio: TUniQuery;
    zSub: TUniQuery;
    PanelCotizacion: TPanel;
    frmBarraH23: TfrmBarraH2;
    cxLabel1: TcxLabel;
    cbFechaInicio: TcxDateEdit;
    cxLabel2: TcxLabel;
    cbFechaFinal: TcxDateEdit;
    uRequisita: TUniQuery;
    Panel1: TPanel;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    Panel2: TPanel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxedtCostoCot: TcxDBCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    dlgPDF: TFileOpenDialog;
    dlgSavePDF: TSaveDialog;
    cxButton4: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    cxLabel3: TcxLabel;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    view_recXprovColumn1: TcxGridDBColumn;
    view_recXprovColumn2: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDetalleClick(Sender: TObject);
    procedure uCotizacionAfterScroll(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnAgregaRecurso(Sender: TObject);
    procedure btnCancelaRecurso(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure btnEliminarDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxPageDetalleChange(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure uDetalleCostoChange(Sender: TField);
    procedure viewDatosDblClick(Sender: TObject);
    procedure viewDetalleDblClick(Sender: TObject);
    procedure viewRecursosDblClick(Sender: TObject);
    procedure viewDetalleStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxCreaReqClick(Sender: TObject);
    procedure frmBarraH23btnPostClick(Sender: TObject);
    procedure frmBarraH23btnCancelClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure view_recXprovCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    procedure addPrequisicion(var last: Integer);
    { Public declarations }
  end;

var
  FrmCotizacionesP: TFrmCotizacionesP;
  isOpen : boolean;
  SavePlace: TBookMark;
  titulo,titulo2 : String;

implementation

{$R *.dfm}

uses Frm_RequisicionMaterial,frm_VerPDF,UnitReportes;
procedure TFrmCotizacionesP.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmCotizacionesP.EnterControl(Sender: TObject);
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

procedure TFrmCotizacionesP.SalidaControl(Sender: TObject);
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

procedure TFrmCotizacionesP.btnAgregaRecurso(Sender: TObject);
var
  uConsulta : TUniQuery;
begin
  //do something
  uConsulta:=TUniQuery.Create(nil);
  uConsulta.Connection:=connection.Uconnection;
  uConsulta.Active:=False;
  if uRecursosP.RecordCount > 0 then begin //checo si se han cargado recursos al presupuesto
    if viewRecursos.DataController.GetSelectedCount > 0 then begin //checo si seleccionó un recurso
      //inicio la validacion para saber si este recurso ya se ha cotizado
      //este proceso es el mismo que se hace en el formulario frmModal
      uConsulta.SQL.Clear;
      uConsulta.SQL.Text:='SELECT pd.* FROM op_cotizacion_presupuesto_detalle pd '+
        'INNER JOIN op_cotizacion_presupuesto p ON (p.IdCotizacion = pd.IdCotizacion AND p.sNumeroOrden = '+
        QuotedStr(uCotizacion.FieldByName('sNumeroOrden').AsString)+')';
      uConsulta.Open;
      if not uConsulta.Locate('IdPresupuestoDetalle',uRecursosP.FieldByName('IdPresupuestoDetalle').AsInteger,[]) then begin
        //cancelo la entrada al after scroll del query cotizaciones, por cualquier cosa
        isOpen:=False;
        uDetalle.Append; //indico al query de detalle que agregaré un registro
        uDetalle.FieldByName('IdCotizacion').AsInteger:=uCotizacion.FieldByName('IdCotizacion').AsInteger;
        uDetalle.FieldByName('IdPresupuestoDetalle').AsInteger:=uRecursosP.FieldByName('IdPresupuestoDetalle').AsInteger;
        uDetalle.FieldByName('FechaCotizado').AsDateTime:=now;
        uDetalle.FieldByName('Costo').AsFloat:=0.0;
        uDetalle.Post;
        isOpen:=True;
      end
      else
        MessageDlg('El recurso ya ha sido agregado a una cotización para este presupuesto',mtInformation,[mbOk],0);
    end
    else
      MessageDlg('Seleccione un recurso a cotizar.',mtInformation,[mbOk],0);
  end
  else
    MessageDlg('No se han agregado recursos al presupuesto.',mtInformation,[mbOk],0);

  uDetalle.Refresh;
end;

procedure TFrmCotizacionesP.btnCancelaRecurso(Sender: TObject);
begin
  //do something else
  PanelRecurso.Visible:=False;
end;

procedure TFrmCotizacionesP.addPrequisicion(var last: Integer);
begin
  connection.zCommand.Active:=False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Text:='Select pd.IdInsumo from alm_insumos pd inner join op_presupuesto_detalle as opd on opd.Codigo=pd.Codigo where '+
  ':sNumeroOrden=opd.sNumeroOrden and :IdTipoRecurso=opd.IdTipoRecurso and :Id=opd.IdPresupuestoDetalle';
  connection.zCommand.ParamByName('sNumeroOrden').AsString:=connection.qryUBusca2.FieldByName('sNumeroOrden').AsString;
  connection.zCommand.ParamByName('IdTipoRecurso').AsInteger:=connection.qryUBusca2.FieldByName('IdTipoRecurso').AsInteger;
  connection.zCommand.ParamByName('Id').AsInteger:=connection.qryUBusca2.FieldByName('IdPresupuestoDetalle').AsInteger;
  connection.zCommand.Open;

  zSub.Active := False ;
  zSub.SQL.Clear ;
  zSub.SQL.Add('INSERT INTO anexo_prequisicion ( sContrato, iFolioRequisicion, IdInsumo, IdOrdenCompra, mDescripcion, IdMedida, dFechaRequerimiento, ' +
                              'dCantidad, dCosto, sNumeroActividad, sWbs, sNumeroOrden, iPeriodo, IdTipoRecurso) '  +
                              'VALUES (:Contrato, :Folio, :Insumo, 0, :Descripcion, :Medida, :Requerido, :Cantidad, 0.00, :Actividad, ' +
                              ':Wbs, :Orden, :Periodo, :IdTipoRecurso) ' );
  zSub.Params.ParamByName('Contrato').DataType     := ftString ;
  zSub.Params.ParamByName('Contrato').value        := Global_Contrato ;
  zSub.Params.ParamByName('Folio').DataType        := ftString ;
  zSub.Params.ParamByName('Folio').value           := last ;
  zSub.Params.ParamByName('Insumo').DataType       := ftString ;
  zSub.Params.ParamByName('Insumo').value          := connection.qryUBusca2.FieldValues['IDRecurso'] ;
  if  zSub.Params.ParamByName('Insumo').value = -1 then
  zSub.Params.ParamByName('Insumo').value          := connection.zCommand.FieldValues['IdInsumo'] ;
  zSub.Params.ParamByName('Descripcion').DataType  := ftMemo ;
  zSub.Params.ParamByName('Descripcion').value     := connection.qryUBusca2.FieldValues['Descripcion'] ;
  zSub.Params.ParamByName('Medida').DataType       := ftString ;
  zSub.Params.ParamByName('Medida').value          := connection.qryUBusca2.FieldValues['IdMedida'] ;
  zSub.Params.ParamByName('Requerido').DataType    := ftDate ;
  zSub.Params.ParamByName('Requerido').value       := cbFechaInicio.Date;
  zSub.Params.ParamByName('Cantidad').DataType     := ftFloat ;
  zSub.Params.ParamByName('Cantidad').value        := connection.qryUBusca2.FieldValues['Cantidad'] ;
  zSub.Params.ParamByName('Wbs').DataType          := ftString ;
  zSub.Params.ParamByName('Actividad').value   := 'S/N' ;
  zSub.Params.ParamByName('Wbs').value         := '' ;
  zSub.Params.ParamByName('Orden').DataType        := ftString ;
  zSub.Params.ParamByName('Orden').value           := connection.qryUBusca2.FieldByName('sNumeroOrden').AsString;;
  zSub.Params.ParamByName('Periodo').AsInteger     := Connection.uconfiguracion.FieldByName('iEjercicio').AsInteger;
  zSub.Params.ParamByName('IdTipoRecurso').AsInteger     := connection.qryUBusca2.FieldByName('IdTipoRecurso').AsInteger;
  zSub.ExecSQL ;
end;

procedure TFrmCotizacionesP.btnAddClick(Sender: TObject);
begin
  isOpen:=False;
  uCotizacion.Append;
  uCotizacion.FieldByName('FechaCreacion').AsDateTime:=Now;
  uCotizacion.FieldByName('Codigo').AsString := autofolio(uCotizacion, 'op_cotizacion_presupuesto');
  uCotizacion.FieldByName('sIdUsuario').AsString:=GLOBAL_USUARIO;
  PanelDatosP.Visible:=True;
  cxSplitterDatos.Visible:=True;
  frmBarraH11.btnAddClick(Sender);
  cxNuevoDetalle.Enabled:=False;
  cxEditaDetalle.Enabled:=False;
  btnEliminarDetalle.Enabled:=False;
end;

procedure TFrmCotizacionesP.btnCancelClick(Sender: TObject);
begin
  uCotizacion.Cancel;
  PanelDatosP.Visible:=False;
  cxSplitterDatos.Visible:=False;
  cxCodigo.Enabled:=True;
  cxPresupuesto.Enabled:=True;
  frmBarraH11.btnActive;
  cxNuevoDetalle.Enabled:=True;
  cxEditaDetalle.Enabled:=True;
  btnEliminarDetalle.Enabled:=True;
end;

procedure TFrmCotizacionesP.btnDeleteClick(Sender: TObject);
begin
  try
    if uDetalle.RecordCount > 0 then begin
      MessageDlg('La cotización ya cuenta con recursos cargados, no es posible eliminarla.',mtInformation,[mbOk],0);
    end
    else begin
      if MessageDlg('¿Realmente desea eliminar la cotización ['+uCotizacion.FieldByName('Codigo').AsString+'] ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
        isOpen:=False;
        uCotizacion.Delete;
        savePlace:=uCotizacion.GetBookmark;
        uCotizacion.ApplyUpdates();
        uCotizacion.Refresh;
        isOpen:=True;
        MessageDlg('¡La cotización ha sido eliminada con éxito!',mtInformation,[mbOk],0);
         try
            uCotizacion.GotoBookmark(SavePlace);
          except
          else
            uCotizacion.FreeBookmark(SavePlace);
          end;
      end;

    end;
  except
    on e: exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cotizaciones de Presupuesto', 'Al eliminar registro', 0);
        end;
  end;
end;

procedure TFrmCotizacionesP.btnDetalleClick(Sender: TObject);
begin
  PanelDetalle.Visible:=not PanelDetalle.Visible;
  cxSplitterDetalle.Visible:= not cxSplitterDetalle.Visible;
end;

procedure TFrmCotizacionesP.btnEditClick(Sender: TObject);
begin
  try
    if uDetalle.RecordCount > 0 then begin
      MessageDlg('La cotización ya tiene recursos cargados, sólo se podrá modificar la fecha requerida. ',mtInformation,[mbOk],0);
      isOpen:=False;
      uCotizacion.Edit;
      cxCodigo.Enabled:=False;
      cxPresupuesto.Enabled:=False;
      PanelDatosP.Visible:=True;
      cxSplitterDatos.Visible:=True;
      frmBarraH11.btnEditClick(Sender);
      cxNuevoDetalle.Enabled:=False;
      cxEditaDetalle.Enabled:=False;
      btnEliminarDetalle.Enabled:=False;
    end
    else
    begin
      isOpen:=False;
      uCotizacion.Edit;
      PanelDatosP.Visible:=True;
      cxSplitterDatos.Visible:=True;
      frmBarraH11.btnAddClick(Sender);
      cxNuevoDetalle.Enabled:=False;
      cxEditaDetalle.Enabled:=False;
      btnEliminarDetalle.Enabled:=False;
    end;

  except
    on e:Exception do begin
      UnitExcepciones.ManejarExcep(E.Message,e.ClassName,'Cotizaciones de Presupuesto','Al editar registro',0);
    end;
  end;
end;

procedure TFrmCotizacionesP.btnEliminarDetalleClick(Sender: TObject);
var
indice, iGrid    : integer;
begin
  if cxPageDetalle.ActivePage = cxTabRecursos then begin
    if uDetalle.RecordCount > 0  then begin
      if viewDetalle.DataController.GetSelectedCount > 0 then begin
        if MessageDlg('¿Realmente desea eliminar el recurso de la cotización?',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
          try
                iGrid     := 0;
                try
                  if iGrid<>0 then
                  indice := viewDetalle.DataController.GetSelectedRowIndex(iGrid);
                Except
                  on e:exception do begin
                      //nothing to do
                  end;
                end;

              viewDetalle.DataController.FocusedRowIndex := indice;

              with viewDetalle.DataController.DataSource.DataSet do
              for iGrid := 0 to viewDetalle.DataController.GetSelectedCount - 1 do
              begin
                  indice := viewDetalle.DataController.GetSelectedRowIndex(iGrid);
                  viewDetalle.DataController.FocusedRowIndex := indice;

                  uDetalle.Delete;
                  uDetalle.ApplyUpdates();
              end;
             uDetalle.Refresh;


          except
            on e: Exception do begin
              if e.Message.Contains('constraint fails') then begin
                MessageDlg('No fue posible eliminar el recurso de la cotización.',mtInformation,[mbOk],0);
                uDetalle.Refresh;
              end;
            end;
          end;
        end;
      end
      else
        MessageDlg('Seleccione un elemento a eliminar',mtInformation,[mbOk],0);
    end
    else
      MessageDlg('No hay datos que eliminar',mtInformation,[mbOk],0);
  end;

  if cxPageDetalle.ActivePage = cxTabComentarios then begin
    if uComentarios.RecordCount > 0 then begin
      if AnsiCompareText(GLOBAL_USUARIO,uComentarios.FieldByName('sIdUsuario').AsString) = 0 then begin
        if MessageDlg('¿Realmente desea eliminar el comentario sobre este recurso?',mtConfirmation,[mbYes,mbNo],0)=mrYes then begin
          uComentarios.Delete;
          uComentarios.ApplyUpdates();
          uComentarios.Refresh;
        end;
      end
      else
        MessageDlg('Sólo el usuario que creó el comentario puede eliminarlo',mtInformation,[mbOk],0);
    end
    else
      MessageDlg('No hay comentarios a eliminar',mtInformation,[mbOk],0);
  end;

  if cxPageDetalle.ActivePage = cxTabRecXProv then begin
      if uRecxProv.RecordCount > 0 then begin
        try
          uRecxProv.Delete;
          uRecxProv.ApplyUpdates();
          uRecxProv.Refresh;
        except
          on e: Exception do begin
            if e.Message.Contains('constraint fails') then begin
              MessageDlg('No fue posible eliminar el recurso de la cotización.',mtInformation,[mbOk],0);
              uRecxProv.Refresh;
            end;
          end;
        end;
      end
      else
       MessageDlg('No hay comentarios a eliminar',mtInformation,[mbOk],0);
  end;
end;

procedure TFrmCotizacionesP.btnPostClick(Sender: TObject);
begin
  uCotizacion.Post;
  isOpen:=True;
  PanelDatosP.Visible:=False;
  cxSplitterDatos.Visible:=False;
  cxCodigo.Enabled:=True;
  cxPresupuesto.Enabled:=True;
  frmBarraH11.btnActive;
  cxNuevoDetalle.Enabled:=True;
  cxEditaDetalle.Enabled:=True;
  btnEliminarDetalle.Enabled:=True;
end;

procedure TFrmCotizacionesP.btnPrinterClick(Sender: TObject);
begin
  uReporte.Active:=False;
  AsignarSQL(uReporte,'rpt_cotizar_proveedor',pUpdate);
  FiltrarDataSet(uReporte,'Cotizacion',[uCotizacion.FieldByName('IdCotizacion').AsInteger]);
  uReporte.Open;
  if uReporte.RecordCount > 0 then begin
    frxReport1.LoadFromFile(global_files + global_miReporte + '_COMP_CotizaProveedor.fr3');
    if not FileExists(global_files + global_miReporte + '_COMP_CotizaProveedor.fr3') then
      showmessage('El archivo de reporte '+global_miReporte+'_COMP_CotizaProveedor.fr3 no existe, notifique al administrador del sistema');
    frxReport1.ShowReport();


  end
  else
    MessageDlg('No se han agregado recursos a cotizar para un proveedor',mtInformation,[mbOk],0);
end;

procedure TFrmCotizacionesP.btnRefreshClick(Sender: TObject);
begin
  uCotizacion.Refresh;
end;

procedure TFrmCotizacionesP.cxButton1Click(Sender: TObject);
var
  iGrid,indice : Integer;
  uAux : TUniQuery;
begin
  if viewDetalle.DataController.GetSelectedCount > 0 then begin
    uCotizaProveedor.Active:=False;
    AsignarSQL(uCotizaProveedor,'op_cotizar_proveedor',pUpdate);
    FiltrarDataSet(uCotizaProveedor,'Id,Proveedor',[-1,-1]);
    uCotizaProveedor.Open;
    uAux:=TUniQuery.Create(nil);
    uAux.Connection:=connection.Uconnection;

    with viewDetalle.DataController.DataSource.DataSet do
        for iGrid := 0 to viewDetalle.DataController.GetSelectedCount - 1 do begin
          //las siguientes dos lineas son para posicionar el dataset en cada uno de los registros seleccionados
          indice := viewDetalle.DataController.GetSelectedRowIndex(iGrid);
          viewDetalle.DataController.FocusedRowIndex := indice;
          if not uCotizaProveedor.Locate('IdCotizacionDetalle;IdProveedor',VarArrayOf([viewDetalle.DataController.DataSet.FieldByName('IdCotizacionDetalle').AsInteger,cxProveedorD.EditValue]),[]) then begin
            uAux.Active:=False;
            uAux.SQL.Text:='INSERT INTO op_cotizar_proveedor (IdCotizacionDetalle,IdProveedor) VALUES (:CotizacionDetalle,:Proveedor)';
            uAux.ParamByName('CotizacionDetalle').AsInteger:=viewDetalle.DataController.DataSet.FieldByName('IdcotizacionDetalle').AsInteger;
            uAux.ParamByName('Proveedor').AsInteger:=cxProveedorD.EditValue;
            uAux.Execute;
            uCotizaProveedor.Refresh;
          end;
        end;
  viewDetalle.DataController.ClearSelection;

  end
  else
    MessageDlg('Seleccione uno o más recursos para cotizar',mtInformation,[mbOk],0);

  uDetalle.Refresh;
end;

procedure TFrmCotizacionesP.cxButton2Click(Sender: TObject);
begin
  uRecxProv.Post;
  Panel1.Visible:=False;
end;

procedure TFrmCotizacionesP.cxButton3Click(Sender: TObject);
begin
  uRecxProv.Cancel;
  Panel1.Visible:=False;
end;

procedure TFrmCotizacionesP.cxButton4Click(Sender: TObject);
var
  Archivo,Ext : string;
begin
    dlgPDF.FileName := '';
    dlgPDF.FileTypes.Add.FileMask:='*.pdf';
    if not dlgPDF.Execute() then
      exit;

    Archivo := dlgPDF.FileName;

    if not FileExists(Archivo) then
      raise exception.Create('No se encontro el archivo especificado');

    Ext := ExtractFileExt(Archivo);

    if ( Ext <> '.PDF' ) and ( Ext <> '.pdf' )  then
      raise exception.Create('El archivo no es valido');


    uRecxProv.FieldByName('NombreDoc').AsString := ExtractFileName(Archivo);
    TBlobField(uRecxProv.FieldByName('Archivo')).LoadfromFile(archivo);
    cxLabel3.Caption :=  ExtractFileName(Archivo);
end;

procedure TFrmCotizacionesP.cxCancelarDetalleClick(Sender: TObject);
begin
  uComentarios.Cancel;
  cxNuevoDetalle.Enabled:=True;
  cxEditaDetalle.Enabled:=True;
  btnEliminarDetalle.Enabled:=True;
  frmBarraH11.btnActive;
  PanelbtnsCom.Visible:=False;
  cxComentarioC.Properties.ReadOnly:=True;
end;

procedure TFrmCotizacionesP.cxCreaReqClick(Sender: TObject);
begin
//  if not MostrarFormChild('FrmRequisicionMaterial',global_dxBarManagerPrincipal) Then
//   begin
//        global_btnPermisos := 'btnReqCompras';
//        global_frmActivo:='requisitaXcotizacion';
//        Application.CreateForm(TFrmRequisicionMaterial, FrmRequisicionMaterial);
//        FrmRequisicionMaterial.show;
//        frmRequisicionMaterial.btnAddClick(Sender);
//        if not frmRequisicionMaterial.Qordenes_trabajo.Locate('sNumeroOrden',uCotizacion.FieldByName('sNumeroOrden').AsString,[]) then begin
//          MessageDlg('Aún no es un proyecto',mtInformation,[mbOk],0);
//          frmRequisicionMaterial.btnCancelClick(Sender);
//        end;
//   end;
  PanelCotizacion.Visible:=True;
  zFolio.Active:= False;
  AsignarSQL(zFolio,'anexo_requisicion',pUpdate);
  FiltrarDataSet(zFolio,'contrato,IdDepartamento',[global_contrato, -1]);
  zFolio.Open;

  cbFechaInicio.EditValue:=now;
  cbFechaFinal.EditValue:=now;
end;

procedure TFrmCotizacionesP.cxEditaDetalleClick(Sender: TObject);
begin
  if cxPageDetalle.ActivePage = cxTabRecursos then begin
    if cxColumnD4.Properties.ReadOnly then begin
      cxEditaDetalle.Caption:='Dejar de Editar';
      cxEditaDetalle.Width:=120;
      cxColumnD4.Properties.ReadOnly:=False;
      cxColumnD4.HeaderImageIndex:=146;
      frmBarraH11.btnAddClick(Sender);
      frmBarraH11.btnAdd.Enabled:=False;
      cxNuevoDetalle.Enabled:=False;
      cxEditaDetalle.Enabled:=True;
      btnEliminarDetalle.Enabled:=False;
    end
    else begin
      cxEditaDetalle.Caption:='Editar';
      cxEditaDetalle.Width:=81;
      cxColumnD4.Properties.ReadOnly:=True;
      cxColumnD4.HeaderImageIndex:=-1;
      frmBarraH11.btnActive;
      cxNuevoDetalle.Enabled:=True;
      cxEditaDetalle.Enabled:=True;
      btnEliminarDetalle.Enabled:=True;
    end;
  end;

  if cxPageDetalle.ActivePage = cxTabComentarios then begin
    if uComentarios.RecordCount > 0 then begin
      if AnsiCompareText(GLOBAL_USUARIO,uComentarios.FieldByName('sIdUsuario').AsString) = 0 then begin  //checo si el usuario es el mismo que creo el comentario
        frmBarraH11.btnAddClick(Sender); //deshabilitar los botones superiores y los del detalle
        cxNuevoDetalle.Enabled:=False;
        cxEditaDetalle.Enabled:=False;
        btnEliminarDetalle.Enabled:=False;
        cxComentarioC.Properties.ReadOnly:=False;
        uComentarios.Edit;
        PanelBtnsCom.Visible:=True; //Los botones de aceptar y cancelar
      end
      else
        MessageDlg('Sólo el usuario que creó el comentario puede editarlo',mtInformation,[mbOk],0);
    end
    else
      MessageDlg('No hay comentarios a editar',mtInformation,[mbOk],0);
  end;

  if cxPageDetalle.ActivePage = cxTabRecXProv then begin
    if uRecxProv.RecordCount > 0 then begin
      Panel1.Visible:=True;
      uRecxProv.Edit;
    end;

  end;

end;

procedure TFrmCotizacionesP.cxGuardarDetalleClick(Sender: TObject);
begin
  //este evento sólo se producirá cuando este en el tab de comentarios
  //por eso no hago la validacion del pageActive
  if titulo.IsNullOrEmpty(uComentarios.FieldByName('Comentario').AsString)  then
    MessageDlg('Por favor, escriba un comentario o cancele la operación'+#13+'No pueden haber comentarios vacíos',mtInformation,[mbOk],0)
  else begin
    uComentarios.Post;
    cxNuevoDetalle.Enabled:=True;
    cxEditaDetalle.Enabled:=True;
    btnEliminarDetalle.Enabled:=True;
    frmBarraH11.btnActive;
    PanelbtnsCom.Visible:=False;
    cxComentarioC.Properties.ReadOnly:=True;
  end;
end;

procedure TFrmCotizacionesP.cxNuevoDetalleClick(Sender: TObject);
begin
  if cxPageDetalle.ActivePage = cxTabRecursos then begin
    viewRecursos.DataController.Groups.FullExpand;
    PanelRecurso.Height:=300;
    PanelRecurso.Width:=1000;
    PanelRecurso.Left:=222;
    PanelRecurso.Top:=26;
    PanelRecurso.BringToFront;
    PanelRecurso.Visible:=True;
  end;
  if cxPageDetalle.ActivePage = cxTabComentarios then begin
    frmBarraH11.btnAddClick(Sender); //deshabilitar los botones superiores y los del detalle
    cxNuevoDetalle.Enabled:=False;
    cxEditaDetalle.Enabled:=False;
    btnEliminarDetalle.Enabled:=False;
    cxComentarioC.Properties.ReadOnly:=False;
    uComentarios.Append;
    uComentarios.FieldByName('FechaComentario').AsDateTime:=Now;
    uComentarios.FieldByName('sIdUsuario').AsString:=GLOBAL_USUARIO;
    uComentarios.FieldByName('IdCotizacionDetalle').AsInteger:=uDetalle.FieldByName('IdcotizacionDetalle').AsInteger;
    cxCotizacionC.Text:=uCotizacion.FieldByName('Codigo').AsString;
    uRecursosP.Locate('IdPresupuestoDetalle',uDetalle.FieldByName('IdPresupuestoDetalle').AsInteger,[]);
    cxRecursoC.Text:=uRecursosP.FieldByName('Descripcion').AsString;
    PanelBtnsCom.Visible:=True; //Los botones de aceptar y cancelar
  end;
end;

procedure TFrmCotizacionesP.cxPageDetalleChange(Sender: TObject);
begin
  if uCotizacion.RecordCount > 0 then begin
    if cxPageDetalle.ActivePage = cxTabRecursos  then begin
      uRecursosP.Active:=False;
      AsignarSQL(uRecursosP,'op_presupuesto_detalle',pUpdate);
      FiltrarDataSet(uRecursosP,'NumeroOrden,Contrato',[uCotizacion.FieldByName('sNumeroOrden').AsString,GLOBAL_CONTRATO]);
      uRecursosP.Open;
      uDetalle.Active:=False;
      AsignarSQL(uDetalle,'op_cotizacion_presupuesto_detalle',pUpdate);
      FiltrarDataSet(uDetalle,'Id,Cotizacion',[-1,uCotizacion.FieldByName('IdCotizacion').AsInteger]);
      uDetalle.Open;
    end;

    if cxPageDetalle.ActivePage = cxTabComentarios then begin
      if uDetalle.RecordCount > 0 then begin
        uComentarios.Active:=False;
        AsignarSQL(uComentarios,'op_cotizacion_comentarios',pUpdate);
        FiltrarDataSet(uComentarios,'Id,DetalleCotizacion',[-1,uDetalle.FieldByName('IdCotizacionDetalle').AsInteger]);
        uComentarios.Open;
        cxCotizacionC.Text:=uCotizacion.FieldByName('Codigo').AsString;
        uRecursosP.Locate('IdPresupuestoDetalle',uDetalle.FieldByName('IdPresupuestoDetalle').AsInteger,[]);
        cxRecursoC.Text:=uRecursosP.FieldByName('Descripcion').AsString;
      end;
    end;

    if cxPageDetalle.ActivePage = cxTabComentarios then begin
      if uDetalle.RecordCount > 0 then begin


      end;
    end;

    if cxPageDetalle.ActivePage = cxTabRecXProv then begin
        if uDetalle.RecordCount > 0 then begin
          uRecxProv.Active:=False;
          AsignarSQL(uRecxProv,'recXprov_cotizacion',pUpdate);
          FiltrarDataSet(uRecxProv,'Cotizacion',[uCotizacion.FieldByName('IdCotizacion').AsInteger]);
          uRecxProv.Open;
          view_recXprov.DataController.Groups.FullExpand;
        end;
      end;
  end;
end;

procedure TFrmCotizacionesP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFrmCotizacionesP.FormShow(Sender: TObject);
begin
  PanelDatosP.Visible:=False;
  cxSplitterDatos.Visible:=False;

  uPresupuestos.Active:=False;
  AsignarSQL(uPresupuestos,'ordenesdetrabajo',pUpdate);
  FiltrarDataSet(uPresupuestos,'Contrato,TProyecto',[GLOBAL_CONTRATO,'PRESUPUESTO']);
  uPresupuestos.Open;
  isOpen:=False;
  uCotizacion.DisableControls;
  uCotizacion.Active:=False;
  AsignarSQL(uCotizacion,'op_cotizacion_presupuesto',pUpdate);
  FiltrarDataSet(uCotizacion,'Id,Usuario',[-1,-1]);
  uCotizacion.Open;
  uCotizacion.RecordCount;
  uCotizacion.EnableControls;
  isOpen:=True;

  uProveedor.Active:=False;
  AsignarSQL(uProveedor,'master_proveedores',pUpdate);
  FiltrarDataSet(uProveedor,'IdProveedor',[-1]);
  uProveedor.Open;
   Panel1.Visible:=False;
  if uProveedor.RecordCount > 0 then
    cxProveedorD.EditValue:=uProveedor.FieldByName('IdProveedor').AsInteger;
  uCotizacionAfterScroll(uCotizacion);
  viewDatos.DataController.Groups.FullExpand;
  cxPageDetalle.ActivePage:=cxTabRecursos; //iniciamos con el tab de los recursos

end;

procedure TFrmCotizacionesP.frmBarraH23btnCancelClick(Sender: TObject);
begin
  PanelCotizacion.Visible:=false;
end;

procedure TFrmCotizacionesP.frmBarraH23btnPostClick(Sender: TObject);
var last:Integer;
   personalGrid,tipo,folio : String;
   contPerGrid, j : Integer;
begin
  uRequisita.Active:=False;
  uRequisita.SQL.Clear;
  uRequisita.SQL.Text:='SELECT pd.*, cp.IdProveedor, (SELECT COUNT(*) FROM op_cotizar_proveedor cp WHERE cp.IdCotizacionDetalle = pd.IdCotizacionDetalle) as Cotizado '+
                                'FROM op_cotizacion_presupuesto_detalle pd '+
                                'INNER JOIN op_cotizar_proveedor cp ON (pd.IdCotizacionDetalle = cp.IdCotizacionDetalle) '+
                                'WHERE '+
                                '(:Cotizacion = -1 OR (:Cotizacion <> -1 AND :Cotizacion = pd.IdCotizacion)) '+
                                'group by cp.IdProveedor';

  uRequisita.ParamByName('Cotizacion').AsString:=uDetalle.FieldByName('IdCotizacion').AsString;
  uRequisita.Open;
  uRequisita.RecordCount;

  zDatos.SQL.Clear;
  while not uRequisita.Eof do
  begin
    if uRequisita.FieldByName('IdProveedor').AsInteger<>-1 then
    begin
      folio:=autoFolioCod(zFolio,'anexo_requisicion');
      connection.qryUBusca.Active:=False;
      connection.qryUBusca.SQL.Text:='select u.sNombre, u.IdDepartamento from usuarios as u where u.sIdUsuario = :Usuario';
      connection.qryUBusca.ParamByName('Usuario').AsString:=global_usuario;
      connection.qryUBusca.Open;

      zDatos.Active:=False;
      zDatos.SQL.Add('INSERT INTO anexo_requisicion(sContrato, iFolioRequisicion, sNumFolio, iPeriodo,'+
      ' sNumeroOrden, dIdFecha, dFechaSolicitado, dFechaRequerido, sRequisita, sReferencia, sSolicito, sStatus, mComentarios, sMotivo, sEstado, sLugarEntrega, sIdUsuario, sPrioridad, sAvizarExis, lHojas, lCertificados, IdDepartamento, correo, IdTipoRecurso)'+
      'VALUES (:sContrato, :iFolioRequisicion, :sNumFolio, :iPeriodo, :sNumeroOrden, :dIdFecha, :dFechaSolicitado,'+
      ' :dFechaRequerido, :sRequisita, :sReferencia, :sSolicito, :sStatus, :mComentarios, :sMotivo, :sEstado, :sLugarEntrega, :sIdUsuario, :sPrioridad, '+QuotedStr('No')+', '+QuotedStr('No')+','+QuotedStr('No')+', :IdDepartamento, :correo, :IdTipoRecurso);');

      zDatos.ParamByName('sNumFolio').AsString:=Folio;
      zDatos.ParamByName('sContrato').AsString:=global_Contrato;
      zDatos.ParamByName('iPeriodo').AsInteger:=Connection.uconfiguracion.FieldByName('iEjercicio').AsInteger;
      zDatos.ParamByName('sNumeroOrden').AsString:=uCotizacion.FieldByName('sNumeroOrden').AsString;
      zDatos.ParamByName('dIdFecha').Value:=cbFechaInicio.Date;
      zDatos.ParamByName('dFechaSolicitado').Value:=cbFechaInicio.Date;
      zDatos.ParamByName('dFechaRequerido').Value:=cbFechaFinal.Date;
      zDatos.ParamByName('sRequisita').AsString:=Connection.qryUBusca.FieldByName('sNombre').AsString;;
      zDatos.ParamByName('sReferencia').AsString:=uCotizacion.FieldByName('sNumeroOrden').AsString;
      zDatos.ParamByName('sSolicito').AsString:=GLOBAL_NOMBRE;
      zDatos.ParamByName('sStatus').AsString:='PENDIENTE';
      zDatos.ParamByName('mComentarios').AsString:='*';
      zDatos.ParamByName('sMotivo').AsString:='*';
      zDatos.ParamByName('sEstado').AsString:='PENDIENTE';
      zDatos.ParamByName('sLugarEntrega').AsInteger:=1;
      zDatos.ParamByName('sIdUsuario').AsString:=global_usuario;
      zDatos.ParamByName('sPrioridad').AsString:='Normal';
      zDatos.ParamByName('correo').AsString:='*';
      zDatos.ParamByName('IdDepartamento').AsInteger:=connection.qryUBusca.FieldByName('IdDepartamento').AsInteger;
      zDatos.ParamByName('IdTipoRecurso').AsInteger:=-1;
      zDatos.ExecSQL;

      zDatos.SQL.Clear;
      zDatos.SQL.Text:='select max(iFolioRequisicion) as folio from anexo_requisicion';
      zDatos.Open;


      last:=zDatos.FieldByName('folio').AsInteger;

      connection.qryUBusca2.Active:=False;
      connection.qryUBusca2.SQL.Text:='Select pd.*, (Select Nombre from op_tiporecurso where IdTipoRecurso = pd.IdTipoRecurso) as TipoRecurso '+
      'from op_cotizacion_presupuesto cp '+
      'inner join op_cotizacion_presupuesto_detalle cpd on (cp.IdCotizacion = cpd.IdCotizacion) '+
      'inner join op_presupuesto_detalle pd on (pd.IdPresupuestoDetalle = cpd.IdPresupuestoDetalle ) '+
      'inner join op_cotizar_proveedor cpp ON (cpd.IdCotizacionDetalle = cpp.IdCotizacionDetalle)'+
      'where '+
      '(:NumeroOrden=-1 or (:NumeroOrden<>-1 and pd.sNumeroOrden=:NumeroOrden)) and '+
      '(:Contrato=-1 or (:Contrato<>-1 and pd.sContrato=:Contrato)) and '+
      '(:IdProveedor = -1 OR (:IdProveedor <> -1 AND :IdProveedor = cpp.IdProveedor)) ';
      connection.qryUBusca2.ParamByName('NumeroOrden').AsString:=uCotizacion.FieldByName('sNumeroOrden').AsString;
      connection.qryUBusca2.ParamByName('Contrato').AsString:=global_contrato;
      connection.qryUBusca2.ParamByName('IdProveedor').AsString:=uRequisita.FieldByName('IdProveedor').AsString;
      connection.qryUBusca2.Open;
      connection.qryUBusca2.RecordCount;

      while not connection.qryUBusca2.Eof do
      begin
       addPrequisicion(last);
       connection.qryUBusca2.Next;
      end;
    end;
    zDatos.SQL.Clear;
    uRequisita.Next;
  end;
  ShowMessage('Requisicion guardada con exito');
  PanelCotizacion.Visible:=false;
end;

procedure TFrmCotizacionesP.uCotizacionAfterScroll(DataSet: TDataSet);
begin
  if isOpen then
    if (PanelDetalle.Visible) AND (uCotizacion.RecordCount > 0) then begin
      if cxPageDetalle.ActivePage = cxTabRecursos then begin
        uRecursosP.Active:=False;
        AsignarSQL(uRecursosP,'op_presupuesto_detalle',pUpdate);
        FiltrarDataSet(uRecursosP,'NumeroOrden,Contrato',[uCotizacion.FieldByName('sNumeroOrden').AsString,GLOBAL_CONTRATO]);
        uRecursosP.Open;
        uDetalle.Active:=False;
        AsignarSQL(uDetalle,'op_cotizacion_presupuesto_detalle',pUpdate);
        FiltrarDataSet(uDetalle,'Id,Cotizacion',[-1,uCotizacion.FieldByName('IdCotizacion').AsInteger]);
        uDetalle.Open;
      end;

      if cxPageDetalle.ActivePage = cxTabComentarios then begin
        if uDetalle.RecordCount > 0 then begin
          uComentarios.Active:=False;
          AsignarSQL(uComentarios,'op_cotizacion_comentarios',pUpdate);
          FiltrarDataSet(uComentarios,'Id,DetalleCotizacion',[-1,uDetalle.FieldByName('IdCotizacionDetalle').AsInteger]);
          uComentarios.Open;
        end;
      end;

      if cxPageDetalle.ActivePage = cxTabRecXProv then begin
        if uDetalle.RecordCount > 0 then begin
          uRecxProv.Active:=False;
          AsignarSQL(uRecxProv,'recXprov_cotizacion',pUpdate);
          FiltrarDataSet(uRecxProv,'Cotizacion',[uCotizacion.FieldByName('IdCotizacion').AsInteger]);
          uRecxProv.Open;
          view_recXprov.DataController.Groups.FullExpand;
        end;
      end;

    end;
end;

procedure TFrmCotizacionesP.uDetalleCostoChange(Sender: TField);
var
  uAux : TuniQuery;
begin
  if uDetalle.State = dsEdit then begin
    uAux:=TUniQuery.Create(nil);
    uAux.Connection:=connection.Uconnection;
    uAux.Active:=False;
    uAux.SQL.Text:='UPDATE op_presupuesto_detalle SET Costo= :Costo WHERE IdPresupuestoDetalle = :PresupuestoDetalle';
    uAux.ParamByName('PresupuestoDetalle').AsInteger:=uDetalle.FieldByName('IdPresupuestoDetalle').AsInteger;
    uAux.ParamByName('Costo').AsFloat:=uDetalle.FieldByName('Costo').AsFloat;
    uAux.Execute;
    uAux.Destroy;
  end;
end;

procedure TFrmCotizacionesP.viewDatosDblClick(Sender: TObject);
begin
    if viewDatos.OptionsView.CellAutoHeight then
       viewDatos.OptionsView.CellAutoHeight := False
    else
       viewDatos.OptionsView.CellAutoHeight := True;
end;

procedure TFrmCotizacionesP.viewDetalleDblClick(Sender: TObject);
begin
    if viewDetalle.OptionsView.CellAutoHeight then
       viewDetalle.OptionsView.CellAutoHeight := False
    else
       viewDetalle.OptionsView.CellAutoHeight := True;
end;

procedure TFrmCotizacionesP.viewDetalleStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn : TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Cotizado');
  if VartoStr(ARecord.Values[AColumn.Index]) <> '0' then
    AStyle := connection.cxstylNiv0
  else
    AStyle := connection.cxNormal;

end;

procedure TFrmCotizacionesP.viewRecursosDblClick(Sender: TObject);
begin
    if viewRecursos.OptionsView.CellAutoHeight then
       viewRecursos.OptionsView.CellAutoHeight := False
    else
       viewRecursos.OptionsView.CellAutoHeight := True;
end;

procedure TFrmCotizacionesP.view_recXprovCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var
  Ext:String;
begin
    if not uRecxProv.FieldByName('Archivo').IsNull then
    begin
      if not uRecxProv.FieldByName('NombreDoc').IsNull then
        global_Temp := uRecxProv.FieldByName('NombreDoc').AsString
      else
        global_Temp := 'reembolso_sin_nombre'+'.pdf';

      TBlobField(uRecxProv.FieldByName('Archivo')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp );

      Ext := ExtractFileExt(global_Temp);
      if ( Ext = '.PDF' ) or ( Ext = '.pdf' )  then
      begin
        Application.CreateForm(TFrmVerPDF, FrmVerPDF);
        FrmVerPDF.Caption := global_Temp;
        FrmVerPDF.ShowModal;
      end
      else
      begin
        ShellExecute(FrmCotizacionesP.Handle,nil,PChar(ExtractFilePath(Application.ExeName)+global_Temp),'','',SW_SHOWNORMAL);
       // if FileExists(ExtractFilePath(Application.ExeName)+global_Temp) then
         // DeleteFile(ExtractFilePath(Application.ExeName)+global_Temp);
      end;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
end;

end.
