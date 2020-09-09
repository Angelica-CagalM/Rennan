unit frm_agregar_masivoOP_THY;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask,Math, frm_barra, adodb, db, Menus, OleCtrls,
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
  dxBarBuiltInMenu, cxPC, dxLayoutControlAdapters ;

type
  TfrmAgregarMasivoOP_THY = class(TForm)
    mnuPop: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    Pegar1: TMenuItem;
    Copiar1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    cxActualiza: TcxButton;
    zAnterior: TUniQuery;
    Panel3: TPanel;
    cxLabel3: TcxLabel;
    materiales: TUniQuery;
    ds_materiales: TDataSource;
    dtbCancelar: TcxButton;
    View_Grid_Materiales: TcxGridDBTableView;
    cxViewMateriales: TcxGridLevel;
    cxGrid1: TcxGrid;
    View_Grid_MaterialesCodigo: TcxGridDBColumn;
    View_Grid_MaterialesMedida: TcxGridDBColumn;
    View_Grid_MaterialesExistencia: TcxGridDBColumn;
    View_Grid_MaterialesInsumo: TcxGridDBColumn;
    View_Grid_MaterialesFechaCosto: TcxGridDBColumn;
    zRecurso: TUniQuery;
    ds_Recurso: TDataSource;
    layer: TcxLabel;
    View_Grid_MaterialesCosto: TcxGridDBColumn;
    Panel5: TPanel;
    PanelDetalle: TPanel;
    cxSplitterDetalle: TcxSplitter;
    frmBarraH11: TfrmBarraH1;
    cxGridDetalleDBTableView1: TcxGridDBTableView;
    cxGridDetalleLevel1: TcxGridLevel;
    cxGridDetalle: TcxGrid;
    cxColumnD1: TcxGridDBColumn;
    cxColumnD2: TcxGridDBColumn;
    uCostos: TUniQuery;
    ds_costos: TDataSource;
    View_Grid_MaterialesEstado: TcxGridDBColumn;
    zAsigna: TUniQuery;
    PanelNuevoMaterial: TPanel;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxCodigo: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cmbMedida: TcxLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxCantidad: TcxCalcEdit;
    dxLayoutItem5: TdxLayoutItem;
    uMedidas: TUniQuery;
    ds_medidas: TDataSource;
    cxDescripcion: TcxMemo;
    dxLayoutItem6: TdxLayoutItem;
    cxColumnD3: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cbSubFamilia: TcxLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    dsFamilia: TDataSource;
    zFamilia: TUniQuery;
    dsSubFamilia: TDataSource;
    zSubFamilia: TUniQuery;
    cbFamilia: TcxLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    zMarca: TUniQuery;
    dsMarca: TDataSource;
    cbMarca: TcxLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    edtModelo: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    edtNumero: TcxTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cbProducto: TcxLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    zproducto: TUniQuery;
    dsProducto: TDataSource;
    zInsumos: TUniQuery;
    btnAceptar: TcxButton;
    cxPageCostos: TcxPageControl;
    cxTabCosto_OC: TcxTabSheet;
    cxTabcosto_PU: TcxTabSheet;
    cxGridPU: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    zCostoPU: TUniQuery;
    dsCostoPU: TDataSource;
    View_Grid_MaterialesMoneda: TcxGridDBColumn;
    View_Grid_MaterialesRequisicion: TcxGridDBColumn;
    View_Grid_MaterialesCantidad: TcxGridDBColumn;
    View_Grid_MaterialesRecibido: TcxGridDBColumn;
    View_Grid_MaterialesFaltante: TcxGridDBColumn;
    Entradas: TUniQuery;
    zExistenciaEntrada: TUniQuery;
    Panel6: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    cxLabel2: TcxLabel;
    cxGuardias: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    edtCantidad: TcxCalcEdit;
    btnExpandir: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    cxLabelOrigen: TcxLabel;
    Panel4: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cbAdicional: TcxComboBox;
    cbFinanciamiento: TcxComboBox;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem15: TdxLayoutItem;
    cxLabel5: TcxLabel;
    View_Grid_MaterialesTrazabilidad: TcxGridDBColumn;
    View_Grid_MaterialesReservados: TcxGridDBColumn;
    View_Grid_MaterialesCantSalida: TcxGridDBColumn;
    View_Grid_MaterialesDisponible: TcxGridDBColumn;
    View_Grid_MaterialesItem: TcxGridDBColumn;
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure cxActualizaClick(Sender: TObject);
    procedure dtbCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGuardiasPropertiesChange(Sender: TObject);
    Procedure addRequisicon;
    Procedure addInsumosSolicitud;
    Procedure addEntrada;
    Procedure addEntradaMasivo;
    Procedure addSalida;
    Procedure addAsignacion;
    Procedure SelectMaterial;
    procedure addSalidaEmbarque;
    procedure addSalidaSolicitudMateriales;
    Procedure SelectEntradas;
    procedure View_Grid_MaterialesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    function camposLlenos():Boolean;
    procedure View_Grid_MaterialesCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cbFamiliaPropertiesEditValueChanged(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure frmBarraH11btnEditClick(Sender: TObject);
    procedure cxPageCostosChange(Sender: TObject);
    procedure ScrollMateriales;
    procedure cxTabCosto_OCShow(Sender: TObject);
    procedure cxTabcosto_PUShow(Sender: TObject);
    procedure View_Grid_MaterialesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExpandirClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    IdTipoRecurso:Integer;
  end;

var
  frmAgregarMasivoOP_THY : TfrmAgregarMasivoOP_THY;
  sOldId           : string;
  sOpcion          : string;
  Parametro        : string;
  Id               : string;
  isOpen           : boolean;
  noAplica         : boolean;
  implementation
 uses
    frm_catalogos_Operaciones,Frm_CostoPresupuesto,Frm_RequisicionMaterial,frm_SalidaAlmacen_THY,frm_AvisoEmbarque,
  frm_EntradaAlmacen_THY,frm_Existencia, Frm_SolicitudMaterial, frm_SolicitudDeMateriales,Func_Genericas,
  frm_AvisoEmbarque_THY;

{$R *.dfm}


procedure TfrmAgregarMasivoOP_THY.addAsignacion;
begin
   zAsigna.SQL.Text:='select IdVale From vale_resguardo where IdSalida = :Salida';
   zAsigna.ParamByName('Salida').AsString:= frmSalidaAlmacen_THY.salida_almacen.FieldByName('iFolioSalida').AsString;
   zAsigna.Open;
   if zAsigna.RecordCount>0 then
   begin
      zAnterior.Active := False;
      zAnterior.SQL.Clear;
      zAnterior.SQL.Add('INSERT INTO vale_resguardo_detalle (IdValeDetalle, IdVale, IdInsumo, Cantidad, Fecha, Estatus, Activo) '+
                        'VALUES (0, :IdVale, :IdInsumo, :Cantidad, :Fecha, :Estatus, :Activo)');
      zAnterior.ParamByName('IdVale').AsInteger := zAsigna.FieldByName('IdVale').AsInteger;
      zAnterior.ParamByName('IdInsumo').AsInteger := materiales.FieldByName('IdInsumo').AsInteger;
      zAnterior.ParamByName('Cantidad').AsFloat := edtCantidad.Value;
      zAnterior.ParamByName('Fecha').AsDate := frmSalidaAlmacen_THY.salida_almacen.FieldByName('dFechaSalida').AsDateTime;
      zAnterior.ParamByName('Estatus').AsString := 'EN RESGUARDO';
      zAnterior.ParamByName('Activo').AsString := 'No';
      zAnterior.ExecSQL;
   end;
end;

procedure TfrmAgregarMasivoOP_THY.addRequisicon;
Var
  SavePlace : TBookmark;
  dCantidad,dSolicitado : Currency ;
  cant,cant2, cantt : Double;
begin
    If OpcButton = 'New' then
    Begin
        if (InttoStr(materiales.FieldValues['IdInsumo']) = '') or (materiales.FieldValues['IdInsumo'] = null) or (edtCantidad.Text = '') then
        begin
             messageDLG('Seleccione un Material para Agregar a la Requisicion.', mtInformation, [mbOK], 0);
             exit;
        end;

//        try
          lExiste := False;

          //Consultamos primero si ya existe el material dado de alta en la requisición..
          Connection.QryUBusca.Active := False;
          Connection.QryUBusca.SQL.Clear;
          Connection.QryUBusca.SQL.Add('select IdInsumo from anexo_prequisicion where sContrato =:Contrato and iFolioRequisicion =:Folio and IdInsumo =:Insumo '+
          'and (:Tipo = -1 or (:Tipo <> -1 and  IdTipoRecurso = :Tipo))');
          Connection.QryUBusca.Params.ParamByName('Contrato').AsString := Global_Contrato;
          Connection.QryUBusca.Params.ParamByName('Folio').AsString    := FrmRequisicionMaterial.anexo_requisicion.FieldByName('iFolioRequisicion').AsString;
          Connection.QryUBusca.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
          Connection.QryUBusca.Params.ParamByName('Tipo').AsString   := FrmRequisicionMaterial.anexo_requisicion.FieldByName('IdTipoRecurso').AsString;//materiales.FieldByName('IdTipoRecurso').AsString;
          Connection.QryUBusca.Open;

          if connection.UContrato.FieldByName('FK_Titulo').AsString = 'CMMI' then begin

            Connection.QryBusca.Active := False;
            Connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Text := ('select (select IFNULL(sum(dCantidad), 0) from anexo_psolicitud where IdInsumo = i.IdInsumo)  as Reservado'+
                                            ' from alm_insumos i where i.IdInsumo = :Insumo');
            connection.QryBusca.Params.ParamByName('Insumo').AsInteger := materiales.FieldByName('IdInsumo').AsInteger;
            connection.QryBusca.Open;
          end;

          if connection.QryUBusca.RecordCount = 0 then
          begin
              //Try
              //Insertamos el material para la Requisicion,..
              Connection.QryUBusca.Active := False;
              Connection.QryUBusca.SQL.Clear ;
              Connection.QryUBusca.SQL.Text:=('INSERT INTO anexo_prequisicion '+
                                          '(sContrato, iFolioRequisicion, IdInsumo, mDescripcion, IdMedida, dFechaRequerimiento, ' +
                                          'dCantidad, dCantidadSolicitado, IdTipoRecurso)'  +
                                          'VALUES (:Contrato, :Folio, :Insumo, :Descripcion, :Medida, :Requerido, :Cantidad, :dCantidadSolicitado, :IdTipoRecurso);');
             // Connection.QryUBusca.Params.ParamByName('Contrato').DataType     := ftString ;
              Connection.QryUBusca.Params.ParamByName('Contrato').AsString        := Global_Contrato ;
             // Connection.QryUBusca.Params.ParamByName('Folio').DataType        := ftString ;
              Connection.QryUBusca.Params.ParamByName('Folio').AsString           := FrmRequisicionMaterial.anexo_requisicion.FieldValues['iFolioRequisicion'] ;
              //Connection.QryUBusca.Params.ParamByName('Insumo').DataType       := ftString ;
              Connection.QryUBusca.Params.ParamByName('Insumo').AsString          := materiales.FieldValues['IdInsumo'] ;
            //  Connection.QryUBusca.Params.ParamByName('Descripcion').DataType  := ftMemo ;
              Connection.QryUBusca.Params.ParamByName('Descripcion').AsString    := materiales.fieldValues['Insumo'] ;
             // Connection.QryUBusca.Params.ParamByName('Medida').DataType       := ftString ;
              Connection.QryUBusca.Params.ParamByName('Medida').AsInteger         := materiales.fieldValues['IdMedida'] ; ;
             // Connection.QryUBusca.Params.ParamByName('Requerido').DataType    := ftDate ;
              Connection.QryUBusca.Params.ParamByName('Requerido').AsDate     := FrmRequisicionMaterial.anexo_requisicion.FieldValues['dFechaSolicitado'];
             // Connection.QryUBusca.Params.ParamByName('Cantidad').DataType     := ftFloat ;

              if connection.uContrato.FieldByName('FK_Titulo').AsString = 'CMMI' then
              begin
                materiales.Refresh;
                cant := materiales.FieldByName('dExistencia').AsFloat - materiales.FieldByName('reservado').AsFloat;
                if cant = 0 then begin
                 messageDLG('Ya no hay materiales para reservar, se agregará de manera normal', mtInformation, [mbOK], 0);
                   Connection.QryUBusca.Params.ParamByName('Cantidad').AsFloat       := edtCantidad.Value ;
                   connection.qryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat := 0;
                end
                else
                if materiales.FieldByName('reservado').AsFloat + edtCantidad.Value > materiales.FieldByName('dExistencia').AsFloat then begin

                  if (edtCantidad.Value > cant) and (materiales.FieldByName('reservado').AsFloat <> 0) then begin
                      Connection.QryUBusca.Params.ParamByName('Cantidad').AsFloat       := edtCantidad.Value - cant;
                      connection.QryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat :=  cant;
                  end
                  else
                  if (edtCantidad.Value > cant) and (materiales.FieldByName('reservado').AsFloat = 0) then  begin
                     Connection.QryUBusca.Params.ParamByName('Cantidad').AsFloat       := edtCantidad.Value - materiales.FieldByName('dexistencia').AsFloat;
                     connection.QryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat :=   materiales.FieldByName('dexistencia').AsFloat ;
                  end
                  else begin
                      connection.qryUBusca.Params.ParamByName('Cantidad').AsFloat := 0;
                      connection.qryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat := edtCantidad.Value;
                  end;
                end
                else begin
                  Connection.QryUBusca.Params.ParamByName('Cantidad').AsFloat       := 0;
                  connection.QryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat := edtCantidad.Value;
                end;
              end
              else
              begin
                Connection.QryUBusca.Params.ParamByName('Cantidad').AsFloat       := edtCantidad.Value ;
                connection.qryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat := 0;
              end;

              Connection.QryUBusca.Params.ParamByName('IdTipoRecurso').AsInteger     :=  FrmRequisicionMaterial.anexo_requisicion.FieldByName('IdTipoRecurso').AsInteger;// materiales.FieldByName('IdTipoRecurso').AsInteger;
              Connection.QryUBusca.ExecSQL  ;
//
//              if connection.ucontrato.FieldByName('FK_Titulo').AsString = 'CMMI' then begin
//
//                if (materiales.FieldByName('iFolioRequisicion').AsInteger > 0 ) and (materiales.FieldByName('dCantidadSolicitado').AsFloat > 0) then
//                //
//                else
//                 begin
//                  Connection.QryUBusca.Active := False ;
//                  Connection.QryUBusca.SQL.Clear ;
//                  Connection.QryUBusca.SQL.Text := ('UPDATE alm_insumos set iFolioRequisicion = :FolioReq, dCantidadSolicitado =:Solicitado where sContrato = :Contrato and IdInsumo = :Insumo');
//                  connection.qryUBusca.Params.ParamByName('FolioReq').AsInteger := FrmRequisicionMaterial.anexo_requisicion.FieldByName('iFolioRequisicion').AsInteger;
//                  connection.qryUBusca.Params.ParamByName('Solicitado').AsFloat :=  materiales.FieldByName('dexistencia').AsFloat;
//                  connection.qryUBusca.Params.ParamByName('Contrato').AsString := global_contrato;
//                  connection.qryUBusca.Params.ParamByName('Insumo').AsInteger := materiales.FieldByName('IdInsumo').AsInteger;
//                  connection.qryUBusca.ExecSQL;
//                end;
//
//              end;

          //Except

          end
          else
          begin
            if MessageDlg('Se encontro una coincidencia en la Requisición actual, Desea sumar la cantidad del material?'+#13+'Si. Sumar Cantidad'+#13+'No. Registro Independiente.', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
            begin
              Connection.zUCommand.Active := False;
              Connection.zUCommand.SQL.Clear;
              Connection.zUCommand.SQL.Add('Select Max(iItem) as iItem From anexo_prequisicion Where sContrato = :Contrato And iFolioRequisicion = :Folio and IdInsumo = :Insumo group by iItem');
              connection.zUCommand.Params.ParamByName('Contrato').AsString := Global_Contrato;
              connection.zUCommand.Params.ParamByName('Folio').AsString    := FrmRequisicionMaterial.anexo_requisicion.FieldByName('sNumFolio').AsString;
              Connection.zUCommand.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
              Connection.zUCommand.Open;
              if not Connection.zUCommand.FieldByName('iItem').IsNull then
              begin
                  Connection.qryUBusca.Active := False ;
                  Connection.qryUBusca.SQL.Clear ;
                  Connection.qryUBusca.SQL.Add('INSERT INTO anexo_prequisicion ( sContrato, iFolioRequisicion, IdInsumo, iItem, mDescripcion, IdMedida, dFechaRequerimiento, ' +
                                              'dCantidad, IdTipoRecurso) '  +
                                              'VALUES (:Contrato, :Folio, :Insumo, :Item, :Descripcion, :Medida, :Requerido, :Cantidad, :IdTipoRecurso) ' );
                  Connection.qryUBusca.Params.ParamByName('Contrato').AsString     := Global_Contrato ;
                  Connection.qryUBusca.Params.ParamByName('Folio').AsString        := FrmRequisicionMaterial.anexo_requisicion.FieldValues['iFolioRequisicion'] ;
                  Connection.qryUBusca.Params.ParamByName('Insumo').AsString       := zRecurso.FieldValues['IdInsumo'] ;
                  Connection.qryUBusca.Params.ParamByName('Item').AsInteger        := Connection.zUCommand.FieldByName('iItem').AsInteger + 1;
                  Connection.qryUBusca.Params.ParamByName('Descripcion').DataType  := ftMemo ;
                  Connection.qryUBusca.Params.ParamByName('Descripcion').value     := materiales.fieldValues['Insumo'] ;
                  Connection.qryUBusca.Params.ParamByName('Medida').DataType       := ftString ;
                  Connection.qryUBusca.Params.ParamByName('Medida').value          := materiales.fieldValues['IdMedida'] ; ;
                  Connection.qryUBusca.Params.ParamByName('Requerido').DataType    := ftDate ;
                  Connection.qryUBusca.Params.ParamByName('Requerido').value       := FrmRequisicionMaterial.anexo_requisicion.FieldValues['dFechaSolicitado'];
//                  Connection.qryUBusca.Params.ParamByName('Cantidad').DataType     := ftFloat ;
//                  Connection.qryUBusca.Params.ParamByName('Cantidad').value        := edtCantidad.Value ;
                  if connection.uContrato.FieldByName('FK_Titulo').AsString = 'CMMI' then
                  begin
                    materiales.Refresh;
                    cant := materiales.FieldByName('dExistencia').AsFloat - materiales.FieldByName('reservado').AsFloat;
                    if cant = 0 then begin
                     messageDLG('Ya no hay materiales para reservar, se agregará de manera normal', mtInformation, [mbOK], 0);
                       Connection.QryUBusca.Params.ParamByName('Cantidad').AsFloat       := edtCantidad.Value ;
                       connection.qryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat := 0;
                    end
                    else
                    if edtCantidad.Value > cant then begin
                        Connection.QryUBusca.Params.ParamByName('Cantidad').AsFloat       :=  edtCantidad.Value - materiales.FieldByName('dexistencia').AsFloat;
                        connection.QryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat :=  materiales.FieldByName('dexistencia').AsFloat;
                    end
                    else begin
                        connection.qryUBusca.Params.ParamByName('Cantidad').AsFloat := 0;
                        connection.qryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat := edtCantidad.Value;
                    end;
                  end
                  else
                  begin
                    Connection.QryUBusca.Params.ParamByName('Cantidad').AsFloat       := edtCantidad.Value ;
                    connection.qryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat := 0;
                  end;
                  Connection.qryUBusca.Params.ParamByName('IdTipoRecurso').AsInteger     := materiales.FieldByName('IdTipoRecurso').AsInteger;
                  Connection.qryUBusca.ExecSQL  ;
              end
              else
              begin
                  Connection.qryUBusca.Active := False ;
                  Connection.qryUBusca.SQL.Clear ;
                  Connection.qryUBusca.SQL.Add('INSERT INTO anexo_prequisicion ( sContrato, iFolioRequisicion, IdInsumo, iItem, mDescripcion, IdMedida, dFechaRequerimiento, ' +
                                              'dCantidad, IdTipoRecurso) '  +
                                              'VALUES (:Contrato, :Folio, :Insumo, :item, :Descripcion, :Medida, :Requerido, :Cantidad, :IdTipoRecurso) ' );
                  Connection.qryUBusca.Params.ParamByName('Contrato').AsString     := Global_Contrato ;
                  Connection.qryUBusca.Params.ParamByName('Folio').AsString        := FrmRequisicionMaterial.anexo_requisicion.FieldValues['iFolioRequisicion'] ;
                  Connection.qryUBusca.Params.ParamByName('Insumo').AsString       := materiales.FieldValues['IdInsumo'] ;
                  Connection.qryUBusca.Params.ParamByName('Item').AsInteger        := Connection.zUCommand.FieldByName('iItem').AsInteger + 1;
                  Connection.qryUBusca.Params.ParamByName('Descripcion').DataType  := ftMemo ;
                  Connection.qryUBusca.Params.ParamByName('Descripcion').value     := materiales.fieldValues['Insumo'] ;
                  Connection.qryUBusca.Params.ParamByName('Medida').DataType       := ftString ;
                  Connection.qryUBusca.Params.ParamByName('Medida').value          := materiales.fieldValues['IdMedida'] ; ;
                  Connection.qryUBusca.Params.ParamByName('Requerido').DataType    := ftDate ;
                  Connection.qryUBusca.Params.ParamByName('Requerido').value       := FrmRequisicionMaterial.anexo_requisicion.FieldValues['dFechaSolicitado'];
                  Connection.qryUBusca.Params.ParamByName('Cantidad').DataType     := ftFloat ;
                  Connection.qryUBusca.Params.ParamByName('Cantidad').value        := edtCantidad.Value ;
                  Connection.qryUBusca.Params.ParamByName('IdTipoRecurso').AsInteger     := materiales.FieldByName('IdTipoRecurso').AsInteger;
                  Connection.qryUBusca.ExecSQL  ;
              end
            end
            else
            begin
              dCantidad := 0;
              Connection.qryUBusca.Active := False;
              Connection.qryUBusca.SQL.Clear;
              Connection.qryUBusca.SQL.Add('Select dCantidad, dCantidadSolicitado From anexo_prequisicion Where sContrato = :Contrato And ' +
                'iFolioRequisicion = :Folio and IdInsumo = :Insumo ');
              connection.qryUBusca.Params.ParamByName('Contrato').AsString := Global_Contrato;
              connection.qryUBusca.Params.ParamByName('Folio').AsString    := FrmRequisicionMaterial.anexo_requisicion.FieldByName('iFolioRequisicion').AsString;
              connection.qryUBusca.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
              Connection.qryUBusca.Open;

              if Connection.qryUBusca.RecordCount > 0 then
                dCantidad := Connection.qryUBusca.FieldByName('dCantidad').AsFloat;
                dSolicitado := Connection.qryUBusca.FieldByName('dCantidadSolicitado').AsFloat;

              Connection.zUCommand.Active := False;
              Connection.zUCommand.SQL.Clear;
              Connection.zUCommand.SQL.Add('UPDATE anexo_prequisicion SET dCantidad =:Cantidad, dCantidadSolicitado =:CantidadSolicitado ' +
                'WHERE sContrato =:Contrato And iFolioRequisicion =:Folio and IdInsumo =:Insumo And iItem = 0 ');
              Connection.zUCommand.Params.ParamByName('Contrato').AsString := Global_Contrato;
              Connection.zUCommand.Params.ParamByName('Folio').AsString    := FrmRequisicionMaterial.anexo_requisicion.FieldByName('iFolioRequisicion').AsString;
              Connection.zUCommand.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
              if connection.uContrato.FieldByName('FK_Titulo').AsString = 'CMMI' then
              begin
                materiales.Refresh;
                cant := materiales.FieldByName('dExistencia').AsFloat - materiales.FieldByName('reservado').AsFloat;
                cant2 := FrmRequisicionMaterial.anexo_prequisicion.FieldByName('dCantidadSolicitado').AsFloat;
                if edtCantidad.Value = cant then begin
                   Connection.zUCommand.Params.ParamByName('Cantidad').AsFloat       :=  0;
                   connection.zUCommand.Params.ParamByName('CantidadSolicitado').AsFloat :=  dsolicitado + edtCantidad.Value;
                end
                else
                if materiales.FieldByName('reservado').AsFloat + edtCantidad.Value > materiales.FieldByName('dExistencia').AsFloat then begin

                  if edtCantidad.Value > cant then begin
                      Connection.zUCommand.Params.ParamByName('Cantidad').AsFloat       := edtCantidad.Value - cant;
                      connection.zUCommand.Params.ParamByName('CantidadSolicitado').AsFloat := dSolicitado + (materiales.FieldByName('dexistencia').AsFloat - cant);
                  end
                  else begin
                      connection.zUCommand.Params.ParamByName('Cantidad').AsFloat := 0;
                      connection.zUCommand.Params.ParamByName('CantidadSolicitado').AsFloat := edtCantidad.Value;
                  end;
                end
                else
                if cant = 0 then begin
                    Connection.zUCommand.Params.ParamByName('Cantidad').AsFloat       :=  dCantidad + edtCantidad.Value;
                    connection.zUCommand.Params.ParamByName('CantidadSolicitado').AsFloat := dSolicitado;
                end
              end
              else
              begin
                Connection.zUCommand.Params.ParamByName('Cantidad').AsFloat       := dCantidad + edtCantidad.Value ;
                connection.zUCommand.Params.ParamByName('CantidadSolicitado').AsFloat := 0;
              end;
              //Connection.zUCommand.Params.ParamByName('Cantidad').AsFloat  := dCantidad + edtCantidad.Value;
              Connection.zUCommand.ExecSQL;
            end;
          end;


          FrmRequisicionMaterial.anexo_prequisicion.Locate('IdInsumo',materiales.FieldValues['IdInsumo'], [loCaseInsensitive]);
          FrmRequisicionMaterial.anexo_prequisicion.Refresh;
          materiales.Refresh;
          //Crear cotizacion en caso de que la existencia del material sea menor de lo que se está requiriendo (CMMII)
          //primero verifico que la empresa sea CMMI
//          except
//          on e : exception do begin
//               ;
//          end;
//        End ;
    End
    Else
    try
        SavePlace := FrmRequisicionMaterial.anexo_prequisicion.GetBookmark ;
        Connection.zUCommand.Active  := False ;
        Connection.zUCommand.SQL.Clear ;
        Connection.zUCommand.SQL.Add('UPDATE anexo_prequisicion SET dFechaRequerimiento = :Requerido, dCantidad = :Cantidad ' +
                                    'WHERE sContrato = :Contrato And iFolioRequisicion = :Folio and IdOrdenCompra = 0 And iItem =:item and IdInsumo =:Insumo ');
        Connection.zUCommand.Params.ParamByName('Contrato').DataType   := ftString ;
        Connection.zUCommand.Params.ParamByName('Contrato').value      := Global_Contrato ;
        Connection.zUCommand.Params.ParamByName('Folio').DataType      := ftString ;
        Connection.zUCommand.Params.ParamByName('Folio').value         := FrmRequisicionMaterial.anexo_requisicion.FieldValues['iFolioRequisicion'] ;
        Connection.zUCommand.Params.ParamByName('Item').DataType       := ftInteger ;
        Connection.zUCommand.Params.ParamByName('Item').value          := FrmRequisicionMaterial.anexo_prequisicion.FieldValues['iItem'] ;
        Connection.zUCommand.Params.ParamByName('Insumo').DataType     := ftString ;
        Connection.zUCommand.Params.ParamByName('Insumo').value        := FrmRequisicionMaterial.anexo_prequisicion.FieldValues['IdInsumo'] ;
        Connection.zUCommand.Params.ParamByName('Requerido').DataType  := ftDate ;
        Connection.zUCommand.Params.ParamByName('Requerido').value     := FrmRequisicionMaterial.anexo_requisicion.FieldValues['dFechaSolicitado'];
        Connection.zUCommand.Params.ParamByName('Cantidad').DataType   := ftFloat ;
        Connection.zUCommand.Params.ParamByName('Cantidad').value      := edtCantidad.Value ;
        Connection.zUCommand.ExecSQL ;

        FrmRequisicionMaterial.anexo_prequisicion.Refresh  ;
        FrmRequisicionMaterial.anexo_prequisicion.GotoBookmark(SavePlace);
        FrmRequisicionMaterial.anexo_prequisicion.FreeBookmark(SavePlace);
        materiales.Refresh;
    except
      on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al actualizar registro', 0);
      end;
    End ;
end;

Procedure TfrmAgregarMasivoOP_THY.SelectEntradas;
begin
    //Entrada de Orden de Compra(ENOC)
    if frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'ENOC' then
    begin
        materiales.Active := False;
        AsignarSQL(materiales,'anexo_pedidos_entradas',pUpdate);
        FiltrarDataSet(materiales,'Contrato,Folio,Almacen',
        [global_contrato,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioMovimiento').AsInteger,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger]);
        materiales.Open;

        //Filtrar solo los que no han entrado al 100%
        materiales.Filtered := False;
        materiales.Filter   := 'dCantidad <> dCantidadRecibida ';
        materiales.Filtered := True;
    end
    else
    //Traspaso Entrada (TRAE) o Entrada por recepcion de material (RECP)
    if (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'TRAE') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'RECP') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'EDEV')then
    begin
        materiales.Active := False;
        AsignarSQL(materiales,'traspaso_entrada',pUpdate);
        FiltrarDataSet(materiales,'Contrato,Almacen,Folio',
        [global_contrato,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger, frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioMovimiento').AsString]);
        materiales.Open;
    end
    else
    //Entrada por Aviso de Embarque(ENAE)
    if ((connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7') and (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'ENAE')) then
    begin
        materiales.Active := False;
        AsignarSQL(materiales,'aviso_embarque_entradas',pUpdate);
        FiltrarDataSet(materiales,'Contrato,Folio,Almacen',
        [global_contrato,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioMovimiento').AsInteger,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger]);
        materiales.Open;

        materiales.Filtered := False;
        materiales.Filter   := 'dCantidadPendiente > 0 ';
        materiales.Filtered := True;


    end
    else
    //Entrada Inicial (EINI)
    if frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'EINI' then
    begin
         materiales.Active := False;
        AsignarSQL(materiales,'insumo_inicial_entrada',pUpdate);
        FiltrarDataSet(materiales,'Contrato,Usuario,Almacen',
        [global_contrato,global_usuario,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger]);
        materiales.Open;
    end
    else
    begin
        materiales.Active := False;
        AsignarSQL(materiales,'material_entrada_sin_opcion',pUpdate);
        FiltrarDataSet(materiales,'Contrato,Usuario',
        [global_contrato,global_usuario]);
        materiales.Open;
    end;
    if ((connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7') AND (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'ENAE')) then
    begin
      View_Grid_MaterialesRequisicion.Visible:=False;
      View_Grid_MaterialesTrazabilidad.Visible:=False;
      View_Grid_MaterialesFechaCosto.Visible:=False;
      View_Grid_MaterialesMoneda.Visible:=False;
      View_Grid_MaterialesEstado.Visible:=False;
      View_Grid_MaterialesCosto.Visible:=False;
    end
    else begin
      View_Grid_MaterialesFechaCosto.Visible:=False;
      View_Grid_MaterialesMoneda.Visible:=False;
      View_Grid_MaterialesEstado.Visible:=False;
      View_Grid_MaterialesCosto.Caption:='Costo';
    end;
end;

procedure TfrmAgregarMasivoOP_THY.addEntrada;
var
  CantidadPedido, CantidadEntrada, total, sumCant,
  CantidadAnterior, CantidadPosterior, sumCantidades: double;
  PosInsumo :TBookmark;
  lContinua : boolean;
  zActualiza : tUniQuery;
begin
   zActualiza := tUniQuery.Create(Self);
   zActualiza.Connection := connection.uConnection;
   lContinua := False;

   if (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('Proviene').AsString <> 'N/A') then
   begin
      //Sino es una Entrada Inicial (EINI)
      if (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString <> 'EINI')  then
      begin
         //Entrada de Orden de Compra(ENOC)
         if frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'ENOC' then
         begin
           if connection.uContrato.FieldByName('FK_Titulo').AsString='TYPHOON' then
            begin
              AsignarSQL(Entradas,'verifica_material_entradas',pUpdate);
              FiltrarDataSet(Entradas,'Contrato,Folio,Insumo,Item,FolioReq',
             [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioMovimiento').AsInteger,
             materiales.FieldByName('IdInsumo').AsInteger,materiales.FieldByName('iItem').AsInteger,materiales.FieldByName('iFolioRequisicion').AsInteger]);
            end
            else
            begin
            AsignarSQL(Entradas,'verifica_material_entradas',pUpdate);
            FiltrarDataSet(Entradas,'Contrato,Folio,Insumo,FolioReq',
            [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioMovimiento').AsInteger,
            materiales.FieldByName('IdInsumo').AsInteger,materiales.FieldByName('iFolioRequisicion').AsInteger]);
            end;

            Entradas.Open;
         end;

         //Entrada de Aviso Embarque(ENAE)
         if frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'ENAE' then
         begin
            AsignarSQL(Entradas,'verifica_material_aviso_embarque',pUpdate);
            FiltrarDataSet(Entradas,'Contrato,Folio,Insumo',
            [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioMovimiento').AsInteger,
            materiales.FieldByName('IdInsumo').AsInteger]);
            Entradas.Open;
         end;

         //Traspaso Entrada (TRAE) o Entrada por recepcion de material (RECP), o devolución (EDEV)
         if (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'TRAE') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'RECP') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'EDEV') then
         begin
            Entradas.Active := False;
            AsignarSQL(Entradas,'materiales_salida_entrada',pUpdate);
            FiltrarDataSet(Entradas,'Folio,Insumo',
            [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioMovimiento').AsInteger,
            materiales.FieldByName('IdInsumo').AsInteger]);
            Entradas.Open;
         end;

         CantidadPedido := 0;
         if Entradas.RecordCount > 0 then
            CantidadPedido := Entradas.FieldValues['dCantidad'];
      end;

       //Verificamos cuanto entro al almacen.. y lo que resta por entrar..

       if (connection.uContrato.FieldByName('FK_Titulo').AsString = 'TYPHOON') and
       (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'ENOC')then
       BEGIN

           Entradas.Active := False;
           asignarSQL(Entradas,'cant_bitacoraentrada_pedido',pUpdate);
           FiltrarDataSet(Entradas,'Contrato,Folio,Insumo,FolioCompra,item',
           [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioEntrada').AsInteger,
           materiales.FieldByName('IdInsumo').AsInteger,materiales.FieldByName('IdOrdenCompra').AsInteger, materiales.FieldByName('iItem').AsInteger]);
           Entradas.Open;

       END
       else begin
      //Entrada Inicial (EINI)
        if frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'EINI' then
        begin
        Entradas.Active := False;
        asignarSQL(Entradas,'cantidad_bitacoraentrada',pUpdate);
          FiltrarDataSet(Entradas,'Contrato,Folio,Insumo,FolioReq',
          [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioEntrada').AsInteger,
          materiales.FieldByName('IdInsumo').AsInteger,0]);
        end
        else
        begin
          Entradas.Active := False;
        asignarSQL(Entradas,'cantidad_bitacoraentrada',pUpdate);
//          if Connection.uContrato.FieldByName('sMascara').AsString <> 'SUBSEA 7' then
//            FiltrarDataSet(Entradas,'Contrato,Folio,Insumo,FolioReq',
//            [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioEntrada').AsInteger,
//            materiales.FieldByName('IdInsumo').AsInteger,materiales.FieldByName('iFolioRequisicion').AsInteger])
//          else
            FiltrarDataSet(Entradas,'Contrato,Folio,Insumo',
            [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioEntrada').AsInteger,
            materiales.FieldByName('IdInsumo').AsInteger]);
        end;
        Entradas.Open;
       end;



      CantidadEntrada := 0;
      if Entradas.RecordCount > 0 then
        CantidadEntrada := Entradas.FieldValues['dCantidad'];

      sumCantidades := roundto(edtCantidad.Value + CantidadEntrada,-4);
      if frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString <> 'EINI' then
          if (sumCantidades > CantidadPedido) and ((frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString <> 'RECP') and (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString <> 'TRAE') and (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString <> 'EMAT') and (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString <> 'EDEV'))then
          begin
            messageDLG('No se puede Recibir mas Material que lo Comprado, Favor de Verificar.', mtInformation, [mbOk], 0);
            exit;
          end;
   end;

    if OpcButton = 'New' then
    begin
       // Consulta de Insumo antes de insertar.
       zExistenciaEntrada.Active := False;
       AsignarSQL(zExistenciaEntrada,'existencia_entrada',pUpdate);
       FiltrarDataSet(zExistenciaEntrada,'Contrato,Insumo',
       [global_contrato,materiales.FieldByName('IdInsumo').AsInteger]);
       zExistenciaEntrada.Open;

       if zExistenciaEntrada.RecordCount = 0 then
       begin
          messageDLG('No se encontro el Insumo en el Almacen ', mtInformation, [mbOk], 0);
         exit;
       end
       else
         CantidadAnterior := zExistenciaEntrada.FieldByName('dExistencia').AsFloat;

       Entradas.Active := False;
       AsignarSQL(Entradas,'bitacoradeentrada_Entrada',pUpdate);
       if (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'EINI') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('Proviene').AsString = 'N/A') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('Proviene').AsString = ' S / R ') then
       begin
          FiltrarDataSet(Entradas,'Contrato,Insumo,Almacen,Folio,FolioReq',
          [global_contrato,materiales.FieldByName('IdInsumo').AsInteger,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger,
          frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioEntrada').AsInteger,0]);
       end
       else
       begin
//          if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then
//            FiltrarDataSet(Entradas,'Contrato,Insumo,Almacen,Folio',
//            [global_contrato,materiales.FieldByName('IdInsumo').AsInteger,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger,
//            frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioEntrada').AsInteger])
//          else
            FiltrarDataSet(Entradas,'Contrato,Insumo,Almacen,Folio',
            [global_contrato,materiales.FieldByName('IdInsumo').AsInteger,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger,
            frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioEntrada').AsInteger]);
       end;
       Entradas.Open;

      try
        // dsai -> Insercion de los datos en la bitacora de Entrada....
        if (Entradas.RecordCount = 0) then
        begin
        sumCant := CantidadAnterior + edtCantidad.Value ;
          zActualiza.Active := False;

          AsignarSQL(zActualiza,'insertar_bitacora_entrada',pUpdate);
          if (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'EINI') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('Proviene').AsString = 'N/A') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('Proviene').AsString = ' S / R ')  then
          begin
            FiltrarDataSet(zActualiza,'Contrato,Item,Folio,Insumo,FechaE,Cantidad,CantidadAnterior,CantidadTotal,IdAlmacen,Comentario,FolioReq',
            [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsVariant,
            0,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioEntrada').AsInteger,
            materiales.FieldByName('IdInsumo').AsInteger,
            FechaSQL(frmEntradaAlmacen_THY.almacen_entrada.FieldValues['dFechaEntrega']),edtCantidad.Value,
            CantidadAnterior,sumCant,
            frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger,'',0])
          end
          else begin
            if ((Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7') or (Connection.uContrato.FieldByName('sMascara').AsString = 'COMPAÑIA CMMI')) then
                FiltrarDataSet(zActualiza,'Contrato,Item,Folio,Insumo,FechaE,Cantidad,CantidadAnterior,CantidadTotal,IdAlmacen,Comentario',
                [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,0,frmEntradaAlmacen_THY.almacen_entrada.FieldValues['iFolioEntrada'],
                materiales.FieldByName('IdInsumo').AsInteger,FechaSQL(frmEntradaAlmacen_THY.almacen_entrada.FieldValues['dFechaEntrega']),edtCantidad.Value,
                CantidadAnterior,sumCant,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger,
                ''])
            else
                FiltrarDataSet(zActualiza,'Contrato,Item,Folio,Insumo,FechaE,Cantidad,CantidadAnterior,CantidadTotal,IdAlmacen,Comentario',
                [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,0,frmEntradaAlmacen_THY.almacen_entrada.FieldValues['iFolioEntrada'],
                materiales.FieldByName('IdInsumo').AsInteger,FechaSQL(frmEntradaAlmacen_THY.almacen_entrada.FieldValues['dFechaEntrega']),edtCantidad.Value,
                CantidadAnterior,sumCant,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger,
                '']);
          end;

        Try
          zActualiza.ExecSQL;
          lContinua := True;
        Except
          On E: Exception do begin
            ShowMessage(E.Message);
          end;
        End;
      end
      else
      begin
        if messageDLG('Ya existe una Entrada para el Insumo desea Actualizar la Entrada?', mtInformation, [mbYes,mbNo], 0) = mrYes then
        begin
           sumCant := edtCantidad.Value + Entradas.FieldValues['dCantidad'];
           zActualiza.Active := False;
           AsignarSQL(zActualiza,'actualiza_cantidad_entrada',pUpdate);
           FiltrarDataSet(zActualiza,'Cantidad,Contrato,Folio,Insumo',
           [sumCant,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,
           frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioEntrada').AsInteger,
           materiales.FieldByName('IdInsumo').AsInteger]);
           zActualiza.ExecSQL;
           lContinua := True;
        end
        else begin
           if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then begin
               AsignarSQL(zActualiza,'insertar_bitacora_entrada',pUpdate);

               FiltrarDataSet(zActualiza,'Contrato,Item,Folio,Insumo,FechaE,Cantidad,CantidadAnterior,CantidadTotal,IdAlmacen,Comentario',
                [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,'0',frmEntradaAlmacen_THY.almacen_entrada.FieldValues['iFolioEntrada'],
                materiales.FieldByName('IdInsumo').AsInteger,FechaSQL(frmEntradaAlmacen_THY.almacen_entrada.FieldValues['dFechaEntrega']),edtCantidad.Value,
                CantidadAnterior,sumCant,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger,
                '']);
               zActualiza.ExecSQL;
               lContinua := True;
           end;

           if Connection.uContrato.FieldByName('FK_Titulo').AsString = 'TYPHOON' then
           begin
             sumCant := CantidadAnterior + edtCantidad.Value ;
             zActualiza.Active := False;

             AsignarSQL(zActualiza,'insertar_bitacora_entrada',pUpdate);
             if (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString <> 'EINI') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('Proviene').AsString <> 'N/A') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('Proviene').AsString <> ' S / R ')  then
             begin
               FiltrarDataSet(zActualiza,'Contrato,Item,Folio,Insumo,FechaE,Cantidad,CantidadAnterior,CantidadTotal,IdAlmacen,Comentario,FolioReq',
                [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,materiales.FieldByName('iItem').AsInteger,frmEntradaAlmacen_THY.almacen_entrada.FieldValues['iFolioEntrada'],
                materiales.FieldByName('IdInsumo').AsInteger,FechaSQL(frmEntradaAlmacen_THY.almacen_entrada.FieldValues['dFechaEntrega']),edtCantidad.Value,
                CantidadAnterior,sumCant,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger,
                '',materiales.FieldByName('iFolioRequisicion').AsInteger]);
             end;

             Try
               zActualiza.ExecSQL;
               lContinua := True;
             Except
               On E: Exception do begin
                 ShowMessage(E.Message);
               end;
             End;
           end;


        end;

      end;

      except
      On E: Exception do begin
        MessageDlg('Ocurrio un error al actualizar el registro, ' + E.Message, mtWarning, [mbOk], 0);
        exit;
      end;
     end;
    zActualiza.destroy;

     if lContinua then
     begin
        //dsai -> Actualizacion de los insumos de la Orden de Compra
        if frmEntradaAlmacen_THY.almacen_entrada.FieldByName('Proviene').AsString <> 'N/A' then
        begin
            if frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString <> 'EINI' then
            begin
              if (edtCantidad.Value + CantidadEntrada) = CantidadPedido then
              begin
                Entradas.Active := False;
                //Entrada de Orden de Compra(ENOC)
                if frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'ENOC' then
                begin
                    AsignarSQL(Entradas,'Update_insumosOC_anexo_ppedido',pUpdate);
                    if ((Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7') or (Connection.uContrato.FieldByName('sMascara').AsString = 'COMPAÑIA CMMI')) then
                      FiltrarDataSet(Entradas,'Contrato,Folio,Insumo,FolioReq',
                      [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString, frmEntradaAlmacen_THY.almacen_entrada.FieldValues['iFolioMovimiento'],
                      materiales.FieldByName('IdInsumo').AsInteger,materiales.FieldByName('iFolioRequisicion').AsInteger])
                   else
                    FiltrarDataSet(Entradas,'Contrato,Folio,Insumo,FolioReq,item',
                    [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString, frmEntradaAlmacen_THY.almacen_entrada.FieldValues['iFolioMovimiento'],
                    materiales.FieldByName('IdInsumo').AsInteger,materiales.FieldByName('iFolioRequisicion').AsInteger,
                    materiales.FieldByName('iItem').AsString]);

                    Entradas.ExecSQL;
                end;

                //Entrada de Aviso de Embarque(ENAE)
                if frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'ENAE' then
                begin
                    AsignarSQL(Entradas,'Update_insumosAvisoEmbarque',pUpdate);
                    FiltrarDataSet(Entradas,'Folio,Insumo',
                    [frmEntradaAlmacen_THY.almacen_entrada.FieldValues['iFolioMovimiento'],materiales.FieldByName('IdInsumo').AsInteger]);
                    Entradas.ExecSQL;
                end;

                //Traspaso Entrada (TRAE) o Entrada por recepcion de material (RECP)
                if (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'TRAE') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'RECP') then
                begin
                   AsignarSQL(Entradas,'Update_insumosOC_bitacoradesalida',pUpdate);
                    FiltrarDataSet(Entradas,'Contrato,Folio,Insumo',
                    [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString, frmEntradaAlmacen_THY.almacen_entrada.FieldValues['iFolioMovimiento'],
                    materiales.FieldByName('IdInsumo').AsInteger]);
                    Entradas.ExecSQL;
                end;

              end;
              if (edtCantidad.Value + CantidadEntrada) < CantidadPedido then
                messageDLG('Queda ' + FloatToStr(CantidadPedido - (edtCantidad.Value + CantidadEntrada)) + ' de ' + materiales.FieldValues['Insumo'] + ' por recibir. El material esta en estado de "Pendiente" ', mtInformation, [mbOk], 0);

            end;
        end;

          if materiales.RecordCount > 0 then
          begin
            edtCantidad.Value := materiales.FieldValues['dCantidad'];
          end;
      end;
    end;

  if (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString <> 'EMAT') AND (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString <> 'TRAE') and (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString <> 'EINI') then //and (frmEntradaAlmacen.almacen_entrada.FieldByName('IdTipo').AsInteger <> 3)then
  begin
    materiales.Refresh;
       if connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7' then
            BEGIN
              materiales.Filtered := False;
              materiales.Filter   := 'dCantidadPendiente > 0 ';
              materiales.Filtered := True;
            END
            else
            begin
              materiales.Filtered := False;
              materiales.Filter   := 'dCantidad <> dCantidadRecibida ';
              materiales.Filtered := True;
            end;

    Try
        materiales.GotoBookmark(PosInsumo);
    Except
    Else
        materiales.FreeBookmark(PosInsumo);
    End ;
  end;

  frmEntradaAlmacen_THY.pEntradas.Refresh;
  frmEntradaAlmacen_THY.almacen_entrada.RefreshRecord;
  frmEntradaAlmacen_THY.PgControl.Enabled:=True;
  frmEntradaAlmacen_THY.Grid_Entradas.Enabled := True;

end;

procedure TfrmAgregarMasivoOP_THY.addEntradaMasivo;
var
  CantidadPedido, CantidadEntrada, total, sumCant,
  CantidadAnterior, CantidadPosterior, sumCantidades: double;
  PosInsumo :TBookmark;
  lContinua : boolean;
    zActualiza : tUniQuery;
begin
    zActualiza := tUniQuery.Create(Self);
    zActualiza.Connection := connection.uConnection;
    lContinua := False;

    //Verificamos cuanto entro al almacen.. y lo que resta por entrar..
    Entradas.Active := False;
    asignarSQL(Entradas,'cantidad_bitacoraentrada',pUpdate);
    if frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'EINI' then
    begin
      FiltrarDataSet(Entradas,'Contrato,Folio,Insumo,FolioReq',
      [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioEntrada').AsInteger,
      materiales.FieldByName('IdInsumo').AsInteger,0]);
    end
    else
    begin
      if connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7' then
        FiltrarDataSet(Entradas,'Contrato,Folio,Insumo',
        [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioEntrada').AsInteger,
        materiales.FieldByName('IdInsumo').AsInteger])
      ELSE
        FiltrarDataSet(Entradas,'Contrato,Folio,Insumo,FolioReq',
        [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioEntrada').AsInteger,
        materiales.FieldByName('IdInsumo').AsInteger,materiales.FieldByName('iFolioRequisicion').AsInteger]);
    end;
    Entradas.Open;

    if OpcButton = 'New' then
    begin
       Entradas.Active := False;
       AsignarSQL(Entradas,'bitacoradeentrada_Entrada',pUpdate);
       if (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'EINI') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('Proviene').AsString = 'N/A') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('Proviene').AsString = ' S / R ') then
       begin
          FiltrarDataSet(Entradas,'Contrato,Insumo,Almacen,Folio,FolioReq',
          [global_contrato,materiales.FieldByName('IdInsumo').AsInteger,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger,
          frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioEntrada').AsInteger,0]);
       end
       else begin
          if connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7' then
            FiltrarDataSet(Entradas,'Contrato,Insumo,Almacen,Folio',
            [global_contrato,materiales.FieldByName('IdInsumo').AsInteger,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger,
            frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioEntrada').AsInteger])
          ELSE
            FiltrarDataSet(Entradas,'Contrato,Insumo,Almacen,Folio,FolioReq',
            [global_contrato,materiales.FieldByName('IdInsumo').AsInteger,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger,
            frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioEntrada').AsInteger,materiales.FieldByName('iFolioRequisicion').AsInteger]);
       end;
       Entradas.Open;

       // dsai -> Insercion de los datos en la bitacora de Entrada....
       if (Entradas.RecordCount = 0) or ((connection.uContrato.FieldByName('FK_Titulo').AsString = 'SUBSEA 7') and
          (Entradas.RecordCount > 0)  and ((frmEntradaAlmacen_THY.almacen_entrada.FieldByName('Tipo').AsString = 'AVISO DE EMBARQUE') OR
          (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('Tipo').AsString = 'AVISO DE DESEMBARQUE') ))then
       begin
          sumCant := CantidadAnterior + edtCantidad.Value ;
          zActualiza.Active := False;

          AsignarSQL(zActualiza,'insertar_bitacora_entrada',pUpdate);
          if (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'EINI') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('Proviene').AsString = 'N/A') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('Proviene').AsString = ' S / R ')  then
          begin
            FiltrarDataSet(zActualiza,'Contrato,Item,Folio,Insumo,FechaE,Cantidad,CantidadAnterior,CantidadTotal,IdAlmacen,Comentario,FolioReq',
            [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsVariant,
            0,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('iFolioEntrada').AsInteger,
            materiales.FieldByName('IdInsumo').AsInteger,
            FechaSQL(frmEntradaAlmacen_THY.almacen_entrada.FieldValues['dFechaEntrega']),materiales.FieldByName('dCantidadPendiente').AsFloat,
            materiales.FieldByName('dCantidadRecibida').AsFloat,materiales.FieldByName('dCantidad').AsFloat,
            frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger,'',0])
          end
          else
          begin
            if connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7' then
              FiltrarDataSet(zActualiza,'Contrato,Item,Folio,Insumo,FechaE,Cantidad,CantidadTotal,IdAlmacen,Comentario',
              [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,'0',frmEntradaAlmacen_THY.almacen_entrada.FieldValues['iFolioEntrada'],
              materiales.FieldByName('IdInsumo').AsInteger,FechaSQL(frmEntradaAlmacen_THY.almacen_entrada.FieldValues['dFechaEntrega']),materiales.FieldByName('dCantidadPendiente').AsFloat,
              materiales.FieldByName('dCantidad').AsFloat,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger,
              ''])
            else
              FiltrarDataSet(zActualiza,'Contrato,Item,Folio,Insumo,FechaE,Cantidad,CantidadAnterior,CantidadTotal,IdAlmacen,Comentario,FolioReq',
              [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString,'0',frmEntradaAlmacen_THY.almacen_entrada.FieldValues['iFolioEntrada'],
              materiales.FieldByName('IdInsumo').AsInteger,FechaSQL(frmEntradaAlmacen_THY.almacen_entrada.FieldValues['dFechaEntrega']),materiales.FieldByName('dCantidadPendiente').AsFloat,
              materiales.FieldByName('dCantidadRecibida').AsFloat,materiales.FieldByName('dCantidad').AsFloat,frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdAlmacen').AsInteger,
              '',materiales.FieldByName('iFolioRequisicion').AsInteger]);
          end;

          zActualiza.ExecSQL;
          lContinua := True;
       end;

       zActualiza.destroy;
       if lContinua then
       begin
          //dsai -> Actualizacion de los insumos de la Orden de Compra
          if frmEntradaAlmacen_THY.almacen_entrada.FieldByName('Proviene').AsString <> 'N/A' then
          begin
              if frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString <> 'EINI' then
              begin
                if connection.uContrato.FieldByName('FK_Titulo').AsString<>'SUBSEA 7' then
                begin
                  if (materiales.FieldByName('dCantidadRecibida').AsFloat + materiales.FieldByName('dCantidadPendiente').AsFloat) = materiales.FieldByName('dCantidad').AsFloat then
                  begin
                    Entradas.Active := False;
                    //Entrada de Orden de Compra(ENOC)
                    if frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'ENOC' then
                    begin
                        AsignarSQL(Entradas,'Update_insumosOC_anexo_ppedido',pUpdate);
                        FiltrarDataSet(Entradas,'Contrato,Folio,Insumo,FolioReq',
                        [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString, frmEntradaAlmacen_THY.almacen_entrada.FieldValues['iFolioMovimiento'],
                        materiales.FieldByName('IdInsumo').AsInteger,materiales.FieldByName('iFolioRequisicion').AsInteger]);
                        Entradas.ExecSQL;
                    end;

                    //Traspaso Entrada (TRAE) o Entrada por recepcion de material (RECP)
                    if (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'TRAE') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'RECP') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'EDEV')then
                    begin
                        AsignarSQL(Entradas,'Update_insumosOC_bitacoradesalida',pUpdate);
                        FiltrarDataSet(Entradas,'Contrato,Folio,Insumo',
                        [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString, frmEntradaAlmacen_THY.almacen_entrada.FieldValues['iFolioMovimiento'],
                        materiales.FieldByName('IdInsumo').AsInteger]);
                        Entradas.ExecSQL;
                    end;
                  end;
                end
                else
                begin
                  Entradas.Active := False;
                    //Entrada de Orden de Compra(ENOC)
                    if frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'ENOC' then
                    begin
                        AsignarSQL(Entradas,'Update_insumosOC_anexo_ppedido',pUpdate);
                        FiltrarDataSet(Entradas,'Contrato,Folio,Insumo,FolioReq',
                        [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString, frmEntradaAlmacen_THY.almacen_entrada.FieldValues['iFolioMovimiento'],
                        materiales.FieldByName('IdInsumo').AsInteger,materiales.FieldByName('iFolioRequisicion').AsInteger]);
                        Entradas.ExecSQL;
                    end;

                    //Traspaso Entrada (TRAE) o Entrada por recepcion de material (RECP)
                    if (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'TRAE') or (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'RECP') OR (frmEntradaAlmacen_THY.almacen_entrada.FieldByName('CodigoEntrada').AsString = 'EDEV') then
                    begin
                        AsignarSQL(Entradas,'Update_insumosOC_bitacoradesalida',pUpdate);
                        FiltrarDataSet(Entradas,'Contrato,Folio,Insumo',
                        [frmEntradaAlmacen_THY.almacen_entrada.FieldByName('sContrato').AsString, frmEntradaAlmacen_THY.almacen_entrada.FieldValues['iFolioMovimiento'],
                        materiales.FieldByName('IdInsumo').AsInteger]);
                        Entradas.ExecSQL;
                    end;

                end;
              end;
          end;

          if materiales.RecordCount > 0 then
          begin
            edtCantidad.Value := materiales.FieldValues['dCantidad'];
          end;
       end;
    end;
end;

procedure TfrmAgregarMasivoOP_THY.addInsumosSolicitud;
var SavePlace : TBookmark;
  dCantidad,dSolicitado : Currency ;
  cant,cant2, cantt : Double;
begin
  If OpcButton = 'New' then
  Begin
        if (InttoStr(materiales.FieldValues['IdInsumo']) = '') or (materiales.FieldValues['IdInsumo'] = null) or (edtCantidad.Text = '') then
        begin
             messageDLG('Seleccione un Material para Agregar a la Solicitud.', mtInformation, [mbOK], 0);
             exit;
        end;

//        try
          lExiste := False;

          //Consultamos primero si ya existe el material dado de alta en la Solicitud..
          Connection.QryUBusca.Active := False;
          Connection.QryUBusca.SQL.Clear;
          Connection.QryUBusca.SQL.Add('select IdInsumo from anexo_psolicitud where sContrato =:Contrato and iFolioSolicitud =:Folio and IdInsumo =:Insumo '+
          'and (:Tipo = -1 or (:Tipo <> -1 and  IdTipoRecurso = :Tipo))');
          Connection.QryUBusca.Params.ParamByName('Contrato').AsString := Global_Contrato;
          Connection.QryUBusca.Params.ParamByName('Folio').AsString    := FrmSolicitudMaterial.anexo_solicitud.FieldByName('iFolioSolicitud').AsString;
          Connection.QryUBusca.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
          Connection.QryUBusca.Params.ParamByName('Tipo').AsString   := FrmSolicitudMaterial.anexo_solicitud.FieldByName('IdTipoRecurso').AsString;//materiales.FieldByName('IdTipoRecurso').AsString;
          Connection.QryUBusca.Open;

//          if connection.UContrato.FieldByName('FK_Titulo').AsString = 'CMMI' then
//          begin
//            Connection.QryBusca.Active := False;
//            Connection.QryBusca.SQL.Clear;
//            connection.QryBusca.SQL.Text := ('select (select IFNULL(sum(dCantidad), 0) from anexo_psolicitud where IdInsumo = i.IdInsumo)  as Reservado'+
//                                            ' from alm_insumos i where i.IdInsumo = :Insumo');
//            connection.QryBusca.Params.ParamByName('Insumo').AsInteger := materiales.FieldByName('IdInsumo').AsInteger;
//            connection.QryBusca.Open;
//          end;

          if connection.QryUBusca.RecordCount = 0 then
          begin
              //Try
              //Insertamos el material para la solicitud,..
              Connection.QryUBusca.Active := False;
              Connection.QryUBusca.SQL.Clear;
              Connection.QryUBusca.SQL.Add('INSERT INTO anexo_psolicitud(sContrato,IdPSolicitud,iFolioSolicitud,IdInsumo,iItem,mDescripcion,IdMedida,dFechaRequerimiento,dCantidad,sObservacion,sEstado,IdTipoRecurso) VALUES '+
                                                                        '(:Contrato, 0, :iFolioSolicitud, :IdInsumo, 0, :Descripcion, :IdMedida, :dFechaReq,:Cantidad,:Observa, :sStatus, :IdTipoRecurso)');
              Connection.QryUBusca.ParamByName('Contrato').AsString:=FrmSolicitudMaterial.anexo_solicitud.FieldByName('sContrato').AsString;
              Connection.QryUBusca.ParamByName('iFolioSolicitud').AsInteger:=FrmSolicitudMaterial.anexo_solicitud.FieldByName('iFolioSolicitud').AsInteger;
              Connection.QryUBusca.ParamByName('IdInsumo').AsInteger:=materiales.FieldByName('IdInsumo').AsInteger;
              Connection.QryUBusca.ParamByName('Descripcion').AsString:=materiales.FieldByName('Insumo').AsString;
              Connection.QryUBusca.ParamByName('IdMedida').AsInteger:=materiales.FieldByName('IdMedida').AsInteger;
              Connection.QryUBusca.ParamByName('dFechaReq').AsDateTime:=now;
              Connection.QryUBusca.ParamByName('Observa').AsString:='*';
              Connection.QryUBusca.ParamByName('sStatus').AsString:='Pendiente';

              if connection.uContrato.FieldByName('FK_Titulo').AsString = 'CMMI' then
              begin
                materiales.Refresh;
                cant := materiales.FieldByName('dExistencia').AsFloat - materiales.FieldByName('reservado').AsFloat;
                if cant = 0 then begin
                   messageDLG('Ya no hay materiales para reservar, se agregará de manera normal', mtInformation, [mbOK], 0);
                   Connection.QryUBusca.Params.ParamByName('Cantidad').AsFloat       := 0 ;
//                   connection.qryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat := 0;
                end
                else
                if not ((materiales.FieldByName('reservado').AsFloat + edtCantidad.Value) > materiales.FieldByName('dExistencia').AsFloat) then
                begin
                      Connection.QryUBusca.Params.ParamByName('Cantidad').AsFloat       := edtCantidad.Value;
                end
                else
                begin
                  messageDLG(' Materiales insuficientes para reservar, se agregará solo hasta agotarlos', mtInformation, [mbOK], 0);

                  Connection.QryUBusca.Params.ParamByName('Cantidad').AsFloat       := edtCantidad.Value - (edtCantidad.Value - cant) ;
//                  connection.QryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat := edtCantidad.Value;
                end;
              end
              else
              begin
                Connection.QryUBusca.Params.ParamByName('Cantidad').AsFloat       := edtCantidad.Value ;
//                connection.qryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat := 0;
              end;

              Connection.qryUBusca.Params.ParamByName('IdTipoRecurso').AsInteger     := materiales.FieldByName('IdTipoRecurso').AsInteger;
              Connection.QryUBusca.ExecSQL  ;

          end
          else
          begin
            if MessageDlg('Se encontro una coincidencia en la Solicitud actual, Desea sumar la cantidad del material?'+#13+'Si. Sumar Cantidad'+#13+'No. Registro Independiente.', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
            begin
              Connection.zUCommand.Active := False;
              Connection.zUCommand.SQL.Clear;
              Connection.zUCommand.SQL.Add('Select Max(iItem) as iItem From anexo_psolicitud Where sContrato = :Contrato And iFolioSolicitud = :Folio and IdInsumo = :Insumo group by iItem');
              connection.zUCommand.Params.ParamByName('Contrato').AsString := Global_Contrato;
              connection.zUCommand.Params.ParamByName('Folio').AsString    := FrmSolicitudMaterial.anexo_solicitud.FieldByName('iFolioSolicitud').AsString;
              Connection.zUCommand.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
              Connection.zUCommand.Open;

              if not Connection.zUCommand.FieldByName('iItem').IsNull then
              begin
                Connection.QryUBusca.Active := False;
                Connection.QryUBusca.SQL.Clear;
                Connection.QryUBusca.SQL.Add('INSERT INTO anexo_psolicitud(sContrato,IdPSolicitud,iFolioSolicitud,IdInsumo,iItem,mDescripcion,IdMedida,dFechaRequerimiento,dCantidad,sObservacion,sEstado,IdTipoRecurso) VALUES '+
                                                                          '(:Contrato, 0, :iFolioSolicitud, :IdInsumo, :Item, :Descripcion, :IdMedida, :dFechaReq,:Cantidad,:Observa, :sStatus, :IdTipoRecurso)');
                Connection.QryUBusca.ParamByName('Contrato').AsString:=FrmSolicitudMaterial.anexo_solicitud.FieldByName('sContrato').AsString;
                Connection.QryUBusca.ParamByName('iFolioSolicitud').AsInteger:=FrmSolicitudMaterial.anexo_solicitud.FieldByName('iFolioSolicitud').AsInteger;
                Connection.QryUBusca.ParamByName('IdInsumo').AsInteger:=materiales.FieldByName('IdInsumo').AsInteger;
                Connection.QryUBusca.ParamByName('Descripcion').AsString:=materiales.FieldByName('Insumo').AsString;
                Connection.qryUBusca.Params.ParamByName('Item').AsInteger := Connection.zUCommand.FieldByName('iItem').AsInteger + 1;
                Connection.QryUBusca.ParamByName('IdMedida').AsInteger:=materiales.FieldByName('IdMedida').AsInteger;
                Connection.QryUBusca.ParamByName('dFechaReq').AsDateTime:=now;
//                Connection.QryUBusca.ParamByName('Cantidad').AsFloat:=edtCantidad.Value;
                Connection.QryUBusca.ParamByName('Observa').AsString:='*';
                Connection.QryUBusca.ParamByName('sStatus').AsString:='Pendiente';

                //Connection.QryUBusca.ExecSQL;
                  if connection.uContrato.FieldByName('FK_Titulo').AsString = 'CMMI' then
                  begin
                    materiales.Refresh;
                    cant := materiales.FieldByName('dExistencia').AsFloat - materiales.FieldByName('reservado').AsFloat;
                    if cant = 0 then begin
                     messageDLG('Ya no hay materiales para reservar, se agregará de manera normal', mtInformation, [mbOK], 0);
                       Connection.QryUBusca.Params.ParamByName('Cantidad').AsFloat       := edtCantidad.Value ;
                       //connection.qryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat := 0;
                    end
                    else
                    if edtCantidad.Value > cant then begin
                        Connection.QryUBusca.Params.ParamByName('Cantidad').AsFloat       :=  edtCantidad.Value - materiales.FieldByName('dexistencia').AsFloat;
                        //connection.QryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat :=  materiales.FieldByName('dexistencia').AsFloat;
                    end
                    else begin
                        connection.qryUBusca.Params.ParamByName('Cantidad').AsFloat := 0;
                        //connection.qryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat := edtCantidad.Value;
                    end;
                  end
                  else
                  begin
                    Connection.QryUBusca.Params.ParamByName('Cantidad').AsFloat       := edtCantidad.Value ;
                    //connection.qryUBusca.Params.ParamByName('dCantidadSolicitado').AsFloat := 0;
                  end;
                  Connection.qryUBusca.Params.ParamByName('IdTipoRecurso').AsInteger     := materiales.FieldByName('IdTipoRecurso').AsInteger;
                  Connection.qryUBusca.ExecSQL  ;
              end
              else
              begin
                Connection.QryUBusca.Active := False;
                Connection.QryUBusca.SQL.Clear;
                Connection.QryUBusca.SQL.Add('INSERT INTO anexo_psolicitud(sContrato,IdPSolicitud,iFolioSolicitud,IdInsumo,iItem,mDescripcion,IdMedida,dFechaRequerimiento,dCantidad,sObservacion,sEstado,IdTipoRecurso) VALUES '+
                                                                          '(:Contrato, 0, :iFolioSolicitud, :IdInsumo, :Item, :Descripcion, :IdMedida, :dFechaReq,:Cantidad,:Observa, :sStatus, :IdTipoRecurso)');
                Connection.QryUBusca.ParamByName('Contrato').AsString:=FrmSolicitudMaterial.anexo_solicitud.FieldByName('sContrato').AsString;
                Connection.QryUBusca.ParamByName('iFolioSolicitud').AsInteger:=FrmSolicitudMaterial.anexo_solicitud.FieldByName('iFolioSolicitud').AsInteger;
                Connection.QryUBusca.ParamByName('IdInsumo').AsInteger:=materiales.FieldByName('IdInsumo').AsInteger;
                Connection.QryUBusca.ParamByName('Descripcion').AsString:=materiales.FieldByName('Insumo').AsString;
                Connection.qryUBusca.Params.ParamByName('Item').AsInteger := Connection.zUCommand.FieldByName('iItem').AsInteger + 1;
                Connection.QryUBusca.ParamByName('IdMedida').AsInteger:=materiales.FieldByName('IdMedida').AsInteger;
                Connection.QryUBusca.ParamByName('dFechaReq').AsDateTime:=now;
                Connection.QryUBusca.ParamByName('Cantidad').AsFloat:=edtCantidad.Value;
                Connection.QryUBusca.ParamByName('Observa').AsString:='*';
                Connection.QryUBusca.ParamByName('sStatus').AsString:='Pendiente';
                Connection.QryUBusca.ParamByName('IdTipoRecurso').AsInteger:=FrmSolicitudMaterial.anexo_solicitud.FieldByName('IdTipoRecurso').AsInteger;

                Connection.QryUBusca.ExecSQL;

              end
            end
            else
            begin
              dCantidad := 0;
              Connection.qryUBusca.Active := False;
              Connection.qryUBusca.SQL.Clear;
              Connection.qryUBusca.SQL.Add('Select dCantidad From anexo_psolicitud Where sContrato = :Contrato And ' +
                'iFolioSolicitud = :Folio and IdInsumo = :Insumo ');
              connection.qryUBusca.Params.ParamByName('Contrato').AsString := Global_Contrato;
              connection.qryUBusca.Params.ParamByName('Folio').AsString    := FrmSolicitudMaterial.anexo_psolicitud.FieldByName('iFolioSolicitud').AsString;
              connection.qryUBusca.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;
              Connection.qryUBusca.Open;

              if Connection.qryUBusca.RecordCount > 0 then
                dCantidad := Connection.qryUBusca.FieldByName('dCantidad').AsFloat;
                //dSolicitado := Connection.qryUBusca.FieldByName('dCantidadSolicitado').AsFloat;

              Connection.zUCommand.Active := False;
              Connection.zUCommand.SQL.Clear;
              Connection.zUCommand.SQL.Add('UPDATE anexo_psolicitud SET dCantidad =:Cantidad ' +
                'WHERE sContrato =:Contrato And iFolioSolicitud =:Folio and IdInsumo =:Insumo And iItem = 0 ');
              Connection.zUCommand.Params.ParamByName('Contrato').AsString := Global_Contrato;
              Connection.zUCommand.Params.ParamByName('Folio').AsString    := FrmSolicitudMaterial.anexo_solicitud.FieldByName('iFolioRequisicion').AsString;
              Connection.zUCommand.Params.ParamByName('Insumo').AsString   := materiales.FieldByName('IdInsumo').AsString;

              if connection.uContrato.FieldByName('FK_Titulo').AsString = 'CMMI' then
              begin
                materiales.Refresh;
                cant := materiales.FieldByName('dExistencia').AsFloat - materiales.FieldByName('reservado').AsFloat;
                cant2 := FrmSolicitudMaterial.anexo_psolicitud.FieldByName('dCantidad').AsFloat;
                if edtCantidad.Value = cant then
                begin
                   Connection.zUCommand.Params.ParamByName('Cantidad').AsFloat       :=  edtCantidad.Value;
                   //connection.zUCommand.Params.ParamByName('CantidadSolicitado').AsFloat :=  dsolicitado + edtCantidad.Value;
                end
                else if not ((materiales.FieldByName('reservado').AsFloat + edtCantidad.Value) > materiales.FieldByName('dExistencia').AsFloat) then
                begin

                  if edtCantidad.Value > cant then
                  begin
                      Connection.zUCommand.Params.ParamByName('Cantidad').AsFloat       := edtCantidad.Value - cant;
                      //connection.zUCommand.Params.ParamByName('CantidadSolicitado').AsFloat := dSolicitado + (materiales.FieldByName('dexistencia').AsFloat - cant);
                  end
                  else
                  begin
                      connection.zUCommand.Params.ParamByName('Cantidad').AsFloat := dCantidad + edtCantidad.Value;
                  end;
                end
                else
                if cant = 0 then
                begin
                    Connection.zUCommand.Params.ParamByName('Cantidad').AsFloat       :=  dCantidad + edtCantidad.Value;
                end
              end
              else
              begin
                Connection.zUCommand.Params.ParamByName('Cantidad').AsFloat       := dCantidad + edtCantidad.Value ;

              end;
              //Connection.zUCommand.Params.ParamByName('Cantidad').AsFloat  := dCantidad + edtCantidad.Value;
              Connection.zUCommand.ExecSQL;
            end;
          end;

          FrmSolicitudMaterial.anexo_psolicitud.Refresh;
          FrmSolicitudMaterial.anexo_psolicitud.Locate('IdInsumo',materiales.FieldValues['IdInsumo'], [loCaseInsensitive]);

          materiales.Refresh;
  End;
//    Else
//    try
//        SavePlace := FrmRequisicionMaterial.anexo_prequisicion.GetBookmark ;
//        Connection.zUCommand.Active  := False ;
//        Connection.zUCommand.SQL.Clear ;
//        Connection.zUCommand.SQL.Add('UPDATE anexo_prequisicion SET dFechaRequerimiento = :Requerido, dCantidad = :Cantidad ' +
//                                    'WHERE sContrato = :Contrato And iFolioRequisicion = :Folio and IdOrdenCompra = 0 And iItem =:item and IdInsumo =:Insumo ');
//        Connection.zUCommand.Params.ParamByName('Contrato').DataType   := ftString ;
//        Connection.zUCommand.Params.ParamByName('Contrato').value      := Global_Contrato ;
//        Connection.zUCommand.Params.ParamByName('Folio').DataType      := ftString ;
//        Connection.zUCommand.Params.ParamByName('Folio').value         := FrmRequisicionMaterial.anexo_requisicion.FieldValues['iFolioRequisicion'] ;
//        Connection.zUCommand.Params.ParamByName('Item').DataType       := ftInteger ;
//        Connection.zUCommand.Params.ParamByName('Item').value          := FrmRequisicionMaterial.anexo_prequisicion.FieldValues['iItem'] ;
//        Connection.zUCommand.Params.ParamByName('Insumo').DataType     := ftString ;
//        Connection.zUCommand.Params.ParamByName('Insumo').value        := FrmRequisicionMaterial.anexo_prequisicion.FieldValues['IdInsumo'] ;
//        Connection.zUCommand.Params.ParamByName('Requerido').DataType  := ftDate ;
//        Connection.zUCommand.Params.ParamByName('Requerido').value     := FrmRequisicionMaterial.anexo_requisicion.FieldValues['dFechaSolicitado'];
//        Connection.zUCommand.Params.ParamByName('Cantidad').DataType   := ftFloat ;
//        Connection.zUCommand.Params.ParamByName('Cantidad').value      := edtCantidad.Value ;
//        Connection.zUCommand.ExecSQL ;
//
//        FrmRequisicionMaterial.anexo_prequisicion.Refresh  ;
//        FrmRequisicionMaterial.anexo_prequisicion.GotoBookmark(SavePlace);
//        FrmRequisicionMaterial.anexo_prequisicion.FreeBookmark(SavePlace);
//        materiales.Refresh;
//    except
//      on e : exception do begin
//           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Requisiciones', 'Al actualizar registro', 0);
//      end;
//    End ;
end;
procedure TfrmAgregarMasivoOP_THY.addSalidaEmbarque;
var
 dActExistencia:Extended;
 personalGrid,tipo,folio : String;
 contPerGrid, j,iGrid,indice : Integer;
begin
  dActExistencia:=0;

  If OpcButton = 'New' then
  Begin
    // Consulta de Insumo antes de insertar.
    connection.qryUBusca.Active := False;
    connection.qryUBusca.SQL.Clear;
    connection.qryUBusca.SQL.Add('select IFNULL((IFNULL(	(SELECT SUM(d.dCantidad) FROM bitacoradeentrada d WHERE d.IdInsumo = i.IdInsumo ),	0) '+
    '-	IFNULL((SELECT SUM(e.dCantidad) FROM bitacoradesalida e WHERE e.IdInsumo = i.IdInsumo	AND (select count(iFolioSalida) from almacen_salida where IFolioSalida = e.iFolioSalida)  )=1,0	)),0) AS dExistencia '+
    ' from alm_insumos i where (:Contrato=-1 or (:Contrato<>-1 and i.sContrato =:Contrato)) and i.IdInsumo =:Insumo ');
    connection.qryUBusca.ParamByName('Contrato').AsString  := global_contrato;
    connection.qryUBusca.ParamByName('Insumo').AsInteger   := materiales.FieldByName('IdInsumo').AsInteger;
//    connection.qryUBusca.ParamByName('Almacen').AsInteger  := zDetalleMaterial.FieldByName('IdAlmacen').AsInteger;
    connection.qryUBusca.Open;

    if frmAvisoEmbarque_THY.zSalidaInsumo.RecordCount >= 0 then begin
//      if connection.qryUBusca.FieldValues['dExistencia'] < edtCantidad.Value then
//       begin
//        showmessage('No se puede proporcionar la Cantidad Solicitada, verificar Existencias !');
//        exit;
//       end;
       if connection.qryUBusca.FieldValues['dExistencia'] = 0 then begin
        showmessage('La Existencia es Igual a Cero.');
        frmAvisoEmbarque_THY.Cancelar.Click;
        exit;
       end;
    end;

    connection.qryUBusca2.Active := False ;
    connection.qryUBusca2.SQL.Clear ;
    connection.qryUBusca2.SQL.Add('select IdMaterial,Cantidad from alm_aviso_embarque_detalle where IdAvisoEmbarque = :Folio and IdMaterial = :Insumo '+
      ' and IdSerie = :Serie');
//    connection.qryUBusca2.Params.ParamByName('Contrato').AsString     := zAvisosEmbarque.FieldByName('sContrato').AsString ;
    connection.qryUBusca2.Params.ParamByName('Folio').AsString        := frmAvisoEmbarque.zAvisosEmbarque.FieldValues['IdAvisoEmbarque'] ;
    connection.qryUBusca2.Params.ParamByName('Insumo').AsInteger      := materiales.FieldByName('IdInsumo').AsInteger;
    if frmAvisoEmbarque. tsNumeroSerie.Text = '' then
       connection.qryUBusca2.Params.ParamByName('Serie').AsInteger := 0
    else
       connection.qryUBusca2.Params.ParamByName('Serie').AsInteger := frmAvisoEmbarque.tsNumeroSerie.KeyValue;
    connection.qryUBusca2.Open ;

//    if connection.qryUBusca2.RecordCount = 0 then
//    begin

        connection.zUCommand.Active := False ;
        connection.zUCommand.SQL.Clear ;
        connection.zUCommand.SQL.Add ( 'INSERT INTO alm_aviso_embarque_detalle'+
                                      ' ( IdAvisoEmbarque, IdMaterial, IdAlmacen, IdMedida, Cantidad, IdSerie, Factura,sStatus ) ' +
                                      'VALUES (:Folio,:Insumo, :Almacen, :medida, :cantidad,:serie,:factura, :sStatus)') ;
        connection.zUCommand.Params.ParamByName('Folio').AsInteger   := frmAvisoEmbarque.zAvisosEmbarque.FieldValues['IdAvisoEmbarque'] ;
        connection.zUCommand.Params.ParamByName('Insumo').AsInteger  := materiales.FieldValues['IdInsumo'];
        connection.zUCommand.Params.ParamByName('Almacen').AsInteger  := frmAvisoEmbarque.zAvisosEmbarque.FieldValues['IdAlmacen'];
        connection.zUCommand.Params.ParamByName('medida').AsInteger  := materiales.FieldByName('IdMedida').AsInteger;
         if (connection.qryUBusca.FieldValues['dExistencia'] > materiales.FieldByName('dCantidad').AsFloat) or
         (connection.qryUBusca.FieldValues['dExistencia'] = materiales.FieldByName('dCantidad').AsFloat) then
         connection.zUCommand.Params.ParamByName('cantidad').AsFloat  := materiales.FieldByName('dCantidad').AsFloat
         else
           exit;
        connection.zUCommand.Params.ParamByName('serie').AsInteger   := 0;
        connection.zUCommand.Params.ParamByName('factura').AsString  := frmAvisoEmbarque.edFactura.Text;
        connection.zUCommand.Params.ParamByName('sStatus').AsString  :='Pendiente';
        connection.zUCommand.ExecSQL;

       frmAvisoEmbarque.zDetalleMaterial.Refresh;
//    end
//    else
//    begin
//        if messageDLG('Ya existe un aviso de embarque para el Insumo desea Actualizar el Aviso de Embarque?', mtInformation, [mbYes,mbNo], 0) = mrYes then
//        begin
//          connection.zUCommand.Active := False ;
//          connection.zUCommand.SQL.Clear ;
//          connection.zUCommand.SQL.Add ('UPDATE alm_aviso_embarque_detalle SET Cantidad =:Cantidad where IdAvisoEmbarque = :Folio '+
//                                       'and IdMaterial = :Insumo ') ;
//          connection.zUCommand.Params.ParamByName('Folio').AsInteger    := frmAvisoEmbarque.zAvisosEmbarque.FieldValues['IdAvisoEmbarque'] ;
//          connection.zUCommand.Params.ParamByName('Insumo').AsInteger   := materiales.FieldValues['IdInsumo'];
//          connection.zUCommand.Params.ParamByName('Cantidad').AsFloat   := edtCantidad.Value + connection.qryUBusca2.FieldValues['Cantidad'];
//          connection.zUCommand.ExecSQL ;
//          dActExistencia:=edtCantidad.Value;
//        end
//        else
//          Exit;
//    end;
  End;


  materiales.Refresh;
 frmAvisoEmbarque.zAvisosEmbarque.Refresh;
 frmAvisoEmbarque.zDetalleMaterial.Refresh;
 frmAvisoEmbarque.zDetalleMaterial.ApplyUpdates();



end;

procedure TfrmAgregarMasivoOP_THY.addSalidaSolicitudMateriales;
var
  dActExistencia:Extended;
begin
  dActExistencia:=0;

  If OpcButton = 'New' then
  Begin
    // Consulta de Insumo antes de insertar.
    connection.qryUBusca.Active := False;
    connection.qryUBusca.SQL.Clear;
    connection.qryUBusca.SQL.Add('select IFNULL((IFNULL(	(SELECT SUM(d.dCantidad) FROM bitacoradeentrada d WHERE d.IdInsumo = i.IdInsumo ),	0) '+
    '-	IFNULL((SELECT SUM(e.dCantidad) FROM bitacoradesalida e WHERE e.IdInsumo = i.IdInsumo	AND (select count(iFolioSalida) from almacen_salida where IFolioSalida = e.iFolioSalida)  )=1,0	)),0) AS dExistencia '+
    ' from alm_insumos i where (:Contrato=-1 or (:Contrato<>-1 and i.sContrato =:Contrato)) and i.IdInsumo =:Insumo ');
    connection.qryUBusca.ParamByName('Contrato').AsString  := global_contrato;
    connection.qryUBusca.ParamByName('Insumo').AsInteger   := materiales.FieldByName('IdInsumo').AsInteger;
//    connection.qryUBusca.ParamByName('Almacen').AsInteger  := zDetalleMaterial.FieldByName('IdAlmacen').AsInteger;
    connection.qryUBusca.Open;

    if materiales.RecordCount >= 0 then begin
      if materiales.FieldValues['dExistencia'] < edtCantidad.Value then
       begin
        showmessage('No se puede proporcionar la Cantidad Solicitada, verificar Existencias !');
        exit;
       end;
       if materiales.FieldValues['dExistencia'] = 0 then begin
        showmessage('La Existencia es Igual a Cero.');
        frmSolicitudDeMateriales.Cancelar.Click;
        exit;
       end;
    end;

    connection.qryUBusca2.Active := False ;
    connection.qryUBusca2.SQL.Clear ;
    connection.qryUBusca2.SQL.Add('select IdMaterial,Cantidad from alm_solicitud_materiales_detalle where IdSolicitudMateriales = :Folio and IdMaterial = :Insumo '+
      ' and IdSerie = :Serie');
//    connection.qryUBusca2.Params.ParamByName('Contrato').AsString     := zAvisosEmbarque.FieldByName('sContrato').AsString ;
    connection.qryUBusca2.Params.ParamByName('Folio').AsString        := frmSolicitudDeMateriales.zAvisosEmbarque.FieldValues['IdSolicitudMateriales'] ;
    connection.qryUBusca2.Params.ParamByName('Insumo').AsInteger      := materiales.FieldByName('IdInsumo').AsInteger;
    if frmSolicitudDeMateriales.tsNumeroSerie.Text = '' then
       connection.qryUBusca2.Params.ParamByName('Serie').AsInteger := 0
    else
       connection.qryUBusca2.Params.ParamByName('Serie').AsInteger := frmSolicitudDeMateriales.tsNumeroSerie.KeyValue;
    connection.qryUBusca2.Open ;

    if connection.qryUBusca2.RecordCount = 0 then
    begin
        connection.zUCommand.Active := False ;
        connection.zUCommand.SQL.Clear ;
        connection.zUCommand.SQL.Add ( 'INSERT INTO alm_solicitud_materiales_detalle'+
                                      ' ( IdSolicitudMateriales, IdMaterial, IdMedida, Cantidad, IdSerie, Factura,sStatus ) ' +
                                      'VALUES (:Folio,:Insumo,:medida, :cantidad,:serie,:factura, :sStatus)') ;
        connection.zUCommand.Params.ParamByName('Folio').AsInteger   := frmSolicitudDeMateriales.zAvisosEmbarque.FieldValues['IdSolicitudMateriales'] ;
        connection.zUCommand.Params.ParamByName('Insumo').AsInteger  := materiales.FieldValues['IdInsumo'];
        connection.zUCommand.Params.ParamByName('medida').AsInteger  := materiales.FieldValues['IdMedida'];
        connection.zUCommand.Params.ParamByName('cantidad').AsFloat  := edtCantidad.Value ;
        connection.zUCommand.Params.ParamByName('serie').AsInteger   := 0;
        connection.zUCommand.Params.ParamByName('factura').AsString  := frmSolicitudDeMateriales.edFactura.Text;
        connection.zUCommand.Params.ParamByName('sStatus').AsString  :='Pendiente';
        connection.zUCommand.ExecSQL;
        dActExistencia:=edtCantidad.Value;
    end
    else
    begin
        if messageDLG('Ya existe una solicitud de materiales para el Insumo desea Actualizar la Solicitud de Materiales?', mtInformation, [mbYes,mbNo], 0) = mrYes then
        begin
          connection.zUCommand.Active := False ;
          connection.zUCommand.SQL.Clear ;
          connection.zUCommand.SQL.Add ('UPDATE alm_solicitud_materiales_detalle SET Cantidad =:Cantidad where IdSolicitudMateriales = :Folio '+
                                       'and IdMaterial = :Insumo ') ;
          connection.zUCommand.Params.ParamByName('Folio').AsInteger    := frmSolicitudDeMateriales.zAvisosEmbarque.FieldValues['IdSolicitudMateriales'] ;
          connection.zUCommand.Params.ParamByName('Insumo').AsInteger   := materiales.FieldValues['IdInsumo'];
          connection.zUCommand.Params.ParamByName('Cantidad').AsFloat   := edtCantidad.Value + connection.qryUBusca2.FieldValues['Cantidad'];
          connection.zUCommand.ExecSQL ;
          dActExistencia:=edtCantidad.Value;
        end
        else
          Exit;
    end;
  End;

  If OpcButton = 'Edit' then
  Begin
    // Consulta de Insumo antes de insertar.
    connection.qryUBusca.Active := False;
    connection.qryUBusca.SQL.Clear;
    connection.qryUBusca.SQL.Add('select dExistencia from insumos where (:Contrato=-1 or (:Contrato<>-1 and sContrato =:Contrato)) and sIdInsumo =:Insumo and sIdAlmacen =:Almacen ');
    connection.qryUBusca.ParamByName('Contrato').AsInteger:=-1;
    connection.qryUBusca.ParamByName('Insumo').DataType    := ftString;
    connection.qryUBusca.ParamByName('Almacen').DataType   := ftString;
    connection.qryUBusca.Open;
    if connection.qryUBusca.RecordCount > 0 then
      if connection.qryUBusca.FieldValues['dExistencia'] + Cantidad < edtCantidad.Text then
      begin
        showmessage('No se puede proporcionar la Cantidad Solicitada, verificar Existencias !');
        exit;
      end;

    try
      connection.zUCommand.Active := False ;
      connection.zUCommand.SQL.Clear ;
      connection.zUCommand.SQL.Add ('UPDATE bitacoradesalida SET dCantidad =:Cantidad,dCantidadpendiente =:pendiente where sContrato =:Contrato and iFolioSalida =:Folio '+
                                   'and sIdInsumo =:Insumo and sIdAlmacen =:Almacen and sNumeroActividad =:Actividad ') ;
      connection.zUCommand.Params.ParamByName('Contrato').DataType  := ftString ;
      connection.zUCommand.Params.ParamByName('Contrato').value     := frmSolicitudDeMateriales.zAvisosEmbarque.FieldByName('sContrato').AsString ;
      connection.zUCommand.Params.ParamByName('Folio').DataType     := ftString ;
      connection.zUCommand.Params.ParamByName('Folio').value        := frmSolicitudDeMateriales.zAvisosEmbarque.FieldValues['iFolioSalida'] ;
      connection.zUCommand.Params.ParamByName('Insumo').DataType    := ftString ;
      //connection.zUCommand.Params.ParamByName('Insumo').value       := tsInsumo.Text;
      connection.zUCommand.Params.ParamByName('Cantidad').DataType  := ftFloat ;
      connection.zUCommand.Params.ParamByName('Cantidad').value     := edtCantidad.Value ;
      connection.zUCommand.Params.ParamByName('pendiente').DataType  := ftFloat ;
      connection.zUCommand.Params.ParamByName('pendiente').value     := edtCantidad.Value-dActExistencia ;
      connection.zUCommand.Params.ParamByName('Almacen').DataType   := ftString;
      connection.zUCommand.Params.ParamByName('Actividad').DataType := ftString;
      connection.zUCommand.Params.ParamByName('Actividad').Value    := frmSolicitudDeMateriales.zDetalleMaterial.FieldValues['sNumeroActividad'];
      connection.zUCommand.ExecSQL ;
    except
      MessageDlg('Ocurrio un error al actualizar el registro', mtWarning, [mbOk], 0);
      exit;
    End;
      //soad -> Actualizacion de los insumos...
      //**************************************************
      connection.qryUBusca2.Active := False;
      connection.qryUBusca2.SQL.Clear;
      connection.qryUBusca2.SQL.Add('UPDATE insumos SET dExistencia =:Cantidad '+
                                  'WHERE (:Contrato=-1 and (:Contrato<>-1 and sContrato =:Contrato)) And sIdInsumo =:Insumo and sIdAlmacen =:Almacen ');
      connection.qryUBusca2.ParamByName('Contrato').AsInteger:=-1;
      connection.qryUBusca2.ParamByName('Insumo').DataType    := ftString ;
      //connection.qryUBusca2.ParamByName('Insumo').Value       := tsInsumo.Text;
      connection.qryUBusca2.ParamByName('Almacen').DataType   := ftString ;
      connection.qryUBusca2.ParamByName('Cantidad').DataType  := ftFloat ;
      connection.qryUBusca2.ParamByName('Cantidad').value     := ((connection.qryUBusca.FieldValues['dExistencia'] + Cantidad) - edtCantidad.Value);
      connection.qryUBusca2.ExecSQL;

//      cxNuevoDetalle.Enabled  := True ;
//      cxEditaDetalle.Enabled   := True ;
//      Salvar.Enabled   := False ;
//      Cancelar.Enabled := true ;
//      cxEliminarDetalle.Enabled := True ;
//      zSalidaInsumo.Refresh;
  End;

  connection.qryUBusca2.Active := False;
  connection.qryUBusca2.SQL.Clear;
  connection.qryUBusca2.SQL.Add('UPDATE alm_insumos_series SET dCantidad =:Cantidad '+
                              'WHERE IdSerie =:Serie ');
  connection.qryUBusca2.ParamByName('Cantidad').AsFloat  :=  0;
  connection.qryUBusca2.ParamByName('Serie').AsInteger   :=  0;
  connection.qryUBusca2.ExecSQL;


  frmSolicitudDeMateriales.zDetalleMaterial.Refresh;
  SavePlace := frmSolicitudDeMateriales.zDetalleMaterial.GetBookmark ;
  frmSolicitudDeMateriales.zDetalleMaterial.FreeBookmark(SavePlace);

  frmSolicitudDeMateriales.zDetalleMaterial.Locate('IdMaterial', materiales.FieldByName('IdInsumo').AsString, []);
  SavePlace := frmSolicitudDeMateriales.zDetalleMaterial.GetBookmark ;

  IsOpen:=false;
  materiales.DisableControls;

  materiales.Refresh;
  materiales.Locate('IdInsumo', frmSolicitudDeMateriales.zDetalleMaterial.FieldByName('IdMaterial').AsString, []);

  Try
     frmSolicitudDeMateriales.zDetalleMaterial.GotoBookmark(SavePlace);
     SavePlace := materiales.GetBookmark ;
     materiales.GotoBookmark(SavePlace);
  Except
    frmSolicitudDeMateriales.zDetalleMaterial.FreeBookmark(SavePlace);
  End;

  materiales.EnableControls;
  IsOpen:=true;

  edtCantidad.Text  := '';

  materiales.Refresh;
  frmSolicitudDeMateriales.zDetalleMaterial.Refresh;
end;

procedure TfrmAgregarMasivoOP_THY.addSalida;
var
  dActExistencia:Extended;
  zDatos :TUniQuery;
begin
  if (Materiales.FieldByName('Estado').AsString <> 'FUERA DE OPERACIÓN') and (Materiales.FieldByName('Estado').AsString <> 'MANTENIMIENTO') then
  begin
    dActExistencia:=0;

      If OpcButton = 'New' then
      Begin

        // Consulta de Insumo antes de insertar.
        connection.qryUBusca.Active := False;
        connection.qryUBusca.SQL.Clear;
        if connection.uContrato.FieldByName('FK_Titulo').AsString='TYPHOON' then
        begin
          connection.qryUBusca.SQL.Add('select Existencias(i.IdInsumo, :Almacen, :Contrato) AS dExistencia'+
          ' from alm_insumos i where (:Contrato=-1 or (:Contrato<>-1 and i.sContrato =:Contrato)) and i.IdInsumo =:Insumo ');
          connection.qryUBusca.ParamByName('Contrato').AsString  := global_contrato;
          connection.qryUBusca.ParamByName('Insumo').AsInteger   := materiales.FieldByName('IdInsumo').AsInteger;
          connection.qryUBusca.ParamByName('Almacen').AsInteger  := frmSalidaAlmacen_THY.salida_almacen.FieldByName('IdAlmacen').AsInteger;
        end;

        connection.qryUBusca.Open;

        if connection.qryUBusca.RecordCount >= 0 then
        begin
          if connection.qryUBusca.FieldByName('dExistencia').AsVariant < edtCantidad.Value then
           begin
            showmessage('No se puede proporcionar la Cantidad Solicitada, verificar Existencias !');
            exit;
           end;
           if connection.qryUBusca.FieldValues['dExistencia'] = 0 then begin
            showmessage('La Existencia es Igual a Cero.');
            exit;
           end;
        end;


        connection.QryUBusca2.Close;
        connection.qryUBusca2.Active := False ;
        connection.qryUBusca2.Fields.Clear;
        connection.QryUBusca2.Params.Clear;
        connection.qryUBusca2.SQL.Clear ;
        connection.qryUBusca2.SQL.Text := 'select IdInsumo,dCantidad from bitacoradesalida where sContrato = :Contrato  and IdInsumo = :Insumo and iFolioSalida = :Folio';
        connection.qryUBusca2.Params.ParamByName('Contrato').AsString     := frmSalidaAlmacen_THY.salida_almacen.FieldByName('sContrato').AsString ;
        connection.qryUBusca2.Params.ParamByName('Folio').AsString        := frmSalidaAlmacen_THY.salida_almacen.FieldByName('iFolioSalida').AsString ;
        connection.qryUBusca2.Params.ParamByName('Insumo').AsInteger      := Materiales.FieldByName('IdInsumo').AsInteger;
        connection.qryUBusca2.Open ;



        if connection.qryUBusca2.RecordCount = 0 then
        begin
            connection.zUCommand.Active := False ;
            connection.zUCommand.SQL.Clear ;
            if (connection.uContrato.FieldByName('FK_Titulo').AsString='CMMI') OR (connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7') or (connection.uContrato.FieldByName('FK_Titulo').AsString='SIANI')  then
            BEGIN
                connection.zUCommand.SQL.Add ( 'INSERT INTO bitacoradesalida ( sContrato, iFolioSalida, dFechaSalida,IdInsumo, dCantidad,IdAlmacen, sStatus ) ' +
                                              'VALUES (:Contrato, :Folio, :FechaS,:Insumo, :Cantidad,:Almacen,'+ QuotedStr('Pendiente')+')') ;
                connection.zUCommand.Params.ParamByName('Contrato').AsString := frmSalidaAlmacen_THY.salida_almacen.FieldByName('sContrato').AsString ;
                connection.zUCommand.Params.ParamByName('Folio').AsInteger   := frmSalidaAlmacen_THY.salida_almacen.FieldValues['iFolioSalida'] ;
                connection.zUCommand.Params.ParamByName('FechaS').AsDate     := frmSalidaAlmacen_THY.salida_almacen.FieldValues['dFechaSalida'];
                connection.zUCommand.Params.ParamByName('Insumo').AsInteger  := materiales.FieldValues['IdInsumo'];
                connection.zUCommand.Params.ParamByName('Cantidad').AsFloat  := edtCantidad.Value ;
                connection.zUCommand.Params.ParamByName('Almacen').AsInteger:=frmSalidaAlmacen_THY.salida_almacen.FieldByName('IdAlmacen').AsInteger;
            END
            else begin
                connection.zUCommand.SQL.Add ( 'INSERT INTO bitacoradesalida ( sContrato, iFolioSalida, dFechaSalida,iFolioRequisicion,IdInsumo, dCantidad,IdAlmacen, sStatus ) ' +
                                              'VALUES (:Contrato, :Folio, :FechaS, :FolioReq,:Insumo, :Cantidad,:Almacen,'+ QuotedStr('Pendiente')+')') ;
                connection.zUCommand.Params.ParamByName('Contrato').AsString := frmSalidaAlmacen_THY.salida_almacen.FieldByName('sContrato').AsString ;
                connection.zUCommand.Params.ParamByName('Folio').AsInteger   := frmSalidaAlmacen_THY.salida_almacen.FieldValues['iFolioSalida'] ;
                connection.zUCommand.Params.ParamByName('FechaS').AsDate     := frmSalidaAlmacen_THY.salida_almacen.FieldValues['dFechaSalida'];
                if (frmSalidaAlmacen_THY.salida_almacen.FieldByName('CodigoSalida').AsString = 'SALA') or (frmSalidaAlmacen_THY.salida_almacen.FieldByName('CodigoSalida').AsString = 'AJIN')then
                   connection.zUCommand.Params.ParamByName('FolioReq').AsInteger := 0
                 else
                   connection.zUCommand.Params.ParamByName('FolioReq').AsInteger  := frmSalidaAlmacen_THY.salida_almacen.FieldValues['iFolioRequisicion'];
                connection.zUCommand.Params.ParamByName('Insumo').AsInteger  := materiales.FieldValues['IdInsumo'];
                connection.zUCommand.Params.ParamByName('Cantidad').AsFloat  := edtCantidad.Value ;
                connection.zUCommand.Params.ParamByName('Almacen').AsInteger:=frmSalidaAlmacen_THY.salida_almacen.FieldByName('IdAlmacen').AsInteger;
            end;
            connection.zUCommand.ExecSQL;
            dActExistencia:=edtCantidad.Value;
        end
        else
        begin
            if (frmSalidaAlmacen_THY.salida_almacen.FieldByName('iFolioRequisicion').AsInteger = 0) or (frmSalidaAlmacen_THY.salida_almacen.FieldByName('iFolioRequisicion').AsInteger = null)  then
            begin
                if messageDLG('Ya existe una salida para el Insumo desea Actualizar la salida?', mtInformation, [mbYes,mbNo], 0) = mrYes then
                begin
                  connection.zUCommand.Active := False ;
                  connection.zUCommand.SQL.Clear ;
                  connection.zUCommand.SQL.Add ('UPDATE bitacoradesalida SET dCantidad =:Cantidad where sContrato =:Contrato and iFolioSalida =:Folio '+
                                               'and IdInsumo =:Insumo ') ;
                  connection.zUCommand.Params.ParamByName('Contrato').AsString  := frmSalidaAlmacen_THY.salida_almacen.FieldByName('sContrato').AsString ;
                  connection.zUCommand.Params.ParamByName('Folio').AsInteger    := frmSalidaAlmacen_THY.salida_almacen.FieldValues['iFolioSalida'] ;
                  connection.zUCommand.Params.ParamByName('Insumo').AsInteger   := materiales.FieldValues['IdInsumo'];
                  connection.zUCommand.Params.ParamByName('Cantidad').AsFloat   := edtCantidad.Value + connection.qryUBusca2.FieldValues['dCantidad'];
                  connection.zUCommand.ExecSQL ;
                  dActExistencia:=edtCantidad.Value;
                end
                else
                  Exit;
            end
            else begin
               if messageDLG('Ya existe una salida para el Insumo desea Actualizar la salida?', mtInformation, [mbYes,mbNo], 0) = mrYes then
                begin
                  connection.zUCommand.Active := False ;
                  connection.zUCommand.SQL.Clear ;
                  connection.zUCommand.SQL.Add ('UPDATE bitacoradesalida SET dCantidad =:Cantidad where sContrato =:Contrato and iFolioSalida =:Folio '+
                                               'and IdInsumo =:Insumo ') ;
                  connection.zUCommand.Params.ParamByName('Contrato').AsString  := frmSalidaAlmacen_THY.salida_almacen.FieldByName('sContrato').AsString ;
                  connection.zUCommand.Params.ParamByName('Folio').AsInteger    := frmSalidaAlmacen_THY.salida_almacen.FieldValues['iFolioSalida'] ;
                  connection.zUCommand.Params.ParamByName('Insumo').AsInteger   := materiales.FieldValues['IdInsumo'];
                  connection.zUCommand.Params.ParamByName('Cantidad').AsFloat   := edtCantidad.Value + connection.qryUBusca2.FieldValues['dCantidad'];
                  connection.zUCommand.ExecSQL ;
                  dActExistencia:=edtCantidad.Value;
                end
                else
                  Exit;
            end;
        end;
      End;

      frmSalidaAlmacen_THY.salida_detalle.Refresh;
      SavePlace := frmSalidaAlmacen_THY.salida_detalle.GetBookmark ;
      frmSalidaAlmacen_THY.salida_detalle.FreeBookmark(SavePlace);

      frmSalidaAlmacen_THY.salida_detalle.Locate('IdInsumo', Materiales.FieldByName('IdInsumo').AsString, []);
      SavePlace := frmSalidaAlmacen_THY.salida_detalle.GetBookmark ;

      IsOpen:=false;
      Try
         frmSalidaAlmacen_THY.salida_detalle.GotoBookmark(SavePlace);
      Except
        frmSalidaAlmacen_THY.salida_detalle.FreeBookmark(SavePlace);
      End;
      IsOpen:=true;

  end
  else
  begin
    ShowMessage('No se puede agregar el equipo, esta '+Materiales.FieldByName('Estado').AsString);
  end;
end;

procedure TfrmAgregarMasivoOP_THY.btnAceptarClick(Sender: TObject);
begin
  Connection.QryUBusca.FieldByName('Material').AsString:=cxDescripcion.Text;
  Connection.QryUBusca.FieldByName('sModelo').AsString:=edtModelo.Text;
  Connection.QryUBusca.FieldByName('dTalla').AsString:=edtNumero.Text;
  Connection.QryUBusca.FieldByName('IdMarca').AsInteger:=cbMarca.EditValue;
  Connection.QryUBusca.FieldByName('IdMedida').AsInteger:=cmbMedida.EditValue;
  if cbFamilia.Text = '' then
     Connection.QryUBusca.FieldByName('IdFamilia').AsInteger:=0
  else
     Connection.QryUBusca.FieldByName('IdFamilia').AsInteger:=cbFamilia.EditValue;
  if cbSubFamilia.Text = '' then
     Connection.QryUBusca.FieldByName('IdSubFamilia').AsInteger:=0
  else
     Connection.QryUBusca.FieldByName('IdSubFamilia').AsInteger:=cbSubFamilia.EditValue;
  Connection.QryUBusca.FieldByName('IdProducto').AsInteger:=cbProducto.EditValue;
  Connection.QryUBusca.Post;
  btnAceptar.visible:=False;
  cxCantidad.Enabled:=True;
  cxActualiza.Visible:=True;

  if global_frmActivo = 'Costos_Edit' then
  begin


    connection.qryUBusca2.Active := False ;
    connection.qryUBusca2.SQL.Clear ;
    connection.qryUBusca2.SQL.Text:='Select IdTipoRecurso from alm_familias where IdFamilia = :IdFamilia';
    connection.qryUBusca2.ParamByName('IdFamilia').Value  := cbFamilia.EditValue;
    connection.qryUBusca2.Open;

    connection.qryUBusca.Active := False;
    connection.qryUBusca.SQL.Clear;
    connection.qryUBusca.SQL.Text:='UPDATE op_presupuesto_detalle SET  IdTipoRecurso=:IdTipoRecurso, '
    +'Descripcion=:Descripcion WHERE IdPresupuestoDetalle=:IdPresupuestoDetalle';
     if cbFamilia.Text = '' then
      connection.qryUBusca.ParamByName('IdTipoRecurso').AsInteger  := -1
    else
      connection.qryUBusca.ParamByName('IdTipoRecurso').AsInteger  := connection.qryUBusca2.FieldByName('IdTipoRecurso').AsInteger;
    connection.qryUBusca.ParamByName('Descripcion').AsString   := cxDescripcion.Text;
    connection.qryUBusca.ParamByName('IdPresupuestoDetalle').AsInteger  := frmCostoPresupuesto.zDetalle.FieldByName('IdPresupuestoDetalle').AsInteger;
    connection.qryUBusca.ExecSQL;
    frmCostoPresupuesto.zDetalle.Refresh;
  end;
  PanelNuevoMaterial.Visible := False;
  IsOpen := False;
  materiales.Refresh;
  ScrollMateriales;
  IsOpen := True;
  Close;
end;

procedure TfrmAgregarMasivoOP_THY.btnAddClick(Sender: TObject);
begin
  frmCostoPresupuesto.zDetalle.Append;
  cxCodigo.Text := autofolio(frmCostoPresupuesto.zDetalle,'alm_insumos');
  frmCostoPresupuesto.zDetalle.cancel;
  cxDescripcion.Text:='';
  cmbMedida.EditValue:=uMedidas.FieldByName('IdMedida').AsInteger;
  cbFamilia.EditValue:=zFamilia.FieldByName('IdFamilia').AsInteger;
  cbSubFamilia.EditValue:=zSubFamilia.FieldByName('IdSubFamilia').AsInteger;
  PanelNuevoMaterial.Visible := True;

end;


procedure TfrmAgregarMasivoOP_THY.btnDetalleClick(Sender: TObject);
begin
  PanelDetalle.Visible:=not PanelDetalle.Visible;
  cxSplitterDetalle.Visible:= not cxSplitterDetalle.Visible;
end;

procedure TfrmAgregarMasivoOP_THY.btnExpandirClick(Sender: TObject);
begin
   if View_Grid_Materiales.OptionsView.CellAutoHeight then
      View_Grid_Materiales.OptionsView.CellAutoHeight := False
   else
      View_Grid_Materiales.OptionsView.CellAutoHeight := True;
end;

function TfrmAgregarMasivoOP_THY.camposLlenos() : Boolean;
var
  ban: boolean;
begin
  ban:=True;
  if (cxCodigo.Text <> '') AND (cxDescripcion.Text <> '') AND (cxCantidad.Text <> '0') then
    ban:=True
  else
    ban:=False;

  result:=ban;
end;


procedure TfrmAgregarMasivoOP_THY.cbFamiliaPropertiesEditValueChanged(
  Sender: TObject);
begin
  if not (cbFamilia.EditValue=null) then  begin
  zFamilia.Filtered := False;
  zFamilia.Filter   := 'IdFamilia = ' + QuotedStr(cbFamilia.EditValue);
  zFamilia.Filtered := True;
  zFamilia.FieldByName('IdTipoRecurso').AsInteger;
  zFamilia.Filtered := False;
  end;
   if not (cbSubFamilia.EditValue=null) then  begin
  zSubFamilia.Filtered := False;
  zSubFamilia.Filter   := 'IdFamilia = ' + zFamilia.FieldByName('IdFamilia').AsString;
  zSubFamilia.Filtered := True;
  cbSubFamilia.EditValue:=zSubFamilia.FieldByName('IdSubFamilia').AsInteger;
   end;
end;

procedure TfrmAgregarMasivoOP_THY.cxActualizaClick(Sender: TObject);
var
    zActualiza, zMoneda : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    SavePlace, SavePlace2, PosInsumo : TBookMark;
    cerrar:Boolean;
begin
    cerrar:=False;
    zActualiza:=tUniquery.create(nil);
    zActualiza.Connection := Connection.uConnection;
    zMoneda:=tUniquery.create(nil);
    zMoneda.Connection := Connection.uConnection;

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

        if global_frmActivo ='Kit Equipo' then
        begin
          Connection.QryUBusca.Active := False;
          Connection.QryUBusca.SQL.Clear;
          Connection.QryUBusca.SQL.Add('INSERT INTO op_kit_equipo_detalle(IdKitDetalle,IdKit,IdMaterial,Cantidad) VALUES (0, :IdKit, :IdMaterial, :Cantidad)');
          Connection.QryUBusca.ParamByName('IdKit').AsInteger:=frmCatalogosOperacion.zqCatalogosGenerales.FieldByName('IdKit').AsInteger;
          Connection.QryUBusca.ParamByName('IdMaterial').AsInteger:=materiales.FieldByName('IdInsumo').AsInteger;
          Connection.QryUBusca.ParamByName('Cantidad').AsFloat:=edtCantidad.Value;
          Connection.QryUBusca.ExecSQL;

        end;

        if global_frmActivo ='AvisoEmbarque' then
        begin
          Connection.QryUBusca.Active := False;
          Connection.QryUBusca.SQL.Clear;
          Connection.QryUBusca.SQL.Add('INSERT INTO alm_aviso_embarque_detalle(IdAvisoEmbarqueDet,IdAvisoEmbarque,IdMaterial,IdMedida,Cantidad,sStatus) VALUES (0, :IdAvisoEmbarque, :IdMaterial,:IdMedida, :Cantidad, :sStatus)');
          Connection.QryUBusca.ParamByName('IdAvisoEmbarque').AsInteger:=frmAvisoEmbarque.zAvisosEmbarque.FieldByName('IdAvisoEmbarque').AsInteger;
          Connection.QryUBusca.ParamByName('IdMaterial').AsInteger:=materiales.FieldByName('IdInsumo').AsInteger;
          Connection.QryUBusca.ParamByName('IdMedida').AsInteger:=materiales.FieldByName('IdMedida').AsInteger;
          Connection.QryUBusca.ParamByName('Cantidad').AsFloat:=edtCantidad.Value;
          Connection.QryUBusca.ParamByName('sStatus').AsString:='Pendiente';

          Connection.QryUBusca.ExecSQL;
//          frmAvisoEmbarque.zDetalleMaterial.Refresh;
          Try
           materiales.GotoBookmark(PosInsumo);
          Except
          Else
              materiales.FreeBookmark(PosInsumo);
          End ;
          frmAvisoEmbarque.zDetalleMaterial.Refresh;
          frmAvisoEmbarque.grid_embarque.Enabled := true;
        end;

        if global_frmActivo ='Solicitud' then
        begin
          addInsumosSolicitud;

//          Connection.QryUBusca.Active := False;
//          Connection.QryUBusca.SQL.Clear;
//          Connection.QryUBusca.SQL.Add('INSERT INTO anexo_psolicitud(sContrato,IdPSolicitud,iFolioSolicitud,IdInsumo,iItem,mDescripcion,IdMedida,dFechaRequerimiento,dCantidad,sObservacion,sEstado,IdTipoRecurso) VALUES '+
//                                                                    '(:Contrato, 0, :iFolioSolicitud, :IdInsumo, 0, :Descripcion, :IdMedida, :dFechaReq,:Cantidad,:Observa, :sStatus, :IdTipoRecurso)');
//          Connection.QryUBusca.ParamByName('Contrato').AsString:=FrmSolicitudMaterial.anexo_solicitud.FieldByName('sContrato').AsString;
//          Connection.QryUBusca.ParamByName('iFolioSolicitud').AsInteger:=FrmSolicitudMaterial.anexo_solicitud.FieldByName('iFolioSolicitud').AsInteger;
//          Connection.QryUBusca.ParamByName('IdInsumo').AsInteger:=materiales.FieldByName('IdInsumo').AsInteger;
//          Connection.QryUBusca.ParamByName('Descripcion').AsString:=materiales.FieldByName('Insumo').AsString;
//          Connection.QryUBusca.ParamByName('IdMedida').AsInteger:=materiales.FieldByName('IdMedida').AsInteger;
//          Connection.QryUBusca.ParamByName('dFechaReq').AsDateTime:=now;
//          Connection.QryUBusca.ParamByName('Cantidad').AsFloat:=edtCantidad.Value;
//          Connection.QryUBusca.ParamByName('Observa').AsString:='*';
//          Connection.QryUBusca.ParamByName('sStatus').AsString:='Pendiente';
//          Connection.QryUBusca.ParamByName('IdTipoRecurso').AsInteger:=FrmSolicitudMaterial.anexo_solicitud.FieldByName('IdTipoRecurso').AsInteger;
//
//          Connection.QryUBusca.ExecSQL;
////          frmAvisoEmbarque.zDetalleMaterial.Refresh;
//          Try
//           materiales.GotoBookmark(PosInsumo);
//          Except
//          Else
//              materiales.FreeBookmark(PosInsumo);
//          End ;
//          FrmSolicitudMaterial.anexo_psolicitud.Refresh;
//          FrmSolicitudMaterial.grid_solicitud.Enabled := true;
        end;

        if global_frmActivo ='Costos' then
        begin
           zMoneda.Active := False;
           zMoneda.SQL.Clear;
           zMoneda.SQL.Text:='select IdMoneda,Codigo, TipoCambio from master_moneda' ;
           zMoneda.Open;

           Connection.QryUBusca.Active := False;
           Connection.QryUBusca.SQL.Clear;
           Connection.QryUBusca.SQL.Add('INSERT INTO op_presupuesto_detalle (IdPresupuestoDetalle, sContrato, sNumeroOrden, IdRecurso, IdTipoRecurso, Codigo, Descripcion, IdMedida, Cantidad, Costo, PU, Adicional, Financiamiento) '+
           'VALUES (0, :sContrato, :sNumeroOrden, :IdRecurso, :IdTipoRecurso, :Codigo, :Descripcion, :IdMedida, :Cantidad, :Costo, :PU, :Adicional, :Financiamiento)');
           Connection.QryUBusca.ParamByName('sContrato').AsString:=Global_Contrato;
           Connection.QryUBusca.ParamByName('sNumeroOrden').AsString:=frmCostoPresupuesto.zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString;
           if not camposLlenos() then begin
             Connection.QryUBusca.ParamByName('Codigo').AsString:=materiales.FieldByName('Codigo').AsString;
             Connection.QryUBusca.ParamByName('Descripcion').AsString:=materiales.FieldByName('Insumo').AsString;
             Connection.QryUBusca.ParamByName('IdRecurso').AsInteger:=materiales.FieldByName('IdInsumo').AsInteger;
             if (materiales.FieldByName('IdTipoRecurso').AsInteger = 0) or (materiales.FieldByName('IdTipoRecurso').AsInteger = Null) then
                Connection.QryUBusca.ParamByName('IdTipoRecurso').AsInteger:= -1
             else
                Connection.QryUBusca.ParamByName('IdTipoRecurso').AsInteger:=materiales.FieldByName('IdTipoRecurso').AsInteger;
             Connection.QryUBusca.ParamByName('IdMedida').AsInteger:=materiales.FieldByName('IdMedida').AsInteger;
             Connection.QryUBusca.ParamByName('Cantidad').AsFloat:=edtCantidad.Value;
             if cxPageCostos.ActivePage = cxTabCosto_OC then begin
               if uCostos.RecordCount > 0 then  begin
                 if zMoneda.Locate('Codigo', materiales.FieldByName('Moneda').AsString,[]) then begin
                   if materiales.FieldByName('Moneda').AsString = 'MXN' then
                     Connection.QryUBusca.ParamByName('Costo').AsFloat:=materiales.FieldByName('dCosto').AsFloat /			zMoneda.FieldByName('TipoCambio').AsFloat
                   else if materiales.FieldByName('Moneda').AsString = 'DLL' then
                      Connection.QryUBusca.ParamByName('Costo').AsFloat:=materiales.FieldByName('dCosto').AsFloat * 			zMoneda.FieldByName('TipoCambio').AsFloat
                   end;
               end
               else begin
                 if zMoneda.Locate('Codigo', materiales.FieldByName('Moneda').AsString,[]) then begin
                   if materiales.FieldByName('Moneda').AsString = 'MXN' then
                     Connection.QryUBusca.ParamByName('Costo').AsFloat:=materiales.FieldByName('dCosto').AsFloat / zMoneda.FieldByName('TipoCambio').AsFloat
                   else if materiales.FieldByName('Moneda').AsString = 'DLL' then
                      Connection.QryUBusca.ParamByName('Costo').AsFloat:=materiales.FieldByName('dCosto').AsFloat * zMoneda.FieldByName('TipoCambio').AsFloat
                 end;
               end;
             end
             else if cxPageCostos.ActivePage = cxTabcosto_PU then
             begin
               if zCostoPU.RecordCount > 0 then  begin
                 if zMoneda.Locate('Codigo', materiales.FieldByName('Moneda').AsString,[]) then begin
                   if materiales.FieldByName('Moneda').AsString = 'MXN' then
                     Connection.QryUBusca.ParamByName('Costo').AsFloat:=materiales.FieldByName('dCosto').AsFloat / zMoneda.FieldByName('TipoCambio').AsFloat
                   else if materiales.FieldByName('Moneda').AsString = 'DLL' then
                      Connection.QryUBusca.ParamByName('Costo').AsFloat:=materiales.FieldByName('dCosto').AsFloat * zMoneda.FieldByName('TipoCambio').AsFloat
                 end;
               end
               else begin
                 if zMoneda.Locate('Codigo', materiales.FieldByName('Moneda').AsString,[]) then begin
                   if materiales.FieldByName('Moneda').AsString = 'MXN' then
                     Connection.QryUBusca.ParamByName('Costo').AsFloat:=materiales.FieldByName('dCosto').AsFloat / zMoneda.FieldByName('TipoCambio').AsFloat
                   else if materiales.FieldByName('Moneda').AsString = 'DLL' then
                      Connection.QryUBusca.ParamByName('Costo').AsFloat:=materiales.FieldByName('dCosto').AsFloat * zMoneda.FieldByName('TipoCambio').AsFloat
                 end;
               end;
             end
             else    begin
                 if zMoneda.Locate('Codigo', materiales.FieldByName('Moneda').AsString,[]) then begin
                   if materiales.FieldByName('Moneda').AsString = 'MXN' then
                     Connection.QryUBusca.ParamByName('Costo').AsFloat:=materiales.FieldByName('dCosto').AsFloat / zMoneda.FieldByName('TipoCambio').AsFloat
                   else if materiales.FieldByName('Moneda').AsString = 'DLL' then
                      Connection.QryUBusca.ParamByName('Costo').AsFloat:=materiales.FieldByName('dCosto').AsFloat * zMoneda.FieldByName('TipoCambio').AsFloat
                 end;
             end;
             Connection.QryUBusca.ParamByName('PU').AsFloat:=0;
             if (Connection.QryUBusca.ParamByName('IdTipoRecurso').AsInteger = 3) and (cbAdicional.Text ='10') then
               Connection.QryUBusca.ParamByName('Adicional').AsString:= '0'
             else
               Connection.QryUBusca.ParamByName('Adicional').AsString:= cbAdicional.Text;
             Connection.QryUBusca.ParamByName('Financiamiento').AsString:= cbFinanciamiento.Text;


           end
           else
           begin
           ////////////////////////////////
             Connection.qryUBusca.ParamByName('Codigo').AsString:=cxCodigo.Text;
             Connection.QryUBusca.ParamByName('Descripcion').AsString:=cxDescripcion.Text;
             Connection.QryUBusca.ParamByName('IdRecurso').AsInteger:=-1;
             Connection.QryUBusca.ParamByName('IdTipoRecurso').AsInteger:=zFamilia.FieldByName('IdTipoRecurso').AsInteger;
             Connection.QryUBusca.ParamByName('IdMedida').AsInteger:=cmbMedida.EditValue;
             Connection.QryUBusca.ParamByName('Cantidad').AsFloat:=cxCantidad.Value;
             Connection.QryUBusca.ParamByName('Costo').AsFloat:=0;
             Connection.QryUBusca.ParamByName('PU').AsFloat:=0;


             MessageDlg('Se ha agregado al presupuesto como material nuevo',mtInformation,[mbOk],0);
           end;
           Connection.QryUBusca.ExecSQL;
           frmCostoPresupuesto.zDetalle.Append;
           cxCodigo.Text := autofolio(frmCostoPresupuesto.zDetalle,'op_presupuesto_detalle');
           frmCostoPresupuesto.zDetalle.cancel;
           cxDescripcion.Text:='';
           cxCantidad.Value:=0.0;
        end;

        if global_frmActivo ='Requisicion' then
           addRequisicon;


        if (global_frmActivo ='Salida_Almacen')  then
        begin
           if frmSalidaAlmacen_THY.salida_almacen.FieldByName('iFolioRequisicion').AsInteger > 0 then
             if edtCantidad.Value > materiales.FieldByName('dCantidad').AsFloat then
             begin
                 messageDLG('No se puede dar salida a una cantidad mayor a lo Requisitado', mtInformation, [mbOk],0);
                 exit;
             end;
           addSalida;
           addAsignacion;
           materiales.Refresh;
        end;



        if global_frmActivo = 'Entrada_Almacen' then
        begin
            if View_Grid_Materiales.DataController.GetSelectedCount > 1 then
                addEntradaMasivo
            else
               addEntrada;
               materiales.Refresh;
        end;

        if (global_frmActivo = 'Aviso_Embarque') then begin
          if View_Grid_Materiales.DataController.GetSelectedCount > 1 then
             addSalidaEmbarque
          else
            addSalidaEmbarque ;
        end;

         if (global_frmActivo = 'Solicitud_Materiales') then begin
          if View_Grid_Materiales.DataController.GetSelectedCount > 1 then
             addSalidaSolicitudMateriales
          else
            addSalidaSolicitudMateriales ;
        end;

    end;



    if View_Grid_Materiales.DataController.GetSelectedCount > 1 then
    begin


      if global_frmActivo = 'Entrada_Almacen' then
      begin

         if frmEntradaAlmacen_THY.almacen_entrada.FieldByName('IdTipo').AsInteger <> 12 then
         BEGIN
            materiales.Refresh;
            if connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7' then
            BEGIN
              materiales.Filtered := False;
              materiales.Filter   := 'dCantidadPendiente > 0 ';
              materiales.Filtered := True;
            END
            else
            begin
              materiales.Filtered := False;
              materiales.Filter   := 'dCantidad <> dCantidadRecibida ';
              materiales.Filtered := True;
            end;
         END;
         frmEntradaAlmacen_THY.pEntradas.Refresh;
         frmEntradaAlmacen_THY.almacen_entrada.Refresh;
         frmEntradaAlmacen_THY.PgControl.Enabled:=True;
         frmEntradaAlmacen_THY.Grid_Entradas.Enabled := True;
      end;


       View_Grid_Materiales.DataController.ClearSelection;
    end;

    if ((View_Grid_Materiales.DataController.GetSelectedCount  = 0) and (PanelNuevoMaterial.Visible = True)) then
    begin
        Connection.QryUBusca.Active := False;
        Connection.QryUBusca.SQL.Clear;
        Connection.QryUBusca.SQL.Add('INSERT INTO op_presupuesto_detalle (IdPresupuestoDetalle, sContrato, sNumeroOrden, IdRecurso, IdTipoRecurso, Codigo, Descripcion, IdMedida, Cantidad, Costo, PU, Adicional) '+
        'VALUES (0, :sContrato, :sNumeroOrden, :IdRecurso, :IdTipoRecurso, :Codigo, :Descripcion, :IdMedida, :Cantidad, :Costo, :PU, :Adicional)');
        Connection.QryUBusca.ParamByName('sContrato').AsString:=Global_Contrato;
        Connection.QryUBusca.ParamByName('sNumeroOrden').AsString:=frmCostoPresupuesto.zOrdenesTrabajo.FieldByName('sNumeroOrden').AsString;

        Connection.qryUBusca.ParamByName('Codigo').AsString:=cxCodigo.Text;
        Connection.QryUBusca.ParamByName('Descripcion').AsString:=cxDescripcion.Text;
        Connection.QryUBusca.ParamByName('IdRecurso').AsInteger:=-1;
        Connection.QryUBusca.ParamByName('IdTipoRecurso').AsInteger:=zFamilia.FieldByName('IdTipoRecurso').AsInteger;
        Connection.QryUBusca.ParamByName('IdMedida').AsInteger:=cmbMedida.EditValue;
        Connection.QryUBusca.ParamByName('Cantidad').AsFloat:=cxCantidad.Value;
        Connection.QryUBusca.ParamByName('Costo').AsFloat:=0;
        Connection.QryUBusca.ParamByName('PU').AsFloat:=0;
        Connection.QryUBusca.ExecSQL;

           Connection.QryUBusca2.Active := False;
           Connection.QryUBusca2.SQL.Clear;
           Connection.QryUBusca2.SQL.Add('INSERT INTO alm_insumos (IdInsumo, sContrato, Codigo, Material, Description, dFecha, IdMedida,   dCantidad, IdFamilia,IdSubFamilia,IdMarca,sModelo,dTalla,IdProducto) '+
           'VALUES (0, :sContrato,:Codigo, :Material, :Description, :dFecha, :IdMedida, :dCantidad, :IdFamilia, :IdSubFamilia,:IdMarca,:sModelo,:dTalla,:IdProducto)');
           Connection.QryUBusca2.ParamByName('sContrato').AsString:=Global_Contrato;
           Connection.qryUBusca2.ParamByName('Codigo').AsString:=cxCodigo.Text;
           Connection.QryUBusca2.ParamByName('Material').AsString:=cxDescripcion.Text;
           Connection.QryUBusca2.ParamByName('Description').AsString:=cxDescripcion.Text;
           Connection.QryUBusca2.ParamByName('dFecha').AsDateTime:=now();
           Connection.QryUBusca2.ParamByName('IdMedida').AsInteger:=cmbMedida.EditValue;
           Connection.QryUBusca2.ParamByName('dCantidad').AsFloat:=cxCantidad.Value;
           Connection.QryUBusca2.ParamByName('IdFamilia').AsInteger:=cbFamilia.EditValue;
           Connection.QryUBusca2.ParamByName('IdSubFamilia').AsInteger:=cbSubFamilia.EditValue;
           Connection.QryUBusca2.ParamByName('IdMarca').AsInteger:=cbMarca.EditValue;
           Connection.QryUBusca2.ParamByName('sModelo').AsString:=edtModelo.Text;
           Connection.QryUBusca2.ParamByName('dTalla').asString:=edtNumero.Text;
           Connection.QryUBusca2.ParamByName('IdProducto').asInteger:=cbProducto.EditValue;
           Connection.QryUBusca2.ExecSQL;
        MessageDlg('Se ha agregado al presupuesto como material nuevo',mtInformation,[mbOk],0);



         materiales.Refresh;
         ScrollMateriales;
        frmCostoPresupuesto.zDetalle.Append;
        cxCodigo.Text := autofolio(frmCostoPresupuesto.zDetalle,'op_presupuesto_detalle');
        frmCostoPresupuesto.zDetalle.cancel;
        cxDescripcion.Text:='';
        cxCantidad.Value:=0.0;
        cerrar:=True;
    end;


    if global_frmActivo ='Kit Equipo' then
    begin
      frmCatalogosOperacion.zqDetalleCatalogos.Refresh;
    end;
    if global_frmActivo ='Costos' then
    begin
      frmCostoPresupuesto.zDetalle.Refresh;
      frmCostoPresupuesto.ScrollDetalle;
    end;

    zActualiza.destroy;
    zMoneda.Destroy;

    if cerrar then
      Close;
end;

procedure TfrmAgregarMasivoOP_THY.cxGuardiasPropertiesChange(Sender: TObject);
begin
  if global_frmActivo = 'Entrada_Almacen' then
  begin
    View_Grid_MaterialesFechaCosto.Visible:=False;
    View_Grid_MaterialesMoneda.Visible:=False;
  end
  else begin
    View_Grid_MaterialesCodigo.Visible:=True;
    View_Grid_MaterialesInsumo.Visible:=True;
    View_Grid_MaterialesMedida.Visible:=True;
    View_Grid_MaterialesFechaCosto.Visible:=True;
    View_Grid_MaterialesCosto.Visible:=True;
    View_Grid_MaterialesExistencia.Visible:=True;
    View_Grid_MaterialesMoneda.Visible:=True;
  end;
  if cxGuardias.Text = 'MANO DE OBRA' then
  begin
    View_Grid_MaterialesFechaCosto.Visible:=False;
    View_Grid_MaterialesCosto.Visible:=False;
  end
  else
  begin
    if cxGuardias.Text = 'GASTOS LOGISTICOS' then
    begin
      View_Grid_MaterialesMedida.Visible:=False;
      View_Grid_MaterialesFechaCosto.Visible:=False;
      View_Grid_MaterialesCosto.Visible:=False;
    end;
  end;
  if cxGuardias.Text = 'TODOS' then
  begin
    isOpen := False;
    materiales.Filtered := False;
    materiales.Filter:='';
    materiales.Filtered:=True;
    ScrollMateriales;
    isOpen := True;
  end
  else
  begin
    isOpen := False;
    materiales.Filtered := False;
    materiales.Filter   := 'GruposMaterial = ' + QuotedStr( cxGuardias.Text );
    materiales.Filtered := True;
    materiales.First;
    ScrollMateriales;
    isOpen := True;
  end;
end;

procedure TfrmAgregarMasivoOP_THY.cxPageCostosChange(Sender: TObject);
begin
  if cxPageCostos.ActivePage = cxTabCosto_OC then
  begin
    AsignarSQL(uCostos,'ultimos_3Costos',pUpdate);
    FiltrarDataSet(uCostos,'Insumo',[materiales.FieldByName('IdInsumo').AsInteger]);
    uCostos.Open;
  end;

  if cxPageCostos.ActivePage = cxTabcosto_PU then
  begin
    AsignarSQL(zCostoPU,'costos_presupuesto',pUpdate);
    FiltrarDataSet(zCostoPU,'Codigo',[materiales.FieldByName('Codigo').AsString]);
    zCostoPU.Open;
  end;
end;

procedure TfrmAgregarMasivoOP_THY.cxTabCosto_OCShow(Sender: TObject);
begin
  if materiales.Active then
    ScrollMateriales;
end;

procedure TfrmAgregarMasivoOP_THY.cxTabcosto_PUShow(Sender: TObject);
begin
  if materiales.Active then
    ScrollMateriales;
end;

procedure TfrmAgregarMasivoOP_THY.dtbCancelarClick(Sender: TObject);
begin
 Close;
end;



procedure TfrmAgregarMasivoOP_THY.FormShow(Sender: TObject);
begin
  id:='-1';
  cxLabelOrigen.Visible := False;
  PanelDetalle.Visible:=False;
  cxSplitterDetalle.Visible:=False;
  IsOpen:=False;
  if (global_frmActivo = 'Salida_Almacen') then
  begin
    materiales.Active := False;
//    if(assigned(frmAvisoEmbarque)) then begin
      if ((frmSalidaAlmacen_THY.salida_almacen.FieldByName('CodigoSalida').AsString = 'AJIN'))then
      BEGIN
          AsignarSQL(materiales,'catalogo_agregarmasivo',pUpdate);
          FiltrarDataSet(materiales,'Contrato,Usuario,Codigo',
          [global_contrato,Global_Usuario,-1])  ;
      END

    ELSE
    if (connection.uContrato.FieldByName('FK_Titulo').AsString='SIANI') then  BEGIN
      if not(frmSalidaAlmacen_THY.salida_almacen.FieldByName('iFolioRequisicion').IsNull)  then
      begin
       noAplica:=True;
       AsignarSQL(materiales,'OC_lista_materiales_req',pUpdate);
       FiltrarDataSet(materiales,'Contrato,FolioReq',[global_contrato,frmSalidaAlmacen_THY.salida_almacen.FieldValues['iFolioRequisicion']]);
      end
      else
      begin
         noAplica:=False;
         AsignarSQL(materiales,'lista_materiales_salida',pUpdate);
         FiltrarDataSet(materiales,'Contrato,FolioReq',[global_contrato,'-1']);
      end;
    END
    else if (frmSalidaAlmacen_THY.salida_almacen.FieldByName('CodigoSalida').AsString = 'SOLM') then begin
        AsignarSQL(materiales,'catalogo_agregarmasivo_solicitud',pUpdate);
        FiltrarDataSet(materiales,'Contrato,Usuario,Almacen,FolioSol',
        [global_contrato,Global_Usuario,frmSalidaAlmacen_THY.salida_almacen.FieldByName('IdAlmacen').AsInteger, frmSalidaAlmacen_THY.salida_almacen.FieldByName('iFolioSolicitud').AsInteger]);
    end
    else if (frmSalidaAlmacen_THY.salida_almacen.FieldByName('CodigoSalida').AsString = 'TRAS') and
            (connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7') then begin
        AsignarSQL(materiales,'catalogo_agregarmasivo_salidaembarque',pUpdate);
        FiltrarDataSet(materiales,'Contrato,Usuario,Almacen',
        [global_contrato,Global_Usuario,frmSalidaAlmacen_THY.salida_almacen.FieldByName('IdAlmacen').AsInteger]);
    end
    else if (frmSalidaAlmacen_THY.salida_almacen.FieldByName('CodigoSalida').AsString = 'SALA') and
             (connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7') then begin
        AsignarSQL(materiales,'catalogo_agregarmasivo_salida_almacen',pUpdate);
        FiltrarDataSet(materiales,'Contrato,Usuario,Almacen,Entrada',
        [global_contrato,Global_Usuario,frmSalidaAlmacen_THY.salida_almacen.FieldByName('IdAlmacen').AsInteger, frmSalidaAlmacen_THY.salida_almacen.FieldByName('iFolioEntrada').AsInteger]);
    end
    ELSE
    begin
        cxLabelOrigen.Visible := True;
        cxLabelOrigen.Caption := '('+frmSalidaAlmacen_THY.cxAlmacen.Text+')';
        AsignarSQL(materiales,'catalogo_agregarmasivo_salida',pUpdate);
        FiltrarDataSet(materiales,'Contrato,Usuario,Almacen,FolioReq',
        [global_contrato,Global_Usuario,frmSalidaAlmacen_THY.salida_almacen.FieldByName('IdAlmacen').AsInteger, frmSalidaAlmacen_THY.salida_almacen.FieldByName('iFolioRequisicion').AsInteger]);
    end;
    materiales.Open;
    if (connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7') then
      View_Grid_MaterialesCantSalida.Visible := True;
  END
  else
    if global_frmActivo = 'Entrada_Almacen' then
    begin
      cxLabelOrigen.Caption := '('+frmEntradaAlmacen_THY.cxAlmacen.Text+')';
      selectEntradas;
    end
    else
    if global_frmActivo = 'Solicitud_Materiales' then
    begin
      materiales.Active := False;
      AsignarSQL(materiales,'catalogo_agregarmasivo_solicitud_entrada',pUpdate);
      FiltrarDataSet(materiales,'Contrato,Entrada',
      [global_contrato,'-1']);//frmSolicitudDeMateriales.zAvisosEmbarque.FieldByName('iFolioEntrada').AsInteger]);
      materiales.Open;
    end
    else
    if global_frmActivo = 'Aviso_Embarque' then
    begin
//      if connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7' then begin
//        if not(frmAvisoEmbarque.zAvisosEmbarque.FieldByName('iFolioSalida').IsNull)  then
//        begin
//           materiales.Active := False;
//           AsignarSQL(materiales,'embarque_salida',pUpdate);
//           FiltrarDataSet(materiales,'Usuario,Codigo,Contrato,FolioSalida',[Global_Usuario,'-1',global_contrato,frmAvisoEmbarque.zAvisosEmbarque.FieldByName('iFolioSalida').AsInteger]);
//        end
//        else
//        begin
//         AsignarSQL(materiales,'lista_materiales_salida_avisoEmbarque',pUpdate);
//         FiltrarDataSet(materiales,'Contrato,FolioReq',[global_contrato,'-1']);
//        end;
//        materiales.Open;
//      end
//      else begin
//        materiales.Active := False;
//        AsignarSQL(materiales,'lista_materiales_salida_avisoEmbarque',pUpdate);
//        FiltrarDataSet(materiales,'Contrato,FolioReq',[global_contrato,'-1']);
//        materiales.Open;
//      end;
        if (connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7') then begin
         AsignarSQL(materiales,'catalogo_agregarmasivo_salidaembarque',pUpdate);
         FiltrarDataSet(materiales,'Contrato,Usuario,Almacen',
         [global_contrato,Global_Usuario,frmAvisoEmbarque.zAvisosEmbarque.FieldByName('IdAlmacen').AsInteger]);
         materiales.Open;
       end
       else begin
         materiales.Active := False;
         AsignarSQL(materiales,'lista_materiales_salida_avisoEmbarque',pUpdate);
         FiltrarDataSet(materiales,'Contrato,salida',[global_contrato,frmAvisoEmbarque_THY.zAvisosEmbarque.FieldByName('IdSalida').AsInteger]);
         materiales.Open;
       end;
    end
  else
    begin
      materiales.Active := False;
      AsignarSQL(materiales,'catalogo_agregarmasivo',pUpdate);
      FiltrarDataSet(materiales,'Usuario,Codigo,Contrato',[Global_Usuario,'-1',global_contrato]);
      materiales.Open;
    end;
//
//    if connection.UContrato.FieldByName('FK_Titulo').AsString = 'CMMI' then begin
//
//      Connection.QryBusca.Active := False;
//      Connection.QryBusca.SQL.Clear;
//      connection.QryBusca.SQL.Text := ('select (select IFNULL(sum(dCantidad), 0) from anexo_psolicitud where IdInsumo = i.IdInsumo)  as Reservado'+
//                                          ' from alm_insumos i where i.IdInsumo = :Insumo');
//      connection.QryBusca.Params.ParamByName('Insumo').AsString := '-1' ;
//      connection.QryBusca.Open;
//
//      View_Grid_MaterialesReservados.DataBinding.FieldName := connection.QryBusca.FieldByName('Reservado').AsString;
//    end;


  scrollMateriales;
  View_Grid_Materiales.DataController.DataSource.DataSet.First;
  zRecurso.Active:=False;
  zRecurso.SQL.Text:='select IdTiporecurso, Nombre from op_tiporecurso union Select -1 ,'+QuotedStr('TODOS')+'  as Todos';
  zRecurso.Open;

  if connection.uContrato.FieldByName('FK_Titulo').AsString='SUBSEA 7' then begin
    zRecurso.Active:=False;
    zRecurso.SQL.Text:='select IdTiporecurso, Nombre from op_tiporecurso ';
    zRecurso.Open;
  END;

  AsignarSQL(zFamilia,'familias_e',pUpdate);
  zFamilia.Open;

  AsignarSQL(zSubFamilia,'alm_subfamilia',pUpdate);
  zSubFamilia.Open;

  uMedidas.Active:=False;
  AsignarSQL(uMedidas,'master_medidas',pUpdate);
  FiltrarDataSet(uMedidas,'Id,Codigo',[-1,-1]);
  uMedidas.Open;

  zMarca.Active:=False;
  AsignarSQL(zMarca,'alm_marcas',pUpdate);
  FiltrarDataSet(zMarca,'Id,Codigo',['-1','-1']);
  zMarca.Open;

  zproducto.Active := False ;
  zproducto.SQL.Text:='select * from master_producto_servicio order by Nombre';
  zproducto.Open;
  //se oculto momentaneamente
  PanelNuevoMaterial.Visible:=False;
  //Se ocultan las columnas que son visibles en las entradas
  if (global_frmActivo = 'Entrada_Almacen') then
  begin
    View_Grid_MaterialesReservados.Visible:=False;
    View_Grid_MaterialesDisponible.Visible:=False;
    View_Grid_MaterialesItem.Visible := False;
    View_Grid_MaterialesTrazabilidad.Visible:=False;

  end;

    if (global_frmActivo = 'Salida_Almacen')then
  begin
    View_Grid_MaterialesRequisicion.Visible:=True;
    View_Grid_MaterialesCantidad.Visible:=True;
    View_Grid_MaterialesRecibido.Visible:=False;
    View_Grid_MaterialesFaltante.Visible:=False;
    View_Grid_MaterialesReservados.Visible:=False;
    View_Grid_MaterialesDisponible.Visible:=False;
    View_Grid_MaterialesItem.Visible := False;
    View_Grid_MaterialesTrazabilidad.Visible:=False;
  end;

  if (global_frmActivo = 'Aviso_Embarque')then
  begin
    View_Grid_MaterialesRequisicion.Visible:=False;
    View_Grid_MaterialesCantidad.Visible:=True;
    View_Grid_MaterialesRecibido.Visible:=False;
    View_Grid_MaterialesFaltante.Visible:=False;
    View_Grid_MaterialesReservados.Visible:=False;
    View_Grid_MaterialesDisponible.Visible:=False;
    View_Grid_MaterialesTrazabilidad.Visible:=False;
    View_Grid_MaterialesItem.Visible := False;
  end;

  if (global_frmActivo = 'Solicitud_Materiales') then
  begin
    View_Grid_MaterialesRequisicion.Visible:=True;
    View_Grid_MaterialesCantidad.Visible:=False;
    View_Grid_MaterialesReservados.Visible:=False;
    View_Grid_MaterialesDisponible.Visible:=False;
    View_Grid_MaterialesRecibido.Visible:=False;
    View_Grid_MaterialesFaltante.Visible:=False;
  end;

  if (global_frmActivo<>'Salida_Almacen')  or (global_frmActivo<>'Entrada_Almacen')then
  begin
    View_Grid_MaterialesEstado.Visible:=False;
  end;
  if (global_frmActivo<>'Costos') and (global_frmActivo<>'Costos_Edit') then
  begin
   frmBarraH11.btnAdd.Visible:=False;
   frmBarraH11.btnEdit.Visible:=False;
  end;
  if global_frmActivo = 'Costos_Edit' then
  begin
   Panel4.Visible := True;
   frmBarraH11btnEditClick(Sender);
  end;
  if global_frmActivo = 'Costos' then
   Panel4.Visible := True;

  if (global_frmActivo = 'AvisoEmbarque') then
  begin
    View_Grid_MaterialesMoneda.Visible:=False;
  end;

  cxGuardias.Text:='TODOS';
  SelectMaterial;
  isOpen:=True;
end;

procedure TfrmAgregarMasivoOP_THY.frmBarra1btnExitClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmAgregarMasivoOP_THY.frmBarraH11btnEditClick(Sender: TObject);
begin
  if global_frmActivo = 'Costos' then
  begin
    Connection.QryUBusca.Active := False;
    Connection.QryUBusca.SQL.Clear;
    Connection.QryUBusca.SQL.Text:='select * from alm_insumos where IdInsumo = :IdInsumo';
    Connection.QryUBusca.ParamByName('IdInsumo').AsInteger:=materiales.FieldByName('IdInsumo').AsInteger;
    Connection.QryUBusca.Open;
  end
  else
  begin
    Connection.QryUBusca.Active := False;
    Connection.QryUBusca.SQL.Clear;
    Connection.QryUBusca.SQL.Text:='select * from alm_insumos where Codigo = :Codigo';
    Connection.QryUBusca.ParamByName('Codigo').AsString:=frmCostoPresupuesto.zDetalle.FieldByName('Codigo').AsString;
    Connection.QryUBusca.Open;
    btnAceptar.visible:=True;
    cxCantidad.Enabled:=False;
    cxActualiza.Visible:=False;
    PanelNuevoMaterial.Visible := True;

  end;

  if Connection.QryUBusca.RecordCount > 0 then
  begin
    cxCodigo.Text:=Connection.QryUBusca.FieldByName('Codigo').AsString;
    cxDescripcion.Text:=Connection.QryUBusca.FieldByName('Material').AsString;
    edtModelo.Text:=Connection.QryUBusca.FieldByName('sModelo').AsString;
    edtNumero.Text:=Connection.QryUBusca.FieldByName('dTalla').AsString;
    cbMarca.EditValue:=Connection.QryUBusca.FieldByName('IdMarca').AsInteger;
    cmbMedida.EditValue:=Connection.QryUBusca.FieldByName('IdMedida').AsInteger;
    cbFamilia.EditValue:=Connection.QryUBusca.FieldByName('IdFamilia').AsInteger;
    cbSubFamilia.EditValue:=Connection.QryUBusca.FieldByName('IdSubFamilia').AsInteger;
    cbProducto.EditValue:=Connection.QryUBusca.FieldByName('IdProducto').AsInteger;
    btnAceptar.visible:=True;
    cxCantidad.Enabled:=False;
    cxActualiza.Visible:=False;
    PanelNuevoMaterial.Visible := True;
    Connection.QryUBusca.Edit;
  end
  else
   ShowMessage('No peternece a materiales');

end;

procedure TfrmAgregarMasivoOP_THY.ScrollMateriales;
begin
  if not assigned(frmAvisoEmbarque) then begin

    if (cxPageCostos.ActivePage = cxTabCosto_OC) and isOpen then begin
      AsignarSQL(uCostos,'ultimos_3Costos',pUpdate);
      FiltrarDataSet(uCostos,'Insumo',[materiales.FieldByName('IdInsumo').AsInteger]);
      uCostos.Open;
    end;

    if (cxPageCostos.ActivePage = cxTabcosto_PU) and isOpen then begin
      AsignarSQL(zCostoPU,'costos_presupuesto',pUpdate);
      FiltrarDataSet(zCostoPU,'Codigo',[materiales.FieldByName('Codigo').AsString]);
      zCostoPU.Open;
    end;
  end;
end;

procedure TfrmAgregarMasivoOP_THY.SelectMaterial;
begin

    if  (global_frmActivo ='Requisicion')   then
    begin
     if Assigned(FrmRequisicionMaterial) then
     cxGuardias.Text:=FrmRequisicionMaterial.anexo_requisicion.FieldByName('Recurso').AsString;
    end
    else
     if (global_frmActivo ='Costos')  then
     scrollMateriales
     else
       begin
         if global_frmActivo = 'AvisoEmbarque' then begin
          if(assigned(frmAvisoEmbarque)) then begin
            cxGuardias.Text:=materiales.FieldByName('GruposMaterial').AsString;
            materiales.Filtered := False;
            materiales.Filter   := 'GruposMaterial = ' + QuotedStr(materiales.FieldByName('GruposMaterial').AsString);
            materiales.Filtered := True;
            materiales.First;
          end;
         end;
       end;

     cxGuardias.Enabled:=False;

end;


procedure TfrmAgregarMasivoOP_THY.View_Grid_MaterialesCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if View_Grid_Materiales.DataController.Filter.FilterText = '' then
    begin
        materiales.Filtered := true;
    end
    else
        materiales.Filtered := false;

    edtCantidad.Value := materiales.FieldByName('dCantidad').AsVariant;

    if global_frmActivo='Solicitud_Materiales' then
     edtCantidad.Value := materiales.FieldByName('dExistencia').AsVariant;


    ScrollMateriales;
end;

procedure TfrmAgregarMasivoOP_THY.View_Grid_MaterialesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if ((global_frmActivo='Requisicion') or (global_frmActivo='Solicitud')  or (global_frmActivo='Entrada_Almacen') or (global_frmActivo='Salida_Almacen')) and (connection.uContrato.FieldByName('FK_Titulo').AsString='CMMI')then begin
   Application.CreateForm(TfrmExistencia, frmExistencia);
   frmExistencia.show;
  end
  else begin
     if View_Grid_Materiales.OptionsView.CellAutoHeight then
        View_Grid_Materiales.OptionsView.CellAutoHeight := False
     else
        View_Grid_Materiales.OptionsView.CellAutoHeight := True;
  end;
end;



procedure TfrmAgregarMasivoOP_THY.View_Grid_MaterialesKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_UP) or ( Key = VK_DOWN)  then
    scrollMateriales;
end;

end.
