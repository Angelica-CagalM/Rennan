unit frm_diaslaborados;

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
  cxProgressBar, cxGroupBox;

type
  TfrmDiasLaborados = class(TForm)
    ds_asistencias: TDataSource;
    frxAsistencia: TfrxReport;
    PopupMenu1: TPopupMenu;
    ds_empleados: TDataSource;
    ds_folios: TDataSource;
    zFolios: TZReadOnlyQuery;
    Panel3: TPanel;
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
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    BView_EmpleadosColumn2: TcxGridDBColumn;
    PanelLateral: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem2: TdxLayoutItem;
    PanelBotones: TPanel;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxGuardarDetalle: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    cxCancelarDetalle: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem9: TdxLayoutItem;
    dsRem: TDataSource;
    Reembolso: TUniQuery;
    ColNom: TcxGridDBColumn;
    ColMes: TcxGridDBColumn;
    ColNota: TcxGridDBColumn;
    Cantidad: TcxGridDBColumn;
    Personal: TUniQuery;
    dsPersonal: TDataSource;
    PanelCentro: TPanel;
    cxPageDetalle: TcxPageControl;
    pageReembolso: TcxTabSheet;
    PageBonos: TcxTabSheet;
    Panel2: TPanel;
    cxGrid2: TcxGrid;
    GridBonos: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxLayoutControl3: TdxLayoutControl;
    CbPersonasB: TcxDBLookupComboBox;
    NotasB: TcxDBMemo;
    FechaB: TcxDBDateEdit;
    MontoB: TcxDBCurrencyEdit;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    zBonos: TUniQuery;
    dsBonos: TDataSource;
    temG: TUniQuery;
    btnCargarXML: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dlgSavePDF: TSaveDialog;
    dlgPDF: TFileOpenDialog;
    XML: TXMLDocument;
    DoctoXML: TUniQuery;
    Documento: TcxGridDBColumn;
    dsDoctoXML: TDataSource;
    iconPDF_XML: TcxImageList;
    cxTabSheet1: TcxTabSheet;
    Panel4: TPanel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    dxLayoutControl4: TdxLayoutControl;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBMemo2: TcxDBMemo;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    zTiempo: TUniQuery;
    dsTiempo: TDataSource;
    cxTabSheet2: TcxTabSheet;
    Panel5: TPanel;
    dxLayoutControl5: TdxLayoutControl;
    cxDBMemo3: TcxDBMemo;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    zAnticipo: TUniQuery;
    dsAnticipo: TDataSource;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem17: TdxLayoutItem;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    temE: TUniQuery;
    PanelCenral: TPanel;
    PanelDatos: TPanel;
    Splitter1: TSplitter;
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
    cxDBLookupComboBox3: TcxDBLookupComboBox;
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
    cxGridEmpleado: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    FechaI: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    DiasPersonal: TUniQuery;
    dsDiasPersonal: TDataSource;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutItem34: TdxLayoutItem;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    db: TdxLayoutItem;
    cxDBTimeEdit1: TcxDBTimeEdit;
    dxLayoutItem35: TdxLayoutItem;
    cxDBTimeEdit2: TcxDBTimeEdit;
    dxLayoutItem36: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem37: TdxLayoutItem;
    Ubicacion: TUniQuery;
    dsUbicacion: TDataSource;
    Puesto: TUniQuery;
    dsPuesto: TDataSource;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    dxLayoutItem38: TdxLayoutItem;
    dsTemG: TDataSource;
    Empresa: TUniQuery;
    dsEmpresa: TDataSource;
    colEmpresa: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
    colCheck: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    cxDBComboBox2: TcxDBComboBox;
    dxLayoutItem39: TdxLayoutItem;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    dxLayoutItem40: TdxLayoutItem;
    Panel6: TPanel;
    dxLayoutControl7: TdxLayoutControl;
    btnExpExcel: TcxButton;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutItem42: TdxLayoutItem;
    zGuar: TUniQuery;
    dsGuar: TDataSource;
    frxMailNominas: TfrxMailExport;
    Panel7: TPanel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    chkContinuo: TCheckBox;
    cxCompacto: TcxCheckBox;
    CheckValidar: TCheckBox;
    CheckCompleto: TCheckBox;
    Label1: TLabel;
    dFechaInicio: TcxDateEdit;
    Label14: TLabel;
    dFechaTermino: TcxDateEdit;
    Label3: TLabel;
    cxLeyenda: TcxLabel;
    CheckDescuento: TCheckBox;
    frmBarraH11: TfrmBarraH1;
    cxButton9: TcxButton;
    cxGuardias: TcxLookupComboBox;
    cxGroupViaje: TcxGroupBox;
    dxLayoutItem41: TdxLayoutItem;
    cxCheckViaje: TcxCheckBox;
    dxLayoutItem43: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutControl8Group_Root: TdxLayoutGroup;
    dxLayoutControl8: TdxLayoutControl;
    cbFechaI: TcxDBDateEdit;
    dxLayoutItem44: TdxLayoutItem;
    cbFechaF: TcxDBDateEdit;
    dxLayoutItem45: TdxLayoutItem;
    cbPolitica: TcxDBComboBox;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    edtTotal: TcxDBTextEdit;
    dxLayoutItem47: TdxLayoutItem;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    panelAdd: TPanel;
    Grid_cuadrilla: TcxGridDBTableView;
    cxGrid_cuadrillaLevel1: TcxGridLevel;
    cxGrid_cuadrilla: TcxGrid;
    Panel8: TPanel;
    zEmTemporal: TUniQuery;
    dsEmTemporal: TDataSource;
    colName: TcxGridDBColumn;
    btnAddpersonal: TcxButton;
    btnCancelarAdd: TcxButton;
    zAdd: TUniQuery;
    zActualiza: TUniQuery;
    mLista: TdxMemData;
    Grid_cuadrillaColumn1: TcxGridDBColumn;
    mListaCodigo: TStringField;
    mListaNombre: TStringField;
    CheckAutorizar: TCheckBox;
    chkColores: TCheckBox;
    cxGridDBTableView3Column4: TcxGridDBColumn;
    CxGridAsistenciaPersonalColumn1: TcxGridDBColumn;
    procedure tsIdCategoriaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsIdFolioKeyPress(Sender: TObject; var Key: Char);
    procedure BView_EmpleadosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CxGridAsistenciaPersonalDblClick(Sender: TObject);
    procedure BView_EmpleadosDblClick(Sender: TObject);
    procedure cxImprimirMontoMNClick(Sender: TObject);
    procedure ImprimeReporte;
    procedure frxAsistenciaGetValue(const VarName: string; var Value: Variant);
    procedure cxImprimirClick(Sender: TObject);
    procedure cxImprimirNClick(Sender: TObject);
    procedure ImprimirNomina;
    procedure ImprimirNominaOP;
    procedure NominaEmbarcacion;
    procedure cbGuardiasPropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure CheckCompletoClick(Sender: TObject);
    procedure CheckDescuentoClick(Sender: TObject);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxCancelarDetalleClick(Sender: TObject);
    procedure cxGuardarDetalleClick(Sender: TObject);
    procedure fechasDetalle;


    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnCargarXMLClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnNominasClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure cxGridDBTableView4CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnExpExcelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxGuardiasExit(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxCheckViajeClick(Sender: TObject);
    procedure cbPoliticaExit(Sender: TObject);
    procedure calcular;
    procedure cbFechaIExit(Sender: TObject);
    procedure cbFechaFExit(Sender: TObject);
    procedure cbPoliticaPropertiesChange(Sender: TObject);
    procedure cxDBCurrencyEdit1Exit(Sender: TObject);
    procedure dFechaTerminoExit(Sender: TObject);
    procedure dFechaInicioExit(Sender: TObject);
    procedure btnCancelarAddClick(Sender: TObject);
    procedure frmBarraH11btnAddClick(Sender: TObject);
    procedure btnAddpersonalClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnExportaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
 const
	InputBoxMessage = WM_USER + 200;

var
  frmDiasLaborados: TfrmDiasLaborados;
  sFirma_PEP, sPuesto_PEP, sFirma_Contratista, sPuesto_Contratista: string;
  fechaAntes: tDate;

  local_global_pernocta, local_tipo, sTipoGenerador, sTipoMoneda : string;
  id:String;
  btnPermisos,Personales : String;
  ArrayFirmas: TStringArray;
  ArrayGuardias: Array of String;
  ArrayGuardias2: TStringArray;
  y,valor:Integer;
  FechaC,FechaT:TDate;
  zUser:TUniQuery;
  aplica:Boolean;
implementation
uses
  frm_VerPDF,UnitReportes;
{$R *.dfm}

procedure TfrmDiasLaborados.tsIdCategoriaKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
      cxGridAsistencia.SetFocus
end;

procedure TfrmDiasLaborados.tsIdFolioKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key =#13 then
       cxGridAsistencia.SetFocus;
end;


procedure TfrmDiasLaborados.FormShow(Sender: TObject);
var x:Integer;
guard:String;
begin
  btnPermisos := global_btnPermisos;
  dFechaInicio.EditValue := Date();
  dFechaTermino.EditValue := Date();
  CxGridAsistenciaPersonal.Columns[0].Visible:=false;
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
  zEmTemporal.Active:=False;
  zEmTemporal.SQL.Text:='select CodigoPersonal, CONCAT(Nombre,'' '',APaterno,'' '',AMaterno) as nombre from master_personal where Activo = :activo';
  zEmTemporal.ParamByName('activo').AsString:='Si';
  zEmTemporal.Open;

  cxGuardias.ItemIndex:=0;
  Personal.Active:=False;
  Personal.Open;
  PermisosBotones(frmDiasLaborados,btnPermisos);

end;

procedure TfrmDiasLaborados.frmBarraH11btnAddClick(Sender: TObject);
begin
 panelAdd.Visible:=True;
 panelAdd.Height  := 300;
 panelAdd.Width   := 1000;
 panelAdd.Left    := 222;
 panelAdd.Top     := 26;
end;

procedure TfrmDiasLaborados.frxAsistenciaGetValue(const VarName: string;
  var Value: Variant);
begin
     if CompareText(VarName, 'COMPACTO') = 0 then
  begin
     if cxCompacto.Checked then
       Value := 'Si'
     else
       Value := 'No';
  end;

  if CompareText(VarName, 'COLORES') = 0 then
  begin
     if chkColores.Checked then
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

procedure TfrmDiasLaborados.btnNominasClick(Sender: TObject);
begin
  empleados.CancelUpdates;
  procReporteNominasEB2(chkContinuo.Checked, dFechaInicio.Date, dFechaTermino.Date, frmDiasLaborados, frxAsistencia.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.uConnection, global_grupo, 'reporteBarco'),id,'ABORDO');
end;

procedure TfrmDiasLaborados.btnPostClick(Sender: TObject);
begin
  DiasLaboradosM.Post;
  DiasLaboradosM.Refresh;
  btnCancelClick(Sender);
end;

procedure TfrmDiasLaborados.btnPrinterClick(Sender: TObject);
begin
  if cxGuardias.Text='TODOS' then
  begin
    generar_reporte_grid(CxGridAsistenciaPersonal,'Reporte General de Asistencias.');
  end
  else
  begin
    BView_Empleados.DataController.Groups.FullExpand;
    ImprimeReporte;
  end;

end;

procedure TfrmDiasLaborados.btnRefreshClick(Sender: TObject);
begin
    DiasLaboradosM.Refresh;
end;

procedure TfrmDiasLaborados.BView_EmpleadosCellClick(
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

procedure TfrmDiasLaborados.BView_EmpleadosDblClick(Sender: TObject);
begin
    if BView_Empleados.OptionsView.CellAutoHeight then
       BView_Empleados.OptionsView.CellAutoHeight := False
    else
       BView_Empleados.OptionsView.CellAutoHeight := True;
end;

procedure TfrmDiasLaborados.calcular;
var
total:Integer;
dias:String;
begin
  dias:=IntToStr(DaysBetween(StrToDate(cbFechaI.Text), StrToDate(cbFechaF.Text)));
  Total:=(StrToInt(Dias)+1)*Valor;
  doctoXML.FieldByName('Monto').AsFloat:= total;
  doctoXML.FieldByName('Cantidad').AsFloat:=total;
end;

procedure TfrmDiasLaborados.cbFechaFExit(Sender: TObject);
begin
  calcular;
  SalidaControl(Sender);
end;

procedure TfrmDiasLaborados.cbFechaIExit(Sender: TObject);
begin
  calcular;
  SalidaControl(Sender);
end;

procedure TfrmDiasLaborados.cbGuardiasPropertiesChange(Sender: TObject);
var Guar,guar2:String;
j,i:Integer;
 ids:String;
begin


end;

procedure TfrmDiasLaborados.cbPoliticaExit(Sender: TObject);
begin

  if cbPolitica.ItemIndex = 0 then
  begin
    valor:=500;
  end;
  if cbPolitica.ItemIndex = 1 then
  begin
    valor:=500;
  end;
  if cbPolitica.ItemIndex = 2 then
  begin
    valor:=500;
  end;
  SalidaControl(Sender);
end;

procedure TfrmDiasLaborados.cbPoliticaPropertiesChange(Sender: TObject);
begin
 //cbFechaI.SetFocus;
end;

procedure TfrmDiasLaborados.CheckCompletoClick(Sender: TObject);
begin
  if CheckCompleto.Checked=True then
  begin
    CheckDescuento.Checked:=False;
  end;
end;

procedure TfrmDiasLaborados.CheckDescuentoClick(Sender: TObject);
begin
  if CheckDescuento.Checked=True then
  begin
    CheckCompleto.Checked:=False;
  end;
end;

procedure TfrmDiasLaborados.cxButton1Click(Sender: TObject);
begin
   ImprimirNominaOP;
end;

procedure TfrmDiasLaborados.cxButton2Click(Sender: TObject);
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
      FechaC:= dFechaInicio.EditValue; //empleados.FieldByName('FechaInicio').AsDateTime;
      FechaT:= dFechaTermino.EditValue; //empleados.FieldByName('FechaFinal').AsDateTime;
    Except

    end;

  NominaEmbarcacion;
end;

procedure TfrmDiasLaborados.cxButton9Click(Sender: TObject);
var
   mesI, mesF : string;
   sTipoObra : string;
   sFiltroFolio : string;
   personalGrid : String;
   contPerGrid, j : Integer;
begin
  contPerGrid := BView_Empleados.ViewData.RecordCount;
  for j := 0 to (contPerGrid - 1) do
  begin
      personalGrid := personalGrid + BView_Empleados.ViewData.Rows[j].Values[1] +',';
  end;
  ReporteDescuentos(CheckCompleto.Checked, dFechaInicio.Date, dFechaTermino.Date, frmDiasLaborados, frxAsistencia.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.uConnection, global_grupo, 'reporteBarco'),id,personalGrid);
end;

procedure TfrmDiasLaborados.btnAddpersonalClick(Sender: TObject);
var
    zActualiza : tUniquery;
    indice, iGrid    : integer;
    lContinua : boolean;
    SavePlace, SavePlace2 : TBookMark;
    x:integer;
begin
    x:=0;
    iGrid     := 0;
    indice := Grid_cuadrilla.DataController.GetSelectedRowIndex(iGrid);
    Grid_cuadrilla.DataController.FocusedRowIndex := indice;

    with Grid_cuadrilla.DataController.DataSource.DataSet do
    for iGrid := 0 to Grid_cuadrilla.DataController.GetSelectedCount - 1 do
    begin
        indice := Grid_cuadrilla.DataController.GetSelectedRowIndex(iGrid);
        Grid_cuadrilla.DataController.FocusedRowIndex := indice;

     Personales := Personales + zEmTemporal.FieldByName('CodigoPersonal').AsString +',';
    end;
   aplica:=true;
 panelAdd.Visible:=False;
end;

procedure TfrmDiasLaborados.btnCancelarAddClick(Sender: TObject);
begin
  panelAdd.Visible:=False;
end;

procedure TfrmDiasLaborados.btnCancelClick(Sender: TObject);
begin
 frmBarraH11.btnActive;
 DiasLaboradosM.Cancel;
 panelDatos.Visible:=False;
end;

procedure TfrmDiasLaborados.btnCargarXMLClick(Sender: TObject);
var
  Total,res: Double;
  BlobStream : TStream;
  FileStream : TFileStream;
  zUUID : TUniquery;
  Ext, sArchivo : string;
  Archivo, UUID   : string;
begin
  try
    Total:=doctoXML.FieldByName('Monto').AsFloat;
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


        if res>0 then
          doctoXML.FieldByName('Monto').AsFloat:=Total-TraerTotalXML(Archivo,XML)
        else
          doctoXML.FieldByName('Monto').AsFloat:=0;
        doctoXML.FieldByName('UUID_XML').AsString := UUID;
        doctoXML.FieldByName('Icono').AsInteger := 0;
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

procedure TfrmDiasLaborados.btnDeleteClick(Sender: TObject);
begin
  If MessageDlg('Desea eliminar ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
     DiasLaboradosM.Delete;
     DiasLaboradosM.ApplyUpdates();
   end;
end;

procedure TfrmDiasLaborados.btnDetalleClick(Sender: TObject);
begin
   cxSplitter2.Visible:=not cxSplitter2.Visible;
   PanelLateral.Visible:=not PanelLateral.Visible;
end;

procedure TfrmDiasLaborados.btnEditClick(Sender: TObject);
begin
  frmBarraH11.btnEditClick(Sender);
  PanelDatos.Visible:= True;
  DiasLaboradosM.Edit;
  cxDBLookupComboBox4.SetFocus;
end;

procedure TfrmDiasLaborados.btnExpExcelClick(Sender: TObject);
begin
   if cxPageDetalle.ActivePageIndex = 0  then
     ExportarToExcel(cxGrid1)
   else if cxPageDetalle.ActivePageIndex = 1 then
     ExportarToExcel(cxGrid2)
   else if cxPageDetalle.ActivePageIndex = 2 then
    ExportarToExcel(cxGrid3)
   else if cxPageDetalle.ActivePageIndex = 3 then
    ExportarToExcel(cxGrid4);
end;

procedure TfrmDiasLaborados.btnExportaClick(Sender: TObject);
begin
ExportarToExcel(cxGridAsistencia);
end;

procedure TfrmDiasLaborados.cxCancelarDetalleClick(Sender: TObject);
begin
   if cxPageDetalle.ActivePageIndex = 0 then
   begin
    dxLayoutControl1.Visible:=False;
    DoctoXML.Cancel;
   end;
   if cxPageDetalle.ActivePageIndex = 1 then
   begin
    dxLayoutControl3.Visible:=False;
    zBonos.Cancel;
   end;
   if cxPageDetalle.ActivePageIndex = 2 then
   begin
    dxLayoutControl4.Visible:=False;
    zTiempo.Cancel;
   end;
   if cxPageDetalle.ActivePageIndex = 3 then
   begin
    dxLayoutControl5.Visible:=False;
    zAnticipo.Cancel;
   end;
end;

procedure TfrmDiasLaborados.cxCheckViajeClick(Sender: TObject);
begin
  cxGroupViaje.Enabled:= not cxGroupViaje.Enabled;
  cbFechaI.Date:=now;
  cbFechaF.Date:=now;
end;

procedure TfrmDiasLaborados.cxDBCurrencyEdit1Exit(Sender: TObject);
begin
    if cbPolitica.text='' then
       edtTotal.Text:=cxDBCurrencyEdit1.Text;
    SalidaControl(Sender);
end;

procedure TfrmDiasLaborados.cxEditaDetalleClick(Sender: TObject);
begin
   if cxPageDetalle.ActivePageIndex = 0 then
   begin
    dxLayoutControl1.Visible:=True;
    AsignarSQL(DoctoXML,'rh_reembolso_doctoVP',pUpdate);
    FiltrarDataSet(DoctoXML, 'IdReembolso',[Reembolso.FieldByName('IdReembolso').AsInteger]);
    DoctoXML.Open;

    DoctoXML.Edit;


    if Reembolso.FieldByName('Politica').AsString<>'' then
      cxCheckViaje.Enabled:=False
     else
      cxCheckViaje.Enabled:=true;

   end;
  if cxPageDetalle.ActivePageIndex = 1 then
   begin
    dxLayoutControl3.Visible:=True;
    zBonos.Edit;
   end;
  if cxPageDetalle.ActivePageIndex = 2 then
   begin
    dxLayoutControl4.Visible:=True;
    zTiempo.Edit;
   end;
  if cxPageDetalle.ActivePageIndex = 3 then
   begin
    dxLayoutControl5.Visible:=True;
    zAnticipo.Edit;
   end;
end;

procedure TfrmDiasLaborados.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var Ext:String;
begin
  if Reembolso.RecordCount > 0 then
  begin
    AsignarSQL(DoctoXML,'rh_reembolso_doctoVP',pUpdate);
    FiltrarDataSet(DoctoXML, 'IdReembolso',[Reembolso.FieldByName('IdReembolso').AsInteger]);
    DoctoXML.Open;
    if not DoctoXML.FieldByName('DocumentoDigital').IsNull then
    begin
      if not DoctoXML.FieldByName('NombreDocto').IsNull then
        global_Temp := DoctoXML.FieldByName('NombreDocto').AsString
      else
        global_Temp := 'reembolso_sin_nombre'+'.pdf';

      TBlobField(DoctoXML.FieldByName('DocumentoDigital')).SaveToFile( ExtractFilePath(Application.ExeName)+global_Temp );

      Ext := ExtractFileExt(global_Temp);
      if ( Ext = '.PDF' ) or ( Ext = '.pdf' )  then
      begin
        Application.CreateForm(TFrmVerPDF, FrmVerPDF);
        FrmVerPDF.Caption := global_Temp;
        FrmVerPDF.ShowModal;
      end
      else
      begin
        ShellExecute(frmDiasLaborados.Handle,nil,PChar(ExtractFilePath(Application.ExeName)+global_Temp),'','',SW_SHOWNORMAL);
       // if FileExists(ExtractFilePath(Application.ExeName)+global_Temp) then
         // DeleteFile(ExtractFilePath(Application.ExeName)+global_Temp);
      end;
    end
    else
      ShowMessage('No existe archivo del documento seleccionado.');
  end;
end;

procedure TfrmDiasLaborados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmDiasLaborados.CxGridAsistenciaPersonalDblClick(Sender: TObject);
begin
   if CxGridAsistenciaPersonal.OptionsView.CellAutoHeight then
       CxGridAsistenciaPersonal.OptionsView.CellAutoHeight := False
    else
       CxGridAsistenciaPersonal.OptionsView.CellAutoHeight := True;
end;

procedure TfrmDiasLaborados.cxGridDBTableView4CellClick(
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

procedure TfrmDiasLaborados.cxGuardarDetalleClick(Sender: TObject);
begin
  if cxPageDetalle.ActivePageIndex = 0 then
   begin
    DoctoXML.Post;
    Reembolso.Refresh;
    cxGroupViaje.Enabled:= False;
   end;
   if cxPageDetalle.ActivePageIndex = 1 then
   begin
    zBonos.Post;
    zBonos.Refresh;
   end;
  if cxPageDetalle.ActivePageIndex = 2 then
   begin
    zTiempo.Post;
    zTiempo.Refresh;
   end;
  if cxPageDetalle.ActivePageIndex = 3 then
   begin
    zAnticipo.Post;
   end;
  cxCancelarDetalleClick(Sender);
end;

procedure TfrmDiasLaborados.cxImprimirClick(Sender: TObject);
begin
  BView_Empleados.DataController.Groups.FullExpand;
  ImprimeReporte;
end;

procedure TfrmDiasLaborados.cxImprimirMontoMNClick(Sender: TObject);
begin
   sTipoMoneda := 'MN';
   sTipoGenerador := 'CantidadMonto';
   ImprimeReporte;
end;

procedure TfrmDiasLaborados.cxImprimirNClick(Sender: TObject);
begin
ImprimirNomina
end;

procedure TfrmDiasLaborados.cxGuardiasExit(Sender: TObject);
begin
    SalidaControl(Sender);
end;

procedure TfrmDiasLaborados.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
  if(cxGuardias.EditValue = -1)then
  begin
    asistencias.Active:=False;
    AsignarSQL(asistencias,'FiltroFechas',pUpdate);
    FiltrarDataSet(asistencias,'IdPersonal,fecha_inicio_filtrar,fecha_termino_filtrar',['-1','-1','-1']);
    asistencias.Open;
    Panel1.Visible:=False;
    CxGridAsistenciaPersonal.Columns[0].Visible:=True;
  end
  else
  begin
    CxGridAsistenciaPersonal.Columns[0].Visible:=false;
    Panel1.Visible:=True;
    cxGridDBTableView3Column4.Visible:=True;
    Empleados.Filtered := False;
    id:=cxGuardias.EditValue;
    empleados.Active:=False;
    try
      FechaC:=empleados.FieldByName('FechaInicio').AsDateTime;
      FechaT:=empleados.FieldByName('FechaFinal').AsDateTime;
    except
      ;
    end;
  end;

end;

procedure TfrmDiasLaborados.cxNuevoDetalleClick(Sender: TObject);
begin
  if cxPageDetalle.ActivePageIndex = 0 then
   begin
    dxLayoutControl1.Visible:=True;
    AsignarSQL(DoctoXML,'rh_reembolso_doctoVP',pUpdate);
    //FiltrarDataSet(DoctoXML, 'IdReembolso',[Reembolso.FieldByName('IdReembolso').AsInteger])
    FiltrarDataSet(DoctoXML, 'IdReembolso',[-9]);
    DoctoXML.Open;
    cxCheckViaje.Enabled:=true;
    DoctoXML.Append;
   end;
   if cxPageDetalle.ActivePageIndex = 1 then
   begin
    dxLayoutControl3.Visible:=True;
    zBonos.Append;
   end;
   if cxPageDetalle.ActivePageIndex = 2 then
   begin
    dxLayoutControl4.Visible:=True;
    zTiempo.Append;
    id := StringReplace(id, ' ', '', [rfReplaceAll]);
    zTiempo.FieldByName('IdGuardia').Asinteger:= strToInt(id);
   end;
   if cxPageDetalle.ActivePageIndex = 3 then
   begin
    dxLayoutControl5.Visible:=True;
    zAnticipo.Append;
    zAnticipo.FieldByName('IdGuardia').AsInteger:= StrToInt(StringReplace(Id, ' ', '', [rfReplaceAll]));
   end;
end;

procedure TfrmDiasLaborados.dFechaInicioExit(Sender: TObject);
begin
fechasDetalle;
end;

procedure TfrmDiasLaborados.dFechaTerminoExit(Sender: TObject);
begin
fechasDetalle;
end;

procedure TfrmDiasLaborados.ImprimeReporte;
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
        if BView_Empleados.ViewData.Rows[j].Values[3] = 'Si' then
        begin
          personalGrid := personalGrid + BView_Empleados.ViewData.Rows[j].Values[1] +',';
        end;
      end;

      procReporteDiasLaborados(CheckCompleto.Checked, dFechaInicio.Date, dFechaTermino.Date, frmDiasLaborados, frxAsistencia.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.uConnection, global_grupo, 'reporteBarco'),id,personalGrid,Personales);

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Dias Laborados', 'Al imprimir', 0);
    end;
  end;
end;

procedure TfrmDiasLaborados.ImprimirNomina;
var
  p,personalGrid : String;
   contPerGrid, j : Integer;
begin
  contPerGrid := BView_Empleados.ViewData.RecordCount;
  for j := 0 to (contPerGrid - 1) do
  begin

    if BView_Empleados.ViewData.Rows[j].Values[3] = 'Si' then
    begin
      personalGrid := personalGrid + BView_Empleados.ViewData.Rows[j].Values[1] +',';
    end;

  end;
  empleados.CancelUpdates;
   if CheckValidar.Checked=True then
  begin
    zValidar.Append;
    zValidar.FieldByName('Nombre').AsString:=global_nombre;
    zValidar.FieldByName('IdGuardia').AsString:=empleados.FieldByName('IdGuardiaDetalle').AsString;
    zValidar.FieldByName('Fecha').value:=Date;
    zValidar.FieldByName('Tipo').AsString:='ADMINISTRACION';
    zValidar.Post;
  end;
  if CheckCompleto.Checked=True then
  begin
    procReporteNominasCompleta(chkContinuo.Checked, FechaC, FechaT, dFechaInicio.Date, dFechaTermino.Date, frmDiasLaborados, frxAsistencia.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.uConnection, global_grupo, 'reporteBarco'),
    id,empleados.FieldByName('IdGuardiaDetalle').AsString,'ADMINISTRACION',personalGrid);
  end
  else
  begin
    procReporteNominasRH(chkContinuo.Checked, FechaC, FechaT, dFechaInicio.Date, dFechaTermino.Date, frmDiasLaborados, frxAsistencia.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.uConnection, global_grupo, 'reporteBarco'),
    id,empleados.FieldByName('IdGuardiaDetalle').AsString,'ADMINISTRACION',personalGrid);
  end;
end;

procedure TfrmDiasLaborados.ImprimirNominaOP;
Var
  p,personalGrid : String;
  contPerGrid, j : Integer;
    pwd : String;
begin
  contPerGrid := BView_Empleados.ViewData.RecordCount;
  for j := 0 to (contPerGrid - 1) do
  begin

    if BView_Empleados.ViewData.Rows[j].Values[3] = 'Si' then
    begin
      personalGrid := personalGrid + BView_Empleados.ViewData.Rows[j].Values[1] +',';
    end;

  end;
  empleados.CancelUpdates;
  if CheckValidar.Checked then
  begin
      if global_grupo = 'ADMON' then
      begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.text :='select AES_DECRYPT(u.sPassword,"AES2016") as sPassword from usuarios u where sIdUsuario = :usuario and lActivo="Si"';
        connection.QryBusca.params.ParamByName('Usuario').DataType := ftString;
        connection.QryBusca.ParamByName('Usuario').AsString := global_usuario;
        connection.QryBusca.Open;
        if connection.QryBusca.RecordCount > 0 then
        begin
          PostMessage(Handle, InputBoxMessage, 0, 0);
          pwd:=InputBox('¡Seguridad de Conexiones!', 'Ingresar contraseña:','');
          if pwd = connection.QryBusca.FieldByName('sPassWord').AsString then
          begin
            zValidar.Append;
            zValidar.FieldByName('Nombre').AsString:=global_nombre;
            zValidar.FieldByName('IdGuardia').AsString:=empleados.FieldByName('IdGuardiaDetalle').AsString;
            zValidar.FieldByName('Fecha').value:=FechaC;
            zValidar.FieldByName('Tipo').AsString:='OPERACIONES';
            zValidar.FieldByName('TipoValidacion').AsString:='VALIDAR';
            zValidar.Post;
          end
          else
            ShowMessage('La contraseña no corresponde a su usuario, intente de nuevo.');
        end;
      end
      else
        ShowMessage('Su usuario no es del grupo administrador, acceso denegado.');
    end;

  if CheckAutorizar.Checked then
  begin
      if global_grupo = 'ADMON' then
      begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.text :='select AES_DECRYPT(u.sPassword,"AES2016") as sPassword from usuarios u where sIdUsuario = :usuario and lActivo="Si"';
        connection.QryBusca.params.ParamByName('Usuario').DataType := ftString;
        connection.QryBusca.ParamByName('Usuario').AsString := global_usuario;
        connection.QryBusca.Open;
        if connection.QryBusca.RecordCount > 0 then
        begin
          PostMessage(Handle, InputBoxMessage, 0, 0);
          pwd:=InputBox('¡Seguridad de Conexiones!', 'Ingresar contraseña:','');
          if pwd = connection.QryBusca.FieldByName('sPassWord').AsString then
          begin
            zValidar.Append;
            zValidar.FieldByName('Nombre').AsString:=global_nombre;
            zValidar.FieldByName('IdGuardia').AsString:=empleados.FieldByName('IdGuardiaDetalle').AsString;
            zValidar.FieldByName('Fecha').value:=FechaC;
            zValidar.FieldByName('Tipo').AsString:='OPERACIONES';
            zValidar.FieldByName('TipoValidacion').AsString:='AUTORIZAR';
            zValidar.Post;
          end
          else
            ShowMessage('La contraseña no corresponde a su usuario, intente de nuevo.');
        end;
      end
      else
        ShowMessage('Su usuario no es del grupo administrador, acceso denegado.');
    end;
  if CheckCompleto.Checked=True then
  begin
   procReporteNominasCompleta(chkContinuo.Checked, FechaC, FechaT, dFechaInicio.Date, dFechaTermino.Date, frmDiasLaborados, frxAsistencia.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.uConnection, global_grupo, 'reporteBarco'),
   id,empleados.FieldByName('IdGuardiaDetalle').AsString,'OPERACIONES',personalGrid);
  end
  else
  begin
    procReporteNominasRH(chkContinuo.Checked, FechaC, FechaT, dFechaInicio.Date, dFechaTermino.Date, frmDiasLaborados, frxAsistencia.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.uConnection, global_grupo, 'reporteBarco'),
    id,empleados.FieldByName('IdGuardiaDetalle').AsString,'OPERACIONES',personalGrid);
  end;

end;

procedure TfrmDiasLaborados.NominaEmbarcacion;
var
  p,personalGrid : String;
  contPerGrid, j : Integer;
  pwd : String;
  zSQL :TUniQuery;
begin
   contPerGrid := BView_Empleados.ViewData.RecordCount;
  for j := 0 to (contPerGrid - 1) do
  begin

    if BView_Empleados.ViewData.Rows[j].Values[3] = 'Si' then
    begin
      personalGrid := personalGrid + BView_Empleados.ViewData.Rows[j].Values[1] +',';
    end;

  end;
  empleados.CancelUpdates;

  if CheckValidar.Checked then
  begin
      if global_grupo = 'ADMON' then
      begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.text :='select AES_DECRYPT(u.sPassword,"AES2016") as sPassword from usuarios u where sIdUsuario = :usuario and lActivo="Si"';
        connection.QryBusca.params.ParamByName('Usuario').DataType := ftString;
        connection.QryBusca.ParamByName('Usuario').AsString := global_usuario;
        connection.QryBusca.Open;
        if connection.QryBusca.RecordCount > 0 then
        begin
          PostMessage(Handle, InputBoxMessage, 0, 0);
          pwd:=InputBox('¡Seguridad de Conexiones!', 'Ingresar contraseña:','');
          if pwd = connection.QryBusca.FieldByName('sPassWord').AsString then
          begin
            zValidar.Append;
            zValidar.FieldByName('Nombre').AsString:=global_nombre;
            zValidar.FieldByName('IdGuardia').AsString:=empleados.FieldByName('IdGuardiaDetalle').AsString;
            zValidar.FieldByName('Fecha').value:=FechaC;
            zValidar.FieldByName('Tipo').AsString:='ABORDO';
            zValidar.FieldByName('TipoValidacion').AsString:='VALIDAR';
            zValidar.Post;
          end
          else
            ShowMessage('La contraseña no corresponde a su usuario, intente de nuevo.');
        end;
      end
      else
        ShowMessage('Su usuario no es del grupo administrador, acceso denegado.');
    end;

  if CheckAutorizar.Checked then
  begin
      if global_grupo = 'ADMON' then
      begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.text :='select AES_DECRYPT(u.sPassword,"AES2016") as sPassword from usuarios u where sIdUsuario = :usuario and lActivo="Si"';
        connection.QryBusca.params.ParamByName('Usuario').DataType := ftString;
        connection.QryBusca.ParamByName('Usuario').AsString := global_usuario;
        connection.QryBusca.Open;
        if connection.QryBusca.RecordCount > 0 then
        begin
          PostMessage(Handle, InputBoxMessage, 0, 0);
          pwd:=InputBox('¡Seguridad de Conexiones!', 'Ingresar contraseña:','');
          if pwd = connection.QryBusca.FieldByName('sPassWord').AsString then
          begin
            zValidar.Append;
            zValidar.FieldByName('Nombre').AsString:=global_nombre;
            zValidar.FieldByName('IdGuardia').AsString:=empleados.FieldByName('IdGuardiaDetalle').AsString;
            zValidar.FieldByName('Fecha').value:=FechaC;
            zValidar.FieldByName('Tipo').AsString:='ABORDO';
            zValidar.FieldByName('TipoValidacion').AsString:='AUTORIZAR';
            zValidar.Post;
          end
          else
            ShowMessage('La contraseña no corresponde a su usuario, intente de nuevo.');
        end;
      end
      else
        ShowMessage('Su usuario no es del grupo administrador, acceso denegado.');
    end;

  if CheckCompleto.Checked=True then
  begin
   procReporteNominasEBComp(chkContinuo.Checked, FechaC, FechaT, dFechaInicio.Date, dFechaTermino.Date, frmDiasLaborados, frxAsistencia.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.uConnection, global_grupo, 'reporteBarco'),
   id,empleados.FieldByName('IdGuardiaDetalle').AsString,'ABORDO',personalGrid);
  end
    else
  begin
   procReporteNominasEB(chkContinuo.Checked, FechaC, FechaT, dFechaInicio.Date, dFechaTermino.Date, frmDiasLaborados, frxAsistencia.OnGetValue, connection.uconfiguracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.uConnection, global_grupo, 'reporteBarco'),
   id,empleados.FieldByName('IdGuardiaDetalle').AsString,'ABORDO',personalGrid);
  end;
end;

procedure TfrmDiasLaborados.EnterControl(Sender: TObject);
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

procedure TfrmDiasLaborados.fechasDetalle;
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

procedure TfrmDiasLaborados.SalidaControl(Sender: TObject);
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

procedure TfrmDiasLaborados.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;


end.
