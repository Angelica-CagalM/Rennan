unit frm_agregar_servicios;

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
  TfrmAgregarMasivoServicios = class(TForm)
    mnuPop: TPopupMenu;
    Panel1: TPanel;
    Panel2: TPanel;
    zAnterior: TUniQuery;
    Panel3: TPanel;
    cxLabel3: TcxLabel;
    materiales: TUniQuery;
    ds_materiales: TDataSource;
    View_Grid_Materiales: TcxGridDBTableView;
    cxViewMateriales: TcxGridLevel;
    cxGrid1: TcxGrid;
    View_Grid_MaterialesColumn1: TcxGridDBColumn;
    View_Grid_MaterialesColumn2: TcxGridDBColumn;
    View_Grid_MaterialesColumn4: TcxGridDBColumn;
    zRecurso: TUniQuery;
    ds_Recurso: TDataSource;
    layer: TcxLabel;
    Panel5: TPanel;
    uCostos: TUniQuery;
    ds_costos: TDataSource;
    zAsigna: TUniQuery;
    uMedidas: TUniQuery;
    ds_medidas: TDataSource;
    uGrupoMaterial: TUniQuery;
    dsGrupoMaterial: TDataSource;
    cxCantidad: TcxCalcEdit;
    Panel6: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    PanelAdicionales: TPanel;
    progreso: TcxProgressBar;
    LabelProceso: TcxLabel;
    Anexos: TUniQuery;
    dsAnexos: TDataSource;
    Extraordinarias: TUniQuery;
    dsExtraordinarias: TDataSource;
    ActualizarExtraordinarios1: TMenuItem;
    ActualizarExtraordinarios2: TMenuItem;
    Extraordinarios_part: TUniQuery;
    dsExtraordinarios_part: TDataSource;
    dsEquipos: TDataSource;
    zEquipos: TUniQuery;
    dxLayoutItem2: TdxLayoutItem;
    cbEquipos: TcxLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    btnServicios: TcxButton;
    btnAgregarAccesorio: TcxButton;
    btnEditAccesorio: TcxButton;
    btnEliminaAccesorio: TcxButton;
    btnSave: TcxButton;
    procedure frmBarra1btnExitClick(Sender: TObject);

    procedure dtbCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGuardiasPropertiesChange(Sender: TObject);
    Procedure addRequisicon;
    procedure View_Grid_MaterialesCellDblClick(Sender: TcxCustomGridTableView;
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
    procedure btnAddClick(Sender: TObject);
    procedure ActualizarExtraordinarios1Click(Sender: TObject);
    procedure ActualizarExtraordinarios2Click(Sender: TObject);
    procedure cxViewDetalleMaterialCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnServiciosClick(Sender: TObject);
    procedure btnAgregarAccesorioClick(Sender: TObject);
    procedure btnEditAccesorioClick(Sender: TObject);
    procedure btnEliminaAccesorioClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure View_Grid_MaterialesColumn2StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgregarMasivoServicios : TfrmAgregarMasivoServicios;
  sOldId           : string;
  sOpcion          : string;
  Parametro        : string;
  Id               : string;
  isOpen           : boolean;
  implementation
 uses
    frm_catalogos_Operaciones,Frm_CostoPresupuesto,Frm_RequisicionMaterial,frm_SalidaAlmacen,
  frm_requisicion_ss7, frm_CargaMaterial, frm_RevisionesRequisicion,
  frm_agregar_Accesorios;
{$R *.dfm}

procedure TfrmAgregarMasivoServicios.ActualizarExtraordinarios1Click(
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
       FiltrarDataSet(Extraordinarias,'Proyecto,IdMaterial',[FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('sNumeroOrden').AsString,-1]);
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


procedure TfrmAgregarMasivoServicios.addRequisicon;
Var
  SavePlace : TBookmark;
  dCantidad : Currency ;
  zVerificar : TUniQuery;
  rev : Integer;
begin

    if (global_frmActivo ='Nuevo_Servicio') and (FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('sStatus').AsString = 'GENERO PR')then
    begin

      zVerificar := tUniquery.create(nil);
      zVerificar.Connection := Connection.Uconnection;

      zVerificar.Active := False;
      AsignarSQL(zVerificar, 'consulta_prequisicion_serv',pUpdate);
      FiltrarDataSet(zVerificar, 'Folio',
      [FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('iFolioRequisicion').AsInteger]);
      zVerificar.Open;
    end;


    If OpcButton = 'New' then
    Begin
        if (InttoStr(materiales.FieldValues['IdInsumo']) = '') or (materiales.FieldValues['IdInsumo'] = null) or (cxCantidad.Text = '') then
        begin
             messageDLG('Seleccione un Material para Agregar a la Requisicion.', mtInformation, [mbOK], 0);
             exit;
        end;

        if (cbEquipos.EditValue = '') or (cbEquipos.EditValue = null) then
        begin
          MessageDlg('Seleccione el equipo a relacionar con el servicio!', mtConfirmation, [mbOK], 0);
          exit;
        end;
        cbEquipos.SetFocus;
        lExiste := False;

//        zRevision := tUniquery.create(nil);
//        zRevision.Connection := Connection.Uconnection;

        //Consultamos primero si ya existe el material dado de alta en la requisición..
        Connection.QryUBusca.Active := False;
        Connection.QryUBusca.SQL.Clear;
        AsignarSQL(Connection.qryUBusca, 'existe_insumo_preq_serv', pUpdate);
        FiltrarDataSet(Connection.qryUBusca, 'Contrato, Folio, Insumo, Tipo',
        [Global_Contrato,
        FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('iFolioRequisicion').AsString,
        materiales.FieldByName('IdInsumo').AsString,
        materiales.FieldByName('IdTipoRecurso').AsString ]);
        Connection.QryUBusca.Open;



//        AsignarSQL(zRevision, 'consulta_revision_serv', pUpdate);
//        FiltrarDataSet(zRevision, 'FolioReq', [FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('iFolioRequisicion').AsString]);
//        zRevision.Open;
////
//        if zRevision.RecordCount = 0 then
//          rev := 0
//        else
//          if global_frmActivo ='Nuevo_Servicio' then
//            rev := zRevision.FieldByName('maxRevision').AsInteger +1
//          else
//             rev := zRevision.FieldByName('maxRevision').AsInteger ;

        if connection.QryUBusca.RecordCount = 0 then
        begin
            //Try
            //Insertamos el material para la Requisicion,..
            Connection.QryUBusca.Active := False ;
            Connection.QryUBusca.SQL.Clear ;
            AsignarSQL(Connection.qryUBusca, 'inserta_prequisicion_serv', pUpdate);
            FiltrarDataSet(Connection.qryUBusca, 'IdPRequisicion, sContrato, iFolioRequisicion, IdInsumo, iItem, mDescripcion, '+
            'IdMedida, dFechaRequerimiento, dCantidad, sObservacion, sEstado, IdTipoRecurso, IdGrupo, sNumeroOrden_WorkOrder,  '+
            'NumeroMaterial, EspecificacionesQA, EspecificacionesQAN, Extraordinario, IncluyeCodigoMat, sIdEquipo, Revision',
             [0,Global_Contrato,
            FrmRevisionesRequisiciones.anexo_requisicion.FieldValues['iFolioRequisicion'],
            materiales.FieldValues['IdInsumo'], 0 , materiales.fieldValues['Insumo'] ,
            materiales.fieldValues['IdMedida'] ,
            FechaTimeSQL(FrmRevisionesRequisiciones.anexo_requisicion.FieldValues['dFechaSolicitado']),
            cxCantidad.Value , '', 'PENDIENTE', materiales.FieldByName('IdTipoRecurso').AsInteger,
            materiales.FieldByName('IdGrupoSAP').AsInteger,
            '',materiales.FieldByName('Codigo').AsString,
            '', '', '',  '',cbEquipos.EditValue,FrmRevisionesRequisiciones.cxView_Requsicion.DataController.DataSet.FieldByName('Revision').AsString]);
            Connection.QryUBusca.ExecSQL  ;
        //Except

        end
        else
        begin
          if MessageDlg('Se encontro una coincidencia en la Requisición actual, Desea sumar la cantidad del material?(Si) De Acuerdo, (No) Registro Independiente.', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          begin
            Connection.qryUBusca.Active := False;
            Connection.qryUBusca.SQL.Clear;
            Connection.qryUBusca.SQL.Add('Select Max(iItem) as iItem From anexo_prequisicion_serv Where sContrato = :Contrato And iFolioRequisicion = :Folio and IdInsumo = :Insumo ');
            connection.qryUBusca.Params.ParamByName('Contrato').AsString := Global_Contrato;
            connection.qryUBusca.Params.ParamByName('Folio').AsString    := FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('iFolioRequisicion').AsString;
            Connection.qryUBusca.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
            Connection.qryUBusca.Open;
            if not Connection.qryUBusca.FieldByName('iItem').IsNull then
            begin
                Connection.qryUBusca2.Active := False ;
                Connection.qryUBusca2.SQL.Clear ;
                AsignarSQL(Connection.QryUBusca2, 'inserta_prequisicion_serv', pUpdate);
                FiltrarDataSet(Connection.QryUBusca2, 'IdPRequisicion, sContrato, iFolioRequisicion, IdInsumo, iItem, mDescripcion, '+
                'IdMedida, dFechaRequerimiento, dCantidad, sObservacion, sEstado, IdTipoRecurso, IdGrupo, sNumeroOrden_WorkOrder,  '+
                'NumeroMaterial, EspecificacionesQA, EspecificacionesQAN, Extraordinario, IncluyeCodigoMat, sIdEquipo, Revision',
                [0, Global_Contrato ,
                FrmRevisionesRequisiciones.anexo_requisicion.FieldValues['iFolioRequisicion'] ,
                materiales.fieldValues['IdInsumo'] ,
                Connection.qryUBusca.FieldByName('iItem').AsInteger + 1,
                materiales.fieldValues['Insumo'] , materiales.fieldValues['IdMedida'],
                FechaTimeSQL(FrmRevisionesRequisiciones.anexo_requisicion.FieldValues['dFechaSolicitado']),
                cxCantidad.Value , '', 'PENDIENTE',  materiales.FieldByName('IdTipoRecurso').AsInteger,
                materiales.FieldByName('IdGrupoSAP').AsInteger,
                '', materiales.FieldByName('Codigo').AsString ,
                '', '', '', '', cbEquipos.EditValue, FrmRevisionesRequisiciones.cxView_Requsicion.DataController.DataSet.FieldByName('Revision').AsString ]);
                Connection.qryUBusca2.ExecSQL  ;
            end
            else
            begin
                Connection.qryUBusca2.Active := False ;
                Connection.qryUBusca2.SQL.Clear ;
                AsignarSQL(Connection.QryUBusca2, 'inserta_prequisicion_serv', pUpdate);
                FiltrarDataSet(Connection.QryUBusca2, 'IdPRequisicion, sContrato, iFolioRequisicion, IdInsumo, iItem, mDescripcion, '+
                'IdMedida, dFechaRequerimiento, dCantidad, sObservacion, sEstado, IdTipoRecurso, IdGrupo, sNumeroOrden_WorkOrder,  '+
                'NumeroMaterial, EspecificacionesQA, EspecificacionesQAN, Extraordinario, IncluyeCodigoMat, sIdEquipo, Revision',
                [0, Global_Contrato,
                FrmRevisionesRequisiciones.anexo_requisicion.FieldValues['iFolioRequisicion'] ,
                materiales.FieldValues['IdInsumo'] ,
                Connection.qryUBusca.FieldByName('iItem').AsInteger + 1,
                materiales.fieldValues['Insumo'] , materiales.fieldValues['IdMedida'] ,
                FechaTimeSQL(FrmRevisionesRequisiciones.anexo_requisicion.FieldValues['dFechaSolicitado']),
                cxCantidad.Value , '', 'PENDIENTE',
                materiales.FieldByName('IdTipoRecurso').AsInteger, '',
                materiales.FieldByName('IdGrupoSAP').AsInteger,
                materiales.FieldByName('Codigo').AsString,
                '', '', '', '', cbEquipos.EditValue, FrmRevisionesRequisiciones.cxView_Requsicion.DataController.DataSet.FieldByName('Revision').AsString ]);
                Connection.qryUBusca2.ExecSQL  ;
            end
          end
          else
          begin
            dCantidad := 0;
//            Connection.qryUBusca.Active := False;
//            Connection.qryUBusca.SQL.Clear;
//            Connection.qryUBusca.SQL.Add('Select dCantidad From anexo_prequisicion_serv Where sContrato = :Contrato And ' +
//              'iFolioRequisicion = :Folio and IdInsumo = :Insumo ');
//            connection.qryUBusca.Params.ParamByName('Contrato').AsString := Global_Contrato;
//            connection.qryUBusca.Params.ParamByName('Folio').AsString    := FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('iFolioRequisicion').AsString;
//            connection.qryUBusca.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
//            Connection.qryUBusca.Open;

            if Connection.qryUBusca.RecordCount > 0 then
              dCantidad := Connection.qryUBusca.FieldByName('dCantidad').AsFloat;

            Connection.zUCommand.Active := False;
            Connection.zUCommand.SQL.Clear;
            AsignarSQL(Connection.zUCommand, 'update_prequisicion_serv_001', pUpdate);
            FiltrarDataSet(Connection.zUCommand, 'Contrato, Folio, Insumo, Cantidad',
            [Global_Contrato,
            FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('iFolioRequisicion').AsString,
            materiales.FieldByName('IdInsumo').AsString,
            (dCantidad + cxCantidad.Value) ]);
            Connection.zUCommand.ExecSQL;
          end;
        end;

        connection.QryUBusca.Active := false;
        connection.QryUBusca.SQL.Clear;
        AsignarSQL(connection.QryUBusca,'update_insumo_equipo',pUpdate);
        FiltrarDataSet(connection.QryUBusca, 'Equipo, Insumo', [cbEquipos.EditValue, materiales.FieldByName('IdInsumo').AsInteger]);
        connection.QryUBusca.ExecSQL;

        FrmRevisionesRequisiciones.anexo_prequisicion.Refresh ;
        FrmRevisionesRequisiciones.anexo_prequisicion.Locate('IdInsumo',materiales.FieldValues['IdInsumo'], [loCaseInsensitive]);
        if FrmRevisionesRequisiciones.anexo_prequisicion.RecordCount > 0 then
          FrmRevisionesRequisiciones.btnAccesorios.Enabled := True;
    End
    Else
    try
        SavePlace := FrmRevisionesRequisiciones.anexo_prequisicion.GetBookmark ;
        Connection.zUCommand.Active  := False ;
        Connection.zUCommand.SQL.Clear ;
        AsignarSQL(Connection.zUCommand, 'update_prequisicion_serv_002', pUpdate);
        FiltrarDataSet(Connection.zUCommand, 'Requerido, Cantidad, Contrato, Folio, item, Insumo ',
        [Global_Contrato ,
        FrmRevisionesRequisiciones.anexo_requisicion.FieldValues['iFolioRequisicion'] ,
        FrmRevisionesRequisiciones.anexo_prequisicion.FieldValues['iItem'] ,
        FrmRevisionesRequisiciones.anexo_prequisicion.FieldValues['IdInsumo'] ,
        FechaTimeSQL(FrmRevisionesRequisiciones.anexo_requisicion.FieldValues['dFechaSolicitado']),
        cxCantidad.Value ]);
        Connection.zUCommand.ExecSQL ;

        FrmRevisionesRequisiciones.anexo_prequisicion.Refresh  ;
        if FrmRevisionesRequisiciones.anexo_prequisicion.RecordCount > 0 then
          FrmRevisionesRequisiciones.btnAccesorios.Enabled := True;
        FrmRevisionesRequisiciones.anexo_prequisicion.GotoBookmark(SavePlace);
        FrmRevisionesRequisiciones.anexo_prequisicion.FreeBookmark(SavePlace);
    except
      on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al actualizar registro', 0);
      end;
    End ;

    if (global_frmActivo ='Nuevo_Servicio') and (FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('sStatus').AsString = 'GENERO PR' )then
    begin
      connection.qryUBusca.Active := False;
      AsignarSQL(connection.qryUBusca, 'consulta_prequisicion_serv',pUpdate);
      FiltrarDataSet(connection.qryUBusca, 'Folio',
      [FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('iFolioRequisicion').AsInteger]);
      connection.qryUBusca.Open;

      connection.qryUBusca.RecordCount;

      connection.qryUBusca.First;

      while not connection.qryUBusca.Eof do
      begin
          if not(zVerificar.Locate('IdInsumo', connection.qryUBusca.FieldByName('IdInsumo').AsInteger,[])) then
          begin
            connection.zUCommand.Active := False;
            AsignarSQL(connection.zUCommand, 'update_estatus_requisicion', pUpdate);
            FiltrarDataSet(connection.zUCommand, 'Estatus, Folio', ['PENDIENTE',FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('iFolioRequisicion').AsInteger]);
            connection.zUCommand.ExecSQL;
            FrmRevisionesRequisiciones.anexo_requisicion.Refresh;
          end;
        connection.qryUBusca.Next;
      end;


    end;

end;


procedure TfrmAgregarMasivoServicios.btnAddClick(Sender: TObject);
begin
  Application.CreateForm(TfrmCargaMaterial, frmCargaMaterial);
  frmCargaMaterial.show;
end;


procedure TfrmAgregarMasivoServicios.btnEditAccesorioClick(Sender: TObject);
begin
  Panel6.Visible := true;
  btnAgregarAccesorio.Enabled := False;
  btnEditAccesorio.Enabled := False;
  btnEliminaAccesorio.Enabled := False;
  Materiales.Edit;
  View_Grid_Materiales.OptionsData.Editing := true;
  View_Grid_MaterialesColumn2.Options.Editing := True;
end;

procedure TfrmAgregarMasivoServicios.btnEliminaAccesorioClick(Sender: TObject);
var
iGrid, indice : integer;
zElimina : TUniQuery;
begin
  iGrid     := 0;
   try
      indice := View_Grid_Materiales.DataController.GetSelectedRowIndex(iGrid);
    Except
      on e:exception do begin
          //nothing to do
      end;
    end;

   with View_Grid_Materiales.DataController.DataSource.DataSet do
   for iGrid := 0 to View_Grid_Materiales.DataController.GetSelectedCount - 1 do
   begin
      indice := View_Grid_Materiales.DataController.GetSelectedRowIndex(iGrid);
      View_Grid_Materiales.DataController.FocusedRowIndex := indice;

      zElimina := TUniQuery.Create(nil);
      zElimina.connection := Connection.Uconnection;
      zElimina.Active := False;
      zElimina.SQL.Clear;
      AsignarSQL(zElimina, 'prequisicion_serv_acc_elimina', pUpdate);
      FiltrarDataSet(zElimina, 'Accesorio', [View_Grid_Materiales.DataController.DataSet.FieldByName('IdAccesorio').AsString ]);
      zElimina.Execute;
   end;

   Materiales.Refresh;


end;

procedure TfrmAgregarMasivoServicios.cxActualizaClick(Sender: TObject);
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

//        if lContinua then
       if (global_frmActivo ='Servicios') or (global_frmActivo ='Nuevo_Servicio') then
       begin

//         while not View_Grid_Materiales.DataController.DataSet.Eof do
//         begin
           addRequisicon;
           View_Grid_Materiales.DataController.DataSet.Next;
//         end;
//          addRequisicon;
       end;
    end;

    zActualiza.destroy;
end;

procedure TfrmAgregarMasivoServicios.btnAgregarAccesorioClick(Sender: TObject);
begin
  close;
  Application.CreateForm(TfrmAgregarMasivoAccesorios, frmAgregarMasivoAccesorios);
  frmAgregarMasivoAccesorios.show;

end;

procedure TfrmAgregarMasivoServicios.btnSaveClick(Sender: TObject);
begin
  if Materiales.State = dsEdit then
    Materiales.Post;

  btnAgregarAccesorio.Enabled := True;
  btnEditAccesorio.Enabled := True;
  btnEliminaAccesorio.Enabled := True;


  Panel6.Visible := False;
  View_Grid_Materiales.OptionsData.Editing := False;
  View_Grid_MaterialesColumn2.Options.Editing := False;
end;

procedure TfrmAgregarMasivoServicios.btnServiciosClick(Sender: TObject);
begin
  View_Grid_Materiales.DataController.ClearFindFilterText;

  AsignarSQL(materiales,'catalogo_agregarmasivo',pUpdate);
  FiltrarDataSet(materiales,'Usuario,Codigo,Contrato,Tipo',['-1','-1',global_contrato,
  FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger]);
  materiales.Open;
  View_Grid_Materiales.DataController.DataSource.DataSet.First;

  cbEquipos.EditValue := '3.1.';
end;

procedure TfrmAgregarMasivoServicios.cxGuardiasPropertiesChange(Sender: TObject);
begin
  View_Grid_Materiales.Columns[0].Visible:=True;
  View_Grid_Materiales.Columns[1].Visible:=True;
  View_Grid_Materiales.Columns[2].Visible:=True;
  View_Grid_Materiales.Columns[3].Visible:=True;
end;

procedure TfrmAgregarMasivoServicios.cxViewDetalleMaterialCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
//    if Extraordinarios_part.RecordCount > 0 then
//       cxExtraordinario.Text := Extraordinarios_part.FieldByName('Extraordinario').AsString;
end;

procedure TfrmAgregarMasivoServicios.dtbCancelarClick(Sender: TObject);
begin
  Materiales.Cancel;

  btnAgregarAccesorio.Enabled := true;
  btnEditAccesorio.Enabled := True;
  btnEliminaAccesorio.Enabled := True;

  View_Grid_Materiales.OptionsData.Editing := False;
  View_Grid_MaterialesColumn2.Options.Editing := False;
  panel6.Visible:= False;
end;

procedure TfrmAgregarMasivoServicios.FormShow(Sender: TObject);
var
  codigo : String;
  iGrid, indice: Integer;
begin
//  id:='-1';
// // cxSplitterDetalle.Visible:=False;
////  frmBarraH11.btnAdd.Visible:=true;
//  IsOpen:=False;
//  AsignarSQL(materiales,'catalogo_agregarmasivo',pUpdate);
//  FiltrarDataSet(materiales,'Usuario,Codigo,Contrato,Tipo',['-1','-1',global_contrato,
//  FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger]);
//  materiales.Open;
//  View_Grid_Materiales.DataController.DataSource.DataSet.First;
//
//  zRecurso.Active:=False;
//  zRecurso.SQL.Text:='select IdTiporecurso, Nombre from op_tiporecurso ';
//  zRecurso.Open;
//
//  uMedidas.Active:=False;
//  AsignarSQL(uMedidas,'master_medidas',pUpdate);
//  FiltrarDataSet(uMedidas,'Id,Codigo',[-1,-1]);
//  uMedidas.Open;
//
//  uGrupoMaterial.Active:=False;
//  AsignarSQL(uGrupoMaterial,'alm_grupos',pUpdate);
//  uGrupoMaterial.Open;
//
//  if FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('Recurso').AsString = 'Servicio' then
//  begin
//    AsignarSQL(zEquipos, 'requisicion_servicios_equipos', pUpdate);
//    FiltrarDataset(zEquipos,'Contrato, IdEquipo',[FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('Contrato').AsString, -1]);
//    zEquipos.Open;
//
//  end;
//    if global_frmActivo='Nuevo_Servicio' then
//  begin
//     codigo :=  FrmRevisionesRequisiciones.cxView_Materiales.DataController.DataSet.FieldByName('sIdInsumo').AsString;
//     cbEquipos.EditValue :=  FrmRevisionesRequisiciones.cxView_Materiales.DataController.DataSet.FieldByName('Partida').AsString;
//
//    if materiales.Locate('codigo', codigo, []) then
//    begin
//         View_Grid_Materiales.DataController.FindFilterText := codigo;
////         while not View_Grid_Materiales.DataController.DataSet.Eof do
////         begin
////           addRequisicion;
////           View_Grid_Materiales.DataController.DataSet.Next;
////         end;
//
//    end;
//
//    // View_Grid_Materiales.DataController.CreateItemByField(codigo);
//   //View_Grid_Materiales.OptionsSelection.CellSelect := true;
//  end
//  else
//    cbEquipos.EditValue := '3.1.';
//  isOpen:=True;
//  cxGrid1.SetFocus;
   Materiales.Active := False;
   AsignarSQL(Materiales, 'existe_accesorio', pUpdate);
   FiltrarDataSet(Materiales, 'sIdEquipo, EquipoDetalle, FolioReq, ReqDetalle',
   [FrmRequisicionss7.anexo_prequisicion.FieldByName('sIdEquipo').AsString, '-1', FrmRequisicionss7.anexo_prequisicion.FieldByName('iFolioRequisicion').AsString,
   FrmRequisicionss7.anexo_prequisicion.FieldByName('IdPRequisicion').AsString]);
   Materiales.Open;

   btnAgregarAccesorio.Enabled := False;
   btnEditAccesorio.Enabled    := False;
   btnEliminaAccesorio.Enabled := False;
   if ((FrmRequisicionss7.anexo_requisicion.FieldByName('sStatus').AsString = 'PENDIENTE') and (FrmRequisicionss7.anexo_requisicion.FieldByName('Recurso').AsString = 'Servicio'))
   or ((FrmRequisicionss7.anexo_requisicion.FieldByName('sStatus').AsString = 'GENERO PR') AND (FrmRequisicionss7.anexo_requisicion.FieldByName('Rev').AsInteger > 0) and (FrmRequisicionss7.anexo_requisicion.FieldByName('Recurso').AsString = 'Servicio')) then
   begin
     btnAgregarAccesorio.Enabled := True;
     btnEditAccesorio.Enabled    := True;
     btnEliminaAccesorio.Enabled := True;
   end;

end;

procedure TfrmAgregarMasivoServicios.frmBarra1btnExitClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmAgregarMasivoServicios.View_Grid_MaterialesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if View_Grid_Materiales.OptionsView.CellAutoHeight then
      View_Grid_Materiales.OptionsView.CellAutoHeight := False
   else
      View_Grid_Materiales.OptionsView.CellAutoHeight := True;
end;

procedure TfrmAgregarMasivoServicios.View_Grid_MaterialesColumn2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  AStyle := TcxStyle.Create(nil);
  AStyle.Color:=connection.cxStyleEdicion.Color;
end;

procedure TfrmAgregarMasivoServicios.View_Grid_MaterialesDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  isOpen:=False;
end;

procedure TfrmAgregarMasivoServicios.View_Grid_MaterialesDataControllerFilterChanged(
  Sender: TObject);
begin
  isOpen:=True;
end;

procedure TfrmAgregarMasivoServicios.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxCalcEdit) then
        tcxCalcEdit(sender).Style.Color := global_color_SalidaERP;

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

procedure TfrmAgregarMasivoServicios.EnterControl(Sender: TObject);
begin
     if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;
    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxCalcEdit) then
        tcxCalcEdit(sender).Style.Color := global_color_entradaERP;

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

procedure TfrmAgregarMasivoServicios.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;


procedure TfrmAgregarMasivoServicios.ActualizarExtraordinarios2Click(Sender: TObject);
var
   iTotal : integer;
begin
 if connection.uconfiguracion.FieldByName('ConexionRefresh').AsString = 'Si' then
   begin
       if connection.UniConnectionSQLServer.Connected = False then
          connection.UniConnectionSQLServer.Connected := True;

       IsOpen := False;
       AsignarSQL(Extraordinarias,'anexo_extraordinarios',pUpdate);
       FiltrarDataSet(Extraordinarias,'Proyecto,IdMaterial',[FrmRevisionesRequisiciones.anexo_requisicion.FieldByName('sNumeroOrden').AsString,materiales.FieldByName('IdInsumo').AsInteger]);
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
