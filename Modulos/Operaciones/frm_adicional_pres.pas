unit frm_adicional_pres;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, MemDS,
  DBAccess, Uni, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxLabel,
  cxPC, Vcl.ExtCtrls, unitGenerales, global, cxSplitter, cxCurrencyEdit, cxCalc;

type
  TfrmAdicionalesPres = class(TForm)
    PanelTop: TPanel;
    PanelListado: TPanel;
    PanelInfo: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabPresupuestado: TcxTabSheet;
    cxTabAdicional: TcxTabSheet;
    cxLeyenda: TcxLabel;
    cxLeyenda2: TcxLabel;
    cxViewProyectos: TcxGridDBTableView;
    cxGridProyectosLevel1: TcxGridLevel;
    cxGridProyectos: TcxGrid;
    uListado: TUniQuery;
    ds_listado: TDataSource;
    uPresupuestado: TUniQuery;
    uAdicionales: TUniQuery;
    ds_presupuestado: TDataSource;
    ds_adicionales: TDataSource;
    cxColumnL1: TcxGridDBColumn;
    cxColumnL2: TcxGridDBColumn;
    cxColumnL3: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    cxGridPresupuestadoView: TcxGridDBTableView;
    cxGridPresupuestadoLevel1: TcxGridLevel;
    cxGridPresupuestado: TcxGrid;
    cxGridAdicionalView: TcxGridDBTableView;
    cxGridAdicionalLevel1: TcxGridLevel;
    cxGridAdicional: TcxGrid;
    cxColumnP1: TcxGridDBColumn;
    cxColumnP2: TcxGridDBColumn;
    cxColumnP3: TcxGridDBColumn;
    cxColumnP4: TcxGridDBColumn;
    cxColumnP5: TcxGridDBColumn;
    cxColumnA1: TcxGridDBColumn;
    cxColumnA2: TcxGridDBColumn;
    cxColumnA3: TcxGridDBColumn;
    cxColumnA4: TcxGridDBColumn;
    cxColumnA5: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure uListadoAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdicionalesPres: TfrmAdicionalesPres;
  IsOpen : boolean;

implementation

{$R *.dfm}

procedure TfrmAdicionalesPres.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  guardar_leer_grid(cxViewProyectos,frmAdicionalesPres,1);
  guardar_leer_grid(cxGridPresupuestadoView,frmAdicionalesPres,1);
  guardar_leer_grid(cxGridAdicionalView,frmAdicionalesPres,1);
  action:=cafree;
end;

procedure TfrmAdicionalesPres.FormShow(Sender: TObject);
begin
  IsOpen:=False;
  uListado.Active:=False;
  AsignarSQL(uListado,'ordenesdetrabajo',pUpdate);
  FiltrarDataSet(uListado,'Contrato,TProyecto',[GLOBAL_CONTRATO,-1]);
  uListado.Open;
  cxViewProyectos.DataController.Groups.FullExpand;

  uPresupuestado.Active:=False;
  AsignarSQL(uPresupuestado,'op_presupuesto_detalle',pUpdate);
  FiltrarDataSet(uPresupuestado,'NumeroOrden,Contrato',[-1,GLOBAL_CONTRATO]);
  uPresupuestado.Open;

  uAdicionales.Active:=False;
  AsignarSQL(uAdicionales,'op_presupuesto_adicionales',pUpdate);
  FiltrarDataSet(uAdicionales,'Proyecto,Contrato',[-1,GLOBAL_CONTRATO]);
  uAdicionales.Open;
  uAdicionales.RecordCount;
  IsOpen:=True;
  uPresupuestado.Filtered:=False;
  uPresupuestado.Filter:='sNumeroOrden ='+QuotedStr(uListado.FieldByName('sNumeroOrden').AsString);
  uPresupuestado.Filtered:=True;
  cxGridPresupuestadoView.ApplyBestFit();

  uAdicionales.Filtered:=False;
  uAdicionales.Filter:='sNumeroOrden = '+QuotedStr(uListado.FieldByName('sNumeroOrden').AsString);
  uAdicionales.Filtered:=True;
  cxGridAdicionalView.ApplyBestFit();

  guardar_leer_grid(cxViewProyectos,frmAdicionalesPres,0);
  guardar_leer_grid(cxGridPresupuestadoView,frmAdicionalesPres,0);
  guardar_leer_grid(cxGridAdicionalView,frmAdicionalesPres,0);
end;

procedure TfrmAdicionalesPres.uListadoAfterScroll(DataSet: TDataSet);
begin
  if IsOpen then begin
    uPresupuestado.Filtered:=False;
    uPresupuestado.Filter:='sNumeroOrden ='+QuotedStr(uListado.FieldByName('sNumeroOrden').AsString);
    uPresupuestado.Filtered:=True;
    cxGridPresupuestadoView.ApplyBestFit();
    cxGridPresupuestadoView.DataController.Groups.FullExpand;
    uAdicionales.Filtered:=False;
    uAdicionales.Filter:='sNumeroOrden = '+QuotedStr(uListado.FieldByName('sNumeroOrden').AsString);
    uAdicionales.Filtered:=True;
    uAdicionales.RecordCount;
    cxGridAdicionalView.ApplyBestFit();
    cxGridAdicionalView.DataController.Groups.FullExpand;

  end;

end;

end.
