unit frm_EvaluaCompetencias;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, frm_barraH1,
  Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, dxBarBuiltInMenu, cxPC,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, frm_barraH2, cxSplitter,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, MemDS, DBAccess,
  Uni, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, UnitGenerales, global, frm_connection, unitexcepciones,
  cxDBEdit, cxCalendar, cxImageComboBox, cxSpinEdit, dxmdaset, cxProgressBar,
  UnitRH, frxClass, System.ImageList, Vcl.ImgList, frxDBSet, dxToggleSwitch,
  dxLayoutControlAdapters, cxCheckBox, dxDBToggleSwitch;

type
  Tfrm_EvaluaCompetencias = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    cxConfigura: TcxButton;
    PanelPrincipal: TPanel;
    cxSplitTipo: TcxSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxSplitter1: TcxSplitter;
    grid_evaluacion: TcxGrid;
    cxView_Evaluacion: TcxGridDBTableView;
    cxView_EvaluacionColumn1: TcxGridDBColumn;
    cxView_EvaluacionColumn3: TcxGridDBColumn;
    cxView_EvaluacionColumn2: TcxGridDBColumn;
    cxView_EvaluacionColumn8: TcxGridDBColumn;
    grid_evaluacionLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    zProveedor: TUniQuery;
    dsProveedor: TDataSource;
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
    zEmpleados: TUniQuery;
    dsEmpleados: TDataSource;
    dFechaEvalua: TcxDBDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    edtCodigo: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxGridEvaluar: TcxGrid;
    cxGridViewEvalua: TcxGridDBTableView;
    colPregunta: TcxGridDBColumn;
    colPuntos: TcxGridDBColumn;
    cxGridEvaluarLevel1: TcxGridLevel;
    dsPreguntas: TDataSource;
    zPreguntas: TUniQuery;
    mPreguntas: TdxMemData;
    zPuntos: TUniQuery;
    dsPuntos: TDataSource;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    frxReporte: TfrxReport;
    zReporteEvalua: TUniQuery;
    cxView_EvaluacionColumn4: TcxGridDBColumn;
    imgStars: TcxImageList;
    lcbDepartamento: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    zArea: TUniQuery;
    dsArea: TDataSource;
    cxView_EvaluacionColumn5: TcxGridDBColumn;
    frxEvaluaCompetencia: TfrxDBDataset;
    cxTabSheet3: TcxTabSheet;
    cxGridDocumentos: TcxGrid;
    cxViewDocumentos: TcxGridDBTableView;
    ColDoc: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxSplit1: TcxSplitter;
    PanelDown1: TPanel;
    dxLayoutControl5: TdxLayoutControl;
    cxDocumento: TcxDBLookupComboBox;
    cxDoctoExpedicion: TcxDBDateEdit;
    cxAplicacion: TcxDBDateEdit;
    cxDoctoVencimiento: TcxDBDateEdit;
    cxAgregaDocumento: TcxButton;
    cxDBTextEdit1: TcxDBTextEdit;
    cxActivoDocumento: TdxDBToggleSwitch;
    cxCargarDocumento: TcxButton;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutAutoCreatedGroup19: TdxLayoutAutoCreatedGroup;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutAutoCreatedGroup20: TdxLayoutAutoCreatedGroup;
    dxLayoutItem70: TdxLayoutItem;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutAutoCreatedGroup35: TdxLayoutAutoCreatedGroup;
    dxLayoutItem71: TdxLayoutItem;
    zDoctos: TUniQuery;
    ds_doctos: TDataSource;
    ds_list_doc: TDataSource;
    zListDoc: TUniQuery;
    dlgPDF: TFileOpenDialog;
    dlgSavePDF: TSaveDialog;
    doctoVP: TUniQuery;
    dsDoctoVP: TDataSource;
    zEvaluaDetalle: TUniQuery;
    ds_EvaluaDetalle: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure BView_filtroDblClick(Sender: TObject);
    procedure BView_filtroCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure zProveedorAfterScroll(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxConfiguraClick(Sender: TObject);
    procedure zEmpleadosAfterScroll(DataSet: TDataSet);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure cxPageDetalleChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure frxReporteGetValue(const VarName: string; var Value: Variant);
    procedure cxCargarDocumentoClick(Sender: TObject);
    procedure cxViewDocumentosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    btnPermisos:String;
    titulo         : string;
    titulo2        : string;
    inactiva, IsOpen       :Boolean;
    { Public declarations }
  end;

var
  frmEvaluaCompetencias: Tfrm_EvaluaCompetencias;

implementation

{$R *.dfm}

uses frm_VerPDF;

procedure Tfrm_EvaluaCompetencias.btnAddClick(Sender: TObject);
begin
  {No se utiliza este botón en este formulario}
  ;
end;

procedure Tfrm_EvaluaCompetencias.btnCancelClick(Sender: TObject);
begin
    {Este botón no se ocupa en este formulario}
    ;
end;

procedure Tfrm_EvaluaCompetencias.btnDeleteClick(Sender: TObject);
begin
  {Este botón no se utiliza en este formulario}
  ;
end;

procedure Tfrm_EvaluaCompetencias.btnEditClick(Sender: TObject);
begin
    {Este botón no se utiliza en este formulario}
    ;
end;

procedure Tfrm_EvaluaCompetencias.btnPostClick(Sender: TObject);
var SavePlace     : TBookmark;
begin
    {Este botón no se ocupa en este formulario}
    ;
end;

procedure Tfrm_EvaluaCompetencias.btnPrinterClick(Sender: TObject);
begin
  if cxPageDetalle.ActivePageIndex = 0 then
  begin
    if zEvaluaDetalle.RecordCount <> 0 then
    begin
      zReporteEvalua.Active:=False;
      AsignarSQL(zReporteEvalua,'master_check_reporte',pUpdate);
      FiltrarDataSet(zReporteEvalua,'IdPersonal',[zEmpleados.FieldByName('IdPersonal').AsInteger]);
      zReporteEvalua.Open;

      frxReporte.LoadFromFile(global_files+global_miReporte+'_RH_Lista_Verificacion.fr3');
      frxReporte.ShowReport();
    end
    else
    ;

  end;
end;

procedure Tfrm_EvaluaCompetencias.BView_filtroCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  ;
end;

procedure Tfrm_EvaluaCompetencias.BView_filtroDblClick(Sender: TObject);
begin
  ;
end;

procedure Tfrm_EvaluaCompetencias.cxCancelarDetalleClick(Sender: TObject);
begin
   cxNuevoDetalle.Enabled := True;

   cxLeyenda2.Caption:=titulo2;

   zEvaluaDetalle.Cancel;
   PanelDown.Visible := False;

   if zEvaluaDetalle.State in [dsEdit, dsInsert] then
   begin
      cxGridViewEvalua.OptionsData.Editing := False;
       zEvaluaDetalle.CachedUpdates := False;
      zEvaluaDetalle.Post;
   end;
   if doctoVP.State in [dsEdit,dsInsert] then
    doctoVP.Cancel;
end;

procedure Tfrm_EvaluaCompetencias.cxCargarDocumentoClick(Sender: TObject);
var
  BlobStream : TStream;
  FileStream : TFileStream;

  Ext, sArchivo : string;
begin
  try
    dlgPDF.FileName := '';

    if not dlgPDF.Execute() then
      exit;

    sArchivo := dlgPDF.FileName;

    if not FileExists(sArchivo) then
      raise exception.Create('No se encontro el archivo especificado');

    Ext := ExtractFileExt(sArchivo);

    if ( Ext <> '.PDF' ) and ( Ext <> '.pdf' ) then
      raise exception.Create('El archivo no es valido');

    TBlobField(doctoVP.FieldByName('DocumentoDigital')).LoadfromFile(sArchivo);

  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
    end;
  end;

end;

procedure Tfrm_EvaluaCompetencias.cxConfiguraClick(Sender: TObject);
begin
   cxPageDetalle.ActivePageIndex := 0;
   PanelDown.Visible :=False;
   cxCancelarDetalle.OnClick(sender);
   frmBarraH11.btnPrinter.Visible:=False;
   if PanelDetalle.Visible then
   begin
       frmBarraH11.btnPrinter.Visible:=False;
       cxSplitterOpciones.Visible := False;
       PanelDetalle.Visible       := False;
   end
   else
   begin
     zEvaluaDetalle.SQL.Clear;
     zEvaluaDetalle.Active:=False;
     AsignarSQL(zEvaluaDetalle,'master_empleado_checklist_detalle',pUpdate);
     FiltrarDataset(zEvaluaDetalle,'Id,IdPersonal',[-1,zEmpleados.FieldByName('IdPersonal').AsInteger]);
     zEvaluaDetalle.Open;
     if zEvaluaDetalle.RecordCount > 0 then
     begin
        cxNuevoDetalle.Caption := 'Cambiar información';
        frmBarraH11.btnPrinter.Visible:=True;
     end
      else
        cxNuevoDetalle.Caption := 'Verificar documentación';

       PanelDetalle.Visible       := True;
       cxSplitterOpciones.Visible := True;
   end;

end;

procedure Tfrm_EvaluaCompetencias.cxEditaDetalleClick(Sender: TObject);
begin
    PanelDown.Visible := True;
    cxNuevoDetalle.Enabled := False;

    cxLeyenda2.Caption:=titulo2 +'[Editando]';

    cxGridViewEvalua.OptionsData.Editing := True;

end;

procedure Tfrm_EvaluaCompetencias.cxGuardarDetalleClick(Sender: TObject);
begin
  cxNuevoDetalle.Enabled := True;
  cxLeyenda2.Caption:=titulo2;
  PanelDown.Visible := False;
  PanelDown1.Visible:=False;
  if doctoVP.State in [dsEdit,dsInsert] then
  begin
    doctoVP.Post;
    doctoVP.Refresh;
    zDoctos.Refresh;
  end;
  if zEvaluaDetalle.State in [dsEdit, dsInsert] then
    zEvaluaDetalle.Post;
  cxGridViewEvalua.OptionsData.Editing := False;

  zEmpleados.AfterScroll:= nil;
  zEmpleados.Refresh;
  zEmpleados.AfterScroll:= zEmpleadosAfterScroll;
end;

procedure Tfrm_EvaluaCompetencias.cxNuevoDetalleClick(Sender: TObject);
begin
    PanelDown.Visible := True;
    cxNuevoDetalle.Enabled := False;
    cxLeyenda2.Caption:=titulo2 +'[Editando]';
    if cxPageDetalle.ActivePageIndex = 0 then
    begin
      If zEvaluaDetalle.RecordCount = 0 then
      begin
        cxLeyenda2.Caption:=titulo2 +'[Agregando]';
        zPreguntas.First;
        while not zPreguntas.Eof do
        begin
          zEvaluaDetalle.Append;
            zEvaluaDetalle.FieldByName('IdPersonal').AsInteger:= zEmpleados.FieldByName('IdPersonal').AsInteger;
            zEvaluaDetalle.FieldByName('IdCheck').AsInteger:= zPreguntas.FieldByName('IdCheck').AsInteger;
            zEvaluaDetalle.FieldByName('Cumple').AsString:= 'No';
          zEvaluaDetalle.Post;
          zPreguntas.Next;
        end;
      end;
      zEvaluaDetalle.First;
      cxGridViewEvalua.OptionsData.Editing := True;
    end;

    if cxPageDetalle.ActivePageIndex = 1 then
    begin
      doctoVP.Active:=False;
      AsignarSQL(doctoVP,'docto_empleadoVP',pUpdate);
      FiltrarDataSet(doctoVP,'IdDocto',[-9]);
      doctoVP.Open;
      doctoVP.Append;
      PanelDown1.Visible:=True;
      doctoVP.FieldByName('IdPersonal').AsInteger := zEmpleados.FieldByName('IdPersonal').AsInteger;
      doctoVP.FieldByName('Fechaexpedicion').AsDateTime := date;
      doctoVP.FieldByName('Fechavigencia').AsDateTime   := GeneraPeriodoDocto(date,zListDoc.FieldByName('IdDocumento').AsInteger);
      doctoVP.FieldByName('Fechaaplicacion').AsDateTime := date;
      doctoVP.FieldByName('Activo').AsString := 'Si';
      cxSplit1.Visible   := True;
      cxDocumento.SetFocus;
    end;
end;

procedure Tfrm_EvaluaCompetencias.cxPageDetalleChange(Sender: TObject);
begin
  cxCancelarDetalle.OnClick(sender);
  cxNuevoDetalle.Visible:=True;
  frmBarraH11.btnPrinter.Visible:=False;
  if cxPageDetalle.ActivePageIndex = 0 then
  begin
    zEvaluaDetalle.Active:=False;
    AsignarSQL(zEvaluaDetalle,'master_empleado_checklist_detalle',pUpdate);
    FiltrarDataset(zEvaluaDetalle,'Id,IdPersonal',[-1,zEmpleados.FieldByName('IdPersonal').AsInteger]);
    zEvaluaDetalle.Open;
    if zEvaluaDetalle.RecordCount > 0 then
    begin
      cxNuevoDetalle.Caption := 'Cambiar Información';
      frmBarraH11.btnPrinter.Visible:=True;
    end
    else
      cxNuevoDetalle.Caption := 'Verificar documentación';
  end;
  if cxPageDetalle.ActivePageIndex = 1 then
  begin
    cxNuevoDetalle.Caption  := 'Nuevo';
    zDoctos.Active:=False;
    AsignarSQL(zDoctos,'documentos_empleado',pUpdate);
    FiltrarDataset(zDoctos,'IdPersonal',[zEmpleados.FieldByName('IdPersonal').AsInteger]);
    zDoctos.Open;
    zListDoc.Active:=False;
    AsignarSQL(zListDoc,'lista_documentos_check',pUpdate);
    zListDoc.Open;
  end;

end;

procedure Tfrm_EvaluaCompetencias.cxViewDocumentosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if zDoctos.RecordCount > 0 then
  begin
    doctoVP.Active:=False;
    AsignarSQL(doctoVP,'docto_empleadoVP',pUpdate);
    FiltrarDataSet(doctoVP,'IdDocto',[zDoctos.FieldByName('IdDocxpersonal').AsInteger]);
    doctoVP.Open;

    if not doctoVP.FieldByName('DocumentoDigital').IsNull then
    begin
      global_Temp := 'docto_empleado_'+zEmpleados.FieldByName('CodigoPersonal').AsString+'.pdf';
      TBlobField(doctoVP.FieldByName('DocumentoDigital')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp );
      Application.CreateForm(TFrmVerPDF, FrmVerPDF);
      FrmVerPDF.ShowModal;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;
end;

procedure Tfrm_EvaluaCompetencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree;
end;

procedure Tfrm_EvaluaCompetencias.FormShow(Sender: TObject);
begin
    btnPermisos := global_btnPermisos;
    PanelDetalle.Visible := False;
    Panel2.Visible := False;
    cxSplitter1.Visible := False;
    frmBarraH11.btnAdd.Visible:=False;
    frmBarraH11.btnEdit.Visible:=False;
    frmBarraH11.btnDelete.Visible:=False;
    titulo:='Evaluación de Competencias';
    titulo2:='Detalles';
    cxLeyenda.Caption:=titulo;
    cxLeyenda2.Caption:=titulo2;
    frmBarraH21.btnCancel.Click ;

    IsOpen:=False;

    zEmpleados.Active:=False;
    AsignarSQL(zEmpleados,'master_empleado_competencia',pUpdate);
    FiltrarDataSet(zEmpleados,'Id,Activo',[-1,'Si']);
    zEmpleados.Open;

    zPreguntas.Active:=False;
    AsignarSQL(zPreguntas,'master_empleado_checklist_conf',pUpdate);
    FiltrarDataSet(zPreguntas,'Id,Activo',[-1,'Si']);
    zPreguntas.Open;

    {zPuntos.Active:=False;
    zPuntos.SQL.Add('Select '+QuotedStr('Si')+' as Cumple union Select '+QuotedStr('No')+' as Cumple');
    zPuntos.Open;
    }
    IsOpen :=True;
    //zPuntos.Active := True;
    PermisosBotones(frmEvaluaCompetencias,btnPermisos);
end;

procedure Tfrm_EvaluaCompetencias.frxReporteGetValue(const VarName: string;
  var Value: Variant);
begin
;
end;

procedure Tfrm_EvaluaCompetencias.zProveedorAfterScroll(DataSet: TDataSet);
begin
;
end;

procedure Tfrm_EvaluaCompetencias.zEmpleadosAfterScroll(DataSet: TDataSet);
begin
  if IsOpen = True then
  begin
    if PanelDetalle.Visible then
    begin
      if cxPageDetalle.ActivePageIndex = 0 then
      begin
        frmBarraH11.btnPrinter.Visible:=False;
        AsignarSQL(zEvaluaDetalle,'master_empleado_checklist_detalle',pUpdate);
        FiltrarDataset(zEvaluaDetalle,'Id,IdPersonal',[-1,zEmpleados.FieldByName('IdPersonal').AsInteger]);
        zEvaluaDetalle.Open;
        if zEvaluaDetalle.RecordCount > 0 then
        begin
          cxNuevoDetalle.Caption := 'Cambiar Información';
          frmBarraH11.btnPrinter.Visible:=True;
        end
        else
          cxNuevoDetalle.Caption := 'Verificar documentación';
      end;
      if cxPageDetalle.ActivePageIndex = 1 then
      begin
        cxNuevoDetalle.Caption  := 'Nuevo';
        zDoctos.Active:=False;
        AsignarSQL(zDoctos,'documentos_empleado',pUpdate);
        FiltrarDataset(zDoctos,'IdPersonal',[zEmpleados.FieldByName('IdPersonal').AsInteger]);
        zDoctos.Open;
        zListDoc.Active:=False;
        AsignarSQL(zListDoc,'lista_documentos_check',pUpdate);
        zListDoc.Open;
      end;
    end;
  end;
end;

end.
