unit frm_AsistenciaPersonal;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCalendar, cxTimeEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  Vcl.Menus, MemDS, DBAccess, Uni, Vcl.StdCtrls, cxButtons, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, dxLayoutControl, Vcl.OleCtrls,
  zkemkeeper_TLB,ShellApi,CxGridExportLink, frxClass, frxDBSet;

type
  TFrmAsistenciaPersonal = class(TForm)
    panelTop: TPanel;
    cxGridAsistenciaPErsonal: TcxGrid;
    cxGridAsistenciaPErsonalDBTableView1: TcxGridDBTableView;
    cxGridAsistenciaPErsonalDBTableView1Column1: TcxGridDBColumn;
    cxGridAsistenciaPErsonalDBTableView1Column2: TcxGridDBColumn;
    cxGridAsistenciaPErsonalDBTableView1Column10: TcxGridDBColumn;
    cxGridAsistenciaPErsonalLevel1: TcxGridLevel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    FechaInicio: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    FechaFinal: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxBtnFiltrar: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    zAsistencia: TUniQuery;
    dsAsistencia: TDataSource;
    cxGridAsistenciaPErsonalDBTableView1Column3: TcxGridDBColumn;
    btnActualizar: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    zActualizar: TUniQuery;
    CZKEM1: TCZKEM;
    zConfiguracion: TUniQuery;
    cxExport: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxGridAsistenciaPErsonalDBTableView1Column4: TcxGridDBColumn;
    cxBtnPersonal: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    frxReportPersonal: TfrxReport;
    frxDBDatasetPersonal: TfrxDBDataset;
    zPersonal: TUniQuery;
    cxGridAsistenciaPErsonalDBTableView1Column5: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxBtnFiltrarClick(Sender: TObject);
    procedure btnActualizarClick(Sender: TObject);
    procedure cxExportClick(Sender: TObject);
    procedure cxBtnPersonalClick(Sender: TObject);
  private
    { Private declarations }
  public
  port:Integer;
  ipAddress:String;
      DevID: Integer;
    ZK: TCZKEM;
    strFirmWare: WideString;
    Connected: Boolean;
    FPercent: WideString;

    { Public declarations }
  end;

var
  FrmAsistenciaPersonal: TFrmAsistenciaPersonal;

implementation
  uses frm_connection,UnitGenerales,global;
{$R *.dfm}

procedure TFrmAsistenciaPersonal.btnActualizarClick(Sender: TObject);
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
    Connect := CZKEM1.Connect_Net(ipAddress,port);
    while CZKEM1.SSR_GetGeneralLogData(DevId,dwEnrollNumber,dwVerifyMode,dwInOutMode,
                                  dwYear,dwMonth,dwDay,dwHour,dwMinute,dwSecond,dwWorkCode) do
    begin
        sFecha:=(IntToStr(dwYear)+'-'+IntToStr(dwMonth)+'-'+IntToStr(dwDay));
        sHora:=(IntToStr(dwHour)+':'+IntToStr(dwMinute));
        zActualizar.SQL.Text:= 'call asistencia_personal(:fecha, :hora, :Codigo)';
        zActualizar.ParamByName('fecha').value:=sFecha;
        zActualizar.ParamByName('hora').AsTime:=StrToTime(sHora);
        zActualizar.ParamByName('Codigo').AsString:=dwEnrollNumber;
        zActualizar.ExecSQL;
    end;
    if CZKEM1.ClearGLog(DevId) then
      CZKEM1.RefreshData(DevId);
    CZKEM1.Disconnect;
    zAsistencia.Refresh;
end;

procedure TFrmAsistenciaPersonal.cxBtnFiltrarClick(Sender: TObject);
begin
  AsignarSQL(zAsistencia,'asistenciaPersonal',pUpdate);
  FiltrarDataSet(zAsistencia,'FechaI,FechaF',[FechaSQL(FechaInicio.EditValue),FechaSQL(FechaFinal.EditValue)]);
  zAsistencia.Open;

end;

procedure TFrmAsistenciaPersonal.cxBtnPersonalClick(Sender: TObject);
begin

  AsignarSQL(zPersonal,'reporte_entradas',pUpdate);
  FiltrarDataSet(zPersonal,'FechaI,FechaF',[FechaSQL(FechaInicio.EditValue),FechaSQL(FechaFinal.EditValue)]);
  zPersonal.Open;

  frxReportPersonal.LoadFromFile (global_files + global_miReporte+'_RH_Listado_personal.fr3') ;
  frxReportPersonal.ShowReport();
end;

procedure TFrmAsistenciaPersonal.cxExportClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
  dlgSave : TSaveDialog;
begin
  dlgSave := TSaveDialog.Create(nil);
  dlgSave.FileName := 'Asistencia Personal';
  if dlgSave.Execute then
  begin
    rutaArchivo := dlgSave.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, cxGridAsistenciaPErsonal);
    dlgSave.Destroy;
    if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TFrmAsistenciaPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := cafree;
end;

procedure TFrmAsistenciaPersonal.FormShow(Sender: TObject);
begin
  AsignarSQL(zAsistencia,'asistenciaPersonal',pUpdate);
  FiltrarDataSet(zAsistencia,'FechaI,FechaF',[FechaSQL(NOW()),FechaSQL(NOW())]);
  zAsistencia.Open;

  AsignarSQL(zConfiguracion,'configuracion_biometrico',pUpdate);
  FiltrarDataSet(zConfiguracion,'Ubicacion',['Recepcion']);
  zConfiguracion.Open;

  port:=zConfiguracion.FieldByName('Puerto').AsInteger;
  ipAddress:=zConfiguracion.FieldByName('Direccion_ip').AsString;




  FechaInicio.EditValue:= Date();
  FechaFinal.EditValue:= Date();
end;

end.
