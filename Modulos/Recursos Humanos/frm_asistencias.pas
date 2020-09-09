unit frm_asistencias;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, Grids, DBGrids, global, frm_connection,
  DB, ADODB, Buttons, ExtCtrls, frxClass, frxDBSet, ZAbstractRODataset, dateUtils,
  ZDataset, ZAbstractDataset, Controls, Menus, UnitExcepciones, UFunctionsGHH,
  UnitValidacion, rxToolEdit, rxCurrEdit, RXDBCtrl, UnitRH,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinFoggy, cxButtons, ZSqlUpdate, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxSplitter,
  cxCurrencyEdit, cxCheckBox,unitGenerales, frxExportPDF,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxCalendar, cxDBEdit,
  dxCore, cxDateUtils, MemDS, DBAccess, Uni, dxmdaset, dxLayoutcxEditAdapters,
  cxMemo, dxLayoutContainer, cxLookupEdit, cxDBLookupEdit, dxLayoutControl,
  dxLayoutControlAdapters, cxLabel, dxBarBuiltInMenu, cxPC, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, ShellApi, cxImageComboBox, System.ImageList,
  Vcl.ImgList, frm_barraH2, cxSpinEdit, cxTimeEdit, frxExportMail, frm_barraH1,
  cxProgressBar;

type
  TfrmAsistencias = class(TForm)
    ds_asistencias: TDataSource;
    frxAsistencia: TfrxReport;
    PopupMenu1: TPopupMenu;
    ds_empleados: TDataSource;
    ds_folios: TDataSource;
    zFolios: TZReadOnlyQuery;
    Panel1: TPanel;
    Grid_Bitacora: TcxGrid;
    BView_Empleados: TcxGridDBTableView;
    mDescripcion: TcxGridDBColumn;
    Grid_BitacoraLevel1: TcxGridLevel;
    BView_EmpleadosColumn1: TcxGridDBColumn;
    cxGridAsistencia: TcxGrid;
    CxGridAsistenciaPersonal: TcxGridDBTableView;
    cxOrdenar: TcxGridDBColumn;
    CxOrdenaPersonal: TcxGridDBColumn;
    CxColumnCxGridMoePersonalColumn1: TcxGridDBColumn;
    CxColumnCxGridMoePersonalColumn3: TcxGridDBColumn;
    CxLevel1: TcxGridLevel;
    frxPDFExport1: TfrxPDFExport;
    zContrato: TUniQuery;
    dsContrato: TDataSource;
    zEmbarcacion: TUniQuery;
    dsEmbarcacion: TDataSource;
    empleados: TUniQuery;
    zValidar: TUniQuery;
    asistencias: TUniQuery;
    dxMemData1: TdxMemData;
    dxMemData1uno: TStringField;
    dxMemData1dos: TIntegerField;
    Folios: TUniQuery;
    Guardias: TUniQuery;
    dsGuardias: TDataSource;
    generador_diario: TUniQuery;
    BView_EmpleadosColumn2: TcxGridDBColumn;
    dsRem: TDataSource;
    Reembolso: TUniQuery;
    Personal: TUniQuery;
    dsPersonal: TDataSource;
    zBonos: TUniQuery;
    dsBonos: TDataSource;
    temG: TUniQuery;
    dlgSavePDF: TSaveDialog;
    dlgPDF: TFileOpenDialog;
    XML: TXMLDocument;
    DoctoXML: TUniQuery;
    dsDoctoXML: TDataSource;
    iconPDF_XML: TcxImageList;
    zTiempo: TUniQuery;
    dsTiempo: TDataSource;
    zAnticipo: TUniQuery;
    dsAnticipo: TDataSource;
    temE: TUniQuery;
    PanelCenral: TPanel;
    PanelGlobal: TPanel;
    DiasLaboradosM: TUniQuery;
    DsDiasM: TDataSource;
    Proyecto: TUniQuery;
    dsProyecto: TDataSource;
    cxAsistencia: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    zProyec: TUniQuery;
    cxGridEmpleado: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    DiasPersonal: TUniQuery;
    dsDiasPersonal: TDataSource;
    Ubicacion: TUniQuery;
    dsUbicacion: TDataSource;
    Puesto: TUniQuery;
    dsPuesto: TDataSource;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    dsTemG: TDataSource;
    Empresa: TUniQuery;
    dsEmpresa: TDataSource;
    colEmpresa: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    colCheck: TcxGridDBColumn;
    zGuar: TUniQuery;
    dsGuar: TDataSource;
    frxMailNominas: TfrxMailExport;
    Panel7: TPanel;
    Label1: TLabel;
    dFechaInicio: TcxDateEdit;
    Label14: TLabel;
    dFechaTermino: TcxDateEdit;
    Label3: TLabel;
    cxLeyenda: TcxLabel;
    cxImprimir: TcxButton;
    cbGuardias: TcxLookupComboBox;
    cxImprimeHorarios: TcxButton;
    procedure tsIdCategoriaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsIdFolioKeyPress(Sender: TObject; var Key: Char);
    procedure BView_EmpleadosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CxGridAsistenciaPersonalDblClick(Sender: TObject);
    procedure BView_EmpleadosDblClick(Sender: TObject);
    procedure frxAsistenciaGetValue(const VarName: string; var Value: Variant);
    procedure cbGuardiasPropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure fechasDetalle;


    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure dFechaInicioPropertiesChange(Sender: TObject);
    procedure dFechaTerminoPropertiesChange(Sender: TObject);
    procedure btnCargarXMLClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView4CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxImprimirClick(Sender: TObject);
    procedure ImprimeReporte;
    procedure dFechaInicioExit(Sender: TObject);
    procedure dFechaTerminoExit(Sender: TObject);
    procedure dFechaTerminoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxImprimeHorariosClick(Sender: TObject);
    procedure cbGuardiasExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAsistencias: TfrmAsistencias;
  sFirma_PEP, sPuesto_PEP, sFirma_Contratista, sPuesto_Contratista: string;
  fechaAntes: tDate;

  local_global_pernocta, local_tipo, sTipoGenerador, sTipoMoneda : string;
  id:String;
  btnPermisos : String;
  ArrayFirmas: TStringArray;
  ArrayGuardias: Array of String;
  ArrayGuardias2: TStringArray;
  y:Integer;
  FechaC,FechaT:TDate;
  zUser:TUniQuery;
implementation
uses
  frm_VerPDF,frm_diaslaborados;
{$R *.dfm}

procedure TfrmAsistencias.tsIdCategoriaKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
      cxGridAsistencia.SetFocus
end;

procedure TfrmAsistencias.tsIdFolioKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key =#13 then
       cxGridAsistencia.SetFocus;
end;


procedure TfrmAsistencias.FormShow(Sender: TObject);
var x:Integer;
guard:String;
begin
  btnPermisos := global_btnPermisos;
  dFechaInicio.EditValue := Date();
  dFechaTermino.EditValue := Date();

  dFechaInicio.SetFocus;
  Folios.Active := False;
  Folios.ParamByName('contrato').AsString := global_contrato;
  Folios.Open;

  Guardias.Active:=False;
  Guardias.Open;

  temE.Active:=False;
  temE.SQL.Text:='Select FK_Titulo from master_empresa';
  temE.Open;

  if temE.FieldByName('FK_Titulo').AsString ='TYPHOON' then
  begin
    zGuar.Open;
    cxGridAsistencia.Visible:=True;
    Grid_Bitacora.Visible:=true;
    zValidar.Open;
  end;
  BView_Empleados.ViewData.Expand(True);
  cbGuardias.ItemIndex:=0;
  Personal.Active:=False;
  Personal.Open;
  PermisosBotones(frmAsistencias,btnPermisos);

end;

procedure TfrmAsistencias.frxAsistenciaGetValue(const VarName: string;
  var Value: Variant);
begin
     if CompareText(VarName, 'COMPACTO') = 0 then
      begin
           Value := 'No';
      end;

  if CompareText(VarName, 'FECHA_INICIO') = 0 then
     Value := dFechaInicio.Date;

  if CompareText(VarName, 'FECHA_FINAL') = 0 then
    Value := dFechaTermino.Date;

  if CompareText(VarName, 'FECHA_REPORTE') = 0 then
    Value := global_fecha_barco;

  if CompareText(VarName, 'DIAS_TRANSCURRIDOS') = 0 then
    Value := global_dias_por_transcurrir;

  if CompareText(VarName, 'DIAS_POR_TRANSCURRIR') = 0 then
    Value := global_dias_transcurridos;

  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
     Value := sSuperIntendente;

  If CompareText(VarName, 'SUPERVISOR') = 0 then
     Value := sSupervisor;

  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
     Value := sSupervisorTierra;

  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
  begin
      if pos('#', sPuestoSuperIntendente) > 0 then
         Value := copy(sPuestoSuperIntendente,0, pos('#', sPuestoSuperIntendente)-1) +#13+ copy(sPuestoSuperIntendente,pos('#', sPuestoSuperIntendente)+1, length(sPuestoSuperIntendente))
      else
         Value := sPuestoSuperIntendente
  end;

  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
  begin
      if pos('#', sPuestoSupervisor) > 0 then
         Value := copy(sPuestoSupervisor,0, pos('#', sPuestoSupervisor)-1) +#13+ copy(sPuestoSupervisor,pos('#', sPuestoSupervisor)+1, length(sPuestoSupervisor))
      else
         Value := sPuestoSupervisor
  end;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
  begin
      if pos('#', sPuestoSupervisorTierra) > 0 then
         Value := copy(sPuestoSupervisorTierra,0, pos('#', sPuestoSupervisorTierra)-1) +#13+ copy(sPuestoSupervisorTierra,pos('#', sPuestoSupervisorTierra)+1, length(sPuestoSupervisorTierra))
      else
         Value := sPuestoSupervisorTierra
  end;

end;

procedure TfrmAsistencias.btnRefreshClick(Sender: TObject);
begin
    DiasLaboradosM.Refresh;
end;

procedure TfrmAsistencias.BView_EmpleadosCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var f:TDateTime;
begin
    if ((dFechaInicio.Text = '') or (dFechaTermino.Text = '')) then
    begin
      ShowMessage('Seleccione periodo de inicio y termino.');
      exit
    end;
    if (dFechaInicio.EditValue > dFechaTermino.EditValue) then
    begin
      ShowMessage('Fecha de inicio es mayor a la de termino, esto es incorrecto.');
      exit
    end;


    try
      asistencias.Active:=False;
      AsignarSQL(asistencias,'FiltroFechas',pUpdate);
      FiltrarDataSet(asistencias,'IdPersonal,fecha_inicio_filtrar,fecha_termino_filtrar',[empleados.FieldByName('IdPersonal').AsInteger,fechaSQL(dFechaInicio.Date),fechaSQL(dFechaTermino.Date) ]);
      asistencias.Open;
      FechaC:=empleados.FieldByName('FechaInicio').AsDateTime;
      FechaT:=empleados.FieldByName('FechaFinal').AsDateTime;
    Except

    end;
end;

procedure TfrmAsistencias.BView_EmpleadosDblClick(Sender: TObject);
begin
    if BView_Empleados.OptionsView.CellAutoHeight then
       BView_Empleados.OptionsView.CellAutoHeight := False
    else
       BView_Empleados.OptionsView.CellAutoHeight := True;
end;

procedure TfrmAsistencias.cbGuardiasExit(Sender: TObject);
begin
     fechasDetalle;
end;

procedure TfrmAsistencias.cbGuardiasPropertiesChange(Sender: TObject);
var Guar,guar2:String;
j,i:Integer;
 ids:String;
begin
  Empleados.Filtered := False;
  id:=cbGuardias.EditValue;
  empleados.Active:=False;
  try
    FechaC:=empleados.FieldByName('FechaInicio').AsDateTime;
    FechaT:=empleados.FieldByName('FechaFinal').AsDateTime;
  except
    ;
  end;
end;

procedure TfrmAsistencias.cxImprimeHorariosClick(Sender: TObject);
var
   mesI, mesF : string;
   sTipoObra : string;
   sFiltroFolio : string;
   personalGrid : String;
   contPerGrid, j : Integer;
begin
     try
      contPerGrid := BView_Empleados.ViewData.RecordCount;
      for j := 0 to (contPerGrid - 1) do
      begin
          personalGrid := personalGrid + BView_Empleados.ViewData.Rows[j].Values[1] +',';
      end;
      procReporteDiasLaboradosHora(True, dFechaInicio.Date, dFechaTermino.Date, frmDiasLaborados, frxAsistencia.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.uConnection, global_grupo, 'reporteBarco'),id,personalGrid);

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Asistencia de Personal', 'Al imprimir', 0);
    end;
  end;
end;

procedure TfrmAsistencias.cxImprimirClick(Sender: TObject);
begin
  BView_Empleados.DataController.Groups.FullExpand;
  ImprimeReporte;
end;

procedure TfrmAsistencias.cxButton2Click(Sender: TObject);
begin
  BView_Empleados.DataController.Groups.FullExpand;
  BView_Empleados.ViewData.Rows[1].Focused := True;
    if ((dFechaInicio.Text = '') or (dFechaTermino.Text = '')) then
    begin
      ShowMessage('Seleccione periodo de inicio y termino.');
      exit
    end;
    if (dFechaInicio.EditValue > dFechaTermino.EditValue) then
    begin
      ShowMessage('Fecha de inicio es mayor a la de termino, esto es incorrecto.');
      exit
    end;

    try
      asistencias.Active:=False;
      AsignarSQL(asistencias,'FiltroFechas',pUpdate);
      FiltrarDataSet(asistencias,'IdPersonal,fecha_inicio_filtrar,fecha_termino_filtrar',[empleados.FieldByName('IdPersonal').AsInteger,fechaSQL(dFechaInicio.Date),fechaSQL(dFechaTermino.Date) ]);
      asistencias.Open;
      FechaC:= dFechaInicio.EditValue; //empleados.FieldByName('FechaInicio').AsDateTime;
      FechaT:= dFechaTermino.EditValue; //empleados.FieldByName('FechaFinal').AsDateTime;
    Except

    end;


end;

procedure TfrmAsistencias.btnCargarXMLClick(Sender: TObject);
var
  BlobStream : TStream;
  FileStream : TFileStream;
  zUUID : TUniquery;
  Ext, sArchivo : string;
  Archivo, UUID   : string;
begin
  try
    dlgPDF.FileName := '';
    dlgPDF.FileTypes.Add.FileMask:='*.pdf;*.xml';
    dlgPDF.FileTypes.Add.FileMask:='*.xml';
    dlgPDF.FileTypes.Add.FileMask:='*.pdf';
    if not dlgPDF.Execute() then
      exit;

    Archivo := dlgPDF.FileName;

    if not FileExists(Archivo) then
      raise exception.Create('No se encontro el archivo especificado');

    Ext := ExtractFileExt(Archivo);

    if ( Ext <> '.PDF' ) and ( Ext <> '.pdf' ) and ( Ext <> '.XML' ) and ( Ext <> '.xml' ) then
      raise exception.Create('El archivo no es valido');

    if ( Ext = '.XML' ) or ( Ext = '.xml' ) then
    begin
      UUID :=  TraerUUID_XML(Archivo,XML);
      zUUID := TUniquery.Create(nil);
      zUUID.Connection := connection.Uconnection;
      zUUID.Active:= False;
      zUUID.SQL.Text := 'Select UUID_XML from rh_reembolso where UUID_XML=:UUID';
      zUUID.ParamByName('UUID').AsString := UUID;
      zUUID.Open;

      if zUUID.RecordCount > 0 then
      begin
        ShowMessage('El XML ya fue cargado anteriormente, seleccione otro diferente.');
        exit
      end
      else
      begin
        doctoXML.FieldByName('Monto').AsFloat := TraerTotalXML(Archivo,XML);
        doctoXML.FieldByName('UUID_XML').AsString := UUID;
        doctoXML.FieldByName('Icono').AsInteger := 0;
      end;
    end
    else
      doctoXML.FieldByName('Icono').AsFloat := 1;

    doctoXML.FieldByName('NombreDocto').AsString := ExtractFileName(Archivo);
    TBlobField(doctoXML.FieldByName('DocumentoDigital')).LoadfromFile(archivo);

  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
    end;
  end;

end;

procedure TfrmAsistencias.btnDeleteClick(Sender: TObject);
begin
  If MessageDlg('Desea eliminar ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
     DiasLaboradosM.Delete;
     DiasLaboradosM.ApplyUpdates();
   end;
end;

procedure TfrmAsistencias.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var Ext:String;
begin
  
end;

procedure TfrmAsistencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmAsistencias.CxGridAsistenciaPersonalDblClick(Sender: TObject);
begin
   if CxGridAsistenciaPersonal.OptionsView.CellAutoHeight then
       CxGridAsistenciaPersonal.OptionsView.CellAutoHeight := False
    else
       CxGridAsistenciaPersonal.OptionsView.CellAutoHeight := True;
end;

procedure TfrmAsistencias.cxGridDBTableView4CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if ((dFechaInicio.Text = '') or (dFechaTermino.Text = '')) then
    begin
      ShowMessage('Seleccione periodo de inicio y termino.');
      exit
    end;
    if (dFechaInicio.EditValue > dFechaTermino.EditValue) then
    begin
      ShowMessage('Fecha de inicio es mayor a la de termino, esto es incorrecto.');
      exit
    end;
    AsignarSQL(DiasLaboradosM,'Dias_laborados',pUpdate);
    FiltrarDataSet(DiasLaboradosM,'Personal,FechaI,FechaF'+
    '',[Empresa.FieldByName('IdPersonal').AsInteger,fechaSQL(dFechaInicio.Date), fechaSQL(dFechaTermino.Date)]);
    DiasLaboradosM.Open;
end;

procedure TfrmAsistencias.dFechaInicioExit(Sender: TObject);
begin
fechasDetalle;
end;

procedure TfrmAsistencias.dFechaInicioPropertiesChange(Sender: TObject);
begin
  fechasDetalle;
end;

procedure TfrmAsistencias.dFechaTerminoExit(Sender: TObject);
begin
fechasDetalle;
end;

procedure TfrmAsistencias.dFechaTerminoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  fechasDetalle;
end;

procedure TfrmAsistencias.dFechaTerminoPropertiesChange(Sender: TObject);
begin
  fechasDetalle;
end;

procedure TfrmAsistencias.EnterControl(Sender: TObject);
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

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDateEdit) then
        tcxDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBTimeEdit) then
         tcxDBCurrencyEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmAsistencias.fechasDetalle;
begin
  Reembolso.Active:=False;
  Reembolso.ParamByName('FechaI').AsString:=fechaSQL(dFechaInicio.Date);
  Reembolso.ParamByName('FechaF').AsString:=fechaSQL(dFechaTermino.Date);
  Reembolso.Open;

  zBonos.Active:=False;
  zBonos.ParamByName('FechaI').AsString:=fechaSQL(dFechaInicio.Date);
  zBonos.ParamByName('FechaF').AsString:=fechaSQL(dFechaTermino.Date);
  zBonos.Open;

  zTiempo.Active:=False;
  zTiempo.ParamByName('FechaI').AsString:=fechaSQL(dFechaInicio.Date);
  zTiempo.ParamByName('FechaF').AsString:=fechaSQL(dFechaTermino.Date);
  zTiempo.Open;

  zAnticipo.Active:=True;
  zAnticipo.Open;

  AsignarSQL(empleados,'dias_laborados_empleados',pUpdate);
  FiltrarDataSet(empleados,'Activo,IdGuardia,CodsPersonal,Inicio,Final',['Si',id,'-1',fechaSQL(dFechaInicio.Date),fechaSQL(dFechaTermino.Date)]);
  empleados.Open;
end;

procedure TfrmAsistencias.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCurrencyEdit) then
        tcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBTimeEdit) then
         tcxDBCurrencyEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmAsistencias.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;


procedure TfrmAsistencias.ImprimeReporte;
var
   mesI, mesF : string;
   sTipoObra : string;
   sFiltroFolio : string;
   personalGrid : String;
   contPerGrid, j : Integer;
begin
     try
      contPerGrid := BView_Empleados.ViewData.RecordCount;
      for j := 0 to (contPerGrid - 1) do
      begin
          personalGrid := personalGrid + BView_Empleados.ViewData.Rows[j].Values[1] +',';
      end;
      procReporteDiasLaborados(True, dFechaInicio.Date, dFechaTermino.Date, frmDiasLaborados, frxAsistencia.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.uConnection, global_grupo, 'reporteBarco'),id,personalGrid);

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Asistencia de Personal', 'Al imprimir', 0);
    end;
  end;
end;

end.
