unit UFrmIndicadores;

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
  dxSkinXmas2008Blue, cxLabel, Vcl.ExtCtrls, unitGenerales, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxClasses, dxLayoutContainer, dxLayoutControl, cxPC,frm_connection,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni, global,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCalendar, Vcl.StdCtrls, cxButtons, cxSplitter, cxListView, frm_barraH1,
  cxGridChartView, cxGridDBChartView, cxCurrencyEdit, dxmdaset,CxGridExportLink, ShellApi;

type
  TFrmIndicadores = class(TForm)
    PanelTop: TPanel;
    cxLeyenda: TcxLabel;
    cxPageControl1: TcxPageControl;
    cxTabTiempo1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxTabTiempo2: TcxTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    cxGridTiempos: TcxGrid;
    cxGridTiemposView: TcxGridDBTableView;
    cxGridReq: TcxGridDBColumn;
    cxGridCC: TcxGridDBColumn;
    cxGridSolicitado: TcxGridDBColumn;
    cxGridFechaRequerido: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    zIndTiempo: TUniQuery;
    dsIndTiempo: TDataSource;
    cxGridPartidas: TcxGridDBColumn;
    cxGridEstado: TcxGridDBColumn;
    cxGridPorcentaje: TcxGridDBColumn;
    dsIndTiempo2: TDataSource;
    zIndTiempo2: TUniQuery;
    cxLista: TcxListView;
    cxSplitter1: TcxSplitter;
    PanelOpciones: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    cxLimpiaFiltro: TcxButton;
    cxButton1: TcxButton;
    cxFiltroRequerido: TcxButton;
    cxLabel1: TcxLabel;
    cxInicioRequerido: TcxDateEdit;
    cxFinRequerido: TcxDateEdit;
    cxOpcionesFiltro: TcxComboBox;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    cxTabDesemp1: TcxTabSheet;
    cxTabDesemp2: TcxTabSheet;
    dxLayoutItem1: TdxLayoutItem;
    cxGridDT1: TcxGrid;
    cxGridDT1View: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    frmBarraH11: TfrmBarraH1;
    spltDT1: TcxSplitter;
    pnlDT1: TPanel;
    cxGridDT1DetView: TcxGridDBTableView;
    cxGridDT1DetLevel1: TcxGridLevel;
    cxGridDT1Det: TcxGrid;
    cxGridDT1ViewColumn1: TcxGridDBColumn;
    cxGridDT1DetViewColumn2: TcxGridDBColumn;
    cxGridDT1DetViewColumn3: TcxGridDBColumn;
    cxGridDT1DetViewColumn4: TcxGridDBColumn;
    cxGridDT1DetViewColumn5: TcxGridDBColumn;
    cxSplitter2: TcxSplitter;
    cxGridDT1DetViewColumn6: TcxGridDBColumn;
    zIndTiempoDet: TUniQuery;
    dsIndTiempoDet: TDataSource;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    cxGridDesemp1View: TcxGridDBTableView;
    cxGridDesemp1Level1: TcxGridLevel;
    cxGridDesemp1: TcxGrid;
    dxLayoutItem10: TdxLayoutItem;
    cxGridCentroC: TcxGridDBColumn;
    cxGridRequi: TcxGridDBColumn;
    cxGridPartida: TcxGridDBColumn;
    cxGridFSolicitud: TcxGridDBColumn;
    cxGridFRequerida: TcxGridDBColumn;
    cxGridCosto: TcxGridDBColumn;
    cxGridParColocadas: TcxGridDBColumn;
    dsDesempeño1: TDataSource;
    zIndDesemp1: TUniQuery;
    dsDesempeño2: TDataSource;
    zIndDesemp2: TUniQuery;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    cxGridDesemp2View: TcxGridDBTableView;
    cxGridDesemp2Level1: TcxGridLevel;
    cxGridDesemp2: TcxGrid;
    dxLayoutItem12: TdxLayoutItem;
    cxGridCC2: TcxGridDBColumn;
    cxGridPart: TcxGridDBColumn;
    cxGridRequ: TcxGridDBColumn;
    cxGridFSolicitudo: TcxGridDBColumn;
    cxGridFRequerido: TcxGridDBColumn;
    cxGridCosto2: TcxGridDBColumn;
    cxGridstatus: TcxGridDBColumn;
    cxGridPorecibidas: TcxGridDBColumn;
    cxGridTiemposViewColumn1: TcxGridDBColumn;
    zGraficoDT1: TUniQuery;
    dsGraficoDT1: TDataSource;
    mGraf: TdxMemData;
    mGrafcc: TStringField;
    mGraftiporango: TStringField;
    dsGraf1: TDataSource;
    mGrafporc: TFloatField;
    cxGridTiemposViewColumn2: TcxGridDBColumn;
    cxGridDesemp2ViewColumn1: TcxGridDBColumn;
    cxGridDesemp1ViewColumn1: TcxGridDBColumn;
    cxGridDT1DetViewColumn7: TcxGridDBColumn;
    cxGridDT1ViewColumn2: TcxGridDBColumn;
    cxGridTiemposViewColumn3: TcxGridDBColumn;
    cxGridDesemp1ViewColumn2: TcxGridDBColumn;
    cxGridDesemp2ViewColumn2: TcxGridDBColumn;
    cxPageControl2: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGridGraficoDT1: TcxGrid;
    cxGridGraficoDT1View: TcxGridDBChartView;
    cxGridGraficoDT1ViewSeries1: TcxGridDBChartSeries;
    cxGridGraficoDT1Level1: TcxGridLevel;
    cxGridGraficoDT2: TcxGrid;
    cxGridGraficoDT2View1: TcxGridDBChartView;
    cxGridDBChartSeries1: TcxGridDBChartSeries;
    cxGridLevel3: TcxGridLevel;
    dsGraficoDT2: TDataSource;
    mGraf2: TdxMemData;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    cxGridTiemposViewColumn4: TcxGridDBColumn;
    cxTabTiempo3: TcxTabSheet;
    dxLayoutControl6: TdxLayoutControl;
    cxGridTiempo3: TcxGrid;
    cxGridViewCumplimientoProveedor: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    zIndTiempo3: TUniQuery;
    dsIndTiempo3: TDataSource;
    cxGridViewCumplimientoProveedorColumn1: TcxGridDBColumn;
    cxGridViewCumplimientoProveedorColumn2: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxTabTiempo1Show(Sender: TObject);
    procedure cxTabTiempo2Show(Sender: TObject);
    procedure cxListaChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure cxFiltroRequeridoClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxTabDesemp1Show(Sender: TObject);
    procedure cxTabDesemp2Show(Sender: TObject);
    procedure cxLimpiaFiltroClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure scroll_DT1Det;
    procedure cxGridDT1DetViewKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDT1DetViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cxGridDT1ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridTiemposViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDesemp1ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDesemp2ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDT1DetViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGridDT1DetViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGridDT1DetViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGridDT1DetViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems5GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxTabTiempo3Show(Sender: TObject);
    procedure cxGridViewCumplimientoProveedorCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnExportaClick(Sender: TObject);
  private
    { Private declarations }
    var
      Titulo:String;
  public
    { Public declarations }
  end;

var
  FrmIndicadores: TFrmIndicadores;
  lExpandido,open1,open2,open3,open4,open5 : boolean;
  Var1,Var2,Var3,Var4: Double;

implementation

{$R *.dfm}


procedure TFrmIndicadores.btnDetalleClick(Sender: TObject);
begin
  if pnlDT1.Visible then
  begin
    spltDT1.Visible := False;
    pnlDT1.Visible := False;
  end
  else
  begin
    pnlDT1.Visible := True;
    spltDT1.Visible := True;
    if zIndTiempo.Filtered = true then
    begin
      if cxOpcionesFiltro.ItemIndex = 0 then
      begin
        zIndTiempoDet.Active := False;
        FiltrarDataSet(zIndTiempoDet,'Contrato,CC,FechaIR,FechaFR,FechaIS,FechaFS,GrupoCC',[global_contrato,'-1',-1,-1,-1,-1,'Si']);
        zIndTiempoDet.Open;
        scroll_DT1Det;
      end else if cxOpcionesFiltro.ItemIndex = 1 then
      begin
        zIndTiempoDet.Active := False;
        FiltrarDataSet(zIndTiempoDet,'Contrato,CC,FechaIR,FechaFR,FechaIS, FechaFS,GrupoCC',[global_contrato,'-1',-1,-1,FechaSQL(cxInicioRequerido.Date),FechaSQL(cxFinRequerido.Date),'Si']);
        zIndTiempoDet.Open;
        scroll_DT1Det;
      end else if cxOpcionesFiltro.ItemIndex = 2 then
      begin
        zIndTiempoDet.Active := False;
        FiltrarDataSet(zIndTiempoDet,'Contrato,CC,FechaIR,FechaFR,FechaIS,FechaFS,GrupoCC',[global_contrato,'-1',FechaSQL(cxInicioRequerido.Date),FechaSQL(cxFinRequerido.Date),-1,-1,'Si']);
        zIndTiempoDet.Open;
        scroll_DT1Det;
      end;
    end else
    begin
        zIndTiempoDet.Active := False;
        FiltrarDataSet(zIndTiempoDet,'Contrato,CC,FechaIR,FechaFR,FechaIS,FechaFS,GrupoCC',[global_contrato,'-1',-1,-1,-1,-1,'Si']);
        zIndTiempoDet.Open;
      scroll_DT1Det;
    end;
  end;
end;

procedure TFrmIndicadores.btnExportaClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
  dlgSave : TSaveDialog;
begin
  if cxPageControl1.ActivePageIndex = 0 then
  begin
    dlgSave := TSaveDialog.Create(nil);
    dlgSave.FileName := 'Requerido vs Solicitado';
    if dlgSave.Execute then
    begin
      rutaArchivo := dlgSave.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, cxGridDT1);
      dlgSave.Destroy;
      if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
    end;
  end
  else
  if cxPageControl1.ActivePageIndex = 1 then
  begin
    dlgSave := TSaveDialog.Create(nil);
    dlgSave.FileName := '% DE CUMPLIMIENTO COMPRADORES';
    if dlgSave.Execute then
    begin
      rutaArchivo := dlgSave.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, cxGridTiempos);
      dlgSave.Destroy;
      if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
    end;
  end
  else
  if cxPageControl1.ActivePageIndex = 2 then
  begin
    dlgSave := TSaveDialog.Create(nil);
    dlgSave.FileName := '% PARTIDAS COLOCADAS (OC)';
    if dlgSave.Execute then
    begin
      rutaArchivo := dlgSave.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, cxGridDesemp1);
      dlgSave.Destroy;
      if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
    end;
  end
  else
  if cxPageControl1.ActivePageIndex = 3 then
  begin
    dlgSave := TSaveDialog.Create(nil);
    dlgSave.FileName := '% RECEPCIÓN DE PARTIDAS COLOCADAS';
    if dlgSave.Execute then
    begin
      rutaArchivo := dlgSave.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, cxGridDesemp2);
      dlgSave.Destroy;
      if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
    end;
  end
  else
  if cxPageControl1.ActivePageIndex = 4 then
  begin
    dlgSave := TSaveDialog.Create(nil);
    dlgSave.FileName := '% DE CUMPLIMIENTO PROVEEDORES';
    if dlgSave.Execute then
    begin
      rutaArchivo := dlgSave.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, cxGridTiempo3);
      dlgSave.Destroy;
      if MessageDlg('¿Desea abrir el documento de excel exportado?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(0, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
    end;
  end;
end;

procedure TFrmIndicadores.cxButton1Click(Sender: TObject);
begin
  if lExpandido then
  begin
    cxGridDT1View.DataController.Groups.FullCollapse;
    cxGridDT1DetView.DataController.Groups.FullCollapse;
    cxGridTiemposView.DataController.Groups.FullCollapse;
    cxGridDesemp1View.DataController.Groups.FullCollapse;
    cxGridDesemp2View.DataController.Groups.FullCollapse;
    lExpandido := False;
  end
  else
  begin
    cxGridDT1View.DataController.Groups.FullExpand;
    cxGridDT1DetView.DataController.Groups.FullExpand;
    cxGridTiemposView.DataController.Groups.FullExpand;
    cxGridDesemp1View.DataController.Groups.FullExpand;
    cxGridDesemp2View. DataController.Groups.FullExpand;
    lExpandido := True;
  end;
end;

procedure TFrmIndicadores.cxFiltroRequeridoClick(Sender: TObject);
var Cursor:TCursor;
begin
  try
    Cursor:= Screen.Cursor;
    SCreen.Cursor := crAppStart;
    if cxOpcionesFiltro.ItemIndex = 0 then
    begin
      if cxPageControl1.ActivePageIndex = 0 then
      begin
        zIndTiempo.Filtered := False;
        if pnlDT1.Visible then
        begin
          zIndTiempoDet.Active := False;
          FiltrarDataSet(zIndTiempoDet,'Contrato,CC,FechaIR,FechaFR,FechaIS,FechaFS,GrupoCC',[global_contrato,'-1',-1,-1,-1,-1,'Si']);
          zIndTiempoDet.Open;
          scroll_DT1Det;
        end;
      end;
      if cxPageControl1.ActivePageIndex = 1 then
      begin
        FiltrarDataSet(zIndTiempo2,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,-1,-1,-1,-1]);
        zIndTiempo2.Open;
      end;
      if cxPageControl1.ActivePageIndex = 2 then
      begin
        FiltrarDataSet(zIndDesemp1,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,-1,-1,-1,-1]);
        zIndDesemp1.Open;
      end;
      if cxPageControl1.ActivePageIndex = 3 then
      begin
        FiltrarDataSet(zIndDesemp2,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,-1,-1,-1,-1]);
        zIndDesemp2.Open;
      end;
      if cxPageControl1.ActivePageIndex = 4 then
      begin
        FiltrarDataSet(zIndTiempo3,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,-1,-1,-1,-1]);
        zIndTiempo3.Open;
      end;
    end;

    if cxOpcionesFiltro.ItemIndex = 1 then
    begin
      if cxPageControl1.ActivePageIndex = 0 then
      begin
        zIndTiempo.Filtered := False;
        zIndTiempo.Filter   := ' dFechaSolicitado >= '+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and dFechaSolicitado <= '+QuotedStr(FechaSQL(cxFinRequerido.Date));
        zIndTiempo.Filtered := True;
        if pnlDT1.Visible then
        begin
          zIndTiempoDet.Active := False;
          FiltrarDataSet(zIndTiempoDet,'Contrato,CC,FechaIR,FechaFR,FechaIS, FechaFS,GrupoCC',[global_contrato,'-1',-1,-1,FechaSQL(cxInicioRequerido.Date),FechaSQL(cxFinRequerido.Date),'Si']);
          zIndTiempoDet.Open;
          scroll_DT1Det;
        end;
      end;
      if cxPageControl1.ActivePageIndex = 1 then
      begin
        FiltrarDataSet(zIndTiempo2,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,-1,-1,FechaSQL(cxInicioRequerido.Date),FechaSQL(cxFinRequerido.Date)]);
        zIndTiempo2.Open;
      end;
      if cxPageControl1.ActivePageIndex = 2 then
      begin
        FiltrarDataSet(zIndDesemp1,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,-1,-1,FechaSQL(cxInicioRequerido.Date),FechaSQL(cxFinRequerido.Date)]);
        zIndDesemp1.Open;
      end;
      if cxPageControl1.ActivePageIndex = 3 then
      begin
        FiltrarDataSet(zIndDesemp2,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,-1,-1,FechaSQL(cxInicioRequerido.Date),FechaSQL(cxFinRequerido.Date)]);
        zIndDesemp2.Open;
      end;
      if cxPageControl1.ActivePageIndex = 4 then
      begin
        FiltrarDataSet(zIndTiempo3,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,-1,-1,FechaSQL(cxInicioRequerido.Date),FechaSQL(cxFinRequerido.Date)]);
        zIndTiempo3.Open;
      end;
    end;
    if cxOpcionesFiltro.ItemIndex = 2 then
    begin
      if cxPageControl1.ActivePageIndex = 0 then
      begin
        zIndTiempo.Filtered := False;
        zIndTiempo.Filter   := ' dFechaRequerido >= '+QuotedStr(FechaSQL(cxInicioRequerido.Date))+' and dFechaRequerido <= '+QuotedStr(FechaSQL(cxFinRequerido.Date));
        zIndTiempo.Filtered := True;
        if pnlDT1.Visible then
        begin
          zIndTiempoDet.Active := False;
          FiltrarDataSet(zIndTiempoDet,'Contrato,CC,FechaIR,FechaFR,FechaIS,FechaFS,GrupoCC',[global_contrato,'-1',FechaSQL(cxInicioRequerido.Date),FechaSQL(cxFinRequerido.Date),-1,-1,'Si']);
          zIndTiempoDet.Open;
          scroll_DT1Det;
        end;
      end;
      if cxPageControl1.ActivePageIndex = 1 then
      begin
        FiltrarDataSet(zIndTiempo2,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,FechaSQL(cxInicioRequerido.Date),FechaSQL(cxFinRequerido.Date),-1,-1]);
        zIndTiempo2.Open;
      end;
      if cxPageControl1.ActivePageIndex = 2 then
      begin
        FiltrarDataSet(zIndDesemp1,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,FechaSQL(cxInicioRequerido.Date),FechaSQL(cxFinRequerido.Date),-1,-1]);
        zIndDesemp1.Open;
      end;
      if cxPageControl1.ActivePageIndex = 3 then
      begin
        FiltrarDataSet(zIndDesemp2,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,FechaSQL(cxInicioRequerido.Date),FechaSQL(cxFinRequerido.Date),-1,-1]);
        zIndDesemp2.Open;
      end;
      if cxPageControl1.ActivePageIndex = 4 then
      begin
        FiltrarDataSet(zIndTiempo3,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,FechaSQL(cxInicioRequerido.Date),FechaSQL(cxFinRequerido.Date),-1,-1]);
        zIndTiempo3.Open;
      end;
    end;

  finally
    Screen.Cursor := Cursor;
  end;

end;

procedure TFrmIndicadores.cxGridDesemp1ViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxGridDesemp1View.OptionsView.CellAutoHeight := not cxGridDesemp1View.OptionsView.CellAutoHeight;
end;

procedure TFrmIndicadores.cxGridDesemp2ViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxGridDesemp2View.OptionsView.CellAutoHeight := not cxGridDesemp2View.OptionsView.CellAutoHeight;
end;

procedure TFrmIndicadores.cxGridDT1DetViewCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  scroll_DT1Det;
end;

procedure TFrmIndicadores.cxGridDT1DetViewKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (Key = VK_UP) or ( Key = VK_DOWN)  then
          scroll_DT1Det;
end;

procedure TFrmIndicadores.cxGridDT1DetViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if (not (AText = '')) then
    Var1 := VarAsType(AValue, varDouble);
end;

procedure TFrmIndicadores.cxGridDT1DetViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if (not (AText = '')) then
    Var2 := VarAsType(AValue, varDouble);
end;

procedure TFrmIndicadores.cxGridDT1DetViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if (not (AText = '')) then
    Var3 := VarAsType(AValue, varDouble);
end;

procedure TFrmIndicadores.cxGridDT1DetViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems5GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
 if (not (AText = '')) then
    Var4 := VarAsType(AValue, varDouble);
end;

procedure TFrmIndicadores.cxGridDT1ViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxGridDT1View.OptionsView.CellAutoHeight := not cxGridDT1View.OptionsView.CellAutoHeight;
end;

procedure TFrmIndicadores.cxGridTiemposViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxGridTiemposView.OptionsView.CellAutoHeight := not cxGridTiemposView.OptionsView.CellAutoHeight;
end;

procedure TFrmIndicadores.cxGridViewCumplimientoProveedorCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxGridViewCumplimientoProveedor.OptionsView.CellAutoHeight := not cxGridViewCumplimientoProveedor.OptionsView.CellAutoHeight;
end;

procedure TFrmIndicadores.cxLimpiaFiltroClick(Sender: TObject);
VAR Cursor:TCursor;
begin
  try
    Cursor:= Screen.Cursor;
    SCreen.Cursor := crAppStart;
    if cxPageControl1.ActivePageIndex = 0 then
    begin
      zIndTiempo.Filtered := False;
      zIndTiempoDet.Active := False;
      FiltrarDataSet(zIndTiempoDet,'Contrato,CC,FechaIR,FechaFR,FechaIS,FechaFS,GrupoCC',[global_contrato,'-1',-1,-1,-1,-1,'Si']);
      zIndTiempoDet.Open;
    end;
    if cxPageControl1.ActivePageIndex = 1 then
    begin
      FiltrarDataSet(zIndTiempo2,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,-1,-1,-1,-1]);
      zIndTiempo2.Open;
    end;
    if cxPageControl1.ActivePageIndex = 2 then
    begin
      FiltrarDataSet(zIndDesemp1,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,-1,-1,-1,-1]);
      zIndDesemp1.Open;
    end;
    if cxPageControl1.ActivePageIndex = 3 then
    begin
      FiltrarDataSet(zIndDesemp2,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,-1,-1,-1,-1]);
      zIndDesemp2.Open;
    end;
  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TFrmIndicadores.cxListaChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
    if cxLista.ItemIndex = 0 then
  begin
    cxTabTiempo1.TabVisible := True;
    cxTabTiempo2.TabVisible := True;
    cxTabTiempo3.TabVisible := True;
    cxTabDesemp1.TabVisible := False;
    cxTabDesemp2.TabVisible := False;
    cxPageControl1.ActivePage := cxTabTiempo1;
  end
  else if cxLista.ItemIndex = 1 then
  begin
    cxTabTiempo1.TabVisible := False;
    cxTabTiempo2.TabVisible := False;
    cxTabTiempo3.TabVisible := False;
    cxTabDesemp1.TabVisible := True;
    cxTabDesemp2.TabVisible := True;
    cxPageControl1.ActivePage := cxTabDesemp1;
  end;
end;

procedure TFrmIndicadores.cxTabDesemp1Show(Sender: TObject);
begin
  if Open3=False then
  begin
    AsignarSQL(zIndDesemp1,'partidas_colocadas_OC', pUpDate);
    FiltrarDataSet(zIndDesemp1,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,-1,-1,-1,-1]);
    zIndDesemp1.Open;
    open3:= True;
  end;
  frmBarraH11.btnDetalle.Enabled:= false;
end;

procedure TFrmIndicadores.cxTabDesemp2Show(Sender: TObject);
begin
  if Open4=False then
  begin
    AsignarSQL(zIndDesemp2,'partidas_recepcion_OC', pUpDate);
    FiltrarDataSet(zIndDesemp2,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,-1,-1,-1,-1]);
    zIndDesemp2.Open;
    open4:= True;
  end;
  frmBarraH11.btnDetalle.Enabled:=False;
end;

procedure TFrmIndicadores.cxTabTiempo1Show(Sender: TObject);
begin
  if open1=false then
  begin
    //AsignarSQL(zIndTiempo,'req_indicador_tiempo', pUpdate);
    //La consulta la tiene directamente en el UniQuery
    zIndTiempo.Active := False;
    FiltrarDataSet(zIndTiempo,'Contrato,CC,FechaIR,FechaFR,FechaIS,FechaFS,GrupoCC',[global_contrato,'-1','-1','-1','-1','-1','No']);
    zIndTiempo.Open;
    open1:= True;
  end;
  frmBarraH11.btnDetalle.Enabled:= True;
end;

procedure TFrmIndicadores.cxTabTiempo2Show(Sender: TObject);
begin
  if open2=false then
  begin
    AsignarSQL(zIndTiempo2,'partidas_entiempo', pUpDate);
    FiltrarDataSet(zIndTiempo2,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,-1,-1,-1,-1]);
    zIndTiempo2.Open;
    open2:= True;
  end;
  frmBarraH11.btnDetalle.Enabled:= False;
end;

procedure TFrmIndicadores.cxTabTiempo3Show(Sender: TObject);
begin
    if open5=false then
  begin
    AsignarSQL(zIndTiempo3,'partidas_entiempo_proveedores', pUpDate);
    FiltrarDataSet(zIndTiempo3,'Contrato,FechaIR,FechaFR,FechaIS,FechaFS',[global_contrato,-1,-1,-1,-1]);
    zIndTiempo3.Open;
    open5:= True;
  end;
  frmBarraH11.btnDetalle.Enabled:= False;
end;

procedure TFrmIndicadores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;

  guardar_leer_grid(cxGridDT1View,FrmIndicadores,1);
  guardar_leer_grid(cxGridDT1DetView,FrmIndicadores,1);
  guardar_leer_grid(cxGridTiemposView,FrmIndicadores,1);
  guardar_leer_grid(cxGridDesemp1View,FrmIndicadores,1);
  guardar_leer_grid(cxGridDesemp2View,FrmIndicadores,1);
  guardar_leer_grid(cxGridViewCumplimientoProveedor,FrmIndicadores,1);

end;

procedure TFrmIndicadores.FormCreate(Sender: TObject);
begin
  Open1 := False;
  Open2 := False;
  Open3 := False;
  Open4 := False;
  Open5 := False;
end;

procedure TFrmIndicadores.FormShow(Sender: TObject);
begin
  titulo:='Consultas e Indicadores.';
  cxLeyenda.Caption:=titulo;

  cxInicioRequerido.Date := Date;
  cxFinRequerido.Date    := Date;
  
  cxOpcionesFiltro.ItemIndex := 0;

  cxLista.ItemIndex :=0;

 // cxGridDT1View.DataController.Groups.FullExpand;
 // cxGridDT1DetView.DataController.Groups.FullExpand;
 // cxGridTiemposView.DataController.Groups.FullExpand;
 // cxGridDesemp1View.DataController.Groups.FullExpand;
 // cxGridDesemp2View.DataController.Groups.FullExpand;

  lExpandido := True;
  guardar_leer_grid(cxGridDT1View,FrmIndicadores,0);
  guardar_leer_grid(cxGridDT1DetView,FrmIndicadores,0);
  guardar_leer_grid(cxGridTiemposView,FrmIndicadores,0);
  guardar_leer_grid(cxGridDesemp1View,FrmIndicadores,0);
  guardar_leer_grid(cxGridDesemp2View,FrmIndicadores,0);
  guardar_leer_grid(cxGridViewCumplimientoProveedor,FrmIndicadores,0);
end;

procedure TFrmIndicadores.scroll_DT1Det;
begin
  if zIndTiempoDet.RecordCount > 0 then
  begin
      mGraf.Active := False;
      mGraf.Active := True;
      mGraf.Append;
      mGraf.FieldByName('CC').AsString := zIndTiempoDet.FieldByName('CC').AsString;
      mGraf.FieldByName('tiporango').AsString := '0-1 (Días)';
      mGraf.FieldByName('porc').AsString := zIndTiempoDet.FieldByName('Por1').AsString;
      mGraf.Post;

      mGraf.Append;
      mGraf.FieldByName('CC').AsString := zIndTiempoDet.FieldByName('CC').AsString;
      mGraf.FieldByName('tiporango').AsString := '2-3 (Días)';
      mGraf.FieldByName('porc').AsString := zIndTiempoDet.FieldByName('Por2').AsString;
      mGraf.Post;

      mGraf.Append;
      mGraf.FieldByName('CC').AsString := zIndTiempoDet.FieldByName('CC').AsString;
      mGraf.FieldByName('tiporango').AsString := '4-5 (Días)';
      mGraf.FieldByName('porc').AsString := zIndTiempoDet.FieldByName('Por3').AsString;
      mGraf.Post;

      mGraf.Append;
      mGraf.FieldByName('CC').AsString := zIndTiempoDet.FieldByName('CC').AsString;
      mGraf.FieldByName('tiporango').AsString := '6-... (Días)';
      mGraf.FieldByName('porc').AsString := zIndTiempoDet.FieldByName('Por4').AsString;
      mGraf.Post;

      mGraf2.Active := False;
      mGraf2.Active := True;
      mGraf2.Append;
      mGraf2.FieldByName('CC').AsString := zIndTiempoDet.FieldByName('CC').AsString;
      mGraf2.FieldByName('tiporango').AsString := '0-1 (Días)';
      mGraf2.FieldByName('porc').AsFloat := Var1;
      mGraf2.Post;

      mGraf2.Append;
      mGraf2.FieldByName('CC').AsString := zIndTiempoDet.FieldByName('CC').AsString;
      mGraf2.FieldByName('tiporango').AsString := '2-3 (Días)';
      mGraf2.FieldByName('porc').AsFloat := Var2;
      mGraf2.Post;

      mGraf2.Append;
      mGraf2.FieldByName('CC').AsString := zIndTiempoDet.FieldByName('CC').AsString;
      mGraf2.FieldByName('tiporango').AsString := '4-5 (Días)';
      mGraf2.FieldByName('porc').AsFloat := Var3;
      mGraf2.Post;

      mGraf2.Append;
      mGraf2.FieldByName('CC').AsString := zIndTiempoDet.FieldByName('CC').AsString;
      mGraf2.FieldByName('tiporango').AsString := '6-... (Días)';
      mGraf2.FieldByName('porc').AsFloat := Var4;
      mGraf2.Post;

  end;
end;

end.
