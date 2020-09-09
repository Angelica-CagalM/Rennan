unit frm_ActividadesGeneral;

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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, dxLayoutContainer,
  dxLayoutControl, frm_barraH2, frm_barraH1, cxLabel, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxSplitter, Vcl.ExtCtrls, dxLayoutcxEditAdapters,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit,
  cxTimeEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxCalendar, MemDS, DBAccess, Uni,
  unitGenerales, global, frm_connection, Vcl.Menus, cxCheckBox, dxToggleSwitch,
  dxDBToggleSwitch, Vcl.StdCtrls, cxButtons, utilerias, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxGridExportLink, ShellApi, frxClass, frxDBSet;

type
  TfrmActGeneral = class(TForm)
    PanelTop: TPanel;
    PanelCentral: TPanel;
    PanelInfo: TPanel;
    cxSplitterInfo: TcxSplitter;
    cxViewRegistro: TcxGridDBTableView;
    cxGridRegistroLevel1: TcxGridLevel;
    cxGridRegistro: TcxGrid;
    cxLeyenda: TcxLabel;
    frmBarraH11: TfrmBarraH1;
    PanelDown: TPanel;
    frmBarraH21: TfrmBarraH2;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxColumn1: TcxGridDBColumn;
    cxColumn2: TcxGridDBColumn;
    cxColumn3: TcxGridDBColumn;
    cxColumn4: TcxGridDBColumn;
    cxColumn5: TcxGridDBColumn;
    cxColumn6: TcxGridDBColumn;
    cxFecha: TcxDBDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxHoraIni: TcxDBTimeEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxHoraFin: TcxDBTimeEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxProyecto: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    uRegistro: TUniQuery;
    ds_registro: TDataSource;
    uOrdenes: TUniQuery;
    ds_ordenes: TDataSource;
    PanelDetalle: TPanel;
    cxSplitterDetalle: TcxSplitter;
    PanelLabel: TPanel;
    cxLabel1: TcxLabel;
    uProgramadas: TUniQuery;
    ds_programadas: TDataSource;
    PanelOpciones: TPanel;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxFechaInicio: TcxDateEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxFechaFinal: TcxDateEdit;
    dxLayoutItem12: TdxLayoutItem;
    Reporte: TfrxReport;
    frxDatos: TfrxDBDataset;
    ds_Grafico: TDataSource;
    uGrafico: TUniQuery;
    frxGrafica: TfrxDBDataset;
    uTurnos: TUniQuery;
    ds_registroReporte: TDataSource;
    uRegistroReporte: TUniQuery;
    cxColumn7: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
   // procedure btnDeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGridRegistroDBTableView1DataControllerFilterChanged(
      Sender: TObject);
    //procedure cxNuevoDetalleClick(Sender: TObject);
    //procedure cxEditaDetalleClick(Sender: TObject);
   // procedure cxGuardarDetalleClick(Sender: TObject);
   // procedure cxCancelarDetalleClick(Sender: TObject);
   // procedure btnEliminarDetalleClick(Sender: TObject);
    //procedure btnDetalleClick(Sender: TObject);
    //procedure cxRecurrenteDClick(Sender: TObject);
    function ExisteActividad(Fecha: TDate;Horario:TTime) : boolean;
    procedure InciaDatos;

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxFechaFinalExit(Sender: TObject);
    procedure cxFechaInicioExit(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure btnExportaClick(Sender: TObject);
    procedure cxViewRegistroStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmActGeneral: TfrmActGeneral;
  titulo : String;

implementation

{$R *.dfm}

procedure TfrmActGeneral.EnterControl(Sender: TObject);
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

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBSpinEdit) then
        tcxDBSpinEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmActGeneral.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBSpinEdit) then
        tcxDBSpinEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmActGeneral.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;


procedure TfrmActGeneral.btnAddClick(Sender: TObject);
var
  Fecha : TDate;
  HoraI, HoraF : string;
begin
  cxLeyenda.Caption:=titulo+'[Añadiendo]';
  if uRegistro.RecordCount > 0 then
  begin
     uRegistro.Filtered := False;
     uRegistro.Filter   := 'Fecha ='+Quotedstr(dateToStr(date));
     uRegistro.Filtered := True;

     if uRegistro.RecordCount = 0 then
     begin
        Fecha:=cxFechaFinal.Date;
        HoraI :=uTurnos.FieldByName('sHoraInicio').AsString;
     end
     else
     begin
        uRegistro.Last;
        Fecha := uRegistro.FieldByName('Fecha').AsDateTime;
        HoraI := FormatDateTime('HH:mm',StrToTime(uRegistro.FieldByName('HoraFin').AsString));
     end;
  end
  else
  begin
    Fecha:=cxFechaFinal.Date;
    HoraI:=uTurnos.FieldByName('sHoraInicio').AsString;
  end;
  HoraF := sfnSumaHoras('01:00', HoraI);

  uRegistro.Append;
  uRegistro.FieldByName('sIdUsuario').AsString    :=GLOBAL_USUARIO;
  uRegistro.FieldByName('Fecha').AsDateTime       :=Fecha;
  uRegistro.FieldByName('HoraInicio').AsString    :=HoraI;
  uRegistro.FieldByName('HoraFin').AsString       :=HoraF;
  uRegistro.FieldByName('sNumeroOrden').AsString  :=uOrdenes.FieldByName('sNumeroOrden').asString;
  PanelInfo.Visible:=True;
  cxSplitterInfo.Visible:=True;
  cxhorafin.SetFocus;

end;

procedure TfrmActGeneral.btnCancelClick(Sender: TObject);
begin
  uRegistro.Cancel;
  cxLeyenda.Caption:=titulo;
  PanelInfo.Visible:=False;
  cxSplitterInfo.Visible:=False;
end;

//procedure TfrmActGeneral.btnDeleteClick(Sender: TObject);
//var
//    indice, iGrid    : integer;
//    lContinua : boolean;
//begin
//  if uRegistro.RecordCount > 0 then
//  begin
//    iGrid     := 0;
//    indice := cxViewRegistro.DataController.GetSelectedRowIndex(iGrid);
//    cxViewRegistro.DataController.FocusedRowIndex := indice;
//
//    lcontinua := False;
//    if cxViewRegistro.DataController.GetSelectedCount = 1 then
//      If MessageDlg('Desea eliminar la actividad de seleccionada?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//         lcontinua := True;
//
//     if cxViewRegistro.DataController.GetSelectedCount > 1 then
//      If MessageDlg('Desea eliminar las actividades seleccionadas?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//         lcontinua := True;
//
//     if lContinua then
//     begin
//        iGrid     := 0;
//        indice := cxViewRegistro.DataController.GetSelectedRowIndex(iGrid);
//        cxViewRegistro.DataController.FocusedRowIndex := indice;
//
//        with cxViewRegistro.DataController.DataSource.DataSet do
//        for iGrid := 0 to cxViewRegistro.DataController.GetSelectedCount - 1 do
//        begin
//            indice := cxViewRegistro.DataController.GetSelectedRowIndex(iGrid);
//            cxViewRegistro.DataController.FocusedRowIndex := indice;
//            cxViewRegistro.DataController.DataSource.DataSet.Delete;
//        end;
//
//        cxViewRegistro.DataController.ClearSelection;
//        uRegistro.ApplyUpdates();
//        uRegistro.Refresh;
//     end;
//  end
//  else
//    MessageDlg('No hay registros para eliminar',mtInformation,[mbOk],0);
//end;

//procedure TfrmActGeneral.btnDetalleClick(Sender: TObject);
//begin
//  PanelDetalle.Visible:= not PanelDetalle.Visible;
//  cxSplitterDetalle.Visible:= not cxSplitterDetalle.Visible;
//  if PanelDetalle.Visible then
//    cxViewProgramado.DataController.Groups.FullExpand;
//end;

procedure TfrmActGeneral.btnEditClick(Sender: TObject);
begin
  if uRegistro.RecordCount > 0 then
  begin
      if cxViewRegistro.DataController.GetSelectedCount > 1 then
      begin
         MessageDlg('No se puede modificar más de 1 registro.',mtInformation, [mbOk], 0);
         exit;
      end;

      cxLeyenda.Caption:=titulo+'[Editando]';
      uRegistro.Edit;
      PanelInfo.Visible:=True;
      cxSplitterInfo.Visible:=True;
  end
  else
    MessageDlg('No hay datos para editar',mtInformation,[mbOk],0);
end;

//procedure TfrmActGeneral.btnEliminarDetalleClick(Sender: TObject);
//begin
//  if uProgramadas.RecordCount>0 then begin
//    uProgramadas.Delete;
//    uProgramadas.ApplyUpdates();
//    uProgramadas.Refresh;
//  end
//  else
//    MessageDlg('No hay datos a eliminar',mtInformation,[mbOk],0);
//end;

procedure TfrmActGeneral.btnExportaClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
  dlgSave : TSaveDialog;
begin
  dlgSave := TSaveDialog.Create(nil);
  dlgSave.FileName := '';
  if dlgSave.Execute then
  begin
    rutaArchivo := dlgSave.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, cxGridRegistro);
    dlgSave.Destroy;
    if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;

end;

procedure TfrmActGeneral.btnPostClick(Sender: TObject);
var
  uAyuda:TUniQuery;
  ban : boolean;
begin
  if cxHoraFin.DataBinding.DataSource.DataSet.FieldByName('HoraFin').AsDateTime < cxHoraFin.DataBinding.DataSource.DataSet.FieldByName('HoraInicio').AsDateTime then
  begin
      MessageDlg('La Hora Fin es mayor a la Hora Inicio',mtInformation,[mbOk],0);
      cxHoraFin.SetFocus;
      exit;
  end;

  if uRegistro.State = dsInsert then
  begin
    if ExisteActividad(uRegistro.FieldByName('Fecha').AsDateTime,uRegistro.FieldByName('HoraInicio').AsDateTime) then
      ban:=False
    else
      ban:=True;
    if StrToDate(uRegistro.FieldByName('Fecha').AsString) > StrToDate(DateToStr(Now())) then begin
      MessageDlg('No se pueden agregar actividades con fecha posterior a la actual. Si lo desea, puede programar esta actividad',mtInformation,[mbOk],0);
      ban:=False;
    end;
  end
  else
    ban:=True;
  if ban then begin
    uRegistro.Post;
    uRegistro.Refresh;
    cxLeyenda.Caption:=Titulo;
    PanelInfo.Visible:=False;
    cxSplitterInfo.Visible:=False;
  end
  else
    MessageDlg('La hora de inicio ya se encuentra registrada',mtInformation,[mbOk],0);

end;

procedure TfrmActGeneral.btnPrinterClick(Sender: TObject);
var
  sCadenaFiltro : string;
begin
    if not FileExists(global_files + global_miReporte + '_actividades_centrocosto.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'_actividades_centrocosto.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;

    sCadenaFiltro := stringreplace(CxColumn1.DataBinding.Filter.FilterText, 'sIdFolio', 'sNumeroOrden',
                          [rfReplaceAll, rfIgnoreCase]);

    uGrafico.Active:=False;
    AsignarSQL(uGrafico,'registro_actividades_grafica',pUpdate);
    FiltrarDataSet(uGrafico,'Usuario,Proyecto,FechaI,FechaF,IdPersonal,filter_by_code',[GLOBAL_USUARIO,-1,fechaSQL(cxFechaInicio.Date),fechaSQL(cxFechaFinal.Date),connection.uUsuario.FieldByName('IdPersonal').AsInteger,sCadenaFiltro]);
    uGrafico.Open;

    uRegistroReporte.Active:=False;
    AsignarSQL(uRegistroReporte,'registro_actividades_reporte',pUpdate);
    FiltrarDataSet(uRegistroReporte,'Usuario,Proyecto,FechaI,FechaF,IdPersonal,filter_by_code',[GLOBAL_USUARIO,-1,fechaSQL(cxFechaInicio.Date),fechaSQL(cxFechaFinal.Date),connection.uUsuario.FieldByName('IdPersonal').AsInteger,sCadenaFiltro]);
    uRegistroReporte.Open;

    Reporte.LoadFromFile(global_files + global_MiReporte +'_actividades_centrocosto.fr3');
    Reporte.ShowReport;

    uRegistro.Filtered:=False;
end;

procedure TfrmActGeneral.btnRefreshClick(Sender: TObject);
begin
  uRegistro.Refresh;
end;

//procedure TfrmActGeneral.cxCancelarDetalleClick(Sender: TObject);
//begin
//  uProgramadas.Cancel;
//  PAnelDownD.Visible:=FAlse;
//end;

//procedure TfrmActGeneral.cxEditaDetalleClick(Sender: TObject);
//begin
//  if uProgramadas.RecordCount > 0 then begin
//    uProgramadas.Edit;
//    cxRecurrenteDClick(Sender);
//    PanelDownD.Visible:=True;
//  end
//  else
//    MessageDlg('No hay datos a editar',mtInformation,[mbOk],0);
//end;

procedure TfrmActGeneral.cxFechaFinalExit(Sender: TObject);
begin
    InciaDatos;
end;

procedure TfrmActGeneral.cxFechaInicioExit(Sender: TObject);
begin
    InciaDatos;
end;

procedure TfrmActGeneral.cxGridRegistroDBTableView1DataControllerFilterChanged(
  Sender: TObject);
begin
  cxViewRegistro.DataController.Groups.FullExpand;
end;



function TfrmActGeneral.ExisteActividad(Fecha: TDate; Horario:TTime) : boolean;
var
  uAyuda : TUniQuery;
begin
  uAyuda:=TUniQuery.Create(nil);
  uAyuda.Connection:=connection.Uconnection;
  uAyuda.SQL.Clear;
  uAyuda.SQL.Text:='SELECT * FROM registro_actividades WHERE sIdUsuario = :Usuario AND Fecha = DATE(:Fecha) AND ((TIME(:Hora) BETWEEN HoraInicio AND HoraFin) AND TIME(:Hora) <> HoraFin)';
  uAyuda.ParamByName('Usuario').AsString:=GLOBAL_USUARIO;
  uAyuda.ParamByName('Fecha').AsDate:=Fecha;
  uAyuda.ParamByName('Hora').AsTime:=Horario;
  uAyuda.Open;
  if uAyuda.RecordCount > 0 then
    RESULT:= True
  else
    RESULT:=False;
  uAyuda.Free;
end;

//procedure TfrmActGeneral.cxNuevoDetalleClick(Sender: TObject);
//begin
//  uProgramadas.Append;
//  uProgramadas.FieldByName('sIdUsuario').AsString   :=GLOBAL_USUARIO;
//  uProgramadas.FieldByName('sNumeroOrden').AsString :=uOrdenes.FieldByName('sNumeroOrden').AsString;
//  uProgramadas.FieldByName('Fecha').AsDateTime      :=Now();
//  uProgramadas.FieldByName('FechaFin').AsDateTime   :=Now();
//  uProgramadas.FieldByName('HoraInicio').AsDateTime :=StrToTime(uTurnos.FieldByName('sHoraInicio').AsString);
//  uProgramadas.FieldByName('HoraFin').AsDateTime    :=StrToTime(sfnSumaHoras('01:00', uTurnos.FieldByName('sHoraInicio').AsString));
//  uProgramadas.FieldByName('EsRecurrente').AsString :='No';
//  cxRecurrenteDClick(Sender);
//  PanelDownD.Visible:=True;
//  cxHoraIniD.SetFocus;
//end;

//procedure TfrmActGeneral.cxRecurrenteDClick(Sender: TObject);
//begin
//   if cxRecurrenteD.EditValue = 'Si' then begin
//    dxLayoutItem7.Visible:=True;
//    cxFechaFinD.SetFocus;
//  end
//  else
//    dxLayoutItem7.Visible:=False;
//end;

procedure TfrmActGeneral.cxViewRegistroStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn, BColumn, CColumn: TcxCustomGridTableItem;
begin
//    AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('EsProgramada');
//    if ARecord.Values[AColumn.Index] ='Si' then
//       AStyle := connection.cxNoImprime ;
end;

procedure TfrmActGeneral.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  guardar_leer_grid(cxViewRegistro,frmActGeneral,1);
  uRegistro.Cancel;
  action:=cafree;

end;

procedure TfrmActGeneral.FormShow(Sender: TObject);
begin
  titulo:=cxLeyenda.Caption;
  cxFechaInicio.Date := StrToDate('01/'+copy(DateToStr(date),4,2)+'/'+copy(DateToStr(date),7,4));
  cxFechaFinal.Date  := Date;

  PanelInfo.Visible:=False;
  cxSplitterInfo.Visible:=False;

  uOrdenes.Active:=False;
  AsignarSQL(uOrdenes,'ordenesdetrabajo',pUpdate);
  FiltrarDataSet(uOrdenes,'Contrato,TProyecto',[GLOBAL_CONTRATO,'PROYECTO']);
  uOrdenes.Open;

  uTurnos.Active:=False;
  AsignarSQL(uTurnos,'turnos',pUpdate);
  FiltrarDataSet(uTurnos,'sIdTurno',['TO']);
  uTurnos.Open;

  cxViewRegistro.DataController.Groups.FullExpand;

  PanelDetalle.Visible:=False;
  cxSplitterDetalle.Visible:=False;


  InciaDatos;
  guardar_leer_grid(cxViewRegistro,frmActGeneral,0);

end;

procedure TfrmActGeneral.InciaDatos;
begin
    uRegistro.Active:=False;
    AsignarSQL(uRegistro,'registro_actividades',pUpdate);
    FiltrarDataSet(uRegistro,'Usuario,Proyecto,FechaI,FechaF,IdPersonal',[-1,-1,fechaSQL(cxFechaInicio.Date),fechaSQL(cxFechaFinal.Date),-1]);
    uRegistro.Open;

    uProgramadas.Active:=False;
    AsignarSQL(uProgramadas,'actividades_programadas',pUpdate);
   FiltrarDataSet(uProgramadas,'Id,Usuario,Proyecto,Recurrente,FechaI,FechaF',[-1,GLOBAL_USUARIO,-1,-1,fechaSQL(cxFechaInicio.Date),fechaSQL(cxFechaFinal.Date)]);
    uProgramadas.Open;

    cxViewRegistro.DataController.Groups.FullExpand;
end;

end.
