unit frm_VerificarSs7;

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
  dxLayoutControl, cxContainer, cxEdit, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxGroupBox, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxImage, dxGDIPlusClasses, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, MemDS,
  DBAccess, Uni, Vcl.ExtCtrls, cxLabel, Vcl.OleCtrls, zkemkeeper_TLB,
  Vcl.ComCtrls, cxListView, cxListBox, cxDBEdit, cxDBLabel;

type
  TFrmVerificarSs7 = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    zBuscar: TUniQuery;
    zActualizar: TUniQuery;
    zAsistencias: TUniQuery;
    dsAsistencias: TDataSource;
    Timer1: TTimer;
    cxImage2: TcxImage;
    zTurno: TUniQuery;
    dsTurno: TDataSource;
    CZKEM1: TCZKEM;
    zCargar: TUniQuery;
    PanelLef: TPanel;
    PanelTurno: TPanel;
    panelCentral: TPanel;
    cxLabel1: TcxLabel;
    Panel2: TPanel;
    cxLabel2: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    zPersonalBiometrico: TUniQuery;
    zConfiguracion: TUniQuery;
    cxDBLabel2: TcxDBLabel;
    cxGridListaDBTableView1: TcxGridDBTableView;
    cxGridListaLevel1: TcxGridLevel;
    cxGridLista: TcxGrid;
    cxGridListaDBTableView1Column1: TcxGridDBColumn;
    cxGridListaDBTableView1Column2: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleNumber: TcxStyle;
    procedure btnAceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Verificar;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    //biometrico f22
    DevID: Integer;
    ZK: TCZKEM;
    strFirmWare: WideString;
    Connected: Boolean;
    FPercent: WideString;

    { Private declarations }
  public
    { Public declarations }
  end;

const
    // biometrico hamtster ll
    NBioAPIERROR_NONE = 0;

    NBioAPI_FIR_PURPOSE_VERIFY      = 1;

    //Constant for DeviceID
    NBioAPI_DEVICE_ID_NONE          = 0;
    NBioAPI_DEVICE_ID_FDP02_0       = 1;
    NBioAPI_DEVICE_ID_FDU01_0       = 2;
    NBioAPI_DEVICE_ID_AUTO_DETECT   = 255;
    NBioAPI_WINDOW_STYLE_INVISIBL = True;


var
  FrmVerificarSs7: TFrmVerificarSs7;

implementation
 uses frm_connection,UnitGenerales,Comobj,global;

 var
    objNBioBSP    : variant;
    objDevice     : variant;
    objExtraction : variant;
    objNSearch    : variant;
    objIndexSearch  : variant;
    index:String;
    port:Integer;
    ipAddress:String;
{$R *.dfm}

procedure TFrmVerificarSs7.btnAceptarClick(Sender: TObject);
begin
  Timer1.Enabled := False;
  AsignarSQl(zBuscar,'buscar_personal',pUpdate);
  zBuscar.Open;

  zActualizar.Active:=False;
  zActualizar.SQL.Text:='call asistencia_medica(:IdPersonal,:IdPuesto,:Edad,:Fecha)';
  zActualizar.ParamByName('IdPersonal').AsInteger:=zBuscar.FieldByName('IdPersonal').AsInteger;
  zActualizar.ParamByName('IdPuesto').AsInteger:=zBuscar.FieldByName('puesto').AsInteger;
  zActualizar.ParamByName('Edad').AsInteger:=zBuscar.FieldByName('Edad').AsInteger;
  zActualizar.ParamByName('Fecha').Value:=fechaSQL(Date());
  zActualizar.ExecSQL;
  zAsistencias.Refresh;
  Timer1.Enabled := true;
end;

procedure TFrmVerificarSs7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CZKEM1.Disconnect;
  Timer1.Enabled := False;
end;

procedure TFrmVerificarSs7.FormCreate(Sender: TObject);
begin
 AsignarSQL(zConfiguracion,'configuracion_biometrico',pUpdate);
 FiltrarDataSet(zConfiguracion,'Ubicacion',['Recepcion']);
 zConfiguracion.Open;

 port:=zConfiguracion.FieldByName('Puerto').AsInteger;
 ipAddress:=zConfiguracion.FieldByName('Direccion_ip').AsString;


end;

procedure TFrmVerificarSs7.FormShow(Sender: TObject);
var
  //Biometrico hamster ll
   fecha:String;
   nUserID   : integer;
   szFir     : wideString;

  //biometrico f22
  i: Integer;
  dwEnrollNumber,dwModel: widestring;
  dwYear,dwMonth,dwDay,dwHour,dwMinute,dwSecond: Integer;
  dwVerifyMode,dwInOutMode,dwWorkCode: integer;
  s: string;
  f: TFileStream;
  Data: TStringList;
  Connect: Boolean;
  ErrorCode: Integer;
  cadena: String;

  dwMachineNumber: Integer;
  Name: WideString;
  Password: WideString;
  Privilege: Integer;
  Enabled: WordBool;
  dwFingerIndex: Integer;
  TmpData: WideString;
  TmpLength: Integer;

  b:boolean;
  index:Integer;
begin
   //biometrico f22
//   Connect := CZKEM1.Connect_Net(ipAddress,port);
//   DevID := 1;
//   CZKEM1.EnableDevice(DevID, False);
//    if CZKEM1.ReadAllGLogData(DevId) then
//      while CZKEM1.SSR_GetAllUserInfo(DevId,dwEnrollNumber,Name,Password,Privilege,Enabled) do
//       begin
//          zCargar.SQL.Text:= 'call biometrico_user(:id, :codigo)';
//          zCargar.ParamByName('id').AsString:=dwEnrollNumber;
//          zCargar.ParamByName('codigo').AsString:=Name;
//          zCargar.ExecSQL;
//       end;
//
//   CZKEM1.EnableDevice(DevID, True);
//   CZKEM1.Disconnect;

  AsignarSQl(zAsistencias,'Verificar_personal',pUpdate);
  FiltrarDataSet(zAsistencias,'Fecha',[fechaSQL(Now)]);
  zAsistencias.Open;

   AsignarSQl(zTurno,'Turno_personal',pUpdate);
   FiltrarDataSet(zTurno,'Fecha',[fechaSQL(Now)]);
   zTurno.Open;
    // biometrico hamster ll
    objNBioBSP := CreateOleObject('NBioBSPCOM.NBioBSP');
    objDevice      := objNBioBSP.Device;
    objExtraction  := objNBioBSP.Extraction;
    objNSearch     := objNBioBSP.NSearch;

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
      end;
     global_zScanner.Close;

   cxGridLista.Setfocus;
   cxGridListaDBTableView1.GetColumnByFieldName('Nombre').Focused := True;
   Timer1.Enabled:=True;


end;

procedure TFrmVerificarSs7.Timer1Timer(Sender: TObject);
var
  //biometrico f22
  i: Integer;
  dwEnrollNumber,dwModel: widestring;
  dwYear,dwMonth,dwDay,dwHour,dwMinute,dwSecond: Integer;
  dwVerifyMode,dwInOutMode,dwWorkCode: integer;
  s: string;
  f: TFileStream;
  Data: TStringList;
  Connect: Boolean;
  ErrorCode: Integer;
  sFecha,sHora: String;

  dwMachineNumber: Integer;
  Name: WideString;
  Password: WideString;
  Privilege: Integer;
  Enabled: WordBool;
  dwFingerIndex: Integer;
  TmpData: WideString;
  TmpLength: Integer;
begin

    Timer1.Enabled:=False;

    //biometrico f22
    Connect := CZKEM1.Connect_Net(ipAddress,port);
    while CZKEM1.SSR_GetGeneralLogData(DevId,dwEnrollNumber,dwVerifyMode,dwInOutMode,
                                  dwYear,dwMonth,dwDay,dwHour,dwMinute,dwSecond,dwWorkCode) do
    begin
        sFecha:=(IntToStr(dwYear)+'-'+IntToStr(dwMonth)+'-'+IntToStr(dwDay));
        sHora:=(IntToStr(dwHour)+':'+IntToStr(dwMinute));
        zPersonalBiometrico.SQL.Text:= 'call asistencia_personal(:IdPersonal, :fecha, :hora, :Codigo)';
        zPersonalBiometrico.ParamByName('IdPersonal').AsString:='0';
        zPersonalBiometrico.ParamByName('fecha').value:=sFecha;
        zPersonalBiometrico.ParamByName('hora').AsTime:=StrToTime(sHora);
        zPersonalBiometrico.ParamByName('Codigo').AsString:=dwEnrollNumber;
        zPersonalBiometrico.ExecSQL;
    end;

    CZKEM1.Disconnect;
  zAsistencias.Refresh;
  zTurno.Refresh;
  zAsistencias.First;

  Timer1.Enabled:=True;
end;

procedure TFrmVerificarSs7.Verificar;
var
    nUserID   : integer;
    szFir     : wideString;
begin
     // biometrico hamster ll
     objExtraction.WindowStyle := NBioAPI_WINDOW_STYLE_INVISIBL;
     objDevice.Open(NBioAPI_DEVICE_ID_AUTO_DETECT);
     objExtraction.Capture(1);
     objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);
     szFir := objExtraction.TextEncodeFIR;
     objNSearch.IdentifyUser(szFir, 5);
     index:=intTostr(objNSearch.UserID);
     if objNSearch.ErrorCode <> NBioAPIERROR_NONE then
     begin
//      showMessage('Personal no reconocido');
     end
      else
     begin
        AsignarSQl(zBuscar,'buscar_personal',pUpdate);
        FiltrarDataSet(zBuscar,'Id',[index]);
        zBuscar.Open;

        zActualizar.Active:=False;
        zActualizar.SQL.Text:='call asistencia_medica(:IdPersonal,:IdPuesto,:Edad,:Fecha)';
        zActualizar.ParamByName('IdPersonal').AsInteger:=zBuscar.FieldByName('IdPersonal').AsInteger;
        zActualizar.ParamByName('IdPuesto').AsInteger:=zBuscar.FieldByName('puesto').AsInteger;
        zActualizar.ParamByName('Edad').AsInteger:=zBuscar.FieldByName('Edad').AsInteger;
        zActualizar.ParamByName('Fecha').Value:=fechaSQL(Date());
        zActualizar.ExecSQL;
        //edtBuscar.Text:='';
        zAsistencias.Refresh;
     end;

end;

end.
