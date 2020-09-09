unit frm_seleccion2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, frm_connection, global, DB, ADODB,
  ComCtrls, ImgList,  Mask, DateUtils, ExtCtrls, UnitExcepciones,//Newpanel,
  ZAbstractRODataset, ZDataset, Math, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  cxGroupBox, Menus, cxButtons, dxRibbonSkins, dxSkinsdxRibbonPainter,
  cxClasses, dxRibbon, dxSkinsdxBarPainter, dxBar, cxCustomData, cxStyles, cxTL,
  cxTLdxBarBuiltInMenu, cxTreeView, cxInplaceContainer, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, jpeg, dxGDIPlusClasses,
  dxImageSlider, dximctrl, cxImage, cxDBEdit, dxSkinscxPCPainter, cxDBData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxLabel, cxMemo, cxGridLevel,
  dxLayoutContainer, cxGridViewLayoutContainer, cxGridLayoutView,
  cxGridCustomTableView, cxGridDBLayoutView, cxGridCustomView,
  cxGridCustomLayoutView, cxGrid, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, MemDS, DBAccess, Uni, unitGenerales, cxEditRepositoryItems;

type
  TfrmSeleccion2 = class(TForm)
    ds_turnos: TDataSource;
    Turnos: TZReadOnlyQuery;
    cxGroupBox3: TcxGroupBox;
    btnOk: TcxButton;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    empresas: TZReadOnlyQuery;
    ds_empresas: TDataSource;
    cxGridEmpresas: TcxGrid;
    cxGridOtros: TcxGridDBLayoutView;
    cxItmUsuario: TcxGridDBLayoutViewItem;
    cxItmObservaciones: TcxGridDBLayoutViewItem;
    cxItmImagen: TcxGridDBLayoutViewItem;
    dxLyGrdUsuariosDBLayoutView1Group_Root: TdxLayoutGroup;
    cxgrdlytmGridOtrosLayoutItem1: TcxGridLayoutItem;
    cxgrdlytmGridOtrosLayoutItem2: TcxGridLayoutItem;
    cxgrdlytmGridOtrosLayoutItem3: TcxGridLayoutItem;
    dxlytcrtdgrpGridOtrosGroup1: TdxLayoutAutoCreatedGroup;
    level1: TcxGridLevel;
    empresassContrato: TWideStringField;
    empresassMascara: TWideStringField;
    empresassCodigo: TWideStringField;
    empresassTipoObra: TWideStringField;
    empresasmDescripcion: TWideMemoField;
    empresasmCliente: TWideMemoField;
    empresasbImagen: TBlobField;
    empresassUbicacion: TWideStringField;
    empresassLicitacion: TWideStringField;
    empresassTitulo: TWideMemoField;
    empresassCliente: TWideStringField;
    empresasmComentarios: TWideMemoField;
    empresaslStatus: TWideStringField;
    empresasIdMsConfDSAI17: TIntegerField;
    empresasIdEmpresa: TIntegerField;
    uEmpresas: TUniQuery;
    uTurnos: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TreeObrasClick(Sender: TObject);
    procedure TreeObrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeObrasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure refresh ;
    procedure dxBarLargeButton15Click(Sender: TObject);
    procedure dxBarLargeButton12Click(Sender: TObject);
    procedure dxBarLargeButton13Click(Sender: TObject);
    procedure cxGridOtrosKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cxGridOtrosDblClick(Sender: TObject);
    procedure cxGridOtrosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    adentro: boolean;
    cerrar :boolean;
    fin : Boolean;
  end;

var
  frmSeleccion2: TfrmSeleccion2;
  MyTreeNode2,
  MyTreeNode3: TTreeNode;

implementation

uses frm_acerca, frm_acceso;

{$R *.dfm}

procedure TfrmSeleccion2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fin = False then
  begin
    Connection.qryUBusca.Active := False;
    Connection.qryUBusca.SQL.Clear;
    Connection.qryUBusca.SQL.Add('Select sIdIdioma From idiomas Where sDescripcion = :Idioma');
    Connection.qryUBusca.Params.ParamByName('Idioma').DataType :=      ftString;
    Connection.qryUBusca.Params.ParamByName('Idioma').Value    := global_idiomaDesc;
    Connection.qryUBusca.Open;
    global_idioma :=  Connection.qryUBusca.FieldByName('sIdIdioma').AsString;
  end else
    Application.Terminate;
  lErrorIniciar := True;
end;

procedure TfrmSeleccion2.FormCreate(Sender: TObject);
begin
      fin := True;
end;

procedure TfrmSeleccion2.FormShow(Sender: TObject);
begin

  {Verificamos el numeor de accesos Oceanografia version bETA ...}
//  Connection.qryUBusca.Active := False ;
//  Connection.qryUBusca.SQL.Clear ;
//  connection.qryUBusca.SQL.Add('select * from activos where iAccesos <= 210') ;
//  connection.qryUBusca.Open ;
//
//  if connection.qryUBusca.RecordCount = 0 then
//  begin
//      messageDLG('La Version de Noíl ERP de 2018 ha Expirado, Actualice su version!', mtInformation, [mbOk], 0);
//      exit;
//  end
//  else
//  begin
//      Connection.qryUBusca.Active := False ;
//      Connection.qryUBusca.SQL.Clear ;
//      connection.qryUBusca.SQL.Add('Update activos set iAccesos = iAccesos + 1 ') ;
//      connection.qryUBusca.ExecSQL;
//  end;


end;

procedure TfrmSeleccion2.btnOkClick(Sender: TObject);
var
    MensajeBarco, filtro_check  : Boolean ;
    datos : Integer;
begin
  try

      cxGridOtros.DataController.FocusedRowIndex := cxGridOtros.DataController.RecNo - 1;

      global_contrato := uempresas.FieldByName('sContrato').AsString;

      // Actualizo Kardex del Sistema ....
      connection.zUCommand.Active := False ;
      connection.zUCommand.SQL.Clear ;
      connection.zUCommand.SQL.Add ( 'Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                    'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
      connection.zUCommand.Params.ParamByName('Contrato').DataType := ftString ;
      connection.zUCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
      connection.zUCommand.Params.ParamByName('Usuario').DataType := ftString ;
      connection.zUCommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
      connection.zUCommand.Params.ParamByName('Fecha').DataType := ftDate ;
      connection.zUCommand.Params.ParamByName('Fecha').Value := Date ;
      connection.zUCommand.Params.ParamByName('Hora').DataType := ftString ;
      connection.zUCommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
      connection.zUCommand.Params.ParamByName('Descripcion').DataType := ftString ;
      connection.zUCommand.Params.ParamByName('Descripcion').Value := 'Selección del Contrato [' + global_contrato + '] turno [' + global_turno + '] desde la dirección [' + global_ip + ']' ;
      connection.zUCommand.Params.ParamByName('Origen').DataType := ftString ;
      connection.zUCommand.Params.ParamByName('Origen').Value := 'Otros Movimientos' ;
      connection.zUCommand.ExecSQL ;

      If global_usuario = 'ACCESO_TOTAL' Then
      Begin
          Connection.uContratosxUsuario.Active := False ;
          Connection.uContratosxUsuario.SQL.Clear ;
          Connection.uContratosxUsuario.SQL.Text:='Select stipoObra, sContrato, mDescripcion From rd_proyectos Order By sContrato';
          Connection.uContratosxUsuario.Open ;
      End
      Else
      Begin
          Connection.uContratosxUsuario.Active := False ;
          Connection.uContratosxUsuario.SQL.Clear ;
          Connection.uContratosxUsuario.SQL.Text := 'Select c.sTipoObra, c.sContrato, c.mDescripcion From usuarios_proyectos u ' +
                                               'INNER JOIN rd_proyectos c ON (c.sContrato = u.sContrato and c.lStatus = '+ QuotedStr('Activo') +') ' +
                                               'Where u.sIdUsuario = :Usuario Order By c.sContrato' ;
          Connection.uContratosxUsuario.Params.ParamByName('Usuario').DataType := ftString ;
          Connection.uContratosxUsuario.Params.ParamByName('Usuario').Value := global_usuario ;
          Connection.uContratosxUsuario.Open ;
      End ;

      AsignarSQL(connection.zUCommand,'master_moneda',pUpdate);
      FiltrarDataSet(connection.zUCommand,'IdMoneda,Codigo,Activo',[-1,-1,-1]);
      connection.zUCommand.Open;

      //Proceso  2018 Noil monedas y formatos
      connection.cxReposMonedas.Clear;
      while not connection.zUCommand.Eof do
      begin
           connection.cxReposMonedas.CreateItem(TcxEditRepositoryCurrencyItem);
           connection.cxReposMonedas.Items[connection.zUCommand.RecNo-1].Name := stringreplace(connection.zUCommand.FieldByName('Codigo').AsString, ' ', '',[rfReplaceAll, rfIgnoreCase]);
           (connection.cxReposMonedas.Items[connection.zUCommand.RecNo-1] as TcxEditRepositoryCurrencyItem).Properties.DisplayFormat := connection.zUCommand.FieldByName('Formato').AsString;;
           connection.zUCommand.Next;
      end;

      AsignarSQL(connection.ucontrato,'proyectos_inicio',pUpdate);
      FiltrarDataSet(connection.ucontrato,'Contrato',[global_contrato]);
      connection.ucontrato.Open;

      //global_contrato_barco := global_contrato ;
      global_Contrato_Barco := connection.ucontrato.fieldbyname('scodigo').AsString;

      AsignarSQL(connection.uConfiguracion,'configuracion_inicio',pUpdate);
      FiltrarDataSet(connection.uConfiguracion,'Contrato',[global_contrato]);
      connection.uConfiguracion.Open;

      AsignarSQL(connection.uUsuario,'usuarios_inicio',pUpdate);
      FiltrarDataSet(connection.uUsuario,'Contrato,Usuario',[global_contrato,GLOBAL_USUARIO]);
      connection.uUsuario.Open;

      global_miReporte := connection.uconfiguracion.FieldByName('sReportesCIA').AsString;

      global_contrato := connection.ucontrato.FieldValues['sContrato'];


      global_convenio := 'C' ;

      If connection.uconfiguracion.RecordCount = 0 then
            application.MessageBox('Precaución: No se encontro el archivo principal de configuración, notifique al Administrador del Sistema' , 'Inteligent' ,  0 )
      Else
      Begin
            Global_Convenio := connection.uconfiguracion.FieldValues['sIdConvenio'] ;

            filtro_check := False ;

      End ;
      cerrar := True;
      fin := False;
      Close;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Seleccion de Contrato', 'Al seleccionar contrato', 0);
          lErrorIniciar := True;
      end;
  end;

end;

procedure TfrmSeleccion2.cxGridOtrosCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin

   global_contrato := uempresas.FieldByName('sContrato').AsString;
end;

procedure TfrmSeleccion2.cxGridOtrosDblClick(Sender: TObject);
begin
  btnOk.Click;
end;

procedure TfrmSeleccion2.cxGridOtrosKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       btnOk.SetFocus;
end;

procedure TfrmSeleccion2.dxBarLargeButton12Click(Sender: TObject);
begin
  adentro := True;
  connection.zConnection.Disconnect;
  frmAcceso.ShowModal;
end;

procedure TfrmSeleccion2.dxBarLargeButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSeleccion2.dxBarLargeButton15Click(Sender: TObject);
begin
  frmAcerca.showModal
end;

procedure TfrmSeleccion2.FormActivate(Sender: TObject);
begin

    Try
      if global_usuario = 'admin' then
      begin
          AsignarSQL(uempresas,'acceso_empresa_rd_proyectos',pUpdate);
          FiltrarDataSet(uempresas,'Estatus,Usuario',['Activo',-1]);
          uempresas.Open;
      end
      else
      begin
          AsignarSQL(uempresas,'acceso_empresa_rd_proyectos',pUpdate);
          FiltrarDataSet(uempresas,'Estatus,Usuario',['Activo',global_usuario]);
          uempresas.Open;
      end;

      cerrar := False;

      Connection.qryUBusca.Active := False ;
      Connection.qryUBusca.SQL.Clear ;
      connection.qryUBusca.SQL.Add('select * from activos where iAccesos <= 1200') ;
      connection.qryUBusca.Open ;

      if connection.qryUBusca.RecordCount = 0 then
      begin
          messageDLG('La Version de Noíl ha Expirado, Actualice su version!', mtInformation, [mbOk], 0);
          exit;
      end
      else
      begin
          Connection.QryuBusca.Active := False ;
          Connection.QryuBusca.SQL.Clear ;
          connection.QryuBusca.SQL.Add('Update activos set iAccesos = iAccesos + 1 ') ;
          connection.QryuBusca.ExecSQL;
      end;
      global_activa_close := True;
      cxGridEmpresas.SetFocus;
 Except
   begin
      messageDLG('No se Reconoce la Estructura de Datos para Noíl Renta Diaria', mtError, [mbOk], 0);
      btnOk.Enabled := False;
      global_activa_close := False;
      lErrorIniciar := True;
   end;
 End;


end;

procedure TfrmSeleccion2.refresh ;
begin
    uTurnos.Active := False ;
    uTurnos.Active := False ;
    uTurnos.Params.ParamByName('Contrato').DataType := ftString ;
    uTurnos.Params.ParamByName('Contrato').Value    := uempresas.FieldByName('sContrato').AsString ;
    uTurnos.Open ;
    uTurnos.First ;

    global_turno := uTurnos.FieldValues['sIdTurno'];

end;


procedure TfrmSeleccion2.TreeObrasClick(Sender: TObject);
begin
  refresh;
end;

procedure TfrmSeleccion2.TreeObrasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    refresh
end;

procedure TfrmSeleccion2.TreeObrasKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    refresh
end;

end.
