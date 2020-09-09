unit FrmAsistenciaMedica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, frm_barraH2,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, frm_barraH1, cxLabel, Vcl.ExtCtrls,
  cxCalendar, cxTimeEdit, MemDS, DBAccess, Uni, dxLayoutContainer,
  dxLayoutControl, dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit,
  cxImage, dxGDIPlusClasses, cxCalc, frxClass, frxDBSet, cxDBLookupComboBox, global,
  cxMemo,ExcelXP,unitExcel,Excel2000, Vcl.OleServer, cxProgressBar,UnitExcepciones,unitMetodos,
  Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.OleCtrls, zkemkeeper_TLB;

type
  TFrmAsistenciaMed = class(TForm)
    PanelMenu: TPanel;
    cxLeyenda: TcxLabel;
    frmBarraH11: TfrmBarraH1;
    PanelCentral: TPanel;
    cxGridAsistenciaMedicaDBTableView1: TcxGridDBTableView;
    cxGridAsistenciaMedicaLevel1: TcxGridLevel;
    cxGridAsistenciaMedica: TcxGrid;
    PanelDatos: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    zPersonal: TUniQuery;
    dsPersonal: TDataSource;
    cxGridAsistenciaMedicaDBTableView1Column1: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column2: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column3: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column4: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column5: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column6: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column7: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column8: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column9: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column10: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtTA: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    edtFC: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    edtFR: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    edtTemp: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    edtGluc: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cbApto: TcxDBComboBox;
    dxLayoutItem6: TdxLayoutItem;
    btnHuella: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxImage1: TcxImage;
    dxLayoutItem8: TdxLayoutItem;
    frxEvaluacion: TfrxReport;
    frxDBEvaluacion: TfrxDBDataset;
    zEvaluacion: TUniQuery;
    zHuellas: TUniQuery;
    PanelFiltro: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    edtInicio: TcxDateEdit;
    dxLayoutItem9: TdxLayoutItem;
    Edtfinal: TcxDateEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxbtnFiltrar: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    edtTrigli: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    edtColesterol: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    edtPeso: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    mmNotas: TcxDBMemo;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxGridAsistenciaMedicaDBTableView1Column11: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column12: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column13: TcxGridDBColumn;
    zConfiguracion: TUniQuery;
    CZKEM1: TCZKEM;
    dxLayoutItem16: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxGridAsistenciaMedicaDBTableView1Column14: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column15: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column16: TcxGridDBColumn;
    cxGridAsistenciaMedicaDBTableView1Column17: TcxGridDBColumn;
    TimerData: TTimer;
    cxGridAsistenciaMedicaDBTableView1Column18: TcxGridDBColumn;
    zUsuario: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnHuellaClick(Sender: TObject);
    procedure Enroll;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure save(data:wideString);
    procedure cargarHuelals();
    procedure btnAddClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxbtnFiltrarClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure TimerDataTimer(Sender: TObject);
    procedure frxEvaluacionGetValue(const VarName: string; var Value: Variant);
     private
    { Private declarations }
  public
    port:Integer;
    ipAddress:String;
    huella:String;
    DevID: Integer;
    id:Integer;
    ExistFinger:Boolean;
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
        InputBoxMessage = WM_USER + 200;
        NBioAPI_WINDOW_STYLE_INVISIBL   =0;

var
  FrmAsistenciaMed: TFrmAsistenciaMed;

implementation
  uses frm_connection,UnitGenerales,Comobj,frm_agregar_personal;

  var
        objNBioBSP    : variant;
        objDevice     : variant;
        objExtraction : variant;
        objNSearch    : variant;
        objIndexSearch: variant;


{$R *.dfm}

procedure TFrmAsistenciaMed.btnAddClick(Sender: TObject);
begin
if not MostrarFormChild('frmAgregarPersonal',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    global_frmActivo:='Asistencia_Medica';
    Application.CreateForm(TfrmAgregarPersonal, frmAgregarPersonal);
    frmAgregarPersonal.show;
  end;
end;

procedure TFrmAsistenciaMed.btnCancelClick(Sender: TObject);
begin

zHuellas.Cancel;
zPersonal.Cancel;
zPersonal.Edit;
zPersonal.FieldByName('Usuario').AsString:='';
zPersonal.Post;
PanelDatos.Visible:=False;
cxLeyenda.Caption:='Asistencia Medica';
end;

procedure TFrmAsistenciaMed.btnDeleteClick(Sender: TObject);
begin
If MessageDlg('Desea eliminar el registro Seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
     zPersonal.Delete;
     zPersonal.ApplyUpdates();
     zPersonal.Refresh;
   End;
end;

procedure TFrmAsistenciaMed.SalidaControl(Sender: TObject);
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

    if (sender is tcxCalcEdit) then
        tcxCalcEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;

end;

procedure TFrmAsistenciaMed.save(data: wideString);
begin
     ExistFinger:=true;
     data:= StringReplace(data, '''',  '', [rfReplaceAll]);
     zHuellas.SQL.Clear;
     zHuellas.Active:=False;
     zHuellas.SQL.Text:='call almacena_huella(:huella, :IdP)';
     zHuellas.ParamByName('huella').AsWideString:=data;
     zHuellas.ParamByName('IdP').AsInteger:=zPersonal.FieldByName('IdPersonal').AsInteger;

end;

procedure TFrmAsistenciaMed.TimerDataTimer(Sender: TObject);
begin
zPersonal.Refresh;
end;

procedure TFrmAsistenciaMed.EnterControl(Sender: TObject);
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

    if (sender is tcxCalcEdit) then
        tcxCalcEdit(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TFrmAsistenciaMed.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmAsistenciaMed.btnEditClick(Sender: TObject);
begin
  TimerData.Enabled:=False;
  zPersonal.Edit;
  zPersonal.FieldByName('Usuario').AsString:=global_usuario;
  zPersonal.Post;
  ExistFinger:=False;
  cxLeyenda.Caption:='Asistencia Medica Editando';
  zPersonal.Edit;
  PanelDatos.Visible:=True;
  dxLayoutItem8.Visible:=False;
end;

procedure TFrmAsistenciaMed.btnHuellaClick(Sender: TObject);
begin
    cargarHuelals;
    if objNSearch.ErrorCode = NBioAPIERROR_NONE then
    begin
      Enroll;
    end;
end;

procedure TFrmAsistenciaMed.btnPostClick(Sender: TObject);
begin
 if ExistFinger then
 begin
  zHuellas.ExecSQL;
 end;

 zPersonal.FieldByName('HoraAceptacion').Value:=Time();
 zPersonal.FieldByName('Estado').AsString:='Asistio';
 zPersonal.Post;
 PanelDatos.Visible:=False;
 cxLeyenda.Caption:='Asistencia Medica';
 TimerData.Enabled:=True;
end;

procedure TFrmAsistenciaMed.btnPrinterClick(Sender: TObject);
begin
 frxEvaluacion.LoadFromFile (global_files + global_miReporte+'_RH_evaluacion_medica.fr3') ;
 frxEvaluacion.ShowReport();
end;

procedure TFrmAsistenciaMed.btnRefreshClick(Sender: TObject);
begin
 zPersonal.Refresh;
end;

procedure TFrmAsistenciaMed.cargarHuelals;
 var
        nUserID   : integer;
        szFir     : wideString;
begin
  objNBioBSP := CreateOleObject('NBioBSPCOM.NBioBSP');
  objDevice      := objNBioBSP.Device;
  objExtraction  := objNBioBSP.Extraction;
  objNSearch     := objNBioBSP.NSearch;

  szFir:=zPersonal.FieldByName('ImgHuella').AsWideString;
  nUserID:=zPersonal.FieldByName('IdPersonal').AsInteger;
  huella:= szFir;  id:= nUserID;
  if szFir <> '' then
  begin
    objNSearch.AddFIR(szFir, nUserID);
  end;
end;


procedure TFrmAsistenciaMed.cxbtnFiltrarClick(Sender: TObject);
begin
  AsignarSQl(zPersonal,'Asistencia_medica',pUpdate);
  FiltrarDataSet(zPersonal,'FechaInicio,FechaFinal',[fechaSQL(edtInicio.EditValue),fechaSQL(Edtfinal.EditValue)]);
  zPersonal.Open;
end;

procedure TFrmAsistenciaMed.cxButton1Click(Sender: TObject);
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
  horaEntrada:String;
begin
    IF CZKEM1.Connect_Net(ipAddress,port) THEN
      begin

        while CZKEM1.SSR_GetGeneralLogData(DevId,dwEnrollNumber,dwVerifyMode,dwInOutMode,
                                      dwYear,dwMonth,dwDay,dwHour,dwMinute,dwSecond,dwWorkCode) do
        begin
            sFecha:=(IntToStr(dwYear)+'-'+IntToStr(dwMonth)+'-'+IntToStr(dwDay));
            sHora:=(IntToStr(dwHour)+':'+IntToStr(dwMinute));
            if  (dwEnrollNumber = zPersonal.FieldByName('SAPID').AsString ) then
            begin

               zPersonal.FieldByName('Confirmacion').AsString:='Confirmo';

               if CZKEM1.ClearGLog(DevId) then
                CZKEM1.RefreshData(DevId);
            end;
        end;
      end;
end;

procedure TFrmAsistenciaMed.Enroll;
var
        i         : longint;
        nUserID   : longint;
        szFir     : wideString;
        str       : widestring;
        objResult : variant;
        data      :widestring;

begin
     objDevice.Open(NBioAPI_DEVICE_ID_AUTO_DETECT);
     objExtraction.Capture(1);
     objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);
     szFir := objExtraction.TextEncodeFIR;

    if Huella = '' then
    begin
     save(szFir);
    end
    else
    begin

     objNSearch.IdentifyUser(szFir, 5);
     if objNSearch.ErrorCode <> NBioAPIERROR_NONE then
     begin
      showmessage('No se reconoce la huella');
     end
     else
      dxLayoutItem8.Visible:=True;
    end;
    szFir:= StringReplace(szFir, '''',  '', [rfReplaceAll]);
    zPersonal.FieldByName('Confirmacion').AsWideString:= 'Confirmo';
end;

procedure TFrmAsistenciaMed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := cafree;
end;

procedure TFrmAsistenciaMed.FormShow(Sender: TObject);
begin

  cxLeyenda.Caption:='Asistencia Medica';
  AsignarSQl(zPersonal,'Asistencia_medica',pUpdate);
  FiltrarDataSet(zPersonal,'FechaInicio,FechaFinal',[fechaSQL(Date()),fechaSQL(Date())]);
  zPersonal.Open;

  AsignarSQL(zConfiguracion,'configuracion_biometrico',pUpdate);
  FiltrarDataSet(zConfiguracion,'Ubicacion',['Medico']);
  zConfiguracion.Open;

  port:=zConfiguracion.FieldByName('Puerto').AsInteger;
  ipAddress:=zConfiguracion.FieldByName('Direccion_ip').AsString;

  AsignarSQL(zUsuario,'Usuarios',pUpdate);
  FiltrarDataSet(zUsuario,'Usuario',[global_usuario]);
  zUsuario.Open;

  edtInicio.EditValue:=Date();
  Edtfinal.EditValue:=Date();
  TimerData.Enabled:=True;
end;



procedure TFrmAsistenciaMed.frxEvaluacionGetValue(const VarName: string;
  var Value: Variant);
var
Fecha : TDate;
Dia, Mes, Anio : Word;
data:String;
begin
  DecodeDate(Edtfinal.EditValue, Anio, Mes, Dia);
  if mes=1 then
    data:='Enero';

  if mes=2 then
    data:='Febrero';

  if mes=3 then
    data:='Marzo';

  if mes=4 then
    data:='Abril';

  if mes=5 then
    data:='Mayo';

  if mes=6 then
    data:='Junio';

  if mes=7 then
    data:='Julio';

  if mes=8 then
    data:='Agosto';

  if mes=9 then
    data:='Septiembre';

  if mes=10 then
    data:='Octubre';

  if mes=11 then
    data:='Noviembre';

  if mes=12 then
    data:='Diciembre';


  If CompareText(VarName, 'MES') = 0 then
      Value := data;

  If CompareText(VarName, 'NOMBRE') = 0 then
      Value := zUsuario.FieldByName('Nombre').AsString;

  If CompareText(VarName, 'SAP') = 0 then
      Value := zUsuario.FieldByName('CodigoPersonal').AsString;
end;

end.
