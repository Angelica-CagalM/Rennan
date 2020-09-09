unit frm_diaslaboradosSIANI;

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
  Vcl.ImgList, frm_barraH2, cxSpinEdit, cxTimeEdit, cxProgressBar, frm_barraH1;

type
  TfrmDiasLaboradosSIANI = class(TForm)
    ds_asistencias: TDataSource;
    frxAsistencia: TfrxReport;
    PopupMenu1: TPopupMenu;
    ds_empleados: TDataSource;
    ds_folios: TDataSource;
    zFolios: TZReadOnlyQuery;
    Panel3: TPanel;
    frxPDFExport1: TfrxPDFExport;
    zContrato: TUniQuery;
    dsContrato: TDataSource;
    zEmbarcacion: TUniQuery;
    dsEmbarcacion: TDataSource;
    empleados: TUniQuery;
    asistencias: TUniQuery;
    dxMemData1: TdxMemData;
    dxMemData1uno: TStringField;
    dxMemData1dos: TIntegerField;
    Folios: TUniQuery;
    generador_diario: TUniQuery;
    PanelLateral: TPanel;
    Personal: TUniQuery;
    dsPersonal: TDataSource;
    dlgSavePDF: TSaveDialog;
    dlgPDF: TFileOpenDialog;
    XML: TXMLDocument;
    iconPDF_XML: TcxImageList;
    temE: TUniQuery;
    PanelCenral: TPanel;
    PanelDatos: TPanel;
    PanelGlobal: TPanel;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutItem31: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem32: TdxLayoutItem;
    cxDBMemo4: TcxDBMemo;
    dxLayoutItem33: TdxLayoutItem;
    DiasLaboradosM: TUniQuery;
    DsDiasM: TDataSource;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    Proyecto: TUniQuery;
    cxPersonal: TcxDBLookupComboBox;
    dxLayoutItem30: TdxLayoutItem;
    dsProyecto: TDataSource;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutItem24: TdxLayoutItem;
    cxAsistencia: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    zProyec: TUniQuery;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    DiasPersonal: TUniQuery;
    dsDiasPersonal: TDataSource;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutItem34: TdxLayoutItem;
    lcbPuesto: TcxDBLookupComboBox;
    db: TdxLayoutItem;
    cxHoraEntrada: TcxDBTimeEdit;
    dxLayoutItem35: TdxLayoutItem;
    cxHoraSalida: TcxDBTimeEdit;
    dxLayoutItem36: TdxLayoutItem;
    edtJornada: TcxDBTextEdit;
    dxLayoutItem37: TdxLayoutItem;
    Ubicacion: TUniQuery;
    dsUbicacion: TDataSource;
    uSalarios: TUniQuery;
    ds_salarios: TDataSource;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    Empresa: TUniQuery;
    dsEmpresa: TDataSource;
    cxSplitter2: TcxSplitter;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    cxGridDBTableView3Column4: TcxGridDBColumn;
    cxGridDBTableView3Column5: TcxGridDBColumn;
    cxGridDBTableView3Column6: TcxGridDBColumn;
    dsProyec: TDataSource;
    cxTurno: TcxDBLookupComboBox;
    dxLayoutItem41: TdxLayoutItem;
    zTurno: TUniQuery;
    dsTurno: TDataSource;
    raerDiasLaboradoselperiodoanterior1: TMenuItem;
    Splitter1: TcxSplitter;
    DiasxContrato: TMenuItem;
    cxGridDBTableView3Column7: TcxGridDBColumn;
    Panel1: TPanel;
    Label1: TLabel;
    dFechaInicio: TcxDateEdit;
    Label14: TLabel;
    dFechaTermino: TcxDateEdit;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    chkContinuo: TCheckBox;
    cxCompacto: TcxCheckBox;
    cxLeyenda: TcxLabel;
    CheckDescuento: TCheckBox;
    CheckCompleto: TCheckBox;
    frmBarraH11: TfrmBarraH1;
    Copiararangodefechas1: TMenuItem;
    cxGridDBTableView3Column8: TcxGridDBColumn;
    cmbTipoA: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    uTiposAsistencias: TUniQuery;
    ds_tipos_asistencias: TDataSource;
    cxCantidadA: TcxDBCurrencyEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxCBProyectos: TcxLookupComboBox;
    zProyectos: TUniQuery;
    dsProyectos: TDataSource;
    zUpdate: TUniQuery;
    cxLabel1: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BView_EmpleadosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxImprimirMontoMNClick(Sender: TObject);
    procedure ImprimeReporte;
    procedure frxAsistenciaGetValue(const VarName: string; var Value: Variant);
    procedure CheckCompletoClick(Sender: TObject);
    procedure CheckDescuentoClick(Sender: TObject);
    procedure fechasDetalle;


    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure dFechaInicioPropertiesChange(Sender: TObject);
    procedure dFechaTerminoPropertiesChange(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure cxGridDBTableView4CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure lcbProyectosPropertiesChange(Sender: TObject);
    procedure cxPersonalPropertiesEditValueChanged(Sender: TObject);
    procedure cxTurnoPropertiesChange(Sender: TObject);
    procedure raerDiasLaboradoselperiodoanterior1Click(Sender: TObject);
    procedure cxPersonalExit(Sender: TObject);
    procedure DiasxContratoClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure CopiarXRangoClick(Sender: TObject);
    procedure cmbTipoAPropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiasLaboradosSIANI: TfrmDiasLaboradosSIANI;
  sFirma_PEP, sPuesto_PEP, sFirma_Contratista, sPuesto_Contratista: string;
  fechaAntes: tDate;
//  utgrid: ticdbgrid;
  local_global_pernocta, local_tipo, sTipoGenerador, sTipoMoneda : string;
  id:String;
  btnPermisos : String;
  ArrayFirmas: TStringArray;
  ArrayGuardias: Array of String;
  ArrayGuardias2: TStringArray;
  y:Integer;
  FechaC,FechaT:TDate;
implementation
uses
  frm_VerPDF, Frm_FechaVigencia;
{$R *.dfm}

procedure TfrmDiasLaboradosSIANI.FormShow(Sender: TObject);
var x:Integer;
guard:String;
begin
  btnPermisos := global_btnPermisos;
  dFechaInicio.SetFocus;
  Folios.Active := False;
  Folios.ParamByName('contrato').AsString := global_contrato;
  Folios.Open;


  temE.Active:=False;
  temE.SQL.Text:='Select FK_Titulo from master_empresa';
  temE.Open;
  dFechaInicio.EditValue := Date();
  dFechaTermino.EditValue := Date();
  if TemE.FieldByName('FK_Titulo').AsString = 'SIANI' then
  begin
    Empresa.Open;
   //cxReembolso.Visible:=False;
    CheckCompleto.Visible:=False;
    CheckDescuento.Visible:=False;

    uSalarios.Active:=False;
    AsignarSQL(uSalarios,'rhu_salarios',pUpdate);
    FiltrarDataSet(uSalarios,'Id,Empresa,Nomina,Activo',[-1,-1,-1,'Si']);
    uSalarios.Open;

    AsignarSQL(zTurno,'turnos',pUpdate);
    FiltrarDataSet(zTurno,'sIdTurno',['-1']);
    zTurno.Open;

    uTiposAsistencias.Active:=False;
    AsignarSQL(uTiposAsistencias,'rh_tipos_asistencias',pUpdate);
    uTiposAsistencias.Open;

    AsignarSQL(DiasLaboradosM,'Dias_laborados',pUpdate);
    FiltrarDataSet(DiasLaboradosM,'FechaI,FechaF',['','']);
    DiasLaboradosM.Open;

    AsignarSQL(zProyectos,'ordenesdetrabajo',pUpdate);
    FiltrarDataSet(zProyectos,'TProyecto,Contrato',['-1',global_contrato]);
    zProyectos.Open;

    Proyecto.Active:=FalsE;
    proyecto.Open;
    cxAsistencia.Visible:=True;

    Ubicacion.Open;
    fechasDetalle;

  end;

  Personal.Active:=False;
  Personal.Open;
//  guardar_leer_grid(cxGridDBTableView3,frmDiasLaboradosSIANI,0);
  PermisosBotones(frmDiasLaboradosSIANI,btnPermisos);

end;

procedure TfrmDiasLaboradosSIANI.frxAsistenciaGetValue(const VarName: string;
  var Value: Variant);
begin
     if CompareText(VarName, 'COMPACTO') = 0 then
  begin
     if cxCompacto.Checked then
       Value := 'Si'
     else
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

procedure TfrmDiasLaboradosSIANI.btnPostClick(Sender: TObject);
begin
  DiasLaboradosM.Post;
  DiasLaboradosM.Refresh;
  btnCancelClick(Sender);
end;

procedure TfrmDiasLaboradosSIANI.btnPrinterClick(Sender: TObject);
begin
 ImprimeReporte;
end;

procedure TfrmDiasLaboradosSIANI.btnRefreshClick(Sender: TObject);
begin
    DiasLaboradosM.Refresh;
end;

procedure TfrmDiasLaboradosSIANI.BView_EmpleadosCellClick(
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
end;

procedure TfrmDiasLaboradosSIANI.CheckCompletoClick(Sender: TObject);
begin
  if CheckCompleto.Checked=True then
  begin
    CheckDescuento.Checked:=False;
  end;
end;

procedure TfrmDiasLaboradosSIANI.CheckDescuentoClick(Sender: TObject);
begin
  if CheckDescuento.Checked=True then
  begin
    CheckCompleto.Checked:=False;
  end;
end;

procedure TfrmDiasLaboradosSIANI.cmbTipoAPropertiesEditValueChanged(
  Sender: TObject);
begin
  if DiasLaboradosM.State in [dsInsert,dsEdit] then
    if not VarIsNull(cmbTipoA.EditValue) AND cmbTipoA.EditValue <> 1 then begin
      uTiposAsistencias.Locate('IdTipoAsistencia',cmbTipoA.EditValue,[]);
      dxLayoutItem2.CaptionOptions.Text:=uTiposAsistencias.FieldByName('TextoLabel').AsString;
      dxLayoutItem2.Visible:=True;
      lcbPuesto.Enabled:=False;
      if DiasLaboradosM.State = dsInsert then
        DiasLaboradosM.FieldByName('Jornada').AsInteger:=0;
      if cmbTipoA.EditValue = 3 then
        DiasLaboradosM.FieldByName('Asistencia').AsInteger:=0
      else
        DiasLaboradosM.FieldByName('Asistencia').AsInteger:=1;

    end
    else begin
      dxLayoutItem2.Visible:=False;
      lcbPuesto.Enabled:=True;
    end;
end;

procedure TfrmDiasLaboradosSIANI.CopiarXRangoClick(Sender: TObject);
var
  FechaI, FechaT, I : TDate;
  uDAux : TUniQuery;
  fAux : String;
begin
    if DiasLaboradosM.RecordCount > 0 then begin
      Application.CreateForm(TfrmFechaVigencia, frmFechaVigencia);
      frmFechaVigencia.cxPageControlF.ActivePage:=frmFechaVigencia.cxPageDiasL;
      frmFechaVigencia.cxPageControlF.HideTabs:=True;
      frmFechaVigencia.showModal;

      if not global_resultModal then begin
        MessageDlg('No se ha realizado la copia de días',mtInformation,[mbOk],0);
      end
      else begin
        if VarToDateTime(frmFechaVigencia.cxFechaIni.EditValue) <= VarToDateTime(frmFechaVigencia.cxFechaFin.EditValue) then begin
          FechaI := frmFechaVigencia.cxFechaIni.EditValue;
          FechaT := frmFechaVigencia.cxFechaFin.EditValue;

          uDAux := TUniQuery.Create(nil);
          uDAux.Connection := connection.Uconnection;
          AsignarSQL(uDAux,'diasPersonal',pUpdate);
          FiltrarDataSet(uDAux,'Proyecto,Personal,FechaI,FechaF',[DiasLaboradosM.FieldByName('IdProyecto').AsString,DiasLaboradosM.FieldByName('IdPersonal').AsInteger,fechaSQL(FechaI),FechaSQL(FechaT)]);
          uDAux.Open;

          uDaux.RecordCount;

          I:= FechaI;
          while I <= FechaT do begin
            fAux:=DateToStr(I);
            if not uDAux.Locate('Fecha',fAux,[]) then begin
              uDAux.Append;
              uDAux.FieldByName('IdProyecto').AsString := DiasLAboradosM.FieldByName('IdProyecto').AsString;
              uDAux.FieldByName('IdPersonal').AsInteger := DiasLAboradosM.FieldByName('IdPersonal').AsInteger;
              uDAux.FieldByName('IdPlataforma').AsString := DiasLaboradosM.FieldByName('IdPlataforma').AsString;
              uDAux.FieldByName('Fecha').AsDateTime := I;
              uDAux.FieldByName('HoraEntrada').AsString := DiasLAboradosM.FieldByName('HoraEntrada').AsString;
              uDAux.FieldByName('HoraSalida').AsString :=  DiasLAboradosM.FieldByName('HoraSalida').AsString;
              uDAux.FieldByName('Jornada').AsInteger := DiasLAboradosM.FieldByName('Jornada').asInteger;
              uDAux.FieldByName('Nota').AsString := 'Día Laborado Generado Por Sistema Noíl';
              uDAux.FieldByName('IdSalario').AsInteger := DiasLAboradosM.FieldByName('IdSalario').AsInteger;
              uDAux.FieldByName('sIdTurno').AsString := DiasLAboradosM.FieldByName('sIdTurno').AsString;
              uDAux.FieldByName('Asistencia').AsFloat := DiasLAboradosM.FieldByName('Asistencia').asFloat;
              uDAux.FieldByName('IdTipoAsistencia').asInteger := DiasLAboradosM.FieldByName('IdTipoAsistencia').AsInteger;
              uDAux.Post;
            end;
            I:= I +1;
          end;
          DiasLaboradosM.Refresh;
        end
        else
          MessageDLg('La fecha de Inicio debe ser menor que la fecha de término',mtWarning,[mbOk],0);

      end;
    end
    else
      MessageDlg('Debe existir por lo menos un registro',mtInformation,[mbOk],0);

end;

procedure TfrmDiasLaboradosSIANI.btnAddClick(Sender: TObject);
var SelectIdPersonal:Integer;
begin
  frmBarraH11.btnAddClick(Sender);
  PanelDatos.Visible:= True;
  SelectIdPersonal :=  DiasLaboradosM.FieldByName('IdPersonal').AsInteger;
  DiasLaboradosM.Append;
  cxDBLookupComboBox4.SetFocus;
  DiasLaboradosM.FieldByName('IdProyecto').AsString:=Proyecto.FieldByName('sNumeroOrden').AsString;
  DiasLaboradosM.FieldByName('sIdTurno').AsString:='TD';
  DiasLaboradosM.FieldByName('IdPersonal').AsInteger:= SelectIdPersonal;
  DiasLaboradosM.FieldByName('Fecha').AsDateTime:=Date;
  DiasLaboradosM.FieldByName('asistencia').AsInteger:=1;
  DiasLaboradosM.FieldByName('IdPlataforma').AsString:=ubicacion.FieldByName('sIdPlataforma').AsString;
  DiasLaboradosM.FieldByName('IdPuesto').AsInteger:=2;
  DiasLaboradosM.FieldByName('IdTipoAsistencia').AsInteger:=1;
end;

procedure TfrmDiasLaboradosSIANI.btnCancelClick(Sender: TObject);
begin
 frmBarraH11.btnActive;
 DiasLaboradosM.Cancel;
 panelDatos.Visible:=False;

end;

procedure TfrmDiasLaboradosSIANI.btnDeleteClick(Sender: TObject);
var
  index, i : Integer;
  uqryAux : TUniQuery;
begin
   uqryAux:=TUniQuery.Create(nil);
   uQryAux.Connection:=connection.Uconnection;

   index:=0;
   i:=0;

   If MessageDlg('Desea eliminar ('+cxGridDBTableView3.DataController.GetSelectedCount.ToString+') ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
      index := cxGridDBTableView3.DataController.GetSelectedRowIndex(i);
      cxGridDBTableView3.DataController.FocusedRowIndex := index;
      with cxGridDBTableView3.DataController.DataSource.DataSet do
      for i := 0 to cxGridDBTableView3.DataController.GetSelectedCount - 1 do
      begin
          index := cxGridDBTableView3.DataController.GetSelectedRowIndex(i);
          cxGridDBTableView3.DataController.FocusedRowIndex := index;

          uQryAux.SQL.Clear;
          uQryAux.SQL.Add('delete from rh_verificar_manual where IdVerificarManual =:Id');
          uQryAux.ParamByName('Id').AsInteger := cxGridDBTableView3.DataController.DataSet.FieldByName('IdVerificarManual').AsInteger;
          uQryAux.ExecSQL;
      end;

      cxGridDBTableView3.DataController.ClearSelection;
      DiasLaboradosM.ApplyUpdates();
      DiasLaboradosM.Refresh;
   end;
   uQryAux.Destroy;
end;

procedure TfrmDiasLaboradosSIANI.btnDetalleClick(Sender: TObject);
begin
  cxSplitter2.Visible:=not cxSplitter2.Visible;
  PanelLateral.Visible:=not PanelLateral.Visible;
  btnCancelClick(Sender);
end;

procedure TfrmDiasLaboradosSIANI.btnEditClick(Sender: TObject);
begin
  frmBarraH11.btnEditClick(Sender);
  PanelDatos.Visible:= True;
  DiasLaboradosM.Edit;
  cmbTipoAPropertiesEditValueChanged(Sender);
  cxDBLookupComboBox4.SetFocus;
end;

procedure TfrmDiasLaboradosSIANI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
// guardar_leer_grid(cxGridDBTableView3,frmDiasLaboradosSIANI,1);
  action := cafree;
end;

procedure TfrmDiasLaboradosSIANI.cxGridDBTableView4CellClick(
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

procedure TfrmDiasLaboradosSIANI.cxImprimirMontoMNClick(Sender: TObject);
begin
   sTipoMoneda := 'MN';
   sTipoGenerador := 'CantidadMonto';
   ImprimeReporte;
end;

procedure TfrmDiasLaboradosSIANI.cxLookupComboBox1PropertiesChange(
  Sender: TObject);
  var
  indice, iGrid    : integer;
begin
      iGrid     := 0;
        try
          indice := cxGridDBTableView3.DataController.GetSelectedRowIndex(iGrid);
        Except
          on e:exception do begin
              //nothing to do
          end;
        end;

    cxGridDBTableView3.DataController.FocusedRowIndex := indice;

    with cxGridDBTableView3.DataController.DataSource.DataSet do
    for iGrid := 0 to cxGridDBTableView3.DataController.GetSelectedCount - 1 do
    begin
        indice := cxGridDBTableView3.DataController.GetSelectedRowIndex(iGrid);
        cxGridDBTableView3.DataController.FocusedRowIndex := indice;

       zUpdate.Active:=FalsE;
       AsignarSQL(zUpdate,'update_verificar_manual',pUpdate);
       FiltrarDataSet(zUpdate,'IdProyecto,Id',[cxCBProyectos.EditValue,DiasLaboradosM.FieldByName('IdVerificarManual').AsString]);
       zUpdate.ExecSQL;
       DiasLaboradosM.Refresh;
    end;
end;

procedure TfrmDiasLaboradosSIANI.cxPersonalExit(Sender: TObject);
begin
  if (uSalarios.Active and (uSalarios.RecordCount > 0)) then
  begin
    if cxPersonal.ItemIndex > -1 then
    begin
      Personal.Locate('IdPersonal',DiasLaboradosM.FieldByName('IdPersonal').AsInteger,[]);
      uSalarios.filtered := False;
      uSalarios.filter := 'IdEmpresa ='+VarToStr(Personal.FieldByName('IdEmpresa').AsInteger);
      uSalarios.Filtered := true;

      if ((uSalarios.RecordCount > 0) and (DiasLaboradosM.State = dsInsert)) then
        DiasLaboradosM.FieldByName('IdSalario').AsInteger := uSalarios.FieldByName('IdSalario').AsInteger;
    end;
  end;
  SalidaControl(Sender);
end;

procedure TfrmDiasLaboradosSIANI.cxPersonalPropertiesEditValueChanged(
  Sender: TObject);
begin
  if (uSalarios.Active and (uSalarios.RecordCount > 0)) then
  begin
    if cxPersonal.ItemIndex > -1 then
    begin
      uSalarios.filtered := False;
      uSalarios.filter := 'IdEmpresa ='+VarToStr(cxPersonal.Properties.ListSource.DataSet.FieldByName('IdEmpresa').AsInteger);
      uSalarios.Filtered := true;
      MessageDlg(Personal.FieldByName('Nombre').AsString,mtInformation,[mbOk],0);
      if ((uSalarios.RecordCount > 0) and (DiasLaboradosM.State = dsInsert)) then
        DiasLaboradosM.FieldByName('IdSalario').AsInteger := uSalarios.FieldByName('IdSalario').AsInteger;
    end;
  end;
end;

procedure TfrmDiasLaboradosSIANI.cxTurnoPropertiesChange(Sender: TObject);
begin
  if cxTurno.ItemIndex > -1 then
  begin
    if zTurno.Locate('sIdTurno',cxTurno.EditValue,[]) then
    begin
      cxHoraEntrada.EditValue := zTurno.FieldByName('sHoraInicio').AsVariant;
      cxHoraSalida.EditValue := zTurno.FieldByName('sHoraFin').AsVariant;
      edtJornada.EditValue := zTurno.FieldByName('Horas').AsInteger;
    end;
  end;
end;

procedure TfrmDiasLaboradosSIANI.dFechaInicioPropertiesChange(Sender: TObject);
begin
  fechasDetalle;
end;

procedure TfrmDiasLaboradosSIANI.dFechaTerminoPropertiesChange(Sender: TObject);
begin
  fechasDetalle;
end;

procedure TfrmDiasLaboradosSIANI.DiasxContratoClick(Sender: TObject);
var
  FechaI, FechaT, I : TDate;
  uContPeriodo, uDiasL : TUniQuery;
begin
  if MessageDlg('¿Desea realizar este proceso?',mtConfirmation,[mbYes,mbNo],0)=mrYes then begin
    FechaI := dFechaInicio.EditValue;
    FechaT := dFechaTermino.EditValue;

    uDiasL := TUniquery.Create(nil);
    uDiasL.Connection := connection.Uconnection;
    AsignarSQL(uDiasL,'diasPersonal', pUpdate);
    FiltrarDataset(uDiasL,'Personal,FechaI,FechaF',['-1',fechaSQL(dFechaInicio.EditValue),fechaSQL(dFechaTermino.EditValue)]);
    uDiasL.Open;

    uContPeriodo := TUniQuery.Create(nil);
    uContPeriodo.Connection := connection.Uconnection;
    AsignarSQL(uContPeriodo,'contratosxfecha',pUpdate);
    FiltrarDataSet(uContPeriodo,'Personal,FIni,FFin',[-1,fechaSQL(dFechaInicio.EditValue),fechaSQL(dFechaTermino.EditValue)]);
    uContPeriodo.Open;

    uContPeriodo.First;
    while not uContPeriodo.Eof do begin
      I := FechaI;
      while I <= FechaT do begin
          if not uDiasL.Locate('IdPersonal;IdProyecto;Fecha',VarArrayOf([uContPeriodo.FieldByName('IdPersonal').AsInteger,uContPeriodo.FieldByName('sNumeroOrden').AsString,DateToStr(I)]),[]) then begin
            if ((uContPeriodo.FieldByName('sNumeroOrden').AsString = 'HO') or (uContPeriodo.FieldByName('sNumeroOrden').AsString = 'PROY-0015')) then begin
              uDiasL.Append;
              uDiasL.FieldByName('IdProyecto').AsString := uContPeriodo.FieldByName('sNumeroOrden').AsString;
              uDiasL.FieldByName('IdPersonal').AsInteger := uContPeriodo.FieldByName('IdPersonal').AsInteger;
              uDiasL.FieldByName('IdPlataforma').AsInteger := 1 ;//Nomina.FieldByName('sIdProyecto').AsString;
              uDiasL.FieldByName('Fecha').AsDateTime := I;
              uDiasL.FieldByName('HoraEntrada').AsString := '08:00:00';
              uDiasL.FieldByName('HoraSalida').AsString :=  '19:00:00';
              uDiasL.FieldByName('Jornada').AsInteger := 8;
              uDiasL.FieldByName('Nota').AsString := 'Día Laborado Generado Por Sistema Noíl';
              uDiasL.FieldByName('IdSalario').AsInteger := uContPeriodo.FieldByName('IdSalario').AsInteger;
              uDiasL.FieldByName('sIdTurno').AsString := 'TO';
              uDiasL.FieldByName('Asistencia').AsFloat := 1;
              uDiasL.FieldByName('IdTipoAsistencia').AsInteger:=1;
              uDiasL.Post;
            end
            else begin
              if (I >= uContPeriodo.FieldByName('FechaInicio').AsDateTime) and (I <= uContPeriodo.FieldByName('FechaFinal').AsDateTime) then begin
                uDiasL.Append;
                uDiasL.FieldByName('IdProyecto').AsString := uContPeriodo.FieldByName('sNumeroOrden').AsString;
                uDiasL.FieldByName('IdPersonal').AsInteger := uContPeriodo.FieldByName('IdPersonal').AsInteger;
                uDiasL.FieldByName('IdPlataforma').AsString := uContPeriodo.FieldByName('Plataforma').AsString;
                uDiasL.FieldByName('Fecha').AsDateTime := I;
                uDiasL.FieldByName('HoraEntrada').AsString := '07:00:00';
                uDiasL.FieldByName('HoraSalida').AsString :=  '19:00:00';
                uDiasL.FieldByName('Jornada').AsInteger := 12;
                uDiasL.FieldByName('Nota').AsString := 'Día Laborado Generado Por Sistema Noíl';
                uDiasL.FieldByName('IdSalario').AsInteger := uContPeriodo.FieldByName('IdSalario').AsInteger;
                uDiasL.FieldByName('sIdTurno').AsString := 'TD';
                uDiasL.FieldByName('Asistencia').AsFloat := 1;
                uDiasL.FieldByName('IdTipoAsistencia').AsInteger:=1;
                uDiasL.Post;
              end;
            end;
          end;
          I := I + 1;
      end;
      uContPeriodo.Next;
    end;

    DiasLaboradosM.Refresh;
  end;
//  zProyec.Refresh;
end;

procedure TfrmDiasLaboradosSIANI.ImprimeReporte;
var
   mesI, mesF : string;
   sTipoObra : string;
   sFiltroFolio : string;
   personalGrid : String;
   contPerGrid, j : Integer;
begin
     try
      //contPerGrid := BView_Empleados.ViewData.RecordCount;
      for j := 0 to (contPerGrid - 1) do
      begin
         // personalGrid := personalGrid + BView_Empleados.ViewData.Rows[j].Values[1] +',';
      end;
      if temE.FieldByName('FK_Titulo').AsString ='SIANI' then
      begin
        procReporteDiasLaboradosSIANI(chkContinuo.Checked, dFechaInicio.Date, dFechaTermino.Date, frmDiasLaboradosSIANI, frxAsistencia.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, '',DiasLaboradosM.FieldByName('IdProyecto').AsString,personalGrid)
      end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Dias Laborados', 'Al imprimir', 0);
    end;
  end;
end;

procedure TfrmDiasLaboradosSIANI.lcbProyectosPropertiesChange(Sender: TObject);
begin
  if zProyec.Active then
    fechasDetalle;
end;

procedure TfrmDiasLaboradosSIANI.raerDiasLaboradoselperiodoanterior1Click(
  Sender: TObject);
var
  IdNom : Integer;
  MaxNom, Nomina, zDiasL : TUniQuery;
  FechaI, FechaT,I : TDate;
begin
  FechaI := dFechaInicio.EditValue;
  FechaT := dFechaTermino.EditValue;
  BarraMostrar(True, progreso, LabelProceso );
  BarraProgresoAvance(Progreso, 0,100,5);
  MaxNom := TUniQuery.Create(nil);
  MaxNom.Connection := connection.Uconnection;
  MaxNom.SQL.Text := 'Select max(IdNomina) IdMaxN from nom_nomina';
  MaxNom.Open;
  IdNom := MaxNom.FieldByName('IdMaxN').AsInteger;
  BarraProgresoAvance(Progreso, 0,100,5);

  Nomina := TUniQuery.create(nil);
  Nomina.Connection := connection.Uconnection;
  AsignarSQL(Nomina,'nom_nominapersonalAsignado',pUpdate);
  FiltrarDataSet(Nomina,'IdNomina',[IdNom]);
  Nomina.Open;
  BarraProgresoAvance(Progreso, 0,100,10);

  zDiasL := TUniquery.Create(nil);
  zDiasL.Connection := connection.Uconnection;
  AsignarSQL(zDiasL,'diasPersonal', pUpdate);
    FiltrarDataset(zDiasL,'Personal,FechaI,FechaF',['-1',
    fechaSQL(dFechaInicio.EditValue),
    fechaSQL(dFechaTermino.EditValue)]);
    zDiasL.Open;
  BarraProgresoAvance(Progreso, 0,100,20);

  if Nomina.RecordCount > 0 then
    begin
      Nomina.First;
      while not Nomina.Eof do
      begin
        if ((Nomina.FieldByName('sIdProyecto').AsString = 'HO') or (Nomina.FieldByName('sIdProyecto').AsString = 'PROY-0015')) then
        BEGIN
          I := FechaI;
          while not (I > FechaT) do
          begin

            if not zDiasL.Locate('IdProyecto;IdPersonal;Fecha;', varArrayOf([Nomina.FieldByName('sIdProyecto').AsString,Nomina.FieldByName('IdPersonal').AsString,DateToStr(I)]),[]) then
            begin
              zDiasL.Append;
              zDiasL.FieldByName('IdProyecto').AsString := Nomina.FieldByName('sIdProyecto').AsString;
              zDiasL.FieldByName('IdPersonal').AsString := Nomina.FieldByName('IdPersonal').AsString;
              zDiasL.FieldByName('IdPlataforma').AsInteger := 1 ;//Nomina.FieldByName('sIdProyecto').AsString;
              zDiasL.FieldByName('Fecha').AsDateTime := I;
              zDiasL.FieldByName('HoraEntrada').AsString := '09:00:00';
              zDiasL.FieldByName('HoraSalida').AsString :=  '19:00:00';
              zDiasL.FieldByName('Jornada').AsInteger := 8;
              zDiasL.FieldByName('Nota').AsString := 'Día Laborado';
              zDiasL.FieldByName('IdPuesto').AsString := Nomina.FieldByName('IdPuesto').AsString;
              zDiasL.FieldByName('sIdTurno').AsString := 'TO';
              zDiasL.FieldByName('Asistencia').AsFloat := 1;
              zDiasL.Post;
              //ShowMessage(DateToStr(I));
            end;

            I := I+1;
          end;


        END;
        Nomina.Next;
      end;

    end;
    BarraProgresoAvance(Progreso, 0,100,40);

    DiasLaboradosM.Refresh;

    BarraProgresoAvance(Progreso, 0,100,20);

    BarraMostrar( False, progreso, LabelProceso );

end;

procedure TfrmDiasLaboradosSIANI.EnterControl(Sender: TObject);
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

procedure TfrmDiasLaboradosSIANI.fechasDetalle;
begin

     if temE.FieldByName('FK_Titulo').AsString ='SIANI' then
    begin
      AsignarSQL(DiasLaboradosM,'diasPersonal',pUpdate);
      FiltrarDataSet(DiasLaboradosM,'Proyecto,Personal,FechaI,FechaF',[-1,'-1',fechaSQL(dFechaInicio.Date), fechaSQL(dFechaTermino.Date)]);
      DiasLaboradosM.Open;
      id:=DiasLaboradosM.FieldByName('IdProyecto').AsString;
    end;

end;

procedure TfrmDiasLaboradosSIANI.SalidaControl(Sender: TObject);
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

procedure TfrmDiasLaboradosSIANI.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;


end.
