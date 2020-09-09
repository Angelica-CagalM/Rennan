unit Frm_Comentarios;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer,
  dxLayoutControl, dxBarBuiltInMenu, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.ComCtrls, dxCore,
  cxDateUtils, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxPC, Data.DB, MemDS, DBAccess, Uni, cxLabel, cxMemo;

type
  TFrmComentarios = class(TForm)
    cxPageModal: TcxPageControl;
    cxTabComentarios: TcxTabSheet;
    Panel1: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxAceptar: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    bynCancelar: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    zRecurso: TUniQuery;
    dsRecurso: TDataSource;
    zDatos: TUniQuery;
    zSub: TUniQuery;
    Panel2: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtCampo: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cbFechaInicio: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxMemo1: TcxMemo;
    dxLayoutItem3: TdxLayoutItem;
    procedure bynCancelarClick(Sender: TObject);
    procedure cxAceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sParamTabla:String;
  end;

var
  FrmComentarios: TFrmComentarios;
  temE:TUniQuery;

implementation
 uses frm_connection,Frm_CostoPresupuesto,global,UnitGenerales,frm_valida,
  frm_SalidaAlmacen, frm_abrereporte,frm_agregar_OrdenCompra,
  frm_InspeccionMateriales,Frm_Requisicion_ss7, frm_valida_ss7, frm_Valida_CMMI,
  frm_RevisionesRequisicion, frm_VerDetalle_MR, frm_SolicitudDeMateriales;
{$R *.dfm}

procedure TFrmComentarios.bynCancelarClick(Sender: TObject);
begin
 close;
end;

procedure TFrmComentarios.cxAceptarClick(Sender: TObject);
var
  zValida1,zUpt:TUniQuery;
  Id:Integer;
  indice, iGrid    : integer;
begin
   try
      temE := TUniquery.create(nil);
      temE.Connection := Connection.uConnection;

      zValida1 := tUniquery.create(nil);
      zValida1.Connection := Connection.uConnection;

      temE.Active:=False;
      temE.SQL.Text:='Select FK_Titulo from master_empresa';
      temE.Open;

      {
      if global_frmActivo='Transito' then
      begin
        if edtCampo.Text<>'' then
          frmSeguimientoReq.validarEstatus('EN TRANSITO',cbFechaInicio.Date,edtCampo.Text)
        else
          ShowMessage('Favor de llenar todos los datos!');
      end;

      if global_frmActivo='Recibido' then
      begin
        if edtCampo.Text<>'' then
          frmSeguimientoReq.validarEstatus('RECIBIDO',cbFechaInicio.Date,edtCampo.Text)
        else
          ShowMessage('Favor de llenar todos los datos!');
      end;  }
      if global_frmActivo='CComentario' then
      begin
        if assigned(frmRequisicionss7) then begin
          zValida1.Active:= False;
          AsignarSQL(zValida1,'Update_actualizar_comentario',pUpDate);
          FiltrarDataSet(zValida1,'Contrato,Folio,ComentarioStatus',[global_contrato,frmRequisicionss7.anexo_requisicion.FieldByName('iFolioRequisicion').AsInteger,cxMemo1.Text]);
          zValida1.ExecSQL;

          frmRequisicionss7.anexo_requisicion.Refresh;
        end;
      end;

      if global_frmActivo='RECHAZADO' then
      begin
        if cxMemo1.Text<>'' then
        begin
           if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
           begin
              if assigned(frmValida_ss7) then
              begin
                 if frmValida_ss7.btnR then
                 begin
                    zValida1.Active:= False;
                    AsignarSQL(zValida1,'Update_rechazar_requisicion',pUpDate);
                    FiltrarDataSet(zValida1,'Contrato,Estatus,Folio,Usuario,ComentarioStatus,Fecha',[global_contrato,'PENDIENTE',frmValida_ss7.zqDatos.FieldByName('iFolio').AsInteger,global_usuario,cxMemo1.Text,FechaTimeSQL(Now())]);
                    zValida1.ExecSQL;

                    frmValida_ss7.zqDatos.Refresh;

                    //Procedimiento para concatenar Tipo de Material y Folios documentos
                    frmValida_ss7.ConcatenaTipoFolios(0);

                    if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
                    begin
                        if frmValida_ss7.cxLista.Items.Item[frmValida_ss7.cxLista.ItemIndex].StateIndex = 1 then
                           frmValida_ss7.EnviaCorreoAvanzado('REQUISICION', 'RECHAZAR', frmValida_ss7.sTipoMaterial, frmValida_ss7.grid_DatosView.DataController.DataSet.FieldByName('ComentarioStatus').AsString, 'RECHAZADA',frmValida_ss7.sFoliosDoctos);
                    end;

                    kardex_almacen('Rechaza '+frmValida_ss7.cxLista.Items[frmValida_ss7.cxLista.ItemIndex].Caption+' No. [' + frmValida_ss7.grid_DatosView.DataController.DataSet.FieldByName('Folio').AsString + '].', 'Otros Movimientos');
                 end
               end
               else
               begin
                if assigned(frmAgregarMasivoOrdenCompra) then
                  begin
                    if frmAgregarMasivoOrdenCompra.btnR then
                    begin
                      zValida1.Active:= False;
                      AsignarSQL(zValida1,'Update_rechazar_ppedido',pUpDate);
                      FiltrarDataSet(zValida1,'Estatus,ComentarioStatus,Insumo,IdOrdenCompraDetalle',['Rechazado',cxMemo1.Text,frmInspeccionMateriales.insumos.FieldByName('IdInsumo').AsInteger, frmInspeccionMateriales.insumos.FieldByName('IdOrdenCompraDetalle').AsInteger ]);
                      zValida1.ExecSQL;

                      frmInspeccionMateriales.insumos.Refresh;

                      //Implementar enviar correo para rechazar material de RIM
                      frmAgregarMasivoOrdenCompra.ConcatenaTipoFolios(0);
                      frmAgregarMasivoOrdenCompra.EnviaCorreoAvanzado('RIM', 'RECHAZAR_MATERIALES', frmAgregarMasivoOrdenCompra.sTipoMaterial, frmAgregarMasivoOrdenCompra.Grid_InsumosView.DataController.DataSet.FieldByName('ComentarioStatus').AsString, 'RECHAZADO',frmAgregarMasivoOrdenCompra.sFoliosDoctos);
                      lContinua := False;

                    end
                  end
               end;
           end
           else
           begin
               if frmValida_cmmi.cxLista.Items.Item[frmValida_cmmi.cxLista.ItemIndex].StateIndex = 1 then
               begin
                   zValida1.Active:= False;
                   AsignarSQL(zValida1,'Update_rechazar_requisicion',pUpDate);
                   FiltrarDataSet(zValida1,'Contrato,Estatus,Folio,Usuario,ComentarioStatus,Fecha',[global_contrato,'RECHAZADO',frmValida_cmmi.zqDatos.FieldByName('iFolio').AsInteger,global_usuario,cxMemo1.Text,FechaTimeSQL(Now())]);
                   zValida1.ExecSQL;
                   frmValida_cmmi.zqDatos.Refresh;

                   //Procedimiento para concatenar Tipo de Material y Folios documentos
                   frmValida_cmmi.ConcatenaTipoFolios(0);

                    if frmValida_cmmi.cxLista.Items.Item[frmValida_cmmi.cxLista.ItemIndex].StateIndex = 1 then
                       frmValida_cmmi.EnviaCorreo('REQUISICION', '', '', '',frmValida_cmmi.sFoliosDoctos);

               end;

               if frmValida_cmmi.cxLista.Items.Item[frmValida_cmmi.cxLista.ItemIndex].StateIndex = 5 then
               begin
                 if not frmValida_cmmi.zqDatos.FieldByName('iFolioSolicitud').IsNull then
                 begin
                   zValida1.Active:= False;
                   AsignarSQL(zValida1,'Update_rechazar_solicitud',pUpDate);
                   FiltrarDataSet(zValida1,'Contrato,Estatus,Folio,Usuario,ComentarioStatus,Fecha',
                                            [global_contrato,'PENDIENTE',frmValida_cmmi.zqDatos.FieldByName('iFolioSolicitud').AsInteger,global_usuario,cxMemo1.Text,FechaTimeSQL(Now())]);
                   zValida1.ExecSQL;

                   zValida1.Active:= False;
                   AsignarSQL(zValida1,'delete_solicitud_salida_det',pUpDate);
                   FiltrarDataSet(zValida1,'Folio',
                                            [frmValida_cmmi.zqDatos.FieldByName('iFolio').AsInteger]);
                   zValida1.ExecSQL;

                   zValida1.Active:= False;
                   AsignarSQL(zValida1,'delete_solicitud_salida',pUpDate);
                   FiltrarDataSet(zValida1,'Folio',
                                            [frmValida_cmmi.zqDatos.FieldByName('iFolio').AsInteger]);
                   zValida1.ExecSQL;
                   //Procedimiento para concatenar Tipo de Material y Folios documentos
                   frmValida_cmmi.ConcatenaTipoFolios(0);

                   frmValida_cmmi.EnviaCorreo('SOLICITUDES', 'RECHAZAR', '', '', frmValida_cmmi.zqDatos.FieldByName('Solicitud').AsString );
                   frmValida_cmmi.zqDatos.Refresh;

                 end;



               end;
           end
        end
        else
          ShowMessage('Favor de llenar todos los datos!');
      end;

      if global_frmActivo='CONDICIONADO' then
      begin
        if cxMemo1.Text<>'' then
        begin
           if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
           begin
              if assigned(frmAgregarMasivoOrdenCompra) then
                begin
                  if frmAgregarMasivoOrdenCompra.btnR then
                  begin
                    zValida1.Active:= False;
                    AsignarSQL(zValida1,'Update_rechazar_ppedido',pUpDate);
                    FiltrarDataSet(zValida1,'Estatus,ComentarioStatus,Insumo,IdOrdenCompraDetalle',['Pendiente',cxMemo1.Text,frmInspeccionMateriales.insumos.FieldByName('IdInsumo').AsInteger, frmInspeccionMateriales.insumos.FieldByName('IdOrdenCompraDetalle').AsInteger ]);
                    zValida1.ExecSQL;

                    frmInspeccionMateriales.insumos.Refresh;

                    //Implementar enviar correo para rechazar material de RIM
                    frmAgregarMasivoOrdenCompra.ConcatenaTipoFolios(0);
                    frmAgregarMasivoOrdenCompra.EnviaCorreoAvanzado('RIM', 'CONDICIONAR_MATERIALES', frmAgregarMasivoOrdenCompra.sTipoMaterial, frmAgregarMasivoOrdenCompra.Grid_InsumosView.DataController.DataSet.FieldByName('ComentarioStatus').AsString, 'CONDICIONADO',frmAgregarMasivoOrdenCompra.sFoliosDoctos);
                    lContinua := False;

                  end;
                end;
           end;
        end
        else
          ShowMessage('Favor de llenar todos los datos!');
      end;

      if global_frmActivo = 'SERVICIO_REQ' then
      if  FrmRequisicionss7.anexo_requisicion.FieldByName('Recurso').AsString = 'Servicio'  then
      begin
        if cxMemo1.Text<>'' then
        begin
           if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
           begin
              if assigned(FrmRequisicionss7) then
                begin

//                    zValida1.Active:= False;
//                    AsignarSQL(zValida1,'update_actualiza_notificacion',pUpDate);
//                    FiltrarDataSet(zValida1,'Contrato,Folio,MensajeNotificacion',[global_contrato,FrmRequisicionss7.anexo_requisicion.FieldByName('iFolioRequisicion').AsInteger,cxMemo1.Text]);
//                    zValida1.ExecSQL;
//
//                    FrmRequisicionss7.anexo_requisicion.Refresh;

                   FrmRequisicionss7.EnviaCorreoAvanzado('REQUISICION', 'SERVICIO', '',cxMemo1.Text, '','');
                end;
           end;
        end
        else
          ShowMessage('Favor de llenar todos los datos!');
      end;

      if global_frmActivo = 'Materiales_MR'  then
      begin
        if cxMemo1.Text<>'' then
        begin
           if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
           begin
              if assigned(frmVerDetalleMR) then
                begin
                   frmValida_ss7.EnviaCorreoAvanzado('REQUISICION', 'RECHAZAR', '',cxMemo1.Text, '','');
                end;
           end;
        end
        else
          ShowMessage('Favor de llenar todos los datos!');
      end;


      if global_frmActivo='CANCELADO' then
      begin
        if cxMemo1.Text<>'' then
        begin
          if sParamTabla='anexo_requisicion' then
          begin
             zValida1.Active:= False;
             AsignarSQL(zValida1,'Update_cancelar_requisicion',pUpDate);
             if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
              FiltrarDataSet(zValida1,'Contrato,Estatus,Folio,Usuario,ComentarioStatus,Fecha',[global_contrato,'CANCELADO',frmValida_ss7.zqDatos.FieldByName('iFolio').AsInteger,global_usuario,cxMemo1.Text,FechaTimeSQL(Now())])
             ELSE
             if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
              FiltrarDataSet(zValida1,'Contrato,Estatus,Folio,Usuario,ComentarioStatus,Fecha',[global_contrato,'CANCELADO',frmValida_CMMI.zqDatos.FieldByName('iFolio').AsInteger,global_usuario,cxMemo1.Text,FechaTimeSQL(Now())])
             else
              FiltrarDataSet(zValida1,'Contrato,Estatus,Folio,Usuario,ComentarioStatus,Fecha',[global_contrato,'CANCELADO',frmValida.zqDatos.FieldByName('iFolio').AsInteger,global_usuario,cxMemo1.Text,FechaTimeSQL(Now())]);
             zValida1.ExecSQL;

             if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
                frmValida_ss7.zqDatos.Refresh
             else
             if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
                frmValida_CMMI.zqDatos.Refresh
             else
                frmValida.zqDatos.Refresh ;
          end
          else
           if sParamTabla='anexo_pedidos' then
          begin
             zValida1.Active:= False;
             AsignarSQL(zValida1,'Update_cancelar_orden_compra',pUpDate);
             if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
                FiltrarDataSet(zValida1,'Contrato,Estatus,Folio,Usuario,ComentarioStatus,Fecha',[global_contrato,'CANCELADO',frmValida_SS7.zqDatos.FieldByName('iFolio').AsInteger,global_usuario,cxMemo1.Text,FechaTimeSQL(Now())])
             else
             if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
                FiltrarDataSet(zValida1,'Contrato,Estatus,Folio,Usuario,ComentarioStatus,Fecha',[global_contrato,'CANCELADO',frmValida_CMMI.zqDatos.FieldByName('iFolio').AsInteger,global_usuario,cxMemo1.Text,FechaTimeSQL(Now())])
             else
             FiltrarDataSet(zValida1,'Contrato,Estatus,Folio,Usuario,ComentarioStatus,Fecha',[global_contrato,'CANCELADO',frmValida.zqDatos.FieldByName('iFolio').AsInteger,global_usuario,cxMemo1.Text,FechaTimeSQL(Now())]);
             zValida1.ExecSQL;

             if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
                frmValida_ss7.zqDatos.Refresh
             else
             if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
                frmValida_CMMI.zqDatos.Refresh
             else
                frmValida.zqDatos.Refresh ;

          end
          else
           if sParamTabla='anexo_solicitud_aprobpago' then
          begin
             zValida1.Active:= False;
             AsignarSQL(zValida1,'Update_cancelar_aprobacion_pag',pUpDate);
             if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
                FiltrarDataSet(zValida1,'Contrato,Estatus,Folio,Usuario,ComentarioStatus,Fecha',[global_contrato,'CANCELADO',frmValida_SS7.zqDatos.FieldByName('iFolio').AsInteger,global_usuario,cxMemo1.Text,FechaTimeSQL(Now())])
             else if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
                FiltrarDataSet(zValida1,'Contrato,Estatus,Folio,Usuario,ComentarioStatus,Fecha',[global_contrato,'CANCELADO',frmValida_CMMI.zqDatos.FieldByName('iFolio').AsInteger,global_usuario,cxMemo1.Text,FechaTimeSQL(Now())])
             else
                FiltrarDataSet(zValida1,'Contrato,Estatus,Folio,Usuario,ComentarioStatus,Fecha',[global_contrato,'CANCELADO',frmValida.zqDatos.FieldByName('iFolio').AsInteger,global_usuario,cxMemo1.Text,FechaTimeSQL(Now())]);
             zValida1.ExecSQL;

             if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
              frmValida_SS7.zqDatos.Refresh
             else if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
              frmValida_CMMI.zqDatos.Refresh
             else
              frmValida.zqDatos.Refresh
          end;

           //Procedimiento para concatenar Tipo de Material y Folios documentos
           if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
            frmValida_ss7.ConcatenaTipoFolios(0)
           ELSE
           if temE.FieldByName('FK_Titulo').AsString = 'CMMI' theN
            frmValida_CMMI.ConcatenaTipoFolios(0)
           ELSE
           frmValida.ConcatenaTipoFolios(0);

           lContinua := True;
           if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
           begin
              if frmValida_ss7.cxLista.Items.Item[frmValida_ss7.cxLista.ItemIndex].StateIndex = 1 then
                 frmValida_ss7.EnviaCorreoAvanzado('REQUISICION', 'CANCELAR', frmValida_ss7.sTipoMaterial, frmValida_ss7.grid_DatosView.DataController.DataSet.FieldByName('ComentarioStatus').AsString, 'CANCELADA',frmValida_ss7.sFoliosDoctos);
              lContinua := False;
           end;

           if lContinua then
           begin
            if temE.FieldByName('FK_Titulo').AsString = 'SUBSEA 7' then
            begin
              if frmValida_ss7.cxLista.Items.Item[frmValida_SS7.cxLista.ItemIndex].StateIndex = 1 then
                frmValida_ss7.EnviaCorreo('REQUISICION', '', '', '',frmValida_SS7.sFoliosDoctos);
            end
            else
            if temE.FieldByName('FK_Titulo').AsString = 'CMMI' then
            begin
               if frmValida_CMMI.cxLista.Items.Item[frmValida_CMMI.cxLista.ItemIndex].StateIndex = 1 then
                frmValida_CMMI.EnviaCorreo('REQUISICION', '', '', '',frmValida_CMMI.sFoliosDoctos);
            end
            ELSE
            BEGIN
              if frmValida.cxLista.Items.Item[frmValida.cxLista.ItemIndex].StateIndex = 1 then
                frmValida.EnviaCorreo('REQUISICION', '', '', '',frmValida.sFoliosDoctos);
            END;

           end;

        end
        else
          ShowMessage('Favor de llenar todos los datos!');
      end;

      if global_frmActivo='CANCELADO_SALIDA' then
      begin
        zValida1.Active:=False;
        zValida1.SQL.Add('UPDATE almacen_salida SET Estado=:Estado, ComentarioEstado=:ComentarioEstado WHERE iFolioSalida=:iFolioSalida');
        zValida1.ParamByName('Estado').AsString := 'CANCELADO';
        zValida1.ParamByName('ComentarioEstado').AsString := cxMemo1.Text;
        zValida1.ParamByName('iFolioSalida').AsString := frmSalidaAlmacen.salida_almacen.FieldByName('iFolioSalida').AsString;
        zValida1.ExecSQL;

        if frmSalidaAlmacen.salida_almacen.FieldByName('IdTipo').AsString = '13' then
        begin
          zUpt := tUniquery.create(nil);
          zUpt.Connection := Connection.uConnection;
          zUpt.Active:=False;
          zUpt.SQL.Add('UPDATE vale_resguardo SET Estatus=:Estatus WHERE IdSalida=:IdSalida');
          zUpt.ParamByName('Estatus').AsString := 'CANCELADO';
          zUpt.ParamByName('IdSalida').AsString := frmSalidaAlmacen.salida_almacen.FieldByName('iFolioSalida').AsString;
          zUpt.ExecSQL;

           zUpt.Destroy;
        end;

        frmSalidaAlmacen.salida_almacen.Refresh;
        while not frmSalidaAlmacen.salida_almacen.Eof do
        begin
          Id:=frmSalidaAlmacen.salida_detalle.FieldByName('IdSerie').AsInteger;
          try
             connection.zUCommand.Active := False ;
             connection.zUCommand.SQL.Clear ;
             connection.zUCommand.SQL.Add ('UPDATE bitacoradesalida SET dCantidad=:dCantidad WHERE IdBitacoraSalida=:id') ;
             connection.zUCommand.Params.ParamByName('dCantidad').AsInteger        := 0 ;
             connection.zUCommand.Params.ParamByName('Id').AsInteger        := frmSalidaAlmacen.salida_detalle.FieldValues['idBitacoraSalida'] ;
             connection.zUCommand.ExecSQL;


             connection.qryUBusca2.Active := False;
             connection.qryUBusca2.SQL.Clear;
             connection.qryUBusca2.SQL.Add('UPDATE alm_insumos_series SET dCantidad = 1 '+
                                          'WHERE IdSerie =:Serie ');
             connection.qryUBusca2.ParamByName('Serie').AsInteger   := Id;
             connection.qryUBusca2.ExecSQL;

          Except

          End;
          frmSalidaAlmacen.salida_almacen.Next;
        end;
        frmSalidaAlmacen.salida_detalle.Refresh;
      end;

      if global_frmActivo = 'Solicitud_Material'  then
      BEGIN
        iGrid     := 0;
        indice := frmSolicitudDeMateriales.cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
        frmSolicitudDeMateriales.cxView_Materiales.DataController.FocusedRowIndex := indice;

        with frmSolicitudDeMateriales.cxView_Materiales.DataController.DataSource.DataSet do
        for iGrid := 0 to frmSolicitudDeMateriales.cxView_Materiales.DataController.GetSelectedCount - 1 do
        begin
          indice := frmSolicitudDeMateriales.cxView_Materiales.DataController.GetSelectedRowIndex(iGrid);
          frmSolicitudDeMateriales.cxView_Materiales.DataController.FocusedRowIndex := indice;

          if frmSolicitudDeMateriales.TipoMenu = 'Embalaje' then
          begin
            AsignarSQL(connection.zUCommand, 'update_solicitud_detalle', pUpdate);
            FiltrarDataSet( connection.zUCommand, 'Embalaje, Insumo, item',
            [edtCampo.EditingValue,
            frmSolicitudDeMateriales.cxView_Materiales.DataController.DataSource.DataSet.FieldByName('IdMaterial').AsString,
            frmSolicitudDeMateriales.cxView_Materiales.DataController.DataSource.DataSet.FieldByName('iItem').AsString]);
            connection.zUCommand.ExecSQL;
          end;

          if frmSolicitudDeMateriales.TipoMenu = 'Logistica' then
          begin
            AsignarSQL(connection.zUCommand, 'update_solicitud_detalle_log', pUpdate);
            FiltrarDataSet( connection.zUCommand, 'Logistica, Insumo, item',
            [edtCampo.EditingValue,
            frmSolicitudDeMateriales.cxView_Materiales.DataController.DataSource.DataSet.FieldByName('IdMaterial').AsString,
            frmSolicitudDeMateriales.cxView_Materiales.DataController.DataSource.DataSet.FieldByName('iItem').AsString]);
            connection.zUCommand.ExecSQL;
          end;

        end;
        frmSolicitudDeMateriales.zDetalleMaterial.Refresh;

      END;

      close;
   finally
       zValida1.Destroy;
       temE.Destroy;
   end;
end;

procedure TFrmComentarios.FormShow(Sender: TObject);
begin
  if global_frmActivo='AutorizacionCC' then
  begin
    dxLayoutItem1.Caption:='Numero de Solicitud';
    dxLayoutItem2.Caption:='Fecha de Solicitud';
    dxLayoutItem3.Visible:=False;
  end;

  if global_frmActivo='Espera' then
  begin
    dxLayoutItem1.Caption:='Numero de Pedido';
    dxLayoutItem2.Caption:='Fecha de Pedido';
    dxLayoutItem3.Visible:=False;
  end;

  if global_frmActivo='Almacen' then
  begin
    dxLayoutItem1.Caption:='Numero de Entrada';
    dxLayoutItem2.Caption:='Fecha de Entrada';
    dxLayoutItem3.Visible:=False;
  end;

  if global_frmActivo='Transito' then
  begin
    dxLayoutItem1.Caption:='Numero de aviso Embarque';
    dxLayoutItem2.Caption:='Fecha de aviso Embarque';
    dxLayoutItem3.Visible:=False;
  end;


  if global_frmActivo='Recibido' then
  begin
    dxLayoutItem1.Caption:='Quien Recibe';
    dxLayoutItem2.Visible:=False;
    dxLayoutItem3.Visible:=False;
  end;

  if global_frmActivo='RECHAZADO' then
  begin
    dxLayoutItem3.Caption:='Rechazado por';
    cxMemo1.Text:='';
    dxLayoutItem1.Visible:=False;
    dxLayoutItem2.Visible:=False;

  end;

  if global_frmActivo='CComentario' then
  begin
    if assigned(FrmRequisicionss7) then begin
      dxLayoutItem3.Caption:='Rechazado por';
      FrmRequisicionss7.anexo_requisicion.Locate('iFolioRequisicion',FrmRequisicionss7.cxView_Requsicion.DataController.DataSet.FieldByName('iFolioRequisicion').AsInteger,[]);
      cxMemo1.Text:=FrmRequisicionss7.anexo_requisicion.FieldByName('ComentarioStatus').AsString;
      dxLayoutItem1.Visible:=False;
      dxLayoutItem2.Visible:=False;
    end;

  end;

  if global_frmActivo='CONDICIONADO' then
  begin
    dxLayoutItem3.Caption:='Condicionado por';
    cxMemo1.Text:='';
    dxLayoutItem1.Visible:=False;
    dxLayoutItem2.Visible:=False;
  end;

  if global_frmActivo='CANCELADO' then
  begin
    dxLayoutItem3.Caption:='Motivo de Cancelación';
    cxMemo1.Text:='';
    dxLayoutItem1.Visible:=False;
    dxLayoutItem2.Visible:=False;
  end;

  if global_frmActivo='CANCELADO_SALIDA' then
  begin
    dxLayoutItem3.Caption:='Motivo de Cancelación';
    cxMemo1.Text:='';
    dxLayoutItem1.Visible:=False;
    dxLayoutItem2.Visible:=False;
  end;
  if global_frmActivo = 'SERVICIO_REQ' then
  BEGIN
    if FrmRequisicionss7.anexo_requisicion.FieldByName('Recurso').AsString = 'Servicio' then
    begin
      dxLayoutItem3.Caption:='Nota Servicio ';
      cxMemo1.Text:= '';
      dxLayoutItem1.Visible:=False;
      dxLayoutItem2.Visible:=False;
    end;
  END;

  if global_frmActivo = 'Materiales_MR'  then
  BEGIN
      dxLayoutItem2.Visible:=False;
      dxLayoutItem1.Visible:=True;
      dxLayoutItem2.Visible:=False;
  END;

  if global_frmActivo = 'Solicitud_Material'  then
  BEGIN
      if frmSolicitudDeMateriales.TipoMenu = 'Embalaje' then
        dxLayoutItem1.Caption := 'Embalaje';

      if frmSolicitudDeMateriales.TipoMenu = 'Logistica' then
        dxLayoutItem1.Caption := 'Lógistica';

      dxLayoutItem1.Visible:=True;
      dxLayoutItem2.Visible:=False;
      dxLayoutItem3.Visible:=False;
  END;


  frmComentarios.Caption := global_frmActivo;
  cxTabComentarios.Caption := 'Usuario :'+global_usuario;

  cbFechaInicio.Date:=now;
end;

end.
