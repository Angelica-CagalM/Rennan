unit UFrmEnviarCorreo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxMemo,
  dxSkinsdxBarPainter, dxBar, cxClasses, idSmtp, IdMessage, IdAttachmentFile,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,  IdAttachment,
  IdSSLOpenSSLHeaders, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ExtCtrls, cxButtons, StrUtils, unitGenerales,  frm_connection, global, DdeMan,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, MemDS, DBAccess, Uni,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxDBEdit, UnitEnviarEmail;

type
  TFrmEnviarCorreo = class(TForm)
    dxLyLayoutControl1Group_Root: TdxLayoutGroup;
    ly1: TdxLayoutControl;
    cxTextDireccionCorreo: TcxTextEdit;
    dxlytmly1Item1: TdxLayoutItem;
    cxmMensaje: TcxMemo;
    dxlytmly1Item2: TdxLayoutItem;
    dxBarManager1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    btnEnviar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    cxTextAsunto: TcxTextEdit;
    dxlytmly1Item3: TdxLayoutItem;
    btnAdjuntar: TdxBarLargeButton;
    dlgOpen1: TOpenDialog;
    pnlAdjuntos: TPanel;
    zqEnviados: TUniQuery;
    zCorreo: TUniQuery;
    DataSource1: TDataSource;
    btnBusca: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    zDestino: TUniQuery;
    ds_destino: TDataSource;
    zMensaje: TUniQuery;
    ds_mensaje: TDataSource;
    reporte: TUniQuery;
    comboBox: TcxComboBox;
    procedure btnEnviarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAdjuntarClick(Sender: TObject);
    procedure cxTextDireccionCorreoKeyPress(Sender: TObject; var Key: Char);
    procedure cxTextDireccionCorreoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure drawAdjuntos(mensajeAdj: TIdMessage);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBuscaClick(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure comboBoxPropertiesChange(Sender: TObject);
  private
    acc: TCollection;
    Mensaje: TIdMessage;
    AdjuntoOtros: TIdAttachmentFile;
    Adjunto: TIdAttachmentFile;
    Botones: TcxButton;
    procedure ClickButton(Sender: TObject);
    procedure deleteAdjuntos(mensajeAdj: TIdMessage; Todos: Boolean = False);
    { Private declarations }
  public
    RutaArchivoAdjunto: string;
    pdf,frmAnterior:String;
    Function EnviarMensaje(sUsuario, sClave, sServidor, sAdjunto, sAsunto, sDestino, sMensaje: String; iPort:Integer; aplicaTLS:String): String;
    { Public declarations }
  end;

var
  FrmEnviarCorreo: TFrmEnviarCorreo;

implementation

uses
  UFrmConfigCorreo, UfrmBuscaCorreo, frm_abrereporte, frm_valida;

{$R *.dfm}

procedure TFrmEnviarCorreo.btnAdjuntarClick(Sender: TObject);
var
  Archivo: string;
begin
  try
    if dlgOpen1.Execute then
    begin
      Archivo := dlgOpen1.FileName;
      if Archivo <>'' then
      begin
        if FileExists(Archivo) then
          Adjunto := TIdAttachmentFile.Create(Mensaje.MessageParts, Archivo);
      end
      else
        Adjunto := nil;
    end;
  finally
    drawAdjuntos(Mensaje);
  end;
end;

procedure TFrmEnviarCorreo.btnBuscaClick(Sender: TObject);
begin
 Application.CreateForm(TFrmBuscaCorreo, FrmBuscaCorreo);
   if  FrmBuscaCorreo.ShowModal = mrOk then
    cxTextDireccionCorreo.Text := FrmBuscaCorreo.Result+cxTextDireccionCorreo.Text;
end;


//function separador (): String  ;
//var
// s: String;
// sl: TStringList;
// begin
// sl :=  TStringList.Create;
// s:= FrmBuscaCorreo.Result;
// sl.Delimiter := ',';
// sl.DelimitedText := s;
//end;

procedure TFrmEnviarCorreo.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEnviarCorreo.btnEnviarClick(Sender: TObject);
var
  msg: string;
  Adjunto: string;
begin
  if Length(Trim(RutaArchivoAdjunto)) = 0 then
    Adjunto := ''
  else
    Adjunto := RutaArchivoAdjunto;

  Adjunto := RutaArchivoAdjunto;

  if Connection.uContrato.FieldByName('sMascara').AsString = 'SUBSEA 7' then
    msg := Enviar_Email(zCorreo.FieldByName('Correo').AsString,
                zCorreo.FieldByName('Contrasena').AsString,
                zCorreo.FieldByName('SMTP').AsString,
                Adjunto,
                cxTextAsunto.Text,
                cxTextDireccionCorreo.Text,
                cxmMensaje.Text,
                zCorreo.FieldByName('Puerto').AsInteger,
                zCorreo.FieldByName('AplicaTLS').AsString)
  else
      msg := EnviarMensaje(zCorreo.FieldByName('Correo').AsString,
                zCorreo.FieldByName('Contrasena').AsString,
                zCorreo.FieldByName('SMTP').AsString,
                Adjunto,
                cxTextAsunto.Text,
                cxTextDireccionCorreo.Text,
                cxmMensaje.Text,
                zCorreo.FieldByName('Puerto').AsInteger,
                zCorreo.FieldByName('AplicaTLS').AsString);

  messageDlg('Estado de envío: '+msg, mtInformation, [mbOk],0);
  Close;
end;

procedure TFrmEnviarCorreo.ClickButton(Sender: TObject);
var
  LocIndex: Integer;
begin
  try
    try
      if Assigned(TcxButton(FindComponent('cxButton_' + IntToStr(Mensaje.MessageParts.Items[tcxbutton(Sender).tag].Index)))) then
      begin
        LocIndex := Mensaje.MessageParts.Items[tcxbutton(Sender).tag].Index;
        Mensaje.MessageParts.Delete(LocIndex);
        try
          TcxButton(FindComponent('cxButton_' + IntToStr(LocIndex))).Destroy;
        except
          ;
        end;
      end;
    finally
      DrawAdjuntos(Mensaje);
    end;
  except
    ;
  end;
end;



procedure TFrmEnviarCorreo.comboBoxPropertiesChange(Sender: TObject);
begin
         cxTextDireccionCorreo.Clear;
         if comboBox.ItemIndex = 0 then begin
            zMensaje.Active:=False;
            AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
            FiltrarDataSet(zMensaje,'Clasificacion',['VALIDA_PRESUPUESTO']);
            zMensaje.Open;

            zDestino.Active:=False;
            AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
            FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
            zDestino.Open;

            zDestino.First;
            while not zDestino.Eof do  begin
            cxTextDireccionCorreo.Text := zDestino.FieldByName('Mail').AsString+';'+ cxTextDireccionCorreo.Text;
            zDestino.Next;
            end;

           cxTextAsunto.Text := zMensaje.FieldByName('Asunto').AsString;
           cxmMensaje.Text := zMensaje.FieldByName('Mensaje').AsString;
         end
          else  begin

          zMensaje.Active:=False;
          AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
          FiltrarDataSet(zMensaje,'Clasificacion',['PRESUPUESTO']);
          zMensaje.Open;

          zDestino.Active:=False;
          AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
          FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
          zDestino.Open;

          zDestino.First;
          while not zDestino.Eof do  begin
          cxTextDireccionCorreo.Text := zDestino.FieldByName('Mail').AsString+';'+ cxTextDireccionCorreo.Text;
          zDestino.Next;
          end;

          cxTextAsunto.Text := zMensaje.FieldByName('Asunto').AsString;
          cxmMensaje.Text := zMensaje.FieldByName('Mensaje').AsString;
         END;
end;

procedure TFrmEnviarCorreo.cxTextDireccionCorreoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 // cxLookupComboBox1.Text :=cxTextDireccionCorreo.Text;
end;

procedure TFrmEnviarCorreo.cxTextDireccionCorreoKeyPress(Sender: TObject;
  var Key: Char);
var
  cadena : string;
  i : integer;
begin
    if ((key >= #64) and (key <=#90)) or ((key >= #97) and (key <=#122)) or (key=#45) or (key=#46) or (key=#95) or ((key >= #48) and (key <=#57))  then
    begin
       zqEnviados.Locate('correo',cxTextDireccionCorreo.Text, []);
       if zqEnviados.RecordCount > 0 then
       begin
        //  cxTextDireccionCorreo.Text := cxTextDireccionCorreo.Text + zqEnviados.FieldByName('correo').AsString;
       end;
    end;
end;

procedure TFrmEnviarCorreo.deleteAdjuntos(mensajeAdj: TIdMessage;
  Todos: Boolean);
var
  i: Integer;
  LocIndex: Integer;
begin
  try
    i := 0;
    if Todos then
    begin
      While i < mensajeAdj.MessageParts.Count  do
      begin
        if Assigned(TcxButton(FindComponent('cxButton_' + IntToStr(mensajeAdj.MessageParts.Items[i].Index)))) then
        begin
          LocIndex := mensajeAdj.MessageParts.Items[i].Index;
          TcxButton(FindComponent('cxButton_' + IntToStr(LocIndex))).Destroy;
          //mensajeAdj.MessageParts.Delete(LocIndex);
        end;
        Inc(i);
      end;
    end
    else
      if Assigned(TcxButton(FindComponent('cxButton_' + IntToStr(mensajeAdj.MessageParts.Items[i].Index)))) then
      begin
        LocIndex := mensajeAdj.MessageParts.Items[i].Index;
        TcxButton(FindComponent('cxButton_' + IntToStr(LocIndex))).Destroy;
        mensajeAdj.MessageParts.Delete(LocIndex);
      end;
  except
    raise;
  end;
end;

procedure TFrmEnviarCorreo.drawAdjuntos(mensajeAdj: TIdMessage);
var
  i: Integer;
begin
  try
    i := 0;
    deleteAdjuntos(Mensaje, True);
    While i < mensajeAdj.MessageParts.Count  do
    begin
      Botones := TcxButton.Create(Self);
      Botones.Caption := Leftstr(Copy(mensajeAdj.MessageParts.Items[i].FileName, 0, LastDelimiter('.', mensajeAdj.MessageParts.Items[i].FileName) - 1),7) + '...';
      Botones.Name := 'cxButton_' + IntToStr(mensajeAdj.MessageParts.Items[i].Index);
      Botones.Tag := mensajeAdj.MessageParts.Items[i].Index;
      Botones.Hint := Copy(mensajeAdj.MessageParts.Items[i].FileName, 0, LastDelimiter('.', mensajeAdj.MessageParts.Items[i].FileName) - 1);
      Botones.Width := 120;
      Botones.Height := 25;
      Botones.Parent := pnlAdjuntos;
      Botones.Align := alLeft;
      Botones.AlignWithMargins := True;
      botones.OptionsImage.Images := connection.cxIconos16;
      Botones.OptionsImage.ImageIndex := 12;
      Botones.OnClick := ClickButton;
      Inc(i);
    end;
  except
    raise;
  end;
end;

function TFrmEnviarCorreo.EnviarMensaje(sUsuario, sClave, sServidor, sAdjunto,
  sAsunto, sDestino, sMensaje: String; iPort: Integer; aplicaTLS:String): String;
var
  Cursor: TCursor;
  SMTP: TIdSMTP;
  IOHSOSSL :TIdSSLIOHandlerSocketOpenSSL;
 s: String;
 sl: TStringList;
 i: integer;
begin
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := crAppStart;

   IdSSLOpenSSLHeaders.Load;
    Result := 'Correo electrónico enviado.';
    if aplicaTLS  = 'Si' then
    begin
      IOHSOSSL := TIdSSLIOHandlerSocketOpenSSL.Create;
      IOHSOSSL.Destination := sServidor+':'+IntToStr(iPort);
      IOHSOSSL.Host := sServidor;
      IOHSOSSL.Port := iPort;
      IOHSOSSL.SSLOptions.Method := sslvTLSv1;
      IOHSOSSL.SSLOptions.VerifyMode := [];
      IOHSOSSL.SSLOptions.VerifyDepth := 0;
    end;
    //Cargar datos para componente de envio de correo.
    SMTP := TIdSMTP.Create(nil);
    if aplicaTLS  = 'Si' then
    begin
     SMTP.IOHandler := IOHSOSSL;
     SMTP.AuthType := satDefault;
     SMTP.UseTLS := utUseRequireTLS;
    end;
    SMTP.Username := sUsuario;
    SMTP.Password := sClave;
    SMTP.Host := sServidor;
    SMTP.Port := iPort;

    Mensaje.From.Name := sUsuario;
    Mensaje.From.Address := sUsuario;
    Mensaje.Subject := sAsunto;
    Mensaje.Body.Text := sMensaje;
    //Correos destino
    sl :=  TStringList.Create;
    s:= sDestino;
    sl.Delimiter := ';';
    sl.DelimitedText := s;

    for i := 0 to sl.Count -1  do
    BEGIN
      if sl[i] <> '' then
      begin
        Mensaje.Recipients.Add;
        Mensaje.Recipients.Items[i].Address := sl[i];
      end;
    END;


    try
      SMTP.Connect;
    except
      Result := 'Error al conectar con el servidor.';
    end;

    if SMTP.Connected then
    begin
      try
        SMTP.Send( Mensaje );
      except
        Result := 'Falló en el envio del correo electrónico.';
      end;

      try
        SMTP.Disconnect;
      except
        Result := 'Error al desconectar del servidor.';
      end;
    end;
  finally
    if Adjunto <> nil then
      FreeAndNil( Adjunto );

    FreeAndNil(Mensaje);
    FreeAndNil(SMTP);
    Screen.Cursor := Cursor;
    Self.Close;
  end;
end;

procedure TFrmEnviarCorreo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FileExists(PDF) then
    DeleteFile(PDF);
end;

procedure TFrmEnviarCorreo.FormCreate(Sender: TObject);
begin
 // if not AsignarSQL(zCorreo, 'master_configuracioncorreo', pReadOnly) then
 //   raise exception.Create(pErrorConsulta + ' [master_configuracioncorreo]');

  Mensaje := TIdMessage.Create(nil);
  Mensaje.AttachmentEncoding := 'UUE'  ;
  Mensaje.Clear;
  Mensaje.ContentType := 'multipart/related; type="text/html"';
end;

procedure TFrmEnviarCorreo.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  LocIdEmpresa: String;
begin
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

      if zCorreo.RecordCount = 0 then
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
      drawAdjuntos(Mensaje);
      //acc := TCollection.Create();
    finally
     // AutoFocus(TForm(Self));
      Screen.Cursor := Cursor;
    end;
  except
    on e: exception do
    begin
      if e.Message <> '***' then
        //MsgBox.ShowModal('Error.',pMensajeError + e.Message, cmtError, [cmbOK]);

      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;

         // relacionados al formulario de  frm_abrereporte 'desautorizar'
  if frmAnterior = 'frmAbreReporte' then
  begin
      if frmAbreReporte.cxLista.ItemIndex = 0   then begin
        comboBox.Visible:= False;
        zMensaje.Active:=False;
        AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zMensaje,'Clasificacion',['REQUISICION']);
        zMensaje.Open;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
        zDestino.Open;

        zDestino.First;
        while not zDestino.Eof do  begin
        cxTextDireccionCorreo.Text :=zDestino.FieldByName('Mail').AsString+';'+ cxTextDireccionCorreo.Text;
        zDestino.Next;
        end;

       cxTextAsunto.Text := zMensaje.FieldByName('Asunto').AsString;
       cxmMensaje.Text:= zMensaje.FieldByName('Mensaje').AsString;

      end;

       if frmAbreReporte.cxLista.ItemIndex = 1 then begin
        comboBox.Visible:= False;
        zMensaje.Active:=False;
        AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zMensaje,'Clasificacion',['ORDEN_COMPRA']);
        zMensaje.Open;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
        zDestino.Open;

        zDestino.First;
        while not zDestino.Eof do  begin
        cxTextDireccionCorreo.Text := zDestino.FieldByName('Mail').AsString+';'+ cxTextDireccionCorreo.Text;
        zDestino.Next;
        end;

       cxTextAsunto.Text := zMensaje.FieldByName('Asunto').AsString;
       cxmMensaje.Text := zMensaje.FieldByName('Mensaje').AsString;

      end;
//

       if frmAbreReporte.cxLista.ItemIndex = 2 then begin
        comboBox.Visible:= False;
        zMensaje.Active:=False;
        AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zMensaje,'Clasificacion',['ENTRADAS']);
        zMensaje.Open;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
        zDestino.Open;
        zDestino.First;

        while not zDestino.Eof do  begin
        cxTextDireccionCorreo.Text := zDestino.FieldByName('Mail').AsString +';'+ cxTextDireccionCorreo.Text;
        zDestino.Next;
        end;

       cxTextAsunto.Text := zMensaje.FieldByName('Asunto').AsString;
       cxmMensaje.Text := zMensaje.FieldByName('Mensaje').AsString;

      end;

      if frmAbreReporte.cxLista.ItemIndex = 3  then begin
        comboBox.Visible:= False;
        zMensaje.Active:=False;
        AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zMensaje,'Clasificacion',['SALIDAS']);
        zMensaje.Open;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
        zDestino.Open;

        zDestino.First;
        while not zDestino.Eof do  begin
        cxTextDireccionCorreo.Text := zDestino.FieldByName('Mail').AsString+';'+ cxTextDireccionCorreo.Text;
        zDestino.Next;
        end;

       cxTextAsunto.Text := zMensaje.FieldByName('Asunto').AsString;
       cxmMensaje.Text := zMensaje.FieldByName('Mensaje').AsString;

      end;

      if frmAbreReporte.cxLista.ItemIndex = 4  then begin
        comboBox.Visible:= False;
        zMensaje.Active:=False;
        AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zMensaje,'Clasificacion',['AVISO_EMBARQUE']);
        zMensaje.Open;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
        zDestino.Open;

        zDestino.First;
        while not zDestino.Eof do  begin
        cxTextDireccionCorreo.Text := zDestino.FieldByName('Mail').AsString+';'+ cxTextDireccionCorreo.Text;
        zDestino.Next;
        end;

       cxTextAsunto.Text := zMensaje.FieldByName('Asunto').AsString;
       cxmMensaje.Text := zMensaje.FieldByName('Mensaje').AsString;

      end;

      if frmAbreReporte.cxLista.ItemIndex = 5  then begin
        comboBox.Visible:= False;
        zMensaje.Active:=False;
        AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zMensaje,'Clasificacion',['PRESUPUESTO']);
        zMensaje.Open;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
        zDestino.Open;

        zDestino.First;
        while not zDestino.Eof do  begin
        cxTextDireccionCorreo.Text := zDestino.FieldByName('Mail').AsString+';'+ cxTextDireccionCorreo.Text;
        zDestino.Next;
        end;

       cxTextAsunto.Text := zMensaje.FieldByName('Asunto').AsString;
       cxmMensaje.Text := zMensaje.FieldByName('Mensaje').AsString;

      end;

  end;
      // relcionados al formulario de frm_valida
  if frmAnterior = 'frmValida' then
  begin
       if frmValida.cxLista.ItemIndex = 0 then begin
        comboBox.Visible:= False;
        zMensaje.Active:=False;
        AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zMensaje,'Clasificacion',['REQUISICION']);
        zMensaje.Open;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
        zDestino.Open;
        zDestino.First;

        while not zDestino.Eof do  begin
        cxTextDireccionCorreo.Text := zDestino.FieldByName('Mail').AsString +';'+ cxTextDireccionCorreo.Text;
        zDestino.Next;
        end;

       cxTextAsunto.Text := zMensaje.FieldByName('Asunto').AsString;
       cxmMensaje.Text := zMensaje.FieldByName('Mensaje').AsString;

      end;

       if frmValida.cxLista.ItemIndex = 1 then begin
        comboBox.Visible:= False;
        zMensaje.Active:=False;
        AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zMensaje,'Clasificacion',['ORDEN_COMPRA']);
        zMensaje.Open;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
        zDestino.Open;
        zDestino.First;

        while not zDestino.Eof do  begin
        cxTextDireccionCorreo.Text := zDestino.FieldByName('Mail').AsString +';'+ cxTextDireccionCorreo.Text;
        zDestino.Next;
        end;

       cxTextAsunto.Text := zMensaje.FieldByName('Asunto').AsString;
       cxmMensaje.Text := zMensaje.FieldByName('Mensaje').AsString;

      end;

       if frmValida.cxLista.ItemIndex = 2 then begin
        comboBox.Visible:= False;
        zMensaje.Active:=False;
        AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zMensaje,'Clasificacion',['SALIDAS']);
        zMensaje.Open;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
        zDestino.Open;
        zDestino.First;

        while not zDestino.Eof do  begin
        cxTextDireccionCorreo.Text := zDestino.FieldByName('Mail').AsString +';'+ cxTextDireccionCorreo.Text;
        zDestino.Next;
        end;

       cxTextAsunto.Text := zMensaje.FieldByName('Asunto').AsString;
       cxmMensaje.Text := zMensaje.FieldByName('Mensaje').AsString;

      end;

        if frmValida.cxLista.ItemIndex = 3 then begin
        comboBox.Visible:= False;
        zMensaje.Active:=False;
        AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zMensaje,'Clasificacion',['ENTRADAS']);
        zMensaje.Open;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
        zDestino.Open;
        zDestino.First;

        while not zDestino.Eof do  begin
        cxTextDireccionCorreo.Text := zDestino.FieldByName('Mail').AsString +';'+ cxTextDireccionCorreo.Text;
        zDestino.Next;
        end;

       cxTextAsunto.Text := zMensaje.FieldByName('Asunto').AsString;
       cxmMensaje.Text := zMensaje.FieldByName('Mensaje').AsString;

      end;


       if  frmValida.cxLista.ItemIndex = 4 then  BEGIN
        comboBox.Visible:= False;
        zMensaje.Active:=False;
        AsignarSQL(zMensaje,'configura_mail_mensaje',pUpdate);
        FiltrarDataSet(zMensaje,'Clasificacion',['AVISO_EMBARQUE']);
        zMensaje.Open;

        zDestino.Active:=False;
        AsignarSQL(zDestino,'configura_mail_destino',pUpdate);
        FiltrarDataSet(zDestino,'IdConfiguracion',[zMensaje.FieldByName('IdConfiguracion').AsString]);
        zDestino.Open;

        zDestino.First;
        while not zDestino.Eof do  begin
        cxTextDireccionCorreo.Text := zDestino.FieldByName('Mail').AsString+';'+ cxTextDireccionCorreo.Text;
        zDestino.Next;
        end;

       cxTextAsunto.Text := zMensaje.FieldByName('Asunto').AsString;
       cxmMensaje.Text := zMensaje.FieldByName('Mensaje').AsString;
       END;

       if  frmValida.cxLista.ItemIndex = 5 then  begin
          comboBox.Visible:= True;
          comboBox.ItemIndex := 0;
       end;


  end;
end;

procedure TFrmEnviarCorreo.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmEnviarCorreo.EnterControl(Sender: TObject);
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

procedure TFrmEnviarCorreo.SalidaControl(Sender: TObject);
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


end.
