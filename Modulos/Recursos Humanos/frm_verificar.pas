unit frm_verificar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, MemDS, DBAccess, Uni,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxImage,frm_connection,
  cxContainer, dxLayoutcxEditAdapters, cxDBEdit, dxLayoutContainer, cxGroupBox,
  dxLayoutControl, cxLabel, cxMemo, cxGridViewLayoutContainer, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCustomLayoutView, cxDBLabel, Vcl.ExtCtrls,
  Vcl.StdCtrls, dxGDIPlusClasses, ComCtrls, Vcl.Menus, cxButtons,MMSystem, global;

type
  TFrmVerificar = class(TForm)
    dsEmpleado: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    GroupBox1: TGroupBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxDBLabel3: TcxDBLabel;
    Image1: TImage;
    cxLabel7: TcxLabel;
    cxLabel9: TcxLabel;
    imgEmp: TcxDBImage;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    zGuardia: TUniQuery;
    PanelMsg: TPanel;
    Image3: TImage;
    ImageError: TImage;
    cxLabel10: TcxLabel;
    PanelInfo: TPanel;
    Image4: TImage;
    Fondo: TImage;
    zHoras: TUniQuery;
    Timer1: TTimer;
    cxLabel11: TcxLabel;
    cxLabel8: TcxLabel;
    Timer2: TTimer;
    Cambios: TUniQuery;
    uEmpresas: TUniQuery;
    ds_empresas: TDataSource;
    cxDBImage1: TcxDBImage;
    CrearGuardia: TUniQuery;
    procedure consultar;
    procedure Verificar;
    Procedure Obtenido;
    procedure reconect;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
        NBioAPIERROR_NONE = 0;

        NBioAPI_FIR_PURPOSE_VERIFY      = 1;

        //Constant for DeviceID
        NBioAPI_DEVICE_ID_NONE          = 0;
        NBioAPI_DEVICE_ID_FDP02_0       = 1;
        NBioAPI_DEVICE_ID_FDU01_0       = 2;
        NBioAPI_DEVICE_ID_AUTO_DETECT   = 255;

var
  FrmVerificar: TFrmVerificar;

implementation
uses unitgenerales,Comobj,Ufrm_Loading,Form_Esperando;

var
        objNBioBSP    : variant;
        objDevice     : variant;
        objExtraction : variant;
        objNSearch    : variant;
        objIndexSearch  : variant;
        index:String;
        flap:boolean;
        salir:boolean=False;
        hora,horaI,horaT,HoraE,HoraS:String;
        fechaI,fechaT,FechaE,FechaS:TDateTime;
        zSql:TUniQuery;
{$R *.dfm}

procedure TFrmVerificar.consultar;
var
        nUserID   : integer;
        szFir     : wideString;
begin
      if objNSearch.ErrorCode = NBioAPIERROR_NONE then
        begin
          try
                objNSearch.ClearDB;
                AsignarSQL(global_zScanner,'huellaPersonal',pUpdate);
                FiltrarDataSet(global_zScanner,'Activo',['si']);
                global_zScanner.Open;

                while not global_zScanner.Eof do
                begin
                   nUserID:=global_zScanner.FieldByName('IdPersonal').AsInteger;
                   szFir:=global_zScanner.FieldByName('ImgHuella').AsWideString;
                   objNSearch.AddFIR(szFir, nUserID);
                   global_zScanner.Next;
                end;
          Except
            ;
          end;
        end
        else
        begin
           PanelMsg.Visible:=True;
           ImageError.Visible:=True;
           CxLabel11.Caption:='Conectar biométrico';
           dxLayoutControl1.Visible:=False;
        end;
       global_zScanner.Close;
end;

procedure TFrmVerificar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 zSql.Destroy;
end;

procedure TFrmVerificar.FormCreate(Sender: TObject);
begin
     Left := 0;
     Top  := 0;
end;

procedure TFrmVerificar.FormShow(Sender: TObject);
begin
  uempresas.Active := False;
  uempresas.SQl.Text:='Select c.* From usuarios_proyectos u '+
                        'INNER JOIN rd_proyectos c ON (c.sContrato = u.sContrato and c.lStatus=:Estatus) '+
                        'WHERE (:Usuario = -1 or (:Usuario <> -1 and u.sIdUsuario = :Usuario)) ' +
                        'Order By c.sContrato ';
  uempresas.ParamByName('Estatus').AsString := 'Activo';
  uempresas.ParamByName('Usuario').AsString := global_usuario;
  uempresas.Open;


  try
   objNBioBSP := CreateOleObject('NBioBSPCOM.NBioBSP');
   objDevice      := objNBioBSP.Device;
   objExtraction  := objNBioBSP.Extraction;
   objNSearch     := objNBioBSP.NSearch;

    Image1.Visible:=False;
    consultar;
    zHoras.Active:=False;
    zHoras.Open;
    zSql:=TUniQuery.Create(self);
    reconect;


    fechaI:= zHoras.FieldByName('EntradaInicio').AsDateTime;
    horaI:=FormatDateTime('hh:nn:ss',fechaI);

    fechaT:= zHoras.FieldByName('EntradaTermino').AsDateTime;
    horaT:=FormatDateTime('hh:nn:ss',fechaT);

    fechaE:= zHoras.FieldByName('SalidaInicio').AsDateTime;
    horaE:=FormatDateTime('hh:nn:ss',fechaE);

    fechaS:= zHoras.FieldByName('SalidaTermino').AsDateTime;
    horaS:=FormatDateTime('hh:nn:ss',fechaS);
    Timer1.Enabled:=True;
  except

  end;

end;

procedure TFrmVerificar.Obtenido;
var FechaHora: TDateTime;
        szFir    : wideString;
        str      : wideString;
     sound,id:String;
  I: Integer;
  tem:TDateTime;
begin
     objDevice.Open(NBioAPI_DEVICE_ID_AUTO_DETECT);
     objExtraction.Capture(1);
     objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);
     szFir := objExtraction.TextEncodeFIR;
     objNSearch.IdentifyUser(szFir, 5);
     index:=intTostr(objNSearch.UserID);
     if objNSearch.ErrorCode <> NBioAPIERROR_NONE then
     begin
        if szFir <> '' then
        begin
          sndPlaySound('error.wav',SND_NODEFAULT Or SND_ASYNC Or SND_LOOP);
          cxLabel8.Visible:=True;
          sleep(1200);
        end
        else
        begin
        if (hora>='09:00:00') and (hora<='18:00:00') then
         begin
            Timer2.Enabled := true;
            if MessageDlg('Continuar', mtInformation, [mbNo,mbYes], 0) = mrNo then
             begin
              Salir:=True;
             end;
           end;
         end;
     end
      else
     begin
      CrearGuardia.Active:=False;
      CrearGuardia.SQL.Text:='CALL CrearGuardia(:getMac)';
      CrearGuardia.ParamByName('getMac').AsString:=GetMACAdress;
      CrearGuardia.ExecSQL;

      cambios.Active:=False;
      Cambios.SQL.Text:='CALL guardias(:IdPersonal,:getMac)';
      Cambios.ParamByName('IdPersonal').AsString:=index;
      Cambios.ParamByName('getMac').AsString:=GetMACAdress;
      Cambios.ExecSQL;

      cxLabel8.Visible:=False;
      PanelInfo.Visible:=True;
      CxLabel11.Visible:=False;
      Image1.Visible:=True;

      AsignarSQL(global_zScanner,'verificar_personal',pUpdate);
      FiltrarDataSet(global_zScanner,'IdPersonal,getMac',[index,GetMACAdress]);
      global_zScanner.Open;

      dsEmpleado.DataSet:=global_zScanner;
      sndPlaySound('correcto.wav',SND_NODEFAULT Or SND_ASYNC Or SND_LOOP);
      FechaHora:= now;
      cxLabel7.Caption:=formatdatetime('yyyy/mm/dd hh:nn:ss',FechaHora);
      Verificar;

     end;
end;

procedure TFrmVerificar.reconect;
begin
  zSql.Active:=False;
  ZSql.Connection:=connection.Uconnection;
  zSql.SQL.Text:='select * from rh_guardia_personal_diario where IdPersonalDiario = 0';
  zSql.Open;
end;

procedure TFrmVerificar.Timer1Timer(Sender: TObject);
begin
  try
    connection.Uconnection.Ping;
    panelMsg.Visible:=False;
    zSql.Open;
    hora:=FormatDateTime('hh:nn:ss',now);
    while (hora>=horaI) and (hora<=horaT) do
    begin
      if Salir = True then
      begin
        Salir:=False;
        Exit;
      end;
      Timer1.Enabled:=False;
      hora:=FormatDateTime('hh:nn:ss',now);
      PanelMsg.Visible:=False;
      Obtenido;
      sndPlaySound(nil, 0);
    end;

    while (hora>=horaE) and (hora<=horaS) do
    begin
     if Salir = True then
      begin
        Salir:=False;
        Exit;
      end;
     Timer1.Enabled:=False;
     hora:=FormatDateTime('hh:nn:ss',now);
     PanelMsg.Visible:=False;
     Obtenido;
     sndPlaySound(nil, 0);
    end;
  except
   Timer1.Enabled:=False;
   panelMsg.Visible:=True;
   try
     sndPlaySound(nil, 0);
     connection.Uconnection.Ping;
     reconect;
   except
    on e: Exception do
      ;
   end;
  end;
  Timer1.Enabled:=True;
end;

procedure TFrmVerificar.Timer2Timer(Sender: TObject);
var
  Wnd: HWnd;
begin
  Wnd := FindWindow(nil, 'Information');
  if Wnd <> 0 then
    keybd_event(VK_RETURN, 0, 0, 0);

  Timer2.Enabled := false;
end;

procedure TFrmVerificar.Verificar;
var
  fecha,fechaHoy, hora:TDateTime;
  msg,hoy, actual, h:String;
  temp :TUniQuery;
  dsGuardia:TDataSource;
  flap2:boolean;
  horas,max:Integer;
begin
  try
      if global_zScanner.RecordCount > 0 then
      begin

        FechaHoy:=now;
        Hoy:=FormatDateTime('yyyy/mm/dd',FechaHoy);

        h:=FormatDateTime('hh:nn:ss',now);
        if (h>='07:00:00') and (h<='19:00:00') then
        begin
          Horas:=1;
          cxLabel10.Caption:='TURNO DIURNO 07:00 A 19:00';
        end
        else
        begin
          Horas:=2;
          cxLabel10.Caption:='TURNO NOCTURNO 19:00 A 07:00';
        end;

        hoy :=formatdatetime('yyyy-mm-dd hh:nn:ss',FechaHoy);
        zSql.Insert;
        zSql.FieldByName('IdPersonalDiario').AsString:='0';
        zSql.FieldByName('IdGuardiaPersonal').AsInteger:=global_zScanner.FieldByName('IdGuardiaPersonal').AsInteger;
        zSql.FieldByName('IdHorarioGerencial').AsInteger:=Horas;
        zSql.FieldByName('FechaHoraRegistro').Value :=hoy;
        zSql.Post;

      end;
  finally

  end;
end;

end.
