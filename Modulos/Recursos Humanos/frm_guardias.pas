unit frm_guardias;

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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.Menus, MemDS, DBAccess, Uni, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, Vcl.StdCtrls, cxButtons, cxLabel, frm_barraH1, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxSplitter, Vcl.ExtCtrls,frm_connection,
  dxLayoutcxEditAdapters, cxCheckBox, dxToggleSwitch, dxDBToggleSwitch,
  dxLayoutContainer, cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl,
  UnitGenerales, frm_barraH2, dxBarBuiltInMenu, cxPC, dxLayoutControlAdapters, unitMetodos,
  Vcl.ComCtrls, dxCore, cxDateUtils, frxClass, frxDBSet,unitRH, uFunctionsGHH;

  const
	InputBoxMessage = WM_USER + 200;


type
  TFrmGuardias = class(TForm)
    PanelPrincipal: TPanel;
    PanelD: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    dsGuardias: TDataSource;
    zGuardiasDetalle: TUniQuery;
    dsGuardiasDetalle: TDataSource;
    zGuardias: TUniQuery;
    zEmpleados: TUniQuery;
    dsEmpleados: TDataSource;
    zFiltroEmpleado: TUniQuery;
    dsFiltroEmpleado: TDataSource;
    TraerGuardias: TUniQuery;
    dsTraerGuardias: TDataSource;
    PanelDetalle: TPanel;
    cxGridDetalle: TcxGrid;
    cxViewDetallePersonal: TcxGridDBTableView;
    ColCodigo: TcxGridDBColumn;
    ColNombre: TcxGridDBColumn;
    cxGridDetalleLevel1: TcxGridLevel;
    PanelCentro: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    cbEmpleados: TcxDBLookupComboBox;
    cxActivo: TdxDBToggleSwitch;
    cbGuardias: TcxDBLookupComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    cxEditaEliminar: TcxButton;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxSplitterOpciones: TcxSplitter;
    dGuardias: TcxGrid;
    BView_filtro: TcxGridDBTableView;
    ColGuardia: TcxGridDBColumn;
    ColFechaI: TcxGridDBColumn;
    ColFechaF: TcxGridDBColumn;
    dGuardiasLevel1: TcxGridLevel;
    ColTranscurrido: TcxGridDBColumn;
    ColRestantes: TcxGridDBColumn;
    ColAdicionales: TcxGridDBColumn;
    ColGuardiaNum: TcxGridDBColumn;
    ColCodigoG: TcxGridDBColumn;
    colPlataforma: TcxGridDBColumn;
    ColPernocta: TcxGridDBColumn;
    ColProyecto: TcxGridDBColumn;
    ColInicioDetalle: TcxGridDBColumn;
    ColFinDetalle: TcxGridDBColumn;
    colEstado: TcxGridDBColumn;
    colContratado: TcxGridDBColumn;
    cxMasivo: TcxButton;
    cxBajar: TcxButton;
    btnContratar: TcxButton;
    cxFechaSubida: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    frxReportCR: TfrxReport;
    Contrato: TUniQuery;
    frxDBContrato: TfrxDBDataset;
    cxEditar: TcxButton;
    frxDBLogistica: TfrxDBDataset;
    Reporte: TUniQuery;
    btnCancelarBajada: TcxButton;
    cxNomina: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure BView_filtroCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnPostClick(Sender: TObject);
    procedure btnContratarClick(Sender: TObject);
    procedure cbGuardiasPropertiesChange(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxEditaEliminarClick(Sender: TObject);
    procedure BView_empresaCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxMasivoClick(Sender: TObject);
    procedure cxBajarClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure frxReportCRGetValue(const VarName: string; var Value: Variant);
    procedure cxEditarClick(Sender: TObject);
    procedure cxViewDetallePersonalCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxNominaClick(Sender: TObject);
    procedure btnCancelarBajadaClick(Sender: TObject);
    procedure InputBoxSetPasswordChar(var Msg: TMessage); message InputBoxMessage;
    procedure cxViewDetallePersonalCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);

    procedure ImprimirNominaOP;
    procedure NominaEmbarcacion;
    procedure frmBarraH11btnPrinterClick(Sender: TObject);
    procedure BView_filtroStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGuardias: TFrmGuardias;
  titulo,titulo2, btnPermisos, sOpcionEditar: string;
  flap:Boolean;
implementation

uses global, frm_Agregar_Masivo, frm_Noil_cmmi, frm_Contratar_Masivo, frm_Bajar_Masivo,
  Frm_ConfGuardias;
{$R *.dfm}

procedure TFrmGuardias.btnCancelarBajadaClick(Sender: TObject);
var
 pwd : String;
 baja : TUniQuery;
 SavePlace     : TBookmark;
 zActualiza : tUniquery;
begin
 if zGuardiasDetalle.FieldByName('Estado').AsString = 'Activa' then begin
     messageDLG('No puede cancelar una bajada porque está activa!', mtInformation, [mbOk], 0);
     exit;
 end;

 if zGuardiasDetalle.FieldByName('Estado').AsString = 'Bajo' then begin
      if global_grupo = 'ADMON' then
      begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.text :='select AES_DECRYPT(u.sPasswordEspecial,"AES2016") as sPasswordEsp from usuarios u where sIdUsuario = :usuario and lActivo="Si"';
        connection.QryBusca.params.ParamByName('Usuario').DataType := ftString;
        connection.QryBusca.ParamByName('Usuario').AsString := global_usuario;
        connection.QryBusca.Open;
        if connection.QryBusca.RecordCount > 0 then
        begin
          PostMessage(Handle, InputBoxMessage, 0, 0);
          pwd:=InputBox('¡Seguridad de Cancelación!', 'Ingresar contraseña:','');
          if pwd = connection.QryBusca.FieldByName('sPassWordEsp').AsString then
          begin
            If MessageDlg('¿Desea cancelar la bajada de la Guardia? ',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
                  zGuardiasDetalle.Edit;
                  zGuardiasDetalle.FieldByName('Estado').AsString := 'Activa';
                  SavePlace := BView_filtro.DataController.DataSource.DataSet.GetBookmark;
                  zGuardiasDetalle.Refresh;

                  zActualiza:=tUniquery.create(nil);
                  zActualiza.Connection := Connection.uConnection;

                  zActualiza.SQL.Clear;
                  zActualiza.SQL.Add('update rh_guardia_personal set Activo = :Activo where IdGuardiaDetalle =:IdGuardiaDetalle');
                  zActualiza.ParamByName('Activo').AsString := 'Si';
                  zActualiza.ParamByName('IdGuardiaDetalle').AsInteger := zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsInteger;
                  zActualiza.ExecSQL;

                try
                   BView_filtro.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
                except
                   BView_filtro.DataController.DataSet.FreeBookmark(SavePlace);
                end;
            end
              else
                exit;
          end
          else
            ShowMessage('La contraseña no corresponde a su usuario, intente de nuevo.');
        end;
      end
      else
        ShowMessage('Su usuario no es del grupo administrador, acceso denegado.');
 end;

end;


procedure TFrmGuardias.InputBoxSetPasswordChar(var Msg: TMessage);
var
	  hInputForm, hEdit: HWND;
begin
  hInputForm := Screen.Forms[0].Handle;
  if (hInputForm <> 0) then
  begin
    hEdit := FindWindowEx(hInputForm, 0, 'TEdit', nil);
    SendMessage(hEdit, EM_SETPASSWORDCHAR, Ord('*'), 0);
  end;
end;

procedure TFrmGuardias.btnCancelClick(Sender: TObject);
begin
  zFiltroEmpleado.Cancel;
  cxSplitterOpciones.Visible := True;
  PanelD.Visible:=False;
  cxLeyenda.Caption:=titulo;
  PermisosBotones(FrmGuardias, btnPermisos);
end;

procedure TFrmGuardias.btnContratarClick(Sender: TObject);
begin
  if zGuardiasDetalle.FieldByName('Estado').AsString = 'Bajo' then
  begin
     messageDLG('No se puede continuar la Guardia Bajó!', mtInformation, [mbOk], 0);
     exit;
  end;

  PanelPrincipal.Enabled := False;
  zFiltroEmpleado.Cancel;
  if not MostrarFormChild('frmContratarMasivo',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmContratarMasivo, frmContratarMasivo);
    frmContratarMasivo.show;
  end;
end;

procedure TFrmGuardias.btnDetalleClick(Sender: TObject);
begin
  cxSplitterOpciones.Visible := not cxSplitterOpciones.Visible;
  PanelDetalle.Visible       := not PanelDetalle.Visible;
end;

procedure TFrmGuardias.cxBajarClick(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua, lContratado : boolean;
begin
    if zGuardiasDetalle.FieldByName('Estado').AsString = 'Bajo' then
    begin
       messageDLG('No se puede continuar la Guardia Bajó!', mtInformation, [mbOk], 0);
       exit;
    end;

    PanelPrincipal.Enabled := False;
    //buscamos que este en NoContratado
    zFiltroEmpleado.First;
    indice := cxViewDetallePersonal.DataController.GetRootDataController.GetSelectionAnchorRowIndex;
    cxViewDetallePersonal.DataController.SelectRows(indice, indice);
    lContratado := False;
    iGrid     := 0;
    indice := cxViewDetallePersonal.DataController.GetSelectedRowIndex(iGrid);
    cxViewDetallePersonal.DataController.FocusedRowIndex := indice;

    while not zFiltroEmpleado.Eof do
    begin
       if cxViewDetallePersonal.DataController.DataSet.FieldByName('Contrato').AsString = 'Sin Contratar' then
          lcontratado := True;

       zFiltroEmpleado.Next;
    end;

    if lcontratado then
    begin
       messageDLG('No se puede continuar existe Personal Sin Contratar', mtInformation, [mbOk], 0);
       PanelPrincipal.Enabled := True;
       exit;
    end;

    If MessageDlg('Desea Bajar la Guardia '+zGuardiasDetalle.FieldByName('GuardiaNum').AsString+'?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        if not MostrarFormChild('frmBajarMasivo',global_dxBarManagerPrincipal) Then
        begin
            global_btnPermisos := '';
            Application.CreateForm(TfrmBajarMasivo, frmBajarMasivo);
            frmBajarMasivo.show;
        end;
    end;
end;

procedure TFrmGuardias.btnPostClick(Sender: TObject);
begin
  if (zFiltroEmpleado.State = dsInsert) and (flap=False) then
  begin
   zFiltroEmpleado.FieldByName('IdGuardiaPersonal').AsInteger:=0;
   zFiltroEmpleado.FieldByName('IdGuardiaDetalle').AsInteger:=zGuardiasDetalle.FieldByName('IdGuardiaDetalle').ASInteger;
  end;
  if flap=False then
  begin
   zFiltroEmpleado.Post;
  end;
  zFiltroEmpleado.Refresh;
  btnCancelClick(Sender);
  PermisosBotones(FrmGuardias, btnPermisos);
  flap:=False;
end;

procedure TFrmGuardias.cxNominaClick(Sender: TObject);
begin
    if zGuardiasDetalle.FieldByName('IdTipoNomina').AsInteger = 2 then
    begin
        NominaEmbarcacion;
    end;

    if zGuardiasDetalle.FieldByName('IdTipoNomina').AsInteger = 4 then
    begin
        NominaEmbarcacion;
    end;
end;

procedure TFrmGuardias.btnRefreshClick(Sender: TObject);
begin
    zGuardiasDetalle.Refresh;
end;

procedure TFrmGuardias.BView_empresaCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  zGuardiasDetalle.Active:=False;
  AsignarSQL(zGuardiasDetalle,'FiltroGuardias',pUpdate);
  FiltrarDataSet(zGuardiasDetalle,'IdGuardia',[zGuardias.FieldByName('IdGuardia').AsString]);
  zGuardiasDetalle.Open;
end;

procedure TFrmGuardias.BView_filtroCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    AsignarSQL(zFiltroEmpleado,'FiltroEmpleados',pUpdate);
    FiltrarDataSet(zFiltroEmpleado,'IdGuardiaDetalle',[zGuardiasDetalle.FieldByName('IdGuardiaDetalle').ASString]);
    zFiltroEmpleado.Open;
end;

procedure TFrmGuardias.BView_filtroStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  var
     AColumn : TcxCustomGridTableItem;
begin
    AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Estado');
    if VarToStr(ARecord.Values[AColumn.Index]) <> '' then
    begin
       if VarToStr(ARecord.Values[AColumn.Index]) = 'Activa' then AStyle := connection.cxActiva;
       if VarToStr(ARecord.Values[AColumn.Index]) = 'Bajo' then AStyle   := connection.cxBajo ;
    end;

end;

procedure TFrmGuardias.cbGuardiasPropertiesChange(Sender: TObject);
var
  temp:TuniQuery;
begin
  if zFiltroEmpleado.RecordCount > 0 then
  begin
     messageDLG('No se puede insertar Guardia, Existe personal Cargado, Para continuar debe Eliminar', mtInformation, [mbOk], 0);
     exit;
  end;

  if (not (cbGuardias.EditValue = null) and (dsFiltroEmpleado.DataSet.State in [dsInsert])) then
  begin
     if TraerGuardias.Locate('IdGuardiaDetalle',inttostr(cbGuardias.EditValue),[]) then
     begin
        if MessageDlg('Taraer personal de la guardia'#13+TraerGuardias.FieldByName('Guardia').AsString+'?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          cbGuardias.Enabled:=False;
          Temp := tUniQuery.create(nil);
          Temp.Connection := Connection.uConnection;
          Temp.Active:=False;
          AsignarSQL(Temp,'TraerGuardias',pUpdate);
          FiltrarDataSet(Temp,'IdGuardiaDetalle',cbGuardias.EditValue);
          Temp.Open;
          zFiltroEmpleado.Cancel;
           while not Temp.eof do
           begin
            zFiltroEmpleado.Insert;
            zFiltroEmpleado.FieldByName('IdGuardiaPersonal').AsInteger:=0;
            zFiltroEmpleado.FieldByName('IdGuardiaDetalle').AsInteger:=zGuardiasDetalle.FieldByName('IdGuardiaDetalle').ASInteger;
            zFiltroEmpleado.FieldByName('IdPersonal').AsInteger:=Temp.FieldByName('IdPersonal').AsInteger;
            zFiltroEmpleado.FieldByName('Activo').AsString:='Si';
            zFiltroEmpleado.Post;
            Temp.Next;
            zFiltroEmpleado.Next;
           end;
           flap:=True;
          cbGuardias.Enabled:=True;
        end;
     end;
  end;
end;

procedure TFrmGuardias.cxCancelarDetalleClick(Sender: TObject);
begin
  PanelCentro.Visible:=False;
  PanelDown.Visible:=False;

  cxNuevoDetalle.Enabled := True;
  zFiltroEmpleado.Cancel;
  cxEditaEliminar.Enabled := True;
  cxMasivo.Enabled := True;
  cxeditar.Enabled := True;

  cbEmpleados.Enabled := True;
  cbGuardias.Enabled  := True;
  cxActivo.Enabled    := True;
end;

procedure TFrmGuardias.cxEditaEliminarClick(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua, lContratado : boolean;
begin
  if zGuardiasDetalle.FieldByName('Estado').AsString = 'Bajo' then
  begin
     messageDLG('No se puede continuar la Guardia Bajó!', mtInformation, [mbOk], 0);
     exit;
  end;

  //buscamos que este en NoContratado
  lContratado := False;
  iGrid     := 0;
  indice := cxViewDetallePersonal.DataController.GetSelectedRowIndex(iGrid);
  cxViewDetallePersonal.DataController.FocusedRowIndex := indice;

  with cxViewDetallePersonal.DataController.DataSource.DataSet do
  for iGrid := 0 to cxViewDetallePersonal.DataController.GetSelectedCount - 1 do
  begin
      indice := cxViewDetallePersonal.DataController.GetSelectedRowIndex(iGrid);
      cxViewDetallePersonal.DataController.FocusedRowIndex := indice;

     if cxViewDetallePersonal.DataController.DataSet.FieldByName('Contrato').AsString = 'Contratado' then
        if cxViewDetallePersonal.DataController.DataSet.FieldByName('TipoPersonal').AsString <> 'FIJO' then
           lcontratado := True;
  end;

  if lcontratado then
  begin
     messageDLG('No se puede continuar, Personal Contrato!', mtInformation, [mbOk], 0);
     exit;
  end;

  lcontinua := False;
  if cxViewDetallePersonal.DataController.GetSelectedCount = 1 then
    If MessageDlg('Desea eliminar de la Guardia al personal '#13+zFiltroEmpleado.FieldByName('Nombre').AsString+'?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       lcontinua := True;

   if cxViewDetallePersonal.DataController.GetSelectedCount > 1 then
    If MessageDlg('Desea eliminar  ('+IntToStr(cxViewDetallePersonal.DataController.GetSelectedCount)+') Empleados seleccionados de la Guardia '+ frm_guardias.FrmGuardias.zGuardiasDetalle.FieldByName('Codigo').AsString+'?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       lcontinua := True;

   if lContinua then
   begin
      zActualiza:=tUniquery.create(nil);
      zActualiza.Connection := Connection.uConnection;

      iGrid     := 0;
      indice := cxViewDetallePersonal.DataController.GetSelectedRowIndex(iGrid);
      cxViewDetallePersonal.DataController.FocusedRowIndex := indice;

      with cxViewDetallePersonal.DataController.DataSource.DataSet do
      for iGrid := 0 to cxViewDetallePersonal.DataController.GetSelectedCount - 1 do
      begin
          indice := cxViewDetallePersonal.DataController.GetSelectedRowIndex(iGrid);
          cxViewDetallePersonal.DataController.FocusedRowIndex := indice;

          zActualiza.SQL.Clear;
          zActualiza.SQL.Add('delete from rh_contratos where IdGuardiaPersonal =:IdGuardiaPersonal');
          zActualiza.ParamByName('IdGuardiaPersonal').AsInteger := cxViewDetallePersonal.DataController.DataSet.FieldByName('IdGuardiaPersonal').AsInteger;
          zActualiza.ExecSQL;

          zActualiza.SQL.Clear;
          zActualiza.SQL.Add('delete from rh_guardia_personal where IdGuardiaPersonal =:IdGuardiaPersonal');
          zActualiza.ParamByName('IdGuardiaPersonal').AsInteger := cxViewDetallePersonal.DataController.DataSet.FieldByName('IdGuardiaPersonal').AsInteger;
          zActualiza.ExecSQL;
      end;

      cxViewDetallePersonal.DataController.ClearSelection;
      zFiltroEmpleado.Refresh;
      zEmpleados.Refresh;
      zFiltroEmpleado.ApplyUpdates();
   end;
end;

procedure TFrmGuardias.cxEditarClick(Sender: TObject);
var
   lContinuar : boolean;
begin
  if zGuardiasDetalle.FieldByName('Estado').AsString = 'Bajo' then
  begin
     messageDLG('No se puede continuar la Guardia Bajó!', mtInformation, [mbOk], 0);
     exit;
  end;
  lContinuar := False;

  if cxViewDetallePersonal.DataController.GetSelectedCount > 1 then
  begin
     sOpcionEditar := 'EditarMasivo';
     If MessageDlg('Desea Modificar la Fecha de Subida del Personal Seleccionado?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        lContinuar := True;
  end
  else
  begin
      sOpcionEditar := 'Editar';
      If MessageDlg('Desea Modificar la Fecha de Subida del Personal '+zFiltroEmpleado.FieldByName('CodigoPersonal').AsString+'?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         lContinuar := True;
  end;

  if lContinuar then
  begin
      PanelDown.Visible:=True;
      PanelCentro.Visible:=True;
      cxNuevoDetalle.Enabled := False;
      cxEditaEliminar.Enabled := False;
      cxMasivo.Enabled := False;
      cxeditar.Enabled := False;

      cbEmpleados.Enabled := False;
      cbGuardias.Enabled  := False;
      cxActivo.Enabled    := False;

      if sOpcionEditar = 'Editar' then
         zFiltroEmpleado.Edit;
  end;
end;

procedure TFrmGuardias.cxGuardarDetalleClick(Sender: TObject);
var
    indice, iGrid    : integer;
    zActualiza : tUniquery;
begin
    if (zFiltroEmpleado.State = dsInsert) and (flap=False) then
    begin
      if zEmpleados.FieldByName('TipoPersonal').AsString = 'FIJO' then
         zFiltroEmpleado.FieldByName('Contrato').AsString := 'Contratado';
      zFiltroEmpleado.FieldByName('IdGuardiaPersonal').AsInteger:=0;
      zFiltroEmpleado.FieldByName('IdGuardiaDetalle').AsInteger:=zGuardiasDetalle.FieldByName('IdGuardiaDetalle').ASInteger;
    end;

    if flap=False then
    begin
       if (cxFechaSubida.Date < zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime) or (cxFechaSubida.Date > zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime) then
       begin
           messageDLG('La Fecha de Subida está fuera del rango de Guardia!', mtWarning,[mbOk],0);
           exit;
       end;

       if sOpcionEditar = 'EditarMasivo' then
       begin
          zActualiza:=tUniquery.create(nil);
          zActualiza.Connection := Connection.uConnection;

          iGrid     := 0;
          indice := cxViewDetallePersonal.DataController.GetSelectedRowIndex(iGrid);
          cxViewDetallePersonal.DataController.FocusedRowIndex := indice;

          with cxViewDetallePersonal.DataController.DataSource.DataSet do
          for iGrid := 0 to cxViewDetallePersonal.DataController.GetSelectedCount - 1 do
          begin
              indice := cxViewDetallePersonal.DataController.GetSelectedRowIndex(iGrid);
              cxViewDetallePersonal.DataController.FocusedRowIndex := indice;

              zActualiza.SQL.Clear;
              zActualiza.SQL.Add('update rh_guardia_personal set FechaSubida =:FechaSubida where IdGuardiaPersonal =:IdGuardiaPersonal');
              zActualiza.ParamByName('IdGuardiaPersonal').AsInteger := cxViewDetallePersonal.DataController.DataSet.FieldByName('IdGuardiaPersonal').AsInteger;
              zActualiza.ParamByName('FechaSubida').AsDate := cxFechaSubida.Date;
              zActualiza.ExecSQL;
          end;
          zActualiza.Destroy;
       end
       else
       begin
           zFiltroEmpleado.FieldByName('FechaSubida').AsDateTime  := cxFechaSubida.Date;
           zFiltroEmpleado.Post;
       end;
       sOpcionEditar := '';
    end;
    zFiltroEmpleado.Refresh;
    zEmpleados.Refresh;
    cxCancelarDetalleClick(Sender);
    flap:=False;
end;

procedure TFrmGuardias.cxMasivoClick(Sender: TObject);
begin
  if zGuardiasDetalle.FieldByName('Estado').AsString = 'Bajo' then
  begin
     messageDLG('No se puede continuar la Guardia Bajó!', mtInformation, [mbOk], 0);
     exit;
  end;

  PanelPrincipal.Enabled := False;
  zFiltroEmpleado.Cancel;
  if not MostrarFormChild('frmAgregarMasivo',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmAgregarMasivo, frmAgregarMasivo);
    frmAgregarMasivo.show;
  end;
end;

procedure TFrmGuardias.cxNuevoDetalleClick(Sender: TObject);
begin
  if zGuardiasDetalle.FieldByName('Estado').AsString = 'Bajo' then
  begin
     messageDLG('No se puede continuar la Guardia Bajó!', mtInformation, [mbOk], 0);
     exit;
  end;

  PanelDown.Visible:=True;
  PanelCentro.Visible:=True;
  cxNuevoDetalle.Enabled := False;
  cxEditaEliminar.Enabled := False;
  cxMasivo.Enabled := False;
  cxeditar.Enabled := False;
  cxFechaSubida.Date := zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime;
  zFiltroEmpleado.Append;
  zFiltroEmpleado.FieldByName('Activo').AsString:='Si';
end;

procedure TFrmGuardias.cxViewDetallePersonalCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if True then
      cxFechaSubida.Date :=  zFiltroEmpleado.FieldByName('FechaSubida').AsDateTime;
end;

procedure TFrmGuardias.cxViewDetallePersonalCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if cxViewDetallePersonal.OptionsView.CellAutoHeight then
       cxViewDetallePersonal.OptionsView.CellAutoHeight := False
    else
       cxViewDetallePersonal.OptionsView.CellAutoHeight := True;
end;

procedure TFrmGuardias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
guardar_leer_grid(BView_filtro,FrmGuardias,1);
guardar_leer_grid(cxViewDetallePersonal,FrmGuardias,1);
  action := cafree;
end;

procedure TFrmGuardias.FormShow(Sender: TObject);
begin
  btnPermisos:= global_btnPermisos;
  cxLeyenda.Caption:=titulo;
  titulo:=' Guardias Personal';
  titulo2:='Empleados';
  cxLeyenda.Caption:=titulo;

  cxSplitterOpciones.Visible := False;
  PanelDetalle.Visible       := False;
  PanelCentro.Visible:=False;
  PanelDown.Visible:=False;

  zGuardias.Active:=False;
  AsignarSQL(zGuardias,'guardia_empresas',pUpdate);
  zGuardias.Open;

  zGuardiasDetalle.Active:=False;
  AsignarSQL(zGuardiasDetalle,'FiltroGuardias',pUpdate);
  FiltrarDataSet(zGuardiasDetalle,'IdGuardia',['-1']);
  zGuardiasDetalle.Open;

  zEmpleados.Active:=False;
  AsignarSQL(zEmpleados,'FiltraPersonal_agregaGuardia',pUpdate);
  FiltrarDataSet(zEmpleados,'Empresa', [zGuardiasDetalle.FieldByName('IdEmpresa').AsInteger]);
  zEmpleados.Open;

  AsignarSQL(zFiltroEmpleado,'FiltroEmpleados',pUpdate);
  FiltrarDataSet(zFiltroEmpleado,'IdGuardiaDetalle',[zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsInteger]);
  zFiltroEmpleado.Open;

  TraerGuardias.Active:=False;
  AsignarSQL(TraerGuardias,'TGuardias',pUpdate);
  FiltrarDataSet(TraerGuardias,'Activo',['Si']);
  TraerGuardias.Open;
  PermisosBotones(FrmGuardias, btnPermisos);
  Connection.qryUBusca.Active:=False;
  Connection.qryUBusca.SQL.Text:='select FK_Titulo From master_empresa';
  Connection.qryUBusca.Open;
  if Connection.qryUBusca.FieldByName('FK_Titulo').AsString = 'TYPHOON'then
  begin
   BView_filtro.Columns[7].Visible:=False;
   cxViewDetallePersonal.Columns[2].Visible:=False;
   cxViewDetallePersonal.Columns[3].Visible:=False;
   cxViewDetallePersonal.Columns[4].Visible:=False;
   cxBajar.Visible:=False;
   btnContratar.Visible:=False;
   btnCancelarbajada.Visible := False;
   cxNomina.Visible := True;
  end;
  guardar_leer_grid(BView_filtro,FrmGuardias,0);
  guardar_leer_grid(cxViewDetallePersonal,FrmGuardias,0);
end;

procedure TFrmGuardias.frmBarraH11btnPrinterClick(Sender: TObject);
begin
    Reporte.Active:=False;
    AsignarSQL(Reporte,'reporte_guardias',pUpdate);
    FiltrarDataSet(reporte,'IdGuardiaDet',[zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsString]);
    Reporte.Open;

    frxDBLogistica.DataSet    := Reporte;
    frxDBLogistica.FieldAliases.Clear;

    frxReportCR.DataSets.Add(frxDBLogistica);
    frxReportCR.PreviewOptions.MDIChild := False;
    frxReportCR.PreviewOptions.Modal := True;
    frxReportCR.PreviewOptions.ShowCaptions := False;
    frxReportCR.LoadFromFile (global_files + global_miReporte+'_RH_ReporteGuardias.fr3') ;
     if not FileExists(global_files + global_miReporte + '_RH_ReporteGuardias.fr3') then

      showmessage('El archivo de reporte '+global_Mireporte+'_RH_ReporteGuardias.fr3 no existe, notifique al administrador del sistema');

     frxReportCR.ShowReport();
end;

procedure TFrmGuardias.frxReportCRGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'CANTIDAD_LETRA') = 0 then
  begin
     Value := LetraMontos('MXN','PESOS', Contrato.FieldByName('SDI').AsFloat );
  end;

  if CompareText(VarName, 'SUELDO_LETRA') = 0 then
  begin
     Value := LetraMontos('MXN','PESOS', Contrato.FieldByName('Importe').AsFloat );
  end;
end;

procedure TFrmGuardias.ImprimirNominaOP;
Var
  personalGrid : String;
  zPersonal :TUniQuery;
begin
   zPersonal:=tUniquery.create(nil);
   zPersonal.Connection := Connection.uConnection;

   AsignarSQL(zPersonal,'FiltroEmpleados',pUpdate);
   FiltrarDataSet(zPersonal,'IdGuardiaDetalle',[zGuardiasDetalle.FieldByName('IdGuardiaDetalle').ASString]);
   zPersonal.Open;

   while not zPersonal.Eof do
   begin
       personalGrid := personalGrid + zPersonal.FieldByName('CodigoPersonal').AsString +',';
       zPersonal.Next;
   end;

   procReporteNominasRH(False, zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime, zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime, zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime, zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime, frmConfGuardias, frxReportCR.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.uConnection, global_grupo, 'nominas'),
   zGuardiasDetalle.FieldByName('IdGuardia').AsString,zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsString,'OPERACIONES',personalGrid);

   zPersonal.Destroy;
end;

procedure TFrmGuardias.NominaEmbarcacion;
var
  personalGrid : String;
  zPersonal :TUniQuery;
begin
   zPersonal:=tUniquery.create(nil);
   zPersonal.Connection := Connection.uConnection;

   AsignarSQL(zPersonal,'FiltroEmpleados',pUpdate);
   FiltrarDataSet(zPersonal,'IdGuardiaDetalle',[zGuardiasDetalle.FieldByName('IdGuardiaDetalle').ASString]);
   zPersonal.Open;

   while not zPersonal.Eof do
   begin
       personalGrid := personalGrid + zPersonal.FieldByName('CodigoPersonal').AsString +',';
       zPersonal.Next;
   end;

   procReporteNominasEB(False, zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime, zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime, zGuardiasDetalle.FieldByName('FechaInicio').AsDateTime, zGuardiasDetalle.FieldByName('FechaFinal').AsDateTime, frmConfGuardias, frxReportCR.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.uConnection, global_grupo, 'nominas'),
   zGuardiasDetalle.FieldByName('IdGuardia').AsString,zGuardiasDetalle.FieldByName('IdGuardiaDetalle').AsString,'ABORDO',personalGrid);

   zPersonal.Destroy;
end;


end.
