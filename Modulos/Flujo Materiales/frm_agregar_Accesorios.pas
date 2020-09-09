unit frm_agregar_Accesorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones, unittbotonespermisos, UnitValidaTexto, unitActivaPop,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxContainer, cxDBEdit, masUtilerias, cxSplitter, cxLabel,
  cxDBLookupComboBox, cxButtons, cxCheckBox, unitGenerales,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, MemDS, DBAccess, Uni,
  dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, cxSpinEdit,
  cxTimeEdit, cxLookupEdit, cxDBLookupEdit, cxCalc, cxCurrencyEdit, frm_barraH1,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl, cxGroupBox, cxMemo,
  cxCheckGroup, cxDBCheckGroup, cxProgressBar ;

type
  TfrmAgregarMasivoAccesorios = class(TForm)
    mnuPop: TPopupMenu;
    Panel1: TPanel;
    zAnterior: TUniQuery;
    Panel4: TPanel;
    cxGuardias: TcxLookupComboBox;
    materiales: TUniQuery;
    ds_materiales: TDataSource;
    cxLabelTipo: TcxLabel;
    View_Grid_Accesorios: TcxGridDBTableView;
    cxViewMateriales: TcxGridLevel;
    cxGrid1: TcxGrid;
    View_Grid_AccesoriosColumn1: TcxGridDBColumn;
    View_Grid_AccesoriosColumn2: TcxGridDBColumn;
    View_Grid_AccesoriosColumn4: TcxGridDBColumn;
    zProveedor: TUniQuery;
    ds_Proveedor: TDataSource;
    Panel5: TPanel;
    uCostos: TUniQuery;
    ds_costos: TDataSource;
    zAsigna: TUniQuery;
    uMedidas: TUniQuery;
    ds_medidas: TDataSource;
    uGrupoMaterial: TUniQuery;
    dsGrupoMaterial: TDataSource;
    Panel6: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    PanelAdicionales: TPanel;
    progreso: TcxProgressBar;
    LabelProceso: TcxLabel;
    Anexos: TUniQuery;
    dsAnexos: TDataSource;
    Extraordinarias: TUniQuery;
    dsExtraordinarias: TDataSource;
    ActualizarExtraordinarios1: TMenuItem;
    ActualizarExtraordinarios2: TMenuItem;
    zAccesorios: TUniQuery;
    dsAccesorios: TDataSource;
    dsEquipos: TDataSource;
    zEquipos: TUniQuery;
    Panel3: TPanel;
    cxLabel3: TcxLabel;
    layer: TcxLabel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    View_Grid_AccesoriosColumn3: TcxGridDBColumn;
    btnAccesorios: TcxButton;
    procedure frmBarra1btnExitClick(Sender: TObject);

    procedure dtbCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGuardiasPropertiesChange(Sender: TObject);
    Procedure addRequisicon;
    Procedure addSalida;
    Procedure addAsignacion;
    Procedure SelectMaterial;
    procedure View_Grid_AccesoriosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure View_Grid_MaterialesDataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: string);
    procedure View_Grid_MaterialesDataControllerFilterChanged(Sender: TObject);
    procedure cxActualizaClick(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure View_Grid_AccesoriosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure materialesAfterScroll(DataSet: TDataSet);
    procedure ActualizarExtraordinarios1Click(Sender: TObject);
    procedure ActualizarExtraordinarios2Click(Sender: TObject);
    procedure cxViewDetalleAccesorioCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxViewDetalleAccesorioCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure zAccesoriosAfterScroll(DataSet: TDataSet);
    procedure cxButton4Click(Sender: TObject);
    procedure addAccesorios;
    procedure AddAccesoriosPO;
    procedure btnAccesoriosClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgregarMasivoAccesorios : TfrmAgregarMasivoAccesorios;
  sOldId           : string;
  sOpcion          : string;
  Parametro        : string;
  Id               : string;
  isOpen           : boolean;
  implementation
 uses
    frm_catalogos_Operaciones,Frm_CostoPresupuesto,Frm_RequisicionMaterial,frm_SalidaAlmacen,
  frm_requisicion_ss7, frm_CargaMaterial, frm_RevisionesRequisicion,
  frm_Pedidos_SAP, frm_agregar_servicios;
{$R *.dfm}

procedure TfrmAgregarMasivoAccesorios.ActualizarExtraordinarios1Click(
  Sender: TObject);
  var
      iTotal : integer;
begin
  if connection.uconfiguracion.FieldByName('ConexionRefresh').AsString = 'Si' then
   begin
       IsOpen := False;
       if connection.UniConnectionSQLServer.Connected = False then
          connection.UniConnectionSQLServer.Connected := True;

       AsignarSQL(Extraordinarias,'anexo_extraordinarios',pUpdate);
       FiltrarDataSet(Extraordinarias,'Proyecto,IdMaterial',[FrmRequisicionSS7.anexo_requisicion.FieldByName('sNumeroOrden').AsString,-1]);
       Extraordinarias.Open;

       PanelAdicionales.Visible := True;
       labelProceso.Caption := 'Proceso: Actualizando Partidas Autorizadas';
       BarraProgresoAvance(Progreso, 0,0,0);
       BarraMostrar(True,progreso, LabelProceso);
       connection.uSQLConsulta.SQL.Clear;
       connection.uSQLConsulta.SQL.Add('select * from TablaUnion_Ext order by IdMaterial');
       connection.uSQLConsulta.Open;

       while not connection.uSQLConsulta.Eof do
       begin
           if Extraordinarias.Locate('IdExtraordinario',connection.uSQLConsulta.FieldByName('Id_Union').AsInteger,[]) = False then
           begin
              materiales.Locate('IdMaterialDW',connection.uSQLConsulta.FieldByName('IdMaterial').AsInteger,[]);
              AsignarSQL(connection.qryUBusca,'anexo_extraordinarios_inserta',pUpdate);
              FiltrarDataSet(connection.qryUBusca,'IdExtraordinario,IdAnexo,IdMaterial,IdMaterialDW,Extrarodinario,Descripcion,Proyecto,IdPartidaAnexoDW,Actividad',[
              connection.uSQLConsulta.FieldByName('Id_Union').AsInteger,
              connection.uSQLConsulta.FieldByName('Id_Anexo').AsInteger,
              materiales.FieldByName('IdInsumo').AsInteger,
              connection.uSQLConsulta.FieldByName('IdMaterial').AsInteger,
              connection.uSQLConsulta.FieldByName('Extraordinario').AsString,
              connection.uSQLConsulta.FieldByName('DescripcionExtraordinario').AsString,
              FrmRequisicionSS7.anexo_requisicion.FieldByName('sNumeroOrden').AsString,
              connection.uSQLConsulta.FieldByName('IdPartidaAnexo').AsInteger,
              'S/N']);
              connection.qryUBusca.ExecSQL;

              inc(iTotal);
           end;
           BarraProgresoAvance(Progreso, 0,100,100/connection.uSQLConsulta.RecordCount);
           connection.uSQLConsulta.Next;
       end;
       BarraMostrar(False,progreso, LabelProceso);
       PanelAdicionales.Visible := False;
       IsOpen := True;
   end;
end;

procedure TfrmAgregarMasivoAccesorios.addAsignacion;
begin
//   zAsigna.SQL.Text:='select IdVale From vale_resguardo where IdSalida = :Salida';
//   zAsigna.ParamByName('Salida').AsString:= frmSalidaAlmacen.salida_almacen.FieldByName('iFolioSalida').AsString;
//   zAsigna.Open;
//   if zAsigna.RecordCount>0 then
//   begin
//      zAnterior.Active := False;
//      zAnterior.SQL.Clear;
//      zAnterior.SQL.Add('INSERT INTO vale_resguardo_detalle (IdValeDetalle, IdVale, IdInsumo, Cantidad, Fecha, Estatus, Activo) '+
//                        'VALUES (0, :IdVale, :IdInsumo, :Cantidad, :Fecha, :Estatus, :Activo)');
//      zAnterior.ParamByName('IdVale').AsInteger := zAsigna.FieldByName('IdVale').AsInteger;
//      zAnterior.ParamByName('IdInsumo').AsInteger := materiales.FieldByName('IdInsumo').AsInteger;
//      zAnterior.ParamByName('Cantidad').AsFloat := cxCantidad.Value;
//      zAnterior.ParamByName('Fecha').AsDate := frmSalidaAlmacen.salida_almacen.FieldByName('dFechaSalida').AsDateTime;
//      zAnterior.ParamByName('Estatus').AsString := 'EN RESGUARDO';
//      zAnterior.ParamByName('Activo').AsString := 'No';
//      zAnterior.ExecSQL;
//   end;

end;

procedure TfrmAgregarMasivoAccesorios.addRequisicon;
Var
  SavePlace : TBookmark;
  dCantidad : Currency ;
begin
//    If OpcButton = 'New' then
//    Begin
//        if (InttoStr(materiales.FieldValues['IdInsumo']) = '') or (materiales.FieldValues['IdInsumo'] = null) or (cxCantidad.Text = '') then
//        begin
//             messageDLG('Seleccione un Material para Agregar a la Requisicion.', mtInformation, [mbOK], 0);
//             exit;
//        end;
//
//        lExiste := False;
//
//        //Consultamos primero si ya existe el material dado de alta en la requisición..
//        Connection.QryUBusca.Active := False;
//        Connection.QryUBusca.SQL.Clear;
//        Connection.QryUBusca.SQL.Add('select r.IdInsumo from anexo_prequisicion r where r.sContrato =:Contrato and r.iFolioRequisicion =:Folio and r.IdInsumo =:Insumo '+
//        'and (:Tipo = -1 or (:Tipo <> -1 and  r.IdTipoRecurso = :Tipo))');
//        Connection.QryUBusca.Params.ParamByName('Contrato').AsString := Global_Contrato;
//        Connection.QryUBusca.Params.ParamByName('Folio').AsString    := FrmRequisicionSS7.anexo_requisicion.FieldByName('iFolioRequisicion').AsString;
//        Connection.QryUBusca.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
//        Connection.QryUBusca.Params.ParamByName('Tipo').AsString     := materiales.FieldByName('IdTipoRecurso').AsString;
//        Connection.QryUBusca.Open;
//
//        if connection.QryUBusca.RecordCount = 0 then
//        begin
//            //Try
//            //Insertamos el material para la Requisicion,..
//            Connection.QryUBusca.Active := False ;
//            Connection.QryUBusca.SQL.Clear ;
//            Connection.QryUBusca.SQL.Add('INSERT INTO anexo_prequisicion ( sContrato, iFolioRequisicion, IdInsumo, mDescripcion, IdMedida, dFechaRequerimiento, ' +
//                                        'dCantidad, iItem, NumeroMaterial, IdTipoRecurso,Extraordinario,IdGrupo) '  +
//                                        'VALUES (:Contrato, :Folio, :Insumo, :Descripcion, :Medida, :Requerido, :Cantidad, ' +
//                                        ':iItem, :NumeroMaterial, :IdTipoRecurso,:Extraordinario,:IdGrupo ) ' );
//            Connection.QryUBusca.Params.ParamByName('Contrato').DataType     := ftString ;
//            Connection.QryUBusca.Params.ParamByName('Contrato').value        := Global_Contrato ;
//            Connection.QryUBusca.Params.ParamByName('Folio').DataType        := ftString ;
//            Connection.QryUBusca.Params.ParamByName('Folio').value           := FrmRequisicionSS7.anexo_requisicion.FieldValues['iFolioRequisicion'] ;
//            Connection.QryUBusca.Params.ParamByName('Insumo').DataType       := ftString ;
//            Connection.QryUBusca.Params.ParamByName('Insumo').value          := materiales.FieldValues['IdInsumo'] ;
//            Connection.QryUBusca.Params.ParamByName('Descripcion').DataType  := ftMemo ;
//            Connection.QryUBusca.Params.ParamByName('Descripcion').value     := materiales.fieldValues['Insumo'] ;
//            Connection.QryUBusca.Params.ParamByName('Medida').DataType       := ftString ;
//            Connection.QryUBusca.Params.ParamByName('Medida').value          := materiales.fieldValues['IdMedida'] ;
//            Connection.QryUBusca.Params.ParamByName('Requerido').DataType    := ftDate ;
//            Connection.QryUBusca.Params.ParamByName('Requerido').value       := FrmRequisicionSS7.anexo_requisicion.FieldValues['dFechaSolicitado'];
//            Connection.QryUBusca.Params.ParamByName('Cantidad').DataType     := ftFloat ;
//            Connection.QryUBusca.Params.ParamByName('Cantidad').value        := cxCantidad.Value ;
//            Connection.QryUBusca.Params.ParamByName('iItem').AsInteger          := 0 ;
//            if materiales.FieldByName('IdTipoRecurso').AsInteger = 1 then
//               Connection.QryUBusca.Params.ParamByName('NumeroMaterial').AsString  := autoFolio(FrmRequisicionSS7.anexo_prequisicion,'anexo_prequisicion',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,0)
//            else
//               Connection.QryUBusca.Params.ParamByName('NumeroMaterial').AsString  := materiales.FieldByName('Codigo').AsString;
//            Connection.QryUBusca.Params.ParamByName('IdTipoRecurso').AsInteger     := materiales.FieldByName('IdTipoRecurso').AsInteger;
//           // Connection.QryUBusca.Params.ParamByName('Extraordinario').AsString     := cxExtraordinario.Text;
//            Connection.QryUBusca.Params.ParamByName('IdGrupo').AsInteger           := materiales.FieldByName('IdGrupoSAP').AsInteger;
//
//            Connection.QryUBusca.ExecSQL  ;
//        //Except
//
//        end
//        else
//        begin
//          if MessageDlg('Se encontro una coincidencia en la Requisición actual, Desea sumar la cantidad del material?(Si) De Acuerdo, (No) Registro Independiente.', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
//          begin
//            Connection.qryUBusca.Active := False;
//            Connection.qryUBusca.SQL.Clear;
//            Connection.qryUBusca.SQL.Add('Select Max(iItem) as iItem From anexo_prequisicion Where sContrato = :Contrato And iFolioRequisicion = :Folio and IdInsumo = :Insumo ');
//            connection.qryUBusca.Params.ParamByName('Contrato').AsString := Global_Contrato;
//            connection.qryUBusca.Params.ParamByName('Folio').AsString    := FrmRequisicionSS7.anexo_requisicion.FieldByName('iFolioRequisicion').AsString;
//            Connection.qryUBusca.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
//            Connection.qryUBusca.Open;
//            if not Connection.qryUBusca.FieldByName('iItem').IsNull then
//            begin
//                Connection.qryUBusca2.Active := False ;
//                Connection.qryUBusca2.SQL.Clear ;
//                Connection.qryUBusca2.SQL.Add('INSERT INTO anexo_prequisicion ( sContrato, iFolioRequisicion, IdInsumo, iItem, mDescripcion, IdMedida, dFechaRequerimiento, ' +
//                                            'dCantidad, NumeroMaterial, IdTipoRecurso, Extraordinario, IdGrupo) '  +
//                                            'VALUES (:Contrato, :Folio, :Insumo, :Item, :Descripcion, :Medida, :Requerido, :Cantidad, ' +
//                                            ' :NumeroMaterial, :IdTipoRecurso, :Extraordinario, :IdGrupo) ' );
//                Connection.qryUBusca2.Params.ParamByName('Contrato').AsString     := Global_Contrato ;
//                Connection.qryUBusca2.Params.ParamByName('Folio').AsString        := FrmRequisicionSS7.anexo_requisicion.FieldValues['iFolioRequisicion'] ;
//                Connection.qryUBusca2.Params.ParamByName('Insumo').AsString       := materiales.fieldValues['IdInsumo'] ;
//                Connection.qryUBusca2.Params.ParamByName('Item').AsInteger        := Connection.qryUBusca.FieldByName('iItem').AsInteger + 1;
//                Connection.qryUBusca2.Params.ParamByName('Descripcion').DataType  := ftMemo ;
//                Connection.qryUBusca2.Params.ParamByName('Descripcion').value     := materiales.fieldValues['Insumo'] ;
//                Connection.qryUBusca2.Params.ParamByName('Medida').DataType       := ftString ;
//                Connection.qryUBusca2.Params.ParamByName('Medida').value          := materiales.fieldValues['IdMedida'] ; ;
//                Connection.qryUBusca2.Params.ParamByName('Requerido').DataType    := ftDate ;
//                Connection.qryUBusca2.Params.ParamByName('Requerido').value       := FrmRequisicionSS7.anexo_requisicion.FieldValues['dFechaSolicitado'];
//                Connection.qryUBusca2.Params.ParamByName('Cantidad').DataType     := ftFloat ;
//                Connection.qryUBusca2.Params.ParamByName('Cantidad').value        := cxCantidad.Value ;
//                if materiales.FieldByName('IdTipoRecurso').AsInteger = 1 then
//                   Connection.qryUBusca2.Params.ParamByName('NumeroMaterial').AsString  := autoFolio(FrmRequisicionSS7.anexo_prequisicion,'anexo_prequisicion',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,0)
//                else
//                   Connection.qryUBusca2.Params.ParamByName('NumeroMaterial').AsString  := materiales.FieldByName('Codigo').AsString;
//                Connection.qryUBusca2.Params.ParamByName('IdTipoRecurso').AsInteger     := materiales.FieldByName('IdTipoRecurso').AsInteger;
//                //Connection.QryUBusca2.Params.ParamByName('Extraordinario').AsString     := cxExtraordinario.Text;
//                Connection.QryUBusca2.Params.ParamByName('IdGrupo').AsInteger            := materiales.FieldByName('IdGrupoSAP').AsInteger;
//
//                Connection.qryUBusca2.ExecSQL  ;
//            end
//            else
//            begin
//                Connection.qryUBusca2.Active := False ;
//                Connection.qryUBusca2.SQL.Clear ;
//                Connection.qryUBusca2.SQL.Add('INSERT INTO anexo_prequisicion ( sContrato, iFolioRequisicion, IdInsumo, iItem, mDescripcion, IdMedida, dFechaRequerimiento, ' +
//                                            'dCantidad, NumeroMaterial, IdTipoRecurso,IdGrupo) '  +
//                                            'VALUES (:Contrato, :Folio, :Insumo, :item, :Descripcion, :Medida, :Requerido, :Cantidad, ' +
//                                            ':NumeroMaterial, :IdTipoRecurso, :IdGrupo) ' );
//                Connection.qryUBusca2.Params.ParamByName('Contrato').AsString     := Global_Contrato ;
//                Connection.qryUBusca2.Params.ParamByName('Folio').AsString        := FrmRequisicionSS7.anexo_requisicion.FieldValues['iFolioRequisicion'] ;
//                Connection.qryUBusca2.Params.ParamByName('Insumo').AsString       := materiales.FieldValues['IdInsumo'] ;
//                Connection.qryUBusca2.Params.ParamByName('Item').AsInteger        := Connection.qryUBusca.FieldByName('iItem').AsInteger + 1;
//                Connection.qryUBusca2.Params.ParamByName('Descripcion').DataType  := ftMemo ;
//                Connection.qryUBusca2.Params.ParamByName('Descripcion').value     := materiales.fieldValues['Insumo'] ;
//                Connection.qryUBusca2.Params.ParamByName('Medida').DataType       := ftString ;
//                Connection.qryUBusca2.Params.ParamByName('Medida').value          := materiales.fieldValues['IdMedida'] ; ;
//                Connection.qryUBusca2.Params.ParamByName('Requerido').DataType    := ftDate ;
//                Connection.qryUBusca2.Params.ParamByName('Requerido').value       := FrmRequisicionSS7.anexo_requisicion.FieldValues['dFechaSolicitado'];
//                Connection.qryUBusca2.Params.ParamByName('Cantidad').DataType     := ftFloat ;
//                Connection.qryUBusca2.Params.ParamByName('Cantidad').value        := cxCantidad.Value ;
//                if materiales.FieldByName('IdTipoRecurso').AsInteger = 1 then
//                   Connection.qryUBusca2.Params.ParamByName('NumeroMaterial').AsString  := autoFolio(FrmRequisicionSS7.anexo_prequisicion,'anexo_prequisicion',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,0)
//                else
//                   Connection.qryUBusca2.Params.ParamByName('NumeroMaterial').AsString  := materiales.FieldByName('Codigo').AsString;
//                Connection.qryUBusca2.Params.ParamByName('IdTipoRecurso').AsInteger     := materiales.FieldByName('IdTipoRecurso').AsInteger;
//                Connection.QryUBusca2.Params.ParamByName('IdGrupo').AsInteger            := materiales.FieldByName('IdGrupoSAP').AsInteger;
//                Connection.qryUBusca2.ExecSQL  ;
//            end
//          end
//          else
//          begin
//            dCantidad := 0;
//            Connection.qryUBusca.Active := False;
//            Connection.qryUBusca.SQL.Clear;
//            Connection.qryUBusca.SQL.Add('Select dCantidad From anexo_prequisicion Where sContrato = :Contrato And ' +
//              'iFolioRequisicion = :Folio and IdInsumo = :Insumo ');
//            connection.qryUBusca.Params.ParamByName('Contrato').AsString := Global_Contrato;
//            connection.qryUBusca.Params.ParamByName('Folio').AsString    := FrmRequisicionSS7.anexo_requisicion.FieldByName('iFolioRequisicion').AsString;
//            connection.qryUBusca.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
//            Connection.qryUBusca.Open;
//
//            if Connection.qryUBusca.RecordCount > 0 then
//              dCantidad := Connection.qryUBusca.FieldByName('dCantidad').AsFloat;
//
//            Connection.zUCommand.Active := False;
//            Connection.zUCommand.SQL.Clear;
//            Connection.zUCommand.SQL.Add('UPDATE anexo_prequisicion SET dCantidad =:Cantidad ' +
//              'WHERE sContrato =:Contrato And iFolioRequisicion =:Folio and IdInsumo =:Insumo And iItem = 0 ');
//            Connection.zUCommand.Params.ParamByName('Contrato').AsString := Global_Contrato;
//            Connection.zUCommand.Params.ParamByName('Folio').AsString    := FrmRequisicionSS7.anexo_requisicion.FieldByName('iFolioRequisicion').AsString;
//            Connection.zUCommand.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
//            Connection.zUCommand.Params.ParamByName('Cantidad').AsFloat  := dCantidad + cxCantidad.Value;
//            Connection.zUCommand.ExecSQL;
//          end;
//        end;
//
//        FrmRequisicionSS7.anexo_prequisicion.Refresh ;
//        FrmRequisicionSS7.anexo_prequisicion.Locate('IdInsumo',materiales.FieldValues['IdInsumo'], [loCaseInsensitive]);
//        //Crear cotizacion en caso de que la existencia del material sea menor de lo que se está requiriendo (CMMII)
//        //primero verifico que la empresa sea CMMI
//        if global_contrato = 'CMMI' then begin
//
//        end;
//    End
//    Else
//    try
//        SavePlace := FrmRequisicionSS7.anexo_prequisicion.GetBookmark ;
//        Connection.zUCommand.Active  := False ;
//        Connection.zUCommand.SQL.Clear ;
//        Connection.zUCommand.SQL.Add('UPDATE anexo_prequisicion SET dFechaRequerimiento = :Requerido, dCantidad = :Cantidad ' +
//                                    'WHERE sContrato = :Contrato And iFolioRequisicion = :Folio and IdOrdenCompra = 0 And iItem =:item and IdInsumo =:Insumo ');
//        Connection.zUCommand.Params.ParamByName('Contrato').DataType   := ftString ;
//        Connection.zUCommand.Params.ParamByName('Contrato').value      := Global_Contrato ;
//        Connection.zUCommand.Params.ParamByName('Folio').DataType      := ftString ;
//        Connection.zUCommand.Params.ParamByName('Folio').value         := FrmRequisicionSS7.anexo_requisicion.FieldValues['iFolioRequisicion'] ;
//        Connection.zUCommand.Params.ParamByName('Item').DataType       := ftInteger ;
//        Connection.zUCommand.Params.ParamByName('Item').value          := FrmRequisicionSS7.anexo_prequisicion.FieldValues['iItem'] ;
//        Connection.zUCommand.Params.ParamByName('Insumo').DataType     := ftString ;
//        Connection.zUCommand.Params.ParamByName('Insumo').value        := FrmRequisicionSS7.anexo_prequisicion.FieldValues['IdInsumo'] ;
//        Connection.zUCommand.Params.ParamByName('Requerido').DataType  := ftDate ;
//        Connection.zUCommand.Params.ParamByName('Requerido').value     := FrmRequisicionSS7.anexo_requisicion.FieldValues['dFechaSolicitado'];
//        Connection.zUCommand.Params.ParamByName('Cantidad').DataType   := ftFloat ;
//        Connection.zUCommand.Params.ParamByName('Cantidad').value      := cxCantidad.Value ;
//        Connection.zUCommand.ExecSQL ;
//
//        FrmRequisicionSS7.anexo_prequisicion.Refresh  ;
//        FrmRequisicionSS7.anexo_prequisicion.GotoBookmark(SavePlace);
//        FrmRequisicionSS7.anexo_prequisicion.FreeBookmark(SavePlace);
//    except
//      on e : exception do begin
//           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al actualizar registro', 0);
//      end;
//    End ;
end;

procedure TfrmAgregarMasivoAccesorios.addSalida;
var
  dActExistencia:Extended;
begin
//if (Materiales.FieldByName('Estado').AsString <> 'FUERA DE OPERACIÓN') and (Materiales.FieldByName('Estado').AsString <> 'MANTENIMIENTO') then
//  begin
//    dActExistencia:=0;
//
//      If OpcButton = 'New' then
//      Begin
//
//        // Consulta de Insumo antes de insertar.
//        connection.qryUBusca.Active := False;
//        connection.qryUBusca.SQL.Clear;
//        connection.qryUBusca.SQL.Add('select IFNULL((IFNULL(	(SELECT SUM(d.dCantidad) FROM bitacoradeentrada d WHERE d.IdInsumo = i.IdInsumo AND d.IdAlmacen = :Almacen),	0) '+
//        '-	IFNULL((SELECT SUM(e.dCantidad) FROM bitacoradesalida e WHERE e.IdInsumo = i.IdInsumo	AND (select count(iFolioSalida) from almacen_salida where IFolioSalida = e.iFolioSalida and IdAlmacen =:Almacen)  )=1,0	)),0) AS dExistencia '+
//        ' from alm_insumos i where (:Contrato=-1 or (:Contrato<>-1 and i.sContrato =:Contrato)) and i.IdInsumo =:Insumo ');
//        connection.qryUBusca.ParamByName('Contrato').AsString  := global_contrato;
//        connection.qryUBusca.ParamByName('Insumo').AsInteger   := materiales.FieldByName('IdInsumo').AsInteger;
//        connection.qryUBusca.ParamByName('Almacen').AsInteger  := frmSalidaAlmacen.salida_almacen.FieldByName('IdAlmacen').AsInteger;
//        connection.qryUBusca.Open;
//
//        if connection.qryUBusca.RecordCount >= 0 then begin
//          if connection.qryUBusca.FieldValues['dExistencia'] < cxCantidad.Value then
//           begin
//            showmessage('No se puede proporcionar la Cantidad Solicitada, verificar Existencias !');
//            exit;
//           end;
//           if connection.qryUBusca.FieldValues['dExistencia'] = 0 then begin
//            showmessage('La Existencia es Igual a Cero.');
//            exit;
//           end;
//        end;
//
//        connection.qryUBusca2.Active := False ;
//        connection.qryUBusca2.SQL.Clear ;
//        connection.qryUBusca2.SQL.Add('select IdInsumo,dCantidad from bitacoradesalida where sContrato = :Contrato and iFolioSalida = :Folio and IdInsumo = :Insumo '+
//          ' and IdSerie = :Serie');
//        connection.qryUBusca2.Params.ParamByName('Contrato').AsString     := frmSalidaAlmacen.salida_almacen.FieldByName('sContrato').AsString ;
//        connection.qryUBusca2.Params.ParamByName('Folio').AsString        := frmSalidaAlmacen.salida_almacen.FieldValues['iFolioSalida'] ;
//        connection.qryUBusca2.Params.ParamByName('Insumo').AsInteger      := Materiales.FieldByName('IdInsumo').AsInteger;
//        connection.qryUBusca2.Params.ParamByName('Serie').AsInteger := 0;
//        connection.qryUBusca2.Open ;
//
//        if connection.qryUBusca2.RecordCount = 0 then
//        begin
//            connection.zUCommand.Active := False ;
//            connection.zUCommand.SQL.Clear ;
//            connection.zUCommand.SQL.Add ( 'INSERT INTO bitacoradesalida ( sContrato, iFolioSalida, dFechaSalida,IdInsumo, dCantidad, sStatus, IdSerie ) ' +
//                                          'VALUES (:Contrato, :Folio, :FechaS, :Insumo, :Cantidad,'+ QuotedStr('Pendiente')+',:serie)') ;
//            connection.zUCommand.Params.ParamByName('Contrato').AsString := frmSalidaAlmacen.salida_almacen.FieldByName('sContrato').AsString ;
//            connection.zUCommand.Params.ParamByName('Folio').AsInteger   := frmSalidaAlmacen.salida_almacen.FieldValues['iFolioSalida'] ;
//            connection.zUCommand.Params.ParamByName('FechaS').AsDate     := frmSalidaAlmacen.salida_almacen.FieldValues['dFechaSalida'];
//            connection.zUCommand.Params.ParamByName('Insumo').AsInteger  := materiales.FieldValues['IdInsumo'];
//            connection.zUCommand.Params.ParamByName('Cantidad').AsFloat  := cxCantidad.Value ;
//            connection.zUCommand.Params.ParamByName('Serie').AsInteger   := 0;
//            connection.zUCommand.ExecSQL;
//            dActExistencia:=cxCantidad.Value;
//        end
//        else
//        begin
//            if messageDLG('Ya existe una salida para el Insumo desea Actualizar la salida?', mtInformation, [mbYes,mbNo], 0) = mrYes then
//            begin
//              connection.zUCommand.Active := False ;
//              connection.zUCommand.SQL.Clear ;
//              connection.zUCommand.SQL.Add ('UPDATE bitacoradesalida SET dCantidad =:Cantidad where sContrato =:Contrato and iFolioSalida =:Folio '+
//                                           'and IdInsumo =:Insumo ') ;
//              connection.zUCommand.Params.ParamByName('Contrato').AsString  := frmSalidaAlmacen.salida_almacen.FieldByName('sContrato').AsString ;
//              connection.zUCommand.Params.ParamByName('Folio').AsInteger    := frmSalidaAlmacen.salida_almacen.FieldValues['iFolioSalida'] ;
//              connection.zUCommand.Params.ParamByName('Insumo').AsInteger   := materiales.FieldValues['IdInsumo'];
//              connection.zUCommand.Params.ParamByName('Cantidad').AsFloat   := cxCantidad.Value + connection.qryUBusca2.FieldValues['dCantidad'];
//              connection.zUCommand.ExecSQL ;
//              dActExistencia:=cxCantidad.Value;
//            end
//            else
//              Exit;
//        end;
//      End;
//
//      frmSalidaAlmacen.salida_detalle.Refresh;
//      SavePlace := frmSalidaAlmacen.salida_detalle.GetBookmark ;
//      frmSalidaAlmacen.salida_detalle.FreeBookmark(SavePlace);
//
//      frmSalidaAlmacen.salida_detalle.Locate('IdInsumo', Materiales.FieldByName('IdInsumo').AsString, []);
//      SavePlace := frmSalidaAlmacen.salida_detalle.GetBookmark ;
//
//      IsOpen:=false;
//      Try
//         frmSalidaAlmacen.salida_detalle.GotoBookmark(SavePlace);
//      Except
//        frmSalidaAlmacen.salida_detalle.FreeBookmark(SavePlace);
//      End;
//      IsOpen:=true;
//
//  end
//  else
//  begin
//    ShowMessage('No se puede agregar el equipo, esta '+frmSalidaAlmacen.salida_detalle.FieldByName('Estado').AsString);
//  end;
end;


procedure TfrmAgregarMasivoAccesorios.btnAccesoriosClick(Sender: TObject);
begin

  close;
  Application.CreateForm(TfrmAgregarMasivoServicios, frmAgregarMasivoServicios);
  frmAgregarMasivoServicios.show;

end;

procedure TfrmAgregarMasivoAccesorios.addAccesorios;
var
    zActualiza, zCompanias : tUniquery;
    indice, iGrid, i    : integer;
begin
   if (FrmRequisicionss7.anexo_prequisicion.FieldByName('sIdEquipo').AsString = '') or
      (FrmRequisicionss7.anexo_prequisicion.FieldByName('sIdEquipo').AsString = null) then
    begin
      MessageDlg('El servicio no tiene relación con un equipo. Debe relacionarlo!', mtConfirmation, [mbOK], 0);
      exit;
    end;

    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;
    OpcButton := 'New';
    iGrid     := 0;
    try
      indice := View_Grid_Accesorios.DataController.GetSelectedRowIndex(iGrid);
    Except
      on e:exception do begin
          //nothing to do
      end;
    end;

    with View_Grid_Accesorios.DataController.DataSource.DataSet do
    for iGrid := 0 to View_Grid_Accesorios.DataController.GetSelectedCount - 1 do
    begin
        indice := View_Grid_Accesorios.DataController.GetSelectedRowIndex(iGrid);
        View_Grid_Accesorios.DataController.FocusedRowIndex := indice;


            //Consultamos primero si ya existe la partida
            AsignarSQL(Connection.QryUBusca,'existe_accesorio',pUpdate);
            FiltrarDataSet(Connection.QryUBusca,'sIdEquipo,EquipoDetalle,FolioReq,ReqDetalle',
            [FrmRequisicionss7.anexo_prequisicion.FieldByName('sIdEquipo').AsString,
            View_Grid_Accesorios.DataController.DataSet.FieldByName('IdEquipoDetalle').AsString ,
            FrmRequisicionss7.anexo_prequisicion.FieldByName('iFolioRequisicion').AsString,
            FrmRequisicionss7.anexo_prequisicion.FieldByName('IdPRequisicion').AsInteger]);
            Connection.QryUBusca.Open;

            if connection.QryUBusca.RecordCount = 0 then
            begin
                //Insertamos la partida
                AsignarSQL(zActualiza,'inserta_accesorio', pUpdate);
                FiltrarDataSet(zActualiza, 'sIdEquipo,EquipoDetalle,FolioReq,ReqDetalle,iItem,Medida,Descripcion,Cantidad, Revision',
                [FrmRequisicionss7.anexo_prequisicion.FieldByName('sIdEquipo').AsString,
                View_Grid_Accesorios.DataController.DataSet.FieldByName('IdEquipoDetalle').AsString ,
                FrmRequisicionss7.anexo_prequisicion.FieldByName('iFolioRequisicion').AsString,
                FrmRequisicionss7.anexo_prequisicion.FieldByName('IdPRequisicion').AsInteger,
                FrmRequisicionss7.anexo_prequisicion.FieldByName('iItem').AsInteger,
                View_Grid_Accesorios.DataController.DataSet.FieldByName('Medida').AsString ,
                View_Grid_Accesorios.DataController.DataSet.FieldByName('Descripcion').AsString, '',
                FrmRequisicionss7.cxView_Materiales.DataController.DataSet.FieldByName('Revision').AsString]);
                zActualiza.Execute;
                inc(i);

            end
            else
            begin
               MessageDlg('El accesorio ya encuentra agregada a la Partida!', mtConfirmation, [mbOK], 0);
            end;
    end;

//    FrmRequisicionss7.zAccesorios.Refresh;
    zActualiza.destroy;
end;


procedure TfrmAgregarMasivoAccesorios.AddAccesoriosPO;
var
    zActualiza, zCompanias : tUniquery;
    indice, iGrid, i    : integer;
    cant : Double;
begin
//    if (FrmRevisionesRequisiciones.anexo_prequisicion.FieldByName('sIdEquipo').AsString = '') or
//      (FrmRevisionesRequisiciones.anexo_prequisicion.FieldByName('sIdEquipo').AsString = null) then
//    begin
//      MessageDlg('El servicio no tiene relación con un equipo. Debe relacionarlo!', mtConfirmation, [mbOK], 0);
//      exit;
//    end;

    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;
    OpcButton := 'New';
    iGrid     := 0;
    try
      indice := View_Grid_Accesorios.DataController.GetSelectedRowIndex(iGrid);
    Except
      on e:exception do begin
          //nothing to do
      end;
    end;

    with View_Grid_Accesorios.DataController.DataSource.DataSet do
    for iGrid := 0 to View_Grid_Accesorios.DataController.GetSelectedCount - 1 do
    begin
        indice := View_Grid_Accesorios.DataController.GetSelectedRowIndex(iGrid);
        View_Grid_Accesorios.DataController.FocusedRowIndex := indice;


            //Consultamos primero si ya existe la partida
            AsignarSQL(Connection.QryUBusca,'consulta_accesorios_xpartida_po',pUpdate);
            FiltrarDataSet(Connection.QryUBusca,'Orden, Accesorio, Folio',
            [frmPedidos_SAP.anexo_pocompras.FieldByName('IdOrdenCompra').AsInteger,
            materiales.FieldByName('IdAccesorio').AsInteger,
            frmPedidos_SAP.anexo_pocompras.FieldByName('iFolioRequisicion').AsInteger]);
            Connection.QryUBusca.Open;

            if connection.QryUBusca.RecordCount = 0 then
            begin

                //Insertamos la partida
                zActualiza.Active := False ;
                AsignarSQL(zActualiza,'inserta_accesorios_po', pUpdate);
                FiltrarDataSet(zActualiza, 'sIdEquipo, IdEquipoDetalle, IdOrdenCompra, iFolioRequisicion, IdOrdenCompraDetalle, IdAccesorio, Medida, Descripcion, Cantidad, Revision',
                [View_Grid_Accesorios.DataController.DataSet.FieldByName('sIdEquipo').AsString,
                View_Grid_Accesorios.DataController.DataSet.FieldByName('IdEquipoDetalle').AsString ,
                frmPedidos_SAP.anexo_pocompras.FieldByName('IdOrdenCompra').AsString,
                frmPedidos_SAP.anexo_pocompras.FieldByName('iFolioRequisicion').AsInteger,
                frmPedidos_SAP.anexo_pocompras.FieldByName('IdOrdenCompraDetalle').AsInteger,
                View_Grid_Accesorios.DataController.DataSet.FieldByName('IdAccesorio').AsString ,
                View_Grid_Accesorios.DataController.DataSet.FieldByName('Medida').AsString,
                View_Grid_Accesorios.DataController.DataSet.FieldByName('Descripcion').AsString,
                View_Grid_Accesorios.DataController.DataSet.FieldByName('Cantidad').AsFloat,
                frmPedidos_SAP.anexo_pocompras.FieldByName('Revision').AsString]);
                zActualiza.Execute;
                inc(i);

            end
            else
            begin
               MessageDlg('El accesorio ya encuentra agregada a la Partida!', mtConfirmation, [mbOK], 0);
            end;
    end;

    zActualiza.destroy;
end;


procedure TfrmAgregarMasivoAccesorios.cxActualizaClick(Sender: TObject);
var
    zActualiza, zCompanias : tUniquery;
    indice, iGrid, i    : integer;
begin
    if global_frmActivo = 'ACCESORIOS_PO' then
      addAccesoriosPO
    else
      addAccesorios;

end;


procedure TfrmAgregarMasivoAccesorios.cxButton4Click(Sender: TObject);
var
    zActualiza, zCompanias : tUniquery;
    indice, iGrid, i    : integer;
begin


end;

procedure TfrmAgregarMasivoAccesorios.cxGuardiasPropertiesChange(Sender: TObject);
begin
//  View_Grid_Accesorios.Columns[0].Visible:=True;
//  View_Grid_Accesorios.Columns[1].Visible:=True;
//  View_Grid_Accesorios.Columns[2].Visible:=True;
//  View_Grid_Accesorios.Columns[3].Visible:=True;

  if global_frmActivo <> 'ACCESORIOS_PO' then
  BEGIN
    AsignarSQL(materiales,'equipo_detalle',pUpdate);
    FiltrarDataSet(materiales,'EquipoDEtalle,Proveedor',['-1', cxGuardias.EditValue]);
    materiales.Open;
  END;
end;

procedure TfrmAgregarMasivoAccesorios.cxViewDetalleAccesorioCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
//    if Extraordinarios_part.RecordCount > 0 then
//       cxExtraordinario.Text := Extraordinarios_part.FieldByName('Extraordinario').AsString;
end;

procedure TfrmAgregarMasivoAccesorios.cxViewDetalleAccesorioCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if View_Grid_Accesorios.OptionsView.CellAutoHeight then
      View_Grid_Accesorios.OptionsView.CellAutoHeight := False
   else
      View_Grid_Accesorios.OptionsView.CellAutoHeight := True;
end;

procedure TfrmAgregarMasivoAccesorios.dtbCancelarClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmAgregarMasivoAccesorios.FormShow(Sender: TObject);
begin
  id:='-1';

//  frmBarraH11.btnAdd.Visible:=true;
  IsOpen:=False;
    if global_frmActivo = 'ACCESORIOS_PO' then
  BEGIN
     View_Grid_Accesorios.Columns[3].Visible := True;
     Panel4.Visible := False;
     materiales.Active := False;
     AsignarSQL(materiales, 'consulta_accesorios_po', pUpdate);
     FiltrarDataSet(materiales, 'Insumo, FolioReq', [frmPedidos_SAP.anexo_pocompras.FieldByName('IdInsumo').AsInteger, frmPedidos_SAP.anexo_pocompras.FieldByName('iFolioRequisicion').AsInteger]);
     materiales.Open;
  END
  ELSE
  BEGIN
     View_Grid_Accesorios.Columns[3].Visible := False;
     zAccesorios.Active := False;
     AsignarSQL(zAccesorios, 'existe_accesorio', pUpdate);
     FiltrarDataSet(zAccesorios, 'sIdEquipo, EquipoDetalle, FolioReq, ReqDetalle',
     ['-1', '-1', '-1', '-1']);
     zAccesorios.Open;

      AsignarSQL(materiales,'equipo_detalle',pUpdate);
      FiltrarDataSet(materiales,'EquipoDEtalle,Proveedor',['-1','-1']);
      materiales.Open;
      View_Grid_Accesorios.DataController.DataSource.DataSet.First;

      cxGuardias.EditValue := materiales.FieldByName('IdProveedor').AsInteger;


      zProveedor.Active:=False;
      AsignarSQL(zProveedor,'master_proveedores', pUpdate);
      FiltrarDataSet(zProveedor, 'IdProveedor', ['-1']);
      zProveedor.Open;
  END;

  uMedidas.Active:=False;
  AsignarSQL(uMedidas,'master_medidas',pUpdate);
  FiltrarDataSet(uMedidas,'Id,Codigo',[-1,-1]);
  uMedidas.Open;

  uGrupoMaterial.Active:=False;
  AsignarSQL(uGrupoMaterial,'alm_grupos',pUpdate);
  uGrupoMaterial.Open;






//  if FrmRequisicionSS7.anexo_requisicion.FieldByName('Recurso').AsString = 'Servicio' then
//  begin
//    AsignarSQL(zEquipos, 'requisicion_servicios_equipos', pUpdate);
//    FiltrarDataset(zEquipos,'Contrato, IdEquipo',[FrmRequisicionSS7.anexo_requisicion.FieldByName('Contrato').AsString, -1]);
//    zEquipos.Open;
//    dxLayoutItem2.Visible := True ;
//
//  end
//  else
//    dxLayoutItem2.Visible := False;


 // SelectMaterial;
  isOpen:=True;
  cxGrid1.SetFocus;
end;

procedure TfrmAgregarMasivoAccesorios.frmBarra1btnExitClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmAgregarMasivoAccesorios.SelectMaterial;
begin
//     global_frmActivo := 'Requisicion';
//     cxGuardias.Text  := FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('Recurso').AsString;
//     cxGuardias.Enabled:=False;

end;

procedure TfrmAgregarMasivoAccesorios.View_Grid_AccesoriosCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
//  if PanelDetalle.Visible then
//  begin
//      AsignarSQL(Extraordinarios_part,'anexo_extraordinarios',pUpdate);
//      FiltrarDataSet(Extraordinarios_part,'Proyecto,IdMaterial',[FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('sNumeroOrden').AsString, materiales.FieldByName('IdInsumo').AsInteger]);
//      Extraordinarios_part.Open;
//  end;
end;

procedure TfrmAgregarMasivoAccesorios.View_Grid_AccesoriosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if View_Grid_Accesorios.OptionsView.CellAutoHeight then
      View_Grid_Accesorios.OptionsView.CellAutoHeight := False
   else
      View_Grid_Accesorios.OptionsView.CellAutoHeight := True;
end;

procedure TfrmAgregarMasivoAccesorios.View_Grid_MaterialesDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  isOpen:=False;
end;

procedure TfrmAgregarMasivoAccesorios.View_Grid_MaterialesDataControllerFilterChanged(
  Sender: TObject);
begin
  isOpen:=True;
end;

procedure TfrmAgregarMasivoAccesorios.SalidaControl(Sender: TObject);
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

    if (sender is tcxDbRadioGroup) then
        tcxDBRadioGroup(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxLookupComboBox) then
        tcxLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmAgregarMasivoAccesorios.EnterControl(Sender: TObject);
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

    if (sender is tcxDbRadioGroup) then
        tcxDBRadioGroup(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

   if (sender is tcxLookupComboBox) then
        tcxLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmAgregarMasivoAccesorios.zAccesoriosAfterScroll(
  DataSet: TDataSet);
begin
 //  cxExtraordinario.Text := '';
//   if Extraordinarios_part.RecordCount > 0 then
     // cxExtraordinario.Text := Extraordinarios_part.FieldByName('Extraordinario').AsString;
end;

procedure TfrmAgregarMasivoAccesorios.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmAgregarMasivoAccesorios.materialesAfterScroll(DataSet: TDataSet);
begin
//    if PanelDetalle.Visible and isOpen then
//    begin
//       AsignarSQL(Extraordinarias,'anexo_extraordinarios',pUpdate);
//       FiltrarDataSet(Extraordinarias,'Proyecto,IdMaterial',[FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('sNumeroOrden').AsString, materiales.FieldByName('IdInsumo').AsInteger]);
//       Extraordinarias.Open;
//  end;
end;

procedure TfrmAgregarMasivoAccesorios.ActualizarExtraordinarios2Click(Sender: TObject);
var
   iTotal : integer;
begin
 if connection.uconfiguracion.FieldByName('ConexionRefresh').AsString = 'Si' then
   begin
       if connection.UniConnectionSQLServer.Connected = False then
          connection.UniConnectionSQLServer.Connected := True;

       IsOpen := False;
       AsignarSQL(Extraordinarias,'anexo_extraordinarios',pUpdate);
       FiltrarDataSet(Extraordinarias,'Proyecto,IdMaterial',[FrmRequisicionSS7.anexo_requisicion.FieldByName('sNumeroOrden').AsString,materiales.FieldByName('IdInsumo').AsInteger]);
       Extraordinarias.Open;

       PanelAdicionales.Visible := True;
       labelProceso.Caption := 'Proceso: Actualizando Partidas Autorizadas';
       BarraProgresoAvance(Progreso, 0,0,0);
       BarraMostrar(True,progreso, LabelProceso);
       connection.uSQLConsulta.SQL.Clear;
       connection.uSQLConsulta.SQL.Add('select * from TablaUnion_Ext where IdMaterial =:IdMaterial order by IdMaterial');
       connection.uSQLConsulta.ParamByName('IdMaterial').AsInteger := materiales.FieldByName('IdMaterialDW').AsInteger;
       connection.uSQLConsulta.Open;

       while not connection.uSQLConsulta.Eof do
       begin
           if Extraordinarias.Locate('Extraordinario',connection.uSQLConsulta.FieldByName('Extraordinario').AsString,[]) = False then
           begin
              materiales.Locate('IdMaterialDW',connection.uSQLConsulta.FieldByName('IdMaterial').AsInteger,[]);
              AsignarSQL(connection.qryUBusca,'anexo_extraordinarios_inserta',pUpdate);
              FiltrarDataSet(connection.qryUBusca,'IdExtraordinario,IdAnexo,IdMaterial,IdMaterialDW,Extrarodinario,Descripcion,Proyecto,IdPartidaAnexoDW,Actividad',[
              connection.uSQLConsulta.FieldByName('Id_Union').AsInteger,
              connection.uSQLConsulta.FieldByName('Id_Anexo').AsInteger,
              materiales.FieldByName('IdInsumo').AsInteger,
              connection.uSQLConsulta.FieldByName('IdMaterial').AsInteger,
              connection.uSQLConsulta.FieldByName('Extraordinario').AsString,
              connection.uSQLConsulta.FieldByName('DescripcionExtraordinario').AsString,
              FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('sNumeroOrden').AsString,
              connection.uSQLConsulta.FieldByName('IdPartidaAnexo').AsInteger,
              'S/N']);
              connection.qryUBusca.ExecSQL;

              inc(iTotal);
           end;
           BarraProgresoAvance(Progreso, 0,100,100/connection.uSQLConsulta.RecordCount);
           connection.uSQLConsulta.Next;
       end;
       BarraMostrar(False,progreso, LabelProceso);
       PanelAdicionales.Visible := False;
       IsOpen := True;
   end;
end;

end.
