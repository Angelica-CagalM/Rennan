unit frm_Documentos_Reportes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.ExtCtrls, cxContainer, frm_barraH1, cxProgressBar, cxLabel,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, MemDS, DBAccess, Uni,
  dxLayoutcxEditAdapters, cxCheckBox, dxToggleSwitch, dxDBToggleSwitch,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, dxLayoutContainer, cxTextEdit,
  dxLayoutControl, dxLayoutControlAdapters, cxSplitter, frm_barraH2;

type
  TFrmDocumentos_Reportes = class(TForm)
    PanelDatos: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ColCodigo: TcxGridDBColumn;
    ColDocumento: TcxGridDBColumn;
    ColDescripcion: TcxGridDBColumn;
    Coltipo: TcxGridDBColumn;
    ColNombre: TcxGridDBColumn;
    ColExtencion: TcxGridDBColumn;
    PanelMenu: TPanel;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    cxLeyenda: TcxLabel;
    frmBarraH11: TfrmBarraH1;
    Panel5: TPanel;
    zDocumentos: TUniQuery;
    dsDocumnetos: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtCodigo: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    edtdocumento: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    edtNombreReporte: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cbTipo: TcxDBComboBox;
    dxLayoutItem4: TdxLayoutItem;
    edtExtension: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem6: TdxLayoutItem;
    cxvalidarActivo: TdxDBToggleSwitch;
    dxLayoutItem7: TdxLayoutItem;
    cxCargarDocumento: TcxButton;
    dlgPDF: TFileOpenDialog;
    cxSplitterDown: TcxSplitter;
    frmBarraH2: TfrmBarraH2;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxCargarDocumentoClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDocumentos_Reportes: TFrmDocumentos_Reportes;
  titulo, titulo2,sArc: string;
  Archivo   : string;
implementation
 uses frm_connection,UnitGenerales;
{$R *.dfm}

procedure TFrmDocumentos_Reportes.btnAddClick(Sender: TObject);
begin

   cxLeyenda.Caption:=titulo + '[Añadiendo]';
   frmBarraH11.btnAddClick(Sender);

   panelDatos.Visible := True;
   cxSplitterDown.Visible:=true;

 zDocumentos.Append;
 ZDocumentos.FieldByName('Codigo').AsString := autofolio(zDocumentos, 'rh_documento_reportes');
 zDocumentos.FieldByName('Activo').AsString:='Si';
end;

procedure TFrmDocumentos_Reportes.btnCancelClick(Sender: TObject);
begin
  frmBarraH11.btnActive;
    cxLeyenda.Caption:=titulo;
  zDocumentos.cancel;
  cxSplitterDown.Visible:=False;
  PanelDatos.Visible := False;

end;

procedure TFrmDocumentos_Reportes.btnDeleteClick(Sender: TObject);
begin
if MessageDlg('Desea eliminar el documento '#13+zDocumentos.FieldByName('Codigo').AsString+'?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    zDocumentos.Delete;
    zDocumentos.ApplyUpdates();
  end;
end;

procedure TFrmDocumentos_Reportes.btnEditClick(Sender: TObject);
begin

   cxLeyenda.Caption:=titulo+'[Editando]';
   frmBarraH11.btnEditClick(Sender);
   PanelDatos.Visible  :=True;
   cxSplitterDown.Visible := True;

  zDocumentos.Edit;
  PanelDatos.Visible := True;
   cxSplitterDown.Visible:=true;
end;

procedure TFrmDocumentos_Reportes.btnPostClick(Sender: TObject);
begin
  zDocumentos.post;
  zDocumentos.Refresh;
  btnCancelClick(Sender);


     frmBarraH11.btnActive;

    cxSplitterDown.Visible := False;
    PanelDatos.Visible  :=False;
    frmBarraH11.Visible:=True;
end;

procedure TFrmDocumentos_Reportes.btnRefreshClick(Sender: TObject);
begin
  zDocumentos.Refresh;
end;

procedure TFrmDocumentos_Reportes.cxCargarDocumentoClick(Sender: TObject);
var
 BlobStream : TStream;
 FileStream : TFileStream;
 Ext, sArchivo : string;
begin
  try
    dlgPDF.FileName := '';

    if not dlgPDF.Execute() then
      exit;

    Archivo := dlgPDF.FileName;

    if not FileExists(Archivo) then
      raise exception.Create('No se encontro el archivo especificado');

    Ext := ExtractFileExt(Archivo);

    if ( Ext <> '.fr3' ) then
      raise exception.Create('El archivo no es valido');

    //if (doctoVP.State = dsEdit) or (doctoVP.State <> dsInsert) then
      // doctoVP.Edit;

    //doctoVP.FieldByName('NombreDocto').AsString := ExtractFileName(Archivo);
    TBlobField(zDocumentos.FieldByName('Descripcion')).LoadfromFile(archivo);

  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmDocumentos_Reportes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
guardar_leer_grid(cxGrid1DBTableView1,FrmDocumentos_Reportes,1);
action := cafree;
end;

procedure TFrmDocumentos_Reportes.FormShow(Sender: TObject);
begin
  titulo:='Documentios / Reportes';
  cxLeyenda.Caption:=titulo;

  AsignarSQL(zDocumentos,'rh_documento_reportes',pUpdate);
  FiltrarDataSet(zDocumentos,'tipo',['-1']);
  zDocumentos.Open;
  guardar_leer_grid(cxGrid1DBTableView1,FrmDocumentos_Reportes,0);

end;

end.
