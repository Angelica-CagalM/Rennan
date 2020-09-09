unit frm_RegistroMantenimiento;

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
  dxSkinXmas2008Blue, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  dxBarBuiltInMenu, dxLayoutContainer, dxLayoutControl, cxPC, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxSplitter, frm_barraH2, cxProgressBar,
  Vcl.StdCtrls, cxButtons, cxLabel, frm_barraH1, Vcl.ExtCtrls, frm_connection,
  global, unitgenerales, UnitReportes, MemDS, DBAccess, Uni,
  dxLayoutcxEditAdapters, cxCurrencyEdit, cxDBEdit, cxMaskEdit, cxSpinEdit,
  cxTextEdit, cxMemo, cxDropDownEdit, cxCalendar, frxClass, frxDBSet,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, unitrh;

type
  TfrmRegistroMantenimiento = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    PanelPrincipal: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxSplitter1: TcxSplitter;
    grid_mantenimiento: TcxGrid;
    cxView_mantenimiento: TcxGridDBTableView;
    cxView_mantenimientoColumn1: TcxGridDBColumn;
    cxView_mantenimientoColumn2: TcxGridDBColumn;
    cxView_mantenimientoColumn3: TcxGridDBColumn;
    cxView_mantenimientoColumn7: TcxGridDBColumn;
    cxView_mantenimientoColumn4: TcxGridDBColumn;
    cxView_mantenimientoColumn5: TcxGridDBColumn;
    cxView_mantenimientoColumn6: TcxGridDBColumn;
    grid_mantenimientoLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    cxPageDetalle: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGridMto: TcxGrid;
    cxView_Mto: TcxGridDBTableView;
    cxView_MtoColumn1: TcxGridDBColumn;
    cxView_MtoColumn2: TcxGridDBColumn;
    cxView_MtoColumn5: TcxGridDBColumn;
    cxView_MtoColumn6: TcxGridDBColumn;
    cxGridMtoLevel1: TcxGridLevel;
    cxSplitter4: TcxSplitter;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    cxEliminarDetalle: TcxButton;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    dsMaterial: TDataSource;
    zMaterial: TUniQuery;
    cxTabsheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxAmperaje: TcxGrid;
    cxAmperajeView: TcxGridDBTableView;
    cxAmperajeLevel: TcxGridLevel;
    cxVoltaje: TcxGrid;
    cxVoltajeView: TcxGridDBTableView;
    cxVoltajeLevel: TcxGridLevel;
    cxAmperajeViewColumn1: TcxGridDBColumn;
    cxAmperajeViewColumn2: TcxGridDBColumn;
    cxAmperajeViewColumn3: TcxGridDBColumn;
    cxAmperajeViewColumn4: TcxGridDBColumn;
    cxAmperajeViewColumn5: TcxGridDBColumn;
    cxAmperajeViewColumn6: TcxGridDBColumn;
    cxVoltajeViewColumn1: TcxGridDBColumn;
    cxVoltajeViewColumn2: TcxGridDBColumn;
    cxVoltajeViewColumn3: TcxGridDBColumn;
    cxVoltajeViewColumn4: TcxGridDBColumn;
    cxVoltajeViewColumn5: TcxGridDBColumn;
    zVoltaje: TUniQuery;
    dsVoltaje: TDataSource;
    zAmperaje: TUniQuery;
    dsAmperaje: TDataSource;
    cxSplitter2: TcxSplitter;
    PanelDown1: TPanel;
    c: TdxLayoutControl;
    cGroup_Root: TdxLayoutGroup;
    edtElectrodo: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    spTipoElectrodo: TcxDBSpinEdit;
    dxLayoutItem2: TdxLayoutItem;
    edtPrueba: TcxDBCurrencyEdit;
    dxLayoutItem3: TdxLayoutItem;
    edtLecMaquina: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    edtLecturaIns: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    edtVariacion: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    PanelDown2: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    edtElectrodoVolt: TcxDBTextEdit;
    edtInsMedicion: TcxDBCurrencyEdit;
    edtelectroTipo: TcxDBSpinEdit;
    edtMaquinaLEc: TcxDBCurrencyEdit;
    edtVariacionVolt: TcxDBCurrencyEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    cxSplitter3: TcxSplitter;
    PanelDown6: TPanel;
    dxLayoutControl5: TdxLayoutControl;
    dtFecha: TcxDBDateEdit;
    edtFechaCalibra: TcxDBDateEdit;
    mObservacion: TcxDBMemo;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    zMtoDetalle: TUniQuery;
    dsMtoDetalle: TDataSource;
    cxAmperajeViewColumn7: TcxGridDBColumn;
    cxVoltajeViewColumn6: TcxGridDBColumn;
    dxLayoutItem7: TdxLayoutItem;
    edtCodigo: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    lcbMantenimiento: TcxDBLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem16: TdxLayoutItem;
    cbMaterial: TcxDBLookupComboBox;
    lcbInstrumentoM: TcxDBLookupComboBox;
    dxLayoutItem18: TdxLayoutItem;
    zInstrumentos: TUniQuery;
    dsInstrumento: TDataSource;
    cxView_mantenimientoColumn8: TcxGridDBColumn;
    frxDBDMtoAmp: TfrxDBDataset;
    zReporteMto: TUniQuery;
    zReporteMtoDetAmp: TUniQuery;
    zReporteMtoDetVolt: TUniQuery;
    frxDBMtoVolt: TfrxDBDataset;
    ReporteMto: TfrxReport;
    frxDBMantenimiento: TfrxDBDataset;
    cxPageDet: TcxPageControl;
    cxTabCalibracion: TcxTabSheet;
    cxTabFallas: TcxTabSheet;
    cxTabMantenimiento: TcxTabSheet;
    cxPageDetalle2: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxSplitter5: TcxSplitter;
    PanelDownF1: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    dtFechaF: TcxDBDateEdit;
    mObservacionF: TcxDBMemo;
    edtCodigoF: TcxDBTextEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    mFallaReportada: TcxDBMemo;
    dxLayoutItem19: TdxLayoutItem;
    mEstadoEquipo: TcxDBMemo;
    dxLayoutItem23: TdxLayoutItem;
    cbServicioReq: TcxDBComboBox;
    dxLayoutItem24: TdxLayoutItem;
    cbMotivo: TcxDBComboBox;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dsFallas: TDataSource;
    zFallas: TUniQuery;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    edtUbicacion: TcxDBTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    edtTiempo: TcxDBTextEdit;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    zReporteFallas: TUniQuery;
    frxDBFallas: TfrxDBDataset;
    ReporteFallas: TfrxReport;
    cbPrioridad: TcxDBComboBox;
    dxLayoutItem28: TdxLayoutItem;
    Panel4: TPanel;
    cxLeyenda3: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxView_mantenimientoCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxPageDetalleChange(Sender: TObject);
    procedure zMaterialAfterScroll(DataSet: TDataSet);
    procedure cxTabsheet1Show(Sender: TObject);
    procedure cxTabSheet3Show(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure ReporteMtoGetValue(const VarName: string; var Value: Variant);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxTabFallasShow(Sender: TObject);
    procedure ReporteFallasGetValue(const VarName: string; var Value: Variant);
    procedure btnDetalleClick(Sender: TObject);
    procedure cxEliminarDetalleClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegistroMantenimiento: TfrmRegistroMantenimiento;
  btnPermisos, titulo, titulo2:String;
  IsOpen : Boolean = False;
  SavePlace     : TBookmark;

implementation

{$R *.dfm}

procedure TfrmRegistroMantenimiento.EnterControl(Sender: TObject);
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

procedure TfrmRegistroMantenimiento.SalidaControl(Sender: TObject);
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


procedure TfrmRegistroMantenimiento.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmRegistroMantenimiento.btnDetalleClick(Sender: TObject);
begin
    cxPageDet.ActivePageIndex := 0;
  cxPageDetalle.ActivePageIndex := 0;
  PanelDown.Visible :=False;
  if PanelDetalle.Visible then
   begin
       cxSplitterOpciones.Visible := False;
       PanelDetalle.Visible       := False;
   end
   else
   begin
       PanelDetalle.Visible       := True;
       cxSplitterOpciones.Visible := True;
   end;
end;

procedure TfrmRegistroMantenimiento.btnPrinterClick(Sender: TObject);
begin
    //Reportes de mantenimiento por insumo
    if PanelDetalle.Visible=False then
    begin
      AsignarSQL(zReporteMto,'mto_reporte_mantenimiento_calibra',pUpdate);
      FiltrarDataSet(zReporteMto,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString])   ;
      zReporteMto.Open;

      if zReporteMto.RecordCount > 0 then
      begin
        AsignarSQL(zReporteMtoDetAmp,'mto_reporte_mantenimiento_pruebas_amp',pUpdate);
        FiltrarDataSet(zReporteMtoDetAmp,'IdMantenimiento',[zReporteMto.FieldByName('IdMantenimientoDetalle').AsString]);
        zReporteMtoDetAmp.Open;

        AsignarSQL(zReporteMtoDetVolt,'mto_reporte_mantenimiento_pruebas_volt',pUpdate);
        FiltrarDataSet(zReporteMtoDetVolt,'IdMantenimiento',[zReporteMto.FieldByName('IdMantenimientoDetalle').AsString]);
        zReporteMtoDetVolt.Open;
        ReporteMantenimiento( zReporteMto, zReporteMtoDetVolt, zReporteMtoDetAmp, frmRegistroMantenimiento, ReporteMto.OnGetValue, progreso);
      end;
    end
    else
    begin

      if ((cxPageDet.ActivePageIndex = 0 ) and (cxPageDetalle.ActivePageIndex = 0)) then
      begin
        AsignarSQL(zReporteMto,'mto_reporte_mantenimiento_calibra2',pUpdate);
        FiltrarDataSet(zReporteMto,'IdInsumo,IdMantenimientoDetalle',[zMaterial.FieldByName('IdInsumo').AsString, zMtoDetalle.FieldByName('IdMantenimientoDetalle').AsString]);
        zReporteMto.Open;
        if zReporteMto.RecordCount > 0 then
        begin
          AsignarSQL(zReporteMtoDetAmp,'mto_reporte_mantenimiento_pruebas_amp',pUpdate);
          FiltrarDataSet(zReporteMtoDetAmp,'IdMantenimiento',[zReporteMto.FieldByName('IdMantenimientoDetalle').AsString]);
          zReporteMtoDetAmp.Open;

          AsignarSQL(zReporteMtoDetVolt,'mto_reporte_mantenimiento_pruebas_volt',pUpdate);
          FiltrarDataSet(zReporteMtoDetVolt,'IdMantenimiento',[zReporteMto.FieldByName('IdMantenimientoDetalle').AsString]);
          zReporteMtoDetVolt.Open;
        end;

        ReporteMantenimiento( zReporteMto, zReporteMtoDetVolt, zReporteMtoDetAmp, frmRegistroMantenimiento, ReporteMto.OnGetValue, progreso);
      end else if ((cxPageDet.ActivePageIndex = 1 ) and (cxPageDetalle2.ActivePageIndex = 0)) then
      begin
        AsignarSQL(zReporteFallas,'mto_reporte_falla',pUpdate);
        FiltrarDataSet(zReporteFallas,'IdInsumo,IdMantenimientoFalla',[zMaterial.FieldByName('IdInsumo').AsString, zFallas.FieldByName('IdMantenimientoFalla').AsString]);
        zReporteFallas.Open;

        ReporteMtoFalla( zReporteFallas,  frmRegistroMantenimiento, ReporteFallas.OnGetValue, progreso);
      end;

    end;

end;

procedure TfrmRegistroMantenimiento.cxCancelarDetalleClick(Sender: TObject);
begin
  PanelDown.Visible := False;
  if cxPageDet.ActivePageIndex = 0 then
  begin
     cxSplitter4.Visible:= False;
     PanelDown6.Visible:= False;
     cxSplitter2.Visible:= False;
     PanelDown1.Visible:= False;
     cxSplitter3.Visible:= False;
     PanelDown2.Visible:= False;
     cxSplitter5.Visible:= False;
     PanelDownF1.Visible:= False;
    if cxPageDetalle.ActivePageIndex = 0 then
    begin
       cxLeyenda2.Caption:=titulo2 ;
       zMtoDetalle.Cancel

    end;

    if cxPageDetalle.ActivePageIndex = 1 then
    begin
       cxLeyenda2.Caption:=titulo2 ;
       zAmperaje.Cancel
    end;

    if cxPageDetalle.ActivePageIndex = 2 then
    begin
       cxLeyenda2.Caption:=titulo2 ;
       zVoltaje.Cancel
    end;

  end;

  if cxPageDet.ActivePageIndex = 1 then
  begin
    if cxPageDetalle2.ActivePageIndex = 0 then
    begin
       cxLeyenda2.Caption:=titulo2 ;
       zFallas.Cancel
    end;

  end;

    cxNuevoDetalle.Enabled := true;
    cxEditaDetalle.Enabled := true;
    PanelDown.Visible := False;
    cxGridMto.Enabled:=True;
    PermisosBotones(frmRegistroMantenimiento,btnPermisos);
end;

procedure TfrmRegistroMantenimiento.cxEditaDetalleClick(Sender: TObject);
begin
  PanelDown.Visible := True;
  if cxPageDet.ActivePageIndex = 0 then
  begin
    if cxPageDetalle.ActivePageIndex = 0 then
    begin
       cxLeyenda2.Caption:=titulo2 +'[Editando]';
       cxSplitter4.Visible:= True;
       PanelDown6.Visible:=True;
       AsignarSQL(zInstrumentos,'alm_insumo_mto', pUpdate);
       FiltrarDataSet(zInstrumentos,'tipo',['Instrumentos']);
       zInstrumentos.Open;
       zMtoDetalle.Edit;
    end;

    if cxPageDetalle.ActivePageIndex = 1 then
    begin
       cxLeyenda2.Caption:=titulo2 +'[Editando]';
       cxSplitter2.Visible:= True;
       PanelDown1.Visible:=True;
       zAmperaje.Edit
    end;

    if cxPageDetalle.ActivePageIndex = 2 then
    begin
       cxLeyenda2.Caption:=titulo2 +'[Editando]';
       cxSplitter3.Visible:= True;
       PanelDown2.Visible:=True;
       zVoltaje.Edit
    end;


  end;

  if cxPageDet.ActivePageIndex = 1 then
  begin
    if cxPageDetalle2.ActivePageIndex = 0 then
    begin
      cxLeyenda2.Caption:=titulo2 +'[Editando]';
       cxSplitter5.Visible:= True;
       PanelDownF1.Visible:=True;
       zFallas.Edit;
    end;

  end;

    cxNuevoDetalle.Enabled := False;
    cxEditaDetalle.Enabled := False;
    PanelDown.Visible :=True;
    cxGridMto.Enabled:=False;
end;

procedure TfrmRegistroMantenimiento.cxEliminarDetalleClick(Sender: TObject);
begin
 if MessageDlg('Desea eliminar registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if cxPageDet.ActivePageIndex = 0 then
      begin
        if cxPageDetalle.ActivePageIndex = 0 then
        begin
           zMtoDetalle.Delete;
           zMtoDetalle.ApplyUpdates();
        end;

        if cxPageDetalle.ActivePageIndex = 1 then
        begin
           zAmperaje.Delete;
           zAmperaje.ApplyUpdates();
        end;

        if cxPageDetalle.ActivePageIndex = 2 then
        begin
           zVoltaje.Delete;
           zVoltaje.ApplyUpdates();
        end;


      end;

      if cxPageDet.ActivePageIndex = 1 then
      begin
        if cxPageDetalle2.ActivePageIndex = 0 then
        begin
           zFallas.Delete;
           zFallas.ApplyUpdates();
        end;

      end;
    end;
end;

procedure TfrmRegistroMantenimiento.cxGuardarDetalleClick(Sender: TObject);
begin
  if cxPageDet.ActivePageIndex = 0 then
  begin
    if cxPageDetalle.ActivePageIndex = 0 then
    begin
       zMtoDetalle.Post;
       cxLeyenda2.Caption:=titulo2 ;
       cxSplitter4.Visible:= False;
       PanelDown6.Visible:= False

    end;

    if cxPageDetalle.ActivePageIndex = 1 then
    begin
       zAmperaje.Post;
       cxLeyenda2.Caption:=titulo2 ;
       cxSplitter2.Visible:= False;
       PanelDown1.Visible:= False;
       zAmperaje.Refresh;

    end;

    if cxPageDetalle.ActivePageIndex = 2 then
    begin
       zVoltaje.Post;
       cxLeyenda2.Caption:=titulo2 ;
       cxSplitter3.Visible:= False;
       PanelDown2.Visible:= False;
       zVoltaje.Refresh
    end;
  end;

  if cxPageDet.ActivePageIndex = 1 then
  begin
    if cxPageDetalle2.ActivePageIndex = 0 then
    begin
       zFallas.Post;
       cxLeyenda2.Caption:=titulo2 ;
       cxSplitter5.Visible:= False;
       PanelDownF1.Visible:= False;
    end;
  end;

    cxNuevoDetalle.Enabled := true;
    cxEditaDetalle.Enabled := true;
    PanelDown.Visible := False;
    cxGridMto.Enabled:=True;
    PermisosBotones(frmRegistroMantenimiento,btnPermisos);
end;

procedure TfrmRegistroMantenimiento.cxNuevoDetalleClick(Sender: TObject);
begin
    PanelDown.Visible := True;
  if cxPageDet.ActivePageIndex = 0 then
  begin
    if cxPageDetalle.ActivePageIndex = 0 then
    begin
       cxLeyenda2.Caption:=titulo2 +'[Agregando]';
       cxSplitter4.Visible:= True;
       PanelDown6.Visible:=True;
      AsignarSQL(zInstrumentos,'alm_insumo_mto', pUpdate);
      FiltrarDataSet(zInstrumentos,'tipo',['Instrumentos']);
      zInstrumentos.Open;
      zMtoDetalle.Append;
      zMtoDetalle.FieldByName('IdInsumo').AsInteger := zMaterial.FieldByName('IdInsumo').AsInteger;
      zMtoDetalle.FieldByName('Codigo').AsString :=  autoFolio(zMtoDetalle,'mto_mantenimiento_calibracion');
      zMtoDetalle.FieldByName('Fecha').AsDateTime := now;
      zMtoDetalle.FieldByName('Usuario').AsString := global_usuario;

      edtFechaCalibra.SetFocus
    end;

    if cxPageDetalle.ActivePageIndex = 1 then
    begin
       connection.qryUBusca.Active:=False;
       connection.qryUBusca.SQL.Text:='SELECT * FROM mto_prueba_amperaje WHERE IdMantenimiento = :idMtto';
       connection.qryUBusca.ParamByName('idMtto').AsString:= zMtoDetalle.FieldByName('IdMantenimientoDetalle').AsString;
       connection.qryUBusca.Open;
       cxLeyenda2.Caption:=titulo2 +'[Agregando]';
       cxSplitter2.Visible:= True;
       PanelDown1.Visible:=True;

      if zAmperaje.RecordCount > 0 then
      begin
        zAmperaje.Append;
        zAmperaje.FieldByName('IdMantenimiento').AsInteger := zMtoDetalle.FieldByName('IdMantenimientoDetalle').AsInteger;
        zAmperaje.FieldByName('ElectrodoDiametro').AsString := connection.qryUBusca.FieldByName('ElectrodoDiametro').AsString;
        zAmperaje.FieldByName('Tipo').AsInteger := connection.qryUBusca.FieldByName('Tipo').AsInteger;
        zAmperaje.FieldByName('LM_AmpCD').AsFloat := connection.qryUBusca.FieldByName('LM_AmpCD').AsFloat;
        zAmperaje.FieldByName('LIM_1').AsFloat := connection.qryUBusca.FieldByName('LIM_1').AsFloat;
        zAmperaje.FieldByName('Variacion_AmpCD').AsFloat := connection.qryUBusca.FieldByName('Variacion_AmpCD').AsFloat;
        zAmperaje.FieldByName('PPS_Amp').AsFloat := connection.qryUBusca.FieldByName('PPS_Amp').AsFloat;
      end
      else
      begin
        zAmperaje.Append;
        zAmperaje.FieldByName('IdMantenimiento').AsInteger := zMtoDetalle.FieldByName('IdMantenimientoDetalle').AsInteger;
      end;
      edtElectrodo.SetFocus;
    end;

    if cxPageDetalle.ActivePageIndex = 2 then
    begin

       connection.qryUBusca.Active:=False;
       connection.qryUBusca.SQL.Text:='SELECT * FROM mto_prueba_voltaje WHERE IdMantenimiento = :idMtto';
       connection.qryUBusca.ParamByName('idMtto').AsString:= zMtoDetalle.FieldByName('IdMantenimientoDetalle').AsString;
       connection.qryUBusca.Open;
       cxLeyenda2.Caption:=titulo2 +'[Agregando]';
       cxSplitter3.Visible:= True;
       PanelDown2.Visible:=True;

      if zVoltaje.RecordCount > 0 then
      begin
        zVoltaje.Append;
        zVoltaje.FieldByName('IdMantenimiento').AsInteger := zMtoDetalle.FieldByName('IdMantenimientoDetalle').AsInteger;
        zVoltaje.FieldByName('ElectrodoDiametro').AsString := connection.qryUBusca.FieldByName('ElectrodoDiametro').AsString;
        zVoltaje.FieldByName('ElectrodoTipo').AsInteger := connection.qryUBusca.FieldByName('ElectrodoTipo').AsInteger;
        zVoltaje.FieldByName('LM_VoltCD').AsFloat := connection.qryUBusca.FieldByName('LM_VoltCD').AsFloat;
        zVoltaje.FieldByName('LIM_VoltCD').AsFloat := connection.qryUBusca.FieldByName('LIM_VoltCD').AsFloat;
        zVoltaje.FieldByName('Variacion_VoltCD').AsFloat := connection.qryUBusca.FieldByName('Variacion_VoltCD').AsFloat;
      end
      else
      begin
        zVoltaje.Append;
        zVoltaje.FieldByName('IdMantenimiento').AsInteger := zMtoDetalle.FieldByName('IdMantenimientoDetalle').AsInteger;
      end;
      edtElectrodoVolt.SetFocus;

    end;
  end;

  if cxPageDet.ActivePageIndex = 1 then
  begin
    if cxPageDetalle2.ActivePageIndex = 0 then
    begin
       cxLeyenda2.Caption:=titulo2 +'[Agregando]';
       cxSplitter5.Visible:= True;
       PanelDownF1.Visible:=True;
        zFallas.Append;
        zFallas.FieldByName('IdInsumo').AsInteger := zMaterial.FieldByName('IdInsumo').AsInteger;
        zFallas.FieldByName('Codigo').AsString :=  autoFolio(zFallas,'mto_mantenimiento_Falla');
        zFallas.FieldByName('Fecha').AsDateTime := now;
        zFallas.FieldByName('Usuario').AsString := global_usuario;
        zFallas.FieldByName('ServicioRequerido').AsString := 'MANTENIMIENTO CORRECTIVO';
        zFallas.FieldByName('MotivoFalla').AsString := 'MALA OPERACIÓN';
        edtUbicacion.SetFocus

    end;
  end;


    cxNuevoDetalle.Enabled := False;
    cxEditaDetalle.Enabled := False;
    PanelDown.Visible :=True;
    cxGridMto.Enabled:=False;
end;

procedure TfrmRegistroMantenimiento.cxPageDetalleChange(Sender: TObject);
begin
  if cxPageDetalle.ActivePageIndex = 0 then
  begin
    AsignarSQL(zMtoDetalle, 'mto_mantenimiento_calibracion', pUpDate);
    FiltrarDataSet(zMtoDetalle,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString])    ;
    zMtoDetalle.Open;
  end;
end;

procedure TfrmRegistroMantenimiento.cxTabFallasShow(Sender: TObject);
begin
  AsignarSQL(zFallas, 'mto_mantenimiento_falla', pUpDate);
   FiltrarDataSet(zFallas,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString]);
   zFallas.Open;
end;

procedure TfrmRegistroMantenimiento.cxTabsheet1Show(Sender: TObject);
begin
    AsignarSQL(zAmperaje, 'mto_prueba_amperaje', pUpDate);
    FiltrarDataSet(zAmperaje,'IdMantenimiento',[zMtoDetalle.FieldByName('IdMantenimientoDetalle').AsString]);
    zAmperaje.Open;

end;

procedure TfrmRegistroMantenimiento.cxTabSheet3Show(Sender: TObject);
begin
  AsignarSQL(zVoltaje, 'mto_prueba_voltaje', pUpDate);
  FiltrarDataSet(zVoltaje,'IdMantenimiento',[zMtoDetalle.FieldByName('IdMantenimientoDetalle').AsString]);
  zVoltaje.Open;
end;

procedure TfrmRegistroMantenimiento.cxView_mantenimientoCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxView_mantenimiento.OptionsView.CellAutoHeight := not cxView_mantenimiento.OptionsView.CellAutoHeight;
end;

procedure TfrmRegistroMantenimiento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  guardar_leer_grid(cxView_mantenimiento,frmRegistroMantenimiento,1);
  guardar_leer_grid(cxView_Mto,frmRegistroMantenimiento,1);
  guardar_leer_grid(cxAmperajeView,frmRegistroMantenimiento,1);
  guardar_leer_grid(cxVoltajeView,frmRegistroMantenimiento,1);
  guardar_leer_grid(cxGridDBTableView1,frmRegistroMantenimiento,1);
  action := caFree;
end;

procedure TfrmRegistroMantenimiento.FormShow(Sender: TObject);
begin
    btnPermisos := global_btnPermisos;
   // PanelDetalle.Visible := False;
    Panel2.Visible := False;
    cxSplitter1.Visible := False;
    titulo:='Registro de Mantenimientos';
    titulo2:='Detalles';
    cxLeyenda.Caption:=titulo;
    cxLeyenda2.Caption:=titulo2;
    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;

    IsOpen := False;
    AsignarSQL(zMaterial,'alm_insumo_mto', pUpdate);
    zMaterial.Open;

    AsignarSQL(zMtoDetalle, 'mto_mantenimiento_calibracion', pUpDate);
    FiltrarDataSet(zMtoDetalle,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString]);
    zMtoDetalle.Open;
    IsOpen := True;

    cxView_mantenimiento.DataController.Groups.FullExpand;
    PermisosBotones(frmRegistroMantenimiento,btnPermisos);
    guardar_leer_grid(cxView_mantenimiento,frmRegistroMantenimiento,0);
    guardar_leer_grid(cxView_Mto,frmRegistroMantenimiento,0);
    guardar_leer_grid(cxAmperajeView,frmRegistroMantenimiento,0);
    guardar_leer_grid(cxVoltajeView,frmRegistroMantenimiento,0);
    guardar_leer_grid(cxGridDBTableView1,frmRegistroMantenimiento,0);
end;

procedure TfrmRegistroMantenimiento.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  ;
end;

procedure TfrmRegistroMantenimiento.ReporteFallasGetValue(const VarName: string;
  var Value: Variant);
begin
  ;
end;

procedure TfrmRegistroMantenimiento.ReporteMtoGetValue(const VarName: string;
  var Value: Variant);
begin
  ;
end;

procedure TfrmRegistroMantenimiento.zMaterialAfterScroll(DataSet: TDataSet);
begin
  if IsOpen then
  begin
    if PanelDetalle.Visible = true then
    begin
      if cxPageDet.ActivePageIndex =0 then
      begin
        cxPageDetalle.ActivePageIndex := 0;
        AsignarSQL(zMtoDetalle, 'mto_mantenimiento_calibracion', pUpDate);
        FiltrarDataSet(zMtoDetalle,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString]);
        zMtoDetalle.Open;
      end;

      if cxPageDet.ActivePageIndex = 1 then
      begin
         AsignarSQL(zFallas, 'mto_mantenimiento_falla', pUpDate);
         FiltrarDataSet(zFallas,'IdInsumo',[zMaterial.FieldByName('IdInsumo').AsString]);
         zFallas.Open;
      end;

    end;
    cxLeyenda3.Caption:='Seleccionado: '+zMaterial.FieldByName('Codigo').AsString;
  end;
end;

end.
