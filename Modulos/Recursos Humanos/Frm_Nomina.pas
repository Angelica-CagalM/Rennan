unit Frm_Nomina;

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
  dxLayoutControl, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, cxButtons, frm_barraH1,
  cxContainer, cxEdit, cxLabel, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, MemDS, DBAccess, Uni, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, dxBarBuiltInMenu, cxPC, cxCurrencyEdit,
  dxLayoutcxEditAdapters, cxDBEdit, frxClass, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxProgressBar, cxCheckBox, strUtils, unitExcepciones, Math;

type
  TFrmNomina = class(TForm)
    PanelCentral: TPanel;
    PanelTop: TPanel;
    cxLeyenda: TcxLabel;
    cxSplitterLateral: TcxSplitter;
    frmBarraH11: TfrmBarraH1;
    grid_Nomina: TcxGrid;
    cxView_Nomina: TcxGridDBTableView;
    cxView_NominaColumn1: TcxGridDBColumn;
    cxView_NominaColumn4: TcxGridDBColumn;
    cxView_NominaColumn3: TcxGridDBColumn;
    cxView_NominaColumn6: TcxGridDBColumn;
    cxView_NominaColumn8: TcxGridDBColumn;
    grid_NominaLevel1: TcxGridLevel;
    EmpleadosDiasL: TUniQuery;
    cxView_NominaColumn2: TcxGridDBColumn;
    frxReportPreNomina: TfrxReport;
    zNomina: TUniQuery;
    dsNomina: TDataSource;
    zNominaEmpleados: TUniQuery;
    dsNominaEmpleados: TDataSource;
    cxView_NominaColumn5: TcxGridDBColumn;
    cxView_NominaColumn9: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    raerDasLaboradosdelPeriodoAnterior1: TMenuItem;
    zDiasL: TUniQuery;
    cxView_NominaColumn7: TcxGridDBColumn;
    btnPrinter: TcxButton;
    Panel1: TPanel;
    chkContinuo: TCheckBox;
    cxCompacto: TcxCheckBox;
    CheckDescuento: TCheckBox;
    CheckCompleto: TCheckBox;
    cxLabel1: TcxLabel;
    lcbNomina: TcxLookupComboBox;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    ActualizarNmina1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DetalleNomina;

    procedure dFechaInicioPropertiesChange(Sender: TObject);
    procedure FechaDetalle;
    procedure dFechaTerminoPropertiesChange(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure frxReportPreNominaGetValue(const VarName: string;
      var Value: Variant);
    procedure lcbNominaPropertiesEditValueChanged(Sender: TObject);
    procedure grid_NominaExit(Sender: TObject);
    procedure raerDasLaboradosdelPeriodoAnterior1Click(Sender: TObject);
    procedure cxView_NominaColumn9PropertiesEditValueChanged(Sender: TObject);
    procedure cxView_NominaColumn5PropertiesEditValueChanged(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxView_NominaColumn7PropertiesEditValueChanged(Sender: TObject);
    procedure ActualizarNmina1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNomina: TFrmNomina;
  titulo,titulo2 : string;

implementation

{$R *.dfm}

uses
   frm_connection,UnitGenerales,UnitRH,UFunctionsGHH,global;

procedure TFrmNomina.ActualizarNmina1Click(Sender: TObject);
var
  auxDatos,auxNom : TUniQuery;
  auxSQL: String;
begin
  if MessageDlg('¿Desea actualizar los datos de la nómina? Recuerde que este proceso vacía la información de la prenómina.',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
    auxDatos:=TUniQuery.Create(nil);
    auxNom:=TUniQuery.Create(nil);
    auxDatos.Connection:=Connection.Uconnection;
    auxNom.Connection:=Connection.Uconnection;

    AsignarSQL(auxDatos,'datos_paraNominaConsolidada',pUpdate);
    FiltrarDataSet(auxDatos,'Personal,Nomina',[-1,lcbNomina.EditValue]);
    auxDatos.Open;

    AsignarSQL(auxNom,'nominaConsolidada_simple',pUpdate);
    FiltrarDataSet(auxNom,'Personal,Nomina',[-1,lcbNomina.EditValue]);
    auxNom.Open;

    auxDatos.First;
    while not auxDatos.Eof do begin
      if not auxNom.Locate('IdPersonal;IdNomina',VarArrayOf([auxDatos.FieldByName('IdPersonal').AsInteger,auxDatos.FieldByName('IdNomina').AsInteger]),[]) then begin
        auxNom.Append;
        auxNom.FieldByName('IdPersonal').AsInteger:=auxDatos.FieldByName('IdPersonal').AsInteger;
        auxNom.FieldByName('IdNomina').AsInteger:=  auxDatos.FieldByName('IdNomina').AsInteger;
        auxNom.FieldByName('Dias').AsInteger:=      auxDatos.FieldByName('Dias').AsInteger;
        auxNom.FieldByName('sNumeroOrden').AsString:= auxDatos.FieldByName('Proy').AsString;
        auxNom.FieldByName('SalarioTexto').AsString:= auxDatos.FieldByName('Salario').AsString;
        auxNom.FieldByName('TotalNomina').AsFloat:=  auxDatos.FieldByName('MontoTotal').asFloat;
        auxNom.Post;
      end
      else begin
        auxNom.Edit;
        auxNom.FieldByName('IdPersonal').AsInteger:=auxDatos.FieldByName('IdPersonal').AsInteger;
        auxNom.FieldByName('IdNomina').AsInteger:=  auxDatos.FieldByName('IdNomina').AsInteger;
        auxNom.FieldByName('Dias').AsInteger:=      auxDatos.FieldByName('Dias').AsInteger;
        auxNom.FieldByName('sNumeroOrden').AsString:= auxDatos.FieldByName('Proy').AsString;
        auxNom.FieldByName('SalarioTexto').AsString:= auxDatos.FieldByName('Salario').AsString;
        auxNom.FieldByName('TotalNomina').AsFloat:=  auxDatos.FieldByName('MontoTotal').AsFloat;
        auxNom.Post;
      end;
      auxDatos.Next;
    end;

    if auxNom.RecordCount <> auxDatos.RecordCount then begin
      auxNom.First;
      auxSQL:=auxSQL.Empty;
      while not auxNom.Eof do begin
        if not auxDatos.Locate('IdPersonal;IdNomina',VarArrayOf([auxNom.FieldByName('IdPersonal').AsInteger,auxNom.FieldByName('IdNomina').AsInteger]),[]) then begin
          auxSQL:=' (IdPersonal = '+auxNom.FieldByName('IdPersonal').AsString+' AND IdNomina = '+auxNom.FieldByName('IdNomina').AsString+') OR';
        end;
        auxNom.Next;
      end;
      if not auxSQL.IsEmpty then begin
        auxDatos.SQL.Clear;
        auxDatos.SQL.Text:='DELETE FROM nom_nominaConsolidada WHERE ('+AnsiLeftStr(auxSQL,auxSQL.Length-2)+')';
        auxDatos.ExecSQL;
      end;
    end;
  end;
  auxNom.Destroy;
  auxDatos.Destroy;
  zNominaEmpleados.Refresh;
end;

procedure TFrmNomina.btnPrinterClick(Sender: TObject);
var
   FiltroEmpresa : string;
   auxBanco : TUniQuery;
begin
//    if cxView_NominaColumn1.DataBinding.Filter.FilterText <> '' then
//       Filtroempresa := cxView_NominaColumn1.DataBinding.Filter.FilterText
//    else
//       Filtroempresa := '%';
//    procNominaSIANI(Filtroempresa, zNominaEmpleados.FieldByName('FechaInicioN').AsDateTime, zNominaEmpleados.FieldByName('FechaTerminoN').AsDateTime, frmNomina, frxReportPreNomina.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.uConnection, global_grupo, 'reporteBarco'),'',
//    zNominaEmpleados.FieldByName('sIdProyecto').AsString,zNominaEmpleados.FieldByName('IdPersonal').AsString,
//    zNominaEmpleados.FieldByName('IdSalario').AsString,'Nomina', lcbNomina.EditValue);
    try
      if zNominaEmpleados.RecordCount > 0 then begin
        auxBanco := TUniQuery.Create(nil);
        auxBanco.Connection:=Connection.Uconnection;
        auxBanco.SQL.Clear;
        auxBanco.SQL.Text:='SELECT IdBanco FROM rhu_bancos WHERE NombreCorto LIKE '+QuotedStr('%BANAMEX%')+' LIMIT 1';
        auxBanco.Open;
        zDiasL.Active:=False;
        AsignarSQL(zDiasL,'nominaConsolidada',pUpdate);
        FiltrarDataSet(zDiasL,'Personal,Nomina,Banco,EmpresaP',[-1,lcbNomina.EditValue,auxBanco.FieldByName('IdBanco').AsInteger,-1]);
        zDiasL.Open;

        Filtroempresa := cxView_NominaColumn1.DataBinding.Filter.FilterText;
        zDiasL.Filtered:=False;
        zDiasL.Filter:=FiltroEmpresa;
        zDiasL.Filtered:=True;
        ReporteNominaConsolidada( zDiasL, FrmNomina, frxReportPreNomina.OnGetValue, nil);
      end
      else
        MessageDlg('No hay datos para imprimir',mtInformation,[mbOk],0);
    except
      on e:Exception do begin
        UnitExcepciones.ManejarExcep(e.Message,e.ClassName,'Nomina','Al imprimir',0);
      end;
    end;
end;

procedure TFrmNomina.btnRefreshClick(Sender: TObject);
begin
 zNominaEmpleados.Refresh;
end;

procedure TFrmNomina.cxView_NominaColumn5PropertiesEditValueChanged(
  Sender: TObject);
begin
      zNominaEmpleados.Refresh
end;

procedure TFrmNomina.cxView_NominaColumn7PropertiesEditValueChanged(
  Sender: TObject);
begin
//  zNominaEmpleados.FieldByName('PagoFuera').AsFloat:=SimpleRoundTo(zNominaEmpleados.FieldByName('TotalNomina').AsFloat-zNominaEmpleados.FieldByName('Transferencia').AsFloat,-2);
  zNominaEmpleados.Post;
  zNominaEmpleados.Edit;
  zNominaEmpleados.FieldByName('PagoFuera').AsFloat:=SimpleRoundTo(zNominaEmpleados.FieldByName('TotalNomina').AsFloat-zNominaEmpleados.FieldByName('Transferencia').AsFloat,-2);
  zNominaEmpleados.Post;
  zNominaEmpleados.Refresh;
end;

procedure TFrmNomina.cxView_NominaColumn9PropertiesEditValueChanged(
  Sender: TObject);
begin
  zNominaEmpleados.Post;
  zNominaEmpleados.Edit;
  zNominaEmpleados.FieldByName('Transferencia').AsFloat:=SimpleRoundTo(zNominaEmpleados.FieldByName('TotalNomina').AsFloat-zNominaEmpleados.FieldByName('PagoFuera').AsFloat,-2);
  zNominaEmpleados.Post;
  zNominaEmpleados.Refresh;
end;

procedure TFrmNomina.DetalleNomina;
var
  auxBanco : TUniQuery;
begin
  auxBanco := TUniQuery.Create(nil);
  auxBanco.Connection:=Connection.Uconnection;
  auxBanco.SQL.Clear;
  auxBanco.SQL.Text:='SELECT IdBanco FROM rhu_bancos WHERE NombreCorto LIKE '+QuotedStr('%BANAMEX%')+' LIMIT 1';
  auxBanco.Open;
  AsignarSQL(zNominaEmpleados,'nominaConsolidada',pUpdate);
  FiltrarDataSet(zNominaEmpleados,'Personal,Nomina,Banco,EmpresaP',[-1,lcbNomina.EditValue,auxBanco.FieldByName('IdBanco').AsInteger,-1]);
  zNominaEmpleados.Open;

  cxView_Nomina.DataController.Groups.FullExpand;
end;

procedure TFrmNomina.dFechaInicioPropertiesChange(Sender: TObject);
begin
  FechaDetalle;
end;

procedure TFrmNomina.dFechaTerminoPropertiesChange(Sender: TObject);
begin
  FechaDetalle;
end;

procedure TFrmNomina.FechaDetalle;
begin


  //cxView_Proveedor.DataController.Groups.FullExpand;
end;

procedure TFrmNomina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
guardar_leer_grid(cxView_Nomina,FrmNomina,1);
  action := cafree;
end;

procedure TFrmNomina.FormShow(Sender: TObject);
begin
  titulo:='Nómina';
  cxLeyenda.Caption:=titulo;

  zNomina.Active:=False;
  AsignarSQL(zNomina,'nom_nomina',pUpdate);
  FiltrarDataSet(zNomina,'IdNomina',['-1']);
  zNomina.Open;
  if zNomina.RecordCount > 0 then
    lcbNomina.EditValue := zNomina.FieldByName('IdNomina').AsInteger;
  guardar_leer_grid(cxView_Nomina,FrmNomina,0);
end;

procedure TFrmNomina.frxReportPreNominaGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'FECHA_INICIO') = 0 then
     Value := zNomina.FieldByName('FechaInicioN').AsDateTime;

  if CompareText(VarName, 'FECHA_FINAL') = 0 then
     Value := zNomina.FieldByName('FechaTerminoN').AsDateTime;
end;

procedure TFrmNomina.grid_NominaExit(Sender: TObject);
begin
  if zNominaEmpleados.State = dsEdit then
    zNominaEmpleados.Post;
end;

procedure TFrmNomina.lcbNominaPropertiesEditValueChanged(Sender: TObject);
begin
  DetalleNomina
end;

procedure TFrmNomina.raerDasLaboradosdelPeriodoAnterior1Click(
  Sender: TObject);
var
  zPerAnt: TUniquery;
  IdNomAct, IdNomAnt : Integer;
  I, FechaI, FechaT : TDate;
  ii:String;
  begin
  if zNomina.Locate('IdNomina',lcbNomina.EditValue,[]) then
  begin
    IdNomAct := lcbNomina.EditValue;
    IdNomAnt := lcbNomina.EditValue -1;
    FechaI := zNomina.FieldByName('FechaInicioN').AsDateTime;
    FechaT := zNomina.FieldByName('FechaTerminoN').AsDateTime;

    BarraMostrar(True, progreso, LabelProceso );
    BarraProgresoAvance(Progreso, 0,100,5);

    zPerAnt  := TUniquery.Create(nil);
    AsignarSQL(zPerAnt,'nom_nominapersonalAsignado', pUpdate);
    FiltrarDataset(zPerAnt,'IdNomina',[IdNomAnt]);
    zPerAnt.Open;

    BarraProgresoAvance(Progreso, 0,100,15);
    AsignarSQL(zDiasL,'diasPersonal', pUpdate);
    FiltrarDataset(zDiasL,'Personal,FechaI,FechaF',['-1',
    fechaSQL(zNomina.FieldByName('FechaInicioN').AsDateTime),
    fechaSQL(zNomina.FieldByName('FechaTerminoN').AsDateTime)]);
    zDiasL.Open;
    BarraProgresoAvance(Progreso, 0,100,20);
    if zPerAnt.RecordCount > 0 then
    begin
      zPerAnt.First;
      while not zPerAnt.Eof do
      begin
        if ((zPerAnt.FieldByName('sIdProyecto').AsString = 'HO') or (zPerAnt.FieldByName('sIdProyecto').AsString = 'PROY-0015')) then
        BEGIN
          I := FechaI;
          while not (I > FechaT) do
          begin
            ii := fechaSQL(I);
            if not zDiasL.Locate('IdProyecto;IdPersonal;Fecha;', varArrayOf([zPerAnt.FieldByName('sIdProyecto').AsString,zPerAnt.FieldByName('IdPersonal').AsString,DateToStr(I)]),[]) then
            begin
              zDiasL.Append;
              zDiasL.FieldByName('IdProyecto').AsString := zPerAnt.FieldByName('sIdProyecto').AsString;
              zDiasL.FieldByName('IdPersonal').AsString := zPerAnt.FieldByName('IdPersonal').AsString;
              zDiasL.FieldByName('IdPlataforma').AsInteger := 1 ;//zPerAnt.FieldByName('sIdProyecto').AsString;
              zDiasL.FieldByName('Fecha').AsDateTime := I;
              zDiasL.FieldByName('HoraEntrada').AsString := '09:00:00';
              zDiasL.FieldByName('HoraSalida').AsString :=  '19:00:00';
              zDiasL.FieldByName('Jornada').AsInteger := 8;
              zDiasL.FieldByName('Nota').AsString := 'Día Laborado';
              zDiasL.FieldByName('IdPuesto').AsString := zPerAnt.FieldByName('IdPuesto').AsString;
              zDiasL.FieldByName('sIdTurno').AsString := 'TO';
              zDiasL.FieldByName('Asistencia').AsFloat := 1;
              zDiasL.Post;
              //ShowMessage(DateToStr(I));
            end;

            I := I+1;
          end;


        END;
        zPerAnt.Next;
      end;

    end;

  end;
  BarraProgresoAvance(Progreso, 0,100,60);
  BarraMostrar( False, progreso, LabelProceso );
  zNominaEmpleados.Refresh;
end;

end.
