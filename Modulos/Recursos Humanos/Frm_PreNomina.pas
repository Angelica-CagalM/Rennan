unit Frm_PreNomina;

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
  cxDBLookupComboBox, cxProgressBar, cxCheckBox, strUtils, unitMetodos;

type
  TFrmPreNomina = class(TForm)
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
    cxActualizar: TcxButton;
    zNomina: TUniQuery;
    dsNomina: TDataSource;
    zNominaEmpleados: TUniQuery;
    dsNominaEmpleados: TDataSource;
    cxView_NominaColumn5: TcxGridDBColumn;
    cxView_NominaColumn7: TcxGridDBColumn;
    cxView_NominaColumn9: TcxGridDBColumn;
    cxView_NominaColumn10: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    raerDasLaboradosdelPeriodoAnterior1: TMenuItem;
    zDiasL: TUniQuery;
    cxView_NominaColumn11: TcxGridDBColumn;
    Panel1: TPanel;
    chkContinuo: TCheckBox;
    cxCompacto: TcxCheckBox;
    CheckDescuento: TCheckBox;
    CheckCompleto: TCheckBox;
    cxLabel1: TcxLabel;
    lcbNomina: TcxLookupComboBox;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    btnPrenomina: TcxButton;
    cxView_NominaColumn13: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DetalleNomina;

    procedure dFechaInicioPropertiesChange(Sender: TObject);
    procedure FechaDetalle;
    procedure dFechaTerminoPropertiesChange(Sender: TObject);
    procedure btnPrenominaClick(Sender: TObject);
    procedure frxReportPreNominaGetValue(const VarName: string;
      var Value: Variant);
    procedure lcbNominaPropertiesEditValueChanged(Sender: TObject);
    procedure cxActualizarClick(Sender: TObject);
    procedure grid_NominaExit(Sender: TObject);
    procedure raerDasLaboradosdelPeriodoAnterior1Click(Sender: TObject);
    procedure cxView_NominaColumn11PropertiesEditValueChanged(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure cxView_NominaColumn10PropertiesEditValueChanged(Sender: TObject);
    procedure cxView_NominaColumn5PropertiesEditValueChanged(Sender: TObject);
    procedure cxView_NominaColumn7PropertiesEditValueChanged(Sender: TObject);
    procedure cxView_NominaColumn9PropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPreNomina: TFrmPreNomina;
  titulo,titulo2 : string;

implementation

{$R *.dfm}

uses
frm_connection,UnitGenerales,UnitRH,UFunctionsGHH,global, Frm_Nomina,
  frm_comentarios_nomina;
procedure TFrmPreNomina.btnDetalleClick(Sender: TObject);
begin
  if not MostrarFormChild('frmComentariosNomina',global_dxBarManagerPrincipal) Then
  begin
    global_btnPermisos := '';
    Application.CreateForm(TfrmComentariosNomina, frmComentariosNomina);
    frmComentariosNomina.show;
  end;
end;

procedure TFrmPreNomina.btnPrenominaClick(Sender: TObject);
var
   FiltroEmpresa : string;
begin
    if cxView_NominaColumn1.DataBinding.Filter.FilterText <> '' then
       Filtroempresa := cxView_NominaColumn1.DataBinding.Filter.FilterText
    else
       Filtroempresa := '%';
    procPreNominaSIANI(Filtroempresa,zNominaEmpleados.FieldByName('FechaInicioN').AsDateTime, zNominaEmpleados.FieldByName('FechaTerminoN').AsDateTime, frmPreNomina, frxReportPreNomina.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, '','',
    zNominaEmpleados.FieldByName('sIdProyecto').AsString,zNominaEmpleados.FieldByName('IdPersonal').AsString,
    zNominaEmpleados.FieldByName('IdSalario').AsString,'PreNomina', lcbNomina.EditValue);
end;

procedure TFrmPreNomina.btnRefreshClick(Sender: TObject);
begin
    zNomina.Refresh;
end;

procedure TFrmPreNomina.cxActualizarClick(Sender: TObject);
Var
  FechaI, FechaF : TDateTime;
  sqlAux : String;
begin
  try
    if not (lcbNomina.ItemIndex >= 0) then
    raise Exception.Create('Seleccione una nomina para asignar personal');
    if zNomina.Locate('IdNomina',lcbNomina.EditValue,[]) then
    begin
      BarraMostrar(True, progreso, LabelProceso );
      BarraProgresoAvance(Progreso, 0,100,10);

      FechaI:= zNomina.FieldByName('FechaInicioN').AsDateTime;
      FechaF:= zNomina.FieldByName('FechaTerminoN').AsDateTime;

      AsignarSQL(EmpleadosDiasL,'empleados_nomina',pUpdate);
      FiltrarDataSet(EmpleadosDiasL,'FechaI,FechaF',[fechaSQL(FechaI),fechaSQL(FechaF)]);
      EmpleadosDiasL.Open;

      BarraProgresoAvance(Progreso, 0,100,30);

      if EmpleadosDiasL.RecordCount>0  then
      begin
        EmpleadosDiasL.First;
        while not EmpleadosDiasL.Eof do
        begin
          if not zNominaEmpleados.Locate('IdPersonal;sIdProyecto',varArrayOf([EmpleadosDiasL.FieldByName('IdPersonal').AsString,EmpleadosDiasL.FieldByName('IdProyecto').AsString]),[]) then
          begin
            zNominaEmpleados.Append;
            zNominaEmpleados.FieldByName('IdNominaPersonal').AsInteger := 0;
            zNominaEmpleados.FieldByName('IdNomina').AsInteger := lcbNomina.EditValue;
            zNominaEmpleados.FieldByName('IdPersonal').AsInteger := EmpleadosDiasL.FieldByName('IdPersonal').AsInteger;
            zNominaEmpleados.FieldByName('IdSalario').AsInteger := EmpleadosDiasL.FieldByName('IdSalario').AsInteger;
            zNominaEmpleados.FieldByName('sIdProyecto').AsString := EmpleadosDiasL.FieldByName('IdProyecto').AsString;
            zNominaEmpleados.FieldByName('Bonos').AsFloat := 0.00;
            zNominaEmpleados.FieldByName('Anticipos').AsFloat := 0.00;
            zNominaEmpleados.FieldByName('Descuentos').AsFloat := 0.0;
            zNominaEmpleados.FieldByName('Infonavit').AsFloat := 0.0;
            zNominaEmpleados.FieldByName('OtrosPagos').AsFloat:= 0.0;
            zNominaEmpleados.FieldByName('Complemento').AsFloat:=0.0;
            zNominaEmpleados.FieldByName('pagoFuera').AsFloat:=0.0;
            zNominaEmpleados.Post;
          end
          else begin
            if zNominaEmpleados.FieldByName('IdSalario').AsInteger <> EmpleadosDiasL.FieldByName('IdSalario').AsInteger then begin
              zNominaEmpleados.Edit;
              zNominaEmpleados.FieldByName('IdSalario').AsInteger:=EmpleadosDiasL.FieldByName('IdSalario').AsInteger;
              zNominaEmpleados.Post;
            end;
          end;
          EmpleadosDiasL.Next;
        end;
        BarraProgresoAvance(Progreso, 0,100,40);
        zNominaEmpleados.Refresh;

        cxView_Nomina.DataController.Groups.FullExpand;
        BarraProgresoAvance(Progreso, 0,100,20);
        BarraMostrar(False, progreso, LabelProceso );
      end;
      zNominaEmpleados.Filtered:=False;
      zNominaEmpleados.Filter:= 'IdNomina = '+VarToStr(lcbNomina.EditValue);
      zNominaEmpleados.Filtered:=True;
      zNominaEmpleados.RecordCount;
      zNominaEmpleados.First;
      sqlAux:= '';
      while not zNominaEmpleados.Eof do begin
        if not EmpleadosDiasL.Locate('IdPersonal;IdProyecto',VarArrayOf([zNominaEmpleados.FieldByName('IdPersonal').AsInteger,zNominaEmpleados.FieldByName('sIdProyecto').AsString]),[]) then begin
          sqlAux:=sqlAux+' (IdPersonal = '+zNominaEmpleados.FieldByName('IdPersonal').AsString+' AND sIdProyecto = '+QuotedStr(zNominaEmpleados.FieldByName('sIdProyecto').AsString)+') OR';
        end;
        zNominaEmpleados.Next;
      end;
      if sqlAux <> '' then begin
        EmpleadosDiasL.Active:=False;
        EmpleadosDiasL.SQL.Clear;
        EmpleadosDiasL.SQL.Text:='DELETE FROM nom_nominapersonal WHERE IdNomina = '+VarToStr(lcbNomina.EditValue)+' AND ('+AnsiLeftStr(sqlAux,sqlAux.Length-2)+')';
        EmpleadosDiasL.ExecSQL;
      end;
      zNominaEmpleados.Filtered:=False;
      zNominaEmpleados.Refresh;
    end;


  except
  on e:Exception do
    ShowMessage('Error:'+e.Message);

  end;
end;

procedure TFrmPreNomina.cxView_NominaColumn10PropertiesEditValueChanged(
  Sender: TObject);
begin
    zNominaEmpleados.Refresh;
end;

procedure TFrmPreNomina.cxView_NominaColumn11PropertiesEditValueChanged(
  Sender: TObject);
begin
    zNominaEmpleados.Refresh
end;

procedure TFrmPreNomina.cxView_NominaColumn5PropertiesEditValueChanged(
  Sender: TObject);
begin
    zNominaEmpleados.Refresh;
end;

procedure TFrmPreNomina.cxView_NominaColumn7PropertiesEditValueChanged(
  Sender: TObject);
begin
    zNominaEmpleados.Refresh;
end;

procedure TFrmPreNomina.cxView_NominaColumn9PropertiesEditValueChanged(
  Sender: TObject);
begin
    zNominaEmpleados.Refresh;
end;

procedure TFrmPreNomina.DetalleNomina;
begin
  AsignarSQL(zNominaEmpleados,'nom_nominapersonalAsignado',pUpdate);
  FiltrarDataSet(zNominaEmpleados,'IdNomina',[lcbNomina.EditValue]);
  zNominaEmpleados.Open;

  cxView_Nomina.DataController.Groups.FullExpand;
end;

procedure TFrmPreNomina.dFechaInicioPropertiesChange(Sender: TObject);
begin
  FechaDetalle;
end;

procedure TFrmPreNomina.dFechaTerminoPropertiesChange(Sender: TObject);
begin
  FechaDetalle;
end;

procedure TFrmPreNomina.FechaDetalle;
begin


  //cxView_Proveedor.DataController.Groups.FullExpand;
end;

procedure TFrmPreNomina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  guardar_leer_grid(cxView_Nomina,FrmPreNomina,1);
  action := cafree;
end;

procedure TFrmPreNomina.FormShow(Sender: TObject);
begin
  titulo:='Pre Nómina';
  cxLeyenda.Caption:=titulo;

  zNomina.Active:=False;
  AsignarSQL(zNomina,'nom_nomina',pUpdate);
  FiltrarDataSet(zNomina,'IdNomina',['-1']);
  zNomina.Open;
  if zNomina.RecordCount > 0 then
    lcbNomina.EditValue := zNomina.FieldByName('IdNomina').AsInteger;
 guardar_leer_grid(cxView_Nomina,FrmPreNomina,0);
end;

procedure TFrmPreNomina.frxReportPreNominaGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'FECHA_INICIO') = 0 then
     Value := zNominaEmpleados.FieldByName('FechaInicioN').AsDateTime;

  if CompareText(VarName, 'FECHA_FINAL') = 0 then
     Value := zNominaEmpleados.FieldByName('FechaTerminoN').AsDateTime;
end;

procedure TFrmPreNomina.grid_NominaExit(Sender: TObject);
begin
  if zNominaEmpleados.State = dsEdit then
    zNominaEmpleados.Post;
end;

procedure TFrmPreNomina.lcbNominaPropertiesEditValueChanged(Sender: TObject);
begin
  DetalleNomina
end;

procedure TFrmPreNomina.raerDasLaboradosdelPeriodoAnterior1Click(
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
  cxActualizar.Click;
end;

end.
