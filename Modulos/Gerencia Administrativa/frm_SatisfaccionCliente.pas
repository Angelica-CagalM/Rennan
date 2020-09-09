unit frm_SatisfaccionCliente;

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
  Tfrm_SatisfaccionCliente = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    cxConfigura: TcxButton;
    PanelPrincipal: TPanel;
    cxSplitTipo: TcxSplitter;
    Panel1: TPanel;
    grid_evaluacion: TcxGrid;
    cxView_Evaluacion: TcxGridDBTableView;
    cxView_EvaluacionColumn1: TcxGridDBColumn;
    cxView_EvaluacionColumn3: TcxGridDBColumn;
    cxView_EvaluacionColumn2: TcxGridDBColumn;
    grid_evaluacionLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
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
    qryCliente: TUniQuery;
    dsCliente: TDataSource;
    cxGridEvaluar: TcxGrid;
    cxGridViewEvalua: TcxGridDBTableView;
    colPregunta: TcxGridDBColumn;
    colPuntos: TcxGridDBColumn;
    cxGridEvaluarLevel1: TcxGridLevel;
    dsPregCliente: TDataSource;
    zPregCliente: TUniQuery;
    mPreguntas: TdxMemData;
    zPuntos: TUniQuery;
    dsPuntos: TDataSource;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    frxReporte: TfrxReport;
    zReporteEvalua: TUniQuery;
    cxView_EvaluacionColumn4: TcxGridDBColumn;
    imgStars: TcxImageList;
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
    zClienteDoctos: TUniQuery;
    ds_Clientedoctos: TDataSource;
    ds_list_doc: TDataSource;
    zListcDoc: TUniQuery;
    dlgPDF: TFileOpenDialog;
    dlgSavePDF: TSaveDialog;
    doctoVP: TUniQuery;
    dsDoctoVP: TDataSource;
    zClienteDetalle: TUniQuery;
    ds_ClienteDetalle: TDataSource;
    cxView_EvaluacionColumn6: TcxGridDBColumn;
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
    procedure qryClienteAfterScroll(DataSet: TDataSet);
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
  frmSatisfaccionCliente: Tfrm_SatisfaccionCliente;

implementation

{$R *.dfm}

uses frm_VerPDF;

procedure Tfrm_SatisfaccionCliente.btnAddClick(Sender: TObject);
begin
  {No se utiliza este botón en este formulario}
  ;
end;

procedure Tfrm_SatisfaccionCliente.btnCancelClick(Sender: TObject);
begin
    {Este botón no se ocupa en este formulario}
    ;
end;

procedure Tfrm_SatisfaccionCliente.btnDeleteClick(Sender: TObject);
begin
  {Este botón no se utiliza en este formulario}
  ;
end;

procedure Tfrm_SatisfaccionCliente.btnEditClick(Sender: TObject);
begin
    {Este botón no se utiliza en este formulario}
    ;
end;

procedure Tfrm_SatisfaccionCliente.btnPostClick(Sender: TObject);
var SavePlace     : TBookmark;
begin
    {Este botón no se ocupa en este formulario}
    ;
end;

procedure Tfrm_SatisfaccionCliente.btnPrinterClick(Sender: TObject);
begin
  {No se ocupa en éste formulario}
  {if cxPageDetalle.ActivePageIndex = 0 then
  begin
    if zClienteDetalle.RecordCount <> 0 then
    begin
      zReporteEvalua.Active:=False;
      AsignarSQL(zReporteEvalua,'master_check_reporte',pUpdate);
      FiltrarDataSet(zReporteEvalua,'IdPersonal',[qrycliente.FieldByName('IdPersonal').AsInteger]);
      zReporteEvalua.Open;

      frxReporte.LoadFromFile(global_files+global_miReporte+'_RHLista_Verificacion.fr3');
      frxReporte.ShowReport();
    end
    else
    ;

  end;}
end;

procedure Tfrm_SatisfaccionCliente.BView_filtroCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  ;
end;

procedure Tfrm_SatisfaccionCliente.BView_filtroDblClick(Sender: TObject);
begin
  ;
end;

procedure Tfrm_SatisfaccionCliente.cxCancelarDetalleClick(Sender: TObject);
begin
   cxNuevoDetalle.Enabled := True;

   cxLeyenda2.Caption:=titulo2;

   zClienteDetalle.Cancel;
   PanelDown.Visible := False;

   if zClienteDetalle.State in [dsEdit, dsInsert] then
   begin
      cxGridViewEvalua.OptionsData.Editing := False;
       zClienteDetalle.CachedUpdates := False;
      zClienteDetalle.Post;
   end;
   if doctoVP.State in [dsEdit,dsInsert] then
    doctoVP.Cancel;
end;

procedure Tfrm_SatisfaccionCliente.cxCargarDocumentoClick(Sender: TObject);
  {no se ocupa en éste formulario}
var
  BlobStream : TStream;
  FileStream : TFileStream;

  Ext, sArchivo : string;
begin
  {try
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
  end; }

end;

procedure Tfrm_SatisfaccionCliente.cxConfiguraClick(Sender: TObject);
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
     zClienteDetalle.SQL.Clear;
     zClienteDetalle.Active:=False;
     AsignarSQL(zClienteDetalle,'master_cliente_satisfaccion_detalle',pUpdate);
     FiltrarDataset(zClienteDetalle,'Id,IdCliente',[-1,qryCliente.FieldByName('IdCliente').AsInteger]);
     zClienteDetalle.Open;
     if zClienteDetalle.RecordCount > 0 then
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

procedure Tfrm_SatisfaccionCliente.cxEditaDetalleClick(Sender: TObject);
begin
    PanelDown.Visible := True;
    cxNuevoDetalle.Enabled := False;

    cxLeyenda2.Caption:=titulo2 +'[Editando]';

    cxGridViewEvalua.OptionsData.Editing := True;

end;

procedure Tfrm_SatisfaccionCliente.cxGuardarDetalleClick(Sender: TObject);
begin
  cxNuevoDetalle.Enabled := True;
  cxLeyenda2.Caption:=titulo2;
  PanelDown.Visible := False;
  PanelDown1.Visible:=False;
  if doctoVP.State in [dsEdit,dsInsert] then
  begin
    doctoVP.Post;
    doctoVP.Refresh;
    zClienteDoctos.Refresh;
  end;
  if zClienteDetalle.State in [dsEdit, dsInsert] then
    zClienteDetalle.Post;
  cxGridViewEvalua.OptionsData.Editing := False;

  qryCliente.AfterScroll:= nil;
  qryCliente.Refresh;
  qryCliente.AfterScroll:= qryClienteAfterScroll;
end;

procedure Tfrm_SatisfaccionCliente.cxNuevoDetalleClick(Sender: TObject);
begin
    PanelDown.Visible := True;
    cxNuevoDetalle.Enabled := False;
    cxLeyenda2.Caption:=titulo2 +'[Editando]';
    if cxPageDetalle.ActivePageIndex = 0 then
    begin
      If zClienteDetalle.RecordCount = 0 then
      begin
        cxLeyenda2.Caption:=titulo2 +'[Agregando]';
        zPregCliente.First;
        while not zPregCliente.Eof do
        begin
          zClienteDetalle.Append;
            zClienteDetalle.FieldByName('IdCliente').AsInteger:= qryCliente.FieldByName('IdCliente').AsInteger;
            zClienteDetalle.FieldByName('IdPCliente').AsInteger:= zPregCliente.FieldByName('IdPCliente').AsInteger;
            zClienteDetalle.FieldByName('Cumple').AsString:= 'No';
          zClienteDetalle.Post;
          zPregCliente.Next;
        end;
      end;
      zClienteDetalle.First;
      cxGridViewEvalua.OptionsData.Editing := True;
    end;

    {if cxPageDetalle.ActivePageIndex = 1 then
    begin
      doctoVP.Active:=False;
      AsignarSQL(doctoVP,'docto_empleadoVP',pUpdate);
      FiltrarDataSet(doctoVP,'IdDocto',[-9]);
      doctoVP.Open;
      doctoVP.Append;
      PanelDown1.Visible:=True;
      doctoVP.FieldByName('IdPersonal').AsInteger := qryCliente.FieldByName('IdPersonal').AsInteger;
      doctoVP.FieldByName('Fechaexpedicion').AsDateTime := date;
      doctoVP.FieldByName('Fechavigencia').AsDateTime   := GeneraPeriodoDocto(date,zListDoc.FieldByName('IdDocumento').AsInteger);
      doctoVP.FieldByName('Fechaaplicacion').AsDateTime := date;
      doctoVP.FieldByName('Activo').AsString := 'Si';
      cxSplit1.Visible   := True;
      cxDocumento.SetFocus;
    end;      }
end;

procedure Tfrm_SatisfaccionCliente.cxPageDetalleChange(Sender: TObject);
begin
  cxCancelarDetalle.OnClick(sender);
  cxNuevoDetalle.Visible:=True;
  frmBarraH11.btnPrinter.Visible:=False;
  if cxPageDetalle.ActivePageIndex = 0 then
  begin
    zClienteDetalle.Active:=False;
    AsignarSQL(zClienteDetalle,'master_cliente_satifaccion_detalle',pUpdate);
    FiltrarDataset(zClienteDetalle,'IdPCliente,IdCliente',[-1,qryCliente.FieldByName('IdCliente').AsInteger]);
    zClienteDetalle.Open;
    if zClienteDetalle.RecordCount > 0 then
    begin
      cxNuevoDetalle.Caption := 'Cambiar Información';
      frmBarraH11.btnPrinter.Visible:=True;
    end
    else
      //cxNuevoDetalle.Caption := 'Verificar documentación';
  end;
  {if cxPageDetalle.ActivePageIndex = 1 then
  begin
    cxNuevoDetalle.Caption  := 'Nuevo';
    zClienteDoctos.Active:=False;
    AsignarSQL(zClienteDoctos,'documentos_empleado',pUpdate);
    FiltrarDataset(zClienteDoctos,'IdPersonal',[qryCliente.FieldByName('IdPersonal').AsInteger]);
    zClienteDoctos.Open;
    zListcDoc.Active:=False;
    AsignarSQL(zListcDoc,'lista_documentos_check',pUpdate);
    zListcDoc.Open;
  end;}

end;

procedure Tfrm_SatisfaccionCliente.cxViewDocumentosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  {no se ocupa en éste formulario}
  {if zClienteDoctos.RecordCount > 0 then
  begin
    doctoVP.Active:=False;
    AsignarSQL(doctoVP,'docto_empleadoVP',pUpdate);
    FiltrarDataSet(doctoVP,'IdDocto',[zClienteDoctos.FieldByName('IdDocxpersonal').AsInteger]);
    doctoVP.Open;

    if not doctoVP.FieldByName('DocumentoDigital').IsNull then
    begin
      global_Temp := 'docto_empleado_'+qryCliente.FieldByName('CodigoPersonal').AsString+'.pdf';
      TBlobField(doctoVP.FieldByName('DocumentoDigital')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp );
      Application.CreateForm(TFrmVerPDF, FrmVerPDF);
      FrmVerPDF.ShowModal;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;}
end;

procedure Tfrm_SatisfaccionCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree;
end;

procedure Tfrm_SatisfaccionCliente.FormShow(Sender: TObject);

begin
    btnPermisos := global_btnPermisos;
    PanelDetalle.Visible := False;
    frmBarraH11.btnAdd.Visible:=False;
    frmBarraH11.btnEdit.Visible:=False;
    frmBarraH11.btnDelete.Visible:=False;
    titulo:='Satisfacción del Cliente';
    titulo2:='Detalles';
    cxLeyenda.Caption:=titulo;
    cxLeyenda2.Caption:=titulo2;

    IsOpen:=True;

    qryCliente.Active:=False;
    AsignarSQL(qryCliente,'master_clientes',pUpdate);
    FiltrarDataSet(qryCliente,'IdCliente',[-1]);
    qryCliente.Open;

    zPregCliente.Active:=False;
    AsignarSQL(zPregCliente,'master_cliente_satisfaccion_conf',pUpdate);
    FiltrarDataSet(zPregCliente,'IdPCliente,Activo',[-1,'Si']);
    zPregCliente.Open;

    IsOpen :=True;
    PermisosBotones(frmSatisfaccionCliente,btnPermisos);
end;

procedure Tfrm_SatisfaccionCliente.frxReporteGetValue(const VarName: string;
  var Value: Variant);
begin
;
end;

procedure Tfrm_SatisfaccionCliente.zProveedorAfterScroll(DataSet: TDataSet);
begin
;
end;

procedure Tfrm_SatisfaccionCliente.qryClienteAfterScroll(DataSet: TDataSet);
begin
  if IsOpen = True then
  begin
    if PanelDetalle.Visible then
    begin
      if cxPageDetalle.ActivePageIndex = 0 then
      begin
        frmBarraH11.btnPrinter.Visible:=False;
        AsignarSQL(zClienteDetalle,'master_cliente_satisfaccion_detalle',pUpdate);
        FiltrarDataset(zClienteDetalle,'IdPCliente,IdCliente',[-1,qryCliente.FieldByName('IdCliente').AsInteger]);
        zClienteDetalle.Open;
        if zClienteDetalle.RecordCount > 0 then
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
        zClienteDoctos.Active:=False;
        AsignarSQL(zClienteDoctos,'detalle_master-cliente_docto',pUpdate);
        FiltrarDataset(zClienteDoctos,'IdCliente',[qryCliente.FieldByName('IdCliente').AsInteger]);
        zClienteDoctos.Open;
        zListcDoc.Active:=False;
        AsignarSQL(zListcDoc,'lista_documentos_check',pUpdate);
        zListcDoc.Open;
      end;
    end;
  end;
end;

end.
