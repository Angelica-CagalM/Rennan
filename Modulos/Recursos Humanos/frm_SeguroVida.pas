unit frm_SeguroVida;

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
  dxSkinXmas2008Blue, Vcl.Menus, cxProgressBar, Vcl.StdCtrls, cxButtons,
  cxLabel, frm_barraH1, Vcl.ExtCtrls, frm_connection, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxImageComboBox, cxDBLookupComboBox,
  dxBarBuiltInMenu, MemDS, DBAccess, Uni, cxPC, frm_barraH2, cxSplitter,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, global, UnitGenerales, unitexcepciones,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxCalendar, dxLayoutControl,
  frxClass, frxDBSet, Frm_VerPDF;

type
  TFrmSeguroVida = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    PanelPrincipal: TPanel;
    PanelTipo: TPanel;
    Grid_Personal: TcxGrid;
    BView_Personal: TcxGridDBTableView;
    BView_PersonalColumn2: TcxGridDBColumn;
    Grid_PersonalLevel1: TcxGridLevel;
    cxSplitTipo: TcxSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxSplitter1: TcxSplitter;
    grid_Seguro: TcxGrid;
    cxView_Seguro: TcxGridDBTableView;
    grid_SeguroLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxPageDetalle: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGridCuestionario: TcxGrid;
    cxGridViewCuestionario: TcxGridDBTableView;
    colPregunta: TcxGridDBColumn;
    colPuntos: TcxGridDBColumn;
    cxGridCuestionarioLevel1: TcxGridLevel;
    zPersonal: TUniQuery;
    dsPersonal: TDataSource;
    dxLayoutControl1: TdxLayoutControl;
    dFecha: TcxDBDateEdit;
    edtCodigo: TcxDBTextEdit;
    lcbDepartamento: TcxDBLookupComboBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxView_SeguroColumn1: TcxGridDBColumn;
    cxView_SeguroColumn2: TcxGridDBColumn;
    cxView_SeguroColumn3: TcxGridDBColumn;
    cxView_SeguroColumn4: TcxGridDBColumn;
    zSeguro: TUniQuery;
    dsSeguro: TDataSource;
    dsArea: TDataSource;
    zArea: TUniQuery;
    zCuestionario: TUniQuery;
    dsCuestionario: TDataSource;
    zPreguntas: TUniQuery;
    dsPreguntas: TDataSource;
    zReporteSeguro: TUniQuery;
    frxReporte: TfrxReport;
    frxDBSeguroVida: TfrxDBDataset;
    btnPrintFormato: TcxButton;
    BView_PersonalColumn1: TcxGridDBColumn;
    cxTabDocumento: TcxTabSheet;
    cxGridDocumentos: TcxGrid;
    cxViewDocumentos: TcxGridDBTableView;
    ColDoc: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    zDocumentos: TUniQuery;
    dsDocumentos: TDataSource;
    doctoVP: TUniQuery;
    zContrato: TUniQuery;
    frxDBContrato: TfrxDBDataset;
    btnCarta: TcxButton;
    btnPrinter: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure zPersonalAfterScroll(DataSet: TDataSet);
    procedure btnEditClick(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure frxReporteGetValue(const VarName: string; var Value: Variant);
    procedure zSeguroAfterScroll(DataSet: TDataSet);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnPrintFormatoClick(Sender: TObject);
    procedure cxTabDocumentoShow(Sender: TObject);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure cxViewDocumentosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnCartaClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSeguroVida: TFrmSeguroVida;
  btnPermisos:String;
  titulo         : string;
  titulo2        : string;
  IsOpen       :Boolean;

implementation
   uses UnitRH;
{$R *.dfm}

procedure TFrmSeguroVida.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmSeguroVida.EnterControl(Sender: TObject);
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

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TFrmSeguroVida.SalidaControl(Sender: TObject);
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
end;


procedure TFrmSeguroVida.btnAddClick(Sender: TObject);
begin
   frmBarraH11.btnAddClick(Sender);
   cxLeyenda.Caption:=titulo + '[Añadiendo]';
   panel2.Visible:=True;
   cxSplitter1.Visible := False;
   grid_Seguro.Enabled:=False;
   Grid_Personal.Enabled := False;

   edtCodigo.Properties.ReadOnly := True;
   cxSplitterOpciones.Visible := False;
   PanelDetalle.Visible       := False;

   zSeguro.Append;
   zSeguro.FieldByName('Fecha').AsDatetime := date;
   zSeguro.FieldByName('Codigo').AsString := autoFolio(zSeguro, 'master_personal_seguro');
   zSeguro.FieldByName('IdPersonal').AsInteger := zPersonal.FieldByName('IdPersonal').AsInteger;
   lcbDepartamento.SetFocus;
end;

procedure TFrmSeguroVida.btnCancelClick(Sender: TObject);
begin
    frmBarraH11.btnActive;
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    cxSplitter1.Visible := False;
    frmBarraH11.Visible:=True;
    grid_Seguro.Enabled:=True;
    Grid_Personal.Enabled := True;
    zSeguro.Cancel;

    PermisosBotones(frmSeguroVida,btnPermisos);
end;

procedure TFrmSeguroVida.btnCartaClick(Sender: TObject);
begin
  AsignarSQL(zcontrato,'reporte_contrato',pUpdate);
  FiltrarDataSet(zContrato,'IdPersonal',[zPersonal.FieldByName('IdPersonal').AsString]);
  zContrato.Open;
  frxReporte.LoadFromFile(global_files+global_miReporte+'_RH_CartaCompromiso.fr3');
end;

procedure TFrmSeguroVida.btnDetalleClick(Sender: TObject);
begin
   cxPageDetalle.ActivePageIndex := 0;
   PanelDown.Visible :=False;

   if PanelDetalle.Visible then
   begin
       cxSplitterOpciones.Visible := False;
       PanelDetalle.Visible       := False;
   end
   else
   begin
     AsignarSQL(zCuestionario,'master_personal_seguro_detalle',pUpdate);
     FiltrarDataset(zCuestionario,'IdSeguro',[zSeguro.FieldByName('IdSeguro').AsInteger]);
     zCuestionario.Open;
     if zCuestionario.RecordCount > 0 then
        cxNuevoDetalle.Caption := 'Cambiar Cuestionario'
      else
        cxNuevoDetalle.Caption := 'Iniciar Cuestionario';

       PanelDetalle.Visible       := True;
       cxSplitterOpciones.Visible := True;
   end;
end;

procedure TFrmSeguroVida.btnEditClick(Sender: TObject);
begin
    frmBarraH11.btnEditClick(Sender);
    cxLeyenda.Caption:=titulo+'[Editando]';
    Panel2.Visible:=True;
    cxSplitter1.Visible := False;
    grid_Seguro.Enabled:=False;
    zSeguro.Edit;
    edtCodigo.SetFocus;
    edtCodigo.Properties.ReadOnly := False;
    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;
end;

procedure TFrmSeguroVida.btnPostClick(Sender: TObject);
var SavePlace     : TBookmark;
begin
  try
    zSeguro.Post;
    cxLeyenda.Caption:=titulo;
    Panel2.Visible:=False;
    grid_Seguro.Enabled:=True;
    Grid_Personal.Enabled := True;

    SavePlace := cxView_Seguro.DataController.DataSource.DataSet.GetBookmark;
    zSeguro.Refresh;
    try
       cxView_Seguro.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
    except
       cxView_Seguro.DataController.DataSet.FreeBookmark(SavePlace);
    end;

    btnCancelClick(Sender);
    PermisosBotones(FrmSeguroVida,btnPermisos);
  except
  on e:Exception do
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Seguro de Vida', 'Al guardar registro.', 0);

  end;
end;

procedure TFrmSeguroVida.btnPrinterClick(Sender: TObject);
begin
  BarraMostrar(True,progreso, LabelProceso);
      try
        AsignarSQL(zCuestionario,'master_personal_seguro_detalle',pUpdate);
        FiltrarDataset(zCuestionario,'IdSeguro',[zSeguro.FieldByName('IdSeguro').AsInteger]);
        zCuestionario.Open;
         if (zCuestionario.Active) and (zCuestionario.RecordCount > 0) then
         begin
            zReporteSeguro.Active:= False;
            AsignarSQL(zReporteSeguro,'master_personal_seguro_reporte',pUpdate);
            FiltrarDataSet(zReporteSeguro, 'IdSeguro,IdPersonal',[zSeguro.FieldByName('IdSeguro').AsInteger,zPersonal.FieldByName('IdPersonal').AsInteger]);
            zReporteSeguro.Open;

            ReporteSeguroVida( zReporteSeguro, frmSeguroVida, frxReporte.OnGetValue, progreso)
         end
         else
            showmessage('No hay datos para Imprimir');
      except
          on e: exception do
          begin
             UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Evaluación de proveedor', 'Al imprimir', 0);
          end;
      end;
  BarraMostrar(False,progreso, LabelProceso);
end;

procedure TFrmSeguroVida.btnPrintFormatoClick(Sender: TObject);
begin
  BarraMostrar(True,progreso, LabelProceso);
  AsignarSQL(zcontrato,'reporte_contrato',pUpdate);
  FiltrarDataSet(zContrato,'IdPersonal',[zPersonal.FieldByName('IdPersonal').AsString]);
  zContrato.Open;
  if zPersonal.FieldByName('Departamento').AsString = 'ABORDO' then
  begin
    frxReporte.LoadFromFile(global_files+global_miReporte+'_RH_ContratoCostaFuera.fr3');
  end
  else
  begin
    frxReporte.LoadFromFile(global_files+global_miReporte+'_RH_Contrato_Adm.fr3');
  end;
  FRXrEPORTE.ShowReport();
  BarraMostrar(False,progreso, LabelProceso);
end;

procedure TFrmSeguroVida.btnRefreshClick(Sender: TObject);
begin
   zSeguro.Refresh;
end;

procedure TFrmSeguroVida.cxGuardarDetalleClick(Sender: TObject);
begin
    cxNuevoDetalle.Enabled := True;

  cxLeyenda2.Caption:=titulo2;

  PanelDown.Visible := False;

  if zCuestionario.State in [dsEdit, dsInsert] then
    zCuestionario.Post;

  cxGridViewCuestionario.OptionsData.Editing := False;

end;

procedure TFrmSeguroVida.cxNuevoDetalleClick(Sender: TObject);
begin
    PanelDown.Visible := True;
    cxNuevoDetalle.Enabled := False;

    cxLeyenda2.Caption:=titulo2 +'[Editando]';
    If zCuestionario.RecordCount = 0 then
    begin
      cxLeyenda2.Caption:=titulo2 +'[Agregando]';
      zPreguntas.First;
      while not zPreguntas.Eof do
      begin
        zCuestionario.Append;
        zCuestionario.FieldByName('IdSeguro').AsInteger:= zSeguro.FieldByName('IdSeguro').AsInteger;
        zCuestionario.FieldByName('IdPregunta').AsInteger:= zPreguntas.FieldByName('IdPregunta').AsInteger;
        zCuestionario.Post;
        zPreguntas.Next;
      end;
    end;
    zSeguro.First;
    cxGridViewCuestionario.OptionsData.Editing := True;
end;

procedure TFrmSeguroVida.cxTabDocumentoShow(Sender: TObject);
begin
  cxNuevoDetalle.Visible := False;
  AsignarSQL(zDocumentos,'rhu_docxpersonal_contratacion',pUpdate);
  FiltrarDataSet(zDocumentos,'IdPersonal',[zPersonal.FieldByName('IdPersonal').AsInteger]);
  zDocumentos.Open;
end;

procedure TFrmSeguroVida.cxTabSheet2Show(Sender: TObject);
begin
  cxNuevoDetalle.Visible := True;
end;

procedure TFrmSeguroVida.cxViewDocumentosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if zDocumentos.RecordCount > 0 then
  begin
    AsignarSQL(doctoVP,'docto_empleadoVP',pUpdate);
    FiltrarDataSet(doctoVP,'IdDocto',[zDocumentos.FieldByName('IdDocxpersonal').AsInteger]);
    doctoVP.Open;

    if not doctoVP.FieldByName('DocumentoDigital').IsNull then
    begin
      global_Temp := 'docto_empleado_'+zPersonal.FieldByName('CodigoPersonal').AsString+'.pdf';
      TBlobField(doctoVP.FieldByName('DocumentoDigital')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp );
      Application.CreateForm(TFrmVerPDF, FrmVerPDF);
      FrmVerPDF.ShowModal;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;
end;

procedure TFrmSeguroVida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFrmSeguroVida.FormShow(Sender: TObject);
begin
  try
    btnPermisos := global_btnPermisos;
    PanelDetalle.Visible := False;
    Panel2.Visible := False;
    cxSplitter1.Visible := False;
    titulo:='Seguros de Vida';
    titulo2:='Detalles';
    cxLeyenda.Caption:=titulo;
    cxLeyenda2.Caption:=titulo2;
    frmBarraH21.btnCancel.Click ;
    IsOpen := False;

    AsignarSQL(zArea,'master_departamento',pUpdate);
    zArea.Open;

    AsignarSQL(zPreguntas,'master_preguntas_seguro',pUpdate);
    zPreguntas.Open;

    AsignarSQL(zPersonal,'personal_grid',pUpdate);
    FiltrarDataSet(zPersonal,'Empresa',[-1]);
    zPersonal.Open;

    AsignarSQL(zSeguro,'master_personal_seguro',pUpdate);
    FiltrarDataSet(zSeguro,'IdPersonal',[zPersonal.FieldByName('IdPersonal').AsInteger]);
    zSeguro.Open;

    IsOpen := True;

  except
  on e:Exception do
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Seguro de Vida', 'Al iniciar formulario', 0);
  end;
end;

procedure TFrmSeguroVida.frxReporteGetValue(const VarName: string;
  var Value: Variant);
begin
  ;
end;

procedure TFrmSeguroVida.zPersonalAfterScroll(DataSet: TDataSet);
begin
  if IsOpen then
  begin
    AsignarSQL(zSeguro,'master_personal_seguro',pUpdate);
    FiltrarDataSet(zSeguro,'IdPersonal',[zPersonal.FieldByName('IdPersonal').AsInteger]);
    zSeguro.Open;

    if cxPageDetalle.ActivePageIndex = 1 then
    begin
      AsignarSQL(zDocumentos,'rhu_docxpersonal_contratacion',pUpdate);
      FiltrarDataSet(zDocumentos,'IdPersonal',[zPersonal.FieldByName('IdPersonal').AsInteger]);
      zDocumentos.Open;
    end;

  end;
end;

procedure TFrmSeguroVida.zSeguroAfterScroll(DataSet: TDataSet);
begin
  if PanelDetalle.Visible and IsOpen then
   begin
     AsignarSQL(zCuestionario,'master_personal_seguro_detalle',pUpdate);
     FiltrarDataset(zCuestionario,'IdSeguro',[zSeguro.FieldByName('IdSeguro').AsInteger]);
     zCuestionario.Open;
     if zCuestionario.RecordCount > 0 then
        cxNuevoDetalle.Caption := 'Cambiar Cuestionario'
      else
        cxNuevoDetalle.Caption := 'Iniciar Cuestionario';

       PanelDetalle.Visible       := True;
       cxSplitterOpciones.Visible := True;
   end;
end;

end.
