unit frm_migrar_ordenes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Forms, ExportaExcel,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, Grids, DBGrids, global, frm_connection,
  DB, ADODB, Buttons, ExtCtrls, frxClass, frxDBSet, ZAbstractRODataset, dateUtils,
  ZDataset, ZAbstractDataset, Controls, Menus, UnitExcepciones, UFunctionsGHH,
  rxToolEdit, rxCurrEdit, RXDBCtrl, UnitTarifa, unitMetodos,
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
  cxCurrencyEdit, cxCheckBox, RxMemDS, cxProgressBar, cxLabel, unitGenerales,
  dxLayoutcxEditAdapters, cxCalendar, cxDBEdit, dxLayoutContainer, cxGroupBox,
  cxCheckGroup, cxDBCheckGroup, cxMemo, cxLookupEdit, cxDBLookupEdit,
  dxLayoutControl, dxLayoutControlAdapters, cxCalc, dxBarBuiltInMenu, cxPC, Utilerias,
  cxRichEdit, cxVGrid, cxDBVGrid, cxInplaceContainer, cxCustomPivotGrid,
  cxDBPivotGrid, cxPivotGridSummaryDataSet, dxmdaset, cxPivotGridCustomDataSet,
  cxPivotGridDrillDownDataSet, cxGridCardView, cxGridDBCardView,
  cxGridCustomLayoutView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridDBLayoutView, dxCore,
  cxDateUtils, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, MemDS, DBAccess, Uni;

type
  TfrmMigrar_ordenes = class(TForm)
    Panel2: TPanel;
    Panel4: TPanel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    PanelAnexos: TPanel;
    PopupOpciones: TPopupMenu;
    N1: TMenuItem;
    DistribuirAvancesHorarios1: TMenuItem;
    N3: TMenuItem;
    ExportaraExcel1: TMenuItem;
    PanelActa: TPanel;
    Panel1: TPanel;
    Grid_ReportesDiarios: TcxGrid;
    cxViewDatos: TcxGridDBTableView;
    Grid_ReportesDiariosLevel1: TcxGridLevel;
    Panel3: TPanel;
    cxSplitter2: TcxSplitter;
    cxDatos: TdxMemData;
    cxDatosFolio: TStringField;
    cxDatosPartida: TStringField;
    cxDatosActividad: TStringField;
    cxDatosInicio: TStringField;
    cxDatosFin: TStringField;
    cxDatosDuracion: TStringField;
    cxDatosClasifica: TStringField;
    cxDatos1: TFloatField;
    cxDatos2: TFloatField;
    cxDatos3: TFloatField;
    cxDatos4: TFloatField;
    cxDatos5: TFloatField;
    cxDatos6: TFloatField;
    cxDatos7: TFloatField;
    cxDatos8: TFloatField;
    cxDatos9: TFloatField;
    cxDatos10: TFloatField;
    cxDatos12: TFloatField;
    cxDatos13: TFloatField;
    cxDatos14: TFloatField;
    cxDatos15: TFloatField;
    cxDatos16: TFloatField;
    cxDatos17: TFloatField;
    cxDatos18: TFloatField;
    cxDatos19: TFloatField;
    cxDatos20: TFloatField;
    cxDatos21: TFloatField;
    cxDatos22: TFloatField;
    cxDatos23: TFloatField;
    cxDatos24: TFloatField;
    cxDatosTotal: TFloatField;
    cxDatos11: TFloatField;
    ds_datos: TDataSource;
    cxDistribuye: TcxButton;
    rDiario: TfrxReport;
    cxDatos1D: TFloatField;
    cxDatos2D: TFloatField;
    cxDatos3D: TFloatField;
    cxDatos4D: TFloatField;
    cxDatos5D: TFloatField;
    cxDatos6D: TFloatField;
    cxDatos7D: TFloatField;
    cxDatos8D: TFloatField;
    cxDatos9D: TFloatField;
    cxDatos10D: TFloatField;
    cxDatos11D: TFloatField;
    cxDatos12D: TFloatField;
    cxDatos13D: TFloatField;
    cxDatos14D: TFloatField;
    cxDatos15D: TFloatField;
    cxDatos16D: TFloatField;
    cxDatos17D: TFloatField;
    cxDatos18D: TFloatField;
    cxDatos19D: TFloatField;
    cxDatos20D: TFloatField;
    cxDatos21D: TFloatField;
    cxDatos22D: TFloatField;
    cxDatos23D: TFloatField;
    cxDatos24D: TFloatField;
    cxPageDistribucion: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    EliminarRecursos1: TMenuItem;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGroupBox1: TcxGroupBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxGroupBox3: TcxGroupBox;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    cxGerencial: TcxCheckBox;
    dxLayoutItem10: TdxLayoutItem;
    cxReportesDiarios: TcxCheckBox;
    dxLayoutItem11: TdxLayoutItem;
    cxOrdenes: TcxCheckBox;
    dxLayoutItem12: TdxLayoutItem;
    cxNotaCampo: TcxCheckBox;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    cxInicio: TcxDateEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxTermino: TcxDateEdit;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    uBaseOrigen: TUniQuery;
    ds_bd_origen: TDataSource;
    uBaseDestino: TUniQuery;
    ds_bd_destino: TDataSource;
    cxDBOrigen: TcxLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxDBDestino: TcxLookupComboBox;
    dxLayoutItem14: TdxLayoutItem;
    uOrdenOrigen: TUniQuery;
    ds_orden_origen: TDataSource;
    uOrdenDestino: TUniQuery;
    ds_orden_destino: TDataSource;
    cxOTDestino: TcxLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cxOTOrigen: TcxLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    uTablas: TUniQuery;
    ds_tablas: TDataSource;
    cxViewDatosColumn1: TcxGridDBColumn;
    cxViewDatosColumn2: TcxGridDBColumn;
    uConsulta: TUniQuery;
    ds_consulta: TDataSource;
    uInsertar: TUniQuery;
    ds_insertar: TDataSource;
    cxMemoDetalle: TcxRichEdit;
    uCampos: TUniQuery;
    ds_campos: TDataSource;
    cxSplitter1: TcxSplitter;
    cxMemoScripts: TcxRichEdit;
    Panel5: TPanel;
    cxAplicar: TcxButton;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure tdIdFechaExit(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxGeneradorGetValue(const VarName: string; var Value: Variant);
   // Function BuscaPrimeraActTE(sParamContrato, sParamTipo :string; dParamFecha :tDate): integer;


    procedure cxImprimirClick(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxAgregarRegistroClick(Sender: TObject);
    function MaximoItem(dParamFecha :tDate) : integer;
    function AvanceFolio(sParamContrato, sParamConvenio, sParamFolio, sParamActividad :string; dParamFecha :tDate; iParamGerencial :integer):double;
    procedure EliminaPersonal(sParamFolio :string; iParamGerencial : integer);
    procedure EliminaGerencial(sParamContrato :string; iParamGerencial :integer);
    procedure cxPrgramaClick(Sender: TObject);
    procedure cxDistribuyeClick(Sender: TObject);
    procedure cxDBOrigenExit(Sender: TObject);
    procedure cxDBDestinoExit(Sender: TObject);
    procedure cxOTOrigenExit(Sender: TObject);
    procedure cxOTDestinoExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMigrar_ordenes: TfrmMigrar_ordenes;
  sOpcion, sHoraAnt, sFolioAnt, sWbsAnt : string;
  iGerencialAnt, iIdDiarioGral : Integer;
  lInsertaIntro : boolean;
  iOpcion : integer;
implementation

uses
    frm_noil, UnitValidaTexto;

{$R *.dfm}

procedure TfrmMigrar_ordenes.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmMigrar_ordenes.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmMigrar_ordenes.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDbCheckBox) then
        tcxDBCheckBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;

end;


procedure TfrmMigrar_ordenes.FormShow(Sender: TObject);
begin
    cxInicio.Date  := date;
    cxTermino.Date := date;

    uBaseOrigen.Active:=False;
    AsignarSQL(uBaseOrigen,'information_schema_bases',pUpdate);
    //FiltrarDataSet(uBaseOrigen,'information_schema_bases',['-1']);
    uBaseOrigen.Open;

    uBaseDestino.Active:=False;
    AsignarSQL(uBaseDestino,'information_schema_bases',pUpdate);
    uBaseDestino.Open;

    cxMemoDetalle.Clear

end;

procedure TfrmMigrar_ordenes.frxGeneradorGetValue(const VarName: string;
  var Value: Variant);
begin


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

procedure TfrmMigrar_ordenes.tdIdFechaExit(Sender: TObject);
begin

//  ZLookTripulacion.Active := False;
//  ZLookTripulacion.ParamByName('ContratoBarco').AsString := global_contrato_barco;
//  ZLookTripulacion.ParamByName('Orden').AsString    := global_contrato;
//  ZLookTripulacion.ParamByName('FechaI').AsDateTime := tdIdFecha.Date;
//  ZLookTripulacion.ParamByName('FechaF').AsDateTime := tdIdFechaTermino.Date;
//  ZLookTripulacion.Open;

end;


procedure TfrmMigrar_ordenes.btnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMigrar_ordenes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmMigrar_ordenes.cxAgregarRegistroClick(Sender: TObject);
var
    SavePlace     : TBookmark;
    sEstado : string;
    nombres, cadenas: TStringList;
begin

end;

procedure TfrmMigrar_ordenes.cxDBDestinoExit(Sender: TObject);
begin
    uBaseDestino.Locate('BD',cxDBDestino.Text,[]);
    uOrdenDestino.Active:=False;
    AsignarSQL(uOrdenDestino,'ordenes_bd',pUpdate);
    FiltrarDataSet(uOrdenDestino,'var_by_code1',[uBaseDestino.FieldByName('BD').AsString]);
    uOrdenDestino.Open;
end;

procedure TfrmMigrar_ordenes.cxDBOrigenExit(Sender: TObject);
begin
    uBaseOrigen.Locate('BD',cxDBOrigen.Text,[]);
    uOrdenOrigen.Active:=False;
    AsignarSQL(uOrdenOrigen,'ordenes_bd',pUpdate);
    FiltrarDataSet(uOrdenOrigen,'var_by_code1',[uBaseOrigen.FieldByName('BD').AsString]);
    uOrdenOrigen.Open;
end;

procedure TfrmMigrar_ordenes.cxDistribuyeClick(Sender: TObject);
var
    i,x,conteo : integer;
    lContinua : boolean;
    sCadenaCampoOrigen, sCadenaCampoDestino, sParamOrden, sOpcion, sContratoGeneral : string;
    sCampoGen : String ;
begin
    {$region 'Actualziar ordenes de trabajo'}
    if cxOrdenes.Checked then
    begin
        cxMemoDetalle.Clear;
        cxMemoDetalle.SelAttributes.Style := [fsBold];
        cxMemoDetalle.Lines.Add('Iniciando Actualizar Catalogos OT...');

        for x := 1 to 2 do
        begin
            if x= 1 then
            begin
               sOpcion := 'Si';
               cxMemoDetalle.SelAttributes.Style := [fsBold];
               cxMemoDetalle.SelAttributes.Color := clBlack;
               cxMemoDetalle.Lines.Add('Tablas principales..');
               cxMemoDetalle.Refresh;
            end
            else
            begin
               sOpcion := 'No';
               cxMemoDetalle.SelAttributes.Style := [fsBold];
               cxMemoDetalle.SelAttributes.Color := clBlack;
               cxMemoDetalle.Lines.Add('Tablas dependientes..');
               cxMemoDetalle.Refresh;
            end;
            sCampoGen := 'sContrato';
            uTablas.Active:=False;
            AsignarSQL(uTablas,'consulta_tablas_proceso',pUpdate);
            FiltrarDataSet(uTablas,'Tipo,Principal',['Orden',sOpcion]);
            uTablas.SQL.Text;
            uTablas.Open;

            while not uTablas.Eof do
            begin
                if (cxOTOrigen.Text = 'Todas las ordenes') or (uTablas.FieldByName('CampoFiltro').AsString = '') then
                begin
                   sParamOrden := '%';
                   sContratoGeneral := '%';
                end
                else
                begin
                   sParamOrden := uOrdenOrigen.FieldByName('sContrato').AsString ;
                   sContratoGeneral := uOrdenOrigen.FieldByName('sCodigo').AsString ;
                end;

                cxMemoDetalle.SelAttributes.Style := [fsBold];
                try
                    uConsulta.Active:=False;
                    AsignarSQL(uConsulta,'consulta_existe_datos',pUpdate);
                    if (uTablas.FieldByName('CampoFiltro').AsString <> '') and (uTablas.FieldByName('Principal').AsString = 'No')  then
                       FiltrarDataSet(uConsulta,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,(sParamOrden)])
                    else
                       FiltrarDataSet(uConsulta,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoId').AsString,QuotedStr(sParamOrden)]);

                    uConsulta.Open;

                    lContinua := True;
                except
                   on e : exception do
                   begin
                     cxMemoDetalle.SelAttributes.Style := [];
                     cxMemoDetalle.SelAttributes.Color := clRed;
                     cxMemoDetalle.Lines.Add('Error Mysql  : '+E.Message);
                     lContinua := false;
                   end;
                end;

                if lContinua then
                begin
                  sCadenaCampoOrigen := '';
                  for i := 0 to uConsulta.FieldDefs.Count -1 do
                  begin
                      if sCadenaCampoOrigen <> '' then
                         sCadenaCampoOrigen := sCadenaCampoOrigen + ',';
                      sCadenaCampoOrigen := sCadenaCampoOrigen + uConsulta.FieldDefs.Items[i].Name;
                  end;

                  uCampos.Active:=False;
                  AsignarSQL(uCampos,'consulta_existe_datos',pUpdate);
                  if (uTablas.FieldByName('CampoFiltro').AsString <> '') and (uTablas.FieldByName('Principal').AsString = 'No') then
                     FiltrarDataSet(uCampos,'var_by_code2,var_by_code1,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,(sParamOrden)])
                  else
                  begin
                     if (uTablas.FieldByName('CampoFiltro').AsString <> '') and (uTablas.FieldByName('CampoId').AsString <> '') then
                        FiltrarDataSet(uCampos,'var_by_code2,var_by_code1,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,(sParamOrden)])
                    else if uTablas.FieldByName('ContratoGeneral').AsString = 'Si' then
                      FiltrarDataSet(uCampos,'var_by_code2,var_by_code1,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,sCampoGen,sContratoGeneral])
                    else
                      FiltrarDataSet(uCampos,'var_by_code2,var_by_code1,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoId').AsString,(sParamOrden)]);
                  end;
                  uCampos.Open;

                  sCadenaCampoDestino := '';
                  for i := 0 to uCampos.FieldDefs.Count -1 do
                  begin
                      if sCadenaCampoDestino <> '' then
                         sCadenaCampoDestino := sCadenaCampoDestino + ',';
                      sCadenaCampoDestino := sCadenaCampoDestino + uCampos.FieldDefs.Items[i].Name;
                  end;

                  if uCampos.RecordCount > 0 then
                  begin
                      cxMemoDetalle.SelAttributes.Style := [fsBold];
                      cxMemoDetalle.SelAttributes.Color := clRed;
                  end
                  else
                      cxMemoDetalle.SelAttributes.Color := clBlue;
                  cxMemoDetalle.Lines.Add('Tabla: ['+ uTablas.FieldByName('Tabla').AsString + ']  Registros Encontrados  : ('+ IntToStr(uConsulta.RecordCount)+')');

                  if AnsiCompareText( sCadenaCampoOrigen,sCadenaCampoDestino ) = 0 then
                  begin
                      conteo := 0;
                      while not uCampos.Eof do
                      begin
                          if (uTablas.FieldByName('CampoFiltro').AsString <> '') and (uTablas.FieldByName('Principal').AsString = 'No') then
                          begin
                             if (uTablas.FieldByName('CampoId').AsString <> '') then
                             begin
                                uInsertar.Active:=False;
                                AsignarSQL(uInsertar,'actualiza_catalogos_tablas_2',pUpdate);
                                FiltrarDataSet(uInsertar,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,var_by_code5,var_by_code6,orden,codigo',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,sCadenaCampoOrigen,uTablas.FieldByName('CampoId').AsString,uCampos.FieldByName(uTablas.FieldByName('CampoFiltro').AsString).AsString,uCampos.FieldByName(uTablas.FieldByName('CampoId').AsString).AsString])
                             end
                             else
                             begin
                                uInsertar.Active:=False;
                                AsignarSQL(uInsertar,'actualiza_catalogos_tablas',pUpdate);
                                FiltrarDataSet(uInsertar,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,var_by_code5,codigo',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,sCadenaCampoOrigen,uCampos.FieldByName(uTablas.FieldByName('CampoFiltro').AsString).AsString])
                             end;
                          end
                          else
                          begin
                             if (uTablas.FieldByName('CampoFiltro').AsString <> '') and (uTablas.FieldByName('CampoId').AsString <> '') then
                             begin
                               uInsertar.Active:=False;
                               AsignarSQL(uInsertar,'actualiza_catalogos_tablas_2',pUpdate);
                               FiltrarDataSet(uInsertar,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,var_by_code5,var_by_code6,orden,codigo',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,sCadenaCampoOrigen,uTablas.FieldByName('CampoId').AsString,uCampos.FieldByName(uTablas.FieldByName('CampoFiltro').AsString).AsString,uCampos.FieldByName(uTablas.FieldByName('CampoId').AsString).AsString])
                             end
                             else
                             begin
                               uInsertar.Active:=False;
                               AsignarSQL(uInsertar,'actualiza_catalogos_tablas',pUpdate);
                               FiltrarDataSet(uInsertar,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,var_by_code5,codigo',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoId').AsString,sCadenaCampoOrigen,uCampos.FieldByName(uTablas.FieldByName('CampoId').AsString).AsString]);
                             end;
                          end;


                          uInsertar.Execute;

                          if uInsertar.RowsAffected > 1 then
                          begin
                            conteo := uInsertar.RowsAffected + conteo;
                            Break;
                          end;

                          inc(conteo);
                          uCampos.Next;
                      end;

                      cxMemoDetalle.SelAttributes.Style := [fsBold];
                      cxMemoDetalle.SelAttributes.Color := clGreen;
                      cxMemoDetalle.Lines.Add('Actualizados: ('+ IntToStr(conteo)+')');
                      cxMemoDetalle.Refresh;
                  end
                  else
                  begin
                      cxMemoDetalle.SelAttributes.Style := [fsBold];
                      cxMemoDetalle.SelAttributes.Color := clBlack;
                      cxMemoDetalle.Lines.Add('Error: Tablas con Esturcturas diferentes');
                      cxMemoDetalle.SelAttributes.Style := [];
                      cxMemoDetalle.SelAttributes.Color := clRed;
                      cxMemoDetalle.Lines.Add('Tabla Origen  : '+sCadenaCampoDestino);
                      cxMemoDetalle.SelAttributes.Color := clBlack;
                      cxMemoDetalle.Lines.Add('Tabla Destino : '+sCadenaCampoOrigen);
                      cxMemoDetalle.Refresh;
                  end;
                end;

                uTablas.Next;
            end;
        end;
        cxMemoDetalle.SelAttributes.Style := [fsBold];
        cxMemoDetalle.Lines.Add('Fin proceso Catalogos OT..');
        cxMemoDetalle.Refresh;
    end;
    {$endregion}

    {$region 'Copiar reportes diarios'}
    if cxReportesDiarios.Checked then
    begin
      if not cxOrdenes.Checked then
        cxMemoDetalle.Clear;
        sCampoGen:= 'sContrato';
        cxMemoDetalle.SelAttributes.Style := [fsBold];
        cxMemoDetalle.Lines.Add('Iniciando Actualizar Catalogos RD..');

        for x := 1 to 2 do
        begin
            if x= 1 then
            begin
               sOpcion := 'Si';
               cxMemoDetalle.SelAttributes.Style := [fsBold];
               cxMemoDetalle.SelAttributes.Color := clBlack;
               cxMemoDetalle.Lines.Add('Tablas principales..');
               cxMemoDetalle.Refresh;
            end
            else
            begin
               sOpcion := 'No';
               cxMemoDetalle.SelAttributes.Style := [fsBold];
               cxMemoDetalle.SelAttributes.Color := clBlack;
               cxMemoDetalle.Lines.Add('Tablas dependientes..');
               cxMemoDetalle.Refresh;
            end;

            uTablas.Active:=False;
            AsignarSQL(uTablas,'consulta_tablas_proceso',pUpdate);
            FiltrarDataSet(uTablas,'Tipo,Principal',['Reporte',sOpcion]);
            uTablas.SQL.Text;
            uTablas.Open;

            while not uTablas.Eof do
            begin
                if (cxOTOrigen.Text = 'Todas las ordenes') or (uTablas.FieldByName('CampoFiltro').AsString = '') then
                begin
                   sParamOrden := '%';
                   sContratoGeneral := '%';
                   if (cxOTOrigen.Text <> 'Todas las ordenes') then
                     sContratoGeneral := uOrdenOrigen.FieldByName('sCodigo').AsString ;
                end
                else
                begin
                   sParamOrden := uOrdenOrigen.FieldByName('sContrato').AsString ;
                   sContratoGeneral := uOrdenOrigen.FieldByName('sCodigo').AsString ;
                end;

                cxMemoDetalle.SelAttributes.Style := [fsBold];
                try
                    uConsulta.Active:=False;
                    AsignarSQL(uConsulta,'consulta_existe_datos',pUpdate);
                    if (uTablas.FieldByName('CampoFiltro').AsString <> '') and (uTablas.FieldByName('Principal').AsString = 'No')  then
                       FiltrarDataSet(uConsulta,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,(sParamOrden)])
                    else
                    BEGIN
                       if (uTablas.FieldByName('CampoFiltro').AsString <> '') and (uTablas.FieldByName('CampoId').AsString <> '') then
                          FiltrarDataSet(uConsulta,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,(sParamOrden)])
                       else
                       begin
                         if uTablas.FieldByName('ContratoGeneral').AsString = 'Si' then
                          FiltrarDataSet(uConsulta,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,sCampoGen,sContratoGeneral])
                         else
                          FiltrarDataSet(uConsulta,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoId').AsString,(sParamOrden)]);

                       end;

                    END;


                     //  FiltrarDataSet(uConsulta,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoId').AsString,QuotedStr(sParamOrden)]);




                    uConsulta.Open;

                    lContinua := True;
                except
                   on e : exception do
                   begin
                     cxMemoDetalle.SelAttributes.Style := [];
                     cxMemoDetalle.SelAttributes.Color := clRed;
                     cxMemoDetalle.Lines.Add('Error Mysql  : '+E.Message);
                     lContinua := false;
                   end;
                end;

                if lContinua then
                begin
                  sCadenaCampoOrigen := '';
                  for i := 0 to uConsulta.FieldDefs.Count -1 do
                  begin
                      if sCadenaCampoOrigen <> '' then
                         sCadenaCampoOrigen := sCadenaCampoOrigen + ',';
                      sCadenaCampoOrigen := sCadenaCampoOrigen + uConsulta.FieldDefs.Items[i].Name;
                  end;

                  uCampos.Active:=False;
                  AsignarSQL(uCampos,'consulta_existe_datos',pUpdate);
                  if (uTablas.FieldByName('CampoFiltro').AsString <> '') and (uTablas.FieldByName('Principal').AsString = 'No') then
                     FiltrarDataSet(uCampos,'var_by_code2,var_by_code1,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,(sParamOrden)])
                  else
                  begin
                     if (uTablas.FieldByName('CampoFiltro').AsString <> '') and (uTablas.FieldByName('CampoId').AsString <> '') then
                        FiltrarDataSet(uCampos,'var_by_code2,var_by_code1,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,(sParamOrden)])
                     else
                     BEGIN
                       if uTablas.FieldByName('ContratoGeneral').AsString = 'Si' then
                        FiltrarDataSet(uCampos,'var_by_code2,var_by_code1,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,sCampoGen,sContratoGeneral])
                       else
                        FiltrarDataSet(uCampos,'var_by_code2,var_by_code1,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoId').AsString,(sParamOrden)]);
                     END;
                  end;

                  uCampos.Open;

                  sCadenaCampoDestino := '';
                  for i := 0 to uCampos.FieldDefs.Count -1 do
                  begin
                      if sCadenaCampoDestino <> '' then
                         sCadenaCampoDestino := sCadenaCampoDestino + ',';
                      sCadenaCampoDestino := sCadenaCampoDestino + uCampos.FieldDefs.Items[i].Name;
                  end;

                  if uCampos.RecordCount > 0 then
                  begin
                      cxMemoDetalle.SelAttributes.Style := [fsBold];
                      cxMemoDetalle.SelAttributes.Color := clRed;
                  end
                  else
                      cxMemoDetalle.SelAttributes.Color := clBlue;
                  cxMemoDetalle.Lines.Add('Tabla: ['+ uTablas.FieldByName('Tabla').AsString + ']  Registros Encontrados  : ('+ IntToStr(uConsulta.RecordCount)+')');

                  if AnsiCompareText( sCadenaCampoOrigen,sCadenaCampoDestino ) = 0 then
                  begin
                      conteo := 0;
                      while not uCampos.Eof do
                      begin
                          if (uTablas.FieldByName('CampoFiltro').AsString <> '') and (uTablas.FieldByName('Principal').AsString = 'No') then
                          begin
                             if (uTablas.FieldByName('CampoId').AsString <> '') then
                             begin
                                uInsertar.Active:=False;
                                AsignarSQL(uInsertar,'actualiza_catalogos_tablas_2',pUpdate);
                                FiltrarDataSet(uInsertar,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,var_by_code5,var_by_code6,orden,codigo',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,sCadenaCampoOrigen,uTablas.FieldByName('CampoId').AsString,uCampos.FieldByName(uTablas.FieldByName('CampoFiltro').AsString).AsString,uCampos.FieldByName(uTablas.FieldByName('CampoId').AsString).AsString])
                             end
                             else
                             begin
                                uInsertar.Active:=False;
                                AsignarSQL(uInsertar,'actualiza_catalogos_tablas',pUpdate);
                                FiltrarDataSet(uInsertar,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,var_by_code5,codigo',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,sCadenaCampoOrigen,uCampos.FieldByName(uTablas.FieldByName('CampoFiltro').AsString).AsString])
                             end;
                          end
                          else
                          begin
                             if (uTablas.FieldByName('CampoFiltro').AsString <> '') and (uTablas.FieldByName('CampoId').AsString <> '') then
                             begin
                               uInsertar.Active:=False;
                               AsignarSQL(uInsertar,'actualiza_catalogos_tablas_2',pUpdate);
                               FiltrarDataSet(uInsertar,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,var_by_code5,var_by_code6,orden,codigo',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,sCadenaCampoOrigen,uTablas.FieldByName('CampoId').AsString,uCampos.FieldByName(uTablas.FieldByName('CampoFiltro').AsString).AsString,uCampos.FieldByName(uTablas.FieldByName('CampoId').AsString).AsString])
                             end
                             else
                             begin
                               uInsertar.Active:=False;
                               AsignarSQL(uInsertar,'actualiza_catalogos_tablas',pUpdate);
                               FiltrarDataSet(uInsertar,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,var_by_code5,codigo',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoId').AsString,sCadenaCampoOrigen,uCampos.FieldByName(uTablas.FieldByName('CampoId').AsString).AsString]);
                             end;
                          end;


                          uInsertar.Execute;

                          if uInsertar.RowsAffected > 1 then
                          begin
                            conteo := uInsertar.RowsAffected + conteo;
                            Break;
                          end;

                          inc(conteo);
                          uCampos.Next;
                      end;

                      cxMemoDetalle.SelAttributes.Style := [fsBold];
                      cxMemoDetalle.SelAttributes.Color := clGreen;
                      cxMemoDetalle.Lines.Add('Actualizados: ('+ IntToStr(conteo)+')');
                      cxMemoDetalle.Refresh;
                  end
                  else
                  begin
                      cxMemoDetalle.SelAttributes.Style := [fsBold];
                      cxMemoDetalle.SelAttributes.Color := clBlack;
                      cxMemoDetalle.Lines.Add('Error: Tablas con Esturcturas diferentes');
                      cxMemoDetalle.SelAttributes.Style := [];
                      cxMemoDetalle.SelAttributes.Color := clRed;
                      cxMemoDetalle.Lines.Add('Tabla Origen  : '+sCadenaCampoDestino);
                      cxMemoDetalle.SelAttributes.Color := clBlack;
                      cxMemoDetalle.Lines.Add('Tabla Destino : '+sCadenaCampoOrigen);
                      cxMemoDetalle.Refresh;
                  end;
                end;

                uTablas.Next;
            end;
        end;
        cxMemoDetalle.SelAttributes.Style := [fsBold];
        cxMemoDetalle.Lines.Add('Fin proceso Catalogos RD..');
        cxMemoDetalle.Refresh;

    end;
    {$endregion}
    {$region 'Actualizar notas de campo'}
    if cxNotaCampo.Checked then
    begin
      if not cxOrdenes.Checked then
        cxMemoDetalle.Clear;

        cxMemoDetalle.SelAttributes.Style := [fsBold];
        cxMemoDetalle.Lines.Add('Iniciando Actualizar Catalogos Notas de Campo..');

        for x := 1 to 2 do
        begin
            if x= 1 then
            begin
               sOpcion := 'Si';
               cxMemoDetalle.SelAttributes.Style := [fsBold];
               cxMemoDetalle.SelAttributes.Color := clBlack;
               cxMemoDetalle.Lines.Add('Tablas principales..');
               cxMemoDetalle.Refresh;
            end
            else
            begin
               sOpcion := 'No';
               cxMemoDetalle.SelAttributes.Style := [fsBold];
               cxMemoDetalle.SelAttributes.Color := clBlack;
               cxMemoDetalle.Lines.Add('Tablas dependientes..');
               cxMemoDetalle.Refresh;
            end;

            uTablas.Active:=False;
            AsignarSQL(uTablas,'consulta_tablas_proceso',pUpdate);
            FiltrarDataSet(uTablas,'Tipo,Principal',['Notas',sOpcion]);
            uTablas.SQL.Text;
            uTablas.Open;

            while not uTablas.Eof do
            begin
                if (cxOTOrigen.Text = 'Todas las ordenes') or (uTablas.FieldByName('CampoFiltro').AsString = '') then
                   sParamOrden := '%'
                else
                   sParamOrden := uOrdenOrigen.FieldByName('sContrato').AsString ;

                cxMemoDetalle.SelAttributes.Style := [fsBold];
                try
                    uConsulta.Active:=False;
                    AsignarSQL(uConsulta,'consulta_existe_datos',pUpdate);
                    if (uTablas.FieldByName('CampoFiltro').AsString <> '') and (uTablas.FieldByName('Principal').AsString = 'No')  then
                       FiltrarDataSet(uConsulta,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,(sParamOrden)])
                    else
                       FiltrarDataSet(uConsulta,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoId').AsString,QuotedStr(sParamOrden)]);

                    uConsulta.Open;

                    lContinua := True;
                except
                   on e : exception do
                   begin
                     cxMemoDetalle.SelAttributes.Style := [];
                     cxMemoDetalle.SelAttributes.Color := clRed;
                     cxMemoDetalle.Lines.Add('Error Mysql  : '+E.Message);
                     lContinua := false;
                   end;
                end;

                if lContinua then
                begin
                  sCadenaCampoOrigen := '';
                  for i := 0 to uConsulta.FieldDefs.Count -1 do
                  begin
                      if sCadenaCampoOrigen <> '' then
                         sCadenaCampoOrigen := sCadenaCampoOrigen + ',';
                      sCadenaCampoOrigen := sCadenaCampoOrigen + uConsulta.FieldDefs.Items[i].Name;
                  end;

                  uCampos.Active:=False;
                  AsignarSQL(uCampos,'consulta_existe_datos',pUpdate);
                  if (uTablas.FieldByName('CampoFiltro').AsString <> '') and (uTablas.FieldByName('Principal').AsString = 'No') then
                     FiltrarDataSet(uCampos,'var_by_code2,var_by_code1,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,(sParamOrden)])
                  else
                  begin
                     if (uTablas.FieldByName('CampoFiltro').AsString <> '') and (uTablas.FieldByName('CampoId').AsString <> '') then
                        FiltrarDataSet(uCampos,'var_by_code2,var_by_code1,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,(sParamOrden)])
                    else
                      FiltrarDataSet(uCampos,'var_by_code2,var_by_code1,var_by_code3,var_by_code4,Orden',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoId').AsString,(sParamOrden)]);
                  end;
                  uCampos.Open;

                  sCadenaCampoDestino := '';
                  for i := 0 to uCampos.FieldDefs.Count -1 do
                  begin
                      if sCadenaCampoDestino <> '' then
                         sCadenaCampoDestino := sCadenaCampoDestino + ',';
                      sCadenaCampoDestino := sCadenaCampoDestino + uCampos.FieldDefs.Items[i].Name;
                  end;

                  if uCampos.RecordCount > 0 then
                  begin
                      cxMemoDetalle.SelAttributes.Style := [fsBold];
                      cxMemoDetalle.SelAttributes.Color := clRed;
                  end
                  else
                      cxMemoDetalle.SelAttributes.Color := clBlue;
                  cxMemoDetalle.Lines.Add('Tabla: ['+ uTablas.FieldByName('Tabla').AsString + ']  Registros Encontrados  : ('+ IntToStr(uConsulta.RecordCount)+')');

                  if AnsiCompareText( sCadenaCampoOrigen,sCadenaCampoDestino ) = 0 then
                  begin
                      conteo := 0;
                      while not uCampos.Eof do
                      begin
                          if (uTablas.FieldByName('CampoFiltro').AsString <> '') and (uTablas.FieldByName('Principal').AsString = 'No') then
                          begin
                             if (uTablas.FieldByName('CampoId').AsString <> '') then
                             begin
                                uInsertar.Active:=False;
                                AsignarSQL(uInsertar,'actualiza_catalogos_tablas_2',pUpdate);
                                FiltrarDataSet(uInsertar,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,var_by_code5,var_by_code6,orden,codigo',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,sCadenaCampoOrigen,uTablas.FieldByName('CampoId').AsString,uCampos.FieldByName(uTablas.FieldByName('CampoFiltro').AsString).AsString,uCampos.FieldByName(uTablas.FieldByName('CampoId').AsString).AsString])
                             end
                             else
                             begin
                                uInsertar.Active:=False;
                                AsignarSQL(uInsertar,'actualiza_catalogos_tablas',pUpdate);
                                FiltrarDataSet(uInsertar,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,var_by_code5,codigo',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,sCadenaCampoOrigen,uCampos.FieldByName(uTablas.FieldByName('CampoFiltro').AsString).AsString])
                             end;
                          end
                          else
                          begin
                             if (uTablas.FieldByName('CampoFiltro').AsString <> '') and (uTablas.FieldByName('CampoId').AsString <> '') then
                             begin
                               uInsertar.Active:=False;
                               AsignarSQL(uInsertar,'actualiza_catalogos_tablas_2',pUpdate);
                               FiltrarDataSet(uInsertar,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,var_by_code5,var_by_code6,orden,codigo',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoFiltro').AsString,sCadenaCampoOrigen,uTablas.FieldByName('CampoId').AsString,uCampos.FieldByName(uTablas.FieldByName('CampoFiltro').AsString).AsString,uCampos.FieldByName(uTablas.FieldByName('CampoId').AsString).AsString])
                             end
                             else
                             begin



                               uInsertar.Active:=False;
                               AsignarSQL(uInsertar,'actualiza_catalogos_tablas',pUpdate);
                               FiltrarDataSet(uInsertar,'var_by_code1,var_by_code2,var_by_code3,var_by_code4,var_by_code5,codigo',[uBaseOrigen.FieldByName('BD').AsString,uBaseDestino.FieldByName('BD').AsString,uTablas.FieldByName('Tabla').AsString,uTablas.FieldByName('CampoId').AsString,sCadenaCampoOrigen,uCampos.FieldByName(uTablas.FieldByName('CampoId').AsString).AsString]);
                             end;
                          end;


                          uInsertar.Execute;

                          if uInsertar.RowsAffected > 1 then
                          begin
                            conteo := uInsertar.RowsAffected + conteo;
                            Break;
                          end;

                          inc(conteo);
                          uCampos.Next;
                      end;

                      cxMemoDetalle.SelAttributes.Style := [fsBold];
                      cxMemoDetalle.SelAttributes.Color := clGreen;
                      cxMemoDetalle.Lines.Add('Actualizados: ('+ IntToStr(conteo)+')');
                      cxMemoDetalle.Refresh;
                  end
                  else
                  begin
                      cxMemoDetalle.SelAttributes.Style := [fsBold];
                      cxMemoDetalle.SelAttributes.Color := clBlack;
                      cxMemoDetalle.Lines.Add('Error: Tablas con Esturcturas diferentes');
                      cxMemoDetalle.SelAttributes.Style := [];
                      cxMemoDetalle.SelAttributes.Color := clRed;
                      cxMemoDetalle.Lines.Add('Tabla Origen  : '+sCadenaCampoDestino);
                      cxMemoDetalle.SelAttributes.Color := clBlack;
                      cxMemoDetalle.Lines.Add('Tabla Destino : '+sCadenaCampoOrigen);
                      cxMemoDetalle.Refresh;
                  end;
                end;

                uTablas.Next;
            end;
        end;
        cxMemoDetalle.SelAttributes.Style := [fsBold];
        cxMemoDetalle.Lines.Add('Fin proceso Catalogos Nota de Campo..');
        cxMemoDetalle.Refresh;
    end;
    {$endRegion}
end;

procedure TfrmMigrar_ordenes.cxImprimirClick(Sender: TObject);
begin
    BarraMostrar(True,progreso, LabelProceso);

    BarraMostrar(False,progreso, LabelProceso);
end;

procedure TfrmMigrar_ordenes.cxOTDestinoExit(Sender: TObject);
begin
   uOrdenDestino.Locate('sMascara',cxOTDestino.Text,[]);
end;

procedure TfrmMigrar_ordenes.cxOTOrigenExit(Sender: TObject);
begin
    uOrdenOrigen.Locate('sMascara',cxOTOrigen.Text,[]);
end;

procedure TfrmMigrar_ordenes.cxPrgramaClick(Sender: TObject);
begin
//    if not MostrarFormChild('frmProgramasTrabajo', global_dxBarManagerPrincipal) then
//    begin
//        Application.CreateForm(TfrmProgramasTrabajo, frmProgramasTrabajo);
//        frmProgramasTrabajo.show;
//    end;
end;

function TfrmMigrar_ordenes.MaximoItem(dParamFecha :tDate):integer;
var
    MaximoDiario   : TZQuery;

begin
    MaximoDiario:=TzQuery.create(nil);
    MaximoDiario.Connection := Connection.zConnection;

    MaximoDiario.Active := False;
    MaximoDiario.SQL.Add('SELECT Max(iIdDiario) as TotalDiario FROM bitacoradeactividades '+
                         'where sContrato = :contrato and dIdFecha = :fecha  Group By sContrato');
    MaximoDiario.Params.ParamByName('Contrato').AsString  := Global_Contrato;
    MaximoDiario.Params.ParamByName('Fecha').AsDate       := dParamFecha;
    MaximoDiario.Open;

    if MaximoDiario.FieldByName('TotalDiario').IsNull then
       result := global_inicio + 1
    else
       result := MaximoDiario.FieldValues['TotalDiario'] + 1;

    MaximoDiario.Destroy;
end;

function TfrmMigrar_ordenes.AvanceFolio(sParamContrato: string; sParamConvenio: string; sParamFolio: string; sParamActividad: string; dParamFecha: TDate; iParamGerencial: Integer) : double;
var
    AvanceActividad   : TZQuery;
begin
    AvanceActividad:=TzQuery.create(nil);
    AvanceActividad.Connection := Connection.zConnection;

    AvanceActividad.Active := False;
    AvanceActividad.SQL.Add('select (select round(sum(dAvance),2) as anterior from g_bitacoradeactividades where sContrato = b.sContrato and sNumeroOrden = b.sNumeroOrden '+
                            'and sNumeroActividad = b.sNumeroActividad and dIdFecha < b.dIdFecha group by sContrato ) as anteriorDia, '+
                            '(select round(sum(dAvance),2) as anterior from g_bitacoradeactividades where sContrato = b.sContrato and sNumeroOrden = b.sNumeroOrden '+
                            'and sNumeroActividad = b.sNumeroActividad and dIdFecha = b.dIdFecha and idGerencial < b.IdGerencial  group by sContrato ) as anterior, '+
                            '(select round(sum(dAvance),2) as actual from g_bitacoradeactividades where sContrato = b.sContrato and sNumeroOrden = b.sNumeroOrden '+
                            'and sNumeroActividad = b.sNumeroActividad and dIdFecha = b.dIdFecha and (IdGerencial = b.IdGerencial ) group by sContrato ) as actual '+
                            'from g_bitacoradeactividades b where b.sContrato =:Contrato and b.sIdConvenio =:Convenio and IdGerencial =:Gerencial '+
                            'and b.dIdFecha =:Fecha && b.snumeroorden = :folio && b.sNumeroActividad =:Actividad && b.sIdTipoMovimiento = "ED" order by b.sHoraInicio');
    AvanceActividad.Params.ParamByName('Contrato').AsString  := sParamContrato;
    AvanceActividad.Params.ParamByName('Convenio').AsString  := sParamConvenio;
    AvanceActividad.Params.ParamByName('Fecha').AsDate       := dParamFecha;
    AvanceActividad.Params.ParamByName('Actividad').AsString := sParamActividad;
    AvanceActividad.Params.ParamByName('Folio').AsString     := sParamFolio;
    AvanceActividad.Params.ParamByName('Gerencial').AsInteger:= iParamGerencial;
    AvanceActividad.Open;

    if AvanceActividad.RecordCount > 0 then
       result := AvanceActividad.FieldByName('anteriorDia').AsFloat + AvanceActividad.FieldByName('anterior').AsFloat + AvanceActividad.FieldByName('actual').AsFloat
    else
       result := 0;
    AvanceActividad.Destroy;
end;

procedure TfrmMigrar_ordenes.EliminaPersonal(sParamFolio :string; iParamGerencial : integer);
var
    zElimina   : TZQuery;
begin
    zElimina:=TzQuery.create(nil);
    zElimina.Connection := Connection.zConnection;

    zElimina.Active := False;
    zElimina.SQL.Add('select * FROM g_bitacoradeactividades '+
                     'where idGerencial =:Gerencial and sNumeroOrden =:Folio ');
    zElimina.Params.ParamByName('Gerencial').AsInteger := iParamGerencial;
    zElimina.Params.ParamByName('Folio').AsString      := sParamFolio;
    zElimina.Open;

    if zElimina.RecordCount = 0 then
    begin
        zElimina.Active := False;
        zElimina.SQL.Add('delete FROM g_bitacoradepersonal '+
                         'where idGerencial =:Gerencial and sNumeroOrden =:Folio ');
        zElimina.Params.ParamByName('Gerencial').AsInteger := iParamGerencial;
        zElimina.Params.ParamByName('Folio').AsString      := sParamFolio;
        zElimina.ExecSQL;
    end;
    zElimina.Destroy;
end;

procedure TfrmMigrar_ordenes.EliminaGerencial(sParamContrato :string; iParamGerencial : integer);
var
    zElimina   : TZQuery;
begin
    zElimina:=TzQuery.create(nil);
    zElimina.Connection := Connection.zConnection;

    zElimina.Active := False;
    zElimina.SQL.Clear;
    zElimina.SQL.Add('Delete from g_bitacoradepersonal where sContrato =:Contrato and idGerencial =:Gerencial;');
    zElimina.Params.ParamByName('Gerencial').AsInteger := iParamGerencial;
    zElimina.Params.ParamByName('Contrato').AsString   := sParamContrato;
    zElimina.ExecSQL;

    zElimina.Active := False;
    zElimina.SQL.Clear;
    zElimina.SQL.Add('Delete from g_bitacora_resumenpersonal where sContrato =:Contrato and idGerencial =:Gerencial; ');
    zElimina.Params.ParamByName('Gerencial').AsInteger := iParamGerencial;
    zElimina.Params.ParamByName('Contrato').AsString   := sParamContrato;
    zElimina.ExecSQL;

    zElimina.Active := False;
    zElimina.SQL.Clear;
    zElimina.SQL.Add('Delete from g_condicionesclimatologicas where sContrato =:Contrato and idGerencial =:Gerencial; ');
    zElimina.Params.ParamByName('Gerencial').AsInteger := iParamGerencial;
    zElimina.Params.ParamByName('Contrato').AsString   := sParamContrato;
    zElimina.ExecSQL;

    zElimina.Active := False;
    zElimina.SQL.Clear;
    zElimina.SQL.Add('Delete from g_recursos where sContrato =:Contrato and idGerencial =:Gerencial; ');
    zElimina.Params.ParamByName('Gerencial').AsInteger := iParamGerencial;
    zElimina.Params.ParamByName('Contrato').AsString   := global_Contrato_barco;
    zElimina.ExecSQL;

    zElimina.Destroy;
end;

end.


