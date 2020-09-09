unit frm_agregar_Requisicion;

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
  cxCheckGroup, cxDBCheckGroup, cxProgressBar, dxLayoutControlAdapters ;

type
  TfrmAgregarMasivoRequisicion = class(TForm)
    mnuPop: TPopupMenu;
    Panel1: TPanel;
    Panel2: TPanel;
    zAnterior: TUniQuery;
    Panel3: TPanel;
    cxLabel3: TcxLabel;
    Panel4: TPanel;
    cxGuardias: TcxLookupComboBox;
    materiales: TUniQuery;
    ds_materiales: TDataSource;
    cxLabelTipo: TcxLabel;
    View_Grid_Materiales: TcxGridDBTableView;
    cxViewMateriales: TcxGridLevel;
    cxGrid1: TcxGrid;
    View_Grid_MaterialesColumn1: TcxGridDBColumn;
    View_Grid_MaterialesColumn2: TcxGridDBColumn;
    View_Grid_MaterialesColumn3: TcxGridDBColumn;
    View_Grid_MaterialesColumn4: TcxGridDBColumn;
    zRecurso: TUniQuery;
    ds_Recurso: TDataSource;
    layer: TcxLabel;
    Panel5: TPanel;
    PanelDetalle: TPanel;
    cxSplitterDetalle: TcxSplitter;
    frmBarraH11: TfrmBarraH1;
    cxViewDetalleMaterial: TcxGridDBTableView;
    cxGridDetalleLevel1: TcxGridLevel;
    cxGridDetalle: TcxGrid;
    cxColumnD2: TcxGridDBColumn;
    uCostos: TUniQuery;
    ds_costos: TDataSource;
    zAsigna: TUniQuery;
    uMedidas: TUniQuery;
    ds_medidas: TDataSource;
    cxColumnD3: TcxGridDBColumn;
    uGrupoMaterial: TUniQuery;
    dsGrupoMaterial: TDataSource;
    cxCantidad: TcxCalcEdit;
    cxLabel1: TcxLabel;
    Panel6: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxExtraordinario: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    PanelAdicionales: TPanel;
    progreso: TcxProgressBar;
    LabelProceso: TcxLabel;
    cxColumnD0: TcxGridDBColumn;
    Anexos: TUniQuery;
    dsAnexos: TDataSource;
    Extraordinarias: TUniQuery;
    dsExtraordinarias: TDataSource;
    ActualizarExtraordinarios1: TMenuItem;
    ActualizarExtraordinarios2: TMenuItem;
    Extraordinarios_part: TUniQuery;
    dsExtraordinarios_part: TDataSource;
    cxActualizaDatos: TcxButton;
    dsEquipos: TDataSource;
    zEquipos: TUniQuery;
    lcbEquipo: TcxLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    btnServicios: TcxButton;
    cxBuscarEquipo: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    procedure frmBarra1btnExitClick(Sender: TObject);

    procedure dtbCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGuardiasPropertiesChange(Sender: TObject);
    Procedure addRequisicon;
    Procedure addSalida;
    Procedure addAsignacion;
    Procedure SelectMaterial;
    procedure View_Grid_MaterialesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDetalleClick(Sender: TObject);
    procedure View_Grid_MaterialesDataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: string);
    procedure View_Grid_MaterialesDataControllerFilterChanged(Sender: TObject);
    procedure cxActualizaClick(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure View_Grid_MaterialesCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure materialesAfterScroll(DataSet: TDataSet);
    procedure ActualizarExtraordinarios1Click(Sender: TObject);
    procedure ActualizarExtraordinarios2Click(Sender: TObject);
    procedure cxViewDetalleMaterialCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxViewDetalleMaterialCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Extraordinarios_partAfterScroll(DataSet: TDataSet);
    procedure cxActualizaDatosClick(Sender: TObject);
    procedure btnServiciosClick(Sender: TObject);
    procedure cxBuscarEquipoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgregarMasivoRequisicion : TfrmAgregarMasivoRequisicion;
  sOldId           : string;
  sOpcion          : string;
  Parametro        : string;
  Id               : string;
  isOpen           : boolean;
  implementation
 uses
    frm_catalogos_Operaciones,Frm_CostoPresupuesto,Frm_RequisicionMaterial,frm_SalidaAlmacen,
  frm_requisicion_ss7, frm_CargaMaterial, frm_GridFM;
{$R *.dfm}

procedure TfrmAgregarMasivoRequisicion.ActualizarExtraordinarios1Click(
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

procedure TfrmAgregarMasivoRequisicion.addAsignacion;
begin
   zAsigna.SQL.Text:='select IdVale From vale_resguardo where IdSalida = :Salida';
   zAsigna.ParamByName('Salida').AsString:= frmSalidaAlmacen.salida_almacen.FieldByName('iFolioSalida').AsString;
   zAsigna.Open;
   if zAsigna.RecordCount>0 then
   begin
      zAnterior.Active := False;
      zAnterior.SQL.Clear;
      zAnterior.SQL.Add('INSERT INTO vale_resguardo_detalle (IdValeDetalle, IdVale, IdInsumo, Cantidad, Fecha, Estatus, Activo) '+
                        'VALUES (0, :IdVale, :IdInsumo, :Cantidad, :Fecha, :Estatus, :Activo)');
      zAnterior.ParamByName('IdVale').AsInteger := zAsigna.FieldByName('IdVale').AsInteger;
      zAnterior.ParamByName('IdInsumo').AsInteger := materiales.FieldByName('IdInsumo').AsInteger;
      zAnterior.ParamByName('Cantidad').AsFloat := cxCantidad.Value;
      zAnterior.ParamByName('Fecha').AsDate := frmSalidaAlmacen.salida_almacen.FieldByName('dFechaSalida').AsDateTime;
      zAnterior.ParamByName('Estatus').AsString := 'EN RESGUARDO';
      zAnterior.ParamByName('Activo').AsString := 'No';
      zAnterior.ExecSQL;
   end;

end;

procedure TfrmAgregarMasivoRequisicion.addRequisicon;
Var
  SavePlace : TBookmark;
  dCantidad : Currency ;
  numMaterial, Id, centroc, QA, serv: String;
  zPreq : TUniQuery;

begin
    If OpcButton = 'New' then
    Begin
        if (InttoStr(materiales.FieldValues['IdInsumo']) = '') or (materiales.FieldValues['IdInsumo'] = null) or (cxCantidad.Text = '') then
        begin
             messageDLG('Seleccione un Material para Agregar a la Requisicion.', mtInformation, [mbOK], 0);
             exit;
        end;

        lExiste := False;

        //Consultamos primero si ya existe el material dado de alta en la requisición..
        Connection.QryUBusca.Active := False;
        Connection.QryUBusca.SQL.Clear;
        Connection.QryUBusca.SQL.Add('select r.IdInsumo from anexo_prequisicion r where r.sContrato =:Contrato and r.iFolioRequisicion =:Folio and r.IdInsumo =:Insumo '+
        'and (:Tipo = -1 or (:Tipo <> -1 and  r.IdTipoRecurso = :Tipo))');
        Connection.QryUBusca.Params.ParamByName('Contrato').AsString := Global_Contrato;
        Connection.QryUBusca.Params.ParamByName('Folio').AsString    := FrmRequisicionSS7.anexo_requisicion.FieldByName('iFolioRequisicion').AsString;
        Connection.QryUBusca.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
        Connection.QryUBusca.Params.ParamByName('Tipo').AsString     := materiales.FieldByName('IdTipoRecurso').AsString;
        Connection.QryUBusca.Open;

        if cxExtraordinario.EditValue = null then
          cxExtraordinario.EditValue := '';


        if materiales.FieldByName('IdTipoRecurso').AsInteger = 1 then
          numMaterial  := autoFolio(FrmRequisicionSS7.anexo_prequisicion,'anexo_prequisicion',connection.uContrato.FieldByName('IdEmpresa').AsInteger,0,0)
        else
          numMaterial  := materiales.FieldByName('Codigo').AsString;

        if materiales.FieldByName('IdTipoRecurso').AsInteger = 2 then
        begin
          if zEquipos.Locate('Equipo',lcbEquipo.EditValue ,[loCaseInsensitive]) then
          Id := zEquipos.FieldByName('sIdEquipo').AsString ;
        end;

        if (FrmRequisicionSS7.anexo_requisicion.FieldByName('sStatus').AsString = 'GENERO PR') and (materiales.FieldByName('IdTipoRecurso').AsInteger = 2)
          and  (FrmRequisicionSS7.anexo_requisicion.FieldByName('Rev').AsInteger > 0 )then
        begin
          zPreq:=tUniquery.create(nil);
          zPreq.Connection := Connection.uConnection;

          AsignarSQL(zPreq, 'TotalExist_prequisicion_serv', pUpdate);
          FiltrarDataSet(zPreq, 'FolioReq', [FrmRequisicionSS7.cxView_Requsicion.DataController.DataSet.FieldByName('iFolioRequisicion').AsString]);
          zPreq.Open;

          centroc :=  zPreq.FieldByName('sNumeroOrden_WorkOrder').AsString ;
          QA :=  zPreq.FieldByName('EspecificacionesQA').AsString ;
          serv := 'SI';
        end
        else
        begin
         QA := '';
         centroc := '';
         serv := 'NO';
        end;

        if connection.QryUBusca.RecordCount = 0 then
        begin
            //Try
            //Insertamos el material para la Requisicion,..
            Connection.qryUBusca2.Active := False ;
            AsignarSQL(connection.QryUBusca2,'inserta_prequisicion_002',pUpdate);
            FiltrarDataSet(connection.QryUBusca2, 'sContrato, iFolioRequisicion, IdInsumo, iItem, mDescripcion, IdMedida,'+
            'dFechaRequerimiento, ServReciente, dCantidad, IdTipoRecurso, IdGrupo, sNumeroOrden_WorkOrder, NumeroMaterial, EspecificacionesQA, Extraordinario, sIdEquipo, Revision',
            [Global_Contrato,FrmRequisicionSS7.anexo_requisicion.FieldValues['iFolioRequisicion'] ,
            materiales.fieldValues['IdInsumo'], 0, materiales.fieldValues['Insumo'],
            materiales.fieldValues['IdMedida'], FechaTimeSQL(FrmRequisicionSS7.anexo_requisicion.FieldValues['dFechaSolicitado']), serv,
            cxCantidad.Value, materiales.FieldByName('IdTipoRecurso').AsInteger, materiales.FieldByName('IdGrupoSAP').AsInteger,
            centroc, numMaterial, QA, cxExtraordinario.EditingValue, Id, FrmRequisicionSS7.anexo_requisicion.FieldValues['Rev'] ]);
            connection.QryUBusca2.ExecSQL;
        //Except

        end
        else
        begin
          if MessageDlg('Se encontro una coincidencia en la Requisición actual, Desea sumar la cantidad del material?(Si) De Acuerdo, (No) Registro Independiente.', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          begin
            Connection.qryUBusca.Active := False;
            Connection.qryUBusca.SQL.Clear;
            Connection.qryUBusca.SQL.Add('Select Max(iItem) as iItem From anexo_prequisicion Where sContrato = :Contrato And iFolioRequisicion = :Folio and IdInsumo = :Insumo ');
            connection.qryUBusca.Params.ParamByName('Contrato').AsString := Global_Contrato;
            connection.qryUBusca.Params.ParamByName('Folio').AsString    := FrmRequisicionSS7.anexo_requisicion.FieldByName('iFolioRequisicion').AsString;
            Connection.qryUBusca.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
            Connection.qryUBusca.Open;
            if not Connection.qryUBusca.FieldByName('iItem').IsNull then
            begin
                Connection.qryUBusca2.Active := False ;
                AsignarSQL(connection.QryUBusca2,'inserta_prequisicion_002',pUpdate);
                FiltrarDataSet(connection.QryUBusca2, 'sContrato, iFolioRequisicion, IdInsumo, iItem, mDescripcion, IdMedida,'+
                'dFechaRequerimiento, ServReciente, dCantidad, IdTipoRecurso, IdGrupo, sNumeroOrden_WorkOrder, NumeroMaterial, EspecificacionesQA, Extraordinario, sIdEquipo, Revision',
                [Global_Contrato,FrmRequisicionSS7.anexo_requisicion.FieldValues['iFolioRequisicion'] ,
                materiales.fieldValues['IdInsumo'],Connection.qryUBusca.FieldByName('iItem').AsInteger + 1,
                materiales.fieldValues['Insumo'], materiales.fieldValues['IdMedida'], FechaTimeSQL(FrmRequisicionSS7.anexo_requisicion.FieldValues['dFechaSolicitado']),
                serv, cxCantidad.Value, materiales.FieldByName('IdTipoRecurso').AsInteger, materiales.FieldByName('IdGrupoSAP').AsInteger,
                centroc, numMaterial, QA, cxExtraordinario.Text, Id, FrmRequisicionSS7.anexo_requisicion.FieldValues['Rev'] ]);
                connection.QryUBusca2.ExecSQL;
            end
            else
            begin
                Connection.qryUBusca2.Active := False ;
                AsignarSQL(connection.QryUBusca2,'inserta_prequisicion_002',pUpdate);
                FiltrarDataSet(connection.QryUBusca2, 'sContrato, iFolioRequisicion, IdInsumo, iItem, mDescripcion, IdMedida,'+
                'dFechaRequerimiento, ServReciente, dCantidad, IdTipoRecurso, IdGrupo, sNumeroOrden_WorkOrder, NumeroMaterial, EspecificacionesQA, Extraordinario, sIdEquipo, Revision',
                [Global_Contrato,FrmRequisicionSS7.anexo_requisicion.FieldValues['iFolioRequisicion'] ,
                materiales.fieldValues['IdInsumo'],Connection.qryUBusca.FieldByName('iItem').AsInteger + 1,
                materiales.fieldValues['Insumo'], materiales.fieldValues['IdMedida'], FechaTimeSQL(FrmRequisicionSS7.anexo_requisicion.FieldValues['dFechaSolicitado']),
                serv, cxCantidad.Value, materiales.FieldByName('IdTipoRecurso').AsInteger, materiales.FieldByName('IdGrupoSAP').AsInteger,
                centroc, numMaterial, QA, cxExtraordinario.Text, Id, FrmRequisicionSS7.anexo_requisicion.FieldValues['Rev'] ]);
                connection.QryUBusca2.ExecSQL;
            end
          end
          else
          begin
            dCantidad := 0;
            Connection.qryUBusca.Active := False;
            Connection.qryUBusca.SQL.Clear;
            Connection.qryUBusca.SQL.Add('Select dCantidad From anexo_prequisicion Where sContrato = :Contrato And ' +
              'iFolioRequisicion = :Folio and IdInsumo = :Insumo ');
            connection.qryUBusca.Params.ParamByName('Contrato').AsString := Global_Contrato;
            connection.qryUBusca.Params.ParamByName('Folio').AsString    := FrmRequisicionSS7.anexo_requisicion.FieldByName('iFolioRequisicion').AsString;
            connection.qryUBusca.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
            Connection.qryUBusca.Open;

            if Connection.qryUBusca.RecordCount > 0 then
              dCantidad := Connection.qryUBusca.FieldByName('dCantidad').AsFloat;

            Connection.zUCommand.Active := False;
            Connection.zUCommand.SQL.Clear;
            Connection.zUCommand.SQL.Add('UPDATE anexo_prequisicion SET dCantidad =:Cantidad ' +
              'WHERE sContrato =:Contrato And iFolioRequisicion =:Folio and IdInsumo =:Insumo And iItem = 0 ');
            Connection.zUCommand.Params.ParamByName('Contrato').AsString := Global_Contrato;
            Connection.zUCommand.Params.ParamByName('Folio').AsString    := FrmRequisicionSS7.anexo_requisicion.FieldByName('iFolioRequisicion').AsString;
            Connection.zUCommand.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
            Connection.zUCommand.Params.ParamByName('Cantidad').AsFloat  := dCantidad + cxCantidad.Value;
            Connection.zUCommand.ExecSQL;
          end;
        end;

        FrmRequisicionSS7.anexo_prequisicion.Refresh ;
        FrmRequisicionSS7.anexo_prequisicion.Locate('IdInsumo',materiales.FieldValues['IdInsumo'], [loCaseInsensitive]);
        //Crear cotizacion en caso de que la existencia del material sea menor de lo que se está requiriendo (CMMII)
        //primero verifico que la empresa sea CMMI
        if global_contrato = 'CMMI' then begin

        end;
    End
    Else
    try
        SavePlace := FrmRequisicionSS7.anexo_prequisicion.GetBookmark ;
        Connection.zUCommand.Active  := False ;
        Connection.zUCommand.SQL.Clear ;
        Connection.zUCommand.SQL.Add('UPDATE anexo_prequisicion SET dFechaRequerimiento = :Requerido, dCantidad = :Cantidad ' +
                                    'WHERE sContrato = :Contrato And iFolioRequisicion = :Folio and IdOrdenCompra = 0 And iItem =:item and IdInsumo =:Insumo ');
        Connection.zUCommand.Params.ParamByName('Contrato').DataType   := ftString ;
        Connection.zUCommand.Params.ParamByName('Contrato').value      := Global_Contrato ;
        Connection.zUCommand.Params.ParamByName('Folio').DataType      := ftString ;
        Connection.zUCommand.Params.ParamByName('Folio').value         := FrmRequisicionSS7.anexo_requisicion.FieldValues['iFolioRequisicion'] ;
        Connection.zUCommand.Params.ParamByName('Item').DataType       := ftInteger ;
        Connection.zUCommand.Params.ParamByName('Item').value          := FrmRequisicionSS7.anexo_prequisicion.FieldValues['iItem'] ;
        Connection.zUCommand.Params.ParamByName('Insumo').DataType     := ftString ;
        Connection.zUCommand.Params.ParamByName('Insumo').value        := FrmRequisicionSS7.anexo_prequisicion.FieldValues['IdInsumo'] ;
        Connection.zUCommand.Params.ParamByName('Requerido').DataType  := ftDate ;
        Connection.zUCommand.Params.ParamByName('Requerido').value     := FrmRequisicionSS7.anexo_requisicion.FieldValues['dFechaSolicitado'];
        Connection.zUCommand.Params.ParamByName('Cantidad').DataType   := ftFloat ;
        Connection.zUCommand.Params.ParamByName('Cantidad').value      := cxCantidad.Value ;
        Connection.zUCommand.ExecSQL ;

        FrmRequisicionSS7.anexo_prequisicion.Refresh  ;
        FrmRequisicionSS7.anexo_prequisicion.GotoBookmark(SavePlace);
        FrmRequisicionSS7.anexo_prequisicion.FreeBookmark(SavePlace);
    except
      on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al actualizar registro', 0);
      end;
    End ;
end;

procedure TfrmAgregarMasivoRequisicion.addSalida;
var
  dActExistencia:Extended;
begin
if (Materiales.FieldByName('Estado').AsString <> 'FUERA DE OPERACIÓN') and (Materiales.FieldByName('Estado').AsString <> 'MANTENIMIENTO') then
  begin
    dActExistencia:=0;

      If OpcButton = 'New' then
      Begin

        // Consulta de Insumo antes de insertar.
        connection.qryUBusca.Active := False;
        connection.qryUBusca.SQL.Clear;
        connection.qryUBusca.SQL.Add('select IFNULL((IFNULL(	(SELECT SUM(d.dCantidad) FROM bitacoradeentrada d WHERE d.IdInsumo = i.IdInsumo AND d.IdAlmacen = :Almacen),	0) '+
        '-	IFNULL((SELECT SUM(e.dCantidad) FROM bitacoradesalida e WHERE e.IdInsumo = i.IdInsumo	AND (select count(iFolioSalida) from almacen_salida where IFolioSalida = e.iFolioSalida and IdAlmacen =:Almacen)  )=1,0	)),0) AS dExistencia '+
        ' from alm_insumos i where (:Contrato=-1 or (:Contrato<>-1 and i.sContrato =:Contrato)) and i.IdInsumo =:Insumo ');
        connection.qryUBusca.ParamByName('Contrato').AsString  := global_contrato;
        connection.qryUBusca.ParamByName('Insumo').AsInteger   := materiales.FieldByName('IdInsumo').AsInteger;
        connection.qryUBusca.ParamByName('Almacen').AsInteger  := frmSalidaAlmacen.salida_almacen.FieldByName('IdAlmacen').AsInteger;
        connection.qryUBusca.Open;

        if connection.qryUBusca.RecordCount >= 0 then begin
          if connection.qryUBusca.FieldValues['dExistencia'] < cxCantidad.Value then
           begin
            showmessage('No se puede proporcionar la Cantidad Solicitada, verificar Existencias !');
            exit;
           end;
           if connection.qryUBusca.FieldValues['dExistencia'] = 0 then begin
            showmessage('La Existencia es Igual a Cero.');
            exit;
           end;
        end;

        connection.qryUBusca2.Active := False ;
        connection.qryUBusca2.SQL.Clear ;
        connection.qryUBusca2.SQL.Add('select IdInsumo,dCantidad from bitacoradesalida where sContrato = :Contrato and iFolioSalida = :Folio and IdInsumo = :Insumo '+
          ' and IdSerie = :Serie');
        connection.qryUBusca2.Params.ParamByName('Contrato').AsString     := frmSalidaAlmacen.salida_almacen.FieldByName('sContrato').AsString ;
        connection.qryUBusca2.Params.ParamByName('Folio').AsString        := frmSalidaAlmacen.salida_almacen.FieldValues['iFolioSalida'] ;
        connection.qryUBusca2.Params.ParamByName('Insumo').AsInteger      := Materiales.FieldByName('IdInsumo').AsInteger;
        connection.qryUBusca2.Params.ParamByName('Serie').AsInteger := 0;
        connection.qryUBusca2.Open ;

        if connection.qryUBusca2.RecordCount = 0 then
        begin
            connection.zUCommand.Active := False ;
            connection.zUCommand.SQL.Clear ;
            connection.zUCommand.SQL.Add ( 'INSERT INTO bitacoradesalida ( sContrato, iFolioSalida, dFechaSalida,IdInsumo, dCantidad, sStatus, IdSerie ) ' +
                                          'VALUES (:Contrato, :Folio, :FechaS, :Insumo, :Cantidad,'+ QuotedStr('Pendiente')+',:serie)') ;
            connection.zUCommand.Params.ParamByName('Contrato').AsString := frmSalidaAlmacen.salida_almacen.FieldByName('sContrato').AsString ;
            connection.zUCommand.Params.ParamByName('Folio').AsInteger   := frmSalidaAlmacen.salida_almacen.FieldValues['iFolioSalida'] ;
            connection.zUCommand.Params.ParamByName('FechaS').AsDate     := frmSalidaAlmacen.salida_almacen.FieldValues['dFechaSalida'];
            connection.zUCommand.Params.ParamByName('Insumo').AsInteger  := materiales.FieldValues['IdInsumo'];
            connection.zUCommand.Params.ParamByName('Cantidad').AsFloat  := cxCantidad.Value ;
            connection.zUCommand.Params.ParamByName('Serie').AsInteger   := 0;
            connection.zUCommand.ExecSQL;
            dActExistencia:=cxCantidad.Value;
        end
        else
        begin
            if messageDLG('Ya existe una salida para el Insumo desea Actualizar la salida?', mtInformation, [mbYes,mbNo], 0) = mrYes then
            begin
              connection.zUCommand.Active := False ;
              connection.zUCommand.SQL.Clear ;
              connection.zUCommand.SQL.Add ('UPDATE bitacoradesalida SET dCantidad =:Cantidad where sContrato =:Contrato and iFolioSalida =:Folio '+
                                           'and IdInsumo =:Insumo ') ;
              connection.zUCommand.Params.ParamByName('Contrato').AsString  := frmSalidaAlmacen.salida_almacen.FieldByName('sContrato').AsString ;
              connection.zUCommand.Params.ParamByName('Folio').AsInteger    := frmSalidaAlmacen.salida_almacen.FieldValues['iFolioSalida'] ;
              connection.zUCommand.Params.ParamByName('Insumo').AsInteger   := materiales.FieldValues['IdInsumo'];
              connection.zUCommand.Params.ParamByName('Cantidad').AsFloat   := cxCantidad.Value + connection.qryUBusca2.FieldValues['dCantidad'];
              connection.zUCommand.ExecSQL ;
              dActExistencia:=cxCantidad.Value;
            end
            else
              Exit;
        end;
      End;

      frmSalidaAlmacen.salida_detalle.Refresh;
      SavePlace := frmSalidaAlmacen.salida_detalle.GetBookmark ;
      frmSalidaAlmacen.salida_detalle.FreeBookmark(SavePlace);

      frmSalidaAlmacen.salida_detalle.Locate('IdInsumo', Materiales.FieldByName('IdInsumo').AsString, []);
      SavePlace := frmSalidaAlmacen.salida_detalle.GetBookmark ;

      IsOpen:=false;
      Try
         frmSalidaAlmacen.salida_detalle.GotoBookmark(SavePlace);
      Except
        frmSalidaAlmacen.salida_detalle.FreeBookmark(SavePlace);
      End;
      IsOpen:=true;

  end
  else
  begin
    ShowMessage('No se puede agregar el equipo, esta '+frmSalidaAlmacen.salida_detalle.FieldByName('Estado').AsString);
  end;
end;

procedure TfrmAgregarMasivoRequisicion.btnAddClick(Sender: TObject);
begin
  Application.CreateForm(TfrmCargaMaterial, frmCargaMaterial);
  frmCargaMaterial.show;
end;

procedure TfrmAgregarMasivoRequisicion.btnDetalleClick(Sender: TObject);
begin
  if not PanelDetalle.Visible then
  begin
      AsignarSQL(Extraordinarias,'anexo_extraordinarios',pUpdate);
      FiltrarDataSet(Extraordinarias,'Proyecto,IdMaterial',[FrmRequisicionSS7.anexo_requisicion.FieldByName('sNumeroOrden').AsString, materiales.FieldByName('IdInsumo').AsInteger]);
      Extraordinarias.Open;
  end;
  PanelDetalle.Visible:=not PanelDetalle.Visible;
  cxSplitterDetalle.Visible:= not cxSplitterDetalle.Visible;
end;


procedure TfrmAgregarMasivoRequisicion.cxActualizaClick(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    SavePlace, SavePlace2 : TBookMark;
begin
    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;

    iGrid     := 0;
    try
      indice := View_Grid_Materiales.DataController.GetSelectedRowIndex(iGrid);
    Except
      on e:exception do begin
          //nothing to do
      end;
    end;
    View_Grid_Materiales.DataController.FocusedRowIndex := indice;

    with View_Grid_Materiales.DataController.DataSource.DataSet do
    for iGrid := 0 to View_Grid_Materiales.DataController.GetSelectedCount - 1 do
    begin
        indice := View_Grid_Materiales.DataController.GetSelectedRowIndex(iGrid);
        View_Grid_Materiales.DataController.FocusedRowIndex := indice;

        lContinua := True;
        if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then
        begin
            if View_Grid_Materiales.DataController.DataSet.FieldByName('CodigoMedida').AsString = '' then
            begin
               messageDLG('El material no tiene Unidad de Medida asignada!',mtInformation,[mbOk],0);
               lContinua :=False;
            end
            else
            if (View_Grid_Materiales.DataController.DataSet.FieldByName('CodeSAP').AsString = '') or
               (View_Grid_Materiales.DataController.DataSet.FieldByName('NameSAP').AsString = '') then
            begin
               messageDLG('El material no tiene Unidad de Medida relacionada a la Unidad de Medida SAP!',mtInformation,[mbOk],0);
               lContinua :=False;
            end;
        end;

        if lContinua then
          if (global_frmActivo ='Requisicion') or (global_frmActivo ='Nuevo Servicio') then
          begin
             addRequisicon;
          end;

        if global_frmActivo ='Salida_Almacen' then
        begin
           addSalida;
           addAsignacion;
           materiales.Refresh;
        end;
    end;

    if global_frmActivo ='Kit Equipo' then
    begin
      frmCatalogosOperacion.zqDetalleCatalogos.Refresh;
    end;
    if global_frmActivo ='Costos' then
    begin
      frmCostoPresupuesto.zDetalle.Refresh;
    end;
    zActualiza.destroy;
end;

procedure TfrmAgregarMasivoRequisicion.cxActualizaDatosClick(Sender: TObject);
var
   iTotal,IdMedida : integer;
   zActualiza : tUniquery;
   iInsertado, iModificado : integer;
begin
   if connection.uconfiguracion.FieldByName('ConexionRefresh').AsString = 'Si' then
   begin
       IsOpen := False;
       if connection.UniConnectionSQLServer.Connected = False then
          connection.UniConnectionSQLServer.Connected := True;

       zActualiza:=tUniquery.create(nil);
       zActualiza.Connection := Connection.uConnection;

       PanelAdicionales.Visible := True;
       labelProceso.Caption := 'Proceso: Actualizando Materiales';
       BarraMostrar(True,progreso, LabelProceso);
       connection.uSQLConsulta.SQL.Clear;
       connection.uSQLConsulta.SQL.Add('SELECT * FROM tablaAuditoriaMaterial where (typeMov =:Tipo1 or typeMov =:Tipo2) and fechaInsertModify > :FechaReplica ORDER BY fechainsertmodify ');
       //connection.uSQLConsulta.SQL.Add('SELECT * FROM tablaAuditoriaMaterial where typemov = '+quotedstr('After Update')+' and fechainsertmodify > :FechaReplica ORDER BY fechainsertmodify ');
       connection.uSQLConsulta.ParamByName('Tipo1').AsString := 'After Update';
       connection.uSQLConsulta.ParamByName('Tipo2').AsString := 'Insert';
       connection.uSQLConsulta.Params.ParamValues['FechaReplica'] :=  FormatDateTime('dd-MM-yyyy',connection.uconfiguracion.FieldByName('FechaReplica').AsDateTime);
       connection.uSQLConsulta.Open;

       connection.uSQLConsulta.RecordCount;

       while not connection.uSQLConsulta.Eof do
       begin
           if connection.uSQLConsulta.FieldByName('typeMov').AsString = 'Insert' then
           begin
              if uMedidas.Locate('Codigo',connection.uSQLConsulta.FieldByName('Unidad').AsString,[loCaseInsensitive]) then
                 IdMedida := uMedidas.FieldByName('IdMedida').AsInteger
              else
              begin
                 AsignarSQL(connection.qryUBusca,'inserta_medidas', pUpdate);
                 FiltrarDataSet(connection.qryUBusca, 'Codigo', [connection.uSQLConsulta.FieldByName('Unidad').AsString]);
                 connection.qryUBusca.Execute;

                 uMedidas.Refresh;
                 uMedidas.Locate('Codigo', connection.uSQLConsulta.FieldByName('Unidad').AsString, [loCaseInsensitive]);
                 IdMedida := uMedidas.FieldByName('IdMedida').AsInteger;
              end;

              zActualiza.Active := False;
              AsignarSQL(zActualiza,'existe_codigo_material', pUpdate);
              FiltrarDataSet(zActualiza, 'Codigo', [connection.uSQLConsulta.FieldByName('Codigo').AsString]);
              zActualiza.Open;

              if zActualiza.RecordCount = 0 then
              begin
                  AsignarSQL(connection.qryUBusca,'Inserta_material_SQLServer',pUpdate);
                  FiltrarDataSet(connection.qryUBusca,'Contrato,Codigo,IdMaterial,Descripcion,Descripcion,Medida,Fecha,Familia',[
                  global_contrato,
                  connection.uSQLConsulta.FieldByName('Codigo').AsString,
                  connection.uSQLConsulta.FieldByName('IdMaterial').AsInteger,
                  connection.uSQLConsulta.FieldByName('Descripcion').AsString,
                  connection.uSQLConsulta.FieldByName('Descripcion').AsString,
                  IdMedida, fechaTimeSQL(now()), 137]);
                  connection.qryUBusca.ExecSQL;
                  inc(iInsertado);
              end;

              inc(iTotal);
           end;

           if connection.uSQLConsulta.FieldByName('typeMov').AsString = 'After Update' then
           begin
              if uMedidas.Locate('Codigo',connection.uSQLConsulta.FieldByName('Unidad').AsString,[loCaseInsensitive]) then
                 IdMedida := uMedidas.FieldByName('IdMedida').AsInteger
              else
              begin
                 AsignarSQL(connection.qryUBusca,'inserta_medidas', pUpdate);
                 FiltrarDataSet(connection.qryUBusca, 'Codigo', [connection.uSQLConsulta.FieldByName('Unidad').AsString]);
                 connection.qryUBusca.Execute;

                 uMedidas.Refresh;
                 uMedidas.Locate('Codigo', connection.uSQLConsulta.FieldByName('Unidad').AsString, [loCaseInsensitive]);
                 IdMedida := uMedidas.FieldByName('IdMedida').AsInteger;
              end;

              AsignarSQL(connection.qryUBusca,'Update_material_SQLServer',pUpdate);
              FiltrarDataSet(connection.qryUBusca,'Codigo,Descripcion,Descripcion,IdMedida,Fecha,IdInsumo',[
              connection.uSQLConsulta.FieldByName('Codigo').AsString,
              connection.uSQLConsulta.FieldByName('Descripcion').AsString,
              connection.uSQLConsulta.FieldByName('Descripcion').AsString,
              IdMedida,
              fechaTimeSQL(now()),
              connection.uSQLConsulta.FieldByName('IdMaterial').AsInteger]);
              connection.qryUBusca.ExecSQL;
              inc(iModificado);
           end;

           BarraProgresoAvance(Progreso, 0,100,100/connection.uSQLConsulta.RecordCount);
           connection.uSQLConsulta.Next;
       end;

       connection.uconfiguracion.Edit;
       connection.uconfiguracion.FieldByName('FechaReplica').AsDateTime := connection.uSQLConsulta.FieldByName('fechainsertmodify').AsDateTime;
       connection.uconfiguracion.Post;
       connection.uconfiguracion.Refresh;
       //Este bloque solo actualiza descripcion de materiales
//        AsignarSQL(connection.qryUBusca,'Update_material_SQLServer',pUpdate);
//        FiltrarDataSet(connection.qryUBusca,'IdMaterial,Fecha,IdInsumo',[
//        connection.uSQLConsulta.FieldByName('IdMaterial').AsInteger,
//        connection.uSQLConsulta.FieldByName('Fecha').AsDateTime,
//        materiales.FieldByName('IdInsumo').AsInteger]);
//        connection.qryUBusca.ExecSQL;

       {labelProceso.Caption := 'Proceso: Actualizando Partidas Autorizadas';
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
       PanelAdicionales.Visible := False;  }
       messageDLG('Proceso terminado con éxito!'+#13+ ' Materiales Nuevos: ('+inttostr(iInsertado)+')'+#13+' Materiales Modificados: ('+inttostr(iModificado)+')',mtInformation, [mbOk],0);
   end;
   materiales.Refresh;
   IsOpen := True;

end;

procedure TfrmAgregarMasivoRequisicion.cxBuscarEquipoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmGridFM, frmGridFM);
  frmGridFM.Caption:='Catálogo de Anexo Equipos';
  frmGridFM.cxLeyenda.Caption:='Catálogo de Anexo Equipos';
  frmGridFM.cxGrid1DBTableView1.DataController.DataSource:=dsEquipos;
  frmGridFM.cxGrid1DBTableView1.BeginUpdate;
  frmGridFM.cxGrid1DBTableView1.ClearItems;
  frmGridFM.cxGrid1DBTableView1.DataController.CreateItemByField(lcbEquipo.Properties.ListColumns[1].Field);
  frmGridFM.cxGrid1DBTableView1.Columns[0].Caption := 'Código';
  frmGridFM.cxGrid1DBTableView1.Columns[0].Width:=550;
  frmGridFM.cxGrid1DBTableView1.DataController.CreateItemByField(lcbEquipo.Properties.ListColumns[0].Field);
  frmGridFM.cxGrid1DBTableView1.Columns[1].Caption := 'Descripción';
  frmGridFM.cxGrid1DBTableView1.EndUpdate;
  frmGridFM.cxGrid1DBTableView1.OptionsView.ColumnAutoWidth:=true;
  frmGridFM.cxGrid1DBTableView1.OptionsView.CellAutoHeight := True;
  if frmGridFM.ShowModal = mrOk then
  begin

        lcbEquipo.EditValue :=frmGridFM.cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('Equipo').Value;
  end;
end;

procedure TfrmAgregarMasivoRequisicion.btnServiciosClick(Sender: TObject);
begin
  View_Grid_Materiales.DataController.ClearFindFilterText;

  AsignarSQL(materiales,'catalogo_agregarmasivo',pUpdate);
  FiltrarDataSet(materiales,'Usuario,Codigo,Contrato,Tipo',['-1','-1',global_contrato,
  FrmRequisicionss7.anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger]);
  materiales.Open;
  View_Grid_Materiales.DataController.DataSource.DataSet.First;

  lcbEquipo.ItemIndex := 0;
end;

procedure TfrmAgregarMasivoRequisicion.cxGuardiasPropertiesChange(Sender: TObject);
begin
  View_Grid_Materiales.Columns[0].Visible:=True;
  View_Grid_Materiales.Columns[1].Visible:=True;
  View_Grid_Materiales.Columns[2].Visible:=True;
  View_Grid_Materiales.Columns[3].Visible:=True;
end;

procedure TfrmAgregarMasivoRequisicion.cxViewDetalleMaterialCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
//    if Extraordinarios_part.RecordCount > 0 then
//       cxExtraordinario.Text := Extraordinarios_part.FieldByName('Extraordinario').AsString;
end;

procedure TfrmAgregarMasivoRequisicion.cxViewDetalleMaterialCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if cxViewDetalleMaterial.OptionsView.CellAutoHeight then
      cxViewDetalleMaterial.OptionsView.CellAutoHeight := False
   else
      cxViewDetalleMaterial.OptionsView.CellAutoHeight := True;
end;

procedure TfrmAgregarMasivoRequisicion.dtbCancelarClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmAgregarMasivoRequisicion.FormShow(Sender: TObject);
var
  codigo : String;
begin
  id:='-1';
  PanelDetalle.Visible:=False;
  cxSplitterDetalle.Visible:=False;
//  frmBarraH11.btnAdd.Visible:=true;
  IsOpen:=False;
  AsignarSQL(materiales,'catalogo_agregarmasivo',pUpdate);
  FiltrarDataSet(materiales,'Usuario,Codigo,Contrato,Tipo',[global_usuario,'-1',global_contrato,
  FrmRequisicionSS7.anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger]);
  materiales.Open;
  View_Grid_Materiales.DataController.DataSource.DataSet.First;
  zRecurso.Active:=False;
  zRecurso.SQL.Text:='select IdTiporecurso, Nombre from op_tiporecurso ';
  zRecurso.Open;

  uMedidas.Active:=False;
  AsignarSQL(uMedidas,'master_medidas',pUpdate);
  FiltrarDataSet(uMedidas,'Id,Codigo',[-1,-1]);
  uMedidas.Open;

  uGrupoMaterial.Active:=False;
  AsignarSQL(uGrupoMaterial,'alm_grupos',pUpdate);
  uGrupoMaterial.Open;

  if FrmRequisicionSS7.anexo_requisicion.FieldByName('Recurso').AsString = 'Servicio' then
  begin
      AsignarSQL(zEquipos, 'requisicion_servicios_equipos', pUpdate);
      FiltrarDataset(zEquipos,'Contrato, IdEquipo',[FrmRequisicionSS7.anexo_requisicion.FieldByName('Contrato').AsString, -1]);
      zEquipos.Open;

      lcbEquipo.ItemIndex := 0;
      dxLayoutItem2.Visible := True ;
      View_Grid_MaterialesColumn3.Visible := False;
      frmBarraH11.btnDetalle.Visible := False;
      cxActualizaDatos.Visible := False;
      cxCantidad.Enabled := False;
      //Un servicio siempre debe tener cantidad 1.
      cxCantidad.EditValue := 1;

      if (FrmRequisicionSS7.anexo_requisicion.FieldByName('sStatus').AsString = 'GENERO PR') and (FrmRequisicionSS7.anexo_requisicion.FieldByName('Rev').AsInteger > 0 )then
      begin
          codigo :=  FrmRequisicionSS7.cxView_Materiales.DataController.DataSet.FieldByName('sIdInsumo').AsString;
          lcbEquipo.EditValue :=  FrmRequisicionSS7.cxView_Materiales.DataController.DataSet.FieldByName('Equipo').AsString;
          View_Grid_Materiales.DataController.FindFilterText := codigo;
          btnServicios.Visible := true;
      end;
  end
  else begin
     dxLayoutItem2.Visible := False;
     cxBuscarEquipo.Visible := False;
  end;

  SelectMaterial;
  isOpen:=True;
  cxGrid1.SetFocus;
end;

procedure TfrmAgregarMasivoRequisicion.frmBarra1btnExitClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmAgregarMasivoRequisicion.SelectMaterial;
begin
     global_frmActivo := 'Requisicion';
     cxGuardias.Text  := FrmRequisicionSS7.anexo_requisicion.FieldByName('Recurso').AsString;
     cxGuardias.Enabled:=False;

end;

procedure TfrmAgregarMasivoRequisicion.View_Grid_MaterialesCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if PanelDetalle.Visible then
  begin
      AsignarSQL(Extraordinarios_part,'anexo_extraordinarios',pUpdate);
      FiltrarDataSet(Extraordinarios_part,'Proyecto,IdMaterial',[FrmRequisicionSS7.anexo_requisicion.FieldByName('sNumeroOrden').AsString, materiales.FieldByName('IdInsumo').AsInteger]);
      Extraordinarios_part.Open;
  end;
end;

procedure TfrmAgregarMasivoRequisicion.View_Grid_MaterialesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if View_Grid_Materiales.OptionsView.CellAutoHeight then
      View_Grid_Materiales.OptionsView.CellAutoHeight := False
   else
      View_Grid_Materiales.OptionsView.CellAutoHeight := True;
end;

procedure TfrmAgregarMasivoRequisicion.View_Grid_MaterialesDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  isOpen:=False;
end;

procedure TfrmAgregarMasivoRequisicion.View_Grid_MaterialesDataControllerFilterChanged(
  Sender: TObject);
begin
  isOpen:=True;
end;

procedure TfrmAgregarMasivoRequisicion.SalidaControl(Sender: TObject);
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

procedure TfrmAgregarMasivoRequisicion.EnterControl(Sender: TObject);
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

procedure TfrmAgregarMasivoRequisicion.Extraordinarios_partAfterScroll(
  DataSet: TDataSet);
begin
   cxExtraordinario.Text := '';
   if Extraordinarios_part.RecordCount > 0 then
      cxExtraordinario.Text := Extraordinarios_part.FieldByName('Extraordinario').AsString;
end;

procedure TfrmAgregarMasivoRequisicion.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmAgregarMasivoRequisicion.materialesAfterScroll(DataSet: TDataSet);
begin
    if PanelDetalle.Visible and isOpen then
    begin
       AsignarSQL(Extraordinarias,'anexo_extraordinarios',pUpdate);
       FiltrarDataSet(Extraordinarias,'Proyecto,IdMaterial',[FrmRequisicionSS7.anexo_requisicion.FieldByName('sNumeroOrden').AsString, materiales.FieldByName('IdInsumo').AsInteger]);
       Extraordinarias.Open;
  end;
end;

procedure TfrmAgregarMasivoRequisicion.ActualizarExtraordinarios2Click(Sender: TObject);
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

end.

