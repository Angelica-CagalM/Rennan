unit frm_controlComisiones;

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
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.Menus,
  cxContainer, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxLabel, Vcl.StdCtrls, cxButtons, frm_barraH1, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxSplitter, Vcl.ExtCtrls, dxBarBuiltInMenu,
  dxLayoutcxEditAdapters, cxCurrencyEdit, cxDBEdit, cxCheckBox, cxGroupBox,
  dxCheckGroupBox, dxDBCheckGroupBox, cxSpinEdit, cxTimeEdit, dxLayoutContainer,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxCalendar, cxTextEdit, dxLayoutControl, frm_barraH2, cxPC, MemDS, DBAccess,
  Uni, unitGenerales, global, frm_connection, frxClass, frxDBSet,
  dxLayoutControlAdapters;

type
  TfrmControlComision = class(TForm)
    PanelTop: TPanel;
    PanelDetalle: TPanel;
    cxSplitterDetalle: TcxSplitter;
    PanelCentro: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    PanelInfo: TPanel;
    cxSplitterInfo: TcxSplitter;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    cxColumn1: TcxGridDBColumn;
    cxColumn2: TcxGridDBColumn;
    cxColumn3: TcxGridDBColumn;
    cxColumn4: TcxGridDBColumn;
    cxColumn5: TcxGridDBColumn;
    cxColumn6: TcxGridDBColumn;
    PanelTopD: TPanel;
    PanelTopD2: TPanel;
    Panel1: TPanel;
    cxPageControlCom: TcxPageControl;
    PanelDown: TPanel;
    frmBarraH21: TfrmBarraH2;
    LayoutInfoGroup_Root: TdxLayoutGroup;
    LayoutInfo: TdxLayoutControl;
    frmBarraH22: TfrmBarraH2;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    btnEliminarDetalle: TcxButton;
    cxOficio: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxFechaOficio: TcxDBDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxPuesto: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxLugar: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cmbProyecto: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxFechaIni: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxHoraIni: TcxDBTimeEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxFechaFin: TcxDBDateEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxMotivo: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    uProyectos: TUniQuery;
    uComision: TUniQuery;
    ds_comision: TDataSource;
    ds_proyectos: TDataSource;
    cxAplicaV: TdxCheckGroupBox;
    dxLayoutItem24: TdxLayoutItem;
    LayoutV: TdxLayoutControl;
    LayoutVGroup_Root: TdxLayoutGroup;
    cxG: TcxDBCurrencyEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxA: TcxDBCurrencyEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxH: TcxDBCurrencyEdit;
    dxLayoutItem16: TdxLayoutItem;
    cxT: TcxDBCurrencyEdit;
    dxLayoutItem18: TdxLayoutItem;
    cxO: TcxDBCurrencyEdit;
    dxLayoutItem20: TdxLayoutItem;
    cxOEsp: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    cxNombre: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDocumentosC: TcxTabSheet;
    reporte: TfrxReport;
    frxDBComision: TfrxDBDataset;
    uReporte: TUniQuery;
    PanelInfoD: TPanel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxLeyenda2: TcxLabel;
    cxLeyenda3: TcxLabel;
    uDoctos: TUniQuery;
    uMuestraDocto: TUniQuery;
    ds_doctos: TDataSource;
    cxColumnD1: TcxGridDBColumn;
    cxColumnD2: TcxGridDBColumn;
    cxColumnD3: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxFecha: TcxDBDateEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxOficioC: TcxTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxNombreDocto: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem17: TdxLayoutItem;
    cxCargarDocumento: TcxButton;
    ds_muestraDocto: TDataSource;
    dlgPDF: TFileOpenDialog;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);

    procedure btnPostDClick(Sender: TObject);
    procedure btnCancelDClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxAplicaVPropertiesChange(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure cxPageControlComChange(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure btnEliminarDetalleClick(Sender: TObject);
    procedure cxCargarDocumentoClick(Sender: TObject);
    procedure uComisionAfterScroll(DataSet: TDataSet);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControlComision: TfrmControlComision;
  Leyenda,Leyenda2,Leyenda3 : String;
  IsOpenU : Boolean;

implementation

{$R *.dfm}

procedure TfrmControlComision.btnAddClick(Sender: TObject);
begin

  cxLeyenda.Caption:=Leyenda+'[Añadiendo]';
  frmBarraH11.btnAddClick(Sender);
  cxGrid1.Enabled:=False;

  uComision.Append;
  uComision.FieldByName('FechaDoc').AsDateTime:=Now;
  uComision.FieldByName('FechaInicio').AsDateTime:=Now;
  uComision.FieldByName('FechaFin').AsDateTime:=Now;
  uComision.FieldByName('AplicaViaticos').AsString:='Si';
  uComision.FieldByName('sIdUsuario').AsString:=GLOBAL_USUARIO;
  uComision.FieldByName('Gasolina').AsFloat:=0.0;
  uComision.FieldByName('Alimentacion').AsFloat:=0.0;
  uComision.FieldByName('Hospedaje').AsFloat:=0.0;
  uComision.FieldByName('Transporte').AsFloat:=0.0;
  uComision.FieldByName('Otros').AsFloat:=0.0;
  uComision.FieldByName('OtrosEsp').asString:='Especifique';
  connection.uUsuario.Locate('sIdUsuario',GLOBAL_USUARIO,[]);
  cxNombre.Text:=connection.uUsuario.fieldByName('sNombre').asString;
  cxNombre.Enabled:=False;

  PanelInfo.Visible:=True;
  cxSplitterInfo.Visible:=True;
end;

procedure TfrmControlComision.btnCancelClick(Sender: TObject);
begin
  uComision.Cancel;
  cxSplitterInfo.Visible:=False;
  PanelInfo.Visible:=False;
  cxLeyenda.Caption:=Leyenda;
  frmBarraH11.btnActive;
  cxGrid1.Enabled:=True;
end;

procedure TfrmControlComision.btnDeleteClick(Sender: TObject);
begin
  if uComision.RecordCount > 0 then begin
    if MessageDlg('¿Realmente desea eliminar el Oficio '+uComision.FieldByName('Codigo').AsString+'?',mtInformation,[mbYes,mbNo],0) = mrYes then begin
      uComision.Delete;
      uComision.ApplyUpdates();
      uComision.Refresh;
    end;
  end
  else begin
    MessageDlg('No hay datos para eliminar',mtInformation,[mbOk],0);
  end;
end;

procedure TfrmControlComision.btnDetalleClick(Sender: TObject);
begin
 PanelDetalle.Visible:= not PanelDetalle.Visible;
  cxSplitterDetalle.Visible := not cxSplitterDetalle.Visible;

  if PanelDetalle.Visible then begin
    cxPageControlComChange(Sender);
    PanelInfoD.Visible:=False;
    Panel1.Visible:=False;
  end;
end;

procedure TfrmControlComision.btnEditClick(Sender: TObject);
begin
  if uComision.RecordCount > 0 then begin

    cxLeyenda.Caption:=Leyenda+'[Editando]';
    frmBarraH11.btnEditClick(Sender);

    uComision.Edit;
    cxNombre.Enabled:=false;
    cxNombre.Text:=uComision.FieldByName('NombreU').AsString;
    PanelInfo.Visible:=True;
    cxSplitterInfo.Visible:=True;
  end
  else begin
    MessageDlg('No hay datos para editar',mtInformation,[mbOk],0);
  end;
end;

procedure TfrmControlComision.btnEliminarDetalleClick(Sender: TObject);
begin
  if cxPageControlCom.ActivePage = cxDocumentosC  then begin
    if uDoctos.RecordCount > 0 then begin
      uDoctos.Delete;
      uDoctos.ApplyUpdates();
      uDoctos.Refresh;
    end
    else
      MessageDlg('No hay datos para eliminar',mtInformation,[mbOk],0);

  end;
end;

procedure TfrmControlComision.btnPostClick(Sender: TObject);
begin
  isOpenU:=False;
  uComision.Post;
  uComision.Refresh;
  PanelInfo.Visible:=False;
  cxSplitterInfo.Visible:=False;
  cxLeyenda.Caption:=Leyenda;
  cxGrid1.Enabled:=True;
  isOpenU:=True;
end;

procedure TfrmControlComision.btnPostDClick(Sender: TObject);
begin
  if cxPageControlCom.ActivePage = cxDocumentosC then begin
    uMuestraDocto.Post;
    uDoctos.Refresh;
    PanelInfoD.Visible:=False;
    Panel1.Visible:=False;
  end;
end;

procedure TfrmControlComision.btnCancelDClick(Sender: TObject);
begin
  if cxPageControlCom.ActivePage = cxDocumentosC then begin
    uMuestraDocto.Cancel;
    PanelInfoD.Visible:=False;
    Panel1.Visible:=False;
  end;
end;

procedure TfrmControlComision.btnPrinterClick(Sender: TObject);
begin
  if uComision.RecordCount > 0 then begin
    AsignarSQL(uReporte,'master_comisiones',pUpdate);
    FiltrarDataSet(uReporte,'Id,Usuario,Proyecto,Viaticos',[uComision.FieldByName('IdComision').AsInteger,-1,-1,-1]);
    uReporte.Open;

    reporte.LoadFromFile(GLOBAL_FILES+global_miReporte+'_RH_Oficio_Comision.fr3');
    if not FileExists(GLOBAL_FILES+GLOBAL_MIREPORTE+'_RH_Oficio_Comision.fr3') then
      MessageDlg('El archivo '+GLOBAL_MIREPORTE+'_RH_Oficio_Comision.fr3 no existe',mtInformation,[mbOk],0)
    else
      reporte.ShowReport();
  end;
end;

procedure TfrmControlComision.btnRefreshClick(Sender: TObject);
begin
   uComision.Refresh;
end;

procedure TfrmControlComision.cxAplicaVPropertiesChange(Sender: TObject);
begin
  if not cxAplicaV.CheckBox.Checked then begin
    uComision.FieldByName('Gasolina').AsFloat:=0.0;
    uComision.FieldByName('Transporte').AsFloat:=0.0;
    uComision.FieldByName('Hospedaje').AsFloat:=0.0;
    uComision.FieldByName('Alimentacion').AsFloat:=0.0;
    uComision.FieldByName('Otros').AsFloat:=0.0;
    uComision.FieldByName('OtrosEsp').AsString:='Especifique';

  end;
end;

procedure TfrmControlComision.cxCargarDocumentoClick(Sender: TObject);
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

    TBlobField(uMuestraDocto.FieldByName('Documento')).LoadfromFile(sArchivo);

  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
    end;
  end;

end;

procedure TfrmControlComision.cxEditaDetalleClick(Sender: TObject);
begin
  if cxPageControlCom.ActivePage = cxDocumentosC then begin
    if uDoctos.RecordCount > 0 then begin
      AsignarSQL(uMuestraDocto,'master_comision_detalle',pUpdate);
      FiltrarDataSet(uMuestraDocto,'Id,Oficio',[uDoctos.FieldByName('IdOficio').AsInteger,-1]);
      uMuestraDocto.Open;
      uMuestraDocto.Edit;
      cxOficioC.Enabled:=False;
      cxOficioC.Text := uComision.FieldByName('Codigo').AsString;
      Panel1.Visible:= True;
      PanelInfoD.Visible:=True;
    end
    else
      MessageDlg('No hay datos a editar',mtInformation,[mbOk],0);
  end;
end;

procedure TfrmControlComision.cxNuevoDetalleClick(Sender: TObject);
begin
  if cxPageControlCom.ActivePage = cxDocumentosC then begin
    AsignarSQL(uMuestraDocto,'master_comision_detalle',pUpdate);
    FiltrarDataSet(uMuestraDocto,'Id,Oficio',[-9,-9]);
    uMuestraDocto.Open;
    uMuestraDocto.Append;
    cxOficioC.Enabled:=False;
    uMuestraDocto.FieldByName('IdOficio').AsInteger:=uComision.FieldByName('IdComision').AsInteger;
    uMuestraDocto.FieldByName('Fecha').AsDateTime:=Now;
    cxOficioC.Text := uComision.FieldByName('Codigo').AsString;
    Panel1.Visible:= True;
    PanelInfoD.Visible:=True;

  end;
end;

procedure TfrmControlComision.cxPageControlComChange(Sender: TObject);
begin
  if cxPageControlCom.ActivePage = cxDocumentosC then begin
    AsignarSQL(uDoctos,'master_comision_detalle_noDocto',pUpdate);
    FiltrarDataSet(uDoctos,'Id,Oficio',[-1,uComision.FieldByName('IdComision').AsInteger]);
    uDoctos.Open;
  end;
end;

procedure TfrmControlComision.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  guardar_leer_grid(cxGrid1DBTableView1,frmControlComision,1);
//  guardar_leer_grid(cxGrid2DBTableView1,frmControlComision,1);
  action := cafree;
end;

procedure TfrmControlComision.FormShow(Sender: TObject);
begin
  PanelDetalle.Visible:=False;
  cxSplitterDetalle.Visible:=False;
  PanelInfo.Visible:=False;
  cxSplitterInfo.Visible:=False;

  isOpenU:=False;
  AsignarSQL(uComision,'master_comisiones',pUpdate);
  FiltrarDataSet(uComision,'Id,Usuario,Proyecto,Viaticos',[-1,-1,-1,-1]);
  uComision.Open;
  isOpenU:=True;

  AsignarSQL(uProyectos,'ordenesdetrabajo',pUpdate);
  FiltrarDataSet(uProyectos,'Contrato',[GLOBAL_CONTRATO]);
  uProyectos.Open;

  Leyenda:=cxLeyenda.Caption;
  Leyenda2:=cxLeyenda2.Caption;
  Leyenda3:=cxLeyenda3.Caption;

//guardar_leer_grid(cxGrid1DBTableView1,frmControlComision,0);
//guardar_leer_grid(cxGrid2DBTableView1,frmControlComision,0);

end;

procedure TfrmControlComision.EnterControl(Sender: TObject);
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
        tcxDBLookupComboBox(sender).Style.Color := global_color_EntradaERP;

    if (sender is tcxComboBox) then
        tcxComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmControlComision.SalidaControl(Sender: TObject);
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

procedure TfrmControlComision.uComisionAfterScroll(DataSet: TDataSet);
begin
  if isOpenU then
    if cxPageControlCom.ActivePage = cxDocumentosC then begin
      AsignarSQL(uDoctos,'master_comision_detalle_noDocto',pUpdate);
      FiltrarDataSet(uDoctos,'Id,Oficio',[-1,uComision.FieldByName('IdComision').AsInteger]);
      uDoctos.Open;
    end;
end;

procedure TfrmControlComision.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

end.
