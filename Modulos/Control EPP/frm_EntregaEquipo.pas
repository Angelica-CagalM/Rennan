unit frm_EntregaEquipo;

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
  dxSkinXmas2008Blue, Vcl.Menus, cxTextEdit, Vcl.StdCtrls, cxButtons, cxLabel,
  frm_barraH1, Vcl.ExtCtrls, dxSkinscxPCPainter, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxProgressBar, cxCheckListBox,
  cxCalc, cxDBEdit, cxGroupBox, cxRadioGroup, cxGridChartView,
  cxGridDBChartView, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxSplitter,
  cxCheckBox, dxToggleSwitch, dxDBToggleSwitch, cxMemo, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPC, frm_barraH2,
  cxMaskEdit, cxCalendar, dxLayoutControl, MemDS, DBAccess, Uni,
  cxCurrencyEdit, cxImage, dxGDIPlusClasses, Vcl.OleCtrls, zkemkeeper_TLB,
  frxClass, frxDBSet;

type
  TfrmEntregaEquipo = class(TForm)
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
    cxNombre: TcxDBLookupComboBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    cxSplitter1: TcxSplitter;
    grid_requsicion: TcxGrid;
    cxView_Requsicion: TcxGridDBTableView;
    cxView_RequsicionColumn1: TcxGridDBColumn;
    cxView_RequsicionColumn3: TcxGridDBColumn;
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
    dxLayoutItem9: TdxLayoutItem;
    cxCarnet: TcxDBTextEdit;
    zDatosPer: TUniQuery;
    dsDatosPer: TDataSource;
    zEntregaEPP: TUniQuery;
    dsEntregaEPP: TDataSource;
    dxLayoutItem2: TdxLayoutItem;
    cbEdoMaterial: TcxDBComboBox;
    edtBotas: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxTalla: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxViaEmbarque: TcxDBComboBox;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dFecha: TcxDBDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxImage1: TcxImage;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    zMateriales: TUniQuery;
    dsMateriales: TDataSource;
    lcbAlmacen: TcxDBLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    ds_almacen: TDataSource;
    Almacen: TUniQuery;
    dsReferencia: TDataSource;
    QReferencia: TUniQuery;
    dxLayoutItem11: TdxLayoutItem;
    cxProyecto: TcxDBLookupComboBox;
    zEpp: TUniQuery;
    PanelFilter: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutItem10: TdxLayoutItem;
    edtInicio: TcxDateEdit;
    dxLayoutItem12: TdxLayoutItem;
    Edtfinal: TcxDateEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxbtnFiltrar: TcxButton;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    CZKEM1: TCZKEM;
    zConfiguracion: TUniQuery;
    cxButton3: TcxButton;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    cxButton2: TcxButton;
    zActualizar: TUniQuery;
    cxView_RequsicionColumn4: TcxGridDBColumn;
    cxView_MaterialesColumn1: TcxGridDBColumn;
    dxLayoutItem17: TdxLayoutItem;
    cxButton4: TcxButton;
    cxHistorial: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    zHistorial: TUniQuery;
    dsHistorial: TDataSource;
    cxView_RequsicionColumn5: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxTabReportes: TcxTabSheet;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    cxButton5: TcxButton;
    dxLayoutItem19: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem20: TdxLayoutItem;
    frxReportEpp: TfrxReport;
    frxDBDatasetEpp: TfrxDBDataset;
    zReports: TUniQuery;
    zPeronalEpp: TUniQuery;
    frxDBDatasetPersonal: TfrxDBDataset;
    cxButton7: TcxButton;
    dxLayoutItem21: TdxLayoutItem;
    cxView_MaterialesColumn3: TcxGridDBColumn;
    cxView_MaterialesColumn6: TcxGridDBColumn;
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPostClick(Sender: TObject);
    procedure cxNombrePropertiesEditValueChanged(Sender: TObject);
    procedure cxNombreExit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure cxView_RequsicionCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxEliminarDetalleClick(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxbtnFiltrarClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxPageDetalleClick(Sender: TObject);
    procedure cxView_RequsicionStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    huella:String;
    port:Integer;
    portAux:Integer;
    ipAddress:String;
    DevID: Integer;
    ZK: TCZKEM;
    { Public declarations }
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
  frmEntregaEquipo: TfrmEntregaEquipo;
  titulo: string;

implementation
  uses frm_connection,UnitGenerales,Comobj,global,frm_agregar_masivoOP_SS7,
  frm_agregar_personal,frm_listado_personal;

  var
        objNBioBSP    : variant;
        objDevice     : variant;
        objExtraction : variant;
        objNSearch    : variant;
        objIndexSearch: variant;
        accion:String;
{$R *.dfm}

procedure TfrmEntregaEquipo.btnAddClick(Sender: TObject);
begin

    global_btnPermisos := '';
    global_frmActivo:='EntregaEpp';
    Application.CreateForm(TfrmAgregarPersonal, frmAgregarPersonal);
    frmAgregarPersonal.show;

//    accion:='add';
//    cxLeyenda.Caption:=titulo + '[Añadiendo]';
//    frmBarraH11.btnAddClick(Sender);
//    panel2.Visible:=True;
//    cxSplitter1.Visible := True;
//    PanelDetalle.Visible := False;
//    cxSplitterOpciones.Visible := False;
//    zEntregaEPP.Append;
//    zEntregaEPP.FieldByName('Codigo').AsString:=autofolio(zEntregaEPP, 'epp_entrega_equipo', connection.uContrato.FieldByName('IdEmpresa').AsInteger, 0,0);
//    zEntregaEPP.FieldByName('FechaEntrega').AsDateTime:=Now();
//    zEntregaEPP.FieldByName('IdPersonal').AsInteger:=zDatosPer.FieldByName('IdPersonal').AsInteger;
//    zEntregaEPP.FieldByName('sNumeroOrden').AsString:=QReferencia.FieldByName('sNumeroOrden').AsString;
//    zEntregaEPP.FieldByName('IdAlmacen').AsString:=Almacen.FieldByName('IdAlmacen').AsString;
end;

procedure TfrmEntregaEquipo.EnterControl(Sender: TObject);
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

procedure TfrmEntregaEquipo.SalidaControl(Sender: TObject);
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

procedure TfrmEntregaEquipo.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmEntregaEquipo.btnCancelClick(Sender: TObject);
begin
  cxLeyenda.Caption:=titulo;
  Panel2.Visible:=False;
  cxSplitter1.Visible := False;
  frmBarraH11.btnActive;
  grid_requsicion.Enabled:=True;
  zDatosPer.Cancel;
  zEntregaEPP.cancel;
end;

procedure TfrmEntregaEquipo.btnDeleteClick(Sender: TObject);
begin
  If MessageDlg('Desea eliminar el registro Seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
     zEntregaEPP.Delete;
     zEntregaEPP.ApplyUpdates();
     zEntregaEPP.Refresh;
   End;
end;

procedure TfrmEntregaEquipo.btnDetalleClick(Sender: TObject);
begin
  PanelDetalle.Visible := not PanelDetalle.Visible;
  cxSplitterOpciones.Visible := not cxSplitterOpciones.Visible;
  if PanelDetalle.Visible then
  begin
    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
      AsignarSQL(zMateriales,'entrada_epp_detalle',pUpdate);
      FiltrarDataSet(zMateriales,'IdPersonal,IdEntregaEquipo',[zEntregaEPP.FieldByName('IdPersonal').AsString,zEntregaEPP.FieldByName('IdEntregaEPP').AsString]);
      zMateriales.Open;
    end;

    if cxPageDetalle.ActivePage = cxHistorial then
    begin
      AsignarSQL(zHistorial,'historial_epp',pUpdate);
      FiltrarDataSet(zHistorial,'IdPersonal',[zEntregaEPP.FieldByName('IdPersonal').AsString]);
      zHistorial.Open;
    end;

  end;
end;

procedure TfrmEntregaEquipo.btnEditClick(Sender: TObject);
begin
    accion:='update';
    cxLeyenda.Caption:=titulo + '[Editando]';
    cxLeyenda2.Caption:='Agregar Materiales';
    frmBarraH11.btnAddClick(Sender);
    panel2.Visible:=True;
    cxSplitter1.Visible := True;
    PanelDetalle.Visible := False;
    cxSplitterOpciones.Visible := false;

    zEntregaEPP.Edit;
end;

procedure TfrmEntregaEquipo.btnPostClick(Sender: TObject);
begin
  zEntregaEPP.Post;
  cxLeyenda.Caption:=titulo;
  btnCancelClick(sender);
  grid_requsicion.Enabled:=True;
  zEntregaEPP.Refresh;

end;

procedure TfrmEntregaEquipo.btnRefreshClick(Sender: TObject);
begin
 zEntregaEPP.Refresh;
end;

procedure TfrmEntregaEquipo.cxbtnFiltrarClick(Sender: TObject);
begin
  AsignarSQL(zEntregaEPP,'entrega_epp',pUpdate);
  FiltrarDataSet(zEntregaEPP,'IdEntregaEPP,FechaI,FechaF',['-1',fechaSQL(edtInicio.EditValue),fechaSQL(Edtfinal.EditValue)]);
  zEntregaEPP.Open;

end;

procedure TfrmEntregaEquipo.cxButton1Click(Sender: TObject);
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
     zEntregaEPP.FieldByName('Confirmacion').AsString:= huella;
     if huella = '' then
     begin
        ShowMessage('No se encotro la huella del personal');
     end;
    end
    else
    ShowMessage('Conectar biometrico!');

end;

procedure TfrmEntregaEquipo.cxButton2Click(Sender: TObject);
var
  //biometrico f22
  i: Integer;
  dwEnrollNumber,dwModel: widestring;
  dwYear,dwMonth,dwDay,dwHour,dwMinute,dwSecond: Integer;
  dwVerifyMode,dwInOutMode,dwWorkCode: integer;
  s: string;
  f: TFileStream;
  Data: TStringList;
  Connect: Boolean;
  ErrorCode: Integer;
  sFecha,sHora: String;

  dwMachineNumber: Integer;
  Name: WideString;
  Password: WideString;
  Privilege: Integer;
  Enabled: WordBool;
  dwFingerIndex: Integer;
  TmpData: WideString;
  TmpLength: Integer;
  horaEntrada:String;
  ban: boolean;
  id:String;
begin
  ban:=False;

 CZKEM1.Connect_Net(ipAddress,port);

  try

    while CZKEM1.SSR_GetGeneralLogData(DevId,dwEnrollNumber,dwVerifyMode,dwInOutMode,
                                  dwYear,dwMonth,dwDay,dwHour,dwMinute,dwSecond,dwWorkCode) do
    begin
        sFecha:=(IntToStr(dwYear)+'-'+IntToStr(dwMonth)+'-'+IntToStr(dwDay));
        sHora:=(IntToStr(dwHour)+':'+IntToStr(dwMinute));
        if zEntregaEPP.Locate('SAPID',dwEnrollNumber,[]) then
        begin
             zActualizar.SQL.Text:= 'call cargar_materal(:IdMa, :IdCat)';
             zActualizar.ParamByName('IdMa').AsInteger:=zEntregaEPP.FieldByName('IdEntregaEPP').AsInteger ;
             zActualizar.ParamByName('IdCat').AsInteger:= zEntregaEPP.FieldByName('IdPuesto').AsInteger;
             zActualizar.ExecSQL;

             zEntregaEPP.Edit;
             zEntregaEPP.FieldByName('Estado').AsString:='Entregado';
             zEntregaEPP.Post;


             cxView_Requsicion.DataController.FocusedRecordIndex;
             if CZKEM1.ClearGLog(DevId) then
              CZKEM1.RefreshData(DevId);

           id:=zEntregaEPP.FieldByName('IdEntregaEPP').AsString;

        end;
    end;

    zEntregaEPP.Refresh;
    if PanelDetalle.Visible then
    begin
      zMateriales.Refresh;
    end
    else
    begin
      PanelDetalle.Visible:=true;
    end;

    zMateriales.Filtered:=True;
    zMateriales.Filter:=' IdEntregaEPP = '+id;
    zMateriales.Filtered:=False;



  except
//    zConfiguracion.Edit;
//    zConfiguracion.FieldByName('Puerto').AsInteger:=4370;
//    zConfiguracion.Post;
//    zConfiguracion.Refresh;
  end;
end;

procedure TfrmEntregaEquipo.cxButton4Click(Sender: TObject);
begin
  CZKEM1.Connect_Net(ipAddress,port);
   if CZKEM1.ClearGLog(DevId) then
    CZKEM1.RefreshData(DevId);
end;

procedure TfrmEntregaEquipo.cxButton5Click(Sender: TObject);
begin
  AsignarSQL(zReports,'epp_personal_reporte',pUpdate);
 // FiltrarDataSet(zPeronalEpp,'FechaInicio,FechaFinal',[fechaSQL(edtInicio.EditValue),fechaSQL(Edtfinal.EditValue)]);
  zReports.Open;

  frxReportEpp.LoadFromFile (global_files + global_miReporte+'_EPP_HistorialEpp.fr3') ;
  frxReportEpp.ShowReport();
end;

procedure TfrmEntregaEquipo.cxButton6Click(Sender: TObject);
begin
  AsignarSQL(zReports,'epp_reporte',pUpdate);
  FiltrarDataSet(zReports,'FechaI,FechaF',[fechaSQL(edtInicio.EditValue),fechaSQL(Edtfinal.EditValue)]);
  zReports.Open;

  frxReportEpp.LoadFromFile (global_files + global_miReporte+'_EPP_EntregaEpp.fr3') ;
  frxReportEpp.ShowReport();
end;

procedure TfrmEntregaEquipo.cxButton7Click(Sender: TObject);
var
orden:Integer;
begin


 Application.CreateForm(TfrmListadoPersonal, frmListadoPersonal);
 frmListadoPersonal.show;

end;

procedure TfrmEntregaEquipo.cxEliminarDetalleClick(Sender: TObject);
begin
  If MessageDlg('Desea eliminar el registro Seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
     zMateriales.Delete;
     zMateriales.ApplyUpdates();
     zMateriales.Refresh;
   End;
end;

procedure TfrmEntregaEquipo.cxNombreExit(Sender: TObject);
begin
  cxNombre.Style.Color := global_color_salidaERP;
  if (dsEntregaEPP.State = dsInsert) or (dsEntregaEPP.State = dsEdit) then
  begin
  if zDatosPer.locate('IdPersonal',cxNombre.EditValue ,[]) then

    dsEntregaEPP.dataset.FieldByName('TallaBotas').value:=zDatosPer.FieldByName('NoCalzado').value;
    dsEntregaEPP.dataset.FieldByName('TallaOverol').value:=zDatosPer.FieldByName('Talla').value;
    huella:= zDatosPer.FieldByName('ImgHuella').AsString;
  end;
end;

procedure TfrmEntregaEquipo.cxNombrePropertiesEditValueChanged(Sender: TObject);
begin
if (dsEntregaEPP.State = dsInsert) or (dsEntregaEPP.State = dsEdit) then
   cxProyecto.setfocus;
end;

procedure TfrmEntregaEquipo.cxNuevoDetalleClick(Sender: TObject);
begin
    global_frmActivo:='EntregaEPP';
    Application.CreateForm(TfrmAgregarMasivoOP_SS7, frmAgregarMasivoOP_SS7);
    Application.NormalizeAllTopMosts;
    frmAgregarMasivoOP_SS7.show;
end;

procedure TfrmEntregaEquipo.cxPageDetalleClick(Sender: TObject);
begin
    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
      AsignarSQL(zMateriales,'entrada_epp_detalle',pUpdate);
      FiltrarDataSet(zMateriales,'IdPersonal,IdEntregaEquipo',[zEntregaEPP.FieldByName('IdPersonal').AsString,zEntregaEPP.FieldByName('IdEntregaEPP').AsString]);
      zMateriales.Open;
    end;

    if cxPageDetalle.ActivePage = cxHistorial then
    begin
      AsignarSQL(zHistorial,'historial_epp',pUpdate);
      FiltrarDataSet(zHistorial,'IdPersonal',[zEntregaEPP.FieldByName('IdPersonal').AsString]);
      zHistorial.Open;
    end;
end;

procedure TfrmEntregaEquipo.cxView_RequsicionCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if cxView_Requsicion.DataController.Filter.FilterText = '' then
    begin
        zEntregaEPP.Filtered := False;
    end
    else
        zEntregaEPP.Filtered := True;

  if PanelDetalle.Visible then
  begin
    if cxPageDetalle.ActivePage = cxTabMaterial then
    begin
      AsignarSQL(zMateriales,'entrada_epp_detalle',pUpdate);
      FiltrarDataSet(zMateriales,'IdPersonal,IdEntregaEquipo',[zEntregaEPP.FieldByName('IdPersonal').AsString,zEntregaEPP.FieldByName('IdEntregaEPP').AsString]);
      zMateriales.Open;
    end;

    if cxPageDetalle.ActivePage = cxHistorial then
    begin
      AsignarSQL(zHistorial,'historial_epp',pUpdate);
      FiltrarDataSet(zHistorial,'IdPersonal',[zEntregaEPP.FieldByName('IdPersonal').AsString]);
      zHistorial.Open;
    end;
  end;
end;

procedure TfrmEntregaEquipo.cxView_RequsicionStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if (ARecord.Values[cxView_RequsicionColumn4.Index] = 'Entregado')  then
   begin
     AStyle := TcxStyle.Create(nil);
     AStyle.Color:=connection.cxStyValido.Color;
   end
   else
   begin
     AStyle := TcxStyle.Create(nil);
     AStyle.Color:=connection.cxStyRechazo.Color;
   end;
end;

procedure TfrmEntregaEquipo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
end;

procedure TfrmEntregaEquipo.FormShow(Sender: TObject);
begin
    Panel2.Visible := False;
    cxSplitter1.Visible := False;
    titulo:='Entrega de Equipo de Proteccion';

    cxLeyenda.Caption:=titulo;

    AsignarSQL(Almacen,'almacenXusuario',pUpdate);
    FiltrarDataSet(Almacen,'Almacen,Usuario',[4,GLOBAL_USUARIO]);
    Almacen.Open;

    cxSplitterOpciones.Visible := False;
    PanelDetalle.Visible       := False;

    AsignarSQL(zEntregaEPP,'entrega_epp',pUpdate);
    FiltrarDataSet(zEntregaEPP,'IdEntregaEPP,FechaI,FechaF',['-1',fechaSQL(Date()),fechaSQL(Date())]);
    zEntregaEPP.Open;

    AsignarSQL(zDatosPer,'master_personal_salida',pUpdate);
    zDatosPer.Open;

    QReferencia.Active:= False;
    AsignarSQL(QReferencia,'ordenesdetrabajo_presu_val',pUpdate);
    FiltrarDataSet(QReferencia,'Contrato, Tipo,Estatus',[global_contrato, 'ORDEN_TRABAJO','-1']);
    QReferencia.Open;

    AsignarSQL(zConfiguracion,'configuracion_biometrico',pUpdate);
    FiltrarDataSet(zConfiguracion,'Ubicacion',['ControlEPP']);
    zConfiguracion.Open;

    port:=zConfiguracion.FieldByName('Puerto').AsInteger;
    ipAddress:=zConfiguracion.FieldByName('Direccion_ip').AsString;

    edtInicio.EditValue:=Date();
    Edtfinal.EditValue:=Date();

    CZKEM1.Connect_Net(ipAddress,port);
     if CZKEM1.ClearGLog(DevId) then
      CZKEM1.RefreshData(DevId);

end;

end.
