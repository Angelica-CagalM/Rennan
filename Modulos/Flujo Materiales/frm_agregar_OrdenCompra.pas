unit frm_agregar_OrdenCompra;

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
  cxCheckGroup, cxDBCheckGroup, UnitMetodos,IdAttachmentFile, IdMessage,UnitEnviarEmail;

type
  TfrmAgregarMasivoOrdenCompra = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxActualiza: TcxButton;
    Panel3: TPanel;
    cxLabel3: TcxLabel;
    materiales: TUniQuery;
    ds_materiales: TDataSource;
    dtbCancelar: TcxButton;
    layer: TcxLabel;
    Panel5: TPanel;
    Grid_Insumos: TcxGrid;
    Grid_InsumosView: TcxGridDBTableView;
    Col_Insumo_OC: TcxGridDBColumn;
    Col_Insumo_Fecha: TcxGridDBColumn;
    Col_Insumo_Proveedor: TcxGridDBColumn;
    Col_Insumo_Planta: TcxGridDBColumn;
    Col_Insumo_codigo: TcxGridDBColumn;
    Col_Insumo_Numero: TcxGridDBColumn;
    Col_Insumo_Material: TcxGridDBColumn;
    Col_Insumo_medida: TcxGridDBColumn;
    Col_Insumo_Cantidad: TcxGridDBColumn;
    Col_Insumo_Recep: TcxGridDBColumn;
    Col_Insumo_restante: TcxGridDBColumn;
    Col_Insumo_sStatus: TcxGridDBColumn;
    Col_Insumo_Comentario: TcxGridDBColumn;
    dbgGrid_InsumosLevel1: TcxGridLevel;
    PaneListaDatos: TPanel;
    dxLayoutControl5: TdxLayoutControl;
    cxCertificados: TcxTextEdit;
    cxNFactura: TcxTextEdit;
    tdCantidad: TcxCalcEdit;
    cxColada: TcxTextEdit;
    cxResultado: TcxComboBox;
    cxParametro: TcxTextEdit;
    cxFecha: TcxDateEdit;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    btnAdd: TcxButton;
    cxCondicionar: TcxButton;
    zMensaje: TUniQuery;
    ds_mensaje: TDataSource;
    zDestino: TUniQuery;
    ds_destino: TDataSource;
    zCorreo: TUniQuery;
    zqEnviados: TUniQuery;
    cxComplemento: TcxComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cxSerie: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    procedure frmBarra1btnExitClick(Sender: TObject);

    procedure dtbCancelarClick(Sender: TObject);
    procedure cxActualizaClick(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure Grid_InsumosViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Grid_InsumosViewStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure Grid_InsumosViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxCondicionarClick(Sender: TObject);
    procedure clickVista;
    procedure EnviaCorreoAvanzado(sParamModulo,sParamProceso,sParamTipoMaterial,sParamComentario,sParamEstatus, sParamFoldiosDoctos :string);
    procedure ConcatenaTipoFolios(iParamPuntero : integer);
    procedure FormShow(Sender: TObject);


  private
    { Private declarations }
    acc: TCollection;
    Mensaje: TIdMessage;
    AdjuntoOtros: TIdAttachmentFile;
    Adjunto: TIdAttachmentFile;
    Botones: TcxButton;
    RutaArchivoAdjunto: string;
    DirPDF :String ;
  public
    { Public declarations }
    btnR     : boolean;
    sTipoMaterial, sFoliosDoctos, sUsuarioReq : string;

  end;

var
  frmAgregarMasivoOrdenCompra : TfrmAgregarMasivoOrdenCompra;
  sOldId           : string;
  sOpcion          : string;
  Parametro        : string;
  Id               : string;
  isOpen           : boolean;
  pdf              : String;
 implementation
 uses
    frm_inspeccionMateriales, frm_SalidaAlmacen, frm_requisicion_ss7,
    Frm_Comentarios,UFrmConfigCorreo;
{$R *.dfm}

procedure TfrmAgregarMasivoOrdenCompra.btnAddClick(Sender: TObject);
begin
   if not MostrarFormChild('FrmComentarios',global_dxBarManagerPrincipal) Then
   begin
    global_frmActivo:='RECHAZADO';
    btnR:=true;
    Application.CreateForm(TFrmComentarios, FrmComentarios);
    FrmComentarios.showModal;
   end;

end;

procedure TfrmAgregarMasivoOrdenCompra.cxActualizaClick(Sender: TObject);
var
  SavePlace,SavePlace2: TBookmark;
  dCantidad: Currency;
  conteo, indice, IdDetalleOC: integer;
  nombres, cadenas : TStringList;
begin
    nombres:=TStringList.Create;
    cadenas:=TStringList.Create;
    nombres.Add('Certificados');
    nombres.Add('Num. Factura');
    nombres.Add('Colada');
    nombres.Add('Resultado');
    nombres.Add('Parámetros');
    nombres.Add('Fecha Liberación');
    cadenas.Add(cxCertificados.Text);
    cadenas.Add(cxNFactura.Text);
    cadenas.Add(cxColada.Text);
    cadenas.Add(cxResultado.Text);
    cadenas.Add(cxParametro.Text);
    cadenas.Add(cxFecha.Text);
    if not validaTexto(nombres, cadenas,'','') then
    begin
        MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
        exit;
    end;

    if (tdCantidad.Value > frmInspeccionMateriales.insumos.FieldByName('CantidadPendiente').AsFloat) and (frmInspeccionMateriales.insumos.FieldByName('CantidadPendiente').AsFloat > 0) then
    begin
        messagedlg('Cantidad no permitida',mtWarning,[mbOk],0);
        tdCantidad.SetFocus;
        exit;
    end
    else
    if (tdCantidad.Value > frmInspeccionMateriales.insumos.FieldByName('dRequisicion').AsFloat) and (frmInspeccionMateriales.insumos.FieldByName('CantidadPendiente').AsFloat = 0) then
    begin
        messagedlg('Cantidad no permitida',mtWarning,[mbOk],0);
        tdCantidad.SetFocus;
        exit;
    end;

    if OpcButton = 'New' then
    begin
        //Sino existe el registro se inserta
        if not frmInspeccionMateriales.zInspeccionDetalle.Locate('IdInspeccion;IdInsumo;iItem',vararrayof([frmInspeccionMateriales.insumos.FieldByName('IdInspeccion').AsInteger,frmInspeccionMateriales.insumos.FieldByName('IdInsumo').AsInteger, frmInspeccionMateriales.insumos.FieldByName('iItem').AsInteger]) , [loCaseInsensitive]) then
        begin
          AsignarSQL(Connection.QryUBusca,'inserta_inspeccion_material_det',pUpdate);
          FiltrarDataSet(Connection.QryUBusca,'IdInspeccion,Fecha,FechaLiberacion,NumeroMaterial, dCantidad, iItem, IdInsumo, NumeroFactura,Certificados,Complemento,LoteColada,Parametros,Serie,sStatus',
          [frmInspeccionMateriales.zInspeccionMaterial.FieldByName('IdInspeccion').AsInteger,FechaSQL(cxFecha.EditValue),FechaSQL(cxFecha.EditValue),frmInspeccionMateriales.insumos.FieldByName('NumeroMaterial').AsString,
          tdCantidad.Value,frmInspeccionMateriales.insumos.FieldValues['iItem'],frmInspeccionMateriales.insumos.FieldValues['IdInsumo'],cxNFactura.EditValue,cxCertificados.EditValue,cxComplemento.EditValue,cxColada.Text,cxParametro.Text,cxSerie.Text,cxResultado.Text ]);
          Connection.QryUBusca.ExecSQL;

          //Ahora se actualiza sino existe la PO, Planta, Requisicion...
          if (frmInspeccionMateriales.zInspeccionMaterial.FieldByName('IdOrdenCompra').AsInteger = 0) then
          begin
              try
                AsignarSQL(Connection.QryUBusca2,'Update_inspeccion_material',pUpdate);
                FiltrarDataSet(Connection.QryUBusca2,'sNumeroOrden,IdOrdenCompra,IdProveedor,iFolioRequisicion,IdPlanta,IdInspeccion',
                [frmInspeccionMateriales.insumos.FieldByName('sNumeroOrden').AsString,frmInspeccionMateriales.insumos.FieldByName('IdOrdenCompra').AsInteger,frmInspeccionMateriales.insumos.FieldByName('IdProveedor').AsInteger,
                 frmInspeccionMateriales.insumos.FieldByName('iFolioRequisicion').AsInteger,frmInspeccionMateriales.insumos.FieldByName('IdPlanta').AsInteger,frmInspeccionMateriales.zInspeccionMaterial.FieldByName('IdInspeccion').AsInteger]);
                Connection.QryUBusca2.ExecSQL;
              finally
                  SavePlace2 := frmInspeccionMateriales.zInspeccionMaterial.GetBookmark;
                  frmInspeccionMateriales.insumos.Filtered := False;
                  frmInspeccionMateriales.insumos.Refresh;
                  try
                     frmInspeccionMateriales.insumos.GotoBookmark(SavePlace2);
                  except
                     frmInspeccionMateriales.insumos.FreeBookmark(SavePlace2);
                  end;
                  frmInspeccionMateriales.insumos.Filter   := 'dRequisicion <> dSumaCantidad ';
                  frmInspeccionMateriales.insumos.Filtered := True;

                  SavePlace2 := frmInspeccionMateriales.zInspeccionMaterial.GetBookmark;
                  frmInspeccionMateriales.zInspeccionMaterial.Refresh;
                  try
                     frmInspeccionMateriales.zInspeccionMaterial.GotoBookmark(SavePlace2);
                  except
                     frmInspeccionMateriales.zInspeccionMaterial.FreeBookmark(SavePlace2);
                  end;

                  SavePlace := frmInspeccionMateriales.zInspeccionMaterial.GetBookmark;
                  frmInspeccionMateriales.zInspeccionDetalle.Refresh;
                  try
                     frmInspeccionMateriales.zInspeccionDetalle.GotoBookmark(SavePlace);
                   except
                     frmInspeccionMateriales.zInspeccionDetalle.FreeBookmark(SavePlace);
                  end;

              end;
          end
          else
            begin
                //Se actualiza la OC y demas datos
                AsignarSQL(Connection.QryUBusca2,'Update_inspeccion_material',pUpdate);
                FiltrarDataSet(Connection.QryUBusca2,'sNumeroOrden,IdOrdenCompra,IdProveedor,iFolioRequisicion,IdPlanta,IdInspeccion',
                [frmInspeccionMateriales.insumos.FieldByName('sNumeroOrden').AsString,frmInspeccionMateriales.insumos.FieldByName('IdOrdenCompra').AsInteger,frmInspeccionMateriales.insumos.FieldByName('IdProveedor').AsInteger,
                 frmInspeccionMateriales.insumos.FieldByName('iFolioRequisicion').AsInteger,frmInspeccionMateriales.insumos.FieldByName('IdPlanta').AsInteger,frmInspeccionMateriales.zInspeccionMaterial.FieldByName('IdInspeccion').AsInteger]);
                Connection.QryUBusca2.ExecSQL;

                SavePlace2 := frmInspeccionMateriales.zInspeccionMaterial.GetBookmark;
                frmInspeccionMateriales.zInspeccionMaterial.Refresh;
                try
                   frmInspeccionMateriales.zInspeccionMaterial.GotoBookmark(SavePlace2);
                except
                   frmInspeccionMateriales.zInspeccionMaterial.FreeBookmark(SavePlace2);
                end;

            end;
        end
        else
        begin
           if MessageDlg('El material ' + frmInspeccionMateriales.insumos.FieldValues['Codigo'] + ' ya fue incluido en el Reporte de inspección'+#13+'Desea Agregarlo a un Nuevo RIM ?' ,  mtConfirmation, [mbYes, mbNo], 0) = mrNo then
              exit
           else
           begin
              AsignarSQL(Connection.QryUBusca,'inserta_inspeccion_material',pUpdate);
              FiltrarDataSet(Connection.QryUBusca,'sContrato,Codigo,sIdUsuario,IdFirma',
              [global_contrato,autoFolio(frmInspeccionMateriales.zInspeccionMaterial, 'alm_inspeccion_material'),global_usuario,frmInspeccionMateriales.zFirma.FieldByName('IdFirma').AsInteger]);
              Connection.QryUBusca.ExecSQL;

              frmInspeccionMateriales.zInspeccionMaterial.Refresh;
              frmInspeccionMateriales.zInspeccionMaterial.First;
              indice := frmInspeccionMateriales.cxView_Requsicion.DataController.GetSelectedRowIndex(0);
              frmInspeccionMateriales.cxView_Requsicion.DataController.FocusedRowIndex := indice;
              frmInspeccionMateriales.llenarCampos;

              //Se inserta el material seleccionado
              AsignarSQL(Connection.QryUBusca,'inserta_inspeccion_material_det',pUpdate);
              FiltrarDataSet(Connection.QryUBusca,'IdInspeccion,Fecha,FechaLiberacion,NumeroMaterial, dCantidad, IdInsumo, NumeroFactura,Certificados,Complemento,LoteColada,Parametros,Serie,sStatus',
              [frmInspeccionMateriales.zInspeccionMaterial.FieldByName('IdInspeccion').AsInteger,FechaSQL(cxFecha.EditValue),FechaSQL(cxFecha.EditValue),frmInspeccionMateriales.insumos.FieldByName('NumeroMaterial').AsString,
              tdCantidad.Value,frmInspeccionMateriales.insumos.FieldValues['IdInsumo'],cxNFactura.EditValue,cxCertificados.EditValue,cxComplemento.EditValue,cxColada.Text,cxParametro.Text, cxSerie.Text,cxResultado.Text]);
              Connection.QryUBusca.ExecSQL;

              //Se actualiza la OC y demas datos
              AsignarSQL(Connection.QryUBusca2,'Update_inspeccion_material',pUpdate);
              FiltrarDataSet(Connection.QryUBusca2,'sNumeroOrden,IdOrdenCompra,IdProveedor,iFolioRequisicion,IdPlanta,IdInspeccion',
              [frmInspeccionMateriales.insumos.FieldByName('sNumeroOrden').AsString,frmInspeccionMateriales.insumos.FieldByName('IdOrdenCompra').AsInteger,frmInspeccionMateriales.insumos.FieldByName('IdProveedor').AsInteger,
               frmInspeccionMateriales.insumos.FieldByName('iFolioRequisicion').AsInteger,frmInspeccionMateriales.insumos.FieldByName('IdPlanta').AsInteger,frmInspeccionMateriales.zInspeccionMaterial.FieldByName('IdInspeccion').AsInteger]);
              Connection.QryUBusca2.ExecSQL;

              SavePlace2 := frmInspeccionMateriales.zInspeccionMaterial.GetBookmark;
              frmInspeccionMateriales.zInspeccionMaterial.Refresh;
              try
                 frmInspeccionMateriales.zInspeccionMaterial.GotoBookmark(SavePlace2);
              except
                 frmInspeccionMateriales.zInspeccionMaterial.FreeBookmark(SavePlace2);
              end;

           end;
        end;
    end;

    IdDetalleOC := frmInspeccionMateriales.insumos.FieldByName('IdOrdenCompraDetalle').AsInteger;

    SavePlace2 := frmInspeccionMateriales.insumos.GetBookmark;
    frmInspeccionMateriales.insumos.Filtered := False;
    frmInspeccionMateriales.insumos.Refresh;

    try
       frmInspeccionMateriales.insumos.GotoBookmark(SavePlace2);
    except
       frmInspeccionMateriales.insumos.FreeBookmark(SavePlace2);
    end;

    frmInspeccionMateriales.insumos.Locate('IdOrdenCompraDetalle',IdDetalleOC,[]);
    if frmInspeccionMateriales.insumos.FieldByName('dRequisicion').AsFloat = frmInspeccionMateriales.insumos.FieldByName('dSumaCantidad').AsFloat then
    begin
        AsignarSQL(Connection.QryUBusca2,'Update_rechazar_ppedido',pUpDate);
        FiltrarDataSet(Connection.QryUBusca2,'Estatus,ComentarioStatus,Insumo,IdOrdenCompraDetalle',['Entregado','',frmInspeccionMateriales.insumos.FieldByName('IdInsumo').AsInteger, frmInspeccionMateriales.insumos.FieldByName('IdOrdenCompraDetalle').AsInteger ]);
        Connection.QryUBusca2.ExecSQL;
    end;

    frmInspeccionMateriales.insumos.Filter   := 'dRequisicion <> dSumaCantidad ';
    frmInspeccionMateriales.insumos.Filtered := True;

    try
      try
         IsOpen:=False;
         SavePlace := frmInspeccionMateriales.zInspeccionMaterial.GetBookmark;
         frmInspeccionMateriales.zInspeccionDetalle.Refresh;
         try
           frmInspeccionMateriales.zInspeccionDetalle.GotoBookmark(SavePlace);
         except
           frmInspeccionMateriales.zInspeccionDetalle.FreeBookmark(SavePlace);
         end;

         clickVista;

      finally
          IsOpen:=True;
      end;
   except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Ordenes de Compra', 'Al actualizar registro', 0);
    end;
   end;

  PermisosBotones(frmInspeccionMateriales,btnPermisos);
end;

procedure TfrmAgregarMasivoOrdenCompra.cxCondicionarClick(Sender: TObject);
begin
   if not MostrarFormChild('FrmComentarios',global_dxBarManagerPrincipal) Then
   begin
    global_frmActivo:='CONDICIONADO';
    btnR:=true;
    Application.CreateForm(TFrmComentarios, FrmComentarios);
    FrmComentarios.showModal;
   end;
end;

procedure TfrmAgregarMasivoOrdenCompra.dtbCancelarClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmAgregarMasivoOrdenCompra.frmBarra1btnExitClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmAgregarMasivoOrdenCompra.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmAgregarMasivoOrdenCompra.EnterControl(Sender: TObject);
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

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmAgregarMasivoOrdenCompra.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmAgregarMasivoOrdenCompra.Grid_InsumosViewCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   clickVista;
end;

procedure TfrmAgregarMasivoOrdenCompra.Grid_InsumosViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if Grid_InsumosView.OptionsView.CellAutoHeight then
       Grid_InsumosView.OptionsView.CellAutoHeight := False
    else
       Grid_InsumosView.OptionsView.CellAutoHeight := True;
end;

procedure TfrmAgregarMasivoOrdenCompra.Grid_InsumosViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
     if (ARecord.Values[Col_Insumo_sStatus.Index] = 'Pendiente') then
    begin
      AStyle := TcxStyle.Create(nil);
      AStyle.Color:=connection.cxStyCondicionado.Color;
    end
    else
    if (ARecord.Values[Col_Insumo_sStatus.Index] = 'Rechazado') then
    begin
        AStyle := TcxStyle.Create(nil);
        AStyle.Color:=connection.cxStyleRechazaMat.Color;
    end;
end;

procedure  TfrmAgregarMasivoOrdenCompra.clickVista;
begin
    tdCantidad.Value := frmInspeccionMateriales.insumos.FieldByName('dRequisicion').AsFloat;
    if frmInspeccionMateriales.insumos.FieldByName('CantidadPendiente').AsFloat > 0 then
    begin
        cxCertificados.Text := frmInspeccionMateriales.insumos.FieldByName('Certificados').AsString;
        cxNfactura.Text     := frmInspeccionMateriales.insumos.FieldByName('NumeroFactura').AsString;
        cxColada.Text       := frmInspeccionMateriales.insumos.FieldByName('LoteColada').AsString;
        tdCantidad.Value    := frmInspeccionMateriales.insumos.FieldByName('CantidadPendiente').AsFloat;
    end;
    cxResultado.ItemIndex := 1 ;
end;

procedure TfrmAgregarMasivoOrdenCompra.EnviaCorreoAvanzado(sParamModulo: string; sParamProceso: string; sParamTipoMaterial: string; sParamComentario : string; sParamEstatus: string; sParamFoldiosDoctos : string);
var
   x: integer;
   cadena, asunto, mnj, sAdjunto, msg :string;
begin
    zMensaje.Active:=False;
    AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
    FiltrarDataSet(zMensaje,'Clasificacion',[sParamModulo]);
    zMensaje.Open;

    zDestino.Active:=False;
    AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
    FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
    zDestino.Open;

    zDestino.Filtered := False;
    zDestino.Filter   := ' Page ='+QuotedStr(sParamProceso);
    zDestino.Filtered := True;

    x:= 0;
    zDestino.First;
    while not zDestino.Eof do
    begin
        if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then
        begin
          if x=0 then
              cadena:='"'+zDestino.FieldByName('Mail').AsString+'"'
          else
            cadena:='"'+zDestino.FieldByName('Mail').AsString+'"'+','+ cadena;
          Inc(x);
        end
        ELSE
          cadena:=zDestino.FieldByName('Mail').AsString+';'+ cadena;
        zDestino.Next;
    end;

    if sParamProceso = 'RECHAZAR_MATERIALES'  then
    begin
        asunto := zMensaje.FieldByName('AsuntoRechazarMateriales').AsString+' '+sFoliosDoctos+' - ( '+sParamTipoMaterial+' ) ' +sParamEstatus;
        mnj := zMensaje.FieldByName('MensajeRechazarMateriales').AsString +' '+sParamTipoMaterial+' ha sido '+sParamEstatus+
        ' Motivo Rechazo: '+ sParamComentario;
    end;

    if sParamProceso = 'CONDICIONAR_MATERIALES'  then
    begin
        asunto := zMensaje.FieldByName('AsuntoCondicionarMateriales').AsString+' '+sFoliosDoctos+' - ( '+sParamTipoMaterial+' ) ' +sParamEstatus;
        mnj := zMensaje.FieldByName('MensajeCondicionarMateriales').AsString +' '+sParamTipoMaterial+' ha sido '+sParamEstatus+
        ' Motivo Condición: '+ sParamComentario;
    end;

    if (zMensaje.FieldByName('EnviarAlRechazarMateriales').AsString = 'Si') and (sParamProceso = 'RECHAZAR_MATERIALES') then
    begin
        messageDlg('Espere, porfavor', mtInformation, [mbOk],0);

        // para envio de correo
        Mensaje := TIdMessage.Create(nil);
        Mensaje.AttachmentEncoding := 'UUE'  ;
        Mensaje.Clear;

        if connection.ExportaPDF.FileName <> '' then
        begin
          RutaArchivoAdjunto := connection.ExportaPDF.FileName;
          pdf := connection.ExportaPDF.FileName;
        end;

        if RutaArchivoAdjunto <>'' then
        begin
           if FileExists(RutaArchivoAdjunto) then
              Adjunto := TIdAttachmentFile.Create(Mensaje.MessageParts, RutaArchivoAdjunto);
        end
        else
          Adjunto := nil;

        if Length(Trim(RutaArchivoAdjunto)) = 0 then
           sAdjunto := ''
        else
          sAdjunto := RutaArchivoAdjunto;

        sAdjunto := RutaArchivoAdjunto;

        if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then
        begin
           msg := Enviar_Email(zCorreo.FieldByName('Correo').AsString,
                 zCorreo.FieldByName('Contrasena').AsString,
                 zCorreo.FieldByName('SMTP').AsString,
                 sAdjunto,
                 asunto,
                 cadena,
                 mnj,
                 zCorreo.FieldByName('Puerto').AsInteger,
                 zCorreo.FieldByName('AplicaTLS').AsString);
        end;

        messageDlg('Estado de envío: '+msg, mtInformation, [mbOk],0);

        EliminarArchivo(DirPDF);

        FrmInspeccionMateriales.insumos.Refresh;
        try
          Grid_InsumosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
        except
        else
           Grid_InsumosView.DataController.DataSet.FreeBookmark(SavePlace);
        end;
    end;

    if (zMensaje.FieldByName('EnviarAlCondicionarMateriales').AsString = 'Si') and (sParamProceso = 'CONDICIONAR_MATERIALES') then
    begin
        messageDlg('Espere, porfavor', mtInformation, [mbOk],0);

        // para envio de correo
        Mensaje := TIdMessage.Create(nil);
        Mensaje.AttachmentEncoding := 'UUE'  ;
        Mensaje.Clear;

        if connection.ExportaPDF.FileName <> '' then
        begin
          RutaArchivoAdjunto := connection.ExportaPDF.FileName;
          pdf := connection.ExportaPDF.FileName;
        end;

        if RutaArchivoAdjunto <>'' then
        begin
           if FileExists(RutaArchivoAdjunto) then
              Adjunto := TIdAttachmentFile.Create(Mensaje.MessageParts, RutaArchivoAdjunto);
        end
        else
          Adjunto := nil;

        if Length(Trim(RutaArchivoAdjunto)) = 0 then
           sAdjunto := ''
        else
          sAdjunto := RutaArchivoAdjunto;

        sAdjunto := RutaArchivoAdjunto;

        if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then
        begin
           msg := Enviar_Email(zCorreo.FieldByName('Correo').AsString,
                 zCorreo.FieldByName('Contrasena').AsString,
                 zCorreo.FieldByName('SMTP').AsString,
                 sAdjunto,
                 asunto,
                 cadena,
                 mnj,
                 zCorreo.FieldByName('Puerto').AsInteger,
                 zCorreo.FieldByName('AplicaTLS').AsString);
        end;

        messageDlg('Estado de envío: '+msg, mtInformation, [mbOk],0);

        EliminarArchivo(DirPDF);

        FrmInspeccionMateriales.insumos.Refresh;
        try
          Grid_InsumosView.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
        except
        else
           Grid_InsumosView.DataController.DataSet.FreeBookmark(SavePlace);
        end;
    end;

end;


procedure TfrmAgregarMasivoOrdenCompra.FormShow(Sender: TObject);
begin
// envio correo
    try
    Cursor := Screen.Cursor;
    try
      if zCorreo.Active then
        zCorreo.Refresh
      else
      begin
        zCorreo.ParamByName('Contrato').AsString  := global_contrato;
        zCorreo.ParamByName('Usuario').AsString  := global_usuario;
        zCorreo.ParamByName('Empresa').AsString  := connection.ucontrato.FieldByName('IdEmpresa').AsString;
        zCorreo.Open;
      end;

      if zqEnviados.Active then
        zqEnviados.Refresh
      else
      begin
      //  zqEnviados.ParamByName('Usuario').AsString  := global_usuario;
      //  zqEnviados.ParamByName('Empresa').AsString := global_contrato;
        zqEnviados.Open;
      end;

      if ((zCorreo.RecordCount = 0) and (zCorreo.FieldByName('NotificarAutorizar').AsString='Si'))then
      begin
        if messageDLG('No hay configuración de correo definida para tu empresa. ¿Deseas configurar tu cuenta ahora?', mtInformation, [MbYes, MbNo], 0) = mrYes then
        begin
          Application.CreateForm(TFrmConfigCorreo, FrmConfigCorreo);
          FrmConfigCorreo.ShowModal;
          FormShow(Sender);
       end
       else
          raise Exception.Create('***');
      end;

    finally
      Screen.Cursor := crDefault;
    end;

  except
    on e: exception do
    begin
      if e.Message <> '***' then
        //MsgBox.ShowModal('Error.',pMensajeError + e.Message, cmtError, [cmbOK]);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TfrmAgregarMasivoOrdenCompra.ConcatenaTipoFolios(iParamPuntero : integer);
begin
    sTipoMaterial := '';
    sFoliosDoctos := '';
   // sUsuarioReq:='';
    //Concatenar los tipos de material
    if Grid_InsumosView.DataController.DataSet.FieldByName('TipoMaterial').AsString='Material' then
       sTipoMaterial:= sTipoMaterial + Grid_InsumosView.DataController.DataSet.FieldByName('TipoMaterial').AsString + ' Permanente ' +
       Grid_InsumosView.DataController.DataSet.FieldByName('NumeroMaterial').AsString
    else
       sTipoMaterial:= sTipoMaterial + Grid_InsumosView.DataController.DataSet.FieldByName('TipoMaterial').AsString+' '+
       Grid_InsumosView.DataController.DataSet.FieldByName('NumeroMaterial').AsString;

    if iParamPuntero < (Grid_InsumosView.DataController.GetSelectedCount - 1) then
       sTipoMaterial := sTipoMaterial +',';

    //Concatenar los Folios o Codigos de documentos
    sFoliosDoctos:= sFoliosDoctos + FrmInspeccionMateriales.cxView_Requsicion.DataController.DataSet.FieldByName('Codigo').AsString+ ' '+
     FrmInspeccionMateriales.cxView_Requsicion.DataController.DataSet.FieldByName('sStatus').AsString;
    //sUsuarioReq:=sUsuarioReq + Grid_InsumosView.DataController.DataSet.FieldByName('UsuarioReq').AsString;
    if iParamPuntero < (Grid_InsumosView.DataController.GetSelectedCount - 1) then
       sFoliosDoctos := sFoliosDoctos +',';
end;

end.
