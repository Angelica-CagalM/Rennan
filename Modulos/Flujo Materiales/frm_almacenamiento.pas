unit frm_almacenamiento;

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
  dxLayoutLookAndFeels, CxGridExportLink, ShellApi, cxCheckBox, dxToggleSwitch,
  dxDBToggleSwitch, Winapi.ShlObj, cxShellCommon, cxShellBrowserDialog,
  cxShellComboBox, cxDBShellComboBox, dxBreadcrumbEdit, dxShellBreadcrumbEdit,
  cxListView, cxShellListView;

type
  TfrmAlmacenamiento = class(TForm)
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
    view_Almacenamiento: TcxGridDBTableView;
    cxGridAlmacenamientoLevel1: TcxGridLevel;
    cxGridAlmacenamiento: TcxGrid;
    cxNuevoDetalle: TcxButton;
    cxEditaDetalle: TcxButton;
    cxEliminar: TcxButton;
    PanelDown4: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    cxDocumento: TcxDBLookupComboBox;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    cxSplit4: TcxSplitter;
    zDocumento: TUniQuery;
    dsDocumento: TDataSource;
    zTipDoc: TUniQuery;
    dsTipDoc: TDataSource;
    view_AlmacenamientoColumn1: TcxGridDBColumn;
    view_AlmacenamientoColumn2: TcxGridDBColumn;
    dxLayoutControl1: TdxLayoutControl;
    cxVentana: TcxShellListView;
    cxDirectorio: TdxShellBreadcrumbEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cxDireccion: TcxDBShellComboBox;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure view_AlmacenamientoCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxNuevoDetalleClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxEditaDetalleClick(Sender: TObject);
    procedure cxEliminarClick(Sender: TObject);
    procedure cxVentanaSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure view_AlmacenamientoCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxVentanaChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);



  private
    sMenuP: string;
    btnPermisos : String;
    { Private declarations }
  public
    { Public declarations }
    PathE:String;
  end;

var
  frmAlmacenamiento: TfrmAlmacenamiento;
  SavePlace: TBookmark;
  sDescripcion: string;
  sArchivo      : String ;
  txtAux: string;
  lNuevo: Boolean;
  OpcButton1: string;
  Valida: boolean;
  filtro, buscar: string;
  PathArchivo:String;
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



{$R *.dfm}
 uses
 frm_EntradaAlmacen;



procedure TfrmAlmacenamiento.btnCancelClick(Sender: TObject);
begin
   zDocumento.Cancel;
   PanelTopD.Visible:=False;
   PanelDown4.Visible := False;
   cxSplit4.Visible := False;
end;

procedure TfrmAlmacenamiento.btnPostClick(Sender: TObject);
begin
  zDocumento.FieldByName('DocumentoDigital').AsString:=PathArchivo;
  zDocumento.Post;

  cxVentana.Path := zDocumento.FieldByName('DocumentoDigital').AsString;
  cxDireccion.Path := zDocumento.FieldByName('DocumentoDigital').AsString;

  zDocumento.Refresh;
  btnCancelClick(Sender);
end;

function SelectedFiles(AShellView: TcxShellListView): TStringList;
var
i:integer;
begin
  Result := TStringList.Create;
  for i := 0 to AShellView.InnerListView.Items.Count - 1 do
    // is the item selected?
    if AShellView.InnerListView.Items[i].Selected = True then
      // Folders can also refer to files, which is why we check isFolder
      // before adding the filepath to the result
      if AShellView.folders[i].IsFolder = False then
        // add filepath and filename to result
        Result.Add(AShellView.Folders[i].PathName);

end;

procedure TfrmAlmacenamiento.view_AlmacenamientoCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    cxVentana.Path := zDocumento.FieldByName('DocumentoDigital').AsString;
    cxDirectorio.SelectedPath:=ExtractFilePath(zDocumento.FieldByName('DocumentoDigital').AsString);
end;

procedure TfrmAlmacenamiento.view_AlmacenamientoCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if view_Almacenamiento.OptionsView.CellAutoHeight then
       view_Almacenamiento.OptionsView.CellAutoHeight := False
    else
       view_Almacenamiento.OptionsView.CellAutoHeight := True;
end;

procedure TfrmAlmacenamiento.cxNuevoDetalleClick(Sender: TObject);
begin

cxSplit4.Visible   := True;
PanelDown4.Visible := True;
PanelTopD.Visible:=True;


zDocumento.Append;
cxDocumento.DataBinding.DataSource.DataSet.FieldByName('IdDocumento').AsInteger := zTipDoc.FieldByName('IdDocumento').AsInteger;
zDocumento.FieldByName('IdInsumo').AsInteger:=frmEntradaAlmacen.cxViewMaterialEntrada.DataController.DataSet.FieldByName('IdInsumo').AsInteger;
zDocumento.FieldByName('FechaRegistro').AsDateTime := date;
zDocumento.FieldByName('Activo').AsString := 'Si';
cxdocumento.SetFocus;
end;

procedure TfrmAlmacenamiento.cxVentanaChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  I: Integer;
  AFilename: WideString;
begin
  for I := 0 to cxVentana.InnerListView.Items.Count - 1 do
    if cxVentana.InnerListView.Items[I].Selected then
    begin
      AFileName := GetPidlName(cxVentana.GetItemAbsolutePIDL(I));
      cxDireccion.Path:=AFilename;
      PathArchivo:=AFileName;
    end;
end;

procedure TfrmAlmacenamiento.cxVentanaSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
//  var
//  AFileName:String;
begin
  if Item <> nil then
  PathE:=cxVentana.Folders[Item.Index].PathName;
end;

procedure TfrmAlmacenamiento.FormShow(Sender: TObject);
begin
    AsignarSQL(zDocumento,'documentos_entrada',pUpdate);
    FiltrarDataSet(zDocumento,'Bitacora',[frmEntradaAlmacen.cxViewMaterialEntrada.DataController.DataSet.FieldByName('IdBitacoraEntrada').AsInteger]);
    zDocumento.Open;

    AsignarSQL(zTipDoc,'catalogo_documentos_proveedor',pUpdate);
    FiltrarDataSet(zTipDoc,'Tipo',['Material']);
    zTipDoc.Open;
    PanelTopD.Visible:=False;
    PanelDown4.Visible:=False;
    cxSplit4.Visible := False;
end;

procedure TfrmAlmacenamiento.cxEditaDetalleClick(Sender: TObject);
begin
zDocumento.Edit;
cxSplit4.Visible   := True;
PanelDown4.Visible := True;
PanelTopD.Visible:=True;
end;

procedure TfrmAlmacenamiento.cxEliminarClick(Sender: TObject);
begin
If zDocumento.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        dsDocumento.DataSet.Delete;
        zDocumento.ApplyUpdates();
      except
        on E : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Almacenamiento', 'Al eliminar registro', 0);
        end;
      end
    end
end;



end.

