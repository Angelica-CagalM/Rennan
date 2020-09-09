unit frm_acceso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, frm_connection, global, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, Sockets, DB, strUtils,
  ADOdb,   ExtCtrls, jpeg,   ComCtrls, ZDataset, IniFiles,
  ZSqlProcessor, UnitTIniTracer, Menus, OleCtrls, ShockwaveFlashObjects_TLB,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White, cxButtons,
  dxSkinsdxBarPainter, cxClasses, dxBar, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxGDIPlusClasses, ImgList,
  cxListView, cxGroupBox, cxImage, UnitGenerales,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList,
  ZAbstractRODataset, ZAbstractDataset, MemDS, DBAccess, Uni;

  const
	InputBoxMessage = WM_USER + 200;

type
  Tfrmacceso = class(TForm)
    StatusBar: TStatusBar;
    Label4: TLabel;
    Label3: TLabel;
    ZqScript: TZSQLProcessor;
    imgIcons: TcxImageList;
    cxImageList1: TcxImageList;
    cxImage1: TcxImage;
    cxGroupBox1: TcxGroupBox;
    lbServidorbd: TLabel;
    lbUsuario: TLabel;
    lbPassword: TLabel;
    lblBase: TLabel;
    lbPuerto: TLabel;
    lbIdioma: TLabel;
    sDataName: TcxComboBox;
    tsPassword: TcxTextEdit;
    tsIdUsuario: TcxTextEdit;
    cmbServer: TcxComboBox;
    btnConexion: TcxButton;
    tsPuerto: TcxTextEdit;
    ComboIdioma: TcxComboBox;
    DBs: TcxListView;
    btnAdelante: TcxButton;
    btnAbortar: TcxButton;
    Label2: TLabel;
    Label1: TLabel;
    zaux: TZQuery;
    UniQuery1: TUniQuery;
    procedure btnAdelanteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAbortarClick(Sender: TObject);
    procedure tsPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdUsuarioEnter(Sender: TObject);
    procedure tsIdUsuarioExit(Sender: TObject);
    procedure tsPasswordEnter(Sender: TObject);
    procedure tsPasswordExit(Sender: TObject);
    procedure cmbServerEnter(Sender: TObject);
    procedure cmbServerExit(Sender: TObject);
    procedure cmbServerKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure sDataNameEnter(Sender: TObject);
    procedure sDataNameExit(Sender: TObject);
    procedure sDataNameKeyPress(Sender: TObject; var Key: Char);
    procedure cmbServerChange(Sender: TObject);
    procedure SetTransparentForm(AHandle: THandle; AValue: byte = 0);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    function TestServer: boolean;
    procedure comboIdiomaClick(Sender: TObject);
    procedure DBsDblClick(Sender: TObject);
    procedure DBsKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdUsuarioEditing(Sender: TObject; var CanEdit: Boolean);
    procedure cxImage2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure InputBoxSetPasswordChar(var Msg: TMessage); message InputBoxMessage;
    //procedure WMCommand(var msg:TwmCommand);message WM_COMMAND;

  private
    { Private declarations }
    // procedure WMCommand(var Msg: TWMCommand); message WM_COMMAND;
    procedure GeneraBDs( Query : TZReadOnlyQuery );//Martin Samuel
  public
    { Public declarations }
    salir: boolean;
    dbGralExiste : Boolean;
  end;

const
  WS_EX_LAYERED = $80000;
  LWA_COLORKEY = 1;
  LWA_ALPHA = 2;

type
  TSetLayeredWindowAttributes = function(
    hwnd: HWND; // handle to the layered window
    crKey: TColor; // specifies the color key
    bAlpha: byte; // value for the blend function
    dwFlags: DWORD // action
    ): BOOL; stdcall;

var
  frmacceso: Tfrmacceso;
  intentos: byte;
  mensaje: string;
  sVector, sVectorPort, sVectorUsu, sVectorPass: array[1..100] of string;
  listServ: tstringlist;
  Ini: TIniFile;
  FilePath: string;
  flagAccesoEnIni: boolean;
  sqlUsuarioExiste : string;

implementation

uses Utilerias, unitmanejofondo,
  frm_seleccion2, Func_Genericas, frm_AltaServidor;
{$R *.dfm}

procedure Tfrmacceso.SetTransparentForm(AHandle: THandle; AValue: byte = 0);
var
  Info: TOSVersionInfo;
  SetLayeredWindowAttributes: TSetLayeredWindowAttributes;
begin
  //Check Windows version
  Info.dwOSVersionInfoSize := SizeOf(Info);
  GetVersionEx(Info);
  if (Info.dwPlatformId = VER_PLATFORM_WIN32_NT) and
    (Info.dwMajorVersion >= 5) then
  begin
    SetLayeredWindowAttributes := GetProcAddress(GetModulehandle(user32), 'SetLayeredWindowAttributes');
    if Assigned(SetLayeredWindowAttributes) then
    begin
      SetWindowLong(AHandle, GWL_EXSTYLE, GetWindowLong(AHandle, GWL_EXSTYLE) or WS_EX_LAYERED);
         //Make form transparent
      SetLayeredWindowAttributes(AHandle, 0, AValue, LWA_ALPHA);
    end;
  end;
end;

procedure Tfrmacceso.btnAdelanteClick(Sender: TObject);
var
  zQuery, zQuery1: TUniQuery;
  iItemDB: Byte;
  lFoundDB: Boolean;
  QrAcceso: TUniQuery;
  Error: boolean;
  AlterUsuarios: TzsqlProcessor;
  Archidioma, Archivo: string;
  FileText: TextFile;
  appINI, inilogin : TIniFile;
  usuariodioma : string;
  sql :String;
  cadena: String;
begin
  salir := False;
  Error := false;

  if dbs.Visible = False then
  begin
    if (uppercase(tsidusuario.text) = 'ADMIN') then
      global_bduser := 'root';

    Global_Puerto := strToint(tsPuerto.Text);
    connection.uConnection.Disconnect;

    //if Global_ServAcceso = '' then
    if ((IntelUser = '') and (NoilPass = ''))  then
    begin
      connection.uConnection.Server := sVector[cmbServer.ItemIndex + 1];
      Global_ServAcceso := sVector[cmbServer.ItemIndex + 1];
      connection.uConnection.Port := StrToInt(sVectorPort[cmbServer.ItemIndex + 1]);
      Global_Puerto := connection.uConnection.Port;
      connection.uConnection.Username := sVectorUsu[cmbServer.ItemIndex + 1];//'root';
      global_bdUser := sVectorUsu[cmbServer.ItemIndex + 1];//'root';
      connection.uConnection.Password := sVectorPass[cmbServer.ItemIndex + 1];//NoilPass;
      global_bdPass := sVectorPass[cmbServer.ItemIndex + 1];
    end
    else
    begin
      Global_ServAcceso := sVector[cmbServer.ItemIndex + 1];//'localhost';
      connection.uConnection.Server := Global_ServAcceso;//sVector[cmbServer.ItemIndex + 1];//
      connection.uConnection.Port := Global_PortAcceso;//StrToInt(sVectorPort[cmbServer.ItemIndex + 1]);//;
      connection.uConnection.UserName := IntelUser;//sVectorUsu[cmbServer.ItemIndex + 1];//
      connection.uConnection.Password := NoilPass;//sVectorPass[cmbServer.ItemIndex + 1];//

      //Conecta zconneection  comentar para typhoon



      global_bdUser := IntelUser;//'root';
      global_bdPass := NoilPass;
    end;

    connection.uConnection.Database := '';
    //connection.uConnection.Catalog := '';
    try
      connection.uConnection.Connect;
    except
      on e: exception do
      begin
          //StatusBar.Panels[0].Text := e.Message ;
        if pos('Access denied', e.message) > 0 then
        begin
          if (uppercase(tsidusuario.Text) = 'ADMIN') and (uppercase(tspassword.Text) = uppercase(Noilpass)) then
          begin
            connection.uConnection.Disconnect;
            connection.uConnection.Username := 'root';
            connection.uConnection.Password := NoilPass;
            connection.uConnection.Database := '';
            //connection.uConnection.Catalog := '';
            try
              connection.uConnection.Connect;
            except
              on e: exception do
              begin
                messagedlg('No se Puede Conectar al Servidor.' + #13 + #10 +
                  'Error ' + e.ClassName + ': Verificar que los datos de conexión sean correctos.', mterror, [mbok], 0);
                //  'Informacion del error: ' + e.ClassName + ',' + e.Message, mterror, [mbok], 0);
                error := true;
              end;
            end;

            if not error then
            begin
              if connection.uConnection.Connected then
              begin
//                zqScript.Connection := connection.uConnection;
//                zqScript.ParamByName('password').AsString := NoilPass;
//                try
//                  zqScript.Execute;
//                except
//                  on E: exception do
//                  begin
//                    messagedlg('Ocurrio un error al Inicializar Parametros de Configuracion.' + #13 + #10 +
//                      'Informacion del error: ' + e.ClassName + ',' + e.Message, mterror, [mbok], 0);
//                    error := true;
//                  end;
//                end;

                if not error then
                begin
                  connection.uConnection.Disconnect;
                  connection.uConnection.Username := sVectorUsu[cmbServer.ItemIndex + 1];//IntelUser;
                  connection.uConnection.Password := sVectorPass[cmbServer.ItemIndex + 1];//noilPass;
                  connection.uConnection.Database := '';
                  //connection.uConnection.Catalog := '';
                  try
                    connection.uConnection.Connect;
                  except
                    on e: exception do
                    begin
                      messagedlg('No se Puede Conectar al Servidor.' + #13 + #10 +
                        'Informacion del error: ' + e.ClassName + ',' + e.Message, mterror, [mbok], 0);
                      error := true;
                    end;
                  end;

                end;
              end
              else
              begin
                application.MessageBox('No se Logra tener Comunicacion con este Servidor.' + #13 + #10 +
                  'Notifiquelo al Administrador del Sistema, para verificar los parametros de Conexion.', 'Noíl');

              end;
            end;
          end
          else
          begin
            if (uppercase(tsidusuario.Text) = 'ADMIN') then
              messagedlg('No se Puede Conectar al Servidor.' + #13 + #10 +
                'La Contraseña del Administrador No es Correcta ', mtInformation, [mbok], 0)

            else
                messagedlg('No se Puede Conectar al Servidor.' + #13 + #10 +
                  'Error ' + e.ClassName + ': Verificar que los datos de conexión sean correctos.', mterror, [mbok], 0);

//              messagedlg('No se Puede Conectar al Servidor.' + #13 + #10 +
  //              'Informacion del Problema: ' + e.ClassName + ',' + e.Message, mterror, [mbok], 0);
            error := true;
          end;

        end
        else
        begin
          Global_ServAcceso := '';
          error := true;
          messagedlg('No se Puede Conectar al Servidor.' + #13 + #10 +
                  'Error ' + e.ClassName + ': Verificar que los datos de conexión sean correctos.', mterror, [mbok], 0);

          //messagedlg('No se Puede Conectar al Servidor.' + #13 + #10 +
          //  'Informacion del Problema: ' + e.ClassName + ',' + e.Message, mterror, [mbok], 0);
//          end;
        end;

      end;
    end;

    if not error then
    begin
      if connection.uConnection.Connected then
      begin
        QrAcceso := TUniQuery.Create(nil);
        QrAcceso.Connection := connection.uConnection;
        QrAcceso.SQL.Text := 'select * from adminintel.acceso where user=' + quotedstr(global_bduser) +
          ' and servidor=' + quotedstr(Global_ServAcceso);

        if not error then
        begin
          Connection.uConnection.Disconnect;
          connection.uConnection.Server := Global_ServAcceso;//sVector[cmbServer.ItemIndex + 1];
          connection.uConnection.Port := Global_Puerto;;//StrToInt(sVectorPort[cmbServer.ItemIndex + 1]);//Global_Puerto;
          connection.uConnection.UserName := global_bdUser;//sVectorUsu[cmbServer.ItemIndex + 1];//'root';
          connection.uConnection.Password := global_bdPass;//sVectorPass[cmbServer.ItemIndex + 1];//NoilPass;
          connection.uConnection.Database := '';

          try
            connection.uConnection.Connect;
          except
            on E: exception do
            begin
              error := true;
              StatusBar.Panels[0].Text := e.Message;
              begin
                messagedlg('Error generado:' + #13 + #10 + e.Message, mterror, [mbok], 0);
              end;
            end;
          end;

          if not error then
          begin
            try
              if connection.uConnection.Connected then
              begin
                DBs.Clear;
                dbGralExiste := False;

                zQuery := TUniQuery.Create(Self);
                zQuery.Connection := connection.uConnection;
                zQuery.Active := False;
                zQuery.SQL.Clear;
                zQuery.SQL.Add('show databases');
                zQuery.Open;

                while Not zQuery.Eof do
                begin
                  if (zQuery.FieldByName('Database').AsString = 'db_gral') then
                  begin
                    dbGralExiste := True;
                  end;
                  zQuery.Next;
                end;

                if dbGralExiste then
                begin
                  Connection.uConnection.Disconnect;
                  connection.uConnection.Database := 'db_gral';

                  with connection.zUCommand do
                  begin
                    Active := False;
                    SQL.Clear;
                    SQL.Add('select ' +
                            'ub.useer, ' +
                            'ub.nombrees, ' +
                            'b.bd_user ' +
                            'from user_bd ub ' +
                            'inner join bd b ' +
                            'on b.id_bd = ub.id_bds ' +
                            'where useer = :useer ' +
                            'group by b.bd_user');
                    Params.ParamByName('useer').AsString := tsIdUsuario.Text;
                    Open;
                  end;

                  if connection.zUCommand.RecordCount > 0 then
                  begin
                    while Not connection.zUCommand.Eof do
                    begin
                      zQuery.Active := False;
                      zQuery.SQL.Clear;
                      zQuery.SQL.Add('show databases');
                      zQuery.Open;

                      iItemDB := 0;
                      lFoundDB := False;
                      while not zQuery.Eof do
                      begin
                        if (zQuery.FieldValues['database'] <> 'mysql') and (zQuery.FieldValues['database'] <> 'information_schema') and (zQuery.FieldValues['database'] <> 'test') and (zQuery.FieldValues['database'] <> 'chat') and (zQuery.FieldValues['database'] <> 'chat_php') and (zQuery.FieldValues['database'] <> 'ic_exsoll') and (zQuery.FieldValues['database'] <> 'joomla') and (zQuery.FieldValues['database'] <> 'phpmyadmin') and (zQuery.FieldValues['database'] <> 'adminintel') and (zQuery.FieldValues['database'] <> 'performance_schema') then
                        begin
                          if (connection.zUCommand.FieldByName('bd_user').AsString = zQuery.FieldByName('Database').AsString) then
                          begin
                            //sDataName.Properties.Items.Add(zQuery.FieldValues['database']);
                            with DBs.Items.Add do
                            begin
                              Caption := zQuery.FieldByName( 'database' ).AsString;
                              ImageIndex := 2;
                            end;

                            DBs.Visible := True;
                            DBs.ItemIndex := 0;
                            Dbs.SetFocus;

                            if zQuery.FieldValues['database'] = global_db then
                              if lFoundDB then
                                iItemDB := zQuery.RecNo - 2
                              else
                                iItemDB := zQuery.RecNo - 1
                          end;
                        end
                        else
                          lFoundDB := True;
                        zQuery.Next;
                      end;

                      connection.zUCommand.Next;
                    end;
                  end
                  else
                  begin
                    application.MessageBox('Este usuario no tiene asignado ninguna BD. Vuelva a intentarlo', 'Noíl');
                    Exit;
                  end;
                end
                else
                begin
                  zQuery.Active := False;
                  zQuery.SQL.Clear;
                  zQuery.SQL.Add('show databases');
                  zQuery.Open;

                  iItemDB := 0;
                  lFoundDB := False;
                  while not zQuery.Eof do
                  begin
                    if (zQuery.FieldValues['database'] <> 'mysql') and (zQuery.FieldValues['database'] <> 'information_schema') and (zQuery.FieldValues['database'] <> 'test') and (zQuery.FieldValues['database'] <> 'chat') and (zQuery.FieldValues['database'] <> 'chat_php') and (zQuery.FieldValues['database'] <> 'ic_exsoll') and (zQuery.FieldValues['database'] <> 'joomla') and (zQuery.FieldValues['database'] <> 'phpmyadmin') and (zQuery.FieldValues['database'] <> 'adminintel') and (zQuery.FieldValues['database'] <> 'performance_schema') then
                    begin
                      with DBs.Items.Add do
                      begin
                        Caption := zQuery.FieldByName( 'database' ).AsString;
                        ImageIndex := 2;
                      end;

                      DBs.Visible := True;
                      DBs.ItemIndex := 0;
                      Dbs.SetFocus;

                      if zQuery.FieldValues['database'] = global_db then
                        if lFoundDB then
                          iItemDB := zQuery.RecNo - 2
                        else
                          iItemDB := zQuery.RecNo - 1
                    end
                    else
                      lFoundDB := True;
                    zQuery.Next;
                  end;
                end;
              end;
            except
              on E: exception do
              begin
                messagedlg('Error generado:' + #13 + #10 + e.Message, mterror, [mbok], 0);
              end;
            end;

          end;
        end;
      end
      else
      begin
        application.MessageBox('No se Logra tener Comunicacion con este Servidor.' + #13 + #10 +
          'Notifiquelo al Administrador del Sistema, para verificar los parametros de Conexion.', 'Noíl');
      end;
    end;
  end
  else
  begin
    if intentos = 3 then
    begin
      application.MessageBox('Intento accesar en mas de 3 ocaciones. Saliendo del Sistema', 'Noíl');
      salir := true;
      close;
    end;

    if connection.uConnection.Connected then
      if ( DBs.SelCount = 1 ) and ( DBs.selected.Caption <> '' ) then
      begin
        //global_Puerto := strToint(tsPuerto.Text);
        global_db := DBs.selected.Caption;
        global_ipServer := Global_ServAcceso;//sVector[cmbServer.ItemIndex + 1];
        connection.uConnection.Disconnect;
        connection.uConnection.Server := Global_ServAcceso;//sVector[cmbServer.ItemIndex + 1];
        connection.uConnection.Database := global_db;
        connection.uConnection.Port := Global_Puerto;
        connection.uConnection.Username := global_bduser;
        connection.uConnection.Password := global_bdpass;
        connection.uConnection.Connect;

        //Conectar zConection
        connection.zConnection.Disconnect;
        connection.zConnection.HostName := Global_ServAcceso;
        connection.zConnection.Database := global_db;
        connection.zConnection.Port := Global_Puerto;
        connection.zConnection.User := global_bduser;
        connection.zConnection.Password := global_bdpass;
        connection.zConnection.Connect;

      end;

    if connection.uConnection.Connected then
    begin
      if (tsIdUsuario.Text = 'ACCESO_TOTAL') or (uppercase(tsidusuario.text) = 'ADMIN') then
      begin
        if uppercase(tsidusuario.text) = 'ADMIN' then
        begin
          connection.zUCommand.Active := false;
          connection.zUCommand.SQL.Text := 'select AES_DECRYPT(u.sPassword,'+ quotedstr('AES2016')+ ') as sPassword,u.* from usuarios as u where u.sidusuario=' + quotedstr(tsidusuario.text);
          try
            connection.zUCommand.Open;

          except
            on E: exception do
            begin
              error := true;
              StatusBar.Panels[0].Text := e.Message;
              showmessage(e.Message);
            end;
          end;

          if not error then
          begin
            if connection.zUCommand.recordcount = 0 then
            begin
              if uppercase(tspassword.text) = uppercase(Noilpass) then
              begin
//                AlterUsuarios := TzSqlProcessor.Create(nil);
//                AlterUsuarios.Connection := connection.uConnection;
//                AlterUsuarios.Script.Text := 'ALTER TABLE `usuarios` MODIFY COLUMN `sPassword` VARCHAR(50) COLLATE latin1_swedish_ci NOT NULL DEFAULT "" COMMENT "Contraseña";';
//
//                try
//                  AlterUsuarios.Execute;
//                except
//                  on E: exception do
//                  begin
//                    messagedlg('Ocurrio un error al Inicializar Parametros de Configuracion.' + #13 + #10 +
//                      'Informacion del error: ' + e.ClassName + ',' + e.Message, mterror, [mbok], 0);
//                    error := true;
//                  end;
//                end;

                if not error then
                begin
                  connection.qryUBusca.active := false;
                  connection.qryUBusca.SQL.text := 'insert into usuarios(sidusuario,spassword) values(:user,:pass)';
                  connection.qryUBusca.ParamByName('user').AsString := 'admin';
                  try
                    connection.qryUBusca.ParamByName('pass').AsString := encripta(Noilpass);
                    connection.qryUBusca.ExecSQL;
                    connection.zUCommand.Refresh;
                  except
                    on e: exception do
                    begin
                      messagedlg('No se Pudo Cargar el Administrador.' + #13 + #10 +
                        'Informacion del error: ' + e.ClassName + ',' + e.Message, mterror, [mbok], 0);
                      error := true;
                    end;
                  end;
                end;
              end else if (tsIdUsuario.Text = 'admin') and (tsPassword.Text = 'admin') then
              begin
                global_usuario := UpperCase(tsIdUsuario.Text);
                Exit;
              end
              else
              begin
                application.MessageBox('Ese Usuario No EXISTE', 'Noíl');
                error := true;
              end;
            end;

            if not error then
            begin
              if connection.zUCommand.recordcount = 1 then
              begin
                try
                  if (uppercase((connection.zUCommand.FieldByName('spassword').AsString)) <> uppercase(tspassword.Text)) and (uppercase(connection.zUCommand.FieldByName('spassword').AsString) <> uppercase(tspassword.Text)) then
                  begin
                    application.MessageBox('PASSWORD INCORRECTO ', 'Noíl');
                    error := true;
                  end;
                except
                  application.MessageBox('PASSWORD INCORRECTO ', 'Noíl');
                  error := true;
                end;
              end
              else
              begin
                application.MessageBox('Ese Usuario No EXISTE', 'Noíl');
                error := true;
              end;
            end;
          end;
        end;

        if not error then
        begin

          global_contrato := '';
          global_usuario := uppercase(tsIdUsuario.Text);
          global_password := '';
          global_nombre := 'ADMINISTRADOR';
          global_activo := '';
          global_grupo := 'ACCESO_TOTAL';
//          global_ip := ip_client.LocalHostAddr;
          close;
        end;
      end
      else
      begin
        global_Server := cmbServer.Text;
        global_ipserver := Global_ServAcceso;//sVector[cmbServer.ItemIndex + 1];

            //si no existe idiomas crea el esp
        Connection.qryUBusca.Active := False;
        Connection.qryUBusca.SQL.Clear;
        Connection.qryUBusca.SQL.Add('SELECT * FROM idiomas');
        Connection.qryUBusca.open;

        if Connection.qryUBusca.RecordCount = 0 then
        begin
          Connection.qryUBusca.Active := False;
          Connection.qryUBusca.SQL.Clear;
          Connection.qryUBusca.SQL.Add('INSERT INTO idiomas (sIdIdioma, sDescripcion, lDefault, sServidorBd, sUsuario, sContrasena, sSelecBd, sPuerto, sLenguaje, sBtnAcceso, sBtnSalir)'+
          'VALUES ("ESP","Español","Si","Servidor de la BD", "Usuario", "Contraseña","Seleccionar BD", "Puerto", "Idioma", "Iniciar Sesion", "Salir")');
          Connection.qryUBusca.ExecSQL;
                   connection.qryUBusca.Active := False;
          connection.qryUBusca.SQL.Clear;
          connection.qryUBusca.SQL.Add('Select * From idiomas');
          connection.qryUBusca.Open;
          try
            connection.qryUBusca2.Active := false;
            connection.qryUBusca2.SQL.Clear;
            connection.qryUBusca2.SQL.Add('UPDATE programas SET sIdIdioma =:idioma ');
            connection.qryUBusca2.Params.ParamByName('idioma').Value := connection.qryUBusca.FieldByName('sIdIdioma').AsString;
            connection.qryUBusca2.ExecSQL;
          Except

          end;
         end;

  {      try
          Archidioma := extractfilepath(application.exename) + 'noillogini.ini';
          if fileExists(Archidioma) then
          begin
            appINI := TIniFile.Create(ChangeFileExt(Application.ExeName,'logini.ini'));
            appINI.WriteString('USUIDIOMA',tsIdUsuario.Text,comboIdioma.text) ;
            appINI.WriteString('IDIOMA','$ESP','Español');
            appINI.WriteString('IDIOMA','#lbServidorbd:',Connection.qryUBusca.FieldByName('sServidorBd').AsString);
            appINI.WriteString('IDIOMA','#lbUsuario:',Connection.qryUBusca.FieldByName('sUsuario').AsString);
            appINI.WriteString('IDIOMA','#lbPassword:',Connection.qryUBusca.FieldByName('sContrasena').AsString);
            appINI.WriteString('IDIOMA','#lblBase:',Connection.qryUBusca.FieldByName('sSelecBd').AsString);
            appINI.WriteString('IDIOMA','#lbPuerto:',Connection.qryUBusca.FieldByName('sPuerto').AsString);
            appINI.WriteString('IDIOMA','#lbIdioma:',Connection.qryUBusca.FieldByName('sLenguaje').AsString);
            appINI.WriteString('IDIOMA','#btnAdelante:',Connection.qryUBusca.FieldByName('sBtnAcceso').AsString);
            appINI.WriteString('IDIOMA','#btnAbortar:',Connection.qryUBusca.FieldByName('sBtnSalir').AsString);
          end;
        except

        end;
   }
        connection.qryUBusca.Active := False;
        connection.qryUBusca.SQL.Clear;

        connection.qryUBusca.SQL.text :='select AES_DECRYPT(u.sPassword,'+QuotedStr('AES2016') +') as sPassword,u.*   from usuarios u where sIdUsuario = :usuario and lActivo=:Activo';
        //connection.qryUBusca.params.ParamByName('Usuario').DataType := ftString;
        connection.qryUBusca.ParamByName('Usuario').AsString := tsIdUsuario.Text;
        //connection.qryUBusca.ParamByName('AES').AsString := 'AES2016';
        connection.qryUBusca.ParamByName('Activo').AsString := 'Si';
        connection.qryUBusca.Open;

        cadena:=connection.qryUBusca.FieldByName('sPassword').AsString;
        if connection.qryUBusca.RecordCount > 0 then
        begin
          if (cadena = tsPassword.Text) then
          begin
            try
              global_contrato := '';
              global_usuario := connection.qryUBusca.FieldValues['sIdUsuario'];
              global_password      := tsPassword.Text;
              global_nombre := connection.qryUBusca.FieldValues['sNombre'];
              global_activo := connection.qryUBusca.fieldvalues['lActivo'];
              global_grupo := connection.qryUBusca.fieldvalues['sIdGrupo'];
              global_notificaoc := connection.qryUBusca.fieldvalues['NotificaOCVencido'];
              global_notificaocMail := connection.qryUBusca.fieldvalues['sMail'];
              global_AplicaMto := connection.qryUBusca.fieldvalues['AplicarMantenimiento'];
//              Global_ip := ip_client.LocalHostAddr;
              Close;
            except
//              with connection.qryUBusca do
//              begin
//                Active := False;
//                SQL.Clear;
//                SQL.Add('select sContrato from rd_proyectos');
//                Open;
//              end;

//              if connection.qryUBusca.RecordCount = 0 then
//              begin
//                with connection.qryUBusca2 do
//                begin
//                  Active := False;
//                  SQL.Clear;
//                  SQL.Add('delete from usuarios');
//                  ExecSQL;
//                end;
//                application.MessageBox('Ese Usuario No EXISTE', 'Noíl');
//              end;
            end;

            try
              Archivo := extractfilepath(application.exename) + '/Nomina/Nominalogin.ini';
              if fileExists(Archivo) then
              begin
                inilogin := TIniFile.Create(Archivo);
                inilogin.WriteString('Configuración','Usuario',global_usuario) ;
                inilogin.WriteString('Configuración','Password',global_password);
                inilogin.WriteString('Configuración','BD',global_db);
                inilogin.WriteString('Configuración','Host',sVector[cmbServer.ItemIndex + 1]);
                inilogin.WriteString('Configuración','ERP','1');
                inilogin.Free;
              end;

              Archivo := extractfilepath(application.exename) + '/Tablero/Tablerologin.ini';
              if fileExists(Archivo) then
              begin
                inilogin := TIniFile.Create(Archivo);
                inilogin.WriteString('Configuración','Host',sVector[cmbServer.ItemIndex + 1]) ;
                inilogin.WriteString('Configuración','HostName',global_server);
                inilogin.WriteString('Configuración','Database',global_db);
                inilogin.WriteString('Configuración','Port',IntToStr(Global_Puerto));
                inilogin.WriteString('Configuración','User',global_usuario);
                inilogin.WriteString('Configuración','UserName',global_nombre);
                inilogin.WriteString('Configuración','ERP','1');
                inilogin.Free;
              end;
            except

            end;
          end
          else
            application.MessageBox('PASSWORD INCORRECTO ', 'Noíl');
        end
        else
        begin
          application.MessageBox('Ese Usuario No EXISTE', 'Noíl');
          global_usuario := tsIdUsuario.Text;
          global_password := tsPassword.Text;
          global_nombre := 'Falta introducir informacion general del usuario seleccionado';

          global_activo := 'Si';
          global_grupo := '';
          intentos := intentos + 1;
          beep;
          Exit;
        end
      end
    end;
  end;


  if dbs.visible then
  begin
    dbs.SetFocus;
    dbs.Items[0].Selected := true;
  end;

end;


procedure Tfrmacceso.FormShow(Sender: TObject);
var
  MiArchivo: string;
  FileText: TextFile;
  wCadena: WideString;
  sTipo: string;
  iVector,
    iPos: Byte;
  sPortAcceso: string;
  IniTracer: TIniTracer;
  appINI: TIniFile;
  detectar, idioma: string;
  i: integer;
  oldcursor: tcursor;
  noEncuentraIdioma: Boolean;
  Continuar: Boolean;
  st : TStringlist;
  FileINI, FileDS : String;
  pc :String;
begin

  global_idiomaDesc := comboidioma.Text;

  ShowWindow(Application.Handle, SW_SHOW);

  cmbServer.Properties.Items.Clear;
  StatusBar.Panels[0].Text := '';
  sPortAcceso := '3306';
  //Limpia vectores
  for iVector := 1 to 100 do
  begin
    sVector[iVector] := '';
    sVectorPort[iVector] := '';
    sVectorUsu[iVector] := '';
    sVectorPass[iVector] := '';
  end;

  iVector := 1;
  // Linea para encriptado de datos...
  pc := GetPCName+'_'+GetMACAdress;
  FileDS := extractfilepath(application.exename) + 'niol.ds';
  FileINI := extractfilepath(application.exename) + '\Recursos\darkcod_danger'+'.ini';
  if FileExists(FileDS) then
  begin
  try
    EncriptaFichero(FileDS, FileINI, 666);
    Continuar := True;
  except
    on E: Exception do
    begin
      Continuar := False;
    //  if FileExists(FileINI) then
    //    DeleteFile(FileINI);
      ShowMessage( 'Error: No se pudo Encriptar el fichero.' + #13 +
                   'Motivo: ' + E.Message);
    end;
  end;

  if Continuar = True then
  begin
    MiArchivo := FileINI;
  if not fileExists(MiArchivo) then
  begin
    IniTracer := TIniTracer.create(self, 'SOFTWARE\Noil', 'Noil', 'Noil', 'DSAI');
    MiArchivo := IniTracer.definirIni;
    cmbserver.Hint := Miarchivo;
    if (MiArchivo = '') or (not fileExists(MiArchivo)) then begin
      showmessage('No hay archivo de configuración de Archivo de Inicio, por favor indique uno');
      if IniTracer.cambiarIni = '' then
      begin
        showmessage('La aplicación no puede funcionar sin archivo de configuración, por lo tanto se cerrará');
        salir := true;
        close;
      end
      else
        showmessage('Es necesario volover a iniciar la aplicación para que el cambio de archivo de Inicio tenga efecto');
      PostMessage(Handle, WM_CLOSE, 0, 0);
      salir := true;
      close;
    end;
    IniTracer.Free;
  end;

  end;

  if ( Continuar = True) then
  begin
    //configuracion del sistema
    global_archivoini := MiArchivo;
    flagAccesoEnIni := False;

    ini := TIniFile.Create(global_archivoini);
    Global_ServAcceso := ini.readString('SYSTEM', 'SERV_ACCESO', '');
    sPortAcceso := ini.readString('SYSTEM', 'PORT_ACCESO', '');
    global_files := ini.readString('SYSTEM', 'FILES', extractfilepath(application.exename) + 'Reportes\');
    global_dias := ini.readInteger('SYSTEM', 'DIAS_ANTERIORES', 10);
    global_menu := ini.readString('SYSTEM', 'MENU_INICIAL', 'activo');
    global_ruta := ini.readString('SYSTEM', 'RUTA_SISTEMA', extractfilepath(application.exename));
    ini.free;
    //Para mostrar la version del exe
    Self.Caption := global_version + '  ['+Major_Version+'.'+Minor_Version+'.'+  Release_Version+'.'+Build_Version+ ' ]';
    frmSeleccion2.Caption := global_version + '  ['+Major_Version+'.'+Minor_Version+'.'+  Release_Version+'.'+Build_Version+ ' ]';
    Self.Label4.Caption :=global_version + '  ['+Major_Version+'.'+Minor_Version+'.'+  Release_Version+'.'+Build_Version+ ' ]';

    if sPortAcceso <> '' then flagAccesoEnIni := True;

    //bases de datos registradas en el ini
    //*********************************************************************************
    FilePath := MiArchivo;
    AssignFile(FileText, MiArchivo);
    Reset(FileText);

    while not Eof(FileText) do
    begin
      ReadLn(FileText, wCadena);
      if wCadena = '' then
        continue;
      if MidStr(wCadena, 1, 1) = '[' then
        sTipo := MidStr(wCadena, 1, Pos(']', wCadena))
      else
        if sTipo = '[DATA_BASE]' then
        begin
          st := TStringlist.Create;
          wCadena := StringReplace(wCadena, '=', ',',[rfReplaceAll]);
          st.CommaText := wCadena;
          sVector[iVector] := st[5];
          sVectorPort[iVector] := st[2];
          if st[3] = '' then sVectorUsu[iVector] := '' else sVectorUsu[iVector] := st[3];
          sVectorPass[iVector] := st[4];
          //sVector[iVector] := MidStr(wCadena, 1, Pos('=', wCadena) - 1);
//          wCadena := MidStr(wCadena, Pos('=', wCadena) + 1, Length(wCadena));
          cmbServer.Properties.Items.Add(st[1]);
//          cmbServer.Properties.Items.Add(wCadena);
          listserv.Add( st[1] + '=' + sVector[iVector]);
          iVector := iVector + 1;
        end;
    end;
    CloseFile(FileText);

    if global_files = '' then
      global_files := global_ruta + '\files\';

    intentos := 0;
    tsPassword.Text := '';

    try
      Global_PortAcceso := strtoint(sportacceso);

    except
      Global_PortAcceso := 3308;
    end;

    if cmbServer.Properties.Items.Count > 0 then
      cmbServer.ItemIndex := 0;
    cmbServer.SetFocus;

 //**************************************************************************************************************
  end;
  end;
  cmbServer.SetFocus;

  //Aplication.processmessages;
  comboidioma.itemindex := 0;

  if fileExists(FileINI) then
  begin
    try
      //EnLugar de Encriptar vamos a borrar el contenido del ini
      ini := TIniFile.Create(global_archivoini);
      ini.EraseSection('SYSTEM');
      ini.EraseSection('DATA_BASE');
      ini.free;
      //EncriptaFichero(FileINI,FileDS,666);
      FileDS := ''; FileINI:= '';
    except
      on E: Exception do
        ShowMessage( 'Error: No se pudo Encriptar el fichero.' + #13 +
                   'Motivo: ' + E.Message);
    end;
  end;
end;

procedure Tfrmacceso.AdvGlassButton1Click(Sender: TObject);
var
   i: Integer;      //Pos,
  NombreServ, MiArchivo: string;
  pwd : String;
  FileText: TextFile;
  wCadena: WideString;
  sTipo: string;
  iVector, iPos: Byte;
  Continuar : Boolean;
  st : TStringlist;
  FileINI, FileDS: String;
begin
  PostMessage(Handle, InputBoxMessage, 0, 0);
  pwd:=InputBox('¡Registro de Host para conexiones!', 'Ingresar contraseña:','');
  if pwd = '20Rultr' then
  begin

      Application.CreateForm(TfrmAltaServidor, frmAltaServidor);

      frmAltaServidor.ShowModal;

        if frmAltaServidor.ModalResult = mrOK then
        begin
          cmbServer.Properties.Items.Clear;
          StatusBar.Panels[0].Text := '';

          //Limpia vectores
          for iVector := 1 to 100 do
          begin
            sVector[iVector] := '';
            sVectorPort[iVector] := '';
            sVectorUsu[iVector] := '';
            sVectorPass[iVector] := '';
          end;

        iVector := 1;
        // Linea para encriptado de datos...
        FileDS := extractfilepath(application.exename) + 'niol.ds';
        FileINI := extractfilepath(application.exename) + 'noil.ini';
      try
        EncriptaFichero(FileDS, FileINI, 666, True);
        MiArchivo:= FileINI;
        Continuar := True;
      except
        on E: Exception do
        begin
          Continuar := False;
          ShowMessage( 'Error: No se pudo Encriptar el fichero.' + #13 +
                       'Motivo: ' + E.Message);
        end;
      end;

      FilePath := MiArchivo;
      AssignFile(FileText, MiArchivo);
      Reset(FileText);
      while not Eof(FileText) do
      begin
        ReadLn(FileText, wCadena);
        if wCadena = '' then
          continue;
        if MidStr(wCadena, 1, 1) = '[' then
          sTipo := MidStr(wCadena, 1, Pos(']', wCadena))
        else
          if sTipo = '[DATA_BASE]' then
          begin
            st := TStringlist.Create;
            wCadena := StringReplace(wCadena, '=', ',',[rfReplaceAll]);
            st.CommaText := wCadena;
            sVector[iVector] := st[5];
            sVectorPort[iVector] := st[2];
            if st[3] = '' then sVectorUsu[iVector] := '' else sVectorUsu[iVector] := st[3];
              sVectorPass[iVector] := st[4];
            //sVector[iVector] := MidStr(wCadena, 1, Pos('=', wCadena) - 1);

            cmbServer.Properties.Items.Add(st[1]);
            listserv.Add( st[1] + '=' + sVector[iVector]);
            iVector := iVector + 1;
          end;
      end;
      CloseFile(FileText);


      if cmbServer.Properties.Items.Count > 0 then
        cmbServer.ItemIndex := 0;
      cmbServer.SetFocus;

      if fileExists(FileINI) then
      begin
        try
          EncriptaFichero(FileINI,FileDS,666, True);
          FileINI:= ''; FileDS:='';
        except
        on E: Exception do
          ShowMessage( 'Error: No se pudo Encriptar el fichero.' + #13 +
                     'Motivo: ' + E.Message);
        end;
      end;

    end;
  end else
  MessageDlg('Contraseña incorrecta, no puede acceder a conexiones!', mtError, [mbOk], 0);
end;

procedure Tfrmacceso.btnAbortarClick(Sender: TObject);
begin

  salir := true;
  //exit;
  Self.Close;
end;

procedure Tfrmacceso.tsPasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    btnAdelante.SetFocus
end;

procedure Tfrmacceso.tsIdUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsPassword.SetFocus
end;

procedure Tfrmacceso.tsIdUsuarioEditing(Sender: TObject; var CanEdit: Boolean);
begin
  DBs.Clear;
  DBs.Visible := False;
end;

procedure Tfrmacceso.tsIdUsuarioEnter(Sender: TObject);
begin
  tsIdUsuario.Style.Color := global_color_entradaerp;
end;

procedure Tfrmacceso.tsIdUsuarioExit(Sender: TObject);
var
  Archidioma, sTipo: string;
  FileText: TextFile;
  appINI : TIniFile;
  usuariodioma : string;
  wCadena: WideString;
  iVector : Byte;
  sVector, lVector, uVector: array[1..100] of string;
  i: integer;
  noEncuentraIdioma: Boolean;
begin
{   if tsIdUsuario.Text = '' then
     begin
        comboIdioma.Text := 'Español';
        exit;
     end;
    iVector := 1;
    Archidioma := extractfilepath(application.exename) + 'noillogini.ini';
    FilePath := Archidioma;
    AssignFile(FileText, Archidioma);
    Reset(FileText);

    while not Eof(FileText) do
    begin
      ReadLn(FileText, wCadena);
      if wCadena = '' then
        continue;
      if MidStr(wCadena, 1, 1) = '[' then
        sTipo := MidStr(wCadena, 1, Pos(']', wCadena))
      else
        if sTipo = '[USUIDIOMA]' then
        begin
          lVector[iVector] := MidStr(wCadena, 1, Pos('=', wCadena) - 1);
{wCadena uVector[iVector] := MidStr(wCadena, Pos('=', wCadena) + 1, Length(wCadena));
          iVector := iVector + 1;
        end;
    end;

      for i := 0 to iVector do
        begin
          if lVector[i] = tsIdUsuario.Text then
          begin
            comboIdioma.Text := uVector[i];
            break;
          end
        end;

        CloseFile(FileText);
        comboidiomaClick(Sender);}
  tsIdUsuario.Style.Color := global_color_salidaerp;
end;

procedure Tfrmacceso.tsPasswordEnter(Sender: TObject);
begin
  tsPassword.Style.Color := global_color_entradaerp
end;

procedure Tfrmacceso.tsPasswordExit(Sender: TObject);
begin
  tsPassword.Style.Color := global_color_salidaerp;
end;

procedure Tfrmacceso.cmbServerEnter(Sender: TObject);
begin
  cmbServer.Style.Color := global_color_Entradaerp
end;

procedure Tfrmacceso.cmbServerExit(Sender: TObject);
begin
  cmbServer.Style.Color := global_color_Salidaerp;
end;

procedure Tfrmacceso.cmbServerKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsIdUsuario.SetFocus
end;

procedure Tfrmacceso.comboIdiomaClick(Sender: TObject);
var
  ini, idioma : String;
  MiArchivo: string;
  FileText: TextFile;
  wCadena: WideString;
  sTipo, sTipoObjeto: string;
  sNombreObjeto, sCaption : string;
  lEncuentraIdioma : boolean;
  slabel : tlabel;
begin
{     MiArchivo := extractfilepath(application.exename) + 'noillogini.ini';
    FilePath := MiArchivo;
    AssignFile(FileText, MiArchivo);
    Reset(FileText);

    while not Eof(FileText) do
    begin
       ReadLn(FileText, wCadena);
       if wCadena = '' then
          continue;
       if MidStr(wCadena, 1, 1) = '$' then
       begin
           sTipo :=  MidStr(wCadena, Pos('=', wCadena) + 1, Length(wCadena));
           if sTipo = comboIdioma.Text then
              lEncuentraIdioma := True;
       end;

       if lencuentraIdioma then
       begin
           sTipoObjeto :=  MidStr(wCadena, Pos('#',wCadena), 1);
           if sTipo = comboIdioma.Text then
           begin
               if sTipoObjeto = '#' then
               begin

                   sCaption := MidStr(wCadena, Pos('=', wCadena) + 1, Length(wCadena));
                   idioma :=   MidStr(wCadena,2,Pos(':', wCadena)-2);

                   if idioma = 'lbServidorbd' then
                   lbServidorbd.Caption := 'Host ( Server )';

                   if idioma = 'lbUsuario' then
                   lbUsuario.Caption := sCaption;

                   if idioma = 'lbPassword' then
                   lbPassword.Caption := sCaption;

                   if idioma = 'lblBase' then
                   lblBase.Caption := sCaption;

                   if idioma = 'lbPuerto' then
                   lbPuerto.Caption := sCaption;

                   if idioma = 'lbIdioma' then
                   lbIdioma.Caption := sCaption;

                   if idioma = 'btnAdelante' then
                   btnAdelante.Caption := sCaption;

                   if idioma = 'btnAbortar' then
                   btnAbortar.Caption := sCaption;
               end;
           end;
       end;

    end;
    CloseFile(FileText);
       global_idiomaDesc := comboIdioma.Text;
}
end;

procedure Tfrmacceso.cxImage2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrmacceso.DBsDblClick(Sender: TObject);
begin
  if dbs.SelCount = 1 then
    btnadelante.Click;
end;

procedure Tfrmacceso.DBsKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnAdelante.Click;
end;

procedure Tfrmacceso.FormActivate(Sender: TObject);
var
  InfoSize, H, RsltLen: Cardinal;
  VersionBlock: Pointer;
  Rslt: PVSFixedFileInfo;
begin
{  SetTransparentForm(Handle, 215);}
  InfoSize := GetFileVersionInfoSize(PChar(Application.ExeName), H);
  VersionBlock := AllocMem(InfoSize);
  try
    GetFileVersionInfo(PChar(Application.ExeName), H, InfoSize, VersionBlock);
    VerQueryValue(VersionBlock, '\', Pointer(Rslt), RsltLen);
  finally
    FreeMem(VersionBlock);
  end;

  lblBase.Visible := False;
  sDataName.Visible := False;
end;

procedure Tfrmacceso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{  try
    EncriptaFichero(extractfilepath(application.exename) + 'noil.ini', extractfilepath(application.exename) + 'niol.ds', 666);
  except
    on E: Exception do
      ShowMessage( 'Error: No se pudo Encriptar el fichero.' + #13 +
                   'Motivo: ' + E.Message);
  end;
 }
  AnimateWindow( Handle, 100, AW_HIDE or AW_VER_POSITIVE or AW_SLIDE );

end;

procedure Tfrmacceso.FormCreate(Sender: TObject);
var
  fileSkin: TextFile;
  sSkin, path: string;
begin
  path:=ExtractFilePath(ParamStr(0));
  ListServ := tstringlist.Create;
  DBs.Items.Clear;
  lErrorIniciar := False;
end;



procedure Tfrmacceso.btnSalirClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmacceso.sDataNameEnter(Sender: TObject);
begin
  sDataName.Style.Color := global_color_entradaerp
end;

procedure Tfrmacceso.sDataNameExit(Sender: TObject);
begin
  sDataName.Style.Color := global_color_salidaerp;
end;

procedure Tfrmacceso.sDataNameKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnAdelante.SetFocus
end;

procedure Tfrmacceso.cmbServerChange(Sender: TObject);
var
  sPuerto: Integer;
begin
  DBs.Visible := False;
  lblBase.Visible := False;
  sDataName.Visible := False;
  btnAdelante.Caption := 'Iniciar Sesion';
  Global_ServAcceso:= '';
end;

function Tfrmacceso.TestServer: boolean;
var
  hPuerto, sPuerto: Integer;
  VResult, continuar: Boolean;
  zQuery: tUniQuery;
begin
  Continuar := true;
  Vresult := false;
  try
    hPuerto := StrToInt(tsPuerto.Text);
  except
    hPuerto := -1;
  end;
  if hPuerto < 1 then
  begin
    ShowMessage('El puerto especificado no es correcto.' + #10 + #10 + 'El puerto debe ser un número entero comprendido entre 1 y 65536');
    tsPuerto.SetFocus;
    continuar := false;
  end;
  if continuar then
  begin
    Connection.uConnection.Disconnect; //    ConnectionHMG.Disconnect;
    //Connection.uConnection.Catalog := 'mysql'; // .ConnectionHMG.Catalog := 'mysql';
    //Connection.uConnection.Catalog := 'mysql'; //ConnectionHMG.Database := 'mysql';
    Connection.uConnection.Server := listserv.Strings[cmbserver.ItemIndex]; //lblista.text;   //ConnectionHMG.HostName := lbLista.Text;
    Connection.uConnection.Password := Noilpass;
    Connection.uConnection.Port := hPuerto;
    //Connection.uConnection.Protocol := 'mysql-5';
    Connection.uConnection.Username := 'root';
    Result := False;
    try
      Connection.uConnection.Connect;
      Result := Connection.uConnection.Connected;
    except
      Result := False;
    end;
    if Result then
    begin
// Mostrar los bases de datos correspondientes a este servidor
      zQuery := TUniquery.Create(Self);
      zQuery.Connection := Connection.uConnection;
      zQuery.SQL.Text := 'show databases';
      zQuery.Open;
      sDataName.Properties.Items.Clear;
      while not zQuery.Eof do
      begin
        if (zQuery.FieldValues['database'] <> 'mysql') and (zQuery.FieldValues['database'] <> 'information_schema') and (zQuery.FieldValues['database'] <> 'test') and (zQuery.FieldValues['database'] <> 'chat') and (zQuery.FieldValues['database'] <> 'chat_php') and (zQuery.FieldValues['database'] <> 'ic_exsoll') and (zQuery.FieldValues['database'] <> 'joomla') and (zQuery.FieldValues['database'] <> 'phpmyadmin') then
          sDataName.Properties.Items.Add(zQuery.FieldValues['database']);
        zQuery.Next;
      end;
      zQuery.Destroy;
// Habilitar los campos de las bases de datos
      if sDataName.Properties.Items.Count > 0 then
        sDataName.ItemIndex := 0;
    end
    else
    begin
      ShowMessage('No ha podido ser posible establecer conexión con el servidor especificado.' + #10 + #10 + 'Revise los datos capturados para especificar el servidor o revise su conexión a la red si su base de datos se encuentra en un servidor remoto.');
      tsPuerto.SetFocus;
      Exit;
    end;
  end;
end;

procedure Tfrmacceso.GeneraBDs( Query : TZReadOnlyQuery);
begin
  Query.First;

  DBs.Items.Clear;
  DBs.Visible := True;

  if Query.RecordCount = 0 then
    Exit;

  while not Query.Eof do
  begin
    if AnsiIndexStr( Query.FieldByName( 'database' ).AsString, [ 'performance_schema', 'mysql', 'information_schema', 'test', 'chat', 'chat_php', 'ic_exsoll', 'joomla', 'phpmyadmin', 'adminintel' ] ) < 0 then
    begin
      with DBs.Items.Add do
      begin
        Caption := Query.FieldByName( 'database' ).AsString;
        ImageIndex := 2;
      end;
    end;

    Query.Next;
  end;

  Query.First;
end;

procedure Tfrmacceso.InputBoxSetPasswordChar(var Msg: TMessage);
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

end.

