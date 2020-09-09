unit frm_CargaMaterial;

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
  TfrmCargaMaterial = class(TForm)
    frxOrdenCompra: TfrxDBDataset;
    rxPrecios: TRxMemoryData;
    rxPreciossContrato: TStringField;
    rxPreciossIdInsumo: TStringField;
    rxPreciosmDescripcion: TMemoField;
    rxPreciossIdProveedor: TStringField;
    rxPreciosdFecha1: TDateField;
    rxPreciosdFecha2: TDateField;
    rxPreciosdFecha3: TDateField;
    rxPreciosdFecha4: TDateField;
    rxPreciosdFecha5: TDateField;
    rxPreciosdFecha6: TDateField;
    rxPreciosdFecha7: TDateField;
    rxPreciosdFecha8: TDateField;
    rxPreciosdCosto1: TFloatField;
    rxPreciosdCosto2: TFloatField;
    rxPreciosdCosto3: TFloatField;
    rxPreciosdCosto4: TFloatField;
    rxPreciosdCosto5: TFloatField;
    rxPreciosdCosto6: TFloatField;
    rxPreciosdCosto7: TFloatField;
    rxPreciosdCosto8: TFloatField;
    frxPrecios: TfrxDBDataset;
    rxPreciosItem: TIntegerField;
    rxPreciossOrdenCompra1: TStringField;
    rxPreciossOrdenCompra2: TStringField;
    rxPreciossOrdenCompra3: TStringField;
    rxPreciossOrdenCompra4: TStringField;
    rxPreciossOrdenCompra5: TStringField;
    rxPreciossOrdenCompra6: TStringField;
    rxPreciossOrdenCompra7: TStringField;
    rxPreciossOrdenCompra8: TStringField;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    Imprimir1: TMenuItem;
    ComentariosAdicionales: TMenuItem;
    cxmglst1: TcxImageList;
    OpenPicture: TOpenPictureDialog;
    datasetfrximgfirmas: TfrxDBDataset;
    pm1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxMedida: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    frxPDFExport1: TfrxPDFExport;
    PanelTop: TPanel;
    cxLeyenda: TcxLabel;
    PanelDatos: TPanel;
    PanelPrincipal: TPanel;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxMaterial: TcxDBMemo;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    cxTipoMaterial: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cxFamilia: TcxDBLookupComboBox;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dsAlm_Insumo: TDataSource;
    dsTipoMaterial: TDataSource;
    zMedida: TUniQuery;
    dsMedida: TDataSource;
    zFamilia: TUniQuery;
    dsFamilia: TDataSource;
    zTipoMaterial: TUniQuery;
    zAlm_Insumo: TUniQuery;
    cxCodigo: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    PanelTopD: TPanel;
    frmBarraH21: TfrmBarraH2;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);


    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);



  private
    sMenuP: string;
    btnPermisos : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCargaMaterial: TfrmCargaMaterial;
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


  Tipo_Moneda: string;

implementation

uses frm_connection, Func_Genericas,
    frm_agregar_Requisicion;

{$R *.dfm}

procedure TfrmCargaMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  global_frmActivo := '';
  action := cafree;
end;

procedure TfrmCargaMaterial.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmCargaMaterial.FormShow(Sender: TObject);
var x: integer;
begin
  btnPermisos := global_btnPermisos;
  try

  //titulo:='Carga de Material';

  AsignarSQL(zTipoMaterial, 'op_tiporecurso', pUpdate);
  zTipoMaterial.Open;

  AsignarSQL(zAlm_Insumo, 'catalogotipomateriales', pUpdate);
  zAlm_Insumo.Open;

  AsignarSQL(zFamilia, 'alm_familias', pUpdate);
  zFamilia.Open;

  AsignarSQL(zMedida, 'master_medidas', pUpdate);
  zMedida.Open;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Carga de Material', 'Al iniciar formulario', 0);
    end;
  end;
  zAlm_Insumo.Append;
  zAlm_Insumo.FieldByName('sContrato').AsString := global_contrato;
       zAlm_Insumo.FieldByName('Codigo').AsString:=autoFolio(zAlm_Insumo, 'alm_insumos');
       zAlm_Insumo.FieldByName('dCantidad').AsFloat:=0;
       zAlm_Insumo.FieldByName('IdProducto').AsFloat:=0;
       cxTipoMaterial.ItemIndex:=0;
       cxMedida.ItemIndex:=0;
       cxFamilia.ItemIndex:=0;
       cxMaterial.SetFocus;

end;

procedure TfrmCargaMaterial.btnCancelClick(Sender: TObject);
begin
zAlm_Insumo.cancel;
close;
end;




procedure TfrmCargaMaterial.btnPostClick(Sender: TObject);
begin

if zAlm_Insumo.State = dsInsert then
    begin
       zAlm_Insumo.post;
       zAlm_Insumo.Refresh;
       frmAgregarMasivoRequisicion.materiales.Refresh;

    end;
    if zAlm_Insumo.State = dsEdit then
    begin
       zAlm_Insumo.post;
       zAlm_Insumo.Refresh;
       frmAgregarMasivoRequisicion.materiales.Refresh;

    end;
end;

procedure TfrmCargaMaterial.EnterControl(Sender: TObject);
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

procedure TfrmCargaMaterial.SalidaControl(Sender: TObject);
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

end.

