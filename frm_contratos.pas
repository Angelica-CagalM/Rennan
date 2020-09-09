unit frm_contratos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ComCtrls, ToolWin, unitGenerales,
  StdCtrls, DBCtrls, Mask, frm_connection, DateUtils, frm_barra, Global,
  Menus, jpeg, ExtCtrls, ExtDlgs, RXDBCtrl, RxLookup,
  ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones, UnitValidaTexto, unitactivapop,
  rxToolEdit, rxCurrEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxGDIPlusClasses, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxProgressBar, cxLabel, cxCheckBox, cxMemo, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, MemDS, DBAccess, Uni, frm_barraH2, cxSplitter,
  frm_barraH1, unittbotonespermisos, dxLayoutcxEditAdapters, dxLayoutContainer,
  dxLayoutControl;

type
  TfrmContratos = class(TForm)
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    ds_contratos: TDataSource;
    panelDatos: TPanel;
    label4: TLabel;
    label5: TLabel;
    label6: TLabel;
    label9: TLabel;
    label20: TLabel;
    label1: TLabel;
    label2: TLabel;
    label3: TLabel;
    label8: TLabel;
    label10: TLabel;
    grp1: TGroupBox;
    bImagen: TImage;
    OpenPicture: TOpenPictureDialog;
    ds_principal: TDataSource;
    ds_NucOrg: TDataSource;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_contratos: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    Grid_colUbicacion: TcxGridDBColumn;
    MItmContrato: TMenuItem;
    tsTipoObra: TcxDBComboBox;
    cxOrganizacion: TcxDBLookupComboBox;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    Label11: TLabel;
    cxMascara: TcxDBTextEdit;
    cxContrato: TcxDBTextEdit;
    cxDescripcion: TcxDBMemo;
    cxCliente: TcxDBMemo;
    cxPrincipal: TcxDBLookupComboBox;
    cxUbicacion: TcxDBTextEdit;
    cxLicitacion: TcxDBTextEdit;
    cxTitulo: TcxDBMemo;
    cxComentarios: TcxDBMemo;
    cxActivo: TcxDBCheckBox;
    cxgrdbtblvwGrid1DBTableView1Column1: TcxGridDBColumn;
    Label7: TLabel;
    cxLugar: TcxDBComboBox;
    contratos: TUniQuery;
    zPrincipal: TUniQuery;
    zq_NucOrg: TUniQuery;
    PanelSuperior: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    cxSplitterDatos: TcxSplitter;
    panelInferior: TPanel;
    frmBarraH21: TfrmBarraH2;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure grid_contratosCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Insertar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure bImagenClick(Sender: TObject);
    procedure grid_contratosEnter(Sender: TObject);

    procedure ActualizaContrato;
    procedure cxgrdbtblvwGrid1DBTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure cxgrdbtblvwGrid1DBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure PopupPrincipalPopup(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);

  private
    { Private declarations }     
    CopiaContrato:string;
  public
    { Public declarations }
  end;

var
  frmContratos: TfrmContratos;
  sientra: Byte;
  //utgrid: ticdbgrid;
  ContratoActual, ContratoAnterior: string;
  btnPermisos :String;
  titulo         : string;

implementation


{$R *.dfm}

procedure TfrmContratos.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmContratos.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxMemo) then
        tcxMemo(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmContratos.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxMemo) then
        tcxMemo(sender).Style.Color := global_color_SalidaERP;

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

procedure TfrmContratos.frmBarra1btnAddClick(Sender: TObject);
var
  QCopia:TZReadOnlyQuery;
  i:Integer;
  cName:string;
  Inicializar:Boolean;
begin

  Inicializar:=True;
  frmBarrah11.btnAddClick(Sender);
  OpcButton := 'New';

  contratos.Append;

  if Inicializar then
  begin
    contratos.FieldValues['IdEmpresa'] := 0;
    contratos.FieldValues['sTipoObra'] := 'ORDEN_TRABAJO';
    contratos.FieldValues['mComentarios'] := '*';
    contratos.FieldValues['sUbicacion'] := '*';
    contratos.FieldValues['lStatus'] := 'Activo';
    contratos.FieldValues['mCliente'] := '*';
    contratos.FieldValues['mDescripcion'] := '*';
    contratos.FieldValues['sMascara'] := '-';

    cxPrincipal.DataBinding.DataSource.DataSet.FieldByName('sContrato').AsString := zPrincipal.FieldByName('sContrato').AsString;
    contratos.FieldByName('sCodigo').AsString := cxPrincipal.DataBinding.DataSource.DataSet.FieldByName('sContrato').AsString;
    contratos.FieldByName('sContrato').AsString :='';
    cxActivo.Checked := True;
  end;
  cxContrato.SetFocus;
  frmBarraH11.btnPrinter.Enabled := False;
  cxContrato.Enabled := true;
end;

procedure TfrmContratos.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarraH11.btnEditClick(Sender);
  OpcButton := 'Edit';
  try
    //activapop(frmContratos, popupprincipal);
    contratos.Edit;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Proyectos', 'Al editar registro', 0);
      frmBarraH21.btnCancelClick(Sender);
    end;
  end;
  cxContrato.SetFocus;

  frmBarraH11.btnPrinter.Enabled := False;
  contratoAnterior := contratos.fieldvalues['sContrato'];

  cxContrato.Enabled := false;
  MessageDlg('El iId del Proyecto, no se puede editar ', mtInformation, [mbOk], 0);
end;

procedure TfrmContratos.frmBarra1btnPostClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField,Campo: tField;
  cadena,CadCampos,CadValues: string;
  i:Integer;

  //ARV
  MS: TMemoryStream;
begin

  CadCampos:='';
  CadValues:='';
  {Validacion del campo ID (caracteres validos)}
  if not validaTexto(nil, nil, 'Contrato', cxContrato.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  {Continua insercion de datos}
  try
    if cxContrato.Text = '' then
      cadena := cadena + #13 + '» Contrato';

    if tsTipoObra.Text = '' then
          cadena := cadena + #13 + '» Tipo de Obra';

    if cxDescripcion.Text = '' then
      cadena := cadena + #13 + '» Descripcion';

    if cxCliente.Text = '' then
      cadena := cadena + #13 + '» Cliente';

    if cxUbicacion.Text = '' then
      cadena := cadena + #13 + '» Ubicacion';

    if cxLicitacion.Text = '' then
      cadena := cadena + #13 + '» Licitacion';

    if cadena <> '' then
    begin
      MessageDlg('Existen Datos Vacíos Favor de Llenar.' + cadena, mtInformation, [mbOk], 0);
      exit;
    end;

    contratoActual := cxContrato.Text;

    if (contratos.FieldByName('bImagen').AsBytes = null) or (sientra = 10) then
    begin
      if OpenPicture.FileName <> '' then
      begin
        try
          try

            MS:= TMemoryStream.Create;

            bImagen.Picture.Graphic.SaveToStream(MS);
            MS.Position:=0;
            TBlobField(contratos.FieldByName('bImagen')).LoadFromStream(MS);
          finally
               //MS.Free;
          end;
//          BlobField := contratos.FieldByName('bImagen');
//          BS := contratos.CreateBlobStream(BlobField, bmWrite);
//          try
//            Pic := TJpegImage.Create;
//            try
//              Pic.LoadFromFile(OpenPicture.FileName);
//              Pic.SaveToStream(Bs);
//            finally
//              Pic.Free;
//            end;
//          finally
//            bS.Free
//          end
        except

        end
      end
      else
      begin
        MessageDlg('Agrega una Imagen al Nuevo Contrato ! ', mtInformation, [mbOk], 0);
        exit;
      end
    end;

    contratos.Post;

    //Buscamos el contrato de Barco...
    Connection.qryUBusca.Close;
    Connection.qryUBusca.Active := False;
    Connection.qryUBusca.SQL.Clear;
    Connection.qryUBusca.SQL.Add('select scontrato from rd_proyectos where sTipoObra = '+QuotedStr('BARCO')+' and sContrato = sCodigo ');
    Connection.qryUBusca.Open;

    if Connection.qryUBusca.RecordCount > 0 then
      global_contrato_barco := Connection.qryUBusca.FieldByName('sContrato').AsString
    else
      global_contrato_barco := '';

    Connection.QryUBusca2.Active := False;
    Connection.QryUBusca2.SQL.Clear;
    Connection.QryUBusca2.SQL.Add('select sSeccionImprime from configuracion where sContrato = :Contrato ');
    Connection.QryUBusca2.ParamByName('Contrato').AsString := global_contrato_barco;
    Connection.QryUBusca2.Open;

    if OpcButton = 'New' then
    begin
      Connection.qryUBusca.Active := False;
      Connection.qryUBusca.SQL.Clear;
      Connection.qryUBusca.SQL.Add('select * from configuracion where sContrato = :contrato');
      Connection.qryUBusca.Params.ParamByName('Contrato').DataType := ftString;
      if CopiaContrato='' then
        Connection.qryUBusca.Params.ParamByName('Contrato').Value := contratos.FieldValues['sContrato']
      else
        Connection.qryUBusca.Params.ParamByName('Contrato').AsString:=CopiaContrato;
      Connection.qryUBusca.Open;

      if (Connection.qryUBusca.RecordCount = 0) or (CopiaContrato<>'') then
      begin
        if CopiaContrato='' then
        begin
          connection.zUCommand.Active := False;
          connection.zUCommand.SQL.Clear;
          connection.zUCommand.SQL.Add('INSERT INTO configuracion ( sContrato, sIdConvenio, sNombre, sNombreCorto, sSeccionImprime) VALUES (:contrato, '+QuotedStr('C-00')+', :sNombre, :sNombreCorto, :sSeccionImp)');
          connection.zUCommand.Params.ParamByName('contrato').asString     := contratos.FieldByName('sContrato').AsString;
          connection.zUCommand.Params.ParamByName('sNombre').asString      := contratos.FieldByName('sContrato').asString;
          connection.zUCommand.Params.ParamByName('sNombreCorto').asString := contratos.FieldByName('sContrato').AsString;
          connection.zUCommand.Params.ParamByName('sSeccionImp').asString  := connection.QryUBusca2.FieldByName('sSeccionImprime').AsString;
          connection.zUCommand.ExecSQL;
        end
        else
          if (Connection.qryUBusca.RecordCount = 1)  then
          begin
            connection.zUCommand.Active := False;
            connection.zUCommand.SQL.Clear;
            connection.zUCommand.SQL.Text:= 'select * from configuracion where sContrato = :contrato';
            Connection.zUCommand.Params.ParamByName('Contrato').AsString:=contratos.FieldValues['sContrato'];
            Connection.zUCommand.Open;
            if Connection.zUCommand.RecordCount=0 then
            begin
              Connection.zUCommand.Append;
              Connection.zUCommand.CopyFields(Connection.qryUBusca);
              Connection.zUCommand.FieldByName('sContrato').AsString:=contratos.FieldValues['sContrato'];
              Connection.zUCommand.Post;
            end;
          end;

        connection.zUCommand.SQL.Clear;
        connection.zUCommand.SQL.Add('INSERT INTO turnos ( sContrato, sIdTurno, sDescripcion ) VALUES (:contrato , '+QuotedStr('A')+', '+QuotedStr('UNICO')+')');
        connection.zUCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zUCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
        connection.zUCommand.ExecSQL;

        connection.zUCommand.Active := False;
        connection.zUCommand.SQL.Clear;
        connection.zUCommand.SQL.Add('INSERT INTO convenios ( sContrato, sIdConvenio, sNumeroOrden, sDescripcion, dFecha, dFechaInicio, dFechaFinal, dMontoMN, dMontoDLL ) VALUES ' +
          '(:contrato , '+QuotedStr('C-00')+', '+QuotedStr('CC00')+','+QuotedStr('PLAZO DE EJECUCION PROYECTO')+', :fecha, :fechai, :fechaf, :montomn, :montodll)');
        connection.zUCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zUCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
        connection.zUCommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zUCommand.Params.ParamByName('fecha').value := date;
        connection.zUCommand.Params.ParamByName('fechai').DataType := ftDate;
        connection.zUCommand.Params.ParamByName('fechai').value := date;
        connection.zUCommand.Params.ParamByName('fechaf').DataType := ftDate;
        connection.zUCommand.Params.ParamByName('fechaf').value := date;
        connection.zUCommand.Params.ParamByName('montomn').DataType := ftFloat;
        connection.zUCommand.Params.ParamByName('montomn').value := 0;
        connection.zUCommand.Params.ParamByName('montodll').DataType := ftFloat;
        connection.zUCommand.Params.ParamByName('montodll').value := 0;
        connection.zUCommand.ExecSQL;

        //connection.zUCommand.ExecSQL ;

        if global_usuario <> 'ACCESO_TOTAL' then
        begin
          connection.zUCommand.Active := False;
          connection.zUCommand.SQL.Clear;
          connection.zUCommand.SQL.Add('INSERT INTO usuarios_proyectos ( sContrato, sIdUsuario ) VALUES ' +
            '(:contrato , :usuario)');
          connection.zUCommand.Params.ParamByName('contrato').DataType := ftString;
          connection.zUCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
          connection.zUCommand.Params.ParamByName('usuario').DataType := ftString;
          connection.zUCommand.Params.ParamByName('usuario').value := global_usuario;
          connection.zUCommand.ExecSQL;

                  //Ahora buscamos los usuarios que tengan habilitada la opcion de asignar contratos en autoo..
          connection.QryUBusca2.Active := False;
          connection.QryUBusca2.SQL.Clear;
          connection.QryUBusca2.SQL.Add('select sIdUsuario from usuarios where lAsignaFrentes = '+QuotedStr('Si'));
          connection.QryUBusca2.Open;

          while not connection.QryUBusca2.Eof do
          begin
            try
                            //Se inserta el nuevo contrato a los usuarios...
              connection.zUCommand.Active := False;
              connection.zUCommand.SQL.Clear;
              connection.zUCommand.SQL.Add('INSERT INTO usuarios_proyectos  ( sContrato, sIdUsuario ) VALUES ' +
                '(:contrato , :usuario)');
              connection.zUCommand.Params.ParamByName('contrato').DataType := ftString;
              connection.zUCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
              connection.zUCommand.Params.ParamByName('usuario').DataType := ftString;
              connection.zUCommand.Params.ParamByName('usuario').value := connection.QryUBusca2.FieldValues['sIdUsuario'];
              connection.zUCommand.ExecSQL;
            except

            end;
            connection.QryUBusca2.Next;
          end;

        end;

        //Ahora buscamos los usuarios que tengan habilitada la opcion de asignar contratos en autoo..
        connection.QryUBusca2.Active := False;
        connection.QryUBusca2.SQL.Clear;
        connection.QryUBusca2.SQL.Add('select * from tiposdemovimiento where sContrato =:Contrato and lAplicaNotaCampo ='+QuotedStr('Si'));
        connection.QryUBusca2.ParamByName('Contrato').AsString := global_contrato_barco;
        connection.QryUBusca2.Open;

        while not connection.QryUBusca2.Eof do
        begin
          try
            // Inserta los tipos de movimiento ....
            connection.zUCommand.Active := False;
            connection.zUCommand.SQL.Clear;
            connection.zUCommand.SQL.Add('INSERT INTO tiposdemovimiento ( sContrato, sIdTipoMovimiento, sDescripcion, sClasificacion, sMedida, sTipo, iOrden, lGrafica, iColor, dVentaMN, dVentaDLL, lGenera, lAplicaNotaCampo, lImprimeCeros ) VALUES ' +
                                        '(:contrato , :TipoMov, :descripcion, :clasificacion, :Medida, :Tipo, :iOrden, :Grafica, :Color, :VentaMn, :VentaDLL, :Genera, :AplicaNota, :ImprimeCero)');
            connection.zUCommand.Params.ParamByName('contrato').AsString      := contratos.FieldByName('sContrato').AsString;
            connection.zUCommand.Params.ParamByName('TipoMov').AsString       := connection.QryUBusca2.FieldByName('sIdTipoMovimiento').AsString;
            connection.zUCommand.Params.ParamByName('descripcion').AsString   := connection.QryUBusca2.FieldByName('sDescripcion').AsString;
            connection.zUCommand.Params.ParamByName('clasificacion').AsString := connection.QryUBusca2.FieldByName('sClasificacion').AsString;
            connection.zUCommand.Params.ParamByName('Medida').AsString        := connection.QryUBusca2.FieldByName('sMedida').AsString;
            connection.zUCommand.Params.ParamByName('Tipo').AsString          := connection.QryUBusca2.FieldByName('sTipo').AsString;
            connection.zUCommand.Params.ParamByName('iOrden').AsFloat         := connection.QryUBusca2.FieldByName('iOrden').AsFloat;
            connection.zUCommand.Params.ParamByName('Grafica').AsString       := connection.QryUBusca2.FieldByName('lGrafica').AsString;
            connection.zUCommand.Params.ParamByName('Color').AsString         := connection.QryUBusca2.FieldByName('iColor').AsString;
            connection.zUCommand.Params.ParamByName('VentaMN').AsFloat        := connection.QryUBusca2.FieldByName('dVentaMN').AsFloat;
            connection.zUCommand.Params.ParamByName('VentaDLL').AsFloat       := connection.QryUBusca2.FieldByName('dVentaDLL').AsFloat;
            connection.zUCommand.Params.ParamByName('Genera').AsString        := connection.QryUBusca2.FieldByName('lGenera').AsString;
            connection.zUCommand.Params.ParamByName('AplicaNota').AsString    := connection.QryUBusca2.FieldByName('lAplicaNotaCampo').AsString;
            connection.zUCommand.Params.ParamByName('ImprimeCero').AsString   := connection.QryUBusca2.FieldByName('lImprimeCeros').AsString;
            connection.zUCommand.ExecSQL;
          except
          end;
          connection.QryUBusca2.Next;
        end;

        kardex_almacen('Crea Proyecto No. [' + contratos.FieldByName('sContrato').AsString + ']', 'Otros Movimientos');

          MessageDlg('Los Datos se Guardaron Correctamente !', mtInformation, [mbOk], 0);
      end
      else
      begin
        messageDLG('El Contrato ya existe. Favor de Verificar', mtInformation, [mbOk], 0);
        exit;
      end;
    end
    else
    begin
          {Verificamos si aplica la modificacion de contratos}
      if ContratoActual <> ContratoAnterior then
             //ActualizaContrato;
    end;

    CopiaContrato:='';
    frmBarraH21.btnPostClick(Sender);
  except
    on e: exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Proyectos', 'Al salvar registro', 0);
      frmBarraH21.btnCancel.Click;

    end;
  end;
  PermisosBotones(frmContratos, btnPermisos);
  frmBarraH11.btnPrinter.Enabled := False;
  cxContrato.Enabled := true;
end;

procedure TfrmContratos.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarraH21.btnCancelClick(Sender);
  contratos.Cancel;

  PermisosBotones(frmContratos,btnPermisos);
  frmBarraH11.btnPrinter.Enabled := False;
  cxContrato.Enabled := true;
  CopiaContrato:='';
end;

procedure TfrmContratos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if contratos.RecordCount > 0 then
      if MessageDlg('Desea eliminar la información contenida en el proyecto '+contratos.FieldByName('sContrato').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
          if (contratos.FieldByName('sContrato').AsString = global_contrato) or (contratos.FieldByName('sTipoObra').AsString = 'Barco') then
             MessageDlg('No se puede eliminar el Proyecto actual, notifique al administrador del sistema.', mtInformation, [mbOk], 0)
          else
          begin
              kardex_almacen('Elimina Proyecto No. [' + contratos.FieldByName('sContrato').AsString + ']', 'Otros Movimientos');
              BarraMostrar(True,progreso, LabelProceso);
              {procedure BuscaElimina_datos(sParamTabla, sLlevaContrato, sLlevaFolio, sLlevaWbs, sLLevaAct, sParamContrato, sParamFolio, sParamWbs, sParamAct, sParamNuevoContrato, sParamNuevoFolio, sParamNuevaWbs, sParamNuevaAct : string; accion :string);}
              BuscaElimina_datos(1,'contratos', 'sContrato', '', '', '', contratos.FieldByName('sContrato').AsString, '', '', '', '', '', '', '', 'borrar', False, progreso);
              BarraMostrar(False,progreso, LabelProceso);
              contratos.Delete;
          end;
      end;
end;

procedure TfrmContratos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zPrincipal.Refresh;
  contratos.refresh;
end;

//procedure TfrmContratos.frmBarra1btnExitClick(Sender: TObject);
//begin
//  frmBarra1.btnExitClick(Sender);
//  close
//end;

procedure TfrmContratos.grid_contratosCellClick(Column: TColumn);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if frmBarraH21.btnCancel.Enabled = True then
     frmBarraH21.btnCancel.Click;

  if contratos.RecordCount > 0 then
  begin

      BlobField := contratos.FieldByName('bImagen');
      BS := contratos.CreateBlobStream(BlobField, bmRead);
      if bs.Size > 1 then
      begin
        try
          Pic := TJpegImage.Create;
          try
            Pic.LoadFromStream(bS);
            bImagen.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          bS.Free
        end
      end
      else
        if fileExists(global_ruta + 'MiImagen.jpg') then
           bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
        else
           bImagen.Picture := nil
  end
end;

procedure TfrmContratos.FormShow(Sender: TObject);
begin

  btnPermisos := global_btnPermisos;


   panelSuperior.Visible := True;
   panelInferior.Visible := False;
   panelDatos.Visible := False;
   cxSplitterDatos.Visible := False;
   dxLayoutItem13.Visible := False;

      titulo:='Contratos ';

      cxLeyenda.Caption:=titulo;


      //btnAgregar.Visible:=False;


      frmBarraH21.btnCancel.Click;
  sientra := 20;
  contratos.Active := False;
  contratos.SQL.Clear;
  contratos.SQL.Add('Select * From rd_proyectos Order By sContrato');
  contratos.Open;

  zPrincipal.Active := False;
  zPrincipal.Open;

  zq_NucOrg.Active:=False;
  AsignarSQL(zq_NucOrg, 'master_empresa', pUpdate);
  zq_NucOrg.Open;

  OpcButton := '';

  frmBarraH21.btnCancel.Click;
  contratos.Refresh;
  PermisosBotones(frmContratos, btnPermisos);
  frmBarraH11.btnPrinter.Enabled := False;
end;

procedure TfrmContratos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  contratos.Cancel;
  connection.ucontrato.Active := False;
  connection.ucontrato.Open;
  action := cafree;
end;

procedure TfrmContratos.Insertar1Click(Sender: TObject);
begin
  frmBarraH11.btnAdd.Click
end;

procedure TfrmContratos.Editar1Click(Sender: TObject);
begin
  frmBarraH11.btnEdit.Click
end;

procedure TfrmContratos.Registrar1Click(Sender: TObject);
begin
  frmBarraH21.btnPost.Click
end;

procedure TfrmContratos.Can1Click(Sender: TObject);
begin
  frmBarraH21.btnCancel.Click
end;

procedure TfrmContratos.PopupPrincipalPopup(Sender: TObject);
begin
  MItmContrato.Enabled:=False;
  if contratos.State=dsBrowse then
    MItmContrato.Enabled:=True;
end;

procedure TfrmContratos.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if frmBarraH21.btnCancel.Enabled = True then
    frmBarraH21.btnCancel.Click;

  if contratos.RecordCount > 0 then
  begin
    BlobField := contratos.FieldByName('bImagen');
    BS := contratos.CreateBlobStream(BlobField, bmRead);
    if bs.Size > 1 then
    begin
      try
        Pic := TJpegImage.Create;
        try
          Pic.LoadFromStream(bS);
          bImagen.Picture.Graphic := Pic;
        finally
          Pic.Free;
        end;
      finally
        bS.Free
      end
    end
    else
      if fileExists(global_ruta + 'MiImagen.jpg') then
        bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
      else
        bImagen.Picture := nil
  end

end;

procedure TfrmContratos.cxgrdbtblvwGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if frmBarraH21.btnCancel.Enabled = True then
    frmBarraH21.btnCancel.Click;

  if contratos.RecordCount > 0 then
  begin
    BlobField := contratos.FieldByName('bImagen');
    BS := contratos.CreateBlobStream(BlobField, bmRead);
    if bs.Size > 1 then
    begin
      try
        Pic := TJpegImage.Create;
        try
          Pic.LoadFromStream(bS);
          bImagen.Picture.Graphic := Pic;
        finally
          Pic.Free;
        end;
      finally
        bS.Free
      end
    end
    else
      if fileExists(global_ruta + 'MiImagen.jpg') then
        bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
      else
        bImagen.Picture := nil
  end

end;

procedure TfrmContratos.cxgrdbtblvwGrid1DBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if frmBarraH21.btnCancel.Enabled = True then
    frmBarraH21.btnCancel.Click;

  if contratos.RecordCount > 0 then
  begin
    BlobField := contratos.FieldByName('bImagen');
    BS := contratos.CreateBlobStream(BlobField, bmRead);
    if bs.Size > 1 then
    begin
      try
        Pic := TJpegImage.Create;
        try
          Pic.LoadFromStream(bS);
          bImagen.Picture.Graphic := Pic;
        finally
          Pic.Free;
        end;
      finally
        bS.Free
      end
    end
    else
      if fileExists(global_ruta + 'MiImagen.jpg') then
        bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
      else
        bImagen.Picture := nil
  end


end;

procedure TfrmContratos.Eliminar1Click(Sender: TObject);
begin
  frmBarraH11.btnDelete.Click
end;

procedure TfrmContratos.Refresh1Click(Sender: TObject);
begin
  frmBarraH11.btnRefresh.Click
end;

//procedure TfrmContratos.Salir1Click(Sender: TObject);
//begin
//  frmBarra1.btnExit.Click
//end;

procedure TfrmContratos.bImagenClick(Sender: TObject);

begin
  if (contratos.State = dsInsert) or (contratos.State = dsEdit) then
  begin
    OpenPicture.Title := 'Inserta Imagen';
    if OpenPicture.Execute then
    begin
      try
        sientra := 10;
        bImagen.Picture.LoadFromFile(OpenPicture.FileName);
      except
        if fileExists(global_ruta + 'MiImagen.jpg') then
          bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
        else
          bImagen.Picture := nil
      end
    end
  end
end;

procedure TfrmContratos.btnAddClick(Sender: TObject);
var
  QCopia:TZReadOnlyQuery;
  i:Integer;
  cName:string;
  Inicializar:Boolean;
begin
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);

    panelInferior.Visible := True;
    panelDatos.Visible := True;
    cxSplitterDatos.Visible := True;

 Inicializar:=True;
  frmBarrah11.btnAddClick(Sender);
  OpcButton := 'New';

  contratos.Append;

  if Inicializar then
  begin
    contratos.FieldValues['IdEmpresa'] := 0;
    contratos.FieldValues['sTipoObra'] := 'ORDEN_TRABAJO';
    contratos.FieldValues['mComentarios'] := '*';
    contratos.FieldValues['sUbicacion'] := '*';
    contratos.FieldValues['lStatus'] := 'Activo';
    contratos.FieldValues['mCliente'] := '*';
    contratos.FieldValues['mDescripcion'] := '*';
    contratos.FieldValues['sMascara'] := '-';

   // cxPrincipal.DataBinding.DataSource.DataSet.FieldByName('sCodigo').AsString := zPrincipal.FieldByName('sContrato').AsString;
//    cxPrincipal.DataBinding.DataSource.DataSet.FieldByName('sContrato').AsString := zPrincipal.FieldByName('sContrato').AsString;
//    contratos.FieldByName('sCodigo').AsString := cxPrincipal.DataBinding.DataSource.DataSet.FieldByName('sContrato').AsString;
    cxPrincipal.DataBinding.DataSource.DataSet.FieldByName('sCodigo').AsString := zPrincipal.FieldByName('sContrato').AsString;
    contratos.FieldByName('sContrato').AsString :='';
    cxActivo.Checked := True;
  end;
  cxContrato.SetFocus;
  frmBarraH11.btnPrinter.Enabled := False;
  cxContrato.Enabled := true;

end;

procedure TfrmContratos.btnCancelClick(Sender: TObject);
begin
 cxLeyenda.Caption:=titulo;
    //PanelSuperior.Visible:=False;
    panelInferior.Visible := False;
    PanelDatos.Visible := False;
    cxSplitterDatos.Visible := False;
    frmBarraH11.btnActive;
    grid_contratos.Enabled:=True;
    ds_contratos.DataSet.Cancel;
end;


procedure TfrmContratos.btnDeleteClick(Sender: TObject);
begin
 if contratos.RecordCount > 0 then
      if MessageDlg('Desea eliminar la información contenida en el proyecto '+contratos.FieldByName('sContrato').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
          if (contratos.FieldByName('sContrato').AsString = global_contrato) or (contratos.FieldByName('sTipoObra').AsString = 'Barco') then
             MessageDlg('No se puede eliminar el Proyecto actual, notifique al administrador del sistema.', mtInformation, [mbOk], 0)
          else
          begin
              kardex_almacen('Elimina Proyecto No. [' + contratos.FieldByName('sContrato').AsString + ']', 'Otros Movimientos');
              BarraMostrar(True,progreso, LabelProceso);
              {procedure BuscaElimina_datos(sParamTabla, sLlevaContrato, sLlevaFolio, sLlevaWbs, sLLevaAct, sParamContrato, sParamFolio, sParamWbs, sParamAct, sParamNuevoContrato, sParamNuevoFolio, sParamNuevaWbs, sParamNuevaAct : string; accion :string);}
              BuscaElimina_datos(1,'contratos', 'sContrato', '', '', '', contratos.FieldByName('sContrato').AsString, '', '', '', '', '', '', '', 'borrar', False, progreso);
              BarraMostrar(False,progreso, LabelProceso);
              contratos.Delete;
          end;
      end;
end;

procedure TfrmContratos.btnEditClick(Sender: TObject);
begin
//  cxLeyenda.Caption:=titulo+'[Editando]';
//    frmBarraH11.btnEditClick(Sender);
//    Pnl1.Visible:=True;
//    pnlBtn2.Visible := True;
//    cxSplitter1.Visible := False;
//    grid_contratos.Enabled:=False;
//    contratos.Edit;
//    cxContrato.SetFocus;
   //PanelSuperior.Visible:=True;

  panelInferior.Visible := True;
  PanelDatos.Visible := True;
  cxSplitterDatos.Visible := True;
 // frmBarraH11.btnEditClick(Sender);
  OpcButton := 'Edit';
  try
    //activapop(frmContratos, popupprincipal);
    contratos.Edit;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Proyectos', 'Al editar registro', 0);
     // frmBarraH21.btnCancelClick(Sender);
    end;
  end;
  cxContrato.SetFocus;

  //frmBarraH11.btnPrinter.Enabled := False;
  contratoAnterior := contratos.fieldvalues['sContrato'];

  cxContrato.Enabled := false;
  MessageDlg('El iId del Proyecto, no se puede editar ', mtInformation, [mbOk], 0);

end;

procedure TfrmContratos.btnPostClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField,Campo: tField;
  cadena,CadCampos,CadValues: string;
  i:Integer;

  //ARV
  MS: TMemoryStream;
begin

//   cxLeyenda.Caption:=titulo;
//    Pnl1.Visible:=False;
//    pnlBtn2.Visible := False;
//    frmBarraH11.Visible:=True;
//    grid_contratos.Enabled:=True;
//    //ds_contratos.DataSet.Post;

//     frmBarraH21.btnActive;
//     cxLeyenda.Caption:=titulo;
//     PanelInferior.Visible := False;
//     PanelDatos.Visible  :=False;
//     cxSplitterDatos.Visible := False;


  CadCampos:='';
  CadValues:='';
  {Validacion del campo ID (caracteres validos)}
  if not validaTexto(nil, nil, 'Contrato', cxContrato.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  {Continua insercion de datos}
 try
    if cxContrato.Text = '' then
      cadena := cadena + #13 + '» Contrato';

    if tsTipoObra.Text = '' then
          cadena := cadena + #13 + '» Tipo de Obra';

    if cxDescripcion.Text = '' then
      cadena := cadena + #13 + '» Descripcion';

    if cxCliente.Text = '' then
      cadena := cadena + #13 + '» Cliente';

    if cxUbicacion.Text = '' then
      cadena := cadena + #13 + '» Ubicacion';

    if cxLicitacion.Text = '' then
      cadena := cadena + #13 + '» Licitacion';

    if cadena <> '' then
    begin
      MessageDlg('Existen Datos Vacíos Favor de Llenar.' + cadena, mtInformation, [mbOk], 0);
      exit;
    end;



//    if (contratos.FieldByName('bImagen').AsBytes = null) or (sientra = 10) then
//    begin
      if OpenPicture.FileName <> '' then
      begin
        try
          try

            MS:= TMemoryStream.Create;

            bImagen.Picture.Graphic.SaveToStream(MS);
            MS.Position:=0;
            TBlobField(contratos.FieldByName('bImagen')).LoadFromStream(MS);
          finally
               //MS.Free;
          end;
//          BlobField := contratos.FieldByName('bImagen');
//          BS := contratos.CreateBlobStream(BlobField, bmWrite);
//          try
//            Pic := TJpegImage.Create;
//            try
//              Pic.LoadFromFile(OpenPicture.FileName);
//              Pic.SaveToStream(Bs);
//            finally
//              Pic.Free;
//            end;
//          finally
//            bS.Free
//          end
        except

        end
     end
      else
      begin
        MessageDlg('Agrega una Imagen al Nuevo Contrato ! ', mtInformation, [mbOk], 0);
        exit;
      end ;
  //  end;

           frmBarraH21.btnActive;
     cxLeyenda.Caption:=titulo;
     PanelInferior.Visible := False;
     PanelDatos.Visible  :=False;
     cxSplitterDatos.Visible := False;
    contratos.Post;

    //Buscamos el contrato de Barco...
    Connection.qryUBusca.Close;
    Connection.qryUBusca.Active := False;
    Connection.qryUBusca.SQL.Clear;
    Connection.qryUBusca.SQL.Add('select scontrato from rd_proyectos where sTipoObra = '+QuotedStr('BARCO')+' and sContrato = sCodigo ');
    Connection.qryUBusca.Open;

    if Connection.qryUBusca.RecordCount > 0 then
      global_contrato_barco := Connection.qryUBusca.FieldByName('sContrato').AsString
    else
      global_contrato_barco := '';

    Connection.QryUBusca2.Active := False;
    Connection.QryUBusca2.SQL.Clear;
    Connection.QryUBusca2.SQL.Add('select sSeccionImprime from configuracion where sContrato = :Contrato ');
    Connection.QryUBusca2.ParamByName('Contrato').AsString := global_contrato_barco;
    Connection.QryUBusca2.Open;

    if OpcButton = 'New' then
    begin
      Connection.qryUBusca.Active := False;
      Connection.qryUBusca.SQL.Clear;
      Connection.qryUBusca.SQL.Add('select * from configuracion where sContrato = :contrato');
      Connection.qryUBusca.Params.ParamByName('Contrato').DataType := ftString;
      if CopiaContrato='' then
        Connection.qryUBusca.Params.ParamByName('Contrato').Value := contratos.FieldValues['sContrato']
      else
        Connection.qryUBusca.Params.ParamByName('Contrato').AsString:=CopiaContrato;
      Connection.qryUBusca.Open;

      if (Connection.qryUBusca.RecordCount = 0) or (CopiaContrato<>'') then
      begin
        if CopiaContrato='' then
        begin
          connection.zUCommand.Active := False;
          connection.zUCommand.SQL.Clear;
          connection.zUCommand.SQL.Add('INSERT INTO configuracion ( sContrato, sIdConvenio, sNombre, sNombreCorto, sSeccionImprime) VALUES (:contrato, '+QuotedStr('C-00')+', :sNombre, :sNombreCorto, :sSeccionImp)');
          connection.zUCommand.Params.ParamByName('contrato').asString     := contratos.FieldByName('sContrato').AsString;
          connection.zUCommand.Params.ParamByName('sNombre').asString      := contratos.FieldByName('sContrato').asString;
          connection.zUCommand.Params.ParamByName('sNombreCorto').asString := contratos.FieldByName('sContrato').AsString;
          connection.zUCommand.Params.ParamByName('sSeccionImp').asString  := connection.QryUBusca2.FieldByName('sSeccionImprime').AsString;
          connection.zUCommand.ExecSQL;
        end
        else
          if (Connection.qryUBusca.RecordCount = 1)  then
          begin
            connection.zUCommand.Active := False;
            connection.zUCommand.SQL.Clear;
            connection.zUCommand.SQL.Text:= 'select * from configuracion where sContrato = :contrato';
            Connection.zUCommand.Params.ParamByName('Contrato').AsString:=contratos.FieldValues['sContrato'];
            Connection.zUCommand.Open;
            if Connection.zUCommand.RecordCount=0 then
            begin
              Connection.zUCommand.Append;
              Connection.zUCommand.CopyFields(Connection.qryUBusca);
              Connection.zUCommand.FieldByName('sContrato').AsString:=contratos.FieldValues['sContrato'];
              Connection.zUCommand.Post;
            end;
          end;

        connection.zUCommand.SQL.Clear;
        connection.zUCommand.SQL.Add('INSERT INTO turnos ( sContrato, sIdTurno, sDescripcion ) VALUES (:contrato , '+QuotedStr('A')+', '+QuotedStr('UNICO')+')');
        connection.zUCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zUCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
        connection.zUCommand.ExecSQL;

        connection.zUCommand.Active := False;
        connection.zUCommand.SQL.Clear;
        connection.zUCommand.SQL.Add('INSERT INTO convenios ( sContrato, sIdConvenio, sNumeroOrden, sDescripcion, dFecha, dFechaInicio, dFechaFinal, dMontoMN, dMontoDLL ) VALUES ' +
          '(:contrato , '+QuotedStr('C-00')+', '+QuotedStr('CC00')+','+QuotedStr('PLAZO DE EJECUCION PROYECTO')+', :fecha, :fechai, :fechaf, :montomn, :montodll)');
        connection.zUCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zUCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
        connection.zUCommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zUCommand.Params.ParamByName('fecha').value := date;
        connection.zUCommand.Params.ParamByName('fechai').DataType := ftDate;
        connection.zUCommand.Params.ParamByName('fechai').value := date;
        connection.zUCommand.Params.ParamByName('fechaf').DataType := ftDate;
        connection.zUCommand.Params.ParamByName('fechaf').value := date;
        connection.zUCommand.Params.ParamByName('montomn').DataType := ftFloat;
        connection.zUCommand.Params.ParamByName('montomn').value := 0;
        connection.zUCommand.Params.ParamByName('montodll').DataType := ftFloat;
        connection.zUCommand.Params.ParamByName('montodll').value := 0;
        connection.zUCommand.ExecSQL;

        //connection.zUCommand.ExecSQL ;

        if global_usuario <> 'ACCESO_TOTAL' then
        begin
          connection.zUCommand.Active := False;
          connection.zUCommand.SQL.Clear;
          connection.zUCommand.SQL.Add('INSERT INTO usuarios_proyectos ( sContrato, sIdUsuario ) VALUES ' +
            '(:contrato , :usuario)');
          connection.zUCommand.Params.ParamByName('contrato').DataType := ftString;
          connection.zUCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
          connection.zUCommand.Params.ParamByName('usuario').DataType := ftString;
          connection.zUCommand.Params.ParamByName('usuario').value := global_usuario;
          connection.zUCommand.ExecSQL;

                  //Ahora buscamos los usuarios que tengan habilitada la opcion de asignar contratos en autoo..
          connection.QryUBusca2.Active := False;
          connection.QryUBusca2.SQL.Clear;
          connection.QryUBusca2.SQL.Add('select sIdUsuario from usuarios where lAsignaFrentes = '+QuotedStr('Si'));
          connection.QryUBusca2.Open;

          while not connection.QryUBusca2.Eof do
          begin
            try
                            //Se inserta el nuevo contrato a los usuarios...
              connection.zUCommand.Active := False;
              connection.zUCommand.SQL.Clear;
              connection.zUCommand.SQL.Add('INSERT INTO usuarios_proyectos  ( sContrato, sIdUsuario ) VALUES ' +
                '(:contrato , :usuario)');
              connection.zUCommand.Params.ParamByName('contrato').DataType := ftString;
              connection.zUCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
              connection.zUCommand.Params.ParamByName('usuario').DataType := ftString;
              connection.zUCommand.Params.ParamByName('usuario').value := connection.QryUBusca2.FieldValues['sIdUsuario'];
              connection.zUCommand.ExecSQL;
            except

            end;
            connection.QryUBusca2.Next;
          end;

        end;

        //Ahora buscamos los usuarios que tengan habilitada la opcion de asignar contratos en autoo..
        connection.QryUBusca2.Active := False;
        connection.QryUBusca2.SQL.Clear;
        connection.QryUBusca2.SQL.Add('select * from tiposdemovimiento where sContrato =:Contrato and lAplicaNotaCampo ='+QuotedStr('Si'));
        connection.QryUBusca2.ParamByName('Contrato').AsString := global_contrato_barco;
        connection.QryUBusca2.Open;

        while not connection.QryUBusca2.Eof do
        begin
          try
            // Inserta los tipos de movimiento ....
            connection.zUCommand.Active := False;
            connection.zUCommand.SQL.Clear;
            connection.zUCommand.SQL.Add('INSERT INTO tiposdemovimiento ( sContrato, sIdTipoMovimiento, sDescripcion, sClasificacion, sMedida, sTipo, iOrden, lGrafica, iColor, dVentaMN, dVentaDLL, lGenera, lAplicaNotaCampo, lImprimeCeros ) VALUES ' +
                                        '(:contrato , :TipoMov, :descripcion, :clasificacion, :Medida, :Tipo, :iOrden, :Grafica, :Color, :VentaMn, :VentaDLL, :Genera, :AplicaNota, :ImprimeCero)');
            connection.zUCommand.Params.ParamByName('contrato').AsString      := contratos.FieldByName('sContrato').AsString;
            connection.zUCommand.Params.ParamByName('TipoMov').AsString       := connection.QryUBusca2.FieldByName('sIdTipoMovimiento').AsString;
            connection.zUCommand.Params.ParamByName('descripcion').AsString   := connection.QryUBusca2.FieldByName('sDescripcion').AsString;
            connection.zUCommand.Params.ParamByName('clasificacion').AsString := connection.QryUBusca2.FieldByName('sClasificacion').AsString;
            connection.zUCommand.Params.ParamByName('Medida').AsString        := connection.QryUBusca2.FieldByName('sMedida').AsString;
            connection.zUCommand.Params.ParamByName('Tipo').AsString          := connection.QryUBusca2.FieldByName('sTipo').AsString;
            connection.zUCommand.Params.ParamByName('iOrden').AsFloat         := connection.QryUBusca2.FieldByName('iOrden').AsFloat;
            connection.zUCommand.Params.ParamByName('Grafica').AsString       := connection.QryUBusca2.FieldByName('lGrafica').AsString;
            connection.zUCommand.Params.ParamByName('Color').AsString         := connection.QryUBusca2.FieldByName('iColor').AsString;
            connection.zUCommand.Params.ParamByName('VentaMN').AsFloat        := connection.QryUBusca2.FieldByName('dVentaMN').AsFloat;
            connection.zUCommand.Params.ParamByName('VentaDLL').AsFloat       := connection.QryUBusca2.FieldByName('dVentaDLL').AsFloat;
            connection.zUCommand.Params.ParamByName('Genera').AsString        := connection.QryUBusca2.FieldByName('lGenera').AsString;
            connection.zUCommand.Params.ParamByName('AplicaNota').AsString    := connection.QryUBusca2.FieldByName('lAplicaNotaCampo').AsString;
            connection.zUCommand.Params.ParamByName('ImprimeCero').AsString   := connection.QryUBusca2.FieldByName('lImprimeCeros').AsString;
            connection.zUCommand.ExecSQL;
          except
          end;
          connection.QryUBusca2.Next;
        end;

        kardex_almacen('Crea Proyecto No. [' + contratos.FieldByName('sContrato').AsString + ']', 'Otros Movimientos');

          MessageDlg('Los Datos se Guardaron Correctamente !', mtInformation, [mbOk], 0);
      end
      else
      begin
        messageDLG('El Contrato ya existe. Favor de Verificar', mtInformation, [mbOk], 0);
        exit;
      end;
    end
    else
    begin
          {Verificamos si aplica la modificacion de contratos}
      if ContratoActual <> ContratoAnterior then
             //ActualizaContrato;
    end;

    CopiaContrato:='';
   frmBarraH21.btnPostClick(Sender);
  except
    on e: exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Proyectos', 'Al salvar registro', 0);
      frmBarraH21.btnCancel.Click;
    end;
  end;

  frmBarraH21.btnActive;
  cxLeyenda.Caption:=titulo;
  PanelInferior.Visible := False;
  PanelDatos.Visible  :=False;
  cxSplitterDatos.Visible := False;
  contratoActual := cxContrato.Text;

  PermisosBotones(frmContratos, btnPermisos);
//
  frmBarraH11.btnPrinter.Enabled := False;
  cxContrato.Enabled := true;
end;

procedure TfrmContratos.btnRefreshClick(Sender: TObject);
begin
  zPrincipal.Refresh;
  contratos.refresh;
end;

procedure TfrmContratos.grid_contratosEnter(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if frmBarraH21.btnCancel.Enabled = True then
    frmBarraH21.btnCancel.Click;

  if contratos.RecordCount > 0 then
  begin
    BlobField := contratos.FieldByName('bImagen');
    BS := contratos.CreateBlobStream(BlobField, bmRead);
    if bs.Size > 1 then
    begin
      try
        Pic := TJpegImage.Create;
        try
          Pic.LoadFromStream(bS);
          bImagen.Picture.Graphic := Pic;
        finally
          Pic.Free;
        end;
      finally
        bS.Free
      end
    end
    else
      if fileExists(global_ruta + 'MiImagen.jpg') then
        bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
      else
        bImagen.Picture := nil
  end
end;

procedure TfrmContratos.ActualizaContrato;
var
  base, tabla, campo, cad: string;
  datos: array[1..300] of string;
  i, x: Integer;
begin
  connection.qryUBusca.Active := False;
  connection.qryUBusca.SQL.Clear;
  connection.qryUBusca.SQL.Add('Show tables');
  connection.qryUBusca.Open;
  base := 'Tables_in_' + global_db;
  i := 1;
  while not connection.qryUBusca.Eof do
  begin
    tabla := connection.qryUBusca.FieldValues[base];
    connection.QryUBusca2.Active := False;
    connection.QryUBusca2.SQL.Clear;
    connection.QryUBusca2.SQL.Add('describe ' + tabla + ' ');
    connection.QryUBusca2.Open;

    if connection.QryUBusca2.RecordCount > 0 then
    begin
      while not connection.QryUBusca2.Eof do
      begin
        if connection.QryUBusca2.FieldValues['Field'] <> 'sNumeroOrden' then
        begin
          if connection.QryUBusca2.FieldValues['Field'] = 'sContrato' then
          begin
            datos[i] := tabla;
            i := i + 1;
          end;
        end;
        connection.QryUBusca2.Next;
      end;
    end;
    connection.qryUBusca.Next;
  end;

     // Actualiza todos los registros..
  if connection.qryUBusca.RecordCount > 0 then
  begin
    for x := 1 to i - 1 do
    begin
      tabla := datos[x];
      connection.qryUBusca.Active := False;
      connection.qryUBusca.SQL.Clear;
      connection.qryUBusca.SQL.Add('update ' + tabla + ' set sContrato = :Nuevo where sContrato = :Contrato ');
      connection.qryUBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryUBusca.Params.ParamByName('Contrato').Value := ContratoAnterior;
      connection.qryUBusca.Params.ParamByName('Nuevo').DataType := ftString;
      connection.qryUBusca.Params.ParamByName('Nuevo').Value := ContratoActual;
      connection.qryUBusca.ExecSQL;
    end;
  end;
  messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);
end;

end.

