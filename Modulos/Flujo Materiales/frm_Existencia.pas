unit frm_Existencia;

interface

uses
  Windows, Messages, Math, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, ADODB, DBCtrls, global, strUtils,Jpeg,
  Mask, OleCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Utilerias,
  Menus, frxClass, frxDBSet, RXDBCtrl, RxLookup, DateUtils, unitactivapop,
  RXCtrls, CheckLst, ToolWin, RxMemDS, ExcelXP, OleServer,
  Excel2000, ZAbstractRODataset, ZDataset, ZAbstractDataset, rxCurrEdit, unitGenerales,
  rxToolEdit,
  unitexcepciones, UnitValidaTexto,
  UFunctionsGHH, UnitValidacion,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxButtons, ExportaExcel,masUtilerias, cxContainer,
  cxImage, ImgList, ExtDlgs, cxTextEdit, cxLabel, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, cxSplitter, cxGroupBox, cxMemo,
  cxRichEdit, frm_repositorio, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList, MemDS, DBAccess, Uni,
  dxLayoutcxEditAdapters, dxBarBuiltInMenu, cxPC, dxLayoutContainer, cxCalendar,
  cxDBEdit, dxLayoutControl, dxLayoutControlAdapters, cxCalc, unitMetodos,
  frxExportPDF, cxRadioGroup, UnitReportes, frm_barraH1, frm_barraH2,
  dxLayoutLookAndFeels, CxGridExportLink, ShellApi;

type
  TfrmExistencia = class(TForm)
    frxOrdenCompra: TfrxDBDataset;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
    cxmglst1: TcxImageList;
    OpenPicture: TOpenPictureDialog;
    datasetfrximgfirmas: TfrxDBDataset;
    PanelTop: TPanel;
    cxLeyenda: TcxLabel;
    PanelDatos: TPanel;
    PanelPrincipal: TPanel;
    PanelTopD: TPanel;
    frmBarraH21: TfrmBarraH2;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    dsExistencias: TDataSource;
    zExistencias: TUniQuery;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    procedure cxGrid1DBTableView1DataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: string);
    procedure cxGrid1DBTableView1DataControllerFilterChanged(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);



  private
    sMenuP: string;
    btnPermisos : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExistencia: TfrmExistencia;
  SavePlace: TBookmark;
  sDescripcion: string;
  sArchivo      : String ;
  txtAux: string;
  lNuevo: Boolean;
  OpcButton1: string;
  Valida: boolean;
  filtro, buscar: string;
  iFolio: integer;
  CadenaOrden, CadenaOrden2, cadenaReq: string;
  lValidaReq: boolean;
  CadenaReporte, CadenaReporte2: string;

  sSuperintendente, sSupervisor: string;
  sPuestoSuperintendente, sPuestoSupervisor: string;
  sSupervisorTierra, sPuestoSupervisorTierra: string;
  sBackup: string;
  MontoTotal: Currency;
  TipoExplosion: string;
  AnteriorArray : array[1..5] of string;
  isOpen : boolean = False;

  Tipo_Moneda: string;

implementation
uses
frm_agregar_masivoOP, frm_materiales, frm_materiales_CMMI;


{$R *.dfm}




procedure TfrmExistencia.btnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmExistencia.btnPostClick(Sender: TObject);
begin
ModalResult:=mrOk;
//Close;
end;

procedure TfrmExistencia.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if cxGrid1DBTableView1.OptionsView.CellAutoHeight then
       cxGrid1DBTableView1.OptionsView.CellAutoHeight := False
    else
       cxGrid1DBTableView1.OptionsView.CellAutoHeight := True;
end;

procedure TfrmExistencia.cxGrid1DBTableView1DataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
IsOpen := False;
end;

procedure TfrmExistencia.cxGrid1DBTableView1DataControllerFilterChanged(
  Sender: TObject);
begin
 IsOpen := True;
end;



procedure TfrmExistencia.FormShow(Sender: TObject);
begin
 zExistencias.Active := False;
 AsignarSQL(zExistencias,'exis_centro_costo',pUpdate);
  if (global_frmActivo='Materiales') then
    FiltrarDataSet(zExistencias,'Contrato,Insumo',[global_contrato,frmMateriales_cmmi.zqInsumos.FieldByName('IdInsumo').AsInteger])
  else
    FiltrarDataSet(zExistencias,'Contrato,Insumo',[global_contrato,frmAgregarMasivoOP.materiales.FieldByName('IdInsumo').AsInteger]);
 zExistencias.Open;

end;

end.

