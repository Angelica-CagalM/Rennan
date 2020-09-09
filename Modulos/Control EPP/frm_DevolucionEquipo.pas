unit frm_DevolucionEquipo;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxProgressBar, cxGroupBox, cxRadioGroup, cxGridChartView, cxGridDBChartView,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxSplitter, dxLayoutContainer,
  dxGDIPlusClasses, cxImage, Vcl.StdCtrls, cxButtons, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxPC, frm_barraH2, dxLayoutControl, cxTextEdit, cxLabel,
  frm_barraH1, Vcl.ExtCtrls, MemDS, DBAccess, Uni;

type
  TfrmDevolucionEquipo = class(TForm)
    Panel3: TPanel;
    frmBarraH11: TfrmBarraH1;
    cxLeyenda: TcxLabel;
    TsArchivo: TcxTextEdit;
    Panel4: TPanel;
    dxLayoutControl7: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    PanelPrincipal: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlBtn2: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    tsSolicitante: TcxDBTextEdit;
    cxCarnet: TcxDBTextEdit;
    cxNombre: TcxDBLookupComboBox;
    cbEdoMaterial: TcxDBComboBox;
    cxProyecto: TcxDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxButton1: TcxButton;
    cxImage1: TcxImage;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem50: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxViaEmbarque: TcxDBComboBox;
    cxSplitter1: TcxSplitter;
    grid_requsicion: TcxGrid;
    cxView_Requsicion: TcxGridDBTableView;
    cxView_RequsicionColumn3: TcxGridDBColumn;
    cxView_RequsicionColumn1: TcxGridDBColumn;
    cxView_RequsicionColumn2: TcxGridDBColumn;
    cxView_RequsicionColumn13: TcxGridDBColumn;
    cxView_RequsicionColumn12: TcxGridDBColumn;
    cxView_RequsicionColumn11: TcxGridDBColumn;
    cxView_RequsicionColumn9: TcxGridDBColumn;
    cxView_RequsicionColumn7: TcxGridDBColumn;
    grid_requsicionLevel1: TcxGridLevel;
    cxSplitterOpciones: TcxSplitter;
    PanelDetalle: TPanel;
    PanelCentro: TPanel;
    cxPageDetalle: TcxPageControl;
    cxTabMaterial: TcxTabSheet;
    cxGridMateriales: TcxGrid;
    cxView_Materiales: TcxGridDBTableView;
    cxView_MaterialesColumn5: TcxGridDBColumn;
    cxView_MaterialesColumn2: TcxGridDBColumn;
    cxView_MaterialesColumn4: TcxGridDBColumn;
    cxView_MaterialesColumn7: TcxGridDBColumn;
    cxGridMaterialesLevel1: TcxGridLevel;
    tabInformes: TcxTabSheet;
    PanelInferiorInforme: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid1Level1: TcxGridLevel;
    cxSplitInforme: TcxSplitter;
    PanelSuperiorInforme: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    opcionImprimir: TcxRadioGroup;
    btnImpInforme: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    PanelTop: TPanel;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxLeyenda2: TcxLabel;
    cxEliminarDetalle: TcxButton;
    cxImportar: TcxButton;
    PanelDown: TPanel;
    cxCancelarDetalle: TcxButton;
    cxGuardarDetalle: TcxButton;
    cxSplitMaterial: TcxSplitter;
    PanelProgreso: TPanel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    zDevolucionEPP: TUniQuery;
    dsDevolucionEPP: TDataSource;
    QReferencia: TUniQuery;
    dsReferencia: TDataSource;
    zDatosPer: TUniQuery;
    dsDatosPer: TDataSource;
    zMateriales: TUniQuery;
    dsMateriales: TDataSource;
    lcbAlmacen: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    Almacen: TUniQuery;
    ds_almacen: TDataSource;
    zEpp: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure cxNombreExit(Sender: TObject);
    procedure cxNombrePropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxEliminarDetalleClick(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxView_RequsicionCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
     huella:String;
     accion:String;
  end;

  const
    NBioAPIERROR_NONE = 0;

    NBioAPI_FIR_PURPOSE_VERIFY      = 1;

    //Constant for DeviceID
    NBioAPI_DEVICE_ID_NONE          = 0;
    NBioAPI_DEVICE_ID_FDP02_0       = 1;
    NBioAPI_DEVICE_ID_FDU01_0       = 2;
    NBioAPI_DEVICE_ID_AUTO_DETECT   = 255;
    InputBoxMessage = WM_USER + 200;
    NBioAPI_WINDOW_STYLE_INVISIBL   =0;
var
  frmDevolucionEquipo: TfrmDevolucionEquipo;
    titulo: string;
implementation
uses frm_connection,UnitGenerales,Comobj,global,frm_agregar_masivoOP_SS7;
{$R *.dfm}
var
        objNBioBSP    : variant;
        objDevice     : variant;
        objExtraction : variant;
        objNSearch    : variant;
        objIndexSearch: variant;
procedure TfrmDevolucionEquipo.btnAddClick(Sender: TObject);
begin
    accion:='add';
    cxLeyenda.Caption:=titulo + '[Añadiendo]';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    cxSplitter1.Visible := True;
    zDevolucionEPP.Append;
    zDevolucionEPP.FieldByName('Codigo').AsString := autofolio(zDevolucionEPP, 'epp_devolucion_equipo', connection.uContrato.FieldByName('IdEmpresa').AsInteger, 0,0);
    zDevolucionEPP.FieldByName('FechaDevolucion').AsDateTime:=Now();
    zDevolucionEPP.FieldByName('IdPersonal').AsInteger:=zDatosPer.FieldByName('IdPersonal').AsInteger;
    zDevolucionEPP.FieldByName('sNumeroOrden').AsString:=QReferencia.FieldByName('sNumeroOrden').AsString;
    zDevolucionEPP.FieldByName('IdAlmacen').AsString:=Almacen.FieldByName('IdAlmacen').AsString;

end;

procedure TfrmDevolucionEquipo.EnterControl(Sender: TObject);
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

    if (sender is tcxDBLookUpComboBox) then
        tcxDBLookUpComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmDevolucionEquipo.SalidaControl(Sender: TObject);
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

    if (sender is tcxDBLookUpComboBox) then
        tcxDBLookUpComboBox(sender).Style.Color := global_color_salidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmDevolucionEquipo.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;


procedure TfrmDevolucionEquipo.btnCancelClick(Sender: TObject);
begin
  cxLeyenda.Caption:=titulo;
  Panel2.Visible:=False;
  cxSplitter1.Visible := False;
  frmBarraH11.btnActive;
  grid_requsicion.Enabled:=True;
  zDatosPer.Cancel;
  zDevolucionEPP.cancel;
end;

procedure TfrmDevolucionEquipo.btnDeleteClick(Sender: TObject);
begin
  If MessageDlg('Desea eliminar el registro Seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
     zDevolucionEPP.Delete;
     zDevolucionEPP.ApplyUpdates();
     zDevolucionEPP.Refresh;
   End;
end;

procedure TfrmDevolucionEquipo.btnDetalleClick(Sender: TObject);
begin
PanelDetalle.Visible := not PanelDetalle.Visible;
cxSplitterOpciones.Visible := not cxSplitterOpciones.Visible ;
  if PanelDetalle.Visible then
  begin
    AsignarSQL(zMateriales,'devolucion_epp_detalle',pUpdate);
    FiltrarDataSet(zMateriales,'IdDevolucionEquipo',[zDevolucionEPP.FieldByName('IdDevolucionEPP').AsString]);
    zMateriales.Open;
  end;
end;

procedure TfrmDevolucionEquipo.btnEditClick(Sender: TObject);
begin
    accion:='update';
    cxLeyenda.Caption:=titulo + '[Editando]';
    cxLeyenda2.Caption:='Agregar Materiales';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    cxSplitter1.Visible := True;
    PanelDetalle.Visible := False;
    cxSplitterOpciones.Visible := false;
    zDevolucionEPP.Edit;
end;

procedure TfrmDevolucionEquipo.btnPostClick(Sender: TObject);
begin
  zDevolucionEPP.Post;
  cxLeyenda.Caption:=titulo;

//  zEpp.Active:=False;
//  zEpp.SQL.Text:='call cargar_materal(:id, :tipo)';
//  if accion = 'add' then
//    zEpp.ParamByName('id').AsInteger:=zDevolucionEPP.LastInsertId
//  else
//    zEpp.ParamByName('id').AsInteger:=zDevolucionEPP.FieldByName('IdDevolucionEPP').AsInteger;
//  zEpp.ParamByName('tipo').AsString:='devolucion';
//  zEpp.ExecSQL;

  btnCancelClick(sender);
  grid_requsicion.Enabled:=True;
  zDevolucionEPP.Refresh;
end;

procedure TfrmDevolucionEquipo.btnRefreshClick(Sender: TObject);
begin
  zDevolucionEPP.Refresh;
end;

procedure TfrmDevolucionEquipo.cxButton1Click(Sender: TObject);
    var
    i         : longint;
        nUserID   : longint;
        szFir     : wideString;
        str       : widestring;
      //  ListItem  : TListItem;
        objResult : variant;
        begin
     objNBioBSP := CreateOleObject('NBioBSPCOM.NBioBSP');

    objDevice      := objNBioBSP.Device;
    objExtraction  := objNBioBSP.Extraction;
    objNSearch     := objNBioBSP.NSearch;

    if objNSearch.ErrorCode = NBioAPIERROR_NONE then
    begin
     objExtraction.WindowStyle := NBioAPI_WINDOW_STYLE_INVISIBL;
     objDevice.Open(NBioAPI_DEVICE_ID_AUTO_DETECT);
     objExtraction.Capture(1);
     objDevice.Close(NBioAPI_DEVICE_ID_AUTO_DETECT);
     szFir := objExtraction.TextEncodeFIR;
     objNSearch.IdentifyUser(szFir, 5);
     zDevolucionEPP.FieldByName('Confirmacion').AsString:= huella;
     if huella = '' then
     begin
        ShowMessage('No se encotro la huella del personal');
        dxLayoutItem6.Visible:=False;
     end
     else
        dxLayoutItem6.Visible:=True;
    end
    else
    ShowMessage('Conectar biometrico!');

end;

procedure TfrmDevolucionEquipo.cxEliminarDetalleClick(Sender: TObject);
begin
 If MessageDlg('Desea eliminar el registro Seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
     zMateriales.Delete;
     zMateriales.ApplyUpdates();
     zMateriales.Refresh;
   End;
end;

procedure TfrmDevolucionEquipo.cxNombreExit(Sender: TObject);
begin
 cxNombre.Style.Color := global_color_salidaERP;
 if (dsDevolucionEPP.State = dsInsert) or (dsDevolucionEPP.State = dsEdit) then
  begin
    if zDatosPer.locate('IdPersonal',cxNombre.EditValue ,[]) then
      dsDevolucionEPP.dataset.FieldByName('TallaBotas').value:=zDatosPer.FieldByName('NoCalzado').value;
    dsDevolucionEPP.dataset.FieldByName('TallaOverol').value:=zDatosPer.FieldByName('Talla').value;
    huella:= zDatosPer.FieldByName('ImgHuella').AsString;
  end;
end;

procedure TfrmDevolucionEquipo.cxNombrePropertiesEditValueChanged(
  Sender: TObject);
begin
if (dsDevolucionEPP.State = dsInsert) or (dsDevolucionEPP.State = dsEdit) then
   cxProyecto.setfocus;
end;

procedure TfrmDevolucionEquipo.cxNuevoDetalleClick(Sender: TObject);
begin
    global_frmActivo := 'DevolucionEPP';
    Application.CreateForm(TfrmAgregarMasivoOP_SS7, frmAgregarMasivoOP_SS7);
    Application.NormalizeAllTopMosts;
    frmAgregarMasivoOP_SS7.show;
    zMateriales.Refresh;
end;

procedure TfrmDevolucionEquipo.cxView_RequsicionCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if PanelDetalle.Visible then
  begin
    AsignarSQL(zMateriales,'devolucion_epp_detalle',pUpdate);
    FiltrarDataSet(zMateriales,'IdDevolucionEquipo',[zDevolucionEPP.FieldByName('IdDevolucionEPP').AsString]);
    zMateriales.Open;
  end;
end;

procedure TfrmDevolucionEquipo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;

end;

procedure TfrmDevolucionEquipo.FormShow(Sender: TObject);
begin
    Panel2.Visible := False;
    cxSplitter1.Visible := False;

    titulo:='Entrada de Material';
    cxLeyenda.Caption:=titulo;

    AsignarSQL(Almacen,'almacenXusuario',pUpdate);
    FiltrarDataSet(Almacen,'Almacen,Usuario',[-1,GLOBAL_USUARIO]);
    Almacen.Open;

    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;
    AsignarSQL(zDevolucionEPP,'devolucion_epp',pUpdate);
    FiltrarDataSet(zDevolucionEPP,'IdDevolucionEPP',['-1']);
    zDevolucionEPP.Open;

    AsignarSQL(zDatosPer,'master_personal_salida',pUpdate);
    zDatosPer.Open;

    QReferencia.Active:= False;
    AsignarSQL(QReferencia,'ordenesdetrabajo_presu_val',pUpdate);
    FiltrarDataSet(QReferencia,'Contrato, Tipo,Estatus',[global_contrato, 'ORDEN_TRABAJO','-1']);
    QReferencia.Open;

end;

end.
